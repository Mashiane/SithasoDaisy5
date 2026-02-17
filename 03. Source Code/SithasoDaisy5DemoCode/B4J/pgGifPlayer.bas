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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Image1 As SDUI5Image		'ignore
	Private SDUI5Image2 As SDUI5Image		'ignore
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
	SDUI5Column1.Size = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Image1.Initialize(Me, "SDUI5Image1", "SDUI5Image1")
	SDUI5Image1.ParentID = "SDUI5Column1"
	SDUI5Image1.Center = False
	SDUI5Image1.Cover = False
	SDUI5Image1.Height = "400px"
	SDUI5Image1.Mask = "none"
	SDUI5Image1.NoRepeat = False
	SDUI5Image1.Src = "./assets/sample.webp"
	SDUI5Image1.Width = "400px"
	SDUI5Image1.Gif = True
	SDUI5Image1.GifPoster = "./assets/cat.png"
	BANano.Await(SDUI5Image1.AddComponent)
	'
	SDUI5Image2.Initialize(Me, "SDUI5Image2", "SDUI5Image2")
	SDUI5Image2.ParentID = "SDUI5Column2"
	SDUI5Image2.Center = False
	SDUI5Image2.Cover = False
	SDUI5Image2.Height = "400px"
	SDUI5Image2.Mask = "none"
	SDUI5Image2.NoRepeat = False
	SDUI5Image2.Src = "./assets/giphy-downsized-large.gif"
	SDUI5Image2.Width = "400px"
	SDUI5Image2.Gif = True
	SDUI5Image2.GifPoster = "./assets/gandalf.jpg"
	BANano.Await(SDUI5Image2.AddComponent)
	pgIndex.UpdateTitle("SDUI5Image - Gif")
End Sub

