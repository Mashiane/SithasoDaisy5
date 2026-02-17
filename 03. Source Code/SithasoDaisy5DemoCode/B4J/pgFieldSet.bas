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
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5FieldSet1 As SDUI5FieldSet		'ignore
	Private SDUI5FieldSet2 As SDUI5FieldSet		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private login As SDUI5Card		'ignore
	Private loginfs As SDUI5FieldSet		'ignore
	Private txtEmail As SDUI5TextBox		'ignore
	Private txtPassword As SDUI5TextBox		'ignore
	Private lblForgot As SDUI5Link		'ignore
	Private btnLogin As SDUI5Button		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.SizeMd = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5FieldSet1.Initialize(Me, "SDUI5FieldSet1", "SDUI5FieldSet1")
	SDUI5FieldSet1.ParentID = "SDUI5Column1"
	SDUI5FieldSet1.BackgroundColor = ""
	SDUI5FieldSet1.Border = False
	SDUI5FieldSet1.BorderColor = ""
	SDUI5FieldSet1.Label = "You can edit page title later on from settings"
	SDUI5FieldSet1.Legend = "Page Title"
	SDUI5FieldSet1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5FieldSet1.RoundedBox = False
	SDUI5FieldSet1.Width = ""
	BANano.Await(SDUI5FieldSet1.AddComponent)
	'
	SDUI5FieldSet2.Initialize(Me, "SDUI5FieldSet2", "SDUI5FieldSet2")
	SDUI5FieldSet2.ParentID = "SDUI5Column2"
	SDUI5FieldSet2.Label = "You can edit page title later on from settings"
	SDUI5FieldSet2.Legend = "Page Title"
	BANano.Await(SDUI5FieldSet2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "4"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	login.Initialize(Me, "login", "login")
	login.ParentID = "SDUI5Column3"
	login.Border = False
	login.Image = ""
	login.Content = ""
	login.Shadow = "2xl"
	login.Shrink = "0"
	login.Size = "md"
	login.Title = ""
	login.TitleVisible = False
	login.Width = "full"
	BANano.Await(login.AddComponent)
	'
	loginfs.Initialize(Me, "loginfs", "loginfs")
	loginfs.ParentID = "login_content"
	loginfs.BackgroundColor = ""
	loginfs.Border = False
	loginfs.BorderColor = ""
	loginfs.Label = ""
	loginfs.LabelVisible = False
	loginfs.Legend = ""
	loginfs.LegendVisible = False
	loginfs.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	loginfs.RoundedBox = False
	loginfs.Width = ""
	BANano.Await(loginfs.AddComponent)
	'
	txtEmail.Initialize(Me, "txtEmail", "txtEmail")
	txtEmail.ParentID = "loginfs_content"
	txtEmail.InputType = "label-input"
	txtEmail.Label = "Email"
	txtEmail.Placeholder = "Email"
	txtEmail.TypeOf = "email"
	txtEmail.DPAltFormat = "F j"
	BANano.Await(txtEmail.AddComponent)
	'
	txtPassword.Initialize(Me, "txtPassword", "txtPassword")
	txtPassword.ParentID = "loginfs_content"
	txtPassword.InputType = "label-input"
	txtPassword.Label = "Password"
	txtPassword.Placeholder = "Password"
	txtPassword.TypeOf = "password"
	txtPassword.DPAltFormat = "F j"
	BANano.Await(txtPassword.AddComponent)
	'
	lblForgot.Initialize(Me, "lblForgot", "lblForgot")
	lblForgot.ParentID = "loginfs_content"
	lblForgot.Color = "primary"
	lblForgot.Hover = True
	'lblForgot.ListItem = False
	lblForgot.Text = "Forgot Password"
	BANano.Await(lblForgot.AddComponent)
	'
	btnLogin.Initialize(Me, "btnLogin", "btnLogin")
	btnLogin.ParentID = "loginfs_content"
	btnLogin.Color = "primary"
	btnLogin.IconSize = "none"
	'btnLogin.Image = ""
	'btnLogin.ImageHeight = "32px"
	'btnLogin.ImageWidth = "32px"
	btnLogin.MarginAXYTBLR = "a=?; x=?; y=?; t=3; b=?; l=?; r=?"
	btnLogin.Size = "none"
	btnLogin.Text = "Login"
	btnLogin.Width = "full"
	BANano.Await(btnLogin.AddComponent)
	pgIndex.UpdateTitle("SDUI5FieldSet")
End Sub

