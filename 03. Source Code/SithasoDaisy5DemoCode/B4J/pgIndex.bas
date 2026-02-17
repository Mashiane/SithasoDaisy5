B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=9.8
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Public BANano As BANano		'ignore
	Public App As SDUI5App
	Private appdrawer As SDUI5Drawer		'ignore
	Private appnavbar As SDUI5NavBar		'ignore
	Private pageView As SDUI5Container		'ignore
	Private drawermenu As SDUI5Menu			'ignore
	Private drawerNav As SDUI5NavBar		'ignore
	Private draweruser As SDUI5DrawerUser	'ignore
	Private bottomdrawer As SDUI5BottomDrawer	'ignore
	Private rightdrawer As SDUI5Drawer			'ignore
	Private drawerbody As SDUI5Panel			'ignore
	Private lblName As SDUI5Text				'ignore
	Private tglTheme As SDUI5Toggle			'ignore
End Sub

Sub Initialize					'ignoreDeadCode
	BANano.Await(App.Initialize(Me))
	'add google adnsese
	App.AddGoogleAdSenseURL("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3620968576660116")
	'load these universally
	BANano.Await(App.UsesColorWheel)
	BANano.Await(App.UsesDatePicker)
	BANano.Await(App.UsesJSONQuery)
	BANano.Await(App.UsesFontAwesome)
	BANano.Await(App.UsesGenderChart)
	BANano.Await(App.UsesApex)
	BANano.Await(App.UsesQuill)
	BANano.Await(App.UsesGifPlayer)
	'load the main layout to the body of the page
	appdrawer.Initialize(Me, "appdrawer", "appdrawer")
	appdrawer.ParentID = App.Here
	appdrawer.MdOpen = True
	BANano.Await(appdrawer.AddComponent)
	'
	drawerNav.Initialize(Me, "drawerNav", "drawerNav")
	drawerNav.ParentID = "appdrawer_sidecontent"
	drawerNav.BackgroundColor = "base-200"
	'drawerNav.Gradient = ""
	'drawerNav.GradientActive = False
	drawerNav.HasBurger = False
	drawerNav.LogoMask = "squircle"
	drawerNav.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	drawerNav.Shadow = "lg"
	drawerNav.Title = "SithasoDaisy 5 Beta 11"
	drawerNav.Width = "full"
	BANano.Await(drawerNav.AddComponent)
	'
	appnavbar.Initialize(Me, "appnavbar", "appnavbar")
	appnavbar.ParentID = "appdrawer_content"
	appnavbar.BackgroundColor = "base-200"
	'appnavbar.Gradient = ""
	'appnavbar.GradientActive = False
	appnavbar.HasLogo = True
	appnavbar.HideHamburgerOnLargeScreen = True
	appnavbar.LogoHeight = "40px"
	appnavbar.LogoMask = "squircle"
	appnavbar.LogoWidth = "40px"
	appnavbar.Shadow = "lg"
	appnavbar.Title = "Welcome to SithasoDaisy5 Beta 9"
	appnavbar.Width = "full"
	BANano.Await(appnavbar.AddComponent)
	'
	pageView.Initialize(Me, "pageview", "pageview")
	pageView.ParentID = "appdrawer_content"
	pageView.Container = False
	'pageview.Gradient = ""
	'pageview.GradientActive = False
	BANano.Await(pageView.AddComponent)
	'
	drawerbody.Initialize(Me, "drawerbody", "drawerbody")
	drawerbody.ParentID = "appdrawer_sidecontent"
	drawerbody.BackgroundColor = "base-100"
	drawerbody.Flexbox = True
	drawerbody.FlexDirection = "col"
	drawerbody.FlexGrow = "1"
	drawerbody.PaddingAXYTBLR = "a=?; x=?; y=?; t=4; b=?; l=?; r=?"
	BANano.Await(drawerbody.AddComponent)
	'
	drawermenu.Initialize(Me, "drawermenu", "drawermenu")
	drawermenu.ParentID = "drawerbody"
	drawermenu.BackgroundColor = "base-100"
	drawermenu.MinHeight = ""
	drawermenu.Classes = "px-4 py-0"
	drawermenu.ItemClasses = ""
	drawermenu.ItemStyles = ""
	drawermenu.RoundedBox = False
	drawermenu.RoundedItems = False
	drawermenu.TextColor = "base-content"
	drawermenu.Width = "full"
	BANano.Await(drawermenu.AddComponent)
	'
	draweruser.Initialize(Me, "draweruser", "draweruser")
	draweruser.ParentID = "appdrawer_sidecontent"
	draweruser.Avatar = "./assets/mashy.jpg"
	draweruser.AvatarShape = "squircle"
	draweruser.EmailAddress = "mbanga [dot] anele [at] ..."
	draweruser.UserName = "Anele Mbanga (Mashy)"
	BANano.Await(draweruser.AddComponent)
	'
	rightdrawer.Initialize(Me, "rightdrawer", "rightdrawer")
	rightdrawer.ParentID = "appdrawer_content"
	rightdrawer.RightSide = True
	rightdrawer.RoundedBottomLeft = "xl"
	rightdrawer.RoundedTopLeft = "xl"
	rightdrawer.Width = "600px"
	BANano.Await(rightdrawer.AddComponent)
	'
	bottomdrawer.Initialize(Me, "bottomdrawer", "bottomdrawer")
	bottomdrawer.ParentID = "appdrawer_content"
	bottomdrawer.BackgroundColor = "bg-base-100"
	bottomdrawer.Breakpoints = "0;0.1;0.2;0.3;0.4;0.5;0.7;0.8;0.9;0.95;1"
	BANano.Await(bottomdrawer.AddComponent)
	'
	lblName.Initialize(Me, "lblName", "lblName")
	lblName.ParentID = "appnavbar_right"
	lblName.ApplyDefaults = False
	lblName.Italic = True
	'lblName.LoremIpsum = False
	lblName.MarginAXYTBLR = "a=?; x=2; y=?; t=?; b=?; l=?; r=?"
	'lblName.Rounded = "none"
	'lblName.Shadow = "none"
	lblName.Text = "Created with love by Mashy"
	lblName.TextTag = "small"
	BANano.Await(lblName.AddComponent)
	'
	tglTheme.Initialize(Me, "tglTheme", "tglTheme")
	tglTheme.ParentID = "appnavbar_right"
	tglTheme.BackgroundColor = ""
	tglTheme.Border = False
	tglTheme.BorderColor = ""
	tglTheme.Color = "primary"
	tglTheme.Label = "Synthwave"
	tglTheme.Legend = ""
	tglTheme.MarginAXYTBLR = "a=?; x=2; y=?; t=?; b=?; l=?; r=?"
	tglTheme.Size = "md"
	tglTheme.ThemeController = True
	tglTheme.ToggleType = "right-label"
	tglTheme.Value = "synthwave"
	BANano.Await(tglTheme.AddComponent)
	
	drawerNav.Title = Main.AppTitle
	BANano.Await(pgTypography.Show)
	BANano.Await(AddDatabaseSchemas)
	
	'set the font of the app
	'app.Font = "font-sans"
	'link this app to the drawer, this is needed
	'when adding pages to side nav
	'appdrawer.app = app
	'create the drawer menu
	BANano.Await(CreateDrawerMenu)
	'add any other page not added to the drawer menu
	'AddPages
	'show the sign in page
	'IsAuthenticated(False)
