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
	Private busemodal As Boolean
	Private busetable As Boolean
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
	Private InputType As Map
	Private ComponentNames As Map
	Private DeclareForm As StringBuilder
	Private IntFormWrite As StringBuilder
	Private IntFormWrite1 As StringBuilder
	Private IntFormDefaults As StringBuilder
	Private IntFormRead As StringBuilder
	Private IntFormRead1 As StringBuilder
	Private IntFormEdit As StringBuilder
	Private IntFormValidate As StringBuilder
	Private IntFormValidateR As StringBuilder
	Private IntFormFile As StringBuilder
	Private PageCode As StringBuilder
	
	Private sproptype As String
	Private spropname As String
	Private sproptitle As String
	Private spropvalue As String
	Private bproprequired As Boolean
	Private bpropreadonly As Boolean = False
	Private bpropenabled As Boolean = False
	Private bpropvisible As Boolean = False
	Private spropoptions As String
	Private spropsize As String
	Private spropthickness As String
	Private spropwidth As String
	Private spropheight As String
	Private spropshape As String
	Private spropurl As String
	Private spropcolor As String
	Private spropactivecolor As String
	Private bpropsingleselect As Boolean 
	Private spropstart As String
	Private spropstep As String
	Private spropmax As String
	Private spropdateformat As String
	Private spropdisplayformat As String
	Private bproptime24 As Boolean
	Private sproplocale As String
	Private spropprefix As String
	Private spropicon As String
	Private sPropBadgeTextColor As String
	Private spropiconsize As String
	Private bPropBadgeRound As Boolean
	Private sPropBadgeValue As String
	Private sPropHintId As String
	Private bPropMultiple As Boolean
	Private bPropSetHint As Boolean
	Private bPropSetTooltip As Boolean
	Private sPropTextColor As String
	Private sPropBadgeColor As String
	Private bPropSetBadge As Boolean
	Private sproptextsize As String
	Private bpropsingleselect As Boolean
	Private spropaccept As String
	Private bpropring As Boolean
	Private spropringcolor As String
	Private spropringoffset As String
	Private spropringoffsetcolor As String
	Private bproponlinestatus As Boolean
	Private bproponline As Boolean
	Private sprophandlediameter As String
	Private spropwheeldiameter As String
	Private spropwheelthickness As String
	Private spropwheelposition As String
	Private spropsuffix As String
	Private spropprepend As String
	Private spropappend As String
	Private spropmaxlen As String
	Private sproprows As String
	Private spropalign As String
	Private spropcol As String
	Private sproprow As String
	Private bpropactive As Boolean
	Private spropname1 As String
	Private spropname2 As String
	Private RequiredInput As Map
	Private spropupdate As String
	Private spropdatatype As String
	''
	Private FormGlobal As String
	Private FormWrite As String
	Private FormWrite1 As String
	Private FormValidate As String
	Private FormValidateR As String
	Private FormDefaults As String
	Private FormRead As String
	Private FormRead1 As String
	Private FormEdit As String
	Private FormFile As String	
	Private pkComponent As String
	Private GridCode As String
	Private sbC As StringBuilder
	Private sproptermscaption As String
	Private sproptermsurl As String
	Private spropprivacycaption As String
	Private spropprivacyurl As String
	Private bpropblock As Boolean
	Private spropaction As String
	Private bpropborder As Boolean
	Private spropbordercolor As String 
	Private spropbgcolor As String
	Private spropmargin As String
	Private sproppadding As String
	Private mpos As String
	Private sdatabase As String
	Private buseapi As Boolean
	Private sprefix As String
	Private smodalheight As String = "fit"
	Private smodalwidth As String = "700px"
End Sub

'showializes the object. You can add parameters to this method if needed.
Public Sub Initialize(MainApp As SDUI5App, tbl As Map)
	app = MainApp
	InputType.Initialize
	ComponentNames.Initialize
	DeclareForm.Initialize
	IntFormWrite.Initialize
	IntFormWrite1.Initialize
	IntFormDefaults.Initialize
	IntFormRead.Initialize
	IntFormRead1.Initialize
	IntFormEdit.Initialize
	IntFormValidate.Initialize
	IntFormValidateR.Initialize
	IntFormValidateR.Append($"app.ResetValidation"$).append(CRLF)
	RequiredInput.Initialize
	IntFormFile.Initialize
	PageCode.Initialize 
	sbC.Initialize
	smodalheight = tbl.GetDefault("height", "fit")
	smodalwidth = tbl.GetDefault("width", "700px")
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
	busemodal = tbl.get("usemodal")
	busemodal = app.ui.CBool(busemodal)
	busetable = tbl.Get("usetable")
	busetable = app.UI.CBool(busetable)
	sdatabase = tbl.Get("database")
	sdatabase = app.UI.CStr(sdatabase)
	If sdatabase = "" Then sdatabase = "PocketBase"
	buseapi = app.UI.CBool(tbl.Get("useapi"))
	Select Case sdatabase
	Case "PocketBase"
		buseapi = False
	Case "MySQLRest"
		buseapi = True
	End Select
	sprefix = tbl.Get("prefix")
	sprefix = app.UI.CStr(sprefix)
	fkeys.Initialize 
	fTables.Initialize
	mcompute.Initialize 
	loads.Initialize 
	'
	properTable = stablename.ToLowerCase
	If sprefix <> "" Then
		properTable = properTable.Replace(sprefix.tolowercase, "")
	End If
	properTable = app.UI.CamelCase(properTable)
	ssingular = app.UI.ProperCase(ssingular)
	splural = app.UI.ProperCase(splural)
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

private Sub AddCodeLine(lst As List, cl As String)
	cl = cl.Replace("~","$")
	lst.Add(cl)
End Sub

private Sub BuildCodeLine(lst As List) As String
	Dim allCode As String = app.UI.Join(CRLF, lst)
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
	BANano.Await(BuildProcessGlobals)
	BANano.Await(BuildShow)
	If busetable Then BANano.Await(BuildTable)
	If busemodal = False Then BANano.Await(BuildPreferenceDialog)
	If busetable Then BANano.Await(BuildMount)
	'
	If busetable Then
		'***** ADD
		AddCode(sb, $"'executed when the add button is clicked on the table"$)
		AddCode(sb, $"Private Sub tbl${properTable}_Add (e As BANanoEvent)"$)
		AddCode(sb, $"e.preventdefault"$)
		AddCode(sb, "app.PagePause")
		If fTables.Size > 0 Then
			AddCode(sb, "'load foreign tables")
			For Each k As String In fTables.Keys
				Dim ftP As String = app.UI.CamelCase(k)
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
	End If
	BANano.Await(BuildAddMode)
	If busetable Then BANano.Await(BuildEditMode)
	If busetable Then BANano.Await(BuildCloneMode)
	If busetable Then BANano.Await(BuildEditRow)
	If busetable Then BANano.Await(BuildDeleteRow)
	If busetable Then BANano.Await(BuildCloneRow)
	If busetable Then BANano.Await(BuildTableChange)
	If busetable Then BANano.Await(BuildCompute)
	BANano.Await(BuildForeignCalls)
	If busemodal Then
		BANano.Await(BuildModalDefaults)
		BANano.Await(BuildModalValidate)
		sb.Append(FormFile).Append(CRLF)
		BANano.Await(BuildModalSave)
		BANano.Await(BuildModalForm)
		BANano.Await(BuildButtonEvents)
		sb.Append(PageCode.ToString)
	Else
		BANano.Await(BuildPreferenceSave)
		BANano.Await(BuildFileInputs)
	End If
	'
	Dim sout As String = sb.ToString
	Dim res As String = app.UI.BeautifyB4X(sout)
	app.DownloadTextFile(res, $"${stablename}.bas"$)
End Sub

Sub BuildModalForm
	AddCode(sb, $"Private Sub Build${properTable}Modal"$)
	'build the grid
	AddCode(sb, $"mdl${properTable}.Height = "${smodalheight}""$)
	AddCode(sb, $"mdl${properTable}.Width = "${smodalwidth}""$)
	AddCode(sb, GridCode)
	AddCode(sb, sbC.ToString)
	'add the components
	AddCode(sb, $"End Sub"$)
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

Sub BuildSDUI5Telephone
	Dim txt As SDUI5TextBox
	txt.Initialize(Me, spropname1, spropname1)
	txt.InputType = "legend"
	txt.TypeOf = "tel"
	txt.Label = sproptitle
	txt.value = spropvalue
	txt.Required = bproprequired
	txt.PrependIcon = spropprepend
	txt.AppendIcon = spropappend
	txt.Enabled = bpropenabled
	txt.Visible = bpropvisible
	txt.ReadOnly = bpropreadonly
	txt.BackgroundColor = spropbgcolor
	txt.Border = bpropborder
	txt.BorderColor = spropbordercolor
	txt.MarginAXYTBLR = spropmargin
	txt.PaddingAXYTBLR = sproppadding
	txt.ParentID = mpos
	txt.AddComponent
	
	If spropprepend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	If spropappend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.TypeOf = "tel""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5Email
				Dim txt As SDUI5TextBox
				txt.Initialize(Me, spropname1, spropname1)
				txt.InputType = "legend"
				txt.TypeOf = "email"
				txt.Label = sproptitle
				txt.value = spropvalue
				txt.Required = bproprequired
				txt.PrependIcon = spropprepend
				txt.AppendIcon = spropappend
				txt.Enabled = bpropenabled
				txt.Visible = bpropvisible
				txt.ReadOnly = bpropreadonly
				txt.BackgroundColor = spropbgcolor
				txt.Border = bpropborder
				txt.BorderColor = spropbordercolor
				txt.MarginAXYTBLR = spropmargin
				txt.PaddingAXYTBLR = sproppadding
				txt.ParentID = mpos
				txt.AddComponent
	'
	If spropprepend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	If spropappend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
				
				
				'
				AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
				AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
				AddCode(sbC, $"${spropname1}.InputType = "legend""$)
				AddCode(sbC, $"${spropname1}.TypeOf = "email""$)
				AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
				AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
				AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
				AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
				AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
				If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
				AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
				AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
				AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
				AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
				AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
				AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
				AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
				AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
				AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
				AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
				'
				DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
				IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
				If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
				IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
				If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
				IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
End Sub

Sub BuildSDUI5TextArea
	Dim txta As SDUI5TextArea
	txta.Initialize(Me, spropname1, spropname1)
	txta.InputType = "legend"
	txta.Label = sproptitle
	txta.value = spropvalue
	txta.Required = bproprequired
	txta.PrependIcon = spropprepend
	txta.AppendIcon = spropappend
	txta.Enabled = bpropenabled
	txta.Visible = bpropvisible
	txta.rows = sproprows
	txta.BackgroundColor = spropbgcolor
	txta.Border = bpropborder
	txta.BorderColor = spropbordercolor
	txta.MarginAXYTBLR = spropmargin
	txta.PaddingAXYTBLR = sproppadding
	txta.ParentID = mpos
	txta.AddComponent
	'
	If spropprepend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	If spropappend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextArea"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.rows = "${sproprows}""$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextArea		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5FileInput
	Dim fi As SDUI5FileInput
	fi.Initialize(Me, spropname1, spropname1)
	fi.InputType = "legend"
	fi.Label = sproptitle
	fi.Required = bproprequired
	fi.Accept = spropaccept
	fi.Visible = bpropvisible
	fi.Enabled = bpropenabled
	fi.BackgroundColor = spropbgcolor
	fi.Border = bpropborder
	fi.BorderColor = spropbordercolor
	fi.MarginAXYTBLR = spropmargin
	fi.PaddingAXYTBLR = sproppadding
	fi.ParentID = mpos
	fi.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5FileInput"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.Accept = "${spropaccept}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5FileInput		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim f${spropname2} As Object = ${spropname1}.GetFile"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = Null"$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", f${spropname2})"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
'				IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
'				IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
	'
	BANano.Await(BuildFileInputCode)

End Sub

Sub BuildSDUI5FileInputProgress
	Dim fi As SDUI5FileInput
	fi.Initialize(Me, spropname1, spropname1)
	fi.InputType = "progress"
	fi.Label = sproptitle
	fi.Required = bproprequired
	fi.Enabled = bpropenabled
	fi.Accept = spropaccept
	fi.Icon = spropicon
	fi.IconSize = spropiconsize
	fi.Color = spropcolor
	fi.IconColor = sPropTextColor
	fi.MarginAXYTBLR = spropmargin
	fi.PaddingAXYTBLR = sproppadding
