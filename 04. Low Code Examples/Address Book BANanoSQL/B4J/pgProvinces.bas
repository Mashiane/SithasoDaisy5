B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@
Sub Process_Globals
	Private BANano As BANano 							'ignore
	Private App As SDUI5App							'ignore
	Private tblProvinces As SDUI5Table			'ignore
	Private Columns As Map
	Private prefProvinces As SDUI5Preferences	'ignore
	Public Action As String = "L"						'Listing / AddEdit
	Private Mode As String = ""						'CRUD control
	Private toDeleteID As String						'id of item to delete
	Private toDeleteName As String					'name of item to delete
	'name of the page
	Public name As String = "provinces"
	'title of the page
	Public title As String = "Provinces"
	'drawer icon for the page
	Public icon As String = "./assets/page.svg"
	'drawer icon color for the page
	Public color As String = "#000000"
End Sub
'executed when the page is shown
Public Sub Show(MainApp As SDUI5App)
	'executed when the page is shown
	App = MainApp
	App.PagePause
	pgIndex.PageViewPaddingTo10px
	App.PageViewToFullScreenHeight(Array("appnavbar"))
	'clear page and load the layout
	BANano.LoadLayout(App.PageView, "provincesview")
	'update navbar title on baselayout
	'pgIndex.UpdateTitle(title)
	'load to the right drawer SIDE CONTENT, will clear everything there
	BANano.LoadLayout("#rightdrawer_sidecontent", "provincessideview")
	'build the table to be displayed
	BANano.Await(BuildProvincesTable)
	'setup the preference dialog
	BANano.Await(BuildProvincesPreferences)
	'load the database data and show it on the table Provinces
	BANano.Await(MountProvinces(False))
	App.PageResume
End Sub
Private Sub BuildProvincesTable
	Columns.Initialize
	'lets create the table and columns
	tblProvinces.Title = "Provinces"
	tblProvinces.HasAlphaChooser = False
	tblProvinces.AlphaChooserColumn = ""
	tblProvinces.HasColumnChooser = False
	tblProvinces.AddNewTooltip = "Add a Province"
	tblProvinces.RefreshTooltip = "Refresh Provinces"
	'tblProvinces.DeleteAllTooltip = "Delete all Provinces"
	'tblProvinces.UploadToolbarTooltip = "Upload Provinces"
	'tblProvinces.DownloadToolbarTooltip = "Download Provinces"
	tblProvinces.BackTooltip = "Go back to Dashboard"
	tblProvinces.HasEdit = True
	tblProvinces.EditTooltip = "Edit Province"
	tblProvinces.HasClone = True
	tblProvinces.CloneTooltip = "Clone Province"
	tblProvinces.HasDelete = True
	tblProvinces.DeleteTooltip = "Delete Province"
	'lets build the table columns
	tblProvinces.AddColumn("name", "Name")
	Columns.put("name", True)
	'add edit/delete/clone buttons
	tblProvinces.AddDesignerColums
	'move back button to the end
	tblProvinces.MoveBackButton
End Sub
Private Sub BuildProvincesPreferences
	'build the preferences dialog
	prefProvinces.AddPropertyTextBox("id", "#", "", True)
	prefProvinces.SetPropertyVisible("id", False)
	prefProvinces.AddPropertyTextBox("name", "Name", "", True)
End Sub
'load Provinces records from the database
Private Sub MountProvinces(bAfterChange As Boolean)
	'load Provinces records from the database
	pgIndex.CloseRightDrawer
	'turn to add mode
	App.PagePause
	'select Provinces from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "provinces")
	'link this api class to the data models
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'clear any where clauses
	db.CLEAR_WHERE
	'order by name
	db.ADD_ORDER_BY("name")
	'execute a select all
	BANano.Await(db.SELECT_ALL)
	'load the records to the table
	If bAfterChange = False Then
		'show content as usual, this is not a change row event
		BANano.Await(tblProvinces.SetItemsPaginate(db.result))
	Else
		'we need to show the last page we were in due to a row change
		tblProvinces.Originals = db.result
	End If
	App.PageResume
End Sub

