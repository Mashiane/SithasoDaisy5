B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Ready
#Event: Error (Task As string, Message As String)
#Event: Complete (Task As string)

Sub Class_Globals
	Private dbSQL As BANanoObject
	Private assetFile As String
	Private buffer As Object
	Private BANano As BANano			'ignore
	Private mCallBack As Object
	Private mEvent As String
	Private sTableName As String
	Public const TASK_OPEN_DATABASE As String = "open_database"
	Public const TASK_SELECT_ALL As String = "select_all"
	Public const TASK_TABLE_NAMES As String = "table_names"
	Public const TASK_TABLE_SCHEMA As String = "table_schema"
	Public const TASK_INDEX_LIST As String = "index_list"
	Public const TASK_FOREIGN_KEY_LIST As String = "foreign_key_list"
	Public const TASK_INDEX_INFO As String = "index_info"
	Public const TASK_COUNT As String = "count"
	Public const TASK_SUM As String = "sum"
	Public result As List
	Public rowCount As Int
	Private whereField As Map
	Private ops As List
	Private orderByL As List
	Private flds As List
	Private lastPosition As Int
	Public Record As Map
	Public Schema As Map
	Public PrimaryKey As String
	Public DisplayField As String
	Public Singular As String
	Public Plural As String
	Public DisplayValue As String
	Private combineL As List
	Public ShowLog As Boolean
	Public Operations As List
	Public types As List
	Public args As List
	Public const DB_BOOL As String = "BOOL"
	Public const DB_INT As String = "INT"
	Public const DB_STRING As String = "STRING"
	Public const DB_REAL As String = "REAL"
	Public const DB_BLOB As String = "BLOB"
	Public const DB_FLOAT As String = "FLOAT"
	Public const DB_INTEGER As String = "INTEGER"
	Public const DB_TEXT As String = "TEXT"
	Public const DB_DOUBLE As String = "DOUBLE"
	Public TableNames As List
End Sub

Public Sub Initialize(Module As Object, EventName As String, fileName As String)
	If BANano.AssetsIsDefined("SQLiteBrowser") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesSQLiteBrowser)' should be added!"$)
		Return
	End If
	assetFile = fileName
	mCallBack = Module
	mEvent = EventName
	result.Initialize
	rowCount = 0
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	Record.Initialize
	lastPosition = -1
	PrimaryKey = "id"
	Schema.Initialize
	combineL.Initialize
	ShowLog = False
	types.Initialize
	args.Initialize
	TableNames.Initialize
End Sub

'<code>
'BANano.Await(sqlite.OpenDatabase)
'</code>
Sub OpenDatabase
	TableNames.Initialize
	'check that the file exists
	Dim fe As Boolean = BANano.Await(FileExist(assetFile))
	Select Case fe
		Case True
			'get the file buffer
			buffer = BANano.Await(BANano.GetFileAsArrayBuffer(assetFile, Null))
			'convert to Uint8Array
			Dim uInt8Array As BANanoObject
			uInt8Array.Initialize2("Uint8Array", buffer)
			'open the database
			dbSQL.Initialize2("SQL.Database", uInt8Array)
			'raise the ready event
			If SubExists(mCallBack, $"${mEvent}_ready"$) Then
				BANano.CallSub(mCallBack, $"${mEvent}_ready"$, Null)
			Else
				BANano.Throw($"SDUISQLiteBrowser Event Error: ${mEvent}_ready NOT defined!"$)
			End If
		Case False
			RaiseError(TASK_OPEN_DATABASE, "File not found.")
	End Select
End Sub

private Sub FileExist(fn As String) As Boolean
	Dim error As Object
	Dim fetch As BANanoFetch
	Dim fetchResponse As BANanoFetchResponse
	Dim prom As BANanoPromise
	'
	Dim bfo As BANanoFetchOptions
	bfo.Method = "HEAD"
	
	'_prom = new Promise(function(resolve,reject) {
	prom.NewStart
	'_fetch=fetch(_fn,_bfo);
	fetch.Initialize(fn, bfo)
	'_fetch.then(async function(_fetchresponse) {
	fetch.Then(fetchResponse)
	'resolve(_fetchresponse.ok);
	BANano.ReturnThen(fetchResponse.OK)
	'}).catch(async function(_error) {
	fetch.Else(error)
	'reject(false);
	BANano.ReturnElse(False)
	'});
	fetch.End
	'});
	prom.NewEnd
  	
	'_res=await _prom;
	Dim res As Boolean = BANano.Await(prom)
	Return res
End Sub

Sub setTableName(s As String)
	sTableName = s
End Sub

Sub getTableName As String
	Return sTableName
End Sub

'execute a query
Sub ExecQueryResult(qry As String)
	result.Initialize
	rowCount = 0
	lastPosition = -1
	Dim res As List = BANano.Await(dbSQL.RunMethod("exec", qry))
	'the first element returns columns and values
	If res.Size = 1 Then
		Dim obj1 As Map = res.Get(0)
		'get the columns
		Dim columns As List = obj1.Get("columns")
		Dim values As List = obj1.Get("values")
		'set the number of records
		rowCount = values.size
		'create result
		Dim vCnt As Int
		Dim vTot As Int = values.Size - 1
		Dim cTot As Int = columns.Size - 1
		Dim cCnt As Int
		'loop through each value
		For vCnt = 0 To vTot
			'this is a list
			Dim row As List = values.Get(vCnt)
			'create an object to hold row
			Dim rec As Map = CreateMap()
			'for each column
			For cCnt = 0 To cTot
				Dim colName As String = columns.Get(cCnt)
				colName = colName.tolowercase
				Dim colValu As Object = row.Get(cCnt)
				rec.Put(colName, colValu)
			Next
			result.Add(rec)
		Next
	End If
End Sub

'get the table names from the database
Sub SELECT_TABLES
	TableNames.Initialize
	setTableName("sqlite_master")
	Dim stmt As String = $"SELECT name AS table_name FROM sqlite_master WHERE type = 'table' AND name NOT LIKE 'sqlite_%';"$
	'execute the call
	BANano.Await(ExecQueryResult(stmt))
	TableNames.Initialize
	Do While NextRow
		Dim stable_name As String = GetString("table_name")
		TableNames.Add(stable_name)
	Loop
	RaiseComplete(TASK_TABLE_NAMES)
End Sub

'get the schema of the selected table
Sub TABLE_SCHEMA(tblName As String)
	setTableName(tblName)
	Dim query As String = $"PRAGMA table_info('${tblName}')"$
	'execute the call
	BANano.Await(ExecQueryResult(query))
	RaiseComplete(TASK_TABLE_SCHEMA)
End Sub

Sub TABLE_INDEX_LIST(tblName As String)
	setTableName(tblName)
	Dim query As String = $"PRAGMA index_list('${tblName}')"$
	'execute the call
	BANano.Await(ExecQueryResult(query))
	RaiseComplete(TASK_INDEX_LIST)
End Sub

Sub TABLE_INDEX_INFO(idxName As String)
	Dim query As String = $"PRAGMA index_info('${idxName}')"$
	'execute the call
	BANano.Await(ExecQueryResult(query))
	RaiseComplete(TASK_INDEX_INFO)
End Sub

Sub TABLE_FOREIGN_KEY_LIST(tblName As String)
	setTableName(tblName)
	Dim query As String = $"PRAGMA foreign_key_list('${tblName}')"$
	'execute the call
	BANano.Await(ExecQueryResult(query))
	RaiseComplete(TASK_FOREIGN_KEY_LIST)
End Sub

Sub TABLE_COUNT(tblName As String)
	setTableName(tblName)
	Dim query As String = $"select count(*) as records from `${tblName}`"$
	'execute the call
	BANano.Await(ExecQueryResult(query))
	RaiseComplete(TASK_COUNT)
End Sub

Sub TABLE_SUM(tblName As String, fldName As String)
	setTableName(tblName)
	Dim query As String = $"select sum(${fldName}) as ${fldName} from ${tblName}"$
	'execute the call
	BANano.Await(ExecQueryResult(query))
	RaiseComplete(TASK_SUM)
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

