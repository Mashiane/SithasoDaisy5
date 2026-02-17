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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Stat1 As SDUI5Stat		'ignore
	Private SDUI5StatItem1 As SDUI5StatItem		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Stat2 As SDUI5Stat		'ignore
	Private SDUI5StatItem4 As SDUI5StatItem		'ignore
	Private SDUI5StatItem5 As SDUI5StatItem		'ignore
	Private SDUI5StatItem6 As SDUI5StatItem		'ignore
	Private SDUI5StatItem2 As SDUI5StatItem		'ignore
	Private SDUI5StatItem3 As SDUI5StatItem		'ignore
	Private SDUI5StatItem7 As SDUI5StatItem		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.SizeMd = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Stat1.Initialize(Me, "SDUI5Stat1", "SDUI5Stat1")
	SDUI5Stat1.ParentID = "SDUI5Column1"
	SDUI5Stat1.Direction = "horizontal"
	SDUI5Stat1.MDDirection = "none"
	SDUI5Stat1.SMDirection = "vertical"
	BANano.Await(SDUI5Stat1.AddComponent)
	'
	SDUI5StatItem1.Initialize(Me, "SDUI5StatItem1", "SDUI5StatItem1")
	SDUI5StatItem1.ParentID = "SDUI5Stat1"
	SDUI5StatItem1.IconHeight = "12"
	SDUI5StatItem1.IconWidth = "12"
	BANano.Await(SDUI5StatItem1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Stat2.Initialize(Me, "SDUI5Stat2", "SDUI5Stat2")
	SDUI5Stat2.ParentID = "SDUI5Column2"
	BANano.Await(SDUI5Stat2.AddComponent)
	'
	SDUI5StatItem4.Initialize(Me, "SDUI5StatItem4", "SDUI5StatItem4")
	SDUI5StatItem4.ParentID = "SDUI5Stat2"
	SDUI5StatItem4.FigureType = "image"
	SDUI5StatItem4.Icon = "./assets/heart-with-ribbon.svg"
	SDUI5StatItem4.IconHeight = "14"
	SDUI5StatItem4.IconWidth = "14"
	SDUI5StatItem4.PlaceItemsCenter = True
	SDUI5StatItem4.Title = "Total Likes"
	SDUI5StatItem4.Value = "25.6K"
	BANano.Await(SDUI5StatItem4.AddComponent)
	'
	SDUI5StatItem5.Initialize(Me, "SDUI5StatItem5", "SDUI5StatItem5")
	SDUI5StatItem5.ParentID = "SDUI5Stat2"
	SDUI5StatItem5.IconHeight = "12"
	SDUI5StatItem5.IconWidth = "12"
	SDUI5StatItem5.PlaceItemsCenter = True
	SDUI5StatItem5.Title = "Page Views"
	SDUI5StatItem5.Value = "2.6M"
	SDUI5StatItem5.ValueTextColor = "secondary"
	BANano.Await(SDUI5StatItem5.AddComponent)
	'
	SDUI5StatItem6.Initialize(Me, "SDUI5StatItem6", "SDUI5StatItem6")
	SDUI5StatItem6.ParentID = "SDUI5Stat2"
	SDUI5StatItem6.Desc = "31 Tasks Remaining"
	SDUI5StatItem6.DescTextColor = "secondary"
	SDUI5StatItem6.IconHeight = "12"
	SDUI5StatItem6.IconWidth = "12"
	SDUI5StatItem6.PlaceItemsCenter = True
	SDUI5StatItem6.Title = "Tasks Done"
	SDUI5StatItem6.Value = "86%"
	BANano.Await(SDUI5StatItem6.AddComponent)
	'
	SDUI5StatItem2.Initialize(Me, "SDUI5StatItem2", "SDUI5StatItem2")
	SDUI5StatItem2.ParentID = "SDUI5Stat1"
	SDUI5StatItem2.AvatarShape = "squircle"
	SDUI5StatItem2.Desc = "Progress going well"
	SDUI5StatItem2.FigureType = "avatar"
	SDUI5StatItem2.Icon = "./assets/mashy.jpg"
	SDUI5StatItem2.IconHeight = "60px"
	SDUI5StatItem2.IconWidth = "60px"
	SDUI5StatItem2.Title = "Tasks Complete"
	SDUI5StatItem2.Value = "10/20"
	BANano.Await(SDUI5StatItem2.AddComponent)
	'
	SDUI5StatItem3.Initialize(Me, "SDUI5StatItem3", "SDUI5StatItem3")
	SDUI5StatItem3.ParentID = "SDUI5Stat1"
	SDUI5StatItem3.AvatarShape = "squircle"
	SDUI5StatItem3.Desc = "Savings Account"
	SDUI5StatItem3.FigureColor = "#ffa500"
	SDUI5StatItem3.FigureType = "icon"
	SDUI5StatItem3.Icon = "./assets/wallet.svg"
	SDUI5StatItem3.IconHeight = "60px"
	SDUI5StatItem3.IconWidth = "60px"
	SDUI5StatItem3.Title = "Wallet"
	SDUI5StatItem3.Value = "$1,000"
	BANano.Await(SDUI5StatItem3.AddComponent)
	'
	SDUI5StatItem7.Initialize(Me, "SDUI5StatItem7", "SDUI5StatItem7")
	SDUI5StatItem7.ParentID = "SDUI5Stat1"
	SDUI5StatItem7.AvatarShape = "squircle"
	SDUI5StatItem7.Desc = "Total Expenditure"
	SDUI5StatItem7.FigureColor = "#ff0000"
	SDUI5StatItem7.FigureType = "radial-progress"
	SDUI5StatItem7.RadialSize = "5rem"
	SDUI5StatItem7.RadialValue = "50"
	SDUI5StatItem7.Title = "Expenditure"
	SDUI5StatItem7.Value = "$50"
	BANano.Await(SDUI5StatItem7.AddComponent)
	pgIndex.UpdateTitle("SDUI5Stat")
End Sub


