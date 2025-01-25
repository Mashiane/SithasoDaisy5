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
	Private SDUI5Rating1 As SDUI5Rating
	Private SDUI5Rating17 As SDUI5Rating
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "ratingview")
End Sub

Private Sub SDUI5Rating1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Rating17_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub