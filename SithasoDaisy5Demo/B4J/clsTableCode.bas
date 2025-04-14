B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
Sub Class_Globals
	Private stablename As String
	Private ssingular As String
	Private splural As String
	Private sdisplayvalue As String
	Private code As List
	Private sb As StringBuilder
	Private properTable As String
	Private lsDB As SDUILocalStorage
	Private BANano As BANano				'ignore
	Private properties As List
	Private app As SDUI5App			'ignore
	Private orderby As List
	Private focuson As List
	Private sprimarykey As String
	Private bautoincrement As Boolean	
	Private balphachooser As Boolean
	Private bcolumnchooser As Boolean
	Private salphachooserfield As String
	Private fkeys As Map
	Private fTables As Map
	Private mcompute As Map
	Private lIgnore As List
	Private loads As Map
	Private tblFiles As List
End Sub

'showializes the object. You can add parameters to this method if needed.
Public Sub Initialize(MainApp As SDUI5App, tbl As Map)
	app = MainApp
	stablename = tbl.Get("tablename")
	stablename = stablename.tolowercase
	ssingular = tbl.Get("singular")
	splural = tbl.Get("plural")
	sdisplayvalue = tbl.Get("displayvalue")
	sdisplayvalue = sdisplayvalue.tolowercase
	sprimarykey = tbl.Get("primarykey")
	sprimarykey = app.UI.CStr(sprimarykey)
	bautoincrement = tbl.Get("autoincrement")
	bautoincrement = app.UI.CBool(bautoincrement)
	balphachooser = tbl.Get("alphachooser")
	balphachooser = app.UI.CBool(balphachooser)
	bcolumnchooser = tbl.Get("columnchooser")
	bcolumnchooser = app.UI.CBool(bcolumnchooser)
	salphachooserfield = tbl.Get("alphachooserfield")
	salphachooserfield = app.UI.CStr(salphachooserfield)
	fkeys.Initialize 
	fTables.Initialize
	mcompute.Initialize 
	loads.Initialize 
	'
	properTable = ProperCase(stablename)
	ssingular = ProperCase(ssingular)
	splural = ProperCase(splural)
	'
	code.Initialize
	sb.Initialize 
	orderby.Initialize 
	focuson.Initialize 
	'
	lsDB.Initialize(stablename, "id")
	lsDB.SchemaAddBoolean(Array("proprequired", "propvisible", "propenabled"))
	lsDB.SchemaAddText(Array("id", "proppos", "propname", "proptitle", "propdatatype", "proptype", "propvalue", "props"))
	BANano.Await(lsDB.Records)
	'
	Dim jsonQ As SDUIJSONQuery
	BANano.Await(jsonQ.Initialize(lsDB.result))
	jsonQ.OrderAsc("proppos")
	properties = BANano.Await(jsonQ.Exec)
	
	For Each prop As Map In properties
		Dim spropname As String = prop.Get("propname")
		Dim bpropsort As Boolean = prop.Get("propsort")
		Dim bpropfocus As Boolean = prop.Get("propfocus")
		Dim bpropactive As Boolean = prop.Get("propactive")
		
		bpropactive = app.UI.CBool(bpropactive)
		bpropsort = app.UI.CBool(bpropsort)
		bpropfocus = app.UI.CBool(bpropfocus)
		'exclude inactive fields
		If bpropactive = False Then Continue
		If bpropsort Then orderby.Add(spropname)
		If bpropfocus Then focuson.Add(spropname)
	Next
End Sub

private Sub ProperCase(myStr As String) As String
	Try
		If myStr.trim.length = 0 Then Return ""
		Dim x As String
		Dim j, k As Int
		myStr = myStr.tolowercase
		x = myStr.ToUpperCase.CharAt(0)
		myStr = x & myStr.SubString2(1, myStr.Length)
		For j = 1 To myStr.Length
			k = myStr.IndexOf2(" ", j + 1)
			If k = -1 Then Exit
			x = myStr.ToUpperCase.CharAt(k + 1)
			myStr = myStr.SubString2(0, k + 1) & x & myStr.SubString2(k + 2, myStr.Length)
		Next
		Return myStr
	Catch
		Return myStr
	End Try
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

private Sub AddCodeLine(lst As List, cl As String)
	cl = cl.Replace("~","$")
	lst.Add(cl)
End Sub

private Sub BuildCodeLine(lst As List) As String
	Dim allCode As String = Join(CRLF, lst)
	allCode = allCode.Replace("~","$")
	Return allCode
End Sub

private Sub AddCode(sb1 As StringBuilder, cl As String)
	cl = cl.Replace("~","$")
	sb1.Append(cl).Append(CRLF)
End Sub

private Sub AddComment(sb1 As StringBuilder, cl As String)
	cl = cl.Replace("~","$")
	sb1.Append($"'${cl}"$).Append(CRLF)
End Sub

private Sub BuildCode(sb1 As StringBuilder) As String
	Dim allCode As String = sb.ToString
	sb.Initialize
	allCode = allCode.Replace("~","$")
	Return allCode
End Sub

Sub BuildPage
	BANano.Await(ExtractForeignKeys)
	BANano.Await(BuildDataModels)
	BANano.Await(BuildClassGlobals)
	BANano.Await(BuildShow)
	BANano.Await(BuildTable)
	BANano.Await(BuildPreferenceDialog)
	BANano.Await(BuildMount)
	'***** ADD
	AddCode(sb, $"'executed when the add button is clicked on the table"$)
	AddCode(sb, $"Private Sub tbl${properTable}_Add (e As BANanoEvent)"$)
	AddCode(sb, $"e.preventdefault"$)
	AddCode(sb, "app.PagePause")
	If fTables.Size > 0 Then
		AddCode(sb, "'load foreign tables")
		For Each k As String In fTables.Keys
			Dim ftP As String = app.UI.ProperCase(k)
			AddCode(sb, $"BANano.Await(Load${ftP})"$)
		Next
	End If
	AddCode(sb, $"BANano.Await(AddMode)"$)
	AddCode(sb, "app.PageResume")
	AddCode(sb, $"End Sub"$)
	'***** REFRESH
	AddCode(sb, $"'executed when the refresh button is clicked on the table"$)
	AddCode(sb, $"Private Sub tbl${properTable}_Refresh (e As BANanoEvent)"$)
	AddCode(sb, $"e.PreventDefault"$)
	AddCode(sb, $"app.PagePause"$)
	AddCode(sb, $"BANano.Await(Mount${properTable})"$)
	AddCode(sb, $"app.pageresume"$)
	AddCode(sb, $"End Sub"$)
	'***** BACK
	AddCode(sb, $"'executed when the back button is clicked on the table"$)
	AddCode(sb, $"Private Sub tbl${properTable}_Back (e As BANanoEvent)"$)
	AddCode(sb, $"e.preventdefault"$)
	AddCode(sb, $"'show the dashboard"$)
	AddCode(sb, $"pgDashboard.Show(app)"$)
	AddCode(sb, $"'Main.MyApp.ShowDashBoard"$)
	AddCode(sb, $"End Sub"$)
	BANano.Await(BuildAddMode)
	BANano.Await(BuildEditMode)
	BANano.Await(BuildCloneMode)
	BANano.Await(BuildEditRow)
	BANano.Await(BuildDeleteRow)
	BANano.Await(BuildCloneRow)
	BANano.Await(BuildTableChange)
	BANano.Await(BuildPreferenceWork)
	BANano.Await(BuildFileInputs)
	BANano.Await(BuildCompute)
	BANano.Await(BuildForeignCalls)
	'
	Dim sout As String = sb.ToString
	Dim res As String = app.UI.BeautifyB4X(sout)
	app.DownloadTextFile(res, $"${stablename}.bas"$)
End Sub

private Sub ExtractForeignKeys
	fkeys.Initialize
	fTables.Initialize
	' 
	For Each record As Map In properties
		Dim spropname As String = record.Get("propname")
		Dim bpropactive As Boolean = record.Get("propactive")
		bpropactive = app.UI.CBool(bpropactive)
		If bpropactive = False Then Continue
		'
		Dim spropforeigntable As String = record.Get("propforeigntable")
		spropforeigntable = app.UI.CStr(spropforeigntable)
		Dim spropforeignfield As String = record.Get("propforeignfield")
		spropforeignfield = app.UI.CStr(spropforeignfield)
		Dim spropforeigndisplayfield As String = record.Get("propforeigndisplayfield")
		spropforeigndisplayfield = app.UI.CStr(spropforeigndisplayfield)
		Dim spropforeigndisplayfield1 As String = record.Get("propforeigndisplayfield1")
		spropforeigndisplayfield1 = app.UI.CStr(spropforeigndisplayfield1)
		Dim spropforeigndisplayfield2 As String = record.Get("propforeigndisplayfield2")
		spropforeigndisplayfield2 = app.UI.CStr(spropforeigndisplayfield2)
		Dim spropcolumntype As String = record.Get("propcolumntype")
		spropcolumntype = app.UI.CStr(spropcolumntype)
		'
		If spropforeigntable <> "" Then
			If spropforeignfield <> "" Then
				If spropforeigndisplayfield <> "" Then
					Dim xkey As String = $"${spropforeigntable}.${spropforeignfield}.${spropforeigndisplayfield}.${spropforeigndisplayfield1}.${spropforeigndisplayfield2}.${spropname}.${spropcolumntype}"$
					fkeys.Put(xkey, xkey)
					fTables.Put(spropforeigntable, spropforeigntable)
					mcompute.Put(spropname, xkey)
					lIgnore.add(spropname)
				End If
			End If
		End If	
	Next
End Sub