'	App.AddJavaScriptModuleURL("https://cdn.jsdelivr.net/npm/@weblogin/trendchart-elements@1.1.0/dist/index.js/+esm", True)
'	App.AddJavaScriptModuleURL("./scripts/trendchart.js", True)
	App.pageresume
End Sub

'fired when a drawer is closed / opened
Private Sub appdrawer_Opened (Status As Boolean)
	'the hamburger is a swap so open / close it when overlay is clicked also
	appnavbar.Hamburger.Active = Status
End Sub

Sub AddDatabaseSchemas
	App.AddDataModel("categories", "id", False)
	App.AddDataModelStrings("categories", Array("id","name"))
	'create the table in WebSQL if it does not exist
	Dim dbcategories As SDUIWebSQL
	dbcategories.Initialize(Main.DBName, "categories")
	'dbcategories.ShowLogs = True
	dbcategories.SetSchemaFromDataModel(App.DataModels)
	BANano.Await(dbcategories.SchemaCreateTable)
	'
	App.AddDataModel("provinces", "id", False)
	App.AddDataModelStrings("provinces", Array("id","name"))
	'create the table in WebSQL if it does not exist
	Dim dbprovinces As SDUIWebSQL
	dbprovinces.Initialize(Main.DBName, "provinces")
	'dbprovinces.ShowLogs = True
	dbprovinces.SetSchemaFromDataModel(App.DataModels)
	BANano.Await(dbprovinces.SchemaCreateTable)
	'
	App.AddDataModel("contacts", "id", False)
	App.AddDataModelStrings("contacts", Array("id", "fullname","mobile","telephone","emailaddress","category","streetaddress1","streetaddress2","city","state","province","postalcode"))
	'create the table in WebSQL if it does not exist
	Dim dbcontacts As SDUIWebSQL
	dbcontacts.Initialize(Main.DBName, "contacts")
	'dbcontacts.ShowLogs = True