'executed when exporttoxls is clicked
Private Sub tblProvinces_ExportToXls (e As BANanoEvent)
	'executed when exporttoxls is clicked to generate excel report
	e.PreventDefault
	App.PagePause
	'select Provinces from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "provinces")
	'link this api class to the data models
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'clear any where clauses
	db.CLEAR_WHERE
	'order by name
	db.ADD_ORDER_BY("name")
	'execute a select all
	BANano.Await(db.SELECT_ALL)
	Dim Result As List = db.result
	'start to generate the excel report
	Dim report As SDUI5ExcelReport
	report.Initialize
	'we will use sheet1
	report.SheetName = "Sheet1"
	'the name of the excel template file we will use to generate our report
	report.TemplateFile = "./assets/provinces_report.xlsx"
	'the name of the report
	report.ReportFileName = "Provinces Report"
	'start writing rows on this row
	report.StartRow = 3
	'set the JSON list of records we will use for the report
	report.SetRows(Result)
	report.AddColumn("a", "name")
	'for each record, for each column, get the value on that key and write it
	'build the report and download it
	BANano.Await(report.execute)
	App.PageResume
End Sub

'executed when the add button is clicked on the table
Private Sub tblProvinces_Add (e As BANanoEvent)
	'executed when the add button is clicked on the table
	e.preventdefault
	'show a loading spinner
	App.PagePause
	'switch to addmode
	BANano.Await(AddMode)
	'hide loading spinner
	App.PageResume
End Sub
'executed when the refresh button is clicked on the table
Private Sub tblProvinces_Refresh (e As BANanoEvent)
	'executed when the refresh button is clicked on the table
	e.PreventDefault
	App.PagePause
	'load records from the database and show first page
	BANano.Await(MountProvinces(False))
	BANano.Await(RefreshProvincesColumnVisibility)
	App.pageresume
End Sub
'executed when the back button is clicked on the table
Private Sub tblProvinces_Back (e As BANanoEvent)
	'executed when the back button is clicked on the table
	e.preventdefault
	'show the dashboard or another page
	pgDashboard.Show(App)
End Sub
'executed to prepare the preference dialog for adding a new record
Private Sub AddMode
	'turn the mode to CREATE
	Mode = "C"
	'get the first column
	Dim fCol As String = Columns.GetKeyAt(0)
	'hide all columns and show first column only
	For Each k As String In Columns.keys
		If fCol = k Then
			BANano.Await(tblProvinces.SetColumnVisible(k, True))
			BANano.Await(tblProvinces.SetColumnVisibleOnColumnChooser(k, True))
		Else
			BANano.Await(tblProvinces.SetColumnVisible(k, False))
			BANano.Await(tblProvinces.SetColumnVisibleOnColumnChooser(k, False))
		End If
	Next
	pgIndex.OpenRightDrawer
	'change the title of the pref dialog
	prefProvinces.Title = "Add Province"
	'set the default properties
	BANano.Await(prefProvinces.SetPropertyBagDefaults)
	prefProvinces.SetPropertyValue("id", App.NextID)
	'focus on the name
	prefProvinces.SetPropertyEnsureVisible("name")
	prefProvinces.SetPropertyFocus("name")
End Sub
'executed to refresh the initial column visibility
Private Sub RefreshProvincesColumnVisibility
	'executed to refresh the initial column visibility
	For Each k As String In Columns.keys
		Dim v As Boolean = Columns.get(k)
		BANano.Await(tblProvinces.SetColumnVisible(k, v))
		BANano.Await(tblProvinces.SetColumnVisibleOnColumnChooser(k, v))
	Next
End Sub
'executed when a table row is being edited
private Sub EditMode(item As Map)
	'turn the mode to UPDATE
	Mode = "U"
	pgIndex.OpenRightDrawer
	'change the title of the pref dialog
	prefProvinces.Title = "Edit Province"
	'set the properties
	BANano.Await(prefProvinces.SetPropertyBagDefaults)
	prefProvinces.PropertyBag = item
	'focus on the name
	prefProvinces.SetPropertyEnsureVisible("name")
	prefProvinces.SetPropertyFocus("name")
