B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.8
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Connect (data As Map)
#Event: Disconnect (data As Map)
#Event: ConnectError (data As Map)
#Event: RealTime (data As Map)
#Event: Changes (e As Map)
#Event: Change (Action As String, Record As Map, TableName As String)
#Event: AuthChange (Token As String, Model As Map)
#Event: BeforeSend (url As object, options As Object)
#Event: AfterSend (response As Object, data As Object)
'https://pocketbase.io/old/
'https://pocketbase.io/v023upgrade/jsvm/

Private Sub Class_Globals
	Public const DB_BOOL As String = "BOOL"
	Public const DB_INT As String = "INT"
	Public const DB_FILE As String = "FILE"
	Public const DB_STRING As String = "STRING"
	Public const DB_REAL As String = "REAL"
	Public const DB_BLOB As String = "FILE"
	Public const DB_FLOAT As String = "FLOAT"
	Public const DB_INTEGER As String = "INTEGER"
	Public const DB_TEXT As String = "TEXT"
	Public const DB_LONGTEXT As String = "TEXT"
	Public const DB_DOUBLE As String = "DOUBLE"
	Public const DB_NUMBER As String = "NUMBER"
	Public const DB_RELATION As String = "RELATION"
	Public const DB_JSON As String = "JSON"
	Public const DB_DATE As String = "DATE"
	'
	Public UseAPIKey As Boolean
	Private mCallBack As Object			'ignore
	Private baseURL As String
	Private whereField As Map
	Private ops As List
	Private expand As List
	Private orderByL As List
	Private flds As List
	Public RowCount As Int
	Private lastPosition As Int
	Public Record As Map
	Public result As List
	Private BANano As BANano 'ignore
	Public Success As Boolean
	Public client As BANanoObject
	Private mEvent As String
	Private sTableName As String
	Public Tag As Object
	Public Schema As Map
	Public PrimaryKey As String = "id"
	Public DisplayField As String
	Public Singular As String
	Public Plural As String
	Public DisplayValue As String
	Public UserProfile As profileType
	Private formData As BANanoObject
	Public IsAuthenticated As Boolean
	Private combineL As List
	Public ShowLog As Boolean
	Public Operations As List
	Private sApiKey As String = ""	'ignore
	Public UsersCollectionName As String = "users"
	Public skipTotal As Boolean = True
	Public batchSize As Int = 50
	Public Upgrade As Boolean = False
	Private headers As Map
	Private batchObject As BANanoObject
	Private bNoCache As Boolean = False
	Private fileFields As Map
	Public ListRule As String
	Public ViewRule As String
	Public CreateRule As String
	Public UpdateRule As String
	Public DeleteRule As String
	Private idxNames As Map
	Private uniqueIdxNames As Map
	Public MatchSchema As Boolean
	Public CountRecords As Boolean
	Private grpBy As List
	Public UserRecord As Map
	Public UserToken As String
	Public UserModel As Map
	Public UserValid As Boolean
	Public GetFiles As Boolean
	Private ownFilter As List
End Sub

'<code>
''initialize the connection to pocketbase with a collection to access
'pb.Initialize(Me, "pb", "http://127.0.0.1:8090", "projects")
'pb.SchemaAddText(Array("id", "name"))
'</code>
Public Sub Initialize(Module As Object, eventName As String, url As String, TableName As String) As SDUIPocketBase
	If BANano.AssetsIsDefined("PocketBase") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesPocketBase)' should be added!"$)
		Return Me
	End If
	BANano.DependsOnAsset("pocketbase.umd.js")
	sTableName = TableName
	mCallBack = Module
	skipTotal = True
	baseURL = url
	whereField.Initialize
	ops.Initialize
	expand.Initialize
	orderByL.Initialize
	flds.Initialize
	Record.Initialize
	lastPosition = -1
	result.Initialize
	mEvent = eventName
	PrimaryKey = "id"
	Schema.Initialize
	client.Initialize2("PocketBase", baseURL)
	SchemaAddText1("id")
	fileFields.Initialize
	combineL.Initialize
	ShowLog = False
	batchSize = 50
	Upgrade = False
	headers.Initialize
	bNoCache = False
	ListRule = ""
	ViewRule =""
	CreateRule = ""
	UpdateRule = ""
	DeleteRule = ""
	idxNames.Initialize
	uniqueIdxNames.Initialize
	setNoCache(bNoCache)
	MatchSchema = True
	PrepareSubs(Module, eventName)
	CountRecords = False
	grpBy.Initialize
	UserToken = ""
	UserModel = CreateMap()
	UserValid = False
	GetFiles = False
	ownFilter.Initialize 
	Return Me
End Sub

'<code>
''initialize the connection to pocketbase with a collection to access
'Dim client As BANAnoObject = App.OpenPocketBase(urL)
'pb.InitializeOnConnection(Me, client, "pb", "http://127.0.0.1:8090", "projects")
'pb.SchemaAddText(Array("id", "name"))
'</code>
Public Sub InitializeOnConnection(Module As Object, connection As BANanoObject, eventName As String, url As String, TableName As String) As SDUIPocketBase
	sTableName = TableName
	mCallBack = Module
	skipTotal = True
	baseURL = url
	whereField.Initialize
	ops.Initialize
	expand.Initialize
	orderByL.Initialize
	flds.Initialize
	Record.Initialize
	lastPosition = -1
	result.Initialize
	mEvent = eventName
	PrimaryKey = "id"
	Schema.Initialize
	client = connection
	SchemaAddText1("id")
	fileFields.Initialize
	combineL.Initialize
	ShowLog = False
	batchSize = 50
	Upgrade = False
	headers.Initialize
	bNoCache = False
	ListRule = ""
	ViewRule =""
	CreateRule = ""
	UpdateRule = ""
	DeleteRule = ""
	idxNames.Initialize
	uniqueIdxNames.Initialize
	setNoCache(bNoCache)
	MatchSchema = True
	PrepareSubs(Module, eventName)
	CountRecords = False
	grpBy.Initialize
	UserToken = ""
	UserModel = CreateMap()
	UserValid = False
	GetFiles = False
	ownFilter.Initialize 
	Return Me
End Sub

Sub AddFilter(fltr As String)
	fltr = fltr.Trim
	If fltr <> "" Then ownFilter.Add(fltr)
End Sub

Sub ClearHeaders
	headers.Initialize 
End Sub

Private Sub PrepareSubs(Module As Object, eventName As String)
	If SubExists(Module, $"${eventName}_AuthChange"$) Then
		Dim stoken As String
		Dim smodel As Object
		Dim aCB As BANanoObject = BANano.CallBack(Module, $"${eventName}_AuthChange"$, Array(stoken, smodel))
		client.GetField("authStore").RunMethod("onChange", aCB)
	End If
	'
	If SubExists(Module, $"${eventName}_beforesend"$) Then
		Dim ourl As Object
		Dim ooptions As Object
		Dim cbBeforeSend As BANanoObject = BANano.CallBack(Module, $"${eventName}_beforesend"$, Array(ourl, ooptions))
		client.SetField("beforeSend", cbBeforeSend)
	End If
	'
	If SubExists(Module, $"${eventName}_aftersend"$) Then
		Dim oresponse As Object
		Dim odata As Object
		Dim cbAfterSend As BANanoObject = BANano.CallBack(Module, $"${eventName}_aftersend"$, Array(oresponse, odata))
		client.SetField("afterSend", cbAfterSend)
	End If
	'
	If SubExists(Module, $"${eventName}_Connect"$) Then
		Dim e As Map
		Dim cb As BANanoObject = BANano.CallBack(Module, $"${mEvent}_Connect"$, Array(e))
		client.GetField("realtime").RunMethod("subscribe", Array("PB_CONNECT", cb))
	End If
	'
	If SubExists(Module, $"${eventName}_Disconnect"$) Then
		Dim e As Map
		Dim cb As BANanoObject = BANano.CallBack(Module, $"${mEvent}_Disconnect"$, Array(e))
		client.GetField("realtime").RunMethod("subscribe", Array("PB_DISCONNECT", cb))
	End If
	'
	If SubExists(Module, $"${eventName}_ConnectionError"$) Then
		Dim e As Map
		Dim cb As BANanoObject = BANano.CallBack(Module, $"${mEvent}_ConnectionError"$, Array(e))
		client.GetField("realtime").RunMethod("subscribe", Array("PB_ERROR", cb))
	End If
End Sub

'required
Sub setApiKey(s As String)
	sApiKey = s
End Sub

Sub CancelAllRequests As BANanoPromise
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.CancelAllRequests"$)
	End If
	Return client.RunMethod("cancelAllRequests", Null)
End Sub

Sub SetAutoCancellation(b As Boolean) As BANanoPromise
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SetAutoCancellation(${b})"$)
	End If
	Return client.RunMethod("autoCancellation", b)
End Sub

Sub CancelRequest(reqKey As String) As BANanoPromise
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.CancelRequest(${reqKey})"$)
	End If
	Return client.RunMethod("cancelRequest", reqKey)
End Sub

Sub setNoCache(b As Boolean)
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.setNoCache(${b})"$)
	End If
	bNoCache = b
	If b Then
		AddHeader("Cache-Control", "no-store")
	Else
		AddHeader("Cache-Control", "no-cache")
	End If
End Sub

Sub getNoCache As Boolean
	Return bNoCache
End Sub

Sub SchemaAddLongText1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_LONGTEXT)
	Return Me
End Sub

Sub SchemaAddLongText(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_LONGTEXT)
	Next
	Return Me
End Sub


Sub SEND(EndPoint As String, options As Map) As BANanoPromise
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SEND(${EndPoint},${BANano.ToJson(options)})"$)
	End If
	Try
		AddHeader("Content-Type", "application/json")
		If headers.Size <> 0 Then
			options.Put("headers", headers)
		End If
		Dim bp As BANanoPromise = client.RunMethod("send", Array(EndPoint, options))
		Return bp
	Catch
		Log($"SEND: ${LastException.message}"$)
		Return Null
	End Try		
End Sub

'put recursive object to a map
Sub PutRecursive(data As Map, path As String, value As Object)
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
Sub GetRecursive(data As Map, path As String) As Object
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



'publish a message to a subscription
Sub RealtimePublish(Module As Object, topicName As String, value As String)
	If ShowLog Then
		Log($"SDUIPocketBase.RealtimePublish(${topicName},${value})"$)
	End If
	Dim eName As String = $"${mEvent}_realtime"$
	If SubExists(Module, eName) Then
		If ShowLog Then
			Log($"SDUIPocketBase.RealtimePublish.${topicName}.${mEvent}_realtime exists."$)
		Else
			Log($"SDUIPocketBase.RealtimePublish.${topicName}.${mEvent}_realtime does NOT exists."$)
		End If
		client.GetField("realtime").RunMethod("send", Array(topicName, value))
	End If
End Sub

Sub DELETE_ALL_REST(tableName As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${tableName}.DELETE_ALL_REST"$)
	End If
	Dim finalURL As String = $"${baseURL}/api/deleteall"$
	Dim FETCH As SDUIFetch
	FETCH.Initialize(finalURL)
	FETCH.AddData("tablename", tableName)
	FETCH.SetContentTypeApplicationJSON
	FETCH.NoCache = True
	BANano.Await(FETCH.PostWait)
	Return FETCH.Response
End Sub

Sub DELETE_ALL_RESTAUTH(tableName As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${tableName}.DELETE_ALL_RESTAUTH"$)
	End If
	Dim finalURL As String = $"${baseURL}/api/deleteallauth"$
	Dim FETCH As SDUIFetch
	FETCH.Initialize(finalURL)
	FETCH.AddData("tablename", tableName)
	FETCH.SetContentTypeApplicationJSON
	FETCH.NoCache = True
	BANano.Await(FETCH.PostWait)
	Return FETCH.Response
End Sub

Sub SERVER_DATE_TIME As Map
	If ShowLog Then
		Log($"SDUIPocketBase.SERVER_DATE_TIME"$)
	End If
	Dim finalURL As String = $"${baseURL}/api/servertime"$
	Dim fetch As SDUIFetch
	fetch.Initialize(finalURL)
	fetch.SetContentTypeApplicationJSON
	fetch.NoCache = True
	BANano.Await(fetch.PostWait)
	Return fetch.Response
End Sub

Sub SEND_EMAIL_REST(toEmail As String, Subject As String, Message As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.SEND_EMAIL_REST(${toEmail},${Subject},${Message})"$)
	End If
	Try
		Message = Message.Replace("</br>", "<br/>")
		Message = Message.Replace(CRLF, "<br/>")
		Dim finalURL As String = $"${baseURL}/api/sendemail"$
		Dim fetch As SDUIFetch
		fetch.Initialize(finalURL)
		fetch.AddData("to", toEmail)
		fetch.AddData("subject", Subject)
		fetch.AddData("message", Message)
		fetch.SetContentTypeApplicationJSON
		fetch.NoCache = True
		BANano.Await(fetch.PostWait)
		Return fetch.Response
	Catch
		Log($"SEND_EMAIL_REST: ${LastException.message}"$)
		Dim m As Map = CreateMap()
		Return m
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
	Schema.Initialize
	'set the field types
	Dim fldsx As List = tm.Get("fields").As(List)
	For Each fm As Map In fldsx
		Dim fldType As String = fm.Get("type")
		Dim fldName As String = fm.Get("name")
		Select Case fldType
			Case "LONGTEXT"
				SchemaAddLongText1(fldName)
			Case "FILE"
				SchemaAddFile1(fldName)
			Case "TEXT", "STRING"
				SchemaAddText1(fldName)
			Case "BLOB"
				SchemaAddFile1(fldName)
			Case "INT", "INTEGER"
				SchemaAddInt1(fldName)
			Case "DOUBLE", "REAL", "FLOAT"
				SchemaAddDouble1(fldName)
			Case "BOOL"
				SchemaAddBoolean1(fldName)
		End Select
	Next
End Sub

'set schema from data models
Sub SetSchemaFromDataModel(models As Map)
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SetSchemaFromDataModel"$)
	End If
	If models.ContainsKey(sTableName) = False Then
		BANano.Throw($"SetSchemaFromDataModel.${sTableName} data-model does NOT exist!"$)
		Return
	End If
	Dim tm As Map = models.Get(sTableName)
	PrimaryKey = tm.GetDefault("pk", "")
	Schema.Initialize
	'set the field types
	Dim fldsx As List = tm.Get("fields").As(List)
	For Each fm As Map In fldsx
		Dim fldType As String = fm.Get("type")
		Dim fldName As String = fm.Get("name")
		Select Case fldType
			Case "LONGTEXT"
				SchemaAddLongText1(fldName)
			Case "FILE"
				SchemaAddFile1(fldName)
			Case "TEXT", "STRING"
				SchemaAddText1(fldName)
			Case "BLOB"
				SchemaAddFile1(fldName)
			Case "INT", "INTEGER"
				SchemaAddInt1(fldName)
			Case "DOUBLE", "REAL", "FLOAT"
				SchemaAddDouble1(fldName)
			Case "BOOL"
				SchemaAddBoolean1(fldName)
		End Select
	Next
End Sub

'set schema from data models
Sub SetFieldsFromDataModel(models As Map)
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SetFieldsFromDataModel"$)
	End If
	If models.ContainsKey(sTableName) = False Then
		BANano.Throw($"SetFieldsFromDataModel.${sTableName} data-model does NOT exist!"$)
		Return
	End If
	Dim tm As Map = models.Get(sTableName)
	flds.Clear
	'set the field types
	Dim fldsx As List = tm.Get("fields").As(List)
	For Each fm As Map In fldsx
		Dim fldName As String = fm.Get("name")
		ADD_FIELD(fldName)
	Next
End Sub

'remove field selection from list
Sub RemoveFields(themFields As List)
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.RemoveFields(${BANano.ToJson(themFields)})"$)
	End If
	For Each fldName As String In themFields
		Dim fldPos As Int = flds.IndexOf(fldName)
		If fldPos <> -1 Then flds.RemoveAt(fldPos)
	Next
End Sub

'for file fields, get its url
Sub BuildFileURL(id As String, fileName As String) As String
	Dim fPath As String = $"${baseURL}/api/files/${sTableName}/${id}/${fileName}"$
	Return fPath
End Sub

'for file fields, get its thumbnail
Sub BuildFileThumbNailURL(id As String, fileName As String, width As String, height As String) As String
	Dim fPath As String = $"${baseURL}/api/files/${sTableName}/${id}/${fileName}?thumb=${width}x${height}"$
	Return fPath
End Sub

Sub getFileURL(rec As Map, filesFieldName As String) As String
	'get list of files
	Dim docs As List = rec.Get(filesFieldName)
	'get the first file
	Dim firstFilename As String = docs.Get(0)
	'
	Dim url As String = client.RunMethod("getFileUrl", Array(rec, firstFilename)).result
	Return url
End Sub

'get the url link of a field in 
Sub GetURLLink(filesFieldName As String) As String
	'get list of files
	Dim strFile As String = Record.Get(filesFieldName)
	Dim sid As String = Record.Get(PrimaryKey)
	Dim fPath As String = $"${baseURL}/api/files/${sTableName}/${sid}/${strFile}"$
	Return fPath
End Sub

'get the url link of a field in 
Sub GetRecordURLLink(rec As Map, tableName As String, filesFieldName As String) As String
	'get list of files
	Dim strFile As String = rec.Get(filesFieldName)
	Dim sid As String = rec.Get(PrimaryKey)
	Dim fPath As String = $"${baseURL}/api/files/${tableName}/${sid}/${strFile}"$
	Return fPath
End Sub

Sub setTableName(s As String)
	If ShowLog Then
		Log($"SDUIPocketBase.setTableName(${s})"$)
	End If
	sTableName = s
End Sub

Sub SchemaAddIndex(idxName As String, bUnique As Boolean) As SDUIPocketBase
	If bUnique Then
		uniqueIdxNames.Put(idxName, idxName)
	Else
		idxNames.Put(idxName, idxName)
	End If
	Return Me
End Sub

Sub SchemaAddIndexes(idxNames1 As List) As SDUIPocketBase
	For Each k As String In idxNames1
		SchemaAddIndex(k, False)
	Next
	Return Me
End Sub

Sub SchemaAddUniqueIndexes(idxNames1 As List) As SDUIPocketBase
	For Each k As String In idxNames1
		SchemaAddIndex(k, True)
	Next
	Return Me
End Sub

Sub SchemaAddBlob(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
	Return Me
End Sub

Sub SchemaAddFile(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_FILE)
	Next
	Return Me
End Sub

Sub SchemaAddFile1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_FILE)
	Return Me
End Sub

Sub SchemaAddBlob1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_BLOB)
	Return Me
End Sub
'schema add boolean
Sub SchemaAddBoolean(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	Return Me
End Sub
Sub SchemaAddBoolean1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_BOOL)
	Return Me
End Sub
Sub SchemaAddDouble1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_DOUBLE)
	Return Me
End Sub
'add double fields
Sub SchemaAddDouble(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	Return Me
End Sub
Sub SchemaAddFloat1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_FLOAT)
	Return Me
End Sub
Sub SchemaAddFloat(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	Return Me
End Sub
Sub SchemaAddText1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_STRING)
	Return Me
End Sub
Sub SchemaAddText(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_STRING)
	Next
	Return Me
End Sub
Sub SchemaAddInt1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_INT)
	Return Me
End Sub
Sub SchemaAddInt(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_INT)
	Next
	Return Me
End Sub

Sub SchemaAddNumber(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_NUMBER)
	Next
	Return Me
End Sub

Sub SchemaAddNumber1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_NUMBER)
	Return Me
End Sub

Sub SchemaAddRelation(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_RELATION)
	Next
	Return Me
End Sub

Sub SchemaAddRelation1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_RELATION)
	Return Me
End Sub

Sub SchemaAddJson(bools As List) As SDUIPocketBase
	For Each b As String In bools
		Schema.Put(b, DB_JSON)
	Next
	Return Me
End Sub

Sub SchemaAddJson1(b As String) As SDUIPocketBase
	Schema.Put(b, DB_JSON)
	Return Me
End Sub

'get records from a collection
'<code>
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'BANano.Await(pbComponents.SELECT_ALL)
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
'Sub SELECT_ALLX As List
'	If ShowLog Then
'		Log($"SDUIPocketBase.${sTableName}.SELECT_ALL"$)
'	End If
'	If Schema.Size = 0 Then
'		BANano.Throw($"SDUIPocketBase.SELECT_ALL: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
'		Return Null
'	End If
'	result.Initialize
'	Dim qsort As String = Join(",", orderByL)
'	Dim qflds As String = Join(",", flds)
'	Dim qexpand As String = Join(",", expand)
'	Try
'		Dim opt As Map = CreateMap()
'		If qsort <> "" Then opt.Put("sort", qsort)
'		If qflds <> "" Then opt.Put("fields", qflds)
'		If qexpand <> "" Then opt.Put("expand", qexpand)
'		opt.Put("batch", batchSize)
'		opt.Put("skipTotal", skipTotal)
'		opt.Put("cache", "no-store")
'		If headers.Size <> 0 Then
'			opt.Put("headers", headers)
'		End If
'		If ShowLog Then
'			Log($"SDUIPocketBase.SELECT_ALL(${BANano.ToJson(opt)})"$)
'		End If
'		result = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("getFullList", Array(opt)))
'		If fileFields.Size > 0 Then
'			Dim rTot As Int = result.Size - 1
'			Dim rCnt As Int = 0
'			For rCnt = 0 To rTot
'				Dim r As Map = result.Get(rCnt)
'				For Each fk As String In fileFields.keys
'					Dim fv As String = fileFields.Get(fk)
'					Dim fk1 As String = r.Get(fk)
'					Dim pk1 As String = r.Get(PrimaryKey)
'					Dim fk2 As String = $"${baseURL}/api/files/${sTableName}/${pk1}/${fk1}"$
'					R.Put(fv, fk2)
'				Next
'				result.Set(rCnt, r)
'			Next
'		End If
'	Catch
'		Log(LastException)
'	End Try			'ignore
'	RowCount = result.Size
'	lastPosition = -1
'	Return result
'End Sub

