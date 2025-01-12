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
End Sub

Sub Initialize					'ignoreDeadCode
	BANano.Await(App.Initialize(Me))
	'load the main layout to the body of the page
	BANano.LoadLayout(App.Here, "baselayout")
	
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
	'pgSignIn.Show(app)
	App.pageresume
End Sub

'NB: use this to add pages that are not added to the side nav bar
Sub AddPages
	'example
	'app.AddPage(pgHome.name, pgHome)
End Sub

'define the menu items fo dawe
Sub CreateDrawerMenu
	Dim components As SDUI5MenuItem = drawermenu.AddMenuItemParent("components", "", "Components")
	components.Open = True
	
	Dim actions As SDUI5MenuItem = components.AddMenuItemParent("actions", "", "Actions")
	actions.AddMenuItemChild("pg-buttons", "", "Buttons")
	actions.AddMenuItemChild("pg-dropdown", "", "Dropdown")
	actions.AddMenuItemChild("pg-modal", "", "Modal")
	actions.AddMenuItemChild("pg-swap", "", "Swap")
	
	'not done
	drawermenu.SetItemBadge("pg-dropdown", "", "error")
	drawermenu.SetItemBadge("pg-modal", "", "error")
		
	Dim display As SDUI5MenuItem = components.AddMenuItemParent("display", "", "Data Display")
	display.AddMenuItemChild("pg-grid", "", "Grid")
	display.AddMenuItemChild("pg-gridcode", "", "Grid Code")
	display.AddMenuItemChild("pg-accordion", "", "Accordion")
	display.AddMenuItemChild("pg-avatar", "", "Avatar")
	display.AddMenuItemChild("pg-badge", "", "Badge")
	display.AddMenuItemChild("pg-card", "", "Card")
	display.AddMenuItemChild("pg-carousel", "", "Carousel")
	display.AddMenuItemChild("pg-chatbubble", "", "Chat Bubble")
	display.AddMenuItemChild("pg-collapse", "", "Collapse")
	display.AddMenuItemChild("pg-countdown", "", "Countdown")
	display.AddMenuItemChild("pg-diff", "", "Diff")
	display.AddMenuItemChild("pg-kbd", "", "Kbd")
	display.AddMenuItemChild("pg-list", "", "List")
	display.AddMenuItemChild("pg-stat", "", "Stat")
	display.AddMenuItemChild("pg-status", "", "Status")
	display.AddMenuItemChild("pg-table", "", "Table")
	display.AddMenuItemChild("pg-timeline", "", "Timeline")
	'
	drawermenu.SetItemBadge("pg-accordion", "", "error")
	drawermenu.SetItemBadge("pg-card", "", "error")
	drawermenu.SetItemBadge("pg-carousel", "", "error")
	drawermenu.SetItemBadge("pg-chatbubble", "", "error")
	drawermenu.SetItemBadge("pg-collapse", "", "error")
	drawermenu.SetItemBadge("pg-countdown", "", "error")
	drawermenu.SetItemBadge("pg-diff", "", "error")
	drawermenu.SetItemBadge("pg-kbd", "", "error")
	drawermenu.SetItemBadge("pg-list", "", "error")
	drawermenu.SetItemBadge("pg-stat", "", "error")
	drawermenu.SetItemBadge("pg-table", "", "error")
	drawermenu.SetItemBadge("pg-timeline", "", "error")
	
	
	Dim navigation As SDUI5MenuItem = components.AddMenuItemParent("navigation", "", "Navigation")
	navigation.AddMenuItemChild("pg-breadcrumbs", "", "Breadcrumbs")
	navigation.AddMenuItemChild("pg-dock", "", "Dock")
	navigation.AddMenuItemChild("pg-link", "", "Link")
	navigation.AddMenuItemChild("pg-menu", "", "Menu")
	navigation.AddMenuItemChild("pg-menu1", "", "Menu (More)")
	navigation.AddMenuItemChild("pg-navbar", "", "Navbar")
	navigation.AddMenuItemChild("pg-pagination", "", "Pagination")
	navigation.AddMenuItemChild("pg-steps", "", "Steps")
	navigation.AddMenuItemChild("pg-tab", "", "Tab")
	'
	drawermenu.SetItemBadge("pg-breadcrumbs", "", "error")
	drawermenu.SetItemBadge("pg-dock", "", "error")
	drawermenu.SetItemBadge("pg-steps", "", "error")
	drawermenu.SetItemBadge("pg-tab", "", "error")
	drawermenu.SetItemBadge("pg-pagination", "", "error")
	
	Dim feedback As SDUI5MenuItem = components.AddMenuItemParent("feedback", "", "Feedback")
	feedback.AddMenuItemChild("pg-alert", "", "Alert")
	feedback.AddMenuItemChild("pg-loading", "", "Loading")
	feedback.AddMenuItemChild("pg-progress", "", "Progress")
	feedback.AddMenuItemChild("pg-radialprogress", "", "Radial Progress")
	feedback.AddMenuItemChild("pg-skeleton", "", "Skeleton")
	feedback.AddMenuItemChild("pg-toast", "", "Toast")
	feedback.AddMenuItemChild("pg-tooltip", "", "Tooltip")
	'
	drawermenu.SetItemBadge("pg-skeleton", "", "error")
	
	'
