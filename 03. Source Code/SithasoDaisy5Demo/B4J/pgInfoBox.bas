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
	Private SDUI5InfoCard1 As SDUI5InfoCard
	Private SDUI5InfoCard2 As SDUI5InfoCard
	Private SDUI5InfoCard3 As SDUI5InfoCard
	Private SDUI5InfoCard4 As SDUI5InfoCard
	Private SDUI5InfoCard5 As SDUI5InfoCard
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesInfoBox)
	BANano.LoadLayout(app.PageView, "infoboxview")
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