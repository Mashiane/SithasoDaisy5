B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@

Sub Process_Globals
	Private BANano As BANano 							'ignore
	Private App As SDUI5App							'ignore
	Private BottomDrawerPos As Double = 0.95		'position to show bottom drawer
	Private tblContacts As SDUI5Table			'ignore
	Private Columns As Map
	Private mdlContacts As SDUI5Modal	'ignore
	Public Action As String = "L"						'Listing / AddEdit
	Private Mode As String = ""						'CRUD control
	Private toDeleteID As String						'id of item to delete
	Private toDeleteName As String					'name of item to delete
	'name of the page
	Public name As String = "contacts"
	'title of the page
	Public title As String = "Contacts"
	'drawer icon for the page
	Public icon As String = "./assets/page.svg"
	'drawer icon color for the page
	Public color As String = "#000000"
	'define foreign table maps
	Private CategoriesObject As Map
	Private ProvincesObject As Map
	Private txtId As SDUI5TextBox		'ignore
	Private txtFullname As SDUI5TextBox		'ignore
	Private txtMobile As SDUI5TextBox		'ignore
	Private txtTelephone As SDUI5TextBox		'ignore
	Private txtEmailaddress As SDUI5TextBox		'ignore
	Private cboCategory As SDUI5Select		'ignore
	Private txtStreetaddress1 As SDUI5TextBox		'ignore
	Private txtStreetaddress2 As SDUI5TextBox		'ignore
	Private txtCity As SDUI5TextBox		'ignore
	Private cboProvince As SDUI5Select		'ignore
	Private txtPostalcode As SDUI5TextBox		'ignore
	Private txtState As SDUI5TextBox		'ignore
    
End Sub
'executed when the page is shown
Public Sub Show
	'executed when the page is shown
	App = pgIndex.App
	App.PagePause
	pgIndex.PageViewPaddingTo10px
	App.PageViewToFullScreenHeight(Array("appnavbar"))
	'clear page and load the layout
	BANano.Await(App.ClearPageView)
	tblContacts.Initialize(Me, "tblContacts", "tblContacts")
	tblContacts.ParentID = App.PageView
	tblContacts.AlphaChooserColumn = "tablename"
	tblContacts.ButtonSize = "sm"
	'tblContacts.DownloadToolbarTooltip = ""
	tblContacts.ExcelTitle = "Table Design"
	'tblContacts.ExportToCsv = False
	tblContacts.HasClone = True
	tblContacts.HasSearch = True
	tblContacts.SearchSize = "sm"
	tblContacts.Shadow = "md"
	tblContacts.Title = "Table Design"
	'tblContacts.TrapRowClick = False
	tblContacts.UploadToolbarTooltip = "Import Table"
	BANano.Await(tblContacts.AddComponent)
	'update navbar title on baselayout
	'pgIndex.UpdateTitle(title)
	'load to the bottom drawer CONTENT, will clear everything there
	mdlContacts.Initialize(Me, "mdlContacts", "mdlContacts")
	mdlContacts.ParentID = "#bottomdrawercontent"
	'mdlContacts.ActionType = "yes-no"
	mdlContacts.Backdrop = False
	mdlContacts.Border = False
	mdlContacts.Closable = False
	mdlContacts.IsCard = True
	mdlContacts.Html = ""
	mdlContacts.Shadow = "none"
	'mdlContacts.Size = "lg"
	mdlContacts.Width = "full"
	BANano.Await(mdlContacts.AddComponent)
	'build the table to be displayed
	BANano.Await(BuildContactsTable)
	'build up the modal dialog for input
	BANano.Await(BuildContactsModal)
	'load the database data and show it on the table Contacts
	BANano.Await(MountContacts(False))
	App.PageResume
End Sub
Private Sub BuildContactsTable
	Columns.Initialize
	'lets create the table and columns
	tblContacts.Title = "Contacts"
	tblContacts.AlphaChooserColumn = "fullname"
	tblContacts.AddNewTooltip = "Add a Contact"
	tblContacts.RefreshTooltip = "Refresh Contacts"
	'tblContacts.DeleteAllTooltip = "Delete all Contacts"
	'tblContacts.UploadToolbarTooltip = "Upload Contacts"
	'tblContacts.DownloadToolbarTooltip = "Download Contacts"
	tblContacts.BackTooltip = "Go back to Dashboard"
	tblContacts.EditTooltip = "Edit Contact"
	tblContacts.HasClone = True
	tblContacts.CloneTooltip = "Clone Contact"
	tblContacts.DeleteTooltip = "Delete Contact"
	'lets build the table columns
	tblContacts.AddColumn("fullname", "Full Name")
	Columns.put("fullname", True)
	tblContacts.AddColumn("mobile", "Mobile")
	Columns.put("mobile", True)
	tblContacts.AddColumn("telephone", "Telephone")
	tblContacts.SetColumnVisible("telephone", False)
	Columns.put("telephone", False)
	tblContacts.AddColumnEmail("emailaddress", "Email Address", "emailaddress", App.COLOR_INFO)
	Columns.put("emailaddress", True)
	tblContacts.AddColumn("category", "Category")
	'Set the computed value for category
	tblContacts.SetColumnComputeValue("category", "ComputeValueCategory")
	Columns.put("category", True)
	tblContacts.AddColumn("streetaddress1", "Street Address 1")
	tblContacts.SetColumnVisible("streetaddress1", False)
	Columns.put("streetaddress1", False)
	tblContacts.AddColumn("streetaddress2", "Street Address 2")
	tblContacts.SetColumnVisible("streetaddress2", False)
	Columns.put("streetaddress2", False)
	tblContacts.AddColumn("city", "City")
	Columns.put("city", True)
	tblContacts.AddColumn("province", "Province")
	'Set the computed value for province
	tblContacts.SetColumnComputeValue("province", "ComputeValueProvince")
	Columns.put("province", True)
	tblContacts.AddColumn("postalcode", "Postal Code")
	tblContacts.SetColumnVisible("postalcode", False)
	Columns.put("postalcode", False)
	tblContacts.AddColumn("state", "State")
	tblContacts.SetColumnVisible("state", False)
	Columns.put("state", False)
	'add edit/delete/clone buttons
	tblContacts.AddDesignerColums
	'move back button to the end
	tblContacts.MoveBackButton
End Sub
'load Contacts records from the database
Private Sub MountContacts(bAfterChange As Boolean)
	'load Contacts records from the database
	pgIndex.CloseBottomDrawer
	'turn to add mode
	App.PagePause
	'load foreign tables
	BANano.Await(LoadCategories)
	BANano.Await(LoadProvinces)
	'select Contacts from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "contacts")
	'link this api class to the data models
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'clear any where clauses
	db.CLEAR_WHERE
	'order by fullname
	db.ADD_ORDER_BY("fullname")
	'execute a select all
	BANano.Await(db.SELECT_ALL)
	'load foreign tables content on columns
	'load the records to the table
	If bAfterChange = False Then
		'show content as usual, this is not a change row event
		BANano.Await(tblContacts.SetItemsPaginate(db.result))
	Else
		'we need to show the last page we were in due to a row change
		'tblContacts.Originals = db.result
	End If
	App.PageResume
End Sub
'executed when the add button is clicked on the table
Private Sub tblContacts_Add (e As BANanoEvent)
	'executed when the add button is clicked on the table
	e.preventdefault
	'show a loading spinner
	App.PagePause
	'load foreign tables
	BANano.Await(LoadCategories)
	BANano.Await(LoadProvinces)
	'switch to addmode
	BANano.Await(AddMode)
	'hide loading spinner
	App.PageResume
End Sub
'executed when the refresh button is clicked on the table
Private Sub tblContacts_Refresh (e As BANanoEvent)
	'executed when the refresh button is clicked on the table
	e.PreventDefault
	App.PagePause
	'load records from the database and show first page
	BANano.Await(MountContacts(False))
	BANano.Await(RefreshContactsColumnVisibility)
	App.pageresume
End Sub

private Sub FakeContact
	'lets generate fake data...
	Dim fake As SDUI5FakeIT
	fake.Initialize
	fake.FullName = True
	fake.Phone = True
	fake.Gmail = True
	fake.Street = True
	fake.Street2 = True
	fake.City = True
	fake.Mobile = True
	fake.ZipCode = True
	fake.State = True
	'get a single record
	Dim fakeRec As FakeData = BANano.Await(fake.GetSingle)
		
	Dim lcategories As List = App.UI.MapKeysToList(CategoriesObject)
	Dim scategory As String = fake.Rand_Item(lcategories)
	
	Dim lprovinces As List = App.UI.MapKeysToList(ProvincesObject)
	Dim sprovince As String = fake.Rand_Item(lprovinces)
	
	txtId.Value = App.nextid
	txtFullname.Value = fakeRec.fullname
	txtMobile.Value = fakeRec.mobile
	txtTelephone.Value = fakeRec.phone
	txtEmailaddress.Value = fakeRec.gmail
	cboCategory.Value = scategory
	txtStreetaddress1.Value = fakeRec.Street
	txtStreetaddress2.Value = fakeRec.Street2
	txtCity.Value = fakeRec.city
	cboProvince.Value = sprovince
	txtPostalcode.Value = fakeRec.zipcode
	txtState.Value = fakeRec.state
End Sub

'executed when the back button is clicked on the table
Private Sub tblContacts_Back (e As BANanoEvent)
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
	mdlContacts.Title = "Add Contact"
	BANano.Await(cboCategory.SetOptionsFromMap(CategoriesObject))
	BANano.Await(cboProvince.SetOptionsFromMap(ProvincesObject))
	'set the default properties
	BANano.Await(SetContactsDefaults)
	txtId.Value = App.NextID
	'use fake data
	FakeContact
	pgIndex.OpenBottomDrawerOn(BottomDrawerPos)
	'focus on the fullname
	txtFullname.Focus
End Sub
'executed to refresh the initial column visibility
Private Sub RefreshContactsColumnVisibility
	'executed to refresh the initial column visibility
	For Each k As String In Columns.keys
		Dim v As Boolean = Columns.get(k)
		BANano.Await(tblContacts.SetColumnVisible(k, v))
		BANano.Await(tblContacts.SetColumnVisibleOnColumnChooser(k, v))
	next
End Sub
'executed when a table row is being edited
private Sub EditMode(item As Map)
	'turn the mode to UPDATE
	Mode = "U"
	'change the title of the modal dialog
	mdlContacts.Title = "Edit Contact"
	BANano.Await(cboCategory.SetOptionsFromMap(CategoriesObject))
	BANano.Await(cboProvince.SetOptionsFromMap(ProvincesObject))
	'set the default properties
	BANano.Await(SetContactsDefaults)
	Dim sId As String = item.Get("id")
	Dim sFullname As String = item.Get("fullname")
	Dim sMobile As String = item.Get("mobile")
	Dim sTelephone As String = item.Get("telephone")
	Dim sEmailaddress As String = item.Get("emailaddress")
	Dim sCategory As String = item.Get("category")
	Dim sStreetaddress1 As String = item.Get("streetaddress1")
	Dim sStreetaddress2 As String = item.Get("streetaddress2")
	Dim sCity As String = item.Get("city")
	Dim sProvince As String = item.Get("province")
	Dim sPostalcode As String = item.Get("postalcode")
	Dim sState As String = item.Get("state")
    
	txtId.Value = sId
	txtFullname.Value = sFullname
	txtMobile.Value = sMobile
	txtTelephone.Value = sTelephone
	txtEmailaddress.Value = sEmailaddress
	cboCategory.Value = sCategory
	txtStreetaddress1.Value = sStreetaddress1
	txtStreetaddress2.Value = sStreetaddress2
	txtCity.Value = sCity
	cboProvince.Value = sProvince
	txtPostalcode.Value = sPostalcode
	txtState.Value = sState
    
	pgIndex.OpenBottomDrawerOn(BottomDrawerPos)
	'focus on the fullname
	txtFullname.Focus
End Sub
'executed when a table row is being edited
private Sub CloneMode(item As Map)
	'turn the mode to UPDATE, we are cloning an existing record
	Mode = "C"
	'change the title of the modal dialog
	mdlContacts.Title = "Clone Contact"
	BANano.Await(cboCategory.SetOptionsFromMap(CategoriesObject))
	BANano.Await(cboProvince.SetOptionsFromMap(ProvincesObject))
	'set the default properties
	BANano.Await(SetContactsDefaults)
	item.Put("id", app.NextID)
	Dim sId As String = item.Get("id")
	Dim sFullname As String = item.Get("fullname")
	Dim sMobile As String = item.Get("mobile")
	Dim sTelephone As String = item.Get("telephone")
	Dim sEmailaddress As String = item.Get("emailaddress")
	Dim sCategory As String = item.Get("category")
	Dim sStreetaddress1 As String = item.Get("streetaddress1")
	Dim sStreetaddress2 As String = item.Get("streetaddress2")
	Dim sCity As String = item.Get("city")
	Dim sProvince As String = item.Get("province")
	Dim sPostalcode As String = item.Get("postalcode")
	Dim sState As String = item.Get("state")
    
	txtId.Value = sId
	txtFullname.Value = sFullname
	txtMobile.Value = sMobile
	txtTelephone.Value = sTelephone
	txtEmailaddress.Value = sEmailaddress
	cboCategory.Value = sCategory
	txtStreetaddress1.Value = sStreetaddress1
	txtStreetaddress2.Value = sStreetaddress2
	txtCity.Value = sCity
	cboProvince.Value = sProvince
	txtPostalcode.Value = sPostalcode
	txtState.Value = sState
    
	pgIndex.OpenBottomDrawerOn(BottomDrawerPos)
	'focus on the fullname
	txtFullname.Focus
End Sub
'executed when a table row edit button is clicked
Private Sub tblContacts_EditRow (Row As Int, item As Map)
	'executed when a table row edit button is clicked
	app.pagepause
	'load foreign tables
	BANano.Await(LoadCategories)
	BANano.Await(LoadProvinces)
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "contacts")
	'assign schema
	db.SetSchemaFromDataModel(app.DataModels)
	'db.ShowLogs = True
	'read the record
	Dim rec As Map = BANano.Await(db.READ(sID))
	BANano.Await(EditMode(rec))
	app.pageresume
End Sub
'executed when a table row delete button is clicked
Private Sub tblContacts_DeleteRow (Row As Int, item As Map)
	'executed when a table row delete button is clicked
	'get the id and fullname of the item to delete
	toDeleteID = item.Get("id")
	toDeleteName = item.Get("fullname")
	'build the confirmation message
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">${toDeleteName}</h2><br>Are you sure that you want to delete this Contact?"$
	'wait for the user to confirm
	Dim bConfirm As Boolean = BANano.Await(app.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	'the user has click No, exit
	If bConfirm = False Then Return
	app.pagepause
	'execute a delete using the id of the Contact
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "contacts")
	db.SetSchemaFromDataModel(app.DataModels)
	'db.ShowLogs = True
	BANano.Await(db.DELETE(toDeleteID))
	'reload the Contacts
	BANano.Await(MountContacts(False))
	app.pageresume
End Sub
'executed when a table row clone button is clicked
Private Sub tblContacts_CloneRow (Row As Int, item As Map)
	'executed when a table row clone button is clicked
	app.PagePause
	'load foreign tables
	BANano.Await(LoadCategories)
	BANano.Await(LoadProvinces)
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "contacts")
	'assign schema
	db.SetSchemaFromDataModel(app.DataModels)
	'db.ShowLogs = True
	'read the record
	Dim rec As Map = BANano.Await(db.READ(sID))
	BANano.Await(CloneMode(rec))
	app.PageResume
End Sub
'Load Categories
Private Sub LoadCategories				'ignore
	'executed to load foreign table data
	CategoriesObject.Initialize
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "categories")
	'link this api class to the data models
	db.SetSchemaFromDataModel(app.DataModels)
	'db.ShowLogs = True
	'clear any where clauses
	db.CLEAR_WHERE
	'order by fullname
	db.ADD_ORDER_BY("fullname")
	db.ADD_FIELDS(Array("id","name"))
	'execute a select all
	BANano.Await(db.SELECT_ALL)
	Do While db.NextRow
		Dim sid As String = db.GetString("id")
		Dim sname As String = db.GetString("name")
		CategoriesObject.Put(sid, sname)
	Loop
End Sub
'compute value for category
Private Sub ComputeValueCategory(item As Map) As String			'ignore
	'computed for each row in the table and return value to display")
	Dim scategory As String = item.Get("category")
	Dim tcategory As String = CategoriesObject.GetDefault(scategory, "")
	Return tcategory
End Sub
'Load Provinces
Private Sub LoadProvinces				'ignore
	'executed to load foreign table data
	ProvincesObject.Initialize
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "provinces")
	'link this api class to the data models
	db.SetSchemaFromDataModel(app.DataModels)
	'db.ShowLogs = True
	'clear any where clauses
	db.CLEAR_WHERE
	'order by fullname
	db.ADD_ORDER_BY("fullname")
	db.ADD_FIELDS(Array("id","name"))
	'execute a select all
	BANano.Await(db.SELECT_ALL)
	Do While db.NextRow
		Dim sid As String = db.GetString("id")
		Dim sname As String = db.GetString("name")
		ProvincesObject.Put(sid, sname)
	Loop
End Sub
'compute value for province
Private Sub ComputeValueProvince(item As Map) As String			'ignore
	'computed for each row in the table and return value to display")
	Dim sprovince As String = item.Get("province")
	Dim tprovince As String = ProvincesObject.GetDefault(sprovince, "")
	Return tprovince
End Sub
'***** executed to set the component default values
Private Sub SetContactsDefaults
	'***** executed to set the component default values
    
End Sub
'***** executed to get the validity of the required components
Private Sub GetContactsValid As Boolean
	'***** executed to get the validity of the required components
    
	If txtId.IsBlank Then Return False
	If txtFullname.IsBlank Then Return False
	If txtMobile.IsBlank Then Return False
	If txtEmailaddress.IsBlank Then Return False
	If cboCategory.IsBlank Then Return False
	If txtStreetaddress1.IsBlank Then Return False
	If txtCity.IsBlank Then Return False
	If cboProvince.IsBlank Then Return False
	If txtPostalcode.IsBlank Then Return False
    
	Return True
End Sub

'mdlContacts dialog 'Save' click
Private Sub mdlContacts_Yes_Click (e As BANanoEvent)
	'Executed when mdlContacts dialog 'Save' is clicked
	e.PreventDefault
	'Check validity of required fields
	Dim bValid As Boolean = BANano.Await(GetContactsValid)
	If bValid = False Then Return
	App.pagepause
	Dim sId As String = txtId.Value
	Dim sFullname As String = txtFullname.Value
	Dim sMobile As String = txtMobile.Value
	Dim sTelephone As String = txtTelephone.Value
	Dim sEmailaddress As String = txtEmailaddress.Value
	Dim sCategory As String = cboCategory.Value
	Dim sStreetaddress1 As String = txtStreetaddress1.Value
	Dim sStreetaddress2 As String = txtStreetaddress2.Value
	Dim sCity As String = txtCity.Value
	Dim sProvince As String = cboProvince.Value
	Dim sPostalcode As String = txtPostalcode.Value
	Dim sState As String = txtState.Value
    
	'open the database and save the record
	Dim db As SDUIWebSQL
	db.Initialize(Main.DBName, "contacts")
	db.SetSchemaFromDataModel(app.DataModels)
	'db.ShowLogs = True
	'pass the map record
	'Prepare database to save
	db.PrepareRecord
	db.SetField("id", sId)
	db.SetField("fullname", sFullname)
	db.SetField("mobile", sMobile)
	db.SetField("telephone", sTelephone)
	db.SetField("emailaddress", sEmailaddress)
	db.SetField("category", sCategory)
	db.SetField("streetaddress1", sStreetaddress1)
	db.SetField("streetaddress2", sStreetaddress2)
	db.SetField("city", sCity)
	db.SetField("province", sProvince)
	db.SetField("postalcode", sPostalcode)
	db.SetField("state", sState)
    
	Select Case Mode
		Case "C"
			'create a new record
			Dim nid As String = BANano.Await(db.CREATE)
		Case "U"
			'update an existing record
			Dim nid As String = BANano.Await(db.UPDATE)
	End Select
	app.pageresume
	If nid <> "" Then
		BANano.Await(App.ShowSwalSuccessWait("Contact", "The contact has been saved.", "Ok"))
	Else
		BANano.Await(App.ShowSwalErrorWait("Contact", "The contact could not be saved, please try again.", "Ok"))
		Return
	End If
	pgIndex.CloseBottomDrawer
	App.PagePause
	BANano.Await(MountContacts(False))
	App.PageResume
End Sub
'mdlContacts dialog 'No' click
Private Sub mdlContacts_No_Click (e As BANanoEvent)
	'Executed when mdlContacts dialog 'No' is clicked
	e.PreventDefault
	pgIndex.CloseBottomDrawer
	App.PagePause
	BANano.Await(MountContacts(False))
	App.PageResume
End Sub
Private Sub BuildContactsModal
	'executed to build the Modal Dialog structure for data entry
	mdlContacts.RemoveFormPadding
	mdlContacts.RemoveBodyPadding
	'set the height of the modal
	'set the width of the modal
	mdlContacts.Width = "full"
	'set the card status of the modal
	mdlContacts.IsCard = True
	mdlContacts.Form.Clear
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns12
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns12
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns2x6
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns12
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns12
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns12
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns12
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns2x6
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns2x6
	BANano.Await(mdlContacts.Form.BuildGrid)
    
	'Add txtId
	txtId.Initialize(Me, "txtId", "txtId")
	txtId.InputType = "legend"
	txtId.Label = "#"
	txtId.Required = true
	txtId.Visible = false
	txtId.BackgroundColor = ""
	txtId.Border = false
	txtId.BorderColor = ""
	txtId.MarginAXYTBLR = ""
	txtId.PaddingAXYTBLR = ""
	txtId.ParentID = mdlContacts.Form.CellID("1", "1")
	BANano.Await(txtId.AddComponent)
	'Add txtFullname
	txtFullname.Initialize(Me, "txtFullname", "txtFullname")
	txtFullname.InputType = "legend"
	txtFullname.Label = "Full Name"
	txtFullname.Required = true
	txtFullname.BackgroundColor = ""
	txtFullname.Border = false
	txtFullname.BorderColor = ""
	txtFullname.MarginAXYTBLR = ""
	txtFullname.PaddingAXYTBLR = ""
	txtFullname.ParentID = mdlContacts.Form.CellID("2", "1")
	BANano.Await(txtFullname.AddComponent)
	'Add txtMobile
	txtMobile.Initialize(Me, "txtMobile", "txtMobile")
	txtMobile.InputType = "legend"
	txtMobile.TypeOf = "tel"
	txtMobile.Label = "Mobile"
	txtMobile.Required = true
	txtMobile.BackgroundColor = ""
	txtMobile.Border = false
	txtMobile.BorderColor = ""
	txtMobile.MarginAXYTBLR = ""
	txtMobile.PaddingAXYTBLR = ""
	txtMobile.ParentID = mdlContacts.Form.CellID("3", "1")
	BANano.Await(txtMobile.AddComponent)
	'Add txtTelephone
	txtTelephone.Initialize(Me, "txtTelephone", "txtTelephone")
	txtTelephone.InputType = "legend"
	txtTelephone.TypeOf = "tel"
	txtTelephone.Label = "Telephone"
	txtTelephone.BackgroundColor = ""
	txtTelephone.Border = false
	txtTelephone.BorderColor = ""
	txtTelephone.MarginAXYTBLR = ""
	txtTelephone.PaddingAXYTBLR = ""
	txtTelephone.ParentID = mdlContacts.Form.CellID("3", "2")
	BANano.Await(txtTelephone.AddComponent)
	'Add txtEmailaddress
	txtEmailaddress.Initialize(Me, "txtEmailaddress", "txtEmailaddress")
	txtEmailaddress.InputType = "legend"
	txtEmailaddress.TypeOf = "email"
	txtEmailaddress.Label = "Email Address"
	txtEmailaddress.Required = true
	txtEmailaddress.BackgroundColor = ""
	txtEmailaddress.Border = false
	txtEmailaddress.BorderColor = ""
	txtEmailaddress.MarginAXYTBLR = ""
	txtEmailaddress.PaddingAXYTBLR = ""
	txtEmailaddress.ParentID = mdlContacts.Form.CellID("4", "1")
	BANano.Await(txtEmailaddress.AddComponent)
	'Add cboCategory
	cboCategory.Initialize(Me, "cboCategory", "cboCategory")
	cboCategory.InputType = "legend"
	cboCategory.Label = "Category"
	cboCategory.Placeholder = "Select Category"
	cboCategory.Options = ""
	cboCategory.Required = true
	cboCategory.AppendIcon = "./assets/plus-solid.svg"
	cboCategory.AppendVisible = True
	cboCategory.BackgroundColor = ""
	cboCategory.Border = false
	cboCategory.BorderColor = ""
	cboCategory.MarginAXYTBLR = ""
	cboCategory.PaddingAXYTBLR = ""
	cboCategory.ParentID = mdlContacts.Form.CellID("5", "1")
	BANano.Await(cboCategory.AddComponent)
	'Add txtStreetaddress1
	txtStreetaddress1.Initialize(Me, "txtStreetaddress1", "txtStreetaddress1")
	txtStreetaddress1.InputType = "legend"
	txtStreetaddress1.Label = "Street Address 1"
	txtStreetaddress1.Required = true
	txtStreetaddress1.BackgroundColor = ""
	txtStreetaddress1.Border = false
	txtStreetaddress1.BorderColor = ""
	txtStreetaddress1.MarginAXYTBLR = ""
	txtStreetaddress1.PaddingAXYTBLR = ""
	txtStreetaddress1.ParentID = mdlContacts.Form.CellID("6", "1")
	BANano.Await(txtStreetaddress1.AddComponent)
	'Add txtStreetaddress2
	txtStreetaddress2.Initialize(Me, "txtStreetaddress2", "txtStreetaddress2")
	txtStreetaddress2.InputType = "legend"
	txtStreetaddress2.Label = "Street Address 2"
	txtStreetaddress2.BackgroundColor = ""
	txtStreetaddress2.Border = false
	txtStreetaddress2.BorderColor = ""
	txtStreetaddress2.MarginAXYTBLR = ""
	txtStreetaddress2.PaddingAXYTBLR = ""
	txtStreetaddress2.ParentID = mdlContacts.Form.CellID("7", "1")
	BANano.Await(txtStreetaddress2.AddComponent)
	'Add txtCity
	txtCity.Initialize(Me, "txtCity", "txtCity")
	txtCity.InputType = "legend"
	txtCity.Label = "City"
	txtCity.Required = true
	txtCity.BackgroundColor = ""
	txtCity.Border = false
	txtCity.BorderColor = ""
	txtCity.MarginAXYTBLR = ""
	txtCity.PaddingAXYTBLR = ""
	txtCity.ParentID = mdlContacts.Form.CellID("8", "1")
	BANano.Await(txtCity.AddComponent)
	'Add cboProvince
	cboProvince.Initialize(Me, "cboProvince", "cboProvince")
	cboProvince.InputType = "legend"
	cboProvince.Label = "Province"
	cboProvince.Placeholder = "Select Province"
	cboProvince.Options = ""
	cboProvince.Required = true
	cboProvince.AppendIcon = "./assets/plus-solid.svg"
	cboProvince.AppendVisible = True
	cboProvince.BackgroundColor = ""
	cboProvince.Border = false
	cboProvince.BorderColor = ""
	cboProvince.MarginAXYTBLR = ""
	cboProvince.PaddingAXYTBLR = ""
	cboProvince.ParentID = mdlContacts.Form.CellID("9", "1")
	BANano.Await(cboProvince.AddComponent)
	'Add txtPostalcode
	txtPostalcode.Initialize(Me, "txtPostalcode", "txtPostalcode")
	txtPostalcode.InputType = "legend"
	txtPostalcode.TypeOf = "tel"
	txtPostalcode.Label = "Postal Code"
	txtPostalcode.Required = true
	txtPostalcode.BackgroundColor = ""
	txtPostalcode.Border = false
	txtPostalcode.BorderColor = ""
	txtPostalcode.MarginAXYTBLR = ""
	txtPostalcode.PaddingAXYTBLR = ""
	txtPostalcode.ParentID = mdlContacts.Form.CellID("9", "2")
	BANano.Await(txtPostalcode.AddComponent)
	'Add txtState
	txtState.Initialize(Me, "txtState", "txtState")
	txtState.InputType = "legend"
	txtState.Label = "State"
	txtState.BackgroundColor = ""
	txtState.Border = false
	txtState.BorderColor = ""
	txtState.MarginAXYTBLR = ""
	txtState.PaddingAXYTBLR = ""
	txtState.ParentID = mdlContacts.Form.CellID("8", "2")
	BANano.Await(txtState.AddComponent)
    
End Sub
Private Sub cboCategory_append (e As BANanoEvent)
	'executed when cboCategory append button is clicked
	e.preventdefault
	'use a sweet-alert2 dialog to ask the user for a Category
	Dim sname As String = banano.Await(app.ShowSwalInputWait("Add Category", "Please type a new category to add below.", "Save", "Cancel"))
	'trim the entered content
	sname = sname.Trim
	'if the content is blank do nothing
	If sname = "" Then Return
	'something has been specified, add it to the database
	App.PagePause
	Dim tblX As SDUIWebSQL
	tblX.Initialize(Main.DBName, "categories")
	'tblX.ShowLogs = True
	'set the schema from the data model
	tblX.SetSchemaFromDataModel(App.DataModels)
	'prepare to add a record
	tblX.PrepareRecord
	'assign fields to add and their values
	tblX.SetField("id", tblX.NextID)
	tblX.SetField("name", sname)
	'execute the INSERT in the database
	Dim aid As String = BANano.Await(tblX.Create)
	If aid <> "" Then
		'reload the select with new records
		BANano.Await(LoadCategories)
		'update the select
		BANano.Await(cboCategory.SetOptionsFromMap(CategoriesObject))
		'show the value just added
		cboCategory.Value = aid
	Else
		'read the record id by display value
		aid = BANano.Await(tblX.READ_ID_BY("name", sname))
		cboCategory.Value = aid
	End If
	App.PageResume
End Sub
Private Sub cboProvince_append (e As BANanoEvent)
	'executed when cboProvince append button is clicked
	e.preventdefault
	'use a sweet-alert2 dialog to ask the user for a Province
	Dim sname As String = BANano.Await(App.ShowSwalInputWait("Add Province", "Please type a new province to add below.", "Save", "Cancel"))
	'trim the entered content
	sname = sname.Trim
	'if the content is blank do nothing
	If sname = "" Then Return
	'something has been specified, add it to the database
	App.PagePause
	Dim tblX As SDUIWebSQL
	tblX.Initialize(Main.DBName, "provinces")
	'tblX.ShowLogs = True
	'set the schema from the data model
	tblX.SetSchemaFromDataModel(App.DataModels)
	'prepare to add a record
	tblX.PrepareRecord
	'assign fields to add and their values
	tblX.SetField("id", tblX.NextID)
	tblX.SetField("name", sname)
	'execute the INSERT in the database
	Dim aid As String = BANano.Await(tblX.Create)
	If aid <> "" Then
		'reload the select with new records
		BANano.Await(LoadProvinces)
		'update the select
		BANano.Await(cboProvince.SetOptionsFromMap(ProvincesObject))
		'show the value just added
		cboProvince.Value = aid
	Else
		'read the record id by display value
		aid = BANano.Await(tblX.READ_ID_BY("name", sname))
		cboProvince.Value = aid
	End If
	App.PageResume
End Sub
