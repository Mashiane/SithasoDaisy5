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
	
	table1.AddColumn("id", "#")
	table1.AddColumnAvatarTitleSubTitle("avatar", "Employee", "4rem", "name", "country", app.MASK_HEXAGON)
	table1.AddColumnTitleSubTitle("job", "Job", "color")
	table1.AddColumnRange("hours", "Hours", 8, app.COLOR_ACCENT)
	table1.AddColumnToggle("on", "Off/On", app.COLOR_PRIMARY, False)
		
	'add columns for editing
'	table1.AddDesignerColums
	table1.SetColumnChooser(True, "8", app.COLOR_PRIMARY)
	table1.MoveBackButton
	'
	BANano.Await(table1.SetItemsPaginate(Items))
	'Allow filtering records by an alphabet from column
	table1.SetAlphaChooser(True, "8", "name")
'	For rCnt = 0 To tb3.RowCount - 1
'		tb3.SetRowBackgroundColor(rCnt, "red")
'		tb3.SetRowTextColor(rCnt, "white")
'	Next
	
	
'	table1.SetRowBackgroundColor(0, "red")
'	table1.SetRowTextColor(0, "white")
'	table1.SetRowColumnBackgroundColor("color", 1, "red")
'	table1.SetRowColumnTextColor("color", 1, "white")
	'sum the totals of each of these columns
	Dim summary As Map = table1.SetFooterTotalSumCountColumns(Array("id"))
	'get the total number of processed rows
	sRowCount = summary.Get("rowcount")
	'format the value to be a thousand
	sRowCount = modSD5.Thousands(sRowCount)
	'set the first column to show the total
	table1.SetFooterColumn(table1.FirstColumnName, $"Total (${sRowCount})"$)
End Sub