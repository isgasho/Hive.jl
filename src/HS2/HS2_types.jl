#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

struct _enum_TProtocolVersion
  HIVE_CLI_SERVICE_PROTOCOL_V1::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V2::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V3::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V4::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V5::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V6::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V7::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V8::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V9::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V10::Int32
  HIVE_CLI_SERVICE_PROTOCOL_V11::Int32
end
const TProtocolVersion = _enum_TProtocolVersion(Int32(0), Int32(1), Int32(2), Int32(3), Int32(4), Int32(5), Int32(6), Int32(7), Int32(8), Int32(9), Int32(10))

struct _enum_TTypeId
  BOOLEAN_TYPE::Int32
  TINYINT_TYPE::Int32
  SMALLINT_TYPE::Int32
  INT_TYPE::Int32
  BIGINT_TYPE::Int32
  FLOAT_TYPE::Int32
  DOUBLE_TYPE::Int32
  STRING_TYPE::Int32
  TIMESTAMP_TYPE::Int32
  BINARY_TYPE::Int32
  ARRAY_TYPE::Int32
  MAP_TYPE::Int32
  STRUCT_TYPE::Int32
  UNION_TYPE::Int32
  USER_DEFINED_TYPE::Int32
  DECIMAL_TYPE::Int32
  NULL_TYPE::Int32
  DATE_TYPE::Int32
  VARCHAR_TYPE::Int32
  CHAR_TYPE::Int32
  INTERVAL_YEAR_MONTH_TYPE::Int32
  INTERVAL_DAY_TIME_TYPE::Int32
  TIMESTAMPLOCALTZ_TYPE::Int32
end
const TTypeId = _enum_TTypeId(Int32(0), Int32(1), Int32(2), Int32(3), Int32(4), Int32(5), Int32(6), Int32(7), Int32(8), Int32(9), Int32(10), Int32(11), Int32(12), Int32(13), Int32(14), Int32(15), Int32(16), Int32(17), Int32(18), Int32(19), Int32(20), Int32(21), Int32(22))

struct _enum_TStatusCode
  SUCCESS_STATUS::Int32
  SUCCESS_WITH_INFO_STATUS::Int32
  STILL_EXECUTING_STATUS::Int32
  ERROR_STATUS::Int32
  INVALID_HANDLE_STATUS::Int32
end
const TStatusCode = _enum_TStatusCode(Int32(0), Int32(1), Int32(2), Int32(3), Int32(4))

struct _enum_TOperationState
  INITIALIZED_STATE::Int32
  RUNNING_STATE::Int32
  FINISHED_STATE::Int32
  CANCELED_STATE::Int32
  CLOSED_STATE::Int32
  ERROR_STATE::Int32
  UKNOWN_STATE::Int32
  PENDING_STATE::Int32
  TIMEDOUT_STATE::Int32
end
const TOperationState = _enum_TOperationState(Int32(0), Int32(1), Int32(2), Int32(3), Int32(4), Int32(5), Int32(6), Int32(7), Int32(8))

struct _enum_TOperationType
  EXECUTE_STATEMENT::Int32
  GET_TYPE_INFO::Int32
  GET_CATALOGS::Int32
  GET_SCHEMAS::Int32
  GET_TABLES::Int32
  GET_TABLE_TYPES::Int32
  GET_COLUMNS::Int32
  GET_FUNCTIONS::Int32
  UNKNOWN::Int32
end
const TOperationType = _enum_TOperationType(Int32(0), Int32(1), Int32(2), Int32(3), Int32(4), Int32(5), Int32(6), Int32(7), Int32(8))

