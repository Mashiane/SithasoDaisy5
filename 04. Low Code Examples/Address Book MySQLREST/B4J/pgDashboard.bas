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
	Public name As String = "dashboard"
	Public title As String = ""
	Public icon As String = "./assets/page.svg"
	Public color As String = "#000000"
	Private dashboard As SDUI5Page		' ignore
	Private sdui5row1 As SDUI5Row
	Private sdui5column1 As SDUI5Column
	Private infocontacts As SDUI5InfoCard
	Private sdui5column2 As SDUI5Column
	Private infoprovinces As SDUI5InfoCard
	Private sdui5column7 As SDUI5Column
	Private infocategories As SDUI5InfoCard
	Private sdui5row2 As SDUI5Row
	Private sdui5column3 As SDUI5Column
	Private chartgender As SDUI5ToastChart
	Private sdui5column4 As SDUI5Column
	Private chartnames As SDUI5ToastChart
    
End Sub
'
Sub Show(MainApp As SDUI5App)			'ignore
	app = MainApp
	app.pagepause
	pgIndex.PageViewPaddingTo10px
	app.PageViewToFullScreenHeight(Array("appnavbar"))
	'BANano.LoadLayout(app.PageView, "blankview")
	'Add a page to the pageview
	'clear the pageview to build this page
	app.UI.ClearByID("pageview")
	'Initialize the page to add components to it
	dashboard.Initialize(Me, "dashboard", "dashboard")
	dashboard.ParentID = "pageview"
	dashboard.Active = False
	dashboard.Color = ""
	dashboard.ResizePageView = False
	dashboard.Container = False
	dashboard.MxAuto = False
	dashboard.FlexCol = True
	dashboard.FlexWrap = False
	dashboard.Width = "full"
	dashboard.Height = "full"
	dashboard.PaddingAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(dashboard.AddComponent)
	'
	name = dashboard.ID
	title = dashboard.Title
	color = dashboard.Color
	icon = dashboard.icon
	BANano.Await(BuildPage)
	app.pageresume
End Sub
'
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
'
Private Sub BuildPage
	sdui5row1.Initialize(Me, "sdui5row1", "sdui5row1")
	sdui5row1.ParentID = "dashboard"
	sdui5row1.Gap = ""
	BANano.Await(sdui5row1.AddComponent)
	'
	sdui5column1.Initialize(Me, "sdui5column1", "sdui5column1")
	sdui5column1.ParentID = "sdui5row1"
	sdui5column1.Size = "4"
	sdui5column1.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(sdui5column1.AddComponent)
	'
	infocontacts.Initialize(Me, "infocontacts", "infocontacts")
	infocontacts.ParentID = "sdui5column1"
	infocontacts.InforType = "6"
	infocontacts.Effect = "hover-expand-effect"
	infocontacts.Icon = "fa-solid fa-users"
	infocontacts.IconColor = "#eb9e7b"
	infocontacts.Title = "Contacts"
	infocontacts.Notes = ""
	infocontacts.Separator = ","
	infocontacts.Duration = "1"
	infocontacts.Value = 0
	BANano.Await(infocontacts.AddComponent)
	'
	
	sdui5column2.Initialize(Me, "sdui5column2", "sdui5column2")
	sdui5column2.ParentID = "sdui5row1"
	sdui5column2.Size = "4"
	sdui5column2.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(sdui5column2.AddComponent)
	'	
	infoprovinces.Initialize(Me, "infoprovinces", "infoprovinces")
	infoprovinces.ParentID = "sdui5column2"
	infoprovinces.InforType = "6"
	infoprovinces.Effect = "hover-expand-effect"
	infoprovinces.Icon = "fa-solid fa-gears"
	infoprovinces.IconColor = "#40f1d1"
	infoprovinces.Title = "Provinces"
	infoprovinces.Notes = ""
	infoprovinces.Separator = ","
	infoprovinces.Duration = "1"
	infoprovinces.Value = 0
	BANano.Await(infoprovinces.AddComponent)
	'
	sdui5column7.Initialize(Me, "sdui5column7", "sdui5column7")
	sdui5column7.ParentID = "sdui5row1"
	sdui5column7.Size = "4"
	sdui5column7.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(sdui5column7.AddComponent)
	'	
	'
	infocategories.Initialize(Me, "infocategories", "infocategories")
	infocategories.ParentID = "sdui5column7"
	infocategories.InforType = "6"
	infocategories.Effect = "hover-expand-effect"
	infocategories.Icon = "fa-regular fa-flag"
	infocategories.IconColor = "#0862d0"
	infocategories.Title = "Categories"
	infocategories.Notes = ""
	infocategories.Separator = ","
	infocategories.Duration = "1"
	infocategories.Value = 0
	BANano.Await(infocategories.AddComponent)
	'
	sdui5row2.Initialize(Me, "sdui5row2", "sdui5row2")
	sdui5row2.ParentID = "dashboard"
	sdui5row2.Gap = ""
	BANano.Await(sdui5row2.AddComponent)
	'
	sdui5column3.Initialize(Me, "sdui5column3", "sdui5column3")
	sdui5column3.ParentID = "sdui5row2"
	sdui5column3.Size = "4"
	sdui5column3.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(sdui5column3.AddComponent)
	'
	chartgender.Initialize(Me, "chartgender", "chartgender")
	chartgender.ParentID = "sdui5column3"
	chartgender.TitleAlign = "center"
	chartgender.TitleText = "Gender Split"
	chartgender.ChartType = "pie"
	chartgender.ExportMenuFileName = "gendersplit"
	chartgender.Rounded = "lg"
	chartgender.Shadow = "md"
	chartgender.Width = "450px"
	chartgender.SeriesSelectable = True
	chartgender.SeriesZoomable = True
