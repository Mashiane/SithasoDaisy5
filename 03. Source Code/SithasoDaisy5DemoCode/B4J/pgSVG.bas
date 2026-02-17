B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5Svg1 As SDUI5Svg		'ignore
	Private SDUI5Svg2 As SDUI5Svg		'ignore
	Private SDUI5Svg3 As SDUI5Svg		'ignore
	Private SDUI5Svg4 As SDUI5Svg		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
End Sub

'https://freesvgicons.com/
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
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.SizeMd = "4"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "4"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Svg1.Initialize(Me, "SDUI5Svg1", "SDUI5Svg1")
	SDUI5Svg1.ParentID = "SDUI5Column1"
	SDUI5Svg1.CacheDisabled = False
	SDUI5Svg1.Height = "50px"
	SDUI5Svg1.Src = "./assets/donuts-cake-svgrepo-com.svg"
	SDUI5Svg1.Width = "50px"
	SDUI5Svg1.Fit = False
	SDUI5Svg1.Replace = False
	BANano.Await(SDUI5Svg1.AddComponent)
	'
	SDUI5Svg2.Initialize(Me, "SDUI5Svg2", "SDUI5Svg2")
	SDUI5Svg2.ParentID = "SDUI5Column2"
	SDUI5Svg2.CacheDisabled = False
	SDUI5Svg2.Height = "50px"
	SDUI5Svg2.Src = "./assets/pants-svgrepo-com.svg"
	SDUI5Svg2.Width = "50px"
	SDUI5Svg2.Fit = False
	SDUI5Svg2.Replace = False
	BANano.Await(SDUI5Svg2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "4"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Svg3.Initialize(Me, "SDUI5Svg3", "SDUI5Svg3")
	SDUI5Svg3.ParentID = "SDUI5Column3"
	SDUI5Svg3.CacheDisabled = False
	SDUI5Svg3.FillColor = "red"
	SDUI5Svg3.Height = "32px"
	SDUI5Svg3.Src = "./assets/shop-svgrepo-com.svg"
	SDUI5Svg3.Width = "32px"
	SDUI5Svg3.Fit = False
	SDUI5Svg3.Replace = False
	BANano.Await(SDUI5Svg3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "4"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Svg4.Initialize(Me, "SDUI5Svg4", "SDUI5Svg4")
	SDUI5Svg4.ParentID = "SDUI5Column4"
	SDUI5Svg4.CacheDisabled = False
	SDUI5Svg4.Color = "blue"
	SDUI5Svg4.Height = "32px"
	SDUI5Svg4.Src = "./assets/bakery-breakfast-dessert-svgrepo-com.svg"
	SDUI5Svg4.Width = "32px"
	SDUI5Svg4.Fit = False
	SDUI5Svg4.Replace = False
	BANano.Await(SDUI5Svg4.AddComponent)
	pgIndex.UpdateTitle("SDUI5Svg")
End Sub

Private Sub SDUI5Svg4_Click (e As BANanoEvent)
	app.ShowToast("svg4")
End Sub

Private Sub SDUI5Svg3_Click (e As BANanoEvent)
	app.ShowToast("svg3")
End Sub

Private Sub SDUI5Svg2_Click (e As BANanoEvent)
	app.ShowToast("svg2")
End Sub

Private Sub SDUI5Svg1_Click (e As BANanoEvent)
	app.ShowToast("svg1")
End Sub