End Sub
'executed when a table row is being edited
private Sub CloneMode(item As Map)
	'turn the mode to UPDATE, we are cloning an existing record
	Mode = "C"
	pgIndex.OpenRightDrawer
	'change the title of the pref dialog
	prefProvinces.Title = "Clone Province"
	'set the properties
	BANano.Await(prefProvinces.SetPropertyBagDefaults)
	item.Put("id", App.NextID)
	prefProvinces.PropertyBag = item
	'focus on the name
	prefProvinces.SetPropertyEnsureVisible("name")
	prefProvinces.SetPropertyFocus("name")
End Sub
'executed when a table row edit button is clicked
Private Sub tblProvinces_EditRow (Row As Int, item As Map)
	'executed when a table row edit button is clicked
	App.pagepause
	tblProvinces.SaveLastAccessedPage
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "provinces")
	'assign schema
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'read the record
	Dim rec As Map = BANano.Await(db.READ(sID))
	BANano.Await(EditMode(rec))
	App.pageresume
End Sub
'executed when a table row delete button is clicked
Private Sub tblProvinces_DeleteRow (Row As Int, item As Map)
	tblProvinces.SaveLastAccessedPage
	'executed when a table row delete button is clicked
	'get the id and name of the item to delete
	toDeleteID = item.Get("id")
	toDeleteName = item.Get("name")
	'build the confirmation message
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">${toDeleteName}</h2><br>Are you sure that you want to delete this Province?"$
	'wait for the user to confirm
	Dim bConfirm As Boolean = BANano.Await(App.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	'the user has click No, exit
	If bConfirm = False Then Return
	App.pagepause
	'execute a delete using the id of the Province
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "provinces")
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	BANano.Await(db.DELETE(toDeleteID))
	'reload the Provinces
	BANano.Await(MountProvinces(False))
	BANano.Await(tblProvinces.ShowLastAccessedPage)
	App.pageresume
End Sub
'executed when a table row clone button is clicked
Private Sub tblProvinces_CloneRow (Row As Int, item As Map)
	tblProvinces.SaveLastAccessedPage
	'executed when a table row clone button is clicked
	App.PagePause
	tblProvinces.SaveLastAccessedPage
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "provinces")
	'assign schema
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'read the record
	Dim rec As Map = BANano.Await(db.READ(sID))
	BANano.Await(CloneMode(rec))
	App.PageResume
End Sub
'executed when a Apply button is clicked on the preference dialog
Private Sub prefProvinces_Yes_Click (e As BANanoEvent)
	'executed when a Apply button is clicked on the Preference Dialog
	e.PreventDefault
	'validate the property bag details
	Dim bValid As Boolean = BANano.Await(prefProvinces.IsPropertyBagValid)
	If bValid = False Then
		BANano.Await(App.ShowSwalErrorWait("Province", "The province details are not complete!", "Ok"))
		'focus on the name
		prefProvinces.SetPropertyEnsureVisible("name")
		prefProvinces.SetPropertyFocus("name")
		Return
	End If
	'get the property bag fields as a map
	Dim pb As Map = BANano.Await(prefProvinces.PropertyBag)
	App.pagepause
	'open the database and save the record
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "provinces")
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'pass the map record
	db.SetRecord(pb)
	Select Case Mode
		Case "C"
			'create a new record
			Dim nid As String = BANano.Await(db.CREATE)
		Case "U"
			'update an existing record
			Dim nid As String = BANano.Await(db.UPDATE)
	End Select
	If nid <> "" Then
		BANano.Await(App.ShowSwalSuccessWait("Province", "The province has been saved.", "Ok"))
	Else
		BANano.Await(App.ShowSwalErrorWait("Province", "The province could not be saved, please try again!", "Ok"))
		Return
	End If
	BANano.Await(MountProvinces(False))
	BANano.Await(tblProvinces.ShowLastAccessedPage)
	'refresh default column visibility
	App.pageresume
End Sub
'executed when a Cancel button is clicked on the preference dialog
Private Sub prefProvinces_No_Click (e As BANanoEvent)
	'executed when a Cancel button is clicked on the Preference Dialog
	e.preventdefault
	pgIndex.CloseRightDrawer
	App.pagepause
	BANano.Await(MountProvinces(False))
	BANano.Await(tblProvinces.ShowLastAccessedPage)
	'refresh default column visibility
	App.pageresume
End Sub