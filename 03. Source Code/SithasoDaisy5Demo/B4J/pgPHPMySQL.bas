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
	BANano.LoadLayout(app.PageView, "mysqlview")
	pgIndex.UpdateTitle("PHP MySQL")
	'
	Main.DBHost = "localhost"
	Main.DBUser = "root"
	Main.DBPassword = ""
	Main.DBDriver = "mysql"
	Main.DBPort = "3306"
	Main.DBName = "crud"
	'
	phpsqlite.Initialize(Me, "mysq", Main.ServerURL, "categories")
	phpsqlite.UseApiKey = True
	phpsqlite.ApiKey = Main.APIKey
	phpsqlite.SetMySQLConnection(Main.DBHost, Main.DBUser, Main.DBPassword, Main.DBName, Main.DBPort)
	phpsqlite.CLEAR_WHERE
	BANano.Await(phpsqlite.SELECT_ALL)
	'
	tblSQLite.Title = "Categories"
	tblSQLite.AddColumn("id", "ID")
	tblSQLite.AddColumn("category_name", "Name")
	tblSQLite.SetItemsPaginate(phpsqlite.result)
End Sub