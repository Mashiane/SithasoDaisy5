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
	Private pageView As SDUI5Container	'ignore
	Private drawermenu As SDUI5Menu
	Private drawerNav As SDUI5NavBar
End Sub

Sub Initialize					'ignoreDeadCode
	BANano.Await(App.Initialize(Me))
	'load the main layout to the body of the page
	BANano.LoadLayout(App.Here, "baselayout")
	drawerNav.Title = Main.AppVersion
	BANano.Await(pgTypography.Show(App))

'	BANano.Await(App.UsesFlatPickDateTime)
	
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
	App.pageresume
End Sub

'fired when a drawer is closed / opened
Private Sub appdrawer_Opened (Status As Boolean)
	'the hamburger is a swap so open / close it when overlay is clicked also
	appnavbar.Hamburger.Active = Status
End Sub

'define the menu items fo dawe
Sub CreateDrawerMenu
	drawermenu.AddItemParent("", "play", "", "PlayGround")
	drawermenu.AddItemChild("play", "pg-tablebuilder", "", "Table Builder")
	drawermenu.AddItemChild("play", "pg-prefbuilder", "", "Preference Dialog Builder")
	drawermenu.AddItemChild("play", "pg-gridbuilder", "", "TailwindCSS Grid Builder")
	
	drawermenu.AddItemChild("", "pg-typography", "", "Typography")
	drawermenu.AddItemParent("", "components", "", "Components")
	drawermenu.SetItemOpen("components", True)
	
	drawermenu.AddItemParent("components", "actions", "", "Actions")
	drawermenu.AddItemChild("actions", "pg-buttons", "", "Buttons")
	drawermenu.AddItemChild("actions", "pg-dropdown", "", "Dropdown")
	drawermenu.AddItemChild("actions", "pg-modal", "", "Modal")
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
	drawermenu.SetItemBadge("pg-countdown", "wip", "secondary")
	drawermenu.AddItemChild("display", "pg-diff", "", "Diff")
	drawermenu.AddItemChild("display", "pg-kbd", "", "Kbd")
	drawermenu.AddItemChild("display", "pg-list", "", "List")
	drawermenu.AddItemChild("display", "pg-stat", "", "Stat")
	drawermenu.AddItemChild("display", "pg-status", "", "Status")
	drawermenu.AddItemChild("display", "pg-timeline", "", "Timeline")
	'
	drawermenu.AddItemParent("", "tables", "", "Tables")
	drawermenu.AddItemChild("tables", "pg-table", "", "Table 1")
	drawermenu.AddItemChild("tables", "pg-table2", "", "Table 2")
	drawermenu.AddItemChild("tables", "pg-table3", "", "Table 3")
	
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
	drawermenu.AddItemChild("dinput", "pg-checkbox", "", "Checkbox")
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
	drawermenu.AddItemParent("", "plugins", "", "Plugins")
	drawermenu.AddItemChild("plugins", "pg-infobox", "", "Infobox")
	drawermenu.AddItemChild("plugins", "pg-preferences", "", "Preferences")
	drawermenu.AddItemChild("plugins", "pg-svg", "", "SVG")
	drawermenu.AddItemChild("plugins", "pg-whatsapp", "", "WhatsApp")
	drawermenu.AddItemChild("plugins", "pg-signature", "", "Signature Pad")
	drawermenu.AddItemChild("plugins", "pg-treespider", "", "Tree Spider")
	drawermenu.AddItemChild("plugins", "pg-jsoneditor", "", "JSON Editor")
	drawermenu.AddItemChild("plugins", "pg-jsontree", "", "JSON Tree")
	drawermenu.AddItemChild("plugins", "pg-easymde", "", "EasyMDE")
	drawermenu.AddItemChild("plugins", "pg-jsonquery", "", "JSON Query")
End Sub


'the hamburger is a swap button, open / close the drawer depending
Private Sub appnavbar_BurgerClick (value As Boolean)
	appdrawer.OpenDrawer(value)
End Sub

