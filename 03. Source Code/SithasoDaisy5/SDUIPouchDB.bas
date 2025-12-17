B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
'Notes:
'*** GETTINGS STARTED
'Install CouchDB (specify admin and password names - keep these safe, you will need for sync, https://couchdb.apache.org/
'Check CouchDB is running; http://127.0.0.1:5984/ (observe the JSON result)
'Open Fauxton on: http://127.0.0.1:5984/_utils/
'Enable CORS : http://127.0.0.1:5984/_utils/#_config/couchdb@localhost/cors (this helps with sync and replication)
'https://pouchdb.com/2014/06/17/12-pro-tips-for-better-code-with-pouchdb.html
'Pouch Find Reference: https://nolanlawson.github.io/pouchdb-find/
'*** NB ***
'In general, both CouchDB and PouchDB are just poor fits for storing binary data.
'(Databases rarely are.) Instead of 'attachments, try using a CDN or a simple fileserver,
'and store the URLs or checksums in the database if you need to.
#IgnoreWarnings:12
Sub Class_Globals
	Private dbKey As String
	Public DisplayValue As String
	Public DisplayField As String
	Private db As BANanoObject
	Private BANano As BANano			'ignore
	Private mCallBack As Object
	Type RelaxRec (ID As String, OK As Boolean, Rev As String)
	Type RelaxErr (Error As Boolean, Message As String, Name As String, Reason As String, Status As Int)
	Type RelaxSortHelper(SortKey As String, Value As Object)
	Type RelaxSync(PullStatus As Boolean, PullDocs As Int, PushStatus As Boolean, PushDocs As Int)
	Private remoteCouch As String
	Private sHost As String
	Private sPort As String
	Private sUser As String
	Private sPwd As String
	Private bAuto As Boolean
	Private bOnline As Boolean
	Private dbRemote As BANanoObject
	'
	Public const DB_BOOL As String = "BOOL"
	Public const DB_INT As String = "INT"
	Public const DB_STRING As String = "STRING"
	Public const DB_REAL As String = "REAL"
	Public const DB_BLOB As String = "BLOB"
	Public const DB_FLOAT As String = "FLOAT"
	Public const DB_INTEGER As String = "INTEGER"
	Public const DB_TEXT As String = "TEXT"
	Public const DB_DOUBLE As String = "DOUBLE"
	Public const DB_LONGTEXT As String = "TEXT"
	Public const DB_FILE As String = "FILE"
	'
	Public Schema As Map
	Private cw As Map = CreateMap()
	Private ops As List
	Private Fields As List
	Private SortBy As List
	Private LimitTo As Int
	Private Skip As Int
	'
	Public const OP_EQ As String = "$eq"
	Public const OP_LTE As String = "$lte"
	Public const OP_LT As String = "$lt"
	Public const OP_GT As String = "$gt"
	Public const OP_GTE As String = "$gte"
	Public const OP_EXISTS As String = "$exists"
	Public const OP_NE As String = "$ne"
	Public const OP_IN As String = "$in"
	Public const OP_NOT_IN As String = "$nin"
	Public const OP_SIZE As String = "$size"
	Public const OP_MOD As String = "$mod"
	Public const OP_REGEX As String = "$regex"
	Public const OP_ELEM_MATCH As String = "$elemMatch"
	Public const OP_TYPEOF As String = "$type"
	Public const OP_ALL As String = "$all"
	Public ShowLog As Boolean
	Public Record As Map
	Public result As List
	Public RowCount As Int
	Private LastPosition As Int
	Public affectedRows As Int
	Public PrimaryKey As String = "id"
	Private uniqueIdxNames As Map
	Private mEventName As String
	Private sTableName As String
	Private bIncludeDocs As Boolean = True
	Private bIncludeAttachments As Boolean = False
	Private bIncludeDesignLocal As Boolean = False
End Sub

'<code>
'Dim db As SDUIPouchDB
'db.Initialize(Me, "db", "contacts")
'db.WORK_OFFLINE
'</code>
Sub Initialize(Module As Object, EventName As String, DataBase As String, TableName As String)
	If BANano.AssetsIsDefined("PouchDB") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesPouchDB)' should be added!"$)
		Return
	End If
	mCallBack = Module
	mEventName = EventName
	sTableName = TableName
	bAuto = False
	bOnline = False
	Schema.Initialize
	RowCount = 0
	LastPosition = -1
	affectedRows = 0
	uniqueIdxNames.Initialize 
	BANano.DependsOnAsset("pouchdb.min.js")
	BANano.DependsOnAsset("pouchdb.find.js")
	SchemaAddText1("_id")
	DisplayValue = ""
	DisplayField = ""
	dbKey = $"${DataBase}_${TableName}"$
	db.Initialize2("PouchDB", dbKey)
	bIncludeDocs = True
	bIncludeAttachments = False
	bIncludeDesignLocal = False
	cw.Initialize
	ops.Initialize
	Fields.Initialize
	SortBy.Initialize
	LimitTo = 0
	Skip = 0
	result.Initialize
End Sub

'change the table name
Sub setTableName(s As String)
	If ShowLog Then
		Log($"SDUIPouchDB.setTableName(${s})"$)
	End If
	sTableName = s
End Sub

Sub getTableName As String
	Return sTableName
End Sub


'include _design / _local
Sub setIncludeDesignLocal(b As Boolean)
	bIncludeDesignLocal = b
End Sub

Sub getIncludeDesignLocal As Boolean
	Return bIncludeDesignLocal
End Sub

'include docs, default = true
Sub setIncludeDocs(b As Boolean)					'ignoredeadcode
	bIncludeDocs = b
End Sub

Sub getIncludeDocs As Boolean
	Return bIncludeDocs
End Sub

Sub setIncludeAttachments(b As Boolean)			'ignoredeadcode
	bIncludeAttachments = b
End Sub

Sub getIncludeAttachments As Boolean
	Return bIncludeAttachments
End Sub

'auto keys, system will generate GUID
Sub setAutoKeys(b As Boolean)
	bAuto = b
End Sub

Sub getAutoKeys As Boolean
	Return bAuto
End Sub

'moveStart
'<code>
'rs.MoveStart
'Do while rs.NextRow
'Loop
'</code>
Sub MoveStart
	LastPosition = -1
End Sub

Sub orderBy(fldNames As List) As SDUIPouchDB
	For Each k As String In fldNames
		ADD_ORDER_BY(k)
	Next
	Return Me
End Sub

Sub orderByDesc(fldNames As List) As SDUIPouchDB
	For Each k As String In fldNames
		ADD_ORDER_BY_DESC(k)
	Next
	Return Me
End Sub

'this executes a clear_where first
Sub selectFields(fldNames As List) As SDUIPouchDB
	CLEAR_WHERE
	ADD_FIELDS(fldNames)
	Return Me
End Sub

Sub whereEqual(fldName As String, fldValue As Object) As SDUIPouchDB
	ADD_WHERE(fldName, "=", fldValue)
	Return Me
End Sub

Sub whereGreaterThan(fldName As String, fldValue As Object) As SDUIPouchDB
	ADD_WHERE(fldName, ">", fldValue)
	Return Me
End Sub

Sub whereGreaterThanEqualTo(fldName As String, fldValue As Object) As SDUIPouchDB
	ADD_WHERE(fldName, ">=", fldValue)
	Return Me
End Sub

Sub whereLike(fldName As String, fldValue As Object) As SDUIPouchDB
	ADD_WHERE(fldName, "~", fldValue)
	Return Me
End Sub

Sub SetNextID
	Dim nid As String = NextID
	SetField("_id", nid)
End Sub

'connect to the remote database
Sub ConnectRemote(xHost As String, xPort As String, xUserName As String, xPassword As String, xDBName As String, xTableName As String)
	If ShowLog Then
		Log($"SDUIPouchDB.ConnectRemote(${xHost}, ${xPort}, ${xUserName}, ${xPassword}, ${xDBName}, ${xTableName})"$)
	End If
	sHost = xHost
	sPort = xPort
	sUser = xUserName
	sPwd = xPassword
	'
	If sHost = "" Then
		BANano.Throw($"ConnectRemote.Host address not specified!"$)
		Return
	End If
	'
	If sPort = "" Then
		BANano.Throw($"ConnectRemote.Port not specified!"$)
		Return
	End If
	'
	If sUser = "" Then
		BANano.Throw($"ConnectRemote.User Name not specified!"$)
		Return
	End If
	'
	If sPwd = "" Then
		BANano.Throw($"ConnectRemote.Password not specified!"$)
		Return
	End If
	'
	Dim opt As Map = CreateMap()
	PutRecursive(opt, "auth.username", xUserName)
	PutRecursive(opt, "auth.password", xPassword)
	'define the remote port connection
	remoteCouch = $"${xHost}:${xPort}/${xDBName}_${xTableName}"$
	If ShowLog Then
		Log($"SDUIPouchDB.ConnectRemote(${remoteCouch},${BANano.ToJson(opt)})"$)
	End If
	dbRemote.Initialize2("PouchDB", Array(remoteCouch, opt))
	bOnline = True
End Sub

'sync local and remote db
Sub Sync(bLive As Boolean, bRetry As Boolean) As RelaxSync
	Dim res As Map = CreateMap()
	If bOnline = False Then
		BANano.Console.Error($"SDUIPouchDB.SYNC: ${dbKey} - Execute ConnectRemote first!"$)
		Return Null
	End If
	'
	Dim opt As Map = CreateMap()
	opt.Put("live", bLive)
	opt.Put("retry", bRetry)
	Dim res As Map = BANano.Await(db.RunMethod("sync", Array(dbRemote, opt)))
	'
	Dim rsync As RelaxSync
	rsync.Initialize 
	rsync.PullDocs = GetRecursive(res, "pull.docs_written")
	rsync.PullStatus = GetRecursive(res, "pull.status")
	rsync.PushDocs = GetRecursive(res, "push.docs_written")
	rsync.PushStatus = GetRecursive(res, "push.status")
	Return rsync
End Sub


'ensure the query only return the id only
Sub GetAffectedID
	Fields.Initialize
	Fields.Add("_id")
End Sub

private Sub ListRemoveItem(lst As List, item As String)
	Dim idxPos As Int = lst.IndexOf(item)
	lst.RemoveAt(idxPos)
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

'get database info
Sub Info As Map
	Dim res As Map = BANano.Await(db.RunMethod("info", Null))
	Return res
End Sub

Sub COUNT_ALL As Int
	CLEAR_WHERE
	setIncludeAttachments(False)
	setIncludeDocs(False)
	BANano.Await(SELECT_ALL)
	Return RowCount
End Sub

'compact the database
'<code>
'db.COMPACT
'
''the callback for the sync errors
'Sub mydb_compact(err As RelaxErr, res As Map)
'End Sub
'</code>
Sub COMPACT
	If ShowLog Then
		Log($"SDUIPouchDB.COMPACT"$)
	End If
	'check for the sync error callback
	Dim eventName As String = $"${mEventName}_compact"$
	If SubExists(mCallBack, eventName) = False Then
		BANano.Console.Error($"${eventName} has not been defined"$)
	End If
	Dim res As Object
	Dim err As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, eventName, Array(err, res))
	db.RunMethod("compact", Array(cb))
End Sub
'<code>
''watch when changes take place
'0 for all changes ever made
'db.WATCH_CHANGES("now", True, True)
'
''changes callback
'Sub db_change(change As Map)
'dim bDeleted as boolean = change.get("deleted")
'dim doc as map = change.get("doc")
'End Sub
'
''complete callback
'Sub db_complete(info As Map)
'End Sub
'
''error callback
'Sub db_error(err As Map)
'End Sub
'</code>
Sub WATCH_CHANGES(sinceWhen As String, live As Boolean, includedocs As Boolean)
	If ShowLog Then
		Log($"SDUIPouchDB.WATCH_CHANGES(${sinceWhen}, ${live}, ${includedocs})"$)
	End If
	Dim opt As Map = CreateMap()
	opt.Put("since", sinceWhen)
	opt.Put("live", live)
	opt.Put("include_docs", bIncludeDocs)
	opt.Put("attachments", bIncludeAttachments)
	opt.Put("binary", False)
	opt.Put("descending", False)
	Dim changes As BANanoObject = db.RunMethod("changes", opt)
	'define the event for a callback
	Dim eventName As String = $"${mEventName}_change"$
	Dim change As Object
	Dim cbchange As BANanoObject = BANano.CallBack(mCallBack, eventName, Array(change))
	changes.RunMethod("on", Array("change", cbchange))
	'
	Dim eventNameC As String = $"${mEventName}_complete"$
	Dim infox As Object
	Dim cbcomplete As BANanoObject = BANano.CallBack(mCallBack, eventNameC, Array(infox))
	changes.RunMethod("on", Array("complete", cbcomplete))
	'
	Dim eventNameE As String = $"${mEventName}_error"$
	Dim err As Object
	Dim cberror As BANanoObject = BANano.CallBack(mCallBack, eventNameE, Array(err))
	changes.RunMethod("on", Array("error", cberror))
	
End Sub
'<code>
'db.PrepareRecord
'db.SetField("_id", db.NextID)
'dim res As String = BANano.Await(db.CREATE)
'</code>
Sub CREATE As String
	If ShowLog Then
		Log($"SDUIPouchDB.CREATE"$)
	End If
	Dim sid As String = ""
	If bAuto Then
		Dim dtNow As String = BANano.GenerateUUID
		Record.Put("_id", dtNow)
		Record.Put("id", dtNow)
	End If
	If Record.ContainsKey("id") Then
		sid = Record.Get("id")
		Record.Put("_id", sid)
	End If
	'
	Dim res As Map = BANano.Await(db.RunMethod("put", Record))
	If res.ContainsKey("id") Then
		sid = res.Get("id")
	Else
		sid = ""	
	End If
	Return sid