'	chartgender.Responsive = True
	chartgender.LegendShowCheckbox = False
	chartgender.LegendVisible = False
	chartgender.SeriesDataLabelsVisible = True
	chartgender.SeriesDataLabelsPieSeriesNameVisible = True
	chartgender.SeriesDataLabelsPieSeriesNameAnchorOuter = True
	BANano.Await(chartgender.AddComponent)
	
	'
	sdui5column4.Initialize(Me, "sdui5column4", "sdui5column4")
	sdui5column4.ParentID = "sdui5row2"
	sdui5column4.Size = "8"
	sdui5column4.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(sdui5column4.AddComponent)
	
	
	chartnames.Initialize(Me, "chartnames", "chartnames")
	chartnames.ParentID = "sdui5column4"
	chartnames.TitleAlign = "center"
	chartnames.TitleText = "Letter Distribution"
	chartnames.ChartType = "column"
	chartnames.ExportMenuFileName = "namedistribution"
	chartnames.Width = "1000px"
'	chartnames.Responsive = True
	chartnames.LegendPosition = "bottom"
	chartnames.Rounded = "lg"
	chartnames.Shadow = "md"
	chartnames.LegendShowCheckbox = False
	chartnames.LegendVisible = False
	chartnames.SeriesDataLabelsVisible = True
	chartnames.SeriesDataLabelsPieSeriesNameVisible = True
	chartnames.XAxisTitle = "FullName Letters"
	chartnames.YAxisTitle = "Total"
	BANano.Await(chartnames.AddComponent)
	
	'update count of contacts
	Dim db As SDUIMySQLREST
	db.Initialize(Me, "contacts", Main.ServerURL, "contacts")
	db.ShowLog = True
	db.SetSchemaFromDataModel(app.DataModels)
	db.SetMySQLConnectionApiKey(Main.DBHost, Main.DBUser, Main.DBPassWord, Main.DBName, Main.DBPort, Main.ApiKey)
	Dim tContacts As Int = BANano.Await(db.COUNT_ALL)
	infocontacts.Value = tContacts
	infocontacts.refresh
	'update count of provinces
	db.TableName = "provinces"
	db.SetSchemaFromDataModel(app.DataModels)
	Dim tProvinces As Int = BANano.Await(db.COUNT_ALL)
	infoprovinces.Value = tProvinces
	infoprovinces.refresh
	'update count of categories
	db.TableName = "categories"
	db.SetSchemaFromDataModel(app.DataModels)
	Dim tCategories As Int = BANano.Await(db.COUNT_ALL)
	infocategories.Value = tCategories
	infocategories.refresh
	'update gender split
	db.TableName = "contacts"
	db.SetSchemaFromDataModel(app.DataModels)
	BANano.Await(db.SELECT_RAW("select gender, count(*) as records from contacts group by gender"))
	chartgender.Clear
	chartgender.AddCategory("Gender")
	Do While db.NextRow
		Dim sgender As String = db.GetString("gender")
		Dim srecords As String = db.GetString("records")
		Dim gPerc As String = app.UI.PercentOf(srecords, tContacts)
		chartgender.AddSeriesValue(sgender, gPerc)
	Loop
	chartgender.Refresh
	'update letter distribution	
	db.TableName = "contacts"
	db.SetSchemaFromDataModel(app.DataModels)
	BANano.Await(db.SELECT_RAW("select letter, count(*) as records from contacts group by letter order by letter"))
	'This is example code, update accordigly...
	chartnames.Clear
	Do While db.NextRow
		Dim sletter As String = db.GetString("letter")
		Dim srecords As String = db.GetString("records")
		chartnames.AddCategory(sletter)
		chartnames.AddSeriesCategoryValue("Letter", sletter, srecords)
	Loop
	chartnames.Refresh
	
End Sub

Private Sub infocontacts_Click (e As BANanoEvent)
	e.PreventDefault
	pgContacts.Show(app)
End Sub

Private Sub infoprovinces_Click (e As BANanoEvent)
	e.PreventDefault
	pgProvinces.Show(app)
End Sub

Private Sub infocategories_Click (e As BANanoEvent)
	e.PreventDefault
	pgCategories.Show(app)
End Sub
