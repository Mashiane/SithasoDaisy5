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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Footer1 As SDUI5Footer		'ignore
	Private nav1 As SDUI5Component		'ignore
	Private nav2 As SDUI5Component		'ignore
	Private nav3 As SDUI5Component		'ignore
	Private fServices As SDUI5FooterTitle		'ignore
	Private fCompany As SDUI5FooterTitle		'ignore
	Private fLegal As SDUI5FooterTitle		'ignore
	Private SDUI5Link1 As SDUI5Link		'ignore
	Private SDUI5Link2 As SDUI5Link		'ignore
	Private SDUI5Link3 As SDUI5Link		'ignore
	Private SDUI5Link4 As SDUI5Link		'ignore
	Private SDUI5Link5 As SDUI5Link		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Footer1.Initialize(Me, "SDUI5Footer1", "SDUI5Footer1")
	SDUI5Footer1.ParentID = "SDUI5Container1"
	SDUI5Footer1.BackgroundColor = "primary"
	SDUI5Footer1.Position = "t=?; b=?; r=?; l=?"
	SDUI5Footer1.PositionStyle = "none"
	SDUI5Footer1.Width = "full"
	BANano.Await(SDUI5Footer1.AddComponent)
	'
	nav1.Initialize(Me, "nav1", "nav1")
	nav1.ParentID = "SDUI5Footer1"
	nav1.TagName = "nav"
	'nav1.Text = ""
	BANano.Await(nav1.AddComponent)
	'
	nav2.Initialize(Me, "nav2", "nav2")
	nav2.ParentID = "SDUI5Footer1"
	nav2.TagName = "nav"
	'nav2.Text = ""
	BANano.Await(nav2.AddComponent)
	'
	nav3.Initialize(Me, "nav3", "nav3")
	nav3.ParentID = "SDUI5Footer1"
	nav3.TagName = "nav"
	'nav3.Text = ""
	BANano.Await(nav3.AddComponent)
	'
	fServices.Initialize(Me, "fServices", "fServices")
	fServices.ParentID = "nav1"
	fServices.Text = "Services"
	fServices.TextColor = "#FFFFFF"
	BANano.Await(fServices.AddComponent)
	'
	fCompany.Initialize(Me, "fCompany", "fCompany")
	fCompany.ParentID = "nav2"
	fCompany.Text = "Company"
	fCompany.TextColor = "#FFFFFF"
	BANano.Await(fCompany.AddComponent)
	'
	fLegal.Initialize(Me, "fLegal", "fLegal")
	fLegal.ParentID = "nav3"
	fLegal.Text = "Legal"
	fLegal.TextColor = "#FFFFFF"
	BANano.Await(fLegal.AddComponent)
	'
	SDUI5Link1.Initialize(Me, "SDUI5Link1", "SDUI5Link1")
	SDUI5Link1.ParentID = "nav1"
	SDUI5Link1.Hover = True
	'SDUI5Link1.ListItem = False
	SDUI5Link1.Text = "Branding"
	BANano.Await(SDUI5Link1.AddComponent)
	'
	SDUI5Link2.Initialize(Me, "SDUI5Link2", "SDUI5Link2")
	SDUI5Link2.ParentID = "nav1"
	SDUI5Link2.Hover = True
	'SDUI5Link2.ListItem = False
	SDUI5Link2.Text = "Design"
	BANano.Await(SDUI5Link2.AddComponent)
	'
	SDUI5Link3.Initialize(Me, "SDUI5Link3", "SDUI5Link3")
	SDUI5Link3.ParentID = "nav1"
	SDUI5Link3.Hover = True
	'SDUI5Link3.ListItem = False
	SDUI5Link3.Text = "Marketing"
	BANano.Await(SDUI5Link3.AddComponent)
	'
	SDUI5Link4.Initialize(Me, "SDUI5Link4", "SDUI5Link4")
	SDUI5Link4.ParentID = "nav2"
	SDUI5Link4.Hover = True
	'SDUI5Link4.ListItem = False
	SDUI5Link4.Text = "About Us"
	BANano.Await(SDUI5Link4.AddComponent)
	'
	SDUI5Link5.Initialize(Me, "SDUI5Link5", "SDUI5Link5")
	SDUI5Link5.ParentID = "nav3"
	SDUI5Link5.Hover = True
	'SDUI5Link5.ListItem = False
	SDUI5Link5.Text = "Terms of Use"
	BANano.Await(SDUI5Link5.AddComponent)
	pgIndex.UpdateTitle("SDUI5Footer")
End Sub

