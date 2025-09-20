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
	Private table1 As SDUI5Table
	Private Items As List
	Private sRowCount As String
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "tableview")
	pgIndex.UpdateTitle("SDUI5Table")
	'
	Items.Initialize
	Items.Add(CreateMap("hours":4, "on":True, "id":1, "rate":2, "email":"user1@gmail.com", "link":"https://tailwindcomponents.com/", "progress":10, "active":False, "name":"Cy Ganderton", "job":"Quality Control Specialist", "color":"Error", "avatar":"./assets/face1.jpg", "country":"USA", "clicklink":56, "sm": "fa-brands fa-twitter","dob":"1999-04-20", "tob":"20:04", "dod":"2004-04-20", "doo":"2004-04-20 10:04"))
	Items.Add(CreateMap("hours": 5, "on":False, "id":2, "rate":4, "progress":20, "active":True, "link":"https://daisyui.com/", "email":"user2@gmail.com", "name":"Hart Hagerty", "job":"Desktop Support Technician", "color":"Secondary", "avatar":"./assets/face17.jpg", "country":"Nigeria","clicklink":90, "sm": "fa-brands fa-facebook","dob":"1999-05-21", "tob":"13:00","dod":"2002-04-20", "doo":"2003-01-20 13:00"))
	Items.Add(CreateMap("hours": 8, "on":True, "id":3, "rate":3, "progress":90, "active":True, "link":"https://github.com/Mashiane", "email":"user3@gmail.com", "name":"Anele Mbanga", "job":"Software Engineer", "color":"Primary", "avatar":"./assets/mashy.jpg","country":"South Africa","clicklink":100, "sm": "fa-brands fa-whatsapp","dob":"1999-03-25", "tob":"20:15","dod":"2001-04-20", "doo":"2002-02-20 20:15"))
	'
	Dim countries As List
	countries.Initialize
	countries.Add("South Africa")
	countries.Add("USA")
	countries.Add("Nigeria")
	Dim options As Map = app.UI.ListToSelectOptions(countries)
	'
	table1.AddColumn("id", "#")
	table1.AddColumnTextBox("email", "Email", False)
	table1.AddColumnSelect("country", "Country", False, True, options)
	table1.AddColumnTextARea("job", "Job Title", False, 5)
	table1.AddColumnDatePicker("dob", "Date of Birth", False, "Y-m-d", "F j, Y", False, False, False, "en")
	table1.AddColumnTimePicker("tob", "Time of Birth", False, "H:i", True)
	table1.AddColumnDatePicker("dod", "Date of Death", False, "Y-m-d", "d/m/Y", False, False, False, "it")
	table1.AddColumnDateTimePicker("doo", "Date of Opening", False, "Y-m-d H:i", "d/m/Y H:i", False, False, False, "es")
	table1.AddColumnRange("hours", "Hours", 8, app.COLOR_ACCENT)
	table1.AddColumnCheckBox("active", "Active", app.COLOR_PRIMARY, False)
	table1.AddColumnRating("rate", "Satisfaction", 3, "item.color", app.MASK_HEART)
	table1.AddColumnToggle("on", "Off/On", app.COLOR_PRIMARY, False)
		
	'add columns for editing
'	table1.AddDesignerColums
'	table1.SetColumnChooser(True, "8", app.COLOR_PRIMARY)
	table1.MoveBackButton
	'
	Log(Items)
	BANano.Await(table1.SetItemsPaginate(Items))
	'Allow filtering records by an alphabet from column
	'table1.SetAlphaChooser(True, "8", "name")
	'change the select items for all rows
'	BANano.Await(table1.SetSelectListItems("country", Array("Afghanistan", "Albania", "Australia", "USA", "Brazil", "Chile", "Guinea", "South Africa", "Nigeria")))
'	'change the select items for row 2
'	BANano.Await(table1.SetSelectListItemsOfRow("country", 2, Array("Afghanistan1", "Albania1", "Australia1", "USA", "Brazil", "Chile", "Guinea", "South Africa", "Nigeria1")))
'	'select Australia1
'	table1.SetRowColumn("country", 2, "Australia1")
	
	
	
	
''	table1.SetRowBackgroundColor(0, "red")
''	table1.SetRowTextColor(0, "white")
''	table1.SetRowColumnBackgroundColor("color", 1, "red")
''	table1.SetRowColumnTextColor("color", 1, "white")
'	'sum the totals of each of these columns
'	Dim summary As Map = table1.SetFooterTotalSumCountColumns(Array("id"))
'	'get the total number of processed rows
'	sRowCount = summary.Get("rowcount")
'	'format the value to be a thousand
'	sRowCount = app.UI.Thousands(sRowCount)
'	'set the first column to show the total
'	table1.SetFooterColumn(table1.FirstColumnName, $"Total (${sRowCount})"$)
End Sub

Private Sub table1_AlphaClick (Item As String)
'	app.PagePause
'	Dim alphaSearch As List = table1.SearchByAlphabet(Item, "name")
'	'Show all items filtered by alpha chooser
'	BANano.Await(table1.SetItems(alphaSearch))
'	BANano.Await(table1.ShowTotals(alphaSearch))
''	'Calculate totals
''	Dim summary As Map = table1.SetFooterTotalSumCountColumns(alphaSearch, Array("id"))
''	
''	'get the total number of processed rows
''	sRowCount = summary.Get("rowcount")
''	'format the value to be a thousand
''	sRowCount = app.UI.Thousands(sRowCount)
''	'set the first column to show the total
''	table1.SetFooterColumn(table1.FirstColumnName, $"Total (${sRowCount})"$)
'	app.PageResume
End Sub
