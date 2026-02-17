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
	Private SDUI5Status1 As SDUI5Status		'ignore
	Private SDUI5Status2 As SDUI5Status		'ignore
	Private SDUI5Status3 As SDUI5Status		'ignore
	Private SDUI5Status4 As SDUI5Status		'ignore
	Private SDUI5Status5 As SDUI5Status		'ignore
	Private SDUI5Status6 As SDUI5Status		'ignore
	Private SDUI5Status7 As SDUI5Status		'ignore
	Private SDUI5Status8 As SDUI5Status		'ignore
	Private SDUI5Status9 As SDUI5Status		'ignore
	Private SDUI5Status10 As SDUI5Status		'ignore
	Private SDUI5Status11 As SDUI5Status		'ignore
	Private SDUI5Status12 As SDUI5Status		'ignore
	Private SDUI5Status13 As SDUI5Status		'ignore
	Private SDUI5Status14 As SDUI5Status		'ignore
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
	SDUI5Row1.GridCols = "4"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Status1.Initialize(Me, "SDUI5Status1", "SDUI5Status1")
	SDUI5Status1.ParentID = "SDUI5Row1"
	BANano.Await(SDUI5Status1.AddComponent)
	'
	SDUI5Status2.Initialize(Me, "SDUI5Status2", "SDUI5Status2")
	SDUI5Status2.ParentID = "SDUI5Row1"
	SDUI5Status2.Size = "xs"
	BANano.Await(SDUI5Status2.AddComponent)
	'
	SDUI5Status3.Initialize(Me, "SDUI5Status3", "SDUI5Status3")
	SDUI5Status3.ParentID = "SDUI5Row1"
	SDUI5Status3.Size = "sm"
	BANano.Await(SDUI5Status3.AddComponent)
	'
	SDUI5Status4.Initialize(Me, "SDUI5Status4", "SDUI5Status4")
	SDUI5Status4.ParentID = "SDUI5Row1"
	SDUI5Status4.Size = "md"
	BANano.Await(SDUI5Status4.AddComponent)
	'
	SDUI5Status5.Initialize(Me, "SDUI5Status5", "SDUI5Status5")
	SDUI5Status5.ParentID = "SDUI5Row1"
	SDUI5Status5.Size = "lg"
	BANano.Await(SDUI5Status5.AddComponent)
	'
	SDUI5Status6.Initialize(Me, "SDUI5Status6", "SDUI5Status6")
	SDUI5Status6.ParentID = "SDUI5Row1"
	SDUI5Status6.Size = "xl"
	BANano.Await(SDUI5Status6.AddComponent)
	'
	SDUI5Status7.Initialize(Me, "SDUI5Status7", "SDUI5Status7")
	SDUI5Status7.ParentID = "SDUI5Row1"
	SDUI5Status7.Color = "accent"
	SDUI5Status7.Size = "lg"
	BANano.Await(SDUI5Status7.AddComponent)
	'
	SDUI5Status8.Initialize(Me, "SDUI5Status8", "SDUI5Status8")
	SDUI5Status8.ParentID = "SDUI5Row1"
	SDUI5Status8.Color = "error"
	SDUI5Status8.Size = "lg"
	BANano.Await(SDUI5Status8.AddComponent)
	'
	SDUI5Status9.Initialize(Me, "SDUI5Status9", "SDUI5Status9")
	SDUI5Status9.ParentID = "SDUI5Row1"
	SDUI5Status9.Color = "info"
	SDUI5Status9.Size = "lg"
	BANano.Await(SDUI5Status9.AddComponent)
	'
	SDUI5Status10.Initialize(Me, "SDUI5Status10", "SDUI5Status10")
	SDUI5Status10.ParentID = "SDUI5Row1"
	SDUI5Status10.Color = "neutral"
	SDUI5Status10.Size = "lg"
	BANano.Await(SDUI5Status10.AddComponent)
	'
	SDUI5Status11.Initialize(Me, "SDUI5Status11", "SDUI5Status11")
	SDUI5Status11.ParentID = "SDUI5Row1"
	SDUI5Status11.Color = "primary"
	SDUI5Status11.Size = "lg"
	BANano.Await(SDUI5Status11.AddComponent)
	'
	SDUI5Status12.Initialize(Me, "SDUI5Status12", "SDUI5Status12")
	SDUI5Status12.ParentID = "SDUI5Row1"
	SDUI5Status12.Color = "secondary"
	SDUI5Status12.Size = "lg"
	BANano.Await(SDUI5Status12.AddComponent)
	'
	SDUI5Status13.Initialize(Me, "SDUI5Status13", "SDUI5Status13")
	SDUI5Status13.ParentID = "SDUI5Row1"
	SDUI5Status13.Color = "success"
	SDUI5Status13.Size = "lg"
	BANano.Await(SDUI5Status13.AddComponent)
	'
	SDUI5Status14.Initialize(Me, "SDUI5Status14", "SDUI5Status14")
	SDUI5Status14.ParentID = "SDUI5Row1"
	SDUI5Status14.Color = "warning"
	SDUI5Status14.Size = "lg"
	BANano.Await(SDUI5Status14.AddComponent)
	pgIndex.UpdateTitle("SDUI5Status")
End Sub

