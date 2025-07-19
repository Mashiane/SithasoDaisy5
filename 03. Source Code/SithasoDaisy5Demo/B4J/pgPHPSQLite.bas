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
	Private tblSQLite As SDUI5Table
	Private phpsqlite As SDUIMySQLREST
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "sqliteview")
	pgIndex.UpdateTitle("PHP SQLite")
	'
	Main.DBHost = "../assets/northwind.sqlite"
'	Main.DBUser = ""
'	Main.DBPassword = ""
'	Main.DBDriver = "sqlite"
'	Main.DBPort = "3306"
'	Main.DBName = ""
	'
	phpsqlite.Initialize(Me, "phpsqlite", Main.ServerURL, "Customers")
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