struct _enum_TGetInfoType
  CLI_MAX_DRIVER_CONNECTIONS::Int32
  CLI_MAX_CONCURRENT_ACTIVITIES::Int32
  CLI_DATA_SOURCE_NAME::Int32
  CLI_FETCH_DIRECTION::Int32
  CLI_SERVER_NAME::Int32
  CLI_SEARCH_PATTERN_ESCAPE::Int32
  CLI_DBMS_NAME::Int32
  CLI_DBMS_VER::Int32
  CLI_ACCESSIBLE_TABLES::Int32
  CLI_ACCESSIBLE_PROCEDURES::Int32
  CLI_CURSOR_COMMIT_BEHAVIOR::Int32
  CLI_DATA_SOURCE_READ_ONLY::Int32
  CLI_DEFAULT_TXN_ISOLATION::Int32
  CLI_IDENTIFIER_CASE::Int32
  CLI_IDENTIFIER_QUOTE_CHAR::Int32
  CLI_MAX_COLUMN_NAME_LEN::Int32
  CLI_MAX_CURSOR_NAME_LEN::Int32
  CLI_MAX_SCHEMA_NAME_LEN::Int32
  CLI_MAX_CATALOG_NAME_LEN::Int32
  CLI_MAX_TABLE_NAME_LEN::Int32
  CLI_SCROLL_CONCURRENCY::Int32
  CLI_TXN_CAPABLE::Int32
  CLI_USER_NAME::Int32
  CLI_TXN_ISOLATION_OPTION::Int32
  CLI_INTEGRITY::Int32
  CLI_GETDATA_EXTENSIONS::Int32
  CLI_NULL_COLLATION::Int32
  CLI_ALTER_TABLE::Int32
  CLI_ORDER_BY_COLUMNS_IN_SELECT::Int32
  CLI_SPECIAL_CHARACTERS::Int32
  CLI_MAX_COLUMNS_IN_GROUP_BY::Int32
  CLI_MAX_COLUMNS_IN_INDEX::Int32
  CLI_MAX_COLUMNS_IN_ORDER_BY::Int32
  CLI_MAX_COLUMNS_IN_SELECT::Int32
  CLI_MAX_COLUMNS_IN_TABLE::Int32
  CLI_MAX_INDEX_SIZE::Int32
  CLI_MAX_ROW_SIZE::Int32
  CLI_MAX_STATEMENT_LEN::Int32
  CLI_MAX_TABLES_IN_SELECT::Int32
  CLI_MAX_USER_NAME_LEN::Int32
  CLI_OJ_CAPABILITIES::Int32
  CLI_XOPEN_CLI_YEAR::Int32
  CLI_CURSOR_SENSITIVITY::Int32
  CLI_DESCRIBE_PARAMETER::Int32
  CLI_CATALOG_NAME::Int32
  CLI_COLLATION_SEQ::Int32
  CLI_MAX_IDENTIFIER_LEN::Int32
  CLI_ODBC_KEYWORDS::Int32
end
const TGetInfoType = _enum_TGetInfoType(Int32(0), Int32(1), Int32(2), Int32(8), Int32(13), Int32(14), Int32(17), Int32(18), Int32(19), Int32(20), Int32(23), Int32(25), Int32(26), Int32(28), Int32(29), Int32(30), Int32(31), Int32(32), Int32(34), Int32(35), Int32(43), Int32(46), Int32(47), Int32(72), Int32(73), Int32(81), Int32(85), Int32(86), Int32(90), Int32(94), Int32(97), Int32(98), Int32(99), Int32(100), Int32(101), Int32(102), Int32(104), Int32(105), Int32(106), Int32(107), Int32(115), Int32(10000), Int32(10001), Int32(10002), Int32(10003), Int32(10004), Int32(10005), Int32(10006))

struct _enum_TFetchOrientation
  FETCH_NEXT::Int32
  FETCH_PRIOR::Int32
  FETCH_RELATIVE::Int32
  FETCH_ABSOLUTE::Int32
  FETCH_FIRST::Int32
  FETCH_LAST::Int32
end
const TFetchOrientation = _enum_TFetchOrientation(Int32(0), Int32(1), Int32(2), Int32(3), Int32(4), Int32(5))

struct _enum_TJobExecutionStatus
  IN_PROGRESS::Int32
  COMPLETE::Int32
  NOT_AVAILABLE::Int32
end
const TJobExecutionStatus = _enum_TJobExecutionStatus(Int32(0), Int32(1), Int32(2))

