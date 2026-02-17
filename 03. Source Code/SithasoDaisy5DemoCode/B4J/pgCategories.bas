B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@
Sub Process_Globals
	Private BANano As BANano 							'ignore
	Private App As SDUI5App							'ignore
	Private tblCategories As SDUI5Table			'ignore
	Private Columns As Map
	Private mdlCategories As SDUI5Modal	'ignore
	Public Action As String = "L"						'Listing / AddEdit
	Private Mode As String = ""						'CRUD control
	Private toDeleteID As String						'id of item to delete
	Private toDeleteName As String					'name of item to delete
	'name of the page
	Public name As String = "categories"
	'title of the page
	Public title As String = "Categories"
	'drawer icon for the page
	Public icon As String = "./assets/page.svg"
	'drawer icon color for the page
	Public color As String = "#000000"
	Private txtId As SDUI5TextBox		'ignore
	Private txtName As SDUI5TextBox		'ignore
    
End Sub
'executed when the page is shown
Public Sub Show
	'executed when the page is shown
	App = pgIndex.app
	App.PagePause
	pgIndex.PageViewPaddingTo10px
	App.PageViewToFullScreenHeight(Array("appnavbar"))
	'clear page and load the layout
	BANano.Await(App.ClearPageView)
	tblCategories.Initialize(Me, "tblCategories", "tblCategories")
	tblCategories.ParentID = App.PageView
	tblCategories.AlphaChooserColumn = "tablename"
	tblCategories.ButtonSize = "sm"
	'tblCategories.DownloadToolbarTooltip = ""
	tblCategories.ExcelTitle = "Table Design"
	'tblCategories.ExportToCsv = False
	tblCategories.HasClone = True
	tblCategories.HasSearch = True
	tblCategories.SearchSize = "sm"
	tblCategories.Shadow = "md"
	tblCategories.Title = "Table Design"
	'tblCategories.TrapRowClick = False
	tblCategories.UploadToolbarTooltip = "Import Table"
	BANano.Await(tblCategories.AddComponent)
	'
	mdlCategories.Initialize(Me, "mdlCategories", "mdlCategories")
	mdlCategories.ParentID = App.PageView
	'mdlCategories.ActionType = "yes-no"
	mdlCategories.Backdrop = False
	mdlCategories.Border = False
	mdlCategories.Closable = False
	mdlCategories.Html = ""
	mdlCategories.Shadow = "none"
	'mdlCategories.Size = "lg"
	mdlCategories.Width = "full"
	BANano.Await(mdlCategories.AddComponent)
	'update navbar title on baselayout
	'pgIndex.UpdateTitle(title)
	'build the table to be displayed
	BANano.Await(BuildCategoriesTable)
	'build up the modal dialog for input
	BANano.Await(BuildCategoriesModal)
	'load the database data and show it on the table Categories
	BANano.Await(MountCategories(False))
	App.PageResume
End Sub
Private Sub BuildCategoriesTable
	Columns.Initialize
	'lets create the table and columns
	tblCategories.Title = "Categories"
	tblCategories.HasAlphaChooser = False
	tblCategories.AlphaChooserColumn = ""
	tblCategories.HasColumnChooser = False
	tblCategories.AddNewTooltip = "Add a Category"
	tblCategories.RefreshTooltip = "Refresh Categories"
	'tblCategories.DeleteAllTooltip = "Delete all Categories"
	'tblCategories.UploadToolbarTooltip = "Upload Categories"
	'tblCategories.DownloadToolbarTooltip = "Download Categories"
	tblCategories.BackTooltip = "Go back to Dashboard"
	tblCategories.EditTooltip = "Edit Category"
	tblCategories.HasClone = True
	tblCategories.CloneTooltip = "Clone Category"
	tblCategories.DeleteTooltip = "Delete Category"
	'lets build the table columns
	tblCategories.AddColumn("name", "Name")
	Columns.put("name", True)
	'add edit/delete/clone buttons
	tblCategories.AddDesignerColums
	'move back button to the end
	tblCategories.MoveBackButton
End Sub
'load Categories records from the database
Private Sub MountCategories(bAfterChange As Boolean)
	'load Categories records from the database
	'turn to add mode
	App.PagePause
	'select Categories from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "categories")
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
		BANano.Await(tblCategories.SetItemsPaginate(db.result))
	Else
		'we need to show the last page we were in due to a row change
		'tblCategories.Originals = db.result
	End If
	App.PageResume
End Sub
'executed when the add button is clicked on the table
Private Sub tblCategories_Add (e As BANanoEvent)
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
Private Sub tblCategories_Refresh (e As BANanoEvent)
	'executed when the refresh button is clicked on the table
	e.PreventDefault
	App.PagePause
	'load records from the database and show first page
	BANano.Await(MountCategories(False))
	BANano.Await(RefreshCategoriesColumnVisibility)
	App.pageresume
End Sub
'executed when the back button is clicked on the table
Private Sub tblCategories_Back (e As BANanoEvent)
	'executed when the back button is clicked on the table
	e.preventdefault
	'show the dashboard or another page
	'pgDashboard.Show(app)
	'Main.MyApp.ShowDashBoard
End Sub
'executed to prepare the preference dialog for adding a new record
Private Sub AddMode
	'turn the mode to CREATE
	Mode = "C"
	'change the title of the modal dialog
	mdlCategories.Title = "Add Category"
	'set the default properties
	BANano.Await(SetCategoriesDefaults)
	txtId.Value = App.NextID
	'Open the modal
	mdlCategories.Show
	'focus on the name
	txtName.Focus
End Sub
'executed to refresh the initial column visibility
Private Sub RefreshCategoriesColumnVisibility
	'executed to refresh the initial column visibility
	For Each k As String In Columns.keys
		Dim v As Boolean = Columns.get(k)
		BANano.Await(tblCategories.SetColumnVisible(k, v))
		BANano.Await(tblCategories.SetColumnVisibleOnColumnChooser(k, v))
	Next
End Sub
'executed when a table row is being edited
private Sub EditMode(item As Map)
	'turn the mode to UPDATE
	Mode = "U"
	'change the title of the modal dialog
	mdlCategories.Title = "Edit Category"
	'set the default properties
	BANano.Await(SetCategoriesDefaults)
	Dim sId As String = item.Get("id")
	Dim sName As String = item.Get("name")
    
	txtId.Value = sId
	txtName.Value = sName
    
	'Open the modal
	mdlCategories.Show
	'focus on the name
	txtName.Focus
End Sub
'executed when a table row is being edited
private Sub CloneMode(item As Map)
	'turn the mode to UPDATE, we are cloning an existing record
	Mode = "C"
	'change the title of the modal dialog
	mdlCategories.Title = "Clone Category"
	'set the default properties
	BANano.Await(SetCategoriesDefaults)
	item.Put("id", App.NextID)
	Dim sId As String = item.Get("id")
	Dim sName As String = item.Get("name")
    
	txtId.Value = sId
	txtName.Value = sName
    
	'Open the modal
	mdlCategories.Show
	'focus on the name
	txtName.Focus
End Sub
'executed when a table row edit button is clicked
Private Sub tblCategories_EditRow (Row As Int, item As Map)
	'executed when a table row edit button is clicked
	App.pagepause
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "categories")
	'assign schema
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'read the record
	Dim rec As Map = BANano.Await(db.READ(sID))
	BANano.Await(EditMode(rec))
	App.pageresume
End Sub
'executed when a table row delete button is clicked
Private Sub tblCategories_DeleteRow (Row As Int, item As Map)
	'executed when a table row delete button is clicked
	'get the id and name of the item to delete
	toDeleteID = item.Get("id")
	toDeleteName = item.Get("name")
	'build the confirmation message
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">${toDeleteName}</h2><br>Are you sure that you want to delete this Category?"$
	'wait for the user to confirm
	Dim bConfirm As Boolean = BANano.Await(App.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	'the user has click No, exit
	If bConfirm = False Then Return
	App.pagepause
	'execute a delete using the id of the Category
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "categories")
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	BANano.Await(db.DELETE(toDeleteID))
	'reload the Categories
	BANano.Await(MountCategories(False))
	App.pageresume
End Sub
'executed when a table row clone button is clicked
Private Sub tblCategories_CloneRow (Row As Int, item As Map)
	'executed when a table row clone button is clicked
	App.PagePause
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "categories")
	'assign schema
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'read the record
	Dim rec As Map = BANano.Await(db.READ(sID))
	BANano.Await(CloneMode(rec))
	App.PageResume
End Sub
'***** executed to set the component default values
Private Sub SetCategoriesDefaults
	'***** executed to set the component default values
    
End Sub
'***** executed to get the validity of the required components
Private Sub GetCategoriesValid As Boolean
	'***** executed to get the validity of the required components
    
	If txtId.IsBlank Then Return False
	If txtName.IsBlank Then Return False
    
	Return True
End Sub

'mdlCategories dialog 'Save' click
Private Sub mdlCategories_Yes_Click (e As BANanoEvent)
	'Executed when mdlCategories dialog 'Save' is clicked
	e.PreventDefault
	'Check validity of required fields
	Dim bValid As Boolean = BANano.Await(GetCategoriesValid)
	If bValid = False Then Return
	App.pagepause
	Dim sId As String = txtId.Value
	Dim sName As String = txtName.Value
    
	'open the database and save the record
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "categories")
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'pass the map record
	'Prepare database to save
	db.PrepareRecord
	db.SetField("id", sId)
	db.SetField("name", sName)
    
	Select Case Mode
		Case "C"
			'create a new record
			Dim nid As String = BANano.Await(db.CREATE)
		Case "U"
			'update an existing record
			Dim nid As String = BANano.Await(db.UPDATE)
	End Select
	App.pageresume
	If nid <> "" Then
		BANano.Await(App.ShowSwalSuccessWait("Category", "The category has been saved.", "Ok"))
	Else
		BANano.Await(App.ShowSwalErrorWait("Category", "The category could not be saved, please try again.", "Ok"))
		Return
	End If
	'Close the modal
	mdlCategories.Close
	App.PagePause
	BANano.Await(MountCategories(False))
	App.PageResume
End Sub
'mdlCategories dialog 'No' click
Private Sub mdlCategories_No_Click (e As BANanoEvent)
	'Executed when mdlCategories dialog 'No' is clicked
	e.PreventDefault
	'Close the modal
	mdlCategories.Close
	App.PagePause
	BANano.Await(MountCategories(False))
	App.PageResume
End Sub
Private Sub BuildCategoriesModal
	'executed to build the Modal Dialog structure for data entry
	'set the height of the modal
	'set the width of the modal
	'set the card status of the modal
	mdlCategories.Form.Clear
	mdlCategories.Form.AddRows1
	mdlCategories.Form.AddColumns12
	mdlCategories.Form.AddRows1
	mdlCategories.Form.AddColumns12
	BANano.Await(mdlCategories.Form.BuildGrid)
    
	'Add txtId
	txtId.Initialize(Me, "txtId", "txtId")
	txtId.InputType = "legend"
	txtId.Label = "#"
	txtId.Required = True
	txtId.Visible = False
	txtId.BackgroundColor = ""
	txtId.Border = False
	txtId.BorderColor = ""
	txtId.MarginAXYTBLR = ""
	txtId.PaddingAXYTBLR = ""
	txtId.ParentID = mdlCategories.Form.CellID("1", "1")
	BANano.Await(txtId.AddComponent)
	'Add txtName
	txtName.Initialize(Me, "txtName", "txtName")
	txtName.InputType = "legend"
	txtName.Label = "Name"
	txtName.Required = True
	txtName.BackgroundColor = ""
	txtName.Border = False
	txtName.BorderColor = ""
	txtName.MarginAXYTBLR = ""
	txtName.PaddingAXYTBLR = ""
	txtName.ParentID = mdlCategories.Form.CellID("2", "1")
	BANano.Await(txtName.AddComponent)
    
End Sub
