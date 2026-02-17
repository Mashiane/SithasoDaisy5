B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Public name As String = ""
	Public title As String = ""
	Public icon As String = "./assets/page.svg"
	Public color As String = "#000000"
	Private page1 As SDUI5Page						'ignore
	Private mdlLogin As SDUI5Modal					'ignore
	Private txtEmailAddress As SDUI5TextBox			'ignore
	Private txtPassword As SDUI5TextBox				'ignore
	Private txtServer As SDUI5TextBox				'ignore
	Private chkRememberMe As SDUI5CheckBox			'ignore
	Private r1 As SDUI5Row		'ignore
	Private r1c1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
End Sub

Sub Show	'ignore
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	page1.Initialize(Me, "page1", "page1")
	page1.Active = False
	page1.BackgroundColor = ""
	page1.BackgroundImage = "./assets/tsitsikama.jpg"
	page1.Container = False
	page1.Flex = False
	page1.FlexWrap = False
	page1.FullPage = True
	page1.FullScreen = True
	'page1.Gradient = "bl_tr"
	'page1.GradientActive = False
	page1.MxAuto = False
	page1.Description = "My SDUIPage"
	page1.Keywords = "page"
	page1.Title = "Page 1"
	BANano.Await(page1.AddComponent)
	'
	mdlLogin.Initialize(Me, "mdlLogin", "mdlLogin")
	mdlLogin.ParentID = "page1"
	'mdlLogin.ActionType = "yes-no"
	mdlLogin.Backdrop = False
	mdlLogin.CancelVisible = False
	mdlLogin.Closable = False
	mdlLogin.Glass = True
	mdlLogin.Icon = "./assets/user-lock-solid.svg"
	mdlLogin.IconColor = "#ffffff"
	mdlLogin.IconSize = "60px"
	mdlLogin.IconVisible = True
	mdlLogin.NoCaption = "Cancel"
	mdlLogin.NoColor = "#808080"
	mdlLogin.Html = ""
	mdlLogin.Title = "Sign In"
	mdlLogin.TitleTextColor = "#ffffff"
	mdlLogin.Width = "600px"
	mdlLogin.YesCaption = "Login"
	BANano.Await(mdlLogin.AddComponent)
	'
	r1.Initialize(Me, "r1", "r1")
	r1.ParentID = "mdlLogin_form"
	r1.Gap = ""
	BANano.Await(r1.AddComponent)
	'
	r1c1.Initialize(Me, "r1c1", "r1c1")
	r1c1.ParentID = "r1"
	r1c1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(r1c1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "r1"
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	txtServer.Initialize(Me, "txtServer", "txtServer")
	txtServer.ParentID = "SDUI5Column2"
	txtServer.BackgroundColor = ""
	txtServer.Border = False
	txtServer.BorderColor = ""
	txtServer.InputType = "legend"
	txtServer.Label = "Server Address"
	txtServer.LegendColor = "#ffffff"
	txtServer.Placeholder = "Server Address"
	txtServer.PrependIcon = "./assets/server-solid.svg"
	txtServer.PrependVisible = True
	txtServer.Required = True
	txtServer.DPAltFormat = "F j"
	BANano.Await(txtServer.AddComponent)
	'
	txtEmailAddress.Initialize(Me, "txtEmailAddress", "txtEmailAddress")
	txtEmailAddress.ParentID = "r1c1"
	txtEmailAddress.BackgroundColor = ""
	txtEmailAddress.Border = False
	txtEmailAddress.BorderColor = ""
	txtEmailAddress.InputType = "legend"
	txtEmailAddress.Label = "Username"
	txtEmailAddress.LegendColor = "#ffffff"
	txtEmailAddress.Placeholder = "Username"
	txtEmailAddress.PrependIcon = "./assets/user-solid.svg"
	txtEmailAddress.PrependVisible = True
	txtEmailAddress.Required = True
	txtEmailAddress.TypeOf = "email"
	txtEmailAddress.DPAltFormat = "F j"
	BANano.Await(txtEmailAddress.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "r1"
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	txtPassword.Initialize(Me, "txtPassword", "txtPassword")
	txtPassword.ParentID = "SDUI5Column1"
	txtPassword.BackgroundColor = ""
	txtPassword.Border = False
	txtPassword.BorderColor = ""
	txtPassword.InputType = "legend"
	txtPassword.Label = "Password"
	txtPassword.LegendColor = "#ffffff"
	txtPassword.Placeholder = "Password"
	txtPassword.PrependIcon = "./assets/key-solid.svg"
	txtPassword.PrependVisible = True
	txtPassword.Required = True
	txtPassword.ShowEyes = True
	txtPassword.TypeOf = "password"
	txtPassword.DPAltFormat = "F j"
	BANano.Await(txtPassword.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "r1"
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	chkRememberMe.Initialize(Me, "chkRememberMe", "chkRememberMe")
	chkRememberMe.ParentID = "SDUI5Column3"
	chkRememberMe.BackgroundColor = ""
	chkRememberMe.Border = False
	chkRememberMe.BorderColor = ""
	chkRememberMe.CheckBoxType = "right-label"
	chkRememberMe.Color = "success"
	chkRememberMe.Label = "Remember Me"
	chkRememberMe.LabelColor = "#ffffff"
	chkRememberMe.LegendColor = "#ffffff"
	chkRememberMe.Size = "md"
	BANano.Await(chkRememberMe.AddComponent)
	pgIndex.UpdateTitle(page1.title)
	mdlLogin.Show
	name = page1.ID
	icon = page1.Icon
	color = page1.color
	title = page1.title
	txtServer.focus
	BANano.Await(BuildPage)
End Sub

Private Sub BuildPage
	'define the rememberkey data for app
	Dim srememberKey As String = $"${Main.appname}remember"$
	'read data from local storage
	Dim sremember As String = BANano.GetLocalStorage2(srememberKey)
	'convert to string, this also deals with null
	sremember = app.UI.CStr(sremember)
	'there is data that was saved
	If sremember <> "" Then
		'decrypt the data
		Dim sout As String = BANano.Await(app.UI.AESDecrypt(sremember, Main.APIKey))
		Dim rmap As Map = BANano.FromJson(sout)
		chkRememberMe.Checked = True
		txtEmailAddress.Value = rmap.Get("email")
		txtPassword.Value = rmap.Get("pwd")
		txtServer.Value = rmap.Get("server")
	End If
End Sub


Private Sub mdlLogin_Yes_Click (e As BANanoEvent)
	e.PreventDefault
	If txtServer.IsBlank Then Return
	If txtServer.IsValidUrl = False Then Return
	If txtEmailAddress.IsBlank Then Return
'	If txtEmailAddress.IsValidEmail = False Then Return
	If txtPassword.IsBlank Then Return
'	If txtPassword.IsMinLength(12) = False Then Return
'	If txtPassword.IsStrongPassword = False Then Return
	'save the details to localstorage
	If chkRememberMe.Checked Then
		Dim srememberKey As String = $"${Main.appname}remember"$
		Dim rmap As Map = CreateMap()
		rmap.put("email", txtEmailAddress.Value)
		rmap.put("pwd", txtPassword.Value)
		rmap.put("server", txtServer.Value) 
		'convert to json
		Dim sremember As String = BANano.ToJson(rmap)
		'encrypt using api key
		Dim sout As String = BANano.Await(app.UI.AESEncrypt(sremember, Main.APIKey))
		'store encrypted data
		BANano.SetLocalStorage2(srememberKey, sout)
	End If
	
End Sub

Private Sub mdlLogin_Cancel_Click (e As BANanoEvent)
	e.PreventDefault
	mdlLogin.Close	
End Sub

Private Sub txtPassword_Prepend (e As BANanoEvent)
	e.preventdefault
End Sub

Private Sub txtEmailAddress_Prepend (e As BANanoEvent)
	e.preventdefault
End Sub

Private Sub mdlLogin_No_Click (e As BANanoEvent)
	e.PreventDefault
	mdlLogin.Close
	pgIndex.ShowNavBar
	pgIndex.OpenDrawer
	pgHoverGallery.Show
End Sub

Private Sub txtServer_Prepend (e As BANanoEvent)
	e.PreventDefault
End Sub

Sub ShowLogin
	mdlLogin.Show
End Sub

Sub HideLogin			'ignore
	mdlLogin.Close
End Sub