const TTypeEntryPtr = Int32

const TIdentifier = String

const TPattern = String

const TPatternOrIdentifier = String


mutable struct TTypeQualifierValue <: Thrift.TMsg
  i32Value::Int32
  stringValue::String
  TTypeQualifierValue() = (o=new(); fillunset(o); o)
end # mutable struct TTypeQualifierValue
meta(t::Type{TTypeQualifierValue}) = meta(t, Symbol[:i32Value,:stringValue], Int[], Dict{Symbol,Any}())

mutable struct TTypeQualifiers <: Thrift.TMsg
  qualifiers::Dict{String,TTypeQualifierValue}
  TTypeQualifiers() = (o=new(); fillunset(o); o)
end # mutable struct TTypeQualifiers

mutable struct TPrimitiveTypeEntry <: Thrift.TMsg
  _type::Int32
  typeQualifiers::TTypeQualifiers
  TPrimitiveTypeEntry() = (o=new(); fillunset(o); o)
end # mutable struct TPrimitiveTypeEntry
meta(t::Type{TPrimitiveTypeEntry}) = meta(t, Symbol[:typeQualifiers], Int[], Dict{Symbol,Any}())

mutable struct TArrayTypeEntry <: Thrift.TMsg
  objectTypePtr::TTypeEntryPtr
  TArrayTypeEntry() = (o=new(); fillunset(o); o)
end # mutable struct TArrayTypeEntry

mutable struct TMapTypeEntry <: Thrift.TMsg
  keyTypePtr::TTypeEntryPtr
  valueTypePtr::TTypeEntryPtr
  TMapTypeEntry() = (o=new(); fillunset(o); o)
end # mutable struct TMapTypeEntry

mutable struct TStructTypeEntry <: Thrift.TMsg
  nameToTypePtr::Dict{String,TTypeEntryPtr}
  TStructTypeEntry() = (o=new(); fillunset(o); o)
end # mutable struct TStructTypeEntry

mutable struct TUnionTypeEntry <: Thrift.TMsg
  nameToTypePtr::Dict{String,TTypeEntryPtr}
  TUnionTypeEntry() = (o=new(); fillunset(o); o)
end # mutable struct TUnionTypeEntry

mutable struct TUserDefinedTypeEntry <: Thrift.TMsg
  typeClassName::String
  TUserDefinedTypeEntry() = (o=new(); fillunset(o); o)
end # mutable struct TUserDefinedTypeEntry

mutable struct TTypeEntry <: Thrift.TMsg
  primitiveEntry::TPrimitiveTypeEntry
  arrayEntry::TArrayTypeEntry
  mapEntry::TMapTypeEntry
  structEntry::TStructTypeEntry
  unionEntry::TUnionTypeEntry
  userDefinedTypeEntry::TUserDefinedTypeEntry
  TTypeEntry() = (o=new(); fillunset(o); o)
end # mutable struct TTypeEntry
meta(t::Type{TTypeEntry}) = meta(t, Symbol[:primitiveEntry,:arrayEntry,:mapEntry,:structEntry,:unionEntry,:userDefinedTypeEntry], Int[], Dict{Symbol,Any}())

mutable struct TTypeDesc <: Thrift.TMsg
  types::Vector{TTypeEntry}
  TTypeDesc() = (o=new(); fillunset(o); o)
end # mutable struct TTypeDesc

mutable struct TColumnDesc <: Thrift.TMsg
  columnName::String
  typeDesc::TTypeDesc
  position::Int32
  comment::String
  TColumnDesc() = (o=new(); fillunset(o); o)
end # mutable struct TColumnDesc
meta(t::Type{TColumnDesc}) = meta(t, Symbol[:comment], Int[], Dict{Symbol,Any}())

mutable struct TTableSchema <: Thrift.TMsg
  columns::Vector{TColumnDesc}
  TTableSchema() = (o=new(); fillunset(o); o)
end # mutable struct TTableSchema

