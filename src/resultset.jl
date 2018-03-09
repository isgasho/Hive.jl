#
# Result
# can have either of the following:
# - recordset
# - number of rows affected
#
# pending results can be
# - checked for readiness
# - cancelled
#
# results must be closed

"""number of records to fetch with every fetchnext"""
const DEFAULT_FETCH_SIZE = 1024 * 1024

mutable struct PendingResult
    session::HiveSession
    handle::TOperationHandle
    status::Nullable{TGetOperationStatusResp}
end

const RowCount = Float64

mutable struct ResultSet
    session::HiveSession
    handle::TOperationHandle
    schema::Nullable{TTableSchema}
    rowset::Nullable{TRowSet}
    position::Int
    fetchsize::Int
    eof::Bool

    function ResultSet(session::HiveSession, handle::TOperationHandle)
        new(session, handle, Nullable{TOperationHandle}(), Nullable{TRowSet}(), 0, DEFAULT_FETCH_SIZE, false)
    end
end

function show(io::IO, rs::ResultSet)
    print(io, "ResultSet(eof=$(rs.eof), position=$(rs.position), fetchsize=$(rs.fetchsize))")
end

const Result = Union{ResultSet, RowCount, PendingResult}

result(pending::PendingResult) = isready(pending) ? result(pending.session, true, pending.handle) : pending
result(rs::ResultSet) = rs
function result(session::HiveSession, ready::Bool, handle::TOperationHandle)
    ready || (return PendingResult(session, handle, Nullable{TGetOperationStatusReq}()))

    # hasResultSet == true => a result set (possibly empty) can be fetched, modifiedRowCount is not set.
    # hasResultSet == false => modifiedRowCount is set
    handle.hasResultSet && (return ResultSet(session, handle))

    # modifiedRowCount >= 0 => number of rows affected is known
    # modifiedRowCount < 0 => operation is capable fo modifying rows, but the count is unknown. e.g. LOAD DATA
    return handle.modifiedRowCount
end

eof(r::ResultSet) = r.eof

close(pending::PendingResult) = close(pending.session, pending.handle)
close(resultset::ResultSet) = close(resultset.session, resultset.handle)
function close(session::HiveSession, handle::TOperationHandle)
    conn = session.conn
    request = thriftbuild(TCloseOperationReq, Dict(:operationHandle => handle))
    response = CloseOperation(conn.client, request)
    check_status(response.status)
end

cancel(pending::PendingResult) = cancel(pending.session, pending.handle)
cancel(resultset::ResultSet) = cancel(resultset.session, resultset.handle)
function cancel(session::HiveSession, handle::TOperationHandle)
    conn = session.conn
    request = thriftbuild(TCancelOperationReq, Dict(:operationHandle => handle))
    response = CancelOperation(conn.client, request)
    check_status(response.status)
end

function status(pending::PendingResult)
    if !isnull(pending.status)
        response = get(pending.status)
    else
        conn = pending.session.conn
        request = thriftbuild(TGetOperationStatusReq, Dict(:operationHandle => pending.handle))
        response = GetOperationStatus(conn.client, request)
        check_status(response.status)
        if response.operationState in READY_STATUS
            pending.status = Nullable(response)
        end
    end
    response
end

const READY_STATUS = (TOperationState.FINISHED_STATE, TOperationState.CANCELED_STATE, TOperationState.CLOSED_STATE, TOperationState.ERROR_STATE)
const RESULT_STATUS = (TOperationState.FINISHED_STATE)
isready(::ResultSet) = true
isready(::RowCount) = true
isready(pending::PendingResult) = status(pending).operationState in READY_STATUS
hasresult(pending::PendingResult) = status(pending).operationState in RESULT_STATUS
function sqlerror(pending::PendingResult)
    isready(pending) || (return "")
    hasresult(pending) && (return "")
    response = get(pending.status)
    sqlstate = isfilled(response, :sqlState) ? getfield(response, :sqlState) : ""
    errormessage = isfilled(response, :errorMessage) ? getfield(response, :errorMessage) : ""
    errorcode = isfilled(response, :errorCode) ? getfield(response, :errorCode) : Int32(0)
    "Error. $errormessage ($sqlstate, $errorcode)"
end

const SCHEMA_CACHE = Dict{Union{AbstractString,Symbol}, TTableSchema}()

function schema(rs::ResultSet; cached::Union{AbstractString,Symbol,Void}=nothing)
    if !isnull(rs.schema)
        sch = get(rs.schema)
    else
        if (cached !== nothing) && haskey(SCHEMA_CACHE, cached)
            sch = SCHEMA_CACHE[cached]
        else
            conn = rs.session.conn
            request = thriftbuild(TGetResultSetMetadataReq, Dict(:operationHandle => rs.handle))
            response = GetResultSetMetadata(conn.client, request)
            check_status(response.status)
            sch = response.schema
            (cached !== nothing) && (SCHEMA_CACHE[cached] = sch)
        end
        rs.schema = Nullable(sch)
    end
    sch
end

# Fetch rows from the server corresponding to a particular OperationHandle.
fetchsize(rs::ResultSet) = rs.fetchsize
fetchsize!(rs::ResultSet, sz::Integer) = (rs.fetchsize = sz)

