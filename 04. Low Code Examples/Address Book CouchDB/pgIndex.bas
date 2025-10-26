B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Public BANano As BANano		'ignore
	Public App As SDUI5App
	Private appdrawer As SDUI5Drawer		'ignore
	Private appnavbar As SDUI5NavBar		'ignore
	Private pageView As SDUI5Container	'ignore
	Private drawermenu As SDUI5Menu		'ignore
	Private rightdrawer As SDUI5Drawer		'ignore
	Private bottomdrawer As SDUI5BottomDrawer		'ignore
	Private btnSync As SDUI5Button				'ignore
End Sub

Sub Initialize					'ignoreDeadCode
	BANano.Await(App.Initialize(Me))
	'load the main layout to the body of the page
	BANano.LoadLayoutAppend(App.Here, "baselayout")
	appnavbar.Title = "My Address Book"
	'load these universally
	BANano.Await(AddDatabaseSchemas)
	BANano.Await(App.UsesFontAwesome)
	BANano.Await(App.UsesExcel)
	BANano.Await(App.UsesPocketBase)
	BANano.Await(App.UsesColorWheel)
	BANano.Await(App.UsesDatePicker)
	BANano.Await(App.UsesInfoBox)
'	BANano.Await(App.UsesOfficeRibbon)
'	BANano.Await(App.UsesQRCode)
'	BANano.Await(App.UsesPDFLib)
'	BANano.Await(App.UsesMath)
	BANano.Await(App.UsesToastChart)
	BANano.Await(App.UsesPouchDB)
'	'set the font of the app
	'create the drawer menu
	BANano.Await(CreateDrawerMenu)
	'add any other page not added to the drawer menu
	'show the sign in page
	'IsAuthenticated(False)
	App.pageresume
	pgDashboard.show(App)
End Sub

'fired when a drawer is closed / opened
Private Sub appdrawer_Opened (Status As Boolean)
	'the hamburger is a swap so open / close it when overlay is clicked also
	appnavbar.Hamburger.Active = Status
End Sub

'define the menu items fo dawe
Sub CreateDrawerMenu
	drawermenu.AddItemChild("", "contacts-dashboard", "./assets/gauge-high-solid.svg", "Dashboard")
	drawermenu.AddItemChild("", "contacts-list", "./assets/users-solid-full.svg", "Contacts")
	drawermenu.AddItemChild("", "categories-list", "./assets/gears-solid-full.svg", "Categories")
	drawermenu.AddItemChild("", "provinces-list", "./assets/flag-regular-full.svg", "Provinces")
End Sub

Sub AddDatabaseSchemas
	App.AddDataModel("categories", "id", False)
	App.AddDataModelStrings("categories", Array("id","name","color"))
	'
	App.AddDataModel("provinces", "id", False)
	App.AddDataModelStrings("provinces", Array("id","name"))
	'
	App.AddDataModel("contacts", "id", False)
	'these fields store Strings values
	App.AddDataModelStrings("contacts", Array("id","fullname","letter","mobile","telephone","emailaddress","category","gender","streetaddress1","streetaddress2","city","state","province","postalcode"))
End Sub

'the hamburger is a swap button, open / close the drawer depending
Private Sub appnavbar_BurgerClick (value As Boolean)
	appdrawer.OpenDrawer(value)
End Sub

Private Sub drawermenu_ItemClick (item As String)
	appnavbar.Visible = True
	'close the drawer
	appdrawer.OpenDrawer(False)
	'close the swap button
	appnavbar.Hamburger.Active = False
	pageView.PaddingAXYTBLR = "a:10px"
	App.PageViewToFullScreenHeight(Array("appnavbar"))
	'
	Dim sprefix As String = App.UI.MvField(item, 1, "-")
	Dim ssuffix As String = App.UI.MvField(item, 2, "-")
	'only mark this item as active
	BANano.Await(drawermenu.SetItemActive(item))
	'		
	Select Case sprefix
	Case "categories"
		Select Case ssuffix
		Case "list"	
			pgCategories.action = "L"
			pgCategories.Show(App)
			Return
		End Select
	Case "provinces"
		Select Case ssuffix
		Case "list"
			pgProvinces.Action = "L"
			pgProvinces.Show(App)
			Return
		End Select
	Case "contacts"
		Select Case ssuffix
		Case "list"
			pgContacts.Action = "L"
			pgContacts.Show(App)
			Return
		Case "dashboard"
			pgDashboard.Show(App)		
			Return	
		End Select
	End Select
