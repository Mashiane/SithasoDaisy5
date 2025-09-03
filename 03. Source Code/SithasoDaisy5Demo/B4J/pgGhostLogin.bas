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
	Private page As SDUI5Page						'ignore
	Private mdlLogin As SDUI5Modal					'ignore
	Private txtEmailAddress As SDUI5TextBox			'ignore
	Private txtPassword As SDUI5TextBox				'ignore
	Private txtServer As SDUI5TextBox				'ignore
	Private chkRememberMe As SDUI5CheckBox			'ignore
End Sub

Sub Show(MainApp As SDUI5App)			'ignore
	app = MainApp
	BANano.LoadLayout(app.PageView, "page1view")
	pgIndex.UpdateTitle(page.title)
	name = page.PageName
	icon = page.Icon
	color = page.color
	title = page.title
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
	pgHoverGallery.Show(app)
End Sub

Private Sub txtServer_Prepend (e As BANanoEvent)
	e.PreventDefault
End Sub

Sub ShowLogin
	mdlLogin.Show
End Sub

Sub HideLogin
	mdlLogin.Close
End Sub