Private Sub drawermenu_ItemClick (item As String)
	appnavbar.Visible = True
	'close the drawer
	appdrawer.OpenDrawer(False)
	'ensure the drawer is open on medium and up
	'we are forcing it closed on the pref builder
	appdrawer.MdOpen = True
	'close the swap button
	appnavbar.Hamburger.Active = False

	Dim sprefix As String = App.UI.MvField(item, 1, "-")
	Dim ssuffix As String = App.UI.MvField(item, 2, "-")
	Select Case sprefix
	Case "pg"
		'only mark this item as active
		BANano.Await(drawermenu.SetItemActive(item))
			Select Case ssuffix
			Case "easymde"
				pgEasyMDE.Show(App)
			Case "jsoneditor"
				pgJSONEditor.Show(App)		
			Case "treespider"
				pgTreeSpider.Show(App)
			Case "whatsapp"
				pgWhatsApp.Show(App)
				appnavbar.Visible = False
			Case "infobox"
				pgInfoBox.Show(App)
			Case "groupselect"
				pgGroupSelect.Show(App)
			Case "table2"
				pgTable2.Show(App)
			Case "table3"
				pgTable3.Show(App)
			Case "preferences"
				pgPreferences.Show(App)
			Case "gridbuilder"
				pggridbuilder.show(App)
			Case "prefbuilder"
				'ensure that the drawer is closed
				appdrawer.ForceClose
				pgPreferenceBuilder.Show(App)	
			Case "tablebuilder"
				appdrawer.ForceClose
				pgTableBuilder.Show(App)		
			Case "wizard"	
				pgWizard.show(App)
			Case "svg"
				pgSVG.Show(App)		
			Case "validator"
				pgValidation.Show(App)
			Case "colorpicker"
				pgColorPicker.Show(App)
			Case "signature"
				pgSignaturePad.Show(App)
			Case "jsontree"
				pgJsonTree.Show(App)
			Case "jsonquery"
				pgJSONQuery.Show(App)		
			End Select		
		
			Select Case ssuffix
			Case "calendar"
			Case "datetimeline"
				pgdatetimeline.Show(App)
			Case "checkbox"
				pgCheckBox.Show(App)
			Case "fieldset"
				pgFieldSet.Show(App)
			Case "fileinput"
				pgFileInput.Show(App)
			Case "filter"
				pgFilter.Show(App)
			Case "label"
				pgLabel.show(App)
			Case "radio"
				pgRadio.Show(App)
			Case "range"
				pgRange.Show(App)
			Case "rating"
				pgRating.Show(App)
			Case "select"
				pgSelect.Show(App)
			Case "input"
				pgInput.Show(App)
			Case "textarea"
				pgTextArea.Show(App)
			Case "toggle"
				pgToggle.Show(App)
			Case "validator"
		End Select
		
		'actions
		Select Case ssuffix
		Case "typography"
			pgTypography.Show(App)
		Case "buttons"
			pgButtons.Show(App)
		Case "dropdown"
			pgDropDown.Show(App)
		Case "modal"
			pgModal.Show(App)
		Case "swap"
			pgSwap.Show(App)
		End Select
		'
		Select Case ssuffix
		Case "grid"
			pgGrid.Show(App)
		Case "gridcode"
			pgGridCode.show(App)
		Case "accordion"
			pgAccordion.Show(App)
		Case "avatar"
			pgAvatar.Show(App)
		Case "badge"
			pgBadge.Show(App)
		Case "card"
			pgCard.Show(App)
		Case "carousel"
			pgCarousel.Show(App)
		Case "chatbubble"
			pgChatBubble.Show(App)
		Case "collapse"
			pgCollapse.Show(App)
		Case "countdown"
			pgCountdown.Show(App)
		Case "diff"
			pgDiff.Show(App)
		Case "kbd"
			pgKbd.Show(App)
		Case "list"
			pgList.Show(App)
		Case "stat"
			pgStat.Show(App)
		Case "status"
			pgStatus.Show(App)
		Case "table"
			pgTable.Show(App)
		Case "timeline"
			pgTimeline.Show(App)
		End Select
			'
		Select Case ssuffix
		Case "bottomdrawer"
			pgBottomDrawer.Show(App)
		Case "breadcrumbs"
			pgBreadCrumbs.Show(App)
		Case "dock"
			pgDock.Show(App)
		Case "dockxs"
			pgDockXS.Show(App)
		Case "dockcolor"
			pgDockColor.Show(App)
		Case "link"
		pgLink.Show(App)
		Case "menu"
		pgMenu.Show(App)
		Case "menu1"
		pgMenu1.Show(App)	
		Case "navbar"
		pgNavBar.Show(App)
		Case "pagination"
			pgPagination.Show(App)
		Case "steps"
			pgSteps.Show(App)
		Case "tab"
		pgTabs.Show(App)
		End Select
	'
			Select Case ssuffix
				Case "alert"
					pgAlert.Show(App)
				Case "loading"
					pgLoading.Show(App)
				Case "progress"
					pgProgress.Show(App)
				Case "radialprogress"
					pgRadialProgress.Show(App)
				Case "skeleton"
					pgSkeleton.Show(App)
				Case "toast"
					pgToast.Show(App)
				Case "tooltip"
					pgToolTip.Show(App)
End Select
'
				Select Case ssuffix
				Case "divider"
					pgDivider.Show(App)
				Case "drawer"
					App.ShowSwalInfo("Please see the 'baselayout' on how this App drawer is designed!")
				Case "footer"
					pgFooter.Show(App)
				Case "hero"
					pgHero.Show(App)
				Case "indicator"
					pgIndicator.Show(App)
				Case "join"
					pgJoin.Show(App)
				Case "mask"
					pgImage.Show(App)
				Case "stack"
					pgStack.Show(App)
	End Select
	'
				Select Case ssuffix
				Case "browser"
					pgBrowser.Show(App)
				Case "code"
					pgCode.Show(App)
				Case "window"
					pgWindow.Show(App)
				Case "phone"
					pgPhone.Show(App)
		End Select
		
	End Select
End Sub


Private Sub btnLogOff_Click (e As BANanoEvent)
'	'hide stuff, fix the height fist
'	IsAuthenticated(False)
'	'show login
'	pgSignIn.Show(app)
End Sub

'show/hide drawer
Sub IsAuthenticated(b As Boolean)
'	If b Then
'		appdrawer.Show
'		appdrawer.AdjustClippedLeft(True)
'		appnavbar.Show
'	Else
'		appdrawer.AdjustClippedLeft(False)
'		appdrawer.Hide
'		appnavbar.hide
'	End If		
End Sub

'update the title of the page
Sub UpdateTitle(s As String)
	appnavbar.Title = s
End Sub

Sub UpdateUserName(s As String)
'	lblUserName.Caption = s
End Sub

Sub UpdateUserAvatar(s As String)
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