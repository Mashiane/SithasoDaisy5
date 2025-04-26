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
	Private tsOrganogram As SDUI5TreeSpider
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "treespiderview")
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
