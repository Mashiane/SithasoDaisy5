B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public const DB_VARCHAR_20 As String = "VARCHAR(20)"
	Public const DB_VARCHAR_10 As String = "VARCHAR(10)"
	Public const DB_VARCHAR_30 As String = "VARCHAR(30)"
	Public const DB_VARCHAR_40 As String = "VARCHAR(40)"
	Public const DB_VARCHAR_50 As String = "VARCHAR(50)"
	Public const DB_VARCHAR_100 As String = "VARCHAR(100)"
	Public const DB_VARCHAR_255 As String = "VARCHAR(255)"
	Public const DB_STRING As String = "TEXT"
	Public const DB_INT As String = "INT"
	Public const DB_FLOAT As String = "FLOAT"
	Public const DB_DOUBLE As String = "DOUBLE"
	Public const DB_BLOB As String = "BLOB"
	Public const DB_BOOL As String = "BOOL"
	Public const DB_REAL As String = "REAL"
	Public const DB_DATE As String = "DATE"
	Public const DB_INTEGER As String = "INTEGER"
	Public const DB_TEXT As String = "TEXT"
	Public const DB_LONGTEXT As String = "LONGTEXT"
	Private BANano As BANano   'ignore
	Public MethodName As String
	Public MethodNameDynamic As String
	Public Schema As Map
	Public host As String
	Public username As String
	Public password As String
	Public DBase As String
	Public result As List
	Public command As String
	Public types As List
	Public args As List
	Public query As String
	Public response As String
	Public error As String
	Public affectedRows As Long
	Public json As String
	Public OK As Boolean
	Public TableName As String
	Public PrimaryKey As String
	Public Record As Map
	Public Auto As String
	Public fields As List
	Public view As String
	Public action As String
	Public NoResult As Boolean
	Public URL As String
	Public UsesJRDC As Boolean
	Public port As String
	Public UseBrackets As Boolean
	Private lastPosition As Int
	Public RowCount As Int
	Public SALT As String
	Public EncryptFrom As Boolean
	Public EncryptTo As Boolean
	Public PasswordField As String
	Private bUsesEncryption As Boolean
	Type TableDescription(TableName As String, PrimaryKey As String, AutoIncrement As String, fields As List, Strings As List, Booleans As List, Doubles As List, Blobs As List, Integers As List, TinyInts As List, Sorts As List, FieldNames As List)
	Public TD As TableDescription
	Private whereField As Map
	Private ops As List
	Private orderByL As List
	Private flds As List
	Public token As String
End Sub

Sub Reset
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
	EncryptFrom = False
	EncryptTo = False
	PasswordField = ""
	bUsesEncryption = False
End Sub

'clear where clause
Sub CLEAR_WHERE As BANanoMySQLE
	whereField.Initialize
	ops.Initialize
	orderByL.Initialize
	flds.Initialize
	Return Me
End Sub

Sub ADD_FIELD(fld As String) As BANanoMySQLE
	flds.Add(fld)
	Return Me
End Sub

Sub ADD_FIELDS(fieldsx As List) As BANanoMySQLE
	For Each fld As String In fieldsx
		ADD_FIELD(fld)
	Next
	Return Me
End Sub

'add a where clause for your select where
Sub ADD_WHERE(fld As String, operator As String, value As Object) As BANanoMySQLE
	whereField.Put(fld, value)
	ops.Add(operator)
	Return Me
End Sub

'add a sort field
Sub ADD_ORDER_BY(fld As String) As BANanoMySQLE
	orderByL.Add(fld)
	Return Me
End Sub

Sub setUsesEncryption(b As Boolean)
	bUsesEncryption = b
	If b = True Then
		MethodName = "BANanoMySQLED"
	Else
		MethodName = "BANanoMySQL"
	End If
End Sub

Sub getUsesEncryption As Boolean
	Return bUsesEncryption
End Sub

Sub SchemaAddInt1(b As String) As BANanoMySQLE
	Schema.Put(b, DB_INT)
	Return Me
End Sub
Sub SchemaAddText1(b As String) As BANanoMySQLE
	Schema.Put(b, DB_STRING)
	Return Me
End Sub
Sub SchemaAddFloat1(b As String) As BANanoMySQLE
	Schema.Put(b, DB_FLOAT)
	Return Me
End Sub
Sub SchemaAddDouble1(b As String) As BANanoMySQLE
	Schema.Put(b, DB_DOUBLE)
	Return Me
End Sub
Sub SchemaAddBlob1(b As String) As BANanoMySQLE
	Schema.Put(b, DB_BLOB)
	Return Me
End Sub
'get a count of all records
'<code>
'dbConnect.GetCount
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub GetCount As BANanoMySQLE
	query = $"select count(${PrimaryKey}) as records from ${TableName}"$
	command = "select"
	Return Me
End Sub

'select sum(receiptamount) as amount from receipts
'get a sum of all records
'<code>
'dbConnect.GetSum
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub GetSum As BANanoMySQLE
	query = $"select sum(${PrimaryKey}) as ${PrimaryKey} from ${TableName}"$
	command = "select"
	Return Me
End Sub
'set database connection settings
Sub SetConnection(shost As String, susername As String, spassword As String) As BANanoMySQLE
	host = shost
	username = susername
	password = spassword
	Return Me
End Sub
'set database connection settings including port
Sub SetConnection1(shost As String, susername As String, spassword As String, sport As String) As BANanoMySQLE
	host = shost
	username = susername
	password = spassword
	port = sport
	Return Me
End Sub
'read using own primary key
'<code>
''read a record
'dbConnect.ReadBy("name", "Mashy")
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
Sub ReadBy(pk As String, pv As String)
	PrimaryKey = pk
	Read(pv)
End Sub

Sub ReadByWait(pk As String, pv As String)
	PrimaryKey = pk
	ReadWait(pv)
End Sub

Sub ReadByDynamicWait(pk As String, pv As String)
	PrimaryKey = pk
	ReadDynamicWait(pv)
End Sub

'Delete by own primary key
Sub DeleteBy(pk As String, pv As String)
	PrimaryKey = pk
	Delete(pv)
End Sub

Sub DeleteByWait(pk As String, pv As String)
	PrimaryKey = pk
	DeleteWait(pv)
End Sub

Sub DeleteByDynamicWait(pk As String, pv As String)
	PrimaryKey = pk
	DeleteDynamicWait(pv)
End Sub

'update by own primary key
Sub UpdateBy(pk As String, pv As String)
	PrimaryKey = pk
	Update(pv)
End Sub

'assign a token to the user
'specify the ACTUAL token and username field names
'userField - the name of the username field
'user - the actual user
'tokenField - the name of the token field
'<code>
'dbConnect.UpdateTokenWait("username", "Anele", "token")
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'for each rec As Map in dbConnect.Result
'next
'</code>
Sub UpdateTokenWait(userField As String, user As String, tokenField As String)
	PrepareRecord
	SetField(tokenField, "")
	PrimaryKey = userField
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.AssignTokenTo: '${TableName}' schema is not set!"$)
	End If
	Dim tblWhere As Map = CreateMap()
	tblWhere.Put(PrimaryKey, user)
	UpdateWhere(Record, tblWhere, Null)
	command = "assigntoken"
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
End Sub

'assign a token to the user
'specify the ACTUAL token and username field names
'userField - the name of the username field
'user - the actual user
'tokenField - the name of the token field
'<code>
'dbConnect.UpdatePassword("password", "MyPassword", "email", "anele@xxx")
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'for each rec As Map in dbConnect.Result
'next
'</code>
Sub UpdatePasswordWait(pwdField As String, pwdValue As String, userField As String, userValue As String)
	PrepareRecord
	SetField(pwdField, pwdValue)
	PrimaryKey = userField
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.UpdatePassword: '${TableName}' schema is not set!"$)
	End If
	Dim tblWhere As Map = CreateMap()
	tblWhere.Put(PrimaryKey, userValue)
	UpdateWhere(Record, tblWhere, Null)
	command = "updatepwd"
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
End Sub