'	BANano.Await(dbcontacts.DropTable)
	dbcontacts.SetSchemaFromDataModel(App.DataModels)
	BANano.Await(dbcontacts.SchemaCreateTable)
End Sub

'define the menu items fo dawe
Sub CreateDrawerMenu
	drawermenu.AddItemParent("", "wnew", "", "What's New")
	drawermenu.AddItemChild("wnew", "pg-bankcard", "", "Hover 3D Card")
	drawermenu.AddItemChild("wnew", "pg-themeselect", "", "Theme Controller")
	drawermenu.AddItemChild("wnew", "pg-genderchart", "", "Gender Chart")
	drawermenu.AddItemChild("wnew", "pg-apexcharts", "", "Apex Charts")
	drawermenu.AddItemChild("wnew", "pg-devices", "", "Devices")
	drawermenu.AddItemChild("wnew", "pg-quill", "", "Quill Editor")
	drawermenu.AddItemChild("wnew", "pg-gifplayer", "", "GIF Player")
	'
	drawermenu.AddItemParent("", "pages", "", "Pages")
	drawermenu.AddItemChild("pages", "pg-login", "", "Ghost Login")
	
	
	drawermenu.AddItemParent("", "sd5lowcode", "./assets/aperture.svg", "SD5 LowCode Generator")
	drawermenu.AddItemChild("sd5lowcode", "sd5lowcodeopen", "./assets/link-solid.svg", "Open Web App")
	drawermenu.SetItemHref("sd5lowcodeopen", "https://sithaso-daisy5-low-code.vercel.app", "_blank")
	'
	drawermenu.AddItemChild("sd5lowcode", "sd5lowcodeblog", "./assets/link-solid.svg", "Share My Creation")
	drawermenu.SetItemHref("sd5lowcodeblog", "https://www.b4x.com/android/forum/threads/web-sithasodaisy5-low-code-a-source-code-generator-for-your-beautiful-banano-webapps.168619", "_blank")
	'
	drawermenu.AddItemParent("sd5lowcode", "sd5lowcodeblogs", "./assets/database-solid.svg", "CRUD Projects")	
	drawermenu.AddItemChild("sd5lowcodeblogs", "sd5lowcodeaddressbook1", "./assets/link-solid.svg", "BANanoSQL")
	drawermenu.SetItemHref("sd5lowcodeaddressbook1", "https://www.b4x.com/android/forum/threads/web-bananosql-offline-first-relational-address-book-created-with-sithasodaisy5-low-code-generator.168626", "_blank")	'
	drawermenu.AddItemChild("sd5lowcodeblogs", "sd5lowcodeaddressbook2", "./assets/link-solid.svg", "MySQL PHP REST API")
	drawermenu.SetItemHref("sd5lowcodeaddressbook2", "https://www.b4x.com/android/forum/threads/web-sithasodaisy5-low-code-generated-crud-webapp-using-mysql-as-back-end-via-rest-api-php.169111/", "_blank")
	drawermenu.AddItemChild("sd5lowcodeblogs", "sd5lowcodeaddressbook3", "./assets/link-solid.svg", "PocketBase")
	drawermenu.SetItemHref("sd5lowcodeaddressbook3", "https://www.b4x.com/android/forum/threads/web-sithasodaisy5-full-stack-lowcode-generated-address-book-crud-webapp-using-pocketbase-back-end.169088/", "_blank")
	
	drawermenu.AddItemParent("", "crudprojects", "./assets/database-solid.svg", "Database Projects")
	drawermenu.AddItemParent("crudprojects", "bananosql", "", "IndexedDB / BANanoSQL (AlaSQL)")
	drawermenu.AddItemChild("bananosql", "pg-categories", "", "Categories (Modal)")
	drawermenu.AddItemChild("bananosql", "pg-provinces", "", "Provinces (Right Drawer)")
	drawermenu.AddItemChild("bananosql", "pg-contacts", "", "Contacts (Bottom Drawer)")
		
	'
	drawermenu.AddItemParent("crudprojects", "php", "", "PHP")
	drawermenu.AddItemChild("php", "pg-phpsqlite", "", "SQLite REST API")
	drawermenu.AddItemChild("php", "pg-phpmysql", "", "MySQL REST API")
	