'			fi.Multiple = spropm
	fi.Visible = bpropvisible
	fi.ParentID = mpos
	fi.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5FileInput"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "progress""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Accept = "${spropaccept}""$)
	AddCode(sbC, $"${spropname1}.Icon = "${spropicon}""$)
	AddCode(sbC, $"${spropname1}.IconSize = "${spropiconsize}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.IconColor = "${sPropTextColor}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BaNano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5FileInput		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"'get the contents of the file"$).Append(CRLF)
	IntFormWrite.Append($"Dim f${spropname} As Object = ${spropname1}.GetFile"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = Null"$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", f${spropname2})"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
'				IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
'				IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
	'
	BANano.Await(BuildFileInputCode)

End Sub

Sub BuildSDUI5CamCorder
	Dim fi As SDUI5FileInput
	fi.Initialize(Me, spropname1, spropname1)
	fi.InputType = "camcorder"
	fi.Label = sproptitle
	fi.Required = bproprequired
	fi.Accept = spropaccept
	fi.Enabled = bpropenabled
'			fi.Multiple = spropm
	fi.Icon = spropicon
	fi.IconSize = spropiconsize
	fi.Color = spropcolor
	fi.IconColor = sPropTextColor
	fi.Visible = bpropvisible
	fi.MarginAXYTBLR = spropmargin
	fi.PaddingAXYTBLR = sproppadding
	fi.ParentID = mpos
	fi.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5FileInput"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "camcorder""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.Accept = "${spropaccept}""$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Icon = "${spropicon}""$)
	AddCode(sbC, $"${spropname1}.IconSize = "${spropiconsize}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.IconColor = "${sPropTextColor}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANAno.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5FileInput		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"'get the contents of the file"$).Append(CRLF)
	IntFormWrite.Append($"Dim f${spropname} As Object = ${spropname1}.GetFile"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = Null"$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", f${spropname2})"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
'				IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
'				IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
	'
	BANano.Await(BuildFileInputCode)

End Sub

Sub BuildSDUI5Camera
				
	Dim fi As SDUI5FileInput
	fi.Initialize(Me, spropname1, spropname1)
	fi.InputType = "camera"
	fi.Label = sproptitle
	fi.Required = bproprequired
	fi.Accept = spropaccept
	fi.Enabled = bpropenabled
'			fi.Multiple = spropm
	fi.Icon = spropicon
	fi.IconSize = spropiconsize
	fi.Color = spropcolor
	fi.IconColor = sPropTextColor
	fi.Visible = bpropvisible
	fi.MarginAXYTBLR = spropmargin
	fi.PaddingAXYTBLR = sproppadding
	fi.ParentID = mpos
	fi.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5FileInput"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "camera""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.Accept = "${spropaccept}""$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Icon = "${spropicon}""$)
	AddCode(sbC, $"${spropname1}.IconSize = "${spropiconsize}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.IconColor = "${sPropTextColor}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5FileInput		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"'get the contents of the file"$).Append(CRLF)
	IntFormWrite.Append($"Dim f${spropname} As Object = ${spropname1}.GetFile"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = Null"$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", f${spropname2})"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
'				IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
'				IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
	'
	BANano.Await(BuildFileInputCode)

End Sub

Sub BuildSDUI5Microphone
				
	Dim fi As SDUI5FileInput
	fi.Initialize(Me, spropname1, spropname1)
	fi.InputType = "microphone"
	fi.Label = sproptitle
	fi.Required = bproprequired
	fi.Enabled = bpropenabled
	fi.Accept = spropaccept
'			fi.Multiple = spropm
	fi.Icon = spropicon
	fi.IconSize = spropiconsize
	fi.Color = spropcolor
	fi.IconColor = sPropTextColor
	fi.Visible = bpropvisible
	fi.MarginAXYTBLR = spropmargin
	fi.PaddingAXYTBLR = sproppadding
	fi.ParentID = mpos
	fi.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5FileInput"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "microphone""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Accept = "${spropaccept}""$)
	AddCode(sbC, $"${spropname1}.Icon = "${spropicon}""$)
	AddCode(sbC, $"${spropname1}.IconSize = "${spropiconsize}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.IconColor = "${sPropTextColor}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5FileInput		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"'get the contents of the file"$).Append(CRLF)
	IntFormWrite.Append($"Dim f${spropname} As Object = ${spropname1}.GetFile"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = Null"$).Append(CRLF)
	IntFormWrite1.Append($"db.SetField("${spropname}", f${spropname2})"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
'				IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
'				IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
	'
	BANano.Await(BuildFileInputCode)

End Sub

Sub BuildSDUI5Avatar
				
			
	Dim avt As SDUI5Avatar
	avt.Initialize(Me, spropname1, spropname1)
	avt.AvatarType = "image"
	avt.Mask = spropshape
	avt.Image = spropurl
	avt.Size = spropsize
	avt.Ring = bpropring
	avt.RingColor = spropringcolor
	avt.RingOffset = spropringoffset
	avt.RingOffsetColor = spropringoffsetcolor
	avt.Visible = bpropvisible
	avt.MarginAXYTBLR = spropmargin
	avt.PaddingAXYTBLR = sproppadding
	avt.ParentID = mpos
	avt.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Avatar"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.AvatarType = "image""$)
	AddCode(sbC, $"${spropname1}.Mask = "${spropshape}""$)
	AddCode(sbC, $"${spropname1}.Image = "${spropurl}""$)
	AddCode(sbC, $"${spropname1}.Size = "${spropsize}""$)
	AddCode(sbC, $"${spropname1}.Ring = ${bpropring}"$)
	AddCode(sbC, $"${spropname1}.RingColor = "${spropringcolor}""$)
	AddCode(sbC, $"${spropname1}.RingOffset = "${spropringoffset}""$)
	AddCode(sbC, $"${spropname1}.RingOffsetColor = "${spropringoffsetcolor}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANAno.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5Avatar		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Image"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Image = "${spropurl}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Image = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
			

End Sub

Sub BuildSDUI5AvatarPlaceholder
				
	Dim avt As SDUI5Avatar
	avt.Initialize(Me, spropname1, spropname1)
	avt.AvatarType = "placeholder"
	avt.Mask = spropshape
	avt.Ring = bpropring
	avt.RingColor = spropringcolor
	avt.RingOffset = spropringoffset
	avt.RingOffsetColor = spropringoffsetcolor
	avt.Placeholder = spropvalue
	avt.TextColor = sPropTextColor
	avt.TextSize = sproptextsize
	avt.Visible = bpropvisible
	avt.MarginAXYTBLR = spropmargin
	avt.PaddingAXYTBLR = sproppadding
	avt.ParentID = mpos
	avt.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Avatar"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.AvatarType = "placeholder""$)
	AddCode(sbC, $"${spropname1}.Mask = "${spropshape}""$)
	AddCode(sbC, $"${spropname1}.Ring = ${bpropring}"$)
	AddCode(sbC, $"${spropname1}.RingColor = "${spropringcolor}""$)
	AddCode(sbC, $"${spropname1}.RingOffset = "${spropringoffset}""$)
	AddCode(sbC, $"${spropname1}.RingOffsetColor = "${spropringoffsetcolor}""$)
	AddCode(sbC, $"${spropname1}.Placeholder = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.TextColor = "${sPropTextColor}""$)
	AddCode(sbC, $"${spropname1}.TextSize = "${sproptextsize}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5Avatar		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Placeholder"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Placeholder = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Placeholder = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
			

End Sub

Sub BuildSDUI5AvatarGroup
				
	Dim avtg As SDUI5AvatarGroup
	avtg.Initialize(Me, spropname1, spropname1)
	avtg.Visible = bpropvisible
	avtg.MarginAXYTBLR = spropmargin
	avtg.PaddingAXYTBLR = sproppadding
	avtg.ParentID = mpos
	avtg.AddComponent
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5AvatarGroup		'ignore"$).Append(CRLF)
'				IntFormDefaults.Append($"${spropname1}.SetImages(Array())"$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
'				IntFormRead1.Append($"${spropname1}.SetImages(Array())"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
			

End Sub

Sub BuildSDUI5Image
				
	Dim img As SDUI5Image
	img.Initialize(Me, spropname1, spropname1)
	img.Src = spropurl
	img.Height = spropheight
	img.Width = spropwidth
	img.Mask = spropshape
	img.Visible = bpropvisible
	img.MarginAXYTBLR = spropmargin
	img.PaddingAXYTBLR = sproppadding
	img.ParentID = mpos
	img.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Image"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.Src = "${spropurl}""$)
	AddCode(sbC, $"${spropname1}.Height = "${spropheight}""$)
	AddCode(sbC, $"${spropname1}.Width = "${spropwidth}""$)
	AddCode(sbC, $"${spropname1}.Mask = "${spropshape}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5Image		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Src"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Src = "${spropurl}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Src = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5Progress
	Dim prg As SDUI5Progress
	prg.Initialize(Me, spropname1, spropname1)
	prg.ProgressType = "legend"
	prg.Label = sproptitle
	prg.Color = spropcolor
	prg.Value = spropvalue
	prg.MinValue = spropstart
	prg.StepValue = spropstep
	prg.MaxValue = spropmax
	prg.Visible = bpropvisible
	prg.MarginAXYTBLR = spropmargin
	prg.PaddingAXYTBLR = sproppadding
	prg.ParentID = mpos
	prg.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Progress"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.ProgressType = "legend""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.Value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.MinValue = "${spropstart}""$)
	AddCode(sbC, $"${spropname1}.StepValue = "${spropstep}""$)
	AddCode(sbC, $"${spropname1}.MaxValue = "${spropmax}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5Progress		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5Button
	Dim btn As SDUI5Button
	btn.Initialize(Me, spropname1, spropname1)
	btn.Text = sproptitle
	btn.Color = spropcolor
	btn.Block = bpropblock
	btn.LeftIcon = spropprepend
	btn.RightIcon = spropappend
	btn.MarginAXYTBLR = spropmargin
	btn.PaddingAXYTBLR = sproppadding
	btn.ParentID = mpos
	btn.AddComponent
	'
	DeclareForm.Append($"Private ${spropname2} As SDUI5Button		'ignore"$).Append(CRLF)
	AddComment(sbC, $"add ${spropname2} button"$)
'			AddCode(sbC, $"Dim ${spropname2} As SDUI5Button"$)
	AddCode(sbC, $"${spropname2}.Initialize(Me, "${spropname2}", "${spropname2}")"$)
	AddCode(sbC, $"${spropname2}.Text = "${sproptitle}""$)
	AddCode(sbC, $"${spropname2}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname2}.Block = ${bpropblock}"$)
	AddCode(sbC, $"${spropname2}.LeftIcon = "${spropprepend}""$)
	AddCode(sbC, $"${spropname2}.RightIcon = "${spropappend}""$)
	AddCode(sbC, $"${spropname2}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname2}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname2}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname2}.AddComponent)"$)
End Sub

Sub BuildSDUI5PasswordGroup
	Dim txt As SDUI5TextBox
	txt.Initialize(Me, spropname1, spropname1)
	txt.InputType = "legend"
	txt.TypeOf = "text"
	txt.Label = sproptitle
	txt.value = spropvalue
	txt.ShowEyes = True
	txt.Required = bproprequired
	txt.PrependIcon = spropprepend
	txt.AppendIcon = spropappend
	txt.Enabled = bpropenabled
	txt.Visible = bpropvisible
	txt.ReadOnly = bpropreadonly
	txt.MaxLength = spropmaxlen
	txt.BackgroundColor = spropbgcolor
	txt.Border = bpropborder
	txt.BorderColor = spropbordercolor
	txt.MarginAXYTBLR = spropmargin
	txt.PaddingAXYTBLR = sproppadding
	txt.ParentID = mpos
	txt.AddComponent
	'
	If spropprepend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	If spropappend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.TypeOf = "text""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.ShowEyes = True"$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.MaxLength = "${spropmaxlen}""$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
End Sub

Sub BuildSDUI5DatePicker
				
	Dim txt As SDUI5TextBox
	txt.Initialize(Me, spropname1, spropname1)
	txt.InputType = "legend"
	txt.TypeOf = "date-picker"
	txt.Label = sproptitle
	txt.value = spropvalue
	txt.Required = bproprequired
	txt.DPDateFormat = spropdateformat
	txt.DPAltFormat = spropdisplayformat
	txt.DPTwentyFour = bproptime24
	txt.DPLocale = sproplocale
	txt.PrependIcon = spropprepend
	txt.AppendIcon = spropappend
	txt.Enabled = bpropenabled
	txt.Visible = bpropvisible
	txt.ReadOnly = bpropreadonly
	txt.BackgroundColor = spropbgcolor
	txt.Border = bpropborder
	txt.BorderColor = spropbordercolor
	txt.MarginAXYTBLR = spropmargin
	txt.PaddingAXYTBLR = sproppadding
	txt.ParentID = mpos
	txt.AddComponent
	'
	If spropprepend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	If spropappend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.TypeOf = "date-picker""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.DPDateFormat = "${spropdateformat}""$)
	AddCode(sbC, $"${spropname1}.DPAltFormat = "${spropdisplayformat}""$)
	AddCode(sbC, $"${spropname1}.DPTwentyFour = ${bproptime24}"$)
	AddCode(sbC, $"${spropname1}.DPLocale = "${sproplocale}""$)
	AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
End Sub

Sub BuildSDUI5DateTimePicker
	Dim txt As SDUI5TextBox
	txt.Initialize(Me, spropname1, spropname1)
	txt.InputType = "legend"
	txt.TypeOf = "date-time-picker"
	txt.Label = sproptitle
	txt.value = spropvalue
	txt.Required = bproprequired
	txt.DPDateFormat = spropdateformat
	txt.DPAltFormat = spropdisplayformat
	txt.DPLocale = sproplocale
	txt.DPTwentyFour = bproptime24
	txt.PrependIcon = spropprepend
	txt.AppendIcon = spropappend
	txt.Enabled = bpropenabled
	txt.Visible = bpropvisible
	txt.ReadOnly = bpropreadonly
	txt.BackgroundColor = spropbgcolor
	txt.Border = bpropborder
	txt.BorderColor = spropbordercolor
	txt.MarginAXYTBLR = spropmargin
	txt.PaddingAXYTBLR = sproppadding
	txt.ParentID = mpos
	txt.AddComponent
If spropprepend <> "" Then
PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
PageCode.Append($"End Sub"$).Append(CRLF)
End If
If spropappend <> "" Then
	PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
	PageCode.Append($"End Sub"$).Append(CRLF)
End If
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.TypeOf = "date-time-picker""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.DPDateFormat = "${spropdateformat}""$)
	AddCode(sbC, $"${spropname1}.DPAltFormat = "${spropdisplayformat}""$)
	AddCode(sbC, $"${spropname1}.DPLocale = "${sproplocale}""$)
	AddCode(sbC, $"${spropname1}.DPTwentyFour = ${bproptime24}"$)
	AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
End Sub

Sub BuildSDUI5TimePicker
	Dim txt As SDUI5TextBox
	txt.Initialize(Me, spropname1, spropname1)
	txt.InputType = "legend"
	txt.TypeOf = "time-picker"
	txt.Label = sproptitle
	txt.value = spropvalue
	txt.Required = bproprequired
	txt.DPDateFormat = spropdateformat
	txt.DPAltFormat = spropdisplayformat
	txt.DPTwentyFour = bproptime24
	txt.PrependIcon= spropappend
	txt.AppendIcon = spropappend
	txt.Enabled = bpropenabled
	txt.Visible = bpropvisible
	txt.ReadOnly = bpropreadonly
	txt.BackgroundColor = spropbgcolor
	txt.Border = bpropborder
	txt.BorderColor = spropbordercolor
	txt.MarginAXYTBLR = spropmargin
	txt.PaddingAXYTBLR = sproppadding
	txt.ParentID = mpos
	txt.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.TypeOf = "time-picker""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.DPDateFormat = "${spropdateformat}""$)
	AddCode(sbC, $"${spropname1}.DPAltFormat = "${spropdisplayformat}""$)
	AddCode(sbC, $"${spropname1}.DPTwentyFour = ${bproptime24}"$)
	AddCode(sbC, $"${spropname1}.PrependIcon= "${spropappend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5Number
	Dim txt As SDUI5TextBox
	txt.Initialize(Me, spropname1, spropname1)
	txt.InputType = "legend"
	txt.TypeOf = "number"
	txt.Label = sproptitle
	txt.value = spropvalue
	txt.MinValue = spropstart
	txt.StepValue = spropstep
	txt.MaxValue = spropmax
	txt.Required = bproprequired
	txt.PrependIcon = spropprepend
	txt.AppendIcon = spropappend
	txt.Enabled = bpropenabled
	txt.Visible = bpropvisible
	txt.ReadOnly = bpropreadonly
	txt.BackgroundColor = spropbgcolor
	txt.Border = bpropborder
	txt.BorderColor = spropbordercolor
	txt.MarginAXYTBLR = spropmargin
	txt.PaddingAXYTBLR = sproppadding
	txt.ParentID = mpos
	txt.AddComponent
	'
	If spropprepend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	If spropappend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.TypeOf = "number""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.MinValue = "${spropstart}""$)
	AddCode(sbC, $"${spropname1}.StepValue = "${spropstep}""$)
	AddCode(sbC, $"${spropname1}.MaxValue = "${spropmax}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5ColorWheel
	Dim txt As SDUI5TextBox
	txt.Initialize(Me, spropname1, spropname1)
	txt.InputType = "legend"
	txt.TypeOf = "color-wheel"
	txt.Label = sproptitle
	txt.value = spropvalue
	txt.Required = bproprequired
	txt.HandleDiameter = sprophandlediameter
	txt.WheelDiameter = spropwheeldiameter
	txt.WheelThickness = spropwheelthickness
	txt.WheelPlacement = spropwheelposition
	txt.PrependIcon = spropprepend
	txt.AppendIcon = spropappend
	txt.Enabled = bpropenabled
	txt.Visible = bpropvisible
	txt.ReadOnly = bpropreadonly
	txt.BackgroundColor = spropbgcolor
	txt.Border = bpropborder
	txt.BorderColor = spropbordercolor
	txt.MarginAXYTBLR = spropmargin
	txt.PaddingAXYTBLR = sproppadding
	txt.ToggleColorPicker = True
	txt.ParentID = mpos
	txt.AddComponent
	'
	If spropprepend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	If spropappend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.TypeOf = "color-wheel""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.ToggleColorPicker = True"$)
	AddCode(sbC, $"${spropname1}.HandleDiameter = "${sprophandlediameter}""$)
	AddCode(sbC, $"${spropname1}.WheelDiameter = "${spropwheeldiameter}""$)
	AddCode(sbC, $"${spropname1}.WheelThickness = "${spropwheelthickness}""$)
	AddCode(sbC, $"${spropname1}.WheelPlacement = "${spropwheelposition}""$)
	AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
				

End Sub

Sub BuildSDUI5Range
	Dim rng As SDUI5Range
	rng.Initialize(Me, spropname1, spropname1)
	rng.RangeType = "legend"
	rng.Label = sproptitle
	rng.Value = spropvalue
	rng.MinValue = spropstart
	rng.StepValue = spropstep
	rng.MaxValue = spropmax
	rng.Visible = bpropvisible
	rng.BackgroundColor = spropbgcolor
	rng.Border = bpropborder
	rng.BorderColor = spropbordercolor
	rng.Enabled = bpropenabled
	rng.MarginAXYTBLR = spropmargin
	rng.PaddingAXYTBLR = sproppadding
	rng.ParentID = mpos
	rng.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Range"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.RangeType = "legend""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.MinValue = "${spropstart}""$)
	AddCode(sbC, $"${spropname1}.StepValue = "${spropstep}""$)
	AddCode(sbC, $"${spropname1}.MaxValue = "${spropmax}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5Range		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5CheckBoxLegend
	Dim chk As SDUI5CheckBox
	chk.Initialize(Me, spropname1, spropname1)
	chk.CheckBoxType = "legend"
	chk.Label = "Yes"
	chk.Legend = sproptitle
	chk.Color = spropcolor
	chk.CheckedColor = spropactivecolor
	chk.Checked = app.UI.CBool(spropvalue)
	chk.Visible = bpropvisible
	chk.Enabled = bpropenabled
	chk.BackgroundColor = spropbgcolor
	chk.Border = bpropborder
	chk.BorderColor = spropbordercolor
	chk.TermsConditionsCaption = sproptermscaption
	chk.TermsConditionsUrl = sproptermsurl
	chk.PrivacyPolicyCaption = spropprivacycaption
	chk.PrivacyPolicyUrl = spropprivacyurl
	chk.MarginAXYTBLR = spropmargin
	chk.PaddingAXYTBLR = sproppadding
	chk.ParentID = mpos
	chk.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5CheckBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.CheckBoxType = "legend""$)
	AddCode(sbC, $"${spropname1}.Label = "Yes""$)
	AddCode(sbC, $"${spropname1}.Legend = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.CheckedColor = "${spropactivecolor}""$)
	AddCode(sbC, $"${spropname1}.Checked = ${app.UI.CBool(spropvalue)}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.TermsConditionsCaption = "${sproptermscaption}""$)
	AddCode(sbC, $"${spropname1}.TermsConditionsUrl = "${sproptermsurl}""$)
	AddCode(sbC, $"${spropname1}.PrivacyPolicyUrl = "${spropprivacycaption}""$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropprivacyurl}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5CheckBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim b${spropname} As Boolean = ${spropname1}.Checked"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", b${spropname})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Checked = ${app.UI.cbool(spropvalue)}"$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim b${spropname} As Boolean = db${properTable}.GetBoolean("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Checked = b${spropname}"$).Append(CRLF)
	IntFormEdit.Append($"Dim b${spropname} As Boolean = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5CheckBox
				
	Dim chk As SDUI5CheckBox
	chk.Initialize(Me, spropname1, spropname1)
	chk.CheckBoxType = "right-label"
	chk.Label = sproptitle
	chk.Color = spropcolor
	chk.CheckedColor = spropactivecolor
	chk.Checked = app.UI.CBool(spropvalue)
	chk.Visible = bpropvisible
	chk.Enabled = bpropenabled
	chk.BackgroundColor = spropbgcolor
	chk.Border = bpropborder
	chk.BorderColor = spropbordercolor
	chk.TermsConditionsCaption = sproptermscaption
	chk.TermsConditionsUrl = sproptermsurl
	chk.PrivacyPolicyCaption = spropprivacycaption
	chk.PrivacyPolicyUrl = spropprivacyurl
	chk.MarginAXYTBLR = spropmargin
	chk.PaddingAXYTBLR = sproppadding
	chk.ParentID = mpos
	chk.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5CheckBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.CheckBoxType = "right-label""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.CheckedColor = "${spropactivecolor}""$)
	AddCode(sbC, $"${spropname1}.Checked = ${app.UI.CBool(spropvalue)}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.TermsConditionsCaption = "${sproptermscaption}""$)
	AddCode(sbC, $"${spropname1}.TermsConditionsUrl = "${sproptermsurl}""$)
	AddCode(sbC, $"${spropname1}.PrivacyPolicyUrl = "${spropprivacycaption}""$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropprivacyurl}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5CheckBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim b${spropname} As Boolean = ${spropname1}.Checked"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", b${spropname})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Checked = ${app.UI.cbool(spropvalue)}"$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim b${spropname} As Boolean = db${properTable}.GetBoolean("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Checked = b${spropname}"$).Append(CRLF)
	IntFormEdit.Append($"Dim b${spropname} As Boolean = item.Get("${spropname}")"$).Append(CRLF)

End Sub


Sub BuildSDUI5ToggleLegend
				
	Dim tgl As SDUI5Toggle
	tgl.Initialize(Me, spropname1, spropname1)
	tgl.ToggleType = "legend"
	tgl.Label = "Yes"
	tgl.Legend = sproptitle
	tgl.Checked = app.UI.CBool(spropvalue)
	tgl.Color = spropcolor
	tgl.CheckedColor = spropactivecolor
	tgl.Visible = bpropvisible
	tgl.Enabled = bpropenabled
	tgl.MarginAXYTBLR = spropmargin
	tgl.PaddingAXYTBLR = sproppadding
	tgl.BackgroundColor = spropbgcolor
	tgl.Border = bpropborder
	tgl.BorderColor = spropbordercolor
	tgl.ParentID = mpos
	tgl.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Toggle"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.ToggleType = "legend""$)
	AddCode(sbC, $"${spropname1}.Legend = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Label = "Yes""$)
	AddCode(sbC, $"${spropname1}.Checked = ${app.UI.CBool(spropvalue)}"$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.CheckedColor = "${spropactivecolor}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5Toggle		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim b${spropname} As Boolean = ${spropname1}.Checked"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", b${spropname})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Checked = ${app.UI.cbool(spropvalue)}"$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim b${spropname} As Boolean = db${properTable}.GetBoolean("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Checked = b${spropname}"$).Append(CRLF)
	IntFormEdit.Append($"Dim b${spropname} As Boolean = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5Toggle
				
	Dim tgl As SDUI5Toggle
	tgl.Initialize(Me, spropname1, spropname1)
	tgl.ToggleType = "label-right"
	tgl.Label = sproptitle
	tgl.Checked = app.UI.CBool(spropvalue)
	tgl.Color = spropcolor
	tgl.CheckedColor = spropactivecolor
	tgl.Visible = bpropvisible
	tgl.Enabled = bpropenabled
	tgl.MarginAXYTBLR = spropmargin
	tgl.PaddingAXYTBLR = sproppadding
	tgl.BackgroundColor = spropbgcolor
	tgl.Border = bpropborder
	tgl.BorderColor = spropbordercolor
	tgl.ParentID = mpos
	tgl.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Toggle"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.ToggleType = "legend""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Checked = ${app.UI.CBool(spropvalue)}"$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.CheckedColor = "${spropactivecolor}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5Toggle		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim b${spropname} As Boolean = ${spropname1}.Checked"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", b${spropname})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Checked = ${app.UI.cbool(spropvalue)}"$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim b${spropname} As Boolean = db${properTable}.GetBoolean("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Checked = b${spropname}"$).Append(CRLF)
	IntFormEdit.Append($"Dim b${spropname} As Boolean = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5RadialProgress				
			Dim rp As SDUI5RadialProgress
			rp.Initialize(Me, spropname1, spropname1)
			rp.Value = spropvalue
			rp.Color = spropcolor
			rp.TextColor = sPropTextColor
			rp.ProgressSize = spropsize
			rp.ProgressThickness = spropthickness
				rp.Visible = bpropvisible
				rp.MarginAXYTBLR = spropmargin
				rp.PaddingAXYTBLR = sproppadding
				rp.ParentID = mpos
				rp.AddComponent
				'
				AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5RadialProgress"$)
				AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
				AddCode(sbC, $"${spropname1}.Value = "${spropvalue}""$)
				AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
				AddCode(sbC, $"${spropname1}.TextColor = "${sPropTextColor}""$)
				AddCode(sbC, $"${spropname1}.ProgressSize = "${spropsize}""$)
				AddCode(sbC, $"${spropname1}.ProgressThickness = "${spropthickness}""$)
				AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
				AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
				AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
				AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
				AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
				'
				
				DeclareForm.Append($"Private ${spropname1} As SDUI5RadialProgress		'ignore"$).Append(CRLF)
				IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
				If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
				IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
				If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
				IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
				

End Sub

Sub BuildSDUI5Rating
	Dim rt As SDUI5Rating
	rt.Initialize(Me, spropname1, spropname1)
	rt.InputType = "legend"
	rt.Label = sproptitle
	rt.Mask = spropshape
	rt.Color = spropcolor
	rt.Value = spropvalue
	rt.ReadOnly = bpropreadonly
	rt.Visible = bpropvisible
	rt.Enabled = bpropenabled
	rt.BackgroundColor = spropbgcolor
	rt.Border = bpropborder
	rt.BorderColor = spropbordercolor
	rt.MarginAXYTBLR = spropmargin
	rt.PaddingAXYTBLR = sproppadding
	rt.ParentID = mpos
	rt.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Rating"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Mask = "${spropshape}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.Value = "${spropvalue}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5Rating		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5RadioGroup
					
	Dim rg As SDUI5RadioGroup
	rg.Initialize(Me, spropname1, spropname1)
	rg.Label = sproptitle
	rg.Options = spropoptions
	rg.Value = spropvalue
	rg.Color = spropcolor
	rg.CheckedColor = spropactivecolor
	rg.GroupName = spropname
	rg.Visible = bpropvisible
	rg.Enabled = bpropenabled
	rg.BackgroundColor = spropbgcolor
	rg.Border = bpropborder
	rg.BorderColor = spropbordercolor
	rg.MarginAXYTBLR = spropmargin
	rg.PaddingAXYTBLR = sproppadding
	rg.ParentID = mpos
	rg.AddComponent
	'
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5RadioGroup"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Options = "${spropoptions}""$)
	AddCode(sbC, $"${spropname1}.Value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.CheckedColor = "${spropactivecolor}""$)
	AddCode(sbC, $"${spropname1}.GroupName = "${spropname}""$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5RadioGroup		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5GroupSelect
					
	Dim gs As SDUI5GroupSelect
	gs.Initialize(Me, spropname1, spropname1)
	gs.Label = sproptitle
	gs.GroupName = spropname
	gs.Options = spropoptions
	gs.Selected = spropvalue
	gs.ChipColor = spropcolor
	gs.ActiveColor = spropactivecolor
	gs.TextColor = sPropTextColor
	gs.Enabled = bpropenabled
	gs.Visible = bpropvisible
	gs.Size = spropsize
	gs.BackgroundColor = spropbgcolor
	gs.Border = bpropborder
	gs.BorderColor = spropbordercolor
	gs.MarginAXYTBLR = spropmargin
	gs.PaddingAXYTBLR = sproppadding
	gs.ParentID = mpos
	gs.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5GroupSelect"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.GroupName = "${spropname}""$)
	AddCode(sbC, $"${spropname1}.Options = "${spropoptions}""$)
	AddCode(sbC, $"${spropname1}.Selected = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Size = "${spropsize}""$)
	AddCode(sbC, $"${spropname1}.ChipColor = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.ActiveColor = "${spropactivecolor}""$)
	AddCode(sbC, $"${spropname1}.TextColor = "${sPropTextColor}""$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5GroupSelect		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Selected"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Selected = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Selected = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5CheckBoxGroup
	Dim chkg As SDUI5CheckBoxGroup
	chkg.Initialize(Me, spropname1, spropname1)
	chkg.TypeOf = "checkbox"
	chkg.Label = sproptitle
	chkg.Options = spropoptions
	chkg.Selected = spropvalue
	chkg.Color = spropcolor
	chkg.CheckedColor = spropactivecolor
	chkg.GroupName = spropname
	chkg.Enabled = bpropenabled
	chkg.Visible = bpropvisible
	chkg.BackgroundColor = spropbgcolor
	chkg.Border = bpropborder
	chkg.BorderColor = spropbordercolor
	chkg.MarginAXYTBLR = spropmargin
	chkg.PaddingAXYTBLR = sproppadding
	chkg.ParentID = mpos
	chkg.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5CheckBoxGroup"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.TypeOf = "checkbox""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Options = "${spropoptions}""$)
	AddCode(sbC, $"${spropname1}.Selected = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.CheckedColor = "${spropactivecolor}""$)
	AddCode(sbC, $"${spropname1}.GroupName = "${spropname}""$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5CheckBoxGroup		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Selected"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Selected = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Selected = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5ToggleGroup
	Dim tglg As SDUI5CheckBoxGroup
	tglg.Initialize(Me, spropname1, spropname1)
	tglg.TypeOf = "toggle"
	tglg.Label = sproptitle
	tglg.Options = spropoptions
	tglg.Selected = spropvalue
	tglg.Color = spropcolor
	tglg.CheckedColor = spropactivecolor
	tglg.GroupName = spropname
	tglg.Enabled = bpropenabled
	tglg.Visible = bpropvisible
	tglg.BackgroundColor = spropbgcolor
	tglg.Border = bpropborder
	tglg.BorderColor = spropbordercolor
	tglg.MarginAXYTBLR = spropmargin
	tglg.PaddingAXYTBLR = sproppadding
	tglg.ParentID = mpos
	tglg.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5CheckBoxGroup"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.TypeOf = "toggle""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Options = "${spropoptions}""$)
	AddCode(sbC, $"${spropname1}.Selected = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.CheckedColor = "${spropactivecolor}""$)
	AddCode(sbC, $"${spropname1}.GroupName = "${spropname}""$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
	'
	DeclareForm.Append($"Private ${spropname1} As SDUI5CheckBoxGroup		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Selected"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Selected = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Selected = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5Filter
				
	Dim flt As SDUI5Filter
	flt.Initialize(Me, spropname1, spropname1)
	flt.TypeOf = "legend"
	flt.Label = sproptitle
	flt.Options = spropoptions
	flt.Value = spropvalue
	flt.Color = spropcolor
	flt.ActiveColor = spropactivecolor
	flt.Enabled = bpropenabled
	flt.Visible = bpropvisible
	flt.BackgroundColor = spropbgcolor
	flt.Border = bpropborder
	flt.BorderColor = spropbordercolor
	flt.MarginAXYTBLR = spropmargin
	flt.PaddingAXYTBLR = sproppadding
	flt.ParentID = mpos
	flt.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Filter"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.TypeOf = "legend""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Options = "${spropoptions}""$)
	AddCode(sbC, $"${spropname1}.Value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Color = "${spropcolor}""$)
	AddCode(sbC, $"${spropname1}.ActiveColor = "${spropactivecolor}""$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5Filter		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname} As String = item.Get("${spropname}")"$).Append(CRLF)

End Sub

Sub BuildSDUI5TextBoxGroup
	Dim txt As SDUI5TextBox
	txt.Initialize(Me, spropname1, spropname1)
	txt.InputType = "legend"
	txt.TypeOf = "text"
	txt.Label = sproptitle
	txt.value = spropvalue
	txt.Required = bproprequired
	txt.PrependIcon = spropprepend
	txt.AppendIcon = spropappend
	txt.Enabled = bpropenabled
	txt.Visible = bpropvisible
	txt.ReadOnly = bpropreadonly
	txt.BackgroundColor = spropbgcolor
	txt.Border = bpropborder
	txt.BorderColor = spropbordercolor
	txt.MarginAXYTBLR = spropmargin
	txt.PaddingAXYTBLR = sproppadding
	txt.ParentID = mpos
	txt.AddComponent
	'
	If spropprepend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	If spropappend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.TypeOf = "text""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
				
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
	
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
End Sub

Sub BuildSDUI5SelectGroup
	Dim sel As SDUI5Select
	sel.Initialize(Me, spropname1, spropname1)
	sel.InputType = "legend"
	sel.Label = sproptitle
	sel.Placeholder = $"Select ${sproptitle}"$
	sel.Options = spropoptions
	sel.Value = spropvalue
	sel.Required = bproprequired
	sel.PrependIcon = spropprepend
	sel.AppendIcon = spropappend
	sel.Enabled = bpropenabled
	sel.Visible = bpropvisible
	sel.BackgroundColor = spropbgcolor
	sel.Border = bpropborder
	sel.BorderColor = spropbordercolor
	sel.MarginAXYTBLR = spropmargin
	sel.PaddingAXYTBLR = sproppadding
	sel.ParentID = mpos
	sel.AddComponent
	'
	If spropprepend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_prepend (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
	If spropappend <> "" Then
		PageCode.Append($"Private Sub ${spropname1}_append (e As BANanoEvent)"$).Append(CRLF)
		PageCode.Append($"End Sub"$).Append(CRLF)
	End If
				
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5Select"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Placeholder = "Select ${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.Options = "${spropoptions}""$)
	AddCode(sbC, $"${spropname1}.Value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.PrependIcon = "${spropprepend}""$)
	If spropprepend <> "" Then AddCode(sbC, $"${spropname1}.PrependVisible = True"$)
	AddCode(sbC, $"${spropname1}.AppendIcon = "${spropappend}""$)
	If spropappend <> "" Then AddCode(sbC, $"${spropname1}.AppendVisible = True"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5Select		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname1}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)		
End Sub

Sub BuildSDUI5Dialer
	Dim txt As SDUI5TextBox
	txt.Initialize(Me, spropname1, spropname1)
	txt.InputType = "legend"
	txt.TypeOf = "dialer"
	txt.Label = sproptitle
	txt.value = spropvalue
	txt.Required = bproprequired
	txt.Enabled = bpropenabled
	txt.Visible = bpropvisible
	txt.ReadOnly = bpropreadonly
	txt.MinValue = spropstart
	txt.StepValue = spropstep
	txt.MaxValue = spropmax
	txt.BackgroundColor = spropbgcolor
	txt.Border = bpropborder
	txt.BorderColor = spropbordercolor
	txt.MarginAXYTBLR = spropmargin
	txt.PaddingAXYTBLR = sproppadding
	txt.ParentID = mpos
	txt.AddComponent
	'
	AddComment(sbC, $"Add ${spropname1}"$)
'				AddCode(sbC, $"Dim ${spropname1} As SDUI5TextBox"$)
	AddCode(sbC, $"${spropname1}.Initialize(Me, "${spropname1}", "${spropname1}")"$)
	AddCode(sbC, $"${spropname1}.InputType = "legend""$)
	AddCode(sbC, $"${spropname1}.TypeOf = "dialer""$)
	AddCode(sbC, $"${spropname1}.Label = "${sproptitle}""$)
	AddCode(sbC, $"${spropname1}.value = "${spropvalue}""$)
	AddCode(sbC, $"${spropname1}.Required = ${bproprequired}"$)
	AddCode(sbC, $"${spropname1}.Enabled = ${bpropenabled}"$)
	AddCode(sbC, $"${spropname1}.Visible = ${bpropvisible}"$)
	AddCode(sbC, $"${spropname1}.ReadOnly = ${bpropreadonly}"$)
	AddCode(sbC, $"${spropname1}.MinValue = "${spropstart}""$)
	AddCode(sbC, $"${spropname1}.StepValue = "${spropstep}""$)
	AddCode(sbC, $"${spropname1}.MaxValue = "${spropmax}""$)
	AddCode(sbC, $"${spropname1}.BackgroundColor = "${spropbgcolor}""$)
	AddCode(sbC, $"${spropname1}.Border = ${bpropborder}"$)
	AddCode(sbC, $"${spropname1}.BorderColor = "${spropbordercolor}""$)
	AddCode(sbC, $"${spropname1}.MarginAXYTBLR = "${spropmargin}""$)
	AddCode(sbC, $"${spropname1}.PaddingAXYTBLR = "${sproppadding}""$)
	AddCode(sbC, $"${spropname1}.ParentID = mdl${properTable}.Form.CellID("${sproprow}", "${spropcol}")"$)
	AddCode(sbC, $"BANano.Await(${spropname1}.AddComponent)"$)
				
				
	DeclareForm.Append($"Private ${spropname1} As SDUI5TextBox		'ignore"$).Append(CRLF)
	IntFormWrite.Append($"Dim s${spropname2} As String = ${spropname1}.Value"$).append(CRLF)
	If spropdatatype <> "None" Then IntFormWrite1.Append($"db.SetField("${spropname}", s${spropname2})"$).append(CRLF)
	IntFormDefaults.Append($"${spropname1}.Value = "${spropvalue}""$).Append(CRLF)
	If spropdatatype <> "None" Then IntFormRead.Append($"Dim s${spropname2} As String = db.GetString("${spropname}")"$).Append(CRLF)
	IntFormRead1.Append($"${spropname}.Value = s${spropname2}"$).Append(CRLF)
	IntFormEdit.Append($"Dim s${spropname2} As String = item.Get("${spropname}")"$).Append(CRLF)
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
		Dim ftName As String = app.UI.CamelCase(ft)
		'
		If loads.ContainsKey(ftName) = False Then
		AddCode(sb, $"'Load ${ftName}"$)
		AddCode(sb, $"Private Sub Load${ftName}				'ignore"$)
		AddCode(sb, $"${ftName}Object.Initialize"$)
		AddCode(sb, $"${ftName}ObjectM.Initialize"$)
		'
		AddCode(sb, $"Dim db As SDUI${sdatabase}"$)
		AddCode(sb, $"db.Initialize(Me, "${ft}", Main.ServerURL, "${ft}")"$)
		AddCode(sb, $"'link this api class to the data models"$)
		AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
		If buseapi Then
			AddCode(sb, $"'the api file will be api.php"$)
			AddCode(sb, $"db.ApiFile = "api""$)
			AddCode(sb, $"'we are using an api key to make calls"$)
			AddCode(sb, $"db.UseApiKey = True"$)
			AddCode(sb, $"'specify the api key"$)
			AddCode(sb, $"db.ApiKey = Main.APIKey"$)
		End If
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
			AddCode(sb, $"${ftName}Object.Put(s${ff}, s${fd} & " " & s${fd1} & " " & s${fd2})"$)
		else if (fd1 <> "") And (fd2 = "") Then
			AddCode(sb, $"${ftName}Object.Put(s${ff}, s${fd} & " " & s${fd1})"$)
		Else
			AddCode(sb, $"${ftName}Object.Put(s${ff}, s${fd})"$)
		End If
		AddCode(sb, $"${ftName}ObjectM.Put(s${ff}, rec)"$)
		AddCode(sb, $"Loop"$)
		AddCode(sb, $"End Sub"$)
		End If
		'
		If busetable Then
			Select Case ctype
			Case "Select", "SelectFromList", "SelectGroup"
			Case Else
				AddCode(sb, $"'compute value for ${ofld}"$)
				AddCode(sb, $"Private Sub ComputeValue${app.UI.CamelCase(ofld)}(item As Map) As String			'ignore"$)
				AddCode(sb, $"Dim s${ofld} As String = item.Get("${ofld}")"$)
				AddCode(sb, $"Dim t${ofld} As String = ${ftName}Object.GetDefault(s${ofld}, "")"$)
				AddCode(sb, $"'Dim rec As Map = ${ftName}ObjectM.Get(s${ofld})"$)
				AddCode(sb, $"Return t${ofld}"$)
				AddCode(sb, $"End Sub"$)
			End Select
		End If
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
	AddCode(sb, $"drawermenu.AddItemChild("", "pg-${stablename.tolowercase}", "", "${splural}")"$)
	'
	AddCode(sb, $"'****** Add this to pgIndex/BROWSERApp.drawermenu_ItemClick [Case Statement]"$)
	AddCode(sb, $"'****** Ensure you have created a code module named 'pg${app.UI.CamelCase(stablename)}' also with the source code."$)
	
	AddCode(sb, $"Case "${stablename.tolowercase}""$)
	AddCode(sb, $"pg${app.UI.CamelCase(stablename)}.Show(App)"$)
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
	AddCode(sb, $"Dim db As SDUI${sdatabase}"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	If buseapi Then
		AddCode(sb, $"db.ApiFile = "api""$)
		AddCode(sb, $"db.UseApiKey = True"$)
		AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	End If
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
			AddCode(sb, $"Private Sub ComputeValue${app.UI.CamelCase(spropname)}(item As Map) As Object			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)			
		End If
		
		If bpropcomputering Then
			AddCode(sb, $"'compute ring for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeRing${app.UI.CamelCase(spropname)}(item As Map) As Boolean			'ignore"$)
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
			AddCode(sb, $"Private Sub ComputeColor${app.UI.CamelCase(spropname)}(item As Map) As String			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"item.put("color", "")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)
		End If
		'
		If bpropcomputebgcolor Then
			AddCode(sb, $"'compute background color for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeBackgroundColor${app.UI.CamelCase(spropname)}(item As Map) As String			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"item.put("color", "")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)
		End If
		'
		If bpropcomputetextcolor Then
			AddCode(sb, $"'compute text color for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeTextColor${app.UI.CamelCase(spropname)}(item As Map) As String			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"item.put("textcolor", "")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)
		End If	
		'
		If bpropcomputeclass Then
			AddCode(sb, $"'compute class for ${spropname}"$)
			AddCode(sb, $"Private Sub ComputeClass${app.UI.CamelCase(spropname)}(item As Map) As String			'ignore"$)
			AddCode(sb, $"Dim s${spropname} As String = item.Get("${spropname}")"$)
			AddCode(sb, $"return s${spropname}"$)
			AddCode(sb, $"End Sub"$)
			AddCode(sb, $"'"$)
		End If
	Next
End Sub


private Sub BuildProcessGlobals
	AddCode(sb, $"Sub Process_Globals"$)
	AddCode(sb, $"Private BANano As BANano 							'ignore"$)
	AddCode(sb, $"Private app As SDUI5App							'ignore"$)
	AddCode(sb, $"Private tbl${properTable} As SDUI5Table			'ignore"$)
	If busemodal = False Then
		AddCode(sb, $"Private pref${properTable} As SDUI5Preferences	'ignore"$)
		AddCode(sb, $"Private SDUI5Column1 As SDUI5Column				'ignore"$)
		AddCode(sb, $"Private SDUI5Column2 As SDUI5Column				'ignore"$)
	Else
		AddCode(sb, $"Private mdl${properTable} As SDUI5Modal	'ignore"$)
	End If
	AddCode(sb, $"Private Mode As String = ""						'CRUD control"$)
	AddCode(sb, $"Private toDeleteID As String						'id of item to delete"$)
	AddCode(sb, $"Private toDeleteName As String					'name of item to delete"$)
	AddCode(sb, $"Public name As String = "${properTable.ToLowerCase}""$)
	AddCode(sb, $"Public title As String = "${splural}""$)
	AddCode(sb, $"Public icon As String = "./assets/page.svg""$)
	AddCode(sb, $"Public color As String = "#000000""$)
	If fTables.Size > 0 Then
		AddCode(sb, "'define foreign table maps")
		For Each k As String In fTables.Keys
			Dim ftP As String = app.UI.CamelCase(k)
			AddCode(sb, $"Private ${ftP}Object As Map"$)
			AddCode(sb, $"Private ${ftP}ObjectM As Map"$)
		Next
	End If
	If busemodal Then AddCode(sb, FormGlobal)
	AddCode(sb, $"End Sub"$)
End Sub


private Sub BuildTableColumns
	tblFiles.Initialize 
	For Each prop As Map In properties
		spropname = prop.Get("propname")
		sproptitle = prop.Get("proptitle")
		bpropactive = prop.Get("propactive")
		Dim bpropcomputevalue As Boolean = prop.Get("propcomputevalue")
		Dim bpropcomputering As Boolean = prop.Get("propcomputering")
		Dim bpropcomputecolor As Boolean = prop.Get("propcomputecolor")
		Dim bpropcomputetextcolor As Boolean = prop.Get("propcomputetextcolor")
		Dim bpropcomputebgcolor As Boolean = prop.Get("propcomputebgcolor")
		Dim bpropcomputeclass As Boolean = prop.Get("propcomputeclass")
		spropalign = prop.Get("propalign")
		spropalign = app.UI.CStr(spropalign)
		Dim bpropcolumnvisible As Boolean = prop.Get("propcolumnvisible")
		Dim spropcolumntype As String = prop.Get("propcolumntype")
		spropcolumntype = app.UI.CStr(spropcolumntype)
		Dim spropcolumnvertical As String = prop.Get("propcolumnvertical")
		spropcolumnvertical = app.UI.CStr(spropcolumnvertical)
		Dim bProptotal As Boolean = prop.Get("proptotal")
		spropicon = prop.Get("propicon")
		spropicon = app.UI.CStr(spropicon)
		spropcolor = prop.GetDefault("propcolor", "")
		spropcolor = app.UI.CStr(spropcolor)
		spropsize = prop.Get("propsize")
		spropsize = app.UI.CStr(spropsize)
		spropshape = prop.Get("propshape")
		spropshape = app.UI.CStr(spropshape)
		Dim spropsubtitle1 As String = prop.Get("propsubtitle1")
		spropsubtitle1 = app.UI.CStr(spropsubtitle1)
		Dim spropsubtitle2 As String = prop.Get("propsubtitle2")
		spropsubtitle2 = app.UI.CStr(spropsubtitle2)
		spropheight = prop.get("propheight")
		spropheight = app.UI.CStr(spropheight)
		bpropreadonly = prop.Get("propreadonly")
		spropbgcolor = prop.Get("propbgcolor")
		spropbgcolor = app.UI.CStr(spropbgcolor)
		sPropTextColor = prop.Get("proptextcolor")
		sPropTextColor = app.UI.CStr(sPropTextColor)
		spropprefix = prop.Get("propprefix")
		spropprefix = app.UI.CStr(spropprefix)
		spropdateformat = prop.GetDefault("propdateformat", "Y-m-d")
		spropdateformat = app.UI.CStr(spropdateformat)
		spropprepend = prop.Get("propprepend")
		spropprepend = app.UI.CStr(spropprepend)
		spropsuffix = prop.Get("propsuffix")
		spropsuffix = app.UI.CStr(spropsuffix)
		spropappend = prop.Get("propappend")
		spropappend = app.UI.CStr(spropappend)
		sproprows = prop.Get("proprows")
		sproprows = app.UI.CStr(sproprows)
		spropwidth = prop.Get("propwidth")
		spropwidth = app.UI.CStr(spropwidth)
		spropmax = prop.Get("propmax")
		spropmax = app.UI.CStr(spropmax)
		spropstart = prop.Get("propstart")
		spropstart = app.UI.CStr(spropstart)
		sproplocale = prop.Get("proplocale")
		sproplocale = app.UI.CStr(sproplocale)
		spropdisplayformat = prop.GetDefault("propdisplayformat", "D, d M J")
		spropdisplayformat = app.UI.CStr(spropdisplayformat)
		spropstep = prop.Get("propstep")
		spropstep = app.UI.CStr(spropstep)
		Dim sRawpropoptions As String = prop.Get("propoptions")
		sRawpropoptions = app.UI.CStr(sRawpropoptions)
		bPropMultiple = prop.Get("propmultiple")		
		'
		bpropborder = app.GetBoolean(prop, "propborder")
		spropbgcolor = app.GetString(prop, "propbgcolor")
		spropbordercolor = app.GetString(prop, "propbordercolor")
		spropmargin = app.GetString(prop, "propmargin")
		sproppadding = app.GetString(prop, "proppadding")
		spropdatatype = app.GetString(prop, "propdatatype")
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
		bPropMultiple = app.UI.CBool(bPropMultiple)
		'
		If bpropactive = False Then Continue
		If spropcolumntype = "None" Then Continue
		If spropdatatype = "None" Then Continue
		'
		Select Case spropcolumntype
		Case "Select", "SelectFromList", "SelectGroup"
			bpropcomputevalue = False
		End Select
		
		Select Case spropcolumntype.tolowercase
		Case "action"
			'tbl.AddColumnAction("btnstart", "Start/Stop", "fa-solid fa-play", app.COLOR_FUCHSIA)
			AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropicon}", "${spropcolor}", "${sPropTextColor}")"$)
			Case "avatar"
				'tbl.AddColumnAvatar("avatar", "Employee", "4rem", app.MASK_CIRCLE)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropshape}")"$)
			Case "avatargroup"
				'tbl.AddColumnAvatarGroup("agroup", "Resources", "2rem", app.MASK_CIRCLE)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropshape}")"$)
			Case "avatarplaceholder"
				'tbl.AddColumnAvatarPlaceholder("hours", "Hours", "3rem", app.MASK_CIRCLE, "primary")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropshape}", "${spropcolor}")"$)
			Case "avatartitle"
				'tb2.AddColumnAvatarTitle("avatar", "Employee", "4rem", "name", app.MASK_CIRCLE)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropsubtitle1}", "${spropshape}")"$)
			Case "avatartitlesubtitle"
				'tb3.AddColumnAvatarTitleSubTitle("avatar", "Employee", "4rem", "name", "country", app.MASK_HEXAGON)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropsubtitle1}", "${spropsubtitle2}", "${spropshape}")"$)
			Case "badge"
				'tbl.AddColumnBadge("name", "Category", "item.color")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropcolor}")"$)
			Case "badgeavatartitle"
				'tbl.AddColumnBadgeAvatarTitle("avatar", "Resource", "10", "name", "")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropsubtitle1}", "${spropcolor}")"$)
			Case "badgegroup"
				'tbl.AddColumnBadgeGroupColor("tags", "Tags", "10", "success")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}Color("${spropname}", "${sproptitle}", "${spropheight}","${spropcolor}")"$)
			Case "button"
				'tb4.AddColumnButton("btnload", "Process", app.COLOR_INDIGO)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropcolor}")"$)
			Case "checkbox", "checkboxlegend"
				'tbl.AddColumnCheckBox("active", "Active", app.COLOR_PRIMARY, False)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropactivecolor}", ${bpropreadonly})"$)
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
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, "${spropdateformat}", "${spropdisplayformat}", False, ${bPropMultiple}, False, "${sproplocale}")"$)
			Case "datetime"
				'tbl.AddColumnDate("trandate", "Date")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}")"$)
			Case "datetimepicker"
				'tbl.AddColumnDateTimePicker("dod", "Date of Death", False, "d/m/Y H:i", "d/m/Y H:i", "es")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, "${spropdateformat}", "${spropdisplayformat}", False, False, False, "${sproplocale}")"$)
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
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropwidth}", "${spropicon}", "${spropcolor}")"$)
			Case "filesize"
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}")"$)
			Case "icon"
				'tbl.AddColumnIcon("sm", "Social Media", app.SIZE_LG, "item.color")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropcolor}")"$)
			Case "icontitle"
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropsubtitle1}", "${spropcolor}")"$)
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
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropicon}", "${spropcolor}", ${optionsmx})"$)
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
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropwidth}", ${spropmax}, "${spropcolor}")"$)
			Case "radial"
				'tb4.AddColumnRadialProgress("progress", "Progress", "3.5rem", "item.color", "%")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", ${spropcolor}, "${spropsuffix}")"$)
			Case "radiogroup"
				'tb4.AddColumnRadioGroup("gender", "Gender", False, app.COLOR_PRIMARY, CreateMap("male":"Male","female":"Female"))
				Dim optionsmx As String = Json2CreateMap(sRawpropoptions)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${bpropreadonly}, "${spropcolor}", ${optionsmx})"$)
			Case "range"
				'tb4.AddColumnRange("hours", "Hours", 8, app.COLOR_ACCENT)
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", ${spropmax}, "${spropcolor}")"$)
			Case "rating"
				'tbl.AddColumnRating("rate", "Satisfaction", 3, "item.color")
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropsize}", "${spropcolor}", "${spropshape}")"$)
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
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${spropcolor}", ${bpropreadonly})"$)
			Case "website"
				'tbl.AddColumnEmail("email", "Email", "name", app.color_accent)
				Dim source As String = spropsubtitle1
				If spropsubtitle1 = "" Then source = spropname
				AddCode(sb, $"tbl${properTable}.AddColumn${spropcolumntype}("${spropname}", "${sproptitle}", "${source}", app.color_info)"$)
		End Select
		'
		Select Case spropcolumnvertical
		Case "LR"
			AddCode(sb, $"tbl${properTable}.SetHeaderVerticalLR("${spropname}")"$)
		Case "RL"
			AddCode(sb, $"tbl${properTable}.SetHeaderVerticalRL("${spropname}")"$)
		End Select
		
		If bProptotal Then
			AddCode(sb, $"tbl${properTable}.SetColumnSumValues("${spropname}", True)"$)
		End If
		'
		If bpropcomputevalue Then
			AddComment(sb, $"Set the computed value for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeValue("${spropname}", "ComputeValue${app.UI.CamelCase(spropname)}")"$)
		End If
		
		If bpropcomputering Then
			AddComment(sb, $"Set the computed ring for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeRing("${spropname}", "ComputeRing${app.UI.CamelCase(spropname)}")"$)
		End If
		
		If bpropcomputecolor Then
			AddComment(sb, $"Set the computed color for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeColor("${spropname}", "ComputeColor${app.UI.CamelCase(spropname)}")"$)
		End If
		'
		If bpropcomputebgcolor Then
			AddComment(sb, $"Set the computed background color for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeBackgroundColor("${spropname}", "ComputeBackgroundColor${app.UI.CamelCase(spropname)}")"$)
		End If
		'
		If bpropcomputetextcolor Then
			AddComment(sb, $"Set the computed text color for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeTextColor("${spropname}", "ComputeTextColor${app.UI.CamelCase(spropname)}")"$)
		End If
		
		If bpropcomputeclass Then
			AddComment(sb, $"Set the computed class for ${spropname}"$)
			AddCode(sb, $"tbl${properTable}.SetColumnComputeClass("${spropname}", "ComputeClass${app.UI.CamelCase(spropname)}")"$)
		End If
		'
		If sPropTextColor <> "" Then AddCode(sb, $"tbl${properTable}.SetColumnTextColor("${spropname}", "${sPropTextColor}")"$)
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
	AddCode(sb, $"BANano.LoadLayout(app.PageView, "${properTable.tolowercase}view")"$)
	AddCode(sb, $"'update navbar title on baselayout"$)
	AddCode(sb, $"pgIndex.UpdateTitle(title)"$)
	If busetable Then AddCode(sb, $"BANano.Await(Build${properTable}Table)"$)
	If busemodal Then
		AddCode(sb, $"'setup the modal dialog"$)
		AddCode(sb, $"BANano.Await(Build${properTable}Modal)"$)
	Else
		AddCode(sb, $"'setup the preference dialog"$)
		AddCode(sb, $"BANano.Await(Build${properTable}Preferences)"$)
	End If
	If busetable Then
		AddCode(sb, $"'mount the ${splural}"$)
		AddCode(sb, $"BANano.Await(Mount${properTable})"$)
	Else
		If fTables.Size > 0 Then
			AddCode(sb, "'load foreign tables")
			For Each k As String In fTables.Keys
				Dim ftP As String = app.UI.CamelCase(k)
				AddCode(sb, $"BANano.Await(Load${ftP})"$)
			Next
		End If
		AddCode(sb, $"BANano.Await(AddMode)"$)
	End If
	AddCode(sb, $"app.PageResume"$)
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildPreferenceDialog
	AddCode(sb, $"Private Sub Build${properTable}Preferences"$)
	BANano.Await(BuildPreferences($"pref${properTable}"$))
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildTable
	AddCode(sb, $"Private Sub Build${properTable}Table"$)
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
	If busemodal = False Then
		AddCode(sb, $"SDUI5Column1.Size = 12"$)
		AddCode(sb, $"SDUI5Column2.Visible = False"$)
	End If
	AddCode(sb, $"'turn to add mode"$)
	AddCode(sb, "app.PagePause")
	If fTables.Size > 0 Then
		AddCode(sb, "'load foreign tables")
		For Each k As String In fTables.Keys
			Dim ftP As String = app.UI.CamelCase(k)
			AddCode(sb, $"BANano.Await(Load${ftP})"$)
		Next
	End If
	'load all records for the table
	If busetable Then
		AddCode(sb, $"'select ${splural} from the database"$)
		AddCode(sb, $"Dim db As SDUI${sdatabase}"$)
		AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
		AddCode(sb, $"'link this api class to the data models"$)
		AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
		If buseapi Then
			AddCode(sb, $"'the api file will be api.php"$)
			AddCode(sb, $"db.ApiFile = "api""$)
			AddCode(sb, $"'we are using an api key to make calls"$)
			AddCode(sb, $"db.UseApiKey = True"$)
			AddCode(sb, $"'specify the api key"$)
			AddCode(sb, $"db.ApiKey = Main.APIKey"$)
		End If
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
	
		If fTables.Size > 0 Then
			AddCode(sb, "'load foreign tables content on columns")
			For Each k As String In fkeys.Keys
				Dim ft As String = app.ui.MvField(k, 1, ".")
				Dim ofld As String = app.ui.MvField(k, 6, ".")
				ofld = app.UI.CamelCase(ofld)
				AddCode(sb, $"tbl${properTable}.SetColumnOptions("${ofld}", ${ft}Object)"$)
			Next
		End If
		AddCode(sb, $"'load the records to the table"$)
		AddCode(sb, $"tbl${properTable}.SetItemsPaginate(db.result)"$)
	End If
	AddCode(sb, "app.PageResume")
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildAddMode
	AddCode(sb, $"'executed to prepare the preference dialog for adding a new record"$)
	AddCode(sb, $"Private Sub AddMode"$)
	AddCode(sb, $"'turn the mode to CREATE"$)
	AddCode(sb, $"Mode = "C""$)
	If busemodal Then
		AddCode(sb, $"'change the title of the modal dialog"$)
		AddCode(sb, $"mdl${properTable}.Title = "Add ${ssingular}""$)
		If mcompute.Size > 0 Then
			For Each k As String In mcompute.Keys
				Dim v As String = mcompute.Get(k)
				Dim stbl As String = app.ui.MvField(v, 1, ".")
				stbl = app.UI.CamelCase(stbl)
				Dim cname As String = GetComponentID(k)
				AddCode(sb, $"BANano.Await(${cname}.SetOptionsFromMap(${stbl}Object))"$)
			Next
		End If		
		AddCode(sb, $"'set the default properties"$)
		AddCode(sb, $"BANano.Await(Set${properTable}Defaults)"$)
		If bautoincrement = False Then
			AddCode(sb,  $"${GetComponentID(sprimarykey)}.Value = app.NextID"$)
		Else
			AddCode(sb,  $"${GetComponentID(sprimarykey)}.Value = "-1""$)
		End If
		AddCode(sb, $"mdl${properTable}.Show"$)
		If focuson.Size > 0 Then
			AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
			Dim focName As String = GetComponentID(focuson.Get(0))
			AddCode(sb, $"${focName}.Focus"$)
		End If
	Else
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
			AddCode(sb, $"pref${properTable}.SetPropertyValue("${sprimarykey}", "-1")"$)
		End If
		If focuson.Size > 0 Then
			AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
			AddCode(sb, $"pref${properTable}.SetPropertyFocus("${focuson.Get(0)}")"$)
		End If	
	End If
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildEditMode
	AddCode(sb, $"'executed when a table row is being edited"$)
	AddCode(sb, $"private Sub EditMode(item As Map)"$)
	AddCode(sb, $"'turn the mode to UPDATE"$)
	AddCode(sb, $"Mode = "U""$)
	If busemodal Then
		AddCode(sb, $"'change the title of the modal dialog"$)
		AddCode(sb, $"mdl${properTable}.Title = "Edit ${ssingular}""$)
		If mcompute.Size > 0 Then
			For Each k As String In mcompute.Keys
				Dim v As String = mcompute.Get(k)
				Dim stbl As String = app.ui.MvField(v, 1, ".")
				stbl = app.UI.CamelCase(stbl)
				Dim cname As String = GetComponentID(k)
				AddCode(sb, $"BANano.Await(${cname}.SetOptionsFromMap(${stbl}Object))"$)
			Next
		End If
		AddCode(sb, $"'set the default properties"$)
		AddCode(sb, $"BANano.Await(Set${properTable}Defaults)"$)
		For Each record As Map In properties
			Dim spropname As String = record.Get("propname")
			Dim bpropactive As Boolean = record.Get("propactive")
			bpropactive = app.UI.CBool(bpropactive)
			If bpropactive = False Then Continue
			Dim spropdatatype As String = record.Get("propdatatype")
			spropdatatype = app.UI.CStr(spropdatatype)
			If spropdatatype = "None" Then AddCode(sb, $"item.Remove("${spropname}")"$)
		Next
		AddCode(sb, FormEdit)
		AddCode(sb, FormRead1)
		AddCode(sb, $"mdl${properTable}.Show"$)
		If focuson.Size > 0 Then
			AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
			Dim focName As String = GetComponentID(focuson.Get(0))
			AddCode(sb, $"${focName}.Focus"$)
		End If
	Else	
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
		Dim bpropactive As Boolean = record.Get("propactive")
		bpropactive = app.UI.CBool(bpropactive)
		If bpropactive = False Then Continue
		Dim spropdatatype As String = record.Get("propdatatype")
		spropdatatype = app.UI.CStr(spropdatatype)
		If spropdatatype = "None" Then AddCode(sb, $"item.Remove("${spropname}")"$)
	Next
	AddCode(sb, $"pref${properTable}.PropertyBag = item"$)
	If focuson.Size > 0 Then
		AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
		AddCode(sb, $"pref${properTable}.SetPropertyFocus("${focuson.Get(0)}")"$)
	End If	
	End If
	AddCode(sb, $"End Sub"$)
End Sub

private Sub BuildCloneMode
	AddCode(sb, $"'executed when a table row is being edited"$)
	AddCode(sb, $"private Sub CloneMode(item As Map)"$)
	AddCode(sb, $"'turn the mode to UPDATE"$)
	AddCode(sb, $"Mode = "C""$)
	If busemodal Then
		AddCode(sb, $"'change the title of the modal dialog"$)
		AddCode(sb, $"mdl${properTable}.Title = "Add ${ssingular}""$)
		If mcompute.Size > 0 Then
			For Each k As String In mcompute.Keys
				Dim v As String = mcompute.Get(k)
				Dim stbl As String = app.ui.MvField(v, 1, ".")
				stbl = app.UI.CamelCase(stbl)
				Dim cname As String = GetComponentID(k)
				AddCode(sb, $"BANano.Await(${cname}.SetOptionsFromMap(${stbl}Object))"$)
			Next
		End If
		AddCode(sb, $"'set the default properties"$)
		AddCode(sb, $"BANano.Await(Set${properTable}Defaults)"$)
		If bautoincrement = False Then
			AddCode(sb,  $"item.Put("${sprimarykey}", app.NextID)"$)
		Else
			AddCode(sb,  $"item.Put("${sprimarykey}", "-1")"$)
		End If
		For Each record As Map In properties
			Dim spropname As String = record.Get("propname")
			Dim bpropactive As Boolean = record.Get("propactive")
			bpropactive = app.UI.CBool(bpropactive)
			If bpropactive = False Then Continue
			Dim spropdatatype As String = record.Get("propdatatype")
			spropdatatype = app.UI.CStr(spropdatatype)
			If spropdatatype = "None" Then AddCode(sb, $"item.Remove("${spropname}")"$)
		Next
		AddCode(sb, FormEdit)
		AddCode(sb, FormRead1)
		AddCode(sb, $"mdl${properTable}.Show"$)
		If focuson.Size > 0 Then
			AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
			Dim focName As String = GetComponentID(focuson.Get(0))
			AddCode(sb, $"${focName}.Focus"$)
		End If
	Else	
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
	If bautoincrement = False Then
		AddCode(sb,  $"item.Put("${sprimarykey}", app.NextID)"$)
	Else
		AddCode(sb,  $"item.Put("${sprimarykey}", "-1")"$)
	End If
	For Each record As Map In properties
		Dim spropname As String = record.Get("propname")
		Dim bpropactive As Boolean = record.Get("propactive")
		bpropactive = app.UI.CBool(bpropactive)
		If bpropactive = False Then Continue
		Dim spropdatatype As String = record.Get("propdatatype")
		spropdatatype = app.UI.CStr(spropdatatype)
		If spropdatatype = "None" Then AddCode(sb, $"item.Remove("${spropname}")"$)
	Next
	AddCode(sb, $"pref${properTable}.PropertyBag = item"$)
	If focuson.Size > 0 Then
		AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
		AddCode(sb, $"pref${properTable}.SetPropertyFocus("${focuson.Get(0)}")"$)
	End If	
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
			Dim ftP As String = app.UI.CamelCase(k)
			AddCode(sb, $"BANano.Await(Load${ftP})"$)
		Next
	End If
	AddCode(sb, $"Dim sID As String = item.Get("${sprimarykey}")"$)
	AddCode(sb, $"'execute a read from the database"$)
	AddCode(sb, $"Dim db As SDUI${sdatabase}"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"'assign schema"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	If buseapi Then
		AddCode(sb, $"'use api key"$)
		AddCode(sb, $"db.ApiFile = "api""$)
		AddCode(sb, $"db.UseApiKey = True"$)
		AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	End If
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
	AddCode(sb, $"Dim db As SDUI${sdatabase}"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	If buseapi Then
		AddCode(sb, $"db.ApiFile = "api""$)
		AddCode(sb, $"db.UseApiKey = True"$)
		AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	End If
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
			Dim ftP As String = app.UI.CamelCase(k)
			AddCode(sb, $"BANano.Await(Load${ftP})"$)
		Next
	End If
	AddCode(sb, $"Dim sID As String = item.Get("${sprimarykey}")"$)
	AddCode(sb, $"'execute a read from the database"$)
	AddCode(sb, $"Dim db As SDUI${sdatabase}"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"'assign schema"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	If buseapi Then
		AddCode(sb, $"'use api key"$)
		AddCode(sb, $"db.ApiFile = "api""$)
		AddCode(sb, $"db.UseApiKey = True"$)
		AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	End If
	AddCode(sb, $"'read the record"$)
	AddCode(sb, $"Dim rec As Map = BANano.Await(db.READ(sID))"$)
	AddCode(sb, $"BANano.Await(CloneMode(rec))"$)
	AddCode(sb, "app.PageResume")
	AddCode(sb, $"End Sub"$)
End Sub


private Sub BuildModalSave
	AddComment(sb, $"mdl${properTable} dialog 'Save' click"$)
	AddCode(sb, $"Private Sub mdl${properTable}_Yes_Click (e As BANanoEvent)"$)
	AddCode(sb, $"e.PreventDefault"$)
	AddComment(sb, "Check validity of required fields")
	AddCode(sb, $"Dim bValid As Boolean = BANano.Await(Get${properTable}Valid)"$)
	AddCode(sb, $"If bValid = False Then"$)
	AddCode(sb, $"BANano.Await(app.ShowSwalErrorWait("${ssingular}", "The ${ssingular.tolowercase} details are not complete!", "Ok"))"$)
		If focuson.Size > 0 Then
			AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
			Dim focName As String = GetComponentID(focuson.Get(0))
			AddCode(sb, $"App.UI.EnsureVisible(${focName}.ID)"$)
			AddCode(sb, $"${focName}.Focus"$)
		End If
		AddCode(sb, $"Return"$)
	AddCode(sb, $"End If"$)	
	
	AddCode(sb, $"app.pagepause"$)
	AddCode(sb, FormWrite)
	
	AddCode(sb, $"'open the database and save the record"$)
	AddCode(sb, $"Dim db As SDUI${sdatabase}"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	If buseapi Then
		AddCode(sb, $"db.ApiFile = "api""$)
		AddCode(sb, $"db.UseApiKey = True"$)
		AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	End If
	AddCode(sb, $"'pass the map record"$)
	AddComment(sb, "Prepare database to save")
	AddCode(sb, $"db.PrepareRecord"$)
	AddCode(sb, FormWrite1)
	AddCode(sb, $"Select Case Mode"$)
	AddCode(sb, $"Case "C""$)
	AddCode(sb, $"'create a new record"$)
	AddCode(sb, $"Dim nid As String = BANano.Await(db.CREATE)"$)
	AddCode(sb, $"Case "U""$)
	AddCode(sb, $"'update an existing record"$)
	AddCode(sb, $"Dim nid As String = BANano.Await(db.UPDATE)"$)
	AddCode(sb, $"End Select"$)
	AddCode(sb, $"app.pageresume"$)
	AddCode(sb, $"If nid <> "" Then"$)
	AddCode(sb, $"app.ShowToastSuccess("${ssingular} has been created/updated.")"$)
	AddCode(sb, $"Else"$)
	AddCode(sb, $"app.ShowToastError("${ssingular} has NOT been created/updated. Please try again")"$)
	AddCode(sb, "Return")
	AddCode(sb, $"End If"$)
	AddComment(sb, "Close the modal")
	AddCode(sb, $"mdl${properTable}.Close"$)
	If busetable Then AddCode(sb, $"BANano.Await(Mount${properTable})"$) 
	AddCode(sb, $"End Sub"$)
	'
	AddComment(sb, $"mdl${properTable} dialog 'No' click"$)
	AddCode(sb, $"Private Sub mdl${properTable}_No_Click (e As BANanoEvent)"$)
	AddCode(sb, $"e.PreventDefault"$)
	AddCode(sb, $"mdl${properTable}.Close"$)
	If busetable Then  AddCode(sb, $"BANano.Await(Mount${properTable})"$)
	AddCode(sb, "End Sub")
End Sub

private Sub BuildPreferenceSave
	AddCode(sb, $"'executed when a Apply button is clicked on the preference dialog"$)
	AddCode(sb, $"Private Sub pref${properTable}_Yes_Click (e As BANanoEvent)"$)
	AddCode(sb, $"e.PreventDefault"$)
	AddCode(sb, $"'validate the property bag details"$)
	AddCode(sb, $"Dim bValid As Boolean = BANano.Await(pref${properTable}.IsPropertyBagValid)"$)
	AddCode(sb, $"If bValid = False Then"$)
	AddCode(sb, $"BANano.Await(app.ShowSwalErrorWait("${ssingular}", "The ${ssingular.tolowercase} details are not complete!", "Ok"))"$)
	If focuson.Size > 0 Then
		AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
		AddCode(sb, $"pref${properTable}.SetPropertyEnsureVisible(${focuson.Get(0)})"$)
		AddCode(sb, $"pref${properTable}.SetPropertyFocus("${focuson.Get(0)}")"$)
	End If
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
	AddCode(sb, $"Dim db As SDUI${sdatabase}"$)
	AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
	AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
	If buseapi Then
		AddCode(sb, $"db.ApiFile = "api""$)
		AddCode(sb, $"db.UseApiKey = True"$)
		AddCode(sb, $"db.ApiKey = Main.APIKey"$)
	End If
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
		Dim spropdateformat As String = record.GetDefault("propdateformat", "Y-m-d")
		Dim spropdisplayformat As String = record.GetDefault("propdisplayformat", "D, d M J")
		Dim bproptime24 As Boolean = record.Get("proptime24")
		bproptime24 = app.UI.CBool(bproptime24)
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
		Dim spropwheelposition As String = record.GetDefault("propwheelposition", "bottom-end")
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
				bproptime24 = app.UI.CBool(bproptime24)
				sb.Append($"${mName}.AddPropertyDateTimePicker("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired}, "${spropdateformat}", "${spropdisplayformat}", ${bproptime24}, "${sproplocale}")"$).Append(CRLF)
			Case "TimePicker"
				bproptime24 = app.UI.CBool(bproptime24)
				sb.Append($"${mName}.AddPropertyTimePicker("${spropname}", "${sproptitle}", "${spropvalue}", ${sproprequired},"${spropdateformat}", "${spropdisplayformat}", ${bproptime24}, "${sproplocale}")"$).Append(CRLF)
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
			Case "CheckBox", "CheckBoxLegend"
				spropvalue = app.UI.CBool(spropvalue)
				sb.Append($"${mName}.AddPropertyCheckBox("${spropname}", "${sproptitle}", ${spropvalue}, "${spropactivecolor}")"$).Append(CRLF)
				sb.Append($"${mName}.SetPropertyChecked("${spropname}", ${spropvalue})"$).Append(CRLF)
			Case "Toggle", "ToggleLegend"
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
				sb.Append($"${mName}.AddPropertyCheckBoxGroup("${spropname}", "${sproptitle}", "${spropvalue}", "${spropactivecolor}", "${spropactivecolor}", ${spropname}options)"$).Append(CRLF)
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

Sub BuildInputComponents(mdl As SDUI5Modal)
	GridCode = mdl.Form.GridCode
	pkComponent = ""
	'
	For Each record As Map In properties
		spropdatatype = record.Get("propdatatype")
		spropdatatype = app.UI.CStr(spropdatatype)
		sproptype = record.get("proptype")
		spropname = record.get("propname")
		sproptitle = record.get("proptitle")
		spropvalue = record.getdefault("propvalue","")
		spropvalue = app.UI.CStr(spropvalue)
		bproprequired = record.get("proprequired")
		bproprequired = app.UI.CBool(bproprequired)
		bpropreadonly = record.get("propreadonly")
		bpropreadonly = app.UI.CBool(bpropreadonly)
		bpropenabled = record.get("propenabled")
		bpropenabled = app.UI.CBool(bpropenabled)
		bpropvisible = record.get("propvisible")
		bpropvisible = app.UI.CBool(bpropvisible)
		spropoptions = record.get("propoptions")
		spropsize = record.get("propsize")
		spropthickness = record.Get("propthickness")
		spropwidth = record.get("propwidth")
		spropheight = record.get("propheight")
		spropshape = record.get("propshape")
		spropurl = record.get("propurl")
		spropcolor = record.get("propcolor")
		spropactivecolor = record.GetDefault("propactivecolor", "#22c55e")
		spropactivecolor = app.UI.CStr(spropactivecolor)
		bpropsingleselect = record.GetDefault("propsingleselect", False)
		bpropsingleselect = app.UI.CBool(bpropsingleselect)
		spropstart = record.get("propstart")
		spropstep = record.get("propstep")
		spropmax = record.get("propmax")
		spropdateformat = record.GetDefault("propdateformat", "Y-m-d")
		spropdateformat = app.UI.CStr(spropdateformat)
		spropdisplayformat = record.GetDefault("propdisplayformat", "D, d M J")
		spropdisplayformat = app.UI.CStr(spropdisplayformat)
		bproptime24 = record.Get("proptime24")
		bproptime24 = app.UI.CBool(bproptime24)
		sproplocale = record.Get("proplocale")
		spropprefix = record.get("propprefix")
		spropicon = record.get("propicon")
		spropicon = app.UI.CStr(spropicon)
		sPropBadgeTextColor = record.GetDefault("propbadgetextcolor", "")
		sPropBadgeTextColor = app.UI.CStr(sPropBadgeTextColor)
		spropiconsize = record.Get("propiconsize")
		spropiconsize = app.UI.CStr(spropiconsize)
		'
		bPropBadgeRound = record.GetDefault("propbadgeround", False)
		bPropBadgeRound = app.UI.CBool(bPropBadgeRound)
		sPropBadgeValue = record.GetDefault("propbadgevalue", "")
		sPropBadgeValue = app.UI.CStr(sPropBadgeValue)
		sPropHintId = record.getDefault("prophintid", "")
		sPropHintId = app.UI.CStr(sPropHintId)
		bPropMultiple = record.GetDefault("propmultiple", False)
		bPropMultiple = app.UI.CBool(bPropMultiple)
		bPropSetHint = record.getdefault("propsethint", False)
		bPropSetHint = app.UI.CBool(bPropSetHint)
		bPropSetTooltip = record.GetDefault("propsettooltip", False)
		bPropSetTooltip = app.UI.CBool(bPropSetTooltip)
		sPropTextColor = record.GetDefault("proptextcolor", "")
		sPropTextColor = app.UI.CStr(sPropTextColor)
		sPropBadgeColor = record.GetDefault("propbadgecolor", "")
		sPropBadgeColor = app.UI.CStr(sPropBadgeColor)
		bPropSetBadge = record.getdefault("propsetbadge", False)
		bPropSetBadge = app.UI.CBool(bPropSetBadge)
		sproptextsize = record.GetDefault("proptextsize", "")
		sproptextsize = app.UI.CStr(sproptextsize)
		bpropsingleselect = record.GetDefault("propsingleselect", False)
		bpropsingleselect = app.UI.CBool(bpropsingleselect)
		spropaccept = record.GetDefault("propaccept", "")
		spropaccept = app.UI.CStr(spropaccept)
		bpropring = record.GetDefault("propring", False)
		bpropring = app.UI.CBool(bpropring)
		spropringcolor = record.GetDefault("propringcolor", "")
		spropringcolor = app.UI.CStr(spropringcolor)
		spropringoffset = record.GetDefault("propringoffset", "")
		spropringoffset = app.UI.CStr(spropringoffset)
		spropringoffsetcolor = record.GetDefault("propringoffsetcolor", "")
		spropringoffsetcolor = app.UI.CStr(spropringoffsetcolor)
		bproponlinestatus = record.GetDefault("proponlinestatus", False)
		bproponlinestatus = app.UI.CBool(bproponlinestatus)
		bproponline = record.GetDefault("proponline", False)
		bproponline = app.UI.CBool(bproponline)
		sprophandlediameter = record.GetDefault("prophandlediameter", "16")
		sprophandlediameter = app.UI.CStr(sprophandlediameter)
		spropwheeldiameter = record.GetDefault("propwheeldiameter", "200")
		spropwheeldiameter = app.UI.CStr(spropwheeldiameter)
		spropwheelthickness = record.GetDefault("propwheelthickness", "20")
		spropwheelthickness = app.UI.CStr(spropwheelthickness)
		spropwheelposition = record.GetDefault("propwheelposition", "bottom-end")
		spropwheelposition = app.UI.CStr(spropwheelposition)
		spropupdate = record.Get("propupdate")
		spropupdate = app.UI.CStr(spropupdate)		
		'
		spropprefix = record.GetDefault("propprefix", "")
		spropprefix = app.UI.CStr(spropprefix)
		spropsuffix = record.get("propsuffix")
		spropsuffix = app.UI.CStr(spropsuffix)
		spropprepend = record.get("propprepend")
		spropprepend = app.UI.CStr(spropprepend)
		spropappend = record.get("propappend")
		spropappend = app.UI.CStr(spropappend)
		sproplocale = app.UI.CStr(sproplocale)
		If sproplocale = "" Then sproplocale = "en"
		bpropborder = app.GetBoolean(record, "propborder")
		spropbgcolor = app.GetString(record, "propbgcolor")
		spropbordercolor = app.GetString(record, "propbordercolor")
		spropmargin = app.GetString(record, "propmargin")
		sproppadding = app.GetString(record, "proppadding")
		'
		spropmaxlen = record.getdefault("propmaxlen","")
		spropmaxlen = app.UI.CStr(spropmaxlen)
		sproprows = record.getdefault("proprows","")
		sproprows = app.UI.CStr(sproprows)
		spropalign = record.GetDefault("propalign", "left")
		spropalign = app.UI.CStr(spropalign)
		spropcol = record.GetDefault("propcol", "1")
		spropcol = app.UI.CStr(spropcol)
		sproprow = record.GetDefault("proprow", "1")
		sproprow = app.UI.CStr(sproprow)
		
		sproptermscaption = record.Get("proptermscaption")
		sproptermscaption = app.UI.CStr(sproptermscaption)
		sproptermsurl = record.Get("proptermsurl")
		sproptermsurl = app.UI.CStr(sproptermsurl)
		spropprivacycaption = record.Get("propprivacycaption")
		spropprivacycaption = app.UI.CStr(spropprivacycaption)
		spropprivacyurl = record.Get("propprivacyurl")
		spropprivacyurl = app.UI.CStr(spropprivacyurl)
		bpropblock = record.Get("propblock")
		bpropblock = app.UI.CBool(bpropblock)
		spropaction = record.Get("propaction")
		spropaction = app.UI.CStr(spropaction)
		'
		bpropactive = record.Get("propactive")
		bpropactive = app.UI.CBool(bpropactive)
		If bpropactive = False Then Continue
		
		spropname1 = GetComponentPrefix(sproptype) & app.UI.CamelCase(spropname)
		spropname2 = app.UI.CamelCase(spropname)
		If spropname = sprimarykey Then
			pkComponent = spropname1
		End If
		'
		If bproprequired Then
			RequiredInput.Put(spropname, spropname)
			IntFormValidate.Append($"app.Validate(${spropname1}.IsBlank)"$).append(CRLF)
			IntFormValidateR.Append($"${spropname1}.ResetValidation"$).append(CRLF)
		End If
		'
		InputType.Put(spropname, sproptype)
		ComponentNames.Put(spropname, spropname1)
		'
		'get the row column position
		mpos = mdl.Form.CellID(sproprow, spropcol)
		Select Case sproptype
		Case "Button"
			BANano.Await(BuildSDUI5Button)			
		Case "Dialer"
				BANano.Await(BuildSDUI5Dialer)
		Case "TextBoxGroup", "TextBox"
				BANano.Await(BuildSDUI5TextBoxGroup)
		Case "SelectGroup", "Select"
				BANano.Await(BuildSDUI5SelectGroup)
		Case "PasswordGroup", "Password"
				BANano.Await(BuildSDUI5PasswordGroup)
		Case "DatePicker"
				BANano.Await(BuildSDUI5DatePicker)
		Case "DateTimePicker"
				BANano.Await(BuildSDUI5DateTimePicker)
		Case "TimePicker"
				BANano.Await(BuildSDUI5TimePicker)
		Case "Number"
				BANano.Await(BuildSDUI5Number)
		Case "Telephone"
				BANano.Await(BuildSDUI5Telephone)
		Case "Email"
				BANano.Await(BuildSDUI5Email)
		Case "Label"
			Dim lbl As SDUI5Text
			lbl.Initialize(Me, spropname1, spropname1)
			lbl.TextTag = spropsize
			lbl.Text = sproptitle
				lbl.MarginAXYTBLR = spropmargin
				lbl.PaddingAXYTBLR = sproppadding
				lbl.ParentID = mpos
				lbl.AddComponent
				
		Case "Link"
			Dim lnk As SDUI5Link
			lnk.Initialize(Me, spropname1, spropname1)
				lnk.Text = sproptitle
				lnk.Href = spropvalue
				lnk.MarginAXYTBLR = spropmargin
				lnk.PaddingAXYTBLR = sproppadding
				lnk.ParentID = mpos
				lnk.AddComponent
		Case "TextArea"
				BANano.Await(BuildSDUI5TextArea)
		Case "FileInput"
				BANano.Await(BuildSDUI5FileInput)
		Case "FileInputProgress"
				BANano.Await(BuildSDUI5FileInputProgress)
		Case "CamCorder"
				BANano.Await(BuildSDUI5CamCorder)
		Case "Camera"
				BANano.Await(BuildSDUI5Camera)
		Case "Microphone"
				BANano.Await(BuildSDUI5Microphone)
		Case "Avatar"
				BANano.Await(BuildSDUI5Avatar)
		Case "AvatarPlaceholder"
				BANano.Await(BuildSDUI5AvatarPlaceholder)
		Case "AvatarGroup"
				BANano.Await(BuildSDUI5AvatarGroup)
		Case "Image"
				BANano.Await(BuildSDUI5Image)
		Case "Progress"
				BANano.Await(BuildSDUI5Progress)
		Case "ColorWheel"
				BANano.Await(BuildSDUI5ColorWheel)
		Case "Range"
				BANano.Await(BuildSDUI5Range)
		Case "CheckBoxLegend"
				BANano.Await(BuildSDUI5CheckBoxLegend)
		Case "CheckBox"
				BANano.Await(BuildSDUI5CheckBox)
		Case "ToggleLegend"
				BANano.Await(BuildSDUI5ToggleLegend)
		Case "Toggle"
				BANano.Await(BuildSDUI5Toggle)
		Case "RadialProgress"
				BANano.Await(BuildSDUI5RadialProgress)
		Case "Rating"
				BANano.Await(BuildSDUI5Rating)
		Case "RadioGroup"
				BANano.Await(BuildSDUI5RadioGroup)
		Case "Placeholder"
		Case "GroupSelect"
				BANano.Await(BuildSDUI5GroupSelect)
		Case "PlusMinus"
		Case "CheckBoxGroup"
				BANano.Await(BuildSDUI5CheckBoxGroup)
		Case "ToggleGroup"
				BANano.Await(BuildSDUI5ToggleGroup)
		Case "Filter"
				BANano.Await(BuildSDUI5Filter)
		End Select
	Next
	'
	FormGlobal = DeclareForm.ToString
	FormWrite = IntFormWrite.ToString
	FormWrite1 = IntFormWrite1.ToString
	FormValidate = IntFormValidate.ToString
	FormValidateR = IntFormValidateR.ToString
	FormDefaults = IntFormDefaults.ToString
	FormRead = IntFormRead.ToString
	FormRead1 = IntFormRead1.ToString
	FormEdit = IntFormEdit.tostring
	FormFile = IntFormFile.ToString
End Sub

private Sub BuildModalDefaults
	AddCode(sb, $"'***** executed to set the component default values"$)
	AddCode(sb, $"Private Sub Set${properTable}Defaults"$)
	AddCode(sb, FormDefaults)
	AddCode(sb, "End Sub")
End Sub

private Sub BuildModalValidate
	'if nothing is required then exit
	If RequiredInput.Size = 0 Then Return
	AddCode(sb, $"'***** executed to get the validity of the required components"$)
	AddCode(sb, $"Private Sub Get${properTable}Valid As Boolean"$)
	AddCode(sb, FormValidateR)
	AddCode(sb, FormValidate)
	AddCode(sb, $"Return app.IsValid"$)
	AddCode(sb, "End Sub")
End Sub

private Sub BuildFileInputCode
	AddCode(IntFormFile, $"'${spropname} input change event"$)
	AddCode(IntFormFile, $"Private Sub ${spropname1}_change (e As BANanoEvent)"$)
	AddCode(IntFormFile, $"e.PreventDefault"$)
	AddCode(IntFormFile, $"'get file object from change event"$)
	AddCode(IntFormFile, $"Dim fileObj As Map = ${spropname1}.GetFile"$)
	AddCode(IntFormFile, $"If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return"$)
	AddCode(IntFormFile, $"app.PagePause"$)
	AddCode(IntFormFile, $"'get file details"$)
	AddCode(IntFormFile, $"Dim fileDet As FileObject"$)
	AddCode(IntFormFile, $"fileDet = App.GetFileDetails(fileObj)"$)
	AddCode(IntFormFile, $"'get the file name"$)
	AddCode(IntFormFile, $"Dim fn As String = fileDet.FileName"$)
	AddCode(IntFormFile, $"'you can check the size here"$)
	AddCode(IntFormFile, $"Dim fs As Long = fileDet.FileSize"$)
	AddCode(IntFormFile, $"Dim maxSize As Int = App.UI.ToKiloBytes(500)"$)
	AddCode(IntFormFile, $"If fs > maxSize Then"$)
	AddCode(IntFormFile, $"app.PageResume"$)
	AddCode(IntFormFile, $"${spropname1}.Value = Null"$)
	AddCode(IntFormFile, $"app.ShowToastError("The maximum file size is " & App.UI.FormatFileSize(maxSize))"$)
	AddCode(IntFormFile, $"Return"$)
	AddCode(IntFormFile, $"End If"$)
	AddCode(IntFormFile, $"'"$)
	'
	If spropupdate <> "" Then
		AddCode(IntFormFile, $"Dim fText As String = BANano.Await(App.readAsDataURLWait(fileObj))"$)
		Dim xcompName As String = GetComponentID(spropupdate)
		If xcompName = "" Then xcompName = spropupdate
		AddCode(IntFormFile, $"${xcompName}.Src = fText"$)
	Else
		AddCode(IntFormFile, $"'****"$)
		AddCode(IntFormFile, $"'Dim fJSON As Map = BANano.Await(App.readAsJsonWait(fileObj))"$)
		AddCode(IntFormFile, $"'Dim fBuffer As Object = BANano.Await(App.readAsArrayBufferWait(fileObj))"$)
		AddCode(IntFormFile, $"'Dim fText As String = BANano.Await(App.readAsTextWait(fileObj))"$)
		AddCode(IntFormFile, $"'Dim fText As String = BANano.Await(App.readAsDataURLWait(fileObj))"$)
		AddCode(IntFormFile, $"'"$)
		AddCode(IntFormFile, $"'img.Src = fText"$)
		AddCode(IntFormFile, $"'img.Tag = fText"$)
		AddCode(IntFormFile, $"'"$)
		AddCode(IntFormFile, $"'****"$)
		AddCode(IntFormFile, $"'"$)
		AddCode(IntFormFile, $"'upload excel file"$)
		AddCode(IntFormFile, $"'Dim xcel As SDUIExcel"$)
		AddCode(IntFormFile, $"'xcel.Initialize(Me, "excel", fn)"$)
		AddCode(IntFormFile, $"'Dim xcelBuffer As Object = BANano.Await(readAsArrayBufferWait(fileObj))"$)
		AddCode(IntFormFile, $"'Dim records As List = BANano.Await(xcel.ReadFile(xcelBuffer))"$)
		AddCode(IntFormFile, $"'Log(xcel.GetSingleCode(records))"$)
		AddCode(IntFormFile, $"'"$)
	End If
	'
	AddCode(IntFormFile, $"app.PageResume"$)
	AddCode(IntFormFile, $"End Sub"$)
	AddCode(IntFormFile, $"'"$)
End Sub

'get the component id by field name
Sub GetComponentID(s As String) As String
	If ComponentNames.ContainsKey(s) Then
		Dim x As String = ComponentNames.Get(s)
		Return x
	Else
		BANano.Console.Warn($"'${s}' form component does not exist!"$)
	End If
	Return ""
End Sub

Sub GetComponentPrefix(xproptype As String) As String
	Select Case xproptype
		Case "Dialer", "TextBoxGroup", "TextBox", "PasswordGroup", "DatePicker", "DateTimePicker", "TimePicker", "Password", "Number", "Telephone", "Email", "TextArea", "ColorWheel"
			Return "txt"
		Case "SelectGroup", "Select"
			Return "cbo"
		Case "Label"
			Return "lbl"
		Case "Link"
			Return "lnk"
		Case "FileInput", "FileInputProgress", "CamCorder", "Camera", "Microphone"
			Return "fil"
		Case "Avatar"
			Return "avt"
		Case "AvatarPlaceholder"
			Return "avtpl"
		Case "AvatarGroup"
			Return "avtg"
		Case "Image"
			Return "img"
		Case "Progress"
			Return "prg"
		Case "Range"
			Return "rng"
		Case "CheckBox", "CheckBoxLegend"
			Return "chk"
		Case "Toggle", "ToggleLegend"
			Return "tgl"
		Case "RadialProgress"
			Return "rp"
		Case "Rating"
			Return "rt"
		Case  "RadioGroup"
			Return "rg"
		Case "GroupSelect"
			Return "gs"
		Case "CheckBoxGroup"
			Return "chkg"
		Case "ToggleGroup"
			Return "tglg"
		Case "Filter"
			Return "flt"
	End Select
End Sub

Sub GetComponentPrefix1(xproptype As String) As String
	Select Case xproptype
		Case "SDUI5TextBox"
			Return "txt"
		Case "SDUI5Select"
			Return "cbo"
		Case "SDUI5Text"
			Return "lbl"
		Case "SDUI5Link"
			Return "lnk"
		Case "SDUI5TextArea"
			Return "txta"
		Case "SDUI5FileInput"
			Return "fil"
		Case "SDUI5Avatar"
			Return "avt"
		Case "SDUI5AvatarGroup"
			Return "avtg"
		Case "SDUI5Image"
			Return "img"
		Case "SDUI5Progress"
			Return "prg"
		Case "SDUI5Range"
			Return "rng"
		Case "SDUI5CheckBox"
			Return "chk"
		Case "SDUI5Toggle"
			Return "tgl"
		Case "SDUI5RadialProgress"
			Return "rdp"
		Case "SDUI5Rating"
			Return "rt"
		Case "SDUI5RadioGroup"
			Return "rg"
		Case "SDUI5GroupSelect"
			Return "gs"
		Case "SDUI5CheckBoxGroup"
			Return "chkg"
		Case "SDUI5Filter"
			Return "flt"
	End Select		
End Sub

Private Sub PropertyBuilderMap(sb1 As StringBuilder, xpropname As String, m As Map)
	sb1.Append($"Dim ${xpropname}options As Map"$).append(CRLF)
	sb1.Append($"${xpropname}options.Initialize"$).append(CRLF)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		sb1.Append($"${xpropname}options.put("${k}", "${v}")"$).append(CRLF)
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

private Sub BuildButtonEvents
	For Each prop As Map In properties
		Dim spropname As String = prop.Get("propname")
		Dim sproptype As String = prop.Get("proptype")
		Dim spropaction As String = prop.Get("propaction")
		Dim bpropactive As Boolean = prop.Get("propactive")
		bpropactive = app.UI.CBool(bpropactive)
		If bpropactive = False Then Continue
		'
		Select Case sproptype
			Case "Button"
				Select Case spropaction
					Case "Save"
						AddComment(sb, $"${spropname} click event"$)
						AddCode(sb, $"Private Sub ${spropname}_Click (e As BANanoEvent)"$)
						AddCode(sb, $"e.PreventDefault"$)
						AddComment(sb, "Check validity of required fields")
						AddCode(sb, $"Dim bValid As Boolean = BANano.Await(Get${properTable}Valid)"$)
						AddCode(sb, $"If bValid = False Then"$)
						AddCode(sb, $"BANano.Await(app.ShowSwalErrorWait("${ssingular}", "The ${ssingular.tolowercase} details are not complete!", "Ok"))"$)
						If focuson.Size > 0 Then
							AddCode(sb, $"'focus on the ${focuson.Get(0)}"$)
							Dim focName As String = GetComponentID(focuson.Get(0))
							AddCode(sb, $"App.UI.EnsureVisible(${focName}.ID)"$)
							AddCode(sb, $"${focName}.Focus"$)
						End If
						AddCode(sb, $"Return"$)
						AddCode(sb, $"End If"$)
	
						AddCode(sb, $"app.pagepause"$)
						AddCode(sb, FormWrite)
	
						AddCode(sb, $"'open the database and save the record"$)
						AddCode(sb, $"Dim db As SDUI${sdatabase}"$)
						AddCode(sb, $"db.Initialize(Me, "${stablename}", Main.ServerURL, "${stablename}")"$)
						AddCode(sb, $"db.SetSchemaFromDataModel(app.DataModels)"$)
						If buseapi Then
							AddCode(sb, $"db.ApiFile = "api""$)
							AddCode(sb, $"db.UseApiKey = True"$)
							AddCode(sb, $"db.ApiKey = Main.APIKey"$)
						End If
						AddCode(sb, $"'pass the map record"$)
						AddComment(sb, "Prepare database to save")
						AddCode(sb, $"db.PrepareRecord"$)
						AddCode(sb, FormWrite1)
						AddCode(sb, $"Select Case Mode"$)
						AddCode(sb, $"Case "C""$)
						AddCode(sb, $"'create a new record"$)
						AddCode(sb, $"Dim nid As String = BANano.Await(db.CREATE)"$)
						AddCode(sb, $"Case "U""$)
						AddCode(sb, $"'update an existing record"$)
						AddCode(sb, $"Dim nid As String = BANano.Await(db.UPDATE)"$)
						AddCode(sb, $"End Select"$)
						AddCode(sb, $"app.pageresume"$)
						AddCode(sb, $"If nid <> "" Then"$)
						AddCode(sb, $"app.ShowToastSuccess("${ssingular} has been created/updated.")"$)
						AddCode(sb, $"Else"$)
						AddCode(sb, $"app.ShowToastError("${ssingular} has NOT been created/updated. Please try again")"$)
						AddCode(sb, "Return")
						AddCode(sb, $"End If"$)
						AddComment(sb, "Close the modal")
						AddCode(sb, $"mdl${properTable}.Close"$)
						If busetable Then AddCode(sb, $"BANano.Await(Mount${properTable})"$)
						AddCode(sb, $"End Sub"$)
				Case "Delete"		
				Case "Cancel"
						AddCode(sb, $"'${spropname} click event"$)
						AddCode(sb, $"Private Sub ${spropname}_Click (e As BANanoEvent)"$)
						AddCode(sb, $"e.PreventDefault"$)
						AddComment(sb, "Close the modal")
						AddCode(sb, $"mdl${properTable}.Close"$)
						If busetable Then AddCode(sb, $"BANano.Await(Mount${properTable})"$)
						AddCode(sb, $"End Sub"$)
				End Select
		End Select
	Next
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
			AddCode(sb, $"fileDet = App.GetFileDetails(fileObj)"$)
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