B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Custom_Ready (e As BANanoEvent)
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
	Private whereField As Map
	Private ops As List
	Private orderByL As List
	Private flds As List
	Public RowCount As Int
	Private lastPosition As Int
	Public Record As Map
	Public result As List
	Private BANano As BANano 'ignore
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
	Public ShowLog As Boolean = False
	Public AutoIncrement As String
	Public SheetID As String = ""
	Public RefreshToken As String = ""
	Public ClientSecret As String = ""
	Public ClientID As String = ""
	'
	Public OPERATOR_CONTAINS As String = "cs"
	Public OPERATOR_STARTSWITH As String = "sw"
	Public OPERATOR_ENDS_WITH As String = "ew"
	Public OPERATOR_EQ As String = "eq"
	Public OPERATOR_NEQ As String = "neq"
	Public OPERATOR_LT As String = "lt"
	Public OPERATOR_LTE As String = "le"
	Public OPERATOR_GTE As String = "ge"
	Public OPERATOR_GT As String = "gt"
	Public OPERATOR_BETWEEN As String = "bt"
	Private sSize As String = ""
	Public ErrorMessage As String = ""
	Public MatchSchema As Boolean
	Public Mode As String
	Public api As BANanoObject
	Private options As Map
	Public CreateIfMissing As Boolean = False
	Private bIsConnected As Boolean
	Type GoogleSortHelper(SortKey As String, Value As Object)
	Private userCount As Int = 1
End Sub

'<code>
''initialize the connection to mysql with a collection to access
'Dim pb As SDUIGoogleSheetsAPI
'pb.Initialize("Users", True, 1)
'pb.SchemaAddText(Array("id", "name"))
'pb.PrimaryKey = "id"
'pb.AutoIncrement = "id"
'</code>
Public Sub Initialize(sSheetName As String, bCreateIfNeeded As Boolean, iUserCount As Int)
	CreateIfMissing = bCreateIfNeeded
	userCount = iUserCount
	TableName = sSheetName
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	Record.Initialize
	lastPosition = -1
	result.Initialize
	PrimaryKey = "id"
	AutoIncrement = ""
	Schema.Initialize
	combineL.Initialize
	ShowLog = False
	SchemaAddText1(PrimaryKey)
	sSize = ""
	MatchSchema = True
	Mode = ""
	options.Initialize 
	CreateIfMissing = False
	bIsConnected = False
	ShowLog = False
End Sub

'Set the iUserCount to 0 to disable all caching for real-time experience.
Sub Connect(sSheetID As String, sClientID As String, sClientSecret As String, sRefreshToken As String)
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.Connect"$)
	End If
	SheetID = sSheetID
	ClientID = sClientID
	ClientSecret = sClientSecret
	RefreshToken = sRefreshToken
	If TableName = "" Then
		BANano.Throw($"SDUIGoogleSheetsAPI.Connect. Please specify the Table/SheetName"$)
		Return
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.Connect. Please execute SchemaAdd?? first to define your table schema!"$)
		Return
	End If
	If SheetID = "" Then
		BANano.Throw($"SDUIGoogleSheetsAPI.Connect. 'SheetID' is not specified!"$)
		Return
	End If
	If RefreshToken = "" Then
		BANano.Throw($"SDUIGoogleSheetsAPI.Connect. 'RefreshToken' is not specified!"$)
		Return
	End If
	If ClientID = "" Then
		BANano.Throw($"SDUIGoogleSheetsAPI.Connect. 'ClientID' is not specified!"$)
		Return
	End If
	If ClientSecret = "" Then
		BANano.Throw($"SDUIGoogleSheetsAPI.Connect. 'ClientSecret' is not specified!"$)
		Return
	End If
	'
	Dim headers As List
	headers.Initialize 
	Dim hCnt As Int = 0
	Dim hTot As Int = Schema.Size - 1
	For hCnt = 0 To hTot
		Dim hKey As String = Schema.GetKeyAt(hCnt)
		headers.Add(hKey)
	Next
	'
	Dim opt As Map = CreateMap()
	opt.Put("name", TableName.tolowercase)
	opt.Put("spreadsheetId", SheetID)
	opt.Put("sheetName", TableName)
	opt.Put("headers", headers)
	opt.Put("createIfMissing", CreateIfMissing)
	opt.Put("refreshToken", RefreshToken)
	opt.Put("clientId", ClientID)
	opt.Put("clientSecret", ClientSecret)
	opt.Put("debug", ShowLog)
	opt.Put("cache", CreateMap())
	PutRecursive(opt, "cache.userCount", userCount)
	PutRecursive(opt, "cache.durationUnit", "minutes")
	
	api.Initialize2("SheetAPI", opt)
	Dim res As Map = BANano.Await(api.RunMethod("init", Null))
	Dim sstatus As String = res.Get("status")
	If sstatus = "success" Then
		bIsConnected = True
	Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.Connect.Error: ${ErrorMessage}"$)
		End If
		bIsConnected = True
	End If
End Sub


'put recursive object to a map
private Sub PutRecursive(data As Map, path As String, value As Object)
	Try
		If BANano.IsNull(path) Or BANano.IsUndefined(path) Then
			path = ""
		End If
		If path = "" Then Return
		Dim prevObj As BANanoObject = data
		If path.IndexOf(".") = -1 Then
			'we dont have a dot
			prevObj.SetField(path, value)
		Else
			'we have a dot
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
				'this does not exist, create it
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
	Catch	'ignore
	End Try	'ignore
End Sub