'	drawermenu.AddItemParent("", "crudexamples", "./assets/database-solid.svg", "CRUD Projects")
'	drawermenu.AddItemChild("crudexamples", "pg-categories", "", "Categories (Modal)")
'	drawermenu.AddItemChild("crudexamples", "pg-provinces", "", "Provinces (Right Drawer)")
'	drawermenu.AddItemChild("crudexamples", "pg-contacts", "", "Contacts (Bottom Drawer)")
	
	'
	drawermenu.AddItemParent("", "play", "./assets/otter-solid.svg", "PlayGround")
	'drawermenu.AddItemChild("play", "pg-exceltoapp", "", "Excel to WebApp")
	'drawermenu.AddItemChild("play", "pg-tablebuilder", "", "Table Builder")
	'drawermenu.AddItemChild("play", "pg-prefbuilder", "", "Preference Dialog Builder")
	drawermenu.AddItemChild("play", "pg-gridbuilder", "", "TailwindCSS Grid Builder")
	
	drawermenu.AddItemChild("", "pg-typography", "./assets/font-solid.svg", "Typography")
	'
	drawermenu.AddItemParent("", "components", "./assets/gifts-solid.svg", "Components")
	drawermenu.SetItemOpen("components", True)
	
	drawermenu.AddItemParent("components", "actions", "", "Actions")
	drawermenu.AddItemChild("actions", "pg-buttons", "", "Buttons")
	drawermenu.AddItemChild("actions", "pg-fab", "", "FAB")
	drawermenu.AddItemChild("actions", "pg-speeddial", "", "Speed Dial")
	drawermenu.AddItemChild("actions", "pg-dropdown", "", "Dropdown")
	drawermenu.AddItemChild("actions", "pg-modal", "", "Modal")
	drawermenu.AddItemChild("actions", "pg-modalhtml", "", "Modal HTML")
	drawermenu.AddItemChild("actions", "pg-swap", "", "Swap")
		
	drawermenu.AddItemParent("components", "display", "", "Data Display")
	drawermenu.AddItemChild("display", "pg-accordion", "", "Accordion")
	drawermenu.AddItemChild("display", "pg-avatar", "", "Avatar")
	drawermenu.AddItemChild("display", "pg-badge", "", "Badge")
	drawermenu.AddItemChild("display", "pg-card", "", "Card")
	drawermenu.AddItemChild("display", "pg-carousel", "", "Carousel")
	drawermenu.AddItemChild("display", "pg-chatbubble", "", "Chat Bubble")
	drawermenu.AddItemChild("display", "pg-collapse", "", "Collapse")
	drawermenu.AddItemChild("display", "pg-countdown", "", "Countdown")
	drawermenu.AddItemChild("display", "pg-diff", "", "Diff")
	drawermenu.AddItemChild("display", "pg-kbd", "", "Kbd")
	drawermenu.AddItemChild("display", "pg-list", "", "List")
	drawermenu.AddItemChild("display", "pg-stat", "", "Stat")
	drawermenu.AddItemChild("display", "pg-status", "", "Status")
	drawermenu.AddItemChild("display", "pg-timeline", "", "Timeline")
	drawermenu.AddItemChild("display", "pg-hovergallery", "", "Hover Gallery")
	
	'
	drawermenu.AddItemParent("", "tables", "./assets/table-solid.svg", "Tables")
	drawermenu.AddItemChild("tables", "pg-table", "", "Table 1")
	drawermenu.AddItemChild("tables", "pg-table2", "", "Table 2")
	drawermenu.AddItemChild("tables", "pg-table3", "", "Table 3")
	drawermenu.AddItemChild("tables", "pg-tableexpand", "", "Table Expand")
	
	'
	
	drawermenu.AddItemParent("components", "navigation", "", "Navigation")
	drawermenu.AddItemChild("navigation", "pg-breadcrumbs", "", "Breadcrumbs")
	'
	drawermenu.AddItemParent("navigation", "docks", "", "Dock")
	drawermenu.AddItemChild("docks", "pg-dock", "", "Dock")
	drawermenu.AddItemChild("docks", "pg-dockxs", "", "Dock (XS)")
	drawermenu.AddItemChild("docks", "pg-dockcolor", "", "Dock (Color)")
	drawermenu.AddItemChild("navigation", "pg-bottomdrawer", "", "Bottom Drawer")
	drawermenu.AddItemChild("navigation", "pg-link", "", "Link")
	drawermenu.AddItemChild("navigation", "pg-menu", "", "Menu")
	drawermenu.AddItemChild("navigation", "pg-menu1", "", "Menu (More)")
	drawermenu.AddItemChild("navigation", "pg-menutree", "", "Menu Tree")
	drawermenu.AddItemChild("navigation", "pg-navbar", "", "Navbar")
	drawermenu.AddItemChild("navigation", "pg-pagination", "", "Pagination")
	drawermenu.AddItemChild("navigation", "pg-steps", "", "Steps")
	drawermenu.AddItemChild("navigation", "pg-wizard", "", "Wizard")
	drawermenu.AddItemChild("navigation", "pg-tab", "", "Tabs")
	
	drawermenu.AddItemParent("components", "feedback", "", "Feedback")
	drawermenu.AddItemChild("feedback", "pg-alert", "", "Alert")
	drawermenu.AddItemChild("feedback", "pg-loading", "", "Loading")
	drawermenu.AddItemChild("feedback", "pg-progress", "", "Progress")
	drawermenu.AddItemChild("feedback", "pg-radialprogress", "", "Radial Progress")
	drawermenu.AddItemChild("feedback", "pg-skeleton", "", "Skeleton")
	drawermenu.AddItemChild("feedback", "pg-toast", "", "Toast")
	drawermenu.AddItemChild("feedback", "pg-tooltip", "", "Tooltip")
	'
	drawermenu.AddItemParent("components", "dinput", "", "Data Input")
	drawermenu.AddItemChild("dinput", "pg-datetimeline", "", "Calendars")
	drawermenu.AddItemChild("dinput", "pg-checkbox", "./assets/square-check-regular.svg", "Checkbox")
	drawermenu.AddItemChild("dinput", "pg-advancedgroupselect", "", "Advanced CheckBox Group")
	drawermenu.AddItemChild("dinput", "pg-fieldset", "", "Fieldset")
	drawermenu.AddItemChild("dinput", "pg-fileinput", "", "File Input")
	drawermenu.AddItemChild("dinput", "pg-filter", "", "Filter")
	drawermenu.AddItemChild("dinput", "pg-label", "", "Label")
	drawermenu.AddItemChild("dinput", "pg-radio", "", "Radio")
	drawermenu.AddItemChild("dinput", "pg-range", "", "Range")
	drawermenu.AddItemChild("dinput", "pg-rating", "", "Rating")
	drawermenu.AddItemChild("dinput", "pg-select", "", "Select")
	drawermenu.AddItemChild("dinput", "pg-groupselect", "", "Group Select")
	drawermenu.AddItemChild("dinput", "pg-input", "", "Text Box")
	drawermenu.AddItemChild("dinput", "pg-colorpicker", "", "Text Box - ColorPicker")
	drawermenu.AddItemChild("dinput", "pg-otp", "", "Text Box - OTP")
	drawermenu.AddItemChild("dinput", "pg-textarea", "", "Text Area")
	drawermenu.AddItemChild("dinput", "pg-toggle", "", "Toggle")
	drawermenu.AddItemChild("dinput", "pg-validator", "", "Validation")
	'
	drawermenu.AddItemParent("components", "layout", "", "Layout")
	drawermenu.AddItemChild("layout", "pg-grid", "", "Grid")
	drawermenu.AddItemChild("layout", "pg-gridcode", "", "Grid Code")
	drawermenu.AddItemChild("layout", "pg-divider", "", "Divider")
	drawermenu.AddItemChild("layout", "pg-drawer", "", "Drawer")
	drawermenu.AddItemChild("layout", "pg-footer", "", "Footer")
	drawermenu.AddItemChild("layout", "pg-hero", "", "Hero")
	drawermenu.AddItemChild("layout", "pg-indicator", "", "Indicator")
	drawermenu.AddItemChild("layout", "pg-join", "", "Join (group items)")
	drawermenu.AddItemChild("layout", "pg-mask", "", "Mask")
	drawermenu.AddItemChild("layout", "pg-stack", "", "Stack")
	'
	drawermenu.AddItemParent("components", "mockup", "", "Mockup")
	drawermenu.AddItemChild("mockup", "pg-phone", "", "Phone")
	drawermenu.SetItemBadge("pg-phone", "bugs", "error")
	drawermenu.AddItemChild("mockup", "pg-browser", "", "Browser")
	drawermenu.AddItemChild("mockup", "pg-code", "", "Code")
	drawermenu.AddItemChild("mockup", "pg-window", "", "Window")
	'
	drawermenu.AddItemParent("", "plugins", "./assets/gears-solid.svg", "Plugins")
	'
	drawermenu.AddItemParent("plugins", "canvas", "", "Canvas")
	drawermenu.AddItemChild("canvas", "pg-signature", "", "Signature Pad")
	drawermenu.AddItemChild("canvas", "pg-qrcode", "", "QRCode")
	drawermenu.AddItemChild("canvas", "pg-svg", "", "SVG")
	drawermenu.AddItemChild("canvas", "pg-barcode", "", "Barcode")
	drawermenu.AddItemChild("canvas", "pg-barcodereader", "", "Barcode Reader")
	'
	drawermenu.AddItemParent("plugins", "editors", "", "Editors")
	drawermenu.AddItemChild("editors", "pg-jsoneditor", "", "JSON Editor")
	drawermenu.AddItemChild("editors", "pg-easymde", "", "EasyMDE")
	'
	drawermenu.AddItemParent("plugins", "json", "", "JSON")
	drawermenu.AddItemChild("json", "pg-jsontree", "", "JSON Tree")
	drawermenu.AddItemChild("json", "pg-jsonquery", "", "JSON Query")
	'
	drawermenu.AddItemParent("plugins", "media", "", "Media")
	drawermenu.AddItemChild("media", "pg-lottieplayer", "", "Lottie Player")
	drawermenu.AddItemChild("media", "pg-videoplayer", "", "Video Player")
	'
	drawermenu.AddItemParent("plugins", "files", "", "Files")
	drawermenu.AddItemChild("files", "pg-pdfviewer", "", "PDF Viewer")
	drawermenu.AddItemChild("files", "pg-dropzone", "", "DropZone")
	'
	drawermenu.AddItemParent("plugins", "trees", "", "Trees")
	drawermenu.AddItemChild("trees", "pg-treespider", "", "Tree Spider")
	drawermenu.AddItemChild("trees", "pg-treeview", "", "Tree View")
	'
	drawermenu.AddItemParent("plugins", "charts", "", "Charts")
	drawermenu.AddItemChild("charts", "pg-toastcharts", "", "Toast Charts")
	drawermenu.AddItemChild("charts", "pg-trendchart", "", "Trend Charts")
	drawermenu.AddItemChild("charts", "pg-pivot", "", "Pivot")
	drawermenu.AddItemChild("charts", "pg-infobox", "", "Infobox")
	'
	drawermenu.AddItemParent("plugins", "other", "", "Other")
	drawermenu.AddItemChild("other", "pg-preferences", "", "Preferences")
	drawermenu.AddItemChild("other", "pg-whatsapp", "", "WhatsApp")
	drawermenu.AddItemChild("other", "pg-officeribbon", "", "Office Ribbon")
	drawermenu.AddItemChild("other", "pg-leaflet", "", "Leaflet Map")
	drawermenu.AddItemChild("other", "pg-fullcalendar", "", "Full Calendar")
	

