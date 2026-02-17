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
	Private grp1 As SDUI5AdvancedCheckGroup		'ignore
	Private grp2 As SDUI5AdvancedCheckGroup		'ignore
	Private grp3 As SDUI5AdvancedCheckGroup		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
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
	BANano.Await(SDUI5Column1.AddComponent)
	'
	grp1.Initialize(Me, "grp1", "grp1")
	grp1.ParentID = "SDUI5Column1"
	grp1.Border = True
	grp1.LegendLabel = "Locations CheckBox"
	grp1.Options = ""
	grp1.Shadow = "lg"
	BANano.Await(grp1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	grp2.Initialize(Me, "grp2", "grp2")
	grp2.ParentID = "SDUI5Column2"
	grp2.Border = True
	grp2.LegendLabel = "Locations Radio"
	grp2.Options = ""
	grp2.Shadow = "lg"
	grp2.TypeOf = "radio"
	BANano.Await(grp2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	grp3.Initialize(Me, "grp3", "grp3")
	grp3.ParentID = "SDUI5Column3"
	grp3.Border = True
	grp3.LegendLabel = "Locations Toggle"
	grp3.Options = ""
	grp3.Shadow = "lg"
	grp3.TypeOf = "toggle"
	BANano.Await(grp3.AddComponent)
	pgIndex.UpdateTitle("SDUI5AdvancedCheckBox")
	'
	Dim iCnt As Int = 0
	Dim nm As Map = CreateMap()
	For iCnt = 0 To 19
		Dim k As String = $"key${iCnt + 1}"$
		Dim v As String = $"Option ${iCnt + 1}"$
		nm.Put(k, v)
	Next
	grp1.SetOptionsMap(nm)
	grp2.SetOptionsMap(nm)
	grp3.SetOptionsMap(nm)
End Sub


Private Sub grp3_Change (e As BANanoEvent)
	Dim checked As List = e.Detail
	Log(checked)
End Sub

Private Sub grp2_Change (e As BANanoEvent)
	Dim checked As List = e.Detail
	Log(checked)
End Sub

Private Sub grp1_Change (e As BANanoEvent)
	Dim checked As List = e.Detail
	Log(checked)
End Sub