'add a header value
Sub AddHeader(prop As String, value As String)
	headers.Put(prop, value)
End Sub

'this does not process files, use it to execute RAW SQL Commands on your collection
'<code>
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_RAW(qry As String) As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SELECT_RAW"$)
	End If
	RowCount = 0
	lastPosition = -1
	result.Initialize 
	Try
		Dim finalURL As String = $"${baseURL}/api/rawselect"$
		Dim fetch As SDUIFetch
		fetch.Initialize(finalURL)
		fetch.AddHeaders(headers)		
		fetch.AddData("query", qry)
		fetch.AddData("perPage", batchSize)
		fetch.AddData("skipTotal", skipTotal)
		fetch.SetContentTypeApplicationJSON
		fetch.NoCache = True
		BANano.Await(fetch.PostWait)
		Dim m As Map = fetch.Response
		result = m.Get("items")
		RowCount = result.Size
		Return result
	Catch
		Log($"SELECT_RAW: ${LastException.message}"$)
		Return result
	End Try	
End Sub

'<code>
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_ALL As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SELECT_ALL"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.SELECT_ALL: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	' 
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next

	result.Initialize
	Dim qsort As String = Join(",", orderByL)
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)

	'Dim allRecords As List
	'allRecords.Initialize

	Try
		Dim page As Int = 1
		Dim totalPages As Int = 1

		Do While page <= totalPages
			Dim opt As Map = CreateMap()
			opt.Put("page", page)
			opt.Put("perPage", batchSize)
			If qsort <> "" Then opt.Put("sort", qsort)
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			opt.Put("cache", "no-store")
			If headers.Size > 0 Then opt.Put("headers", headers)
			If page <> 1 Then opt.Put("skipTotal", True)

			If ShowLog Then
				Log($"SDUIPocketBase.SELECT_ALL page ${page} => ${BANano.ToJson(opt)}"$)
			End If

			Dim res As Map = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("getList", Array(page, batchSize, opt)))
			Dim items As List = res.Get("items")
			If page = 1 Then totalPages = res.Get("totalPages")
			
			' if we have file files
			If fileFields.Size > 0 Then
				'loop through each item in the array by index
				For rCnt = 0 To items.Size - 1
					'get the item in that index position of the array
					Dim r As Map = items.Get(rCnt)
					'for each file field in the array
					For Each fk As String In fileFields.Keys
						'fv below will be the value of file field concatenated with 'url'
						Dim fv As String = fileFields.Get(fk)
						'get its value from the item
						Dim fk1 As String = r.Get(fk)
						'get the value of the 'id' key from the item
						Dim pk1 As String = r.Get(PrimaryKey)
						'trim the value of the 'id'
						fk1 = CStr(fk1).trim
						If fk1 <> "" Then
							'if the 'id' is not blank
							Dim fk2 As String = $"${baseURL}/api/files/${sTableName}/${pk1}/${fk1}"$
							'update the item 'url' key with the computed value 
							r.Put(fv, fk2)
							If GetFiles Then
								Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
								Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
								If bisBase64Image Then 
									r.Put(fk, fdata)
								Else
									r.Put(fk, "")	
								End If
							End If
						End If
					Next
					'update the item at that index position with the new 
					items.Set(rCnt, r)
				Next
			End If

			result.AddAll(items)
			page = page + 1
		Loop

	Catch
		Log($"SELECT_ALL: ${LastException.message}"$)
	End Try

	RowCount = result.Size
	lastPosition = -1
	Return result
End Sub

'<code>
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_ALL_FETCH As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SELECT_ALL_FETCH"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.SELECT_ALL_FETCH: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	
	lastPosition = -1
	result.Initialize
	'
	Dim qsort As String = Join(",", orderByL)
	Dim qflds As String = Join(",", flds)
	'
	Try
		Dim page As Int = 1
		Dim totalPages As Int = 1

		Do While page <= totalPages
			Dim finalURL As String = $"${baseURL}/api/getlist"$
			Dim fetch As SDUIFetch
			fetch.Initialize(finalURL)
			fetch.AddHeaders(headers)
			fetch.AddData("collection", sTableName)
			fetch.AddData("perPage", batchSize)
			fetch.AddData("page", page)
			fetch.AddData("getFiles", GetFiles)
			fetch.AddData("sort", qsort)
			fetch.AddData("fields", qflds)
			If page <> 1 Then fetch.AddData("skipTotal", True)
			fetch.NoCache = True
			fetch.SetContentTypeApplicationJSON
			BANano.Await(fetch.PostWait)
			Dim mx As Map = fetch.Response
			Dim items As List = mx.Get("items")
			If page = 1 Then totalPages = mx.Get("totalPages")
			result.AddAll(items)
			page = page + 1
		Loop
	Catch
		Log($"SELECT_ALL_FETCH: ${LastException.message}"$)
	End Try
	RowCount = result.Size
	Return result
End Sub

'record is saved as json string
'returns the record id
'<code>
'pb.PrepareRecord
'pb.SetField("id", 1)
'pb.SetField("username", "user1")
'BANano.Await(pb.CREATE_FETCH)
'</code>
Sub CREATE_FETCH As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.CREATE_FETCH"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.CREATE_FETCH: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	
	Try
		'get the fields to return to user
		Dim qflds As String = Join(",", flds)
		'get the id of this record, it should always be specified
		Dim newid As String = Record.GetDefault("id", "")
		'if the id does not exist, create it
		If newid = "" Then newid = NextID
		'
		Dim finalURL As String = $"${baseURL}/api/rawinsert/${sTableName}/${newid}"$
		Dim fetch As SDUIFetch
		fetch.Initialize(finalURL)
		fetch.AddHeaders(headers)
		fetch.AddData("fields", qflds)
		For Each k As String In Record.Keys
			Dim v As Object = Record.Get(k)
			fetch.AddData($"record.${k}"$, v)
		Next
		fetch.NoCache = True
		fetch.SetContentTypeApplicationJSON
		BANano.Await(fetch.PostWait)
		Dim mx As Map = fetch.Response
		Record = mx.Get("record")
		Dim rid As String = Record.GetDefault("id", "")
		Return rid
	Catch
		Log($"CREATE_FETCH: ${LastException.message}"$)
		Record = CreateMap()
		Return ""
	End Try
End Sub
'
'record is saved as json string
'returns the record id
'<code>
'pb.PrepareRecord
'pb.SetField("id", 1)
'pb.SetField("username", "user1")
'BANano.Await(pb.UPDATE_FETCH)
'</code>
Sub UPDATE_FETCH As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.UPDATE_FETCH"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.UPDATE_FETCH: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	'get the id of this record, it should always be specified
	Dim newid As String = Record.GetDefault("id", "")
	'if the id does not exist, create it
	If newid = "" Then
		BANano.Throw($"SDUIPocketBase.UPDATE_FETCH: ${sTableName} - ID has not been specified!"$)
		Return Null
	End If
	'
	Try
		'get the fields to return to user
		Dim qflds As String = Join(",", flds)
		Dim finalURL As String = $"${baseURL}/api/rawupdate/${sTableName}"$
		Dim fetch As SDUIFetch
		fetch.Initialize(finalURL)
		fetch.AddHeaders(headers)
		fetch.AddData("fields", qflds)
		fetch.AddData("filter", $"id='${newid}'"$)
		Record.Remove("id")
		For Each k As String In Record.Keys
			Dim v As Object = Record.Get(k)
			fetch.AddData($"record.${k}"$, v)
		Next
		fetch.NoCache = True
		fetch.SetContentTypeApplicationJSON
		BANano.Await(fetch.PostWait)
		Dim mx As Map = fetch.Response
		Record = mx.Get("record")
		Dim rid As String = Record.GetDefault("id", "")
		Return rid
	Catch
		Log($"UPDATE_FETCH: ${LastException.message}"$)
		Record = CreateMap()
		Return ""
	End Try
End Sub

'record is saved as json string
'returns the record id
'<code>
'BANano.Await(pb.DELETE_FETCH("id"))
'</code>
Sub DELETE_FETCH(delID As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.DELETE_FETCH"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.DELETE_FETCH: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	'if the id does not exist, create it
	If delID = "" Then
		BANano.Throw($"SDUIPocketBase.DELETE_FETCH: ${sTableName} - ID has not been specified!"$)
		Return Null
	End If
	'
	Try
		'get the fields to return to user
		Dim finalURL As String = $"${baseURL}/api/rawdelete/${sTableName}"$
		Dim fetch As SDUIFetch
		fetch.Initialize(finalURL)
		fetch.AddHeaders(headers)
		fetch.AddData("filter", $"id='${delID}'"$)
		fetch.NoCache = True
		fetch.SetContentTypeApplicationJSON
		BANano.Await(fetch.PostWait)
		Dim mx As Map = fetch.Response
		Dim bdeleted As Boolean = mx.GetDefault("deleted", False)
		bdeleted = CBool(bdeleted)
		Return bdeleted
	Catch
		Log($"DELETE_FETCH: ${LastException.message}"$)
		Return False
	End Try
End Sub

Sub findWhereOrderByFetch(whereMap As Map, whereOps As List, orderByx As List) As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.findWhereOrderByFetch(${BANano.ToJson(whereMap)},${whereOps},${orderByx})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.findWhereOrderByFetch: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	
	' Build filter
	Dim nFilter As String = ""
	If ownFilter.Size > 0 Then
		nFilter = Join(" ", ownFilter)
		nFilter = nFilter.trim
		nFilter = nFilter.replace("!=", "<>")
		nFilter = nFilter.replace("&&", "AND")
		nFilter = nFilter.replace("||", "OR")
		nFilter = nFilter.replace("~", "LIKE")
		nFilter = nFilter.trim
		nFilter = RemDelim(nFilter, "AND")
	End If
	'
	Dim sb As StringBuilder
	sb.Initialize
	Dim i As Int
	Dim iWhere As Int = whereMap.Size - 1
	For i = 0 To iWhere
		Dim col As String = whereMap.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
		Dim xVal As String = whereMap.GetValueAt(i)
		Dim opr As String = whereOps.Get(i)
		opr = opr.Replace("!=", " <> ")
		opr = opr.Replace("~", " LIKE ")
		Dim com As String = combineL.Get(i)
		com = com.Replace("&&", " AND ")
		com = com.Replace("||", " OR ")
		sb.Append(col)
		sb.Append(opr)
		sb.Append(xVal)
		sb.Append(com)
	Next
	Dim qfilter As String = RemDelim(sb.ToString, com).Trim
	
	' Build sort, fields, expand
	Dim qsort As String = ""
	If BANano.IsList(orderByx) Then
		qsort = Join(",", orderByx)
	End If
	Dim qflds As String = Join(",", flds)
	'Dim qexpand As String = Join(",", expand)

	' Initialize result list
	Dim allRecords As List
	allRecords.Initialize

	Try
		Dim page As Int = 1
		Dim totalPages As Int = 1

		Do While page <= totalPages
			Dim finalURL As String = $"${baseURL}/api/getlist"$
			Dim fetch As SDUIFetch
			fetch.Initialize(finalURL)
			fetch.AddHeaders(headers)
			fetch.SchemaAddBoolean(Array("getFiles"))
			fetch.AddData("collection", sTableName)
			fetch.AddData("perPage", batchSize)
			fetch.AddData("page", page)
			fetch.AddData("getFiles", GetFiles)
			fetch.AddData("sort", qsort)
			fetch.AddData("fields", qflds)
			fetch.adddata("ownFilter", nFilter)
			fetch.AddData("filter", qfilter)
			If page <> 1 Then fetch.AddData("skipTotal", True)
			fetch.NoCache = True
			fetch.SetContentTypeApplicationJSON
			BANano.Await(fetch.PostWait)
			Dim mx As Map = fetch.Response
			Dim items As List = mx.Get("items")
			If page = 1 Then totalPages = mx.Get("totalPages")
			allRecords.AddAll(items)
			page = page + 1
		Loop
	Catch
		Log($"findWhereOrderByFetch: ${LastException.message}"$)
	End Try
	Return allRecords
End Sub



private Sub isBase64Image(imgURL As String) As Boolean
	Dim bRes As Boolean = BANano.RunJavascriptMethod("isBase64Image", Array(imgURL))
	bRes = CBool(bRes)
	Return bRes
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


'get records from a collection
'<code>
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'BANano.Await(pbComponents.SELECT_ALL_USERS)
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
'Sub SELECT_ALL_USERS As List
'	If ShowLog Then
'		Log($"SDUIPocketBase.${sTableName}.SELECT_ALL_USERS"$)
'	End If
'	If Schema.Size = 0 Then
'		BANano.Throw($"SDUIPocketBase.SELECT_ALL: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
'		Return Null
'	End If
'	lastPosition = -1
'	result.Initialize
'	Dim qsort As String = Join(",", orderByL)
'	Dim qflds As String = Join(",", flds)
'	Dim qexpand As String = Join(",", expand)
'	'
'	Dim nl As List
'	nl.Initialize
'	Try
'		Dim opt As Map = CreateMap()
'		If qsort <> "" Then opt.Put("sort", qsort)
'		If qflds <> "" Then opt.Put("fields", qflds)
'		If qexpand <> "" Then opt.Put("expand", qexpand)
'		opt.Put("batch", batchSize)
'		opt.Put("skipTotal", skipTotal)
'		opt.Put("cache", "no-store")
'		If headers.Size <> 0 Then
'			opt.Put("headers", headers)
'		End If
'		If ShowLog Then
'			Log($"SDUIPocketBase.${sTableName}.SELECT_ALL_USERS(${BANano.ToJson(opt)})"$)
'		End If
'		result = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("getFullList", Array(opt)))
'		If fileFields.Size > 0 Then
'			Dim rTot As Int = result.Size - 1
'			Dim rCnt As Int = 0
'			For rCnt = 0 To rTot
'				Dim r As Map = result.Get(rCnt)
'				For Each fk As String In fileFields.keys
'					Dim fv As String = fileFields.Get(fk)
'					Dim fk1 As String = r.Get(fk)
'					Dim pk1 As String = r.Get(PrimaryKey)
'					Dim fk2 As String = $"${baseURL}/api/files/${UsersCollectionName}/${pk1}/${fk1}"$
'					R.Put(fv, fk2)
'				Next
'				result.Set(rCnt, r)
'			Next
'		End If
'	Catch
'		Log(LastException)
'	End Try			'ignore
'	RowCount = result.Size
'	lastPosition = -1
'	Return result
'End Sub
Sub SELECT_ALL_USERS As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SELECT_ALL_USERS"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.SELECT_ALL: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	
	lastPosition = -1
	result.Initialize
	Dim qsort As String = Join(",", orderByL)
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)
	
	Dim page As Int = 1
	Dim totalPages As Int = 1
	
	Try
		Do While page <= totalPages
			Dim opt As Map = CreateMap()
			opt.Put("page", page)
			opt.Put("perPage", batchSize)
			opt.Put("cache", "no-store")
			
			If qsort <> "" Then opt.Put("sort", qsort)
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			If headers.Size <> 0 Then opt.Put("headers", headers)
			If page <> 1 Then opt.Put("skipTotal", True)
			
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.SELECT_ALL_USERS - Page ${page} (${BANano.ToJson(opt)})"$)
			End If
			
			Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("getList", Array(page, batchSize, opt)))
			Dim items As List = res.Get("items")
			If page = 1 Then totalPages = res.Get("totalPages")
			
			' Update file fields if present
			If fileFields.Size > 0 Then
				For Each r As Map In items
					For Each fk As String In fileFields.Keys
						Dim fv As String = fileFields.Get(fk)
						Dim fk1 As String = r.Get(fk)
						Dim pk1 As String = r.Get(PrimaryKey)
						fk1 = CStr(fk1).trim
						If fk1 <> "" Then
							Dim fk2 As String = $"${baseURL}/api/files/${UsersCollectionName}/${pk1}/${fk1}"$
							r.Put(fv, fk2)
							If GetFiles Then
								Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
								Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
								If bisBase64Image Then
									r.Put(fk, fdata)
								Else
									r.Put(fk, "")
								End If
							End If
						End If
					Next
				Next
			End If
			
			result.AddAll(items)
			page = page + 1
		Loop
	Catch
		Log($"SELECT_ALL_USERS: ${LastException.message}"$)
	End Try
	
	RowCount = result.Size
	lastPosition = -1
	Return result
End Sub




'get records from a collection
'<code>
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'BANano.Await(pbComponents.SELECT_ALL_ADMINS)
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
'Sub SELECT_ALL_ADMINS As List
'	If ShowLog Then
'		Log($"SDUIPocketBase.${sTableName}.SELECT_ALL_ADMINS"$)
'	End If
'	If Schema.Size = 0 Then
'		BANano.Throw($"SDUIPocketBase.SELECT_ALL_ADMINS: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
'		Return Null
'	End If
'	lastPosition = -1
'	result.Initialize
'	Dim qsort As String = Join(",", orderByL)
'	Dim qflds As String = Join(",", flds)
'	Dim qexpand As String = Join(",", expand)
'	'
'	Try
'		Dim opt As Map = CreateMap()
'		If qsort <> "" Then opt.Put("sort", qsort)
'		If qflds <> "" Then opt.Put("fields", qflds)
'		If qexpand <> "" Then opt.Put("expand", qexpand)
'		opt.Put("perPage", batchSize)
'		opt.Put("skipTotal", skipTotal)
'		opt.Put("cache", "no-store")
'		If headers.Size <> 0 Then
'			opt.Put("headers", headers)
'		End If
'		Dim xtablename As String = "admins"
'		Select Case Upgrade
'			Case False
'				result = BANano.Await(client.GetField("admins").RunMethod("getFullList", Array(opt)))
'			Case Else
'				xtablename = "_superusers"
'				result = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("getFullList", Array(opt)))
'		End Select
'		'
'		If fileFields.Size > 0 Then
'			Dim rTot As Int = result.Size - 1
'			Dim rCnt As Int = 0
'			For rCnt = 0 To rTot
'				Dim r As Map = result.Get(rCnt)
'				For Each fk As String In fileFields.keys
'					Dim fv As String = fileFields.Get(fk)
'					Dim fk1 As String = r.Get(fk)
'					Dim pk1 As String = r.Get(PrimaryKey)
'					Dim fk2 As String = $"${baseURL}/api/files/${xtablename}/${pk1}/${fk1}"$
'					R.Put(fv, fk2)
'				Next
'				result.Set(rCnt, r)
'			Next
'		End If
'	Catch
'		Log(LastException)
'	End Try			'ignore
'	RowCount = result.Size
'	lastPosition = -1
'	Return result
'End Sub
Sub SELECT_ALL_ADMINS As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SELECT_ALL_ADMINS"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.SELECT_ALL_ADMINS: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If

	lastPosition = -1
	result.Initialize
	Dim qsort As String = Join(",", orderByL)
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)
	Dim xtablename As String = "admins"

	Try
		Dim page As Int = 1
		Dim totalPages As Int = 1

		If Upgrade Then
			xtablename = "_superusers"
		End If

		Do While page <= totalPages
			Dim opt As Map = CreateMap()
			opt.Put("page", page)
			opt.Put("perPage", batchSize)
			opt.Put("cache", "no-store")
			If qsort <> "" Then opt.Put("sort", qsort)
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			If headers.Size <> 0 Then opt.Put("headers", headers)
			If page <> 1 Then opt.Put("skipTotal", True)

			If ShowLog Then
				Log($"SDUIPocketBase.SELECT_ALL_ADMINS page ${page} (${BANano.ToJson(opt)})"$)
			End If
			
			Dim res As Map
			If Upgrade = False Then
				res = BANano.Await(client.GetField("admins").RunMethod("getList", Array(page, batchSize, opt)))
			Else
				xtablename = "_superusers"
				res = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("getList", Array(page, batchSize, opt)))
			End If

			If page = 1 Then totalPages = res.Get("totalPages")
			Dim items As List = res.Get("items")

			' Process file fields
			If fileFields.Size > 0 Then
				For Each r As Map In items
					For Each fk As String In fileFields.Keys
						Dim fv As String = fileFields.Get(fk)
						Dim fk1 As String = r.Get(fk)
						Dim pk1 As String = r.Get(PrimaryKey)
						fk1 = CStr(fk1).trim
						If fk1 <> "" Then
							Dim fk2 As String = $"${baseURL}/api/files/${xtablename}/${pk1}/${fk1}"$
							r.Put(fv, fk2)
							If GetFiles Then
								Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
								Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
								If bisBase64Image Then
									r.Put(fk, fdata)
								Else
									r.Put(fk, "")
								End If
							End If
						End If
					Next
				Next
			End If

			result.AddAll(items)
			page = page + 1
		Loop
	Catch
		Log($"SELECT_ALL_ADMINS: ${LastException.message}"$)
	End Try

	RowCount = result.Size
	lastPosition = -1
	Return result
