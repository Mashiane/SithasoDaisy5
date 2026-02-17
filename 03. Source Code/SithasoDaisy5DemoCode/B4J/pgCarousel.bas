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
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private carousel1 As SDUI5Carousel		'ignore
	Private SDUI5CarouselItem1 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem2 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem3 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem4 As SDUI5CarouselItem		'ignore
	Private SDUI5Carousel1 As SDUI5Carousel		'ignore
	Private SDUI5CarouselItem5 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem6 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem7 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem8 As SDUI5CarouselItem		'ignore
	Private SDUI5Carousel2 As SDUI5Carousel		'ignore
	Private SDUI5CarouselItem9 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem10 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem11 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem12 As SDUI5CarouselItem		'ignore
	Private SDUI5Carousel3 As SDUI5Carousel		'ignore
	Private SDUI5CarouselItem13 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem14 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem15 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem16 As SDUI5CarouselItem		'ignore
	Private SDUI5Carousel4 As SDUI5Carousel		'ignore
	Private SDUI5CarouselItem17 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem18 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem19 As SDUI5CarouselItem		'ignore
	Private SDUI5CarouselItem20 As SDUI5CarouselItem		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	carousel1.Initialize(Me, "carousel1", "carousel1")
	carousel1.ParentID = "SDUI5Column1"
	carousel1.BackgroundColor = ""
	carousel1.Rounded = "md"
	carousel1.RoundedBox = False
	carousel1.SnapItems = "center"
	carousel1.SpaceX = ""
	BANano.Await(carousel1.AddComponent)
	'
	SDUI5CarouselItem1.Initialize(Me, "SDUI5CarouselItem1", "SDUI5CarouselItem1")
	SDUI5CarouselItem1.ParentID = "carousel1"
	SDUI5CarouselItem1.Height = "full"
	SDUI5CarouselItem1.Image = "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp"
	SDUI5CarouselItem1.ImageHeight = "full"
	SDUI5CarouselItem1.ImageWidth = "full"
	SDUI5CarouselItem1.NavigationButtons = True
	SDUI5CarouselItem1.Width = "full"
	BANano.Await(SDUI5CarouselItem1.AddComponent)
	'
	SDUI5CarouselItem2.Initialize(Me, "SDUI5CarouselItem2", "SDUI5CarouselItem2")
	SDUI5CarouselItem2.ParentID = "carousel1"
	SDUI5CarouselItem2.Height = "full"
	SDUI5CarouselItem2.Image = "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp"
	SDUI5CarouselItem2.ImageHeight = "full"
	SDUI5CarouselItem2.ImageWidth = "full"
	SDUI5CarouselItem2.NavigationButtons = True
	SDUI5CarouselItem2.Width = "full"
	BANano.Await(SDUI5CarouselItem2.AddComponent)
	'
	SDUI5CarouselItem3.Initialize(Me, "SDUI5CarouselItem3", "SDUI5CarouselItem3")
	SDUI5CarouselItem3.ParentID = "carousel1"
	SDUI5CarouselItem3.Height = "full"
	SDUI5CarouselItem3.Image = "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp"
	SDUI5CarouselItem3.ImageHeight = "full"
	SDUI5CarouselItem3.ImageWidth = "full"
	SDUI5CarouselItem3.NavigationButtons = True
	SDUI5CarouselItem3.Width = "full"
	BANano.Await(SDUI5CarouselItem3.AddComponent)
	'
	SDUI5CarouselItem4.Initialize(Me, "SDUI5CarouselItem4", "SDUI5CarouselItem4")
	SDUI5CarouselItem4.ParentID = "carousel1"
	SDUI5CarouselItem4.Height = "full"
	SDUI5CarouselItem4.Image = "https://img.daisyui.com/images/stock/photo-1494253109108-2e30c049369b.webp"
	SDUI5CarouselItem4.ImageHeight = "full"
	SDUI5CarouselItem4.ImageWidth = "full"
	SDUI5CarouselItem4.NavigationButtons = True
	SDUI5CarouselItem4.Refresh = True
	SDUI5CarouselItem4.Width = "full"
	BANano.Await(SDUI5CarouselItem4.AddComponent)
	'
	SDUI5Carousel1.Initialize(Me, "SDUI5Carousel1", "SDUI5Carousel1")
	SDUI5Carousel1.ParentID = "SDUI5Column2"
	SDUI5Carousel1.BackgroundColor = ""
	SDUI5Carousel1.Height = ""
	SDUI5Carousel1.Rounded = "md"
	SDUI5Carousel1.RoundedBox = False
	SDUI5Carousel1.SnapItems = "center"
	SDUI5Carousel1.SpaceX = ""
	SDUI5Carousel1.Width = "64"
	BANano.Await(SDUI5Carousel1.AddComponent)
	'
	SDUI5CarouselItem5.Initialize(Me, "SDUI5CarouselItem5", "SDUI5CarouselItem5")
	SDUI5CarouselItem5.ParentID = "SDUI5Carousel1"
	SDUI5CarouselItem5.Height = ""
	SDUI5CarouselItem5.Image = "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp"
	SDUI5CarouselItem5.ImageHeight = ""
	SDUI5CarouselItem5.ImageWidth = "full"
	SDUI5CarouselItem5.Width = "full"
	BANano.Await(SDUI5CarouselItem5.AddComponent)
	'
	SDUI5CarouselItem6.Initialize(Me, "SDUI5CarouselItem6", "SDUI5CarouselItem6")
	SDUI5CarouselItem6.ParentID = "SDUI5Carousel1"
	SDUI5CarouselItem6.Height = ""
	SDUI5CarouselItem6.Image = "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp"
	SDUI5CarouselItem6.ImageHeight = ""
	SDUI5CarouselItem6.ImageWidth = "full"
	SDUI5CarouselItem6.Width = "full"
	BANano.Await(SDUI5CarouselItem6.AddComponent)
	'
	SDUI5CarouselItem7.Initialize(Me, "SDUI5CarouselItem7", "SDUI5CarouselItem7")
	SDUI5CarouselItem7.ParentID = "SDUI5Carousel1"
	SDUI5CarouselItem7.Height = ""
	SDUI5CarouselItem7.Image = "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp"
	SDUI5CarouselItem7.ImageHeight = ""
	SDUI5CarouselItem7.ImageWidth = "full"
	SDUI5CarouselItem7.Width = "full"
	BANano.Await(SDUI5CarouselItem7.AddComponent)
	'
	SDUI5CarouselItem8.Initialize(Me, "SDUI5CarouselItem8", "SDUI5CarouselItem8")
	SDUI5CarouselItem8.ParentID = "SDUI5Carousel1"
	SDUI5CarouselItem8.Height = ""
	SDUI5CarouselItem8.Image = "https://img.daisyui.com/images/stock/photo-1494253109108-2e30c049369b.webp"
	SDUI5CarouselItem8.ImageHeight = ""
	SDUI5CarouselItem8.ImageWidth = "full"
	SDUI5CarouselItem8.Width = "full"
	BANano.Await(SDUI5CarouselItem8.AddComponent)
	'
	SDUI5Carousel2.Initialize(Me, "SDUI5Carousel2", "SDUI5Carousel2")
	SDUI5Carousel2.ParentID = "SDUI5Column3"
	SDUI5Carousel2.BackgroundColor = ""
	SDUI5Carousel2.Direction = "vertical"
	SDUI5Carousel2.Height = "96"
	SDUI5Carousel2.Rounded = "md"
	SDUI5Carousel2.RoundedBox = False
	SDUI5Carousel2.SnapItems = "center"
	SDUI5Carousel2.SpaceX = ""
	SDUI5Carousel2.Width = ""
	BANano.Await(SDUI5Carousel2.AddComponent)
	'
	SDUI5CarouselItem9.Initialize(Me, "SDUI5CarouselItem9", "SDUI5CarouselItem9")
	SDUI5CarouselItem9.ParentID = "SDUI5Carousel2"
	SDUI5CarouselItem9.Height = "full"
	SDUI5CarouselItem9.Image = "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp"
	SDUI5CarouselItem9.ImageHeight = "full"
	SDUI5CarouselItem9.ImageWidth = ""
	SDUI5CarouselItem9.Width = ""
	BANano.Await(SDUI5CarouselItem9.AddComponent)
	'
	SDUI5CarouselItem10.Initialize(Me, "SDUI5CarouselItem10", "SDUI5CarouselItem10")
	SDUI5CarouselItem10.ParentID = "SDUI5Carousel2"
	SDUI5CarouselItem10.Height = "full"
	SDUI5CarouselItem10.Image = "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp"
	SDUI5CarouselItem10.ImageHeight = "full"
	SDUI5CarouselItem10.ImageWidth = ""
	SDUI5CarouselItem10.Width = ""
	BANano.Await(SDUI5CarouselItem10.AddComponent)
	'
	SDUI5CarouselItem11.Initialize(Me, "SDUI5CarouselItem11", "SDUI5CarouselItem11")
	SDUI5CarouselItem11.ParentID = "SDUI5Carousel2"
	SDUI5CarouselItem11.Height = "full"
	SDUI5CarouselItem11.Image = "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp"
	SDUI5CarouselItem11.ImageHeight = "full"
	SDUI5CarouselItem11.ImageWidth = ""
	SDUI5CarouselItem11.Width = ""
	BANano.Await(SDUI5CarouselItem11.AddComponent)
	'
	SDUI5CarouselItem12.Initialize(Me, "SDUI5CarouselItem12", "SDUI5CarouselItem12")
	SDUI5CarouselItem12.ParentID = "SDUI5Carousel2"
	SDUI5CarouselItem12.Height = "full"
	SDUI5CarouselItem12.Image = "https://img.daisyui.com/images/stock/photo-1494253109108-2e30c049369b.webp"
	SDUI5CarouselItem12.ImageHeight = "full"
	SDUI5CarouselItem12.ImageWidth = ""
	SDUI5CarouselItem12.Width = ""
	BANano.Await(SDUI5CarouselItem12.AddComponent)
	'
	SDUI5Carousel3.Initialize(Me, "SDUI5Carousel3", "SDUI5Carousel3")
	SDUI5Carousel3.ParentID = "SDUI5Column4"
	SDUI5Carousel3.BackgroundColor = ""
	SDUI5Carousel3.Height = ""
	SDUI5Carousel3.Rounded = "md"
	SDUI5Carousel3.RoundedBox = False
	SDUI5Carousel3.SnapItems = "center"
	SDUI5Carousel3.SpaceX = ""
	SDUI5Carousel3.Width = "96"
	BANano.Await(SDUI5Carousel3.AddComponent)
	'
	SDUI5CarouselItem13.Initialize(Me, "SDUI5CarouselItem13", "SDUI5CarouselItem13")
	SDUI5CarouselItem13.ParentID = "SDUI5Carousel3"
	SDUI5CarouselItem13.Height = ""
	SDUI5CarouselItem13.Image = "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp"
	SDUI5CarouselItem13.ImageHeight = ""
	SDUI5CarouselItem13.ImageWidth = "full"
	SDUI5CarouselItem13.Width = "50%"
	BANano.Await(SDUI5CarouselItem13.AddComponent)
	'
	SDUI5CarouselItem14.Initialize(Me, "SDUI5CarouselItem14", "SDUI5CarouselItem14")
	SDUI5CarouselItem14.ParentID = "SDUI5Carousel3"
	SDUI5CarouselItem14.Height = ""
	SDUI5CarouselItem14.Image = "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp"
	SDUI5CarouselItem14.ImageHeight = ""
	SDUI5CarouselItem14.ImageWidth = "full"
	SDUI5CarouselItem14.Width = "50%"
	BANano.Await(SDUI5CarouselItem14.AddComponent)
	'
	SDUI5CarouselItem15.Initialize(Me, "SDUI5CarouselItem15", "SDUI5CarouselItem15")
	SDUI5CarouselItem15.ParentID = "SDUI5Carousel3"
	SDUI5CarouselItem15.Height = ""
	SDUI5CarouselItem15.Image = "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp"
	SDUI5CarouselItem15.ImageHeight = ""
	SDUI5CarouselItem15.ImageWidth = "full"
	SDUI5CarouselItem15.Width = "50%"
	BANano.Await(SDUI5CarouselItem15.AddComponent)
	'
	SDUI5CarouselItem16.Initialize(Me, "SDUI5CarouselItem16", "SDUI5CarouselItem16")
	SDUI5CarouselItem16.ParentID = "SDUI5Carousel3"
	SDUI5CarouselItem16.Height = ""
	SDUI5CarouselItem16.Image = "https://img.daisyui.com/images/stock/photo-1494253109108-2e30c049369b.webp"
	SDUI5CarouselItem16.ImageHeight = ""
	SDUI5CarouselItem16.ImageWidth = "full"
	SDUI5CarouselItem16.Width = "50%"
	BANano.Await(SDUI5CarouselItem16.AddComponent)
	'
	SDUI5Carousel4.Initialize(Me, "SDUI5Carousel4", "SDUI5Carousel4")
	SDUI5Carousel4.ParentID = "SDUI5Column5"
	SDUI5Carousel4.Height = ""
	SDUI5Carousel4.MaxWidth = "md"
	SDUI5Carousel4.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Carousel4.Rounded = "md"
	SDUI5Carousel4.RoundedBox = False
	SDUI5Carousel4.SnapItems = "center"
	SDUI5Carousel4.Width = ""
	BANano.Await(SDUI5Carousel4.AddComponent)
	'
	SDUI5CarouselItem17.Initialize(Me, "SDUI5CarouselItem17", "SDUI5CarouselItem17")
	SDUI5CarouselItem17.ParentID = "SDUI5Carousel4"
	SDUI5CarouselItem17.Height = ""
	SDUI5CarouselItem17.Image = "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp"
	SDUI5CarouselItem17.ImageHeight = ""
	SDUI5CarouselItem17.ImageRoundedBox = True
	SDUI5CarouselItem17.ImageWidth = ""
	SDUI5CarouselItem17.Width = ""
	BANano.Await(SDUI5CarouselItem17.AddComponent)
	'
	SDUI5CarouselItem18.Initialize(Me, "SDUI5CarouselItem18", "SDUI5CarouselItem18")
	SDUI5CarouselItem18.ParentID = "SDUI5Carousel4"
	SDUI5CarouselItem18.Height = ""
	SDUI5CarouselItem18.Image = "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp"
	SDUI5CarouselItem18.ImageHeight = ""
	SDUI5CarouselItem18.ImageRoundedBox = True
	SDUI5CarouselItem18.ImageWidth = ""
	SDUI5CarouselItem18.Width = ""
	BANano.Await(SDUI5CarouselItem18.AddComponent)
	'
	SDUI5CarouselItem19.Initialize(Me, "SDUI5CarouselItem19", "SDUI5CarouselItem19")
	SDUI5CarouselItem19.ParentID = "SDUI5Carousel4"
	SDUI5CarouselItem19.Height = ""
	SDUI5CarouselItem19.Image = "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp"
	SDUI5CarouselItem19.ImageHeight = ""
	SDUI5CarouselItem19.ImageRoundedBox = True
	SDUI5CarouselItem19.ImageWidth = ""
	SDUI5CarouselItem19.Width = ""
	BANano.Await(SDUI5CarouselItem19.AddComponent)
	'
	SDUI5CarouselItem20.Initialize(Me, "SDUI5CarouselItem20", "SDUI5CarouselItem20")
	SDUI5CarouselItem20.ParentID = "SDUI5Carousel4"
	SDUI5CarouselItem20.Height = ""
	SDUI5CarouselItem20.Image = "https://img.daisyui.com/images/stock/photo-1494253109108-2e30c049369b.webp"
	SDUI5CarouselItem20.ImageHeight = ""
	SDUI5CarouselItem20.ImageRoundedBox = True
	SDUI5CarouselItem20.ImageWidth = ""
	SDUI5CarouselItem20.Width = ""
	BANano.Await(SDUI5CarouselItem20.AddComponent)
	pgIndex.UpdateTitle("SDUI5Carousel")
End Sub

