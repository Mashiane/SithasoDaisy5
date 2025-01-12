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
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "joinview")
End Sub