End Sub

'get the data model for the current table
Sub GetDataModel As Map
	If ShowLog Then
		Log($"SDUIPocketBase.GetDataModel"$)
	End If
	selectFields(Array("name", "schema"))
	whereEqual("type", "base")
	whereEqual("name", sTableName)
	orderBy(Array("name"))
	Dim tblNames As List = BANano.Await(SELECT_COLLECTIONS)
	'text,editor,number,bool,email,url,date,select,file,relation,json
	Dim tbl As Map = tblNames.Get(0)
	Dim xflds As Map = CreateMap()
'	Dim sname As String = tbl.Get("name")
	Dim xSchema As List = tbl.Get("schema")
	For Each fld As Map In xSchema
		Dim fldname As String = fld.Get("name")
		Dim fldtype As String = fld.Get("type")
		xflds.Put(fldname, fldtype)
	Next
	xflds.Put("id", "text")
	xflds.Put("created", "text")
	xflds.Put("updated", "text")
	Return xflds
End Sub

'get the data model for the current table
Sub GetDataModelOfTable(tblName As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.GetDataModelOfTable"$)
	End If
	selectFields(Array("name", "schema"))
	whereEqual("type", "base")
	whereEqual("name", tblName)
	orderBy(Array("name"))
	Dim tblNames As List = BANano.Await(SELECT_COLLECTIONS)
	'text,editor,number,bool,email,url,date,select,file,relation,json
	Dim tbl As Map = tblNames.Get(0)
	Dim xflds As Map = CreateMap()
'	Dim sname As String = tbl.Get("name")
	Dim xSchema As List = tbl.Get("schema")
	For Each fld As Map In xSchema
		Dim fldname As String = fld.Get("name")
		Dim fldtype As String = fld.Get("type")
		xflds.Put(fldname, fldtype)
	Next
	xflds.Put("id", "text")
	xflds.Put("created", "text")
	xflds.Put("updated", "text")
	Return xflds
End Sub

Sub GetDataModels(e As String, p As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.GetDataModels"$)
	End If
	selectFields(Array("name", "schema"))
	whereEqual("type", "base")
	orderBy(Array("name"))
	Dim tblNames As List = BANano.Await(SELECT_ALL_COLLECTIONS(e, p))
	'text,editor,number,bool,email,url,date,select,file,relation,json
	Dim models As Map = CreateMap()
	For Each tbl As Map In tblNames
		Dim xflds As Map = CreateMap()
		Dim sname As String = tbl.Get("name")
		Dim xSchema As List = tbl.Get("schema")
		For Each fld As Map In xSchema
			Dim fldname As String = fld.Get("name")
			Dim fldtype As String = fld.Get("type")
			xflds.Put(fldname, fldtype)
		Next
		xflds.Put("id", "text")
		xflds.Put("created", "text")
		xflds.Put("updated", "text")
		models.Put(sname, xflds)
	Next
	Return models
End Sub

Sub GetViews(e As String, p As String) As List
	If ShowLog Then
		Log($"SDUIPocketBase.GetViews"$)
	End If
	selectFields(Array("name"))
	whereEqual("type", "view")
	orderBy(Array("name"))
	Dim tblNames As List = BANano.Await(SELECT_ALL_COLLECTIONS(e, p))
	Dim vnames As List = ListOfMapsGetProperty(tblNames, "name")
	Return vnames
End Sub

'get all table names excluding views
Sub SELECT_ALL_COLLECTIONS_NAMES(e As String, p As String) As List
	If ShowLog Then
		Log($"SDUIPocketBase.SELECT_ALL_COLLECTIONS_NAMES"$)
	End If
	selectFields(Array("name"))
	whereEqual("type", "base")
	orderBy(Array("name"))
	Dim tblNames As List = BANano.Await(SELECT_ALL_COLLECTIONS(e, p))
	Dim tbNames As List = ListOfMapsGetProperty(tblNames, "name")
	Return tbNames
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

'<code>
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_COLLECTIONS() As List
	If ShowLog Then
		Log($"SDUIPocketBase.SELECT_COLLECTIONS"$)
	End If
	'
	lastPosition = -1
	result.Initialize

	' Build the filter
	Dim sb As StringBuilder
	sb.Initialize
	If ownFilter.Size > 0 Then
		Dim nfilter As String = Join(" ", ownFilter)
		nfilter = nfilter.trim
		sb.Append(nfilter)
	End If
	Dim i As Int
	Dim iWhere As Int = whereField.Size - 1
	For i = 0 To iWhere
		Dim col As String = whereField.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
		Dim xVal As String = whereField.GetValueAt(i)
		Dim opr As String = ops.Get(i)
		Dim com As String = combineL.Get(i)
		sb.Append(col)
		sb.Append(opr)
		sb.Append(xVal)
		sb.Append(com)
	Next

	Dim qfilter As String = sb.ToString.trim
	Dim afilter As String = RemDelim(qfilter, com)
	qfilter = afilter.Trim

	Dim qsort As String = Join(",", orderByL)
	Dim qflds As String = Join(",", flds)

	Try
		Dim page As Int = 1
		Dim totalPages As Int = 1 ' Will be updated after first request

		Do While page <= totalPages
			'set the user token
			SetAuthorizationBearerToken(UserToken)
			Dim opt As Map = CreateMap()
			opt.Put("page", page)
			opt.Put("perPage", batchSize)
			opt.Put("cache", "no-store")
			If qsort <> "" Then opt.Put("sort", qsort)
			If qflds <> "" Then opt.Put("fields", qflds)
			If qfilter <> "" Then opt.Put("filter", qfilter)
			If headers.Size > 0 Then opt.Put("headers", headers)
			If page <> 1 Then opt.Put("skipTotal", True)

			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.SELECT_COLLECTIONS page ${page} (${BANano.ToJson(opt)})"$)
			End If
			
			Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("getList", Array(page, batchSize, opt)))
			If page = 1 Then totalPages = res.Get("totalPages")
			Dim items As List = res.Get("items")
			result.AddAll(items)
			page = page + 1
		Loop
	Catch
		Log($"SELECT_COLLECTIONS: ${LastException.message}"$)
	End Try

	RowCount = result.Size
	Return result
End Sub

'<code>
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_ALL_COLLECTIONS(e As String, p As String) As List
	If ShowLog Then
		Log($"SDUIPocketBase.SELECT_ALL_COLLECTIONS"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.SELECT_ALL_COLLECTIONS: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	'
	Dim auth As Map = CreateMap()
	Select Case Upgrade
	Case False
		auth = BANano.Await(client.GetField("admins").RunMethod("authWithPassword", Array(e, p)))
	Case Else
		auth = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("authWithPassword", Array(e, p)))
	End Select
	'get the token
	UserToken = auth.Get("token")
	'
	lastPosition = -1
	result.Initialize

	' Build the filter
	Dim sb As StringBuilder
	sb.Initialize
	If ownFilter.Size > 0 Then
		Dim nfilter As String = Join(" ", ownFilter)
		nfilter = nfilter.trim
		sb.Append(nfilter)
	End If
	Dim i As Int
	Dim iWhere As Int = whereField.Size - 1
	For i = 0 To iWhere
		Dim col As String = whereField.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
		Dim xVal As String = whereField.GetValueAt(i)
		Dim opr As String = ops.Get(i)
		Dim com As String = combineL.Get(i)
		sb.Append(col)
		sb.Append(opr)
		sb.Append(xVal)
		sb.Append(com)
	Next

	Dim qfilter As String = sb.ToString.trim
	Dim afilter As String = RemDelim(qfilter, com)
	qfilter = afilter.Trim

	Dim qsort As String = Join(",", orderByL)
	Dim qflds As String = Join(",", flds)

	Try
		Dim page As Int = 1
		Dim totalPages As Int = 1 ' Will be updated after first request

		Do While page <= totalPages
			'set the user token
			SetAuthorizationBearerToken(UserToken)
			Dim opt As Map = CreateMap()
			opt.Put("page", page)
			opt.Put("perPage", batchSize)
			opt.Put("cache", "no-store")
			If qsort <> "" Then opt.Put("sort", qsort)
			If qflds <> "" Then opt.Put("fields", qflds)
			If qfilter <> "" Then opt.Put("filter", qfilter)
			If headers.Size > 0 Then opt.Put("headers", headers)
			If page <> 1 Then opt.Put("skipTotal", True)

			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.SELECT_ALL_COLLECTIONS page ${page} (${BANano.ToJson(opt)})"$)
			End If
			
			Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("getList", Array(page, batchSize, opt)))
			If page = 1 Then totalPages = res.Get("totalPages")
			Dim items As List = res.Get("items")
			result.AddAll(items)
			page = page + 1
		Loop
	Catch
		Log($"SELECT_ALL_COLLECTIONS: ${LastException.message}"$)
	End Try

	RowCount = result.Size
	Return result
End Sub

'<code>
'Sub pb_Change (Action As String, Record As Map, TableName As String)
'log(action)
'log(record)
'log(tablename)
'select case Action
'end select
'End Sub
'</code> 
Sub Subscribe(Module As Object, TableName As String)
	If ShowLog Then
		Log($"SDUIPocketBase.Subscribe(${TableName})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.Subscribe: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return
	End If
	Try
		Dim eName As String = $"${mEvent}_changes"$
		If SubExists(Module, eName) Then
			If ShowLog Then
				Log($"SDUIPocketBase.Subscribe.${TableName}.${mEvent}_changes exists."$)
			End If
			Dim e As Object
			Dim cb As BANanoObject = BANano.CallBack(Module, $"${mEvent}_changes"$, Array(e))
			client.RunMethod("collection", TableName).RunMethod("subscribe", Array("*", cb))
		End If
		'
		Dim eName1 As String = $"${mEvent}_change"$
		If SubExists(Module, eName1) Then
			If ShowLog Then
				Log($"SDUIPocketBase.Subscribe.${TableName}.${mEvent}_change exists."$)
			End If
			Dim e As Object
			Dim cb As BANanoObject = BANano.CallBack(Me, "HandleChange", Array(e))
			client.RunMethod("collection", TableName).RunMethod("subscribe", Array("*", cb))
		End If
		
	Catch
		Log($"Subscribe: ${LastException.message}"$)
	End Try			'ignore
End Sub

'PB_CONNECT, PB_DISCONNECT, PB_ERROR
Sub RealtimeSubscribe(Module As Object, topicName As String)
	If ShowLog Then
		Log($"SDUIPocketBase.RealtimeSubscribe(${topicName})"$)
	End If
	Dim eName As String = $"${mEvent}_realtime"$
	If SubExists(Module, eName) Then
		If ShowLog Then
			Log($"SDUIPocketBase.RealtimeSubscribe.${topicName}.${mEvent}_realtime exists."$)
		End If
		Dim e As Map
		Dim cb As BANanoObject = BANano.CallBack(Module, $"${mEvent}_realtime"$, Array(e))
		client.GetField("realtime").RunMethod("subscribe", Array(topicName, cb))
	End If
End Sub

Sub RealtimeUnSubscribe(topicName As String)
	If ShowLog Then
		Log($"SDUIPocketBase.RealtimeUnSubscribe(${topicName})"$)
	End If
	BANano.Await(client.GetField("realtime").RunMethod("unsubscribe", Array(topicName)))
End Sub

Sub RealtimeUnSubscribeByPrefix(topicName As String)
	If ShowLog Then
		Log($"SDUIPocketBase.RealtimeUnSubscribeByPrefix(${topicName})"$)
	End If
	BANano.Await(client.GetField("realtime").RunMethod("unsubscribeByPrefix", Array(topicName)))
End Sub


Private Sub HandleChange (e As Map)
	If ShowLog Then
		Log($"SDUIPocketBase.HandleChange.${BANano.ToJson(e)}"$)
	End If
	Dim saction As String = e.Get("action")
	Dim record1 As Map = e.Get("record")
	Dim sTableName1 As String = GetRecursive(e, "record.collectionName")
	BANano.CallSub(mCallBack, $"${mEvent}_change"$, Array(saction, record1, sTableName1))
End Sub


'subscribe to a record
Sub SubscribeToRecord(Module As Object, TableName As String, id As String)
	If ShowLog Then
		Log($"SDUIPocketBase.SubscribeToRecord(${TableName},${id})"$)
	End If
	Try
		Dim eName As String = $"${mEvent}_changes"$
		If SubExists(Module, eName) Then
			Dim e As Object
			Dim cb As BANanoObject = BANano.CallBack(Module, $"${mEvent}_changes"$, Array(e))
			client.RunMethod("collection", TableName).RunMethod("subscribe", Array(id, cb))
		Else
			BANano.Console.Warn($"SDUIPocketBase.SubscribeToRecord.'${mEvent}_changes' callback is missing!"$)
		End If
	Catch
		Log($"SubscribeToRecord: ${LastException.message}"$)
	End Try			'ignore
End Sub

'unsubscribe, leave table blank for all
Sub UnSubscribe(TableName As String)
	If ShowLog Then
		Log($"SDUIPocketBase.UnSubscribe(${TableName})"$)
	End If
	Try
		If TableName = "" Then
			BANano.Await(client.RunMethod("collection", TableName).RunMethod("unsubscribe", Null))
		Else
			BANano.Await(client.RunMethod("collection", TableName).RunMethod("unsubscribe", "*"))
		End If
	Catch
		Log($"UnSubscribe: ${LastException.message}"$)
	End Try			'ignore
End Sub

Sub UnSubscribeToRecord(TableName As String, id As String)
	If ShowLog Then
		Log($"SDUIPocketBase.UnSubscribeToRecord(${TableName},${id})"$)
	End If
	Try
		BANano.Await(client.RunMethod("collection", TableName).RunMethod("unsubscribe", id))
	Catch
		Log($"UnSubscribeToRecord: ${LastException.message}"$)
	End Try			'ignore
End Sub

'record is saved as json string
'returns the record id
'<code>
'BANano.Await(pb.CREATE_OR_UPDATE)
'</code>
Sub CREATE_OR_UPDATE As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.CREATE_OR_UPDATE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	Try
		'does the record exist
		Dim Key As String = Record.GetDefault("id", "")
		DisplayValue = Record.GetDEfault(DisplayField, "")
		'this will be blank if we are using PB own keys
		'if we use our keys, those need to be 15 in length
		Dim bThere As Boolean = False
		If Key <> "" Then
			bThere = BANano.Await(ContainsKey(Key))
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE:ContainsKey(id,${Key},${bThere})"$)
			End If
		End If
		'does not exit
		If bThere = False Then
			Dim qflds As String = Join(",", flds)
			Dim qexpand As String = Join(",", expand)

			'create the record
			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE(${BANano.ToJson(opt)})"$)
			End If
			Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("create", Array(Record,opt)))
			If Record.ContainsKey("id") Then
				Dim k As String = Record.Get("id")
				Return k
			End If
			Return ""
		Else
			Dim qflds As String = Join(",", flds)
			Dim qexpand As String = Join(",", expand)

			'execute an update
			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			'
			Dim id As String = Record.Get("id")
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE(${BANano.ToJson(opt)})"$)
			End If
			Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("update", Array(id, Record,opt)))
			If Record.ContainsKey("id") Then
				Dim k As String = Record.Get("id")
				Return k
			End If
			Return ""
		End If
	Catch
		Log($"CREATE_OR_UPDATE: ${LastException.message}"$)
		Return ""
	End Try			' ignore
End Sub

'ensure the query only return the id only
Sub GetAffectedID As SDUIPocketBase
	flds.Initialize
	flds.Add("id")
	Return Me
End Sub


'record is saved as json string
'returns the record id
'<code>
'BANano.Await(pb.CREATE_OR_UPDATE_FORM(10))
'</code>
Sub CREATE_OR_UPDATE_FORM(sID As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE_FORM"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.CREATE_OR_UPDATE_FORM: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	Try
		'does the record exist
		DisplayValue = Record.GetDEfault(DisplayField, "")
		'this will be blank if we are using PB own keys
		'if we use our keys, those need to be 15 in length
		Dim bThere As Boolean = False
		If sID <> "" Then
			bThere = BANano.Await(ContainsKey(sID))
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE_FORM:ContainsKey(id,${sID},${bThere})"$)
			End If
		End If
		'does not exit
		If bThere = False Then
			'create the record
			Dim qflds As String = Join(",", flds)
			Dim qexpand As String = Join(",", expand)

			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE_FORM(${BANano.ToJson(opt)})"$)
			End If
			Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("create", Array(formData,opt)))
			If Record.ContainsKey("id") Then
				Dim k As String = Record.Get("id")
				Return k
			End If
			Return ""
		Else
			Dim qflds As String = Join(",", flds)
			Dim qexpand As String = Join(",", expand)
			'execute an update
			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE_FORM(${BANano.ToJson(opt)})"$)
			End If
			Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("update", Array(sID, formData, opt)))
			If Record.ContainsKey("id") Then
				Dim k As String = Record.Get("id")
				Return k
			End If
			Return ""
		End If
	Catch
		Log($"CREATE_OR_UPDATE_FORM: ${LastException.message}"$)
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
		Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE_BY_FIELD(${fldName})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.CREATE_OR_UPDATE_BY_FIELD: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
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
			'create the record
			Dim qflds As String = Join(",", flds)
			Dim qexpand As String = Join(",", expand)

			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE_BY_FIELD(${BANano.ToJson(opt)})"$)
			End If
			Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("create", Array(Record,opt)))
			If Record.ContainsKey("id") Then
				Dim k As String = Record.Get("id")
				Return k
			End If
			Return ""
		Else
			'execute an update
			Dim qflds As String = Join(",", flds)
			Dim qexpand As String = Join(",", expand)
			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			Record.Put("id", id)
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.CREATE_OR_UPDATE_BY_FIELD(${BANano.ToJson(opt)})"$)
			End If
			Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("update", Array(id, Record,opt)))
			If Record.ContainsKey("id") Then
				Dim k As String = Record.Get("id")
				Return k
			End If
			Return ""
		End If
	Catch
		Log($"CREATE_OR_UPDATE_BY_FIELD: ${LastException.message}"$)
		Return ""
	End Try			' ignore
End Sub

Sub UPDATE_FILE(sid As String, fileField As String, fileObj As Map) As String
	Try
		formData.Initialize2("FormData", Null)
		formData.RunMethod("set", Array(fileField, fileObj))
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.UPDATE_FILE(${BANano.ToJson(opt)})"$)
		End If
		Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("update", Array(sid, formData,opt)))
		If Record.ContainsKey("id") Then
			Dim k As String = Record.Get("id")
			Return k
		End If
		Return ""
	Catch
		Log($"UPDATE_FILE: ${LastException.message}"$)
		Return ""
	End Try		
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
		Log($"SDUIPocketBase.${sTableName}.CREATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.CREATE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	'
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.CREATE(${BANano.ToJson(opt)})"$)
		End If
	'
		Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("create", Array(Record,opt)))
		If Record.ContainsKey("id") Then
			Dim k As String = Record.Get("id")
			Return k
		End If
		Return ""
	Catch
		Log($"CREATE: ${LastException.message}"$)
		Return ""
	End Try
	
		
'	Dim bpRes As Object
'	Dim bpErr As Object
'	Dim bpPro As BANanoPromise
'	bpPro = client.RunMethod("collection", sTableName).RunMethod("create", Array(Record,opt))
'	bpPro.ThenWait(bpRes)
'		Dim m As Map = bpRes
'		If m.ContainsKey("id") Then
'			Record = BANano.DeepClone(m)
'			Dim k As String = m.Get("id")
'			Return k
'		End If
'		Return ""
'	bpPro.ElseWait(bpErr)			'ignore
'		Log(bpErr)
'		Return ""
'	bpPro.End
End Sub
'

'ceate a ecod using fomdata
'<code>
'pb.PrepareForm
'pb.SetFormFile("fileobj", fileObj)
'pb.SetFormField("username", "user1")
'dim m As map = BANano.Await(pb.CREATE_FORM)
'dim id as String = m.get("id")
'dim url as String = m.get("fileurl")
'</code>
Sub CREATE_FORM As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.CREATE_FORM"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.CREATE_FORM: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		'opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.CREATE_FORMDATA(${formData})"$)
		End If
		'
		Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("create", Array(formData,opt)))
		If Record.ContainsKey("id") Then
			If fileFields.Size > 0 Then
				For Each fk As String In fileFields.keys
					Dim fv As String = fileFields.Get(fk)
					Dim fk1 As String = Record.Get(fk)
					Dim pk1 As String = Record.Get(PrimaryKey)
					fk1 = CStr(fk1).trim
					If fk1 <> "" Then
						Dim fk2 As String = $"${baseURL}/api/files/${sTableName}/${pk1}/${fk1}"$
						Record.Put(fv, fk2)
						If GetFiles Then
							Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
							Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
							If bisBase64Image Then
								Record.Put(fk, fdata)
							Else
								Record.Put(fk, "")
							End If
						End If
					End If
				Next
			End If
			Return Record
		Else
			Record = CreateMap()
			Return Record
		End If
	Catch
		Log($"CREATE_FORM: ${LastException.message}"$)
		Record = CreateMap()
		Return Record
	End Try
End Sub