private Sub BuildForeignCalls
	loads.Initialize 
	For Each fk As String In fkeys.Keys
		Dim ft As String = app.ui.MvField(fk, 1, ".")
		Dim ff As String = app.ui.MvField(fk, 2, ".")
		Dim fd As String = app.ui.MvField(fk, 3, ".")
		Dim fd1 As String = app.ui.MvField(fk, 4, ".")
		Dim fd2 As String = app.ui.MvField(fk, 5, ".")
		Dim ofld As String = app.ui.MvField(fk, 6, ".")
		Dim ctype As String = app.UI.MvField(fk, 7, ".")
		'to build the fields we will select
		Dim mflds As Map = CreateMap()
		If ff <> "" Then mflds.Put(ff, ff)
		If fd <> "" Then mflds.Put(fd, fd)
		If fd1 <> "" Then mflds.Put(fd1, fd1)
		If fd2 <> "" Then mflds.Put(fd2, fd2)
		'
		Dim flds As List
		flds.Initialize 
		For Each k As String In mflds.Keys
			flds.Add(k)
		Next
		flds.Sort(True)
		'
		Dim sfields As String = app.UI.ListToArrayVariable(flds)
		sfields = sfields.Replace(QUOTE & QUOTE, QUOTE)
		'
		Dim ftName As String = ProperCase(ft)
		'
		If loads.ContainsKey(ftName) = False Then
		AddCode(sb, $"'Load ${ftName}"$)
		AddCode(sb, $"Private Sub Load${ftName}				'ignore"$)
		AddCode(sb, $"${ftName}Object.Initialize"$)
		AddCode(sb, $"${ftName}ObjectM.Initialize"$)
		'
		AddCode(sb, $"Dim db As SDUIMySQLREST"$)
		AddCode(sb, $"db.Initialize(Me, "${ft}", Main.ServerURL, "${ft}")"$)
		AddCode(sb, $"'link this api class to the data models"$)
		AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
		AddCode(sb, $"'the api file will be api.php"$)
		AddCode(sb, $"db.ApiFile = "api""$)
		AddCode(sb, $"'we are using an api key to make calls"$)
		AddCode(sb, $"db.UseApiKey = True"$)
		AddCode(sb, $"'specify the api key"$)
		AddCode(sb, $"db.ApiKey = Main.APIKey"$)
		AddCode(sb, $"'clear any where clauses"$)
		AddCode(sb, $"db.CLEAR_WHERE"$)
		If orderby.Size > 0 Then
			For Each ordercolumn As String In orderby
				AddCode(sb, $"'order by ${ordercolumn}"$)
				AddCode(sb, $"db.ADD_ORDER_BY("${ordercolumn}")"$)
			Next
		End If
		AddCode(sb, $"db.ADD_FIELDS(Array(${sfields}))"$)
		AddCode(sb, $"'execute a select all"$)
		AddCode(sb, $"BANano.Await(db.SELECT_ALL)"$)
		'
		AddCode(sb, $"Do While db.NextRow"$)
		AddCode(sb, $"Dim rec As Map = db.Record"$)
		AddCode(sb, $"Dim s${ff} As String = db.GetString("${ff}")"$)
		AddCode(sb, $"Dim s${fd} As String = db.GetString("${fd}")"$)
		'
		If fd1 <> "" Then
			AddCode(sb, $"Dim s${fd1} As String = db.GetString("${fd1}")"$)
		End If
		'
		If fd2 <> "" Then
			AddCode(sb, $"Dim s${fd2} As String = db.GetString("${fd2}")"$)
		End If
		'
		If (fd1 <> "") And (fd2 <> "") Then
			AddCode(sb, $"${ft}Object.Put(s${ff}, s${fd} & " " & s${fd1} & " " & s${fd2})"$)
		else if (fd1 <> "") And (fd2 = "") Then
			AddCode(sb, $"${ft}Object.Put(s${ff}, s${fd} & " " & s${fd1})"$)
		Else
			AddCode(sb, $"${ft}Object.Put(s${ff}, s${fd})"$)
		End If
		AddCode(sb, $"${ft}ObjectM.Put(s${ff}, rec)"$)
		AddCode(sb, $"Loop"$)
		AddCode(sb, $"End Sub"$)
		End If
		'
		Select Case ctype
		Case "Select", "SelectFromList", "SelectGroup"
		Case Else
			AddCode(sb, $"'compute value for ${ofld}"$)
			AddCode(sb, $"Private Sub ComputeValue${ProperCase(ofld)}(item As Map) As String			'ignore"$)
			AddCode(sb, $"Dim s${ofld} As String = item.Get("${ofld}")"$)
			AddCode(sb, $"Dim t${ofld} As String = ${ftName}Object.GetDefault(s${ofld}, "")"$)
			AddCode(sb, $"'Dim rec As Map = ${ftName}ObjectM.Get(s${ofld})"$)
			AddCode(sb, $"Return t${ofld}"$)
			AddCode(sb, $"End Sub"$)
		End Select
		loads.Put(ftName, ftName)
	Next
End Sub

private Sub BuildDataModels
	'"String","Int","Double","Blob","Bool","Date"
	Dim lString As List
	lString.Initialize 
	Dim lInt As List
	lInt.Initialize 
	Dim lDouble As List
	lDouble.Initialize 
	Dim lBlob As List
	lBlob.Initialize 
	Dim lBool As List
	lBool.Initialize 
	Dim lDate As List
	lDate.Initialize 
	Dim lText As List
	lText.Initialize 
	'
	Dim mysql As SDUIMySQLREST
	mysql.Initialize(Me, "db", "url", stablename)
	mysql.PrimaryKey = sprimarykey
	If bautoincrement Then mysql.AutoIncrement = sprimarykey
	'	
	AddCode(sb, $"'****** Add this to pgIndex/BROWSERApp.AddDatabaseSchemas"$)
	AddCode(sb,$"app.AddDataModel("${stablename.tolowercase}", "${sprimarykey}", ${bautoincrement})"$)
	
	For Each record As Map In properties
		Dim spropname As String = record.Get("propname")
		Dim bpropactive As Boolean = record.Get("propactive")
		bpropactive = app.UI.CBool(bpropactive)
		Dim spropdatatype As String = record.Get("propdatatype")
		If bpropactive = False Then Continue
		'
		Select Case spropdatatype
		Case "LongText"
			lText.Add(spropname)
			mysql.SchemaAddLongText1(spropname)
		Case "String"
			lString.Add(spropname)
			mysql.SchemaAddText1(spropname)
		Case "Int"
			lInt.Add(spropname)
			mysql.SchemaAddInt1(spropname)
		Case "Double"
			lDouble.Add(spropname)
			mysql.SchemaAddFloat1(spropname)
		Case "Blob"
			lBlob.Add(spropname)
			mysql.SchemaAddBlob1(spropname)
		Case "Bool"
			lBool.Add(spropname)
			mysql.SchemaAddBoolean1(spropname)
		Case "Date"
			lDate.Add(spropname)
			mysql.SchemaAddText1(spropname)
		End Select
	Next	
	'
	Dim sout As String = ""
	If lText.Size > 0 Then
		sout = app.UI.ListToArrayVariable(lText)
		sout = sout.Replace(QUOTE & QUOTE, QUOTE)
		AddCode(sb, $"app.AddDataModelLongTexts("${stablename.tolowercase}", Array(${sout}))"$)
	End If
	If lString.Size > 0 Then
		sout = app.UI.ListToArrayVariable(lString)
		sout = sout.Replace(QUOTE & QUOTE, QUOTE)
		AddCode(sb, $"app.AddDataModelStrings("${stablename.tolowercase}", Array(${sout}))"$)
	End If
	If lInt.Size > 0 Then
		sout = app.UI.ListToArrayVariable(lInt)
		sout = sout.Replace(QUOTE & QUOTE, QUOTE)
		AddCode(sb, $"app.AddDataModelIntegers("${stablename.tolowercase}", Array(${sout}))"$)
	End If
	If lDouble.Size > 0 Then
		sout = app.UI.ListToArrayVariable(lDouble)
		sout = sout.Replace(QUOTE & QUOTE, QUOTE)
		AddCode(sb, $"app.AddDataModelDoubles("${stablename.tolowercase}", Array(${sout}))"$)
	End If
	If lBlob.Size > 0 Then
		sout = app.UI.ListToArrayVariable(lBlob)
		sout = sout.Replace(QUOTE & QUOTE, QUOTE)
		AddCode(sb, $"app.AddDataModelBlobs("${stablename.tolowercase}", Array(${sout}))"$)
	End If
	If lBool.Size > 0 Then
		sout = app.UI.ListToArrayVariable(lBool)
		sout = sout.Replace(QUOTE & QUOTE, QUOTE)
		AddCode(sb, $"app.AddDataModelBooleans("${stablename.tolowercase}", Array(${sout}))"$)
	End If
	'
	AddCode(sb, $"'****** Add this to pgIndex/BROWSERApp.CreateDrawerMenu"$)
	AddCode(sb, $"drawermenu.AddMenuItemIconText("pg-${stablename.tolowercase}", "", "${splural}", False)"$)
	'
	AddCode(sb, $"'****** Add this to pgIndex/BROWSERApp.drawermenu_ItemClick [Case Statement]"$)
	AddCode(sb, $"'****** Ensure you have created a code module named 'pg${ProperCase(stablename)}' also with the source code."$)
	
	AddCode(sb, $"Case "${stablename.tolowercase}""$)
	AddCode(sb, $"pg${ProperCase(stablename)}.Show(App)"$)
	'
	AddCode(sb, $"'****** Open your database and execute this script to create your table"$)
	AddCode(sb, mysql.CreateTable)
	AddCode(sb, "'*****")
End Sub