'	Dim dinput As SDUI5MenuItem = components.AddMenuItemParent("dinput", "", "Data Input")
'	dinput.AddMenuItemChild("calendar", "", "Calendar")
'	dinput.AddMenuItemChild("checkbox", "", "Checkbox")
'	dinput.AddMenuItemChild("fieldset", "", "Fieldset")
'	dinput.AddMenuItemChild("fileinput", "", "File Input")
'	dinput.AddMenuItemChild("filter", "", "Filter")
'	dinput.AddMenuItemChild("label", "", "Label")
'	dinput.AddMenuItemChild("radio", "", "Radio")
'	dinput.AddMenuItemChild("range", "", "Range")
'	dinput.AddMenuItemChild("rating", "", "Rating")
'	dinput.AddMenuItemChild("select", "", "Select")
'	dinput.AddMenuItemChild("inputfield", "", "Input Field")
'	dinput.AddMenuItemChild("textarea", "", "Text Area")
'	dinput.AddMenuItemChild("toggle", "", "Toggle")
'	dinput.AddMenuItemChild("validator", "", "Validator")
'	'
'	drawermenu.SetItemBadge("calendar", "", "error")
'	drawermenu.SetItemBadge("checkbox", "", "error")
'	drawermenu.SetItemBadge("fieldset", "", "error")
'	drawermenu.SetItemBadge("fileinput", "", "error")
'	drawermenu.SetItemBadge("filter", "", "error")
'	drawermenu.SetItemBadge("label", "", "error")
'	drawermenu.SetItemBadge("radio", "", "error")
'	drawermenu.SetItemBadge("range", "", "error")
'	drawermenu.SetItemBadge("rating", "", "error")
'	drawermenu.SetItemBadge("select", "", "error")
'	drawermenu.SetItemBadge("inputfield", "", "error")
'	drawermenu.SetItemBadge("textarea", "", "error")
'	drawermenu.SetItemBadge("toggle", "", "error")
'	drawermenu.SetItemBadge("validator", "", "error")
	
	'
	Dim layout As SDUI5MenuItem = components.AddMenuItemParent("layout", "", "Layout")
	layout.AddMenuItemChild("pg-divider", "", "Divider")
	layout.AddMenuItemChild("pg-drawer", "", "Drawer")
	layout.AddMenuItemChild("pg-footer", "", "Footer")
	layout.AddMenuItemChild("pg-hero", "", "Hero")
	layout.AddMenuItemChild("pg-indicator", "", "Indicator")
	layout.AddMenuItemChild("pg-join", "", "Join (group items)")
	layout.AddMenuItemChild("pg-mask", "", "Mask")
	layout.AddMenuItemChild("pg-stack", "", "Stack")
	'
	Dim mockup As SDUI5MenuItem = components.AddMenuItemParent("mockup", "", "Mockup")
	mockup.AddMenuItemChild("pg-browser", "", "Browser")
	mockup.AddMenuItemChild("pg-code", "", "Code")
	mockup.AddMenuItemChild("pg-window", "", "Window")
End Sub


Private Sub appnavbar_BurgerClick (value As Boolean)
	appdrawer.OpenDrawer(value)
End Sub

Private Sub drawermenu_ItemClick (item As String)
	'close the drawer
	appdrawer.OpenDrawer(False)
	'close the swap button
	appnavbar.Hamburger.Active = False

	Dim sprefix As String = SDUIShared.MvField(item, 1, "-")
	Dim ssuffix As String = SDUIShared.MvField(item, 2, "-")
	Select Case sprefix
	Case "pg"
		'actions
		Select Case ssuffix
		Case "buttons"
			pgButtons.Show(App)
		Case "dropdown"
		Case "modal"
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
		Case "avatar"
			pgAvatar.Show(App)
		Case "badge"
			pgBadge.Show(App)
		Case "card"
		Case "carousel"
		Case "chatbubble"
		Case "collapse"
		Case "countdown"
		Case "diff"
		Case "kbd"
		Case "list"
		Case "stat"
		Case "status"
			pgStatus.Show(App)
		Case "table"
		Case "timeline"
			End Select
			'
			Select Case ssuffix
			Case "breadcrumbs"
				Case "dock"
				Case "link"
					pgLink.Show(App)
				Case "menu"
					pgMenu.Show(App)
				Case "menu1"
					pgMenu1.Show(App)	
				Case "navbar"
					pgNavBar.Show(App)
				Case "pagination"
				Case "steps"
				Case "tab"
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

Sub UpdateUserName(s As String)
'	lblUserName.Caption = s
End Sub

Sub UpdateUserAvatar(s As String)
'	userAvatar.Src = s
End Sub