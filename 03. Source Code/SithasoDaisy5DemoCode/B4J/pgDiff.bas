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
	Private SDUI5Diff1 As SDUI5Diff		'ignore
	Private SDUI5Diff2 As SDUI5Diff		'ignore
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
	SDUI5Row1.GridCols = "1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Diff1.Initialize(Me, "SDUI5Diff1", "SDUI5Diff1")
	SDUI5Diff1.ParentID = "SDUI5Row1"
	SDUI5Diff1.Height = "300px"
	'SDUI5Diff1.Rounded = "2xl"
	'SDUI5Diff1.RoundedBox = False
	'SDUI5Diff1.Shadow = "none"
	SDUI5Diff1.Width = "400px"
	BANano.Await(SDUI5Diff1.AddComponent)
	'
	SDUI5Diff2.Initialize(Me, "SDUI5Diff2", "SDUI5Diff2")
	SDUI5Diff2.ParentID = "SDUI5Row1"
	SDUI5Diff2.DiffType = "text"
	SDUI5Diff2.Height = "300px"
	'SDUI5Diff2.Rounded = "2xl"
	'SDUI5Diff2.RoundedBox = False
	'SDUI5Diff2.Shadow = "none"
	SDUI5Diff2.TextSize = "5xl"
	SDUI5Diff2.Width = "400px"
	BANano.Await(SDUI5Diff2.AddComponent)
	pgIndex.UpdateTitle("SDUI5Diff")
End Sub