'record is saved as json string
'returns the record id
'<code>
'pb.PrepareForm
'pb.SetFormFile("avatar", fileObj)
'pb.SetFormField("username", "user1")
'BANano.Await(pb.UPDATE_FORM)
'</code>
Sub UPDATE_FORM(sID As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.UPDATE_FORMDATA"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.UPDATE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		'
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.UPDATE_FORMDATA(${BANano.ToJson(opt)})"$)
		End If
		Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("update", Array(sID, formData, opt)))
		If Record.ContainsKey(PrimaryKey) Then
			If fileFields.Size > 0 Then
				For Each fk As String In fileFields.keys
					Dim fv As String = fileFields.Get(fk)
					Dim fk1 As String = Record.Get(fk)
					Dim pk1 As String = Record.Get(PrimaryKey)
					fk1 = CStr(fk1).trim
					If fk1 <> "" Then
						Dim fk2 As String = $"${baseURL}/api/files/${sTableName}/${pk1}/${fk1}"$
						Record.Put(fv, fk2)
						If GetFiles Then
							Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
							Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
							If bisBase64Image Then
								Record.Put(fk, fdata)
							Else
								Record.Put(fk, "")
							End If
						End If
					End If
				Next
			End If
			Return Record
		Else
			Record = CreateMap()
			Return Record
		End If
	Catch
		Log($"UPDATE_FORM: ${LastException.message}"$)
		Record = CreateMap()
		Return Record
	End Try
End Sub

'ceate a ecod using fomdata
'<code>
'pb.PrepareForm
'pb.SetFormFile("fileobj", fileObj)
'pb.SetFormField("username", "user1")
'dim m As map = BANano.Await(pb.CREATE_FORMDATA("fileobj"))
'dim id as String = m.get("id")
'dim url as String = m.get("fileurl")
'</code>
Sub CREATE_FORMDATA(fileField As String) As Map
	Dim nfieldName As String = $"${fileField}url"$
	fileFields.Put(fileField, nfieldName)
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.CREATE_FORMDATA"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.CREATE_FORMDATA: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		'opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.CREATE_FORMDATA(${formData})"$)
		End If
		'
		Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("create", Array(formData,opt)))
		If Record.ContainsKey("id") Then
			If fileFields.Size > 0 Then
				For Each fk As String In fileFields.keys
					Dim fv As String = fileFields.Get(fk)
					Dim fk1 As String = Record.Get(fk)
					Dim pk1 As String = Record.Get(PrimaryKey)
					fk1 = CStr(fk1).trim
					If fk1 <> "" Then
						Dim fk2 As String = $"${baseURL}/api/files/${sTableName}/${pk1}/${fk1}"$
						Record.Put(fv, fk2)
						If GetFiles Then
							Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
							Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
							If bisBase64Image Then
								Record.Put(fk, fdata)
							Else
								Record.Put(fk, "")
							End If
						End If
					End If
				Next
			End If
			Return Record
		Else
			Record = CreateMap()
			Return Record
		End If
	Catch
		Log($"CREATE_FORMDATA: ${LastException.message}"$)
		Record = CreateMap()
		Return Record
	End Try		
End Sub

'<code>
'DEPRECATED - use FILE_FIELD(?, ?)
'create a new field to have a complete url path of the files
'the first field is the actual field name
'BANano.Await(pb.EstablishFileUrl("fileobj", "fileurl"))
'</code>
Sub EstablishFileUrl(fileField As String, urlField As String)
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.EstablishFileUrl(${fileField},${urlField})"$)
	End If
	BANano.Console.warn($"DEPRECATED - ${mEvent}.EstablishFileUrl.${sTableName}.${fileField}.${urlField}, change to ${mEvent}.FILE_FIELD("${fileField}", "${urlField}")"$)
	Try
		Dim rTot As Int = result.Size - 1
		Dim rCnt As Int
		For rCnt = 0 To rTot
			Dim r As Map = result.Get(rCnt)
			Dim firstFilename As String = r.Get(fileField)
			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			Dim url As String = client.GetField("files").RunMethod("getUrl", Array(r, firstFilename,opt)).result
			r.Put(urlField, url)
			result.Set(rCnt, r)
		Next
	Catch
		Log($"EstablishFileUrl: ${LastException.message}"$)
	End Try	
End Sub

'select existings fields to create a view
'<code>
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_VIEW(viewName As String)
	Try
		sTableName = viewName
		Dim cfileFields As Map = BANano.DeepClone(fileFields)
		Reset
		CLEAR_WHERE
		skipTotal = False
		fileFields = BANano.DeepClone(cfileFields)
		BANano.Await(SELECT_ALL)
	Catch
		Log($"SELECT_VIEW: ${LastException.message}"$)
	End Try		
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

'<code>
'create a new field to have a complete url path of the files
'the first field is the actual field name
'BANano.Await(pb.EstablishFileUrl1(rec, "fileobj", "fileurl"))
'</code>
Sub EstablishFileUrl1(rec As Map, fileField As String, urlField As String)
	Dim firstFilename As String = rec.Get(fileField)
	Dim opt As Map = CreateMap()
	opt.Put("cache", "no-store")
	If headers.Size <> 0 Then
		opt.Put("headers", headers)
	End If
	Dim url As String = client.GetField("files").RunMethod("getUrl", Array(rec, firstFilename,opt)).result
	rec.Put(urlField, url)
End Sub

Sub GetDocumentURL(fileField As String) As String
	Dim firstFilename As String = Record.Get(fileField)
	Dim opt As Map = CreateMap()
	opt.Put("cache", "no-store")
	If headers.Size <> 0 Then
		opt.Put("headers", headers)
	End If
	Dim url As String = client.GetField("files").RunMethod("getUrl", Array(Record, firstFilename,opt)).result
	Return url
End Sub

'<code>
'create a new field to have a complete url path of the files
'the first field is the actual field name
'BANano.Await(pb.GetFileURLTo(rec, "fileobj", "fileurl"))
'</code>
Sub getFileURLTo(rec As Map, fileField As String, urlField As String)
	Dim firstFilename As String = rec.Get(fileField)
	Dim opt As Map = CreateMap()
	opt.Put("cache", "no-store")
	If headers.Size <> 0 Then
		opt.Put("headers", headers)
	End If
	Dim url As String = client.GetField("files").RunMethod("getUrl", Array(rec, firstFilename,opt)).result
	rec.Put(urlField, url)
End Sub

'record is saved as json string
'returns the record id
'<code>
'pb.PrepareForm
'pb.SetFormFile("avatar", fileObj)
'pb.SetFormField("username", "user1")
'BANano.Await(pb.UPDATE_FORMDATA("10"))
'</code>
Sub UPDATE_FORMDATA(sID As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.UPDATE_FORMDATA"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.UPDATE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		'
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.UPDATE_FORMDATA(${BANano.ToJson(opt)})"$)
		End If
		Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("update", Array(sID, formData, opt)))
		If Record.ContainsKey(PrimaryKey) Then
			If fileFields.Size > 0 Then
				For Each fk As String In fileFields.keys
					Dim fv As String = fileFields.Get(fk)
					Dim fk1 As String = Record.Get(fk)
					Dim pk1 As String = Record.Get(PrimaryKey)
					fk1 = CStr(fk1).trim
					If fk1 <> "" Then
						Dim fk2 As String = $"${baseURL}/api/files/${sTableName}/${pk1}/${fk1}"$
						Record.Put(fv, fk2)
						If GetFiles Then
							Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
							Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
							If bisBase64Image Then
								Record.Put(fk, fdata)
							Else
								Record.Put(fk, "")
							End If
						End If
					End If
				Next
			End If
			Dim k As String = Record.Get("id")
			Return k
		Else
			Record = CreateMap()
			Return ""
		End If
	Catch
		Log($"UPDATE_FORMDATA: ${LastException.message}"$)
		Record = CreateMap()
		Return ""
	End Try
End Sub

