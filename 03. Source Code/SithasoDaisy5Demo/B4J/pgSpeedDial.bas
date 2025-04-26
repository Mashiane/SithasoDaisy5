B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private mainspeed As SDUI5Menu
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "speeddialview")
	pgIndex.UpdateTitle("Speed Dial")
	mainspeed.AddMenuItemIconColor("check", "./assets/plus-solid.svg", "16px", "#473bb0")
	mainspeed.AddMenuItemIconColor("code", "./assets/code-solid.svg", "16px", "#b1e202")
	mainspeed.AddMenuItemIconColor("font", "./assets/font-solid.svg", "16px", "#4a471a")
	mainspeed.AddMenuItemIconColor("gears", "./assets/gears-solid.svg", "16px", "#8b8de0")
	mainspeed.AddMenuItemIconColor("gifts", "./assets/gifts-solid.svg", "16px", "#fcf67e")
End Sub

Private Sub mainspeed_ItemClick (item As String)
	app.ShowToastInfo(item)
End Sub