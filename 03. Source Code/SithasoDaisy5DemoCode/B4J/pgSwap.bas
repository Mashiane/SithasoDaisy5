B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5Swap1 As SDUI5Swap		'ignore
	Private SDUI5Swap2 As SDUI5Swap		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.GridCols = "2"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Swap1.Initialize(Me, "SDUI5Swap1", "SDUI5Swap1")
	SDUI5Swap1.ParentID = "SDUI5Row1"
	SDUI5Swap1.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Swap1.OffTextColor = "#FF0000"
	SDUI5Swap1.OnTextColor = "#00FF00"
	SDUI5Swap1.TextSize = "3xl"
	BANano.Await(SDUI5Swap1.AddComponent)
	'
	SDUI5Swap2.Initialize(Me, "SDUI5Swap2", "SDUI5Swap2")
	SDUI5Swap2.ParentID = "SDUI5Row1"
	SDUI5Swap2.Active = True
	SDUI5Swap2.Height = "80px"
	SDUI5Swap2.IndeterminateText = ""
	SDUI5Swap2.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Swap2.OffIcon = "./assets/yyoff.svg"
	SDUI5Swap2.OffText = ""
	SDUI5Swap2.OffTextColor = "#FF0000"
	SDUI5Swap2.OnIcon = "./assets/yyon.svg"
	SDUI5Swap2.OnText = ""
	SDUI5Swap2.OnTextColor = "#00FF00"
	SDUI5Swap2.SwapType = "icon"
	SDUI5Swap2.TypeOf = "rotate"
	SDUI5Swap2.Width = "80px"
	BANano.Await(SDUI5Swap2.AddComponent)
	pgIndex.UpdateTitle("SDUI5Swap")
End Sub

Private Sub SDUI5Swap2_Change (value As Boolean)
	app.ShowToastInfo(value)
End Sub

Private Sub SDUI5Swap1_Change (value As Boolean)
	app.ShowToastInfo(value)
End Sub