private Sub BuildTableChange
	AddCode(sb, $"'trap changes on table inline edits"$)
	AddCode(sb, $"Private Sub tbl${properTable}_ChangeRow (Row As Int, Value As Object, Column As String, item As Map)"$)
	For Each record As Map In properties
		Dim spropname As String = record.Get("propname")
		Dim spropdatatype As String = record.Get("propdatatype")
		spropdatatype = app.UI.CStr(spropdatatype)
		If spropdatatype = "None" Then AddCode(sb, $"item.Remove("${spropname}")"$)
	Next
	AddCode(sb, $"'update the map column with value"$)
	AddCode(sb, $"item.Put(Column, Value)"$)
	AddCode(sb, $"'update the row contents at this position"$)
	AddCode(sb, $"tbl${properTable}.UpdateRow(Row, item)"$)
	AddCode(sb, $"'"$)
	Dim xFiles As String = app.UI.ListToArrayVariable(tblFiles)
	If xFiles.Length > 0 Then
		AddCode(sb, $"Select Case Column"$)
		AddCode(sb, $"Case ${xFiles}"$)
		AddCode(sb, $"app.PagePause"$)
		AddCode(sb, $"Dim fText As String = BANano.Await(app.readAsDataURLWait(Value))"$)
		AddCode(sb, $"'Dim fJSON As Map = BANano.Await(app.readAsJsonWait(Value))"$)
		AddCode(sb, $"'Dim fBuffer As Object = BANano.Await(app.readAsArrayBufferWait(Value))"$)
		AddCode(sb, $"'Dim fText As String = BANano.Await(app.readAsTextWait(Value))"$)
		AddCode(sb, $"'value is the file object, upload the file"$)
		AddCode(sb, $"Dim fd As FileObject = UploadFileWait(Value)"$)
		AddCode(sb, $"'get the file name"$)
		AddCode(sb, $"Dim fn As String = fd.FileName"$)
		AddCode(sb, $"'get the status of the upload"$)
		AddCode(sb, $"Dim sstatus As String = fd.Status"$)
		AddCode(sb, $"Select Case sstatus"$)
		AddCode(sb, $"Case "error""$)
		AddCode(sb, $"app.PageResume"$)
		AddCode(sb, $"Return"$)
		AddCode(sb, $"Case "success""$)
		AddCode(sb, $"End Select"$)
		AddCode(sb, $"'get the upload full path"$)
		AddCode(sb, $"Dim fp As String = fd.FullPath"$)
		AddCode(sb, $"'tbl${properTable}.SetRowColumn("avatar", Row, fp)"$)
		AddCode(sb, $"app.PageResume"$)
		AddCode(sb, $"End Select"$)
	End If
	'
	AddCode(sb, $"'get the CurrentPage"$)
	AddCode(sb, $"tbl${properTable}.SaveLastAccessedPage"$)
	AddCode(sb, $"'process the update ${ssingular}"$)
	AddCode(sb, $"'execute an update using the id of the ${ssingular}"$)
	AddCode(sb, $"Dim db As SDUIMySQLREST"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	AddCode(sb, $"db.ApiFile = "api""$)
	AddCode(sb, $"db.UseApiKey = True"$)
	AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	AddCode(sb, $"db.SetRecord(item)"$)
	AddCode(sb, $"'execute an update"$)
	AddCode(sb, $"Dim newid As String = banano.Await(db.UPDATE)"$)
	AddCode(sb, $"If newid <> "" Then"$)
	AddCode(sb, $"app.ShowSwalSuccess("The ${ssingular} has been saved!")"$)
	AddCode(sb, $"Else"$)
	AddCode(sb, $"app.ShowSwalError("The ${ssingular} could not be saved, please try again!")"$)
	AddCode(sb, $"Return"$)
	AddCode(sb, $"End If"$)
	AddCode(sb, $"'re-load the ${splural}"$)
	AddCode(sb, $"banano.Await(Mount${properTable})"$)
	AddCode(sb, $"'go to the last page"$)
	AddCode(sb, $"banano.Await(tbl${properTable}.ShowLastAccessedPage)"$)
	AddCode(sb, $"tbl${properTable}.SetRowEnsureVisible(Row)"$)
	'
'	If lpropmerge.Size > 0 Then
'		Dim xMerge As String = ListToArrayVariable(lpropmerge)
'		AddCode(sb, $"'merge these columns"$)
'		AddCode(sb, $"'tbl${tblName}.SetFooterColumnsMerge(Array(${xMerge}))"$)
'	End If
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildCompute
	For Each record As Map In properties
		Dim spropname As String = record.Get("propname")
		Dim bpropactive As Boolean = record.Get("propactive")
		Dim bpropcomputevalue As Boolean = record.Get("propcomputevalue")
		Dim bpropcomputering As Boolean = record.Get("propcomputering")
		Dim bpropcomputecolor As Boolean = record.Get("propcomputecolor")
		Dim bpropcomputetextcolor As Boolean = record.Get("propcomputetextcolor")
		Dim bpropcomputebgcolor As Boolean = record.Get("propcomputebgcolor")
		Dim bpropcomputeclass As Boolean = record.Get("propcomputeclass")
		Dim spropcolumntype As String = record.Get("propcolumntype")
			
		bpropactive = app.UI.CBool(bpropactive)
		bpropcomputering = app.UI.CBool(bpropcomputering)
		bpropcomputecolor = app.UI.CBool(bpropcomputecolor)
		bpropcomputetextcolor = app.UI.CBool(bpropcomputetextcolor)
		bpropcomputebgcolor = app.UI.CBool(bpropcomputebgcolor)
		bpropcomputeclass = app.UI.CBool(bpropcomputeclass)
		bpropcomputevalue = app.UI.CBool(bpropcomputevalue)
		'
		If bpropactive = False Then Continue
		If spropcolumntype = "None" Then Continue
		'
		Select Case spropcolumntype
		Case "Select", "SelectFromList", "SelectGroup"
			bpropcomputevalue = False
		End Select
		
		If bpropcomputevalue Then
			'determine if this is referenced by a foreign table
			Dim iPos As Int = lIgnore.IndexOf(spropname)
			If iPos >= 0 Then Continue
			AddCode(sb, $"'compute value for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeValue${ProperCase(spropname)}(item As Map) As Object			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)			
		End If
		
		If bpropcomputering Then
			AddCode(sb, $"'compute ring for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeRing${ProperCase(spropname)}(item As Map) As Boolean			'ignore"$)
			AddCode(sb, $"Dim b${spropname} As Boolean = False"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"item.put("ringcolor", "")"$)
			AddCode(sb, $"return b${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)
		End If
		'
		If bpropcomputecolor Then
			AddCode(sb, $"'compute color for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeColor${ProperCase(spropname)}(item As Map) As String			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"item.put("color", "")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)
		End If
		'
		If bpropcomputebgcolor Then
			AddCode(sb, $"'compute background color for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeBackgroundColor${ProperCase(spropname)}(item As Map) As String			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"item.put("color", "")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)
		End If
		'
		If bpropcomputetextcolor Then
			AddCode(sb, $"'compute text color for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeTextColor${ProperCase(spropname)}(item As Map) As String			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"item.put("textcolor", "")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)
		End If	
		'
		If bpropcomputeclass Then
			AddCode(sb, $"'compute class for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeClass${ProperCase(spropname)}(item As Map) As String			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)
		End If
	Next
End Sub


private Sub BuildClassGlobals
	AddCode(sb, $"Sub Process_Globals"$)
	AddCode(sb, $"Private BANano As BANano 							'ignore"$)
	AddCode(sb, $"Private app As SDUI5App							'ignore"$)
	AddCode(sb, $"Private tbl${properTable} As SDUI5Table			'ignore"$)
	AddCode(sb, $"Private pref${properTable} As SDUI5Preferences	'ignore"$)
	AddCode(sb, $"Private SDUI5Column1 As SDUI5Column				'ignore"$)
	AddCode(sb, $"Private SDUI5Column2 As SDUI5Column2				'ignore"$)
	AddCode(sb, $"Private Mode As String = ""						'CRUD control"$)
	AddCode(sb, $"Private toDeleteID As String						'id of item to delete"$)
	AddCode(sb, $"Private toDeleteName As String					'name of item to delete"$)
	AddCode(sb, $"Public name As String = "${stablename}""$)
	AddCode(sb, $"Public title As String = "${splural}""$)
	AddCode(sb, $"Public icon As String = "./assets/page.svg""$)
	AddCode(sb, $"Public color As String = "#000000""$)
	If fTables.Size > 0 Then
		AddCode(sb, "'define foreign table maps")
		For Each k As String In fTables.Keys
			Dim ftP As String = app.UI.ProperCase(k)
			AddCode(sb, $"Private ${ftP}Object As Map"$)
			AddCode(sb, $"Private ${ftP}ObjectM As Map"$)
		Next
	End If
	AddCode(sb, $"End Sub"$)
End Sub


private Sub BuildTableColumns
	tblFiles.Initialize 
	For Each prop As Map In properties
		Dim spropname As String = prop.Get("propname")
		Dim sproptitle As String = prop.Get("proptitle")
		Dim bpropactive As Boolean = prop.Get("propactive")
		Dim bpropcomputevalue As Boolean = prop.Get("propcomputevalue")
		Dim bpropcomputering As Boolean = prop.Get("propcomputering")
		Dim bpropcomputecolor As Boolean = prop.Get("propcomputecolor")
		Dim bpropcomputetextcolor As Boolean = prop.Get("propcomputetextcolor")
		Dim bpropcomputebgcolor As Boolean = prop.Get("propcomputebgcolor")
		Dim bpropcomputeclass As Boolean = prop.Get("propcomputeclass")
		Dim spropalign As String = prop.Get("propalign")
		spropalign = app.UI.CStr(spropalign)
		Dim bpropcolumnvisible As Boolean = prop.Get("propcolumnvisible")
		Dim spropcolumntype As String = prop.Get("propcolumntype")
		spropcolumntype = app.UI.CStr(spropcolumntype)
		Dim bProptotal As Boolean = prop.Get("proptotal")
		Dim spropicon As String = prop.Get("propicon")
		spropicon = app.UI.CStr(spropicon)
		Dim sPropcolor As String = prop.Get("propcolor")
		sPropcolor = app.UI.CStr(sPropcolor)
		Dim spropsize As String = prop.Get("propsize")
		spropsize = app.UI.CStr(spropsize)
		Dim spropshape As String = prop.Get("propshape")
		spropshape = app.UI.CStr(spropshape)
		Dim spropsubtitle1 As String = prop.Get("propsubtitle1")
		spropsubtitle1 = app.UI.CStr(spropsubtitle1)
		Dim spropsubtitle2 As String = prop.Get("propsubtitle2")
		spropsubtitle2 = app.UI.CStr(spropsubtitle2)
		Dim spropheight As String = prop.get("propheight")
		spropheight = app.UI.CStr(spropheight)
		Dim bpropreadonly As Boolean = prop.Get("propreadonly")
		Dim spropbgcolor As String = prop.Get("propbgcolor")
		spropbgcolor = app.UI.CStr(spropbgcolor)
		Dim sproptextcolor As String = prop.Get("proptextcolor")
		sproptextcolor = app.UI.CStr(sproptextcolor)
		Dim spropprefix As String = prop.Get("propprefix")
		spropprefix = app.UI.CStr(spropprefix)
		Dim spropdateformat As String = prop.Get("propdateformat")
		spropdateformat = app.UI.CStr(spropdateformat)
		Dim spropprepend As String = prop.Get("propprepend")
		spropprepend = app.UI.CStr(spropprepend)
		Dim spropsuffix As String = prop.Get("propsuffix")
		spropsuffix = app.UI.CStr(spropsuffix)
		Dim spropappend As String = prop.Get("propappend")
		spropappend = app.UI.CStr(spropappend)
		Dim sproprows As String = prop.Get("proprows")
		sproprows = app.UI.CStr(sproprows)
		Dim spropwidth As String = prop.Get("propwidth")
		spropwidth = app.UI.CStr(spropwidth)
		Dim spropmax As String = prop.Get("propmax")
		spropmax = app.UI.CStr(spropmax)
		Dim spropstart As String = prop.Get("propstart")
		spropstart = app.UI.CStr(spropstart)
		Dim sproplocale As String = prop.Get("proplocale")
		sproplocale = app.UI.CStr(sproplocale)
		Dim spropdisplayformat As String = prop.Get("propdisplayformat")
		spropdisplayformat = app.UI.CStr(spropdisplayformat)
		Dim spropstep As String = prop.Get("propstep")
		spropstep = app.UI.CStr(spropstep)
		Dim sRawpropoptions As String = prop.Get("propoptions")
		sRawpropoptions = app.UI.CStr(sRawpropoptions)
		Dim bpropmultiple As Boolean = prop.Get("propmultiple")
		'		
		bpropcolumnvisible = app.UI.CBool(bpropcolumnvisible)
		bpropactive = app.UI.CBool(bpropactive)
		bpropcomputering = app.UI.CBool(bpropcomputering)
		bpropcomputecolor = app.UI.CBool(bpropcomputecolor)
		bpropcomputetextcolor = app.UI.CBool(bpropcomputetextcolor)
		bpropcomputebgcolor = app.UI.CBool(bpropcomputebgcolor)
		bpropcomputeclass = app.UI.CBool(bpropcomputeclass)
		bpropcomputevalue = app.UI.CBool(bpropcomputevalue)
		bpropactive = app.UI.CBool(bpropactive)
		bProptotal = app.UI.CBool(bProptotal)
		bpropreadonly = app.UI.CBool(bpropreadonly)
		bpropmultiple = app.UI.CBool(bpropmultiple)
		'
		If bpropactive = False Then Continue
		If spropcolumntype = "None" Then Continue
		'
		Select Case spropcolumntype
		Case "Select", "SelectFromList", "SelectGroup"
			bpropcomputevalue = False
		End Select
		
		Select Case spropcolumntype.tolowercase
		Case "action"
			'tbl.AddColumnAction("btnstart", "Start/Stop", "fa-solid fa-play", app.COLOR_FUCHSIA)
			AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropicon}", "${sPropcolor}")"$)
			Case "avatar"
				'tbl.AddColumnAvatar("avatar", "Employee", "4rem", app.MASK_CIRCLE)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropshape}")"$)
			Case "avatargroup"
				'tbl.AddColumnAvatarGroup("agroup", "Resources", "2rem", app.MASK_CIRCLE)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropshape}")"$)
			Case "avatarplaceholder"
				'tbl.AddColumnAvatarPlaceholder("hours", "Hours", "3rem", app.MASK_CIRCLE, "primary")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropshape}", "${sPropcolor}")"$)
			Case "avatartitle"
				'tb2.AddColumnAvatarTitle("avatar", "Employee", "4rem", "name", app.MASK_CIRCLE)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropsubtitle1}", "${spropshape}")"$)
			Case "avatartitlesubtitle"
				'tb3.AddColumnAvatarTitleSubTitle("avatar", "Employee", "4rem", "name", "country", app.MASK_HEXAGON)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropsubtitle1}", "${spropsubtitle2}", "${spropshape}")"$)
			Case "badge"
				'tbl.AddColumnBadge("name", "Category", "item.color")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${sPropcolor}")"$)
			Case "badgeavatartitle"
				'tbl.AddColumnBadgeAvatarTitle("avatar", "Resource", "10", "name", "")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropsubtitle1}", "${sPropcolor}")"$)
			Case "badgegroup"
				'tbl.AddColumnBadgeGroupColor("tags", "Tags", "10", "success")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}Color("${spropname}", "${sproptitle}", "${spropheight}","${sPropcolor}")"$)
			Case "button"
				'tb4.AddColumnButton("btnload", "Process", app.COLOR_INDIGO)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${sPropcolor}")"$)
			Case "checkbox"
				'tbl.AddColumnCheckBox("active", "Active", app.COLOR_PRIMARY, False)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${sPropcolor}", ${bpropreadonly})"$)
			Case "clicklink"
				'tbl.AddColumnClickLink("clicklink", "Aisle", "clicklink", app.color_neutral)
				Dim source As String = spropsubtitle1
				If spropsubtitle1 = "" Then source = spropname
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${source}", app.color_link)"$)
			Case "color"
				'tbl.AddColumnColor("color", "Category", "name")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsubtitle1}")"$)
			Case "date"
				'tbl.AddColumnDate("trandate", "Date")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}")"$)
			Case "datepicker"
				'tb4.AddColumnDatePicker("dob", "Date of Birth", False, "Y-m-d H:i", "F j, Y H:i", False, False, False)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, "${spropdateformat}", "${spropdisplayformat}", False, ${bpropmultiple}, False, "${sproplocale}")"$)
			Case "datetime"
				'tbl.AddColumnDate("trandate", "Date")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}")"$)
			Case "datetimepicker"
				'tbl.AddColumnDateTimePicker("dod", "Date of Death", False, "d/m/Y H:i", "d/m/Y H:i", "es")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, "${spropdateformat}", "${spropdisplayformat}", "${sproplocale}")"$)
			Case "dialer"
				'tb4.AddColumnDialer("clicklink", "Qty", False, 0, 1, 100)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, ${spropstart}, ${spropstep}, ${spropmax})"$)
			Case "email"
				'tbl.AddColumnEmail("email", "Email", "name", app.color_accent)
				Dim source As String = spropsubtitle1
				If spropsubtitle1 = "" Then source = spropname
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${source}", app.COLOR_INFO)"$)
			Case "file"
				tblFiles.add(spropname)
				'tbl.AddColumnFileInput("product", "Choose Product")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}")"$)
			Case "fileinputprogress"
				tblFiles.add(spropname)
				'tbl.AddColumnFileInputProgress("pfile", "File Progress", "lg", "40px", "fa-solid fa-arrow-up-from-bracket", "secondary")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropwidth}", "${spropicon}", "${sPropcolor}")"$)
			Case "filesize"
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}")"$)
			Case "icon"
				'tbl.AddColumnIcon("sm", "Social Media", app.SIZE_LG, "item.color")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${sPropcolor}")"$)
			Case "icontitle"
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropsubtitle1}", "${sPropcolor}")"$)
			Case "image"
				'tbl.AddColumnImage("image", "Image", "40px", "40px", app.MASK_SQUIRCLE)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropwidth}", "${spropheight}", "${spropshape}")"$)
			Case "link"
				'tbl.AddColumnLink("link", "Link", "link", app.color_primary)
				
				Dim source As String = spropsubtitle1
				If spropsubtitle1 = "" Then source = spropname
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${source}", app.COLOR_INFO)"$)
			Case "menu"
				Dim optionsmx As String = Json2CreateMap(sRawpropoptions)
				'tbl.AddColumnDropDown("menu", "Menu", "fa-solid fa-ellipsis-vertical", "#3f51b5", CreateMap("edit":"Edit","delete":"Delete","clone":"Clone","print":"Print"))
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropicon}", "${sPropcolor}", ${optionsmx})"$)
			Case "money"
				'tbl.AddColumnMoney("gross", "Gross")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}")"$)
			Case "normal"
				'tbl.AddColumn("attrname", "Name")
				AddCode(sb, $"tbl${properTable}.AddColumn("${spropname}", "${sproptitle}")"$)
			Case "number"
				'tbl.AddColumnNumber("email", "Email", False)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly})"$)
			Case "password"
				'tbl.AddColumnPassword("email", "Email", False)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly})"$)
			Case "passwordgroup"
				'tb4.AddColumnPasswordGroup("name", "Password", False)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly})"$)
			Case "placeholder"
				'tbl.AddColumnPlaceHolder("attrname", "Name")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}")"$)
			Case "progress"
				'tb2.AddColumnProgress("progress", "Completed", 40, 100, "item.color")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropwidth}", ${spropmax}, "${sPropcolor}")"$)
			Case "radial"
				'tb4.AddColumnRadialProgress("progress", "Progress", "3.5rem", "item.color", "%")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", ${sPropcolor}, "${spropsuffix}")"$)
			Case "radiogroup"
				'tb4.AddColumnRadioGroup("gender", "Gender", False, app.COLOR_PRIMARY, CreateMap("male":"Male","female":"Female"))
				Dim optionsmx As String = Json2CreateMap(sRawpropoptions)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, "${sPropcolor}", ${optionsmx})"$)
			Case "range"
				'tb4.AddColumnRange("hours", "Hours", 8, app.COLOR_ACCENT)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${spropmax}, "${sPropcolor}")"$)
			Case "rating"
				'tbl.AddColumnRating("rate", "Satisfaction", 3, "item.color")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${sPropcolor}")"$)
			Case "select"
				'tbl.AddColumnSelect("country", "Country", False, True, options)
				Dim optionsmx As String = Json2CreateMap(sRawpropoptions)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, True, ${optionsmx})"$)
			Case "selectgroup"
				Dim optionsmx As String = Json2CreateMap(sRawpropoptions)
				'tb4.AddColumnSelectGroup("country", "County", False, True, CreateMap(), "", "fa-brands fa-linkedin", "", "fa-regular fa-flag")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, true, ${optionsmx}, "${spropprefix}", "${spropprepend}", "${spropsuffix}", "${spropappend}")"$)
			Case "textarea"
				'tbl.AddColumnTextARea("job", "Job Title", False, 5)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, ${sproprows})"$)
			Case "textbox"
				'tbl.AddColumnTextBox("email", "Email", False)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly})"$)
			Case "telephone"
				'tbl.AddColumnTelephone("email", "Email", False)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly})"$)
			Case "textboxgroup"
				'tb4.AddColumnTextBoxGroup("id", "Price", True, "$", "", "00", "")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, "${spropprefix}", "${spropprepend}", "${spropsuffix}", "${spropappend}")"$)
			Case "thousand"
				'tbl.AddColumnThousand("population", "Population")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}")"$)
			Case "timepicker"
				'tbl.AddColumnTimePicker("tob", "Time of Birth", False, "H:i", True)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, "${spropdateformat}", True)"$)
			Case "titlesubtitle"
				'tbl.AddColumnTitleSubTitle("job", "Job", "country")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsubtitle1}")"$)
			Case "toggle"
				'tbl.AddColumnToggle("attrdesigner", "Designer", app.COLOR_ACCENT, False)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${sPropcolor}", ${bpropreadonly})"$)
			Case "website"
				'tbl.AddColumnEmail("email", "Email", "name", app.color_accent)
				Dim source As String = spropsubtitle1
				If spropsubtitle1 = "" Then source = spropname
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${source}", app.color_info)"$)
		End Select
		'
		If bProptotal Then
			AddCode(sb, $"tbl${properTable}.SetColumnSumValues("${spropname}", True)"$)
		End If
		'
		If bpropcomputevalue Then
			AddComment(sb, $"Set the computed value for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeValue("${spropname}", "ComputeValue${ProperCase(spropname)}")"$)
		End If
		
		If bpropcomputering Then
			AddComment(sb, $"Set the computed ring for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeRing("${spropname}", "ComputeRing${ProperCase(spropname)}")"$)
		End If
		
		If bpropcomputecolor Then
			AddComment(sb, $"Set the computed color for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeColor("${spropname}", "ComputeColor${ProperCase(spropname)}")"$)
		End If
		'
		If bpropcomputebgcolor Then
			AddComment(sb, $"Set the computed background color for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeBackgroundColor("${spropname}", "ComputeBackgroundColor${ProperCase(spropname)}")"$)
		End If
		'
		If bpropcomputetextcolor Then
			AddComment(sb, $"Set the computed text color for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeTextColor("${spropname}", "ComputeTextColor${ProperCase(spropname)}")"$)
		End If
		
		If bpropcomputeclass Then
			AddComment(sb, $"Set the computed class for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeClass("${spropname}", "ComputeClass${ProperCase(spropname)}")"$)
		End If
		'
		If sproptextcolor <> "" Then AddCode(sb, $"tbl${properTable}.SetColumnTextColor("${spropname}", "${sproptextcolor}")"$)
		If spropbgcolor <> "" Then AddCode(sb, $"tbl${properTable}.SetColumnBackgroundColor("${spropname}", "${spropbgcolor}")"$)
		If spropalign <> "left" And spropalign <> "" Then
			AddCode(sb, $"tbl${properTable}.SetColumnAlign("${spropname}", "${spropalign}")"$)
		End If
		If bpropcolumnvisible = False Then
			AddCode(sb, $"tbl${properTable}.SetColumnVisible("${spropname}", False)"$)
		End If
	Next
End Sub

private Sub BuildShow
	AddCode(sb, $"'executed when the page is shown"$)
	AddCode(sb, $"Public Sub Show(MainApp As SDUI5App)"$)
	AddCode(sb, $"app = MainApp"$)
	AddCode(sb, $"app.PagePause"$)
	AddCode(sb, $"'load the layout"$)
	AddCode(sb, $"BANano.LoadLayout(app.PageView, "${stablename}view")"$)
	AddCode(sb, $"'update navbar title on baselayout"$)
	AddCode(sb, $"pgIndex.UpdateTitle("${splural}")"$)
	AddCode(sb, $"'lets set up the table"$)
	AddCode(sb, $"tbl${properTable}.Title = "${splural}""$)
	AddCode(sb, $"BANano.Await(BuildTable${properTable})"$)
	AddCode(sb, $"'setup the preference dialog"$)
	AddCode(sb, $"BANano.Await(BuildPreference${properTable})"$)
	AddCode(sb, $"'mount the records"$)
	AddCode(sb, $"BANano.Await(Mount${properTable})"$)
	AddCode(sb, $"app.PageResume"$)
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildPreferenceDialog
	AddCode(sb, $"Private Sub BuildPreference${properTable}"$)
	BANano.Await(BuildPreferences($"pref${properTable}"$))
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildTable
	AddCode(sb, $"Private Sub BuildTable${properTable}"$)
	AddCode(sb, $"'lets create the table columns"$)
	AddCode(sb, $"tbl${properTable}.Title = "${splural}""$)
	AddCode(sb, $"tbl${properTable}.HasAlphaChooser = ${balphachooser}"$)
	AddCode(sb, $"tbl${properTable}.AlphaChooserColumn = "${salphachooserfield}""$)
	AddCode(sb, $"tbl${properTable}.HasColumnChooser = ${bcolumnchooser}"$)
	AddCode(sb, $"tbl${properTable}.AddNewTooltip = "Add a ${ssingular}""$)
	AddCode(sb, $"tbl${properTable}.RefreshTooltip = "Refresh ${splural}""$)
	AddCode(sb, $"'tbl${properTable}.DeleteAllTooltip = "Delete all ${splural}""$)
	AddCode(sb, $"'tbl${properTable}.UploadToolbarTooltip = "Upload ${splural}""$)
	AddCode(sb, $"'tbl${properTable}.DownloadToolbarTooltip = "Download ${splural}""$)
	AddCode(sb, $"tbl${properTable}.BackTooltip = "Go back to Dashboard""$)
	AddCode(sb, $"tbl${properTable}.HasEdit = True"$)
	AddCode(sb, $"tbl${properTable}.EditTooltip = "Edit ${ssingular}""$)
	AddCode(sb, $"tbl${properTable}.HasClone = True"$)
	AddCode(sb, $"tbl${properTable}.CloneTooltip = "Clone ${ssingular}""$)
	AddCode(sb, $"tbl${properTable}.HasDelete = True"$)
	AddCode(sb, $"tbl${properTable}.DeleteTooltip = "Delete ${ssingular}""$)
	AddCode(sb, $"tbl${properTable}.AlphaChooserColumn = "${sdisplayvalue}""$)
	
	AddCode(sb, $"'lets build the table columns"$)
	BANano.Await(BuildTableColumns)
	AddCode(sb, $"'add edit/delete/clone buttons"$)
	AddCode(sb, $"tbl${properTable}.AddDesignerColums"$)
	
	AddCode(sb, $"'move back button to the end"$)
	AddCode(sb, $"tbl${properTable}.MoveBackButton"$)
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildMount
	AddCode(sb, $"'load ${splural} records from the database"$)
	AddCode(sb, $"Private Sub Mount${properTable}"$)
	AddCode(sb, $"SDUI5Column1.Size = 12"$)
	AddCode(sb, $"SDUI5Column2.Visible = False"$)
	AddCode(sb, $"'turn to add mode"$)
	AddCode(sb, "app.PagePause")
	If fTables.Size > 0 Then
		AddCode(sb, "'load foreign tables")
		For Each k As String In fTables.Keys
			Dim ftP As String = app.UI.ProperCase(k)
			AddCode(sb, $"BANano.Await(Load${ftP})"$)
		Next
	End If
	AddCode(sb, $"'select ${splural} from the database"$)
	AddCode(sb, $"Dim db As SDUIMySQLREST"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"'link this api class to the data models"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	AddCode(sb, $"'the api file will be api.php"$)
	AddCode(sb, $"db.ApiFile = "api""$)
	AddCode(sb, $"'we are using an api key to make calls"$)
	AddCode(sb, $"db.UseApiKey = True"$)
	AddCode(sb, $"'specify the api key"$)
	AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	AddCode(sb, $"'clear any where clauses"$)
	AddCode(sb, $"db.CLEAR_WHERE"$)
	If orderby.Size > 0 Then
		For Each ordercolumn As String In orderby
			AddCode(sb, $"'order by ${ordercolumn}"$)
			AddCode(sb, $"db.ADD_ORDER_BY("${ordercolumn}")"$)
		Next
	End If
	AddCode(sb, $"'execute a select all"$)
	AddCode(sb, $"BANano.Await(db.SELECT_ALL)"$)
	'
	If fTables.Size > 0 Then
		AddCode(sb, "'load foreign tables content on columns")
		For Each k As String In fkeys.Keys
			Dim ft As String = app.ui.MvField(k, 1, ".")
			Dim ofld As String = app.ui.MvField(k, 6, ".")
			AddCode(sb, $"tbl${properTable}.SetColumnOptions("${ofld}", ${ft}Object)"$)
		Next
	End If
	AddCode(sb, $"'load the records to the table"$)
	AddCode(sb, $"tbl${properTable}.SetItemsPaginate(db.result)"$)
	AddCode(sb, "app.PageResume")
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildAddMode
	AddCode(sb, $"'executed to prepare the preference dialog for adding a new record"$)
	AddCode(sb, $"private Sub AddMode"$)
	AddCode(sb, $"'turn the mode to CREATE"$)
	AddCode(sb, $"Mode = "C""$)
	AddCode(sb, $"SDUI5Column1.Size = 8"$)
	AddCode(sb, $"SDUI5Column2.Visible = True"$)
	AddCode(sb, $"'change the title of the pref dialog"$)
	AddCode(sb, $"pref${properTable}.Title = "Add ${ssingular}""$)
	If mcompute.Size > 0 Then
		For Each k As String In mcompute.Keys
			Dim v As String = mcompute.Get(k)
			Dim stbl As String = app.ui.MvField(v, 1, ".")
			AddCode(sb, $"BANano.Await(pref${properTable}.SetPropertySelectMap("${k}", ${stbl}Object))"$)
		Next
	End If
	AddCode(sb, $"'set the default properties"$)
	AddCode(sb, $"BANano.Await(pref${properTable}.SetPropertyBagDefaults)"$)
	If bautoincrement = False Then
		AddCode(sb, $"pref${properTable}.SetPropertyValue("${sprimarykey}", app.NextID)"$)
	Else
		AddCode(sb, $"pref${properTable}.SetPropertyValue("${sprimarykey}", -1)"$)
	End If
	If focuson.Size > 0 Then
		AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
		AddCode(sb, $"pref${properTable}.SetPropertyFocus("${focuson.Get(0)}")"$)
	End If	
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildEditMode
	AddCode(sb, $"'executed when a table row is being edited"$)
	AddCode(sb, $"private Sub EditMode(item As Map)"$)
	AddCode(sb, $"'turn the mode to UPDATE"$)
	AddCode(sb, $"Mode = "U""$)
	AddCode(sb, $"SDUI5Column1.Size = 8"$)
	AddCode(sb, $"SDUI5Column2.Visible = True"$)	
	AddCode(sb, $"'change the title of the pref dialog"$)
	AddCode(sb, $"pref${properTable}.Title = "Edit ${ssingular}""$)
	If mcompute.Size > 0 Then
		For Each k As String In mcompute.Keys
			Dim v As String = mcompute.Get(k)
			Dim stbl As String = app.ui.MvField(v, 1, ".")
			AddCode(sb, $"BANano.Await(pref${properTable}.SetPropertySelectMap("${k}", ${stbl}Object))"$)
		Next
	End If
	AddCode(sb, $"'set the properties"$)
	AddCode(sb, $"banano.Await(pref${properTable}.SetPropertyBagDefaults)"$)
	For Each record As Map In properties
		Dim spropname As String = record.Get("propname")
		Dim spropdatatype As String = record.Get("propdatatype")
		spropdatatype = app.UI.CStr(spropdatatype)
		If spropdatatype = "None" Then AddCode(sb, $"item.Remove("${spropname}")"$)
	Next
	AddCode(sb, $"pref${properTable}.PropertyBag = item"$)
	If focuson.Size > 0 Then
		AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
		AddCode(sb, $"pref${properTable}.SetPropertyFocus("${focuson.Get(0)}")"$)
	End If	
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildCloneMode
	AddCode(sb, $"'executed when a table row is being edited"$)
	AddCode(sb, $"private Sub CloneMode(item As Map)"$)
	AddCode(sb, $"'turn the mode to UPDATE"$)
	AddCode(sb, $"Mode = "C""$)
	AddCode(sb, $"SDUI5Column1.Size = 8"$)
	AddCode(sb, $"SDUI5Column2.Visible = True"$)
	AddCode(sb, $"'change the title of the pref dialog"$)
	AddCode(sb, $"pref${properTable}.Title = "Add ${ssingular}""$)
	If mcompute.Size > 0 Then
		For Each k As String In mcompute.Keys
			Dim v As String = mcompute.Get(k)
			Dim stbl As String = app.ui.MvField(v, 1, ".")
			AddCode(sb, $"BANano.Await(pref${properTable}.SetPropertySelectMap("${k}", ${stbl}Object))"$)
		Next
	End If
	AddCode(sb, $"'set the properties"$)
	AddCode(sb, $"banano.Await(pref${properTable}.SetPropertyBagDefaults)"$)
	AddCode(sb, $"item.Put("${sprimarykey}", app.NextID)"$)
	For Each record As Map In properties
		Dim spropname As String = record.Get("propname")
		Dim spropdatatype As String = record.Get("propdatatype")
		spropdatatype = app.UI.CStr(spropdatatype)
		If spropdatatype = "None" Then AddCode(sb, $"item.Remove("${spropname}")"$)
	Next
	AddCode(sb, $"pref${properTable}.PropertyBag = item"$)
	If focuson.Size > 0 Then
		AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
		AddCode(sb, $"pref${properTable}.SetPropertyFocus("${focuson.Get(0)}")"$)
	End If	
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildEditRow
	AddCode(sb, $"'executed when a table row edit button is clicked"$)
	AddCode(sb, $"Private Sub tbl${properTable}_EditRow (Row As Int, item As Map)"$)
	AddCode(sb, $"app.pagepause"$)
	If fTables.Size > 0 Then
		AddCode(sb, "'load foreign tables")
		For Each k As String In fTables.Keys
			Dim ftP As String = app.UI.ProperCase(k)
			AddCode(sb, $"BANano.Await(Load${ftP})"$)
		Next
	End If
	AddCode(sb, $"Dim sID As String = item.Get("${sprimarykey}")"$)
	AddCode(sb, $"'execute a read from the database"$)
	AddCode(sb, $"Dim db As SDUIMySQLREST"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"'assign schema"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	AddCode(sb, $"'use api key"$)
	AddCode(sb, $"db.ApiFile = "api""$)
	AddCode(sb, $"db.UseApiKey = True"$)
	AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	AddCode(sb, $"'read the record"$)
	AddCode(sb, $"Dim rec As Map = BANano.Await(db.READ(sID))"$)
	AddCode(sb, $"BANano.Await(EditMode(rec))"$)
	AddCode(sb, $"app.pageresume"$)
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildDeleteRow
	AddCode(sb, $"'executed when a table row delete button is clicked"$)
	AddCode(sb, $"Private Sub tbl${properTable}_DeleteRow (Row As Int, item As Map)"$)
	AddCode(sb, $"'get the id and ${sdisplayvalue} of the item to delete"$)
	AddCode(sb, $"toDeleteID = item.Get("${sprimarykey}")"$)
	AddCode(sb, $"toDeleteName = item.Get("${sdisplayvalue}")"$)
	AddCode(sb, $"'build the confirmation message"$)
	AddCode(sb, $"Dim sMsg As String = ~"<h2 class="text-2xl font-bold mt-2">~{toDeleteName}</h2><br>Are you sure that you want to delete this ${ssingular}?"~"$)
	AddCode(sb, $"'wait for the user to confirm"$)
	AddCode(sb, $"Dim bConfirm As Boolean = BANano.Await(app.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))"$)
	AddCode(sb, $"'the user has click No, exit"$)
	AddCode(sb, $"If bConfirm = False Then Return"$)
	AddCode(sb, $"app.pagepause"$)
	AddCode(sb, $"'execute a delete using the id of the ${ssingular}"$)
	AddCode(sb, $"Dim db As SDUIMySQLREST"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	AddCode(sb, $"db.ApiFile = "api""$)
	AddCode(sb, $"db.UseApiKey = True"$)
	AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	AddCode(sb, $"BANano.Await(db.DELETE(toDeleteID))"$)
	AddCode(sb, $"'reload the ${splural}"$)
	AddCode(sb, $"BANano.Await(Mount${properTable})"$)
	AddCode(sb, $"app.pageresume"$)
	AddCode(sb, $"End Sub"$)
End Sub

Sub BuildCloneRow
	AddCode(sb, $"'executed when a table row clone button is clicked"$)
	AddCode(sb, $"Private Sub tbl${properTable}_CloneRow (Row As Int, item As Map)"$)
	AddCode(sb, "app.PagePause")
	If fTables.Size > 0 Then
		AddCode(sb, "'load foreign tables")
		For Each k As String In fTables.Keys
			Dim ftP As String = app.UI.ProperCase(k)
			AddCode(sb, $"BANano.Await(Load${ftP})"$)
		Next
	End If
	AddCode(sb, $"Dim sID As String = item.Get("${sprimarykey}")"$)
	AddCode(sb, $"'execute a read from the database"$)
	AddCode(sb, $"Dim db As SDUIMySQLREST"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"'assign schema"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	AddCode(sb, $"'use api key"$)
	AddCode(sb, $"db.ApiFile = "api""$)
	AddCode(sb, $"db.UseApiKey = True"$)
	AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	AddCode(sb, $"'read the record"$)
	AddCode(sb, $"Dim rec As Map = BANano.Await(db.READ(sID))"$)
	AddCode(sb, $"BANano.Await(CloneMode(rec))"$)
	AddCode(sb, "app.PageResume")
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildPreferenceWork
	AddCode(sb, $"'executed when a Apply button is clicked on the preference dialog"$)
	AddCode(sb, $"Private Sub pref${properTable}_Yes_Click (e As BANanoEvent)"$)
	AddCode(sb, $"e.PreventDefault"$)
	AddCode(sb, $"'validate the property bag details"$)
	AddCode(sb, $"Dim bValid As Boolean = BANano.Await(pref${properTable}.IsPropertyBagValid)"$)
	AddCode(sb, $"If bValid = False Then"$)
	AddCode(sb, $"BANano.Await(app.ShowSwalErrorWait("${ssingular}", "The ${ssingular.tolowercase} details are not complete!", "Ok"))"$)
	AddCode(sb, $"Return"$)
	AddCode(sb, $"End If"$)
	AddCode(sb, $"'get the property bag fields as a map"$)
	AddCode(sb, $"Dim pb As Map = BANano.Await(pref${properTable}.PropertyBag)"$)
	For Each record As Map In properties
		Dim spropname As String = record.Get("propname")
		Dim spropdatatype As String = record.Get("propdatatype")
		spropdatatype = app.UI.CStr(spropdatatype)
		If spropdatatype = "None" Then AddCode(sb, $"pb.Remove("${spropname}")"$)
	Next
	AddCode(sb, $"app.pagepause"$)
	AddCode(sb, $"'open the database and save the record"$)
	AddCode(sb, $"Dim db As SDUIMySQLREST"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	AddCode(sb, $"db.ApiFile = "api""$)
	AddCode(sb, $"db.UseApiKey = True"$)
	AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	AddCode(sb, $"'pass the map record"$)
	AddCode(sb, $"db.SetRecord(pb)"$)
	AddCode(sb, $"Select Case Mode"$)
	AddCode(sb, $"Case "C""$)
	AddCode(sb, $"'create a new record"$)
	AddCode(sb, $"Dim nid As String = BANano.Await(db.CREATE)"$)
	AddCode(sb, $"Case "U""$)
	AddCode(sb, $"'update an existing record"$)
	AddCode(sb, $"Dim nid As String = BANano.Await(db.UPDATE)"$)
	AddCode(sb, $"End Select"$)
	AddCode(sb, $"If nid <> "" Then"$)
	AddCode(sb, $"app.ShowToastSuccess("${ssingular} has been created/updated.")"$)
	AddCode(sb, $"Else"$)
	AddCode(sb, $"app.ShowToastError("${ssingular} has NOT been created/updated. Please try again")"$)
	AddCode(sb, "Return")
	AddCode(sb, $"End If"$)
	AddCode(sb, $"BANano.Await(Mount${properTable})"$)
	AddCode(sb, $"app.pageresume"$)
	AddCode(sb, $"End Sub"$)
	
	AddCode(sb, $"'executed when a Cancel button is clicked on the preference dialog"$)
	AddCode(sb, $"Private Sub pref${properTable}_No_Click (e As BANanoEvent)"$)
	AddCode(sb, $"SDUI5Column1.Size = 12"$)
	AddCode(sb, $"SDUI5Column2.Visible = False"$)
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildPreferences(mName As String)
	For Each record As Map In properties
		Dim sproptype As String = record.get("proptype")
		Dim spropname As String = record.get("propname")
		Dim sproptitle As String = record.get("proptitle")
		Dim spropvalue As String = record.get("propvalue")
		Dim sproprequired As Boolean = record.get("proprequired")
		sproprequired = app.UI.CBool(sproprequired)
		Dim spropreadonly As Boolean = record.get("propreadonly")
		spropreadonly = app.UI.CBool(spropreadonly)
		Dim spropenabled As String = record.get("propenabled")
		spropenabled = app.UI.CBool(spropenabled)
		Dim spropvisible As String = record.get("propvisible")
		spropvisible = app.UI.CBool(spropvisible)
		Dim spropoptions As String = record.get("propoptions")
		Dim spropsize As String = record.get("propsize")
		Dim spropthickness As String = record.Get("propthickness")
		Dim spropwidth As String = record.get("propwidth")
		Dim spropheight As String = record.get("propheight")
		Dim spropshape As String = record.get("propshape")
		Dim spropurl As String = record.get("propurl")
		Dim spropcolor As String = record.get("propcolor")
		Dim spropactivecolor As String = record.Get("propactivecolor")
		Dim bpropsingleselect As Boolean = record.GetDefault("propsingleselect", False)
		bpropsingleselect = app.UI.CBool(bpropsingleselect)
		Dim spropstart As String = record.get("propstart")
		Dim spropstep As String = record.get("propstep")
		Dim spropmax As String = record.get("propmax")
		Dim spropdateformat As String = record.Get("propdateformat")
		Dim spropdisplayformat As String = record.Get("propdisplayformat")
		Dim sproptime24 As String = record.Get("proptime24")
		Dim sproplocale As String = record.Get("proplocale")
		Dim spropprefix As String = record.get("propprefix")
		Dim spropicon As String = record.get("propicon")
		spropicon = app.UI.CStr(spropicon)
		Dim sPropBadgeTextColor As String = record.GetDefault("propbadgetextcolor", "")
		sPropBadgeTextColor = app.UI.CStr(sPropBadgeTextColor)
		Dim spropiconsize As String = record.Get("propiconsize")
		spropiconsize = app.UI.CStr(spropiconsize)
		'
		Dim bPropBadgeRound As Boolean = record.GetDefault("propbadgeround", False)
		bPropBadgeRound = app.UI.CBool(bPropBadgeRound)
		Dim sPropBadgeValue As String = record.GetDefault("propbadgevalue", "")
		sPropBadgeValue = app.UI.CStr(sPropBadgeValue)
		Dim sPropHintId As String = record.getDefault("prophintid", "")
		sPropHintId = app.UI.CStr(sPropHintId)
		Dim bPropMultiple As Boolean = record.GetDefault("propmultiple", False)
		bPropMultiple = app.UI.CBool(bPropMultiple)
		Dim bPropSetHint As Boolean = record.getdefault("propsethint", False)
		bPropSetHint = app.UI.CBool(bPropSetHint)
		Dim bPropSetTooltip As Boolean = record.GetDefault("propsettooltip", False)
		bPropSetTooltip = app.UI.CBool(bPropSetTooltip)
		Dim sPropTextColor As String = record.GetDefault("proptextcolor", "")
		sPropTextColor = app.UI.CStr(sPropTextColor)
		Dim sPropBadgeColor As String = record.GetDefault("propbadgecolor", "")
		sPropBadgeColor = app.UI.CStr(sPropBadgeColor)
		Dim bPropSetBadge As Boolean = record.getdefault("propsetbadge", False)
		bPropSetBadge = app.UI.CBool(bPropSetBadge)
		Dim sproptextsize As String = record.GetDefault("proptextsize", "")
		sproptextsize = app.UI.CStr(sproptextsize)
		Dim spropsingleselect As String = record.GetDefault("propsingleselect", False)
		spropsingleselect = app.UI.CBool(spropsingleselect)
		Dim spropaccept As String = record.GetDefault("propaccept", "")
		spropaccept = app.UI.CStr(spropaccept)
		Dim bpropring As Boolean = record.GetDefault("propring", False)
		bpropring = app.UI.CBool(bpropring)
		Dim spropringcolor As String = record.GetDefault("propringcolor", "")
		spropringcolor = app.UI.CStr(spropringcolor)
		Dim spropringoffset As String = record.GetDefault("propringoffset", "")
		spropringoffset = app.UI.CStr(spropringoffset)
		Dim spropringoffsetcolor As String = record.GetDefault("propringoffsetcolor", "")
		spropringoffsetcolor = app.UI.CStr(spropringoffsetcolor)
		Dim bproponlinestatus As Boolean = record.GetDefault("proponlinestatus", False)
		bproponlinestatus = app.UI.CBool(bproponlinestatus)
		Dim bproponline As Boolean = record.GetDefault("proponline", False)
		bproponline = app.UI.CBool(bproponline)
		Dim sprophandlediameter As String = record.GetDefault("prophandlediameter", "16")
		sprophandlediameter = app.UI.CStr(sprophandlediameter)
		Dim spropwheeldiameter As String = record.GetDefault("propwheeldiameter", "200")
		spropwheeldiameter = app.UI.CStr(spropwheeldiameter)
		Dim spropwheelthickness As String = record.GetDefault("propwheelthickness", "20")
		spropwheelthickness = app.UI.CStr(spropwheelthickness)
		Dim spropwheelposition As String = record.GetDefault("propwheelposition", "top-end")
		spropwheelposition = app.UI.CStr(spropwheelposition)
		'
		spropprefix = app.UI.CStr(spropprefix)
		Dim spropsuffix As String = record.get("propsuffix")
		spropsuffix = app.UI.CStr(spropsuffix)
		Dim spropprepend As String = record.get("propprepend")
		spropprepend = app.UI.CStr(spropprepend)
		Dim spropappend As String = record.get("propappend")
		spropappend = app.UI.CStr(spropappend)
		sproplocale = app.UI.CStr(sproplocale)
		If sproplocale = "" Then sproplocale = "en"
		'
		Dim spropmaxlen As String = record.getdefault("propmaxlen","")
		spropmaxlen = app.UI.CStr(spropmaxlen)
		Dim sproprows As String = record.getdefault("proprows","")
		sproprows = app.UI.CStr(sproprows)
		Dim spropalign As String = record.GetDefault("propalign", "left")
		spropalign = app.UI.CStr(spropalign)
		'
		Dim bpropactive As Boolean = record.Get("propactive")
		bpropactive = app.UI.CBool(bpropactive)
		If bpropactive = False Then Continue
		
		'
		Select Case sproptype
			Case "ToolbarActionButton"
'					PropertyBuilder.Append($"${mName}.AddToolbarActionButton("${spropname}", "${sproptitle}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
			Case "ToolbarFileUpload"
'					PropertyBuilder.Append($"${mName}.AddToolbarFileUpload("${spropname}", "${spropicon}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarActionButtonIcon"
'					PropertyBuilder.Append($"${mName}.AddToolbarActionButtonIcon("${spropname}", "${spropicon}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarDropDown"
'					PropertyBuilder.Append($"${mName}.AddToolbarDropDown("${spropname}", "${spropcolor}", "${sproptitle}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarSelect"
'				Dim optm As Map = OptionsToMap(spropoptions)
'					PropertyBuilderMap(PropertyBuilder, spropname, optm)
'					PropertyBuilder.Append($"${mName}.AddToolbarSelect("${spropname}", "${spropprepend}", "${spropappend}", ${spropname}options)"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarTextBox"
'					PropertyBuilder.Append($"${mName}.AddToolbarTextBox("${spropname}", "${spropprepend}", "${spropappend}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarFileUpload1"
'					PropertyBuilder.Append($"${mName}.AddToolbarFileUpload1("${spropname}", "${spropicon}", "${spropcolor}", ${bPropMultiple})"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarActionButtonIconTextColor"
'					PropertyBuilder.Append($"${mName}.AddToolbarActionButtonIconTextColor("${spropname}", "${spropicon}", "${spropcolor}", "${sPropTextColor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarDropDownIconTextColor"
'					PropertyBuilder.Append($"${mName}.AddToolbarDropDownIconTextColor("${spropname}", "${spropicon}", "${spropcolor}", "${sPropTextColor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarDropDownIcon"
'					PropertyBuilder.Append($"${mName}.AddToolbarDropDownIcon("${spropname}", "${spropicon}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarDropDownAvatar"
'					PropertyBuilder.Append($"${mName}.AddToolbarDropDownAvatar("${spropname}", "${spropsize}", "${spropurl}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarSelectNormal"
'				Dim optm As Map = OptionsToMap(spropoptions)
'					PropertyBuilderMap(PropertyBuilder, spropname, optm)
'					PropertyBuilder.Append($"${mName}.AddToolbarSelectNormal("${spropname}", ${spropname}options)"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ToolbarTextBoxNormal"
'					PropertyBuilder.Append($"${mName}.AddToolbarTextBoxNormal("${spropname}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "Button"
'					PropertyBuilder.Append($"${mName}.AddPropertyActionButton("${spropname}", "${sproptitle}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "ButtonIcon"
'					PropertyBuilder.Append($"${mName}.AddPropertyActionButtonIcon("${spropname}", "${spropicon}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
			Case "Placeholder"
				sb.Append($"${mName}.AddPropertyPlaceHolder("${spropname}", "${sproptitle}", "${spropvalue}")"$).Append(CRLF)
			Case "Label"
				sb.Append($"${mName}.AddPropertyLabel("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}")"$).Append(CRLF)
			Case "Email"
				sb.Append($"${mName}.AddPropertyEmail("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}")"$).Append(CRLF)
			Case "Link"
				sb.Append($"${mName}.AddPropertyLink("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}")"$).Append(CRLF)
			Case "DatePicker"
				sb.Append($"${mName}.AddPropertyDatePicker("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired}, "${spropdateformat}", "${spropdisplayformat}", "${sproplocale}")"$).Append(CRLF)
			Case "DateTimePicker"
				sproptime24 = app.UI.CBool(sproptime24)
				sb.Append($"${mName}.AddPropertyDateTimePicker("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired}, "${spropdateformat}", "${spropdisplayformat}", ${sproptime24}, "${sproplocale}")"$).Append(CRLF)
			Case "TimePicker"
				sproptime24 = app.UI.CBool(sproptime24)
				sb.Append($"${mName}.AddPropertyTimePicker("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired},"${spropdateformat}", "${spropdisplayformat}", ${sproptime24}, "${sproplocale}")"$).Append(CRLF)
			Case "TextBox"
				sb.Append($"${mName}.AddPropertyTextBox("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired})"$).Append(CRLF)
				If spropmaxlen <> "" Then
					sb.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
				End If
			Case "ColorWheel", "Color"
				sb.Append($"${mName}.AddPropertyColorWheel("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired}, "${sprophandlediameter}", ${spropwheeldiameter}, ${spropwheelthickness}, "${spropwheelposition}")"$).Append(CRLF)
			Case "TextBoxGroup"
				sb.Append($"${mName}.AddPropertyTextBoxGroup("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired})"$).Append(CRLF)
