B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private menuc As SDUI5Menu		'ignore
	Private submenu As SDUI5Menu		'ignore
	Private company As SDUI5MenuItem		'ignore
	Private enterprise As SDUI5MenuItem		'ignore
	Private products As SDUI5MenuItem		'ignore
	Private solutions As SDUI5MenuItem		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private item1 As SDUI5MenuItem		'ignore
	Private item2 As SDUI5MenuItem		'ignore
	Private item3 As SDUI5MenuItem		'ignore
	Private subitem1 As SDUI5MenuItem		'ignore
	Private subitem2 As SDUI5MenuItem		'ignore
	Private subitem3 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem1 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem2 As SDUI5MenuItem		'ignore
	Private cmenu1 As SDUI5MenuItem		'ignore
	Private cmenu2 As SDUI5MenuItem		'ignore
	Private csubmenu1 As SDUI5MenuItem		'ignore
	Private csubmenu2 As SDUI5MenuItem		'ignore
	Private csubmenu3 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem8 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem9 As SDUI5MenuItem		'ignore
	Private cmenu3 As SDUI5MenuItem		'ignore
	Private megamenu As SDUI5Menu		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	submenu.Initialize(Me, "submenu", "submenu")
	submenu.ParentID = "SDUI5Container1"
	submenu.BackgroundColor = "base-300"
	submenu.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	submenu.MinHeight = ""
	BANano.Await(submenu.AddComponent)
	'
	item1.Initialize(Me, "item1", "item1")
	item1.ParentID = "submenu"
	item1.MenuName = "submenu"
	item1.Text = "Item 1"
	'item1.Tooltip = ""
	'item1.TooltipPosition = "none"
	BANano.Await(item1.AddComponent)
	'
	item2.Initialize(Me, "item2", "item2")
	item2.ParentID = "submenu"
	item2.MenuName = "submenu"
	item2.Parent = True
	item2.Text = "Parent"
	'item2.Tooltip = ""
	'item2.TooltipPosition = "none"
	BANano.Await(item2.AddComponent)
	'
	item3.Initialize(Me, "item3", "item3")
	item3.ParentID = "submenu"
	item3.MenuName = "submenu"
	item3.Text = "Item 3"
	'item3.Tooltip = ""
	'item3.TooltipPosition = "none"
	BANano.Await(item3.AddComponent)
	'
	subitem1.Initialize(Me, "subitem1", "subitem1")
	subitem1.ParentID = "item2_items"
	subitem1.MenuName = "submenu"
	subitem1.Text = "Sub Item 1"
	'subitem1.Tooltip = ""
	'subitem1.TooltipPosition = "none"
	BANano.Await(subitem1.AddComponent)
	'
	subitem2.Initialize(Me, "subitem2", "subitem2")
	subitem2.ParentID = "item2_items"
	subitem2.MenuName = "submenu"
	subitem2.Text = "Sub Item 2"
	'subitem2.Tooltip = ""
	'subitem2.TooltipPosition = "none"
	BANano.Await(subitem2.AddComponent)
	'
	subitem3.Initialize(Me, "subitem3", "subitem3")
	subitem3.ParentID = "item2_items"
	subitem3.MenuName = "submenu"
	subitem3.Parent = True
	subitem3.Text = "Parent"
	'subitem3.Tooltip = ""
	'subitem3.TooltipPosition = "none"
	BANano.Await(subitem3.AddComponent)
	'
	SDUI5MenuItem1.Initialize(Me, "SDUI5MenuItem1", "SDUI5MenuItem1")
	SDUI5MenuItem1.ParentID = "subitem3_items"
	SDUI5MenuItem1.MenuName = "submenu"
	SDUI5MenuItem1.Text = "Sub Item 1"
	'SDUI5MenuItem1.Tooltip = ""
	'SDUI5MenuItem1.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem1.AddComponent)
	'
	SDUI5MenuItem2.Initialize(Me, "SDUI5MenuItem2", "SDUI5MenuItem2")
	SDUI5MenuItem2.ParentID = "subitem3_items"
	SDUI5MenuItem2.MenuName = "submenu"
	SDUI5MenuItem2.Text = "Sub Item 2"
	'SDUI5MenuItem2.Tooltip = ""
	'SDUI5MenuItem2.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem2.AddComponent)
	'
	menuc.Initialize(Me, "menuc", "menuc")
	menuc.ParentID = "SDUI5Container1"
	menuc.BackgroundColor = "base-300"
	menuc.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	menuc.MinHeight = ""
	BANano.Await(menuc.AddComponent)
	'
	cmenu1.Initialize(Me, "cmenu1", "cmenu1")
	cmenu1.ParentID = "menuc"
	cmenu1.Icon = "./assets/home.svg"
	cmenu1.ItemType = "icon-text"
	cmenu1.MenuName = "menuc"
	cmenu1.Text = "Item 1"
	'cmenu1.Tooltip = ""
	'cmenu1.TooltipPosition = "none"
	BANano.Await(cmenu1.AddComponent)
	'
	cmenu2.Initialize(Me, "cmenu2", "cmenu2")
	cmenu2.ParentID = "menuc"
	cmenu2.Icon = "./assets/info.svg"
	cmenu2.ItemType = "collapse-item"
	cmenu2.MenuName = "menuc"
	cmenu2.Open = True
	cmenu2.Parent = True
	cmenu2.Text = "Parent"
	'cmenu2.Tooltip = ""
	'cmenu2.TooltipPosition = "none"
	BANano.Await(cmenu2.AddComponent)
	'
	csubmenu1.Initialize(Me, "csubmenu1", "csubmenu1")
	csubmenu1.ParentID = "cmenu2_items"
	csubmenu1.MenuName = "menuc"
	csubmenu1.Text = "Sub Item 1"
	'csubmenu1.Tooltip = ""
	'csubmenu1.TooltipPosition = "none"
	BANano.Await(csubmenu1.AddComponent)
	'
	csubmenu2.Initialize(Me, "csubmenu2", "csubmenu2")
	csubmenu2.ParentID = "cmenu2_items"
	csubmenu2.MenuName = "menuc"
	csubmenu2.Text = "Sub Item 2"
	'csubmenu2.Tooltip = ""
	'csubmenu2.TooltipPosition = "none"
	BANano.Await(csubmenu2.AddComponent)
	'
	csubmenu3.Initialize(Me, "csubmenu3", "csubmenu3")
	csubmenu3.ParentID = "cmenu2_items"
	csubmenu3.ItemType = "collapse-item"
	csubmenu3.MenuName = "menuc"
	csubmenu3.Open = True
	csubmenu3.Parent = True
	csubmenu3.Text = "Parent"
	'csubmenu3.Tooltip = ""
	'csubmenu3.TooltipPosition = "none"
	BANano.Await(csubmenu3.AddComponent)
	'
	SDUI5MenuItem8.Initialize(Me, "SDUI5MenuItem8", "SDUI5MenuItem8")
	SDUI5MenuItem8.ParentID = "csubmenu3_items"
	SDUI5MenuItem8.MenuName = "menuc"
	SDUI5MenuItem8.Text = "Sub Item 1"
	'SDUI5MenuItem8.Tooltip = ""
	'SDUI5MenuItem8.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem8.AddComponent)
	'
	SDUI5MenuItem9.Initialize(Me, "SDUI5MenuItem9", "SDUI5MenuItem9")
	SDUI5MenuItem9.ParentID = "csubmenu3_items"
	SDUI5MenuItem9.MenuName = "menuc"
	SDUI5MenuItem9.Text = "Sub Item 2"
	'SDUI5MenuItem9.Tooltip = ""
	'SDUI5MenuItem9.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem9.AddComponent)
	'
	cmenu3.Initialize(Me, "cmenu3", "cmenu3")
	cmenu3.ParentID = "menuc"
	cmenu3.Icon = "./assets/wifi.svg"
	cmenu3.ItemType = "icon-text"
	cmenu3.MenuName = "menuc"
	cmenu3.Text = "Item 3"
	'cmenu3.Tooltip = ""
	'cmenu3.TooltipPosition = "none"
	BANano.Await(cmenu3.AddComponent)
	'
	megamenu.Initialize(Me, "megamenu", "megamenu")
	megamenu.ParentID = "SDUI5Container1"
	megamenu.BackgroundColor = "base-300"
	megamenu.Direction = "horizontal"
	megamenu.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	megamenu.MinHeight = ""
	megamenu.Width = ""
	BANano.Await(megamenu.AddComponent)
	'
	solutions.Initialize(Me, "solutions", "solutions")
	solutions.ParentID = "megamenu"
	solutions.MenuName = "megamenu"
	solutions.Parent = True
	solutions.Text = "Solutions"
	'solutions.Tooltip = ""
	'solutions.TooltipPosition = "none"
	BANano.Await(solutions.AddComponent)
	'
	enterprise.Initialize(Me, "enterprise", "enterprise")
	enterprise.ParentID = "megamenu"
	enterprise.MenuName = "megamenu"
	enterprise.Parent = True
	enterprise.Text = "Enterprise"
	'enterprise.Tooltip = ""
	'enterprise.TooltipPosition = "none"
	BANano.Await(enterprise.AddComponent)
	'
	products.Initialize(Me, "products", "products")
	products.ParentID = "megamenu"
	products.MenuName = "megamenu"
	products.Parent = True
	products.Text = "Products"
	'products.Tooltip = ""
	'products.TooltipPosition = "none"
	BANano.Await(products.AddComponent)
	'
	company.Initialize(Me, "company", "company")
	company.ParentID = "megamenu"
	company.MenuName = "megamenu"
	company.Parent = True
	company.Text = "Company"
	'company.Tooltip = ""
	'company.TooltipPosition = "none"
	BANano.Await(company.AddComponent)
	pgIndex.UpdateTitle("SDUI5Menu")
	solutions.AddMenuItem("design", "Design", False)
	solutions.AddMenuItem("development", "Development", False)
	solutions.AddMenuItem("hosting", "Hosting", False)
	solutions.AddMenuItem("domain", "Domain Register", False)
	'
	enterprise.AddMenuItem("crm", "CRM Software", False)
	enterprise.AddMenuItem("marketing", "Marketing Management", False)
	enterprise.AddMenuItem("security", "Security", False)
	enterprise.AddMenuItem("consulting", "Consulting", False)
	'
	products.AddMenuItem("uikit", "UI Kit", False)
	products.AddMenuItem("wpthemes", "WordPress Themes", False)
	products.AddMenuItem("wpplugins", "WordPress Plugins", False)
	Dim op As SDUI5MenuItem = products.AddMenuItem("opensource", "Open Source", True)
	'
	op.AddMenuItem("auth", "Auth Management", False)
	op.AddMenuItem("vscode", "VS Code Themes", False)
	op.AddMenuItem("cpicker", "Color Picker", False)
	'
	company.AddMenuItem("about", "Abiut Us", False)
	company.AddMenuItem("contact", "Contact Us", False)
	company.AddMenuItem("privacy", "Privacy Policy", False)
	company.AddMenuItem("press", "Press Kit", False)
End Sub


Private Sub submenu_ItemClick (item As String)
	app.ShowToastInfo(item)
End Sub

Private Sub menuc_ItemClick (item As String)
	app.ShowToastInfo(item)
End Sub

