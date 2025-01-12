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
	Private menuc As SDUI5Menu
	Private submenu As SDUI5Menu
	Private company As SDUI5MenuItem
	Private enterprise As SDUI5MenuItem
	Private products As SDUI5MenuItem
	Private solutions As SDUI5MenuItem
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "menu1view")
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