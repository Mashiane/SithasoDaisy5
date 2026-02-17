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
	Private table1 As SDUI5Table		'ignore
	Private Items As List
	Private sRowCount As String			'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.Container = False
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	SDUI5Container1.PaddingAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	table1.Initialize(Me, "table1", "table1")
	table1.ParentID = "SDUI5Column1"
	table1.AddNewTooltip = "Add a new record"
	table1.BackTooltip = "Go back to Dashboard"
	table1.BadgesSize = "sm"
	table1.ButtonSize = "sm"
	table1.CloneTooltip = "Clone record"
	table1.DeleteAllTooltip = "Delete All"
	table1.DeleteSingleTooltip = "Delete a record"
	table1.DeleteTooltip = "Delete record"
	'table1.DownloadToolbarTooltip = ""
	table1.DownloadTooltip = "Download record"
	table1.EditTooltip = "Edit record"
	table1.ExcelTitle = "Personnel"
	'table1.ExportToCsv = True
	table1.ExportToCsvTooltip = "Export to CSV"
	table1.ExportToPdf = True
	table1.ExportToPdfTooltip = "Export to PDF"
	table1.ExportToXls = True
	table1.ExportToXlsTooltip = "Export to XLS"
	table1.GridTooltip = "Show grid"
	table1.HasClone = True
	table1.HasDeleteAll = True
	table1.HasDeleteSingle = True
	table1.HasDownload = True
	table1.HasExpand = True
	table1.HasExportMenu = True
	table1.HasGrid = True
	table1.HasMenu = True
	table1.HasSaveSingle = True
	table1.HasSearch = True
	table1.HasToolbarUpload = True
	table1.HasUpload = True
	table1.IsNormal = True
	table1.MenuTooltip = "Menu tooltip"
	table1.NormalCase = True
	table1.RefreshTooltip = "Refresh records"
	table1.SaveSingleTooltip = "Save a record"
	table1.SearchSize = "sm"
	table1.SelectAll = True
	table1.Shadow = "lg"
	table1.Title = "Personnel"
	table1.UploadToolbarTooltip = "Upload file"
	table1.UploadTooltip = "Upload records"
	BANano.Await(table1.AddComponent)
	pgIndex.UpdateTitle("SDUI5Table Expand")
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
	table1.AddDesignerColums
	table1.MoveBackButton
	'
	BANano.Await(table1.SetItemsPaginate(Items))
End Sub

Private Sub table1_AlphaClick (Item As String)
'	app.PagePause
'	Dim alphaSearch As List = table1.SearchByAlphabet(Item, "name")
'	'Show all items filtered by alpha chooser
'	BANano.Await(table1.SetItems(alphaSearch))
'	BANano.Await(table1.UpdateColumnChooser)
'	BANano.Await(table1.UpdateAlphaChooser(alphaSearch))
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