mutable struct TBoolValue <: Thrift.TMsg
  value::Bool
  TBoolValue() = (o=new(); fillunset(o); o)
end # mutable struct TBoolValue
meta(t::Type{TBoolValue}) = meta(t, Symbol[:value], Int[], Dict{Symbol,Any}())

mutable struct TByteValue <: Thrift.TMsg
  value::UInt8
  TByteValue() = (o=new(); fillunset(o); o)
end # mutable struct TByteValue
meta(t::Type{TByteValue}) = meta(t, Symbol[:value], Int[], Dict{Symbol,Any}())

mutable struct TI16Value <: Thrift.TMsg
  value::Int16
  TI16Value() = (o=new(); fillunset(o); o)
end # mutable struct TI16Value
meta(t::Type{TI16Value}) = meta(t, Symbol[:value], Int[], Dict{Symbol,Any}())

mutable struct TI32Value <: Thrift.TMsg
  value::Int32
  TI32Value() = (o=new(); fillunset(o); o)
end # mutable struct TI32Value
meta(t::Type{TI32Value}) = meta(t, Symbol[:value], Int[], Dict{Symbol,Any}())

mutable struct TI64Value <: Thrift.TMsg
  value::Int64
  TI64Value() = (o=new(); fillunset(o); o)
end # mutable struct TI64Value
meta(t::Type{TI64Value}) = meta(t, Symbol[:value], Int[], Dict{Symbol,Any}())

mutable struct TDoubleValue <: Thrift.TMsg
  value::Float64
  TDoubleValue() = (o=new(); fillunset(o); o)
end # mutable struct TDoubleValue
meta(t::Type{TDoubleValue}) = meta(t, Symbol[:value], Int[], Dict{Symbol,Any}())

mutable struct TStringValue <: Thrift.TMsg
  value::String
  TStringValue() = (o=new(); fillunset(o); o)
end # mutable struct TStringValue
meta(t::Type{TStringValue}) = meta(t, Symbol[:value], Int[], Dict{Symbol,Any}())

mutable struct TColumnValue <: Thrift.TMsg
  boolVal::TBoolValue
  byteVal::TByteValue
  i16Val::TI16Value
  i32Val::TI32Value
  i64Val::TI64Value
  doubleVal::TDoubleValue
  stringVal::TStringValue
  TColumnValue() = (o=new(); fillunset(o); o)
end # mutable struct TColumnValue
meta(t::Type{TColumnValue}) = meta(t, Symbol[:boolVal,:byteVal,:i16Val,:i32Val,:i64Val,:doubleVal,:stringVal], Int[], Dict{Symbol,Any}())

mutable struct TRow <: Thrift.TMsg
  colVals::Vector{TColumnValue}
  TRow() = (o=new(); fillunset(o); o)
end # mutable struct TRow

mutable struct TBoolColumn <: Thrift.TMsg
  values::Vector{Bool}
  nulls::Vector{UInt8}
  TBoolColumn() = (o=new(); fillunset(o); o)
end # mutable struct TBoolColumn

mutable struct TByteColumn <: Thrift.TMsg
  values::Vector{UInt8}
  nulls::Vector{UInt8}
  TByteColumn() = (o=new(); fillunset(o); o)
end # mutable struct TByteColumn

mutable struct TI16Column <: Thrift.TMsg
  values::Vector{Int16}
  nulls::Vector{UInt8}
  TI16Column() = (o=new(); fillunset(o); o)
end # mutable struct TI16Column

mutable struct TI32Column <: Thrift.TMsg
  values::Vector{Int32}
  nulls::Vector{UInt8}
  TI32Column() = (o=new(); fillunset(o); o)
end # mutable struct TI32Column

mutable struct TI64Column <: Thrift.TMsg
  values::Vector{Int64}
  nulls::Vector{UInt8}
  TI64Column() = (o=new(); fillunset(o); o)
end # mutable struct TI64Column

mutable struct TDoubleColumn <: Thrift.TMsg
  values::Vector{Float64}
  nulls::Vector{UInt8}
  TDoubleColumn() = (o=new(); fillunset(o); o)
