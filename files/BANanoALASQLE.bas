B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
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
	Private combineL As List
End Sub

Sub Reset
	combineL.Initialize 
	Record.Initialize
	result.Initialize
	command = ""
	types.Initialize
	args.Initialize
	query = ""
	response = ""
	error = ""
	affectedRows = 0
	json = ""
	OK = False
	lastPosition = 0
	RowCount = 0
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
    query = $"SHOW TABLES FROM ${DBase}"$
    command = "select"
End Sub
'clear where clause
Sub CLEAR_WHERE
    whereField.Initialize
    ops.Initialize
    orderByL.Initialize
    flds.Initialize
	combineL.Initialize
End Sub
Sub ADD_FIELD(fld As String) As BANanoALASQLE
    flds.Add(fld)
    Return Me
End Sub
Sub ADD_FIELDS(fields As List) As BANanoALASQLE
	For Each fld As String In fields
		ADD_FIELD(fld)
	Next
    Return Me
End Sub
'add a where clause for your select where
Sub ADD_WHERE(fld As String, operator As String, value As Object) As BANanoALASQLE
    whereField.Put(fld, value)
    ops.Add(operator)
    Return Me
End Sub
'add a sort field
Sub ADD_ORDER_BY(fld As String) As BANanoALASQLE
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
    query = $"SHOW CREATE TABLE ${TableName}"$
    command = "select"
    bCount = True
End Sub
Sub GetCount As BANanoALASQLE
    query = $"select count(*) as records from ${TableName}"$
    command = "select"
    bCount = True
    Return Me
End Sub
Sub GetSum As BANanoALASQLE
    query = $"select sum(${PrimaryKey}) as ${PrimaryKey} from ${TableName}"$
    command = "select"
    Return Me
End Sub
'initialize the class, a field named "id" is assumed to be an integer
'<code>
''initialize the class
'Dim db As BANanoSQL
'db.OpenWait("test", "test")
'Dim dbConnect As BANanoALASQLE
'dbConnect.Initialize("test", "users", "id", "id")
''set the data model to be used
'vuetify.SetDataModelAlaSQL(dbConnect)
''set the master back-end
'vuetify.SetBackEndAlaSQL(dbConnect)
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Initialize(dbName As String, tblName As String, PK As String, AI As String) As BANanoALASQLE
    DBase = dbName
    Schema.Initialize
    TableName = tblName
    PrimaryKey = PK
    Auto = AI
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
    Return Me
End Sub
Sub SetCallBack(v As String, a As String)
    view = v
    action = a
End Sub
Sub SchemaAddBlob(bools As List) As BANanoALASQLE
    For Each b As String In bools
        Schema.Put(b, DB_BLOB)
    Next
    Return Me
End Sub
Sub SchemaAddBlob1(b As String) As BANanoALASQLE
    Schema.Put(b, DB_BLOB)
    Return Me
End Sub
'schema add boolean
Sub SchemaAddBoolean(bools As List) As BANanoALASQLE
    For Each b As String In bools
        Schema.Put(b, DB_BOOL)
    Next
    Return Me
End Sub
Sub SchemaAddBoolean1(b As String) As BANanoALASQLE
    Schema.Put(b, DB_BOOL)
    Return Me
End Sub
Sub SchemaAddDouble1(b As String) As BANanoALASQLE
    Schema.Put(b, DB_DOUBLE)
    Return Me
End Sub
'add double fields
Sub SchemaAddDouble(bools As List) As BANanoALASQLE
    For Each b As String In bools
        Schema.Put(b, DB_DOUBLE)
    Next
    Return Me
End Sub
Sub SchemaAddFloat1(b As String) As BANanoALASQLE
    Schema.Put(b, DB_FLOAT)
    Return Me
End Sub
Sub SchemaAddFloat(bools As List) As BANanoALASQLE
    For Each b As String In bools
        Schema.Put(b, DB_FLOAT)
    Next
    Return Me
End Sub
Sub SchemaAddText1(b As String) As BANanoALASQLE
    Schema.Put(b, DB_STRING)
    Return Me