End Sub


'the hamburger is a swap button, open / close the drawer depending
Private Sub appnavbar_BurgerClick (value As Boolean)
	appdrawer.OpenDrawer(value)
End Sub

Private Sub drawermenu_ItemClick (item As String)
	'close the drawer
	appdrawer.OpenDrawer(False)
	'ensure the drawer is open on medium and up
	'we are forcing it closed on the pref builder
	appdrawer.MdOpen = True
	'close the swap button
	appnavbar.Hamburger.Active = False
	'reset pageview padding
	appnavbar.Hamburger.Active = False
	pageView.PaddingAXYTBLR = "a:10px"
	App.PageViewToFullScreenHeight(Array("appnavbar"))
	
'	pageView.PaddingAXYTBLR = "a:20px"

	Dim sprefix As String = App.UI.MvField(item, 1, "-")
	Dim ssuffix As String = App.UI.MvField(item, 2, "-")
	Select Case sprefix
	Case "pg"
		'only mark this item as active
		BANano.Await(drawermenu.SetItemActive(item))
			Select Case ssuffix
			Case "gifplayer"
				pgGifPlayer.Show
			Case "quill"
				pgQuillEditor.Show
			Case "apexcharts"
				pgApexCharts.Show
			Case "genderchart"
				pgGenderChart.Show
			Case "themeselect"
				BANano.Await(pgThemeSelect.Show)		
			Case "bankcard"
				pgBankCard.Show
			Case "categories"
				pgCategories.Show
			Case "provinces"
				pgProvinces.Show
			Case "contacts"
				pgContacts.Show
			Case "tableexpand"
				pgTableExpand.Show
			Case "fab"
				pgFAB.Show
			Case "login"
				'remove all padding on pageview
				pageView.PaddingAXYTBLR = "a:0px"
				appdrawer.ForceClose
				appnavbar.Visible = False
				pgGhostLogin.Show
				pgGhostLogin.ShowLogin
			Case "hovergallery"
				pgHoverGallery.show
			Case "fullcalendar"
				pgFullCalendar.Show
			Case "phpsqlite"
				pgPHPSQLite.Show
			Case "phpmysql"
				pgPHPMySQL.Show
			Case "otp"
				pgOTP.Show
			Case "toastcharts"
				pgToastCharts.Show
			Case "leaflet"
				pgLeafLet.Show
			Case "exceltoapp"
				pgExcelToApp.Show			
			Case "officeribbon"
				pgOfficeRibbon.Show		
			Case "barcode"
				pgBarCode.Show	
			Case "advancedgroupselect"
				pgAdvancedCheckGroup.Show		
			Case "treeview"
				pgTreeView.Show
			Case "barcodereader"
				pgBarcodeReader.Show		
			Case "qrcode"
				pgQRCode.Show
			Case "pdfviewer"
				pgPDFView.Show
			Case "videoplayer"
				pgVideoPlayer.Show
			Case "dropzone"
				pgDropZone.show
			Case "modalhtml"
				pgModalHTML.Show		
			Case "pivot"
				pgPivot.Show
			Case "lottieplayer"
				pgLottiePlayer.Show		
			Case "menutree"
				pgMenuTree.Show
			Case "speeddial"
				pgSpeedDial.Show
			Case "devices"
				pgDevices.Show
			Case "trendchart"
				pgTrendCharts.Show
			Case "easymde"
				pgEasyMDE.Show
			Case "jsoneditor"
				pgJSONEditor.Show		
			Case "treespider"
				pgTreeSpider.Show
			Case "whatsapp"
				pgWhatsApp.Show
				appnavbar.Visible = False
			Case "infobox"
				pgInfoBox.Show
			Case "groupselect"
				pgGroupSelect.Show
			Case "table2"
				pgTable2.Show
			Case "table3"
				pgTable3.Show
			Case "preferences"
				pgPreferences.Show
			Case "gridbuilder"
				pggridbuilder.show
			Case "prefbuilder"
				'ensure that the drawer is closed
				appdrawer.ForceClose
				'pgPreferenceBuilder.Show	
			Case "tablebuilder"
				appdrawer.ForceClose
				'pgTableBuilder.Show		
			Case "wizard"	
				pgWizard.show
			Case "svg"
				pgSVG.Show		
			Case "validator"
				pgValidation.Show
			Case "colorpicker"
				pgColorPicker.Show
			Case "signature"
				pgSignaturePad.Show
			Case "jsontree"
				pgJsonTree.Show
			Case "jsonquery"
				pgJSONQuery.Show		
			End Select		
		
			Select Case ssuffix
			Case "calendar"
			Case "datetimeline"
				pgdatetimeline.Show
			Case "checkbox"
				pgCheckBox.Show
			Case "fieldset"
				pgFieldSet.Show
			Case "fileinput"
				pgFileInput.Show
			Case "filter"
				pgFilter.Show
			Case "label"
				pgLabel.show
			Case "radio"
				pgRadio.Show
			Case "range"
				pgRange.Show
			Case "rating"
				pgRating.Show
			Case "select"
				pgSelect.Show
			Case "input"
				pgInput.Show
			Case "textarea"
				pgTextArea.Show
			Case "toggle"
				pgToggle.Show
			Case "validator"
		End Select
		
		'actions
		Select Case ssuffix
		Case "typography"
			pgTypography.Show
		Case "buttons"
			pgButtons.Show
		Case "dropdown"
			pgDropDown.Show
		Case "modal"
			pgModal.Show
		Case "swap"
			pgSwap.Show
		End Select
		'
		Select Case ssuffix
		Case "grid"
			pgGrid.Show
		Case "gridcode"
			pgGridCode.show
		Case "accordion"
			pgAccordion.Show
		Case "avatar"
			pgAvatar.Show
		Case "badge"
			pgBadge.Show
		Case "card"
			pgCard.Show
		Case "carousel"
			pgCarousel.Show
		Case "chatbubble"
			pgChatBubble.Show
		Case "collapse"
			pgCollapse.Show
		Case "countdown"
			pgCountdown.Show
		Case "diff"
			pgDiff.Show
		Case "kbd"
			pgKbd.Show
		Case "list"
			pgList.Show
		Case "stat"
			pgStat.Show
		Case "status"
			pgStatus.Show
		Case "table"
			pgTable.Show
		Case "timeline"
			pgTimeline.Show
		End Select
			'
		Select Case ssuffix
		Case "bottomdrawer"
			pgBottomDrawer.Show
		Case "breadcrumbs"
			pgBreadCrumbs.Show
		Case "dock"
			pgDock.Show
		Case "dockxs"
			pgDockXS.Show
		Case "dockcolor"
			pgDockColor.Show
		Case "link"
		pgLink.Show
		Case "menu"
		pgMenu.Show
		Case "menu1"
		pgMenu1.Show	
		Case "navbar"
		pgNavBar.Show
		Case "pagination"
			pgPagination.Show
		Case "steps"
			pgSteps.Show
		Case "tab"
		pgTabs.Show
		End Select
	'
			Select Case ssuffix
				Case "alert"
					pgAlert.Show
				Case "loading"
					pgLoading.Show
				Case "progress"
					pgProgress.Show
				Case "radialprogress"
					pgRadialProgress.Show
				Case "skeleton"
					pgSkeleton.Show
				Case "toast"
					pgToast.Show
				Case "tooltip"
					pgToolTip.Show
