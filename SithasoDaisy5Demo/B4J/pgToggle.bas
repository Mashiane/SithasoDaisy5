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
	Private SDUI5Toggle1 As SDUI5Toggle
	Private SDUI5Toggle2 As SDUI5Toggle
	Private SDUI5Toggle16 As SDUI5Toggle
	Private SDUI5Toggle17 As SDUI5Toggle
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "toggleview")
End Sub

Private Sub SDUI5Toggle2_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Toggle1_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Toggle17_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Toggle16_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub