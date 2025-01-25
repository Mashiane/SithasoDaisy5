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
	Private SDUI5RadioGroup1 As SDUI5RadioGroup
	Private SDUI5RadioGroup2 As SDUI5RadioGroup
	Private SDUI5RadioGroup3 As SDUI5RadioGroup
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "radioview")
End Sub

Private Sub SDUI5RadioGroup3_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5RadioGroup2_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5RadioGroup1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub