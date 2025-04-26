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
	Private SDUI5Button1 As SDUI5Button
	Private SDUI5Button2 As SDUI5Button
	Private SDUI5Button3 As SDUI5Button
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "dockview")
	pgIndex.UpdateTitle("SDUI5Dock")
End Sub

Private Sub SDUI5Button3_Click (e As BANanoEvent)
	app.ShowToastSuccess("Settings")
End Sub

Private Sub SDUI5Button2_Click (e As BANanoEvent)
	app.ShowToastSuccess("Inbox")
End Sub

Private Sub SDUI5Button1_Click (e As BANanoEvent)
	app.ShowToastSuccess("Home")
End Sub