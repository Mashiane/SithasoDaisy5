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
	Private SDUI5InfoCard1 As SDUI5InfoCard		'ignore
	Private SDUI5InfoCard2 As SDUI5InfoCard		'ignore
	Private SDUI5InfoCard3 As SDUI5InfoCard		'ignore
	Private SDUI5InfoCard4 As SDUI5InfoCard		'ignore
	Private SDUI5InfoCard5 As SDUI5InfoCard		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesInfoBox)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.SizeMd = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5InfoCard1.Initialize(Me, "SDUI5InfoCard1", "SDUI5InfoCard1")
	SDUI5InfoCard1.ParentID = "SDUI5Column1"
	SDUI5InfoCard1.Effect = "hover-expand-effect"
	SDUI5InfoCard1.Icon = "fa-solid fa-truck-medical"
	SDUI5InfoCard1.IconColor = "#00ffff"
	SDUI5InfoCard1.Separator = ","
	BANano.Await(SDUI5InfoCard1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5InfoCard5.Initialize(Me, "SDUI5InfoCard5", "SDUI5InfoCard5")
	SDUI5InfoCard5.ParentID = "SDUI5Column2"
	SDUI5InfoCard5.BackgroundColor = "#00ffff"
	SDUI5InfoCard5.Icon = "fa-solid fa-users"
	SDUI5InfoCard5.IconColor = ""
	SDUI5InfoCard5.InforType = "5"
	SDUI5InfoCard5.Separator = ","
	BANano.Await(SDUI5InfoCard5.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5InfoCard2.Initialize(Me, "SDUI5InfoCard2", "SDUI5InfoCard2")
	SDUI5InfoCard2.ParentID = "SDUI5Column3"
	SDUI5InfoCard2.Effect = "hover-expand-effect"
	SDUI5InfoCard2.Icon = "fa-solid fa-couch"
	SDUI5InfoCard2.IconColor = "#00ffff"
	SDUI5InfoCard2.InforType = "2"
	SDUI5InfoCard2.Separator = ","
	BANano.Await(SDUI5InfoCard2.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5InfoCard3.Initialize(Me, "SDUI5InfoCard3", "SDUI5InfoCard3")
	SDUI5InfoCard3.ParentID = "SDUI5Column4"
	SDUI5InfoCard3.Effect = "hover-zoom-effect"
	SDUI5InfoCard3.Icon = "fa-solid fa-igloo"
	SDUI5InfoCard3.IconColor = "#00ffff"
	SDUI5InfoCard3.InforType = "3"
	SDUI5InfoCard3.Separator = ","
	BANano.Await(SDUI5InfoCard3.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5InfoCard4.Initialize(Me, "SDUI5InfoCard4", "SDUI5InfoCard4")
	SDUI5InfoCard4.ParentID = "SDUI5Column5"
	SDUI5InfoCard4.Effect = "hover-zoom-effect"
	SDUI5InfoCard4.Icon = "fa-solid fa-network-wired"
	SDUI5InfoCard4.IconColor = "#00ffff"
	SDUI5InfoCard4.InforType = "4"
	SDUI5InfoCard4.Separator = ","
	BANano.Await(SDUI5InfoCard4.AddComponent)
	pgIndex.UpdateTitle("SDUI5InfoCard")
End Sub

Private Sub SDUI5InfoCard5_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("SDUI5InfoCard5")
End Sub

Private Sub SDUI5InfoCard3_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("SDUI5InfoCard3")
End Sub

Private Sub SDUI5InfoCard2_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("SDUI5InfoCard2")
End Sub

Private Sub SDUI5InfoCard1_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("SDUI5InfoCard1")
End Sub

Private Sub SDUI5InfoCard4_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("SDUI5InfoCard1")
End Sub