End Select
'
				Select Case ssuffix
				Case "divider"
					pgDivider.Show
				Case "drawer"
					App.ShowSwalInfo("Please see the 'baselayout' on how this App drawer is designed!")
				Case "footer"
					pgFooter.Show
				Case "hero"
					pgHero.Show
				Case "indicator"
					pgIndicator.Show
				Case "join"
					pgJoin.Show
				Case "mask"
					pgImage.Show
				Case "stack"
					pgStack.Show
	End Select
	'
				Select Case ssuffix
				Case "browser"
					pgBrowser.Show
				Case "code"
					pgCode.Show
				Case "window"
					pgWindow.Show
				Case "phone"
					pgPhone.Show
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

'show/hide drawer
'Sub IsAuthenticated(b As Boolean)
''	If b Then
''		appdrawer.Show
''		appdrawer.AdjustClippedLeft(True)
''		appnavbar.Show
''	Else
''		appdrawer.AdjustClippedLeft(False)
''		appdrawer.Hide
''		appnavbar.hide
''	End If		
'End Sub

'update the title of the page
Sub UpdateTitle(s As String)
	appnavbar.Title = s
End Sub
'
'Sub UpdateUserName(s As String)
''	lblUserName.Caption = s
'End Sub
'
'Sub UpdateUserAvatar(s As String)
''	userAvatar.Src = s
'End Sub

Private Sub appnavbar_TitleClick (e As BANanoEvent)
	e.PreventDefault
	App.ShowToastSuccess("Title Click!")
End Sub

Sub ShowNavBar
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

Private Sub draweruser_Exit (event As BANanoEvent)
	App.ShowToastInfo("Exit")
End Sub

Private Sub draweruser_Click (event As BANanoEvent)
	App.ShowToastInfo("User Name")
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