function fetchfirst(rs::ResultSet, nrows::Integer=rs.fetchsize)
    rs.position = 0
    fetchnext(rs, nrows)
end

function fetchnext(rs::ResultSet, nrows::Integer=rs.fetchsize)
    rs.eof && return nothing
    conn = rs.session.conn
    orientation = rs.position > 0 ? TFetchOrientation.FETCH_NEXT : TFetchOrientation.FETCH_FIRST
    request = thriftbuild(TFetchResultsReq, Dict(
        :operationHandle => rs.handle,
        :orientation => orientation,
        :maxRows => nrows))
    response = FetchResults(conn.client, request)
    check_status(response.status)

    rs.eof = !response.hasMoreRows
    rowset = response.results
    rs.rowset = Nullable(rowset)
    rs.position = rowset.startRowOffset + length(rowset.rows)
    rs
end

##
# Iterators
# - records, record iterator: fetches one record at a time as a tuple
# - dataframes, dataframe iterator: fetches one batch of records at a time, returns a dataframe
# - dataframe(dataframe iterator): fetches and returns all data as one dataframe
# - columnchunks, columnchunks iterator: fetched one batch of records at a time, returns a vector of pairs of column names and data
# - columnchunk(columnchunks iterator): fetched and returns all data as one column chunk

struct ColumnChunksIterator
    rs::ResultSet

    function ColumnChunksIterator(rs::ResultSet, fetchsz::Integer=DEFAULT_FETCH_SIZE)
        fetchsize!(rs, fetchsz)
        new(rs)
    end
end


columnchunks(rs::ResultSet, fetchsz::Integer=DEFAULT_FETCH_SIZE) = ColumnChunksIterator(rs, fetchsz)
columnchunk(rs::ResultSet, fetchsz::Integer=DEFAULT_FETCH_SIZE) = columnchunk(ColumnChunksIterator(rs, fetchsz))
function columnchunk(iter::ColumnChunksIterator)
    state = start(iter)
    v0, state = next(iter, state)

    while !done(iter, state)
        v1, state = next(iter, state)
        v0 = [v0[idx][1]=>vcat(v0[idx][2], v1[idx][2]) for idx in 1:length(v0)]
    end
    v0
end

start(iter::ColumnChunksIterator) = iter.rs.eof
done(iter::ColumnChunksIterator, state) = state
function next(iter::ColumnChunksIterator, state)
    rs = iter.rs
    fetchnext(rs)

    rowset = get(rs.rowset)
    sch = schema(rs)
    ncols = length(sch.columns)

    if isfilled(rowset, :columns)
        @logmsg("reading columns")
        # ref: https://issues.apache.org/jira/browse/HIVE-3746
        colvecs = [julia_type(col) for col in rowset.columns]
    else
        colvecs = [DataArray(T[]) for T in coltypes(sch)]
        @logmsg("reading rows for coltypes: $(coltypes(sch))")
        for row in rowset.rows
            colidx = 1
            for col in row.colVals
                push!(colvecs[colidx], julia_type(col))
                colidx += 1
            end
        end
    end

    df = [Symbol(sch.columns[colidx].columnName)=>colvecs[colidx] for colidx in 1:ncols]
    df, rs.eof
end

struct DataFrameIterator
    cc::ColumnChunksIterator

    function DataFrameIterator(rs::ResultSet, fetchsz::Integer=DEFAULT_FETCH_SIZE)
        new(ColumnChunksIterator(rs, fetchsz))
    end
end

dataframes(rs::ResultSet, fetchsz::Integer=DEFAULT_FETCH_SIZE) = DataFrameIterator(rs, fetchsz)
dataframe(rs::ResultSet, fetchsz::Integer=DEFAULT_FETCH_SIZE) = dataframe(dataframes(rs, fetchsz))
function dataframe(iter::DataFrameIterator)
    df = reduce(vcat, iter)
    close(iter.cc.rs)
    df
end

start(iter::DataFrameIterator) = start(iter.cc)
done(iter::DataFrameIterator, state) = state
function next(iter::DataFrameIterator, state)
    df = DataFrame()
    cols,eof = next(iter.cc, state)
    for (colname,colvec) in cols
        df[Symbol(colname)] = colvec
    end
    df, eof
end

mutable struct RecordIterator
    dfiter::DataFrameIterator
    dfpos::Int
    df::Nullable{DataFrame}

    RecordIterator(rs::ResultSet) = new(DataFrameIterator(rs), 1, Nullable{DataFrame}())
end

records(rs::ResultSet) = RecordIterator(rs)

start(iter::RecordIterator) = start(iter.dfiter)
function done(iter::RecordIterator, state)
    done(iter.dfiter, state) || (return false)
    isnull(iter.df) && return false
    df = get(iter.df)
    iter.dfpos > nrow(df)
end
function next(iter::RecordIterator, state)
    if isnull(iter.df) || (iter.dfpos > nrow(get(iter.df)))
        df, state = next(iter.dfiter, state)
        iter.df = Nullable(df)
        iter.dfpos = 1
    else
        df = get(iter.df)
    end
    recs = tuple(convert(Array, df[iter.dfpos,:])...)
    iter.dfpos += 1
    recs, state
end