End Sub
Sub SchemaAddText(bools As List) As BANanoALASQLE
    For Each b As String In bools
        Schema.Put(b, DB_STRING)
    Next
    Return Me
End Sub
Sub SchemaAddInt1(b As String) As BANanoALASQLE
    Schema.Put(b, DB_INT)
    Return Me
End Sub
Sub SchemaAddInt(bools As List) As BANanoALASQLE
    For Each b As String In bools
        Schema.Put(b, DB_INT)
    Next
    Return Me
End Sub
Sub SchemaAddField(fldName As String, fldType As String)
	Schema.Put(fldName, fldType)
End Sub
'to delete the file set the fldValue = null
Sub SetField(fldName As String, fldValue As Object) As BANanoALASQLE
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
'build qry
Sub Build As Map
    Dim largs As List
    Dim ltypes As List
    largs = IIf(args.Size=0, Null, args)
    ltypes = IIf(types.Size=0,Null, types)
    Dim b As Map = CreateMap()
    b.Put("command", command)
    b.Put("query", query)
    b.Put("args", largs)
    b.Put("types", ltypes)
    Return b
End Sub
'convert the json
Sub FromJSON As BANanoALASQLE
	lastPosition = -1
	resultJSON = ""
	RecordJSON = ""
    Try
        response = "Success"
        error = ""
        affectedRows = result.size
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
        Return Me
    Catch
        RowCount = 0
        'Log(LastException)
        Return Me
    End Try
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

'update a record
'<code>
''update current record
'dbConnect.Update(10)
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Update(priValue As String) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.Update: '${TableName}' schema is not set!"$)
    End If
    Dim tblWhere As Map = CreateMap()
    tblWhere.Put(PrimaryKey, priValue)
    UpdateWhere(Record, tblWhere, Null)
    Return Me
End Sub

Sub UpdateBy(pk As String, pv As String)
	PrimaryKey = pk
	Update(pv)
End Sub

'<code>
''update current record
'Dim rec as Map = CreateMap()
'rec.put("name", "Anele")
'rec.put("email", "email@email.com")
'BANAno.Await(dbConnect.UpdateWait(db, rec, 10))
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
'Sub UpdateWait(rec As Map, priValue As String) As Boolean
'	Update1(rec, priValue)
'	result = DB.ExecuteWait(query, args)
'	FromJSON
'	Return True
'End Sub
'<code>
''update current record
'Dim rec as Map = CreateMap()
'rec.put("name", "Anele")
'rec.put("email", "email@email.com")
'dbConnect.Update1(rec, 10)
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Update1(rec As Map, priValue As String) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.Update1: '${TableName}' schema is not set!"$)
    End If
    Record = rec
	RecordJSON = BANano.ToJson(Record)
    Dim tblWhere As Map = CreateMap()
    tblWhere.Put(PrimaryKey, priValue)
    UpdateWhere(rec, tblWhere, Null)
    Return Me
End Sub
Sub UpdateWait(rec As Map, priValue As String) As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    Update1(rec, priValue)
    result = db.ExecuteWait(query, args)
    FromJSON
    Return True
End Sub
'prepare for new table definition
Sub SchemaClear As BANanoALASQLE
    Schema.clear
    Return Me
End Sub
'return id of record
'<code>
'dim nid As Int = dbConnect.GetNextID
'</code>
Sub GetNextID As String
    Dim nextid As Int
    Dim strid As String
    If result.Size = 0 Then
        nextid = 0
    Else
        Dim nr As Map = result.Get(0)
        Dim ni As String = nr.Getdefault(PrimaryKey,"0")
        nextid = BANano.parseInt(ni)
    End If
    nextid = nextid + 1
    strid = CStr(nextid)
    nextid = BANano.ParseInt(nextid)
    Return strid
End Sub
Sub CStr(o As Object) As String
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
'convert a json string to a map
Sub Json2Map(strJSON As String) As Map
    Dim jsonx As JSONParser
    Dim Map1 As Map
    Map1.Initialize
    Map1.clear
    Try
        If strJSON.length > 0 Then
            jsonx.Initialize(strJSON)
            Map1 = jsonx.NextObject
        End If
        Return Map1
    Catch
        Return Map1
    End Try