End Sub

'get a range of documents starting with a particular key
'<code>
'BANano.Await(db.SELECT_RANGE("apple:"))
'Do While db.NextRow
'Dim rec As Map = db.Record
'Dim sid As String = db.GetString("id")
'Loop
'</code>
Sub SELECT_RANGE(range As String)
	If ShowLog Then
		Log($"SDUIPouchDB.SELECT_RANGE(${range})"$)
	End If
	affectedRows = 0
	LastPosition = -1
	result.Initialize
	Dim opt As Map = CreateMap()
	opt.Put("include_docs", bIncludeDocs)
	opt.Put("attachments", bIncludeAttachments)
	'
	opt.Put("startkey", range)
	opt.Put("endkey", $"${range}\uffff"$)
	'
	Dim doc As Map = BANano.Await(db.RunMethod("allDocs", opt))
	'
	Dim docs As List = doc.Get("rows")
	For Each docm As Map In docs
		If bIncludeDocs = False Then
			Dim sid As String = docm.Get("id")
			docm.Put("_id", sid)
			If sid.StartsWith("_design") And bIncludeDesignLocal = False Then Continue
			If sid.StartsWith("_local") And bIncludeDesignLocal = False Then Continue
			result.Add(docm)
		Else
			Dim edoc As Map = docm.Get("doc")
			Dim sid As String = edoc.Get("_id")
			If sid.StartsWith("_design") And bIncludeDesignLocal = False Then Continue
			If sid.StartsWith("_local") And bIncludeDesignLocal = False Then Continue
			edoc.Put("_id", sid)
			result.Add(edoc)
		End If
	Next
	affectedRows = result.Size
	RowCount = affectedRows
End Sub

'<code>
''read a document including attachments
'Dim rg As Map = BANano.Await(db.READ("1"))
'</code>
Sub READ(docID As String) As Map
	If ShowLog Then
		Log($"SDUIPouchDB.READ(${docID})"$)
	End If
	Dim opt As Map = CreateMap()
	opt.Put("attachments", True)
	Dim res As Map = BANano.Await(db.RunMethod("get", Array(docID, opt)))
	Return res
End Sub

'<code>
'read a record by a unique field
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'Dim result As Map = BANano.Await(pbComponents.READ_BY("name", "xxx"))
'</code>
Sub READ_BY(fldName As String, fldValue As Object) As Map
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.READ_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	LimitTo = 1
	BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	If RowCount >= 1 Then
		m = result.Get(0)
	End If
	Return m
End Sub

