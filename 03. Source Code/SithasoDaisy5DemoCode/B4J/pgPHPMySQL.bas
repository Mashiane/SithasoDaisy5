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
	pgIndex.UpdateTitle("PHP MySQL")
	'
	Main.DBHost = "localhost"
	Main.DBUser = "root"
	Main.DBPassword = "root123!"
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

