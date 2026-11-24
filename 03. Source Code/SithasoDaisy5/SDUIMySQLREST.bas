B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.8
@EndOfDesignText@
#IgnoreWarnings:12
'
Private Sub Class_Globals
	Public const DB_BOOL As String = "BOOL"
	Public const DB_INT As String = "INT"
	Public const DB_REAL As String = "REAL"
	Public const DB_FLOAT As String = "FLOAT"
	Public const DB_INTEGER As String = "INTEGER"
	Public const DB_TEXT As String = "TEXT"
	Public const DB_LONGTEXT As String = "LONGTEXT"
	Public const DB_DOUBLE As String = "DOUBLE"
	Public const DB_NUMBER As String = "NUMBER"
	Public const DB_DATE As String = "DATE"
	Public const DB_FILE As String = "FILE"
	Public const DB_BLOB As String = "BLOB"
	Public const DB_STRING As String = "STRING"
	'
	Private mCallBack As Object			'ignore
	Private whereField As Map
	Private ops As List
	Private orderByL As List
	Private flds As List
	Public RowCount As Int
	Private lastPosition As Int
	Public Record As Map
	Public result As List
	Private BANano As BANano 'ignore
	Private mEvent As String		'ignore
	Public TableName As String
	Public Tag As Object
	Public Schema As Map
	Public PrimaryKey As String = "id"
	Public DisplayField As String
	Public Singular As String
	Public Plural As String
	Public DisplayValue As String
	Public IsAuthenticated As Boolean
	Private combineL As List
	Public ShowLog As Boolean
	Private baseURL As String
	Public AutoIncrement As String
	'
	Public OPERATOR_CONTAINS As String = "cs"
	Public OPERATOR_NOT_CONTAINS As String = "ncs"
	Public OPERATOR_STARTSWITH As String = "sw"
	Public OPERATOR_NOT_STARTSWITH As String = "nsw"
	Public OPERATOR_ENDS_WITH As String = "ew"
	Public OPERATOR_NOT_ENDS_WITH As String = "new"
	Public OPERATOR_EQ As String = "eq"
	Public OPERATOR_NEQ As String = "neq"
	Public OPERATOR_LT As String = "lt"
	Public OPERATOR_NLT As String = "nlt"
	Public OPERATOR_LTE As String = "le"
	Public OPERATOR_NOT_LTE As String = "nle"
	Public OPERATOR_GTE As String = "ge"
	Public OPERATOR_NGTE As String = "nge"
	Public OPERATOR_GT As String = "gt"
	Public OPERATOR_NGT As String = "ngt"
	Public OPERATOR_BETWEEN As String = "bt"
	Public OPERATOR_NBETWEEN As String = "nbt"
	Public OPERATOR_IN As String = "in"
	Public OPERATOR_NOT_IN As String = "nin"
	Public OPERATOR_ISNULL As String = "is"
	Public OPERATOR_NOT_ISNULL As String = "nis"
	Public OPERATOR_LIKE As String = "like"
	Public OPERATOR_BETWEEN As String = "between"
	Private sApiKey As String = ""
	Private sSize As String = ""
	Private joinL As List
	Public ErrorMessage As String = ""
	Public UseApiKey As Boolean = True
	Public ApiFile As String = "api"
	Private escapeCharStart As String = "`"
	Private escapeCharEnd As String = "`"
	Public MatchSchema As Boolean
	Private sHost As String
	Private sUser As String
	Private sPassword As String
	Private sDbName As String
	Private sDriver As String
	Private sPort As String
	Private UseBaseURL As Boolean
	Public NoCORS As Boolean
	Public Redirect As String
	Public NoCache As Boolean
	Public ReferrerPolicy As String
	Public Mode As String
	Public LowerCaseFields As Boolean = True
	Private idxNames As Map
	Private uniqueIdxNames As Map
	' PocketBase-compatible state
	Public AffectedRows As Int
	Public LastAffectedID As String
	Public skipTotal As Boolean
	Public CountRecords As Boolean
	Private expandL As List
	Private headers As Map
	Private grpBy As List
	Private fileFields As Map
	Private mFormFields As Map
	Private mFormFiles As List
	Public GetFiles As Boolean
	Public GetUrls As Boolean
	' PocketBase-compatible auth state
	Public UserProfile As profileType
	Public UserRecord As Map
	Public UserToken As String
	Public UserModel As Map
	Public UserValid As Boolean
	Public BearerToken As String
	Public UsersCollectionName As String
	Private mBatch As List
	Private mBatchActive As Boolean
End Sub

Sub whereNotEqual(fldName As String, fldValue As Object) As SDUIMySQLREST
	ADD_WHERE(fldName, "<>", fldValue)
	Return Me
End Sub

Sub NewList As List
	Dim lst As List
	lst.Initialize
	Return lst
End Sub

'<code>
''initialize the connection to mysql with a collection to access
'Dim pb As SDUIMySQLREST
'pb.Initialize(Me, "pb", "https://localhost/sdmysqlapi", "projects")
'pb.SchemaAddText(Array("id", "name"))
'pb.PrimaryKey = "id"
'pb.AutoIncrement = "id"
'</code>
Public Sub Initialize(Module As Object, eventName As String, url As String, sTableName As String) As SDUIMySQLREST
	InitCommon(Module, eventName, url, sTableName)
	Return Me
End Sub

Public Sub InitializeApiKey(Module As Object, eventName As String, url As String, sTableName As String, xApiKey As String) As SDUIMySQLREST
	InitCommon(Module, eventName, url, sTableName)
	SetDBApiKey(xApiKey)
	Return Me
End Sub

' Shared initialization body used by all initializers.
Private Sub InitCommon(Module As Object, eventName As String, url As String, sTableName As String)
	TableName = sTableName
	mCallBack = Module
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	Record.Initialize
	lastPosition = -1
	result.Initialize
	mEvent = eventName
	PrimaryKey = "id"
	AutoIncrement = ""
	Schema.Initialize
	combineL.Initialize
	ShowLog = False
	baseURL = url
	sApiKey = ""
	SchemaAddText1(PrimaryKey)
	sSize = ""
	joinL.Initialize
	UseApiKey = True
	escapeCharStart = "`"
	escapeCharEnd = "`"
	MatchSchema = True
	UseBaseURL = False
	If url.EndsWith(".php") Then
		UseBaseURL = True
	End If
	NoCORS = False
	Redirect = ""
	NoCache = True
	ReferrerPolicy = ""
	Mode = ""
	LowerCaseFields = True
	idxNames.Initialize
	uniqueIdxNames.Initialize
	expandL.Initialize
	headers.Initialize
	grpBy.Initialize
	fileFields.Initialize
	mFormFields.Initialize
	mFormFiles.Initialize
	GetFiles = False
	GetUrls = False
	UserProfile.Initialize
	UserProfile.size = 0
	UserRecord.Initialize
	UserToken = ""
	UserModel.Initialize
	UserValid = False
	BearerToken = ""
	UsersCollectionName = "users"
	mBatch.Initialize
	mBatchActive = False
	AffectedRows = 0
	LastAffectedID = ""
	skipTotal = True
	CountRecords = False
End Sub

' PocketBase-compatible shared connection initializer.
Public Sub InitializeOnConnection(Module As Object, connection As Object, eventName As String, url As String, sTableName As String) As SDUIMySQLREST
	InitCommon(Module, eventName, url, sTableName)
	If connection <> Null Then
		If connection Is SDUIMySQLREST Then
			Dim c As SDUIMySQLREST = connection
			If c.baseURL <> "" Then baseURL = c.baseURL
			If c.sApiKey <> "" Then sApiKey = c.sApiKey
			sHost = c.sHost
			sUser = c.sUser
			sPassword = c.sPassword
			sDbName = c.sDbName
			sDriver = c.sDriver
			sPort = c.sPort
			UseApiKey = c.UseApiKey
			UseBaseURL = c.UseBaseURL
			ApiFile = c.ApiFile
			NoCORS = c.NoCORS
			Redirect = c.Redirect
			NoCache = c.NoCache
			ReferrerPolicy = c.ReferrerPolicy
			Mode = c.Mode
			ShowLog = c.ShowLog
			If c.headers <> Null Then headers = c.headers
		Else If connection Is Map Then
			Dim cm As Map = connection
			baseURL = cm.GetDefault("baseURL", baseURL)
			sApiKey = cm.GetDefault("apiKey", sApiKey)
			sHost = cm.GetDefault("host", sHost)
			sUser = cm.GetDefault("user", sUser)
			sPassword = cm.GetDefault("password", sPassword)
			sDbName = cm.GetDefault("dbname", sDbName)
			sDriver = cm.GetDefault("driver", sDriver)
			sPort = cm.GetDefault("port", sPort)
			UseApiKey = cm.GetDefault("useApiKey", UseApiKey)
			UseBaseURL = cm.GetDefault("useBaseURL", UseBaseURL)
			ApiFile = cm.GetDefault("apiFile", ApiFile)
		End If
	End If
	Return Me
End Sub

Sub SetMySQLConnection(xHost As String, xUser As String, xPassword As String, xDbName As String, xPort As String)
	sHost = xHost
	sUser = xUser
	sPassword = xPassword
	sDbName = xDbName
	sDriver = "mysql"
	sPort = xPort
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetMySQLConnection"$)
		Log($"Host: ${sHost}"$)
		Log($"User: ${sUser}"$)
		Log($"Password: ${sPassword}"$)
		Log($"DBName: ${sDbName}"$)
		Log($"Driver: ${sDriver}"$)
		Log($"Port: ${sPort}"$)
	End If
End Sub

private Sub SetDBApiKey(xApiKey As String)
	sApiKey = xApiKey
	UseApiKey = True
	If sApiKey = "" Then UseApiKey = False
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetDBApiKey"$)
		Log($"ApiKey: ${sApiKey}"$)
	End If
End Sub

Sub SetMySQLConnectionApiKey(xHost As String, xUser As String, xPassword As String, xDbName As String, xPort As String, xApiKey As String)
	sHost = xHost
	sUser = xUser
	sPassword = xPassword
	sDbName = xDbName
	sDriver = "mysql"
	sPort = xPort
	sApiKey = xApiKey
	UseApiKey = True
	If sApiKey = "" Then UseApiKey = False
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetMySQLConnectionApiKey"$)
		Log($"Host: ${sHost}"$)
		Log($"User: ${sUser}"$)
		Log($"Password: ${sPassword}"$)
		Log($"DBName: ${sDbName}"$)
		Log($"Driver: ${sDriver}"$)
		Log($"Port: ${sPort}"$)
		Log($"ApiKey: ${sApiKey}"$)
	End If
End Sub

Sub SetSQLiteConnection(sPath As String)
	sHost = sPath
	sUser = ""
	sPassword = ""
	sDbName = ""
	sDriver = "sqlite"
	sPort = "3306"
	UseApiKey = False
	sApiKey = ""
	NoCORS = False
	Redirect = "follow"
	NoCache = True
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetSQLiteConnection"$)
		Log($"Host: ${sHost}"$)
		Log($"User: ${sUser}"$)
		Log($"Password: ${sPassword}"$)
		Log($"DBName: ${sDbName}"$)
		Log($"Driver: ${sDriver}"$)
		Log($"Port: ${sPort}"$)
		Log($"ApiKey: ${sApiKey}"$)
	End If
End Sub

Sub SetSQLiteConnectionApiKey(sPath As String, xApiKey As String)
	sHost = sPath
	sUser = ""
	sPassword = ""
	sDbName = ""
	sDriver = "sqlite"
	sPort = "3306"
	sApiKey = xApiKey
	UseApiKey = True
	If sApiKey = "" Then UseApiKey = False
	NoCORS = False
	Redirect = "follow"
	NoCache = True
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetSQLiteConnectionApiKey"$)
		Log($"Host: ${sHost}"$)
		Log($"User: ${sUser}"$)
		Log($"Password: ${sPassword}"$)
		Log($"DBName: ${sDbName}"$)
		Log($"Driver: ${sDriver}"$)
		Log($"Port: ${sPort}"$)
		Log($"ApiKey: ${sApiKey}"$)
	End If
End Sub

Sub SchemaAddIndex(idxName As String, bUnique As Boolean) As SDUIMySQLREST
	If bUnique Then
		uniqueIdxNames.Put(idxName, idxName)
	Else
		idxNames.Put(idxName, idxName)
	End If
	Return Me
End Sub

Sub SchemaAddIndexes(idxNames1 As List) As SDUIMySQLREST
	For Each k As String In idxNames1
		SchemaAddIndex(k, False)
	Next
	Return Me
End Sub

Sub SchemaAddUniqueIndexes(idxNames1 As List) As SDUIMySQLREST
	For Each k As String In idxNames1
		SchemaAddIndex(k, True)
	Next
	Return Me
End Sub

Public Sub EscapeField(f As String) As String
	Return $"${escapeCharStart}${f}${escapeCharEnd}"$
End Sub

Public Sub CREATE_TABLE
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.CREATE_TABLE"$)
	End If
	Dim query As String = CreateTable
	BANano.Await(SELECT_RAW(query))
End Sub

Public Sub CreateTable As String
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append("(")
	For i = 0 To Schema.Size - 1
		Dim field, ftype As String
		field = Schema.GetKeyAt(i)
		ftype = Schema.GetValueAt(i)
		'
		Select Case ftype
		Case DB_BOOL
			ftype = "TINYINT(1)"
		Case DB_INT, DB_INTEGER
			ftype = "INT"
		Case DB_NUMBER
			ftype = "DECIMAL(18,6)"
		Case DB_REAL, DB_FLOAT, DB_DOUBLE
			ftype = "DOUBLE"
		Case DB_TEXT, DB_STRING
			ftype = "VARCHAR(255)"
		Case DB_LONGTEXT 
			ftype = "LONGTEXT"
		Case DB_DATE
			ftype = "DATETIME"
		Case DB_FILE, DB_BLOB
			ftype = "LONGBLOB"
		Case Else
			ftype = "VARCHAR(255)"
		End Select
		'		
		If i > 0 Then sb.Append(", ")
		sb.Append(EscapeField(field)).Append(" ").Append(ftype)
		'
		If field = PrimaryKey Then
			sb.Append(" PRIMARY KEY")
			If field = AutoIncrement Then
				sb.Append(" AUTO_INCREMENT")
			End If
		End If
	Next
	'--- Indexes ---
	' Unique indexes
	If uniqueIdxNames.Size > 0 Then
		For Each key As String In uniqueIdxNames.Keys
			sb.Append(", UNIQUE KEY ").Append(EscapeField(key))
			sb.Append(" (").Append(EscapeField(key)).Append(")")
		Next
	End If

	' Normal indexes
	If idxNames.Size > 0 Then
		For Each key As String In idxNames.Keys
			sb.Append(", KEY ").Append(EscapeField(key))
			sb.Append(" (").Append(EscapeField(key)).Append(")")
		Next
	End If
	sb.Append(")")
	Dim query As String = "CREATE TABLE IF NOT EXISTS " & EscapeField(TableName) & " " & sb.ToString
	Return query
End Sub

Sub SetLimit(s As String)
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetLimit(${s})"$)
	End If
	sSize = s
End Sub

'required
Sub setApiKey(s As String)
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.setApiKey(${s})"$)
	End If
	sApiKey = s
End Sub

'prepare for new table definition
Sub SchemaClear As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}SchemaClear"$)
	End If
	Schema.clear
	Return Me
End Sub

'schema add boolean
Sub SchemaAddBoolean(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	Return Me
End Sub
Sub SchemaAddBoolean1(b As String) As SDUIMySQLREST
	Schema.Put(b, DB_BOOL)
	Return Me
End Sub
Sub SchemaAddDouble1(b As String) As SDUIMySQLREST
	Schema.Put(b, DB_DOUBLE)
	Return Me
End Sub
'add double fields
Sub SchemaAddDouble(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	Return Me
End Sub
Sub SchemaAddFloat1(b As String) As SDUIMySQLREST
	Schema.Put(b, DB_FLOAT)
	Return Me
End Sub
Sub SchemaAddFloat(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	Return Me
End Sub
Sub SchemaAddText1(b As String) As SDUIMySQLREST
	Schema.Put(b, DB_TEXT)
	Return Me
End Sub
Sub SchemaAddText(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		Schema.Put(b, DB_TEXT)
	Next
	Return Me
End Sub

Sub SchemaAddLongText1(b As String) As SDUIMySQLREST
	Schema.Put(b, DB_LONGTEXT)
	Return Me
End Sub

Sub SchemaAddLongText(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		Schema.Put(b, DB_LONGTEXT)
	Next
	Return Me
End Sub

Sub SchemaAddInt1(b As String) As SDUIMySQLREST
	Schema.Put(b, DB_INT)
	Return Me
End Sub
Sub SchemaAddInt(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		Schema.Put(b, DB_INT)
	Next
	Return Me
End Sub

'convert object to string
private Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub

private Sub ListOfMapsGetProperty(lst As List, key As String) As List
	key = CStr(key)
	Dim nList As List
	nList.Initialize
	'
	Dim recTot As Int = lst.Size - 1
	Dim recCnt As Int
	For recCnt = 0 To recTot
		Dim m As Map = lst.Get(recCnt)
		If m.ContainsKey(key) Then
			Dim v As String = m.Get(key)
			v = CStr(v)
			nList.Add(v)
		End If
	Next
	Return nList
End Sub

'get recursive data from a map
private Sub GetRecursive(xdata As Map, path As String) As Object
	Try
		Dim prevObj As BANanoObject = xdata
		If path.IndexOf(".") = -1 Then
			Dim res As Object = prevObj.GetField(path)
			If BANano.IsUndefined(res) Then
				res = Null
			End If
			Return res
		Else
			Dim items As List = BANano.Split(".", path)
			Dim iTot As Int = items.Size
			Dim iCnt As Int
			'
			Dim strprev As String = ""
			Dim prtObj As BANanoObject
			Dim litem As String = items.Get(iTot - 1)
			'
			For iCnt = 1 To iTot - 1
				'get the previos path
				strprev = items.Get(iCnt - 1)
				'the parent object
				prtObj = prevObj.GetField(strprev)
				'this does not exist, return
				If BANano.IsUndefined(prtObj) Then
					Return Null
				Else
					prevObj = prtObj
				End If
			Next
			Dim res As Object = prevObj.GetField(litem)
			If BANano.IsUndefined(res) Then
				res = Null
			End If
			Return res
		End If
	Catch
		Return Null
	End Try
End Sub

Sub SetSchemaFromDataModel1(sourceTable As String, models As Map)
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${sourceTable}.SetSchemaFromDataModel"$)
	End If
	If models.ContainsKey(sourceTable) = False Then
		BANano.Throw($"SetSchemaFromDataModel.${sourceTable} data-model does NOT exist!"$)
		Return
	End If
	Dim tm As Map = models.Get(sourceTable)
	PrimaryKey = tm.GetDefault("pk", "")
	AutoIncrement = tm.GetDefault("ai", "")
	Schema.Initialize
	'set the field types
	Dim fldsx As List = tm.Get("fields").As(List)
	For Each fm As Map In fldsx
		Dim fldType As String = fm.Get("type")
		Dim fldName As String = fm.Get("name")
		Select Case fldType
			Case "LONGTEXT"
				SchemaAddLongText1(fldName)
			Case "TEXT", "STRING"
				SchemaAddText1(fldName)
			Case "BLOB"
				SchemaAddBlob1(fldName)
			Case "INT", "INTEGER"
				SchemaAddInt1(fldName)
			Case "DOUBLE", "REAL", "FLOAT"
				SchemaAddDouble1(fldName)
			Case "BOOL"
				SchemaAddBoolean1(fldName)
				
		End Select
	Next
	If AutoIncrement <> "" Then
		SchemaAddInt1(AutoIncrement)
	End If
End Sub

'set schema from data models including primary key and auto-increment

Sub SetSchemaFromDataModel(models As Map)
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetSchemaFromDataModel"$)
	End If
	If models.ContainsKey(TableName) = False Then
		BANano.Throw($"SetSchemaFromDataModel.${TableName} data-model does NOT exist!"$)
		Return
	End If
	Dim tm As Map = models.Get(TableName)
	PrimaryKey = tm.GetDefault("pk", "")
	AutoIncrement = tm.GetDefault("ai", "")
	Schema.Initialize
	'set the field types
	Dim fldsx As List = tm.Get("fields").As(List)
	For Each fm As Map In fldsx
		Dim fldType As String = fm.Get("type")
		Dim fldName As String = fm.Get("name")
		Select Case fldType
			Case "LONGTEXT"
				SchemaAddLongText1(fldName)
			Case "TEXT", "STRING"
				SchemaAddText1(fldName)
			Case "BLOB"
				SchemaAddBlob1(fldName)
			Case "INT", "INTEGER"
				SchemaAddInt1(fldName)
			Case "DOUBLE", "REAL", "FLOAT"
				SchemaAddDouble1(fldName)
			Case "BOOL"
				SchemaAddBoolean1(fldName)
				
		End Select
	Next
	If AutoIncrement <> "" Then
		SchemaAddInt1(AutoIncrement)
	End If
End Sub

Sub SchemaAddBlob(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
	Return Me
End Sub

Sub SchemaAddFile(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		Schema.Put(b, DB_FILE)
	Next
	Return Me
End Sub

Sub SchemaAddFile1(b As String) As SDUIMySQLREST
	Schema.Put(b, DB_FILE)
	Return Me
End Sub

Sub SchemaAddBlob1(b As String) As SDUIMySQLREST
	Schema.Put(b, DB_BLOB)
	Return Me
End Sub

Sub SchemaAddNumber(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		Schema.Put(b, DB_NUMBER)
	Next
	Return Me
End Sub

Sub SchemaAddNumber1(b As String) As SDUIMySQLREST
	Schema.Put(b, DB_NUMBER)
	Return Me
End Sub

Sub ShowDatabases As List
	Dim lst As List = BANano.Await(SELECT_RAW("SHOW DATABASES"))
	Dim nl As List
	nl.Initialize 
	For Each rec As Map In lst
		Dim sDatabase As String = rec.Get("Database")
		nl.Add(sDatabase)
	Next
	Return nl
End Sub

'this executes a ping to the database
Sub DATABASE_EXISTS As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.DATABASE_EXISTS"$)
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUIMySQLREST.DATABASE_EXISTS - The ApiKey has not been specified!"$)
			Return False
		End If
	End If
	Try
		'this is a get
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.Mode = Mode
		ApplyHeaders(fetch, "")
		fetch.SetURL($"/assets/${ApiFile}.php/status/ping"$)
		If UseBaseURL Then
			fetch.SetURL($"/status/ping"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.DATABASE_EXISTS.${baseURL}/assets/${ApiFile}.php/status/ping"$)
		End If
		fetch.NoCache = NoCache
		BANano.Await(fetch.GetWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			If Response.ContainsKey("db") Then
				Return True
			Else
				Return False	
			End If
		Else
			If ShowLog Then
				Log($"SDUIMySQLREST.Fetch ErrorMessage.${fetch.ErrorMessage}"$)
			End If
			Log(fetch.ErrorMessage)
		End If
		Return False
	Catch
		If ShowLog Then
			Log($"SDUIMySQLREST.Fetch LastException.${LastException.Message}"$)
		End If
		Log(LastException.Message)
		Return False
	End Try
End Sub

Sub DELETE_TABLE(stableName As String) As Boolean
	Dim qry As String = $"DROP TABLE `${stableName}`"$
	BANano.Await(SELECT_RAW(qry))
	Dim bRes As Boolean = BANano.Await(TABLE_EXISTS(stableName))
	Return Not(bRes)
End Sub

Sub TABLE_EXISTS(tblName As String) As Boolean
	Dim tbls As List = BANano.Await(ShowTableNames(sDbName))
	Dim iPos As Int = tbls.IndexOf(tblName)
	If iPos = -1 Then
		Return False
	Else
		Return True
	End If
End Sub


Sub ShowTableNames(Dbase As String) As List
	Dim lst As List = BANano.Await(SELECT_RAW($"SELECT TABLE_NAME FROM information_schema.tables WHERE table_schema = '${Dbase}'"$))
	Dim nl As List
	nl.Initialize
	For Each rec As Map In lst
		Dim sDatabase As String = rec.Get("TABLE_NAME")
		nl.Add(sDatabase)
	Next
	Return nl
End Sub

Sub ShowIndexes(Dbase As String) As List
	Dim query As String = $"SELECT INDEX_NAME AS `idxname`, IF (NON_UNIQUE = 0 AND INDEX_NAME = 'PRIMARY', 1, 0) AS `idxprimary`, IF (NON_UNIQUE = 0 AND INDEX_NAME <> 'PRIMARY', 1, 0) AS `idxunique`, GROUP_CONCAT(COLUMN_NAME ORDER BY SEQ_IN_INDEX) AS `idxcolumns` FROM information_schema.STATISTICS WHERE TABLE_SCHEMA = '${Dbase}' AND TABLE_NAME = '${TableName}' GROUP BY INDEX_NAME, NON_UNIQUE"$
	Dim lst As List = BANano.Await(SELECT_RAW(query))
	Return lst
End Sub

Sub ShowForeignKeys(Dbase As String) As List
	Dim query As String = $"SELECT i.CONSTRAINT_NAME as `fkname`, k.COLUMN_NAME AS `column`, k.REFERENCED_TABLE_NAME AS `reftable`, k.REFERENCED_COLUMN_NAME AS `refcolumn`, c.UPDATE_RULE AS `onupdate`, c.DELETE_RULE AS `ondelete` FROM information_schema.TABLE_CONSTRAINTS AS i JOIN information_schema.KEY_COLUMN_USAGE AS k ON i.CONSTRAINT_NAME = k.CONSTRAINT_NAME JOIN information_schema.REFERENTIAL_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = i.CONSTRAINT_NAME WHERE i.TABLE_SCHEMA = '${Dbase}' AND i.TABLE_NAME = '${TableName}' AND i.CONSTRAINT_TYPE = 'FOREIGN KEY' GROUP BY i.CONSTRAINT_NAME, k.COLUMN_NAME, k.REFERENCED_TABLE_NAME, k.REFERENCED_COLUMN_NAME, c.UPDATE_RULE, c.DELETE_RULE"$
	Dim lst As List = BANano.Await(SELECT_RAW(query))
	Return lst
End Sub

'select distinct where
'<code>
''select distinct where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'dbConnect.SelectDistinctWhere(array("name"), sw, array("="), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in Res
'Next
'</code>
Sub SelectDistinctWhere(tblfields As List, tblWhere As Map, operators As List, orderByList As List) As List
	If Schema.Size = 0 Then
		Log($"SDUIMySQLREST.SelectDistinctWhere: '${TableName}' schema is not set!"$)
	End If
	If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
	If tblfields.Size = 0 Then tblfields.Add("*")
	Dim dtypes As List = GetMapTypes(tblWhere)
	'are we selecting all fields or just some
	Dim fld1 As String = tblfields.Get(0)
	Dim selFIelds As String = ""
	Select Case fld1
	Case "*"
		selFIelds = "*"
	Case Else
		selFIelds = JoinFields(",", tblfields)
	End Select
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT DISTINCT ${selFIelds} FROM ${EscapeField(TableName)} WHERE "$)
	Dim i As Int
	Dim iWhere As Int = tblWhere.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			sb.Append(" AND ")
		End If
		Dim col As String = tblWhere.GetKeyAt(i)
		Dim sval As String = tblWhere.GetValueAt(i)
		Dim dt As String = dtypes.Get(i)
		col = MvField(col, 1, ".")
		Dim oper As String = operators.Get(i)
		sb.Append(EscapeField(col))
		Select Case dt
		Case "s"	
			sb.Append($" ${oper} '${sval}'"$)
		Case "i", "b", "d"
			sb.Append($" ${oper} ${sval}"$)
		End Select
	Next
	If orderByList.IsInitialized And orderByList.Size > 0 Then
		'order by
		Dim stro As String = JoinFields(",", orderByList)
		If stro.Length > 0 Then
			sb.Append(" ORDER BY ").Append(stro)
		End If
	End If
	Dim lst As List = BANano.Await(SELECT_RAW(sb.ToString))
	Return lst
End Sub

'join list to multi value string
private Sub JoinFields(delimiter As String, lst As List) As String
	Dim i As Int
	Dim sb As StringBuilder
	Dim fld As String
	sb.Initialize
	fld = lst.Get(0)
	fld = EscapeField(fld)
	sb.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		fld = EscapeField(fld)
		sb.Append(delimiter).Append(fld)
	Next
	Return sb.ToString
End Sub

private Sub EQOperators(sm As Map) As List  'ignore
	Dim nl As List
	nl.initialize
	For Each k As String In sm.Keys
		nl.Add("=")
	Next
	Return nl
End Sub

'get the list of types
private Sub GetMapTypes(sourceMap As Map) As List
	Dim listOfTypes As List
	listOfTypes.Initialize
	Dim iCnt As Int
	Dim iTot As Int
	iTot = sourceMap.Size - 1
	For iCnt = 0 To iTot
		Dim col As String = sourceMap.GetKeyAt(iCnt)
		Dim colType As String = Schema.GetDefault(col,"STRING")
		Select Case colType
			Case "INTEGER", "INT", "BOOL","BOOLEAN"
				listOfTypes.add("i")
			Case "BLOB"
				listOfTypes.add("b")
			Case "REAL","FLOAT","DOUBLE"
				listOfTypes.add("d")
			Case Else
				listOfTypes.add("s")
		End Select
	Next
	Return listOfTypes
End Sub

'get all data models from mysql
Sub GetDataModels As Map
	If ShowLog Then
		Log($"SDUIMySQLREST.GetDataModels"$)
	End If
	Dim tblNames As List = BANano.Await(ShowTableNames(sDbName))
	Dim models As Map = CreateMap()
	For Each tbl As String In tblNames
		Dim qry As String = $"DESCRIBE `${tbl}`"$
		Dim colDef As List = BANano.Await(SELECT_RAW(qry))
		'
		Dim tblm As Map = CreateMap()
		tblm.Put("name", tbl)
		tblm.Put("pk", "")
		tblm.Put("auto", "")
		'
		Dim xflds As List
		xflds.Initialize 
		'
		For Each fld As Map In colDef
			Dim sField As String = fld.Get("Field")
			Dim sType As String = fld.Get("Type")
			sType = MvField(sType, 1, "(")
			sType = sType.ToLowerCase
			Select Case sType
			Case "tinyint", "smallint", "mediumint", "int", "integer", "bigint"
				sType = "Int"
			Case "bool", "boolean"
				sType = "Bool"
			Case "decimal", "numeric", "float", "double", "real"
				sType = "Double"
			Case "date", "datetime", "timestamp", "time", "year"
				sType = "String"
			Case "char", "varchar", "text", "tinytext"
				sType = "String"
			Case "mediumtext", "longtext", "enum", "set", "json"
				sType = "LongText"
			Case "binary", "varbinary", "blob", "tinyblob", "mediumblob", "longblob"
				sType = "Blob"
			Case Else
				sType = "String"
			End Select
			Dim sNull As String = fld.Get("Null")
			Dim sDefault As String = fld.Get("Default")
			sDefault = CStr(sDefault)
			Dim bNull As Boolean = CBool(sNull)
			Dim sKey As String = fld.Get("Key")
			Dim sExtra As String = fld.Get("Extra")
			sExtra = CStr(sExtra)
			sExtra = sExtra.tolowercase
			Dim bprimary As Boolean = False
			Dim bunique As Boolean = False
			Dim bauto As Boolean = False
			If sKey = "PRI" Then bprimary = True
			If sKey = "UNI" Then bunique = True
			Dim iauto As Int = InStr(sExtra, "auto_increment")
			If iauto >= 0 Then bauto = True
			'
			Dim fldm As Map = CreateMap()
			fldm.Put("name", sField)
			fldm.Put("pk", bprimary)
			fldm.Put("type", sType)
			fldm.Put("default", sDefault)
			fldm.Put("isnull", bNull)
			fldm.Put("unique", bunique)
			xflds.Add(fldm)
			'
			If bprimary Then tblm.put("pk", sField)
			If bauto Then tblm.put("auto", sField)
		Next
		tblm.Put("fields", xflds)
		models.Put(tbl, tblm)
	Next
	Return models
End Sub

'get records from a collection
'<code>
'BANano.Await(pb.SELECT_RAW(""))
'Do While pb.NextRow
'Dim rec As Map = pb.Record
'Dim sid As String = pb.GetString("id")
'Loop
'</code>
Sub SELECT_RAW(query As String) As List
	result.Initialize
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SELECT_RAW"$)
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUIMySQLREST.SELECT_RAW - The ApiKey has not been specified!"$)
			Return result
		End If
	End If
	If ShowLog Then
		Log(query)
	End If
	
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.SetContentTypeApplicationJSON
	fetch.NoCors = NoCORS
	fetch.Redirect = Redirect
	fetch.ReferrerPolicy = ReferrerPolicy
	fetch.Mode = Mode
	ApplyHeaders(fetch, "")
	fetch.NoCache = NoCache
	fetch.SetURL($"/assets/${ApiFile}.php/query"$)
	If UseBaseURL Then
		fetch.SetURL($"/query"$)
	End If
	fetch.AddData("query", query)
	BANano.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		If Response.ContainsKey("records") Then
			result = Response.Get("records")
		End If
	Else
		Log(fetch.ErrorMessage)
	End If
	lastPosition = -1
	RowCount = result.size
	Return result
End Sub



'get records from a collection
'<code>
'BANano.Await(pb.SELECT_ALL)
'Do While pb.NextRow
'Dim rec As Map = pb.Record
'Dim sid As String = pb.GetString("id")
'Loop
'</code>
Sub SELECT_ALL As List
	result.Initialize
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SELECT_ALL"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.SELECT_ALL. Please execute SchemaAdd?? first to define your table schema!"$)
		Return result
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUIMySQLREST.SELECT_ALL - The ApiKey has not been specified!"$)
			Return result
		End If
	End If
	'
	Dim qflds As String = Join(",", flds)
	qflds = RemDelim(qflds, ",")
	
	Dim qsort As String = Join("&", orderByL)
	qsort = RemDelim(qsort, "&")
	'
	Dim qjoin As String = Join("&", joinL)
	qjoin = RemDelim(qjoin, "&")
	
	Dim xcommand As List
	xcommand.Initialize
	If qflds <> "" Then xcommand.add($"include=${qflds}"$)
	If qsort <> "" Then xcommand.Add(qsort)
	If sSize <> "" Then xcommand.Add($"size=${sSize}"$)
	If qjoin <> "" Then xcommand.Add(qjoin)
	'
	Dim scommand As String = Join("&", xcommand)
	scommand = RemDelim(scommand, "&")
	
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.SetContentTypeApplicationJSON
	fetch.NoCors = NoCORS
	fetch.Redirect = Redirect
	fetch.ReferrerPolicy = ReferrerPolicy
	fetch.Mode = Mode 
	ApplyHeaders(fetch, "")
	fetch.NoCache = NoCache
	If scommand = "" Then
		fetch.SetURL($"/assets/${ApiFile}.php/records/${TableName}"$)
		If UseBaseURL Then
			fetch.SetURL($"/records/${TableName}"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.SELECT_ALL.${baseURL}/assets/${ApiFile}.php/records/${TableName}"$)
		End If
	Else
		fetch.SetURL($"/assets/${ApiFile}.php/records/${TableName}?${scommand}"$)
		If UseBaseURL Then
			fetch.SetURL($"/records/${TableName}?${scommand}"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.SELECT_ALL.${baseURL}/assets/${ApiFile}.php/records/${TableName}?${scommand}"$)
		End If
	End If
	BANano.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		If Response.ContainsKey("records") Then
			result = Response.Get("records")
		End If
	Else
		Log(fetch.ErrorMessage)	
	End If
	EnsureFileFields
	For Each row As Map In result
		EnrichFileUrls(row)
		If GetFiles Then BANano.Await(EnrichFileData(row))
	Next
	lastPosition = -1
	RowCount = result.size
	Return result
End Sub


'join list to mv string
private Sub Join(delimiter As String, lst As List) As String
	If lst.Size = 0 Then Return ""
	Dim i As Int
	Dim sbx As StringBuilder
	Dim fld As String
	sbx.Initialize
	fld = lst.Get(0)
	sbx.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		sbx.Append(delimiter).Append(fld)
	Next
	Dim sout As String = sbx.ToString
	sbx.Initialize
	Return sout
End Sub

'record is saved as json string
'returns the record id
'<code>
'pb.PrepareRecord
'pb.SetField("id", 1)
'pb.SetField("username", "user1")
'BANano.Await(pb.CREATE)
'</code>
Sub CREATE As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.CREATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.CREATE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	If UseApiKey Then
	If sApiKey = "" Then
		BANano.Throw($"SDUIMySQLREST.CREATE - The ApiKey has not been specified!"$)
		Return ""
	End If
	End If
	Try
		RemoveField(AutoIncrement)
		Dim output As Object
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.Mode = Mode
		ApplyHeaders(fetch, "")
		fetch.SetURL($"/assets/${ApiFile}.php/records/${TableName}"$)
		If UseBaseURL Then
			fetch.SetURL($"/records/${TableName}"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.CREATE.${baseURL}/assets/${ApiFile}.php/records/${TableName}"$)
			Log(BANano.ToJson(Record))
		End If
		fetch.SetData(Record)
		fetch.NoCache = NoCache
		BANano.Await(fetch.PostWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			output = Response
		Else
			Log(fetch.ErrorMessage)	
		End If
		Return output
	Catch
		Log(LastException.Message)
		Return ""
	End Try
End Sub

'<code>
'dim b As Boolean = BANano.Await(pb.USER_CREATE("user1", "user1"))
'</code>
Sub USER_CREATE(username As String, password As String) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.USER_CREATE"$)
	End If
	ErrorMessage = ""
	Try
		Record.Initialize 
		Record.Put("username", username)
		Record.Put("password", password)
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.SetURL($"/assets/${ApiFile}.php/register"$)
		If UseBaseURL Then
			fetch.SetURL($"/register"$) 
		End If
		fetch.SetData(Record)
		fetch.NoCache = NoCache
		BANano.Await(fetch.PostWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			If Response.ContainsKey("code") Then
				ErrorMessage = Response.Get("message")
				Return False
			Else
				Return True
			End If
		Else
			Log(fetch.ErrorMessage)	
		End If
		Return False
	Catch
		Log(LastException.Message)
		Return False
	End Try
End Sub

'<code>
'dim b As Boolean = BANano.Await(pb.USER_CHANGE_PASSWORD("user1", "user1"))
'</code>
Sub USER_CHANGE_PASSWORD(username As String, password As String, newPassword As String) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.USER_CHANGE_PASSWORD"$)
	End If
	ErrorMessage = ""
	Try
		Record.Initialize 
		Record.Put("username", username)
		Record.Put("password", password)
		Record.Put("newPassword", newPassword)
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.SetURL($"/assets/${ApiFile}.php/password"$)
		If UseBaseURL Then
			fetch.SetURL($"/password"$)
		End If
		fetch.SetData(Record)
		fetch.NoCache = NoCache
		BANano.Await(fetch.PostWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			If Response.ContainsKey("code") Then
				ErrorMessage = Response.Get("message")
				Return False
			Else
				Return True
			End If
		Else
			Log(fetch.ErrorMessage)	
		End If
		Return False
	Catch
		Log(LastException.Message)
		Return False
	End Try
End Sub


'<code>
'dim b As Boolean = BANano.Await(pb.USER_LOGIN("user1", "user1"))
'</code>
Sub USER_LOGIN(username As String, password As String) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.USER_LOGIN"$)
	End If
	ErrorMessage = ""
	Try
		Record.Initialize 
		Record.Put("username", username)
		Record.Put("password", password)
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.SetURL($"/assets/${ApiFile}.php/login"$)
		If UseBaseURL Then
			fetch.SetURL($"/login"$)
		End If
		fetch.SetData(Record)
		fetch.NoCache = NoCache
		BANano.Await(fetch.PostWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			If Response.ContainsKey("code") Then
				ErrorMessage = Response.Get("message")
				Return False
			Else
				Return True
			End If
		Else
			Log(fetch.ErrorMessage)	
		End If
		Return False
	Catch
		Log(LastException.Message)
		Return False
	End Try
End Sub

'<code>
'dim b As Boolean = BANano.Await(pb.USER_LOGOUT)
'</code>
Sub USER_LOGOUT As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.USER_LOGOUT"$)
	End If
	ErrorMessage = ""
	Try
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.SetURL($"/assets/${ApiFile}.php/logout"$)
		If UseBaseURL Then
			fetch.SetURL($"/logout"$)
		End If
		fetch.NoCache = NoCache
		BANano.Await(fetch.PostWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			If Response.ContainsKey("code") Then
				ErrorMessage = Response.Get("message")
				Return False
			Else
				Return True
			End If
		Else
			Log(fetch.ErrorMessage)	
		End If
		Return False
	Catch
		Log(LastException.Message)
		Return False
	End Try
End Sub


'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE("a"))
'</code>
Sub DELETE(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.DELETE(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.DELETE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	If UseApiKey Then
	If sApiKey = "" Then
		BANano.Throw($"SDUIMySQLREST.DELETE - The ApiKey has not been specified!"$)
		Return False
	End If
	End If
	Try
		'Dim output As Object
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.Mode = Mode
		ApplyHeaders(fetch, "")
		fetch.AddHeader("X-HTTP-Method-Override", "DELETE")
		fetch.SetURL($"/assets/${ApiFile}.php/records/${TableName}/${id}"$)
		If UseBaseURL Then
			fetch.SetURL($"/records/${TableName}/${id}"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.DELETE.${baseURL}/assets/${ApiFile}.php/records/${TableName}/${id}"$)
		End If
		'BANano.Await(fetch.DeleteWait)
		BANano.Await(fetch.PostWait)
		If fetch.Success Then
			'Dim Response As Map = fetch.response
			'output = Response
			Return True
		Else
			Log(fetch.ErrorMessage)
			Return False
		End If
	Catch
		Log(LastException.Message)
		Return False
	End Try
End Sub

'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE_MULTIPLE(array("a")))
'</code>
Sub DELETE_MULTIPLE(items As List) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.DELETE_MULTIPLE()"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.DELETE_MULTIPLE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	Try
		For Each delID As String In items
			BANano.Await(DELETE(delID))
		Next
		Return True
	Catch
		Return False
	End Try
End Sub

'record is saved as json string
'returns the record affected
'<code>
'pb.PrepareRecord
'pb.SetField("id", 1)
'pb.SetField("username", "user1")
'BANano.Await(pb.UPDATE)
'</code>
Sub UPDATE As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.UPDATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.UPDATE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	If UseApiKey Then
	If sApiKey = "" Then
		BANano.Throw($"SDUIMySQLREST.UPDATE - The ApiKey has not been specified!"$)
		Return ""
	End If
	End If
	Try
		'update an existing record by primary key
		Dim pkValue As String = Record.GetDefault(PrimaryKey, "")
		If pkValue = "" Then
			If ShowLog Then
				Log($"SDUIMySQLREST.${TableName}.UPDATE - NO PRIMARY KEY"$)
			End If
			Return ""
		End If
		Dim output As Object
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.Mode = Mode
		ApplyHeaders(fetch, "")
		fetch.AddHeader("X-HTTP-Method-Override", "PUT")
		'this is a post
		fetch.SetURL($"/assets/${ApiFile}.php/records/${TableName}/${pkValue}"$)
		If UseBaseURL Then
			fetch.SetURL($"/records/${TableName}/${pkValue}"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.UPDATE.${baseURL}/assets/${ApiFile}.php/records/${TableName}/${pkValue}"$)
			Log(BANano.ToJson(Record))
		End If
		fetch.SetData(Record)
		'BANano.Await(fetch.PutWait)
		BANano.Await(fetch.PostWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			output = Response
			If ShowLog Then
				Log($"SDUIMySQLREST.${TableName}.UPDATE SUCCESS.${output}"$)
			End If
		Else
			Log(fetch.ErrorMessage)
			If ShowLog Then
				Log($"SDUIMySQLREST.${TableName}.UPDATE ERROR.${fetch.ErrorMessage}"$)
			End If
		End If
		If output <> Null Then AffectedRows = CInt(output)
		LastAffectedID = pkValue
		Return pkValue
	Catch
		Log(LastException.Message)
		Return ""
	End Try
End Sub

Sub UPDATE_PER_FIELD As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.UPDATE_PER_FIELD"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.UPDATE_PER_FIELD. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUIMySQLREST.UPDATE_PER_FIELD - The ApiKey has not been specified!"$)
			Return ""
		End If
	End If
	Dim currentRecord As Map = BANano.DeepClone(Record)
	Dim pkValue As String = currentRecord.Get(PrimaryKey)
	For Each k As String In currentRecord.Keys
		If k = PrimaryKey Then Continue
		'
		Dim v As Object = currentRecord.Get(k)
		Dim nrec As Map = CreateMap()
		nrec.Put(k, v)
		'
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.Mode = Mode
		ApplyHeaders(fetch, "")
		fetch.AddHeader("X-HTTP-Method-Override", "PUT")
		'this is a post
		fetch.SetURL($"/assets/${ApiFile}.php/records/${TableName}/${pkValue}"$)
		If UseBaseURL Then
			fetch.SetURL($"/records/${TableName}/${pkValue}"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.UPDATE.${baseURL}/assets/${ApiFile}.php/records/${TableName}/${pkValue}"$)
			Log(BANano.ToJson(Record))
		End If
		fetch.SetData(nrec)
		'BANano.Await(fetch.PutWait)
		BANano.Await(fetch.PostWait)
	Next
	Return pkValue
End Sub

'ensure the query only return the id only
Sub GetAffectedID As SDUIMySQLREST
	flds.Initialize
	flds.Add("id")
	Return Me
End Sub

'get a value using key
'<code>
'Dim res As Map = BANano.Await(pb.READ(2))
'</code>
Sub READ(id As String) As Map
	Dim m As Map = CreateMap()
	Record = m
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.READ(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.READ. Please execute SchemaAdd?? first to define your table schema!"$)
		Return m
	End If
	If UseApiKey Then
	If sApiKey = "" Then
		BANano.Throw($"SDUIMySQLREST.READ - The ApiKey has not been specified!"$)
		Return m
	End If
	End If
	Dim m As Map = CreateMap()
	Try
		'this is a get
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		fetch.ShowLog = ShowLog
		fetch.SetContentTypeApplicationJSON
		fetch.NoCors = NoCORS
		fetch.Redirect = Redirect
		fetch.ReferrerPolicy = ReferrerPolicy
		fetch.Mode = Mode
		ApplyHeaders(fetch, "")
		fetch.SetURL($"/assets/${ApiFile}.php/records/${TableName}/${id}"$)
		If UseBaseURL Then
			fetch.SetURL($"/records/${TableName}/${id}"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.READ.${baseURL}/assets/${ApiFile}.php/records/${TableName}/${id}"$)
		End If
		fetch.NoCache = NoCache
		BANano.Await(fetch.GetWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			Record = Response
			EnsureFileFields
			EnrichFileUrls(Record)
			If GetFiles Then BANano.Await(EnrichFileData(Record))
		Else
			Log(fetch.ErrorMessage)	
		End If
		Return Record
	Catch
		Log(LastException.Message)
		Record = m
		Return m
	End Try
End Sub

'<code>
'Dim result As Map = BANano.Await(pbComponents.READ_BY("name", "Anele"))
'</code>
Sub READ_BY(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.READ_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	Dim res As List = BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	If res.size = 0 Then
		Return m
	Else
		m = res.Get(0)
		Record = m
		Return m
	End If
End Sub

Sub READ_BY_STRING(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.READ_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	Dim res As List = BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	If res.size = 0 Then
		Return m
	Else
		m = res.Get(0)
		Record = m
		Return m
	End If
End Sub

Sub READ_ID_WHERE(whereIs As Map) As String
	If Schema.Size = 0 Then
		Log($"SDUIMySQLREST.READ_ID_WHERE: '${TableName}' schema is not set!"$)
	End If
	CLEAR_WHERE
	For Each k As String In whereIs.keys
		Dim v As String = whereIs.Get(k)
		ADD_WHERE(k, "=", v)
	Next
	ADD_FIELD("id")
	Dim res As List = BANano.Await(SELECT_WHERE)
	If res.size = 0 Then
		Return ""
	Else
		Dim rec As Map = res.Get(0)
		Dim sid As String = rec.GetDefault("id", "")
		Return sid
	End If
End Sub


Sub READ_ID_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.READ_ID_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(PrimaryKey)
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim res As List = BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	If res.size = 0 Then
		Return ""
	Else
		m = res.Get(0)
		Dim sid As String = m.GetDefault(PrimaryKey, "")
		Return sid
	End If
End Sub

'Tests whether a key is available in the store.
'<code>
'Dim res as boolean = BANano.Await(pb.ContainsKey(2))
'</code>
Sub ContainsKey(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ContainsKey(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.ContainsKey. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	CLEAR_WHERE
	ADD_FIELD(PrimaryKey)
	ADD_WHERE(PrimaryKey, "=", id)
	Dim res As List = BANano.Await(SELECT_WHERE)
	If res.Size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'<code>
'Dim res as boolean = BANano.Await(pb.ContainsField("name", "Anele"))
'</code>
Sub ContainsField(fldName As String, id As String) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ContainsField(${fldName},${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.ContainsField. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", id)
	Dim res As List = BANano.Await(SELECT_WHERE)
	If res.Size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'Returns a list with all the keys.
'<code>
'Dim res As List = BANano.Await(pb.ListKeys)
'</code>
Public Sub ListKeys As List
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ListKeys"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.ListKeys. Please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	CLEAR_WHERE
	ADD_FIELD(PrimaryKey)
	result = BANano.Await(SELECT_WHERE)
	Dim res As List
	res.Initialize
	For Each rec As Map In result
		Dim k As String = rec.GetDefault(PrimaryKey, "")
		k = CStr(k)
		res.Add(k)
	Next
	Return res
End Sub

'<code>
'BANano.Await(pb.DELETE_ALL)
'</code>
Sub DELETE_ALL
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.DELETE_ALL"$)
	End If
	Dim keys As List = BANano.Await(ListKeys)
	If keys.size = 0 Then Return
	For Each k As String In keys
		BANano.Await(DELETE(k))
	Next
End Sub

'get keyvalues for combos etc
'<code>
'Dim mExpenseCategories As Map = banano.Await(pb.GetKeyValues(True, "id", "name"))
'</code>
Sub GetKeyValues(bHasNothing As Boolean, k As String, v As String) As Map
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.GetKeyValues(${bHasNothing},${k},${v})"$)
	End If
	Dim mx As Map = CreateMap()
	If bHasNothing Then
		mx.Put("", "-- Nothing Selected --")
	End If
	CLEAR_WHERE
	ADD_FIELD(k)
	ADD_FIELD(v)
	ADD_ORDER_BY(v)
	result = BANano.Await(SELECT_WHERE)
	For Each row As Map In result
		Dim f1 As String = row.get(k)
		Dim f2 As String = row.get(v)
		mx.Put(f1, f2)
	Next
	Return mx
End Sub

'get keyvalues for combos etc
'<code>
'Dim mExpenseCategories As Map = banano.Await(pbExpenseCategories.GetKeyValuesFromList(lst, True, "id", "name"))
'</code>
Sub GetKeyValuesFromList(source As List, bHasNothing As Boolean, k As String, v As String) As Map
	Dim mx As Map = CreateMap()
	If bHasNothing Then
		mx.Put("", "-- Nothing Selected --")
	End If
	For Each row As Map In source
		Dim f1 As String = row.get(k)
		Dim f2 As String = row.get(v)
		mx.Put(f1, f2)
	Next
	Return mx
End Sub

'record is saved as json string
'returns the record id
'<code>
'BANano.Await(pb.CREATE_OR_UPDATE)
'</code>
Sub CREATE_OR_UPDATE As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.CREATE_OR_UPDATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.CREATE_OR_UPDATE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	Try
		'does the record exist
		Dim Key As String = Record.GetDefault(PrimaryKey, "")
		DisplayValue = Record.GetDEfault(DisplayField, "")
		'this will be blank if we are using PB own keys
		'if we use our keys, those need to be 15 in length
		Dim bThere As Boolean = False
		If Key <> "" Then
			bThere = BANano.Await(ContainsKey(Key))
			If ShowLog Then
				Log($"SDUIMySQLREST.CREATE_OR_UPDATE:${TableName}.ContainsKey(id,${Key},${bThere})"$)
			End If
		End If
		'does not exit
		If bThere = False Then
			Dim ar As String = BANano.Await(CREATE)
			Return ar
		Else
			Dim ar As String = BANano.Await(UPDATE)
			Return ar
		End If
	Catch
		Return ""
	End Try			' ignore
End Sub

'record is saved as json string
'returns the record id
'<code>
'BANano.Await(pb.CREATE_OR_UPDATE_BY_FIELD("email"))
'</code>
Sub CREATE_OR_UPDATE_BY_FIELD(fldName As String) As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.CREATE_OR_UPDATE_BY_FIELD(${fldName})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.CREATE_OR_UPDATE_BY_FIELD. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	Try
		'does the record exist
		Dim sKey As String = Record.GetDefault(fldName, "")
		DisplayValue = Record.GetDEfault(DisplayField, "")
		'this will be blank if we are using PB own keys
		'if we use our keys, those need to be 15 in length
		Dim bThere As Boolean = False
		Dim id As String = ""
		If sKey <> "" Then
			id = BANano.Await(READ_ID_BY_STRING(fldName, sKey))
			If id <> "" Then bThere = True
		End If
		'does not exit
		If bThere = False Then
			Dim ar As String = BANano.Await(CREATE)
			Return ar
		Else
			'execute an update
			Record.Put(PrimaryKey, id)
			Dim ar As String = BANano.Await(UPDATE)
			Return ar
		End If
	Catch
		Return ""
	End Try			' ignore
End Sub

'record is saved as json string
'returns the record id
'<code>
'BANano.Await(pb.CREATE_IF_NOT_EXISTING_BY_FIELD("email"))
'</code>
Sub CREATE_IF_NOT_EXISTING_BY_FIELD(fldName As String) As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.CREATE_IF_NOT_EXISTING_BY_FIELD(${fldName})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.CREATE_IF_NOT_EXISTING_BY_FIELD. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	Try
		'does the record exist
		Dim sKey As String = Record.GetDefault(fldName, "")
		DisplayValue = Record.GetDEfault(DisplayField, "")
		'this will be blank if we are using PB own keys
		'if we use our keys, those need to be 15 in length
		Dim bThere As Boolean = False
		Dim id As String = ""
		If sKey <> "" Then
			id = BANano.Await(READ_ID_BY_STRING(fldName, sKey))
			If id <> "" Then bThere = True
		End If
		'does not exit
		If bThere = False Then
			Dim ar As String = BANano.Await(CREATE)
			Return ar
		Else
			Return id	
		End If
	Catch
		Return ""
	End Try			' ignore
End Sub

Sub READ_ID_BY(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.READ_ID_BY(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	Return sid
End Sub

Sub GET_ID_BY_FIELD(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.GET_ID_BY_FIELD(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	Return sid
End Sub

Sub UPDATE_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.UPDATE_BY_STRING(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	If sid = "" Then Return ""
	Record.Put(PrimaryKey, sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
End Sub

Sub UPDATE_BY(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.UPDATE_BY(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	If sid = "" Then Return ""
	Record.Put(PrimaryKey, sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
End Sub

'to delete the file set the fldValue = null
Sub SetField(fldName As String, fldValue As Object) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetField(${fldName}, ${fldValue})"$)
	End If
	If Schema.ContainsKey(fldName) Then
	Dim dt As String = Schema.Get(fldName)
	Select Case dt
		Case DB_BOOL
			fldValue = CBool(fldValue)
		Case DB_INT
			fldValue = CInt(fldValue)
		Case DB_FILE
		Case DB_REAL
			fldValue = CDbl(fldValue)
		Case DB_BLOB
		Case DB_FLOAT
			fldValue = CDbl(fldValue)
		Case DB_INTEGER
			fldValue = CInt(fldValue)
		Case DB_TEXT, DB_LONGTEXT
			fldValue = CStr(fldValue)
		Case DB_DOUBLE
			fldValue = CDbl(fldValue)
	End Select
	End If
	Record.Put(fldName, fldValue)
	Return Me
End Sub

Sub RemoveField(fldName As String)
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.RemoveField(${fldName})"$)
	End If
	If fldName = "" Then Return
	If Record.ContainsKey(fldName) Then
		Record.Remove(fldName)
	End If
End Sub

'double
private Sub CDbl(o As String) As Double
	o = Val(o)
	Dim out As Double = NumberFormat2Fix(o,0,2,2,False)
	Dim nvalue As String = CStr(out)
	nvalue = nvalue.replace(",", ".")
	nvalue = Val(nvalue)
	Dim nout As Double = BANano.parseFloat(nvalue)
	Return nout
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
public Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return BANano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
End Sub

'convert to int
private Sub CInt(o As Object) As Int
	o = Val(o)
	Return BANano.parseInt(o)
End Sub

'check if value isNaN
private Sub isNaN(obj As Object) As Boolean
	Dim res As Boolean = BANano.Window.RunMethod("isNaN", Array(obj)).Result
	Return res
End Sub


private Sub Val(value As String) As String
	value = CStr(value)
	value = value.Trim
	If value = "" Then value = "0"
	Try
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("0123456789.-", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub

private Sub InStr(sText As String, sFind As String) As Int
	Return sText.tolowercase.IndexOf(sFind.tolowercase)
End Sub

private Sub CBool(v As Object) As Boolean
	If BANano.IsNull(v) Or BANano.IsUndefined(v) Then
		v = False
	End If
	If GetType(v) = "string" Or GetType(v) = "object" Then
		Dim s As String = v & ""
		s = s.tolowercase
		s = s.trim
		If s = "" Then Return False
		If s = "false" Then Return False
		If S = "true" Then Return True
		If s = "1" Then Return True
		If s = "y" Then Return True
		If s = "0" Then Return False
		If s = "n" Then Return False
		If s = "no" Then Return False
		If s = "yes" Then Return True
		If s = "on" Then Return True
		If s = "off" Then Return False
	End If
	Return v
End Sub

Sub FirstRecord As Map
	Dim rec As Map = result.Get(0)
	Return rec
End Sub

Sub RecordFromMap(sm As Map)
	Record.Initialize
	For Each k As String In sm.Keys
		Dim v As Object = sm.Get(k)
		Record.Put(k, v)
	Next
End Sub

'clear where clause
Sub CLEAR_WHERE As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.CLEAR_WHERE"$)
	End If
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	combineL.Initialize
	joinL.Initialize
	expandL.Initialize
	headers.Initialize
	grpBy.Initialize
	fileFields.Initialize
	skipTotal = True
	CountRecords = False
	Return Me
End Sub

Sub Reset As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.Reset"$)
	End If
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	combineL.Initialize
	RowCount = 0
	lastPosition = -1
	Record.Initialize
	result.Initialize
	Tag = Null
	Schema.Initialize
	idxNames.Initialize
	uniqueIdxNames.Initialize
	DisplayField = ""
	Singular = ""
	Plural = ""
	DisplayValue = ""
	IsAuthenticated = False
	PrimaryKey = "id"
	AutoIncrement = ""
	SchemaAddText1("id")
	joinL.Initialize
	expandL.Initialize
	headers.Initialize
	grpBy.Initialize
	fileFields.Initialize
	mFormFields.Initialize
	UserProfile.Initialize
	UserProfile.size = 0
	UserRecord.Initialize
	UserToken = ""
	UserModel.Initialize
	UserValid = False
	BearerToken = ""
	mBatch.Initialize
	mBatchActive = False
	sSize = ""
	LowerCaseFields = True
	AffectedRows = 0
	LastAffectedID = ""
	skipTotal = True
	CountRecords = False
	Return Me
End Sub

Sub ADD_FIELD(fld As String) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ADD_FIELD(${fld})"$)
	End If
	flds.Add(fld)
	Return Me
End Sub

'join on table
Sub ADD_JOIN(fld As String) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ADD_JOIN(${fld})"$)
	End If
	joinL.Add($"join=${fld}"$)
	Return Me
End Sub

Sub ADD_FIELDS(fields As List) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ADD_FIELDS(${BANano.ToJson(fields)})"$)
	End If
	For Each fld As String In fields
		ADD_FIELD(fld)
	Next
	Return Me
End Sub

'add a where clause for your select where
'use operators pb.operator
'cs - contains
'sw - starts with
'ew - ends with
Sub ADD_WHERE(fld As String, operator As String, value As Object) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ADD_WHERE(${fld},${operator},${value})"$)
	End If
	Select Case operator
	Case ">"
		operator = "gt"
	Case ">="
		operator = "ge"
	Case "<"
		operator = "lt"
	Case "<="	
		operator = "le"
	Case "="
		operator = "eq"
	Case "<>"
		operator = "neq"
	Case "like"
		operator = "cs"
	Case "between"
		operator = "bt"
	Case "in"
		operator = "in"
	End Select
	whereField.Put(fld, value)
	ops.Add(operator)
	combineL.Add("")
	Return Me
End Sub

Sub ADD_WHERE_STRING(fld As String, operator As String, value As Object) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ADD_WHERE_STRING(${fld},${operator},${value})"$)
	End If
	ADD_WHERE(fld, operator, value)
	Return Me
End Sub

'change the selection at position from AND to OR
Sub WHERE_OR(pos As Int) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.WHERE_OR(${pos})"$)
	End If
	combineL.Set(pos, "2")
	Return Me
End Sub

'change the selection at position to AND
Sub WHERE_AND(pos As Int) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.WHERE_AND(${pos})"$)
	End If
	combineL.Set(pos, "")
	Return Me
End Sub

'add a sort field
Sub ADD_ORDER_BY(fld As String) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ADD_ORDER_BY(${fld})"$)
	End If
	orderByL.Add($"order=${fld}"$)
	Return Me
End Sub

Sub ADD_ORDER_BY_DESC(fld As String) As SDUIMySQLREST
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ADD_ORDER_BY_DESC(${fld})"$)
	End If
	orderByL.Add($"order=${fld},desc"$)
	Return Me
End Sub

'<code>
'Do while rs.NextRow
'Loop
'</code>
Sub NextRow As Boolean
	lastPosition = lastPosition + 1
	Dim realSize As Int = RowCount - 1
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.NextRow(${lastPosition}/${realSize})"$)
	End If
	If lastPosition > realSize Then
		Return False
	Else
		setPosition(lastPosition)
		Return True
	End If
End Sub

Sub SetRecord(rec As Map)
	Record.Initialize
	If MatchSchema Then
		'only process schema fields
		For Each k As String In rec.Keys
			Dim fldPos As Boolean = Schema.ContainsKey(k)
			If fldPos = False Then rec.Remove(k)
		Next
	End If
	For Each k As String In rec.Keys
		Dim v As Object = rec.GetDefault(k, "")
		Dim dt As String = Schema.Get(k)
		Select Case dt
			Case DB_BOOL
				v = CBool(v)
			Case DB_INT
				v = CInt(v)
			Case DB_FILE
			Case DB_REAL
				v = CDbl(v)
			Case DB_BLOB
			Case DB_FLOAT
				v = CDbl(v)
			Case DB_INTEGER
				v = CInt(v)
			Case DB_TEXT, DB_LONGTEXT
				v = CStr(v)
			Case DB_DOUBLE
				v = CDbl(v)
		End Select
		Record.Put(k, v)
	Next
	DisplayValue = Record.GetDEfault(DisplayField, "")
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetRecord(${BANano.ToJson(Record)})"$)
	End If
End Sub


Sub DELETE_BY(fldName As String, fldValue As String) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}DELETE_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", fldValue)
	Return BANano.Await(deleteWhere(PrimaryKey, whereField, ops))
End Sub

'<code>
'BANano.Await(pb.DELETE_BY_STRING("a"))
'</code>
Sub DELETE_BY_STRING(fldName As String, fldValue As String) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.DELETE_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", fldValue)
	Return BANano.Await(deleteWhere(PrimaryKey, whereField, ops))
End Sub

Sub DELETE_WHERE
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.DELETE_WHERE"$)
	End If
	BANano.Await(deleteWhere(PrimaryKey, whereField, ops))
End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.ExistsByString("name", "xxx"))
'</code>
Sub ExistsByString(fldName As String, fldValue As Object) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.ExistsByString(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim res As List = BANano.Await(SELECT_WHERE)
	If res.size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub



'<code>
'Dim result As Boolean = BANano.Await(pbComponents.Exists("id", 1))
'</code>
Sub Exists(fldName As String, fldValue As Object) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.Exists(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", fldValue)
	Dim res As List = BANano.Await(SELECT_WHERE)
	If res.size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.Exists("id", 1))
'</code>
Sub ExistsWhere(where As Map) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${mEvent}.ExistsWhere(${BANano.ToJson(where)})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(PrimaryKey)
	For Each k As String In where.Keys
		Dim v As String = where.Get(k)
		ADD_WHERE(k, "=", v)
	Next
	Dim res As List = BANano.Await(SELECT_WHERE)
	If res.size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'<code>
'pbComponents.CLEAR_WHERE
'pbComponents.ADD_WHERE_STRING("attractive", "=", "true")
'pbComponents.ADD_ORDER_BY("attrname")
'Dim result As List = BANano.Await(pbComponents.SELECT_WHERE)
'For Each record As Map In result
'Dim sid As String = record.Get("id")
'Next
'</code>
Sub SELECT_WHERE As List
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SELECT_WHERE"$)
	End If
	Dim res As List = BANano.Await(findWhereOrderBy(whereField, ops, orderByL))
	Return res
End Sub

'<code>
'pbComponents.CLEAR_WHERE
'pbComponents.ADD_WHERE_STRING("attractive", "=", "true")
'pbComponents.ADD_ORDER_BY("attrname")
'BANano.Await(pbComponents.SELECT_WHERE1)
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_WHERE1 As List
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SELECT_WHERE1"$)
	End If
	result = BANano.Await(findWhereOrderBy(whereField, ops, orderByL))
	RowCount = result.Size
	lastPosition = -1
	Return result
End Sub

'get own unique key with 15 chars
Sub NextID As String
	Dim ni As String = guidAlphaApp(15)
	Return ni
End Sub


private Sub guidAlphaApp(glen As Int) As String
	glen = BANano.parseInt(glen) - 1
	Dim s As String = BANano.RunJavascriptMethod("generateUniqueId", Array(glen))
	s = s.ToLowerCase
	Return s
End Sub

'prepare a new record
Sub PrepareRecord
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.PrepareRecord"$)
	End If
	Record.Initialize
	CLEAR_WHERE
End Sub

'set the position of the current record
Sub setPosition(pos As Int)
	If result.Size > pos Then
		Record = result.Get(pos)
		lastPosition = pos
	Else
		lastPosition = -1
		Record.Initialize
	End If
End Sub

Sub getPosition As Int
	Return lastPosition
End Sub

'get an integer from the current record
Sub GetInt(fld As String) As Int
	If LowerCaseFields Then fld = fld.tolowercase
	If BANano.IsUndefined(Record) Then Return 0
	If Record.ContainsKey(fld) Then
		Dim obj As Int = Record.GetDefault(fld, 0)
		obj = CInt(obj)
		Return obj
	Else
		Return 0
	End If
End Sub

'get a long from the current record
Sub GetLong(fld As String) As Long
	Return GetInt(fld)
End Sub

'get a string from the current record
Sub GetString(fld As String) As String
	If LowerCaseFields Then fld = fld.tolowercase
	If BANano.IsUndefined(Record) Then Return ""
	If Record.ContainsKey(fld) Then
		Dim obj As String = Record.GetDefault(fld, "")
		obj = CStr(obj)
		Return obj
	Else
		Return ""
	End If
End Sub

'returns a placeholder if there is no image
Sub GetImage(fld As String) As String
	Dim simage As String = GetString(fld)
	If simage = "" Then Return "./assets/placeholderimg.jpg"
	Return simage
End Sub

'get a boolean from the current record
Sub GetBoolean(fld As String) As Boolean 
	If LowerCaseFields Then fld = fld.tolowercase
	If BANano.IsUndefined(Record) Then Return False
	If Record.ContainsKey(fld) Then
		Dim obj As Boolean = Record.GetDefault(fld, False)
		obj = CBool(obj)
		Return obj
	Else
		Return False
	End If
End Sub

'get a double from the current record
Sub GetDouble(fld As String) As Double
	If LowerCaseFields Then fld = fld.tolowercase
	If Record.ContainsKey(fld) Then
		Dim obj As Double = Record.GetDefault(fld, 0)
		obj = CDbl(obj)
		Return obj
	Else
		Return 0
	End If
End Sub

'get record at position
Sub GetRecord(pos As Int) As Map
	Dim rec As Map = result.Get(pos)
	Return rec
End Sub

'moveStart
'<code>
'rs.MoveStart
'Do while rs.NextRow
'Loop
'</code>
Sub MoveStart
	lastPosition = -1
End Sub


'movefirst
'<code>
'rs.MoveFirst
'Do while rs.NextRow
'Loop
'</code>
Sub MoveFirst
	setPosition(0)
End Sub

'movelast
'<code>
'rs.MoveLast
'Do while rs.NextRow
'Loop
'</code>
Sub MoveLast
	setPosition(RowCount - 1)
End Sub

'moveprevious
Sub MovePrevious
	lastPosition = lastPosition - 1
	If lastPosition < 0 Then
		lastPosition = 0
	End If
	setPosition(lastPosition)
End Sub

'movenext
Sub MoveNext
	lastPosition = lastPosition + 1
	If lastPosition > RowCount Then
		lastPosition = RowCount - 1
	End If
	setPosition(lastPosition)
End Sub

'Execute a delete clause on the records
'<code>
'BANano.Await(pb.deleteWhere("id", m, array("=")))
'</code>
Sub deleteWhere(priKey As String, whereMap As Map, whereOps As List) As Boolean
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.deleteWhere(${priKey},${BANano.ToJson(whereMap)},${whereOps})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.deleteWhere. Please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	'get all the records
	Dim recs As List = BANano.Await(findWhereOrderBy(whereMap, whereOps,Null))
	For Each rec As Map In recs
		Dim pvalue As String = rec.Get(priKey)
		BANano.Await(DELETE(pvalue))
	Next
	Return True
End Sub

'Execute a where clause on the records
'The result is a list with the values.
'<code>
'Dim WhereRecords As List = BANano.Await(pb.findWhereOR(m, array("="))
'</code>
Sub findWhere(whereMap As Map, whereOps As List) As List
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.findWhere(${BANano.ToJson(whereMap)},${whereOps})"$)
	End If
	Dim res As List = BANano.Await(findWhereOrderBy(whereMap, whereOps, Null))
	Return res
End Sub

'Execute a where clause on the records
'The result is a list with the values.
'<code>
'Dim WhereRecords As List = BANano.Await(pb.findWhereOrderBy(m, array("="), orderBy)
'</code>
Sub findWhereOrderBy(whereMap As Map, whereOps As List, orderByList As List) As List
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.findWhereOrderBy(${BANano.ToJson(whereMap)},${whereOps},${orderByList})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.findWhereOrderBy. Please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	If UseApiKey Then
	If sApiKey = "" Then
		BANano.Throw($"SDUIMySQLREST.findWhereOrderBy - The ApiKey has not been specified!"$)
		Return Null
	End If
	End If
	'we build the filter
	Dim sb As StringBuilder
	sb.Initialize
	Dim i As Int
	Dim iWhere As Int = whereMap.Size - 1
	For i = 0 To iWhere
		Dim col As String = whereMap.GetKeyAt(i)
		col = MvField(col, 1,".")
		Dim xVal As String = whereMap.GetValueAt(i)
		Dim opr As String = whereOps.Get(i)
		'Dim com As String = combineL.Get(i)
		'
		sb.Append($"filter="$).Append(col).Append(",")
		sb.Append(opr).Append(",").Append(xVal).Append("&")
	Next
	'
	Dim qfilter As String = sb.tostring
	Dim afilter As String = RemDelim(qfilter, "&")
	qfilter = afilter.Trim
	'
	Dim qsort As String = ""
	If BANano.IsNull(orderByList) = False Then
		qsort = Join("&", orderByList)
		qsort = RemDelim(qsort, "&")
	End If
	'
	Dim qflds As String = Join(",", flds)
	qflds = RemDelim(qflds, ",")
	'
	Dim qjoin As String = Join("&", joinL)
	qjoin = RemDelim(qjoin, "&")
	'
	Dim xcommand As List
	xcommand.Initialize
	If qflds <> "" Then xcommand.add($"include=${qflds}"$)
	If qfilter <> "" Then xcommand.add(qfilter)
	If qsort <> "" Then xcommand.Add(qsort)
	If sSize <> "" Then xcommand.Add($"size=${sSize}"$)
	If qjoin <> "" Then xcommand.Add(qjoin)
	'
	Dim scommand As String = Join("&", xcommand)
	scommand = RemDelim(scommand, "&")
	scommand = scommand.trim

	Dim nresult As List
	nresult.Initialize
	' 
	'this is a get
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.SetContentTypeApplicationJSON
	fetch.NoCors = NoCORS
	fetch.Redirect = Redirect
	fetch.ReferrerPolicy = ReferrerPolicy
	fetch.Mode = Mode
	ApplyHeaders(fetch, "")
	If scommand = "" Then
		fetch.SetURL($"/assets/${ApiFile}.php/records/${TableName}"$)
		If UseBaseURL Then
			fetch.SetURL($"/records/${TableName}"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.findWhereOrderBy.${baseURL}/assets/${ApiFile}.php/records/${TableName}"$)
		End If
	Else
		fetch.SetURL($"/assets/${ApiFile}.php/records/${TableName}?${scommand}"$)
		If UseBaseURL Then
			fetch.SetURL($"/records/${TableName}?${scommand}"$)
		End If
		If ShowLog Then
			Log($"SDUIMySQLREST.findWhereOrderBy.${baseURL}/assets/${ApiFile}.php/records/${TableName}?${scommand}"$)
		End If
	End If
	fetch.NoCache = NoCache
	BANano.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		If Response.ContainsKey("records") Then
			nresult = Response.Get("records")
		End If
	Else
		Log(fetch.ErrorMessage)	
	End If
	EnsureFileFields
	For Each row As Map In nresult
		EnrichFileUrls(row)
		If GetFiles Then BANano.Await(EnrichFileData(row))
	Next
	Return nresult
End Sub



private Sub RemDelim(sValue As String, Delim As String) As String
	Dim sw As Boolean = sValue.EndsWith(Delim)
	If sw Then
		Dim lDelim As Int = Delim.Length
		Dim nValue As String = sValue
		sw = nValue.EndsWith(Delim)
		If sw Then
			nValue = nValue.SubString2(0, nValue.Length-lDelim)
		End If
		Return nValue
	Else
		Return sValue
	End If
End Sub

Sub SetRecordAsIs(rec As Map)
	Record.Initialize 
	'only process schema fields
	For Each k As String In rec.Keys
		Dim v As Object = rec.get(k)
		Record.put(k, v)
	Next
	DisplayValue = Record.GetDEfault(DisplayField, "")
	If ShowLog Then
		Log($"SDUIMySQLREST.${TableName}.SetRecordAsIs(${BANano.ToJson(Record)})"$)
	End If
End Sub

Sub ADD_ORDER_BY_UPDATED_AT As SDUIMySQLREST
	ADD_ORDER_BY("updated")
	Return Me
End Sub

Sub ADD_ORDER_BY_CREATED_AT As SDUIMySQLREST
	ADD_ORDER_BY("created")
	Return Me
End Sub


'mvfield sub
private Sub MvField(sValue As String, iPosition As Int, Delimiter As String) As String
	If sValue.Length = 0 Then Return ""
	Dim xPos As Int = sValue.IndexOf(Delimiter)
	If xPos = -1 Then Return sValue
	Dim mValues As List = StrParse(Delimiter,sValue)
	Dim tValues As Int
	tValues = mValues.size -1
	Select Case iPosition
		Case -1
			Return mValues.get(tValues)
		Case -2
			Return mValues.get(tValues - 1)
		Case -3
			Dim sb As StringBuilder
			sb.Initialize
			Dim startcnt As Int
			sb.Append(mValues.Get(1))
			For startcnt = 2 To tValues
				sb.Append(Delimiter)
				sb.Append(mValues.get(startcnt))
			Next
			Dim sout As String = sb.ToString
			sb.Initialize
			Return sout
		Case Else
			iPosition = iPosition - 1
			If iPosition <= -1 Then
				Return mValues.get(tValues)
			End If
			If iPosition > tValues Then
				Return ""
			End If
			Return mValues.get(iPosition)
	End Select
End Sub

'parse a string
private Sub StrParse(delim As String, inputString As String) As List
	Dim nl As List
	nl.Initialize
	Try
		inputString = CStr(inputString)
		If BANano.IsNull(inputString) Or BANano.IsUndefined(inputString) Then inputString = ""
		If inputString = "" Then Return nl
		If inputString.IndexOf(delim) = -1 Then
			nl.Add(inputString)
		Else
			nl = BANano.Split(delim,inputString)
		End If
		Return nl
	Catch
		'Log(LastException)
		Return nl
	End Try
End Sub


Sub COUNT_ALL As Int
	BANano.Await(SELECT_RAW($"select count(*) as records from ${TableName}"$))
	Dim rec As Int = GetRecordsCount
	Return rec
End Sub

'return the value of the first "records" field
Sub GetRecordsCount As Int
	If RowCount > 0 Then
		MoveFirst
		Dim irecords As Int = GetInt("records")
		Return irecords
	Else
		Return 0
	End If
End Sub

private Sub GetMapType(k As String) As String
	If Schema.ContainsKey(k) Then
		Dim colType As String = Schema.GetDefault(k, "STRING")
		Select Case colType
			Case "INTEGER", "INT", "BOOL","BOOLEAN"
				Return "i"
			Case "BLOB"
				Return "b"
			Case "REAL","FLOAT","DOUBLE"
				Return "d"
			Case Else
				Return "s"
		End Select
	Else
		Return "s"
	End If
End Sub

'get map values
private Sub GetMapValues(sourceMap As Map) As List
	Dim listOfValues As List
	listOfValues.Initialize
	Dim iCnt As Int
	Dim iTot As Int
	iTot = sourceMap.Size - 1
	For iCnt = 0 To iTot
		'get the value
		Dim key As String = sourceMap.getkeyat(iCnt)
		Dim value As String = sourceMap.GetValueAt(iCnt)
		value = CStr(value)
		value = value.trim
		'get the type
		Dim vtype As String = GetMapType(key)
		Select Case vtype
			Case "i"
				'integer
				If value = "" Then value = "0"
				value = BANano.parseInt(value)
			Case "d"
				'double
				If value = "" Then value = "0"
				value = BANano.parsefloat(value)
			Case "s", "b"
				'string
		End Select
		listOfValues.Add(value)
	Next
	Return listOfValues
End Sub

Sub SelectDistinct(tblfields As List, orderByList As List) As List
	'are we selecting all fields or just some
	If tblfields.Size = 0 Then tblfields.Add("*")
	Dim fld1 As String = tblfields.Get(0)
	Dim selFIelds As String = ""
	Select Case fld1
	Case "*"
		selFIelds = "*"
	Case Else
		selFIelds = JoinFields(",", tblfields)
	End Select
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT DISTINCT ${selFIelds} FROM ${EscapeField(TableName)}"$)
	If orderByList.IsInitialized And orderByList.Size > 0 Then
		'order by
		Dim stro As String = JoinFields(",", orderByList)
		If stro.Length > 0 Then
			sb.Append(" ORDER BY ").Append(stro)
		End If
	End If
	Dim lst As List = BANano.Await(SELECT_RAW(sb.ToString))
	Return lst
End Sub

' ===========================================================================
' SDUIPocketBase compatibility surface (Phase 1)
' ===========================================================================

' Adds a header to every subsequent request in this helper set.
Sub AddHeader(prop As String, value As String)
	headers.Put(prop, value)
End Sub

' Clears helper headers.
Sub ClearHeaders
	headers.Initialize
End Sub

' Adds a relation field to the schema.
Sub SchemaAddRelation(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		SchemaAddRelation1(b)
	Next
	Return Me
End Sub

' Adds one relation field to the schema.
Sub SchemaAddRelation1(b As String) As SDUIMySQLREST
	Schema.Put(b, "RELATION")
	Return Me
End Sub

' Adds JSON fields to the schema.
Sub SchemaAddJson(bools As List) As SDUIMySQLREST
	For Each b As String In bools
		SchemaAddJson1(b)
	Next
	Return Me
End Sub

' Adds one JSON field to the schema.
Sub SchemaAddJson1(b As String) As SDUIMySQLREST
	Schema.Put(b, "JSON")
	Return Me
End Sub

' Adds the field list from a data model to the current select.
Sub SetFieldsFromDataModel(models As Map)
	SetFieldsFromDataModel1(TableName, models)
End Sub

' Adds the field list for a named table from a data model to the current select.
Sub SetFieldsFromDataModel1(tblName As String, models As Map)
	If models = Null Or models.ContainsKey(tblName) = False Then Return
	Dim tm As Map = models.Get(tblName)
	flds.Initialize
	If tm.ContainsKey("fields") = False Then Return
	Dim fldsx As List = tm.Get("fields")
	For Each fm As Map In fldsx
		ADD_FIELD(fm.GetDefault("name", ""))
	Next
End Sub

' Removes field names from the current select.
Sub RemoveFields(themFields As List)
	If themFields = Null Then Return
	For Each fldName As String In themFields
		Dim fldPos As Int = flds.IndexOf(fldName)
		If fldPos <> -1 Then flds.RemoveAt(fldPos)
	Next
End Sub

' Converts the current schema to a PocketBase-style field list.
Sub SchemaToPocketBase As Map
	Dim out As Map = CreateMap()
	For Each k As String In Schema.Keys
		Dim v As String = Schema.Get(k)
		Dim pbType As String = "text"
		Select Case v
			Case DB_BOOL
				pbType = "bool"
			Case DB_INT, DB_INTEGER, DB_NUMBER, DB_REAL, DB_FLOAT, DB_DOUBLE
				pbType = "number"
			Case DB_FILE, DB_BLOB
				pbType = "file"
			Case "RELATION"
				pbType = "relation"
			Case "JSON"
				pbType = "json"
			Case DB_DATE
				pbType = "date"
		End Select
		out.Put(k, pbType)
	Next
	Return out
End Sub

' Applies the shared API/DB headers to a fetch.
Private Sub ApplyHeaders(fetch As SDUIFetch, bearer As String)
	If UseApiKey And sApiKey <> "" Then fetch.AddHeader("X-API-Key", sApiKey)
	If bearer = "" Then bearer = BearerToken
	If bearer <> "" Then fetch.AddHeader("Authorization", "Bearer " & bearer)
	If sHost <> "" Then fetch.AddHeader("X-Host", sHost)
	If sUser <> "" Then fetch.AddHeader("X-User", sUser)
	If sPassword <> "" Then fetch.AddHeader("X-Password", sPassword)
	If sDbName <> "" Then fetch.AddHeader("X-DBName", sDbName)
	If sDriver <> "" Then fetch.AddHeader("X-Driver", sDriver)
	If sPort <> "" Then fetch.AddHeader("X-Port", sPort)
	If headers <> Null And headers.Size > 0 Then
		For Each h As String In headers.Keys
			fetch.AddHeader(h, headers.Get(h))
		Next
	End If
End Sub

' Returns the PocketBase data-model shape: Map(table -> Map(field -> PB type)).
Sub GetDataModelsPB(e As String, p As String) As Map
	Dim models As Map = CreateMap()
	Dim bearer As String = ""
	If e <> "" Or p <> "" Then
		Dim authFetch As SDUIFetch
		authFetch.Initialize(baseURL)
		authFetch.ShowLog = ShowLog
		authFetch.SetContentTypeApplicationJSON
		authFetch.NoCors = NoCORS
		authFetch.NoCache = True
		authFetch.SetURL("/admins/auth-with-password")
		If UseBaseURL = False Then authFetch.SetURL($"/assets/${ApiFile}.php/admins/auth-with-password"$)
		ApplyHeaders(authFetch, "")
		authFetch.SetData(CreateMap("identity": e, "password": p))
		BANano.Await(authFetch.PostWait)
		If authFetch.Success Then
			Dim ar As Map = authFetch.response
			If ar <> Null And ar.ContainsKey("token") Then bearer = ar.Get("token")
		End If
	End If
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.SetContentTypeApplicationJSON
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.SetURL("/collections")
	If UseBaseURL = False Then fetch.SetURL($"/assets/${ApiFile}.php/collections"$)
	ApplyHeaders(fetch, bearer)
	BANano.Await(fetch.GetWait)
	If fetch.Success Then
		Dim resp As Map = fetch.response
		If resp <> Null And resp.ContainsKey("items") Then
			Dim items As List = resp.Get("items")
			For Each col As Map In items
				AddCollectionModel(models, col)
			Next
		End If
	End If
	If models.ContainsKey("users") = False Then AddAuthCollectionModel(models, "users", bearer)
	If models.ContainsKey("admins") = False Then AddAuthCollectionModel(models, "admins", bearer)
	Return models
End Sub

' Adds one collection map from /collections to the model map.
Private Sub AddCollectionModel(models As Map, col As Map)
	If col = Null Then Return
	Dim nm As String = col.GetDefault("name", "")
	If nm = "" Then Return
	Dim xf As Map = CreateMap()
	If col.ContainsKey("schema") Then
		Dim schemaList As List = col.Get("schema")
		For Each f As Map In schemaList
			xf.Put(f.GetDefault("name", ""), f.GetDefault("type", ""))
		Next
	End If
	xf.Put("id", "text")
	xf.Put("created", "text")
	xf.Put("updated", "text")
	models.Put(nm, xf)
End Sub

' Fetches one protected auth collection when /collections omits it.
Private Sub AddAuthCollectionModel(models As Map, nm As String, bearer As String)
	If models.ContainsKey(nm) Then Return
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.SetContentTypeApplicationJSON
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.SetURL($"/collections/${nm}"$)
	If UseBaseURL = False Then fetch.SetURL($"/assets/${ApiFile}.php/collections/${nm}"$)
	ApplyHeaders(fetch, bearer)
	BANano.Await(fetch.GetWait)
	If fetch.Success Then
		Dim col As Map = fetch.response
		AddCollectionModel(models, col)
	End If
End Sub

' PocketBase SELECT_ALL_FETCH alias.
Sub SELECT_ALL_FETCH As List
	Return BANano.Await(SELECT_ALL)
End Sub

' PocketBase SELECT_WHERE_FETCH alias.
Sub SELECT_WHERE_FETCH As List
	Return BANano.Await(SELECT_WHERE)
End Sub

' PocketBase SELECT_WHERE1_FETCH alias.
Sub SELECT_WHERE1_FETCH As List
	Return BANano.Await(SELECT_WHERE1)
End Sub

' PocketBase findWhereFetch alias.
Sub findWhereFetch(whereMap As Map, whereOps As List) As List
	Return BANano.Await(findWhere(whereMap, whereOps))
End Sub

' PocketBase findWhereOrderByFetch alias.
Sub findWhereOrderByFetch(whereMap As Map, whereOps As List, orderByx As List) As List
	Return BANano.Await(findWhereOrderBy(whereMap, whereOps, orderByx))
End Sub

' PocketBase CREATE_FETCH alias.
Sub CREATE_FETCH As String
	Return BANano.Await(CREATE)
End Sub

' PocketBase UPDATE_FETCH alias.
Sub UPDATE_FETCH As String
	Return BANano.Await(UPDATE)
End Sub

' PocketBase DELETE_FETCH alias.
Sub DELETE_FETCH(delID As String) As Boolean
	Return BANano.Await(DELETE(delID))
End Sub

' PocketBase READ_FETCH alias.
Sub READ_FETCH(id As String) As Map
	Return BANano.Await(READ(id))
End Sub

' PocketBase READ_BY_FETCH alias.
Sub READ_BY_FETCH(fldName As String, fldValue As Object) As Map
	Return BANano.Await(READ_BY(fldName, fldValue))
End Sub

' PocketBase READ_BY_STRING_FETCH alias.
Sub READ_BY_STRING_FETCH(fldName As String, fldValue As Object) As Map
	Return BANano.Await(READ_BY_STRING(fldName, fldValue))
End Sub

' Reads by primary key and returns only the requested fields.
Sub READ_FIELDS(fldValue As Object, theseFlds As List) As Map
	Dim m As Map = CreateMap()
	CLEAR_WHERE
	If theseFlds <> Null Then ADD_FIELDS(theseFlds)
	ADD_WHERE(PrimaryKey, "=", fldValue)
	Dim lst As List = BANano.Await(SELECT_WHERE)
	If lst.Size > 0 Then
		m = lst.Get(0)
		Record = m
	End If
	Return m
End Sub

' PocketBase READ_FIELDS_FETCH alias.
Sub READ_FIELDS_FETCH(fldValue As Object, theseFlds As List) As Map
	Return READ_FIELDS(fldValue, theseFlds)
End Sub

' Reads by a field and returns only the requested fields.
Sub READ_BY_STRING_FIELDS_FETCH(fldName As String, fldValue As Object, theseFlds As List) As Map
	Dim m As Map = CreateMap()
	CLEAR_WHERE
	If theseFlds <> Null Then ADD_FIELDS(theseFlds)
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim lst As List = BANano.Await(SELECT_WHERE)
	If lst.Size > 0 Then
		m = lst.Get(0)
		Record = m
	End If
	Return m
End Sub

' PocketBase READ_BY_FIELDS_FETCH alias.
Sub READ_BY_FIELDS_FETCH(fldName As String, fldValue As Object, theseFlds As List) As Map
	Return READ_BY_STRING_FIELDS_FETCH(fldName, fldValue, theseFlds)
End Sub

' PocketBase READ_BY_STRING_FIELDS alias.
Sub READ_BY_STRING_FIELDS(fldName As String, fldValue As Object, theseFlds As List) As Map
	Return READ_BY_STRING_FIELDS_FETCH(fldName, fldValue, theseFlds)
End Sub

' PocketBase READ_BY_FIELDS alias.
Sub READ_BY_FIELDS(fldName As String, fldValue As Object, theseFlds As List) As Map
	Return READ_BY_STRING_FIELDS_FETCH(fldName, fldValue, theseFlds)
End Sub

' Reads by a field using the current field selection.
Sub READ_BY_STRING_FIELDS1(fldName As String, fldValue As Object) As Map
	Dim cf As List = BANano.DeepClone(flds)
	Dim m As Map = CreateMap()
	CLEAR_WHERE
	ADD_FIELDS(cf)
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim lst As List = BANano.Await(SELECT_WHERE)
	If lst.Size > 0 Then
		m = lst.Get(0)
		Record = m
	End If
	Return m
End Sub

' PocketBase GET_ID_BY_FIELD_FETCH alias.
Sub GET_ID_BY_FIELD_FETCH(fldName As String, fldValue As String) As String
	Return BANano.Await(GET_ID_BY_FIELD(fldName, fldValue))
End Sub

' PocketBase READ_ID_BY_FETCH alias.
Sub READ_ID_BY_FETCH(fldName As String, fldValue As String) As String
	Return BANano.Await(READ_ID_BY(fldName, fldValue))
End Sub

' PocketBase READ_ID_BY_STRING_FETCH alias.
Sub READ_ID_BY_STRING_FETCH(fldName As String, fldValue As String) As String
	Return BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
End Sub

' PocketBase ContainsKeyFetch alias.
Sub ContainsKeyFetch(id As String) As Boolean
	Return BANano.Await(ContainsKey(id))
End Sub

' PocketBase ContainsFieldFetch alias.
Sub ContainsFieldFetch(fldName As String, id As String) As Boolean
	Return BANano.Await(ContainsField(fldName, id))
End Sub

' PocketBase ExistsFetch alias.
Sub ExistsFetch(fldName As String, fldValue As Object) As Boolean
	Return BANano.Await(Exists(fldName, fldValue))
End Sub

' PocketBase ExistsByStringFetch alias.
Sub ExistsByStringFetch(fldName As String, fldValue As Object) As Boolean
	Return BANano.Await(ExistsByString(fldName, fldValue))
End Sub

' PocketBase ExistsWhereFetch alias.
Sub ExistsWhereFetch(where As Map) As Boolean
	Return BANano.Await(ExistsWhere(where))
End Sub

' PocketBase GetFirstListItem alias.
Sub GetFirstListItem(tblName As String) As Map
	Dim m As Map = CreateMap()
	Dim lst As List = BANano.Await(SELECT_WHERE)
	If lst.Size > 0 Then
		m = lst.Get(0)
		Record = m
	End If
	Return m
End Sub

' PocketBase GetFirstListItemFetch alias.
Sub GetFirstListItemFetch(tblName As String) As Map
	Return GetFirstListItem(tblName)
End Sub

' ===========================================================================
' SDUIPocketBase compatibility surface (Phase 2: files and forms)
' ===========================================================================

' Returns the API base used for file and form routes.
Private Sub FileBase As String
	If UseBaseURL Then Return baseURL
	Return baseURL & $"/assets/${ApiFile}.php"$
End Sub

' Registers a file field and the field that will receive its URL.
Sub FILE_FIELD(fld As String, fldUrl As String) As SDUIMySQLREST
	If fld <> "" Then fileFields.Put(fld, fldUrl)
	Return Me
End Sub

' PocketBase ADD_FILE_FIELD alias.
Sub ADD_FILE_FIELD(fld As String, fldURL As String) As SDUIMySQLREST
	Return FILE_FIELD(fld, fldURL)
End Sub

' Auto-registers schema file fields as FILE_FIELD(fld, fld & "url").
Private Sub EnsureFileFields
	For Each fld As String In Schema.Keys
		If Schema.Get(fld) = DB_FILE Then
			If fileFields.ContainsKey(fld) = False Then fileFields.Put(fld, fld & "url")
		End If
	Next
End Sub

' Builds the public URL for one stored file.
Sub BuildFileURL(id As String, fileName As String) As String
	If fileName = "" Then Return ""
	Return FileBase & $"/files/${TableName}/${id}/${fileName}"$
End Sub

' Builds the public thumbnail URL for one stored file.
Sub BuildFileThumbNailURL(id As String, fileName As String, width As String, height As String) As String
	Return BuildFileURL(id, fileName) & "?thumb=" & width & "x" & height
End Sub

' Returns the first non-empty file name from a string or list value.
Private Sub FirstFileName(Value As Object) As String
	If Value = Null Then Return ""
	If Value Is List Then
		Dim lst As List = Value
		For Each item As Object In lst
			Dim s As String = CStr(item).Trim
			If s <> "" Then Return s
		Next
		Return ""
	End If
	Return CStr(Value).Trim
End Sub

' Returns the first file URL from a record.
Sub getFileURL(rec As Map, filesFieldName As String) As String
	If rec = Null Then Return ""
	Dim fileName As String = FirstFileName(rec.GetDefault(filesFieldName, ""))
	If fileName = "" Then Return ""
	Return BuildFileURL(CStr(rec.GetDefault(PrimaryKey, "")), fileName)
End Sub

' Returns the file URL for a field on the current Record.
Sub GetURLLink(filesFieldName As String) As String
	Return getFileURL(Record, filesFieldName)
End Sub

' Returns the file URL for a field on a specific record and table.
Sub GetRecordURLLink(rec As Map, tblName As String, filesFieldName As String) As String
	Dim savedTable As String = TableName
	TableName = tblName
	Dim url As String = getFileURL(rec, filesFieldName)
	TableName = savedTable
	Return url
End Sub

' Adds <field>url entries to one row and, when GetFiles, merges base64 data.
' Adds <field>url entries to one row.
Private Sub EnrichFileUrls(row As Map)
	EnsureFileFields
	If row = Null Then Return
	Dim id As String = row.GetDefault(PrimaryKey, "")
	For Each fld As String In fileFields.Keys
		Dim urlFld As String = fileFields.Get(fld)
		Dim fileName As String = FirstFileName(row.GetDefault(fld, ""))
		If fileName = "" Then
			row.Put(urlFld, "")
		Else
			row.Put(urlFld, BuildFileURL(id, fileName))
		End If
	Next
End Sub

' Joins plain strings without SQL identifier quoting.
Private Sub JoinPlain(delim As String, items As List) As String
	If items = Null Or items.Size = 0 Then Return ""
	Dim sb As StringBuilder
	sb.Initialize
	For i = 0 To items.Size - 1
		If i > 0 Then sb.Append(delim)
		sb.Append(items.Get(i))
	Next
	Return sb.ToString
End Sub

' Merges base64 file data from the backend forms endpoint.
Private Sub EnrichFileData(row As Map)
	If GetFiles = False Or fileFields.Size = 0 Then Return
	Dim id As String = row.GetDefault(PrimaryKey, "")
	If id = "" Then Return
	Dim ff As String = JoinPlain(",", fileFields.Keys)
	Dim route As String = $"/forms/${TableName}/${id}?getfiles=true&filefields=${ff}"$
	If UseBaseURL = False Then route = $"/assets/${ApiFile}.php${route}"$
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.SetURL(route)
	ApplyHeaders(fetch, "")
	BANano.Await(fetch.GetWait)
	If fetch.Success Then
		Dim resp As Map = fetch.response
		If resp <> Null Then
			For Each k As String In resp.Keys
				row.Put(k, resp.Get(k))
			Next
		End If
	End If
End Sub

' Adds file URL fields to every row in result.
Sub EstablishFileUrl(fileField As String, urlField As String)
	FILE_FIELD(fileField, urlField)
	For Each row As Map In result
		EnrichFileUrls(row)
	Next
End Sub

' Adds a file URL field to one record.
Sub EstablishFileUrl1(rec As Map, fileField As String, urlField As String)
	FILE_FIELD(fileField, urlField)
	EnrichFileUrls(rec)
End Sub

' Returns the download URL for a file field on the current record.
Sub GetDocumentURL(fileField As String) As String
	Return GetURLLink(fileField)
End Sub

' Adds the file URL for one record into the requested output field.
Sub getFileURLTo(rec As Map, fileField As String, urlField As String)
	FILE_FIELD(fileField, urlField)
	EnrichFileUrls(rec)
End Sub

' PocketBase PrepareForm: resets query/record state and form buffers.
Sub PrepareForm
	CLEAR_WHERE
	Record.Initialize
	mFormFields.Initialize
	mFormFiles.Initialize
End Sub

' True when a JS value is a browser File or Blob object.
Private Sub IsBrowserFileOrBlob(v As Object) As Boolean
	If v = Null Or BANano.IsUndefined(v) Then Return False
	Dim obj As BANanoObject = BANano.Window.GetField("Object")
	Dim jsTag As String = obj.GetField("prototype").GetField("toString").RunMethod("call", Array(v)).Result
	Return (jsTag = "[object File]" Or jsTag = "[object Blob]")
End Sub

' Sets all form fields from a Map.
Sub SetForm(m As Map)
	If m = Null Then Return
	For Each k As String In m.Keys
		SetFormField(k, m.Get(k))
	Next
End Sub

' Sets one form field. Browser File/Blob objects are appended as multipart files.
Sub SetFormField(fldName As String, fldValue As Object) As SDUIMySQLREST
	If IsBrowserFileOrBlob(fldValue) Then
		Return SetFormFile(fldName, fldValue)
	End If
	mFormFields.Put(fldName, fldValue)
	Return Me
End Sub

' Appends one or more browser File/Blob objects for a form field without overwriting duplicates.
Sub SetFormFile(fldName As String, fldValue As Object) As SDUIMySQLREST
	Dim clean As String = CStr(fldName).Trim
	If clean = "" Or fldValue = Null Or BANano.IsUndefined(fldValue) Then Return Me
	If fldValue Is List Then
		Dim lst As List = fldValue
		For Each item As Object In lst
			If item <> Null Then mFormFiles.Add(CreateMap("field": clean, "file": item))
		Next
	Else If BANano.IsArray(fldValue) Then
		Dim objArr() As Object = fldValue
		For Each item As Object In objArr
			If item <> Null Then mFormFiles.Add(CreateMap("field": clean, "file": item))
		Next
	Else
		mFormFiles.Add(CreateMap("field": clean, "file": fldValue))
	End If
	Return Me
End Sub

' Populates FormData fields and files into an SDUIFetch instance, appending [] for multi-file fields.
Private Sub PopulateFormDataFetch(fetch As SDUIFetch, fieldsMap As Map, filesList As List)
	fetch.NewFormData
	If fieldsMap <> Null Then
		For Each k As String In fieldsMap.Keys
			Dim v As Object = fieldsMap.Get(k)
			If IsBrowserFileOrBlob(v) Then
				fetch.AddFormDataAppend(k, v)
			Else If v Is List Or BANano.IsArray(v) Then
				fetch.AddFormData(k, BANano.ToJson(v))
			Else
				fetch.AddFormData(k, v)
			End If
		Next
	End If
	If filesList <> Null And filesList.Size > 0 Then
		Dim counts As Map = CreateMap()
		For Each entry As Map In filesList
			Dim fn As String = CStr(entry.GetDefault("field", "")).Trim
			If fn <> "" Then
				Dim prev As Int = counts.GetDefault(fn, 0)
				counts.Put(fn, prev + 1)
			End If
		Next
		For Each entry As Map In filesList
			Dim fn As String = CStr(entry.GetDefault("field", "")).Trim
			Dim fobj As Object = entry.Get("file")
			If fn = "" Or fobj = Null Then Continue
			Dim cnt As Int = counts.GetDefault(fn, 1)
			If cnt > 1 And fn.EndsWith("[]") = False And fn.EndsWith("-") = False Then
				fn = fn & "[]"
			End If
			If fn.EndsWith("[]") Or cnt > 1 Then
				fetch.AddFormDataAppend(fn, fobj)
			Else
				fetch.AddFormData(fn, fobj)
			End If
		Next
	End If
End Sub

' Builds a multipart fetch for the current form fields and files.
Private Sub BuildFormFetch(route As String) As SDUIFetch
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.Redirect = Redirect
	fetch.ReferrerPolicy = ReferrerPolicy
	fetch.Mode = Mode
	fetch.SetURL(route)
	ApplyHeaders(fetch, "")
	PopulateFormDataFetch(fetch, mFormFields, mFormFiles)
	Return fetch
End Sub

' Builds the getfiles/geturls/filefields query string for /forms/* reads.
Private Sub BuildFormQuery(IncludeFiles As Boolean, fldsParam As String) As String
	Dim parts As List
	parts.Initialize
	If IncludeFiles Then parts.Add("getfiles=true")
	If GetUrls Then parts.Add("geturls=true")
	Dim ff As String = CStr(fldsParam).Trim
	If ff <> "" Then parts.Add("filefields=" & ff)
	Return JoinPlain("&", parts)
End Sub

' Reads a single record through FormDataController (/forms/{table}/{id}).
Sub FORMS_READ(Id As String, IncludeFiles As Boolean, fldsParam As String) As Map
	Dim out As Map = CreateMap()
	If Id = "" Then Return out
	Dim route As String = $"/forms/${TableName}/${Id}"$
	Dim qs As String = BuildFormQuery(IncludeFiles, fldsParam)
	If qs <> "" Then route = route & "?" & qs
	If UseBaseURL = False Then route = $"/assets/${ApiFile}.php${route}"$
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.SetURL(route)
	ApplyHeaders(fetch, "")
	BANano.Await(fetch.GetWait)
	If fetch.Success And fetch.response <> Null Then
		Record = fetch.response
		Return Record
	End If
	Return out
End Sub

' Lists records through FormDataController (/forms/{table}).
Sub FORMS_LIST(IncludeFiles As Boolean, fldsParam As String) As List
	Dim out As List
	out.Initialize
	Dim route As String = $"/forms/${TableName}"$
	Dim qs As String = BuildFormQuery(IncludeFiles, fldsParam)
	If qs <> "" Then route = route & "?" & qs
	If UseBaseURL = False Then route = $"/assets/${ApiFile}.php${route}"$
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.SetURL(route)
	ApplyHeaders(fetch, "")
	BANano.Await(fetch.GetWait)
	If fetch.Success And fetch.response <> Null Then
		Dim resp As Map = fetch.response
		If resp.ContainsKey("records") And resp.Get("records") Is List Then
			out = resp.Get("records")
			result = out
			RowCount = result.Size
		End If
	End If
	Return out
End Sub

' Fetches base64 file data and URLs from /forms/{table}/{id}/getfiles.
Sub FORMS_GET_FILES(Id As String, fldsParam As String) As Map
	Dim out As Map = CreateMap()
	If Id = "" Or fldsParam = "" Then Return out
	Dim route As String = $"/forms/${TableName}/${Id}/getfiles?filefields=${fldsParam}"$
	If UseBaseURL = False Then route = $"/assets/${ApiFile}.php${route}"$
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.SetURL(route)
	ApplyHeaders(fetch, "")
	BANano.Await(fetch.GetWait)
	If fetch.Success And fetch.response <> Null Then
		Return fetch.response
	End If
	Return out
End Sub

' Sends multipart PATCH via POST + X-HTTP-Method-Override to /forms/{table}/{id}.
Sub FORMS_PATCH_FILES(Id As String) As Map
	Dim out As Map = CreateMap()
	If Id = "" Then Return out
	Dim route As String = $"/forms/${TableName}/${Id}"$
	If UseBaseURL = False Then route = $"/assets/${ApiFile}.php${route}"$
	Dim fetch As SDUIFetch = BuildFormFetch(route)
	fetch.AddHeader("X-HTTP-Method-Override", "PATCH")
	BANano.Await(fetch.PostWait)
	If fetch.Success And fetch.response <> Null Then
		LastAffectedID = Id
		Return fetch.response
	End If
	Return out
End Sub

' Deletes a record and its uploaded directory via DELETE /forms/{table}/{id}.
Sub FORMS_DELETE(Id As String) As Boolean
	If Id = "" Then Return False
	Dim route As String = $"/forms/${TableName}/${Id}"$
	If UseBaseURL = False Then route = $"/assets/${ApiFile}.php${route}"$
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.SetURL(route)
	ApplyHeaders(fetch, "")
	BANano.Await(fetch.DeleteWait)
	If fetch.Success Then
		Dim fResp As Map = fetch.response
		If fResp <> Null Then
			AffectedRows = CInt(fResp.GetDefault("affected_rows", 1))
		End If
		Return True
	End If
	Return False
End Sub

' PocketBase CREATE_FORM: multipart create, returns the created record Map.
Sub CREATE_FORM As Map
	Dim out As Map = CreateMap()
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.CREATE_FORM: ${TableName} - please execute SchemaAdd?? first!"$)
		Return out
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUIMySQLREST.CREATE_FORM - The ApiKey has not been specified!"$)
			Return out
		End If
	End If
	EnsureFileFields
	Dim route As String = $"/forms/${TableName}"$
	If UseBaseURL = False Then route = $"/assets/${ApiFile}.php${route}"$
	Dim fetch As SDUIFetch = BuildFormFetch(route)
	BANano.Await(fetch.PostWait)
	If fetch.Success Then
		Dim rec As Map = fetch.response
		If rec <> Null Then
			Dim newId As String = CStr(rec.GetDefault("id", ""))
			If newId <> "" Then
				LastAffectedID = newId
				Record = BANano.Await(READ(newId))
				EnrichFileUrls(Record)
				If GetFiles Then BANano.Await(EnrichFileData(Record))
				Return Record
			End If
			If rec.ContainsKey("record") And rec.Get("record") Is Map Then
				Record = rec.Get("record")
				EnrichFileUrls(Record)
				If GetFiles Then BANano.Await(EnrichFileData(Record))
				Return Record
			End If
			Record = rec
			EnrichFileUrls(Record)
			If GetFiles Then BANano.Await(EnrichFileData(Record))
			Return Record
		End If
	End If
	Return out
End Sub

' PocketBase CREATE_FORMDATA: create and register the file field URL.
Sub CREATE_FORMDATA(fileField As String) As Map
	If fileField <> "" Then fileFields.Put(fileField, fileField & "url")
	Return BANano.Await(CREATE_FORM)
End Sub

' PocketBase UPDATE_FORM: multipart update, returns the updated record Map.
Sub UPDATE_FORM(sID As String) As Map
	Dim out As Map = CreateMap()
	If sID = "" Then Return out
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIMySQLREST.UPDATE_FORM: ${TableName} - please execute SchemaAdd?? first!"$)
		Return out
	End If
	EnsureFileFields
	Dim route As String = $"/forms/${TableName}/${sID}"$
	If UseBaseURL = False Then route = $"/assets/${ApiFile}.php${route}"$
	Dim fetch As SDUIFetch = BuildFormFetch(route)
	BANano.Await(fetch.PostWait)
	If fetch.Success Then
		Dim rec As Map = fetch.response
		If rec <> Null Then
			LastAffectedID = sID
			Dim updated As Map = BANano.Await(READ(sID))
			If updated <> Null And updated.Size > 0 Then
				Record = updated
				EnrichFileUrls(Record)
				If GetFiles Then BANano.Await(EnrichFileData(Record))
				Return Record
			End If
			Record = rec
			EnrichFileUrls(Record)
			If GetFiles Then BANano.Await(EnrichFileData(Record))
			Return Record
		End If
	End If
	Return out
End Sub

' PocketBase UPDATE_FORMDATA: multipart update, returns the record id.
Sub UPDATE_FORMDATA(sID As String) As String
	Dim rec As Map = BANano.Await(UPDATE_FORM(sID))
	Dim sid As String = rec.GetDefault(PrimaryKey, "")
	If sid = "" Then sid = sID
	If sid <> "" Then LastAffectedID = sid
	Return sid
End Sub

' PocketBase UPDATE_FILE: multipart update of one file field, returns the id.
Sub UPDATE_FILE(sid As String, fileField As String, fileObj As Object) As String
	Dim savedFields As Map = mFormFields
	Dim savedFiles As List = mFormFiles
	mFormFields.Initialize
	mFormFiles.Initialize
	SetFormFile(fileField, fileObj)
	Dim rec As Map = BANano.Await(UPDATE_FORM(sid))
	mFormFields = savedFields
	mFormFiles = savedFiles
	If sid <> "" Then LastAffectedID = sid
	Return sid
End Sub

' PocketBase CREATE_OR_UPDATE_FORM: create when absent, update otherwise.
Sub CREATE_OR_UPDATE_FORM(sID As String) As String
	If sID <> "" Then
		Dim bThere As Boolean = BANano.Await(ContainsKey(sID))
		If bThere Then
			Dim rec As Map = BANano.Await(UPDATE_FORM(sID))
			Dim sid As String = rec.GetDefault(PrimaryKey, "")
			If sid = "" Then sid = sID
			LastAffectedID = sid
			Return sid
		End If
	End If
	Dim created As Map = BANano.Await(CREATE_FORM)
	Dim newId As String = created.GetDefault(PrimaryKey, "")
	If newId <> "" Then LastAffectedID = newId
	Return newId
End Sub

' ===========================================================================
' SDUIPocketBase compatibility surface (Phase 3: authentication)
' ===========================================================================

' Sets the bearer token used by subsequent requests.
Sub SetAuthorizationBearerToken(sToken As String)
	BearerToken = sToken
	UserToken = sToken
	UserValid = (sToken <> "")
	IsAuthenticated = UserValid
End Sub

' Clears all PocketBase-compatible auth state.
Private Sub ClearAuthState
	UserProfile.Initialize
	UserProfile.size = 0
	UserRecord.Initialize
	UserModel.Initialize
	UserToken = ""
	BearerToken = ""
	UserValid = False
	IsAuthenticated = False
End Sub

' Resolves an auth route against the configured base URL.
Private Sub AuthRoute(route As String) As String
	If UseBaseURL Then Return route
	Return $"/assets/${ApiFile}.php${route}"$
End Sub

' Applies API/DB headers and optionally the current bearer token.
Private Sub ApplyAuthHeaders(fetch As SDUIFetch, includeBearer As Boolean)
	If UseApiKey And sApiKey <> "" Then fetch.AddHeader("X-API-Key", sApiKey)
	If includeBearer And BearerToken <> "" Then fetch.AddHeader("Authorization", "Bearer " & BearerToken)
	If sHost <> "" Then fetch.AddHeader("X-Host", sHost)
	If sUser <> "" Then fetch.AddHeader("X-User", sUser)
	If sPassword <> "" Then fetch.AddHeader("X-Password", sPassword)
	If sDbName <> "" Then fetch.AddHeader("X-DBName", sDbName)
	If sDriver <> "" Then fetch.AddHeader("X-Driver", sDriver)
	If sPort <> "" Then fetch.AddHeader("X-Port", sPort)
	If headers <> Null And headers.Size > 0 Then
		For Each h As String In headers.Keys
			fetch.AddHeader(h, headers.Get(h))
		Next
	End If
End Sub

' Generic auth request. Stores a returned token when requested.
Private Sub AuthSend(Method As String, route As String, body As Map, storeToken As Boolean, includeBearer As Boolean) As Map
	Dim out As Map = CreateMap()
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.SetContentTypeApplicationJSON
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.SetURL(AuthRoute(route))
	ApplyAuthHeaders(fetch, includeBearer)
	If body <> Null Then fetch.SetData(body)
	Select Case Method.ToUpperCase
		Case "POST"
			BANano.Await(fetch.PostWait)
		Case "PUT"
			BANano.Await(fetch.PutWait)
		Case "PATCH"
			BANano.Await(fetch.PatchWait)
		Case "DELETE"
			BANano.Await(fetch.DeleteWait)
		Case Else
			BANano.Await(fetch.GetWait)
	End Select
	If fetch.Success Then
		Dim resp As Map = fetch.response
		If resp <> Null Then
			out = resp
			If storeToken And resp.ContainsKey("token") Then
				BearerToken = CStr(resp.Get("token"))
				UserToken = BearerToken
				UserValid = (BearerToken <> "")
				IsAuthenticated = UserValid
			End If
		End If
	Else
		ErrorMessage = fetch.ErrorMessage
	End If
	Return out
End Sub

' Fills UserProfile/UserRecord/UserToken/UserModel from an auth response.
Private Sub ApplyAuthProfile(resp As Map)
	If resp = Null Or resp.Size = 0 Then
		ClearAuthState
		Return
	End If
	Dim rec As Map = CreateMap()
	If resp.ContainsKey("record") And resp.Get("record") Is Map Then
		rec = resp.Get("record")
	Else
		rec = resp
	End If
	If rec.ContainsKey("id") = False Then Return
	UserRecord = rec
	UserModel = rec
	UserProfile.Initialize
	UserProfile.id = CStr(rec.GetDefault("id", ""))
	UserProfile.email = CStr(rec.GetDefault("email", ""))
	UserProfile.name = CStr(rec.GetDefault("name", ""))
	UserProfile.verified = CBool(rec.GetDefault("verified", False))
	UserProfile.avatar = CStr(rec.GetDefault("avatar", ""))
	UserProfile.UserName = CStr(rec.GetDefault("username", ""))
	UserProfile.idnumber = CStr(rec.GetDefault("idnumber", ""))
	UserProfile.token = BearerToken
	UserProfile.size = 7
	UserToken = BearerToken
	UserValid = (BearerToken <> "")
	IsAuthenticated = UserValid
	RaiseAuthChange
End Sub

' Raises the PocketBase-style AuthChange event.
Private Sub RaiseAuthChange
	If mCallBack <> Null And mEvent <> "" Then
		BANano.CallSub(mCallBack, mEvent & "_AuthChange", Array(UserToken, UserModel))
	End If
End Sub

' PocketBase USER_AUTH_WITH_PASSWORD.
Sub USER_AUTH_WITH_PASSWORD(email As String, pwd As String) As Map
	ClearAuthState
	Dim res As Map = BANano.Await(AuthSend("POST", UsersAuthPrefix & "/auth-with-password", CreateMap("identity": email, "password": pwd), True, False))
	ApplyAuthProfile(res)
	Return res
End Sub

' PocketBase USER_AUTH_REFRESH.
Sub USER_AUTH_REFRESH As Map
	Dim res As Map = BANano.Await(AuthSend("POST", "/users/auth-refresh", Null, True, True))
	ApplyAuthProfile(res)
	Return res
End Sub

' PocketBase ADMIN_AUTH_WITH_PASSWORD.
Sub ADMIN_AUTH_WITH_PASSWORD(email As String, pwd As String) As Map
	ClearAuthState
	Dim res As Map = BANano.Await(AuthSend("POST", "/admins/auth-with-password", CreateMap("identity": email, "password": pwd), True, False))
	ApplyAuthProfile(res)
	Return res
End Sub

' PocketBase ADMIN_AUTH_REFRESH.
Sub ADMIN_AUTH_REFRESH As Map
	Dim res As Map = BANano.Await(AuthSend("POST", "/admins/auth-refresh", Null, True, True))
	ApplyAuthProfile(res)
	Return res
End Sub

' PocketBase USER_SIGNOUT.
Sub USER_SIGNOUT
	ClearAuthState
End Sub

' PocketBase USER_TOKEN property.
Sub USER_TOKEN As String
	Return BearerToken
End Sub

' PocketBase USER_MODEL property (JSON string).
Sub USER_MODEL As String
	If UserModel = Null Then Return ""
	Return BANano.ToJson(UserModel)
End Sub

' PocketBase USER_ISVALID property.
Sub USER_ISVALID As Boolean
	Return UserValid And BearerToken <> ""
End Sub

' PocketBase USER_REQUEST_VERIFICATION.
Sub USER_REQUEST_VERIFICATION(email As String) As Map
	Return AuthSend("POST", "/users/request-verification", CreateMap("email": email), False, False)
End Sub

' PocketBase USER_CONFIRM_VERIFICATION.
Sub USER_CONFIRM_VERIFICATION(token As String) As Map
	Return AuthSend("POST", "/users/confirm-verification", CreateMap("token": token), False, False)
End Sub

' PocketBase USER_REQUEST_PASSWORD_RESET.
Sub USER_REQUEST_PASSWORD_RESET(email As String) As Boolean
	Dim res As Map = AuthSend("POST", "/users/request-password-reset", CreateMap("email": email), False, False)
	Return CBool(res.GetDefault("success", False))
End Sub

' PocketBase USER_CONFIRM_PASSWORD_RESET.
Sub USER_CONFIRM_PASSWORD_RESET(token As String, password As String, passwordConfirm As String) As Map
	Return AuthSend("POST", "/users/confirm-password-reset", _
		CreateMap("token": token, "password": password, "passwordConfirm": passwordConfirm), False, False)
End Sub

' PocketBase USER_REQUEST_EMAIL_CHANGE.
Sub USER_REQUEST_EMAIL_CHANGE(newEmail As String) As Map
	Return AuthSend("POST", "/users/request-email-change", CreateMap("newEmail": newEmail), False, True)
End Sub

' PocketBase USER_CONFIRM_EMAIL_CHANGE. The second argument is the account password.
Sub USER_CONFIRM_EMAIL_CHANGE(token As String, password As String) As Map
	Return AuthSend("POST", "/users/confirm-email-change", CreateMap("token": token, "password": password), False, False)
End Sub

' PocketBase ADMIN_REQUEST_PASSWORD_RESET.
Sub ADMIN_REQUEST_PASSWORD_RESET(email As String) As Boolean
	Dim res As Map = AuthSend("POST", "/admins/request-password-reset", CreateMap("email": email), False, False)
	Return CBool(res.GetDefault("success", False))
End Sub

' PocketBase ADMIN_CONFIRM_PASSWORD_RESET.
Sub ADMIN_CONFIRM_PASSWORD_RESET(token As String, password As String, passwordConfirm As String) As Map
	Return AuthSend("POST", "/admins/confirm-password-reset", _
		CreateMap("token": token, "password": password, "passwordConfirm": passwordConfirm), False, False)
End Sub

' Returns /users or /auth-records/{UsersCollectionName} for user endpoints.
Private Sub UsersAuthPrefix As String
	Dim col As String = CStr(UsersCollectionName).Trim
	If col <> "" And col.ToLowerCase <> "users" Then Return $"/auth-records/${col}"$
	Return "/users"
End Sub

' Shared multipart helper for CREATE_USER_FORM and UPDATE_USER_FORM.
Private Sub ExecuteAuthForm(Method As String, route As String, storeToken As Boolean) As Map
	Dim out As Map = CreateMap()
	Dim fieldsCopy As Map = CreateMap()
	For Each k As String In mFormFields.Keys
		fieldsCopy.Put(k, mFormFields.Get(k))
	Next
	If Method = "POST" And fieldsCopy.ContainsKey("password") And fieldsCopy.ContainsKey("passwordConfirm") = False Then
		fieldsCopy.Put("passwordConfirm", fieldsCopy.Get("password"))
	End If
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.NoCors = NoCORS
	fetch.NoCache = True
	fetch.SetURL(AuthRoute(route))
	ApplyAuthHeaders(fetch, True)
	PopulateFormDataFetch(fetch, fieldsCopy, mFormFiles)
	If Method = "PATCH" Or Method = "PUT" Then
		fetch.AddHeader("X-HTTP-Method-Override", Method)
	End If
	BANano.Await(fetch.PostWait)
	If fetch.Success And fetch.response <> Null Then
		Dim resp As Map = fetch.response
		out = resp
		If storeToken And resp.ContainsKey("token") Then
			BearerToken = CStr(resp.Get("token"))
			UserToken = BearerToken
			UserValid = (BearerToken <> "")
			IsAuthenticated = UserValid
		End If
		ApplyAuthProfile(resp)
	End If
	Return out
End Sub

' PocketBase CREATE_USER. Returns the created auth record.
Sub CREATE_USER(profile As Map) As Map
	Dim res As Map = BANano.Await(AuthSend("POST", UsersAuthPrefix, profile, True, True))
	Dim rec As Map = CreateMap()
	If res.ContainsKey("record") And res.Get("record") Is Map Then
		rec = res.Get("record")
	Else
		rec = res
	End If
	If rec.ContainsKey("id") Then ApplyAuthProfile(res)
	Return rec
End Sub

' PocketBase CREATE_USER_FORM.
Sub CREATE_USER_FORM As Map
	If mFormFiles <> Null And mFormFiles.Size > 0 Then
		Dim res As Map = BANano.Await(ExecuteAuthForm("POST", UsersAuthPrefix, True))
		If res.ContainsKey("record") And res.Get("record") Is Map Then
			Return res.Get("record")
		End If
		Return res
	End If
	Dim profile As Map = CreateMap()
	For Each k As String In mFormFields.Keys
		profile.Put(k, mFormFields.Get(k))
	Next
	Return BANano.Await(CREATE_USER(profile))
End Sub

' PocketBase UPDATE_USER.
Sub UPDATE_USER(Id As String, profile As Map) As Map
	Dim res As Map = BANano.Await(AuthSend("PATCH", $"${UsersAuthPrefix}/${Id}"$, profile, False, True))
	If res.ContainsKey("id") Then ApplyAuthProfile(res)
	Return res
End Sub

' PocketBase UPDATE_USER_FORM.
Sub UPDATE_USER_FORM(Id As String) As Map
	If mFormFiles <> Null And mFormFiles.Size > 0 Then
		Dim res As Map = BANano.Await(ExecuteAuthForm("PATCH", $"${UsersAuthPrefix}/${Id}"$, False))
		If res.ContainsKey("record") And res.Get("record") Is Map Then
			Return res.Get("record")
		End If
		Return res
	End If
	Dim profile As Map = CreateMap()
	For Each k As String In mFormFields.Keys
		profile.Put(k, mFormFields.Get(k))
	Next
	Return BANano.Await(UPDATE_USER(Id, profile))
End Sub

' PocketBase DELETE_USER.
Sub DELETE_USER(Id As String) As Boolean
	Dim res As Map = BANano.Await(AuthSend("DELETE", $"${UsersAuthPrefix}/${Id}"$, Null, False, True))
	Return CBool(res.GetDefault("success", False))
End Sub

' PocketBase CREATE_ADMIN.
Sub CREATE_ADMIN(profile As Map) As Map
	Dim res As Map = BANano.Await(AuthSend("POST", "/admins", profile, True, True))
	Dim rec As Map = CreateMap()
	If res.ContainsKey("record") And res.Get("record") Is Map Then
		rec = res.Get("record")
	Else
		rec = res
	End If
	If rec.ContainsKey("id") Then ApplyAuthProfile(res)
	Return rec
End Sub

' PocketBase UPDATE_ADMIN.
Sub UPDATE_ADMIN(Id As String, profile As Map) As Map
	Dim res As Map = BANano.Await(AuthSend("PATCH", $"/admins/${Id}"$, profile, False, True))
	If res.ContainsKey("id") Then ApplyAuthProfile(res)
	Return res
End Sub

' PocketBase DELETE_ADMIN.
Sub DELETE_ADMIN(Id As String) As Boolean
	Dim res As Map = BANano.Await(AuthSend("DELETE", $"/admins/${Id}"$, Null, False, True))
	Return CBool(res.GetDefault("success", False))
End Sub

' PocketBase CHANGE_USER_PASSWORD.
Sub CHANGE_USER_PASSWORD(uEmail As String, newPassword As String, confirmPassword As String) As Map
	Dim res As Map = BANano.Await(AuthSend("POST", "/users/change-password", _
		CreateMap("email": uEmail, "password": newPassword, "passwordConfirm": confirmPassword), True, True))
	ApplyAuthProfile(res)
	Return res
End Sub

' PocketBase USER_AUTH_WITH_GOOGLE: unsupported by this backend.
Sub USER_AUTH_WITH_GOOGLE As profileType
	ClearAuthState
	ErrorMessage = "Not supported by SithasoBase"
	If ShowLog Then Log(ErrorMessage)
	Return UserProfile
End Sub

' PocketBase USER_REVOKE_GOOGLE_TOKEN: no-op.
Sub USER_REVOKE_GOOGLE_TOKEN
	If ShowLog Then Log($"SDUIMySQLREST.${TableName}.USER_REVOKE_GOOGLE_TOKEN: not supported"$)
End Sub

' ===========================================================================
' SDUIPocketBase compatibility surface (Phase 4: dashboard helpers)
' ===========================================================================

' PocketBase SERVER_DATE_TIME: POST /servertime.
Sub SERVER_DATE_TIME As Map
	Return AuthSend("POST", "/servertime", Null, False, False)
End Sub

' PocketBase SEND_EMAIL_REST: POST /sendemail.
Sub SEND_EMAIL_REST(toEmail As String, Subject As String, Message As String) As Map
	Dim msg As String = CStr(Message).Replace("</br>", "<br/>").Replace(CRLF, "<br/>")
	Return AuthSend("POST", "/sendemail", CreateMap("to": toEmail, "subject": Subject, "message": msg), False, False)
End Sub

' Returns SQL view names. SQLite and MySQL are handled separately.
Sub GetViews(e As String, p As String) As List
	Dim names As List
	names.Initialize
	Dim qry As String = "SELECT name FROM sqlite_master WHERE type='view' ORDER BY name"
	If sDriver.ToLowerCase = "mysql" Then
		qry = "SELECT TABLE_NAME as name FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = DATABASE() ORDER BY TABLE_NAME"
	End If
	Dim rows As List = BANano.Await(SELECT_RAW(qry))
	For Each r As Map In rows
		names.Add(r.GetDefault("name", ""))
	Next
	Return names
End Sub

' PocketBase CREATE_VIEW: POST /views with {name, definition}.
Sub CREATE_VIEW(nameOf As String, qry As String) As Map
	Return AuthSend("POST", "/views", CreateMap("name": nameOf, "definition": qry), False, True)
End Sub

' PocketBase SELECT_VIEW: reads all rows from a SQL view into result.
Sub SELECT_VIEW(viewName As String)
	Dim sql As String = $"SELECT * FROM ${EscapeField(viewName)}"$
	Dim rows As List = BANano.Await(SELECT_RAW(sql))
	result = rows
	RowCount = result.Size
	lastPosition = -1
End Sub

' PocketBase DELETE_ALL_REST: client-side delete loop (no backend /deleteall route).
Sub DELETE_ALL_REST(tblName As String) As Map
	Dim saved As String = TableName
	TableName = tblName
	Dim rows As List = BANano.Await(SELECT_ALL)
	Dim deleted As Int = 0
	For Each rec As Map In rows
		Dim id As String = rec.GetDefault(PrimaryKey, "")
		If id <> "" Then
			Dim ok As Boolean = BANano.Await(DELETE(id))
			If ok Then deleted = deleted + 1
		End If
	Next
	TableName = saved
	Return CreateMap("success": True, "deleted": deleted)
End Sub

' PocketBase DELETE_ALL_RESTAUTH: client-side delete loop for users/admins.
Sub DELETE_ALL_RESTAUTH(tblName As String) As Map
	Dim prefix As String = "/users"
	If tblName.ToLowerCase = "admins" Then prefix = "/admins"
	Dim listing As Map = AuthSend("GET", prefix, Null, False, True)
	Dim items As List = listing.GetDefault("items", Null)
	Dim deleted As Int = 0
	If items <> Null Then
		For Each rec As Map In items
			Dim id As String = rec.GetDefault("id", "")
			If id <> "" Then
				Dim del As Map = AuthSend("DELETE", prefix & "/" & id, Null, False, True)
				If CBool(del.GetDefault("success", False)) Then deleted = deleted + 1
			End If
		Next
	End If
	Return CreateMap("success": True, "deleted": deleted)
End Sub

' Reads one user record.
Sub READ_USER(id As String) As Map
	Return AuthSend("GET", $"/users/${id}"$, Null, False, True)
End Sub

' Reads one admin record.
Sub READ_ADMIN(id As String) As Map
	Return AuthSend("GET", $"/admins/${id}"$, Null, False, True)
End Sub

' ===========================================================================
' SDUIPocketBase compatibility surface (Phase 5: query/config conveniences)
' ===========================================================================

' PocketBase ADD_EXPAND. php-crud-api expresses expansion as a join.
Sub ADD_EXPAND(sexpand As String) As SDUIMySQLREST
	Dim clean As String = CStr(sexpand).Trim
	If clean <> "" Then
		expandL.Add(clean)
		joinL.Add($"join=${clean}"$)
	End If
	Return Me
End Sub

' PocketBase ADD_GROUP_BY.
Sub ADD_GROUP_BY(grpBys As List) As SDUIMySQLREST
	If grpBys <> Null Then
		For Each g As String In grpBys
			grpBy.Add(g)
		Next
	End If
	Return Me
End Sub

' PocketBase ADD_OR_WHERE.
Sub ADD_OR_WHERE(fld As String, operator As String, value As Object) As SDUIMySQLREST
	ADD_WHERE(fld, operator, value)
	If whereField.Size > 0 Then WHERE_OR(whereField.Size - 1)
	Return Me
End Sub

' PocketBase ADD_OR_WHERE_STRING.
Sub ADD_OR_WHERE_STRING(fld As String, operator As String, value As Object) As SDUIMySQLREST
	ADD_WHERE_STRING(fld, operator, value)
	If whereField.Size > 0 Then WHERE_OR(whereField.Size - 1)
	Return Me
End Sub

' Returns the current field selection.
Sub getFields As List
	Return flds
End Sub

' Replaces the current field selection.
Sub setFields(tflds As List)
	flds.Initialize
	If tflds <> Null Then
		For Each f As String In tflds
			ADD_FIELD(f)
		Next
	End If
End Sub

' PocketBase orderBy.
Sub orderBy(fldNames As List) As SDUIMySQLREST
	If fldNames <> Null Then
		For Each f As String In fldNames
			ADD_ORDER_BY(f)
		Next
	End If
	Return Me
End Sub

' PocketBase orderByDesc.
Sub orderByDesc(fldNames As List) As SDUIMySQLREST
	If fldNames <> Null Then
		For Each f As String In fldNames
			ADD_ORDER_BY_DESC(f)
		Next
	End If
	Return Me
End Sub

' PocketBase groupBy.
Sub groupBy(fldNames As List) As SDUIMySQLREST
	Return ADD_GROUP_BY(fldNames)
End Sub

' PocketBase selectFields.
Sub selectFields(fldNames As List) As SDUIMySQLREST
	setFields(fldNames)
	Return Me
End Sub

' PocketBase whereEqual.
Sub whereEqual(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_WHERE(fldName, "=", fldValue)
End Sub

' PocketBase OrWhereEqual.
Sub OrWhereEqual(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_OR_WHERE(fldName, "=", fldValue)
End Sub

' PocketBase whereGreaterThan.
Sub whereGreaterThan(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_WHERE(fldName, ">", fldValue)
End Sub

' PocketBase OrWhereGreaterThan.
Sub OrWhereGreaterThan(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_OR_WHERE(fldName, ">", fldValue)
End Sub

' PocketBase whereGreaterThanEqualTo.
Sub whereGreaterThanEqualTo(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_WHERE(fldName, ">=", fldValue)
End Sub

' PocketBase OrWhereGreaterThanEqualTo.
Sub OrWhereGreaterThanEqualTo(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_OR_WHERE(fldName, ">=", fldValue)
End Sub

' PocketBase whereLike.
Sub whereLike(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_WHERE(fldName, "like", fldValue)
End Sub

' PocketBase OrWhereLike.
Sub OrWhereLike(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_OR_WHERE(fldName, "like", fldValue)
End Sub

' PocketBase whereNotLike.
Sub whereNotLike(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_WHERE(fldName, "not like", fldValue)
End Sub

' PocketBase OrWhereNotLike.
Sub OrWhereNotLike(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_OR_WHERE(fldName, "not like", fldValue)
End Sub

' PocketBase whereLessThanEqualTo.
Sub whereLessThanEqualTo(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_WHERE(fldName, "<=", fldValue)
End Sub

' PocketBase OrWhereLessThanEqualTo.
Sub OrWhereLessThanEqualTo(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_OR_WHERE(fldName, "<=", fldValue)
End Sub

' PocketBase whereLessThan.
Sub whereLessThan(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_WHERE(fldName, "<", fldValue)
End Sub

' PocketBase OrWhereLessThan.
Sub OrWhereLessThan(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_OR_WHERE(fldName, "<", fldValue)
End Sub

' PocketBase whereBetween: two inclusive comparisons.
Sub whereBetween(fldName As String, fldStart As Object, fldEnd As Object) As SDUIMySQLREST
	ADD_WHERE(fldName, ">=", fldStart)
	ADD_WHERE(fldName, "<=", fldEnd)
	Return Me
End Sub

' PocketBase OrWhereNotEqual.
Sub OrWhereNotEqual(fldName As String, fldValue As Object) As SDUIMySQLREST
	Return ADD_OR_WHERE(fldName, "<>", fldValue)
End Sub

' PocketBase no-op auto-cancellation toggle.
Sub SetAutoCancellation(b As Boolean)
	If ShowLog Then Log($"SDUIMySQLREST.${TableName}.SetAutoCancellation(${b})"$)
End Sub

' PocketBase no-op request cancellation.
Sub CancelAllRequests
	If ShowLog Then Log($"SDUIMySQLREST.${TableName}.CancelAllRequests"$)
End Sub

' PocketBase no-op request cancellation.
Sub CancelRequest(reqKey As String)
	If ShowLog Then Log($"SDUIMySQLREST.${TableName}.CancelRequest(${reqKey})"$)
End Sub

' PocketBase no-cache toggle.
Sub setNoCache(b As Boolean)
	NoCache = b
End Sub

' PocketBase no-cache getter.
Sub getNoCache As Boolean
	Return NoCache
End Sub

' PocketBase table-name setter.
Sub setTableName(s As String)
	TableName = s
End Sub

' PocketBase dot-path writer.
Sub PutRecursive(data As Map, path As String, value As Object)
	Try
		If BANano.IsNull(path) Or BANano.IsUndefined(path) Then path = ""
		If path = "" Then Return
		Dim prevObj As BANanoObject = data
		If path.IndexOf(".") = -1 Then
			prevObj.SetField(path, value)
		Else
			Dim items As List = BANano.Split(".", path)
			Dim iTot As Int = items.Size
			Dim litem As String = items.Get(iTot - 1)
			For iCnt = 1 To iTot - 1
				Dim strprev As String = items.Get(iCnt - 1)
				Dim prtObj As BANanoObject = prevObj.GetField(strprev)
				If BANano.IsUndefined(prtObj) Then
					Dim no As Object
					prevObj.SetField(strprev, no)
					prevObj = prevObj.GetField(strprev)
				Else
					prevObj = prtObj
				End If
			Next
			prevObj.SetField(litem, value)
		End If
	Catch
		Log(LastException.Message)
	End Try
End Sub

' PocketBase next-id helper: generate an id and put it into Record.
Sub SetNextID
	Dim nid As String = NextID
	SetField("id", nid)
End Sub

' Replaces the current result list.
Sub SetRecords(lst As List)
	result = lst
	RowCount = result.Size
	lastPosition = -1
End Sub

' Replaces one row in the result list.
Sub SetRecordAt(pos As Int, rec As Map)
	result.Set(pos, rec)
End Sub

' ===========================================================================
' SDUIPocketBase compatibility surface (Phase 6: batch, collections, stubs)
' ===========================================================================

' Opens a sequential client-side batch.
Sub BATCH_CREATE
	mBatch.Initialize
	mBatchActive = True
End Sub

' Adds a create operation for the current Record.
Sub BATCH_ADD_CREATE
	If mBatchActive = False Then BATCH_CREATE
	mBatch.Add(CreateMap("op": "create", "table": TableName, "record": BANano.DeepClone(Record)))
End Sub

' Adds an upsert operation for the current Record.
Sub BATCH_ADD_UPSERT
	If mBatchActive = False Then BATCH_CREATE
	mBatch.Add(CreateMap("op": "upsert", "table": TableName, "record": BANano.DeepClone(Record)))
End Sub

' Adds an update operation for the current Record.
Sub BATCH_ADD_UPDATE
	If mBatchActive = False Then BATCH_CREATE
	mBatch.Add(CreateMap("op": "update", "table": TableName, "record": BANano.DeepClone(Record)))
End Sub

' Adds a delete operation for the current Record's primary key.
Sub BATCH_ADD_DELETE
	If mBatchActive = False Then BATCH_CREATE
	mBatch.Add(CreateMap("op": "delete", "table": TableName, "record": BANano.DeepClone(Record)))
End Sub

' Executes all queued operations sequentially and returns per-op results.
Sub BATCH_SEND As Object
	Dim out As List
	out.Initialize
	Dim savedTable As String = TableName
	For Each op As Map In mBatch
		TableName = op.GetDefault("table", savedTable)
		Dim rec As Object = op.GetDefault("record", Null)
		If rec Is Map Then
			Record = rec
		End If
		Dim opName As String = op.GetDefault("op", "")
		Dim idRes As String = ""
		Dim okRes As Boolean = False
		Select Case opName
			Case "create"
				idRes = BANano.Await(CREATE)
				okRes = (idRes <> "")
			Case "upsert"
				idRes = BANano.Await(CREATE_OR_UPDATE)
				okRes = (idRes <> "")
			Case "update"
				idRes = BANano.Await(UPDATE)
				okRes = (idRes <> "")
			Case "delete"
				Dim delId As String = Record.GetDefault(PrimaryKey, "")
				okRes = BANano.Await(DELETE(delId))
		End Select
		out.Add(CreateMap("success": okRes, "result": idRes, "error": ErrorMessage))
	Next
	TableName = savedTable
	mBatchActive = False
	Return out
End Sub

' Lists collection metadata through GET /collections.
Sub SELECT_COLLECTIONS As List
	Dim res As Map = BANano.Await(AuthSend("GET", "/collections", Null, False, True))
	Dim items As List = res.GetDefault("items", Null)
	result.Initialize
	If items <> Null Then result = items
	RowCount = result.Size
	lastPosition = -1
	Return result
End Sub

' Lists collections, optionally authenticating as an admin first.
Sub SELECT_ALL_COLLECTIONS(e As String, p As String) As List
	If e <> "" Or p <> "" Then
		Dim ar As Map = BANano.Await(ADMIN_AUTH_WITH_PASSWORD(e, p))
	End If
	Return BANano.Await(SELECT_COLLECTIONS)
End Sub

' Returns only collection names.
Sub SELECT_ALL_COLLECTIONS_NAMES(e As String, p As String) As List
	Dim cols As List = BANano.Await(SELECT_ALL_COLLECTIONS(e, p))
	Dim names As List
	names.Initialize
	For Each col As Map In cols
		names.Add(col.GetDefault("name", ""))
	Next
	Return names
End Sub

' Reads one collection by id or name.
Sub READ_COLLECTION(id As String) As Map
	Return BANano.Await(AuthSend("GET", $"/collections/${id}"$, Null, False, True))
End Sub

' Creates a collection.
Sub CREATE_COLLECTION(nameOf As String, colType As String, colSchema As List) As Map
	Return BANano.Await(AuthSend("POST", "/collections", CreateMap("name": nameOf, "type": colType, "schema": colSchema), False, True))
End Sub

' Updates a collection.
Sub UPDATE_COLLECTION(colName As String, colSchema As Map) As Map
	Return BANano.Await(AuthSend("PATCH", $"/collections/${colName}"$, colSchema, False, True))
End Sub

' Deletes a collection.
Sub DELETE_COLLECTION(colName As String) As Boolean
	Dim res As Map = BANano.Await(AuthSend("DELETE", $"/collections/${colName}"$, Null, False, True))
	Return CBool(res.GetDefault("success", False))
End Sub

' Creates a collection from a name, type, and options map.
Sub Schema_CreateCollection(nameOf As String, colType As String, options As Map) As Map
	Dim body As Map = CreateMap()
	If options <> Null Then
		For Each k As String In options.Keys
			body.Put(k, options.Get(k))
		Next
	End If
	body.Put("name", nameOf)
	body.Put("type", colType)
	Return AuthSend("POST", "/collections", body, False, True)
End Sub

' Lists users.
Sub SELECT_ALL_USERS As List
	Dim res As Map = AuthSend("GET", "/users", Null, False, True)
	Dim items As List = res.GetDefault("items", Null)
	If items = Null Then items = NewList
	Return items
End Sub

' Lists admins.
Sub SELECT_ALL_ADMINS As List
	Dim res As Map = AuthSend("GET", "/admins", Null, False, True)
	Dim items As List = res.GetDefault("items", Null)
	If items = Null Then items = NewList
	Return items
End Sub

' Returns the current schema in PocketBase shape.
Sub GetDataModel As Map
	Return SchemaToPocketBase
End Sub

' Returns one table's data model from the backend collections map.
Sub GetDataModelOfTable(tblName As String) As Map
	If tblName = TableName Then Return SchemaToPocketBase
	Dim models As Map = GetDataModelsPB("", "")
	If models.ContainsKey(tblName) Then Return models.Get(tblName)
	Return CreateMap()
End Sub

' PocketBase generic send. Returns the response Map (not a BANanoPromise).
Sub SEND(EndPoint As String, options As Map) As Map
	Dim method As String = "POST"
	Dim body As Map = Null
	Dim hdrs As Map = Null
	If options <> Null Then
		method = options.GetDefault("method", "POST")
		Dim hObj As Object = options.GetDefault("headers", Null)
		If hObj <> Null And hObj Is Map Then
			hdrs = hObj
		End If
		Dim bObj As Object = options.GetDefault("body", Null)
		If bObj <> Null And bObj Is Map Then
			body = bObj
		End If
		If body = Null Then
			Dim dObj As Object = options.GetDefault("data", Null)
			If dObj <> Null And dObj Is Map Then
				body = dObj
			End If
		End If
	End If
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	fetch.ShowLog = ShowLog
	fetch.SetContentTypeApplicationJSON
	fetch.NoCors = NoCORS
	fetch.NoCache = NoCache
	If EndPoint.ToLowerCase.StartsWith("http") Then
		fetch.SetURL(EndPoint)
	Else
		fetch.SetURL(AuthRoute(EndPoint))
	End If
	ApplyHeaders(fetch, "")
	If hdrs <> Null Then
		For Each k As String In hdrs.Keys
			fetch.AddHeader(k, hdrs.Get(k))
		Next
	End If
	If body <> Null Then fetch.SetData(body)
	Select Case method.ToUpperCase
		Case "POST"
			BANano.Await(fetch.PostWait)
		Case "PUT"
			BANano.Await(fetch.PutWait)
		Case "PATCH"
			BANano.Await(fetch.PatchWait)
		Case "DELETE"
			BANano.Await(fetch.DeleteWait)
		Case Else
			BANano.Await(fetch.GetWait)
	End Select
	If fetch.Success Then Return fetch.response
	Return CreateMap()
End Sub

' Realtime is not implemented in SDUIMySQLREST; these stubs fail loudly.
Sub Subscribe(Module As Object, Topic As String)
	ErrorMessage = "Realtime is not implemented in SDUIMySQLREST"
End Sub

Sub SubscribeToRecord(Module As Object, Topic As String, id As String)
	ErrorMessage = "Realtime is not implemented in SDUIMySQLREST"
End Sub

Sub UnSubscribe(Topic As String)
	ErrorMessage = "Realtime is not implemented in SDUIMySQLREST"
End Sub

Sub UnSubscribeToRecord(Topic As String, id As String)
	ErrorMessage = "Realtime is not implemented in SDUIMySQLREST"
End Sub

Sub RealtimeSubscribe(Module As Object, topicName As String)
	ErrorMessage = "Realtime is not implemented in SDUIMySQLREST"
End Sub

Sub RealtimeUnSubscribe(topicName As String)
	ErrorMessage = "Realtime is not implemented in SDUIMySQLREST"
End Sub

Sub RealtimeUnSubscribeByPrefix(topicName As String)
	ErrorMessage = "Realtime is not implemented in SDUIMySQLREST"
End Sub

Sub RealtimePublish(Module As Object, topicName As String, value As String)
	ErrorMessage = "Realtime is not implemented in SDUIMySQLREST"
End Sub