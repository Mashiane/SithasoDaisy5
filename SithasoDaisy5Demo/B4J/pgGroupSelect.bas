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
	Private SDUI5GroupSelect1 As SDUI5GroupSelect
	Private SDUI5GroupSelect2 As SDUI5GroupSelect
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "groupselectview")
	pgIndex.UpdateTitle("SDUI5GroupSelect")
End Sub

Private Sub SDUI5GroupSelect1_Changed (Selected As String)
	app.ShowToastSuccess(Selected)
End Sub


Private Sub SDUI5GroupSelect2_Changed (Selected As String)
	app.ShowSwalSuccess(Selected)
End Sub