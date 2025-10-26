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
	Private tblContacts As SDUI5Table			'ignore
	'the variable for our modal dialog
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
	'define foreign table maps to store key value pairs of foreign data
	Private CategoriesObject As Map
	Private ProvincesObject As Map
	Private txtId As SDUI5TextBox		'ignore
	Private avtplAbbreviation As SDUI5Avatar		'ignore
	Private txtFullname As SDUI5TextBox		'ignore
	Private txtLetter As SDUI5TextBox		'ignore
	Private txtMobile As SDUI5TextBox		'ignore
	Private txtTelephone As SDUI5TextBox		'ignore
	Private txtEmailaddress As SDUI5TextBox		'ignore
	Private cboCategory As SDUI5Select		'ignore
	Private cboGender As SDUI5Select		'ignore
	Private txtStreetaddress1 As SDUI5TextBox		'ignore
	Private txtStreetaddress2 As SDUI5TextBox		'ignore
	Private txtCity As SDUI5TextBox		'ignore
	Private txtState As SDUI5TextBox		'ignore
	Private cboProvince As SDUI5Select		'ignore
	Private txtPostalcode As SDUI5TextBox		'ignore
    
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
	BANano.LoadLayout(App.PageView, "contactsview")
	'update navbar title on baselayout
	'pgIndex.UpdateTitle(title)
	'build the table to be displayed
	BANano.Await(BuildContactsTable)
	'build up the modal dialog for input
	BANano.Await(BuildContactsModal)
	'load the database data and show it on the table Contacts
	BANano.Await(MountContacts(False))
	App.PageResume
End Sub
Private Sub BuildContactsTable
	'lets create the table and columns
	tblContacts.Title = "Contacts"
	'can choose a letter to show records
	tblContacts.HasAlphaChooser = True
	'the column to use to get the letters
	tblContacts.AlphaChooserColumn = "fullname"
	'has functionality to show/hide columns
	tblContacts.HasColumnChooser = True
	'set some tooltips of the buttons
	tblContacts.AddNewTooltip = "Add a Contact"
	tblContacts.RefreshTooltip = "Refresh Contacts"
	'tblContacts.DeleteAllTooltip = "Delete all Contacts"
	'tblContacts.UploadToolbarTooltip = "Upload Contacts"
	'tblContacts.DownloadToolbarTooltip = "Download Contacts"
	tblContacts.BackTooltip = "Go back to Dashboard"
	'has edit action column
	tblContacts.HasEdit = True
	tblContacts.EditTooltip = "Edit Contact"
	'has clone action column
	tblContacts.HasClone = True
	tblContacts.CloneTooltip = "Clone Contact"
	'has delete action column
	tblContacts.HasDelete = True
	tblContacts.DeleteTooltip = "Delete Contact"
	'lets build the table columns
	tblContacts.AddColumnAvatarPlaceholder("abbreviation", "", "40px", App.MASK_CIRCLE, "")
	tblContacts.SetColumnAvatarColor("abbreviation", True)
	tblContacts.SetColumnTextSize("abbreviation", "lg")
	'Set the computed value for abbreviation
	tblContacts.SetColumnComputeValue("abbreviation", "ComputeValueAbbreviation")
	tblContacts.AddColumnTitleSubTitle("fullname", "Full Name", "mobile")
	tblContacts.AddColumn("telephone", "Telephone")
	tblContacts.SetColumnHidden("telephone")
	tblContacts.AddColumnEmail("emailaddress", "Email Address", "emailaddress", App.COLOR_INFO)
	tblContacts.AddColumn("category", "Category")
	'Set the computed value for category
	tblContacts.SetColumnComputeValue("category", "ComputeValueCategory")
	tblContacts.AddColumn("gender", "Gender")
	tblContacts.SetColumnHidden("gender")
	tblContacts.AddColumn("streetaddress1", "Street Address 1")
	tblContacts.SetColumnHidden("streetaddress1")
	tblContacts.AddColumn("streetaddress2", "Street Address 2")
	tblContacts.SetColumnHidden("streetaddress2")
	tblContacts.AddColumn("city", "City")
	tblContacts.AddColumn("state", "State")
	tblContacts.SetColumnHidden("state")
	tblContacts.AddColumn("province", "Province")
	'Set the computed value for province
	tblContacts.SetColumnComputeValue("province", "ComputeValueProvince")
	tblContacts.AddColumn("postalcode", "Postal Code")
	tblContacts.SetColumnHidden("postalcode")
	'add edit/delete/clone buttons
	tblContacts.AddDesignerColums
	'update column visibility
	tblContacts.UpdateColumnVisibility
	'move back button to the end on the table toolbar
	tblContacts.MoveBackButton
