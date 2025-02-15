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
	Private SDUI5CheckBoxGroup1 As SDUI5CheckBoxGroup
	Private SDUI5CheckBoxGroup2 As SDUI5CheckBoxGroup
	Private SDUI5CheckBoxGroup3 As SDUI5CheckBoxGroup
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "checkboxview")
	pgIndex.UpdateTitle("SDUI5CheckBox")
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

Private Sub SDUI5CheckBoxGroup3_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBoxGroup2_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBoxGroup1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub