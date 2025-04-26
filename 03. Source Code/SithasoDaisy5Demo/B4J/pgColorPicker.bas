B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private txtcolorpicker1 As SDUI5TextBox
	Private txtcolorpicker2 As SDUI5TextBox
	Private txtcolorpicker3 As SDUI5TextBox
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "colorpickerview")
	pgIndex.UpdateTitle("SDUI5TextBox - ColorPicker")
End Sub


Private Sub txtcolorpicker1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub txtcolorpicker3_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub txtcolorpicker2_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub