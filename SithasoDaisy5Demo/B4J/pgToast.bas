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
	Private toast2 As SDUI5Button
	Private toast3 As SDUI5Button
	Private toast4 As SDUI5Button
	Private toast5 As SDUI5Button
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "toastview")
End Sub

Private Sub toast5_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Toast 5")
End Sub

Private Sub toast4_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Toast 4")
End Sub

Private Sub toast3_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Toast 3")
End Sub

Private Sub toast2_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Toast 2")
End Sub