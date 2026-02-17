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
	Private mainspeed As SDUI5Menu		'ignore
	Private SDUI5Toast4 As SDUI5Toast		'ignore
	Private btnMain As SDUI5Button		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Toast4.Initialize(Me, "SDUI5Toast4", "SDUI5Toast4")
	SDUI5Toast4.ParentID = app.PageView
	BANano.Await(SDUI5Toast4.AddComponent)
	'
	btnMain.Initialize(Me, "btnMain", "btnMain")
	btnMain.ParentID = "SDUI5Toast4"
	btnMain.Color = "primary"
	'btnMain.Image = ""
	'btnMain.ImageHeight = "32px"
	'btnMain.ImageWidth = "32px"
	btnMain.IndicatorSize = "xs"
	btnMain.LeftIcon = "./assets/plus-solid.svg"
	btnMain.PopOverTarget = "mainspeed"
	btnMain.Shadow = "lg"
	btnMain.Shape = "circle"
	btnMain.Size = "xl"
	btnMain.Text = ""
	btnMain.TextColor = "white"
	btnMain.TextVisible = False
	BANano.Await(btnMain.AddComponent)
	'
	mainspeed.Initialize(Me, "mainspeed", "mainspeed")
	mainspeed.ParentID = app.PageView
	mainspeed.BackgroundColor = ""
	mainspeed.Card = True
	mainspeed.ClosePopupOnClick = True
	mainspeed.Dropdown = True
	mainspeed.DropdownPlacement = "top-center"
	mainspeed.MinHeight = ""
	mainspeed.PopOver = True
	mainspeed.ItemClasses = "btn btn-circle btn-md btn-ghost"
	mainspeed.ItemStyles = "border-radius:50%"
	mainspeed.RoundedBox = False
	mainspeed.RoundedItems = False
	mainspeed.Width = ""
	BANano.Await(mainspeed.AddComponent)
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

