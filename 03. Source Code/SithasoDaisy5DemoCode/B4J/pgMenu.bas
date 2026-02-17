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
	Private menu1 As SDUI5Menu		'ignore
	Private menu2 As SDUI5Menu		'ignore
	Private menu3 As SDUI5Menu		'ignore
	Private menu9 As SDUI5Menu		'ignore
	Private menu13 As SDUI5Menu		'ignore
	Private menuFaces As SDUI5Menu		'ignore
	Private menuCheckBox As SDUI5Menu		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private item1 As SDUI5MenuItem		'ignore
	Private item2 As SDUI5MenuItem		'ignore
	Private item3 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem1 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem2 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem3 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem4 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem5 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem6 As SDUI5MenuItem		'ignore
	Private menu4 As SDUI5Menu		'ignore
	Private SDUI5MenuItem7 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem8 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem9 As SDUI5MenuItem		'ignore
	Private menu5 As SDUI5Menu		'ignore
	Private SDUI5MenuItem10 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem11 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem12 As SDUI5MenuItem		'ignore
	Private menu6 As SDUI5Menu		'ignore
	Private SDUI5MenuItem13 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem14 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem15 As SDUI5MenuItem		'ignore
	Private menu7 As SDUI5Menu		'ignore
	Private SDUI5MenuItem16 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem17 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem18 As SDUI5MenuItem		'ignore
	Private menu8 As SDUI5Menu		'ignore
	Private SDUI5MenuItem19 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem20 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem21 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem22 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem23 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem24 As SDUI5MenuItem		'ignore
	Private menu10 As SDUI5Menu		'ignore
	Private SDUI5MenuItem25 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem26 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem27 As SDUI5MenuItem		'ignore
	Private menu11 As SDUI5Menu		'ignore
	Private SDUI5MenuItem28 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem29 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem30 As SDUI5MenuItem		'ignore
	Private menu12 As SDUI5Menu		'ignore
	Private SDUI5MenuItem31 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem32 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem33 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem34 As SDUI5MenuItem		'ignore
	Private title1 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem35 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem36 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem37 As SDUI5MenuItem		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	menu1.Initialize(Me, "menu1", "menu1")
	menu1.ParentID = "SDUI5Container1"
	menu1.BackgroundColor = "base-300"
	menu1.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu1.MinHeight = ""
	menu1.ItemClasses = ""
	menu1.ItemStyles = ""
	BANano.Await(menu1.AddComponent)
	'
	item1.Initialize(Me, "item1", "item1")
	item1.ParentID = "menu1"
	item1.BadgeSize = "none"
	item1.ItemClasses = ""
	item1.ItemStyles = ""
	item1.Text = "Item 1"
	'item1.Tooltip = ""
	'item1.TooltipPosition = "none"
	BANano.Await(item1.AddComponent)
	'
	item2.Initialize(Me, "item2", "item2")
	item2.ParentID = "menu1"
	item2.BadgeSize = "none"
	item2.ItemClasses = ""
	item2.ItemStyles = ""
	item2.Text = "Item 2"
	'item2.Tooltip = ""
	'item2.TooltipPosition = "none"
	BANano.Await(item2.AddComponent)
	'
	item3.Initialize(Me, "item3", "item3")
	item3.ParentID = "menu1"
	item3.BadgeSize = "none"
	item3.ItemClasses = ""
	item3.ItemStyles = ""
	item3.Text = "Item 3"
	'item3.Tooltip = ""
	'item3.TooltipPosition = "none"
	BANano.Await(item3.AddComponent)
	'
	menu2.Initialize(Me, "menu2", "menu2")
	menu2.ParentID = "SDUI5Container1"
	menu2.BackgroundColor = "base-300"
	menu2.LgDirection = "horizontal"
	menu2.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu2.MinHeight = ""
	menu2.ItemClasses = ""
	menu2.ItemStyles = ""
	menu2.Width = ""
	BANano.Await(menu2.AddComponent)
	'
	SDUI5MenuItem1.Initialize(Me, "SDUI5MenuItem1", "SDUI5MenuItem1")
	SDUI5MenuItem1.ParentID = "menu2"
	SDUI5MenuItem1.BadgeSize = "none"
	SDUI5MenuItem1.MenuName = "menu2"
	SDUI5MenuItem1.ItemClasses = ""
	SDUI5MenuItem1.ItemStyles = ""
	SDUI5MenuItem1.Text = "Item 3"
	'SDUI5MenuItem1.Tooltip = ""
	'SDUI5MenuItem1.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem1.AddComponent)
	'
	SDUI5MenuItem2.Initialize(Me, "SDUI5MenuItem2", "SDUI5MenuItem2")
	SDUI5MenuItem2.ParentID = "menu2"
	SDUI5MenuItem2.BadgeSize = "none"
	SDUI5MenuItem2.MenuName = "menu2"
	SDUI5MenuItem2.ItemClasses = ""
	SDUI5MenuItem2.ItemStyles = ""
	SDUI5MenuItem2.Text = "Item 2"
	'SDUI5MenuItem2.Tooltip = ""
	'SDUI5MenuItem2.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem2.AddComponent)
	'
	SDUI5MenuItem3.Initialize(Me, "SDUI5MenuItem3", "SDUI5MenuItem3")
	SDUI5MenuItem3.ParentID = "menu2"
	SDUI5MenuItem3.BadgeSize = "none"
	SDUI5MenuItem3.MenuName = "menu2"
	SDUI5MenuItem3.ItemClasses = ""
	SDUI5MenuItem3.ItemStyles = ""
	SDUI5MenuItem3.Text = "Item 1"
	'SDUI5MenuItem3.Tooltip = ""
	'SDUI5MenuItem3.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem3.AddComponent)
	'
	menu3.Initialize(Me, "menu3", "menu3")
	menu3.ParentID = "SDUI5Container1"
	menu3.BackgroundColor = "base-300"
	menu3.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu3.MinHeight = ""
	menu3.ItemClasses = ""
	menu3.ItemStyles = ""
	menu3.Width = ""
	BANano.Await(menu3.AddComponent)
	'
	SDUI5MenuItem4.Initialize(Me, "SDUI5MenuItem4", "SDUI5MenuItem4")
	SDUI5MenuItem4.ParentID = "menu3"
	SDUI5MenuItem4.BadgeSize = "none"
	SDUI5MenuItem4.Icon = "./assets/wifi.svg"
	SDUI5MenuItem4.ItemType = "icon"
	SDUI5MenuItem4.MenuName = "menu3"
	SDUI5MenuItem4.ItemClasses = ""
	SDUI5MenuItem4.ItemStyles = ""
	SDUI5MenuItem4.Text = "Item 3"
	'SDUI5MenuItem4.Tooltip = ""
	'SDUI5MenuItem4.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem4.AddComponent)
	'
	SDUI5MenuItem5.Initialize(Me, "SDUI5MenuItem5", "SDUI5MenuItem5")
	SDUI5MenuItem5.ParentID = "menu3"
	SDUI5MenuItem5.BadgeSize = "none"
	SDUI5MenuItem5.Icon = "./assets/info.svg"
	SDUI5MenuItem5.ItemType = "icon"
	SDUI5MenuItem5.MenuName = "menu3"
	SDUI5MenuItem5.ItemClasses = ""
	SDUI5MenuItem5.ItemStyles = ""
	SDUI5MenuItem5.Text = "Item 2"
	'SDUI5MenuItem5.Tooltip = ""
	'SDUI5MenuItem5.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem5.AddComponent)
	'
	SDUI5MenuItem6.Initialize(Me, "SDUI5MenuItem6", "SDUI5MenuItem6")
	SDUI5MenuItem6.ParentID = "menu3"
	SDUI5MenuItem6.BadgeSize = "none"
	SDUI5MenuItem6.Icon = "./assets/home.svg"
	SDUI5MenuItem6.ItemType = "icon"
	SDUI5MenuItem6.MenuName = "menu3"
	SDUI5MenuItem6.ItemClasses = ""
	SDUI5MenuItem6.ItemStyles = ""
	SDUI5MenuItem6.Text = "Item 1"
	'SDUI5MenuItem6.Tooltip = ""
	'SDUI5MenuItem6.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem6.AddComponent)
	'
	menu4.Initialize(Me, "menu4", "menu4")
	menu4.ParentID = "SDUI5Container1"
	menu4.BackgroundColor = "base-300"
	menu4.Direction = "horizontal"
	menu4.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu4.MinHeight = ""
	menu4.ItemClasses = ""
	menu4.ItemStyles = ""
	menu4.Width = ""
	BANano.Await(menu4.AddComponent)
	'
	SDUI5MenuItem7.Initialize(Me, "SDUI5MenuItem7", "SDUI5MenuItem7")
	SDUI5MenuItem7.ParentID = "menu4"
	SDUI5MenuItem7.BadgeSize = "none"
	SDUI5MenuItem7.Icon = "./assets/wifi.svg"
	SDUI5MenuItem7.ItemType = "icon"
	SDUI5MenuItem7.MenuName = "menu4"
	SDUI5MenuItem7.ItemClasses = ""
	SDUI5MenuItem7.ItemStyles = ""
	SDUI5MenuItem7.Text = "Item 3"
	'SDUI5MenuItem7.Tooltip = ""
	'SDUI5MenuItem7.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem7.AddComponent)
	'
	SDUI5MenuItem8.Initialize(Me, "SDUI5MenuItem8", "SDUI5MenuItem8")
	SDUI5MenuItem8.ParentID = "menu4"
	SDUI5MenuItem8.BadgeSize = "none"
	SDUI5MenuItem8.Icon = "./assets/info.svg"
	SDUI5MenuItem8.ItemType = "icon"
	SDUI5MenuItem8.MenuName = "menu4"
	SDUI5MenuItem8.ItemClasses = ""
	SDUI5MenuItem8.ItemStyles = ""
	SDUI5MenuItem8.Text = "Item 2"
	'SDUI5MenuItem8.Tooltip = ""
	'SDUI5MenuItem8.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem8.AddComponent)
	'
	SDUI5MenuItem9.Initialize(Me, "SDUI5MenuItem9", "SDUI5MenuItem9")
	SDUI5MenuItem9.ParentID = "menu4"
	SDUI5MenuItem9.BadgeSize = "none"
	SDUI5MenuItem9.Icon = "./assets/home.svg"
	SDUI5MenuItem9.ItemType = "icon"
	SDUI5MenuItem9.MenuName = "menu4"
	SDUI5MenuItem9.ItemClasses = ""
	SDUI5MenuItem9.ItemStyles = ""
	SDUI5MenuItem9.Text = "Item 1"
	'SDUI5MenuItem9.Tooltip = ""
	'SDUI5MenuItem9.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem9.AddComponent)
	'
	menu5.Initialize(Me, "menu5", "menu5")
	menu5.ParentID = "SDUI5Container1"
	menu5.BackgroundColor = "base-300"
	menu5.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu5.MinHeight = ""
	menu5.ItemClasses = ""
	menu5.ItemStyles = ""
	menu5.Width = ""
	BANano.Await(menu5.AddComponent)
	'
	SDUI5MenuItem10.Initialize(Me, "SDUI5MenuItem10", "SDUI5MenuItem10")
	SDUI5MenuItem10.ParentID = "menu5"
	SDUI5MenuItem10.BadgeSize = "none"
	SDUI5MenuItem10.Icon = "./assets/wifi.svg"
	SDUI5MenuItem10.ItemType = "icon"
	SDUI5MenuItem10.MenuName = "menu5"
	SDUI5MenuItem10.ItemClasses = ""
	SDUI5MenuItem10.ItemStyles = ""
	SDUI5MenuItem10.Text = "Item 3"
	'SDUI5MenuItem10.Tooltip = "Wifi"
	'SDUI5MenuItem10.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem10.AddComponent)
	'
	SDUI5MenuItem11.Initialize(Me, "SDUI5MenuItem11", "SDUI5MenuItem11")
	SDUI5MenuItem11.ParentID = "menu5"
	SDUI5MenuItem11.BadgeSize = "none"
	SDUI5MenuItem11.Icon = "./assets/info.svg"
	SDUI5MenuItem11.ItemType = "icon"
	SDUI5MenuItem11.MenuName = "menu5"
	SDUI5MenuItem11.ItemClasses = ""
	SDUI5MenuItem11.ItemStyles = ""
	SDUI5MenuItem11.Text = "Item 2"
	'SDUI5MenuItem11.Tooltip = "Details"
	'SDUI5MenuItem11.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem11.AddComponent)
	'
	SDUI5MenuItem12.Initialize(Me, "SDUI5MenuItem12", "SDUI5MenuItem12")
	SDUI5MenuItem12.ParentID = "menu5"
	SDUI5MenuItem12.BadgeSize = "none"
	SDUI5MenuItem12.Icon = "./assets/home.svg"
	SDUI5MenuItem12.ItemType = "icon"
	SDUI5MenuItem12.MenuName = "menu5"
	SDUI5MenuItem12.ItemClasses = ""
	SDUI5MenuItem12.ItemStyles = ""
	SDUI5MenuItem12.Text = "Item 1"
	'SDUI5MenuItem12.Tooltip = "Home"
	'SDUI5MenuItem12.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem12.AddComponent)
	'
	menu6.Initialize(Me, "menu6", "menu6")
	menu6.ParentID = "SDUI5Container1"
	menu6.BackgroundColor = "base-300"
	menu6.Direction = "horizontal"
	menu6.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu6.MinHeight = ""
	menu6.ItemClasses = ""
	menu6.ItemStyles = ""
	menu6.Width = ""
	BANano.Await(menu6.AddComponent)
	'
	SDUI5MenuItem13.Initialize(Me, "SDUI5MenuItem13", "SDUI5MenuItem13")
	SDUI5MenuItem13.ParentID = "menu6"
	SDUI5MenuItem13.BadgeSize = "none"
	SDUI5MenuItem13.Icon = "./assets/wifi.svg"
	SDUI5MenuItem13.ItemType = "icon"
	SDUI5MenuItem13.MenuName = "menu6"
	SDUI5MenuItem13.ItemClasses = ""
	SDUI5MenuItem13.ItemStyles = ""
	SDUI5MenuItem13.Text = "Item 3"
	'SDUI5MenuItem13.Tooltip = "Wifi"
	'SDUI5MenuItem13.TooltipPosition = "top"
	BANano.Await(SDUI5MenuItem13.AddComponent)
	'
	SDUI5MenuItem14.Initialize(Me, "SDUI5MenuItem14", "SDUI5MenuItem14")
	SDUI5MenuItem14.ParentID = "menu6"
	SDUI5MenuItem14.BadgeSize = "none"
	SDUI5MenuItem14.Icon = "./assets/info.svg"
	SDUI5MenuItem14.ItemType = "icon"
	SDUI5MenuItem14.MenuName = "menu6"
	SDUI5MenuItem14.ItemClasses = ""
	SDUI5MenuItem14.ItemStyles = ""
	SDUI5MenuItem14.Text = "Item 2"
	'SDUI5MenuItem14.Tooltip = "Details"
	'SDUI5MenuItem14.TooltipPosition = "top"
	BANano.Await(SDUI5MenuItem14.AddComponent)
	'
	SDUI5MenuItem15.Initialize(Me, "SDUI5MenuItem15", "SDUI5MenuItem15")
	SDUI5MenuItem15.ParentID = "menu6"
	SDUI5MenuItem15.BadgeSize = "none"
	SDUI5MenuItem15.Icon = "./assets/home.svg"
	SDUI5MenuItem15.ItemType = "icon"
	SDUI5MenuItem15.MenuName = "menu6"
	SDUI5MenuItem15.ItemClasses = ""
	SDUI5MenuItem15.ItemStyles = ""
	SDUI5MenuItem15.Text = "Item 1"
	'SDUI5MenuItem15.Tooltip = "Home"
	'SDUI5MenuItem15.TooltipPosition = "top"
	BANano.Await(SDUI5MenuItem15.AddComponent)
	'
	menu7.Initialize(Me, "menu7", "menu7")
	menu7.ParentID = "SDUI5Container1"
	menu7.BackgroundColor = "base-300"
	menu7.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu7.MinHeight = ""
	menu7.ItemClasses = ""
	menu7.ItemStyles = ""
	menu7.Size = "xs"
	BANano.Await(menu7.AddComponent)
	'
	SDUI5MenuItem16.Initialize(Me, "SDUI5MenuItem16", "SDUI5MenuItem16")
	SDUI5MenuItem16.ParentID = "menu7"
	SDUI5MenuItem16.BadgeSize = "none"
	SDUI5MenuItem16.MenuName = "menu7"
	SDUI5MenuItem16.ItemClasses = ""
	SDUI5MenuItem16.ItemStyles = ""
	SDUI5MenuItem16.Text = "Item 3"
	'SDUI5MenuItem16.Tooltip = ""
	'SDUI5MenuItem16.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem16.AddComponent)
	'
	SDUI5MenuItem17.Initialize(Me, "SDUI5MenuItem17", "SDUI5MenuItem17")
	SDUI5MenuItem17.ParentID = "menu7"
	SDUI5MenuItem17.BadgeSize = "none"
	SDUI5MenuItem17.MenuName = "menu7"
	SDUI5MenuItem17.ItemClasses = ""
	SDUI5MenuItem17.ItemStyles = ""
	SDUI5MenuItem17.Text = "Item 2"
	'SDUI5MenuItem17.Tooltip = ""
	'SDUI5MenuItem17.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem17.AddComponent)
	'
	SDUI5MenuItem18.Initialize(Me, "SDUI5MenuItem18", "SDUI5MenuItem18")
	SDUI5MenuItem18.ParentID = "menu7"
	SDUI5MenuItem18.BadgeSize = "none"
	SDUI5MenuItem18.MenuName = "menu7"
	SDUI5MenuItem18.ItemClasses = ""
	SDUI5MenuItem18.ItemStyles = ""
	SDUI5MenuItem18.Text = "Item 1"
	'SDUI5MenuItem18.Tooltip = ""
	'SDUI5MenuItem18.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem18.AddComponent)
	'
	menu8.Initialize(Me, "menu8", "menu8")
	menu8.ParentID = "SDUI5Container1"
	menu8.BackgroundColor = "base-300"
	menu8.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu8.MinHeight = ""
	menu8.ItemClasses = ""
	menu8.ItemStyles = ""
	menu8.Size = "lg"
	BANano.Await(menu8.AddComponent)
	'
	SDUI5MenuItem19.Initialize(Me, "SDUI5MenuItem19", "SDUI5MenuItem19")
	SDUI5MenuItem19.ParentID = "menu8"
	SDUI5MenuItem19.BadgeSize = "none"
	SDUI5MenuItem19.MenuName = "menu8"
	SDUI5MenuItem19.ItemClasses = ""
	SDUI5MenuItem19.ItemStyles = ""
	SDUI5MenuItem19.Text = "Item 3"
	'SDUI5MenuItem19.Tooltip = ""
	'SDUI5MenuItem19.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem19.AddComponent)
	'
	SDUI5MenuItem20.Initialize(Me, "SDUI5MenuItem20", "SDUI5MenuItem20")
	SDUI5MenuItem20.ParentID = "menu8"
	SDUI5MenuItem20.BadgeSize = "none"
	SDUI5MenuItem20.MenuName = "menu8"
	SDUI5MenuItem20.ItemClasses = ""
	SDUI5MenuItem20.ItemStyles = ""
	SDUI5MenuItem20.Text = "Item 2"
	'SDUI5MenuItem20.Tooltip = ""
	'SDUI5MenuItem20.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem20.AddComponent)
	'
	SDUI5MenuItem21.Initialize(Me, "SDUI5MenuItem21", "SDUI5MenuItem21")
	SDUI5MenuItem21.ParentID = "menu8"
	SDUI5MenuItem21.BadgeSize = "none"
	SDUI5MenuItem21.MenuName = "menu8"
	SDUI5MenuItem21.ItemClasses = ""
	SDUI5MenuItem21.ItemStyles = ""
	SDUI5MenuItem21.Text = "Item 1"
	'SDUI5MenuItem21.Tooltip = ""
	'SDUI5MenuItem21.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem21.AddComponent)
	'
	menu9.Initialize(Me, "menu9", "menu9")
	menu9.ParentID = "SDUI5Container1"
	menu9.BackgroundColor = "base-300"
	menu9.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu9.MinHeight = ""
	menu9.ItemClasses = ""
	menu9.ItemStyles = ""
	BANano.Await(menu9.AddComponent)
	'
	SDUI5MenuItem22.Initialize(Me, "SDUI5MenuItem22", "SDUI5MenuItem22")
	SDUI5MenuItem22.ParentID = "menu9"
	SDUI5MenuItem22.BadgeSize = "none"
	SDUI5MenuItem22.Icon = "./assets/wifi.svg"
	SDUI5MenuItem22.ItemType = "icon-text"
	SDUI5MenuItem22.MenuName = "menu9"
	SDUI5MenuItem22.ItemClasses = ""
	SDUI5MenuItem22.ItemStyles = ""
	SDUI5MenuItem22.Text = "Item 3"
	'SDUI5MenuItem22.Tooltip = "Wifi"
	'SDUI5MenuItem22.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem22.AddComponent)
	'
	SDUI5MenuItem23.Initialize(Me, "SDUI5MenuItem23", "SDUI5MenuItem23")
	SDUI5MenuItem23.ParentID = "menu9"
	SDUI5MenuItem23.BadgeSize = "none"
	SDUI5MenuItem23.Icon = "./assets/info.svg"
	SDUI5MenuItem23.ItemType = "icon-text"
	SDUI5MenuItem23.MenuName = "menu9"
	SDUI5MenuItem23.ItemClasses = ""
	SDUI5MenuItem23.ItemStyles = ""
	SDUI5MenuItem23.Text = "Item 2"
	'SDUI5MenuItem23.Tooltip = "Details"
	'SDUI5MenuItem23.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem23.AddComponent)
	'
	SDUI5MenuItem24.Initialize(Me, "SDUI5MenuItem24", "SDUI5MenuItem24")
	SDUI5MenuItem24.ParentID = "menu9"
	SDUI5MenuItem24.BadgeSize = "none"
	SDUI5MenuItem24.Icon = "./assets/home.svg"
	SDUI5MenuItem24.ItemType = "icon-text"
	SDUI5MenuItem24.MenuName = "menu9"
	SDUI5MenuItem24.ItemClasses = ""
	SDUI5MenuItem24.ItemStyles = ""
	SDUI5MenuItem24.Text = "Item 1"
	'SDUI5MenuItem24.Tooltip = "Home"
	'SDUI5MenuItem24.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem24.AddComponent)
	'
	menu10.Initialize(Me, "menu10", "menu10")
	menu10.ParentID = "SDUI5Container1"
	menu10.BackgroundColor = "base-300"
	menu10.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu10.MinHeight = ""
	menu10.ItemClasses = ""
	menu10.ItemStyles = ""
	BANano.Await(menu10.AddComponent)
	'
	SDUI5MenuItem25.Initialize(Me, "SDUI5MenuItem25", "SDUI5MenuItem25")
	SDUI5MenuItem25.ParentID = "menu10"
	SDUI5MenuItem25.BadgeColor = "info"
	SDUI5MenuItem25.BadgeVisible = True
	SDUI5MenuItem25.Icon = "./assets/wifi.svg"
	SDUI5MenuItem25.ItemType = "icon-text"
	SDUI5MenuItem25.MenuName = "menu10"
	SDUI5MenuItem25.ItemClasses = ""
	SDUI5MenuItem25.ItemStyles = ""
	SDUI5MenuItem25.Text = "Stats"
	'SDUI5MenuItem25.Tooltip = "Wifi"
	'SDUI5MenuItem25.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem25.AddComponent)
	'
	SDUI5MenuItem26.Initialize(Me, "SDUI5MenuItem26", "SDUI5MenuItem26")
	SDUI5MenuItem26.ParentID = "menu10"
	SDUI5MenuItem26.Badge = "+99"
	SDUI5MenuItem26.BadgeVisible = True
	SDUI5MenuItem26.Icon = "./assets/info.svg"
	SDUI5MenuItem26.ItemType = "icon-text"
	SDUI5MenuItem26.MenuName = "menu10"
	SDUI5MenuItem26.ItemClasses = ""
	SDUI5MenuItem26.ItemStyles = ""
	SDUI5MenuItem26.Text = "Updates"
	'SDUI5MenuItem26.Tooltip = "Details"
	'SDUI5MenuItem26.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem26.AddComponent)
	'
	SDUI5MenuItem27.Initialize(Me, "SDUI5MenuItem27", "SDUI5MenuItem27")
	SDUI5MenuItem27.ParentID = "menu10"
	SDUI5MenuItem27.Badge = "99"
	SDUI5MenuItem27.BadgeColor = "none"
	SDUI5MenuItem27.BadgeVisible = True
	SDUI5MenuItem27.Icon = "./assets/home.svg"
	SDUI5MenuItem27.ItemType = "icon-text"
	SDUI5MenuItem27.MenuName = "menu10"
	SDUI5MenuItem27.ItemClasses = ""
	SDUI5MenuItem27.ItemStyles = ""
	SDUI5MenuItem27.Text = "Inbox"
	'SDUI5MenuItem27.Tooltip = "Home"
	'SDUI5MenuItem27.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem27.AddComponent)
	'
	menu11.Initialize(Me, "menu11", "menu11")
	menu11.ParentID = "SDUI5Container1"
	menu11.BackgroundColor = "base-300"
	menu11.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu11.MinHeight = ""
	menu11.PaddingAXYTBLR = "a=0; x=?; y=?; t=?; b=?; l=?; r=?"
	menu11.ItemClasses = ""
	menu11.ItemStyles = ""
	menu11.RoundedBox = False
	menu11.RoundedItems = False
	BANano.Await(menu11.AddComponent)
	'
	SDUI5MenuItem28.Initialize(Me, "SDUI5MenuItem28", "SDUI5MenuItem28")
	SDUI5MenuItem28.ParentID = "menu11"
	SDUI5MenuItem28.BadgeColor = "info"
	SDUI5MenuItem28.BadgeVisible = True
	SDUI5MenuItem28.Icon = "./assets/wifi.svg"
	SDUI5MenuItem28.ItemType = "icon-text"
	SDUI5MenuItem28.MenuName = "menu11"
	SDUI5MenuItem28.ItemClasses = ""
	SDUI5MenuItem28.ItemStyles = ""
	SDUI5MenuItem28.Text = "Stats"
	'SDUI5MenuItem28.Tooltip = "Wifi"
	'SDUI5MenuItem28.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem28.AddComponent)
	'
	SDUI5MenuItem29.Initialize(Me, "SDUI5MenuItem29", "SDUI5MenuItem29")
	SDUI5MenuItem29.ParentID = "menu11"
	SDUI5MenuItem29.Badge = "+99"
	SDUI5MenuItem29.BadgeVisible = True
	SDUI5MenuItem29.Icon = "./assets/info.svg"
	SDUI5MenuItem29.ItemType = "icon-text"
	SDUI5MenuItem29.MenuName = "menu11"
	SDUI5MenuItem29.ItemClasses = ""
	SDUI5MenuItem29.ItemStyles = ""
	SDUI5MenuItem29.Text = "Updates"
	'SDUI5MenuItem29.Tooltip = "Details"
	'SDUI5MenuItem29.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem29.AddComponent)
	'
	SDUI5MenuItem30.Initialize(Me, "SDUI5MenuItem30", "SDUI5MenuItem30")
	SDUI5MenuItem30.ParentID = "menu11"
	SDUI5MenuItem30.Badge = "99"
	SDUI5MenuItem30.BadgeColor = "none"
	SDUI5MenuItem30.BadgeVisible = True
	SDUI5MenuItem30.Icon = "./assets/home.svg"
	SDUI5MenuItem30.ItemType = "icon-text"
	SDUI5MenuItem30.MenuName = "menu11"
	SDUI5MenuItem30.ItemClasses = ""
	SDUI5MenuItem30.ItemStyles = ""
	SDUI5MenuItem30.Text = "Inbox"
	'SDUI5MenuItem30.Tooltip = "Home"
	'SDUI5MenuItem30.TooltipPosition = "right"
	BANano.Await(SDUI5MenuItem30.AddComponent)
	'
	menu12.Initialize(Me, "menu12", "menu12")
	menu12.ParentID = "SDUI5Container1"
	menu12.BackgroundColor = "base-300"
	menu12.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu12.MinHeight = ""
	menu12.ItemClasses = ""
	menu12.ItemStyles = ""
	BANano.Await(menu12.AddComponent)
	'
	SDUI5MenuItem31.Initialize(Me, "SDUI5MenuItem31", "SDUI5MenuItem31")
	SDUI5MenuItem31.ParentID = "menu12"
	SDUI5MenuItem31.BadgeSize = "none"
	SDUI5MenuItem31.MenuName = "menu12"
	SDUI5MenuItem31.ItemClasses = ""
	SDUI5MenuItem31.ItemStyles = ""
	SDUI5MenuItem31.Text = "Item 3"
	'SDUI5MenuItem31.Tooltip = ""
	'SDUI5MenuItem31.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem31.AddComponent)
	'
	SDUI5MenuItem32.Initialize(Me, "SDUI5MenuItem32", "SDUI5MenuItem32")
	SDUI5MenuItem32.ParentID = "menu12"
	SDUI5MenuItem32.BadgeSize = "none"
	SDUI5MenuItem32.MenuName = "menu12"
	SDUI5MenuItem32.ItemClasses = ""
	SDUI5MenuItem32.ItemStyles = ""
	SDUI5MenuItem32.Text = "Item 2"
	'SDUI5MenuItem32.Tooltip = ""
	'SDUI5MenuItem32.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem32.AddComponent)
	'
	SDUI5MenuItem33.Initialize(Me, "SDUI5MenuItem33", "SDUI5MenuItem33")
	SDUI5MenuItem33.ParentID = "menu12"
	SDUI5MenuItem33.BadgeSize = "none"
	SDUI5MenuItem33.MenuName = "menu12"
	SDUI5MenuItem33.ItemClasses = ""
	SDUI5MenuItem33.ItemStyles = ""
	SDUI5MenuItem33.Text = "Item 1"
	'SDUI5MenuItem33.Tooltip = ""
	'SDUI5MenuItem33.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem33.AddComponent)
	'
	SDUI5MenuItem34.Initialize(Me, "SDUI5MenuItem34", "SDUI5MenuItem34")
	SDUI5MenuItem34.ParentID = "menu12"
	SDUI5MenuItem34.BadgeSize = "none"
	SDUI5MenuItem34.ItemType = "title"
	SDUI5MenuItem34.MenuName = "menu12"
	SDUI5MenuItem34.ItemClasses = ""
	SDUI5MenuItem34.ItemStyles = ""
	SDUI5MenuItem34.Text = "Menu Title"
	'SDUI5MenuItem34.Tooltip = ""
	'SDUI5MenuItem34.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem34.AddComponent)
	'
	menu13.Initialize(Me, "menu13", "menu13")
	menu13.ParentID = "SDUI5Container1"
	menu13.BackgroundColor = "base-300"
	menu13.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menu13.MinHeight = ""
	menu13.ItemClasses = ""
	menu13.ItemStyles = ""
	BANano.Await(menu13.AddComponent)
	'
	title1.Initialize(Me, "title1", "title1")
	title1.ParentID = "menu13"
	title1.BadgeSize = "none"
	title1.IconSize = "5"
	title1.ItemType = "title"
	title1.MenuName = "menu13"
	title1.Parent = True
	title1.ItemClasses = ""
	title1.ItemStyles = ""
	title1.Text = "Menu Title"
	'title1.Tooltip = ""
	'title1.TooltipPosition = "none"
	BANano.Await(title1.AddComponent)
	'
	SDUI5MenuItem35.Initialize(Me, "SDUI5MenuItem35", "SDUI5MenuItem35")
	SDUI5MenuItem35.ParentID = "title1_items"
	SDUI5MenuItem35.BadgeSize = "none"
	SDUI5MenuItem35.MenuName = "menu13"
	SDUI5MenuItem35.ItemClasses = ""
	SDUI5MenuItem35.ItemStyles = ""
	SDUI5MenuItem35.Text = "Item 3"
	'SDUI5MenuItem35.Tooltip = ""
	'SDUI5MenuItem35.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem35.AddComponent)
	'
	SDUI5MenuItem36.Initialize(Me, "SDUI5MenuItem36", "SDUI5MenuItem36")
	SDUI5MenuItem36.ParentID = "title1_items"
	SDUI5MenuItem36.BadgeSize = "none"
	SDUI5MenuItem36.MenuName = "menu13"
	SDUI5MenuItem36.ItemClasses = ""
	SDUI5MenuItem36.ItemStyles = ""
	SDUI5MenuItem36.Text = "Item 2"
	'SDUI5MenuItem36.Tooltip = ""
	'SDUI5MenuItem36.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem36.AddComponent)
	'
	SDUI5MenuItem37.Initialize(Me, "SDUI5MenuItem37", "SDUI5MenuItem37")
	SDUI5MenuItem37.ParentID = "title1_items"
	SDUI5MenuItem37.BadgeSize = "none"
	SDUI5MenuItem37.MenuName = "menu13"
	SDUI5MenuItem37.ItemClasses = ""
	SDUI5MenuItem37.ItemStyles = ""
	SDUI5MenuItem37.Text = "Item 1"
	'SDUI5MenuItem37.Tooltip = ""
	'SDUI5MenuItem37.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem37.AddComponent)
	'
	menuFaces.Initialize(Me, "menuFaces", "menuFaces")
	menuFaces.ParentID = "SDUI5Container1"
	menuFaces.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menuFaces.MinHeight = ""
	menuFaces.PaddingAXYTBLR = "a=0; x=?; y=?; t=?; b=?; l=?; r=?"
	menuFaces.ItemClasses = ""
	menuFaces.ItemStyles = ""
	menuFaces.Rounded = "md"
	menuFaces.RoundedBox = False
	menuFaces.Width = "80"
	BANano.Await(menuFaces.AddComponent)
	'
	menuCheckBox.Initialize(Me, "menuCheckBox", "menuCheckBox")
	menuCheckBox.ParentID = "SDUI5Container1"
	menuCheckBox.CheckedColor = "#00ff00"
	menuCheckBox.HasCheckBox = True
	menuCheckBox.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menuCheckBox.MinHeight = ""
	menuCheckBox.PaddingAXYTBLR = "a=0; x=?; y=?; t=?; b=?; l=?; r=?"
	menuCheckBox.ItemClasses = ""
	menuCheckBox.ItemStyles = ""
	menuCheckBox.Rounded = "md"
	menuCheckBox.RoundedBox = False
	menuCheckBox.Width = "80"
	BANano.Await(menuCheckBox.AddComponent)
	pgIndex.UpdateTitle("SDUI5Menu")
	'
	menuFaces.Clear
	menuFaces.AddMenuItemAvatarText("", "face1", "https://picsum.photos/80/80?1", app.MASK_CIRCLE, "16", "Face 1", False)
	menuFaces.AddMenuItemAvatarText("", "face2", "https://picsum.photos/80/80?2", app.MASK_CIRCLE, "16", "Face 2", False)
	menuFaces.AddMenuItemAvatarText("", "face3", "https://picsum.photos/80/80?3", app.MASK_CIRCLE, "16", "Face 3", False)
	menuFaces.AddMenuItemAvatarText("", "face4", "https://picsum.photos/80/80?4", app.MASK_CIRCLE, "16", "Face 4", False)
	menuFaces.AddMenuItemAvatarText("", "face5", "https://picsum.photos/80/80?5", app.MASK_CIRCLE, "16", "Face 5", False)
	'
	menuCheckBox.Clear
	menuCheckBox.AddItemChild("", "check1", "", "Item 1")
	menuCheckBox.AddItemChild("", "check2", "", "Item 2")
	menuCheckBox.AddItemChild("", "check3", "", "Item 3")
	menuCheckBox.AddItemChild("", "check4", "", "Item 4")
	menuCheckBox.AddItemChild("", "check5", "", "Item 5")
	menuCheckBox.AddItemChild("", "check6", "", "Item 6")
End Sub

Private Sub menu1_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menu2_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menu3_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menu9_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menu13_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menuFaces_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menuCheckBox_Change (Value As String)
	Dim allSelected As String = menuCheckBox.GetSelected
	app.ShowToastInfo(allSelected)
End Sub