'				If spropprefix <> "" Then
'					SetPropertyPrefix(spropname, spropprefix)
'					If IsLive = False Then
'						sb.Append($"${mName}.SetPropertyPrefix("${spropname}", "${spropprefix}")"$).Append(CRLF)
'					End If
'				End If
'				If spropsuffix <> "" Then
'					SetPropertySuffix(spropname, spropsuffix)
'					If IsLive = False Then
'						sb.Append($"${mName}.SetPropertySuffix("${spropname}", "${spropsuffix}")"$).Append(CRLF)
'					End If
'				End If
				If spropprepend <> "" Then
					sb.Append($"${mName}.SetPropertyPrependIcon("${spropname}", "${spropprepend}")"$).Append(CRLF)
				End If
				If spropappend <> "" Then
					sb.Append($"${mName}.SetPropertyAppendIcon("${spropname}", "${spropappend}")"$).Append(CRLF)
				End If
				If spropmaxlen <> "" Then
					sb.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
				End If
			Case "PasswordGroup"
				sb.Append($"${mName}.AddPropertyPasswordGroup("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired})"$).Append(CRLF)
'				If spropprefix <> "" Then
'					SetPropertyPrefix(spropname, spropprefix)
'					If IsLive = False Then sb.Append($"${mName}.SetPropertyPrefix("${spropname}", "${spropprefix}")"$).Append(CRLF)
'				End If
'				If spropsuffix <> "" Then
'					SetPropertySuffix(spropname, spropsuffix)
'					If IsLive = False Then sb.Append($"${mName}.SetPropertySuffix("${spropname}", "${spropsuffix}")"$).Append(CRLF)
'				End If
				If spropprepend <> "" Then
					sb.Append($"${mName}.SetPropertyPrependIcon("${spropname}", "${spropprepend}")"$).Append(CRLF)
				End If
				If spropappend <> "" Then
					sb.Append($"${mName}.SetPropertyAppendIcon("${spropname}", "${spropappend}")"$).Append(CRLF)
				End If
				If spropmaxlen <> "" Then
					sb.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
				End If
			Case "SelectGroup"
				Dim optm As Map = OptionsToMap(spropoptions)
				PropertyBuilderMap(sb, spropname, optm)
				sb.Append($"${mName}.AddPropertySelectGroup("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired}, ${spropname}options)"$).Append(CRLF)
