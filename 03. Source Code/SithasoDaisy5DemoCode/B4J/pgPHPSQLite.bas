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
	Private tblSQLite As SDUI5Table		'ignore
	Private phpsqlite As SDUIMySQLREST
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
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
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	tblSQLite.Initialize(Me, "tblSQLite", "tblSQLite")
	tblSQLite.ParentID = "SDUI5Column1"
	'tblSQLite.DownloadToolbarTooltip = ""
	'tblSQLite.ExportToCsv = False
	BANano.Await(tblSQLite.AddComponent)
	pgIndex.UpdateTitle("PHP SQLite")
	'
	Main.DBHost = "../assets/northwind.sqlite"
'	Main.DBUser = ""
'	Main.DBPassword = ""
'	Main.DBDriver = "sqlite"
'	Main.DBPort = ""
'	Main.DBName = ""
	'
	phpsqlite.Initialize(Me, "phpsqlite", Main.ServerURL, "Customers")
'	phpsqlite.ApiFile = "sqlite"
	phpsqlite.UseApiKey = True
	phpsqlite.ApiKey = Main.APIKey
	phpsqlite.SetSQLiteConnection(Main.DBHost)
	phpsqlite.CLEAR_WHERE
	BANano.Await(phpsqlite.SELECT_ALL)
	'
	tblSQLite.Title = "Customers"
	tblSQLite.AddColumn("id", "ID")
	tblSQLite.AddColumn("company", "Company")
	tblSQLite.AddColumn("lastname", "Last Name")
	tblSQLite.AddColumn("firstname", "First Name")
	tblSQLite.AddColumn("emailaddress", "E-mail Address")
	tblSQLite.AddColumn("jobtitle", "Job Title")
	tblSQLite.AddColumn("businessphone", "Business Phone")
	tblSQLite.AddColumn("homephone", "Home Phone")
	tblSQLite.AddColumn("mobilephone", "Mobile Phone")
	tblSQLite.SetItemsPaginate(phpsqlite.result)
End Sub