Sub VerifyPasswordWait(pwdField As String, pwdValue As String, userField As String, userValue As String) As Boolean
	PrepareRecord
	CLEAR_WHERE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.GetPassword: '${TableName}' schema is not set!"$)
	End If
	ADD_FIELD(pwdField)
	ADD_WHERE(userField, "=", userValue)
	SELECT_WHERE
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	If RowCount > 0 Then
		MoveFirst
		Dim suser_password As String = GetString(pwdField)
		Dim m As Map = CreateMap()
		m.Put("currentPwd", pwdValue)
		m.Put("hashPwd", suser_password)
		Dim res As Object = BANano.CallInlinePHPWait("PasswordVerify", m)
		Return CBool(res)
	Else
		Return False
	End If		
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
'build with connection settings
Sub BuildDirect As Map
	Dim largs As List
	Dim ltypes As List
	largs = IIf(args.Size=0, Null, args)
	ltypes = IIf(types.Size=0,Null, types)
	Dim b As Map = CreateMap()
	b.Put("command", command)
	b.Put("query", query)
	b.Put("args", largs)
	b.Put("types", ltypes)
	b.put("dbname", DBase)
	b.Put("table", TableName)
	b.Put("primarykey", PrimaryKey)
	b.Put("autoincrement", Auto)
	b.put("host", host)
	b.Put("username", username)
	b.Put("password", password)
	b.Put("port", port)
	Return b
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

Sub SchemaAddLongText1(b As String) As BANanoMySQLE
	Schema.Put(b, DB_LONGTEXT)
	Return Me
End Sub

Sub SchemaAddBoolean1(b As String) As BANanoMySQLE
	Schema.Put(b, DB_BOOL)
	Return Me
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
			Case "LONGTEXT"
				SchemaAddLongText1(fldName)
			Case "FILE"
				SchemaAddText1(fldName)
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

'prepare a new record
Sub PrepareRecord
	Record.Initialize
End Sub

'set callback for BANanoServer
Sub SetCallBack(v As String, a As String)
	view = v
	action = a
End Sub
private Sub RecordFromMap(sm As Map)
	Record.Initialize
	For Each k As String In sm.Keys
		Dim v As Object = sm.Get(k)
		Record.Put(k, v)
	Next
End Sub
private Sub AndOrOperators(sm As Map) As List    'ignore
	Dim nl As List
	nl.initialize
	For Each k As String In sm.Keys
		nl.Add("AND")
	Next
	Return nl
End Sub
'select where
'<code>
'dim sw As Map = CreateMap()
'sw.put("name", "Anele")
'dbConnect.SelectWhere1(array("id", "firstname", "lastname"), sw, array("="), array("and", "or"), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub SelectWhere1(tblfields As List, tblWhere As Map, operators As List, AndOr As List, orderBy As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.SelectWhere1: '${TableName}' schema is not set!"$)
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

Sub SelectWhere1Wait(tblfields As List, tblWhere As Map, operators As List, AndOr As List, orderBy As List) As List
	SelectWhere1(tblfields, tblWhere, operators, AndOr, orderBy)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

'define a new list
Sub NewList As List
	Dim lst As List
	lst.Initialize
	Return lst
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

'convert the json
'<code>
''convert response to readable map
'dbConnect.FromJSON
'</code>
Sub FromJSON As BANanoMySQLE
	'the data should be encrypted from the server
	If EncryptFrom Then
		'we process the encrypted data
		json = Decrypt4Php(json, SALT)
	End If
	lastPosition = -1
	OK = False
	Try
		If json.StartsWith("{") Or json.Startswith("[") Then
			Dim m As Map = BANano.FromJson(json)
			response = m.Get("response")
			error = m.Get("error")
			result = m.Get("result")
			affectedRows = m.Get("affectedRows")
			token = m.Get("token")
			If response = "Success" Then
				OK = True
			End If
		Else
			response = json
			error = json
			result = NewList
			affectedRows = -1
			token = ""
		End If
	Catch
		response = json
		error = json
		result = NewList
		affectedRows = -1
		token = ""
	End Try
	RowCount = affectedRows
	Return Me
End Sub
'add a field to the schame
'<code>
''add schema to table
'dbConnect.SchemaAddField("id", dbConntect.DB_INT)
'</code>
Sub SchemaAddField(fldName As String, fldType As String)
	Schema.Put(fldName, fldType)
End Sub
'get maximum of the primary key
'<code>
'dbConnect.GetMax
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub GetMax As BANanoMySQLE
	query = $"SELECT MAX(${PrimaryKey}) As ${PrimaryKey} FROM ${EscapeField(TableName)}"$
	command = "select"
	Return Me
End Sub
'get minimum of the primary key
'<code>
'dbConnect.GetMin
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub GetMin As BANanoMySQLE
	query = $"SELECT MIN(${PrimaryKey}) As ${PrimaryKey} FROM ${EscapeField(TableName)}"$
	command = "select"
	Return Me
End Sub
'get databases
'<code>
'dbConnect.GetDatabases
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub GetDatabases As BANanoMySQLE
	query = $"SHOW DATABASES"$
	command = "databases"
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

private Sub CInt(o As Object) As Int
	o = Val(o)
	Return BANano.parseInt(o)
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

'get record at position
Sub GetRecord(pos As Int) As Map
	Dim rec As Map = result.Get(pos)
	Return rec
End Sub
'get table names
'<code>
'dbConnect.GetTableNames
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub GetTableNames As BANanoMySQLE
	query = $"select table_name from information_schema.tables where table_schema = '${DBase}' order by table_name"$
	command = "select"
	Return Me
End Sub
'show indexes
'<code>
'dbConnect.ShowIndexes
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub ShowIndexes
	query = $"SELECT INDEX_NAME AS `idxname`, IF (NON_UNIQUE = 0 AND INDEX_NAME = 'PRIMARY', 1, 0) AS `idxprimary`, IF (NON_UNIQUE = 0 AND INDEX_NAME <> 'PRIMARY', 1, 0) AS `idxunique`, GROUP_CONCAT(COLUMN_NAME ORDER BY SEQ_IN_INDEX) AS `idxcolumns` FROM information_schema.STATISTICS WHERE TABLE_SCHEMA = '${DBase}' AND TABLE_NAME = '${TableName}' GROUP BY INDEX_NAME, NON_UNIQUE"$
	command = "select"
End Sub
'show foreign keys
'<code>
'dbConnect.ShowForeignKeys
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub ShowForeignKeys
	query = $"SELECT i.CONSTRAINT_NAME as `fkname`, k.COLUMN_NAME AS `column`, k.REFERENCED_TABLE_NAME AS `reftable`, k.REFERENCED_COLUMN_NAME AS `refcolumn`, c.UPDATE_RULE AS `onupdate`, c.DELETE_RULE AS `ondelete` FROM information_schema.TABLE_CONSTRAINTS AS i JOIN information_schema.KEY_COLUMN_USAGE AS k ON i.CONSTRAINT_NAME = k.CONSTRAINT_NAME JOIN information_schema.REFERENTIAL_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = i.CONSTRAINT_NAME WHERE i.TABLE_SCHEMA = '${DBase}' AND i.TABLE_NAME = '${TableName}' AND i.CONSTRAINT_TYPE = 'FOREIGN KEY' GROUP BY i.CONSTRAINT_NAME, k.COLUMN_NAME, k.REFERENCED_TABLE_NAME, k.REFERENCED_COLUMN_NAME, c.UPDATE_RULE, c.DELETE_RULE"$
	command = "select"