End Sub
'delete a single value based on the primary key
'<code>
''delete a record using primary key
'BANano.Await(dbConnect.Delete(db, 10))
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
'Sub DeleteWait(priValue As String) As Boolean
'	Delete(priValue)
'	result = DB.ExecuteWait(query, args)
'	FromJSON
'	Return True
'End Sub
'delete a single value based on the primary key
'<code>
''delete a record using primary key
'dbConnect.Delete(10)
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Delete(primaryValue As String) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.Delete: '${TableName}' schema is not set!"$)
    End If
    Dim qw As Map = CreateMap()
    qw.Put(PrimaryKey, primaryValue)
    DeleteWhere(qw, Array("="))
    Return Me
End Sub
'delete by own primary key
Sub DeleteBy(pk As String, pv As String)
	PrimaryKey = pk
	Delete(pv)
End Sub

Private Sub EscapeField(f As String) As String
    If UseBrackets Then
        Return $"[${f}]"$
    Else
        Return f
    End If
End Sub
'schema create table
'<code>
''schema create table
'dbConnect.SchemaCreateTable
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub SchemaCreateTable As BANanoALASQLE
    CreateTable(Schema)
    Return Me
End Sub

Sub SchemaCreateTableWait As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    SchemaCreateTable
    result = db.ExecuteWait(query, args)
    FromJSON
    Return True
End Sub
'return a sql command to create the table
'<code>
''create table
'Dim schema As Map = CreateMap()
'schema.Put("id", dbConnect.DB_INT)
'schema.put("name", dbConnect.DB_TEXT)
'dbConnect.CreateTable(schema)
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub CreateTable(tblFields As Map) As BANanoALASQLE
    Dim fldName As String
    Dim fldType As String
    Dim fldTot As Int
    Dim fldCnt As Int
    fldTot = tblFields.Size - 1
    Dim sb As StringBuilder
    sb.Initialize
    sb.Append("(")
    For fldCnt = 0 To fldTot
        fldName = tblFields.GetKeyAt(fldCnt)
        fldType = tblFields.Get(fldName)
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
    Return Me
End Sub
Sub NewList As List
    Dim lst As List
    lst.Initialize
    Return lst
End Sub
'return a sql to delete record of table where one exists
'<code>
''get maximum
'Dim Records as List = NewList
'Records.add(createmap("id":1"))
'dbConnect.InsertBulk(records)
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub InsertBulk(recs As List) As BANanoALASQLE
    Dim sSQL As String = $"SELECT * INTO [${TableName}] FROM ?"$
    query = sSQL
    args = Array(recs)
    command = "insert"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub
'return a sql to delete record of table where one exists
'<code>
''get maximum
'Dim Records as List = NewList
'Records.add(createmap("id":1"))
'dbConnect.InsertList
'dbConnect.result = db.ExecuteWait(dbConnect.query, Records)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub InsertList As BANanoALASQLE
    Dim sSQL As String = $"SELECT * INTO [${TableName}] FROM ?"$
    query = sSQL
    command = "insert"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
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
Sub GetMax As BANanoALASQLE
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

Sub GetMaxBy(sname As String)
	PrimaryKey = sname
	GetMax
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
Sub GetMin As BANanoALASQLE
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
'return sql command to drop a table
'<code>
''drop a table
'dbConnect.DropTable
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
Sub DropTable As BANanoALASQLE
    'define the qry to execute
    query = "DROP TABLE " & EscapeField(TableName)
    response = ""
    error = ""
    command = "droptable"
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub
'execute your own sql query
'<code>
''execute a query string
'dbConnect.Execute("...")
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Execute(strSQL As String) As BANanoALASQLE
    strSQL = strSQL.trim
    query = strSQL
    command = "execute"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub
'open the database and execute commands
Sub ExecuteWait(qry As String) As Boolean
    query = qry
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    Execute(query)
    result = db.ExecuteWait(query, args)
    FromJSON
	RowCount = result.size
	affectedRows = RowCount
    Return True
End Sub
'return a sql insert statement to insert current record
'<code>
''insert current record
'dbConnect.Insert
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Insert As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.Insert1: '${TableName}' schema is not set!"$)
    End If
    Insert1(Record)
	Return Me
End Sub

'return a sql insert statement
'<code>
''insert a record using own record
'BANano.Await(dbConnect.InsertWait(db, Record))
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
'Sub InsertWait(rec As Map) As Boolean
'	Insert1(rec)
'	result = DB.ExecuteWait(query, args)
'	FromJSON
'	Return True
'End Sub
'return a sql insert statement
'<code>
''insert a record using own record
'dbConnect.Insert1(Record)
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Insert1(Rec As Map) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.Insert1: '${TableName}' schema is not set!"$)
    End If
    Dim sb As StringBuilder
    Dim columns As StringBuilder
    Dim values As StringBuilder
    Dim listOfValues As List = GetMapValues(Rec)
    Dim listOfTypes As List = GetMapTypes(Rec)
    Dim iCnt As Int
    Dim iTot As Int
    sb.Initialize
    columns.Initialize
    values.Initialize
    sb.Append($"INSERT INTO ${EscapeField(TableName)} ("$)
    iTot = Rec.Size - 1
    For iCnt = 0 To iTot
        Dim col As String = Rec.GetKeyAt(iCnt)
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
	Return Me
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

Sub InsertWait As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    Insert1(Record)
    result = db.ExecuteWait(query, args)
    FromJSON
    Return True
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
Sub UpdateWhere(tblfields As Map, tblWhere As Map, operators As List) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.UpdateWhere: '${TableName}' schema is not set!"$)
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
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
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
Sub UpdateWhereWait(tblfields As Map, tblWhere As Map, operators As List) As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    UpdateWhere(tblfields, tblWhere, operators)
    result = db.ExecuteWait(query, args)
    FromJSON
    Return True
End Sub
'<code>
''delete where 2
'dbConnect.CLEAR_WHERE
'dbConnect.ADD_WHERE("fld1", "=", 10)
'dbConnect.DeleteWhere
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
Sub DELETE_WHERE As BANanoALASQLE
    Return DeleteWhere(whereField, ops)
End Sub
'return a sql to delete record of table where one exists
'<code>
''delete records where
'Dim uw As Map = CreateMap()
'uw.put("id", 10)
'dbConnect.DeleteWhere(uw, array("="))
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DeleteWhere(tblWhere As Map, operators As List) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.DeleteWhere: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    Dim listOfTypes As List = GetMapTypes(tblWhere)
    Dim listOfValues As List = GetMapValues(tblWhere)
    Dim sb As StringBuilder
    sb.Initialize
    sb.Append($"DELETE FROM ${EscapeField(TableName)} WHERE "$)
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
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
'return a sql to delete record of table where one exists
'<code>
''delete all records
'dbConnect.DeleteAll
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DeleteAll As BANanoALASQLE
    Dim sb As String = $"DELETE FROM ${EscapeField(TableName)} WHERE 1=1"$
    query = sb
    command = "delete"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
    Return Me
End Sub
'convert a map to a json string
Sub Map2Json(mp As Map) As String
    Dim xjson As JSONGenerator
    xjson.Initialize(mp)
    Return xjson.ToString
End Sub
'convert a list to json
Sub List2Json(mp As List) As String
    Dim xjson As JSONGenerator
    xjson.Initialize2(mp)
    Return xjson.ToString
End Sub
' convert a json string to a list
Sub Json2List(strValue As String) As List
    Dim lst As List
    lst.Initialize
    lst.clear
    If strValue.Length = 0 Then
        Return lst
    End If
    Try
        Dim parser As JSONParser
        parser.Initialize(strValue)
        Return parser.NextArray
    Catch
        Return lst
    End Try
End Sub
'return a sql to update all records of table
'update all records
'<code>
''update all records with new field details
'dbConnect.UpdateAll(CreateMap("name":"Anele", "age":30))
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub UpdateAll(tblFields As Map) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.UpdateAll: '${TableName}' schema is not set!"$)
    End If
    Dim operators As List = EQOperators(tblFields)
    Dim listOfTypes As List = GetMapTypes(tblFields)
    Dim listOfValues As List = GetMapValues(tblFields)
    Dim sb As StringBuilder
    sb.Initialize
    sb.Append($"UPDATE ${EscapeField(TableName)} SET "$)
    Dim i As Int
    Dim iTot As Int = tblFields.Size - 1
    For i = 0 To iTot
        Dim oper As String = operators.Get(i)
        Dim col As String = tblFields.GetKeyAt(i)
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
    Return Me
End Sub
Sub UpdateAllWait(rec As Map) As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    UpdateAll(rec)
    result = db.ExecuteWait(query, args)
    FromJSON
    Return True
End Sub
'<code>
''read a record
'dbConnect.Read(10)
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Read(primaryValue As String) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.Read: '${TableName}' schema is not set!"$)
    End If
    Dim qw As Map = CreateMap()
    qw.Put(PrimaryKey, primaryValue)
    SelectWhere(Array("*"), qw, Array("="), Array(PrimaryKey))
    Return Me
End Sub
'read using own primary key
'<code>
''read a record
'dbConnect.ReadBy("name", "Mashy")
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
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
Sub ReadBy(pk As String, pv As String)
	PrimaryKey = pk
	Read(pv)
End Sub

Sub ReadWait(pk As String) As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    Read(pk)
    result = db.ExecuteWait(query, args)
    FromJSON
	RowCount = result.size
	affectedRows = RowCount
    Return True
End Sub
'exists
'<code>
''check existence of a record
'dbConnect.Exists(10)
'dbConnect.result = db.ExecuteWait(dbConnect.query, dbConnect.args)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Exists(primaryValue As String) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.Exists: '${TableName}' schema is not set!"$)
    End If
    Dim qw As Map = CreateMap()
    qw.Put(PrimaryKey, primaryValue)
    SelectWhere(Array(PrimaryKey), qw, Array("="), Array(PrimaryKey))
    Return Me
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
Sub GetMaxWhere(fldName As String, tblWhere As Map, operators As List) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.GetMaxWhere: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    Dim listOfTypes As List = GetMapTypes(tblWhere)
    Dim listOfValues As List = GetMapValues(tblWhere)
    '
    Dim sb As StringBuilder
    sb.Initialize
    sb.Append($"SELECT MAX([${fldName}]) As [${fldName}] FROM ${EscapeField(TableName)} WHERE "$)
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
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
Sub SelectDistinctAll(tblfields As List, orderBy As List) As BANanoALASQLE
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
    If orderBy.IsInitialized And orderBy.Size > 0 Then
        'order by
        Dim stro As String = JoinFields(",", orderBy)
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
Sub SelectDistinctWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoMSSQLE.SelectDistinctWhere: '${TableName}' schema is not set!"$)
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
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
        Dim oper As String = operators.Get(i)
        sb.Append(EscapeField(col))
        sb.Append($" ${oper} ?"$)
    Next
    If orderBy.IsInitialized And orderBy.Size > 0 Then
        'order by
        Dim stro As String = JoinFields(",", orderBy)
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
'dbConnect.SELECT_WHERE
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
Sub SELECT_WHERE As BANanoALASQLE
    Return SelectWhere(flds, whereField, ops, orderByL)
End Sub
'return a sql to select record of table where one exists
'<code>
''select where
'dbConnect.CLEAR_WHERE
'dbConnect.ADD_WHERE("fld1", "=", 1)
'dbConnect.ADD_SORT("fld1")
'Dim result As List = BANAno.Await(dbConnect.SelectWhereWait(db, array("*")))
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
'Sub SelectWhereWait(tblFields As List) As List
'	SelectWhere(tblFields, whereField, ops, orderByL)
'	result = DB.ExecuteWait(query, args)
'	FromJSON
'	Return result
'End Sub
'return a sql to select record of table where one exists
'<code>
''select where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectWhere(array("*"), sw, array(">=", "<"), array("name"))
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
Sub SelectWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.SelectWhere: '${TableName}' schema is not set!"$)
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
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
        sb.Append(col)
        Dim opr As String = operators.Get(i)
        sb.Append($" ${opr} ?"$)
    Next
    If orderBy.IsInitialized And orderBy.Size > 0 Then
        'order by
        Dim stro As String = JoinFields(",", orderBy)
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
Sub SelectWhereWait(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    SelectWhere(tblfields, tblWhere, operators, orderBy)
    result = db.ExecuteWait(query, args)
    FromJSON
	RowCount = result.size
	affectedRows = RowCount
    Return True
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
Sub SelectMaxWhere(fld As String, tblWhere As Map, operators As List) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.SelectMaxWhere: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    Dim listOfTypes As List = GetMapTypes(tblWhere)
    Dim listOfValues As List = GetMapValues(tblWhere)
    'are we selecting all fields or just some
    Dim sb As StringBuilder
    sb.Initialize
    sb.Append($"SELECT MAX(${fld}) As [${fld}] FROM ${EscapeField(TableName)} WHERE "$)
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
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
Sub AndOrOperators(sm As Map) As List    'ignore
    Dim nl As List
    nl.initialize
    For Each k As String In sm.Keys
        nl.Add("AND")
    Next
    Return nl
End Sub
'return a sql to select record of table where one exists
'<code>
''select where
'dim sw As Map = CreateMap()
'sw.put("name", "Anele")
'dbConnect.SelectWhere1(array("id", "firstname", "lastname"), sw, array("="), array("and", "or"), array("name"))
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
Sub SelectWhere1(tblfields As List, tblWhere As Map, operators As List, AndOr As List, orderBy As List) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoAlaSQLE.SelectWhere1: '${TableName}' schema is not set!"$)
    End If
    If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
    If BANano.IsNull(AndOr) Then AndOr = AndOrOperators(tblWhere)
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
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            Dim sandor As String = AndOr.get(i)
            sb.Append($" ${sandor} "$)
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
        sb.Append(col)
        Dim opr As String = operators.Get(i)
        sb.Append($" ${opr} ?"$)
    Next
    If orderBy.IsInitialized And orderBy.Size > 0 Then
        'order by
        Dim stro As String = JoinFields(",", orderBy)
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
Sub SelectWhere1Wait(tblfields As List, tblWhere As Map, operators As List, AndOr As List, orderBy As List) As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    SelectWhere1(tblfields, tblWhere, operators, AndOr, orderBy)
    result = db.ExecuteWait(query, args)
    FromJSON
	RowCount = result.size
	affectedRows = RowCount
    Return True
End Sub
'return a sql to select record of table where one exists
'<code>
''select where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectWhereAscDesc(array("*"), sw, array(">=", "<"), array("name"), array("name"))
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
Sub SelectWhereAscDesc(tblfields As List, tblWhere As Map, operators As List, orderBy As List, AscDesc As List) As BANanoALASQLE
    If Schema.Size = 0 Then
        Log($"BANanoALASQLE.SelectWhereAscDesc: '${TableName}' schema is not set!"$)
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
    Dim i As Int
    Dim iWhere As Int = tblWhere.Size - 1
    For i = 0 To iWhere
        If i > 0 Then
            sb.Append(" AND ")
        End If
        Dim col As String = tblWhere.GetKeyAt(i)
        Dim oper As String = operators.Get(i)
        sb.Append(EscapeField(col))
        sb.Append($" ${oper} ?"$)
    Next
    If orderBy.IsInitialized And orderBy.Size > 0 Then
        'order by
        Dim xOrder As List
        xOrder.Initialize
        '
        Dim obTot As Int = orderBy.Size - 1
        Dim obCnt As Int
        For obCnt = 0 To obTot
            Dim xfld As String = orderBy.Get(obCnt)
            If AscDesc.IsInitialized And AscDesc.Size > 0 Then
                'does the field exist in sort order
                If AscDesc.IndexOf(xfld) >= 0 Then
                    xfld = EscapeField(xfld) & " DESC"
                    xOrder.Add(xfld)
                End If
            Else
                xOrder.Add(EscapeField(xfld))
            End If
        Next
        Dim stro As String = Join(",", xOrder)
        If stro.Length > 0 Then
            sb.Append(" ORDER BY ").Append(stro)
        End If
    End If
    query = sb.tostring
    args = listOfValues
    types = listOfTypes
    command = "select"
    Return Me
End Sub
Sub SelectWhereAscDescWait(tblfields As List, tblWhere As Map, operators As List, orderBy As List, AscDesc As List) As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    SelectWhereAscDesc(tblfields, tblWhere, operators, orderBy, AscDesc)
    result = db.ExecuteWait(query, args)
    FromJSON
	RowCount = result.size
	affectedRows = RowCount
    Return True
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
'return a sql to select record of table where one exists
'<code>
''select all records
'dim result As List = BANano.Await(dbConnect.SelectAll(array("*"), array("name")))
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'For Each rec As Map in result
'Next
'</code>
'Sub SelectAllWait(tblFields As List, orderBy As List) As List
'	SelectAll(tblFields, orderBy)
'	result = DB.ExecuteWait(query, args)
'	FromJSON
'	Return result
'End Sub
'return a sql to select record of table where one exists
'<code>
''select all records
'dbConnect.SelectAll(array("*"), array("name"))
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
Sub SelectAll(tblfields As List, orderBy As List) As BANanoALASQLE
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
    sb.Append($"SELECT ${selFIelds} FROM ${EscapeField(TableName)}"$)
    If orderBy.IsInitialized And orderBy.Size > 0 Then
        'order by
        Dim stro As String = JoinFields(",", orderBy)
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
    Return Me
End Sub
Sub SelectAllWait(tblfields As List, orderBy As List) As Boolean
    Dim db As BANanoSQL
    db.OpenWait(DBase, DBase)
    SelectAll(tblfields, orderBy)
    result = db.ExecuteWait(query, args)
    FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Return True
End Sub

Sub SelectEverything As Boolean
	Dim tblfields As List
	tblfields.Initialize
	tblfields.Add("*")
	Dim orderBy As List
	orderBy.Initialize
	SelectAll(tblfields, orderBy)
	Return True
End Sub

Sub SelectEverythingWait As List
	Dim tblfields As List
	tblfields.Initialize 
	tblfields.Add("*")
	Dim orderBy As List
	orderBy.Initialize
	Dim db As BANanoSQL
	db.OpenWait(DBase, DBase)
	SelectAll(tblfields, orderBy)
	result = db.ExecuteWait(query, args)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Return result
End Sub

'return a sql to select record of table where one exists
'<code>
''select all records
'dbConnect.SelectAllAscDesc(array("*"), array("name"), array("name"))
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
Sub SelectAllAscDesc(tblfields As List, orderBy As List, AscDesc As List)
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
    sb.Append($"SELECT ${selFIelds} FROM ${EscapeField(TableName)}"$)
    If orderBy.IsInitialized And orderBy.Size > 0 Then
        'order by
        Dim xOrder As List
        xOrder.Initialize
        '
        Dim obTot As Int = orderBy.Size - 1
        Dim obCnt As Int
        For obCnt = 0 To obTot
            Dim xfld As String = orderBy.Get(obCnt)
            If AscDesc.IsInitialized And AscDesc.Size > 0 Then
                'does the field exist in sort order
                If AscDesc.IndexOf(xfld) >= 0 Then
                    xfld = EscapeField(xfld) & " DESC"
                    xOrder.Add(xfld)
                End If
            Else
                xOrder.Add(EscapeField(xfld))
            End If
        Next
        Dim strO As String = Join(",", xOrder)
        If strO.Length > 0 Then
            sb.Append(" ORDER BY ").Append(strO)
        End If
    End If
    query = sb.tostring
    command =  "select"
    response = ""
    error = ""
    result = NewList
    json = ""
    affectedRows = 0
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

'double
private Sub CDbl(o As String) As Double
	o = Val(o)
	Dim out As Double = SDUIShared.NumberFormat2Fix(o,0,2,2,False)
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