End Sub
'load Contacts records from the database
Private Sub MountContacts(bAfterChange As Boolean)
	'load Contacts records from the database
	'turn to add mode
	App.PagePause
	'load foreign tables
	'load the key values pairs for Categories
	BANano.Await(LoadCategories)
	'load the key values pairs for Provinces
	BANano.Await(LoadProvinces)
	'select Contacts from the database
	Dim db As SDUIPouchDB
	db.Initialize(Me, "contacts", Main.ServerDB, "contacts")
	'link this api class to the data models
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLog = True
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
		tblContacts.Originals = db.result
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
	'load the latest available Categories
	BANano.Await(LoadCategories)
	'load the latest available Provinces
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
	'clear any existing table header sort order
	BANano.SetLocalStorage2("contacts_order", "")
	'show spinner
	App.PagePause
	'load records from the database and show first page
	BANano.Await(MountContacts(False))
	'reset the visible columns to initial visible columns
	BANano.Await(tblContacts.RefreshColumnVisibility)
	'hide spinner
	App.pageresume
End Sub
'executed when the back button is clicked on the table
Private Sub tblContacts_Back (e As BANanoEvent)
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
	mdlContacts.Title = "Add Contact"
	'load the selects from key value pairs
	BANano.Await(cboCategory.SetOptionsFromMap(CategoriesObject))
	'load the selects from key value pairs
	BANano.Await(cboProvince.SetOptionsFromMap(ProvincesObject))
	'set the default properties for the input components
	BANano.Await(SetContactsDefaults)
	'build fake data and use it
	BANano.Await(BuildContactsFakeData)
	'set the next available key for the record
	txtId.Value = App.NextID
	'Open the modal
	mdlContacts.Show
	'focus on the fullname
	txtFullname.Focus
End Sub
'executed when exporttoxls is clicked
Private Sub tblContacts_ExportToXls (e As BANanoEvent)
	'executed when exporttoxls is clicked to generate excel report
	e.PreventDefault
	App.PagePause
	'load foreign tables
	'load the key value pairs for Categories
	BANano.Await(LoadCategories)
	'load the key value pairs for Provinces
	BANano.Await(LoadProvinces)
	'select Contacts from the database
	Dim db As SDUIPouchDB
	db.Initialize(Me, "contacts", Main.ServerDB, "contacts")
	'link this api class to the data models
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'clear any where clauses
	db.CLEAR_WHERE
	'order by fullname
	db.ADD_ORDER_BY("fullname")
	'execute a select all
	BANano.Await(db.SELECT_ALL)
	Dim Result As List = db.result
	'update foreign tables content on columns
	Dim rCnt As Int = 0
	Dim rTot As Int = Result.Size - 1
	For rCnt = 0 To rTot
		Dim rec As Map = Result.Get(rCnt)
		Dim sCategory As String = rec.Get("category")
		'already includes all display values
		Dim tCategory As String = CategoriesObject.GetDefault(sCategory, "")
		rec.put("category", tCategory)
		Dim sProvince As String = rec.Get("province")
		'already includes all display values
		Dim tProvince As String = ProvincesObject.GetDefault(sProvince, "")
		rec.put("province", tProvince)
		Result.Set(rCnt, rec)
	Next
	'start to generate the excel report
	Dim report As SDUI5ExcelReport
	report.Initialize
	'we will use sheet1
	report.SheetName = "Sheet1"
	'the name of the excel template file we will use to generate our report
	report.TemplateFile = "./assets/contacts_report.xlsx"
	'the name of the report
	report.ReportFileName = "Contacts Report"
	'start writing rows on this row
	report.StartRow = 3
	'set the JSON list of records we will use for the report
	report.SetRows(Result)
	'for each record, for each column, get the value on that key and write it
	report.AddColumn("A", "fullname")
	report.AddColumn("B", "mobile")
	report.AddColumn("C", "telephone")
	report.AddColumn("D", "emailaddress")
	report.AddColumn("E", "category")
	report.AddColumn("F", "gender")
	report.AddColumn("G", "streetaddress1")
	report.AddColumn("H", "streetaddress2")
	report.AddColumn("I", "city")
	report.AddColumn("J", "state")
	report.AddColumn("K", "province")
	report.AddColumn("L", "postalcode")
	'build the report and download it
	BANano.Await(report.execute)
	App.PageResume
End Sub
'executed when a table row is being edited
private Sub EditMode(item As Map)
	'turn the mode to UPDATE
	Mode = "U"
	'change the title of the modal dialog
	mdlContacts.Title = "Edit Contact"
	'load the selects from the key value pairs
	BANano.Await(cboCategory.SetOptionsFromMap(CategoriesObject))
	'load the selects from the key value pairs
	BANano.Await(cboProvince.SetOptionsFromMap(ProvincesObject))
	'set the default properties
	BANano.Await(SetContactsDefaults)
	item.Remove("abbreviation")
	Dim sId As String = item.GetDefault("id", "")
	Dim sAbbreviation As String = item.GetDefault("abbreviation", "")
	Dim sFullname As String = item.GetDefault("fullname", "")
	Dim sLetter As String = item.GetDefault("letter", "")
	Dim sMobile As String = item.GetDefault("mobile", "")
	Dim sTelephone As String = item.GetDefault("telephone", "")
	Dim sEmailaddress As String = item.GetDefault("emailaddress", "")
	Dim sCategory As String = item.GetDefault("category", "")
	Dim sGender As String = item.GetDefault("gender", "")
	Dim sStreetaddress1 As String = item.GetDefault("streetaddress1", "")
	Dim sStreetaddress2 As String = item.GetDefault("streetaddress2", "")
	Dim sCity As String = item.GetDefault("city", "")
	Dim sState As String = item.GetDefault("state", "")
	Dim sProvince As String = item.GetDefault("province", "")
	Dim sPostalcode As String = item.GetDefault("postalcode", "")
    
	txtId.Value = sId
	sAbbreviation = App.UI.GetAbbreviations(sFullname)
	avtplAbbreviation.Placeholder = sAbbreviation
	txtFullname.Value = sFullname
	txtLetter.Value = sLetter
	txtMobile.Value = sMobile
	txtTelephone.Value = sTelephone
	txtEmailaddress.Value = sEmailaddress
	cboCategory.Value = sCategory
	cboGender.Value = sGender
	txtStreetaddress1.Value = sStreetaddress1
	txtStreetaddress2.Value = sStreetaddress2
	txtCity.Value = sCity
	txtState.Value = sState
	cboProvince.Value = sProvince
	txtPostalcode.Value = sPostalcode
    
	'Open the modal
	mdlContacts.Show
	'focus on the fullname
	txtFullname.Focus
End Sub
'executed when a table row is being edited
private Sub CloneMode(item As Map)
	'turn the mode to CREATE, we are cloning an existing record
	Mode = "C"
	'change the title of the modal dialog
	mdlContacts.Title = "Clone Contact"
	'set the selects from key value pairs
	BANano.Await(cboCategory.SetOptionsFromMap(CategoriesObject))
	'set the selects from key value pairs
	BANano.Await(cboProvince.SetOptionsFromMap(ProvincesObject))
	'set the default properties
	BANano.Await(SetContactsDefaults)
	'set the next available id
	item.Put("id", App.NextID)
	item.Remove("abbreviation")
	Dim sId As String = item.GetDefault("id", "")
	Dim sAbbreviation As String = item.GetDefault("abbreviation", "")
	Dim sFullname As String = item.GetDefault("fullname", "")
	Dim sLetter As String = item.GetDefault("letter", "")
	Dim sMobile As String = item.GetDefault("mobile", "")
	Dim sTelephone As String = item.GetDefault("telephone", "")
	Dim sEmailaddress As String = item.GetDefault("emailaddress", "")
	Dim sCategory As String = item.GetDefault("category", "")
	Dim sGender As String = item.GetDefault("gender", "")
	Dim sStreetaddress1 As String = item.GetDefault("streetaddress1", "")
	Dim sStreetaddress2 As String = item.GetDefault("streetaddress2", "")
	Dim sCity As String = item.GetDefault("city", "")
	Dim sState As String = item.GetDefault("state", "")
	Dim sProvince As String = item.GetDefault("province", "")
	Dim sPostalcode As String = item.GetDefault("postalcode", "")
    
	txtId.Value = sId
	sAbbreviation = App.UI.GetAbbreviations(sFullname)
	avtplAbbreviation.Placeholder = sAbbreviation
	txtFullname.Value = sFullname
	txtLetter.Value = sLetter
	txtMobile.Value = sMobile
	txtTelephone.Value = sTelephone
	txtEmailaddress.Value = sEmailaddress
	cboCategory.Value = sCategory
	cboGender.Value = sGender
	txtStreetaddress1.Value = sStreetaddress1
	txtStreetaddress2.Value = sStreetaddress2
	txtCity.Value = sCity
	txtState.Value = sState
	cboProvince.Value = sProvince
	txtPostalcode.Value = sPostalcode
    
	'Open the modal
	mdlContacts.Show
	'focus on the fullname
	txtFullname.Focus
End Sub
'executed when a table row edit button is clicked
Private Sub tblContacts_EditRow (Row As Int, item As Map)
	'save the current page
	tblContacts.SaveLastAccessedPage
	'executed when a table row edit button is clicked
	App.pagepause
	'load foreign tables
	'load key values pairs for related tables
	BANano.Await(LoadCategories)
	'load key values pairs for related tables
	BANano.Await(LoadProvinces)
	'get the id of the edited row
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIPouchDB
	db.Initialize(Me, "contacts", Main.ServerDB, "contacts")
	'assign schema
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'read the record from the database
	Dim rec As Map = BANano.Await(db.READ(sID))
	'set edit mode and display the record
	BANano.Await(EditMode(rec))
	App.pageresume
