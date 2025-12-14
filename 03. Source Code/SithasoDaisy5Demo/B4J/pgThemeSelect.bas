B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5GroupSelect1 As SDUI5GroupSelect
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "themeselectview")
	pgIndex.UpdateTitle("Theme Controller")
	BANano.Await(SDUI5GroupSelect1.SetThemes)
End Sub
