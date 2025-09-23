B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
    Public const DB_BOOL As String = "BOOL"
    Public const DB_INT As String = "INT"
    Public const DB_STRING As String = "STRING"
    Public const DB_REAL As String = "REAL"
    Public const DB_BLOB As String = "BLOB"
    Public const DB_FLOAT As String = "FLOAT"
    Public const DB_INTEGER As String = "INTEGER"
    Public const DB_TEXT As String = "TEXT"
    Public const DB_DOUBLE As String = "DOUBLE"
	Public const DB_FILE As String = "TEXT"
	Public const DB_LONGTEXT As String = "TEXT"
	Public UseAPIKey As Boolean
    Private BANano As BANano  'ignore
    Public Schema As Map
    Public TableName As String
    Public PrimaryKey As String
    Public response As String
    Public result As List
    Public command As String
    Public types As List
    Public args As List
    Public query As String
    Public json As String
    Public error As String
    Public affectedRows As Long
    Public Record As Map
    Public OK As Boolean
    Public Auto As String  'ignore
    Public DBase As String  'ignore
    Public view As String
    Public action As String
    Private bCount As Boolean
    Public UseBrackets As Boolean
    Private whereField As Map
    Private ops As List
    Private orderByL As List
    Private flds As List
    Public RowCount As Int
	Private lastPosition As Int
	Public resultJSON As String
	Public RecordJSON As String
	Public DisplayField As String
	Public Singular As String
	Public Plural As String
	Public DisplayValue As String
	Private sApiKey As String
	Private db As BANanoSQL
	Private isOpen As Boolean = False
	Private ownFilter As List
	Public ShowLogs As Boolean
End Sub

'initialize the class, a field named "id" is assumed to be an integer
'<code>
''initialize the class
'Dim dbConnect As SDUIWebSQL
'dbConnect.Initialize("test", "users")
''set the data model to be used
'dbConnect.SetSchemaFromDataModel(app.DataModels)
'</code>
Sub Initialize(dbName As String, tblName As String) As SDUIWebSQL
	DBase = dbName
    Schema.Initialize
    TableName = tblName
    PrimaryKey = ""
    Auto = ""
    response = ""
    result.initialize
    command = ""
    types.Initialize
    args.Initialize
    query = ""
    json = ""
    error = ""
    affectedRows = 0
    Record.initialize
    OK = False
	ownFilter.Initialize 
    view = ""
    action = ""
    bCount = False
	UseBrackets = True
	orderByL.Initialize
	whereField.Initialize
	flds.Initialize
	ops.Initialize
	RowCount = 0
	lastPosition = -1
	CLEAR_WHERE
	If isOpen = False Then
		'use a local variable, a global variable does not work
		Dim localName As String = DBase
		db.OpenWait("database", localName)
		isOpen = True
	End If
	ShowLogs = False
	Return Me
End Sub

Sub AddFilter(fltr As String)
	fltr = fltr.Trim
	If fltr <> "" Then ownFilter.Add(fltr)
End Sub

'required
Sub setApiKey(s As String)
	sApiKey = s
End Sub

Sub getApiKey As String
	Return sApiKey
End Sub

Sub Reset
	Record.Initialize
	result.Initialize
	command = ""
	ops.Initialize
	types.Initialize
	args.Initialize
	query = ""
	response = ""
	error = ""
	affectedRows = 0
	json = ""
	OK = False
	lastPosition = -1
	RowCount = 0
	ownFilter.Initialize 
End Sub

'set schema from data models
Sub SetSchemaFromDataModel(models As Map)
	If models.ContainsKey(TableName) = False Then
		BANano.Throw($"SetSchemaFromDataModel.${TableName} data-model does NOT exist!"$)
		Return
	End If
	Dim tm As Map = models.Get(TableName)
	PrimaryKey = tm.GetDefault("pk", "")
	Auto = tm.GetDefault("ai", "")
	Schema.Initialize
	'set the field types
	Dim fldsx As List = tm.Get("fields").As(List)
	For Each fm As Map In fldsx
		Dim fldType As String = fm.Get("type")
		Dim fldName As String = fm.Get("name")
		Select Case fldType
			Case "TEXT", "STRING", "LONGTEXT", "FILE"
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
End Sub

'describe table
'<code>
'dbConnect.DescribeTable
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'for each rec As Map in dbConnect.Result
'log(rec)
'next
'</code>
'Sub DescribeTable
'	query = $"PRAGMA table_info('${TableName}')"$
'	command = "select"
'End Sub
'get table names
'<code>
'dbConnect.GetTableNames
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'for each rec As Map in dbConnect.Result
'log(rec)
'next
'</code>
Sub GetTableNames
	Reset
	query = $"SHOW TABLES FROM ${DBase}"$
	command = "select"
End Sub

'<code>
''clear any where clauses
'dbConnect.CLEAR_WHERE
''order by projectname
'dbConnect.ADD_ORDER_BY("projectname")
''execute a select all
'BANano.Await(dbConnect.SELECT_ALL)
'Do While dbConnect.NextRow
'Dim rec As Map = dbConnect.Record
'Dim sid As String = dbConnect.GetString("id")
'Loop
'</code>
Sub CLEAR_WHERE
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	ownFilter.Initialize 
End Sub

Sub ADD_FIELD(fld As String) As SDUIWebSQL
	flds.Add(fld)
	Return Me