Sub ContainsField(fldName As String, id As String) As Boolean
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.ContainsField(${fldName},${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPouchDB.ContainsField: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	CLEAR_WHERE
	ADD_FIELD(fldName)
	ADD_WHERE(fldName, "=", $"'${id}'"$)
	LimitTo = 1
	BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	If RowCount >= 1 Then
		m = result.Get(0)
	End If
	If m.Size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'get keyvalues for combos etc
'<code>
'Dim mExpenseCategories As Map = banano.Await(pbExpenseCategories.GetKeyValues(True, "id", "name"))
'</code>
Sub GetKeyValues(bHasNothing As Boolean, k As String, v As String) As Map
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.GetKeyValues(${bHasNothing},${k},${v})"$)
	End If

	Dim mx As Map = CreateMap()
	If bHasNothing Then
		mx.Put("", "-- Nothing Selected --")
	End If
	CLEAR_WHERE
	ADD_FIELD(k)
	ADD_FIELD(v)
	ADD_ORDER_BY(v)
	BANano.Await(SELECT_WHERE)
	For Each row As Map In result
		Dim f1 As String = row.get(k)
		Dim f2 As String = row.get(v)
		mx.Put(f1, f2)
	Next
	Return mx
End Sub

'Tests whether a key is available in the store.
'<code>
'Dim res as boolean = BANano.Await(pb.ContainsKey("a"))
'</code>
Sub ContainsKey(id As String) As Boolean
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.ContainsKey(${id})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPouchDB.ContainsKey: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return ""
	End If
	Dim m As Map = BANano.Await(READ(id))
	If m.Size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub



'<code>
'read a record using a unique field and return listed fields
'pbComponents.FILE_FIELD("fileobj", "fileurl")
'Dim result As Map = BANano.Await(pbComponents.READ_BY_STRING_FIELDS("name", "xxx", array("id", "name"))))
'</code>
Sub READ_BY_STRING_FIELDS(fldName As String, fldValue As Object, theseFlds As List) As Map
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.READ_BY_STRING_FIELDS(${fldName},${fldValue},${Join(";", theseFlds)})"$)
	End If
	CLEAR_WHERE
	ADD_FIELDS(theseFlds)
	ADD_WHERE(fldName, "=", fldValue)
	LimitTo = 1
	BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	If RowCount >= 1 Then
		m = result.Get(0)
	End If
	Return m
End Sub

'return an id of a record by reading a unique string field
Sub READ_ID_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.READ_ID_BY_STRING(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("_id")
	ADD_WHERE(fldName, "=", fldValue)
	LimitTo = 1
	BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	Dim sid As String = ""
	If RowCount >= 1 Then
		m = result.Get(0)
		sid = m.GetDefault("_id", "")
	End If
	Return sid
End Sub

'return an id of a record by reading a unique string field
Sub READ_ID_BY(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.READ_ID_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("_id")
	ADD_WHERE(fldName, "=", fldValue)
	LimitTo = 1
	BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	Dim sid As String = ""
	If RowCount >= 1 Then
		m = result.Get(0)
		sid = m.GetDefault("_id", "")
	End If
	Return sid
End Sub


'<code>
'read a record by a unique field and return listed fields
'Dim result As Map = BANano.Await(pbComponents.READ_FIELDS("xxx", array("id", "name")))
'</code>
Sub READ_FIELDS(fldValue As Object, theseFlds As List) As Map
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.READ_FIELDS(${fldValue}, ${Join(";", theseFlds)})"$)
	End If
	CLEAR_WHERE
	If theseFlds.IndexOf("_id") = -1 Then theseFlds.Add("_id")
	ADD_FIELDS(theseFlds)
	ADD_WHERE("_id", "=", fldValue)
	LimitTo = 1
	BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	If RowCount >= 1 Then
		m = result.Get(0)
	End If
	Return m
End Sub

Sub SetRecordAt(pos As Int, rec As Map)
	If rec.ContainsKey("id") Then
		Dim sid As String = rec.Get("id")
		rec.Put("_id", sid)
	End If
	result.Set(pos, rec)
End Sub

'returns a placeholder if there is no image
Sub GetImage(fld As String) As String
	Dim simage As String = GetString(fld)
	If simage = "" Then Return "./assets/placeholderimg.jpg"
	Return simage
End Sub

'delete wait
'<code>
'Dim rd As Map = BANano.Await(db.DELETE("1"))
'</code>
Sub DELETE(docID As String) As Boolean
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.DELETE(${docID})"$)
	End If
	'get the document
	Dim doc As Map = BANano.Await(READ(docID))
	'get the revision
	Dim rev As String = doc.GetDefault("_rev", "")
	'remove the document by id and revision
	Dim delm As Map = CreateMap()
	delm.Put("_id", docID)
	delm.Put("_rev", rev)
	Dim res As Map = BANano.Await(db.RunMethod("remove", delm))
	Dim bok As Boolean = False
	If res.ContainsKey("ok") Then
		bok = res.Get("ok")
	End If
	bok = CBool(bok)
	Return bok
End Sub

'permanently delete a document wait
'workds with indexedDB
'<code>
'Dim rd As Map = BANano.Await(db.PURGE("1"))
'</code>
Sub PURGE(docID As String) As Boolean
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.PURGE(${docID})"$)
	End If
	'get the document
	Dim doc As Map = BANano.Await(READ(docID))
	'get the revision
	Dim rev As String = doc.GetDefault("_rev", "")
	Dim res As Map = BANano.Await(db.RunMethod("purge", Array(docID, rev)))
	Dim bok As Boolean = False
	If res.ContainsKey("ok") Then
		bok = res.Get("ok")
	End If
	bok = CBool(bok)
	Return bok
End Sub


'same as update but uses wait
'update reads the record from db and then updates it
'<code>
'db.PrepareRecord
'db.SetField("_id", "123")
'Dim ru As String = BANano.Await(db.UPDATE)
'</code>
Sub UPDATE As String
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.UPDATE"$)
	End If
	Dim sid As String = ""
	If Record.ContainsKey("id") Then
		sid = Record.Get("id")
		Record.Put("_id", sid)
	End If
	sid = Record.Get("_id")
	'read the document
	Dim doc As Map = BANano.Await(READ(sid))
	'get the revision
	Dim rev As String = doc.GetDefault("_rev", "")
	'
	Dim opt As Map = CreateMap()
	opt.Put("force", True)
	
	For Each k As String In Record.Keys
		Dim v As Object = Record.Get(k)
		doc.Put(k, v)
	Next
	'
	doc.Put("_id", sid)
	doc.Put("_rev", rev)
	Dim res As Map = BANano.Await(db.RunMethod("put", Array(doc, opt)))
	If res.ContainsKey("id") Then
		sid = res.Get("id")
	Else
		sid = ""	
	End If
	Return sid
End Sub

'convert a result to a RelaxRec
private Sub ToRelaxRec(res As Map) As RelaxRec
	Dim nrec As RelaxRec
	nrec.Initialize
	nrec.OK = False
	nrec.ID = ""
	nrec.Rev = ""
	If BANano.IsNull(res) = False Or BANano.IsUndefined(res) Then
		nrec.id = res.GetDefault("id", "")
		nrec.ok = res.GetDefault("ok", False)
		nrec.rev = res.GetDefault("rev", "")
	End If
	Return nrec
End Sub

'convert map to error
private Sub ToRelaxErr(res As Map) As RelaxErr
	Dim nerr As RelaxErr
	nerr.Initialize
	nerr.Error = False
	nerr.Message = ""
	nerr.Name = ""
	nerr.Reason = ""
	nerr.Status = 0
	If BANano.IsNull(res) = False Or BANano.IsUndefined(res) Then
		nerr.Error = res.GetDefault("error", False)
		nerr.Message = res.GetDefault("message","")
		nerr.Name = res.GetDefault("name","")
		nerr.Reason = res.GetDefault("reason","")
		nerr.Status = res.GetDefault("status","")
	End If
	Return nerr
End Sub
'<code>
''update bulk records, records must have _id and _rev
'Dim lst As List
'lst.Initialize
'lst.Add(CreateMap("title" : "Lisa Says", "_id": "doc1", "_rev":"xxx"))
'lst.Add(CreateMap("title" : "Space Oddity", "_id": "doc2", "_rev":"xx1"))
'BANano.Await(db.UPDATE_BULK(lst))
'</code>
Sub UPDATE_BULK(nrecs As List)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.UPDATE_BULK(${BANano.ToJson(nrecs)})"$)
	End If
	Dim rTot As Int = nrecs.Size - 1
	Dim rCnt As Int = 0
	For rCnt = 0 To rTot
		Dim edoc As Map = nrecs.Get(rCnt)
		If edoc.ContainsKey("id") Then
			Dim sid As String = edoc.Get("id")
			edoc.Put("_id", sid)
		End If
		nrecs.Set(rCnt, edoc)
	Next
	result = BANano.Await(db.RunMethod("bulkDocs", nrecs))
	affectedRows = result.Size
	RowCount = affectedRows
End Sub
'<code>
''delete bulk records, will add _deleted:true to each record
'Dim lst As List
'lst.Initialize
'lst.Add(CreateMap("title" : "Lisa Says", "_id": "doc1", "_rev":"xxx"))
'lst.Add(CreateMap("title" : "Space Oddity", "_id": "doc2", "_rev":"xx1"))
'BANano.Await(db.DELETE_BULK(lst))
'</code>
Sub DELETE_BULK(nrecs As List)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.DELETE_BULK(${BANano.ToJson(nrecs)})"$)
	End If
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.DELETE_BULK(${BANano.ToJson(nrecs)})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPouchDB.DELETE_BULK: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return
	End If
	Try
		Dim dTot As Long = nrecs.Size - 1
		Dim dCnt As Long = 0
		For dCnt = 0 To dTot
			Dim rec As Map = nrecs.Get(dCnt)
			If rec.ContainsKey("id") Then
				Dim sid As String = rec.Get("id")
				rec.Put("_id", sid)
			End If
			rec.Put("_deleted", True)
			nrecs.Set(dCnt, rec)
		Next
		result = BANano.Await(db.RunMethod("bulkDocs", nrecs))
		affectedRows = result.Size
		RowCount = affectedRows
	Catch
		Log($"DELETE_BULK: ${LastException.message}"$)
	End Try		
End Sub

'<code>
''insert bulk records, _id can be BANano.GenerateUUID
'Dim lst As List
'lst.Initialize
'lst.Add(CreateMap("title" : "Lisa Says", "_id": "doc1"))
'lst.Add(CreateMap("title" : "Space Oddity", "_id": "doc2"))
'db.CREATE_BULK(lst)
'</code>
Sub CREATE_BULK(nrecs As List)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.CREATE_BULK(${BANano.ToJson(nrecs)})"$)
	End If
	result.Initialize 
	LastPosition = -1
	Dim rtot As Int = nrecs.Size - 1
	Dim rcnt As Int 
	For rcnt = 0 To rtot
		Dim rec As Map = nrecs.Get(rcnt)
		If rec.ContainsKey("id") Then
			Dim sid As String = rec.Get("id")
			rec.Put("_id", sid)
			nrecs.Set(rcnt, rec)
		End If
	Next	
	result = BANano.Await(db.RunMethod("bulkDocs", nrecs))
	affectedRows = result.Size
	RowCount = affectedRows
End Sub

'<code>
''select all records from the data-base, if sort order or fields are specified, executes SELECT_WHERE
'BANano.Await(db.SELECT_ALL)
'Do While db.NextRow
'Dim rec As Map = db.Record
'Dim sid As String = db.GetString("id")
'Loop
'</code>
Sub SELECT_ALL
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.SELECT_ALL"$)
	End If
	'check if we have a sort order or fields
	If (Fields.Size > 0) Or (SortBy.Size > 0) Then
		BANano.Await(SELECT_WHERE)
		Return
	End If
	'
	Dim opt As Map = CreateMap()
	opt.Put("include_docs", bIncludeDocs)
	opt.Put("descending", False)
	opt.Put("attachments", bIncludeAttachments)
	'
	affectedRows = 0
	LastPosition = -1
	result.Initialize
	'
	Dim doc As Map = BANano.Await(db.RunMethod("allDocs", opt))
	If doc.ContainsKey("rows") Then
		Dim docs As List = doc.Get("rows")
		For Each docm As Map In docs
			If bIncludeDocs = False Then
				Dim sid As String = docm.Get("id")
				docm.Put("_id", sid)
				If sid.StartsWith("_design") And bIncludeDesignLocal = False Then Continue
				If sid.StartsWith("_local") And bIncludeDesignLocal = False Then Continue
				result.Add(docm)
			Else
				Dim edoc As Map = docm.Get("doc")
				'exclude designs
				Dim sid As String = edoc.Get("_id")
				If sid.StartsWith("_design") And bIncludeDesignLocal = False Then Continue
				If sid.StartsWith("_local") And bIncludeDesignLocal = False Then Continue
				'skip indexes
				If edoc.ContainsKey("id") Then
					Dim sid As String = edoc.Get("id")
					edoc.Put("_id", sid)
				End If
				result.Add(edoc)
			End If
		Next
	End If
	affectedRows = result.Size
	RowCount = affectedRows
End Sub

Sub FirstRecord As Map
	Dim rec As Map = result.Get(0)
	Return rec
End Sub


Sub GetIndexes As Map
	Dim res As Map = BANano.Await(db.RunMethod("getIndexes", Null))
	Return res
End Sub

'<code>
''create an index based on multiple fields
'Dim m as map = BANano.AWait(db.CreateIndexes("firstname", "firstname"))
'</code>
Sub CreateIndexes(idName As String, xFields As List) As Map
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.CreateIndexes(${idName}, ${Join(";", xFields)})"$)
	End If
	Dim idxName As String = $"${sTableName}${idName}"$
	Dim opt As Map = CreateMap()
	PutRecursive(opt, "index.fields", xFields)
	PutRecursive(opt, "index.name", idxName)
	Dim res As Map = BANano.Await(db.RunMethod("createIndex", opt))
	Return res
End Sub


'<code>
''create an index based on multiple fields
'Dim m as map = BANano.AWait(db.CreateMultipleIndexes(Array("firstname", "firstname")))
'</code>
Sub CreateMultipleIndexes(xFields As List)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.CreateMultipleIndexes(${Join(";", xFields)})"$)
	End If
	For Each k As String In xFields
		If k = "_id" Then Continue
		Dim idxName As String = $"${sTableName}${k}"$
		Dim opt As Map = CreateMap()
		PutRecursive(opt, "index.fields", Array(k))
		PutRecursive(opt, "index.name", idxName)
		BANano.Await(db.RunMethod("createIndex", opt))
	Next
End Sub

'<code>
'BANano.AWait(db.CreateIndex("firstname"))
'</code>
Sub CreateIndex(idxName As String) As Map
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.CreateIndex(${idxName})"$)
	End If
	If idxName = "_id" Then Return Null
	Dim idxName As String = $"${sTableName}${idxName}"$
	Dim opt As Map = CreateMap()
	PutRecursive(opt, "index.fields", Array(idxName))
	PutRecursive(opt, "index.name", idxName)
	Dim res As Map = BANano.Await(db.RunMethod("createIndex", opt))
	Return res
End Sub

private Sub BuildSelector(xFields As List, xfieldAndValue As Map, xFieldOperators As List, xSortBy As List, xLimitTo As Int, xSkip As Int) As Map
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.BuildSelector"$)
	End If
	Dim opt As Map = CreateMap()
	Dim selector As Map = CreateMap()
	'get records only
	'we have a where clause, use use the Mango query language, not map/reduce or other legacy query systems.
	'If xfieldAndValue.Size = 0 Then
	'	xfieldAndValue.put("language", "query")
	'	xFieldOperators.Add(OP_NE)
	'End If
	'
	'build selectors
	'where clause
	Dim fvTot As Int = xfieldAndValue.Size - 1
	Dim	fvCnt As Int = 0
	For fvCnt = 0 To fvTot
		Dim key As String = xfieldAndValue.GetKeyAt(fvCnt)
		Dim key1 As String = MvField(key, 1, ".")
		Dim	value As String	= xfieldAndValue.GetValueAt(fvCnt)
		Dim operator As String = xFieldOperators.Get(fvCnt)
		'
		Dim findObj As Map = CreateMap()
		findObj.Put(operator, value)
		'
		selector.Put(key1, findObj)
	Next
	'
	'check fields to list
	Dim ff As String = xFields.Get(0)
	If ff <> "*" Then
		opt.Put("fields", xFields)
	End If
	'build the selector
	opt.Put("selector", selector)
	'build sort
	If xSortBy.Size >= 1 Then
		Dim ns As List
		ns.Initialize
		For Each sitem As String In xSortBy
			If sitem.Contains(":") Then
				'create an object
				Dim sfld As String = MvField(sitem, 1, ":")
				Dim sdes As String = MvField(sitem, 2, ":")
				Dim sortm As Map = CreateMap()
				sortm.Put(sfld, sdes)
				ns.Add(sortm)
			Else
				'use the field name
				ns.Add(sitem)
			End If
		Next
		opt.Put("sort", ns)
	End If
	'build limit 2
	If xLimitTo <> 0 Then
		opt.Put("limit", xLimitTo)
	End If
	If xSkip <> 0 Then
		opt.Put("skip", xSkip)
	End If
	Return opt
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
		Log($"SDUIPouchDB.${sTableName}.SELECT_WHERE1"$)
	End If
	BANano.Await(SELECT_WHERE)
	Return result
End Sub

Sub SetRecords(lst As List)
	LastPosition = -1
	RowCount = lst.Size
	result = lst
End Sub

Sub SetRecordAsIs(rec As Map)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.SetRecordAsIs(${BANano.ToJson(rec)})"$)
	End If
	Record.Initialize
	'only process schema fields
	For Each k As String In rec.Keys
		Dim v As Object = rec.get(k)
		Record.put(k, v)
	Next
	DisplayValue = Record.GetDEfault(DisplayField, "")
	If ShowLog Then
		Log($"SDUIPouchDB.SetRecordAsIs(${BANano.ToJson(Record)})"$)
	End If
End Sub

'<code>
''SELECT * FROM db WHERE firstname = 'Usibabale' ORDER BY _id desc
''specify the fields and the values to find, this will create an index based on the sort by fields
''* means all fields else specify the field names to return
'db.CLEAR_WHERE
'db.ADD_FIELDS(Array("*"))
'db.ADD_WHERE("firstname", "=", "Usibabale")
'db.ADD_ORDER_BY(Array("_id:desc"))
'BANano.Await(db.SELECT_WHERE)
'Do While pbComponents.NextRow
'Dim rec As Map = pbComponents.Record
'Dim sid As String = pbComponents.GetString("id")
'Loop
'</code>
Sub SELECT_WHERE
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.SELECT_WHERE"$)
	End If
	affectedRows = 0
	LastPosition = -1
	result.Initialize
	'store the new index
	Dim ni As List
	ni.Initialize
	'ensure the sort fields have an index, these receive priority
	If SortBy.Size >= 1 Then
		'create the index first
		For Each item As String In SortBy
			If item <> "_id" Then
				'remove any asc/desc scecified
				item = MvField(item, 1, ":")
				'ensure we dont have duplicate indexes
				If ni.IndexOf(item) = -1 Then ni.Add(item)
				'check if on where clause, if not add it
				If cw.ContainsKey(item) = False Then
					ADD_WHERE(item, OP_GT, Null)
				End If
			End If
		Next
	End If
	If Fields.Size = 0 Then Fields.Add("*")
	Dim opt As Map = BuildSelector(Fields, cw, ops, SortBy, LimitTo, Skip)
	'ensure the where clause fields are indexed
	If cw.Size >= 1 Then
		For Each item As String In cw.Keys
			If item <> "_id" Then
				If ni.IndexOf(item) = -1 Then ni.Add(item)
			End If
		Next
	End If
	'we have indexes to create
	If ni.Size >= 1 Then
		BANano.Await(CreateMultipleIndexes(ni))
	End If
	'execute the find
	Dim res As Map = BANano.Await(db.RunMethod("find", Array(opt)))
	If res.ContainsKey("docs") Then
		result = res.get("docs")
	End If
	affectedRows = result.size
	RowCount = affectedRows
End Sub

'get an id of a record using a unique field
Sub GET_ID_BY_FIELD(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.GET_ID_BY_FIELD(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_FIELD("_id")
	ADD_WHERE(fldName, "=", fldValue)
	LimitTo = 1
	BANano.Await(SELECT_WHERE)
	Dim m As Map = CreateMap()
	Dim sid As String = ""
	If RowCount >= 1 Then
		m = result.Get(0)
		sid = m.GetDefault("_id", "")
	End If
	Return sid
End Sub

Sub UPDATE_BY_STRING(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.UPDATE_BY_STRING(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(GET_ID_BY_FIELD(fldName, fldValue))
	If sid = "" Then Return ""
	Record.Put("_id", sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
End Sub

Sub UPDATE_BY(fldName As String, fldValue As String) As String
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.UPDATE_BY(${fldName},${fldValue})"$)
	End If
	Dim sid As String = BANano.Await(GET_ID_BY_FIELD(fldName, fldValue))
	If sid = "" Then Return ""
	Record.Put("_id", sid)
	Dim nid As String = BANano.Await(UPDATE)
	Return nid
End Sub


'clear where clause
'<code>
'db.CLEAR_WHERE
'</code>
Sub CLEAR_WHERE
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.CLEAR_WHERE"$)
	End If
	cw.Initialize
	ops.Initialize
	Fields.Initialize
	SortBy.Initialize
	LimitTo = 0
	Skip = 0
	affectedRows = 0
	LastPosition = -1
	result.Initialize	
End Sub
'set the fields for the select
'add all fields
'db.ADD_FIELDS(array("*"))
'
'add particular fields
'db.ADD_FIELDS(array("firstname", "lastname"))
Sub ADD_FIELDS(flds As List)
	For Each item As String In flds
		ADD_FIELD(item)
	Next
End Sub

Sub ADD_FIELD(fld As String)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.ADD_FIELD(${fld})"$)
	End If
	If Fields.IndexOf(fld) = -1 Then Fields.Add(fld)
End Sub

'add a sort field
'set the sort order
'order in asc order .ADD_ORDER_BY("firstname")
'order in desc order .ADD_ORDER_BY("firstname:desc")
Sub ADD_ORDER_BY(fld As String)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.ADD_ORDER_BY(${fld})"$)
	End If
	If SortBy.IndexOf(fld) = -1 Then SortBy.Add(fld)
End Sub

Sub ADD_ORDER_BY_DESC(fld As String)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.ADD_ORDER_BY_DESC(${fld})"$)
	End If
	If SortBy.IndexOf($"${fld}:desc"$) = -1 Then SortBy.Add($"${fld}:desc"$)
End Sub

'add a where clause for your select where
'operators (=; <>; >, <, >=, <=, in, notin, exists)
'<code>
'db.ADD_WHERE("firstname", "=", "Usibabale")
'</code>
Sub ADD_WHERE(fld As String, operator As String, value As Object) 
	Select Case operator
		Case "="
			operator = OP_EQ
		Case "<>"
			operator = OP_NE
		Case ">"
			operator = OP_GT
		Case "<"
			operator = OP_LT
		Case ">="
			operator = OP_GTE
		Case "<="
			operator = OP_LTE
		Case "in"
			operator = OP_IN
		Case "notin"
			operator = OP_NOT_IN
		Case "exists"
			operator = OP_EXISTS
	End Select
	'remove desc/asc clause
	Dim fld1 As String = MvField(fld, 1, ":")
	cw.Put(fld1, value)
	ops.Add(operator)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.ADD_WHERE(${fld},${operator}, ${value})"$)
	End If
End Sub

'close the database connection
Sub CLOSE
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.CLOSE"$)
	End If
	db.RunMethod("close", Null)
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
			Return sb.tostring
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

'return the value of the first "records" field
Sub GetRecordsCount As Int
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.GetRecordsCount"$)
	End If
	If RowCount > 0 Then
		MoveFirst
		Dim irecords As Int = GetInt("records")
		Return irecords
	Else
		Return 0
	End If
End Sub

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
Sub SchemaAddBlob(bools As List) 
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
	
End Sub
'schema add boolean
Sub SchemaAddBoolean(bools As List) 
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	
End Sub
'add double fields
Sub SchemaAddDouble(bools As List) 
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	
End Sub
Sub SchemaAddFloat(bools As List) 
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	
End Sub
Sub SchemaAddText(bools As List) 
	For Each b As String In bools
		Schema.Put(b, DB_STRING)
	Next
	
End Sub
Sub SchemaAddInt(bools As List) 
	For Each b As String In bools
		Schema.Put(b, DB_INT)
	Next
	
End Sub
Sub SchemaAddField(fldName As String, fldType As String)
	Schema.Put(fldName, fldType)
End Sub
'prepare for new table definition
Sub SchemaClear 
	Schema.clear
	
End Sub

'prepare a new record
Sub PrepareRecord
	Record.Initialize
End Sub

'set a record from a map
Sub SetRecord(rec As Map)
	Record.Initialize 
	For Each k As String In rec.Keys
		Dim v As Object = rec.Get(k)
		SetField(k, v)
	Next
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
public Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return BANano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
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

Sub RecordFromMap(sm As Map)
	Record.Initialize
	For Each k As String In sm.Keys
		Dim v As Object = sm.Get(k)
		Record.Put(k, v)
	Next
End Sub


Sub getFields As List
	Return Fields
End Sub

Sub setFields(tflds As List)
	Fields.Clear
	For Each k As String In tflds
		Fields.Add(k)
	Next
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

'to delete the file set the fldValue = null
Sub SetField(fldName As String, fldValue As Object)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.SetField(${fldName}, ${fldValue})"$)
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
End Sub

'save after
Sub SetFieldAttachment(fileName As String, mimeType As String, base64Data As String)
	PutRecursiveDelim(Record, $"_attachments|||${fileName}|||content_type"$, mimeType, "|||")
	PutRecursiveDelim(Record, $"_attachments|||${fileName}|||data"$, base64Data, "|||")
End Sub

'put the attachment directly to the db
Sub PutAttachment(sid As String, fileName As String, base64Data As String, mimeType As String) As Map
	Dim res As Map = BANano.Await(db.RunMethod("putAttachment", Array(sid, fileName, base64Data, mimeType)))
	Return res
End Sub

'get an attachment directly from db
Sub GetAttachment(sid As String, fileName As String) As Map
	Dim res As Map = BANano.Await(db.RunMethod("getAttachment", Array(sid, fileName)))
	Return res
End Sub

'<code>
'Do while rs.NextRow
'Loop
'</code>
Sub NextRow As Boolean
	LastPosition = LastPosition + 1
	Dim realSize As Int = RowCount - 1
	If LastPosition > realSize Then
		Return False
	Else
		setPosition(LastPosition)
		Return True
	End If
End Sub

'set the position of the current record
Sub setPosition(pos As Int)
	If result.Size > pos Then
		Record = result.Get(pos)
		LastPosition = pos
	Else
		LastPosition = -1
		Record.Initialize
	End If
End Sub

Sub SchemaAddLongText1(b As String)
	Schema.Put(b, DB_LONGTEXT)	
End Sub

Sub SchemaAddLongText(bools As List)
	For Each b As String In bools
		Schema.Put(b, DB_LONGTEXT)
	Next	
End Sub

Sub SchemaAddFile(bools As List)
	For Each b As String In bools
		Schema.Put(b, DB_FILE)
	Next
End Sub

Sub SchemaAddFile1(b As String) 
	Schema.Put(b, DB_FILE)
End Sub


private Sub isBase64Image(imgURL As String) As Boolean
	Dim bRes As Boolean = BANano.RunJavascriptMethod("isBase64Image", Array(imgURL))
	bRes = CBool(bRes)
	Return bRes
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

''get the data model for the current table
'Sub GetDataModel As Map
'	If ShowLog Then
'		Log($"SDUIPouchDB.GetDataModel"$)
'	End If
'	selectFields(Array("name", "schema"))
'	whereEqual("type", "base")
'	whereEqual("name", sTableName)
'	orderBy(Array("name"))
'	Dim tblNames As List = BANano.Await(SELECT_COLLECTIONS)
'	'text,editor,number,bool,email,url,date,select,file,relation,json
'	Dim tbl As Map = tblNames.Get(0)
'	Dim xflds As Map = CreateMap()
''	Dim sname As String = tbl.Get("name")
'	Dim xSchema As List = tbl.Get("schema")
'	For Each fld As Map In xSchema
'		Dim fldname As String = fld.Get("name")
'		Dim fldtype As String = fld.Get("type")
'		xflds.Put(fldname, fldtype)
'	Next
'	xflds.Put("id", "text")
'	xflds.Put("created", "text")
'	xflds.Put("updated", "text")
'	Return xflds
'End Sub
'
''get the data model for the current table
'Sub GetDataModelOfTable(tblName As String) As Map
'	If ShowLog Then
'		Log($"SDUIPouchDB.GetDataModelOfTable"$)
'	End If
'	selectFields(Array("name", "schema"))
'	whereEqual("type", "base")
'	whereEqual("name", tblName)
'	orderBy(Array("name"))
'	Dim tblNames As List = BANano.Await(SELECT_COLLECTIONS)
'	'text,editor,number,bool,email,url,date,select,file,relation,json
'	Dim tbl As Map = tblNames.Get(0)
'	Dim xflds As Map = CreateMap()
''	Dim sname As String = tbl.Get("name")
'	Dim xSchema As List = tbl.Get("schema")
'	For Each fld As Map In xSchema
'		Dim fldname As String = fld.Get("name")
'		Dim fldtype As String = fld.Get("type")
'		xflds.Put(fldname, fldtype)
'	Next
'	xflds.Put("id", "text")
'	xflds.Put("created", "text")
'	xflds.Put("updated", "text")
'	Return xflds
'End Sub
'
'Sub GetDataModels(e As String, p As String) As Map
'	If ShowLog Then
'		Log($"SDUIPouchDB.GetDataModels"$)
'	End If
'	selectFields(Array("name", "schema"))
'	whereEqual("type", "base")
'	orderBy(Array("name"))
'	Dim tblNames As List = BANano.Await(SELECT_ALL_COLLECTIONS(e, p))
'	'text,editor,number,bool,email,url,date,select,file,relation,json
'	Dim models As Map = CreateMap()
'	For Each tbl As Map In tblNames
'		Dim xflds As Map = CreateMap()
'		Dim sname As String = tbl.Get("name")
'		Dim xSchema As List = tbl.Get("schema")
'		For Each fld As Map In xSchema
'			Dim fldname As String = fld.Get("name")
'			Dim fldtype As String = fld.Get("type")
'			xflds.Put(fldname, fldtype)
'		Next
'		xflds.Put("id", "text")
'		xflds.Put("created", "text")
'		xflds.Put("updated", "text")
'		models.Put(sname, xflds)
'	Next
'	Return models
'End Sub

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

Sub getPosition As Int
	Return LastPosition
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

'check compulsory Fields
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

Sub whereLessThanEqualTo(fldName As String, fldValue As Object) As SDUIPouchDB
	ADD_WHERE(fldName, "<=", fldValue)
	Return Me
End Sub

Sub whereLessThan(fldName As String, fldValue As Object) As SDUIPouchDB
	ADD_WHERE(fldName, "<", fldValue)
	Return Me
End Sub

Sub whereBetween(fldName As String, fldStart As Object, fldEnd As Object) As SDUIPouchDB
	ADD_WHERE($"${fldName}.start"$, ">=", fldStart)
	ADD_WHERE($"${fldName}.end"$, "<=", fldEnd)
	Return Me
End Sub

Sub whereNotEqual(fldName As String, fldValue As Object) As SDUIPouchDB
	ADD_WHERE(fldName, "<>", fldValue)
	Return Me
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

'<code>
'BANano.Await(pb.DELETE_BY(1))
'</code>
Sub DELETE_BY(fldName As String, fldValue As String) As Boolean
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.DELETE_BY(${fldName},${fldValue})"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	ADD_FIELD("_id")
	ADD_FIELD(fldName)
	BANano.Await(SELECT_WHERE)
	
	Dim b As Boolean = BANano.Await(deleteWhere("_id", cw, ops))
	Return b
End Sub

'Execute a delete clause on the records
'<code>
'BANano.Await(pb.deleteWhere("id", m, array("=")))
'</code>
Sub deleteWhere(priKey As String, whereMap As Map, whereOps As List) As Boolean
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.deleteWhere(${priKey},${BANano.ToJson(whereMap)},${Join(";", whereOps)})"$)
	End If
	If Schema.Size = 0 Then
		BANano.Throw($"SDUIPouchDB.deleteWhere: ${sTableName} - please execute SchemaAdd?? first to define your table schema!"$)
		Return Null
	End If
	'get all the records
	BANano.Await(SELECT_WHERE)
	If result.Size = 0 Then Return False	'
	For Each rec As Map In result
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
		Log($"SDUIPouchDB.${sTableName}.DELETE_WHERE"$)
	End If
	BANano.Await(deleteWhere("_id", cw, ops))
End Sub

'get record at position
Sub GetRecord(pos As Int) As Map
	Dim rec As Map = result.Get(pos)
	Return rec
End Sub
'movefirst
Sub MoveFirst
	setPosition(0)
End Sub
'movelast
Sub MoveLast
	setPosition(RowCount - 1)
End Sub
'moveprevious
Sub MovePrevious
	LastPosition = LastPosition - 1
	If LastPosition < 0 Then
		LastPosition = 0
	End If
	setPosition(LastPosition)
End Sub
'movenext
Sub MoveNext
	LastPosition = LastPosition + 1
	If LastPosition > RowCount Then
		LastPosition = RowCount - 1
	End If
	setPosition(LastPosition)
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

Sub PutRecursiveDelim(data As Map, path As String, value As Object, delim As String)
	Try
		If BANano.IsNull(path) Or BANano.IsUndefined(path) Then
			path = ""
		End If
		If path = "" Then Return
		Dim prevObj As BANanoObject = data
		If path.IndexOf(delim) = -1 Then
			'we dont have a dot
			prevObj.SetField(path, value)
		Else
			'we have a dot
			Dim items As List = BANano.Split(delim, path)
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

Sub SetSchemaFromDataModel1(sourceTable As String, models As Map)
	If ShowLog Then
		Log($"SDUIPouchDB.${sourceTable}.SetSchemaFromDataModel"$)
	End If
	If models.ContainsKey(sourceTable) = False Then
		BANano.Throw($"SetSchemaFromDataModel1.${sourceTable} data-model does NOT exist!"$)
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

Sub SchemaAddBoolean1(b As String)
	Schema.Put(b, DB_BOOL)
End Sub

Sub SchemaAddDouble1(b As String)
	Schema.Put(b, DB_DOUBLE)
End Sub

Sub SchemaAddInt1(b As String)
	Schema.Put(b, DB_INT)
End Sub

Sub SchemaAddText1(b As String)
	Schema.Put(b, DB_TEXT)
End Sub

'set schema from data models
Sub SetSchemaFromDataModel(models As Map)
	If ShowLog Then
		Log($"SDUIPouchDB.${sTableName}.SetSchemaFromDataModel"$)
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
		Log($"SDUIPouchDB.${sTableName}.SetFieldsFromDataModel"$)
	End If
	If models.ContainsKey(sTableName) = False Then
		BANano.Throw($"SetFieldsFromDataModel.${sTableName} data-model does NOT exist!"$)
		Return
	End If
	Dim tm As Map = models.Get(sTableName)
	Fields.Clear
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
		Log($"SDUIPouchDB.${sTableName}.RemoveFields(${BANano.ToJson(themFields)})"$)
	End If
	For Each fldName As String In themFields
		Dim fldPos As Int = Fields.IndexOf(fldName)
		If fldPos <> -1 Then Fields.RemoveAt(fldPos)
	Next
End Sub

Sub SchemaAddIndex(idxName As String, bUnique As Boolean)
	If bUnique Then
		uniqueIdxNames.Put(idxName, idxName)
	Else
		uniqueIdxNames.Put(idxName, False)
	End If
End Sub

Sub SchemaAddIndexes(idxNames1 As List) 
	For Each k As String In idxNames1
		SchemaAddIndex(k, False)
	Next
End Sub

Sub SchemaAddUniqueIndexes(idxNames1 As List)
	For Each k As String In idxNames1
		SchemaAddIndex(k, True)
	Next
End Sub

private Sub ListOfMapsSort(lst As List, xorderBy As String, ascdesc As Boolean) As List
	Dim xFields As List
	xFields.Initialize
	For Each fldm As Map In lst
		Dim sname As String = fldm.Get(xorderBy)
		Dim sh As RelaxSortHelper
		sh.Initialize
		sh.SortKey = sname
		sh.Value = fldm
		xFields.Add(sh)
	Next
	xFields.SortType("sortkey", ascdesc)
	Dim sorted As List
	sorted.Initialize
	For Each sh As RelaxSortHelper In xFields
		sorted.Add(sh.Value)
	Next
	Return sorted
End Sub

'execute a select where and group by cal
'<code>
''group by gender, count records per gender and order output by gender
''this executes a SELECT_WHERE where internally
'BANano.Await(db.GroupBy(Array("gender"), Array("count|*|records"), Array("gender")))
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

