B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.13
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
	Public const DB_DOUBLE As String = "DOUBLE"
	Public const DB_NUMBER As String = "NUMBER"
	Public const DB_DATE As String = "DATE"
	Public const DB_FILE As String = "FILE"
	Public const DB_BLOB As String = "BLOB"
	Public const DB_FLOAT As String = "FLOAT"
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
	Public UseApiKey As Boolean = False
	Public ApiFile As String = "api"
End Sub

'<code>
''initialize the connection to mysql with a collection to access
'Dim pb As SDUI5MySQLRESTNative
'pb.Initialize(Me, "pb", "http://localhost/sdmysqlapi", "projects")
'pb.SetSchemaFromDataModel(app.DataModels)
'pb.PrimaryKey = "id"
'pb.AutoIncrement = "id"
'</code>
Public Sub Initialize(Module As Object, eventName As String, url As String, sTableName As String)
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
	UseApiKey = False
End Sub

Sub SetLimit(s As String)
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.SetLimit(${s})"$)
	End If
	sSize = s
End Sub

'required
'Sub setApiKey(s As String)
'	If ShowLog Then
'		Log($"SDUI5MySQLRESTNative.${mEvent}.setApiKey(${s})"$)
'	End If
'	sApiKey = s
'End Sub

'prepare for new table definition
Sub SchemaClear As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.SchemaClear"$)
	End If
	Schema.clear
	Return Me
End Sub

'schema add boolean
Sub SchemaAddBoolean(bools As List) As SDUI5MySQLRESTNative
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	Return Me
End Sub
Sub SchemaAddBoolean1(b As String) As SDUI5MySQLRESTNative
	Schema.Put(b, DB_BOOL)
	Return Me
End Sub
Sub SchemaAddDouble1(b As String) As SDUI5MySQLRESTNative
	Schema.Put(b, DB_DOUBLE)
	Return Me
End Sub
'add double fields
Sub SchemaAddDouble(bools As List) As SDUI5MySQLRESTNative
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	Return Me
End Sub
Sub SchemaAddFloat1(b As String) As SDUI5MySQLRESTNative
	Schema.Put(b, DB_FLOAT)
	Return Me
End Sub
Sub SchemaAddFloat(bools As List) As SDUI5MySQLRESTNative
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	Return Me
End Sub
Sub SchemaAddText1(b As String) As SDUI5MySQLRESTNative
	Schema.Put(b, DB_TEXT)
	Return Me
End Sub
Sub SchemaAddText(bools As List) As SDUI5MySQLRESTNative
	For Each b As String In bools
		Schema.Put(b, DB_TEXT)
	Next
	Return Me
End Sub
Sub SchemaAddInt1(b As String) As SDUI5MySQLRESTNative
	Schema.Put(b, DB_INT)
	Return Me
End Sub
Sub SchemaAddInt(bools As List) As SDUI5MySQLRESTNative
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


'set schema from data models including primary key and auto-increment

Sub SetSchemaFromDataModel(models As Map)
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.SetSchemaFromDataModel"$)
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

Sub SchemaAddBlob(bools As List) As SDUI5MySQLRESTNative
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
	Return Me
End Sub

Sub SchemaAddFile(bools As List) As SDUI5MySQLRESTNative
	For Each b As String In bools
		Schema.Put(b, DB_FILE)
	Next
	Return Me
End Sub

Sub SchemaAddFile1(b As String) As SDUI5MySQLRESTNative
	Schema.Put(b, DB_FILE)
	Return Me
End Sub

Sub SchemaAddBlob1(b As String) As SDUI5MySQLRESTNative
	Schema.Put(b, DB_BLOB)
	Return Me
End Sub

Sub SchemaAddNumber(bools As List) As SDUI5MySQLRESTNative
	For Each b As String In bools
		Schema.Put(b, DB_NUMBER)
	Next
	Return Me
End Sub

