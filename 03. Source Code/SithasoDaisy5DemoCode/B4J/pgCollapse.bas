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
	Private SDUI5Collapse1 As SDUI5Collapse		'ignore
	Private SDUI5Collapse2 As SDUI5Collapse		'ignore
	Private SDUI5Collapse3 As SDUI5Collapse		'ignore
	Private SDUI5Collapse4 As SDUI5Collapse		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.GridCols = ""
	SDUI5Row1.GridColsMd = "2"
	SDUI5Row1.GridColsSm = "1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Collapse1.Initialize(Me, "SDUI5Collapse1", "SDUI5Collapse1")
	SDUI5Collapse1.ParentID = "SDUI5Row1"
	SDUI5Collapse1.ContentTextSize = "none"
	SDUI5Collapse1.Icon = "./assets/masks-theater-solid.svg"
	SDUI5Collapse1.IconColor = "#e75480"
	SDUI5Collapse1.Content = "Click the ""Sign Up"" button in the top right corner and follow the registration process."
	SDUI5Collapse1.Title = "How do I create an account?"
	BANano.Await(SDUI5Collapse1.AddComponent)
	'
	SDUI5Collapse2.Initialize(Me, "SDUI5Collapse2", "SDUI5Collapse2")
	SDUI5Collapse2.ParentID = "SDUI5Row1"
	SDUI5Collapse2.ContentTextSize = "none"
	SDUI5Collapse2.IconSize = "42px"
	SDUI5Collapse2.Content = "Click the ""Sign Up"" button in the top right corner and follow the registration process."
	SDUI5Collapse2.Title = "How do I create an account?"
	BANano.Await(SDUI5Collapse2.AddComponent)
	'
	SDUI5Collapse3.Initialize(Me, "SDUI5Collapse3", "SDUI5Collapse3")
	SDUI5Collapse3.ParentID = "SDUI5Row1"
	SDUI5Collapse3.ContentTextSize = "none"
	SDUI5Collapse3.IconSize = "42px"
	SDUI5Collapse3.Content = "Click the ""Sign Up"" button in the top right corner and follow the registration process."
	SDUI5Collapse3.RightIcon = "plus"
	SDUI5Collapse3.Title = "How do I create an account?"
	BANano.Await(SDUI5Collapse3.AddComponent)
	'
	SDUI5Collapse4.Initialize(Me, "SDUI5Collapse4", "SDUI5Collapse4")
	SDUI5Collapse4.ParentID = "SDUI5Row1"
	SDUI5Collapse4.ContentTextSize = "none"
	SDUI5Collapse4.IconSize = "42px"
	SDUI5Collapse4.OpenClose = "open"
	SDUI5Collapse4.Content = "Click the ""Sign Up"" button in the top right corner and follow the registration process."
	SDUI5Collapse4.RightIcon = "plus"
	SDUI5Collapse4.Title = "How do I create an account?"
	BANano.Await(SDUI5Collapse4.AddComponent)
	pgIndex.UpdateTitle("SDUI5Collapse")
End Sub