end # mutable struct TDoubleColumn

mutable struct TStringColumn <: Thrift.TMsg
  values::Vector{String}
  nulls::Vector{UInt8}
  TStringColumn() = (o=new(); fillunset(o); o)
end # mutable struct TStringColumn

mutable struct TBinaryColumn <: Thrift.TMsg
  values::Vector{Vector{UInt8}}
  nulls::Vector{UInt8}
  TBinaryColumn() = (o=new(); fillunset(o); o)
end # mutable struct TBinaryColumn

mutable struct TColumn <: Thrift.TMsg
  boolVal::TBoolColumn
  byteVal::TByteColumn
  i16Val::TI16Column
  i32Val::TI32Column
  i64Val::TI64Column
  doubleVal::TDoubleColumn
  stringVal::TStringColumn
  binaryVal::TBinaryColumn
  TColumn() = (o=new(); fillunset(o); o)
end # mutable struct TColumn
meta(t::Type{TColumn}) = meta(t, Symbol[:boolVal,:byteVal,:i16Val,:i32Val,:i64Val,:doubleVal,:stringVal,:binaryVal], Int[], Dict{Symbol,Any}())

mutable struct TRowSet <: Thrift.TMsg
  startRowOffset::Int64
  rows::Vector{TRow}
  columns::Vector{TColumn}
  binaryColumns::Vector{UInt8}
  columnCount::Int32
  TRowSet() = (o=new(); fillunset(o); o)
end # mutable struct TRowSet
meta(t::Type{TRowSet}) = meta(t, Symbol[:columns,:binaryColumns,:columnCount], Int[], Dict{Symbol,Any}())

mutable struct TStatus <: Thrift.TMsg
  statusCode::Int32
  infoMessages::Vector{String}
  sqlState::String
  errorCode::Int32
  errorMessage::String
  TStatus() = (o=new(); fillunset(o); o)
end # mutable struct TStatus
meta(t::Type{TStatus}) = meta(t, Symbol[:infoMessages,:sqlState,:errorCode,:errorMessage], Int[], Dict{Symbol,Any}())

mutable struct THandleIdentifier <: Thrift.TMsg
  guid::Vector{UInt8}
  secret::Vector{UInt8}
  THandleIdentifier() = (o=new(); fillunset(o); o)
end # mutable struct THandleIdentifier

mutable struct TSessionHandle <: Thrift.TMsg
  sessionId::THandleIdentifier
  TSessionHandle() = (o=new(); fillunset(o); o)
end # mutable struct TSessionHandle

mutable struct TOperationHandle <: Thrift.TMsg
  operationId::THandleIdentifier
  operationType::Int32
  hasResultSet::Bool
  modifiedRowCount::Float64
  TOperationHandle() = (o=new(); fillunset(o); o)
end # mutable struct TOperationHandle
meta(t::Type{TOperationHandle}) = meta(t, Symbol[:modifiedRowCount], Int[], Dict{Symbol,Any}())

mutable struct TOpenSessionReq <: Thrift.TMsg
  client_protocol::Int32
  username::String
  password::String
  configuration::Dict{String,String}
  TOpenSessionReq() = (o=new(); fillunset(o); o)
end # mutable struct TOpenSessionReq
meta(t::Type{TOpenSessionReq}) = meta(t, Symbol[:username,:password,:configuration], Int[], Dict{Symbol,Any}(:client_protocol => Int32(9)))

mutable struct TOpenSessionResp <: Thrift.TMsg
  status::TStatus
  serverProtocolVersion::Int32
  sessionHandle::TSessionHandle
  configuration::Dict{String,String}
  TOpenSessionResp() = (o=new(); fillunset(o); o)
end # mutable struct TOpenSessionResp
meta(t::Type{TOpenSessionResp}) = meta(t, Symbol[:sessionHandle,:configuration], Int[], Dict{Symbol,Any}(:serverProtocolVersion => Int32(9)))