'get an id of a record using a unique field
Sub GET_ID_BY_FIELD(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.GET_ID_BY_FIELD(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	Dim sid As String = m.GetDefault("id", "")
	Return sid
End Sub

Sub GET_ID_BY_FIELD_FETCH(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.GET_ID_BY_FIELD_FETCH(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	Dim sid As String = m.GetDefault("id", "")
	Return sid
End Sub

'backward compatible with lowcode generator
Sub READ_ID_BY_FETCH(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.GET_ID_BY_FIELD_FETCH(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	Dim sid As String = m.GetDefault("id", "")
	Return sid
End Sub


Sub UPDATE_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.UPDATE_BY_STRING(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	If sid = "" Then Return ""
	Record.Put("id", sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
End Sub

Sub UPDATE_BY(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.UPDATE_BY(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(READ_ID_BY_STRING(fldName, fldValue))
	If sid = "" Then Return ""
	Record.Put("id", sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
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
		Log($"SDUIPocketBase.${sTableName}.UPDATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.UPDATE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Dim id As String = Record.Get("id")
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.UPDATE(${BANano.ToJson(opt)})"$)
		End If
		
		Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("update", Array(id, Record,opt)))
		If Record.ContainsKey("id") Then
			Dim k As String = Record.Get("id")
			Return k
		End If
		Return ""
	Catch
		Log($"UPDATE: ${LastException.message}"$)
		Return ""
	End Try
End Sub

Sub UPDATE_PER_FIELD As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.UPDATE_PER_FIELD"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.UPDATE_PER_FIELD: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	Dim msize As Int = 0
	Dim usize As Int = 0
	Dim currentRecord As Map = BANano.DeepClone(Record)
	Dim currentID As String = currentRecord.Get("id")
	For Each k As String In currentRecord.Keys
		If k = "id" Then Continue
		msize = BANano.parseInt(msize) + 1
		'create a record with id and field to update
		Dim v As Object = currentRecord.Get(k)
		Dim nrec As Map = CreateMap()
		nrec.Put("id", currentID)
		nrec.Put(k, v)
		flds.Initialize
		flds.Add("id")
		expand.Initialize
		'
		Try
			Dim qflds As String = Join(",", flds)
			Dim qexpand As String = Join(",", expand)

			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			Dim id As String = nrec.Get("id")
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.UPDATE_PER_FIELD(${BANano.ToJson(opt)})"$)
			End If
		
			Dim r As Map = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("update", Array(id, nrec,opt)))
			If r.ContainsKey("id") Then
				Dim kk As String = r.Get("id")
				If kk = currentID Then
					usize = BANano.parseInt(usize) + 1
				End If
			End If
		Catch
			Log($"UPDATE_PER_FIELD: ${LastException.message}"$)
		End Try
	Next
	If usize = msize Then
		Return currentID
	Else
		Return ""
	End If
End Sub


'get a value using key
'<code>
'Dim res As Map = BANano.Await(pb.READ("name"))
'</code>
Sub READ(id As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.READ: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		'
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		'
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.READ(${BANano.ToJson(opt)})"$)
		End If
		Record = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("getOne", Array(id, opt)))
		If fileFields.Size > 0 Then
			For Each fk As String In fileFields.keys
				Dim fv As String = fileFields.Get(fk)
				Dim fk1 As String = Record.Get(fk)
				Dim pk1 As String = Record.Get(PrimaryKey)
				fk1 = CStr(fk1).trim
				If fk1 <> "" Then
					Dim fk2 As String = $"${baseURL}/api/files/${sTableName}/${pk1}/${fk1}"$
					Record.Put(fv, fk2)
					If GetFiles Then
						Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
						Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
						If bisBase64Image Then
							Record.Put(fk, fdata)
						Else
							Record.Put(fk, "")
						End If
					End If
				End If				
			Next
		End If
		Return Record
	Catch
		Log($"READ: ${LastException.message}"$)
		Record = CreateMap()
		Return Record
	End Try
End Sub

'<code>
'read a record by a unique field and return listed fields
'Dim result As Map = BANano.Await(pbComponents.READ_FIELDS("xxx", array("id", "name")))
'</code>
Sub READ_FIELDS(fldValue As Object, theseFlds As List) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_FIELDS(${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELDS(theseFlds)
	ADD_WHERE_STRING("id", "=", fldValue)
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	Return m
End Sub


'get a value using key
'<code>
'Dim res As Map = BANano.Await(pb.READ_USER("name"))
'</code>
Sub READ_USER(id As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_USER(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.READ_USER: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		'
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		'
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.READ_USER(${BANano.ToJson(opt)})"$)
		End If
		Record = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("getOne", Array(id,opt)))
		If fileFields.Size > 0 Then
			For Each fk As String In fileFields.keys
				Dim fv As String = fileFields.Get(fk)
				Dim fk1 As String = Record.Get(fk)
				Dim pk1 As String = Record.Get(PrimaryKey)
				fk1 = CStr(fk1).trim
				If fk1 <> "" Then
					Dim fk2 As String = $"${baseURL}/api/files/${UsersCollectionName}/${pk1}/${fk1}"$
					Record.Put(fv, fk2)
					If GetFiles Then
						Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
						Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
						If bisBase64Image Then
							Record.Put(fk, fdata)
						Else
							Record.Put(fk, "")
						End If
					End If
				End If
			Next
		End If
		Return Record
	Catch
		Log($"READ_USER: ${LastException.message}"$)
		Record = CreateMap()
		Return Record
	End Try
End Sub

'get a value using key
'<code>
'Dim res As Map = BANano.Await(pb.READ_ADMIN("name"))
'</code>
Sub READ_ADMIN(id As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_ADMIN(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.READ_USER: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Dim m As Map = CreateMap()
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		'
		Dim xtablename As String = "admins"
		Select Case Upgrade
			Case False
				m = BANano.Await(client.GetField("admins").RunMethod("getOne", Array(id,opt)))
			Case Else
				xtablename = "_superusers"
				m = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("getOne", Array(id, opt)))
		End Select
		Record = m
		If fileFields.Size > 0 Then
			For Each fk As String In fileFields.keys
				Dim fv As String = fileFields.Get(fk)
				Dim fk1 As String = Record.Get(fk)
				Dim pk1 As String = Record.Get(PrimaryKey)
				fk1 = CStr(fk1).trim
				If fk1 <> "" Then
					Dim fk2 As String = $"${baseURL}/api/files/${xtablename}/${pk1}/${fk1}"$
					Record.Put(fv, fk2)
					If GetFiles Then
						Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
						Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
						If bisBase64Image Then
							Record.Put(fk, fdata)
						Else
							Record.Put(fk, "")
						End If
					End If
					m.Put(fv, fk2)
				End If
			Next
		End If
		Return m
	Catch
		Log($"READ_ADMIN: ${LastException.message}"$)
		Record = m
		Return m
	End Try
End Sub

'get a value using key
'<code>
'Dim res As Map = BANano.Await(pb.READ_COLLECTION("name"))
'</code>
Sub READ_COLLECTION(id As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.READ_COLLECTION(${id})"$)
	End If
	Dim m As Map = CreateMap()
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		m = BANano.Await(client.GetField("collections").RunMethod("getOne", Array(id,opt)))
		Record = m
		Return m
	Catch
		Record = m
		Return m
	End Try
End Sub

'<code>
'read a record using a unique field
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'Dim result As Map = BANano.Await(pbComponents.READ_BY_STRING("name", "xxx"))
'</code>
Sub READ_BY_STRING(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE_STRING(fldName, "=", fldValue)
	For Each fld As String In Schema.Keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	Return m
End Sub

'<code>
'Dim result As Map = BANano.Await(pbComponents.READ_BY_STRING_FETCH("name", "xxx"))
'</code>
Sub READ_BY_STRING_FETCH(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_BY_STRING_FETCH(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	Return m
End Sub

'<code>
'read a record using a unique field and return listed fields
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'Dim result As Map = BANano.Await(pbComponents.READ_BY_STRING_FIELDS("name", "xxx", array("id", "name"))))
'</code>
Sub READ_BY_STRING_FIELDS(fldName As String, fldValue As Object, theseFlds As List) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELDS(theseFlds)
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then 
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	Return m
End Sub

'<code>
''use fetch to read specified fields from a collection
'Dim result As Map = BANano.Await(pbComponents.READ_BY_STRING_FIELDS_FETCH("name", "xxx", array("id", "name"))))
'</code>
Sub READ_BY_STRING_FIELDS_FETCH(fldName As String, fldValue As Object, theseFlds As List) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_BY_STRING_FIELDS_FETCH(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELDS(theseFlds)
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	Return m
End Sub

'get a value using key
'<code>
'Dim res As Map = BANano.Await(pb.READ_FETCH("name"))
'</code>
Sub READ_FETCH(id As String) As Map
	whereEqual("id", id)
	Record = BANano.Await(GetFirstListItemFetch(sTableName))
	Return Record
End Sub

'<code>
''use fetch to read specified fields from a collection
'Dim result As Map = BANano.Await(pbComponents.READ_FIELDS_FETCH("id", array("id", "name"))))
'</code>
Sub READ_FIELDS_FETCH(fldValue As Object, theseFlds As List) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_FIELDS_FETCH(${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELDS(theseFlds)
	whereEqual("id", fldValue)
	Record = BANano.Await(GetFirstListItemFetch(sTableName))
	Return Record
End Sub


'<code>
'read a record using a unique field and return listed fields
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'Dim result As Map = BANano.Await(pbComponents.READ_BY_STRING_FIELDS1("name", "xxx")))
'</code>
Sub READ_BY_STRING_FIELDS1(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_BY_STRING(${fldName},${fldValue})"$)
	End If
	Dim cf As List = BANano.DeepClone(flds)
	CLEAR_WHERE
	ADD_FIELDS(cf)
	ADD_WHERE_STRING(fldName, "=", fldValue)
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	Return m
End Sub

'return an id of a record by reading a unique string field
'backward compatibility with low code generator
Sub READ_ID_BY(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_ID_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	Dim sid As String = m.GetDefault("id", "")
	Return sid
End Sub

'return an id of a record by reading a unique string field
Sub READ_ID_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_ID_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	Dim sid As String = m.GetDefault("id", "")
	Return sid
End Sub

'return an id of a record by reading a unique string field
Sub READ_ID_BY_STRING_FETCH(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_ID_BY_STRING_FETCH(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	Dim sid As String = m.GetDefault("id", "")
	Return sid
End Sub

'<code>
'read a record by a unique field
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'Dim result As Map = BANano.Await(pbComponents.READ_BY("name", "xxx"))
'</code>
Sub READ_BY(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	Return m
End Sub

'<code>
'read a record by a unique field
'Dim result As Map = BANano.Await(pbComponents.READ_BY_FETCH("name", "xxx"))
'</code>
Sub READ_BY_FETCH(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_BY_FETCH(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	Return m
End Sub

'<code>
'read a record by a unique field and return listed fields
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'Dim result As Map = BANano.Await(pbComponents.READ_BY_FIELDS("name", "xxx", array("id", "name")))
'</code>
Sub READ_BY_FIELDS(fldName As String, fldValue As Object, theseFlds As List) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_BY_FIELDS(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELDS(theseFlds)
	ADD_WHERE(fldName, "=", fldValue)
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	Return m
End Sub

'<code>
'Dim result As Map = BANano.Await(pbComponents.READ_BY_FIELDS_FETCH("name", "xxx", array("id", "name")))
'</code>
Sub READ_BY_FIELDS_FETCH(fldName As String, fldValue As Object, theseFlds As List) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.READ_BY_FIELDS_FETCH(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELDS(theseFlds)
	ADD_WHERE(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	Return m
End Sub


'Tests whether a key is available in the store.
'<code>
'Dim res as boolean = BANano.Await(pb.ContainsKey("a"))
'</code>
Sub ContainsKey(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ContainsKey(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.ContainsKey: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	ADD_WHERE("id", "=", $"'${id}'"$)
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	If m.Size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'Tests whether a key is available in the store.
'<code>
'Dim res as boolean = BANano.Await(pb.ContainsKeyFetch("a"))
'</code>
Sub ContainsKeyFetch(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ContainsKeyFetch(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.ContainsKeyFetch: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	ADD_WHERE("id", "=", $"'${id}'"$)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	If m.Size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

Sub ContainsField(fldName As String, id As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ContainsField(${fldName},${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.ContainsField: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", $"'${id}'"$)
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	If m.Size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

Sub ContainsFieldFetch(fldName As String, id As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ContainsFieldFetch(${fldName},${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.ContainsFieldFetch: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", $"'${id}'"$)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	If m.Size = 0 Then
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
		Log($"SDUIPocketBase.${sTableName}.ListKeys"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.ListKeys: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	result = BANano.Await(SELECT_WHERE)
	Dim res As List
	res.Initialize
	For Each rec As Map In result
		Dim k As String = rec.GetDefault("id", "")
		k = CStr(k)
		res.Add(k)
	Next
	Return res
End Sub

Sub DELETE_ALL
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.DELETE_ALL"$)
	End If
	Try
		Dim keys As List = BANano.Await(ListKeys)
		If keys.size = 0 Then Return
		Dim collection As BANanoObject = client.RunMethod("collection", sTableName)
		For Each k As String In keys
			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			BANano.Await(collection.RunMethod("delete", Array(k, opt)))
		Next
	Catch
		Log($"DELETE_ALL: ${LastException.message}"$)
	End Try		
End Sub

'get keyvalues for combos etc
'<code>
'Dim mExpenseCategories As Map = banano.Await(pbExpenseCategories.GetKeyValues(True, "id", "name"))
'</code>
Sub GetKeyValues(bHasNothing As Boolean, k As String, v As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.GetKeyValues(${bHasNothing},${k},${v})"$)
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
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.GetKeyValuesFromList()"$)
	End If
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


'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE("a"))
'</code>
Sub DELETE(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.DELETE(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.DELETE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.${sTableName}.DELETE(${BANano.ToJson(opt)})"$)
		End If
		Dim r As Boolean = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("delete", Array(id,opt)))
		Return r
	Catch
		Log($"DELETE: ${LastException.message}"$)
		Return False
	End Try
End Sub

'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE_MULTIPLE(array("a")))
'</code>
Sub DELETE_MULTIPLE(items As List) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.DELETE_MULTIPLE()"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.DELETE_MULTIPLE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	Try
		For Each delID As String In items
			Dim opt As Map = CreateMap()
			opt.Put("cache", "no-store")
			If headers.Size <> 0 Then
				opt.Put("headers", headers)
			End If
			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.DELETE_MULTIPLE(${BANano.ToJson(opt)})"$)
			End If
			BANano.Await(client.RunMethod("collection", sTableName).RunMethod("delete", Array(delID,opt)))
		Next
		Return True
	Catch
		Log($"DELETE_MULTIPLE: ${LastException.message}"$)
		Return False
	End Try
End Sub

'to delete the file set the fldValue = null
Sub SetField(fldName As String, fldValue As Object) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SetField(${fldName}, ${fldValue})"$)
	End If
	If Schema.ContainsKey(fldName) Then
		Dim dt As String = Schema.Get(fldName)
		Select Case dt
			Case DB_BOOL
				fldValue = CBool(fldValue)
			Case DB_INT
				fldValue = CInt(fldValue)
			Case DB_STRING
				fldValue = CStr(fldValue)
			Case DB_REAL
				fldValue = CDbl(fldValue)
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

'parseBool
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

Sub RecordFromMap(sm As Map)
	Record.Initialize
	For Each k As String In sm.Keys
		Dim v As Object = sm.Get(k)
		Record.Put(k, v)
	Next
End Sub

Sub FirstRecord As Map
	Dim rec As Map = result.Get(0)
	Return rec
End Sub

'clear where clause
Sub CLEAR_WHERE As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.CLEAR_WHERE"$)
	End If
	whereField.Initialize
	ops.Initialize
	expand.Initialize
	orderByL.Initialize
	flds.Initialize
	combineL.Initialize
	skipTotal = True
	headers.Initialize
	fileFields.Initialize
	CountRecords = False
	grpBy.Initialize
	Return Me
End Sub

Sub ADD_GROUP_BY(grpBys As List)
	grpBy.AddAll(grpBys)
End Sub

Sub Reset As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.Reset"$)
	End If
	whereField.Initialize
	ops.Initialize
	expand.Initialize
	orderByL.Initialize
	flds.Initialize
	combineL.Initialize
	RowCount = 0
	lastPosition = -1
	Record.Initialize
	result.Initialize
	Success = False
	Tag = Null
	Schema.Initialize
	DisplayField = ""
	Singular = ""
	Plural = ""
	DisplayValue = ""
	UserProfile.Initialize
	fileFields.Initialize
	IsAuthenticated = False
	CountRecords = False
	Upgrade = False
	SchemaAddText1("id")
	Return Me
End Sub

Sub ADD_FIELD(fld As String) As SDUIPocketBase
	flds.Add(fld)
	Return Me
End Sub

Sub getFields As List
	Return flds
End Sub

Sub setFields(tflds As List)
	flds.Clear
	For Each k As String In tflds
		flds.Add(k)
	Next
End Sub

'add a file field and its url counterpart
Sub FILE_FIELD(fld As String, fldUrl As String) As SDUIPocketBase
	fileFields.Put(fld, fldUrl)
	Return Me
End Sub

Sub ADD_FILE_FIELD(fld As String, fldURL As String) As SDUIPocketBase
	FILE_FIELD(fld, fldURL)
	Return Me
End Sub

Sub ADD_FIELDS(fields As List) As SDUIPocketBase
	For Each fld As String In fields
		ADD_FIELD(fld)
	Next
	Return Me
End Sub

Sub ADD_EXPAND(sexpand As String) As SDUIPocketBase
	sexpand = sexpand.trim
	If sexpand <> "" Then
		expand.Add(sexpand)
	End If
	Return Me
End Sub

'add a where clause for your select where
'for same fields, suffix them with .1, .2 etc
'LIKE
Sub ADD_WHERE(fld As String, operator As String, value As Object) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ADD_WHERE(${fld},${operator},${value})"$)
	End If
	Select Case operator
		Case "<>"
			operator = "!="
		Case "like"
			operator = "~"
	End Select
	whereField.Put(fld, value)
	ops.Add(operator)
	combineL.Add("&&")
	Return Me
End Sub

'add a where clause for your select where
'for same fields, suffix them with .1, .2 etc
Sub ADD_WHERE_STRING(fld As String, operator As String, value As Object) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ADD_WHERE_STRING(${fld},${operator},${value})"$)
	End If
	ADD_WHERE(fld, operator, $"'${value}'"$)
	Return Me
End Sub

Sub ADD_OR_WHERE_STRING(fld As String, operator As String, value As Object) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ADD_OR_WHERE_STRING(${fld},${operator},${value})"$)
	End If
	Dim combineLen As Int = combineL.Size - 1
	WHERE_OR(combineLen)
	ADD_WHERE(fld, operator, $"'${value}'"$)
	Return Me
End Sub

Sub ADD_OR_WHERE(fld As String, operator As String, value As Object) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ADD_OR_WHERE(${fld},${operator},${value})"$)
	End If
	Dim combineLen As Int = combineL.Size - 1
	WHERE_OR(combineLen)
	ADD_WHERE(fld, operator, value)
	Return Me
End Sub

'change the selection at position from AND to OR
Sub WHERE_OR(pos As Int) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.WHERE_OR(${pos})"$)
	End If
	combineL.Set(pos, "||")
	Return Me
End Sub

'change the selection at position to AND
Sub WHERE_AND(pos As Int) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.WHERE_AND(${pos})"$)
	End If
	combineL.Set(pos, "&&")
	Return Me
End Sub

'add a sort field
Sub ADD_ORDER_BY(fld As String) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ADD_ORDER_BY(${fld})"$)
	End If
	orderByL.Add(fld)
	Return Me
End Sub

Sub ADD_ORDER_BY_DESC(fld As String) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ADD_ORDER_BY_DESC(${fld})"$)
	End If
	orderByL.Add($"-${fld}"$)
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
	If MatchSchema Then
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
			Case DB_STRING
				v = CStr(v)
			Case DB_REAL
				v = CDbl(v)
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
		Log($"SDUIPocketBase.${sTableName}.SetRecord(${BANano.ToJson(Record)})"$)
	End If
End Sub

'prepare a new record
Sub PrepareRecord
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.PrepareRecord"$)
	End If
	CLEAR_WHERE
	AddHeader("Content-Type",  "application/json")
	Record.Initialize
End Sub

'prepare FormData
'to subfile file
Sub PrepareForm
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.PrepareForm"$)
	End If
	CLEAR_WHERE
	Record.Initialize
	formData.Initialize2("FormData", Null)
End Sub

'set a field for file, this appends to fomData
'to delete the file set the fldValue = null
Sub SetFormFile(fldName As String, fldValue As Object) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SetFormFile(${fldName}, ${fldValue})"$)
	End If
	Dim dt As String = Schema.Get(fldName)
	Select Case dt
		Case DB_BOOL
			fldValue = CBool(fldValue)
		Case DB_INT
			fldValue = CInt(fldValue)
		Case DB_STRING
			fldValue = CStr(fldValue)
		Case DB_REAL
			fldValue = CDbl(fldValue)
		Case DB_FLOAT
			fldValue = CDbl(fldValue)
		Case DB_INTEGER
			fldValue = CInt(fldValue)
		Case DB_TEXT, DB_LONGTEXT
			fldValue = CStr(fldValue)
		Case DB_DOUBLE
			fldValue = CDbl(fldValue)
	End Select
	formData.RunMethod("set", Array(fldName, fldValue))
	Return Me
End Sub

'set form values from a map
Sub SetForm(m As Map)
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		SetFormField(k, v)
	Next
End Sub

'set a field for form
'to delete the file set the fileObj = null
Sub SetFormField(fldName As String, fldValue As Object) As SDUIPocketBase
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SetFormField(${fldName}, ${fldValue})"$)
	End If
	Dim dt As String = Schema.Get(fldName)
	Select Case dt
		Case DB_BOOL
			fldValue = CBool(fldValue)
		Case DB_INT
			fldValue = CInt(fldValue)
		Case DB_STRING
			fldValue = CStr(fldValue)
		Case DB_REAL
			fldValue = CDbl(fldValue)
		Case DB_FLOAT
			fldValue = CDbl(fldValue)
		Case DB_INTEGER
			fldValue = CInt(fldValue)
		Case DB_TEXT, DB_LONGTEXT
			fldValue = CStr(fldValue)
		Case DB_DOUBLE
			fldValue = CDbl(fldValue)
	End Select
	formData.RunMethod("set", Array(fldName, fldValue))
	Return Me
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

Sub SetRecordAt(pos As Int, rec As Map)
	result.Set(pos, rec)
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

Sub findWhereOrderBy(whereMap As Map, whereOps As List, orderByx As List) As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.findWhereOrderBy(${BANano.ToJson(whereMap)},${whereOps},${orderByx})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.findWhereOrderBy: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	'
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next
	
	' Build filter
	Dim sb As StringBuilder
	sb.Initialize
	If ownFilter.Size > 0 Then
		Dim nfilter As String = Join(" ", ownFilter)
		nfilter = nfilter.trim
		sb.Append(nfilter)
	End If
	Dim i As Int
	Dim iWhere As Int = whereMap.Size - 1
	For i = 0 To iWhere
		Dim col As String = whereMap.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
		Dim xVal As String = whereMap.GetValueAt(i)
		Dim opr As String = whereOps.Get(i)
		Dim com As String = combineL.Get(i)
		sb.Append(col)
		sb.Append(opr)
		sb.Append(xVal)
		sb.Append(com)
	Next
	Dim qfilter As String = RemDelim(sb.ToString, com).Trim
	
	' Build sort, fields, expand
	Dim qsort As String = ""
	If BANano.IsList(orderByx) Then
		qsort = Join(",", orderByx)
	End If
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)

	' Initialize result list
	Dim allRecords As List
	allRecords.Initialize

	Try
		Dim page As Int = 1
		Dim totalPages As Int = 1  ' Will be updated after first call

		Do While page <= totalPages
			Dim opt As Map = CreateMap()
			opt.Put("page", page)
			opt.Put("perPage", batchSize)
			If qsort <> "" Then opt.Put("sort", qsort)
			If qflds <> "" Then opt.Put("fields", qflds)
			If qexpand <> "" Then opt.Put("expand", qexpand)
			If qfilter <> "" Then opt.Put("filter", qfilter)
			If headers.Size <> 0 Then opt.Put("headers", headers)
			opt.Put("cache", "no-store")
			If page <> 1 Then opt.Put("skipTotal", True)

			If ShowLog Then
				Log($"SDUIPocketBase.${sTableName}.findWhereOrderBy PAGE ${page}: ${BANano.ToJson(opt)}"$)
			End If

			' Fetch paginated result
			Dim res As Map = BANano.Await(client.RunMethod("collection", sTableName).RunMethod("getList", Array(page, batchSize, opt)))
			Dim items As List = res.Get("items")
			If page = 1 Then totalPages = res.Get("totalPages")
			
			' Process file fields if needed
			If fileFields.Size > 0 Then
				For rCnt = 0 To items.Size - 1
					Dim r As Map = items.Get(rCnt)
					For Each fk As String In fileFields.Keys
						Dim fv As String = fileFields.Get(fk)
						Dim fk1 As String = r.Get(fk)
						Dim pk1 As String = r.Get(PrimaryKey)
						fk1 = CStr(fk1).trim
						If fk1 <> "" Then
							Dim fk2 As String = $"${baseURL}/api/files/${sTableName}/${pk1}/${fk1}"$
							r.Put(fv, fk2)
							If GetFiles Then
								Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
								Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
								If bisBase64Image Then
									r.Put(fk, fdata)
								Else
									r.Put(fk, "")
								End If
							End If
						End If
					Next
					items.Set(rCnt, r)
				Next
			End If

			' Add to full result list
			allRecords.AddAll(items)

			page = page + 1
		Loop

	Catch
		Log($"findWhereOrderBy: ${LastException.message}"$)
	End Try

	Return allRecords
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


'Execute a where clause on the records
'The result is a list with the values.
'<code>
'Dim WhereRecords As List = BANano.Await(pb.findWhereOR(m, array("="))
'</code>
Sub findWhere(whereMap As Map, whereOps As List) As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.findWhere(${BANano.ToJson(whereMap)},${whereOps})"$)
	End If
	Dim res As List = BANano.Await(findWhereOrderBy(whereMap, whereOps, Null))
	Return res
End Sub

'Execute a where clause on the records
'The result is a list with the values.
'<code>
'Dim WhereRecords As List = BANano.Await(pb.findWhereOR(m, array("="))
'</code>
Sub findWhereFetch(whereMap As Map, whereOps As List) As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.findWhereFetch(${BANano.ToJson(whereMap)},${whereOps})"$)
	End If
	Dim res As List = BANano.Await(findWhereOrderByFetch(whereMap, whereOps, Null))
	Return res
End Sub

'<code>
'BANano.Await(pb.DELETE_BY(1))
'</code>
Sub DELETE_BY(fldName As String, fldValue As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.DELETE_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	ADD_FIELD("id")
	ADD_FIELD(fldName)
	Dim b As Boolean = BANano.Await(deleteWhere("id", whereField, ops))
	Return b
End Sub

'<code>
'BANano.Await(pb.DELETE_BY_STRING("a"))
'</code>
Sub DELETE_BY_STRING(fldName As String, fldValue As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.DELETE_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE_STRING(fldName, "=", fldValue)
	ADD_FIELD("id")
	ADD_FIELD(fldName)
	Dim b As Boolean = BANano.Await(deleteWhere("id", whereField, ops))
	Return b
End Sub

'Execute a delete clause on the records
'<code>
'BANano.Await(pb.deleteWhere("id", m, array("=")))
'</code>
Sub deleteWhere(priKey As String, whereMap As Map, whereOps As List) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.deleteWhere(${priKey},${BANano.ToJson(whereMap)},${whereOps})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.deleteWhere: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	'get all the records
	Dim recs As List = BANano.Await(findWhere(whereMap, whereOps))
	If recs.Size = 0 Then Return False
	'
	For Each rec As Map In recs
		Dim pvalue As String = rec.Get(priKey)
		BANano.Await(DELETE(pvalue))
	Next
	Return True
End Sub

'<code>
'pb.CLEAR_WHERE
'pb.ADD_WHERE_STRING("name", "=", "123")
'pb.ADD_WHERE("id", "=", 3)
'BANano.Await(pb.DELETE_WHERE)
'</code>
Sub DELETE_WHERE
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.DELETE_WHERE"$)
	End If
	BANano.Await(deleteWhere("id", whereField, ops))
End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.ExistsByString("name", "xxx"))
'</code>
Sub ExistsByString(fldName As String, fldValue As Object) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ExistsByString(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	If m.size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.ExistsByStringFetch("name", "xxx"))
'</code>
Sub ExistsByStringFetch(fldName As String, fldValue As Object) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ExistsByStringFetch(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	If m.size = 0 Then
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
		Log($"SDUIPocketBase.${sTableName}.Exists(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	If m.size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.ExistsFetch("id", 1))
'</code>
Sub ExistsFetch(fldName As String, fldValue As Object) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ExistsFetch(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", fldValue)
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	If m.size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.ExistsWhere(CreateMap("id": "1")))
'</code>
Sub ExistsWhere(where As Map) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ExistsWhere(${BANano.ToJson(where)})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	For Each k As String In where.Keys
		Dim v As String = where.Get(k)
		ADD_WHERE_STRING(k, "=", v)
	Next
	Dim m As Map = BANano.Await(GetFirstListItem(sTableName))
	If m.size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.ExistsWhereFetch(CreateMap("id": "1")))
'</code>
Sub ExistsWhereFetch(where As Map) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.ExistsWhere(${BANano.ToJson(where)})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("id")
	For Each k As String In where.Keys
		Dim v As String = where.Get(k)
		ADD_WHERE_STRING(k, "=", v)
	Next
	Dim m As Map = BANano.Await(GetFirstListItemFetch(sTableName))
	If m.size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

Sub COUNT_ALL As Int
	BANano.Await(SELECT_RAW($"select count(*) as records from ${sTableName}"$))
	Dim rec As Int = GetRecordsCount
	Return rec
End Sub

'<code>
'pbComponents.CLEAR_WHERE
'pbComponents.ADD_WHERE_STRING("attractive", "=", "true")
'pbComponents.ADD_ORDER_BY("attrname")
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'Dim result As List = BANano.Await(pbComponents.SELECT_WHERE)
'For Each record As Map In result
'Dim sid As String = record.Get("id")
'Next
'</code>
Sub SELECT_WHERE As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SELECT_WHERE"$)
	End If
	Dim res As List = BANano.Await(findWhereOrderBy(whereField, ops, orderByL))
	Return res
End Sub

'<code>
'pbComponents.CLEAR_WHERE
'pbComponents.ADD_WHERE_STRING("attractive", "=", "true")
'pbComponents.ADD_ORDER_BY("attrname")
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'Dim result As List = BANano.Await(pbComponents.SELECT_WHERE_FETCH)
'For Each record As Map In result
'Dim sid As String = record.Get("id")
'Next
'</code>
Sub SELECT_WHERE_FETCH As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SELECT_WHERE_FETCH"$)
	End If
	Dim res As List = BANano.Await(findWhereOrderByFetch(whereField, ops, orderByL))
	Return res
End Sub

'get the first item that matches your filter
Sub GetFirstListItem(tableName As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${tableName}.getFirstListItem"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.GetFirstListItem: ${tableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	'
	For Each fld As String In Schema.keys
		Dim fldType As String = Schema.Get(fld)
		If fldType = DB_FILE Then
			FILE_FIELD(fld, $"${fld}url"$)
		End If
	Next

	' Build filter
	Dim sb As StringBuilder
	sb.Initialize
	Dim i As Int
	Dim iWhere As Int = whereField.Size - 1
	For i = 0 To iWhere
		Dim col As String = whereField.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
		Dim xVal As String = whereField.GetValueAt(i)
		Dim opr As String = ops.Get(i)
		Dim com As String = combineL.Get(i)
		sb.Append(col)
		sb.Append(opr)
		sb.Append(xVal)
		sb.Append(com)
	Next
	Dim qfilter As String = RemDelim(sb.ToString, com).Trim
	'we dont have a filter
	If qfilter = "" Then
		Dim m As Map = CreateMap()
		Return m
	End If
	'we have a filter, process further
	'Build sort, fields, expand
	Dim qsort As String = Join(",", orderByL)
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)

	Dim opt As Map = CreateMap()
	If qsort <> "" Then opt.Put("sort", qsort)
	If qflds <> "" Then opt.Put("fields", qflds)
	If qexpand <> "" Then opt.Put("expand", qexpand)
	If headers.Size <> 0 Then opt.Put("headers", headers)
	opt.Put("cache", "no-store")
	'
	If ShowLog Then
		Log($"SDUIPocketBase.${tableName}.GetFirstListItem: ${BANano.ToJson(opt)}"$)
	End If
	
	Try
		Dim res As Map = BANano.Await(client.RunMethod("collection", tableName).RunMethod("getFirstListItem", Array(qfilter, opt)))
		' Process file fields if needed
		If fileFields.Size > 0 Then
			For Each fk As String In fileFields.Keys
				If res.ContainsKey(fk) Then
					Dim fv As String = fileFields.Get(fk)
					Dim fk1 As String = res.Get(fk)
					Dim pk1 As String = res.Get(PrimaryKey)
					fk1 = CStr(fk1).trim
					If fk1 <> "" Then
						Dim fk2 As String = $"${baseURL}/api/files/${tableName}/${pk1}/${fk1}"$
						res.Put(fv, fk2)
						If GetFiles Then
							Dim fdata As String = BANano.Await(BANano.GetFileAsDataURL(fk2, Null))
							Dim bisBase64Image As Boolean = BANano.Await(isBase64Image(fdata))
							If bisBase64Image Then
								res.Put(fk, fdata)
							Else
								res.Put(fk, "")
							End If
						End If
					End If
				End If
			Next
		End If
		Return res
	Catch
		Log($"GetFirstListItem: ${LastException.message}"$)
		Dim m As Map = CreateMap()
		Return m
	End Try
End Sub

'get the first item that matches your filter
Sub GetFirstListItemFetch(tableName As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${tableName}.GetFirstListItemFetch"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.GetFirstListItemFetch: ${tableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	
	' Build filter
	Dim sb As StringBuilder
	sb.Initialize
	Dim i As Int
	Dim iWhere As Int = whereField.Size - 1
	For i = 0 To iWhere
		Dim col As String = whereField.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
		Dim xVal As String = whereField.GetValueAt(i)
		Dim opr As String = ops.Get(i)
		Dim com As String = combineL.Get(i)
		sb.Append(col)
		sb.Append(opr)
		sb.Append(xVal)
		sb.Append(com)
	Next
	Dim qfilter As String = RemDelim(sb.ToString, com).Trim
	'we dont have a filter
	If qfilter = "" Then
		Dim m As Map = CreateMap()
		Return m
	End If
	'we have a filter, process further
	'Build sort, fields, expand
	Dim qsort As String = Join(",", orderByL)
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)

	Dim opt As Map = CreateMap()
	If qsort <> "" Then opt.Put("sort", qsort)
	If qflds <> "" Then opt.Put("fields", qflds)
	If qexpand <> "" Then opt.Put("expand", qexpand)
	If headers.Size <> 0 Then opt.Put("headers", headers)
	opt.Put("cache", "no-store")
	'
	If ShowLog Then
		Log($"SDUIPocketBase.${tableName}.GetFirstListItemFetch: ${BANano.ToJson(opt)}"$)
	End If
	'
	RowCount = 0
	lastPosition = -1
	result.Initialize
	Try
		Dim finalURL As String = $"${baseURL}/api/getlist"$
		Dim fetch As SDUIFetch
		fetch.Initialize(finalURL)
		fetch.AddHeaders(headers)
		fetch.AddData("collection", tableName)
		fetch.AddData("perPage", "1")
		fetch.AddData("page", "1")
		fetch.AddData("getFiles", GetFiles)
		fetch.AddData("filter", qfilter)
		fetch.AddData("sort", qsort)
		fetch.AddData("fields", qflds)
		fetch.AddData("skipTotal", True)
		fetch.NoCache = True
		fetch.SetContentTypeApplicationJSON
		BANano.Await(fetch.PostWait)
		Dim m As Map = fetch.Response
		result = m.Get("items")
		RowCount = result.Size
		Dim mx As Map = CreateMap()
		If result.Size = 1 Then mx = result.Get(0)
		Return mx
	Catch
		Log($"GetFirstListItemFetch: ${LastException.message}"$)
		Dim mx As Map = CreateMap()
		Return mx
	End Try
End Sub

'<code>
'pbComponents.CLEAR_WHERE
'pbComponents.ADD_WHERE_STRING("attractive", "=", "true")
'pbComponents.ADD_ORDER_BY("attrname")
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'BANano.Await(pbComponents.SELECT_WHERE1)
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_WHERE1 As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SELECT_WHERE1"$)
	End If
	result = BANano.Await(findWhereOrderBy(whereField, ops, orderByL))
	RowCount = result.Size
	lastPosition = -1
	Return result
End Sub

'<code>
'pbComponents.CLEAR_WHERE
'pbComponents.ADD_WHERE_STRING("attractive", "=", "true")
'pbComponents.ADD_ORDER_BY("attrname")
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'BANano.Await(pbComponents.SELECT_WHERE1_FETCH)
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_WHERE1_FETCH As List
	If ShowLog Then
		Log($"SDUIPocketBase.${sTableName}.SELECT_WHERE1_FETCH"$)
	End If
	result = BANano.Await(findWhereOrderByFetch(whereField, ops, orderByL))
	RowCount = result.Size
	lastPosition = -1
	Return result
End Sub

Sub SetRecords(lst As List)
	lastPosition = -1
	RowCount = lst.Size
	result = lst
End Sub

'get own unique key with 15 chars alphabets only
'this is a controlled id
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

'define the real record from the db record
'using the schema defined fields
Sub AssignRealRecord(dbRecord As Map)
	Record.Initialize
	For Each k As String In Schema.Keys
		Dim v As Object = dbRecord.Get(k)
		Record.Put(k, v)
	Next
	Record.Remove("collectionId")
	Record.Remove("collectionName")
	DisplayValue = Record.GetDEfault(DisplayField, "")
End Sub

'remove collectionId,collectionName,created,updated
Sub GetRealRecord(dbRecord As Map) As Map
	dbRecord.Remove("collectionId")
	dbRecord.Remove("collectionName")
	dbRecord.Remove("created")
	dbRecord.Remove("updated")
	Return dbRecord
End Sub

'check compulsory fields
public Sub IsRecordValid(m As Map, props As List) As Boolean
	Dim pTot As Int = props.Size
	Dim cTot As Int = 0
	For Each p As String In props
		Dim v As String = CStr(m.Get(p))
		v = v.Trim
		If v <> "" Then
			cTot = BANano.parseInt(cTot) + 1
		End If
	Next
	If cTot = pTot Then
		Return True
	Else
		Return False
	End If
End Sub

'<code>
''THIS SHOULD MATCH
''this returns a new profile on success
'dim user As Map = CreateMap()
'user.put("email", "")
'user.put("password", "")
'user.put("passwordConfirm", "")
'user.put("name", "")
'user.put("avatar", "")
'user.put("username", "")
'user.put("emailVisibility", True)
'BANano.Await(pb.CREATE_USER(user))
'dim up As profileType = pb.UserProfile
'if up.size = 0 then
'else
'end if
'</code>
Sub CREATE_USER(profile As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.CREATE_USER(${BANano.ToJson(profile)})"$)
	End If
	UserProfile.Initialize
	UserProfile.size = 0
	Try
		Dim fOK As Int = 0
		If profile.ContainsKey("email") = False Then fOK = BANano.parseint(fOK) + 1
		If profile.ContainsKey("password") = False Then fOK = BANano.parseint(fOK) + 1
		If profile.ContainsKey("passwordConfirm") = False Then fOK = BANano.parseint(fOK) + 1
		'
		If fOK <> 0 Then Return Null
			
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		'create the record
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		If ShowLog Then
			Log($"SDUIPocketBase.${UsersCollectionName}.CREATE_USER(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("create", Array(profile, opt)))
		If res.ContainsKey("id") Then
			UserProfile.id = res.GetDefault("id", "")
			UserProfile.email = res.GetDefault("email","")
			UserProfile.avatar = res.GetDefault("avatar","")
			UserProfile.name = res.GetDefault("name","")
			UserProfile.verified = res.GetDefault("verified",False)
			UserProfile.username = res.GetDefault("username","")
			UserProfile.idnumber = res.GetDefault("idnumber", "")
			UserProfile.size = 7
			Return res
		Else
			Return Null
		End If
	Catch
		Log($"CREATE_USER: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

Sub CREATE_USER_FORM As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.CREATE_USER_FORM"$)
	End If
	UserProfile.Initialize
	UserProfile.size = 0
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		'create the record
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		If ShowLog Then
			Log($"SDUIPocketBase.${UsersCollectionName}.CREATE_USER(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("create", Array(formData, opt)))
		If res.ContainsKey("id") Then
			UserProfile.id = res.GetDefault("id", "")
			UserProfile.email = res.GetDefault("email","")
			UserProfile.avatar = res.GetDefault("avatar","")
			UserProfile.name = res.GetDefault("name","")
			UserProfile.verified = res.GetDefault("verified",False)
			UserProfile.username = res.GetDefault("username","")
			UserProfile.idnumber = res.GetDefault("idnumber", "")
			UserProfile.size = 7
			Return res
		Else
			Return Null
		End If
	Catch
		Log($"CREATE_USER_FORM: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim uprofile As Map = BANano.Await(pb.CHANGE_USER_PASSWORD(pid, "newPassword", "confirmPassword"))
'</code>
Sub CHANGE_USER_PASSWORD(uEmail As String, newPassword As String, confirmPassword As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.CHANGE_USER_PASSWORD(${uEmail})"$)
	End If
	Try
		setTableName(UsersCollectionName)
		Dim uID As String = BANano.Await(READ_ID_BY_STRING("email", uEmail))
		If uID = "" Then Return Null
		Dim uProfile As Map = CreateMap()
		uProfile.put("password", newPassword)
		uProfile.put("passwordConfirm", confirmPassword)
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		If ShowLog Then
			Log($"SDUIPocketBase.$UsersCollectionName}.CHANGE_USER_PASSWORD(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("update", Array(uID, uProfile,opt)))
		Return res
	Catch
		Log($"CHANGE_USER_PASSWORD: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub


'<code>
''THIS SHOULD MATCH
''this returns a new profile on success
'dim user As Map = CreateMap()
'user.put("email", "")
'user.put("password", "")
'user.put("passwordConfirm", "")
'user.put("emailVisibility", True)
'Dim profile As Map = BANano.Await(pb.CREATE_ADMIN(user))
'	If BANano.IsNull(profile) Then
'		app.ShowSwalError("The admin profile could no be created!")
'		Return
'	End If
'	'auth via email - before you can update the profile
'	Dim vAuthorized As Map = BANano.await(pb.ADMIN_AUTH_WITH_PASSWORD(email.value, password.value))
'	If BANano.IsNull(vAuthorized) Then
'		app.ShowSwalError("The credentials could not be authorised!")
'		Return
'	End If
'	app.ShowSwalSuccessToast("Administrator signed up!",1000)
'</code>
Sub CREATE_ADMIN(profile As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.CREATE_ADMIN(${profile})"$)
	End If
	UserProfile.Initialize
	UserProfile.size = 0
	Try
		Dim fOK As Int = 0
		If profile.ContainsKey("email") = False Then fOK = BANano.parseint(fOK) + 1
		If profile.ContainsKey("password") = False Then fOK = BANano.parseint(fOK) + 1
		If profile.ContainsKey("passwordConfirm") = False Then fOK = BANano.parseint(fOK) + 1
		'
		If fOK <> 0 Then Return Null
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)
	
		'create the record
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Select Case Upgrade
			Case False
				Dim res As Map = BANano.Await(client.GetField("admins").RunMethod("create", Array(profile,opt)))
			Case Else
				Dim res As Map = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("create", Array(profile, opt)))
		End Select
		If res.ContainsKey("id") Then
			UserProfile.id = res.GetDefault("id", "")
			UserProfile.email = res.GetDefault("email","")
			UserProfile.avatar = res.GetDefault("avatar","")
			UserProfile.name = res.GetDefault("name","")
			UserProfile.verified = res.GetDefault("verified",False)
			UserProfile.username = res.GetDefault("username","")
			UserProfile.idnumber = res.GetDefault("idnumber", "")
			UserProfile.size = 7
			Return res
		Else
			Return Null
		End If
	Catch
		Log($"CREATE_ADMIN: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim profile As Map = BANano.Await(pb.CREATE_COLLECTION("people", "base", schema))
'</code>
Sub CREATE_COLLECTION(nameOf As String, colType As String, colSchema As List) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.CREATE_COLLECTION(${nameOf},${colType})"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim col As Map = CreateMap()
		col.Put("name", nameOf)
		col.Put("type", colType)
		col.Put("schema", colSchema)
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		'create the record
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("create", Array(col, opt)))
		Return res
	Catch
		Log($"CREATE_COLLECTION: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim profile As Map = BANano.Await(pb.Schema_CreateCollection("people", "base", schema))
'</code>
Sub Schema_CreateCollection(nameOf As String, colType As String, options As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.Schema_CreateCollection(${nameOf},${colType})"$)
	End If
	Dim colSchema As List
	colSchema.Initialize
	For Each k As String In Schema.Keys
		If k = "id" Then Continue
		If k = "created" Then Continue
		If k = "updated" Then Continue
		Dim v As String = Schema.Get(k)
		Select Case v
			Case DB_BLOB, DB_FILE
				Dim nf As Map = CreateMap("name":k,"type":"file")
				PutRecursive(nf, "options.maxSelect", 1)
				PutRecursive(nf, "options.maxSize", 262144000)	'250MB
				colSchema.Add(nf)
			Case DB_DOUBLE, DB_FLOAT,  DB_INT, DB_NUMBER, DB_REAL, DB_INTEGER
				colSchema.Add(CreateMap("name":k,"type":"number"))
			Case DB_STRING, DB_TEXT, DB_LONGTEXT
				colSchema.Add(CreateMap("name":k,"type":"text"))
			Case DB_BOOL
				colSchema.Add(CreateMap("name":k,"type":"bool"))
			Case DB_DATE
				colSchema.Add(CreateMap("name":k,"type":"date"))
			Case Else
				colSchema.Add(CreateMap("name":k,"type":"text"))
		End Select
	Next
	'
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim col As Map = CreateMap()
		col.Put("name", nameOf)
		col.Put("type", colType)
		col.Put("schema", colSchema)
		col.Put("listRule", ListRule)
		col.Put("viewRule", ViewRule)
		col.Put("createRule", CreateRule)
		col.Put("updateRule", UpdateRule)
		col.Put("deleteRule", DeleteRule)
		Select Case colType
			Case "view"
				col.Put("createRule", Null)
				col.Put("updateRule", Null)
				col.Put("deleteRule", Null)
		End Select
		If BANano.IsNull(options) = False Then col.Put("options", options)
		Dim idxList As List
		idxList.Initialize
		For Each idx As String In uniqueIdxNames.Keys
			Dim idxName As String = idx.Replace(",", "")
			Dim joinIdx As String = JoinIndexNames(idx)
			idxList.Add($""CREATE UNIQUE INDEX `${nameOf}_${idxName}` ON `${nameOf}` (${joinIdx})""$)
		Next
		For Each idx As String In idxNames.Keys
			Dim idxName As String = idx.Replace(",", "")
			Dim joinIdx As String = JoinIndexNames(idx)
			idxList.Add($""CREATE INDEX `${nameOf}_${idxName}` ON `${nameOf}` (${joinIdx})""$)
		Next
		If idxList.Size > 0 Then
			col.put("indexes", idxList)
		End If
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		'create the record
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("create", Array(col, opt)))
		Return res
	Catch
		Log($"Schema_CreateCollection: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

private Sub JoinIndexNames(idx As String) As String
	Dim lst As List = StrParse(",", idx)
	Dim lTot As Int = lst.Size - 1
	Dim lCnt As Int
	For lCnt = 0 To lTot
		Dim lItem As String = lst.Get(lCnt)
		lItem = lItem.Replace("`", "")
		lItem = $"`${lItem}`"$
		lst.Set(lCnt, lItem)
	Next
	Dim sout As String = Join(",", lst)
	Return sout
End Sub

'<code>
'dim profile As Map = BANano.Await(pb.CREATE_COLLECTION1("people", schema, "", "", "", "", ""))
'</code>
Sub CREATE_COLLECTION1(nameOf As String, colSchema As List, screateRule As String, supdateRule As String, sdeleteRule As String, _
	 sListRule As String, sViewRule As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.CREATE_COLLECTION1(${nameOf})"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim col As Map = CreateMap()
		col.Put("name", nameOf)
		col.Put("type", "base")
		col.Put("createRule", screateRule)
		col.Put("updateRule", supdateRule)
		col.Put("deleteRule", sdeleteRule)
		col.Put("listRule", sListRule)
		col.Put("viewRule", sViewRule)
		col.Put("schema", colSchema)
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		'create the record
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("create", Array(col, opt)))
		Return res
	Catch
		Log($"CREATE_COLLECTION1: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

Sub CREATE_COLLECTION2(nameOf As String, typeOf As String, colSchema As List, screateRule As String, supdateRule As String, sdeleteRule As String, _
	 sListRule As String, sViewRule As String, indexes As List, options As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.CREATE_COLLECTION2(${nameOf})"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim col As Map = CreateMap()
		col.Put("name", nameOf)
		col.Put("type", typeOf)
		col.Put("createRule", screateRule)
		col.Put("updateRule", supdateRule)
		col.Put("deleteRule", sdeleteRule)
		col.Put("listRule", sListRule)
		col.Put("viewRule", sViewRule)
		col.Put("schema", colSchema)
		col.Put("indexes", indexes)
		col.Put("options", options)
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		'create the record
		Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("create", Array(col,opt)))
		Return res
	Catch
		Log($"CREATE_COLLECTION2: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub
'
Sub CREATE_COLLECTION_ORIGINAL(col As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.CREATE_COLLECTION_ORIGINAL"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		'create the record
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("create", Array(col,opt)))
		Return res
	Catch
		Log($"CREATE_COLLECTION_ORIGINAL: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub


'<code>
'dim uprofile As Map = BANano.Await(pb.UPDATE_COLLECTION("people", schema))
'</code>
Sub UPDATE_COLLECTION(colName As String, colSchema As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.UPDATE_COLLECTION(${colName})"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim col As Map = CreateMap()
		col.Put("schema", colSchema)
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("update", Array(colName, col,opt)))
		Return res
	Catch
		Log($"UPDATE_COLLECTION: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim uprofile As Map = BANano.Await(pb.UPDATE_COLLECTION_ORIGINAL(schema))
'</code>
Sub UPDATE_COLLECTION_ORIGINAL(col As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.UPDATE_COLLECTION()"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim colName As String = col.get("name")
		Dim nc As Map = CreateMap()
		nc.put("name", colName)
		nc.put("schema", col.get("schema"))
		nc.put("type", col.get("type"))
		nc.put("system", col.get("system"))
		nc.put("listRule", col.get("listRule"))
		nc.put("viewRule", col.get("viewRule"))
		nc.put("createRule", col.get("createRule"))
		nc.put("updateRule", col.get("updateRule"))
		nc.put("deleteRule", col.get("deleteRule"))
		nc.put("indexes", col.get("indexes"))
		nc.put("options", col.get("options"))
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("update", Array(colName, nc, opt)))
		Return res
	Catch
		Log($"UPDATE_COLLECTION_ORIGINAL: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim profile As Map = BANano.Await(pb.UPDATE_COLLECTION1("people", schema, "", "", "", "", ""))
'</code>
Sub UPDATE_COLLECTION1(nameOf As String, colSchema As List, screateRule As String, supdateRule As String, sdeleteRule As String, _
	 sListRule As String, sViewRule As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.UPDATE_COLLECTION1(${nameOf})"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim col As Map = CreateMap()
		col.Put("name", nameOf)
		col.Put("type", "base")
		col.Put("createRule", screateRule)
		col.Put("updateRule", supdateRule)
		col.Put("deleteRule", sdeleteRule)
		col.Put("listRule", sListRule)
		col.Put("viewRule", sViewRule)
		col.Put("schema", colSchema)
		'create the record
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("update", Array(nameOf, col,opt)))
		Return res
	Catch
		Log($"UPDATE_COLLECTION1: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

Sub UPDATE_COLLECTION2(nameOf As String, typeOf As String, colSchema As List, screateRule As String, supdateRule As String, sdeleteRule As String, _
	 sListRule As String, sViewRule As String, indexes As List, options As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.UPDATE_COLLECTION2(${nameOf})"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim col As Map = CreateMap()
		col.Put("name", nameOf)
		col.Put("type", typeOf)
		col.Put("createRule", screateRule)
		col.Put("updateRule", supdateRule)
		col.Put("deleteRule", sdeleteRule)
		col.Put("listRule", sListRule)
		col.Put("viewRule", sViewRule)
		col.Put("schema", colSchema)
		col.Put("indexes", indexes)
		col.Put("options", options)
		'create the record
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Dim res As Map = BANano.Await(client.GetField("collections").RunMethod("update", Array(col,opt)))
		Return res
	Catch
		Log($"UPDATE_COLLECTION2: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub


'<code>
'dim pid As string = pb.UserProfile.id
'dim uuser As Map = CreateMap()
'uuser.put("name", "")
'dim uprofile As Map = BANano.Await(pb.UPDATE_USER(pid, uuser))
'</code>
Sub UPDATE_USER(id As String, profile As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.UPDATE_USER(${id}, ${profile})"$)
	End If
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		If ShowLog Then
			Log($"SDUIPocketBase.UPDATE_USER(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("update", Array(id, profile,opt)))
		Return res
	Catch
		Log($"UPDATE_USER: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub
'
'<code>
'dim pid As string = pb.UserProfile.id
'dim uuser As Map = CreateMap()
'uuser.put("name", "")
'dim uprofile As Map = BANano.Await(pb.UPDATE_USER(pid, uuser))
'</code>
Sub UPDATE_USER_FORM(id As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.UPDATE_USER_FORM(${id})"$)
	End If
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		If ShowLog Then
			Log($"SDUIPocketBase.UPDATE_USER(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("update", Array(id, formData,opt)))
		Return res
	Catch
		Log($"UPDATE_USER_FORM: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim pid As string = pb.UserProfile.id
'dim uuser As Map = CreateMap()
'uuser.put("name", "")
'dim uprofile As Map = BANano.Await(pb.UPDATE_ADMIN(pid, uuser))
'</code>
Sub UPDATE_ADMIN(id As String, profile As Map) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.UPDATE_ADMIN(${id}, ${BANano.ToJson(profile)})"$)
	End If
	Try
		Dim qflds As String = Join(",", flds)
		Dim qexpand As String = Join(",", expand)

		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If qflds <> "" Then opt.Put("fields", qflds)
		If qexpand <> "" Then opt.Put("expand", qexpand)
		Select Case Upgrade
			Case False
				Dim res As Map = BANano.Await(client.GetField("admins").RunMethod("update", Array(id, profile, opt)))
			Case Else
				Dim res As Map = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("update", Array(id, profile, opt)))
		End Select
		Return res
	Catch
		Log($"UPDATE_ADMIN: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub



'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE_USER("a"))
'</code>
Sub DELETE_USER(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.DELETE_USER(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.DELETE_USER: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.DELETE_USER(${BANano.ToJson(opt)})"$)
		End If
		Dim r As Boolean = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("delete", Array(id, opt)))
		Return r
	Catch
		Log($"DELETE_USER: ${LastException.message}"$)
		Return False
	End Try
End Sub

'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE_ADMIN("a"))
'</code>
Sub DELETE_ADMIN(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.DELETE_ADMIN(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.DELETE_ADMIN: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		Select Case Upgrade
			Case False
				Dim r As Boolean = BANano.Await(client.GetField("admins").RunMethod("delete", Array(id,opt)))
			Case Else
				Dim r As Boolean = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("delete", Array(id, opt)))
		End Select
		Return r		
	Catch
		Log($"DELETE_ADMIN: ${LastException.message}"$)
		Return False
	End Try
End Sub

'Removes the key and value mapped to this key.
'<code>
'Dim b As Boolean = BANano.Await(pb.DELETE_COLLECTION("a"))
'</code>
Sub DELETE_COLLECTION(colName As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.DELETE_COLLECTION(${colName})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.DELETE_COLLECTION: ${colName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return False
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		Dim r As Boolean = BANano.Await(client.GetField("collections").RunMethod("delete", Array(colName,opt)))
		Return r
	Catch
		Log($"DELETE_COLLECTION: ${LastException.message}"$)
		Return False
	End Try
End Sub

'<code>
'dim pemail As string = pb.UserProfile.email
'dim vEmail as Map = banano.await(pb.USER_REQUEST_VERIFICATION(pemail))
'</code>
Sub USER_REQUEST_VERIFICATION(email As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.USER_REQUEST_VERIFICATION(${email})"$)
	End If
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.USER_REQUEST_VERIFICATION(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("requestVerification", Array(email, opt)))
		Return res
	Catch
		Log($"USER_REQUEST_VERIFICATION: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim pemail As string = pb.UserProfile.email
'dim vEmail as Boolean = banano.await(pb.USER_REQUEST_PASSWORD_RESET(pemail))
'If vEmail = False Then
'	app.ShowSwalErrorToast("Password reset could not be requested!",1000)
'	Return
'End If
'app.ShowSwalSuccessToast("Password reset request sent!",1000)
'</code>
Sub USER_REQUEST_PASSWORD_RESET(email As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.USER_REQUEST_PASSWORD_RESET(${email})"$)
	End If

	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.USER_REQUEST_PASSWORD_RESET(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Boolean = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("requestPasswordReset", Array(email,opt)))
		Return res
	Catch
		Log($"USER_REQUEST_PASSWORD_RESET: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim pemail As string = pb.UserProfile.email
'dim vEmail as Map = banano.await(pb.USER_REQUEST_EMAIL_CHANGE(pemail))
'</code>
Sub USER_REQUEST_EMAIL_CHANGE(email As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.USER_REQUEST_EMAIL_CHANGE(${email})"$)
	End If
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.USER_REQUEST_EMAIL_CHANGE(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("requestEmailChange", Array(email,opt)))
		Return res
	Catch
		Log($"USER_REQUEST_EMAIL_CHANGE: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim vEmail as Map = banano.await(pb.USER_CONFIRM_EMAIL_CHANGE(pToken, pEmail))
'</code>
Sub USER_CONFIRM_EMAIL_CHANGE(token As String, email As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.$UsersCollectionName}.USER_CONFIRM_EMAIL_CHANGE(${email})"$)
	End If

	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.USER_CONFIRM_EMAIL_CHANGE(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("confirmEmailChange", Array(token, email,opt)))
		Return res
	Catch
		Log($"USER_CONFIRM_EMAIL_CHANGE: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub


'<code>
'dim pToken As string = "xxx"
'dim vEmail as Map = banano.await(pb.USER_CONFIRM_VERIFICATION(pToken))
'</code>
Sub USER_CONFIRM_VERIFICATION(token As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.USER_CONFIRM_VERIFICATION"$)
	End If
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.USER_CONFIRM_VERIFICATION(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("confirmVerification", Array(token,opt)))
		Return res
	Catch
		Log($"USER_CONFIRM_VERIFICATION: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim vEmail as Map = banano.await(pb.USER_CONFIRM_PASSWORD_RESET(pToken, pPass, pConfirmPass))
'</code>
Sub USER_CONFIRM_PASSWORD_RESET(token As String, newPassword As String, confimPassword As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.USER_CONFIRM_PASSWORD_RESET"$)
	End If
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.USER_CONFIRM_PASSWORD_RESET(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("confirmPasswordReset", Array(token, newPassword, confimPassword, opt)))
		Return res
	Catch
		Log($"USER_CONFIRM_PASSWORD_RESET: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'banano.await(pb.USER_AUTH_WITH_PASSWORD(pemail, pwd))
'Dim up As profileType = pb.UserProfile
'If up.Size = 0 then
'Else
'End if 
'</code>
Sub USER_AUTH_WITH_PASSWORD(email As String, pwd As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.USER_AUTH_WITH_PASSWORD(${email},${pwd})"$)
	End If
	UserProfile.Initialize
	UserProfile.size = 0
	IsAuthenticated = False
	UserRecord = CreateMap()
	UserToken = ""
	UserModel = CreateMap()
	UserValid = False
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.USER_AUTH_WITH_PASSWORD(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("authWithPassword", Array(email, pwd,opt)))
		UserToken = client.getfield("authStore").GetField("token").Result
		UserModel = client.getfield("authStore").GetField("model").Result
		UserValid = client.getfield("authStore").GetField("isValid").Result
		UserProfile.token = res.GetDefault("token", "")
		If res.ContainsKey("record") Then
			UserRecord = res.Get("record")
			UserProfile.id = GetRecursive(res, "record.id")
			UserProfile.email = GetRecursive(res, "record.email")
			UserProfile.avatar = GetRecursive(res, "record.avatar")
			UserProfile.name = GetRecursive(res, "record.name")
			UserProfile.verified = GetRecursive(res, "record.verified")
			UserProfile.username = GetRecursive(res, "record.username")
			UserProfile.idnumber = GetRecursive(res, "record.idnumber")
			UserProfile.size = 7
			IsAuthenticated = True
		End If
		Return res
	Catch
		Log($"USER_AUTH_WITH_PASSWORD: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'banano.await(pb.USER_AUTH_REFRESH(pemail, pwd))
'dim up As profileType = pb.UserProfile
'if up.size = 0 then
'else
'end if
'</code>
Sub USER_AUTH_REFRESH As Map
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.USER_AUTH_REFRESH"$)
	End If
	UserProfile.Initialize
	UserProfile.size = 0
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		If ShowLog Then
			Log($"SDUIPocketBase.USER_AUTH_REFRESH(${BANano.ToJson(opt)})"$)
		End If
		Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("authRefresh", opt))
		UserProfile.token = res.GetDefault("token", "")
		If res.ContainsKey("record") Then
			UserRecord = res.Get("record")
			UserProfile.id = GetRecursive(res, "record.id")
			UserProfile.email = GetRecursive(res, "record.email")
			UserProfile.avatar = GetRecursive(res, "record.avatar")
			UserProfile.name = GetRecursive(res, "record.name")
			UserProfile.verified = GetRecursive(res, "record.verified")
			UserProfile.username = GetRecursive(res, "record.username")
			UserProfile.idnumber = GetRecursive(res, "record.idnumber")
			UserProfile.size = 7
		End If
		Return res
	Catch
		Log($"USER_AUTH_REFRESH: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub


'<code>
'banano.await(pb.ADMIN_AUTH_WITH_PASSWORD(pemail, pwd))
'Dim up As profileType = pb.UserProfile
'If up.Size = 0 then
'Else
'End if 
'</code>
Sub ADMIN_AUTH_WITH_PASSWORD(email As String, pwd As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.ADMIN_AUTH_WITH_PASSWORD(${email},${pwd})"$)
	End If
	UserProfile.Initialize
	UserProfile.size = 0
	IsAuthenticated = False
	UserToken =  ""
	UserModel = CreateMap()
	UserValid = False
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		Select Case Upgrade
			Case False
				Dim res As Map = BANano.Await(client.GetField("admins").RunMethod("authWithPassword", Array(email, pwd,opt)))
			Case Else
				Dim res As Map = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("authWithPassword", Array(email, pwd, opt)))
		End Select
		UserToken = client.getfield("authStore").GetField("token").Result
		UserModel = client.getfield("authStore").GetField("model").Result
		UserValid = client.getfield("authStore").GetField("isValid").Result
		UserProfile.token = res.GetDefault("token", "")
		SetAuthorizationBearerToken(UserToken)
		If res.ContainsKey("admin") Then
			UserRecord = res.Get("admin")
			UserProfile.id = GetRecursive(res, "admin.id")
			UserProfile.email = GetRecursive(res, "admin.email")
			UserProfile.avatar = GetRecursive(res, "admin.avatar")
			UserProfile.name = GetRecursive(res, "admin.name")
			UserProfile.verified = GetRecursive(res, "admin.verified")
			UserProfile.username = GetRecursive(res, "admin.username")
			UserProfile.idnumber = GetRecursive(res, "admin.idnumber")
			UserProfile.size = 7
			IsAuthenticated = True
		End If
		Return res
	Catch
		Log($"ADMIN_AUTH_WITH_PASSWORD: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim pemail As string = pb.UserProfile.email
'dim vEmail as Boolean = banano.await(pb.ADMIN_REQUEST_PASSWORD_RESET(pemail))
'If vEmail = False Then
'	app.ShowSwalErrorToast("Password reset could not be requested!",1000)
'	Return
'End If
'app.ShowSwalSuccessToast("Password reset request sent!",1000)
'</code>
Sub ADMIN_REQUEST_PASSWORD_RESET(email As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.ADMIN_REQUEST_PASSWORD_RESET(${email})"$)
	End If
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		Select Case Upgrade
			Case False
				Dim res As Boolean = BANano.Await(client.GetField("admins").RunMethod("requestPasswordReset", Array(email,opt)))
			Case Else
				Dim res As Boolean = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("requestPasswordReset", Array(email, opt)))
		End Select
		Return res
	Catch
		Log($"ADMIN_REQUEST_PASSWORD_RESET: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'<code>
'dim vEmail as Map = banano.await(pb.USER_CONFIRM_PASSWORD_RESET(pToken, pPass, pConfirmPass))
'</code>
Sub ADMIN_CONFIRM_PASSWORD_RESET(token As String, newPassword As String, confimPassword As String) As Map
	If ShowLog Then
		Log($"SDUIPocketBase.ADMIN_CONFIRM_PASSWORD_RESET"$)
	End If
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		Select Case Upgrade
			Case False
				Dim res As Map = BANano.Await(client.GetField("admins").RunMethod("confirmPasswordReset", Array(token, newPassword, confimPassword,opt)))
			Case Else
				Dim res As Map = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("confirmPasswordReset", Array(token, newPassword, confimPassword, opt)))
		End Select
		Return res
	Catch
		Log($"ADMIN_CONFIRM_PASSWORD_RESET: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub


'<code>
'banano.await(pb.ADMIN_AUTH_REFRESH(pemail, pwd))
'Dim up As profileType = pb.UserProfile
'if up.size = 0 then
'else
'end if
'</code>
Sub ADMIN_AUTH_REFRESH As Map
	If ShowLog Then
		Log($"SDUIPocketBase.ADMIN_AUTH_REFRESH"$)
	End If
	UserProfile.Initialize
	UserProfile.size = 0
	UserToken = ""
	UserModel = CreateMap()
	UserValid = False
	Try
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size <> 0 Then
			opt.Put("headers", headers)
		End If
		Select Case Upgrade
			Case False
				Dim res As Map = BANano.Await(client.GetField("admins").RunMethod("authRefresh", Array(opt)))
			Case Else
				Dim res As Map = BANano.Await(client.RunMethod("collection", "_superusers").RunMethod("authRefresh", Array(opt)))
		End Select
		UserToken = client.getfield("authStore").GetField("token").Result
		UserModel = client.getfield("authStore").GetField("model").Result
		UserValid = client.getfield("authStore").GetField("isValid").Result
		UserProfile.token = res.GetDefault("token", "")
		SetAuthorizationBearerToken(UserToken)
		If res.ContainsKey("admin") Then
			UserRecord = res.Get("admin")
			UserProfile.id = GetRecursive(res, "admin.id")
			UserProfile.email = GetRecursive(res, "admin.email")
			UserProfile.avatar = GetRecursive(res, "admin.avatar")
			UserProfile.name = GetRecursive(res, "admin.name")
			UserProfile.verified = GetRecursive(res, "admin.verified")
			UserProfile.username = GetRecursive(res, "admin.username")
			UserProfile.idnumber = GetRecursive(res, "admin.idnumber")
			UserProfile.size = 7
		End If
		Return res
	Catch
		Log($"ADMIN_AUTH_REFRESH: ${LastException.message}"$)
		Return Null
	End Try			' ignore
End Sub

'create the batch instance
Sub BATCH_CREATE
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_CREATE"$)
	End If
	batchObject = BANano.Await(client.RunMethod("createBatch", Null))
End Sub

'send the batch
Sub BATCH_SEND As Object
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_SEND"$)
	End If
	Dim res As Object = BANano.Await(batchObject.RunMethod("send", Null))
	Return res
End Sub

'add a create command to the batch
Sub BATCH_ADD_CREATE
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_ADD_CREATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.BATCH_ADD_CREATE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
	End If
	'
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)

	Dim opt As Map = CreateMap()
	opt.Put("cache", "no-store")
	If headers.Size <> 0 Then
		opt.Put("headers", headers)
	End If
	If qflds <> "" Then opt.Put("fields", qflds)
	If qexpand <> "" Then opt.Put("expand", qexpand)
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_ADD_CREATE(${BANano.ToJson(opt)})"$)
	End If
	BANano.Await(batchObject.RunMethod("collection", sTableName).RunMethod("create", Array(Record,opt)))
End Sub
'
'add an upsert command to the batch
Sub BATCH_ADD_UPSERT
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_ADD_UPSERT"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.BATCH_ADD_UPSERT: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
	End If
	'
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)

	Dim opt As Map = CreateMap()
	opt.Put("cache", "no-store")
	If headers.Size <> 0 Then
		opt.Put("headers", headers)
	End If
	If qflds <> "" Then opt.Put("fields", qflds)
	If qexpand <> "" Then opt.Put("expand", qexpand)
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_ADD_UPSERT(${BANano.ToJson(opt)})"$)
	End If
	BANano.Await(batchObject.RunMethod("collection", sTableName).RunMethod("upsert", Array(Record,opt)))
End Sub

'add an update call to the batch
Sub BATCH_ADD_UPDATE
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_ADD_UPDATE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.BATCH_ADD_UPDATE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
	End If
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)
	'create the record
	Dim opt As Map = CreateMap()
	opt.Put("cache", "no-store")
	If headers.Size <> 0 Then
		opt.Put("headers", headers)
	End If
	If qflds <> "" Then opt.Put("fields", qflds)
	If qexpand <> "" Then opt.Put("expand", qexpand)
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_ADD_UPDATE(${BANano.ToJson(opt)})"$)
	End If
	Dim sid As String = Record.Get(PrimaryKey)
	BANano.Await(batchObject.RunMethod("collection", sTableName).RunMethod("update", Array(sid, Record,opt)))
End Sub

'add a delete command to the batch
Sub BATCH_ADD_DELETE
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_ADD_DELETE"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPocketBase.BATCH_ADD_DELETE: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
	End If
	Dim qflds As String = Join(",", flds)
	Dim qexpand As String = Join(",", expand)
	'create the record
	Dim opt As Map = CreateMap()
	opt.Put("cache", "no-store")
	If headers.Size <> 0 Then
		opt.Put("headers", headers)
	End If
	If qflds <> "" Then opt.Put("fields", qflds)
	If qexpand <> "" Then opt.Put("expand", qexpand)
	Dim sid As String = Record.Get(PrimaryKey)
	If ShowLog Then
		Log($"SDUIPocketBase.BATCH_ADD_DELETE(${BANano.ToJson(opt)})"$)
	End If
	BANano.Await(batchObject.RunMethod("collection", sTableName).RunMethod("delete", Array(sid, opt)))
End Sub


Sub USER_SIGNOUT
	If ShowLog Then
		Log($"SDUIPocketBase.USER_SIGNOUT"$)
	End If
	client.getfield("authStore").RunMethod("clear", Null)
	UserProfile.Initialize
	UserProfile.size = 0
End Sub

Sub USER_TOKEN As String
	If ShowLog Then
		Log($"SDUIPocketBase.USER_TOKEN"$)
	End If

	Dim out As String = client.getfield("authStore").GetField("token").Result
	Return out
End Sub

Sub USER_MODEL As String
	If ShowLog Then
		Log($"SDUIPocketBase.USER_MODEL"$)
	End If

	Dim out As String = client.getfield("authStore").GetField("model").Result
	Return out
End Sub

Sub USER_ISVALID As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.USER_ISVALID"$)
	End If
	Dim out As Boolean = client.getfield("authStore").GetField("isValid").Result
	Return out
End Sub

'convert schema to pocketbase like schema
Sub SchemaToPocketBase As Map
	Dim nl As List
	nl.Initialize
	For Each k As String In Schema.Keys
		Dim v As String = Schema.Get(k)
		Select Case v
			Case DB_BOOL
				nl.Add(CreateMap("name":k, "type":"bool"))
			Case DB_INT, DB_REAL, DB_REAL, DB_FLOAT, DB_INTEGER, DB_DOUBLE, DB_NUMBER
				nl.Add(CreateMap("name":k, "type":"number"))
			Case DB_FILE, DB_BLOB
				nl.Add(CreateMap("name":k, "type":"file"))
			Case DB_STRING, DB_TEXT, DB_LONGTEXT
				nl.Add(CreateMap("name":k, "type":"text"))
			Case DB_RELATION
				nl.Add(CreateMap("name":k, "type":"relation"))
			Case DB_JSON
				nl.Add(CreateMap("name":k, "type":"json"))
			Case DB_DATE
				nl.Add(CreateMap("name":k, "type":"date"))
			Case Else
				nl.Add(CreateMap("name":k, "type":"text"))
		End Select
	Next
	Return nl
End Sub

'<code>
'Dim dbSchema As SDUIPocketBase
'dbSchema.Initialize(Me, "dbSchema", "http://127.0.0.1:8090", "")
'Dim bres As Boolean = BANano.Await(dbSchema.SchemaRestoreFromAsset("./assets/minicrm_schema.json", "adminemail", "adminpassword"))
'</code>
Sub SchemaRestoreFromAsset(sassetFile As String, semail As String, spassword As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.SchemaRestoreFromAsset"$)
	End If
	Dim collections As List = BANano.Await(BANano.GetFileAsJSON(sassetFile & "?" & DateTime.Now, Null))
	Dim bres As Boolean = BANano.Await(SchemaRestore(baseURL, semail, spassword, collections))
	Return bres
End Sub

'<code>
'Dim dbSchema As SDUIPocketBase
'dbSchema.Initialize(Me, "dbSchema", "http://127.0.0.1:8090", "")
'Dim bres As Boolean = BANano.Await(dbSchema.SchemaAddFromAsset("./assets/update_schema.json", "adminemail", "adminpassword"))
'</code>
Sub SchemaAddFromAsset(sassetFile As String, semail As String, spassword As String) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.SchemaAddFromAsset"$)
	End If
	Dim collections As List = BANano.Await(BANano.GetFileAsJSON(sassetFile & "?" & DateTime.Now, Null))
	Dim bres As Boolean = BANano.Await(SchemaAdd(baseURL, semail, spassword, collections))
	Return bres
End Sub

'<code>
'Dim dbSchema As SDUIPocketBase
'dbSchema.Initialize(Me, "sourceDB", surl, "")
'Dim bres As Boolean = BANano.Await(dbSchema.SchemaRestore(surl, semail, spassword, collections))
'</code>		
Sub SchemaRestore(surl As String, semail As String, spassword As String, collections As List) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.SchemaRestore"$)
	End If
	'connect to host
	Dim dbSource As SDUIPocketBase
	dbSource.Initialize(Me, "sourceDB", surl, "")
	BANano.await(dbSource.ADMIN_AUTH_WITH_PASSWORD(semail, spassword))
	Dim sProfile As profileType = dbSource.UserProfile
	If sProfile.Size = 0 Then Return False
	'
	'get collection names
	Dim tblNames As List = BANano.Await(dbSource.SELECT_ALL_COLLECTIONS_NAMES(semail, spassword))
	'
	For Each collection As Map In collections
		Dim screateRule As String = collection.Get("createRule")
		Dim sdeleteRule As String = collection.Get("deleteRule")
		Dim slistRule As String = collection.Get("listRule")
		Dim sname As String = collection.Get("name")
		Dim lschema As List = collection.Get("schema")
		Dim supdateRule As String = collection.Get("updateRule")
		Dim sviewRule As String = collection.Get("viewRule")
		Dim stype As String = collection.Get("type")
		Dim options As Map = collection.Get("options")
		Dim indexes As List = collection.Get("indexes")
		'
		'search for the table name
		Dim tblIndex As Int = tblNames.IndexOf(sname)
		If tblIndex = -1 Then
			'the table is not found, make it
			BANano.Await(dbSource.CREATE_COLLECTION2(sname, stype, lschema, screateRule, supdateRule, sdeleteRule, slistRule, sviewRule, indexes, options))
		Else
			'update collection
			BANano.Await(dbSource.UPDATE_COLLECTION2(sname, stype, lschema, screateRule, supdateRule, sdeleteRule, slistRule, sviewRule, indexes, options))
		End If
	Next
	Return True
End Sub
'
'<code>
'Dim dbSchema As SDUIPocketBase
'dbSchema.Initialize(Me, "sourceDB", surl, "")
'Dim bres As Boolean = BANano.Await(dbSchema.SchemaAdd(surl, semail, spassword, collections))
'</code>		
Sub SchemaAdd(surl As String, semail As String, spassword As String, collections As List) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.SchemaUpdate"$)
	End If
	Operations.Initialize
	'connect to host
	Dim dbSource As SDUIPocketBase
	dbSource.Initialize(Me, "sourceDB", surl, "")
	BANano.await(dbSource.ADMIN_AUTH_WITH_PASSWORD(semail, spassword))
	Dim sProfile As profileType = dbSource.UserProfile
	If sProfile.Size = 0 Then Return False
	'
	'get collection names
	Dim tblNames As List = BANano.Await(dbSource.SELECT_ALL_COLLECTIONS_NAMES(semail, spassword))
	'
	For Each collection As Map In collections
		Dim sname As String = collection.Get("name")
		'search for the table name
		Dim tblIndex As Int = tblNames.IndexOf(sname)
		If tblIndex = -1 Then
			Dim m As Map = BANano.Await(dbSource.CREATE_COLLECTION_ORIGINAL(collection))
			Operations.add(m)
		End If
	Next
	Return True
End Sub
'
'<code>
'Dim dbSchema As SDUIPocketBase
'dbSchema.Initialize(Me, "sourceDB", surl, "")
'Dim bres As Boolean = BANano.Await(dbSchema.SchemaUpdate(surl, semail, spassword, collections))
'</code>		
Sub SchemaUpdate(surl As String, semail As String, spassword As String, collections As List) As Boolean
	If ShowLog Then
		Log($"SDUIPocketBase.SchemaUpdate"$)
	End If
	Operations.Initialize
	'connect to host
	Dim dbSource As SDUIPocketBase
	dbSource.Initialize(Me, "sourceDB", surl, "")
	BANano.await(dbSource.ADMIN_AUTH_WITH_PASSWORD(semail, spassword))
	Dim sProfile As profileType = dbSource.UserProfile
	If sProfile.Size = 0 Then Return False
	'
	'get collection names
	Dim tblNames As List = BANano.Await(dbSource.SELECT_ALL_COLLECTIONS_NAMES(semail, spassword))
	'
	For Each collection As Map In collections
		Dim sname As String = collection.Get("name")
		'search for the table name
		Dim tblIndex As Int = tblNames.IndexOf(sname)
		If tblIndex >= 0 Then
			Dim m As Map = BANano.Await(dbSource.UPDATE_COLLECTION_ORIGINAL(collection))
			Operations.add(m)
		End If
	Next
	Return True
End Sub


'<code>
'Dim dbSchema As SDUIPocketBase
'dbSchema.Initialize(Me, "dbSchema", modSDPB.ServerLocation, "")
'Dim bres As Boolean = BANano.Await(dbSchema.SchemaBackUp(sname, surl, semail, spassword))
'</code>
Sub SchemaBackUp(prjName As String, surl As String, semail As String, spassword As String) As Boolean
	Dim oprjName As String = prjName
	If ShowLog Then
		Log($"SDUIPocketBase.SchemaBackUp"$)
	End If
	'connect to host
	Dim dbSource As SDUIPocketBase
	dbSource.Initialize(Me, "sourceDB", surl, "")
	BANano.await(dbSource.ADMIN_AUTH_WITH_PASSWORD(semail, spassword))
	Dim sProfile As profileType = dbSource.UserProfile
	If sProfile.Size = 0 Then Return False
	'
	prjName = prjName.Replace(" ", "")
	prjName = prjName.ToLowerCase
	Dim prjSearch As String = $"${prjName}_"$
	'get all collection
	BANano.Await(dbSource.SELECT_ALL_COLLECTIONS(semail, spassword))
	'
	Dim prjTables As List
	prjTables.Initialize
	'extract collections for project
	Do While dbSource.NextRow
		Dim rec As Map = dbSource.Record
		Dim tblname As String = dbSource.GetString("name")
		Select Case oprjName
			Case ""
				prjTables.Add(rec)
			Case Else
				If tblname.StartsWith(prjSearch) Then
					prjTables.Add(rec)
				End If
		End Select
	Loop
	'convert to json
	Dim prjTablesJSON As String = BANano.ToJson(prjTables)
	Dim prjFileName As String = $"${prjName}_schema.json"$
	'download
	Download(prjTablesJSON, prjFileName)
	Return True
End Sub
'
private Sub Download(content As String, fileName As String)
	'load the file when it needs to be used
	content = content.Replace("~","$")
	Dim fc As List
	fc.Initialize
	fc.Add(content)
	Dim blob As BANanoObject
	blob.Initialize2("Blob",Array(fc, CreateMap("type": "text/plain;charset=utf-8")))
	BANano.RunJavascriptMethod("saveAs",Array(blob,fileName))
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
		Log($"SDUIPocketBase.SetRecordAsIs(${BANano.ToJson(Record)})"$)
	End If
End Sub


'<code>
'Dim dbSchema As SDUIPocketBase
'dbSchema.Initialize(Me, "dbSchema", modSDPB.ServerLocation, "")
'Dim schema As List = BANano.Await(dbSchema.SchemaGet(sname, surl, semail, spassword))
'</code>
Sub SchemaGet(prjName As String, surl As String, semail As String, spassword As String) As List
	Dim oprjName As String = prjName
	Dim prjTables As List
	prjTables.Initialize
	If ShowLog Then
		Log($"SDUIPocketBase.SchemaGet"$)
	End If
	'connect to host
	Dim dbSource As SDUIPocketBase
	dbSource.Initialize(Me, "sourceDB", surl, "")
	BANano.await(dbSource.ADMIN_AUTH_WITH_PASSWORD(semail, spassword))
		
	Dim sProfile As profileType = dbSource.UserProfile
	If sProfile.Size = 0 Then Return prjTables
	'
	prjName = prjName.Replace(" ", "")
	prjName = prjName.ToLowerCase
	Dim prjSearch As String = $"${prjName}_"$
	'get all collection
	BANano.Await(dbSource.SELECT_ALL_COLLECTIONS(semail, spassword))
	dbSource.MoveStart
	
	'extract collections for project
	Do While dbSource.NextRow
		Dim rec As Map = dbSource.Record
		Dim tblname As String = dbSource.GetString("name")
		Select Case oprjName
			Case ""
				prjTables.Add(rec)
			Case Else
				If tblname.StartsWith(prjSearch) Then
					prjTables.Add(rec)
				End If
		End Select
	Loop
	Return prjTables
End Sub

Sub SchemaTableGet(ftblName As String, surl As String, semail As String, spassword As String) As Map
	Dim prjTables As List
	prjTables.Initialize
	If ShowLog Then
		Log($"SDUIPocketBase.SchemaTableGet"$)
	End If
	'connect to host
	Dim dbSource As SDUIPocketBase
	dbSource.Initialize(Me, "sourceDB", surl, "")
	BANano.await(dbSource.ADMIN_AUTH_WITH_PASSWORD(semail, spassword))
		
	Dim sProfile As profileType = dbSource.UserProfile
	If sProfile.Size = 0 Then Return prjTables
	
	'get all collection
	BANano.Await(dbSource.SELECT_ALL_COLLECTIONS(semail, spassword))
	dbSource.MoveStart
	
	'extract collections for project
	Do While dbSource.NextRow
		Dim rec As Map = dbSource.Record
		Dim tblName As String = dbSource.GetString("name")
		If tblName.EqualsIgnoreCase(ftblName) Then
			Return rec
		End If
	Loop
	Dim m As Map = CreateMap()
	Return m
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

Sub SetNextID
	Dim nid As String = NextID
	SetField("id", nid)
End Sub

Sub ADD_ORDER_BY_UPDATED_AT As SDUIPocketBase
	ADD_ORDER_BY("updated")
	Return Me
End Sub

Sub ADD_ORDER_BY_CREATED_AT As SDUIPocketBase
	ADD_ORDER_BY("created")
	Return Me
End Sub

Sub USER_REVOKE_GOOGLE_TOKEN
	Dim oldToken As String = UserProfile.token
	If oldToken = "" Then Return
	Dim formName As String = $"${mEvent}form"$
	'remove the form if it exists
	If BANano.Exists($"#${formName}"$) Then
		BANano.GetElement($"#${formName}"$).remove
	End If
	'
	Dim revokeTokenEndpoint As String = "https://oauth2.googleapis.com/revoke"
	BANano.GetElement("#body").Append($"<form id="${formName}" method="post" action="${revokeTokenEndpoint}"><input type="hidden" name="token" value="${oldToken}"></input></form>"$)
	Dim form As BANanoElement = BANano.GetElement($"#${formName}"$)
	BANano.Await(form.RunMethod("submit", Null))
	form.Remove
End Sub


'<code>
'Dim authData As Map = Banano.Await(pb.USERS_AUTH_WITH_GOOGLE)
'</code>
Sub USER_AUTH_WITH_GOOGLE As profileType
	If ShowLog Then
		Log($"SDUIPocketBase.${UsersCollectionName}.USER_AUTH_WITH_GOOGLE"$)
	End If
	UserProfile.Initialize
	UserProfile.size = 0
	IsAuthenticated = False
	Dim provider As Map = CreateMap()
	provider.put("provider", "google")
	If ShowLog Then
		Log($"SDUIPocketBase.USER_AUTH_WITH_GOOGLE(${BANano.ToJson(provider)})"$)
	End If
	Dim res As Map = BANano.Await(client.RunMethod("collection", UsersCollectionName).RunMethod("authWithOAuth2", provider))
	UserProfile.token = res.GetDefault("token", "")
	If res.ContainsKey("meta") Then
		UserProfile.id = GetRecursive(res, "meta.id")
		UserProfile.avatar = GetRecursive(res, "meta.avatarUrl")
		UserProfile.email = GetRecursive(res, "meta.email")
		UserProfile.name = GetRecursive(res, "meta.name")
		UserProfile.verified = GetRecursive(res, "meta.rawUser.verified_email")
		UserProfile.username = GetRecursive(res, "meta.username")
		UserProfile.idnumber = GetRecursive(res, "meta.idnumber")
		UserProfile.size = 7
		IsAuthenticated = True
	End If
	If res.ContainsKey("record") Then
		UserProfile.username = GetRecursive(res, "record.username")
		UserProfile.verified = GetRecursive(res, "record.verified")
	End If
	Return UserProfile
End Sub

Sub SchemaClear
	Schema.initialize
End Sub

Sub RemoveField(fldName As String)
	If Record.ContainsKey(fldName) Then
		Record.Remove(fldName)
	End If
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
public Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return BANano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
End Sub

'<code>
'pbComponents.SELECT_TO_VIEW("viewname")
'pbComponents.SELECT_VIEW("viewname")
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_TO_VIEW(nameOf As String)
	If ShowLog Then
		Log($"SDUIPocketBase.SELECT_TO_VIEW(${nameOf})"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
	Dim sb As StringBuilder
	sb.Initialize
	'
	sb.Append("SELECT ")
	'process provided fields
	Dim fldm As Map = CreateMap()
	If flds.Size > 0 Then
		For Each k As String In flds
			Dim v As String = Schema.GetDefault(k, "STRING")
			fldm.Put(k, v)
		Next
	Else
		fldm = BANano.DeepClone(Schema)
	End If
	'
	Dim bHasID As Boolean = False
	Dim fldnames As List
	fldnames.Initialize
	For Each k As String In fldm.Keys
		fldnames.Add(k)
		If k = "id" Then bHasID = True
	Next
	'
	If bHasID = False Then
		sb.Append("id,")
	End If
	sb.Append(Join(",", fldnames))
	If CountRecords Then
		sb.Append($", count(*) as records"$)
	End If
	sb.Append($" FROM ${sTableName}"$)
	'add where
	Dim iWhere As Int = whereField.Size - 1
	If iWhere >= 0 Then
		sb.Append(" WHERE ")
		'
		Dim whr As List
		whr.Initialize
		'
		'whereField, ops, orderByL
		Dim i As Int
		For i = 0 To iWhere
			Dim colx As String = whereField.GetKeyAt(i)
			colx = MvField(colx, 1,".")
			colx = colx.replace("&","")
			Dim xVal As String = whereField.GetValueAt(i)
			Dim opr As String = ops.Get(i)
			Dim com As String = combineL.Get(i)
			'
			If com = "&&" Then com = "AND"
			If com = "||" Then com = "OR"
			'
			If opr = "!=" Then opr = "<>"
			If opr = "~" Then opr = "like"
			'
			whr.Add($"${colx} ${opr} ${xVal} ${com}"$)
		Next
		Dim swhere As String = Join(" ", whr)
		swhere = RemDelim(swhere, com)
		swhere = swhere.trim
		sb.Append(swhere)
	End If
	'
	If grpBy.Size > 0 Then
		Dim sgroup As String = Join(",", grpBy)
		sb.Append($" group by ${sgroup}"$)
	End If
	If orderByL.Size > 0 Then
		Dim lorder As List
		lorder.Initialize
		For Each k As String In orderByL
			If k.StartsWith("-") Then
				k = k.Replace("-", "")
				lorder.Add($"${k} desc"$)
			Else
				lorder.Add(k)
			End If
		Next
		Dim sorder As String = Join(",", lorder)
		sb.Append($" order by ${sorder}"$)
	End If
	'
	Dim sout As String = sb.tostring
	'
	Dim col As Map = CreateMap()
	col.Put("name", nameOf)
	col.Put("type", "view")
	col.Put("system", False)
	col.Put("listRule", "")
	col.Put("viewRule", "")
	col.Put("createRule", Null)
	col.Put("updateRule", Null)
	col.Put("deleteRule", Null)
	PutRecursive(col, "options.query", sout)
		'
	Dim opt As Map = CreateMap()
	opt.Put("cache", "no-store")
	If headers.Size > 0 Then opt.Put("headers", headers)

	BANano.Await(client.GetField("collections").RunMethod("create", Array(col, opt)))
	Catch
		Log($"SELECT_TO_VIEW: ${LastException.message}"$)
	End Try	
End Sub

'<code>
'pbComponents.SELECT_TO_VIEW_ONLY("viewname")
'pbComponents.SELECT_VIEW("viewname")
'</code>
Sub SELECT_TO_VIEW_ONLY(nameOf As String)
	If ShowLog Then
		Log($"SDUIPocketBase.SELECT_TO_VIEW_ONLY(${nameOf})"$)
	End If
	BANano.Await(DELETE_COLLECTION(nameOf))
	'
	Try
		SetAuthorizationBearerToken(UserToken)
	Dim sb As StringBuilder
	sb.Initialize
	'
	sb.Append("SELECT ")
	'process provided fields
	Dim fldm As Map = CreateMap()
	If flds.Size > 0 Then
		For Each k As String In flds
			Dim v As String = Schema.GetDefault(k, "STRING")
			fldm.Put(k, v)
		Next
	Else
		fldm = BANano.DeepClone(Schema)
	End If
	'
	Dim bHasID As Boolean = False
	Dim fldnames As List
	fldnames.Initialize
	For Each k As String In fldm.Keys
		fldnames.Add(k)
		If k = "id" Then bHasID = True
	Next
	'
	If bHasID = False Then
		sb.Append("id,")
	End If
	sb.Append(Join(",", fldnames))
	If CountRecords Then
		sb.Append($", count(*) as records"$)
	End If
	sb.Append($" FROM ${sTableName}"$)
	'add where
	Dim iWhere As Int = whereField.Size - 1
	If iWhere >= 0 Then
		sb.Append(" WHERE ")
		'
		Dim whr As List
		whr.Initialize
		'
		'whereField, ops, orderByL
		Dim i As Int
		For i = 0 To iWhere
			Dim colx As String = whereField.GetKeyAt(i)
			colx = MvField(colx, 1,".")
			colx = colx.replace("&","")
			Dim xVal As String = whereField.GetValueAt(i)
			Dim opr As String = ops.Get(i)
			Dim com As String = combineL.Get(i)
			'
			If com = "&&" Then com = "AND"
			If com = "||" Then com = "OR"
			'
			If opr = "!=" Then opr = "<>"
			If opr = "~" Then opr = "like"
			'
			whr.Add($"${colx} ${opr} ${xVal} ${com}"$)
		Next
		Dim swhere As String = Join(" ", whr)
		swhere = RemDelim(swhere, com)
		swhere = swhere.trim
		sb.Append(swhere)
	End If
	'
	If grpBy.Size > 0 Then
		Dim sgroup As String = Join(",", grpBy)
		sb.Append($" group by ${sgroup}"$)
	End If
	If orderByL.Size > 0 Then
		Dim lorder As List
		lorder.Initialize
		For Each k As String In orderByL
			If k.StartsWith("-") Then
				k = k.Replace("-", "")
				lorder.Add($"${k} desc"$)
			Else
				lorder.Add(k)
			End If
		Next
		Dim sorder As String = Join(",", lorder)
		sb.Append($" order by ${sorder}"$)
	End If
	'
	Dim sout As String = sb.tostring
	'
	Dim col As Map = CreateMap()
	col.Put("name", nameOf)
	col.Put("type", "view")
	col.Put("system", False)
	col.Put("listRule", "")
	col.Put("viewRule", "")
	col.Put("createRule", Null)
	col.Put("updateRule", Null)
	col.Put("deleteRule", Null)
	PutRecursive(col, "options.query", sout)
		'
	Dim opt As Map = CreateMap()
	opt.Put("cache", "no-store")
	If headers.Size > 0 Then opt.Put("headers", headers)
		
	BANano.Await(client.GetField("collections").RunMethod("create", Array(col, opt)))
	Catch
		Log($"SELECT_TO_VIEW_ONLY: ${LastException.message}"$)
	End Try	
End Sub

Sub orderBy(fldNames As List) As SDUIPocketBase
	For Each k As String In fldNames
		ADD_ORDER_BY(k)
	Next
	Return Me
End Sub

Sub groupBy(fldNames As List) As SDUIPocketBase
	ADD_GROUP_BY(fldNames)
	Return Me
End Sub

Sub orderByDesc(fldNames As List) As SDUIPocketBase
	For Each k As String In fldNames
		ADD_ORDER_BY_DESC(k)
	Next
	Return Me
End Sub

'this executes a clear_where first
Sub selectFields(fldNames As List) As SDUIPocketBase
	CLEAR_WHERE
	ADD_FIELDS(fldNames)
	Return Me
End Sub

Sub whereEqual(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_WHERE_STRING(fldName, "=", fldValue)
	Return Me
End Sub

Sub OrWhereEqual(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_OR_WHERE_STRING(fldName, "=", fldValue)
	Return Me
End Sub

Sub whereGreaterThan(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_WHERE_STRING(fldName, ">", fldValue)
	Return Me
End Sub

Sub OrWhereGreaterThan(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_OR_WHERE_STRING(fldName, ">", fldValue)
	Return Me
End Sub

Sub whereGreaterThanEqualTo(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_WHERE_STRING(fldName, ">=", fldValue)
	Return Me
End Sub

Sub OrWhereGreaterThanEqualTo(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_OR_WHERE_STRING(fldName, ">=", fldValue)
	Return Me
End Sub

Sub whereLike(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_WHERE_STRING(fldName, "~", fldValue)
	Return Me
End Sub

Sub OrWhereLike(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_OR_WHERE_STRING(fldName, "~", fldValue)
	Return Me
End Sub

Sub whereNotLike(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_WHERE_STRING(fldName, "!~", fldValue)
	Return Me
End Sub

Sub OrWhereNotLike(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_OR_WHERE_STRING(fldName, "!~", fldValue)
	Return Me
End Sub

Sub whereLessThanEqualTo(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_WHERE_STRING(fldName, "<=", fldValue)
	Return Me
End Sub

Sub OrWhereLessThanEqualTo(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_OR_WHERE_STRING(fldName, "<=", fldValue)
	Return Me
End Sub

Sub whereLessThan(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_WHERE_STRING(fldName, "<", fldValue)
	Return Me
End Sub

Sub OrWhereLessThan(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_OR_WHERE_STRING(fldName, "<", fldValue)
	Return Me
End Sub

Sub whereBetween(fldName As String, fldStart As Object, fldEnd As Object) As SDUIPocketBase
	ADD_WHERE_STRING($"${fldName}.start"$, ">=", fldStart)
	ADD_WHERE_STRING($"${fldName}.end"$, "<=", fldEnd)
	Return Me
End Sub

Sub whereNotEqual(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_WHERE_STRING(fldName, "<>", fldValue)
	Return Me
End Sub

Sub OrWhereNotEqual(fldName As String, fldValue As Object) As SDUIPocketBase
	ADD_OR_WHERE_STRING(fldName, "<>", fldValue)
	Return Me
End Sub

Sub SetAuthorizationBearerToken(sToken As String)
	sToken = sToken.Trim
	If sToken = "" Then 
		headers.remove("Authorization")
		Return
	End If
	AddHeader("Authorization", $"Bearer ${sToken}"$)
End Sub

'<code>
'pbComponents.CREATE_VIEW("viewname", "select id, name from...")
'pbComponents.SELECT_VIEW("viewname")
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub CREATE_VIEW(nameOf As String, qry As String)
	If ShowLog Then
		Log($"SDUIPocketBase.CREATE_VIEW(${nameOf})"$)
	End If
	Try
		SetAuthorizationBearerToken(UserToken)
		Dim col As Map = CreateMap()
		col.Put("name", nameOf)
		col.Put("type", "view")
		col.Put("system", False)
		col.Put("listRule", "")
		col.Put("viewRule", "")
		col.Put("createRule", Null)
		col.Put("updateRule", Null)
		col.Put("deleteRule", Null)
		PutRecursive(col, "options.query", qry)
		'
		Dim opt As Map = CreateMap()
		opt.Put("cache", "no-store")
		If headers.Size > 0 Then opt.Put("headers", headers)
		'
		BANano.Await(client.GetField("collections").RunMethod("create", Array(col,opt)))
	Catch
		Log($"CREATE_VIEW: ${LastException.message}"$)
	End Try
End Sub