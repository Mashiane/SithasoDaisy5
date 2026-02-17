B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5OfficeRibbon1 As SDUI5OfficeRibbon		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
End Sub

#if css
	.font-group .e-ribbon-group-content {
        justify-content: center;
    }
#End If

Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesOfficeRibbon)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5OfficeRibbon1.Initialize(Me, "SDUI5OfficeRibbon1", "SDUI5OfficeRibbon1")
	SDUI5OfficeRibbon1.ParentID = "SDUI5Container1"
	SDUI5OfficeRibbon1.ActiveLayout = "Classic"
	'SDUI5OfficeRibbon1.LicenseKey = "Ngo9BigBOggjHTQxAR8/V1JFaF5cX2JCf1FpRmJGdld5fUVHYVZUTXxaS00DNHVRdkdmWXZdcHVdRWleVUdzXURWYEg="
	BANano.Await(SDUI5OfficeRibbon1.AddComponent)
	pgIndex.UpdateTitle("SDUI5OfficeRibbon")
	
	SDUI5OfficeRibbon1.AddFileMenuItem("new", "New", "e-icons e-file-new")
	SDUI5OfficeRibbon1.AddFileMenuItem("open", "Open", "e-icons e-folder-open")
	SDUI5OfficeRibbon1.AddFileMenuItem("rename", "Rename", "e-icons e-rename")
	SDUI5OfficeRibbon1.AddFileMenuSeparator
	SDUI5OfficeRibbon1.AddFileMenuItem("save", "Save", "e-icons e-save")
	'
	SDUI5OfficeRibbon1.AddTab("home", "Home", "", "")
	SDUI5OfficeRibbon1.AddGroup("home.clipboard", "Clipboard", "e-icons e-paste", True, False)
	SDUI5OfficeRibbon1.AddCollection("home.clipboard.col1", "")
	
	SDUI5OfficeRibbon1.AddSplitButton("home.clipboard.col1.paste", "e-icons e-paste", "Paste", CreateMap())
	SDUI5OfficeRibbon1.AddSplitButtonItem("home.clipboard.col1.paste.keepsourceformat", "Keep Source Format")
	SDUI5OfficeRibbon1.AddSplitButtonItem("home.clipboard.col1.paste.mergeformat", "Merge format")
	SDUI5OfficeRibbon1.AddSplitButtonItem("home.clipboard.col1.paste.keeptextonly", "Keep text only")
	SDUI5OfficeRibbon1.SetItemSizeLarge("home.clipboard.col1.paste")
	SDUI5OfficeRibbon1.SetItemToolTip("home.clipboard.col1.paste", "Paste", "", "e-icons e-paste", _
	"Paste content here.</br> Add content on the clipboard to your document.")
	'
	SDUI5OfficeRibbon1.AddCollection("home.clipboard.col2", "")
	SDUI5OfficeRibbon1.AddButton("home.clipboard.col2.cut", "e-icons e-cut", "Cut")
	SDUI5OfficeRibbon1.AddButton("home.clipboard.col2.copy", "e-icons e-copy", "Copy")
	SDUI5OfficeRibbon1.AddButton("home.clipboard.col2.formpainter", "e-icons e-format-painter", "Format Painter")
	'
	SDUI5OfficeRibbon1.AddGroup("home.font", "Font", "e-icons e-bold", False, False)
	SDUI5OfficeRibbon1.SetGroupEnableGroupOverflow("home.font", True)
	SDUI5OfficeRibbon1.SetGroupOrientationRow("home.font")
	SDUI5OfficeRibbon1.SetGroupCssClass("home.font", "font-group")
	SDUI5OfficeRibbon1.AddCollection("home.font.col1", "")
	'
	Dim fontSize As List
	fontSize.Initialize 
	fontSize.AddAll(Array("8", "9", "10", "11", "12", "14", "16", "18", "20", "22", "24", "26", "28", "36", "48", "72", "96"))
	'
	Dim fontStyle As List
	fontStyle.Initialize 
	fontStyle.AddAll(Array("Algerian", "Arial", "Calibri", "Cambria", "Cambria Math", "Courier New", "Candara", "Georgia", "Impact", "Segoe Print", "Segoe Script", "Segoe UI", "Symbol", "Times New Roman", "Verdana", "Windings"))
	
	SDUI5OfficeRibbon1.AddComboBox("home.font.col1.fontname", fontStyle, 3, True, "150px")  
	SDUI5OfficeRibbon1.AddComboBox("home.font.col1.fontsize", fontSize, 3, True, "65px")
	'
	SDUI5OfficeRibbon1.AddCollection("home.font.col2", "")
	SDUI5OfficeRibbon1.AddColorPicker("home.font.col2.colorpicker", "#123456")
	SDUI5OfficeRibbon1.SetItemSizeSmall("home.font.col2.colorpicker")
	SDUI5OfficeRibbon1.AddButtonIcon("home.font.col2.bold", "e-icons e-bold", "Bold")
	SDUI5OfficeRibbon1.AddButtonIcon("home.font.col2.italic", "e-icons e-italic", "Italic")
	SDUI5OfficeRibbon1.AddButtonIcon("home.font.col2.underline", "e-icons e-underline", "Underline")
	SDUI5OfficeRibbon1.AddButtonIcon("home.font.col2.strikethrough", "e-icons e-strikethrough", "Strike Through")
	SDUI5OfficeRibbon1.AddButtonIcon("home.font.col2.case", "e-icons e-change-case", "Change Case")
	'
	SDUI5OfficeRibbon1.AddCollection("home.font.col3", "")
	SDUI5OfficeRibbon1.AddButtonGroup("home.font.col3.bg1", 0)
	SDUI5OfficeRibbon1.AddButtonGroupItem("home.font.col3.bg1.gbbold", "e-icons e-bold", True)
	SDUI5OfficeRibbon1.AddButtonGroupItem("home.font.col3.bg1.gbitalic", "e-icons e-italic", False)
	SDUI5OfficeRibbon1.AddButtonGroupItem("home.font.col3.bg1.gbunderline", "e-icons e-underline", False)
	SDUI5OfficeRibbon1.AddButtonGroupItem("home.font.col3.bg1.gbstrikethrough", "e-icons e-strikethrough", False)
	SDUI5OfficeRibbon1.AddButtonGroupItem("home.font.col3.bg1.gbcase", "e-icons e-change-case", False)
		
	
	'****
	SDUI5OfficeRibbon1.AddGroup("home.editor", "Editor", "", False, False)
	SDUI5OfficeRibbon1.SetGroupCollapsible("home.editor", False)
	SDUI5OfficeRibbon1.AddCollection("home.editor.col1", "")
	SDUI5OfficeRibbon1.AddButton("home.editor.col1.editor", "e-icons e-edit", "Editor")
	SDUI5OfficeRibbon1.SetItemSizeLarge("home.editor.col1.editor")
		
	SDUI5OfficeRibbon1.AddTab("insert", "Insert", "", "")
	SDUI5OfficeRibbon1.AddGroup("insert.tables", "Tables", "", False, False)
	SDUI5OfficeRibbon1.SetGroupCollapsible("insert.tables", False)
	SDUI5OfficeRibbon1.AddCollection("insert.tables.col1", "")
	'
	SDUI5OfficeRibbon1.AddSplitButton("insert.tables.col1.table", "e-icons e-table", "Table", CreateMap())
	SDUI5OfficeRibbon1.SetItemSizeLarge("insert.tables.col1.table")
	SDUI5OfficeRibbon1.AddSplitButtonItem("insert.tables.col1.table.inserttable", "Insert Table")
	SDUI5OfficeRibbon1.AddSplitButtonItem("insert.tables.col1.table.drawtable", "Draw Table")
	SDUI5OfficeRibbon1.AddSplitButtonItem("insert.tables.col1.table.converttable", "Convert Table")
	SDUI5OfficeRibbon1.AddSplitButtonItem("insert.tables.col1.table.excelspreadsheet", "Excel SpreadSheet")
	
	'
	SDUI5OfficeRibbon1.AddGroup("insert.illustrations",  "Illustrations", "e-icons e-image", False, False)
	SDUI5OfficeRibbon1.SetGroupEnableGroupOverflow("insert.illustrations", True)
	SDUI5OfficeRibbon1.SetGroupOrientationRow("insert.illustrations")
	SDUI5OfficeRibbon1.AddCollection("insert.illustrations.col1", "")
	SDUI5OfficeRibbon1.AddButton("insert.illustrations.col1.chart", "e-icons e-chart", "Chart")
	'
	SDUI5OfficeRibbon1.AddGroup("insert.media",  "Media", "", False, False)
	SDUI5OfficeRibbon1.SetGroupCollapsible("insert.media", False)
	SDUI5OfficeRibbon1.AddCollection("insert.media.col1", "")
	SDUI5OfficeRibbon1.AddButton("insert.media.col1.video", "e-icons e-video", "Video")
	
	'
	SDUI5OfficeRibbon1.AddTab("view", "View", "", "")
	SDUI5OfficeRibbon1.AddGroup("view.views",  "Views", "e-icons e-print", False, False)
	SDUI5OfficeRibbon1.SetGroupOrientationRow("view.views")
	SDUI5OfficeRibbon1.AddCollection("view.views.col1", "")
	SDUI5OfficeRibbon1.AddButton("view.views.col1.printlayout", "e-print e-icons", "Print Layout")
	SDUI5OfficeRibbon1.AddButton("view.views.col1.weblayout", "e-icons e-web-layout", "Web Layout")
	'
	SDUI5OfficeRibbon1.AddGroup("view.show", "Show", "", False, False)
	SDUI5OfficeRibbon1.SetGroupCollapsible("view.show", False)
	SDUI5OfficeRibbon1.AddCollection("view.show.col1", "")
	'
	SDUI5OfficeRibbon1.AddCheckBox("view.show.col1.ruler", "Ruler", False)
	SDUI5OfficeRibbon1.AddCheckBox("view.show.col1.gridlines", "Gridlines", False)
	SDUI5OfficeRibbon1.AddCheckBox("view.show.col1.navigationpane", "Navigation Pane", True)
		
	SDUI5OfficeRibbon1.refresh
