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
	Private tsOrganogram As SDUI5TreeSpider		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	banano.Await(app.UsesTreeSpider)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.Container = False
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
	tsOrganogram.Initialize(Me, "tsOrganogram", "tsOrganogram")
	tsOrganogram.ParentID = "SDUI5Column1"
	tsOrganogram.AutoInitialize = False
	tsOrganogram.AutoSetChartHeadBg = True
	tsOrganogram.BackgroundPattern = "none"
	tsOrganogram.ChartHeadBg = "#c3ff52"
	tsOrganogram.HeadLinkerThumbCircleRadius = 10
	tsOrganogram.Height = "700px"
	tsOrganogram.ShowTools = False
	tsOrganogram.VerticalSpace = "80px"
	tsOrganogram.Width = "100%"
	BANano.Await(tsOrganogram.AddComponent)
	pgIndex.UpdateTitle("SDUI5TreeSpider")
	'
	tsOrganogram.Clear
	tsOrganogram.AddItem("", "1", "Abayomi Amusa", "Manager", "Lagos, Nigeria", "./assets/face1.jpg")
	tsOrganogram.AddItem("1", "2", "Trey Anderson", "Product Manager", "California, United States", "./assets/face2.jpg")
	tsOrganogram.AddItem("1", "3", "Troy Manuel", "Software Developer", "Alberta, Canada", "./assets/face3.jpg")
	tsOrganogram.AddItem("1", "4", "Rebecca Oslon", "Software Developer", "London, United Kingdom", "./assets/face4.jpg")
	tsOrganogram.AddItem("1", "5", "David Scheg", "Product Designer", "Jiaozian, China", "./assets/face5.jpg")
	tsOrganogram.AddItem("2", "6", "James Zucks", "DevOps", "Accra, Ghana", "./assets/face6.jpg")
	tsOrganogram.AddItem("2", "7", "Zu Po Xe", "Backend Developer", "Johanesburg, South Africa", "./assets/face7.jpg")
	tsOrganogram.AddItem("2", "8", "Scott Ziagler", "FrontEnd Developer Intern", "", "./assets/face8.jpg")
	tsOrganogram.AddItem("7", "9", "Xervia Allero", "FrontEnd Developer Intern", "", "./assets/face9.jpg")
	tsOrganogram.AddItem("3", "10", "Adebowale Ajanlekoko", "Fullstack Developer", "", "./assets/face10.jpg")
	tsOrganogram.Refresh
End Sub