End Sub
'executed when a table row delete button is clicked
Private Sub tblContacts_DeleteRow (Row As Int, item As Map)
	tblContacts.SaveLastAccessedPage
	'executed when a table row delete button is clicked
	'get the id and fullname of the item to delete
	toDeleteID = item.Get("id")
	'get the value to display for this record
	toDeleteName = item.Get("fullname")
	'build the confirmation message
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">${toDeleteName}</h2><br>Are you sure that you want to delete this Contact?"$
	'wait for the user to confirm
	Dim bConfirm As Boolean = BANano.Await(App.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	'the user has click No, exit
	If bConfirm = False Then Return
	App.pagepause
	'execute a delete using the id of the Contact
	Dim db As SDUIPouchDB
	db.Initialize(Me, "contacts", Main.ServerDB, "contacts")
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'execute the delete from the database table
	BANano.Await(db.DELETE(toDeleteID))
	'reload the Contacts
	BANano.Await(MountContacts(False))
	BANano.Await(tblContacts.ShowLastAccessedPage)
	App.pageresume
End Sub
'executed when a table row clone button is clicked
Private Sub tblContacts_CloneRow (Row As Int, item As Map)
	'executed when a table row clone button is clicked
	App.PagePause
	tblContacts.SaveLastAccessedPage
	'load foreign tables
	'load the key value pairs from the database
	BANano.Await(LoadCategories)
	'load the key value pairs from the database
	BANano.Await(LoadProvinces)
	Dim sID As String = item.Get("id")
	'execute a read from the database
	Dim db As SDUIPouchDB
	db.Initialize(Me, "contacts", Main.ServerDB, "contacts")
	'assign schema
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'read the record
	Dim rec As Map = BANano.Await(db.READ(sID))
	'show the record to clone
	BANano.Await(CloneMode(rec))
	App.PageResume
End Sub
'compute value for abbreviation
Private Sub ComputeValueAbbreviation(item As Map) As Object			'ignore
	'compute value for abbreviation per row
	Dim sabbreviation As String = item.Get("fullname")
	Return sabbreviation
End Sub
'
'Load Categories
Private Sub LoadCategories				'ignore
	'executed to load foreign table data
	'this will store the key value pairs for the values
	CategoriesObject.Initialize
	Dim db As SDUIPouchDB
	db.Initialize(Me, "categories", Main.ServerDB, "categories")
	'link this api class to the data models
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLog = True
	'clear any where clauses
	db.CLEAR_WHERE
	db.ADD_ORDER_BY("name")
	'define the fields we want
	db.ADD_FIELDS(Array("id","name"))
	'execute a select all
	BANano.Await(db.SELECT_ALL)
	'loop through each record
	Do While db.NextRow
		'get the values for each record
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
	'this will store the key value pairs for the values
	ProvincesObject.Initialize
	Dim db As SDUIPouchDB
	db.Initialize(Me, "provinces", Main.ServerDB, "provinces")
	'link this api class to the data models
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLog = True
	'clear any where clauses
	db.CLEAR_WHERE
	db.ADD_ORDER_BY("name")
	'define the fields we want
	db.ADD_FIELDS(Array("id","name"))
	'execute a select all
	BANano.Await(db.SELECT_ALL)
	'loop through each record
	Do While db.NextRow
		'get the values for each record
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
	txtId.Value = ""
	avtplAbbreviation.Placeholder = ""
	txtFullname.Value = ""
	txtLetter.Value = ""
	txtMobile.Value = ""
	txtTelephone.Value = ""
	txtEmailaddress.Value = ""
	cboCategory.Value = ""
	cboGender.Value = ""
	txtStreetaddress1.Value = ""
	txtStreetaddress2.Value = ""
	txtCity.Value = ""
	txtState.Value = ""
	cboProvince.Value = ""
	txtPostalcode.Value = ""
    
End Sub
'***** executed to get the validity of the required components
Private Sub GetContactsValid As Boolean
	'***** executed to get the validity of the required components
    
	If txtId.IsBlank Then Return False
	If txtFullname.IsBlank Then Return False
	If txtMobile.IsBlank Then Return False
	If txtEmailaddress.IsBlank Then Return False
	If cboCategory.IsBlank Then Return False
	If cboGender.IsBlank Then Return False
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
	'the record is not valid then dont continue
	If bValid = False Then Return
	App.pagepause
	Dim sId As String = txtId.Value
'	Dim sAbbreviation As String = avtplAbbreviation.Placeholder
	Dim sFullname As String = txtFullname.Value
	Dim sLetter As String = App.UI.Left(sFullname, 1)
	Dim sMobile As String = txtMobile.Value
	Dim sTelephone As String = txtTelephone.Value
	Dim sEmailaddress As String = txtEmailaddress.Value
	Dim sCategory As String = cboCategory.Value
	Dim sGender As String = cboGender.Value
	Dim sStreetaddress1 As String = txtStreetaddress1.Value
	Dim sStreetaddress2 As String = txtStreetaddress2.Value
	Dim sCity As String = txtCity.Value
	Dim sState As String = txtState.Value
	Dim sProvince As String = cboProvince.Value
	Dim sPostalcode As String = txtPostalcode.Value
    
	'open the database and save the record
	Dim db As SDUIPouchDB
	db.Initialize(Me, "contacts", Main.ServerDB, "contacts")
	db.SetSchemaFromDataModel(App.DataModels)
	'db.ShowLogs = True
	'pass the map record
	'Prepare database to save
	db.PrepareRecord
	db.SetField("id", sId)
	db.SetField("fullname", sFullname)
	db.SetField("letter", sLetter)
	db.SetField("mobile", sMobile)
	db.SetField("telephone", sTelephone)
	db.SetField("emailaddress", sEmailaddress)
	db.SetField("category", sCategory)
	db.SetField("gender", sGender)
	db.SetField("streetaddress1", sStreetaddress1)
	db.SetField("streetaddress2", sStreetaddress2)
	db.SetField("city", sCity)
	db.SetField("state", sState)
	db.SetField("province", sProvince)
	db.SetField("postalcode", sPostalcode)
    
	Select Case Mode
		Case "C"
			'we are in record creating mode
			'ensure that there are no duplicates for 'Full Name'
			Dim existingID As String = BANano.Await(db.READ_ID_BY("fullname", sFullname))
			If existingID <> "" Then
				'the record exists
				App.PageResume
				BANano.Await(App.ShowSwalErrorWait("Contact Exists", "A record with a matching <b>Full Name</b> already exists, cannot proceed.", "Ok"))
				Return
			End If
			'ensure that there are no duplicates for 'Mobile'
			Dim existingID As String = BANano.Await(db.READ_ID_BY("mobile", sMobile))
			If existingID <> "" Then
				'the record exists
				App.PageResume
				BANano.Await(App.ShowSwalErrorWait("Contact Exists", "A record with a matching <b>Mobile</b> already exists, cannot proceed.", "Ok"))
				Return
			End If
			'ensure that there are no duplicates for 'Telephone'
			Dim existingID As String = BANano.Await(db.READ_ID_BY("telephone", sTelephone))
			If existingID <> "" Then
				'the record exists
				App.PageResume
				BANano.Await(App.ShowSwalErrorWait("Contact Exists", "A record with a matching <b>Telephone</b> already exists, cannot proceed.", "Ok"))
				Return
			End If
			'ensure that there are no duplicates for 'Email Address'
			Dim existingID As String = BANano.Await(db.READ_ID_BY("emailaddress", sEmailaddress))
			If existingID <> "" Then
				'the record exists
				App.PageResume
				BANano.Await(App.ShowSwalErrorWait("Contact Exists", "A record with a matching <b>Email Address</b> already exists, cannot proceed.", "Ok"))
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
		BANano.Await(App.ShowSwalSuccessWait("Contact", "The contact has been saved.", "Ok"))
	Else
		'the record could not be processed, do not continue
		BANano.Await(App.ShowSwalErrorWait("Contact", "The contact could not be saved, please try again.", "Ok"))
		Return
	End If
	'Close the modal
	mdlContacts.Close
	App.PagePause
	'reload the records from the database
	BANano.Await(MountContacts(False))
	BANano.Await(tblContacts.ShowLastAccessedPage)
	App.PageResume
End Sub
'mdlContacts dialog 'No' click
Private Sub mdlContacts_No_Click (e As BANanoEvent)
	'Executed when mdlContacts dialog 'No' is clicked
	e.PreventDefault
	'Close the modal
	mdlContacts.Close
	App.PagePause
	'reload the data from the database
	BANano.Await(MountContacts(False))
	BANano.Await(tblContacts.ShowLastAccessedPage)
	App.PageResume
End Sub
Private Sub BuildContactsModal
	'executed to build the Modal Dialog structure for data entry
	'set the height of the modal
	mdlContacts.Height = "fit"
	'set the width of the modal
	mdlContacts.Width = "800px"
	'set the modal to be a card type, this makes the modal to be inline
	mdlContacts.IsCard = False
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
	mdlContacts.Form.AddColumns2x6
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns12
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns12
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns2x6
	mdlContacts.Form.AddRows1
	mdlContacts.Form.AddColumns2x6
	BANano.Await(mdlContacts.Form.BuildGrid)
    Dim rCnt As Int = 0
	For rCnt = 1 To 9
		mdlContacts.Form.Cell(rCnt, 1).PaddingAXYTBLR = "y=2"
	Next
	mdlContacts.Form.Cell(3, 2).PaddingAXYTBLR = "y=2"
	mdlContacts.Form.Cell(5, 2).PaddingAXYTBLR = "y=2"
	mdlContacts.Form.Cell(8, 2).PaddingAXYTBLR = "y=2"
	mdlContacts.Form.Cell(9, 2).PaddingAXYTBLR = "y=2"
	
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
	txtId.ParentID = mdlContacts.Form.CellID("1", "1")
	BANano.Await(txtId.AddComponent)
	'Add avtplAbbreviation
	avtplAbbreviation.Initialize(Me, "avtplAbbreviation", "avtplAbbreviation")
	avtplAbbreviation.AvatarType = "placeholder"
	avtplAbbreviation.Mask = App.MASK_CIRCLE
	avtplAbbreviation.Ring = False
	avtplAbbreviation.RingColor = "primary"
	avtplAbbreviation.RingOffset = "2"
	avtplAbbreviation.RingOffsetColor = "base-100"
	avtplAbbreviation.BackgroundColor = ""
	avtplAbbreviation.Placeholder = ""
	avtplAbbreviation.TextColor = ""
	avtplAbbreviation.TextSize = "lg"
	avtplAbbreviation.Size = "40px"
	avtplAbbreviation.AvatarColor = True
	avtplAbbreviation.Visible = True
	avtplAbbreviation.MarginAXYTBLR = ""
	avtplAbbreviation.PaddingAXYTBLR = ""
	avtplAbbreviation.ParentID = mdlContacts.Form.CellID("1", "1")
	BANano.Await(avtplAbbreviation.AddComponent)
	'Add txtFullname
	txtFullname.Initialize(Me, "txtFullname", "txtFullname")
	txtFullname.InputType = "legend"
	txtFullname.TypeOf = "text"
	txtFullname.Label = "Full Name"
	txtFullname.value = ""
	txtFullname.Required = True
	txtFullname.PrependIcon = ""
	txtFullname.AppendIcon = ""
	txtFullname.Enabled = True
	txtFullname.Visible = True
	txtFullname.ReadOnly = False
	txtFullname.BackgroundColor = ""
	txtFullname.Border = False
	txtFullname.BorderColor = ""
	txtFullname.MarginAXYTBLR = ""
	txtFullname.PaddingAXYTBLR = ""
	txtFullname.ParentID = mdlContacts.Form.CellID("2", "1")
	BANano.Await(txtFullname.AddComponent)
	'Add txtLetter
	txtLetter.Initialize(Me, "txtLetter", "txtLetter")
	txtLetter.InputType = "legend"
	txtLetter.TypeOf = "text"
	txtLetter.Label = "Letter"
	txtLetter.value = ""
	txtLetter.Required = False
	txtLetter.PrependIcon = ""
	txtLetter.AppendIcon = ""
	txtLetter.Enabled = True
	txtLetter.Visible = False
	txtLetter.ReadOnly = False
	txtLetter.BackgroundColor = ""
	txtLetter.Border = False
	txtLetter.BorderColor = ""
	txtLetter.MarginAXYTBLR = ""
	txtLetter.PaddingAXYTBLR = ""
	txtLetter.ParentID = mdlContacts.Form.CellID("1", "1")
	BANano.Await(txtLetter.AddComponent)
	'Add txtMobile
	txtMobile.Initialize(Me, "txtMobile", "txtMobile")
	txtMobile.InputType = "legend"
	txtMobile.TypeOf = "tel"
	txtMobile.Label = "Mobile"
	txtMobile.value = ""
	txtMobile.Required = True
	txtMobile.PrependIcon = ""
	txtMobile.AppendIcon = ""
	txtMobile.Enabled = True
	txtMobile.Visible = True
	txtMobile.ReadOnly = False
	txtMobile.BackgroundColor = ""
	txtMobile.Border = False
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
	txtTelephone.value = ""
	txtTelephone.Required = False
	txtTelephone.PrependIcon = ""
	txtTelephone.AppendIcon = ""
	txtTelephone.Enabled = true
	txtTelephone.Visible = true
	txtTelephone.ReadOnly = false
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
	txtEmailaddress.value = ""
	txtEmailaddress.Required = true
	txtEmailaddress.PrependIcon = ""
	txtEmailaddress.AppendIcon = ""
	txtEmailaddress.Enabled = true
	txtEmailaddress.Visible = true
	txtEmailaddress.ReadOnly = false
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
	cboCategory.ValuesAsIs = false
	cboCategory.Value = ""
	cboCategory.Required = true
	cboCategory.PrependIcon = ""
	cboCategory.AppendIcon = "./assets/plus-solid.svg"
	cboCategory.AppendVisible = True
	cboCategory.Enabled = true
	cboCategory.Visible = true
	cboCategory.BackgroundColor = ""
	cboCategory.Border = false
	cboCategory.BorderColor = ""
	cboCategory.MarginAXYTBLR = ""
	cboCategory.PaddingAXYTBLR = ""
	cboCategory.ParentID = mdlContacts.Form.CellID("5", "1")
	BANano.Await(cboCategory.AddComponent)
	'Add cboGender
	cboGender.Initialize(Me, "cboGender", "cboGender")
	cboGender.InputType = "legend"
	cboGender.Label = "Gender"
	cboGender.Placeholder = "Select Gender"
	cboGender.Options = "Male:Male;Female:Female"
	cboGender.ValuesAsIs = true
	cboGender.Value = ""
	cboGender.Required = true
	cboGender.PrependIcon = ""
	cboGender.AppendIcon = ""
	cboGender.Enabled = true
	cboGender.Visible = true
	cboGender.BackgroundColor = ""
	cboGender.Border = false
	cboGender.BorderColor = ""
	cboGender.MarginAXYTBLR = ""
	cboGender.PaddingAXYTBLR = ""
	cboGender.ParentID = mdlContacts.Form.CellID("5", "2")
	BANano.Await(cboGender.AddComponent)
	'Add txtStreetaddress1
	txtStreetaddress1.Initialize(Me, "txtStreetaddress1", "txtStreetaddress1")
	txtStreetaddress1.InputType = "legend"
	txtStreetaddress1.TypeOf = "text"
	txtStreetaddress1.Label = "Street Address 1"
	txtStreetaddress1.value = ""
	txtStreetaddress1.Required = True
	txtStreetaddress1.PrependIcon = ""
	txtStreetaddress1.AppendIcon = ""
	txtStreetaddress1.Enabled = True
	txtStreetaddress1.Visible = True
	txtStreetaddress1.ReadOnly = False
	txtStreetaddress1.BackgroundColor = ""
	txtStreetaddress1.Border = False
	txtStreetaddress1.BorderColor = ""
	txtStreetaddress1.MarginAXYTBLR = ""
	txtStreetaddress1.PaddingAXYTBLR = ""
	txtStreetaddress1.ParentID = mdlContacts.Form.CellID("6", "1")
	BANano.Await(txtStreetaddress1.AddComponent)
	'Add txtStreetaddress2
	txtStreetaddress2.Initialize(Me, "txtStreetaddress2", "txtStreetaddress2")
	txtStreetaddress2.InputType = "legend"
	txtStreetaddress2.TypeOf = "text"
	txtStreetaddress2.Label = "Street Address 2"
	txtStreetaddress2.value = ""
	txtStreetaddress2.Required = False
	txtStreetaddress2.PrependIcon = ""
	txtStreetaddress2.AppendIcon = ""
	txtStreetaddress2.Enabled = True
	txtStreetaddress2.Visible = True
	txtStreetaddress2.ReadOnly = False
	txtStreetaddress2.BackgroundColor = ""
	txtStreetaddress2.Border = False
	txtStreetaddress2.BorderColor = ""
	txtStreetaddress2.MarginAXYTBLR = ""
	txtStreetaddress2.PaddingAXYTBLR = ""
	txtStreetaddress2.ParentID = mdlContacts.Form.CellID("7", "1")
	BANano.Await(txtStreetaddress2.AddComponent)
	'Add txtCity
	txtCity.Initialize(Me, "txtCity", "txtCity")
	txtCity.InputType = "legend"
	txtCity.TypeOf = "text"
	txtCity.Label = "City"
	txtCity.value = ""
	txtCity.Required = True
	txtCity.PrependIcon = ""
	txtCity.AppendIcon = ""
	txtCity.Enabled = True
	txtCity.Visible = true
	txtCity.ReadOnly = false
	txtCity.BackgroundColor = ""
	txtCity.Border = false
	txtCity.BorderColor = ""
	txtCity.MarginAXYTBLR = ""
	txtCity.PaddingAXYTBLR = ""
	txtCity.ParentID = mdlContacts.Form.CellID("8", "1")
	BANano.Await(txtCity.AddComponent)
	'Add txtState
	txtState.Initialize(Me, "txtState", "txtState")
	txtState.InputType = "legend"
	txtState.TypeOf = "text"
	txtState.Label = "State"
	txtState.value = ""
	txtState.Required = False
	txtState.PrependIcon = ""
	txtState.AppendIcon = ""
	txtState.Enabled = True
	txtState.Visible = True
	txtState.ReadOnly = False
	txtState.BackgroundColor = ""
	txtState.Border = False
	txtState.BorderColor = ""
	txtState.MarginAXYTBLR = ""
	txtState.PaddingAXYTBLR = ""
	txtState.ParentID = mdlContacts.Form.CellID("8", "2")
	BANano.Await(txtState.AddComponent)
	'Add cboProvince
	cboProvince.Initialize(Me, "cboProvince", "cboProvince")
	cboProvince.InputType = "legend"
	cboProvince.Label = "Province"
	cboProvince.Placeholder = "Select Province"
	cboProvince.Options = ""
	cboProvince.ValuesAsIs = False
	cboProvince.Value = ""
	cboProvince.Required = True
	cboProvince.PrependIcon = ""
	cboProvince.AppendIcon = "./assets/plus-solid.svg"
	cboProvince.AppendVisible = True
	cboProvince.Enabled = True
	cboProvince.Visible = True
	cboProvince.BackgroundColor = ""
	cboProvince.Border = False
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
	txtPostalcode.value = ""
	txtPostalcode.Required = True
	txtPostalcode.PrependIcon = ""
	txtPostalcode.AppendIcon = ""
	txtPostalcode.Enabled = True
	txtPostalcode.Visible = True
	txtPostalcode.ReadOnly = False
	txtPostalcode.BackgroundColor = ""
	txtPostalcode.Border = False
	txtPostalcode.BorderColor = ""
	txtPostalcode.MarginAXYTBLR = ""
	txtPostalcode.PaddingAXYTBLR = ""
	txtPostalcode.ParentID = mdlContacts.Form.CellID("9", "2")
	BANano.Await(txtPostalcode.AddComponent)
    
End Sub
Private Sub cboCategory_append (e As BANanoEvent)
	'executed when cboCategory append button is clicked
	e.preventdefault
	'use a sweet-alert2 dialog to ask the user for a Category
	Dim sname As String = BANano.Await(App.ShowSwalInputWait("Add Category", "Please type a new category to add below.", "Save", "Cancel"))
	'trim the entered content
	sname = sname.Trim
	'if the content is blank do nothing
	If sname = "" Then Return
	'convert the value to propercase
	sname = App.UI.ProperCase(sname)
	'something has been specified, add it to the database
	App.PagePause
	'define the database connection
	Dim tblX As SDUIPouchDB
	tblX.Initialize(Me, "categories", Main.ServerDB, "categories")
	'tblX.ShowLogs = True
	'set the schema from the data model
	tblX.SetSchemaFromDataModel(App.DataModels)
	'ensure that there are no duplicates
	Dim aid As String = BANano.Await(tblX.READ_ID_BY("name", sname))
	If aid <> "" Then
		'the record exists
		cboCategory.Value = aid
	Else
		'prepare to add a record
		tblX.PrepareRecord
		'assign fields to add and their values
		tblX.SetField("id", tblX.NextID)
		tblX.SetField("name", sname)
		'execute the INSERT in the database
		aid = BANano.Await(tblX.CREATE)
		If aid <> "" Then
			'reload the select with new records
			BANano.Await(LoadCategories)
			'update the select
			BANano.Await(cboCategory.SetOptionsFromMap(CategoriesObject))
			'show the value just added
			cboCategory.Value = aid
		End If
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
	'convert the value to propercase
	sname = App.UI.ProperCase(sname)
	'something has been specified, add it to the database
	App.PagePause
	'define the database connection
	Dim tblX As SDUIPouchDB
	tblX.Initialize(Me, "provinces", Main.ServerDB, "provinces")
	'tblX.ShowLogs = True
	'set the schema from the data model
	tblX.SetSchemaFromDataModel(App.DataModels)
	'ensure that there are no duplicates
	Dim aid As String = BANano.Await(tblX.READ_ID_BY("name", sname))
	If aid <> "" Then
		'the record exists
		cboProvince.Value = aid
	Else
		'prepare to add a record
		tblX.PrepareRecord
		'assign fields to add and their values
		tblX.SetField("id", tblX.NextID)
		tblX.SetField("name", sname)
		'execute the INSERT in the database
		aid = BANano.Await(tblX.CREATE)
		If aid <> "" Then
			'reload the select with new records
			BANano.Await(LoadProvinces)
			'update the select
			BANano.Await(cboProvince.SetOptionsFromMap(ProvincesObject))
			'show the value just added
			cboProvince.Value = aid
		End If
	End If
	App.PageResume
End Sub
'***** executed to set fake data
Private Sub BuildContactsFakeData
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
	'store the field name and the refered field to get content to use for abbreviation
	lstAbbreviations.Put("abbreviation", "fullname")
	'add fullname so that it has fake data
	fakeStructure.Put("fullname", "fullname")
	'add mobile so that it has fake data
	fakeStructure.Put("mobile", "phone")
	'add telephone so that it has fake data
	fakeStructure.Put("telephone", "phone")
	'add emailaddress so that it has fake data
	fakeStructure.Put("emailaddress", "email")
	'add category so that it has fake data
	fakeStructure.Put("category", "contactcategory")
	'add gender so that it has fake data
	fakeStructure.Put("gender", "gender")
	'add streetaddress1 so that it has fake data
	fakeStructure.Put("streetaddress1", "street")
	'add streetaddress2 so that it has fake data
	fakeStructure.Put("streetaddress2", "street2")
	'add city so that it has fake data
	fakeStructure.Put("city", "city")
	'add state so that it has fake data
	fakeStructure.Put("state", "state")
	'add province so that it has fake data
	fakeStructure.Put("province", "province")
	'add postalcode so that it has fake data
	fakeStructure.Put("postalcode", "number")
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
	avtplAbbreviation.Placeholder = fakeRec.Get("abbreviation")
	txtFullname.value = fakeRec.Get("fullname")
	txtLetter.value = fakeRec.Get("letter")
	txtMobile.value = fakeRec.Get("mobile")
	txtTelephone.value = fakeRec.Get("telephone")
	txtEmailaddress.value = fakeRec.Get("emailaddress")
	cboCategory.value = fakeRec.Get("category")
	cboGender.value = fakeRec.Get("gender")
	txtStreetaddress1.value = fakeRec.Get("streetaddress1")
	txtStreetaddress2.value = fakeRec.Get("streetaddress2")
	txtCity.value = fakeRec.Get("city")
	txtState.value = fakeRec.Get("state")
	cboProvince.value = fakeRec.Get("province")
	txtPostalcode.value = fakeRec.Get("postalcode")
    
End Sub