End Sub


Private Sub SDUI5OfficeRibbon1_ComboChange (id As String, value As String, text As String)
	Log("SDUI5OfficeRibbon1_ComboChange")
	app.ShowToastInfo($"ComboChange: ${id}, ${value}"$)
End Sub	

Private Sub SDUI5OfficeRibbon1_cut (ID As String)
	Log("SDUI5OfficeRibbon1_cut")
	app.ShowToastSuccess("SDUI5OfficeRibbon1_cut")
End Sub

Private Sub SDUI5OfficeRibbon1_copy (ID As String)
	Log("SDUI5OfficeRibbon1_copy")	
	app.ShowToastInfo("SDUI5OfficeRibbon1_copy")
End Sub

Private Sub SDUI5OfficeRibbon1_formpainter (ID As String)
	Log("SDUI5OfficeRibbon1_formpainter")
	app.ShowToastWarning("SDUI5OfficeRibbon1_formpainter")
End Sub

private Sub SDUI5OfficeRibbon1_colorpicker(args As Map)
	Dim hexColor As String = SDUI5OfficeRibbon1.GetColor(args)
	Log("SDUI5OfficeRibbon1_colorpicker")
	app.ShowToastError($"SDUI5OfficeRibbon1_formpainter: ${hexColor}"$)
End Sub

private Sub SDUI5OfficeRibbon1_paste(args As Map)
	Log("SDUI5OfficeRibbon1_paste")
	Log(args)
End Sub

private Sub SDUI5OfficeRibbon1_paste_action(args As Map)
	Log("sdui5officeribbon_paste_action")
	Dim action As String = SDUI5OfficeRibbon1.GetActionID(args)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_paste_action: ${action}"$)
	Log(args)
End Sub

private Sub SDUI5OfficeRibbon1_bold(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_bold"$)
End Sub

private Sub SDUI5OfficeRibbon1_italic(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_italic"$)
End Sub

private Sub SDUI5OfficeRibbon1_underline(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_underline"$)
End Sub

private Sub SDUI5OfficeRibbon1_strikethrough(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_strikethrough"$)
End Sub

private Sub SDUI5OfficeRibbon1_case(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_case"$)
End Sub

private Sub SDUI5OfficeRibbon1_ruler(args As Map)
	Dim bChecked As Boolean = SDUI5OfficeRibbon1.GetChecked(args)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_ruler: ${bChecked}"$)
	Log(args)
End Sub

private Sub SDUI5OfficeRibbon1_gridlines(args As Map)
	Dim bChecked As Boolean = SDUI5OfficeRibbon1.GetChecked(args)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_gridlines: ${bChecked}"$)
	Log(args)
End Sub

private Sub SDUI5OfficeRibbon1_navigationpane(args As Map)
	Dim bChecked As Boolean = SDUI5OfficeRibbon1.GetChecked(args)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_navigationpane: ${bChecked}"$)
	Log(args)
End Sub

private Sub SDUI5OfficeRibbon1_gbbold(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_gbbold"$)
End Sub

private Sub SDUI5OfficeRibbon1_gbitalic(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_gbitalic"$)
End Sub

private Sub SDUI5OfficeRibbon1_gbunderline(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_gbunderline"$)
End Sub

private Sub SDUI5OfficeRibbon1_gbstrikethrough(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_gbstrikethrough"$)
End Sub

private Sub SDUI5OfficeRibbon1_gbcase(args As Map)
	app.ShowToastInfo($"SDUI5OfficeRibbon1_gbcase"$)
End Sub


Private Sub SDUI5OfficeRibbon1_FileMenu (args As Map)
	Dim actionID As String = SDUI5OfficeRibbon1.GetActionID(args)
	Log("SDUI5OfficeRibbon1_FileMenu")
	app.ShowToastInfo($"SDUI5OfficeRibbon1_FileMenu: ${actionID}"$)
	Log(args)
End Sub

