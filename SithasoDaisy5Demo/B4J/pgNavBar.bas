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
	Private navbar As SDUI5NavBar
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "navbarview")
End Sub

Private Sub navbar_TitleClick (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("Title Click!") 
End Sub

Private Sub navbar_BurgerClick (value As Boolean)
	app.ShowToastSuccess(value)
End Sub