End Sub

Sub ADD_FIELDS(fields As List) As SDUIWebSQL
	For Each fld As String In fields
		ADD_FIELD(fld)
	Next
	Return Me
End Sub
'add a where clause for your select where
Sub ADD_WHERE(fld As String, operator As String, value As Object) As SDUIWebSQL
	whereField.Put(fld, value)
	ops.Add(operator)
	Return Me
End Sub
'add a sort field
Sub ADD_ORDER_BY(fld As String) As SDUIWebSQL
	orderByL.Add(fld)
	Return Me
End Sub
'get databases
'<code>
'dbConnect.GetDatabases
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'for each rec As Map in dbConnect.Result
'log(rec)
'next
'</code>
Sub GetDatabases
	Reset
	query = $"SHOW DATABASES"$
	command = "select"
End Sub
'create an index
'<code>
'dbConnect.CreateIndex("idxname")
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'for each rec As Map in dbConnect.Result
'log(rec)
'next
'</code>
Sub CreateIndex(idxFld As String)
	Reset
	query = $"CREATE INDEX ${TableName}${idxFld} ON ${TableName}(${idxFld})"$
	command = "execute"
End Sub
'ShowCreateTable
'<code>
'dbConnect.Initialize("test", "users", "id", "id")
'dbConnect.ShowCreateTable
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub ShowCreateTable
	Reset
	query = $"SHOW CREATE TABLE ${TableName}"$
	command = "select"
	bCount = True
End Sub

Sub GetCount As SDUIWebSQL
	Reset
	query = $"select count(*) as records from ${TableName}"$
	command = "select"
	bCount = True
	Return Me
End Sub

Sub GetSum As SDUIWebSQL
	Reset
	query = $"select sum(${PrimaryKey}) as ${PrimaryKey} from ${TableName}"$
	command = "select"
	Return Me
End Sub

Sub SetCallBack(v As String, a As String)
    view = v
    action = a
End Sub

Sub SchemaAddBlob(bools As List) As SDUIWebSQL
    For Each b As String In bools
        Schema.Put(b, DB_BLOB)
    Next
    Return Me
End Sub
Sub SchemaAddBlob1(b As String) As SDUIWebSQL
    Schema.Put(b, DB_BLOB)
    Return Me
End Sub
'schema add boolean
Sub SchemaAddBoolean(bools As List) As SDUIWebSQL
    For Each b As String In bools
        Schema.Put(b, DB_BOOL)
    Next
    Return Me
End Sub
Sub SchemaAddBoolean1(b As String) As SDUIWebSQL
    Schema.Put(b, DB_BOOL)
    Return Me
End Sub
Sub SchemaAddDouble1(b As String) As SDUIWebSQL
    Schema.Put(b, DB_DOUBLE)
    Return Me
End Sub
'add double fields
Sub SchemaAddDouble(bools As List) As SDUIWebSQL
    For Each b As String In bools
        Schema.Put(b, DB_DOUBLE)
    Next
    Return Me
End Sub
Sub SchemaAddFloat1(b As String) As SDUIWebSQL
    Schema.Put(b, DB_FLOAT)
    Return Me
End Sub
Sub SchemaAddFloat(bools As List) As SDUIWebSQL
    For Each b As String In bools
        Schema.Put(b, DB_FLOAT)
    Next
    Return Me
End Sub
Sub SchemaAddText1(b As String) As SDUIWebSQL
    Schema.Put(b, DB_STRING)
    Return Me
End Sub
Sub SchemaAddText(bools As List) As SDUIWebSQL
    For Each b As String In bools
        Schema.Put(b, DB_STRING)
    Next
    Return Me
End Sub
Sub SchemaAddInt1(b As String) As SDUIWebSQL
    Schema.Put(b, DB_INT)
    Return Me
End Sub
Sub SchemaAddInt(bools As List) As SDUIWebSQL
    For Each b As String In bools
        Schema.Put(b, DB_INT)
    Next
    Return Me
End Sub
Sub SchemaAddField(fldName As String, fldType As String)
	Schema.Put(fldName, fldType)
End Sub
'to delete the file set the fldValue = null
Sub SetField(fldName As String, fldValue As Object)
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

private Sub InStr(sText As String, sFind As String) As Int
	Return sText.tolowercase.IndexOf(sFind.tolowercase)
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

Sub FirstRecord As Map
    Dim rec As Map = result.Get(0)
    Return rec
End Sub
'
''build qry
'Sub Build As Map
'    Dim largs As List
'    Dim ltypes As List
'    largs = IIf(args.Size=0, Null, args)
'    ltypes = IIf(types.Size=0,Null, types)
'    Dim b As Map = CreateMap()
'    b.Put("command", command)
'    b.Put("query", query)
'    b.Put("args", largs)
'    b.Put("types", ltypes)
'    Return b
'End Sub

