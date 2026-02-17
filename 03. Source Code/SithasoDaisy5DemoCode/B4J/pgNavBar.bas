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
	Private navbar As SDUI5NavBar		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5NavBar2 As SDUI5NavBar		'ignore
	Private SDUI5NavBar3 As SDUI5NavBar		'ignore
	Private SDUI5NavBar4 As SDUI5NavBar		'ignore
	Private SDUI5NavBar5 As SDUI5NavBar		'ignore
	Private SDUI5Avatar1 As SDUI5Avatar		'ignore
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
	SDUI5Row1.GridCols = "1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	navbar.Initialize(Me, "navbar", "navbar")
	navbar.ParentID = "SDUI5Row1"
	navbar.BackgroundColor = "base-300"
	navbar.HasLogo = True
	navbar.Height = ""
	navbar.LogoMask = "rounded"
	navbar.Rounded = "rounded"
	navbar.Shadow = "lg"
	navbar.Sticky = False
	navbar.Title = "Left Title"
	navbar.Top = ""
	navbar.Width = "full"
	navbar.ZIndex = ""
	BANano.Await(navbar.AddComponent)
	'
	SDUI5NavBar2.Initialize(Me, "SDUI5NavBar2", "SDUI5NavBar2")
	SDUI5NavBar2.ParentID = "SDUI5Row1"
	SDUI5NavBar2.BackgroundColor = "base-300"
	SDUI5NavBar2.HasBurger = False
	SDUI5NavBar2.Height = ""
	SDUI5NavBar2.Rounded = "rounded"
	SDUI5NavBar2.Shadow = "lg"
	SDUI5NavBar2.Sticky = False
	SDUI5NavBar2.Title = "Center Title"
	SDUI5NavBar2.TitlePosition = "center"
	SDUI5NavBar2.Top = ""
	SDUI5NavBar2.Width = "full"
	SDUI5NavBar2.ZIndex = ""
	BANano.Await(SDUI5NavBar2.AddComponent)
	'
	SDUI5NavBar3.Initialize(Me, "SDUI5NavBar3", "SDUI5NavBar3")
	SDUI5NavBar3.ParentID = "SDUI5Row1"
	SDUI5NavBar3.BackgroundColor = "base-300"
	SDUI5NavBar3.HasBurger = False
	SDUI5NavBar3.Height = ""
	SDUI5NavBar3.Rounded = "rounded"
	SDUI5NavBar3.Shadow = "lg"
	SDUI5NavBar3.Sticky = False
	SDUI5NavBar3.Title = "Right Title"
	SDUI5NavBar3.TitlePosition = "right"
	SDUI5NavBar3.Top = ""
	SDUI5NavBar3.Width = "full"
	SDUI5NavBar3.ZIndex = ""
	BANano.Await(SDUI5NavBar3.AddComponent)
	'
	SDUI5NavBar4.Initialize(Me, "SDUI5NavBar4", "SDUI5NavBar4")
	SDUI5NavBar4.ParentID = "SDUI5Row1"
	SDUI5NavBar4.BackgroundColor = "primary"
	SDUI5NavBar4.HasBurger = False
	SDUI5NavBar4.Height = ""
	SDUI5NavBar4.Rounded = "rounded"
	SDUI5NavBar4.Shadow = "lg"
	SDUI5NavBar4.Sticky = False
	SDUI5NavBar4.TextColor = "primary-content"
	SDUI5NavBar4.Title = "Left Title"
	SDUI5NavBar4.Top = ""
	SDUI5NavBar4.Width = "full"
	SDUI5NavBar4.ZIndex = ""
	BANano.Await(SDUI5NavBar4.AddComponent)
	'
	SDUI5NavBar5.Initialize(Me, "SDUI5NavBar5", "SDUI5NavBar5")
	SDUI5NavBar5.ParentID = "SDUI5Row1"
	SDUI5NavBar5.BackgroundColor = "neutral"
	SDUI5NavBar5.HasBurger = False
	SDUI5NavBar5.Height = ""
	SDUI5NavBar5.Rounded = "rounded"
	SDUI5NavBar5.Shadow = "lg"
	SDUI5NavBar5.Sticky = False
	SDUI5NavBar5.TextColor = "neutral-content"
	SDUI5NavBar5.Title = "Left Title"
	SDUI5NavBar5.Top = ""
	SDUI5NavBar5.Width = "full"
	SDUI5NavBar5.ZIndex = ""
	BANano.Await(SDUI5NavBar5.AddComponent)
	'
	SDUI5Avatar1.Initialize(Me, "SDUI5Avatar1", "SDUI5Avatar1")
	SDUI5Avatar1.ParentID = "navbar_right"
	SDUI5Avatar1.Ring = True
	SDUI5Avatar1.Size = "10"
	BANano.Await(SDUI5Avatar1.AddComponent)
	pgIndex.UpdateTitle("SDUI5NavBar")
End Sub

Private Sub navbar_TitleClick (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("Title Click!") 
End Sub

Private Sub navbar_BurgerClick (value As Boolean)
	app.ShowToastSuccess(value)
End Sub