End Sub
'get table structure
'<code>
'dbConnect.ShowColumns
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub ShowColumns As BANanoMySQLE
	query = $"SHOW COLUMNS FROM ${TableName.touppercase}"$
	command = "select"
	Return Me
End Sub
'describe table
'<code>
'dbConnect.DescribeTable
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub DescribeTable As BANanoMySQLE
	query = $"DESCRIBE ${TableName.ToUpperCase}"$
	command = "select"
	Return Me
End Sub
'get next available id using pk
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
		Dim ni As String = nr.GetDefault(PrimaryKey,"0")
		nextid = BANano.parseInt(ni)
	End If
	nextid = nextid + 1
	strid = CStr(nextid)
	nextid = BANano.ParseInt(nextid)
	Return strid
End Sub
'convert to string
Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub
'initialize the class, a field named "id" is assumed to be an integer
'<code>
''initialize the class
'Dim dbConnect As BANanoMySQLE
'dbConnect.Initialize("db1", "users", "id", "id")
''set the data model to be used
'vuetify.SetDataModelMySQL(dbConnect)
''set the master back-end
'vuetify.SetBackEndMySQLE(dbConnect)
'</code>
Sub Initialize(dbName As String, tblName As String, PK As String, AI As String) As BANanoMySQLE
	bUsesEncryption = False
	Schema.Initialize
	Record.Initialize
	URL = ""
	MethodName = "BANanoMySQL"
	MethodNameDynamic = "BANanoMySQLDynamic"
	result.Initialize
	command = ""
	PrimaryKey = PK
	DBase = dbName
	TableName = tblName
	types.Initialize
	args.Initialize
	query = ""
	response = ""
	error = ""
	affectedRows = 0
	json = ""
	OK = False
	host = ""
	username = ""
	password = ""
	Auto = AI
	NoResult = False
	UsesJRDC = False
	UseBrackets = True
	lastPosition = 0
	RowCount = 0
	Return Me
End Sub
'prepare for new table definition
Sub SchemaClear As BANanoMySQLE
	Schema.clear
	Return Me
End Sub
'set record field
Sub SetField(fldName As String, fldValue As Object) As BANanoMySQLE
	Record.Put(fldName, fldValue)
	Return Me
End Sub
'schema add boolean
Sub SchemaAddBoolean(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	Return Me
End Sub
'add int to the schema
Sub SchemaAddInt(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_INT)
	Next
	Return Me
End Sub
'add double fields
Sub SchemaAddDouble(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	Return Me
End Sub
'add float to the schema
Sub SchemaAddFloat(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	Return Me
End Sub
'add blob to the schema
Sub SchemaAddBlob(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
	Return Me
End Sub
'add text to the schema
Sub SchemaAddText(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_STRING)
	Next
	Return Me
End Sub
'schema create table
'<code>
''schema create table
'dbConnect.SchemaCreateTable
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub SchemaCreateTable As BANanoMySQLE
	Return CreateTable(Schema)
End Sub
'convert a json string to a map
private Sub Json2Map(strJSON As String) As Map
	Return BANano.FromJson(strJSON)
End Sub
'convert a map to a json string using JSONGenerator
private Sub Map2Json(mp As Map) As String
	Return BANano.ToJson(mp)
End Sub
'excape fields with ``
Private Sub EscapeField(f As String) As String
	If UseBrackets Then
		Return $"`${f}`"$
	Else
		Return f
	End If
End Sub
'return string for test connection operation
Sub Connection As BANanoMySQLE
	command = "connection"
	Return Me
End Sub
'create a database
'<code>
''create a database
'dbConnect.CreateDatabase
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub CreateDatabase As BANanoMySQLE
	query = $"CREATE DATABASE IF NOT EXISTS ${EscapeField(DBase)}"$
	command = "createdb"
	Return Me
End Sub
'drop the database
'<code>
''drop a database
'dbConnect.DropDatabase
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DropDataBase As BANanoMySQLE
	query = $"DROP DATABASE ${EscapeField(DBase)}"$
	command = "dropdb"
	Return Me
End Sub
'execute your own sql query
'<code>
''execute a query string
'dbConnect.Execute("...")
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'for each rec As Map in dbConnect.Result
'next
'</code>
Sub Execute(strSQL As String) As BANanoMySQLE
	query = strSQL
	command = "execute"
	Return Me
End Sub

'create table
'<code>
''create table
'Dim schema As Map = CreateMap()
'schema.Put("id", dbConnect.DB_INT)
'schema.put("name", dbConnect.DB_TEXT)
'dbConnect.CreateTable(schema)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub CreateTable(tblFields As Map) As BANanoMySQLE
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
		fldType = fldType.Replace("TEXT", "VARCHAR(255)")
		If fldCnt > 0 Then
			sb.Append(", ")
		End If
		sb.Append(EscapeField(fldName))
		sb.Append(" ")
		sb.Append(fldType)
		If fldName.EqualsIgnoreCase(PrimaryKey) Then
			sb.Append(" NOT NULL PRIMARY KEY")
		End If
		If fldName.EqualsIgnoreCase(Auto) Then
			sb.Append(" AUTO_INCREMENT")
		End If
	Next
	sb.Append(")")
	'define the qry to execute
	query = "CREATE TABLE IF NOT EXISTS " & EscapeField(TableName) & " " & sb.ToString
	command = "createtable"
	Return Me
End Sub
'drop a table
'<code>
''drop a table
'dbConnect.DropTable
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DropTable As BANanoMySQLE
	'define the qry to execute
	query = "DROP TABLE " & EscapeField(TableName)
	command = "droptable"
	Return Me
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
'get map keys to a list
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
'insert current record
'<code>
''insert current record
'dbConnect.Record.Initialize
'dbConnect.Record.put("id", "1")
'dbConnect.Record.put("name", "Mashy")
'dbConnect.Insert
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Insert As BANanoMySQLE
	Insert1(Record)
	Return Me
End Sub
'insert a record using own record
'<code>
''insert a record using own record
'Dim rec As Map = CreateMap()
'rec.put("id", "1")
'rec.put("name", "Mashy")
'dbConnect.Insert1(rec)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Insert1(Rec As Map) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Insert1: '${TableName}' schema is not set!"$)
	End If
	Dim sb As StringBuilder
	Dim columns As StringBuilder
	Dim values As StringBuilder
	Dim listOfValues As List = GetMapValues(Rec)
	Dim listOfTypes As List = GetMapTypes(Rec)
	Dim iCnt As Int
	Dim iTot As Int
	Dim idxPos As Int = -1
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
		If UsesJRDC And col.EqualsIgnoreCase(Auto) Then
			values.Append("null")
			idxPos = iCnt
		Else
			values.Append("?")
		End If
	Next
	sb.Append(columns.ToString)
	sb.Append(") VALUES (")
	sb.Append(values.ToString)
	sb.Append(")")
	'remove the other arguments
	If UsesJRDC Then
		listOfValues.RemoveAt(idxPos)
		listOfTypes.RemoveAt(idxPos)
	End If
	query = sb.ToString
	args = listOfValues
	types = listOfTypes
	command = "insert"
	Return Me
End Sub
'insert replace a record using current record
'<code>
''insert replace a record
'dbConnect.InsertReplace
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'End Select
'</code>
Sub InsertReplace As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.InsertReplace: '${TableName}' schema is not set!"$)
	End If
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
	sb.Append($"REPLACE INTO ${EscapeField(TableName)} ("$)
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
	command = "replace"
	Return Me
End Sub
'delete a record using primary key
'<code>
''delete a record using primary key
'dbConnect.Delete(10)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Delete(primaryValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Delete: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	DeleteWhere(qw, Array("="))
	Return Me
End Sub

Sub DeleteWait(primaryValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.DeleteWait: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	DeleteWhereWait(qw, Array("="))
	Return Me
End Sub

Sub DeleteDynamicWait(primaryValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.DeleteDynamicWait: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	DeleteWhereDynamicWait(qw, Array("="))
	Return Me
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
'read a record
'<code>
''read a record
'dbConnect.Read(10)
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
Sub Read(primaryValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Read: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	SelectWhere(Array("*"), qw, Array("="), Array(PrimaryKey))
	Return Me
End Sub
'
Sub ReadWait(primaryValue As String) As List
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.ReadWait: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	Dim res As List = BANano.Await(SelectWhereWait(Array("*"), qw, Array("="), Array(PrimaryKey)))
	Return res
End Sub

Sub ReadDynamicWait(primaryValue As String) As List
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.ReadWait: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	Dim res As List = BANano.Await( SelectWhereDynamicWait(Array("*"), qw, Array("="), Array(PrimaryKey)))
	Return res
End Sub


'check existence of a record
'<code>
''check existence of a record
'dbConnect.Exists(10)
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
Sub Exists(primaryValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Exists: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	SelectWhere(Array(PrimaryKey), qw, Array("="), Array(PrimaryKey))
	Return Me
End Sub
'select where
'<code>
''select where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectWhere(array("*"), sw, array(">=", "<"), array("name"))
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
Sub SelectWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.SelectWhere: '${TableName}' schema is not set!"$)
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
		Dim stro As String = JoinFields(",", orderBy)
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
'select max where
'<code>
''select max where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectMaxWhere("field1", sw, array(">=", "<"))
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
Sub SelectMaxWhere(fld As String, tblWhere As Map, operators As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.SelectMaxWhere: '${TableName}' schema is not set!"$)
	End If
	If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
	Dim listOfTypes As List = GetMapTypes(tblWhere)
	Dim listOfValues As List = GetMapValues(tblWhere)
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT MAX(${fld}) As ${fld} FROM ${EscapeField(TableName)} WHERE "$)
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
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "select"
	Return Me
End Sub
'select where asc/desc
'<code>
''select where asc/desc
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectWhereAscDesc(array("*"), sw, array(">=", "<"), array("name"), array("name"))
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
Sub SelectWhereAscDesc(tblfields As List, tblWhere As Map, operators As List, orderBy As List, AscDesc As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.SelectWhereAscDesc: '${TableName}' schema is not set!"$)
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
Sub SelectDistinctWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.SelectDistinctWhere: '${TableName}' schema is not set!"$)
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
	Return Me
End Sub
'delete all records
'<code>
''delete all records
'dbConnect.DeleteAll
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DeleteAll As BANanoMySQLE
	query = $"DELETE FROM ${EscapeField(TableName)}"$
	command = "delete"
	Return Me
End Sub
private Sub EQOperators(sm As Map) As List  'ignore
	Dim nl As List
	nl.initialize
	For Each k As String In sm.Keys
		nl.Add("=")
	Next
	Return nl
End Sub
'delete records where
'<code>
''delete records where
'Dim uw As Map = CreateMap()
'uw.put("id", 10)
'dbConnect.DeleteWhere(uw, array("="))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DeleteWhere(tblWhere As Map, operators As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.DeleteWhere: '${TableName}' schema is not set!"$)
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
		sb.Append(EscapeField(col))
		Dim opr As String = operators.Get(i)
		sb.Append($" ${opr} ?"$)
	Next
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "delete"
	Return Me
End Sub
'select all records
'<code>
''select all records
'dbConnect.SelectAll(array("*"), array("name"))
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
Sub SelectAll(tblfields As List, orderBy As List) As BANanoMySQLE
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
	command =  "select"
	Return Me
End Sub


'select distinct all order by
'<code>
'dbConnect.SelectDistinctAll(array("name"), array("name"))
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
Sub SelectDistinctAll(tblfields As List, orderBy As List) As BANanoMySQLE
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
	If bUsesEncryption Then
		If EncryptFrom Then
			b.Put("resout", "y")
		Else
			b.Put("resout", "n")
		End If
		Dim makeJSON As String = BANano.ToJson(b)
		Dim xxx As String = Encrypt4Php(makeJSON, SALT)
		Dim rec As Map = CreateMap()
		rec.Put("data", xxx)
		Return rec
	End If
	Return b
End Sub

'encrypt data for php sending
private Sub Encrypt4Php(data As String, key As String) As String
	Dim encpt As BANanoObject
	encpt.Initialize2("Encryption", Null)
	Dim resultx As String = encpt.RunMethod("encrypt", Array(data, key)).Result
	Return resultx
End Sub

'decreypt data from php
private Sub Decrypt4Php(decr As String, key As String) As String
	Dim encpt As BANanoObject
	encpt.Initialize2("Encryption", Null)
	Dim resultx As String = encpt.RunMethod("decrypt", Array(decr, key)).result
	Return resultx
End Sub

'build qry
Sub Build1 As Map
	Dim largs As List
	Dim ltypes As List
	largs = IIf(args.Size=0, Null, args)
	ltypes = IIf(types.Size=0,Null, types)
	Dim b As Map = CreateMap()
	b.Put("command", command)
	b.Put("query", query)
	b.Put("args", largs)
	b.Put("types", ltypes)
	b.Put("view", view)
	b.Put("action", action)
	b.Put("noresult", NoResult)
	Return b
End Sub
'build qry for dynamic connection
Sub BuildDynamic(isPHP As Boolean) As Map
	Dim largs As List
	Dim ltypes As List
	largs = IIf(args.Size=0, Null, args)
	ltypes = IIf(types.Size=0,Null, types)
	Dim b As Map = CreateMap()
	b.Put("command", command)
	b.Put("query", query)
	b.Put("args", largs)
	b.Put("types", ltypes)
	b.put("host", host)
	b.Put("username", username)
	b.Put("password", password)
	b.Put("dbname", DBase)
	If isPHP = False Then
		b.Put("view", view)
		b.Put("action", action)
	End If
	Return b
End Sub
'delete all records and reset auto increment
'<code>
'dbConnect.Truncate
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Truncate As BANanoMySQLE
	query = $"TRUNCATE TABLE ${EscapeField(TableName)}"$
	command = "delete"
	Return Me
End Sub
'get the first record
Sub FirstRecord As Map
	Dim rec As Map = result.Get(0)
	Return rec
End Sub
'update a record
'<code>
''update current record
'dbConnect.Update(10)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Update(priValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.Update: '${TableName}' schema is not set!"$)
	End If
	Dim tblWhere As Map = CreateMap()
	tblWhere.Put(PrimaryKey, priValue)
	UpdateWhere(Record, tblWhere, Null)
	Return Me
End Sub
'update record using primary key
'<code>
''update record using primary key
'Dim rec as Map = CreateMap()
'rec.put("name", "Anele")
'rec.put("email", "email@email.com")
'dbConnect.Update1(rec, 10)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Update1(Rec As Map, priValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.Update1: '${TableName}' schema is not set!"$)
	End If
	Record = Rec
	Dim tblWhere As Map = CreateMap()
	tblWhere.Put(PrimaryKey, priValue)
	UpdateWhere(Rec, tblWhere, Null)
	Return Me
End Sub
'update where using map...
'<code>
'dim rec As Map = CreateMap()
''define where clause
'rec.put("name", "Anele")
'Dim uw As Map = CreateMap()
'uw.put("id", 10)
'dbConnect.UpdateWhere(rec, uw, array("="))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub UpdateWhere(tblfields As Map, tblWhere As Map, operators As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.UpdateWhere: '${TableName}' schema is not set!"$)
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
			sb.Append("= ?,")
		Else
			sb.Append("= ?")
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
	fields = GetMapKeys(tblfields)
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "update"
	Return Me
End Sub
'update all records
'<code>
''update all records with new field details
'dbConnect.UpdateAll(CreateMap("name":"Anele", "age":30))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub UpdateAll(tblFields As Map) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.UpdateAll: '${TableName}' schema is not set!"$)
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
		Dim col As String = tblFields.GetKeyAt(i)
		Dim oper As String = operators.Get(i)
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
	Return Me
End Sub
'select all records asc/desc
'<code>
''select all records
'dbConnect.SelectAllAscDesc(array("*"), array("name"), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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

Sub GetSumDynamicWait As List
	GetSum
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub GetSumWait As List
	GetSum
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub UpdateAllynamicWait(tblFields As Map) As Boolean
	UpdateAll(tblFields)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub UpdateAllWait(tblFields As Map) As Boolean
	UpdateAll(tblFields)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub UpdateWhereWait(tblfields As Map, tblWhere As Map, operators As List) As Boolean
	UpdateWhere(tblfields, tblWhere, operators)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub UpdateWhereDynamicWait(tblfields As Map, tblWhere As Map, operators As List) As Boolean
	UpdateWhere(tblfields, tblWhere, operators)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub UpdateWait(rec As Map, priValue As String) As Boolean
	Update1(rec, priValue)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub UpdateDynamicWait(rec As Map, priValue As String) As Boolean
	Update1(rec, priValue)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub SelectDistinctAllDynamicWait(tblfields As List, orderBy As List) As List
	SelectDistinctAllWait(tblfields, orderBy)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub SelectDistinctAllWait(tblfields As List, orderBy As List) As List
	SelectDistinctAllWait(tblfields, orderBy)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub SelectAllWait(tblfields As List, orderBy As List) As List
	SelectAll(tblfields, orderBy)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub SelectAllDynamicWait(tblfields As List, orderBy As List) As List
	SelectAll(tblfields, orderBy)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub


Sub SelectEverything As BANanoMySQLE
	Dim tblfields As List
	tblfields.Initialize
	tblfields.Add("*")
	Dim orderBy As List
	orderBy.Initialize
	SelectAll(tblfields, orderBy)
	Return Me
End Sub

Sub SelectEverythingWait As List
	SelectEverything
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub SelectEverythingDynamicWait As List
	SelectEverything
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub DeleteWhereDynamicWait(tblWhere As Map, operators As List) As Boolean
	DeleteWhere(tblWhere, operators)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub DeleteWhereWait(tblWhere As Map, operators As List) As Boolean
	DeleteWhere(tblWhere, operators)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub DeleteAllDynamicWait As Boolean
	DeleteAll
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub DeleteAllWait As Boolean
	DeleteAll
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub SelectDistinctWhereWait(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As List
	SelectDistinctWhere(tblfields, tblWhere, operators, orderBy)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub SelectDistinctWhereDynamicWait(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As List
	SelectDistinctWhere(tblfields, tblWhere, operators, orderBy)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub SelectWhereWait(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As List
	SelectWhere(tblfields, tblWhere, operators, orderBy)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

'<code>
''select where 2
'dbConnect.CLEAR_WHERE
'dbConnect.ADD_FIELD("*")
'dbConnect.ADD_WHERE("fld1", "=", 10)
'dbConnect.SELECT_WHERE
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
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
Sub SELECT_WHERE As BANanoMySQLE
	Return SelectWhere(flds, whereField, ops, orderByL)
End Sub

Sub SelectWhereDynamicWait(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As List
	SelectWhere(tblfields, tblWhere, operators, orderBy)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub ExistsWait(primaryValue As String) As List
	Exists(primaryValue)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub ExistsDynamicWait(primaryValue As String) As List
	Exists(primaryValue)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub GetCountWait As List
	GetCount
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub GetCountDynamicWait As List
	GetCount
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub InsertWait As Boolean
	Insert1(Record)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub InsertDynamicWait As Boolean
	Insert1(Record)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub


'set a record from a map
Sub SetRecord(rec As Map)
	For Each k As String In rec.Keys
		Dim v As Object = rec.Get(k)
		SetField(k, v)
	Next
End Sub

Sub DropTableWait As Boolean
	DropTable
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub DropTableDynamicWait As Boolean
	DropTable
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
			Return False
	End Select
	Return True
End Sub

Sub ExecuteWait(qry As String) As List
	Execute(qry)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub
Sub SelectMaxWhereWait(fld As String, tblWhere As Map, operators As List) As List
	SelectMaxWhere(fld, tblWhere, operators)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub
Sub SelectWhereAscDescWait(tblfields As List, tblWhere As Map, operators As List, orderBy As List, AscDesc As List) As List
	SelectWhereAscDesc(tblfields, tblWhere, operators, orderBy, AscDesc)
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub GetTableNamesWait As List
	GetTableNames
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub ExecuteDynamicWait(qry As String) As List
	Execute(qry)
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub GetTableNamesDynamicWait As List
	GetTableNames
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub DescribeTableWait As List
	DescribeTable
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
		Case Else
			BuildTableDescription
	End Select
	Return result
End Sub

Sub DescribeTableDynamicWait As List
	DescribeTable
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
		Case Else
			BuildTableDescription
	End Select
	Return result
End Sub

Sub BuildTableDescription
	TD.Initialize
	TD.tableName = TableName
	TD.PrimaryKey = ""
	TD.AutoIncrement = ""
	TD.Booleans.Initialize
	TD.Strings.Initialize
	TD.Doubles.Initialize
	TD.Blobs.Initialize
	TD.Integers.Initialize
	TD.TinyInts.Initialize
	TD.Fields.Initialize
	TD.Sorts.Initialize
	TD.FieldNames.Initialize
	'will have the auto & primary keys
	Dim fldnames As List
	fldnames.Initialize
	Dim sauto As String = ""
	Dim spri As String = ""
	'loop through each field
	For Each fldm As Map In result
		'create a new field
		Dim newfld As Map = CreateMap()
		Dim sDefault As String = fldm.getdefault("Default","")
		Dim sExtra As String = fldm.getdefault("Extra", "")
		Dim sField As String = fldm.getdefault("Field", "")
		Dim sKey As String = fldm.getdefault("Key", "")
		Dim sNull As String = fldm.getdefault("Null", "")
		Dim sType As String = fldm.getdefault("Type", "")
		If sNull = "NO" Then sNull = "No"
		If sNull = "YES" Then sNull = "Yes"
		'
		'update field names
		TD.FieldNames.Add(sField.tolowercase)
		'
		sDefault = CStr(sDefault)
		sField = CStr(sField)
		sKey = CStr(sKey)
		sNull = CStr(sNull)
		sType = CStr(sType)
		sExtra = CStr(sExtra)
		'we have found the auto increment
		If sExtra.EqualsIgnoreCase("auto_increment") Then
			sauto = sField
			TD.AutoIncrement = sauto
		End If
		'we have found the primary key
		If sKey.EqualsIgnoreCase("pri") Then
			spri = sField
			TD.PrimaryKey = spri
		End If
		'get the fld len
		Dim fldLen As String = Val(sType)
		'get the fld type
		Dim fldType As String = Alpha(sType)
		newfld.Put("defaultvalue", sDefault)
		newfld.Put("fieldname", sField)
		newfld.Put("fieldtype", fldType)
		newfld.Put("fieldlen", fldLen)
		newfld.Put("acceptnull", sNull)
		'
		newfld.Put("title", sField)
		newfld.Put("ontable", "Yes")
		newfld.Put("onpdf", "Yes")
		newfld.Put("onxls", "Yes")
		If spri.EqualsIgnoreCase(sField) Then
			newfld.Put("pri", "Yes")
			newfld.Put("sortdb", "Yes")
			'sorts
			TD.Sorts.Add(sField.tolowercase)
		Else
			newfld.Put("pri", "No")
		End If
		'
		If sauto.EqualsIgnoreCase(sField) Then
			newfld.Put("ai", "Yes")
		Else
			newfld.Put("ai", "No")
		End If
		newfld.Put("fieldkey", $"${TableName}.${sField}"$)
		'add to collection
		fldnames.Add(newfld)
		TD.Fields.Add(newfld)
		'
		'define the field types
		Select Case fldType
			Case "blob"
				TD.Blobs.Add(sField.tolowercase)
			Case "varchar", "date", "longtext"
				TD.Strings.Add(sField.ToLowerCase)
			Case "bigint", "int"
				TD.Integers.Add(sField.tolowercase)
			Case "tinyint"
				TD.Integers.Add(sField.tolowercase)
				TD.TinyInts.Add(sField.ToLowerCase)
			Case Else
				TD.Strings.Add(sField.ToLowerCase)
		End Select
	Next
End Sub

'get alphabets only
Sub Alpha(value As String) As String
	value = CStr(value)
	Try
		value = value.Trim
		If value = "" Then value = ""
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
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

Sub ColumnNamesWait As List
	DescribeTable
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub ColumnNamesDynamicWait As List
	DescribeTable
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub GetMinWait As List
	GetMin
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub GetMinDynamicWait As List
	GetMin
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub GetMaxWait As List
	GetMax
	json = BANano.CallInlinePHPWait(MethodName, Build)
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub

Sub GetMaxDynamicWait As List
	GetMax
	json = BANano.CallInlinePHPWait(MethodNameDynamic, BuildDynamic(True))
	FromJSON
	RowCount = result.size
	affectedRows = RowCount
	Select Case OK
		Case False
			Dim strError As String = error
			Log(strError)
	End Select
	Return result
End Sub


''**** DONT EVER USE
'Sub CallInlinePHPWait(req As String, params As Map) As String
'	Dim data As Map = CreateMap()
'	data.Put("request", req)
'	data.Put("params", params)
'	'
'	Dim axios As BANanoAxios
'	axios.Initialize(URL)
'	axios.SetAccessControlAllowOrigin("*")
'	axios.SetContentType("json")
'	Dim resp As String = BANano.Await(axios.PostWait(data))
'	Return resp
'End Sub
#if PHP

function PasswordVerify($currentPwd, $hashPwd) {
	$res = password_verify($currentPwd, $hashPwd);
	echo ($res);
}

function get_result(\mysqli_stmt $statement)
{
$result = array();
$statement->store_result();
for ($i = 0; $i < $statement->num_rows; $i++)
    {
    $metadata = $statement->result_metadata();
    $params = array();
    while ($field = $metadata->fetch_field())
        {
        $params[] = &$result[$i][$field->name];
        }
        call_user_func_array(array($statement, 'bind_result'), $params);
        $statement->fetch();
        }
        return $result;
        }
        function prepareMySQL($conn, $query, $types, $args) {
        //paramater types to execute
        /* Bind parameters. Types: s = string, i = integer, d = double,  b = blob */
        $stmt = $conn->prepare($query);
        if(is_array($types)){
        $a_params = array();
        $param_type = '';
        $n = count($types);
        for($i = 0; $i < $n; $i++) {
        $param_type .= $types[$i];
        }
        $a_params[] = & $param_type;
        //values to execute
        for($i = 0; $i < $n; $i++) {
		$args[$i] = mysqli_real_escape_string($conn, $args[$i]);
        $a_params[] = & $args[$i];
        }
        call_user_func_array(array($stmt, 'bind_param'), $a_params);
        }
        return $stmt;
        }
        function BANanoMySQL($command, $query, $args, $types) {
        $resp = array();
        header('Access-Control-Allow-Origin: *');
        header('content-type: application/json; charset=utf-8');
        header("Access-Control-Allow-Credentials: true");
        header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
        header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
        require_once './assets/mysqlconfig.php';
        //connect To MySQL
        mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
        $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        //we cannot connect Return an error
        if ($conn->connect_error) {
        $response = $conn->connect_error;
        $resp['response'] = "Error";
        $resp['error'] = $response;
        $resp['result'] = array();
		$resp['token'] = '';
        $output = json_encode($resp);
        die($output);
        }
        mysqli_set_charset($conn, 'utf8');
        //$query = mysqli_real_escape_string($conn, $query);
        $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable');
        if (in_array($command, $commands)) {
        $command = 'changes';
        }
        switch ($command) {
		case "updatepwd":
			//first arguement is the password
			$args[0] = password_hash($args[0], PASSWORD_BCRYPT);
			$stmt = prepareMySQL($conn, $query, $types, $args);
        	if (! $stmt -> execute()) {
        		$response = $stmt->error;
        		$resp['response'] = "Error";
        		$resp['error'] = $response;
        		$resp['result'] = array();
				$resp['token'] = '';
				$output = json_encode($resp);
				die($output);
        	}
        	$affRows = $conn->affected_rows;
        	$resp['response'] = "Success";
        	$resp['error'] = '';
        	$resp['result'] = array();
        	$resp['affectedRows'] = $affRows;
			$resp['token'] = $args[0];
        	$output = json_encode($resp);
    		break;
		case "assigntoken":
		//assign a 36 length token to the second argument
		//first arguement is the username
		$args[0] = bin2hex(openssl_random_pseudo_bytes(36));
		$stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
        	$response = $stmt->error;
        	$resp['response'] = "Error";
        	$resp['error'] = $response;
        	$resp['result'] = array();
			$resp['token'] = '';
        	$output = json_encode($resp);
			die($output);
        }
        $affRows = $conn->affected_rows;
        $resp['response'] = "Success";
        $resp['error'] = '';
        $resp['result'] = array();
        $resp['affectedRows'] = $affRows;
		$resp['token'] = $args[0];
        $output = json_encode($resp);
    	break;
    case "changes":
        $stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
        $response = $stmt->error;
        $resp['response'] = "Error";
        $resp['error'] = $response;
        $resp['result'] = array();
		$resp['token'] = '';
        $output = json_encode($resp);
        die($output);
        }
        $affRows = $conn->affected_rows;
        $resp['response'] = "Success";
        $resp['error'] = '';
        $resp['result'] = array();
        $resp['affectedRows'] = $affRows;
		$resp['token'] = '';
        $output = json_encode($resp);
        break;
        default:
        $stmt = prepareMySQL($conn, $query, $types, $args);
        if (!($result = $stmt->execute())) {
        $response = $stmt->error;
        $resp['response'] = "Error";
        $resp['error'] = $response;
        $resp['result'] = array();
		$resp['token'] = '';
        $output = json_encode($resp);
        die($output);
        }
        $rows = get_result($stmt);
        $affRows = $conn->affected_rows;
        $resp['response'] = "Success";
        $resp['error'] = '';
        $resp['result'] = $rows;
        $resp['affectedRows'] = $affRows;
		$resp['token'] = '';
        $output = json_encode($resp);
        break;
        }
        echo ($output);
        $stmt->close();
        $conn->close();
        }
        function BANanoMySQL1($command, $query, $args, $types) {
        $resp = array();
        header('Access-Control-Allow-Origin: *');
        header('content-type: application/json; charset=utf-8');
        header("Access-Control-Allow-Credentials: true");
        header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
        header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
        require_once './assets/mysqlconfig.php';
        //connect To MySQL
        mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
        $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        //we cannot connect Return an error
        if ($conn->connect_error) {
        $response = $conn->connect_error;
        $resp['response'] = "Error";
        $resp['error'] = $response;
        $resp['result'] = array();
		$resp['token'] = '';
        $output = json_encode($resp);
        die($output);
        }
        mysqli_set_charset($conn, 'utf8');
        //$query = mysqli_real_escape_string($conn, $query);
        $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable');
        if (in_array($command, $commands)) {
        $command = 'changes';
        }
        switch ($command) {
		case "updatepwd":
			//first arguement is the password
			$args[0] = password_hash($args[0], PASSWORD_BCRYPT);
			$stmt = prepareMySQL($conn, $query, $types, $args);
        	if (! $stmt -> execute()) {
        		$response = $stmt->error;
        		$resp['response'] = "Error";
        		$resp['error'] = $response;
        		$resp['result'] = array();
				$resp['token'] = '';
        		$output = json_encode($resp);
				die($output);
        	}
        	$affRows = $conn->affected_rows;
        	$resp['response'] = "Success";
        	$resp['error'] = '';
        	$resp['result'] = array();
        	$resp['affectedRows'] = $affRows;
			$resp['token'] = $args[0];
        	$output = json_encode($resp);
    		break;
		case "assigntoken":
		//assign a 36 length token to the second argument
		//first arguement is the username
		$args[0] = bin2hex(openssl_random_pseudo_bytes(36));
		$stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
        	$response = $stmt->error;
        	$resp['response'] = "Error";
        	$resp['error'] = $response;
        	$resp['result'] = array();
			$resp['token'] = '';
        	$output = json_encode($resp);
			die($output);
        }
        $affRows = $conn->affected_rows;
        $resp['response'] = "Success";
        $resp['error'] = '';
        $resp['result'] = array();
        $resp['affectedRows'] = $affRows;
		$resp['token'] = $args[0];
        $output = json_encode($resp);
    	break;
    case "changes":
        $stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
        $response = $stmt->error;
        $resp['response'] = "Error";
        $resp['error'] = $response;
        $resp['result'] = array();
		$resp['token'] = '';
        $output = json_encode($resp);
        die($output);
        }
        $affRows = $conn->affected_rows;
        $resp['response'] = "Success";
        $resp['error'] = '';
        $resp['result'] = array();
        $resp['affectedRows'] = $affRows;
		$resp['token'] = '';
        $output = json_encode($resp);
        break;
        default:
        $stmt = prepareMySQL($conn, $query, $types, $args);
        //$result = $stmt->execute();
        //$result = $stmt->get_result();
        if (!($result = $stmt->execute())) {
        $response = $stmt->error;
        $resp['response'] = "Error";
        $resp['error'] = $response;
        $resp['result'] = array();
		$resp['token'] = '';
        $output = json_encode($resp);
        die($output);
        }
        if (!($result = $stmt->get_result())) {
        $response = $stmt->error;
        $resp['response'] = "Error";
        $resp['error'] = $response;
        $resp['result'] = array();
		$resp['token'] = '';
        $output = json_encode($resp);
        die($output);
        }
        $affRows = $conn->affected_rows;
        $rows = array();
        while ($row = $result->fetch_assoc()) {
            $rows[] = $row;
            }
            $resp['response'] = "Success";
            $resp['error'] = '';
            $resp['result'] = $rows;
            $resp['affectedRows'] = $affRows;
			$resp['token'] = '';
            $output = json_encode($resp);
            break;
            }
            echo ($output);
            $stmt->close();
            $conn->close();
            }
            function BANanoMySQLDynamic($command, $query, $args, $types, $host, $username, $password, $dbname) {
            $resp = array();
            header('Access-Control-Allow-Origin: *');
            header('content-type: application/json; charset=utf-8');
            header("Access-Control-Allow-Credentials: true");
            header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
            header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
            //connect To MySQL
            $conn = new mysqli($host, $username, $password);
            //we cannot connect Return an error
            if ($conn->connect_error) {
            $response = $conn->connect_error;
            $resp['response'] = "Error";
            $resp['error'] = $response;
            $resp['result'] = array();
			$resp['token'] = '';
            $output = json_encode($resp);
            die($output);
            }
            //select the database
            mysqli_set_charset($conn, 'utf8');
            $commands = array('delete', 'update', 'replace', 'insert', 'createtable', 'droptable');
            if (in_array($command, $commands)) {
            $command = 'changes';
            }
            switch ($command) {
			case "updatepwd":
			//first arguement is the password
			$args[0] = password_hash($args[0], PASSWORD_BCRYPT);
			$stmt = prepareMySQL($conn, $query, $types, $args);
        	if (! $stmt -> execute()) {
        		$response = $stmt->error;
        		$resp['response'] = "Error";
        		$resp['error'] = $response;
        		$resp['result'] = array();
				$resp['token'] = '';
        		$output = json_encode($resp);
				die($output);
        	}
        	$affRows = $conn->affected_rows;
        	$resp['response'] = "Success";
        	$resp['error'] = '';
        	$resp['result'] = array();
        	$resp['affectedRows'] = $affRows;
			$resp['token'] = $args[0];
        	$output = json_encode($resp);
    		break;
			case "assigntoken":
		//assign a 36 length token to the second argument
		//first arguement is the username
		$args[0] = bin2hex(openssl_random_pseudo_bytes(36));
		$stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
        	$response = $stmt->error;
        	$resp['response'] = "Error";
        	$resp['error'] = $response;
        	$resp['result'] = array();
			$resp['token'] = '';
        	$output = json_encode($resp);
			die($output);
        }
        $affRows = $conn->affected_rows;
        $resp['response'] = "Success";
        $resp['error'] = '';
        $resp['result'] = array();
        $resp['affectedRows'] = $affRows;
		$resp['token'] = $args[0];
        $output = json_encode($resp);
    	break;
        case "connection":
            $resp['response'] = "Success";
            $resp['error'] = '';
            $resp['result'] = array();
            $resp['affectedRows'] = 0;
			$resp['token'] = '';			
            $output = json_encode($resp);
            die($output);
        case "createdb":
            $stmt = prepareMySQL($conn, $query, $types, $args);
            if (! $stmt -> execute()) {
            $response = $stmt->error;
            $resp['response'] = "Error";
            $resp['error'] = $response;
            $resp['result'] = array();
			$resp['token'] = '';
            $output = json_encode($resp);
            die($output);
            }
            $resp['response'] = "Success";
            $resp['error'] = '';
            $resp['result'] = array();
            $resp['affectedRows'] = 0;
			$resp['token'] = '';
            $output = json_encode($resp);
            break;
        case "dropdb":
            $stmt = prepareMySQL($conn, $query, $types, $args);
            if (! $stmt -> execute()) {
            $response = $stmt->error;
            $resp['response'] = "Error";
            $resp['error'] = $response;
            $resp['result'] = array();
			$resp['token'] = '';
            $output = json_encode($resp);
            die($output);
            }
            $resp['response'] = "Success";
            $resp['error'] = '';
            $resp['result'] = array();
            $resp['affectedRows'] = 0;
			$resp['token'] = '';
            $output = json_encode($resp);
            break;
        case "databases":
            $stmt = prepareMySQL($conn, $query, $types, $args);
            if (!($result = $stmt->execute())) {
            $response = $stmt->error;
            $resp['response'] = "Error";
            $resp['error'] = $response;
            $resp['result'] = array();
			$resp['token'] = '';
            $output = json_encode($resp);
            die($output);
            }
            $rows = get_result($stmt);
            $affRows = $conn->affected_rows;
            $resp['response'] = "Success";
            $resp['error'] = '';
            $resp['result'] = $rows;
            $resp['affectedRows'] = $affRows;
			$resp['token'] = '';
            $output = json_encode($resp);
            break;
        case "changes":
            //select the db before processing
            $selected = mysqli_select_db($conn, $dbname);
            if (!$selected) {
            $response = $conn->connect_error;
            $resp['response'] = "Error";
            $resp['error'] = $response;
            $resp['result'] = array();
			$resp['token'] = '';
            $output = json_encode($resp);
            die($output);
            }
            $stmt = prepareMySQL($conn, $query, $types, $args);
            if (! $stmt -> execute()) {
            $response = $stmt->error;
            $resp['response'] = "Error";
            $resp['error'] = $response;
            $resp['result'] = array();
			$resp['token'] = '';
            $output = json_encode($resp);
            die($output);
            }
            $affRows = $conn->affected_rows;
            $resp['response'] = "Success";
            $resp['error'] = '';
            $resp['result'] = array();
            $resp['affectedRows'] = $affRows;
			$resp['token'] = '';
            $output = json_encode($resp);
            break;
            default:
            //select the db before processing
            $dbname = mysqli_real_escape_string($conn, $dbname);
            $selected = mysqli_select_db($conn, $dbname);
            if (!$selected) {
            $response = $conn->connect_error;
            $resp['response'] = "Error";
            $resp['error'] = $response;
            $resp['result'] = array();
			$resp['token'] = '';
            $output = json_encode($resp);
            die($output);
            }
            $stmt = prepareMySQL($conn, $query, $types, $args);
            if (!($result = $stmt->execute())) {
            $response = $stmt->error;
            $resp['response'] = "Error";
            $resp['error'] = $response;
            $resp['result'] = array();
			$resp['token'] = '';
            $output = json_encode($resp);
            die($output);
            }
            $rows = get_result($stmt);
            $affRows = $conn->affected_rows;
            $resp['response'] = "Success";
            $resp['error'] = '';
            $resp['result'] = $rows;
            $resp['affectedRows'] = $affRows;
			$resp['token'] = '';
            $output = json_encode($resp);
            break;
            }
            echo ($output);
            $stmt->close();
            $conn->close();
            }
        #end if
		
		
		
#if php
function BANanoMySQLED($data) {
    //receive content to decrypt
	//include the decryption class
	require_once './assets/encryption.php';
    require_once './assets/mysqlconfig.php';
    header('Access-Control-Allow-Origin: *');
    header('content-type: application/json; charset=utf-8');
	header("Access-Control-Allow-Credentials: true");
    header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
    header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
    //decrypt the content
	$Encryption = new Encryption();
	$decrypted = $Encryption->decrypt($data, DB_KEY);
	//this should be json, convert to map - associative array
	$obj = json_decode($decrypted, true);
	$command = $obj['command'];
	$query = $obj['query'];
	$args = $obj['args'];
	$types = $obj['types'];
	//whether from the server we want to encrypt
	$resout = $obj['resout'];
	//
	$resp = array();
    //connect To MySQL
	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    //we cannot connect Return an error
    if ($conn->connect_error) {
	    $response = $conn->connect_error;
        $resp['response'] = "Error";
        $resp['error'] = $response;
        $resp['result'] = array();
		$resp['token'] = '';
        $output = json_encode($resp);
		$encrypted = $Encryption->encrypt($output, $key);
        die($encrypted);
    }
    mysqli_set_charset($conn, 'utf8');
    //$query = mysqli_real_escape_string($conn, $query);
    $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable');
    if (in_array($command, $commands)) {
        $command = 'changes';
    }
    switch ($command) {
	case "updatepwd":
			//first arguement is the password
			$args[0] = password_hash($args[0], PASSWORD_BCRYPT);
			$stmt = prepareMySQL($conn, $query, $types, $args);
        	if (! $stmt -> execute()) {
        		$response = $stmt->error;
        		$resp['response'] = "Error";
        		$resp['error'] = $response;
        		$resp['result'] = array();
				$resp['token'] = '';
        		$output = json_encode($resp);
				die($output);
        	}
        	$affRows = $conn->affected_rows;
        	$resp['response'] = "Success";
        	$resp['error'] = '';
        	$resp['result'] = array();
        	$resp['affectedRows'] = $affRows;
			$resp['token'] = $args[0];
        	$output = json_encode($resp);
    		break;
    case "assigntoken":
		//assign a 36 length token to the second argument
		//first arguement is the username
		$args[0] = bin2hex(openssl_random_pseudo_bytes(36));
		$stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
        	$response = $stmt->error;
        	$resp['response'] = "Error";
        	$resp['error'] = $response;
        	$resp['result'] = array();
			$resp['token'] = '';
        	$output = json_encode($resp);
			$encrypted = $Encryption->encrypt($output, DB_KEY);
    	    die($encrypted);
        }
        $affRows = $conn->affected_rows;
        $resp['response'] = "Success";
        $resp['error'] = '';
        $resp['result'] = array();
        $resp['affectedRows'] = $affRows;
		$resp['token'] = $args[0];
        $output = json_encode($resp);
    	break;
	case "changes":
        $stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
        	$response = $stmt->error;
        	$resp['response'] = "Error";
        	$resp['error'] = $response;
        	$resp['result'] = array();
			$resp['token'] = '';
        	$output = json_encode($resp);
			$encrypted = $Encryption->encrypt($output, DB_KEY);
    	    die($encrypted);
        }
        $affRows = $conn->affected_rows;
        $resp['response'] = "Success";
        $resp['error'] = '';
        $resp['result'] = array();
        $resp['affectedRows'] = $affRows;
		$resp['token'] = '';
        $output = json_encode($resp);
    	break;
    default:
        $stmt = prepareMySQL($conn, $query, $types, $args);
        if (!($result = $stmt->execute())) {
        	$response = $stmt->error;
        	$resp['response'] = "Error";
        	$resp['error'] = $response;
        	$resp['result'] = array();
			$resp['token'] = '';
        	$output = json_encode($resp);
			$encrypted = $Encryption->encrypt($output, DB_KEY);
    	    die($encrypted);
        }
        $rows = get_result($stmt);
        $affRows = $conn->affected_rows;
        $resp['response'] = "Success";
        $resp['error'] = '';
        $resp['result'] = $rows;
        $resp['affectedRows'] = $affRows;
		$resp['token'] = '';
        $output = json_encode($resp);
        break;
    }
    $stmt->close();
    $conn->close();
	//do we encrypt or not
	switch ($resout) {
	case "y":
		$output = $Encryption->encrypt($output, DB_KEY);
    default:
	}
	echo ($output);
}

function SendEmail($from,$to,$cc,$subject,$msg) {
    $msg = str_replace("|", "\r\n", $msg);
    $msg = str_replace("\n.", "\n..", $msg);
    // use wordwrap() if lines are longer than 70 characters
    $msg = wordwrap($msg,70,"\r\n");
    //define from header
    $headers = "From:" . $from . "\r\n";
    $headers .= "Cc: " . $cc . "\r\n";
    $headers .= "X-Mailer:PHP/" . phpversion();
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html\r\n";
    // send email
    $response = (mail($to,$subject,$msg,$headers)) ? "success" : "failure";
    $output = json_encode(array("response" => $response));
    header('content-type: application/json; charset=utf-8');
    die($output);
}
#End If

'<code>
''send an email
''to send email via gmail, you need to set less secure apps on https://myaccount.google.com/
''1. Click Security
'dim res as string = BANano.Await(bPHP.SendEmailWait("from@gmail.com", "to@gmail.com", "cc@gmail.com", "Test Email", "Have you received this..."))
'Select Case res
'case "success"
'case "failure"
'end select
'</code>
Sub SendEmailWait(fromEmail As String, toEmail As String, ccEmail As String, subject As String, message As String) As String
	Dim res As String = BANano.CallInlinePHPWait("SendEmail", BuildSendEmail(fromEmail, toEmail, ccEmail, subject, message))	'ignore
	Dim m As Map = BANano.FromJson(res)
	Dim ans As String = m.Get("response")
	Return ans
End Sub

private Sub BuildSendEmail(fromEmail As String, toEmail As String, ccEmail As String, subject As String, message As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("from", fromEmail)
	Se.put("to", toEmail)
	Se.put("cc", ccEmail)
	Se.put("subject", subject)
	Se.put("msg", message)
	Return Se
End Sub