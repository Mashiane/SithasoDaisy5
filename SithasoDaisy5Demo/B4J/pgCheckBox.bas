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
	Private SDUI5CheckBox1 As SDUI5CheckBox
	Private SDUI5CheckBox19 As SDUI5CheckBox
	Private SDUI5CheckBox2 As SDUI5CheckBox
	Private SDUI5CheckBox20 As SDUI5CheckBox
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "checkboxview")
End Sub

Private Sub SDUI5CheckBox20_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBox2_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBox19_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBox1_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub