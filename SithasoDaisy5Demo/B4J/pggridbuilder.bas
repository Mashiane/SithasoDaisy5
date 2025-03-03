B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private prefGrid As SDUI5Preferences
	Private gridPreview As SDUI5Panel
	Private preCode As SDUI5Code
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "gridbuilderview")
	pgIndex.UpdateTitle("TailwindCSS Grid Builder")
	prefGrid.AddToolbarActionButtonIcon("refresh", "./assets/arrows-rotate-solid.svg", "#ff00ff", "#ffffff")
	prefGrid.SetToolbarButtonToolTip("refresh", "Refresh the properties to default values", "primary", "left")
	prefGrid.AddPropertyDialer("gcolumns", "Columns", "2", False, 0, 1, 12)
	prefGrid.SetPropertyToolTip("gcolumns", "Utilities for specifying the columns in a grid layout")
	prefGrid.AddPropertyDialer("grows", "Rows", "2", False, 0, 1, 12)
	
	prefGrid.SetPropertyToolTip("grows", "Utilities for specifying the rows in a grid layout.")
	prefGrid.AddPropertyDialer("ggapx", "Gap X", "2", False, 0, 1, 16)
	prefGrid.SetPropertyToolTip("ggapx", "Utilities for controlling gutters / gap between grid items within a row.")
	prefGrid.AddPropertyDialer("ggapy", "Gap Y", "2", False, 0, 1, 16)
	prefGrid.SetPropertyToolTip("ggapy", "Utilities for controlling gutters / gap between grid items within a column.")
	prefGrid.AddPropertyDialer("gsmgap", "SM Gap", "0", False, 0, 1, 16)
	prefGrid.AddPropertyDialer("gmdgap", "MD Gap", "0", False, 0, 1, 16)
	prefGrid.AddPropertyDialer("glggap", "LG Gap", "0", False, 0, 1, 16)
	prefGrid.AddPropertyDialer("gxlgap", "XL Gap", "0", False, 0, 1, 16)
	prefGrid.AddPropertyRadioGroup("ggridflow", "Flow Direction", "row", "success", "", _
	CreateMap("row": "Row", "col": "Column", "dense":"Dense", "row-dense":"Row Dense", "col-dense":"Col Dense"))
	prefGrid.SetPropertyToolTip("ggridflow", "Utilities for controlling how elements in a grid are auto-placed.")
	Dim ljc As List = app.UI.StrParse("|", "around|baseline|between|center|end|evenly|none|normal|start|stretch")
	Dim mjs As Map = app.UI.ListToSelectOptionsSort(ljc)
	prefGrid.AddPropertySelect("gjustifycontent", "Justify Content", "none", False, mjs)
	prefGrid.SetPropertyToolTip("gjustifycontent", "Utilities for controlling how flex and grid items are positioned along a container's main axis.")
	'
	Dim lai As List = app.UI.StrParse("|", "baseline|center|end|none|start|stretch")
	Dim mai As Map = app.UI.ListToSelectOptionsSort(lai)
	prefGrid.AddPropertySelect("galignitems", "Align Items", "none", False, mai)
	prefGrid.SetPropertyToolTip("galignitems", "Utilities for controlling how flex and grid items are positioned along a container's cross axis.")

	Dim props As Map = BANano.Await(prefGrid.PropertyBag)
	BANano.Await(Refresh(props))
End Sub

'refresh
Sub prefGrid_refresh_click (e As BANanoEvent)
	e.PreventDefault
	BANano.Await(prefGrid.SetPropertyBagDefaults)
	Dim props As Map = BANano.Await(prefGrid.PropertyBag)
	BANano.Await(Refresh(props))
End Sub

Private Sub prefGrid_Change (item As Map)
	BANano.Await(Refresh(item))
End Sub

Sub Refresh(item As Map)
	Dim sgridcolumns As String = item.Get("gcolumns")
	Dim sgridrows As String = item.Get("grows")
	Dim sgapx As String = item.Get("ggapx")
	Dim sgapy As String = item.Get("ggapy")
	Dim sggridflow As String = item.Get("ggridflow")
	Dim sgjustifycontent As String = item.Get("gjustifycontent")
	Dim sgalignitems As String = item.Get("galignitems")
	Dim sgsmgap As String = item.Get("gsmgap")
	Dim sgmdgap As String = item.Get("gmdgap")
	Dim sglggap As String = item.Get("glggap")
	Dim sgxlgap As String = item.Get("gxlgap")
	'
	If sgsmgap = "0" Then sgsmgap = ""
	If sgmdgap = "0" Then sgmdgap = ""
	If sglggap = "0" Then sglggap = ""
	If sgxlgap = "0" Then sgxlgap = ""
	'
	'clear the preview
	gridPreview.Clear
	gridPreview.GridCols = sgridcolumns
	gridPreview.GridRows = sgridrows
	gridPreview.GapX = sgapx
	gridPreview.GapY = sgapy
	gridPreview.GridFlow = sggridflow
	gridPreview.JustifyContent = sgjustifycontent
	gridPreview.AlignItems = sgalignitems
	gridPreview.smgap = sgsmgap
	gridPreview.mdgap = sgmdgap
	gridPreview.lggap = sglggap
	gridPreview.xlgap = sgxlgap
	
	'we dont have any rows, set to 1
	If sgridrows = "0" Then sgridrows = "1"
	If sgridcolumns = "0" Then sgridcolumns = "1"
	'
	'how many items to add
	Dim tMatrix As Int = app.UI.CInt(sgridcolumns) * app.UI.cint(sgridrows)
	'
	Dim sb As StringBuilder
	sb.Initialize
	
	Dim tDivs As Int = 0
	For tDivs = 1 To tMatrix
		Dim np As String = app.UI.PadRight(tDivs, 2, "0")
		sb.Append($"<div class="flex items-center justify-center relative bg-fuchsia-500 text-center p-4 shadow-lg rounded-lg h-14">${np}</div>"$)
	Next
	gridPreview.Append(sb.ToString)
	'show the grid class code
	Dim gCode As String = gridPreview.GetAttr("class")
	gCode = app.UI.MvRemoveItems(" ", gCode, "relative text-center font-mono text-white leading-6")
	preCode.Content = gCode
End Sub