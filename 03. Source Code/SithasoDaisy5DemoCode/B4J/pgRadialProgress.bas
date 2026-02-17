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
	Private SDUI5RadialProgress1 As SDUI5RadialProgress		'ignore
	Private SDUI5RadialProgress2 As SDUI5RadialProgress		'ignore
	Private SDUI5RadialProgress3 As SDUI5RadialProgress		'ignore
	Private SDUI5RadialProgress4 As SDUI5RadialProgress		'ignore
	Private SDUI5RadialProgress5 As SDUI5RadialProgress		'ignore
	Private SDUI5RadialProgress6 As SDUI5RadialProgress		'ignore
	Private SDUI5RadialProgress7 As SDUI5RadialProgress		'ignore
	Private SDUI5RadialProgress8 As SDUI5RadialProgress		'ignore
	Private SDUI5RadialProgress9 As SDUI5RadialProgress		'ignore
	Private SDUI5RadialProgress10 As SDUI5RadialProgress		'ignore
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
	SDUI5RadialProgress1.Initialize(Me, "SDUI5RadialProgress1", "SDUI5RadialProgress1")
	SDUI5RadialProgress1.ParentID = "SDUI5Row1"
	SDUI5RadialProgress1.Value = "70"
	BANano.Await(SDUI5RadialProgress1.AddComponent)
	'
	SDUI5RadialProgress2.Initialize(Me, "SDUI5RadialProgress2", "SDUI5RadialProgress2")
	SDUI5RadialProgress2.ParentID = "SDUI5Row1"
	SDUI5RadialProgress2.Value = "0"
	BANano.Await(SDUI5RadialProgress2.AddComponent)
	'
	SDUI5RadialProgress3.Initialize(Me, "SDUI5RadialProgress3", "SDUI5RadialProgress3")
	SDUI5RadialProgress3.ParentID = "SDUI5Row1"
	SDUI5RadialProgress3.Value = "20"
	BANano.Await(SDUI5RadialProgress3.AddComponent)
	'
	SDUI5RadialProgress4.Initialize(Me, "SDUI5RadialProgress4", "SDUI5RadialProgress4")
	SDUI5RadialProgress4.ParentID = "SDUI5Row1"
	SDUI5RadialProgress4.Value = "60"
	BANano.Await(SDUI5RadialProgress4.AddComponent)
	'
	SDUI5RadialProgress5.Initialize(Me, "SDUI5RadialProgress5", "SDUI5RadialProgress5")
	SDUI5RadialProgress5.ParentID = "SDUI5Row1"
	SDUI5RadialProgress5.Value = "80"
	BANano.Await(SDUI5RadialProgress5.AddComponent)
	'
	SDUI5RadialProgress6.Initialize(Me, "SDUI5RadialProgress6", "SDUI5RadialProgress6")
	SDUI5RadialProgress6.ParentID = "SDUI5Row1"
	SDUI5RadialProgress6.Value = "100"
	BANano.Await(SDUI5RadialProgress6.AddComponent)
	'
	SDUI5RadialProgress7.Initialize(Me, "SDUI5RadialProgress7", "SDUI5RadialProgress7")
	SDUI5RadialProgress7.ParentID = "SDUI5Row1"
	SDUI5RadialProgress7.Color = "primary"
	SDUI5RadialProgress7.Value = "70"
	BANano.Await(SDUI5RadialProgress7.AddComponent)
	'
	SDUI5RadialProgress8.Initialize(Me, "SDUI5RadialProgress8", "SDUI5RadialProgress8")
	SDUI5RadialProgress8.ParentID = "SDUI5Row1"
	SDUI5RadialProgress8.BorderColor = "warning"
	SDUI5RadialProgress8.BorderWidth = "4"
	SDUI5RadialProgress8.Color = "success"
	SDUI5RadialProgress8.Value = "70"
	BANano.Await(SDUI5RadialProgress8.AddComponent)
	'
	SDUI5RadialProgress9.Initialize(Me, "SDUI5RadialProgress9", "SDUI5RadialProgress9")
	SDUI5RadialProgress9.ParentID = "SDUI5Row1"
	SDUI5RadialProgress9.ProgressSize = "12rem"
	SDUI5RadialProgress9.ProgressThickness = "2px"
	SDUI5RadialProgress9.Value = "70"
	BANano.Await(SDUI5RadialProgress9.AddComponent)
	'
	SDUI5RadialProgress10.Initialize(Me, "SDUI5RadialProgress10", "SDUI5RadialProgress10")
	SDUI5RadialProgress10.ParentID = "SDUI5Row1"
	SDUI5RadialProgress10.ProgressSize = "12rem"
	SDUI5RadialProgress10.ProgressThickness = "2rem"
	SDUI5RadialProgress10.Value = "70"
	BANano.Await(SDUI5RadialProgress10.AddComponent)
	pgIndex.UpdateTitle("SDUI5RadialProgress")
End Sub

