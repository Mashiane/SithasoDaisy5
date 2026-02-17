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
	Public name As String = ""
	Public title As String = ""
	Public icon As String = "./assets/page.svg"
	Public color As String = "#000000"
	Private page3 As SDUI5Page						'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private gallery As SDUI5HoverGallery		'ignore
	Private img1 As SDUI5Image		'ignore
	Private img2 As SDUI5Image		'ignore
	Private SDUI5Image1 As SDUI5Image		'ignore
	Private SDUI5Image2 As SDUI5Image		'ignore
	Private SDUI5Image3 As SDUI5Image		'ignore
	Private SDUI5Image4 As SDUI5Image		'ignore
	Private SDUI5Image5 As SDUI5Image		'ignore
	Private SDUI5Image6 As SDUI5Image		'ignore
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private hoverx As SDUI5Card		'ignore
	Private SDUI5Image7 As SDUI5Image		'ignore
	Private SDUI5Image8 As SDUI5Image		'ignore
	Private SDUI5Image9 As SDUI5Image		'ignore
End Sub

Sub Show	'ignore
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	page3.Initialize(Me, "page3", "page3")
	page3.Active = False
	page3.BackgroundColor = ""
	page3.Container = False
	page3.Flex = False
	page3.FlexWrap = False
	'page3.Gradient = "bl_tr"
	'page3.GradientActive = False
	page3.MxAuto = False
	page3.Description = "My SDUIPage"
	page3.Keywords = "page"
	page3.ResizePageView = False
	page3.Title = "Page 3"
	BANano.Await(page3.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "page3"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	gallery.Initialize(Me, "gallery", "gallery")
	gallery.ParentID = "SDUI5Column1"
	gallery.Rounded = "2xl"
	gallery.Shadow = "md"
	BANano.Await(gallery.AddComponent)
	'
	img1.Initialize(Me, "img1", "img1")
	img1.ParentID = "gallery"
	img1.Center = False
	img1.Cover = False
	img1.Height = ""
	img1.Mask = "none"
	img1.NoRepeat = False
	img1.Src = "./assets/car1.png"
	img1.Width = ""
	BANano.Await(img1.AddComponent)
	'
	img2.Initialize(Me, "img2", "img2")
	img2.ParentID = "gallery"
	img2.Center = False
	img2.Cover = False
	img2.Height = ""
	img2.Mask = "none"
	img2.NoRepeat = False
	img2.Src = "./assets/car2.png"
	img2.Width = ""
	BANano.Await(img2.AddComponent)
	'
	SDUI5Image1.Initialize(Me, "SDUI5Image1", "SDUI5Image1")
	SDUI5Image1.ParentID = "gallery"
	SDUI5Image1.Center = False
	SDUI5Image1.Cover = False
	SDUI5Image1.Height = ""
	SDUI5Image1.Mask = "none"
	SDUI5Image1.NoRepeat = False
	SDUI5Image1.Src = "./assets/car3.png"
	SDUI5Image1.Width = ""
	BANano.Await(SDUI5Image1.AddComponent)
	'
	SDUI5Image2.Initialize(Me, "SDUI5Image2", "SDUI5Image2")
	SDUI5Image2.ParentID = "gallery"
	SDUI5Image2.Center = False
	SDUI5Image2.Cover = False
	SDUI5Image2.Height = ""
	SDUI5Image2.Mask = "none"
	SDUI5Image2.NoRepeat = False
	SDUI5Image2.Src = "./assets/car4.png"
	SDUI5Image2.Width = ""
	BANano.Await(SDUI5Image2.AddComponent)
	'
	SDUI5Image3.Initialize(Me, "SDUI5Image3", "SDUI5Image3")
	SDUI5Image3.ParentID = "gallery"
	SDUI5Image3.Center = False
	SDUI5Image3.Cover = False
	SDUI5Image3.Height = ""
	SDUI5Image3.Mask = "none"
	SDUI5Image3.NoRepeat = False
	SDUI5Image3.Src = "./assets/car5.png"
	SDUI5Image3.Width = ""
	BANano.Await(SDUI5Image3.AddComponent)
	'
	SDUI5Image4.Initialize(Me, "SDUI5Image4", "SDUI5Image4")
	SDUI5Image4.ParentID = "gallery"
	SDUI5Image4.Center = False
	SDUI5Image4.Cover = False
	SDUI5Image4.Height = ""
	SDUI5Image4.Mask = "none"
	SDUI5Image4.NoRepeat = False
	SDUI5Image4.Src = "./assets/car6.png"
	SDUI5Image4.Width = ""
	BANano.Await(SDUI5Image4.AddComponent)
	'
	SDUI5Image5.Initialize(Me, "SDUI5Image5", "SDUI5Image5")
	SDUI5Image5.ParentID = "gallery"
	SDUI5Image5.Center = False
	SDUI5Image5.Cover = False
	SDUI5Image5.Height = ""
	SDUI5Image5.Mask = "none"
	SDUI5Image5.NoRepeat = False
	SDUI5Image5.Src = "./assets/car7.png"
	SDUI5Image5.Width = ""
	BANano.Await(SDUI5Image5.AddComponent)
	'
	SDUI5Image6.Initialize(Me, "SDUI5Image6", "SDUI5Image6")
	SDUI5Image6.ParentID = "gallery"
	SDUI5Image6.Center = False
	SDUI5Image6.Cover = False
	SDUI5Image6.Height = ""
	SDUI5Image6.Mask = "none"
	SDUI5Image6.NoRepeat = False
	SDUI5Image6.Src = "./assets/car8.png"
	SDUI5Image6.Width = ""
	BANano.Await(SDUI5Image6.AddComponent)
	'
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = "page3"
	SDUI5Row2.Gap = ""
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row2"
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	hoverx.Initialize(Me, "hoverx", "hoverx")
	hoverx.ParentID = "SDUI5Column2"
	hoverx.ActionsVisible = False
	hoverx.Border = False
	hoverx.HoverGallery = True
	hoverx.Image = "https://img.daisyui.com/images/stock/daisyui-hat-1.webp"
	hoverx.ImageCenter = False
	hoverx.ImageCover = False
	hoverx.ImageNoRepeat = False
	hoverx.Content = "High Quality classic cap hat with stitch logo"
	hoverx.Size = "sm"
	hoverx.Title = "DaisyUI Hat"
	hoverx.TitleClasses = "flex justify-between"
	hoverx.Width = "60"
	BANano.Await(hoverx.AddComponent)
	'
	SDUI5Image7.Initialize(Me, "SDUI5Image7", "SDUI5Image7")
	SDUI5Image7.ParentID = "hoverx_figure"
	SDUI5Image7.Center = False
	SDUI5Image7.Cover = False
	SDUI5Image7.Height = ""
	SDUI5Image7.Mask = "none"
	SDUI5Image7.NoRepeat = False
	SDUI5Image7.Src = "https://img.daisyui.com/images/stock/daisyui-hat-2.webp"
	SDUI5Image7.Width = ""
	BANano.Await(SDUI5Image7.AddComponent)
	'
	SDUI5Image8.Initialize(Me, "SDUI5Image8", "SDUI5Image8")
	SDUI5Image8.ParentID = "hoverx_figure"
	SDUI5Image8.Center = False
	SDUI5Image8.Cover = False
	SDUI5Image8.Height = ""
	SDUI5Image8.Mask = "none"
	SDUI5Image8.NoRepeat = False
	SDUI5Image8.Src = "https://img.daisyui.com/images/stock/daisyui-hat-3.webp"
	SDUI5Image8.Width = ""
	BANano.Await(SDUI5Image8.AddComponent)
	'
	SDUI5Image9.Initialize(Me, "SDUI5Image9", "SDUI5Image9")
	SDUI5Image9.ParentID = "hoverx_figure"
	SDUI5Image9.Center = False
	SDUI5Image9.Cover = False
	SDUI5Image9.Height = ""
	SDUI5Image9.Mask = "none"
	SDUI5Image9.NoRepeat = False
	SDUI5Image9.Src = "https://img.daisyui.com/images/stock/daisyui-hat-4.webp"
	SDUI5Image9.Width = ""
	BANano.Await(SDUI5Image9.AddComponent)
	pgIndex.UpdateTitle(page3.title)
	name = page3.ID
	icon = page3.Icon
	color = page3.color
	title = page3.title
End Sub

Sub getName As String		'ignore
	Return name
End Sub
'
Sub getIcon As String		'ignore
	Return icon
End Sub
'
Sub getTitle As String		'ignore
	Return title
End Sub
'
Sub getColor As String		'ignore
	Return color
End Sub