mutable struct TSetClientInfoReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  configuration::Dict{String,String}
  TSetClientInfoReq() = (o=new(); fillunset(o); o)
end # mutable struct TSetClientInfoReq
meta(t::Type{TSetClientInfoReq}) = meta(t, Symbol[:configuration], Int[], Dict{Symbol,Any}())

mutable struct TSetClientInfoResp <: Thrift.TMsg
  status::TStatus
  TSetClientInfoResp() = (o=new(); fillunset(o); o)
end # mutable struct TSetClientInfoResp

mutable struct TCloseSessionReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  TCloseSessionReq() = (o=new(); fillunset(o); o)
end # mutable struct TCloseSessionReq

mutable struct TCloseSessionResp <: Thrift.TMsg
  status::TStatus
  TCloseSessionResp() = (o=new(); fillunset(o); o)
end # mutable struct TCloseSessionResp

mutable struct TGetInfoValue <: Thrift.TMsg
  stringValue::String
  smallIntValue::Int16
  integerBitmask::Int32
  integerFlag::Int32
  binaryValue::Int32
  lenValue::Int64
  TGetInfoValue() = (o=new(); fillunset(o); o)
end # mutable struct TGetInfoValue
meta(t::Type{TGetInfoValue}) = meta(t, Symbol[:stringValue,:smallIntValue,:integerBitmask,:integerFlag,:binaryValue,:lenValue], Int[], Dict{Symbol,Any}())

mutable struct TGetInfoReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  infoType::Int32
  TGetInfoReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetInfoReq

mutable struct TGetInfoResp <: Thrift.TMsg
  status::TStatus
  infoValue::TGetInfoValue
  TGetInfoResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetInfoResp

mutable struct TExecuteStatementReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  statement::String
  confOverlay::Dict{String,String}
  runAsync::Bool
  queryTimeout::Int64
  TExecuteStatementReq() = (o=new(); fillunset(o); o)
end # mutable struct TExecuteStatementReq
meta(t::Type{TExecuteStatementReq}) = meta(t, Symbol[:confOverlay,:runAsync,:queryTimeout], Int[], Dict{Symbol,Any}(:runAsync => false, :queryTimeout => Int64(0)))