'				If spropprefix <> "" Then
'					SetPropertyPrefix(spropname, spropprefix)
'					If IsLive = False Then sb.Append($"${mName}.SetPropertyPrefix("${spropname}", "${spropprefix}")"$).Append(CRLF)
'				End If
'				If spropsuffix <> "" Then
'					SetPropertySuffix(spropname, spropsuffix)
'					If IsLive = False Then sb.Append($"${mName}.SetPropertySuffix("${spropname}", "${spropsuffix}")"$).Append(CRLF)
'				End If
				If spropprepend <> "" Then
					sb.Append($"${mName}.SetPropertyPrependIcon("${spropname}", "${spropprepend}")"$).Append(CRLF)
				End If
				If spropappend <> "" Then
					sb.Append($"${mName}.SetPropertyAppendIcon("${spropname}", "${spropappend}")"$).Append(CRLF)
				End If
			Case "Password"
				sb.Append($"${mName}.AddPropertyPassword("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired})"$).Append(CRLF)
				If spropmaxlen <> "" Then
					sb.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
				End If
			Case "Number"
				spropvalue = app.UI.Val(spropvalue)
				spropstart = app.UI.CInt(spropstart)
				spropstep = app.UI.CInt(spropstep)
				spropmax = app.UI.CInt(spropmax)
				sb.Append($"${mName}.AddPropertyNumber("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired})"$).Append(CRLF)
				If BANano.parseInt(spropmax) > 0 Then
					sb.Append($"${mName}.SetPropertyMinValue("${spropname}", ${spropstart})"$).Append(CRLF)
					sb.Append($"${mName}.SetPropertyMaxValue("${spropname}", ${spropmax})"$).Append(CRLF)
					sb.Append($"${mName}.SetPropertyStepValue("${spropname}", ${spropstep})"$).Append(CRLF)
				End If
			Case "PlusMinus"
				spropvalue = app.UI.Val(spropvalue)
				spropstart = app.UI.CInt(spropstart)
				spropstep = app.UI.CInt(spropstep)
				spropmax = app.UI.CInt(spropmax)
				sb.Append($"${mName}.AddPropertyPlusMinus("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired}, "${spropstart}", "${spropstep}", "${spropmax}")"$).Append(CRLF)
			Case "Telephone"
				sb.Append($"${mName}.AddPropertyTelephone("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired})"$).Append(CRLF)
			Case "TextArea"
				sb.Append($"${mName}.AddPropertyTextArea("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired}, "${sproprows}")"$).Append(CRLF)
				If spropmaxlen <> "" Then
					sb.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
				End If
			Case "Select"
				Dim optm As Map = OptionsToMap(spropoptions)
				PropertyBuilderMap(sb, spropname, optm)
				sb.Append($"${mName}.AddPropertySelect("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired}, ${spropname}options)"$).Append(CRLF)
			Case "FileInput"
				sb.Append($"${mName}.AddPropertyFileInput("${spropname}", "${sproptitle}", ${sproprequired}, "${spropaccept}", ${bPropMultiple})"$).Append(CRLF)
			Case "FileInputProgress"
				sb.Append($"${mName}.AddPropertyFileInputProgress("${spropname}", "${sproptitle}", "${spropsize}", "${spropicon}", "${spropiconsize}", "${spropcolor}", "${sPropTextColor}")"$).Append(CRLF)
				If spropaccept <> "" Then sb.Append($"${mName}.SetPropertyFileInputAccept("${spropname}", "${spropaccept}")"$).Append(CRLF)
				If bPropMultiple <> "" Then sb.Append($"${mName}.SetPropertyFileInputMultiple("${spropname}", ${bPropMultiple})"$).Append(CRLF)
			Case "CamCorder"
				sb.Append($"${mName}.AddPropertyCamCorder("${spropname}", "${sproptitle}", "${spropsize}", "${spropiconsize}", "${spropcolor}", "${sPropTextColor}")"$).Append(CRLF)
			Case "Camera"
				sb.Append($"${mName}.AddPropertyCamera("${spropname}", "${sproptitle}", "${spropsize}", "${spropiconsize}", "${spropcolor}", "${sPropTextColor}")"$).Append(CRLF)
			Case "Microphone"
				sb.Append($"${mName}.AddPropertyMicrophone("${spropname}", "${sproptitle}", "${spropsize}", "${spropiconsize}", "${spropcolor}", "${sPropTextColor}")"$).Append(CRLF)
			Case "Avatar"
				sb.Append($"${mName}.AddPropertyAvatar("${spropname}", "${sproptitle}", "${spropsize}", "${spropshape}", "${spropurl}")"$).Append(CRLF)
				sb.Append($"${mName}.SetPropertyAvatarRing("${spropname}", ${bpropring}, "${spropringcolor}", "${spropringoffset}", "${spropringoffsetcolor}")"$).Append(CRLF)
				sb.Append($"${mName}.SetPropertyAvatarOnline("${spropname}", ${bproponlinestatus}, ${bproponline})"$).Append(CRLF)
			Case "AvatarPlaceholder"
				sb.Append($"${mName}.AddPropertyAvatarPlaceholder("${spropname}", "${sproptitle}", "${spropvalue}", "${spropsize}", "${spropshape}", "${spropcolor}", "${sPropTextColor}", "${sproptextsize}")"$).Append(CRLF)
			Case "AvatarGroup"
				Dim imags As List = app.UI.StrParse(";", spropoptions)
				Dim simgs As String = app.UI.JoinQuote(";", imags)
				sb.Append($"${mName}.AddPropertyAvatarGroup("${spropname}", "${sproptitle}", "${spropsize}", "${spropshape}", Array(${simgs}))"$).Append(CRLF)
			Case "Signature"
