B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@
Sub Process_Globals
	'these are globally available variables in this module
	Private BANano As BANano 							'ignore
	'a reference to our app object
	Private App As SDUI5App							'ignore
	'the variable for our table
	Private tblProvinces As SDUI5Table			'ignore
	'the variable for our modal dialog
	Private mdlProvinces As SDUI5Modal	'ignore
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
	Private txtId As SDUI5TextBox		'ignore
	Private txtName As SDUI5TextBox		'ignore
    
End Sub
'executed when the page is shown
Public Sub Show(MainApp As SDUI5App)
	'executed when the page is shown
	App = MainApp
	App.PagePause
	'adjust the padding of the pageview master to 10px
	pgIndex.PageViewPaddingTo10px
	'ensure the pageview takes full height less navigation bar
	App.PageViewToFullScreenHeight(Array("appnavbar"))
	'clear page and load the layout
	BANano.LoadLayout(App.PageView, "provincesview")
	'update navbar title on baselayout
	'pgIndex.UpdateTitle(title)
	'build the table to be displayed
	BANano.Await(BuildProvincesTable)
	'build up the modal dialog for input
	BANano.Await(BuildProvincesModal)
	'load the database data and show it on the table Provinces
	BANano.Await(MountProvinces(False))
	App.PageResume
End Sub
Private Sub BuildProvincesTable
	'lets create the table and columns
	tblProvinces.Title = "Provinces"
	'can choose a letter to show records
	tblProvinces.HasAlphaChooser = False
	'the column to use to get the letters
	tblProvinces.AlphaChooserColumn = ""
	'has functionality to show/hide columns
	tblProvinces.HasColumnChooser = False
	'set some tooltips of the buttons
	tblProvinces.AddNewTooltip = "Add a Province"
	tblProvinces.RefreshTooltip = "Refresh Provinces"
	'tblProvinces.DeleteAllTooltip = "Delete all Provinces"
	'tblProvinces.UploadToolbarTooltip = "Upload Provinces"
	'tblProvinces.DownloadToolbarTooltip = "Download Provinces"
	tblProvinces.BackTooltip = "Go back to Dashboard"
	'has edit action column
	tblProvinces.HasEdit = True
	tblProvinces.EditTooltip = "Edit Province"
	'has clone action column
	tblProvinces.HasClone = True
	tblProvinces.CloneTooltip = "Clone Province"
	'has delete action column
	tblProvinces.HasDelete = True
	tblProvinces.DeleteTooltip = "Delete Province"
	'lets build the table columns
	tblProvinces.AddColumn("name", "Name")
	'add edit/delete/clone buttons
	tblProvinces.AddDesignerColums
	'update column visibility
	tblProvinces.UpdateColumnVisibility
	'move back button to the end on the table toolbar
	tblProvinces.MoveBackButton
End Sub
'load Provinces records from the database
Private Sub MountProvinces(bAfterChange As Boolean)
	'load Provinces records from the database
	'turn to add mode
	App.PagePause
	'select Provinces from the database
	Dim db As SDUIMySQLREST
	db.Initialize(Me, "provinces", Main.ServerURL, "provinces")
	'link this api class to the data models
	db.SetSchemaFromDataModel(App.DataModels)
	db.SetMySQLConnectionApiKey(Main.DBHost, Main.DBUser, Main.DBPassWord, Main.DBName, Main.DBPort, Main.ApiKey)
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
	'clear any existing table header sort order
	BANano.SetLocalStorage2("provinces_order", "")
	'show spinner
	App.PagePause
	'load records from the database and show first page
	BANano.Await(MountProvinces(False))
	'reset the visible columns to initial visible columns
	BANano.Await(tblProvinces.RefreshColumnVisibility)
	'hide spinner
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
	'change the title of the modal dialog
	mdlProvinces.Title = "Add Province"
	'set the default properties for the input components
	BANano.Await(SetProvincesDefaults)
	'build fake data and use it
	BANano.Await(BuildProvincesFakeData)
	'set the next available key for the record
	txtId.Value = App.NextID
	'Open the modal
	mdlProvinces.Show
	'focus on the name
	txtName.Focus
End Sub
'executed when exporttoxls is clicked
Private Sub tblProvinces_ExportToXls (e As BANanoEvent)
	'executed when exporttoxls is clicked to generate excel report
	e.PreventDefault
	App.PagePause
	'select Provinces from the database
	Dim db As SDUIMySQLREST
	db.Initialize(Me, "provinces", Main.ServerURL, "provinces")
	'link this api class to the data models
	db.SetSchemaFromDataModel(App.DataModels)
	db.SetMySQLConnectionApiKey(Main.DBHost, Main.DBUser, Main.DBPassWord, Main.DBName, Main.DBPort, Main.ApiKey)
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
	'for each record, for each column, get the value on that key and write it
	report.AddColumn("A", "name")
	'build the report and download it
	BANano.Await(report.execute)
	App.PageResume
End Sub
'executed when a table row is being edited
private Sub EditMode(item As Map)
	'turn the mode to UPDATE
	Mode = "U"
	'change the title of the modal dialog
	mdlProvinces.Title = "Edit Province"
	'set the default properties
	BANano.Await(SetProvincesDefaults)
	Dim sId As String = item.GetDefault("id", "")
	Dim sName As String = item.GetDefault("name", "")
    
	txtId.Value = sId
	txtName.Value = sName
    
	'Open the modal
	mdlProvinces.Show
	'focus on the name
	txtName.Focus
End Sub
'executed when a table row is being edited
private Sub CloneMode(item As Map)
	'turn the mode to CREATE, we are cloning an existing record
	Mode = "C"
	'change the title of the modal dialog
	mdlProvinces.Title = "Clone Province"
	'set the default properties
	BANano.Await(SetProvincesDefaults)
	'set the next available id
	item.Put("id", App.NextID)
	Dim sId As String = item.GetDefault("id", "")
	Dim sName As String = item.GetDefault("name", "")
    
	txtId.Value = sId
	txtName.Value = sName
    
	'Open the modal
	mdlProvinces.Show
	'focus on the name
	txtName.Focus
End Sub
'executed when a table row edit button is clicked
Private Sub tblProvinces_EditRow (Row As Int, item As Map)
	'save the current page
	tblProvinces.SaveLastAccessedPage
	'executed when a table row edit button is clicked
	App.pagepause
	'get the id of the edited row
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIMySQLREST
	db.Initialize(Me, "provinces", Main.ServerURL, "provinces")
	'assign schema
	db.SetSchemaFromDataModel(App.DataModels)
	db.SetMySQLConnectionApiKey(Main.DBHost, Main.DBUser, Main.DBPassWord, Main.DBName, Main.DBPort, Main.ApiKey)
	'db.ShowLogs = True
	'read the record from the database
	Dim rec As Map = BANano.Await(db.READ(sID))
	'set edit mode and display the record
	BANano.Await(EditMode(rec))
	App.pageresume