mutable struct TExecuteStatementResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TExecuteStatementResp() = (o=new(); fillunset(o); o)
end # mutable struct TExecuteStatementResp
meta(t::Type{TExecuteStatementResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetTypeInfoReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  TGetTypeInfoReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetTypeInfoReq

mutable struct TGetTypeInfoResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TGetTypeInfoResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetTypeInfoResp
meta(t::Type{TGetTypeInfoResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetCatalogsReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  TGetCatalogsReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetCatalogsReq

mutable struct TGetCatalogsResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TGetCatalogsResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetCatalogsResp
meta(t::Type{TGetCatalogsResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetSchemasReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  catalogName::TIdentifier
  schemaName::TPatternOrIdentifier
  TGetSchemasReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetSchemasReq
meta(t::Type{TGetSchemasReq}) = meta(t, Symbol[:catalogName,:schemaName], Int[], Dict{Symbol,Any}())

mutable struct TGetSchemasResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TGetSchemasResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetSchemasResp
meta(t::Type{TGetSchemasResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetTablesReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  catalogName::TPatternOrIdentifier
  schemaName::TPatternOrIdentifier
  tableName::TPatternOrIdentifier
  tableTypes::Vector{String}
  TGetTablesReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetTablesReq
meta(t::Type{TGetTablesReq}) = meta(t, Symbol[:catalogName,:schemaName,:tableName,:tableTypes], Int[], Dict{Symbol,Any}())

mutable struct TGetTablesResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TGetTablesResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetTablesResp
meta(t::Type{TGetTablesResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetTableTypesReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  TGetTableTypesReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetTableTypesReq

mutable struct TGetTableTypesResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TGetTableTypesResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetTableTypesResp
meta(t::Type{TGetTableTypesResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetColumnsReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  catalogName::TIdentifier
  schemaName::TPatternOrIdentifier
  tableName::TPatternOrIdentifier
  columnName::TPatternOrIdentifier
  TGetColumnsReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetColumnsReq
meta(t::Type{TGetColumnsReq}) = meta(t, Symbol[:catalogName,:schemaName,:tableName,:columnName], Int[], Dict{Symbol,Any}())

mutable struct TGetColumnsResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TGetColumnsResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetColumnsResp
meta(t::Type{TGetColumnsResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetFunctionsReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  catalogName::TIdentifier
  schemaName::TPatternOrIdentifier
  functionName::TPatternOrIdentifier
  TGetFunctionsReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetFunctionsReq
meta(t::Type{TGetFunctionsReq}) = meta(t, Symbol[:catalogName,:schemaName], Int[], Dict{Symbol,Any}())

mutable struct TGetFunctionsResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TGetFunctionsResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetFunctionsResp
meta(t::Type{TGetFunctionsResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetPrimaryKeysReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  catalogName::TIdentifier
  schemaName::TIdentifier
  tableName::TIdentifier
  TGetPrimaryKeysReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetPrimaryKeysReq
meta(t::Type{TGetPrimaryKeysReq}) = meta(t, Symbol[:catalogName,:schemaName,:tableName], Int[], Dict{Symbol,Any}())

mutable struct TGetPrimaryKeysResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TGetPrimaryKeysResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetPrimaryKeysResp
meta(t::Type{TGetPrimaryKeysResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetCrossReferenceReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  parentCatalogName::TIdentifier
  parentSchemaName::TIdentifier
  parentTableName::TIdentifier
  foreignCatalogName::TIdentifier
  foreignSchemaName::TIdentifier
  foreignTableName::TIdentifier
  TGetCrossReferenceReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetCrossReferenceReq
meta(t::Type{TGetCrossReferenceReq}) = meta(t, Symbol[:parentCatalogName,:parentSchemaName,:parentTableName,:foreignCatalogName,:foreignSchemaName,:foreignTableName], Int[], Dict{Symbol,Any}())

mutable struct TGetCrossReferenceResp <: Thrift.TMsg
  status::TStatus
  operationHandle::TOperationHandle
  TGetCrossReferenceResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetCrossReferenceResp
meta(t::Type{TGetCrossReferenceResp}) = meta(t, Symbol[:operationHandle], Int[], Dict{Symbol,Any}())

mutable struct TGetOperationStatusReq <: Thrift.TMsg
  operationHandle::TOperationHandle
  getProgressUpdate::Bool
  TGetOperationStatusReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetOperationStatusReq
meta(t::Type{TGetOperationStatusReq}) = meta(t, Symbol[:getProgressUpdate], Int[], Dict{Symbol,Any}())

mutable struct TProgressUpdateResp <: Thrift.TMsg
  headerNames::Vector{String}
  rows::Vector{Vector{String}}
  progressedPercentage::Float64
  status::Int32
  footerSummary::String
  startTime::Int64
  TProgressUpdateResp() = (o=new(); fillunset(o); o)
end # mutable struct TProgressUpdateResp

mutable struct TGetOperationStatusResp <: Thrift.TMsg
  status::TStatus
  operationState::Int32
  sqlState::String
  errorCode::Int32
  errorMessage::String
  taskStatus::String
  operationStarted::Int64
  operationCompleted::Int64
  hasResultSet::Bool
  progressUpdateResponse::TProgressUpdateResp
  numModifiedRows::Int64
  TGetOperationStatusResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetOperationStatusResp
meta(t::Type{TGetOperationStatusResp}) = meta(t, Symbol[:operationState,:sqlState,:errorCode,:errorMessage,:taskStatus,:operationStarted,:operationCompleted,:hasResultSet,:progressUpdateResponse,:numModifiedRows], Int[], Dict{Symbol,Any}())

mutable struct TCancelOperationReq <: Thrift.TMsg
  operationHandle::TOperationHandle
  TCancelOperationReq() = (o=new(); fillunset(o); o)
end # mutable struct TCancelOperationReq

mutable struct TCancelOperationResp <: Thrift.TMsg
  status::TStatus
  TCancelOperationResp() = (o=new(); fillunset(o); o)
end # mutable struct TCancelOperationResp

mutable struct TCloseOperationReq <: Thrift.TMsg
  operationHandle::TOperationHandle
  TCloseOperationReq() = (o=new(); fillunset(o); o)
end # mutable struct TCloseOperationReq

mutable struct TCloseOperationResp <: Thrift.TMsg
  status::TStatus
  TCloseOperationResp() = (o=new(); fillunset(o); o)
end # mutable struct TCloseOperationResp

mutable struct TGetResultSetMetadataReq <: Thrift.TMsg
  operationHandle::TOperationHandle
  TGetResultSetMetadataReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetResultSetMetadataReq

mutable struct TGetResultSetMetadataResp <: Thrift.TMsg
  status::TStatus
  schema::TTableSchema
  TGetResultSetMetadataResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetResultSetMetadataResp
meta(t::Type{TGetResultSetMetadataResp}) = meta(t, Symbol[:schema], Int[], Dict{Symbol,Any}())

mutable struct TFetchResultsReq <: Thrift.TMsg
  operationHandle::TOperationHandle
  orientation::Int32
  maxRows::Int64
  fetchType::Int16
  TFetchResultsReq() = (o=new(); fillunset(o); o)
end # mutable struct TFetchResultsReq
meta(t::Type{TFetchResultsReq}) = meta(t, Symbol[:fetchType], Int[], Dict{Symbol,Any}(:orientation => Int32(0), :fetchType => Int16(0)))

mutable struct TFetchResultsResp <: Thrift.TMsg
  status::TStatus
  hasMoreRows::Bool
  results::TRowSet
  TFetchResultsResp() = (o=new(); fillunset(o); o)
end # mutable struct TFetchResultsResp
meta(t::Type{TFetchResultsResp}) = meta(t, Symbol[:hasMoreRows,:results], Int[], Dict{Symbol,Any}())

mutable struct TGetDelegationTokenReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  owner::String
  renewer::String
  TGetDelegationTokenReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetDelegationTokenReq

mutable struct TGetDelegationTokenResp <: Thrift.TMsg
  status::TStatus
  delegationToken::String
  TGetDelegationTokenResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetDelegationTokenResp
meta(t::Type{TGetDelegationTokenResp}) = meta(t, Symbol[:delegationToken], Int[], Dict{Symbol,Any}())

mutable struct TCancelDelegationTokenReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  delegationToken::String
  TCancelDelegationTokenReq() = (o=new(); fillunset(o); o)
end # mutable struct TCancelDelegationTokenReq

mutable struct TCancelDelegationTokenResp <: Thrift.TMsg
  status::TStatus
  TCancelDelegationTokenResp() = (o=new(); fillunset(o); o)
end # mutable struct TCancelDelegationTokenResp

mutable struct TRenewDelegationTokenReq <: Thrift.TMsg
  sessionHandle::TSessionHandle
  delegationToken::String
  TRenewDelegationTokenReq() = (o=new(); fillunset(o); o)
end # mutable struct TRenewDelegationTokenReq

mutable struct TRenewDelegationTokenResp <: Thrift.TMsg
  status::TStatus
  TRenewDelegationTokenResp() = (o=new(); fillunset(o); o)
end # mutable struct TRenewDelegationTokenResp

mutable struct TGetQueryIdReq <: Thrift.TMsg
  operationHandle::TOperationHandle
  TGetQueryIdReq() = (o=new(); fillunset(o); o)
end # mutable struct TGetQueryIdReq

mutable struct TGetQueryIdResp <: Thrift.TMsg
  queryId::String
  TGetQueryIdResp() = (o=new(); fillunset(o); o)
end # mutable struct TGetQueryIdResp

abstract type TCLIServiceClientBase end
