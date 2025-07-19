B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.8
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public Record As Map
	Public Result As List
	Public RowCount As Int
	Private msName As String
	Private banano As BANano	'ignore
	Private lastPosition As Int
	Private whereField As Map
	Private ops As List
	Private orderByL As List
	Private flds As List
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
	Public const DB_FLOAT As String = "FLOAT"
	Public Schema As Map
	Public PrimaryKey As String = "id"
	Public DisplayField As String
	Public Singular As String
	Public Plural As String
	Public DisplayValue As String
End Sub

'create a space in local storage
'if something exists, read all records
Public Sub Initialize(dbName As String, pk As String)
	msName = dbName.tolowercase
	Result = getRecords
	lastPosition = -1
	RowCount = Result.Size
	PrimaryKey = pk
	Schema.Initialize
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
End Sub

'prepare for new table definition
Sub SchemaClear As SDUILocalStorage
	Schema.clear
	Return Me
End Sub

'schema add boolean
Sub SchemaAddBoolean(bools As List) As SDUILocalStorage
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	Return Me
End Sub

Sub SchemaAddBoolean1(b As String) As SDUILocalStorage
	Schema.Put(b, DB_BOOL)
	Return Me
End Sub

Sub SchemaAddDouble1(b As String) As SDUILocalStorage
	Schema.Put(b, DB_DOUBLE)
	Return Me
End Sub
'add double fields
Sub SchemaAddDouble(bools As List) As SDUILocalStorage
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	Return Me
End Sub
Sub SchemaAddFloat1(b As String) As SDUILocalStorage
	Schema.Put(b, DB_FLOAT)
	Return Me
End Sub
Sub SchemaAddFloat(bools As List) As SDUILocalStorage
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	Return Me
End Sub
Sub SchemaAddText1(b As String) As SDUILocalStorage
	Schema.Put(b, DB_TEXT)
	Return Me
End Sub
Sub SchemaAddText(bools As List) As SDUILocalStorage
	For Each b As String In bools
		Schema.Put(b, DB_TEXT)
	Next
	Return Me
End Sub
Sub SchemaAddInt1(b As String) As SDUILocalStorage
	Schema.Put(b, DB_INT)
	Return Me
End Sub
Sub SchemaAddInt(bools As List) As SDUILocalStorage
	For Each b As String In bools
		Schema.Put(b, DB_INT)
	Next
	Return Me
End Sub

'convert object to string
private Sub CStr(o As Object) As String
	If banano.isnull(o) Or banano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub

private Sub CBool(v As Object) As Boolean
	If banano.IsNull(v) Or banano.IsUndefined(v) Then
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


'convert to int
private Sub CInt(o As Object) As Int
	o = Val(o)
	Return banano.parseInt(o)
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

'double
private Sub CDbl(o As String) As Double
	o = Val(o)
	Dim out As Double = NumberFormat2Fix(o,0,2,2,False)
	Dim nvalue As String = CStr(out)
	nvalue = nvalue.replace(",", ".")
	nvalue = Val(nvalue)
	Dim nout As Double = banano.parseFloat(nvalue)
	Return nout
End Sub

'check if value isNaN
private Sub isNaN(obj As Object) As Boolean
	Dim res As Boolean = banano.Window.RunMethod("isNaN", Array(obj)).Result
	Return res
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
private Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return banano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
End Sub

'clear where clause
Sub CLEAR_WHERE  As SDUILocalStorage
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	Return Me
End Sub

Sub ADD_FIELD(fld As String) As SDUILocalStorage
	flds.Add(fld)
	Return Me
End Sub

Sub ADD_FIELDS(fields As List) As SDUILocalStorage
	For Each fld As String In fields
		ADD_FIELD(fld)
	Next
	Return Me
End Sub

'add a where clause for your select where
Sub ADD_WHERE(fld As String, operator As String, value As Object) As SDUILocalStorage
	whereField.Put(fld, value)
	ops.Add(operator)
	Return Me
End Sub

'add a sort field
Sub ADD_ORDER_BY(fld As String)  As SDUILocalStorage
	orderByL.Add(fld)
	Return Me
End Sub


Sub RemoveField(fldName As String)
	If Record.ContainsKey(fldName) Then
		Record.Remove(fldName)
	End If
End Sub

'set a field in the table
Sub SetField(fldName As String, fldValue As Object)
	If Schema.ContainsKey(fldName) Then
		Dim dt As String = Schema.Get(fldName)
		Select Case dt
		Case DB_BOOL
			fldValue = CBool(fldValue)
		Case DB_INT
			fldValue = CInt(fldValue)
		Case DB_REAL
			fldValue = CDbl(fldValue)
		Case DB_BLOB
		Case DB_FLOAT
			fldValue = CDbl(fldValue)
		Case DB_INTEGER
			fldValue = CInt(fldValue)
		Case DB_TEXT,DB_LONGTEXT
			fldValue = CStr(fldValue)
		Case DB_DOUBLE
			fldValue = CDbl(fldValue)
		End Select
	End If	
	Record.Put(fldName, fldValue)
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