'				AddPropertySignaturePad(spropname, sproptitle, , sproprequired, , spropwidth, spropheight, "jpeg")
'				If IsLive = False Then sb.Append($"${mName}.AddPropertySignaturePad("${spropname}", "${sproptitle}", "${}", ${sproprequired}, "${}", "${spropwidth}", "${spropheight}", "jpeg")"$).Append(CRLF)
'			Case "RollDate"
'				spropstart = App.UI.CInt(spropstart)
'				spropstep = App.UI.CInt(spropstep)
'				spropmax = App.UI.CInt(spropmax)
'				'
'				Dim d1Options As RollDateOptions
'				d1Options.Initialize
'				If spropstart <> 0 Then d1Options.beginYear = spropstart
'				If spropmax <> 0 Then d1Options.endYear = spropmax
'				If spropstep <> 0 Then d1Options.MinStep = spropstep
'				If spropvalue <> "" Then d1Options.Value = spropvalue
'				If spropdateformat <> "" Then d1Options.DateTimeFormat = spropdateformat
'				AddPropertyRollDateTime(spropname, sproptitle, , sproprequired, , d1Options)
'				If IsLive = False Then
'					sb.Append($"Dim ${spropname}options As RollDateOptions"$).append(CRLF)
'					sb.Append($"${spropname}options.Initialize"$).append(CRLF)
'					If spropstart <> 0 Then sb.Append($"${spropname}options.beginYear = ${spropstart}"$).append(CRLF)
'					If spropmax <> 0 Then sb.Append($"${spropname}options.endYear = ${spropmax}"$).append(CRLF)
'					If spropstep <> 0 Then sb.Append($"${spropname}options.MinStep = ${spropstep}"$).append(CRLF)
'					If spropvalue <> "" Then sb.Append($"${spropname}options.Value = ${spropvalue}"$).append(CRLF)
'					If spropdateformat <> "" Then sb.Append($"${spropname}options.DateTimeFormat = "${spropdateformat}""$).append(CRLF)
'					sb.Append($"${mName}.AddPropertyRollDateTime("${spropname}", "${sproptitle}", "${}", ${sproprequired}, "${}", ${spropname}options)"$).Append(CRLF)
'				End If
			Case "Image"
				sb.Append($"${mName}.AddPropertyImage("${spropname}", "${sproptitle}", "${spropwidth}", "${spropheight}", "${spropshape}", "${spropurl}")"$).Append(CRLF)
			Case "Progress"
				spropvalue = app.UI.cint(spropvalue)
				sb.Append($"${mName}.AddPropertyProgress("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropstart}", "${spropstep}", "${spropmax}")"$).Append(CRLF)
			Case "Range"
				spropvalue = app.UI.CInt(spropvalue)
				sb.Append($"${mName}.AddPropertyRange("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropstart}", "${spropstep}", "${spropmax}")"$).Append(CRLF)
			Case "Dialer"
				spropvalue = app.UI.CInt(spropvalue)
				spropstart = app.UI.CInt(spropstart)
				spropstep = app.UI.CInt(spropstep)
				spropmax = app.UI.CInt(spropmax)
				sb.Append($"${mName}.AddPropertyDialer("${spropname}", "${sproptitle}", ${spropvalue}, ${sproprequired}, ${spropstart}, ${spropstep}, ${spropmax})"$).Append(CRLF)
			Case "CheckBox"
				spropvalue = app.UI.CBool(spropvalue)
				sb.Append($"${mName}.AddPropertyCheckBox("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}")"$).Append(CRLF)
				sb.Append($"${mName}.SetPropertyChecked("${spropname}", ${spropvalue})"$).Append(CRLF)
			Case "Toggle"
				spropvalue = app.UI.CBool(spropvalue)
				sb.Append($"${mName}.AddPropertyToggle("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}")"$).Append(CRLF)
				sb.Append($"${mName}.SetPropertyChecked("${spropname}", ${spropvalue})"$).Append(CRLF)
			Case "RadialProgress"
				sb.Append($"${mName}.AddPropertyRadialProgress("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropsize}", "${spropthickness}")"$).Append(CRLF)
			Case "Rating"
				sb.Append($"${mName}.AddPropertyRating("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropshape}")"$).Append(CRLF)
			Case "RadioGroup"
				Dim optm As Map = OptionsToMap(spropoptions)
				PropertyBuilderMap(sb, spropname, optm)
				sb.Append($"${mName}.AddPropertyRadioGroup("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}", "${spropactivecolor}", ${spropname}options)"$).Append(CRLF)
			Case "GroupSelect"
				Dim optm As Map = OptionsToMap(spropoptions)
				PropertyBuilderMap(sb, spropname, optm)
				sb.Append($"${mName}.AddPropertyGroupSelect("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}", ${bpropsingleselect}, "${spropactivecolor}", ${spropname}options)"$).Append(CRLF)
			Case "CheckBoxGroup"
				Dim optm As Map = OptionsToMap(spropoptions)
				PropertyBuilderMap(sb, spropname, optm)
				sb.Append($"${mName}.AddPropertyCheckBoxGroup("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}", "${spropactivecolor}", ${spropname}options)"$).Append(CRLF)
			Case "ToggleGroup"
				Dim optm As Map = OptionsToMap(spropoptions)
				PropertyBuilderMap(sb, spropname, optm)
				sb.Append($"${mName}.AddPropertyToggleGroup("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}", "${spropactivecolor}", ${spropname}options)"$).Append(CRLF)
			Case "Filter"
				Dim optm As Map = OptionsToMap(spropoptions)
				PropertyBuilderMap(sb, spropname, optm)
				sb.Append($"${mName}.AddPropertyFilter("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}", "${spropactivecolor}", ${spropname}options)"$).Append(CRLF)
		End Select
		If spropalign <> "left" Then sb.Append($"${mName}.SetPropertyAlignment("${spropname}", "${spropalign}")"$).Append(CRLF)
		If spropreadonly Then sb.Append($"${mName}.SetPropertyReadOnly("${spropname}", True)"$).Append(CRLF)
		If spropenabled = False Then sb.Append($"${mName}.SetPropertyEnabled("${spropname}", False)"$).Append(CRLF)
		If spropvisible = False Then sb.Append($"${mName}.SetPropertyVisible("${spropname}", False)"$).Append(CRLF)
	Next
