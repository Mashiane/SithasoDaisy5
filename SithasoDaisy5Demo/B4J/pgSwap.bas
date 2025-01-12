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
	Private SDUI5Swap1 As SDUI5Swap
	Private SDUI5Swap2 As SDUI5Swap
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "swapview")
End Sub

Private Sub SDUI5Swap2_Change (value As Boolean)
	app.ShowToastInfo(value)
End Sub

Private Sub SDUI5Swap1_Change (value As Boolean)
	app.ShowToastInfo(value)
End Sub