Sub SchemaAddNumber1(b As String) As SDUI5MySQLRESTNative
	Schema.Put(b, DB_NUMBER)
	Return Me
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
		Log($"SDUI5MySQLRESTNative.${TableName}.SELECT_ALL"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.SELECT_ALL. Please execute SchemaAdd?? first to define your table schema!"$)
		Return result
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUI5MySQLRESTNative.SELECT_ALL - The ApiKey has not been specified!"$)
			Return result
		End If
	End If
	'
	Dim qflds As String = Join(",", flds)
	qflds = RemDelim(qflds, ",")
'	
	Dim qsort As String = Join("&", orderByL)
	qsort = RemDelim(qsort, "&")
'	'
'	Dim qjoin As String = Join("&", joinL)
'	qjoin = RemDelim(qjoin, "&")
'	
	Dim xcommand As List
	xcommand.Initialize
	If qflds <> "" Then xcommand.add($"include=${qflds}"$)
	If qsort <> "" Then xcommand.Add(qsort)
	If sSize <> "" Then xcommand.Add($"size=${sSize}"$)
'	If qjoin <> "" Then xcommand.Add(qjoin)
'	'
	Dim scommand As String = ""
	Dim scommand As String = Join("&", xcommand)
	scommand = RemDelim(scommand, "&")
	lastPosition = -1
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	If UseApiKey Then fetch.AddHeader("X-API-Key", sApiKey)
	fetch.NoCache = True
'	fetch.NoCors = True
	If scommand = "" Then
		fetch.SetURL($"/records/${TableName}"$)
		If ShowLog Then
			Log($"SDUI5MySQLRESTNative.SELECT_ALL.(${baseURL}/records/${TableName}?${scommand})"$)
		End If
	Else
		fetch.SetURL($"/records/${TableName}?${scommand}"$)
		If ShowLog Then
			Log($"SDUI5MySQLRESTNative.SELECT_ALL.(${baseURL}/records/${TableName}?${scommand})"$)
		End If
	End If
	BANano.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		If Response.ContainsKey("records") Then
			result = Response.Get("records")
		End If
	End If
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
		Log($"SDUI5MySQLRESTNative.${TableName}.CREATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.CREATE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUI5MySQLRESTNative.CREATE - The ApiKey has not been specified!"$)
			Return ""
		End If
	End If
	Try
		RemoveField(AutoIncrement)
		Dim output As Object
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		If UseApiKey Then fetch.AddHeader("X-API-Key", sApiKey)
		fetch.SetURL($"/records/${TableName}"$)
		fetch.SetData(Record)
		fetch.NoCache = True
		If ShowLog Then
			Log($"SDUI5MySQLRESTNative.CREATE.(${baseURL}/records/${TableName}?${BANano.ToJson(Record)})"$)
		End If
'		fetch.NoCors = True
		BANano.Await(fetch.PostWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			output = Response
		End If
		Return output
	Catch
		Return ""
	End Try
End Sub

'<code>
'dim b As Boolean = BANano.Await(pb.USER_CREATE("user1", "user1"))
'</code>
'Sub USER_CREATE(username As String, password As String) As Boolean
'	If ShowLog Then
'		Log($"SDUI5MySQLRESTNative.${mEvent}.USER_CREATE"$)
'	End If
'	ErrorMessage = ""
'	Try
'		Record.Initialize
'		Record.Put("username", username)
'		Record.Put("password", password)
'		Dim fetch As SDUIFetch
'		fetch.Initialize(baseURL)
'		fetch.SetURL($"/assets/${ApiFile}.php/register"$)
'		fetch.SetData(Record)
'		fetch.NoCache = True
'		BANano.Await(fetch.PostWait)
'		If fetch.Success Then
'			Dim Response As Map = fetch.response
'			If Response.ContainsKey("code") Then
'				ErrorMessage = Response.Get("message")
'				Return False
'			Else
'				Return True
'			End If
'		End If
'		Return False
'	Catch
'		Return False
'	End Try
'End Sub

'<code>
'dim b As Boolean = BANano.Await(pb.USER_CHANGE_PASSWORD("user1", "user1"))
'</code>
'Sub USER_CHANGE_PASSWORD(username As String, password As String, newPassword As String) As Boolean
'	If ShowLog Then
'		Log($"SDUI5MySQLRESTNative.${mEvent}.USER_CHANGE_PASSWORD"$)
'	End If
'	ErrorMessage = ""
'	Try
'		Record.Initialize
'		Record.Put("username", username)
'		Record.Put("password", password)
'		Record.Put("newPassword", newPassword)
'		Dim fetch As SDUIFetch
'		fetch.Initialize(baseURL)
'		fetch.SetURL($"/assets/${ApiFile}.php/password"$)
'		fetch.SetData(Record)
'		fetch.NoCache = True
'		BANano.Await(fetch.PostWait)
'		If fetch.Success Then
'			Dim Response As Map = fetch.response
'			If Response.ContainsKey("code") Then
'				ErrorMessage = Response.Get("message")
'				Return False
'			Else
'				Return True
'			End If
'		End If
'		Return False
'	Catch
'		Return False
'	End Try
'End Sub


'<code>
'dim b As Boolean = BANano.Await(pb.USER_LOGIN("user1", "user1"))
'</code>
'Sub USER_LOGIN(username As String, password As String) As Boolean
'	If ShowLog Then
'		Log($"SDUI5MySQLRESTNative.${mEvent}.USER_LOGIN"$)
'	End If
'	ErrorMessage = ""
'	Try
'		Record.Initialize
'		Record.Put("username", username)
'		Record.Put("password", password)
'		Dim fetch As SDUIFetch
'		fetch.Initialize(baseURL)
'		fetch.SetURL($"/assets/${ApiFile}.php/login"$)
'		fetch.SetData(Record)
'		fetch.NoCache = True
'		BANano.Await(fetch.PostWait)
'		If fetch.Success Then
'			Dim Response As Map = fetch.response
'			If Response.ContainsKey("code") Then
'				ErrorMessage = Response.Get("message")
'				Return False
'			Else
'				Return True
'			End If
'		End If
'		Return False
'	Catch
'		Return False
'	End Try
'End Sub

'<code>
'dim b As Boolean = BANano.Await(pb.USER_LOGOUT)
'</code>
'Sub USER_LOGOUT As Boolean
'	If ShowLog Then
'		Log($"SDUI5MySQLRESTNative.${mEvent}.USER_LOGOUT"$)
'	End If
'	ErrorMessage = ""
'	Try
'		Dim fetch As SDUIFetch
'		fetch.Initialize(baseURL)
'		fetch.SetURL($"/assets/${ApiFile}.php/logout"$)
'		fetch.NoCache = True
'		BANano.Await(fetch.PostWait)
'		If fetch.Success Then
'			Dim Response As Map = fetch.response
'			If Response.ContainsKey("code") Then
'				ErrorMessage = Response.Get("message")
'				Return False
'			Else
'				Return True
'			End If
'		End If
'		Return False
'	Catch
'		Return False
'	End Try
'End Sub


'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE("a"))
'</code>
Sub DELETE(id As String) As Boolean
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.DELETE(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.DELETE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUI5MySQLRESTNative.DELETE - The ApiKey has not been specified!"$)
			Return False
		End If
	End If
	Try
		Dim output As Object
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		If UseApiKey Then fetch.AddHeader("X-API-Key", sApiKey)
		fetch.SetURL($"/records/${TableName}/${id}"$)
		fetch.NoCache = True
		If ShowLog Then
			Log($"SDUI5MySQLRESTNative.DELETE.(${baseURL}/records/${TableName}/${id})"$)
		End If
'		fetch.NoCors = True
		BANano.Await(fetch.DeleteWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			output = Response
			Return True
		Else
			Return False
		End If
	Catch
		Return False
	End Try
End Sub

'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE_MULTIPLE(array("a")))
'</code>
Sub DELETE_MULTIPLE(items As List) As Boolean
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.DELETE_MULTIPLE()"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.DELETE_MULTIPLE. Please execute SchemaAdd?? first to define your table schema!"$)
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
'returns the record id
'<code>
'pb.PrepareRecord
'pb.SetField("id", 1)
'pb.SetField("username", "user1")
'BANano.Await(pb.UPDATE)
'</code>
Sub UPDATE As String
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.UPDATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.UPDATE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUI5MySQLRESTNative.UPDATE - The ApiKey has not been specified!"$)
			Return ""
		End If
	End If
	Try
		'update an existing record by primary key
		Dim pkValue As String = Record.GetDefault(PrimaryKey, "")
		If pkValue = "" Then
			If ShowLog Then
				Log($"SDUI5MySQLRESTNative.${TableName}.UPDATE Error - No Primary Key Found"$)
			End If
			Return ""
		End If
		Dim output As Object
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		If UseApiKey Then fetch.AddHeader("X-API-Key", sApiKey)
		'this is a post
		fetch.SetURL($"/records/${TableName}/${pkValue}"$)
		RemoveField(AutoIncrement)
		fetch.SetData(Record)
		fetch.NoCache = True
		If ShowLog Then
			Log($"SDUI5MySQLRESTNative.UPDATE.(${baseURL}/records/${TableName}/${pkValue}?${BANano.ToJson(Record)})"$)
		End If
'		fetch.NoCors = True
		BANano.Await(fetch.PutWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			output = Response
		End If
		Return output
	Catch
		Return ""
	End Try
End Sub

'execute an update where, uses a filter
Sub UPDATE_WHERE As String
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.UPDATE_WHERE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.UPDATE_WHERE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUI5MySQLRESTNative.UPDATE_WHERE - The ApiKey has not been specified!"$)
			Return ""
		End If
	End If
	Try
		'we build the filter
		Dim sb As StringBuilder
		sb.Initialize
		Dim i As Int
		Dim iWhere As Int = whereField.Size - 1
		For i = 0 To iWhere
			Dim col As String = whereField.GetKeyAt(i)
			col = MvField(col, 1,".")
			Dim xVal As String = whereField.GetValueAt(i)
			Dim opr As String = ops.Get(i)
			sb.Append($"filter="$).Append(col).Append(",")
			sb.Append(opr).Append(",").Append(xVal).Append("&")
		Next
		'
		Dim qfilter As String = sb.tostring
		Dim afilter As String = RemDelim(qfilter, "&")
		qfilter = afilter.Trim
		
		Dim output As Object
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		If UseApiKey Then fetch.AddHeader("X-API-Key", sApiKey)
		'this is a post
		If qfilter = "" Then
			fetch.SetURL($"/records/${TableName}"$)
		Else
			fetch.SetURL($"/records/${TableName}?${qfilter}"$)
		End If
		RemoveField(AutoIncrement)
		fetch.SetData(Record)
		fetch.NoCache = True
		If ShowLog Then
			Log($"SDUI5MySQLRESTNative.UPDATE_WHERE.(${baseURL}/records/${TableName}/${qfilter}?${BANano.ToJson(Record)})"$)
		End If
'		fetch.NoCors = True
		BANano.Await(fetch.PutWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			output = Response
		End If
		Return output
	Catch
		Return ""
	End Try
End Sub


'get a value using key
'<code>
'Dim res As Map = BANano.Await(pb.READ(2))
'</code>
Sub READ(id As String) As Map
	Dim m As Map = CreateMap()
	Record = m
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.READ(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.READ. Please execute SchemaAdd?? first to define your table schema!"$)
		Return m
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUI5MySQLRESTNative.READ - The ApiKey has not been specified!"$)
			Return m
		End If
	End If
	Dim m As Map = CreateMap()
	Try
		'this is a get
		Dim fetch As SDUIFetch
		fetch.Initialize(baseURL)
		If UseApiKey Then fetch.AddHeader("X-API-Key", sApiKey)
		fetch.SetURL($"/records/${TableName}/${id}"$)
		fetch.NoCache = True
'		fetch.NoCors = True
		If ShowLog Then
			Log($"SDUI5MySQLRESTNative.READ.(${baseURL}/records/${TableName}/${id})"$)
		End If
		BANano.Await(fetch.GetWait)
		If fetch.Success Then
			Dim Response As Map = fetch.response
			Record = Response
		End If
		Return Record
	Catch
		Record = m
		Return m
	End Try
End Sub

'<code>
'Dim result As Map = BANano.Await(pbComponents.READ_BY("name", "Anele"))
'</code>
Sub READ_BY(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.READ_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	Dim res As List = BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	If res.size = 0 Then
		Return m
	Else
		m = res.Get(0)
		Return m
	End If
End Sub

Sub READ_BY_STRING(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.READ_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	Dim res As List = BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	If res.size = 0 Then
		Return m
	Else
		m = res.Get(0)
		Return m
	End If
End Sub

Sub READ_ID_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.READ_ID_BY_STRING(${fldName},${fldValue})"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.ContainsKey(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.ContainsKey. Please execute SchemaAdd?? first to define your table schema!"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.ContainsField(${fldName},${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.ContainsField. Please execute SchemaAdd?? first to define your table schema!"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.ListKeys"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.ListKeys. Please execute SchemaAdd?? first to define your table schema!"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.DELETE_ALL"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.GetKeyValues(${bHasNothing},${k},${v})"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.CREATE_OR_UPDATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.CREATE_OR_UPDATE. Please execute SchemaAdd?? first to define your table schema!"$)
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
				Log($"SDUI5MySQLRESTNative.CREATE_OR_UPDATE:ContainsKey(id,${Key},${bThere})"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.CREATE_OR_UPDATE_BY_FIELD(${fldName})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.CREATE_OR_UPDATE_BY_FIELD. Please execute SchemaAdd?? first to define your table schema!"$)
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
			Dim rec As Map = BANano.Await(READ_BY(fldName, sKey))
			id = rec.GetDefault(PrimaryKey, "")
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

Sub GET_ID_BY_FIELD(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.GET_ID_BY_FIELD(${fldName},${fldValue})"$)
	End If
	Dim rec As Map = BANano.Await(READ_BY(fldName, fldValue))
	Dim sid As String = rec.GetDefault(PrimaryKey, "")
	Return sid
End Sub

Sub UPDATE_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.UPDATE_BY_STRING(${fldName},${fldValue})"$)
	End If
	Dim rec As Map = BANano.Await(READ_BY_STRING(fldName, fldValue))
	Dim sid As String = rec.GetDefault(PrimaryKey, "")
	Record.Put(PrimaryKey, sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
End Sub

Sub UPDATE_BY(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.UPDATE_BY(${fldName},${fldValue})"$)
	End If
	Dim rec As Map = BANano.Await(READ_BY(fldName, fldValue))
	Dim sid As String = rec.GetDefault(PrimaryKey, "")
	Record.Put(PrimaryKey, sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
End Sub

'to delete the file set the fldValue = null
Sub SetField(fldName As String, fldValue As Object) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.SetField(${fldName}, ${fldValue})"$)
	End If
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
		Case DB_TEXT
			fldValue = CStr(fldValue)
		Case DB_DOUBLE
			fldValue = CDbl(fldValue)
	End Select
	Record.Put(fldName, fldValue)
	Return Me
End Sub

Sub RemoveField(fldName As String)
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.RemoveField(${fldName})"$)
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

'convert to int
private Sub CInt(o As Object) As Int
	o = Val(o)
	Return BANano.parseInt(o)
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
private Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return BANano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
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
Sub CLEAR_WHERE As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.CLEAR_WHERE"$)
	End If
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	combineL.Initialize
	joinL.Initialize
	Return Me
End Sub

Sub Reset As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.Reset"$)
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
	DisplayField = ""
	Singular = ""
	Plural = ""
	DisplayValue = ""
	IsAuthenticated = False
	PrimaryKey = "id"
	AutoIncrement = ""
	SchemaAddText1("id")
	joinL.Initialize
	sSize = ""
	Return Me
End Sub

Sub ADD_FIELD(fld As String) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.ADD_FIELD(${fld})"$)
	End If
	flds.Add($"include=${fld}"$)
	Return Me
End Sub

'join on table
Sub ADD_JOIN(fld As String) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.ADD_JOIN(${fld})"$)
	End If
	joinL.Add($"join=${fld}"$)
	Return Me
End Sub

Sub ADD_FIELDS(fields As List) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.ADD_FIELDS(${BANano.ToJson(fields)})"$)
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
Sub ADD_WHERE(fld As String, operator As String, value As Object) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.ADD_WHERE(${fld},${operator},${value})"$)
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

Sub ADD_WHERE_STRING(fld As String, operator As String, value As Object) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.ADD_WHERE_STRING(${fld},${operator},${value})"$)
	End If
	ADD_WHERE(fld, operator, value)
	Return Me
End Sub

'change the selection at position from AND to OR
Sub WHERE_OR(pos As Int) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.WHERE_OR(${pos})"$)
	End If
	combineL.Set(pos, "2")
	Return Me
End Sub

'change the selection at position to AND
Sub WHERE_AND(pos As Int) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.WHERE_AND(${pos})"$)
	End If
	combineL.Set(pos, "")
	Return Me
End Sub

'add a sort field
Sub ADD_ORDER_BY(fld As String) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.ADD_ORDER_BY(${fld})"$)
	End If
	orderByL.Add($"order=${fld}"$)
	Return Me
End Sub

Sub ADD_ORDER_BY_DESC(fld As String) As SDUI5MySQLRESTNative
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.ADD_ORDER_BY_DESC(${fld})"$)
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
	If lastPosition > realSize Then
		Return False
	Else
		setPosition(lastPosition)
		Return True
	End If
End Sub

Sub SetRecord(rec As Map)
	Record.Initialize
	'only process schema fields
	For Each k As String In rec.Keys
		Dim fldPos As Boolean = Schema.ContainsKey(k)
		If fldPos = False Then rec.Remove(k)
	Next
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
			Case DB_TEXT
				v = CStr(v)
			Case DB_DOUBLE
				v = CDbl(v)
		End Select
		Record.Put(k, v)
	Next
	DisplayValue = Record.GetDEfault(DisplayField, "")
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.SetRecord(${BANano.ToJson(Record)})"$)
	End If
End Sub


Sub DELETE_BY(fldName As String, fldValue As String)
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}DELETE_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", fldValue)
	BANano.Await(deleteWhere(PrimaryKey, whereField, ops))
End Sub

'<code>
'BANano.Await(pb.DELETE_BY_STRING("a"))
'</code>
Sub DELETE_BY_STRING(fldName As String, fldValue As String)
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.DELETE_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", fldValue)
	BANano.Await(deleteWhere(PrimaryKey, whereField, ops))
End Sub

Sub DELETE_WHERE
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.DELETE_WHERE"$)
	End If
	BANano.Await(deleteWhere(PrimaryKey, whereField, ops))
End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.ExistsByString("name", "xxx"))
'</code>
Sub ExistsByString(fldName As String, fldValue As Object) As Boolean
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.ExistsByString(${fldName},${fldValue})"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.Exists(${fldName},${fldValue})"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.ExistsWhere(${BANano.ToJson(where)})"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.SELECT_WHERE"$)
	End If
	Dim res As List = BANano.Await(findWhereOrderBy(whereField, ops, orderByL))
	Return res
End Sub

'<code>
'pbComponents.CLEAR_WHERE
'pbComponents.ADD_WHERE_STRING("attractive", "=", "true")
'pbComponents.ADD_ORDER_BY("attrname")
'Dim result As List = BANano.Await(pbComponents.SELECT_WHERE1)
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_WHERE1 As List
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.SELECT_WHERE1"$)
	End If
	result = BANano.Await(findWhereOrderBy(whereField, ops, orderByL))
	lastPosition = -1
	RowCount = result.Size
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

#if javascript
function generateUniqueId(len) {
    const alphabet = "abcdefghijklmnopqrstuvwxyz";
    const alphanumeric = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    const timestamp = Date.now().toString(36); // Convert timestamp to base 36
    const randomChars = Array.from({ length: len - timestamp.length }, () =>
        alphanumeric.charAt(Math.floor(Math.random() * alphanumeric.length))
    ).join("");
    const firstChar = alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    return firstChar + randomChars + timestamp;
}
#End If

'prepare a new record
Sub PrepareRecord
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${mEvent}.PrepareRecord"$)
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
	fld = fld.tolowercase
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
	fld = fld.tolowercase
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
	fld = fld.tolowercase
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
	fld = fld.tolowercase
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
		Log($"SDUI5MySQLRESTNative.${TableName}.deleteWhere(${priKey},${BANano.ToJson(whereMap)},${whereOps})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.deleteWhere. Please execute SchemaAdd?? first to define your table schema!"$)
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
		Log($"SDUI5MySQLRESTNative.${TableName}.findWhere(${BANano.ToJson(whereMap)},${whereOps})"$)
	End If
	Dim res As List = BANano.Await(findWhereOrderBy(whereMap, whereOps, Null))
	Return res
End Sub

'Execute a where clause on the records
'The result is a list with the values.
'<code>
'Dim WhereRecords As List = BANano.Await(pb.findWhereOrderBy(m, array("="), orderBy)
'</code>
Sub findWhereOrderBy(whereMap As Map, whereOps As List, orderBy As List) As List
	If ShowLog Then
		Log($"SDUI5MySQLRESTNative.${TableName}.findWhereOrderBy(${BANano.ToJson(whereMap)},${whereOps},${orderBy})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUI5MySQLRESTNative.findWhereOrderBy. Please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	If UseApiKey Then
		If sApiKey = "" Then
			BANano.Throw($"SDUI5MySQLRESTNative.findWhereOrderBy - The ApiKey has not been specified!"$)
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
	If BANano.IsNull(orderBy) = False Then
		qsort = Join("&", orderBy)
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

	Dim nresult As List
	nresult.Initialize
	'
	'this is a get
	Dim fetch As SDUIFetch
	fetch.Initialize(baseURL)
	If UseApiKey Then fetch.AddHeader("X-API-Key", sApiKey)
	If scommand = "" Then
		fetch.SetURL($"/records/${TableName}"$)
		If ShowLog Then
			Log($"SDUI5MySQLRESTNative.findWhereOrderBy.(${baseURL}/records/${TableName})"$)
		End If
	Else
		fetch.SetURL($"/records/${TableName}?${scommand}"$)
		If ShowLog Then
			Log($"SDUI5MySQLRESTNative.findWhereOrderBy.(${baseURL}/records/${TableName}?${scommand})"$)
		End If
	End If
	fetch.NoCache = True
'	fetch.NoCors = True
	BANano.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		If Response.ContainsKey("records") Then
			nresult = Response.Get("records")
		End If
	End If
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
		Log($"SDUI5MySQLRESTNative.${TableName}.SetRecordAsIs(${BANano.ToJson(Record)})"$)
	End If
End Sub

Sub ADD_ORDER_BY_UPDATED_AT As SDUI5MySQLRESTNative
	ADD_ORDER_BY("updated")
	Return Me
End Sub

Sub ADD_ORDER_BY_CREATED_AT As SDUI5MySQLRESTNative
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