'select all records from table
Sub SELECT_ALL(tblName As String)
	setTableName(tblName)
	Try
		'do we have fields specified to be selected
		If flds.Size = 0 Then flds.Add("*")
		'get the first field
		Dim fld1 As String = flds.Get(0)
		Dim selFIelds As String = ""
		Select Case fld1
			Case "*"
				'all fields
				selFIelds = "*"
			Case Else
				'some fields are specified
				selFIelds = Join(",", flds)
		End Select
		'build the statement
		Dim sb As StringBuilder
		sb.Initialize
		sb.Append($"SELECT ${selFIelds} FROM `${sTableName}`"$)
		'we have an order clause
		If orderByL.IsInitialized And orderByL.Size > 0 Then
			'order by
			Dim stro As String = Join(",", orderByL)
			If stro.Length > 0 Then
				sb.Append(" ORDER BY ").Append(stro)
			End If
		End If
		Dim stmt As String = sb.tostring
		'execute the call
		BANano.Await(ExecQueryResult(stmt))
		RaiseComplete(TASK_SELECT_ALL)
	Catch
		RaiseError(TASK_SELECT_ALL, LastException.Message)
	End Try
End Sub

private Sub RaiseError(Task As String, Message As String)
	If SubExists(mCallBack, $"${mEvent}_error"$) Then
		BANano.CallSub(mCallBack, $"${mEvent}_error"$, Array(Task, Message))
	Else
		BANano.Throw($"SDUISQLiteBrowser Event Error: ${mEvent}_error NOT defined!"$)
	End If
End Sub

private Sub RaiseComplete(Task As String)
	If SubExists(mCallBack, $"${mEvent}_complete"$) Then
		BANano.CallSub(mCallBack, $"${mEvent}_complete"$, Array(Task))
	Else
		BANano.Throw($"SDUISQLiteBrowser Event Error: ${mEvent}_complete NOT defined!"$)
	End If
End Sub

'clear where clause
Sub CLEAR_WHERE
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	args.Initialize
	types.Initialize
End Sub

'add a field to list on query
Sub ADD_FIELD(fld As String)
	flds.Add(fld)
End Sub

'add fields to list on query
Sub ADD_FIELDS(fields As List)
	For Each fld As String In fields
		ADD_FIELD(fld)
	Next
End Sub

'add a where clause for your select where
Sub ADD_WHERE(fld As String, operator As String, value As Object)
	whereField.Put(fld, value)
	ops.Add(operator)
End Sub

'add a sort field
Sub ADD_ORDER_BY(fld As String)
	orderByL.Add(fld)
End Sub

Sub SetField(fldName As String, fldValue As Object)
	Record.Put(fldName, fldValue)
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

'<code>
'Do while rs.NextRow
'Loop
'</code>
Sub NextRow As Boolean
	lastPosition = lastPosition + 1
	Dim realSize As Int = rowCount - 1
	If lastPosition > realSize Then
		Return False
	Else
		setPosition(lastPosition)
		Return True
	End If
End Sub

'prepare for new table definition
Sub SchemaClear
	Schema.clear
End Sub

'set a record from a map
Sub SetRecord(rec As Map)
	For Each k As String In rec.Keys
		Dim v As Object = rec.Get(k)
		SetField(k, v)
	Next
End Sub

'prepare a new record
Sub PrepareRecord
	Record.Initialize
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
Sub MoveFirst
	setPosition(0)
End Sub

'movelast
Sub MoveLast
	setPosition(rowCount - 1)
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
	If lastPosition > rowCount Then
		lastPosition = rowCount - 1
	End If
	setPosition(lastPosition)
End Sub

private Sub InStr(sText As String, sFind As String) As Int
	Return sText.tolowercase.IndexOf(sFind.tolowercase)
End Sub

'double
private Sub CDbl(o As String) As Double
	o = Val(o)
	Dim out As Double = NumberFormat(o,0,2)
	Dim nvalue As String = CStr(out)
	nvalue = nvalue.replace(",", ".")
	nvalue = Val(nvalue)
	Dim nout As Double = BANano.parseFloat(nvalue)
	Return nout
End Sub


'convert object to string
private Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub

private Sub CBool(v As Object) As Boolean
	If BANano.IsNull(v) Or BANano.IsUndefined(v) Then
		v = False
	End If
	If GetType(v) = "string" Or GetType(v) = "object" Then
		Dim s As String = v & ""
		s = s.tolowercase
		If s = "" Then Return False
		If s = "false" Then Return False
		If S = "true" Then Return True
		If s = "1" Then Return True
		If s = "y" Then Return True
		If s = "0" Then Return False
		If s = "n" Then Return False
		If s = "no" Then Return False
		If s = "yes" Then Return True
	End If
	Return v
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
	If isNaN(value) Then value = "0"
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