'create a record from the map
Sub RecordFromMap(sm As Map)
	Record.Initialize
	For Each k As String In sm.Keys
		Dim v As Object = sm.Get(k)
		Record.Put(k, v)
	Next
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

'set a record from a map
Sub SetRecord(rec As Map)
	Record.Initialize 
	For Each k As String In rec.Keys
		Dim v As Object = rec.Get(k)
		SetField(k, v)
	Next
End Sub

'prepare a new record
Sub PrepareRecord
	Record.Initialize
	CLEAR_WHERE
End Sub

'set the position of the current record
Sub setPosition(pos As Int)
	If Result.Size > pos Then
		Record = Result.Get(pos)
		lastPosition = pos
	Else
		lastPosition = -1
		Record.Initialize
	End If
End Sub

'return the current position
Sub getPosition As Int
	Return lastPosition
End Sub

'get an integer from the current record
Sub GetInt(fld As String) As Int
	fld = fld.tolowercase
	If banano.IsUndefined(Record) Then Return 0
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
	If banano.IsUndefined(Record) Then Return ""
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
	If banano.IsUndefined(Record) Then Return False
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
	Dim rec As Map = Result.Get(pos)
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

'delete an item from local storage
'using the primary key
Sub Delete(pv As String)
	'get the items
	Dim res As List = getRecords
	'find the position
	Dim rPos As Int = getRecordPos(res, pv)
	If rPos >= 0 Then
		res.RemoveAt(rPos)
	End If
	'save items back to local storage
	setRecords(res)
End Sub

'read a record by primary key
Sub Read(pv As String) As Map
	'get the items
	Dim res As List = getRecords
	'find the position
	Dim rPos As Int = getRecordPos(res, pv)
	If rPos >= 0 Then
		Dim m As Map = res.Get(rPos)
		Return m
	End If
	Dim x As Map = CreateMap()
	Return x
End Sub

'search for a record and return its position
private Sub getRecordPos(res As List, tPK As String) As Int
	'how many are they
	Dim rTot As Int = res.Size - 1
	Dim rCnt As Int = 0
	For rCnt = 0 To rTot
		'compare the record.row at each
		Dim eRec As Map = res.Get(rCnt)
		Dim eRow As String = eRec.Get(PrimaryKey)
		eRow =  CStr(eRow)
		If eRow.EqualsIgnoreCase(tPK) Then
			Return rCnt
		End If
	Next
	Return -1
End Sub

'get own unique key with 15 chars alphabets only
'this is a controlled id
Sub NextID As String
	Dim ni As String = guidAlphaApp(15)
	Return ni
End Sub

private Sub guidAlphaApp(glen As Int) As String
	glen = banano.parseInt(glen) - 1
	Dim s As String = banano.RunJavascriptMethod("generateUniqueId", Array(glen))
	s = s.ToLowerCase
	Return s
End Sub

'get items from storage
'<code>
'Do while rs.NextRow
'Loop
'</code>
Sub getRecords As List
	'get content from local storage
	Dim lsJSON As String = banano.GetLocalStorage2(msName)
	If banano.IsNull(lsJSON) Then lsJSON = ""
	'change it to string
	lsJSON = CStr(lsJSON)
	'if blank, make it []
	If lsJSON = "" Then lsJSON = "[]"
	'convert json to list
	Dim lsItems As List = banano.FromJson(lsJSON)
	RowCount = lsItems.size
	Result = lsItems
	lastPosition = -1
	Return lsItems
End Sub

'save the items to local storage
Sub setRecords(lst As List)
	'save items to localstorage as JSON
	Dim lsJSON As String = banano.tojson(lst)
	banano.SetLocalStorage2(msName, lsJSON)
	RowCount = lst.size
	Result = lst
	lastPosition = -1
End Sub

Sub Clear
	Dim recs As List
	recs.Initialize 
	setRecords(recs)
End Sub

'update an item 
Sub Update
	Dim pv As String = Record.Get(PrimaryKey)
	'get the items
	Dim res As List = getRecords
	'find the position
	Dim rPos As Int = getRecordPos(res, pv)
	If rPos >= 0 Then
		res.Set(rPos, Record)
	End If
	'save items back to local storage
	setRecords(res)
End Sub

'create an item 
Sub Create
	'get the items
	Dim res As List = getRecords
	res.Add(Record)
	setRecords(res)
End Sub