End Sub

Private Sub PropertyBuilderMap(sb1 As StringBuilder, spropName As String, m As Map)
	sb1.Append($"Dim ${spropName}options As Map"$).append(CRLF)
	sb1.Append($"${spropName}options.Initialize"$).append(CRLF)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		sb1.Append($"${spropName}options.put("${k}", "${v}")"$).append(CRLF)
	Next
End Sub

private Sub OptionsToMap(opt As String) As Map
	opt = opt.replace("|", ";")
	Dim litems As List = app.UI.StrParse(";", opt)
	litems = app.UI.ListTrimItems(litems)
	Dim m As Map = CreateMap()
	For Each item As String In litems
		item = item.Trim
		If item = "" Then Continue
		Dim hascolon As Int = item.IndexOf(":")
		If hascolon = -1 Then
			m.Put(item, item)
		Else
			Dim fpart As String = app.UI.MvField(item, 1, ":")
			fpart = fpart.Trim
			Dim spart As String = app.UI.MvField(item, 2, ":")
			spart = spart.Trim
			m.Put(fpart, spart)
		End If
	Next
	Return m
End Sub

private Sub BuildFileInputs
	For Each prop As Map In properties
		Dim spropname As String = prop.Get("propname")
		Dim sproptype As String = prop.Get("proptype")
		Dim spropupdate As String = prop.Get("propupdate")
		spropupdate = app.UI.CStr(spropupdate)
		Dim bpropactive As Boolean = prop.Get("propactive")
		bpropactive = app.UI.CBool(bpropactive)
		If bpropactive = False Then Continue
		'
		Select Case sproptype
		Case "FileInput", "FileInputProgress", "CamCorder", "Camera", "Microphone"
			AddCode(sb, $"'this is executed when pref${properTable}_${spropname}_filechange is fired"$)
			AddCode(sb, $"Private Sub pref${properTable}_${spropname}_filechange(e As BANanoEvent)"$)
			AddCode(sb, $"e.PreventDefault"$)
			AddCode(sb, $"'has the file been selected"$)
			AddCode(sb, $"Dim fileObj As Map = pref${properTable}.GetFileFromEvent(e)"$)
			AddCode(sb, $"'the user cancelled, exit"$)
			AddCode(sb, $"If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return"$)
			AddCode(sb, $"'get file details"$)
			AddCode(sb, $"Dim fileDet As FileObject"$)
			AddCode(sb, $"fileDet = App.UI.GetFileDetails(fileObj)"$)
			AddCode(sb, $"'get the file name"$)
			AddCode(sb, $"Dim fn As String = fileDet.FileName"$)
			AddCode(sb, $"'you can check the size here"$)
			AddCode(sb, $"Dim fs As Long = fileDet.FileSize"$)
			AddCode(sb, $"Dim maxSize As Int = App.UI.ToKiloBytes(500)"$)
			AddCode(sb, $"If fs > maxSize Then"$)
			AddCode(sb, $"	app.ShowToastError("File Size is limited to 500KB!")"$)
			AddCode(sb, $"	Return"$)
			AddCode(sb, $"End If"$)
			If spropupdate <> "" Then
				AddCode(sb, $"Dim fText As String = BANano.Await(app.readAsDataURLWait(fileObj))"$)
			Else
				AddCode(sb, $"'Dim fText As String = BANano.Await(app.readAsDataURLWait(fileObj))"$)
			End If
			AddCode(sb, $"'Dim fJSON As Map = BANano.Await(app.readAsJsonWait(fileObj))"$)
			AddCode(sb, $"'Dim fBuffer As Object = BANano.Await(app.readAsArrayBufferWait(fileObj))"$)
			AddCode(sb, $"'Dim fText As String = BANano.Await(app.readAsTextWait(fileObj))"$)
			AddCode(sb, $"'start uploading the file to assets folder"$)
			AddCode(sb, $"'fileDet = UI.UploadFileWait(fileObj)"$)
			AddCode(sb, $"'fileDet = UI.UploadFileOptionsWait(fileObj, "../assets", "n")"$)
			If spropupdate <> "" Then
				AddCode(sb, $"pref${properTable}.SetPropertyValue("${spropupdate}", fText)"$)
			End If
			AddCode(sb, $"End Sub"$)
		End Select
	Next
End Sub

private Sub Json2CreateMap(svalue As String) As String
	Dim sbRes As StringBuilder
	sbRes.Initialize
	sbRes.Append("CreateMap(")
	svalue = svalue.Replace(CRLF, ";").Replace("<br/>", ";")
	Dim items As List = app.UI.StrParse(";", svalue)
	For Each item As String In items
		Dim k As String = app.UI.MvField(item,1,":")
		Dim v As String = app.UI.MvField(item,2,":")
		k = app.UI.CStr(k)
		v = app.UI.CStr(v)
		k = k.Trim
		v = v.trim
		If k <> "" Then
			sbRes.Append($""${k}":"${v}""$)
			sbRes.Append(",")
		End If
	Next
	Dim sout As String = sbRes.ToString
	sbRes.Initialize
	sout = app.UI.RemDelim(sout, ",")
	sout = sout & ")"
	sout = sout.replace("<br/>", "")
	Return sout
End Sub