End Sub
'executed when a table row delete button is clicked
Private Sub tblProvinces_DeleteRow (Row As Int, item As Map)
	tblProvinces.SaveLastAccessedPage
	'executed when a table row delete button is clicked
	'get the id and name of the item to delete
	toDeleteID = item.Get("id")
	'get the value to display for this record
	toDeleteName = item.Get("name")
	'build the confirmation message
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">${toDeleteName}</h2><br>Are you sure that you want to delete this Province?"$
	'wait for the user to confirm
	Dim bConfirm As Boolean = BANano.Await(App.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	'the user has click No, exit
	If bConfirm = False Then Return
	App.pagepause
	'execute a delete using the id of the Province
	Dim db As SDUIMySQLREST
	db.Initialize(Me, "provinces", Main.ServerURL, "provinces")
	db.SetSchemaFromDataModel(App.DataModels)
	db.SetMySQLConnectionApiKey(Main.DBHost, Main.DBUser, Main.DBPassWord, Main.DBName, Main.DBPort, Main.ApiKey)
	'db.ShowLogs = True
	'execute the delete from the database table
	BANano.Await(db.DELETE(toDeleteID))
	'reload the Provinces
	BANano.Await(MountProvinces(False))
	BANano.Await(tblProvinces.ShowLastAccessedPage)
	App.pageresume
End Sub
'executed when a table row clone button is clicked
Private Sub tblProvinces_CloneRow (Row As Int, item As Map)
	'executed when a table row clone button is clicked
	App.PagePause
	tblProvinces.SaveLastAccessedPage
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIMySQLREST
	db.Initialize(Me, "provinces", Main.ServerURL, "provinces")
	'assign schema
	db.SetSchemaFromDataModel(App.DataModels)
	db.SetMySQLConnectionApiKey(Main.DBHost, Main.DBUser, Main.DBPassWord, Main.DBName, Main.DBPort, Main.ApiKey)
	'db.ShowLogs = True
	'read the record
	Dim rec As Map = BANano.Await(db.READ(sID))
	'show the record to clone
	BANano.Await(CloneMode(rec))
	App.PageResume
End Sub
'***** executed to set the component default values
Private Sub SetProvincesDefaults
	'***** executed to set the component default values
	txtId.Value = ""
	txtName.Value = ""
    
End Sub
'***** executed to get the validity of the required components
Private Sub GetProvincesValid As Boolean
	'***** executed to get the validity of the required components
    
	If txtId.IsBlank Then Return False
	If txtName.IsBlank Then Return False
    
	Return True
End Sub

'mdlProvinces dialog 'Save' click
Private Sub mdlProvinces_Yes_Click (e As BANanoEvent)
	'Executed when mdlProvinces dialog 'Save' is clicked
	e.PreventDefault
	'Check validity of required fields
	Dim bValid As Boolean = BANano.Await(GetProvincesValid)
	'the record is not valid then dont continue
	If bValid = False Then Return
	App.pagepause
	Dim sId As String = txtId.Value
	Dim sName As String = txtName.Value
    
	'open the database and save the record
	Dim db As SDUIMySQLREST
	db.Initialize(Me, "provinces", Main.ServerURL, "provinces")
	db.SetSchemaFromDataModel(App.DataModels)
	db.SetMySQLConnectionApiKey(Main.DBHost, Main.DBUser, Main.DBPassWord, Main.DBName, Main.DBPort, Main.ApiKey)
	'db.ShowLogs = True
	'pass the map record
	'Prepare database to save
	db.PrepareRecord
	db.SetField("id", sId)
	db.SetField("name", sName)
    
	Select Case Mode
		Case "C"
			'we are in record creating mode
			'ensure that there are no duplicates for 'Name'
			Dim existingID As String = BANano.Await(db.READ_ID_BY("name", sName))
			If existingID <> "" Then
				'the record exists
				App.PageResume
				BANano.Await(App.ShowSwalErrorWait("Province Exists", "A record with a matching <b>Name</b> already exists, cannot proceed.", "Ok"))
				Return
			End If
			'create a new record
			Dim nid As String = BANano.Await(db.CREATE)
		Case "U"
			'update an existing record
			Dim nid As String = BANano.Await(db.UPDATE)
	End Select
	App.pageresume
	If nid <> "" Then
		'show a success confirmation
		BANano.Await(App.ShowSwalSuccessWait("Province", "The province has been saved.", "Ok"))
	Else
		'the record could not be processed, do not continue
		BANano.Await(App.ShowSwalErrorWait("Province", "The province could not be saved, please try again.", "Ok"))
		Return
	End If
	'Close the modal
	mdlProvinces.Close
	App.PagePause
	'reload the records from the database
	BANano.Await(MountProvinces(False))
	BANano.Await(tblProvinces.ShowLastAccessedPage)
	App.PageResume
End Sub
'mdlProvinces dialog 'No' click
Private Sub mdlProvinces_No_Click (e As BANanoEvent)
	'Executed when mdlProvinces dialog 'No' is clicked
	e.PreventDefault
	'Close the modal
	mdlProvinces.Close
	App.PagePause
	'reload the data from the database
	BANano.Await(MountProvinces(False))
	BANano.Await(tblProvinces.ShowLastAccessedPage)
	App.PageResume
End Sub
Private Sub BuildProvincesModal
	'executed to build the Modal Dialog structure for data entry
	'set the height of the modal
	mdlProvinces.Height = "fit"
	'set the width of the modal
	mdlProvinces.Width = "700px"
	'set the modal to be a card type, this makes the modal to be inline
	mdlProvinces.IsCard = False
	mdlProvinces.Form.Clear
	mdlProvinces.Form.AddRows1
	mdlProvinces.Form.AddColumns12
	mdlProvinces.Form.AddRows1
	mdlProvinces.Form.AddColumns12
	BANano.Await(mdlProvinces.Form.BuildGrid)
    
	'Add txtId
	txtId.Initialize(Me, "txtId", "txtId")
	txtId.InputType = "legend"
	txtId.TypeOf = "text"
	txtId.Label = "#"
	txtId.value = ""
	txtId.Required = True
	txtId.PrependIcon = ""
	txtId.AppendIcon = ""
	txtId.Enabled = True
	txtId.Visible = False
	txtId.ReadOnly = False
	txtId.BackgroundColor = ""
	txtId.Border = False
	txtId.BorderColor = ""
	txtId.MarginAXYTBLR = ""
	txtId.PaddingAXYTBLR = ""
	txtId.ParentID = mdlProvinces.Form.CellID("1", "1")
	BANano.Await(txtId.AddComponent)
	'Add txtName
	txtName.Initialize(Me, "txtName", "txtName")
	txtName.InputType = "legend"
	txtName.TypeOf = "text"
	txtName.Label = "Name"
	txtName.value = ""
	txtName.Required = True
	txtName.PrependIcon = ""
	txtName.AppendIcon = ""
	txtName.Enabled = True
	txtName.Visible = True
	txtName.ReadOnly = False
	txtName.BackgroundColor = ""
	txtName.Border = False
	txtName.BorderColor = ""
	txtName.MarginAXYTBLR = ""
	txtName.PaddingAXYTBLR = ""
	txtName.ParentID = mdlProvinces.Form.CellID("2", "1")
	BANano.Await(txtName.AddComponent)
    
End Sub
'***** executed to set fake data
Private Sub BuildProvincesFakeData
	'***** executed to build and set fake data
	Dim fd As SDUI5FakeIT
	Dim fakeStructure As Map = CreateMap()
	Dim fakeList As List
	'in case we have some abbreviated content
	Dim lstAbbreviations As Map
	lstAbbreviations.Initialize
	'initialize the fake data builder
	fd.Initialize
	'add id so that it has fake data
	fakeStructure.Put("id", "id")
	'add name so that it has fake data
	fakeStructure.Put("name", "province")
	'will store the record that we want
	Dim fakeRec As Map = CreateMap()
	'will store a list of fake data
	fakeList.Initialize
	If fakeStructure.Size > 0 Then
		'we have a fake structure defined, build the fake data and store them on the list
		fakeList = BANano.Await(fd.GetRecordsWithStructure(fakeStructure, 1))
		'read the first record on the list
		fakeRec = fakeList.Get(0)
		'we have content with abbreviations
		For Each k As String In lstAbbreviations.Keys
			'which field has an abbeviation
			Dim v As String = lstAbbreviations.Get(k)
			'the field exists in the fake record
			If fakeRec.ContainsKey(v) Then
				'get the related field with full name for the abbreviation
				Dim s As String = fakeRec.Get(v)
				'define the abbreviation
				Dim abbr As String = App.UI.GetAbbreviations(s)
				'update the record abbreviation with the generated abbreviation
				fakeRec.Put(k, abbr)
			End If
		Next
	End If
	txtId.value = fakeRec.Get("id")
	txtName.value = fakeRec.Get("name")
    
End Sub