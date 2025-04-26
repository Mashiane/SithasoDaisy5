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
	Private SDUI5Steps6 As SDUI5Steps
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "stepsview")
	pgIndex.UpdateTitle("SDUI5Steps")
End Sub

Private Sub SDUI5Steps6_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub