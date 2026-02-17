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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5CountDown1 As SDUI5CountDown		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5CountDown2 As SDUI5CountDown		'ignore
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
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = "3"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5CountDown1.Initialize(Me, "SDUI5CountDown1", "SDUI5CountDown1")
	SDUI5CountDown1.ParentID = "SDUI5Column1"
	BANano.Await(SDUI5CountDown1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "3"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5CountDown2.Initialize(Me, "SDUI5CountDown2", "SDUI5CountDown2")
	SDUI5CountDown2.ParentID = "SDUI5Column2"
	SDUI5CountDown2.TextSize = "6xl"
	SDUI5CountDown2.Value = "50"
	BANano.Await(SDUI5CountDown2.AddComponent)
	pgIndex.UpdateTitle("SDUI5CountDown")
End Sub