'convert the json
private Sub FromJSON
	lastPosition = -1
	resultJSON = ""
	RecordJSON = ""
	affectedRows = 0
	RowCount = 0
	Try
        response = "Success"
        error = ""
		If BANano.IsArray(result) Then
        		affectedRows = result.size
		Else
			affectedRows = result
		End If			
        OK = True
        'are we counting
        If bCount Then
            If result.Size >= 0 Then
                Record = result.Get(0)
				RecordJSON = BANano.ToJson(Record)
                Dim srecord As String = Record.GetDefault("records", 0)
                affectedRows = BANano.parseInt(srecord)
            Else
                affectedRows = 0
            End If
        End If
        RowCount = affectedRows
		resultJSON = BANano.ToJson(result)
		If ShowLogs Then
			Log($"SDUIWebSQL.FromJSON: ${resultJSON}"$)
		End If
	 Catch
        'Log(LastException)
     End Try			'ignore
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

Sub UPDATE As String
	CLEAR_WHERE
	Dim pkValue As String = Record.Get(PrimaryKey)
	ADD_WHERE(PrimaryKey, "=", pkValue)
	BANano.Await(UpdateWhere(Record, whereField, ops))
	If ShowLogs Then
		Log($"SDUIWebSQL.UPDATE.Query.${query}"$)
		Log($"SDUIWebSQL.UPDATE.Args.${BANano.tojson(args)}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)		'ignore
	affectedRows = CInt(affectedRows)
	If affectedRows = 1 Then
		Return pkValue
	Else
		Return ""
	End If
End Sub

'<code>
'BANano.Await(pb.UPDATE_BY("id", "10"))
'</code>
Sub UPDATE_BY(fldName As String, fldValue As String)
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	BANano.Await(UpdateWhere(Record, whereField, ops))
	If ShowLogs Then
		Log($"SDUIWebSQL.UPDATE_BY.Query.${query}"$)
		Log($"SDUIWebSQL.UPDATE_BY.Args.${BANano.tojson(args)}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)		'ignore
	affectedRows = CInt(affectedRows)
End Sub

Sub UPDATE_WHERE
	BANano.Await(UpdateWhere(Record, whereField, ops))
	If ShowLogs Then
		Log($"SDUIWebSQL.UPDATE_WHERE.Query.${query}"$)
		Log($"SDUIWebSQL.UPDATE_WHERE.Args.${BANano.tojson(args)}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)
	affectedRows = CInt(affectedRows)
End Sub


'prepare for new table definition
Sub SchemaClear As SDUIWebSQL
    Schema.clear
    Return Me
End Sub
'return id of record
'<code>
'dim nid As Int = dbConnect.GetNextID
'</code>
Sub GetNextID As String
    Dim iNextID As Int
    If result.Size = 0 Then
        iNextID = 0
    Else
        Dim nr As Map = result.Get(0)
        Dim ni As String = nr.Getdefault(PrimaryKey,"0")
        iNextID = BANano.parseInt(ni)
    End If
    iNextID = BANano.parseInt(iNextID) + 1
    Return iNextID
End Sub
private Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
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


Sub RemoveField(fldName As String)
	If Record.ContainsKey(fldName) Then
		Record.Remove(fldName)
	End If
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
'get map keys
private Sub GetMapKeys(sourceMap As Map) As List
    Dim listOfValues As List
    listOfValues.Initialize
    Dim iCnt As Int
    Dim iTot As Int
    iTot = sourceMap.Size - 1
    For iCnt = 0 To iTot
        Dim value As String = sourceMap.GetKeyAt(iCnt)
        listOfValues.Add(value)
    Next
    Return listOfValues
End Sub


Sub DELETE(primaryValue As String) As Boolean
	CLEAR_WHERE
	ADD_WHERE(PrimaryKey, "=", primaryValue)
	BANano.Await(DeleteWhere(whereField, ops))
	If ShowLogs Then
		Log($"SDUIWebSQL.DELETE.Query.${query}"$)
		Log($"SDUIWebSQL.DELETE.Args.${BANano.tojson(args)}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)
	affectedRows = CInt(affectedRows)
	If affectedRows = 1 Then
		Return True
	Else
		Return False
	End If
End Sub

Private Sub EscapeField(f As String) As String
    If UseBrackets Then
        Return $"[${f}]"$
    Else
        Return f
    End If
End Sub

Sub SchemaCreateTable
	Dim fldName As String
    Dim fldType As String
    Dim fldTot As Int
    Dim fldCnt As Int
    fldTot = Schema.Size - 1
    Dim sb As StringBuilder
    sb.Initialize
    sb.Append("(")
    For fldCnt = 0 To fldTot
        fldName = Schema.GetKeyAt(fldCnt)
        fldType = Schema.Get(fldName)
        fldType = fldType.Replace("STRING", "TEXT")
        If fldCnt > 0 Then
            sb.Append(", ")
        End If
        sb.Append(EscapeField(fldName))
        sb.Append(" ")
        sb.Append(fldType)
        If fldName.EqualsIgnoreCase(Auto) Then
            sb.Append(" AUTOINCREMENT")
        End If
        If fldName.EqualsIgnoreCase(PrimaryKey) Then
            sb.Append(" PRIMARY KEY")
        End If
    Next
    sb.Append(")")
    'define the qry to execute
    query = "CREATE TABLE IF NOT EXISTS " & EscapeField(TableName) & " " & sb.ToString
    command = "createtable"
    response = ""
    error = ""
    result = NewList
    json = ""
	affectedRows = 0
	If ShowLogs Then
		Log($"SDUIWebSQL.SchemaCreateTable.${query}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)
	affectedRows = CInt(affectedRows)
End Sub

Sub NewList As List
    Dim lst As List
    lst.Initialize
    Return lst
End Sub

Sub CREATE_BULK(recs As List)
	Reset
    Dim sSQL As String = $"SELECT * INTO [${TableName}] FROM ?"$
    query = sSQL
    args = Array(recs)
    command = "insert"
    response = ""
    error = ""
    result = NewList
    json = ""
	affectedRows = 0
	If ShowLogs Then
		Log($"SDUIWebSQL.CREATE_BULK.Query.${query}"$)
		Log($"SDUIWebSQL.CREATE_BULK.Args.${BANano.ToJson(args)}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)
	affectedRows = CInt(affectedRows)
End Sub

'return a sql to delete record of table where one exists
'<code>
''get maximum
'dbConnect.GetMax
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub GetMax As SDUIWebSQL
	Reset
    Dim sb As String = $"SELECT MAX([${PrimaryKey}]) As [${PrimaryKey}] FROM ${EscapeField(TableName)}"$
    query = sb
    command = "select"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub

'return a sql to delete record of table where one exists
'<code>
''get minimum
'dbConnect.GetMin
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub GetMin As SDUIWebSQL
	Reset
    Dim sb As String = $"SELECT MIN([${PrimaryKey}]) As [${PrimaryKey}] FROM ${EscapeField(TableName)}"$
    query = sb
    command = "select"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub

Sub DropTable
	Reset
    'define the qry to execute
    query = "DROP TABLE " & EscapeField(TableName)
    response = ""
    error = ""
    command = "droptable"
    result = NewList
    json = ""
	affectedRows = 0
	If ShowLogs Then
		Log($"SDUIWebSQL.DropTable.${query}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)
	affectedRows = CInt(affectedRows)
End Sub

Sub Execute(strSQL As String)
	Reset
    strSQL = strSQL.trim
    query = strSQL
    command = "execute"
    response = ""
    error = ""
    result = NewList
    json = ""
	affectedRows = 0
	If ShowLogs Then
		Log($"SDUIWebSQL.Execute.Query.${query}"$)
	End If
	result = db.ExecuteWait(query, args)
	FromJSON
End Sub

Sub CREATE As String
	Dim sid As String = Record.Get(PrimaryKey)
	Dim sb As StringBuilder
    Dim columns As StringBuilder
    Dim values As StringBuilder
    Dim listOfValues As List = GetMapValues(Record)
    Dim listOfTypes As List = GetMapTypes(Record)
    Dim iCnt As Int
    Dim iTot As Int
    sb.Initialize
    columns.Initialize
    values.Initialize
    sb.Append($"INSERT INTO ${EscapeField(TableName)} ("$)
    iTot = Record.Size - 1
    For iCnt = 0 To iTot
        Dim col As String = Record.GetKeyAt(iCnt)
        If iCnt > 0 Then
            columns.Append(", ")
            values.Append(", ")
        End If
        columns.Append(EscapeField(col))
        values.Append("?")
    Next
    sb.Append(columns.ToString)
    sb.Append(") VALUES (")
    sb.Append(values.ToString)
    sb.Append(")")
    query = sb.ToString
    args = listOfValues
    types = listOfTypes
    command = "insert"
    response = ""
    error = ""
    result = NewList
    json = ""
	affectedRows = 0
	If ShowLogs Then
		Log($"SDUIWebSQL.CREATE.Query.${query}"$)
		Log($"SDUIWebSQL.CREATE.Args.${BANano.tojson(args)}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)
	affectedRows = CInt(affectedRows)
	If affectedRows = 1 Then
		Return sid
	Else
		Return ""	
	End If
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

'set a record from a map
Sub SetRecord(rec As Map)
	Record.Initialize 
	For Each k As String In rec.Keys
		Dim v As Object = rec.Get(k)
		SetField(k, v)
	Next
	DisplayValue = Record.GetDEfault(DisplayField, "")
End Sub

'prepare a new record
Sub PrepareRecord
	CLEAR_WHERE
	Record.Initialize
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
private Sub EQOperators(sm As Map) As List    'ignore
    Dim nl As List
    nl.initialize
    For Each k As String In sm.Keys
        nl.Add("=")
    Next
    Return nl
End Sub
'return a sql to update records of table where one exists
'<code>
''update where using map...
'dim rec As Map = CreateMap()
''define where clause
'rec.put("name", "Anele")
'Dim uw As Map = CreateMap()
'uw.put("id", 10)
'dbConnect.UpdateWhere(rec, uw, array("="))
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
private Sub UpdateWhere(tblfields As Map, tblWhere As Map, operators As List) As SDUIWebSQL
    If Schema.Size = 0 Then
        Log($"SDUIWebSQL.UpdateWhere: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    Dim listOfTypes As List = GetMapTypes(tblfields)
    Dim listOfTypes1 As List = GetMapTypes(tblWhere)
    listOfTypes.AddAll(listOfTypes1)
    Dim listOfValues As List = GetMapValues(tblfields)
    Dim listOfValues1 As List = GetMapValues(tblWhere)
    listOfValues.AddAll(listOfValues1)
    Dim sb As StringBuilder
    sb.Initialize
    sb.Append($"UPDATE ${EscapeField(TableName)} SET "$)
    Dim i As Int
    Dim iTot As Int = tblfields.Size - 1
    For i = 0 To iTot
        Dim col As String = tblfields.GetKeyAt(i)
		sb.Append(EscapeField(col))
        If i <> iTot Then
            sb.Append(" = ?,")
        Else
            sb.Append(" = ?")
        End If
    Next
	sb.Append($" WHERE "$)
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
		sb.Append(nFilter).Append(" ")
	End If	
	
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
        sb.Append(EscapeField(col))
        Dim opr As String = operators.Get(i)
        sb.Append($" ${opr} ?"$)
    Next
    query = sb.tostring
    args = listOfValues
    types = listOfTypes
    command = "update"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub

Sub DELETE_WHERE
	BANano.Await(DeleteWhere(whereField, ops))
	If ShowLogs Then
		Log($"SDUIWebSQL.DELETE_WHERE.Query.${query}"$)
		Log($"SDUIWebSQL.DELETE_WHERE.Args.${BANano.tojson(args)}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)
	affectedRows = CInt(affectedRows)
End Sub

'<code>
'BANano.Await(pb.DELETE_BY(1))
'</code>
Sub DELETE_BY(fldName As String, fldValue As String) As Boolean
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	ADD_FIELD("id")
	ADD_FIELD(fldName)
	Dim b As Boolean = BANano.Await(DELETE_WHERE)
	Return b
End Sub

''<code>
''BANano.Await(pb.DELETE_BY_STRING("a"))
''</code>
'Sub DELETE_BY_STRING(fldName As String, fldValue As String) As Boolean
'	CLEAR_WHERE
'	ADD_WHERE_STRING(fldName, "=", fldValue)
'	ADD_FIELD("id")
'	ADD_FIELD(fldName)
'	Dim b As Boolean = BANano.Await(DELETE_WHERE)
'	Return b
'End Sub

private Sub DeleteWhere(tblWhere As Map, operators As List) As SDUIWebSQL
    If Schema.Size = 0 Then
        Log($"SDUIWebSQL.DeleteWhere: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    Dim listOfTypes As List = GetMapTypes(tblWhere)
    Dim listOfValues As List = GetMapValues(tblWhere)
    Dim sb As StringBuilder
    sb.Initialize
	sb.Append($"DELETE FROM ${EscapeField(TableName)} WHERE "$)
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
		sb.Append(nFilter).Append(" ")
	End If
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
        sb.Append(col)
        Dim opr As String = operators.Get(i)
        sb.Append($" ${opr} ?"$)
    Next
    query = sb.tostring
    args = listOfValues
    types = listOfTypes
    command = "delete"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
	Return Me
End Sub

''<code>
''Dim result As Boolean = BANano.Await(pbComponents.ExistsByString("name", "xxx"))
''</code>
'Sub ExistsByString(fldName As String, fldValue As Object) As Boolean
'	CLEAR_WHERE
'	ADD_FIELD(fldName)
'	ADD_WHERE_STRING(fldName, "=", fldValue)
'	Dim res As List = BANano.Await(SELECT_WHERE)
'	If res.size = 0 Then
'		Return False
'	Else
'		Return True
'	End If
'End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.ExistsByString("name", "xxx"))
'</code>
Sub ExistsBy(fldName As String, fldValue As Object) As Boolean
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
'Dim result As Boolean = BANano.Await(pbComponents.ExistsByString("name", "xxx"))
'</code>
Sub Exists(priValue As String) As Boolean
	CLEAR_WHERE
	ADD_FIELD(PrimaryKey)
	ADD_WHERE(PrimaryKey, "=", priValue)
	Dim res As List = BANano.Await(SELECT_WHERE)
	If res.size = 0 Then
		Return False
	Else
		Return True
	End If
End Sub

'<code>
'Dim result As Boolean = BANano.Await(pbComponents.ExistsWhere(CreateMap("id": "1")))
'</code>
Sub ExistsWhere(where As Map) As Boolean
	CLEAR_WHERE
	ADD_FIELD("id")
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

Sub DELETE_ALL
	Reset
    Dim sb As String = $"DELETE FROM ${EscapeField(TableName)} WHERE 1=1"$
    query = sb
    command = "delete"
    response = ""
    error = ""
    result = NewList
    json = ""
	affectedRows = 0
	If ShowLogs Then
		Log($"SDUIWebSQL.DELETE_ALL.${query}"$)
		
	End If
	affectedRows = db.ExecuteWait(query, args)
	affectedRows = CInt(affectedRows)
End Sub

Sub UPDATE_ALL
	Dim operators As List = EQOperators(Record)
    Dim listOfTypes As List = GetMapTypes(Record)
    Dim listOfValues As List = GetMapValues(Record)
    Dim sb As StringBuilder
    sb.Initialize
    sb.Append($"UPDATE ${EscapeField(TableName)} SET "$)
    Dim i As Int
    Dim iTot As Int = Record.Size - 1
    For i = 0 To iTot
        Dim oper As String = operators.Get(i)
        Dim col As String = Record.GetKeyAt(i)
        sb.Append(col)
        If i <> iTot Then
            sb.Append($" ${oper} ?,"$)
        Else
            sb.Append($" ${oper} ?"$)
        End If
    Next
    query = sb.tostring
    args = listOfValues
    types = listOfTypes
    command = "update"
    response = ""
    error = ""
    result = NewList
    json = ""
	affectedRows = 0
	If ShowLogs Then
		Log($"SDUIWebSQL.UPDATE_ALL.Query.${query}"$)
		Log($"SDUIWebSQL.UPDATE_ALL.Args.${BANano.ToJson(args)}"$)
	End If
	affectedRows = db.ExecuteWait(query, args)
	affectedRows = CInt(affectedRows)
End Sub

Sub READ(primaryValue As String) As Map
    If Schema.Size = 0 Then
        Log($"SDUIWebSQL.Read: '${TableName}' schema is not set!"$)
    End If
	ADD_WHERE(PrimaryKey, "=", primaryValue)
	BANano.Await(SelectWhere(flds, whereField, ops, orderByL))
	If ShowLogs Then
		Log($"SDUIWebSQL.READ.Query.${query}"$)
		Log($"SDUIWebSQL.READ.Args.${BANano.tojson(args)}"$)
	End If
	Dim res As List = db.ExecuteWait(query, args)
	If res.Size >= 0 Then
		Record = res.Get(0)
	Else
		Record = CreateMap()
	End If
	Return Record
End Sub

Sub READ_BY(fldName As String, fldValue As String) As Map
	If Schema.Size = 0 Then
		Log($"SDUIWebSQL.READ_BY: '${TableName}' schema is not set!"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
	Dim res As List = BANano.Await(SELECT_WHERE)
	Dim rec As Map = CreateMap()
	If res.size = 0 Then
		Return rec
	Else
		rec = res.Get(0)
		Return rec
	End If
End Sub

Sub READ_ID_BY(fldName As String, fldValue As String) As String
	If Schema.Size = 0 Then
		Log($"SDUIWebSQL.READ_ID_BY: '${TableName}' schema is not set!"$)
	End If
	CLEAR_WHERE
	ADD_WHERE(fldName, "=", fldValue)
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

'return a sql to select record of table where one exists
'<code>
''select distinct where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'dbConnect.GetMaxWhere("id", sw, array(">"))
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
private Sub GetMaxWhere(fldName As String, tblWhere As Map, operators As List) As SDUIWebSQL
    If Schema.Size = 0 Then
        Log($"SDUIWebSQL.GetMaxWhere: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    Dim listOfTypes As List = GetMapTypes(tblWhere)
    Dim listOfValues As List = GetMapValues(tblWhere)
    '
    Dim sb As StringBuilder
    sb.Initialize
	sb.Append($"SELECT MAX([${fldName}]) As [${fldName}] FROM ${EscapeField(TableName)} WHERE "$)
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
		sb.Append(nFilter).Append(" ")
	End If
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
        sb.Append(col)
        Dim opr As String = operators.Get(i)
        sb.Append($" ${opr} ?"$)
    Next
    query = sb.tostring
    args = listOfValues
    types = listOfTypes
    command = "select"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub
'return a sql to select record of table where one exists
'<code>
''select distinct all order by
'dbConnect.SelectDistinctAll(array("name"), array("name"))
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectDistinctAll(tblfields As List, lorderBy As List) As SDUIWebSQL
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
    If lorderBy.IsInitialized And lorderBy.Size > 0 Then
        'order by
        Dim stro As String = JoinFields(",", lorderBy)
        If stro.Length > 0 Then
            sb.Append(" ORDER BY ").Append(stro)
        End If
    End If
    query = sb.tostring
    command =  "select"
    Return Me
End Sub
'return a sql to select record of table where one exists
'<code>
''select distinct where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'dbConnect.SelectDistinctWhere(array("name"), sw, array("="), array("name"))
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectDistinctWhere(tblfields As List, tblWhere As Map, operators As List, lorderBy As List) As SDUIWebSQL
    If Schema.Size = 0 Then
        Log($"SDUIMSSQLE.SelectDistinctWhere: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    Dim listOfTypes As List = GetMapTypes(tblWhere)
    Dim listOfValues As List = GetMapValues(tblWhere)
	If tblfields.Size = 0 Then tblfields.Add("*")
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
		sb.Append(nFilter).Append(" ")
	End If
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
        Dim oper As String = operators.Get(i)
        sb.Append(EscapeField(col))
        sb.Append($" ${oper} ?"$)
    Next
    If lorderBy.IsInitialized And lorderBy.Size > 0 Then
        'order by
        Dim stro As String = JoinFields(",", lorderBy)
        If stro.Length > 0 Then
            sb.Append(" ORDER BY ").Append(stro)
        End If
    End If
    query = sb.tostring
    args = listOfValues
    types = listOfTypes
    command = "select"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub
'<code>
''select where 2
'dbConnect.CLEAR_WHERE
'dbConnect.ADD_FIELD("*")
'dbConnect.ADD_WHERE("fld1", "=", 10)
'BANano.await(dbConnect.SELECT_WHERE)
'For Each rec As Map in res
'Next
'</code>
Sub SELECT_WHERE As List
	BANano.Await(SelectWhere(flds, whereField, ops, orderByL))
	If ShowLogs Then
		Log($"SDUIWebSQL.SELECT_WHERE.Query.${query}"$)
		Log($"SDUIWebSQL.SELECT_WHERE.Args.${BANano.tojson(args)}"$)
	End If
	Dim res As List = db.ExecuteWait(query, args)
	Return res	
End Sub

private Sub SelectWhere(tblfields As List, tblWhere As Map, operators As List, lorderBy As List) As SDUIWebSQL
    If Schema.Size = 0 Then
        Log($"SDUIWebSQL.SelectWhere: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    Dim listOfTypes As List = GetMapTypes(tblWhere)
    Dim listOfValues As List = GetMapValues(tblWhere)
	If tblfields.Size = 0 Then tblfields.Add("*")
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
	sb.Append($"SELECT ${selFIelds} FROM ${EscapeField(TableName)} WHERE "$)
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
		sb.Append(nFilter).Append(" ")
	End If
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
        sb.Append(col)
        Dim opr As String = operators.Get(i)
        sb.Append($" ${opr} ?"$)
    Next
    If lorderBy.IsInitialized And lorderBy.Size > 0 Then
        'order by
        Dim stro As String = JoinFields(",", lorderBy)
        If stro.Length > 0 Then
            sb.Append(" ORDER BY ").Append(stro)
        End If
    End If
    query = sb.tostring
    args = listOfValues
    types = listOfTypes
    command = "select"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub

'return a sql to select record of table where one exists
'<code>
''select where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectMaxWhere("field", sw, array(">=", "<"))
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectMaxWhere(fld As String, tblWhere As Map, operators As List) As SDUIWebSQL
    If Schema.Size = 0 Then
        Log($"SDUIWebSQL.SelectMaxWhere: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    Dim listOfTypes As List = GetMapTypes(tblWhere)
    Dim listOfValues As List = GetMapValues(tblWhere)
    'are we selecting all fields or just some
    Dim sb As StringBuilder
    sb.Initialize
	sb.Append($"SELECT MAX(${fld}) As [${fld}] FROM ${EscapeField(TableName)} WHERE "$)
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
		sb.Append(nFilter).Append(" ")
	End If
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
		col = MvField(col, 1, ".")
		col = col.Replace("&", "")
        sb.Append(col)
        Dim opr As String = operators.Get(i)
        sb.Append($" ${opr} ?"$)
    Next
    query = sb.tostring
    args = listOfValues
    types = listOfTypes
    command = "select"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub

private Sub AndOrOperators(sm As Map) As List    'ignore
    Dim nl As List
    nl.initialize
    For Each k As String In sm.Keys
        nl.Add("AND")
    Next
    Return nl
End Sub

'join list to mv string
private Sub Join(delimiter As String, lst As List) As String
    Dim i As Int
    Dim sb As StringBuilder
    Dim fld As String
    sb.Initialize
    fld = lst.Get(0)
    sb.Append(fld)
    For i = 1 To lst.size - 1
        Dim fld As String = lst.Get(i)
        sb.Append(delimiter).Append(fld)
    Next
    Return sb.ToString
End Sub

'<code>
'BANano.Await(dbConnect.SELECT_ALL)
'Do While dbConnect.NextRow
'Dim rec As Map = dbConnect.Record
'Dim sid As String = dbConnect.GetString("id")
'Loop
'</code>
Sub SELECT_ALL As List
    'are we selecting all fields or just some
	If flds.Size = 0 Then flds.Add("*")
    Dim fld1 As String = flds.Get(0)
    Dim selFIelds As String = ""
    Select Case fld1
    Case "*"
    		selFIelds = "*"
    Case Else
        selFIelds = JoinFields(",", flds)
    End Select
    Dim sb As StringBuilder
    sb.Initialize
    sb.Append($"SELECT ${selFIelds} FROM ${EscapeField(TableName)}"$)
	If orderByL.IsInitialized And orderByL.Size > 0 Then
        'order by
		Dim stro As String = JoinFields(",", orderByL)
        If stro.Length > 0 Then
            sb.Append(" ORDER BY ").Append(stro)
        End If
    End If
    query = sb.tostring
    command = "select"
    response = ""
    error = ""
    result = NewList
    json = ""
	affectedRows = 0
	If ShowLogs Then
		Log($"SDUIWebSQL.SELECT_ALL.Query.${query}"$)
		Log($"SDUIWebSQL.SELECT_ALL.Args.${BANano.tojson(args)}"$)
	End If
	result = db.ExecuteWait(query, args)
	FromJSON
	Return result
End Sub

'<code>
''select where 2
'dbConnect.CLEAR_WHERE
'dbConnect.ADD_FIELD("*")
'dbConnect.ADD_WHERE("fld1", "=", 10)
'BANano.await(dbConnect.SELECT_WHERE)
'Do While dbConnect.NextRow
'Dim rec As Map = dbConnect.Record
'Dim sid As String = dbConnect.GetString("id")
'Loop
'</code>
Sub SELECT_WHERE1
	BANano.Await(SelectWhere(flds, whereField, ops, orderByL))
	If ShowLogs Then
		Log($"SDUIWebSQL.SELECT_WHERE1.Query.${query}"$)
		Log($"SDUIWebSQL.SELECT_WHERE1.Args.${BANano.ToJson(args)}"$)
	End If
	result = db.ExecuteWait(query, args)
	FromJSON
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
	RecordJSON = BANano.ToJson(Record)
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

Sub SchemaAddLongText1(b As String)
	Schema.Put(b, DB_LONGTEXT)
End Sub

Sub SchemaAddLongText(bools As List)
	For Each b As String In bools
		Schema.Put(b, DB_LONGTEXT)
	Next
End Sub

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
	If models.ContainsKey(sourceTable) = False Then
		BANano.Throw($"SetSchemaFromDataModel.${sourceTable} data-model does NOT exist!"$)
		Return
	End If
	Dim tm As Map = models.Get(sourceTable)
	PrimaryKey = tm.GetDefault("pk", "")
	Auto = tm.GetDefault("ai", "")
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
				SchemaAddBlob1(fldName)
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
	If models.ContainsKey(TableName) = False Then
		BANano.Throw($"SetFieldsFromDataModel.${TableName} data-model does NOT exist!"$)
		Return
	End If
	Dim tm As Map = models.Get(TableName)
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
	For Each fldName As String In themFields
		Dim fldPos As Int = flds.IndexOf(fldName)
		If fldPos <> -1 Then flds.RemoveAt(fldPos)
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

Sub orderBy(fldNames As List) As SDUIWebSQL
	For Each k As String In fldNames
		ADD_ORDER_BY(k)
	Next
	Return Me
End Sub

''add a where clause for your select where
''for same fields, suffix them with .1, .2 etc
'Sub ADD_WHERE_STRING(fld As String, operator As String, value As Object) As SDUIWebSQL
'	ADD_WHERE(fld, operator, $"'${value}'"$)
'	Return Me
'End Sub

'Sub groupBy(fldNames As List) As SDUIWebSQL
'	ADD_GROUP_BY(fldNames)
'	Return Me
'End Sub

Sub ADD_ORDER_BY_DESC(fld As String) As SDUIWebSQL
	orderByL.Add($"${fld} DESC"$)
	Return Me
End Sub

Sub orderByDesc(fldNames As List) As SDUIWebSQL
	For Each k As String In fldNames
		ADD_ORDER_BY_DESC(k)
	Next
	Return Me
End Sub

'this executes a clear_where first
Sub selectFields(fldNames As List) As SDUIWebSQL
	CLEAR_WHERE
	ADD_FIELDS(fldNames)
	Return Me
End Sub

Sub whereEqual(fldName As String, fldValue As Object) As SDUIWebSQL
	ADD_WHERE(fldName, "=", fldValue)
	Return Me
End Sub

'Sub OrWhereEqual(fldName As String, fldValue As Object) As SDUIWebSQL
'	ADD_OR_WHERE_STRING(fldName, "=", fldValue)
'	Return Me
'End Sub

Sub whereGreaterThan(fldName As String, fldValue As Object) As SDUIWebSQL
	ADD_WHERE(fldName, ">", fldValue)
	Return Me
End Sub

'Sub OrWhereGreaterThan(fldName As String, fldValue As Object) As SDUIWebSQL
'	ADD_OR_WHERE_STRING(fldName, ">", fldValue)
'	Return Me
'End Sub

Sub whereGreaterThanEqualTo(fldName As String, fldValue As Object) As SDUIWebSQL
	ADD_WHERE(fldName, ">=", fldValue)
	Return Me
End Sub

'Sub OrWhereGreaterThanEqualTo(fldName As String, fldValue As Object) As SDUIWebSQL
'	ADD_OR_WHERE_STRING(fldName, ">=", fldValue)
'	Return Me
'End Sub

Sub whereLike(fldName As String, fldValue As Object) As SDUIWebSQL
	ADD_WHERE(fldName, "~", fldValue)
	Return Me
End Sub

'Sub OrWhereLike(fldName As String, fldValue As Object) As SDUIWebSQL
'	ADD_OR_WHERE_STRING(fldName, "~", fldValue)
'	Return Me
'End Sub

Sub whereNotLike(fldName As String, fldValue As Object) As SDUIWebSQL
	ADD_WHERE(fldName, "!~", fldValue)
	Return Me
End Sub

'Sub OrWhereNotLike(fldName As String, fldValue As Object) As SDUIWebSQL
'	ADD_OR_WHERE_STRING(fldName, "!~", fldValue)
'	Return Me
'End Sub

Sub whereLessThanEqualTo(fldName As String, fldValue As Object) As SDUIWebSQL
	ADD_WHERE(fldName, "<=", fldValue)
	Return Me
End Sub

'Sub OrWhereLessThanEqualTo(fldName As String, fldValue As Object) As SDUIWebSQL
'	ADD_OR_WHERE_STRING(fldName, "<=", fldValue)
'	Return Me
'End Sub

Sub whereLessThan(fldName As String, fldValue As Object) As SDUIWebSQL
	ADD_WHERE(fldName, "<", fldValue)
	Return Me
End Sub

'Sub OrWhereLessThan(fldName As String, fldValue As Object) As SDUIWebSQL
'	ADD_OR_WHERE_STRING(fldName, "<", fldValue)
'	Return Me
'End Sub

Sub whereBetween(fldName As String, fldStart As Object, fldEnd As Object) As SDUIWebSQL
	ADD_WHERE($"${fldName}.start"$, ">=", fldStart)
	ADD_WHERE($"${fldName}.end"$, "<=", fldEnd)
	Return Me
End Sub

Sub whereNotEqual(fldName As String, fldValue As Object) As SDUIWebSQL
	ADD_WHERE(fldName, "<>", fldValue)
	Return Me
End Sub

'Sub OrWhereNotEqual(fldName As String, fldValue As Object) As SDUIWebSQL
'	ADD_OR_WHERE_STRING(fldName, "<>", fldValue)
'	Return Me
'End Sub


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