'get recursive data from a map
private Sub GetRecursive(data As Map, path As String) As Object
	Try
		Dim prevObj As BANanoObject = data
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

'page limit
Sub SetLimit(s As String)
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.SetLimit(${s})"$)
	End If
	sSize = s
End Sub

'prepare for new table definition
Sub SchemaClear As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}SchemaClear"$)
	End If
	Schema.clear
	Return Me
End Sub

'schema add boolean
Sub SchemaAddBoolean(bools As List) As SDUIGoogleSheetsAPI
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	Return Me
End Sub
Sub SchemaAddBoolean1(b As String) As SDUIGoogleSheetsAPI
	Schema.Put(b, DB_BOOL)
	Return Me
End Sub
Sub SchemaAddDouble1(b As String) As SDUIGoogleSheetsAPI
	Schema.Put(b, DB_DOUBLE)
	Return Me
End Sub
'add double fields
Sub SchemaAddDouble(bools As List) As SDUIGoogleSheetsAPI
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	Return Me
End Sub
Sub SchemaAddFloat1(b As String) As SDUIGoogleSheetsAPI
	Schema.Put(b, DB_FLOAT)
	Return Me
End Sub
Sub SchemaAddFloat(bools As List) As SDUIGoogleSheetsAPI
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	Return Me
End Sub
Sub SchemaAddText1(b As String) As SDUIGoogleSheetsAPI
	Schema.Put(b, DB_TEXT)
	Return Me
End Sub
Sub SchemaAddText(bools As List) As SDUIGoogleSheetsAPI
	For Each b As String In bools
		Schema.Put(b, DB_TEXT)
	Next
	Return Me
End Sub

Sub SchemaAddLongText1(b As String) As SDUIGoogleSheetsAPI
	Schema.Put(b, DB_LONGTEXT)
	Return Me
End Sub

Sub SchemaAddLongText(bools As List) As SDUIGoogleSheetsAPI
	For Each b As String In bools
		Schema.Put(b, DB_LONGTEXT)
	Next
	Return Me
End Sub

Sub SchemaAddInt1(b As String) As SDUIGoogleSheetsAPI
	Schema.Put(b, DB_INT)
	Return Me
End Sub
Sub SchemaAddInt(bools As List) As SDUIGoogleSheetsAPI
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


Sub SetSchemaFromDataModel1(sourceTable As String, models As Map)
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${sourceTable}.SetSchemaFromDataModel"$)
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
		Log($"SDUIGoogleSheetsAPI.${TableName}.SetSchemaFromDataModel"$)
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

Sub SchemaAddBlob(bools As List) As SDUIGoogleSheetsAPI
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
	Return Me
End Sub

Sub SchemaAddFile(bools As List) As SDUIGoogleSheetsAPI
	For Each b As String In bools
		Schema.Put(b, DB_FILE)
	Next
	Return Me
End Sub

Sub SchemaAddFile1(b As String) As SDUIGoogleSheetsAPI
	Schema.Put(b, DB_FILE)
	Return Me
End Sub

Sub SchemaAddBlob1(b As String) As SDUIGoogleSheetsAPI
	Schema.Put(b, DB_BLOB)
	Return Me
End Sub

Sub SchemaAddNumber(bools As List) As SDUIGoogleSheetsAPI
	For Each b As String In bools
		Schema.Put(b, DB_NUMBER)
	Next
	Return Me
End Sub

