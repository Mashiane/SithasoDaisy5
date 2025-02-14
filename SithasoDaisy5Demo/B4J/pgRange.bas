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
	Private SDUI5Range17 As SDUI5Range
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "rangeview")
	pgIndex.UpdateTitle("SDUI5Range")
End Sub

Private Sub SDUI5Range17_Change (Value As Object)
	app.showtoastsuccess(Value)
End Sub