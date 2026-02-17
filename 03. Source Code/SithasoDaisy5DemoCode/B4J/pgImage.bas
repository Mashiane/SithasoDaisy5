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
	Private SDUI5Image1 As SDUI5Image		'ignore
	Private SDUI5Image2 As SDUI5Image		'ignore
	Private SDUI5Image3 As SDUI5Image		'ignore
	Private SDUI5Image4 As SDUI5Image		'ignore
	Private SDUI5Image5 As SDUI5Image		'ignore
	Private SDUI5Image6 As SDUI5Image		'ignore
	Private SDUI5Image7 As SDUI5Image		'ignore
	Private SDUI5Image8 As SDUI5Image		'ignore
	Private SDUI5Image9 As SDUI5Image		'ignore
	Private SDUI5Image10 As SDUI5Image		'ignore
	Private SDUI5Image11 As SDUI5Image		'ignore
	Private SDUI5Image12 As SDUI5Image		'ignore
	Private SDUI5Image13 As SDUI5Image		'ignore
	Private SDUI5Image14 As SDUI5Image		'ignore
	Private SDUI5Image15 As SDUI5Image		'ignore
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
	SDUI5Row1.GridCols = "3"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Image1.Initialize(Me, "SDUI5Image1", "SDUI5Image1")
	SDUI5Image1.ParentID = "SDUI5Row1"
	SDUI5Image1.Height = "20"
	SDUI5Image1.Mask = "squircle"
	SDUI5Image1.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image1.Width = "20"
	BANano.Await(SDUI5Image1.AddComponent)
	'
	SDUI5Image2.Initialize(Me, "SDUI5Image2", "SDUI5Image2")
	SDUI5Image2.ParentID = "SDUI5Row1"
	SDUI5Image2.Height = "20"
	SDUI5Image2.Mask = "heart"
	SDUI5Image2.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image2.Width = "20"
	BANano.Await(SDUI5Image2.AddComponent)
	'
	SDUI5Image3.Initialize(Me, "SDUI5Image3", "SDUI5Image3")
	SDUI5Image3.ParentID = "SDUI5Row1"
	SDUI5Image3.Height = "20"
	SDUI5Image3.Mask = "hexagon"
	SDUI5Image3.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image3.Width = "20"
	BANano.Await(SDUI5Image3.AddComponent)
	'
	SDUI5Image4.Initialize(Me, "SDUI5Image4", "SDUI5Image4")
	SDUI5Image4.ParentID = "SDUI5Row1"
	SDUI5Image4.Height = "20"
	SDUI5Image4.Mask = "hexagon-2"
	SDUI5Image4.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image4.Width = "20"
	BANano.Await(SDUI5Image4.AddComponent)
	'
	SDUI5Image5.Initialize(Me, "SDUI5Image5", "SDUI5Image5")
	SDUI5Image5.ParentID = "SDUI5Row1"
	SDUI5Image5.Height = "20"
	SDUI5Image5.Mask = "decagon"
	SDUI5Image5.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image5.Width = "20"
	BANano.Await(SDUI5Image5.AddComponent)
	'
	SDUI5Image6.Initialize(Me, "SDUI5Image6", "SDUI5Image6")
	SDUI5Image6.ParentID = "SDUI5Row1"
	SDUI5Image6.Height = "20"
	SDUI5Image6.Mask = "pentagon"
	SDUI5Image6.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image6.Width = "20"
	BANano.Await(SDUI5Image6.AddComponent)
	'
	SDUI5Image7.Initialize(Me, "SDUI5Image7", "SDUI5Image7")
	SDUI5Image7.ParentID = "SDUI5Row1"
	SDUI5Image7.Height = "20"
	SDUI5Image7.Mask = "diamond"
	SDUI5Image7.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image7.Width = "20"
	BANano.Await(SDUI5Image7.AddComponent)
	'
	SDUI5Image8.Initialize(Me, "SDUI5Image8", "SDUI5Image8")
	SDUI5Image8.ParentID = "SDUI5Row1"
	SDUI5Image8.Height = "20"
	SDUI5Image8.Mask = "square"
	SDUI5Image8.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image8.Width = "20"
	BANano.Await(SDUI5Image8.AddComponent)
	'
	SDUI5Image9.Initialize(Me, "SDUI5Image9", "SDUI5Image9")
	SDUI5Image9.ParentID = "SDUI5Row1"
	SDUI5Image9.Height = "20"
	SDUI5Image9.Mask = "circle"
	SDUI5Image9.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image9.Width = "20"
	BANano.Await(SDUI5Image9.AddComponent)
	'
	SDUI5Image10.Initialize(Me, "SDUI5Image10", "SDUI5Image10")
	SDUI5Image10.ParentID = "SDUI5Row1"
	SDUI5Image10.Height = "20"
	SDUI5Image10.Mask = "star"
	SDUI5Image10.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image10.Width = "20"
	BANano.Await(SDUI5Image10.AddComponent)
	'
	SDUI5Image11.Initialize(Me, "SDUI5Image11", "SDUI5Image11")
	SDUI5Image11.ParentID = "SDUI5Row1"
	SDUI5Image11.Height = "20"
	SDUI5Image11.Mask = "star-2"
	SDUI5Image11.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image11.Width = "20"
	BANano.Await(SDUI5Image11.AddComponent)
	'
	SDUI5Image12.Initialize(Me, "SDUI5Image12", "SDUI5Image12")
	SDUI5Image12.ParentID = "SDUI5Row1"
	SDUI5Image12.Height = "20"
	SDUI5Image12.Mask = "triangle"
	SDUI5Image12.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image12.Width = "20"
	BANano.Await(SDUI5Image12.AddComponent)
	'
	SDUI5Image13.Initialize(Me, "SDUI5Image13", "SDUI5Image13")
	SDUI5Image13.ParentID = "SDUI5Row1"
	SDUI5Image13.Height = "20"
	SDUI5Image13.Mask = "triangle-2"
	SDUI5Image13.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image13.Width = "20"
	BANano.Await(SDUI5Image13.AddComponent)
	'
	SDUI5Image14.Initialize(Me, "SDUI5Image14", "SDUI5Image14")
	SDUI5Image14.ParentID = "SDUI5Row1"
	SDUI5Image14.Height = "20"
	SDUI5Image14.Mask = "triangle-3"
	SDUI5Image14.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image14.Width = "20"
	BANano.Await(SDUI5Image14.AddComponent)
	'
	SDUI5Image15.Initialize(Me, "SDUI5Image15", "SDUI5Image15")
	SDUI5Image15.ParentID = "SDUI5Row1"
	SDUI5Image15.Height = "20"
	SDUI5Image15.Mask = "triangle-4"
	SDUI5Image15.Src = "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp"
	SDUI5Image15.Width = "20"
	BANano.Await(SDUI5Image15.AddComponent)
	pgIndex.UpdateTitle("SDUI5Image")
End Sub