Sub SchemaAddNumber1(b As String) As SDUIGoogleSheetsAPI
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
		Log($"SDUIGoogleSheetsAPI.${TableName}.SELECT_ALL"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.SELECT_ALL. Please execute SchemaAdd?? first to define your table schema!"$)
		Return result
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.SELECT_ALL. Please execute Connect first!"$)
		Return result
	End If
	'
	BuildOptions
	
	Dim res As Map = BANano.Await(api.RunMethod("getAll", options))
	Dim sstatus As String = res.Get("status")
	If sstatus = "success" Then
		result = res.Get("data")
	Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.SELECT_ALL.Error: ${ErrorMessage}"$)
		End If
	End If
	lastPosition = -1
	RowCount = result.size
	Return result
End Sub

private Sub BuildOptions	
	options.Initialize
	'define the fields to return
	If flds.Size > 0 Then
		options.Put("fields", flds)
	End If	'
	
	'define the sort order
	If orderByL.Size > 0 Then
		Dim sortx As List
		sortx.Initialize
		'
		Dim sTot As Int = orderByL.Size - 1
		Dim sCnt As Int = 0
		For sCnt = 0 To sTot
			Dim ssort As String = orderByL.Get(sCnt)
			Dim fld As String = MvField(ssort, 1, "=")
			Dim ordby As String = MvField(ssort, 2, "=")
			Dim ordm As Map = CreateMap()
			ordm.Put("field", fld)
			ordm.Put("direction", ordby)
			sortx.Add(ordm)
		Next
		If sortx.Size > 0 Then options.Put("sort", sortx)
	End If
	'
	'define the filters
	If whereField.Size > 0 Then
		Dim whereis As Map = CreateMap()
		Dim wTot As Int = whereField.Size - 1
		Dim wCnt As Int = 0
		For wCnt = 0 To wTot
			Dim wfld As String = whereField.GetKeyAt(wCnt)
			wfld = MvField(wfld, 1, ".")
			Dim vfld As String = whereField.GetValueAt(wCnt)
			Dim ofld As String = ops.Get(wCnt)
			
			Dim wrec As Map = CreateMap()
			wrec.Put("op", ofld)
			wrec.Put("value", vfld)
			whereis.Put(wfld, wrec)
		Next
		If whereis.Size > 0 Then
			options.Put("filter", whereis)
		End If
	End If
	'define per page
	If sSize <> "" Then
		options.Put("perPage", CInt(sSize))
	End If	
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
		Log($"SDUIGoogleSheetsAPI.${TableName}.CREATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.CREATE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.SELECT_ALL. Please execute Connect first!"$)
		Return ""
	End If
	'
	Dim sid As String = Record.Get(PrimaryKey)
	Dim res As Map = BANano.Await(api.RunMethod("create", Record))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		Return sid
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.CREATE.Error: ${ErrorMessage}"$)
		End If
		Return ""		
	End Select
End Sub


'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE("a"))
'</code>
Sub DELETE(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE. Please execute Connect first!"$)
		Return False
	End If
	
	Dim res As Map = BANano.Await(api.RunMethod("deleteById", id))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		Return True
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE.Error: ${ErrorMessage}"$)
		End If
		Return False
	End Select
End Sub

'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE_MULTIPLE(array("a")))
'</code>
Sub DELETE_MULTIPLE(items As List) As Boolean
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_MULTIPLE()"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_MULTIPLE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_MULTIPLE. Please execute Connect first!"$)
		Return False
	End If
	Dim res As Map = BANano.Await(api.RunMethod("batchDelete", items))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		Return True
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_MULTIPLE.Error: ${ErrorMessage}"$)
		End If
		Return False
	End Select
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
		Log($"SDUIGoogleSheetsAPI.${TableName}.UPDATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.UPDATE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.UPDATE. Please execute Connect first!"$)
		Return ""
	End If
	Dim sid As String = Record.Get(PrimaryKey)
	Dim res As Map = BANano.Await(api.RunMethod("update", Record))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		Return sid
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.UPDATE.Error: ${ErrorMessage}"$)
		End If
		Return ""
	End Select
End Sub

'ensure the query only return the id only
Sub GetAffectedID
	flds.Initialize
	flds.Add("id")
End Sub

'get a value using key
'<code>
'Dim res As Map = BANano.Await(pb.READ(2))
'</code>
Sub READ(id As String) As Map
	Dim m As Map = CreateMap()
	Record = m
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.READ(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.READ. Please execute SchemaAdd?? first to define your table schema!"$)
		Return m
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.READ. Please execute Connect first!"$)
		Return m
	End If
	Dim res As Map = BANano.Await(api.RunMethod("getById", id))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		m = res.Get("data")
		Return m
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.READ.Error: ${ErrorMessage}"$)
		End If
		Return m
	End Select
End Sub

'<code>
'Dim result As Map = BANano.Await(pbComponents.READ_BY("name", "Anele"))
'</code>
Sub READ_BY(fldName As String, fldValue As Object) As Map
	Dim m As Map = CreateMap()
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.READ_BY(${fldName},${fldValue})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.READ_BY. Please execute SchemaAdd?? first to define your table schema!"$)
		Return m
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.READ_BY. Please execute Connect first!"$)
		Return m
	End If
	'
	Dim res As Map = BANano.Await(api.RunMethod("getByField", Array(fldName, fldValue)))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		m = res.Get("data")
		Return m
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.READ_BY.Error: ${ErrorMessage}"$)
			End If
		Return m
	End Select
End Sub

Sub READ_BY_STRING(fldName As String, fldValue As Object) As Map
	Dim m As Map = CreateMap()
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.READ_BY_STRING(${fldName},${fldValue})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.READ_BY_STRING. Please execute SchemaAdd?? first to define your table schema!"$)
		Return m
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.READ_BY_STRING. Please execute Connect first!"$)
		Return m
	End If
	'
	Dim res As Map = BANano.Await(api.RunMethod("getByField", Array(fldName, fldValue)))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		m = res.Get("data")
		Return m
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.READ_BY_STRING.Error: ${ErrorMessage}"$)
		End If
		Return m
	End Select
End Sub

Sub READ_ID_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.READ_ID_BY_STRING(${fldName},${fldValue})"$)
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.READ_ID_BY_STRING. Please execute Connect first!"$)
		Return ""
	End If
	'
	Dim res As Map = BANano.Await(api.RunMethod("getIdByField", Array(fldName, fldValue)))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		Dim sid As String = res.Get("data")
		Return sid
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.READ_ID_BY_STRING.Error: ${ErrorMessage}"$)
		End If
		Return ""
	End Select
End Sub

'Tests whether a key is available in the store.
'<code>
'Dim res as boolean = BANano.Await(pb.ContainsKey(2))
'</code>
Sub ContainsKey(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.ContainsKey(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.ContainsKey. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.ContainsKey. Please execute Connect first!"$)
		Return False
	End If
	Dim res As Map = BANano.Await(api.RunMethod("recordExists", Array(id)))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		Dim bx As Boolean = res.Get("data")
		bx = CBool(bx)
		Return bx
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.Contains.Error: ${ErrorMessage}"$)
		End If
		Return False
	End Select
End Sub


'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE_ALL)
'</code>
Sub DELETE_ALL As Boolean
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_ALL"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_ALL. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_ALL. Please execute Connect first!"$)
		Return False
	End If
	Dim res As Map = BANano.Await(api.RunMethod("deleteAll", Null))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		Return True
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_ALL.Error: ${ErrorMessage}"$)
		End If
		Return False
	End Select
End Sub

'get keyvalues for combos etc
'<code>
'Dim mExpenseCategories As Map = banano.Await(pb.GetKeyValues(True, "id", "name"))
'</code>
'Sub GetKeyValues(bHasNothing As Boolean, k As String, v As String) As Map
'	If ShowLog Then
'		Log($"SDUIGoogleSheetsAPI.${TableName}.GetKeyValues(${bHasNothing},${k},${v})"$)
'	End If
'	Dim mx As Map = CreateMap()
'	If bHasNothing Then
'		mx.Put("", "-- Nothing Selected --")
'	End If
'	CLEAR_WHERE
'	ADD_FIELD(k)
'	ADD_FIELD(v)
'	ADD_ORDER_BY(v)
'	result = BANano.Await(SELECT_WHERE)
'	For Each row As Map In result
'		Dim f1 As String = row.get(k)
'		Dim f2 As String = row.get(v)
'		mx.Put(f1, f2)
'	Next
'	Return mx
'End Sub

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

Sub READ_ID_BY(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.READ_ID_BY(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	Return sid
End Sub

Sub GET_ID_BY_FIELD(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.GET_ID_BY_FIELD(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	Return sid
End Sub

Sub UPDATE_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.UPDATE_BY_STRING(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	If sid = "" Then Return ""
	Record.Put(PrimaryKey, sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
End Sub

Sub UPDATE_BY(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.UPDATE_BY(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	If sid = "" Then Return ""
	Record.Put(PrimaryKey, sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
End Sub

'to delete the file set the fldValue = null
Sub SetField(fldName As String, fldValue As Object) As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.SetField(${fldName}, ${fldValue})"$)
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
		Log($"SDUIGoogleSheetsAPI.${TableName}.RemoveField(${fldName})"$)
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
Sub CLEAR_WHERE As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.CLEAR_WHERE"$)
	End If
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	combineL.Initialize
	Return Me
End Sub

Sub Reset As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.Reset"$)
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
	sSize = ""
	Return Me
End Sub

Sub ADD_FIELD(fld As String) As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.ADD_FIELD(${fld})"$)
	End If
	flds.Add(fld)
	Return Me
End Sub

Sub ADD_FIELDS(fields As List) As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.ADD_FIELDS(${BANano.ToJson(fields)})"$)
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
Sub ADD_WHERE(fld As String, operator As String, value As Object) As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.ADD_WHERE(${fld},${operator},${value})"$)
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

Sub ADD_WHERE_STRING(fld As String, operator As String, value As Object) As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.ADD_WHERE_STRING(${fld},${operator},${value})"$)
	End If
	ADD_WHERE(fld, operator, value)
	Return Me
End Sub

'change the selection at position from AND to OR
Sub WHERE_OR(pos As Int) As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.WHERE_OR(${pos})"$)
	End If
	combineL.Set(pos, "2")
	Return Me
End Sub

'change the selection at position to AND
Sub WHERE_AND(pos As Int) As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.WHERE_AND(${pos})"$)
	End If
	combineL.Set(pos, "")
	Return Me
End Sub

'add a sort field
Sub ADD_ORDER_BY(fld As String) As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.ADD_ORDER_BY(${fld})"$)
	End If
	orderByL.Add($"${fld}=asc"$)
	Return Me
End Sub

Sub ADD_ORDER_BY_DESC(fld As String) As SDUIGoogleSheetsAPI
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.ADD_ORDER_BY_DESC(${fld})"$)
	End If
	orderByL.Add($"${fld}=desc"$)
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
		Log($"SDUIGoogleSheetsAPI.${TableName}.NextRow(${lastPosition}/${realSize})"$)
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
		Log($"SDUIGoogleSheetsAPI.${TableName}.SetRecord(${BANano.ToJson(Record)})"$)
	End If
End Sub


Sub DELETE_BY(fldName As String, fldValue As String) As Boolean
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_BY"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_BY. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_BY. Please execute Connect first!"$)
		Return False
	End If
	Dim res As Map = BANano.Await(api.RunMethod("deleteBy", Array(fldName, fldValue)))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		Return True
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_BY.Error: ${ErrorMessage}"$)
			End If
		Return False
	End Select
End Sub

'<code>
'BANano.Await(pb.DELETE_BY_STRING("a"))
'</code>
Sub DELETE_BY_STRING(fldName As String, fldValue As String) As Boolean
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_BY_STRING"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_BY_STRING. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_BY_STRING. Please execute Connect first!"$)
		Return False
	End If
	Dim res As Map = BANano.Await(api.RunMethod("deleteBy", Array(fldName, fldValue)))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
		Case "success"
			Return True
		Case Else
			ErrorMessage = res.Get("error")
			If ShowLog Then
				Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_BY_STRING.Error: ${ErrorMessage}"$)
			End If
			Return False
	End Select
End Sub

Sub DELETE_WHERE As Boolean
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_WHERE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_WHERE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.DELETE_WHERE. Please execute Connect first!"$)
		Return False
	End If
	flds.Initialize 
	flds.Add("id")
	orderByL.Initialize 
	Dim records As List = BANano.Await(SELECT_WHERE)
	Dim idnumbers As List = BANano.Await(ListOfMapsGetProperty(records, "id"))
	Dim res As Map = BANano.Await(api.RunMethod("batchDelete", idnumbers))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		Return True
		Case Else
			ErrorMessage = res.Get("error")
			If ShowLog Then
				Log($"SDUIGoogleSheetsAPI.${TableName}.DELETE_WHERE.Error: ${ErrorMessage}"$)
			End If
		Return False
	End Select
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
	Dim res As List
	res.Initialize 
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.SELECT_WHERE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.SELECT_WHERE. Please execute SchemaAdd?? first to define your table schema!"$)
		Return res
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.SELECT_WHERE. Please execute Connect first!"$)
		Return res
	End If
	'
	BuildOptions
	Dim res1 As Map = BANano.Await(api.RunMethod("getAll", options))
	Dim sstatus As String = res.Get("status")
	If sstatus = "success" Then
		res = res1.Get("data")
	Else
		ErrorMessage = res1.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.SELECT_WHERE.Error: ${ErrorMessage}"$)
		End If
	End If
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
	result.Initialize
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.SELECT_WHERE1"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.SELECT_WHERE1. Please execute SchemaAdd?? first to define your table schema!"$)
		Return result
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.SELECT_WHERE1. Please execute Connect first!"$)
		Return result
	End If
	'
	BuildOptions
	Dim res As Map = BANano.Await(api.RunMethod("getAll", options))
	Dim sstatus As String = res.Get("status")
	If sstatus = "success" Then
		result = res.Get("data")
	Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.SELECT_WHERE1.Error: ${ErrorMessage}"$)
		End If
	End If
	lastPosition = -1
	RowCount = result.size
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
		Log($"SDUIGoogleSheetsAPI.${TableName}.PrepareRecord"$)
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
		Log($"SDUIGoogleSheetsAPI.${TableName}.SetRecordAsIs(${BANano.ToJson(Record)})"$)
	End If
End Sub

Sub ADD_ORDER_BY_UPDATED_AT As SDUIGoogleSheetsAPI
	ADD_ORDER_BY("updated")
	Return Me
End Sub

Sub ADD_ORDER_BY_CREATED_AT As SDUIGoogleSheetsAPI
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
	If ShowLog Then
		Log($"SDUIGoogleSheetsAPI.${TableName}.COUNT_ALL"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIGoogleSheetsAPI.COUNT_ALL. Please execute SchemaAdd?? first to define your table schema!"$)
		Return 0
	End If
	If bIsConnected = False Then
		BANano.Throw($"SDUIGoogleSheetsAPI.COUNT_ALL. Please execute Connect first!"$)
		Return 0
	End If
	Dim res As Map = BANano.Await(api.RunMethod("rowCount", Null))
	Dim sstatus As String = res.Get("status")
	Select Case sstatus
	Case "success"
		RowCount = res.Get("data")
		RowCount = CInt(RowCount)
		Return RowCount
	Case Else
		ErrorMessage = res.Get("error")
		If ShowLog Then
			Log($"SDUIGoogleSheetsAPI.${TableName}.COUNT_ALL.Error: ${ErrorMessage}"$)
		End If
		Return 0
	End Select
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

'execute a select where and group by cal
'<code>
''group by gender, count records per gender and order output by gender
''this executes a SELECT_WHERE where internally
'BANano.Await(db.GroupBy(Array("gender"), Array("count|*|records"), Array("gender|asc")))
'</code>
Sub GroupBy(groupFields() As String, aggDefs() As String, orderDefs() As String)
	'execute a select where
	BANano.Await(SELECT_WHERE)
	If RowCount = 0 Then Return
	' -----------------------------
	' STEP 0: Initialize groups container
	' -----------------------------
	Dim groups As Map
	groups.Initialize

	' -----------------------------
	' STEP 1: GROUP RECORDS
	' -----------------------------
	For Each rec As Map In result
		' Build composite key from group fields
		Dim keyParts As List
		keyParts.Initialize
		For Each gf As String In groupFields
			Dim gvalue As Object = rec.GetDefault(gf, "")
			keyParts.Add(gvalue)
		Next
		Dim groupKey As String = BANano.Join(keyParts, "|")

		' Initialize group if it does not exist
		If groups.ContainsKey(groupKey) = False Then
			Dim gmap As Map
			gmap.Initialize
			Dim recList As List
			recList.Initialize
			gmap.Put("_records_list", recList)
			groups.Put(groupKey, gmap)
		End If

		' Add record to the group
		Dim gmap As Map = groups.Get(groupKey)
		Dim recList As List = gmap.Get("_records_list")
		recList.Add(rec)
	Next

	' -----------------------------
	' STEP 2: INITIALIZE AGGREGATION KEYS
	' -----------------------------
	For Each gk As String In groups.Keys
		Dim gmap As Map = groups.Get(gk)
		For Each def As String In aggDefs
			Dim parts() As String = BANano.Split("|", def)
			Dim func As String = parts(0).ToLowerCase
			Dim field As String = ""
			If parts.Length > 1 Then field = parts(1)
			If func = "count" Then field = "*"
			Dim internalKey As String = func & "_" & field

			Select func
				Case "count"
					gmap.Put(internalKey, 0)
				Case "sum"
					gmap.Put("sum_" & field, 0)
				Case "avg"
					gmap.Put("sumx_" & field, 0)
					gmap.Put("countx_" & field, 0)
				Case "min", "max"
					gmap.Put(internalKey, Null)
			End Select
		Next
	Next

	' -----------------------------
	' STEP 3: PROCESS AGGREGATIONS
	' -----------------------------
	For Each gk As String In groups.Keys
		Dim gmap As Map = groups.Get(gk)
		Dim recList As List = gmap.Get("_records_list")

		For Each r As Map In recList
			For Each def As String In aggDefs
				Dim parts() As String = BANano.Split("|", def)
				Dim func As String = parts(0).ToLowerCase
				Dim field As String = ""
				Dim alias As String = ""
				Dim condition As String = ""
				If parts.Length > 1 Then field = parts(1)
				If func = "count" Then field = "*"
				If parts.Length > 2 Then alias = parts(2)
				If parts.Length > 3 Then condition = parts(3)

				' Skip record if condition fails
				If condition <> "" Then
					If EvaluateCondition(r, condition) = False Then Continue
				End If

				' Determine numeric value if needed
				Dim numVal As Double = 0
				If field <> "*" Then
					Dim rawVal As Object = r.GetDefault(field, 0)
					numVal = BANano.parseFloat(rawVal)
				End If

				' Perform aggregation
				Select func
					Case "count"
						Dim cvalue As Int = gmap.GetDefault("count_*", 0)
						cvalue = BANano.parseInt(cvalue) + 1
						gmap.Put("count_*", cvalue)

					Case "sum"
						Dim svalue As Double = gmap.GetDefault("sum_" & field, 0)
						svalue = BANano.parseFloat(svalue) + numVal
						gmap.Put("sum_" & field, svalue)

					Case "avg"
						Dim svalue As Double = gmap.GetDefault("sumx_" & field, 0)
						svalue = BANano.parseFloat(svalue) + numVal
						gmap.Put("sumx_" & field, svalue)
						Dim cvalue As Int = gmap.GetDefault("countx_" & field, 0)
						cvalue = BANano.parseInt(cvalue) + 1
						gmap.Put("countx_" & field, cvalue)

					Case "min"
						Dim currentMin As Object = gmap.Get("min_" & field)
						If currentMin = Null Or numVal < BANano.parseFloat(currentMin) Then gmap.Put("min_" & field, numVal)

					Case "max"
						Dim currentMax As Object = gmap.Get("max_" & field)
						If currentMax = Null Or numVal > BANano.parseFloat(currentMax) Then gmap.Put("max_" & field, numVal)
				End Select
			Next
		Next
	Next

	' -----------------------------
	' STEP 4: BUILD FINAL RESULTS
	' -----------------------------
	Dim results As List
	results.Initialize

	For Each gk As String In groups.Keys
		Dim gmap As Map = groups.Get(gk)
		Dim out As Map
		out.Initialize

		' Add group fields
		Dim keyParts2() As String = BANano.Split("|", gk)
		For i = 0 To groupFields.Length - 1
			out.Put(groupFields(i), keyParts2(i))
		Next

		' Add aggregations
		For Each def As String In aggDefs
			Dim parts() As String = BANano.Split("|", def)
			Dim func As String = parts(0).ToLowerCase
			Dim field As String = ""
			Dim alias As String = ""
			If parts.Length > 1 Then field = parts(1)
			If func = "count" Then field = "*"
			If parts.Length > 2 Then alias = parts(2)
			If alias = "" Then alias = func & "_" & field

			Select func
				Case "count"
					Dim cval As Int = gmap.GetDefault("count_*", 0)
					out.Put(alias, BANano.parseInt(cval))
				Case "sum"
					Dim sval As Double = gmap.GetDefault("sum_" & field, 0)
					out.Put(alias, BANano.parseFloat(sval))
				Case "avg"
					Dim sumVal As Double = gmap.GetDefault("sumx_" & field, 0)
					Dim countVal As Double = gmap.GetDefault("countx_" & field, 0)
					Dim avgVal As Double = 0
					If BANano.parseFloat(countVal) > 0 Then avgVal = BANano.parseFloat(sumVal) / BANano.parseFloat(countVal)
					out.Put(alias, avgVal)
				Case "min"
					Dim minVal As Double = gmap.GetDefault("min_" & field, 0)
					out.Put(alias, BANano.parseFloat(minVal))
				Case "max"
					Dim maxVal As Double = gmap.GetDefault("max_" & field, 0)
					out.Put(alias, BANano.parseFloat(maxVal))
			End Select
		Next

		results.Add(out)
	Next

	' -----------------------------
	' STEP 5: SORT RESULTS
	' -----------------------------
	If orderDefs <> Null And orderDefs.Length > 0 Then
		For i = orderDefs.Length - 1 To 0 Step -1
			Dim od As String = orderDefs(i)
			Dim p() As String = BANano.Split("|", od)
			Dim fld As String = p(0)
			Dim dir As String = "asc"
			If p.Length > 1 Then dir = p(1).ToLowerCase
			Dim res As List = ListOfMapsSort(results, fld, dir = "asc")
			results = BANano.DeepClone(res)
		Next
	End If
	BANano.Await(SetRecords(results))
End Sub

Sub SetRecords(lst As List)
	lastPosition = -1
	RowCount = lst.Size
	result = BANano.DeepClone(lst)
End Sub

private Sub ListOfMapsSort(lst As List, xorderBy As String, ascdesc As Boolean) As List
	Dim xFields As List
	xFields.Initialize
	For Each fldm As Map In lst
		Dim sname As String = fldm.Get(xorderBy)
		Dim sh As GoogleSortHelper
		sh.Initialize
		sh.SortKey = sname
		sh.Value = fldm
		xFields.Add(sh)
	Next
	xFields.SortType("sortkey", ascdesc)
	Dim sorted As List
	sorted.Initialize
	For Each sh As GoogleSortHelper In xFields
		sorted.Add(sh.Value)
	Next
	Return sorted
End Sub

private Sub EvaluateCondition(rec As Map, condition As String) As Boolean
	' Default result is True
	Dim xresult As Boolean = True

	' Split multiple conditions by comma
	Dim conds() As String = BANano.Split(",", condition)

	' Evaluate each condition
	For Each c As String In conds
		Dim cond As String = c.Trim  ' Remove leading/trailing spaces

		' Skip empty conditions
		If cond = "" Then Continue

		' Supported operators (order matters: >=, <= first)
		Dim operators() As String = Array("!=", ">=", "<=", "=", "<", ">")
		Dim op As String = ""
		Dim left As String = ""
		Dim right As String = ""

		' Detect operator
		For Each o As String In operators
			If cond.IndexOf(o) >= 0 Then
				op = o
				Dim parts() As String = BANano.Split(op, cond)
				left = parts(0).Trim
				right = parts(1).Trim
				Exit
			End If
		Next

		' Skip if no operator found
		If op = "" Then Continue

		' Get field value from record
		Dim fval As Object = rec.GetDefault(left, Null)

		' Try numeric comparison
		Dim numF As Double = 0
		Dim numR As Double = 0
		Dim isNum As Boolean = True
		Try
			numF = BANano.parseFloat(fval)
			numR = BANano.parseFloat(right)
		Catch
			isNum = False
		End Try

		' Evaluate condition using Select Case
		Dim condResult As Boolean = True
		Select Case op
			Case "="
				If isNum Then
					condResult = (numF = numR)
				Else
					condResult = ("" & fval = right)
				End If
			Case "!="
				If isNum Then
					condResult = (numF <> numR)
				Else
					condResult = ("" & fval <> right)
				End If
			Case "<"
				condResult = (numF < numR)
			Case "<="
				condResult = (numF <= numR)
			Case ">"
				condResult = (numF > numR)
			Case ">="
				condResult = (numF >= numR)
		End Select

		' If any condition fails, return False immediately
		If condResult = False Then
			xresult = False
			Exit
		End If
	Next

	Return xresult
End Sub

Sub whereLessThanEqualTo(fldName As String, fldValue As Object) As SDUIGoogleSheetsAPI
	ADD_WHERE(fldName, "<=", fldValue)
	Return Me
End Sub

Sub whereLessThan(fldName As String, fldValue As Object) As SDUIGoogleSheetsAPI
	ADD_WHERE(fldName, "<", fldValue)
	Return Me
End Sub

Sub whereBetween(fldName As String, fldStart As Object, fldEnd As Object) As SDUIGoogleSheetsAPI
	ADD_WHERE(fldName, "bt", $"${fldStart},${fldEnd}"$)
	Return Me
End Sub

Sub whereNotEqual(fldName As String, fldValue As Object) As SDUIGoogleSheetsAPI
	ADD_WHERE(fldName, "<>", fldValue)
	Return Me
End Sub


Sub orderBy(fldNames As List) As SDUIGoogleSheetsAPI
	For Each k As String In fldNames
		ADD_ORDER_BY(k)
	Next
	Return Me
End Sub

Sub orderByDesc(fldNames As List) As SDUIGoogleSheetsAPI
	For Each k As String In fldNames
		ADD_ORDER_BY_DESC(k)
	Next
	Return Me
End Sub

'this executes a clear_where first
Sub selectFields(fldNames As List) As SDUIGoogleSheetsAPI
	CLEAR_WHERE
	ADD_FIELDS(fldNames)
	Return Me
End Sub

Sub whereEqual(fldName As String, fldValue As Object) As SDUIGoogleSheetsAPI
	ADD_WHERE(fldName, "=", fldValue)
	Return Me
End Sub

Sub whereGreaterThan(fldName As String, fldValue As Object) As SDUIGoogleSheetsAPI
	ADD_WHERE(fldName, ">", fldValue)
	Return Me
End Sub

Sub whereGreaterThanEqualTo(fldName As String, fldValue As Object) As SDUIGoogleSheetsAPI
	ADD_WHERE(fldName, ">=", fldValue)
	Return Me
End Sub

Sub whereLike(fldName As String, fldValue As Object) As SDUIGoogleSheetsAPI
	ADD_WHERE(fldName, "cs", fldValue)
	Return Me
End Sub

Sub SetNextID
	Dim nid As String = NextID
	SetField("id", nid)
End Sub

'execute a select where and group by cal
'<code>
''group by gender, count records per gender and order output by gender
'BANano.Await(db.GroupListBy(records, Array("gender"), Array("count|*|records"), Array("gender|asc")))
'</code>
Sub GroupListBy(nList As List, groupFields() As String, aggDefs() As String, orderDefs() As String)
	BANano.Await(SetRecords(nList))
	If RowCount = 0 Then Return
	' -----------------------------
	' STEP 0: Initialize groups container
	' -----------------------------
	Dim groups As Map
	groups.Initialize

	' -----------------------------
	' STEP 1: GROUP RECORDS
	' -----------------------------
	For Each rec As Map In result
		' Build composite key from group fields
		Dim keyParts As List
		keyParts.Initialize
		For Each gf As String In groupFields
			Dim gvalue As Object = rec.GetDefault(gf, "")
			keyParts.Add(gvalue)
		Next
		Dim groupKey As String = BANano.Join(keyParts, "|")

		' Initialize group if it does not exist
		If groups.ContainsKey(groupKey) = False Then
			Dim gmap As Map
			gmap.Initialize
			Dim recList As List
			recList.Initialize
			gmap.Put("_records_list", recList)
			groups.Put(groupKey, gmap)
		End If

		' Add record to the group
		Dim gmap As Map = groups.Get(groupKey)
		Dim recList As List = gmap.Get("_records_list")
		recList.Add(rec)
	Next

	' -----------------------------
	' STEP 2: INITIALIZE AGGREGATION KEYS
	' -----------------------------
	For Each gk As String In groups.Keys
		Dim gmap As Map = groups.Get(gk)
		For Each def As String In aggDefs
			Dim parts() As String = BANano.Split("|", def)
			Dim func As String = parts(0).ToLowerCase
			Dim field As String = ""
			If parts.Length > 1 Then field = parts(1)
			If func = "count" Then field = "*"
			Dim internalKey As String = func & "_" & field

			Select func
				Case "count"
					gmap.Put(internalKey, 0)
				Case "sum"
					gmap.Put("sum_" & field, 0)
				Case "avg"
					gmap.Put("sumx_" & field, 0)
					gmap.Put("countx_" & field, 0)
				Case "min", "max"
					gmap.Put(internalKey, Null)
			End Select
		Next
	Next

	' -----------------------------
	' STEP 3: PROCESS AGGREGATIONS
	' -----------------------------
	For Each gk As String In groups.Keys
		Dim gmap As Map = groups.Get(gk)
		Dim recList As List = gmap.Get("_records_list")

		For Each r As Map In recList
			For Each def As String In aggDefs
				Dim parts() As String = BANano.Split("|", def)
				Dim func As String = parts(0).ToLowerCase
				Dim field As String = ""
				Dim alias As String = ""
				Dim condition As String = ""
				If parts.Length > 1 Then field = parts(1)
				If func = "count" Then field = "*"
				If parts.Length > 2 Then alias = parts(2)
				If parts.Length > 3 Then condition = parts(3)

				' Skip record if condition fails
				If condition <> "" Then
					If EvaluateCondition(r, condition) = False Then Continue
				End If

				' Determine numeric value if needed
				Dim numVal As Double = 0
				If field <> "*" Then
					Dim rawVal As Object = r.GetDefault(field, 0)
					numVal = BANano.parseFloat(rawVal)
				End If

				' Perform aggregation
				Select func
					Case "count"
						Dim cvalue As Int = gmap.GetDefault("count_*", 0)
						cvalue = BANano.parseInt(cvalue) + 1
						gmap.Put("count_*", cvalue)

					Case "sum"
						Dim svalue As Double = gmap.GetDefault("sum_" & field, 0)
						svalue = BANano.parseFloat(svalue) + numVal
						gmap.Put("sum_" & field, svalue)

					Case "avg"
						Dim svalue As Double = gmap.GetDefault("sumx_" & field, 0)
						svalue = BANano.parseFloat(svalue) + numVal
						gmap.Put("sumx_" & field, svalue)
						Dim cvalue As Int = gmap.GetDefault("countx_" & field, 0)
						cvalue = BANano.parseInt(cvalue) + 1
						gmap.Put("countx_" & field, cvalue)

					Case "min"
						Dim currentMin As Object = gmap.Get("min_" & field)
						If currentMin = Null Or numVal < BANano.parseFloat(currentMin) Then gmap.Put("min_" & field, numVal)

					Case "max"
						Dim currentMax As Object = gmap.Get("max_" & field)
						If currentMax = Null Or numVal > BANano.parseFloat(currentMax) Then gmap.Put("max_" & field, numVal)
				End Select
			Next
		Next
	Next

	' -----------------------------
	' STEP 4: BUILD FINAL RESULTS
	' -----------------------------
	Dim results As List
	results.Initialize

	For Each gk As String In groups.Keys
		Dim gmap As Map = groups.Get(gk)
		Dim out As Map
		out.Initialize

		' Add group fields
		Dim keyParts2() As String = BANano.Split("|", gk)
		For i = 0 To groupFields.Length - 1
			out.Put(groupFields(i), keyParts2(i))
		Next

		' Add aggregations
		For Each def As String In aggDefs
			Dim parts() As String = BANano.Split("|", def)
			Dim func As String = parts(0).ToLowerCase
			Dim field As String = ""
			Dim alias As String = ""
			If parts.Length > 1 Then field = parts(1)
			If func = "count" Then field = "*"
			If parts.Length > 2 Then alias = parts(2)
			If alias = "" Then alias = func & "_" & field

			Select func
				Case "count"
					Dim cval As Int = gmap.GetDefault("count_*", 0)
					out.Put(alias, BANano.parseInt(cval))
				Case "sum"
					Dim sval As Double = gmap.GetDefault("sum_" & field, 0)
					out.Put(alias, BANano.parseFloat(sval))
				Case "avg"
					Dim sumVal As Double = gmap.GetDefault("sumx_" & field, 0)
					Dim countVal As Double = gmap.GetDefault("countx_" & field, 0)
					Dim avgVal As Double = 0
					If BANano.parseFloat(countVal) > 0 Then avgVal = BANano.parseFloat(sumVal) / BANano.parseFloat(countVal)
					out.Put(alias, avgVal)
				Case "min"
					Dim minVal As Double = gmap.GetDefault("min_" & field, 0)
					out.Put(alias, BANano.parseFloat(minVal))
				Case "max"
					Dim maxVal As Double = gmap.GetDefault("max_" & field, 0)
					out.Put(alias, BANano.parseFloat(maxVal))
			End Select
		Next

		results.Add(out)
	Next

	' -----------------------------
	' STEP 5: SORT RESULTS
	' -----------------------------
	If orderDefs <> Null And orderDefs.Length > 0 Then
		For i = orderDefs.Length - 1 To 0 Step -1
			Dim od As String = orderDefs(i)
			Dim p() As String = BANano.Split("|", od)
			Dim fld As String = p(0)
			Dim dir As String = "asc"
			If p.Length > 1 Then dir = p(1).ToLowerCase
			Dim res As List = ListOfMapsSort(results, fld, dir = "asc")
			results = BANano.DeepClone(res)
		Next
	End If
	BANano.Await(SetRecords(results))
End Sub