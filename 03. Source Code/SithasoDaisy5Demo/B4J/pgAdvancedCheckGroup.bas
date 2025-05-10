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
	Private grp1 As SDUI5AdvancedCheckGroup
	Private grp2 As SDUI5AdvancedCheckGroup
	Private grp3 As SDUI5AdvancedCheckGroup
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "advancedcheckgroupview")
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