End Sub

Sub PageViewPaddingTo10px
	pageView.PaddingAXYTBLR = "a:10px"
End Sub

Private Sub btnLogOff_Click (e As BANanoEvent)
'	'hide stuff, fix the height fist
'	IsAuthenticated(False)
'	'show login
'	pgSignIn.Show(app)
End Sub

'update the title of the page
Sub UpdateTitle(s As String)
	appnavbar.Title = s
End Sub

Sub UpdateUserName(s As String)		'ignore
'	lblUserName.Caption = s
End Sub

Sub UpdateUserAvatar(s As String)	'ignore
'	userAvatar.Src = s
End Sub

Private Sub appnavbar_TitleClick (e As BANanoEvent)
	e.PreventDefault
	App.ShowToastSuccess("Title Click!")
End Sub

Sub ShowNavBar
	appnavbar.Visible = True
End Sub

Sub HideNavBar
	appnavbar.Visible = False
End Sub

Sub OpenDrawer
	appdrawer.OpenDrawer(True)
End Sub

Sub CloseDrawer
	appdrawer.OpenDrawer(False)
End Sub

Sub CloseDrawerByForce
	appdrawer.ForceClose
End Sub

Sub GetSearchValue As String
	Dim searchString As String = appnavbar.SearchValue
	Return searchString
End Sub

Sub SetSearchValue(s As String)
	appnavbar.SearchValue = s
End Sub

Private Sub appnavbar_SearchClick (Value As String)
	App.ShowSwalSuccess($"You entered search: '${Value}'"$)
End Sub

Private Sub appnavbar_SearchKeyUp (Value As String)
	Log(Value)
End Sub

Private Sub appnavbar_SearchClear (e As BANanoEvent)
	App.ShowSwalSuccess($"Search was cleared!"$)
End Sub

Sub OpenRightDrawer
	rightdrawer.OpenDrawer(True)
End Sub

Sub CloseRightDrawer
	rightdrawer.OpenDrawer(False)
End Sub

Sub CloseRightDrawerByForce
	rightdrawer.ForceClose
End Sub

Sub OpenBottomDrawer
	bottomdrawer.ShowOnBreakPoint(0.5)
End Sub

Sub OpenBottomDrawerOn(bp As Double)
	bottomdrawer.ShowOnBreakPoint(bp)
End Sub

Sub CloseBottomDrawer
	bottomdrawer.Hide
End Sub

Private Sub btnSync_Click (e As BANanoEvent)
	e.PreventDefault
	Dim bresp As Boolean = BANano.Await(App.ShowSwalConfirmWait("Sync", "Do you want to sync the database now?", "Yes", "No"))
	If bresp = False Then Return
	'
	Dim collections As List
	collections.Initialize 
	collections.AddAll(Array("contacts", "provinces", "categories"))
	For Each k As String In collections
		App.pagepause
		Dim db As SDUIPouchDB
		db.Initialize(Me, "db", Main.ServerDB, k)
		BANano.Await(db.ConnectRemote(Main.ServerIP, Main.ServerPort, Main.AdminUser, Main.AdminPwd, Main.ServerDB, k))
		Dim res As RelaxSync = BANano.Await(db.Sync(False, True))
		App.PageResume
	BANano.Await(App.ShowSwalSuccessWait($"Sync Status: ${k}"$, $"Documents Pulled: ${res.PullDocs}, Pulled Status: ${res.PullStatus}</br></br>Documents Pushed: ${res.PushDocs}, Pushed Status: ${res.PushStatus}"$, "Ok"))
	Next
End Sub