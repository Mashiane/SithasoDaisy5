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
	Private acc1 As SDUI5Accordion		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Collapse1 As SDUI5Collapse		'ignore
	Private SDUI5Collapse6 As SDUI5Collapse		'ignore
	Private SDUI5Collapse2 As SDUI5Collapse		'ignore
	Private SDUI5Collapse3 As SDUI5Collapse		'ignore
	Private SDUI5Collapse5 As SDUI5Collapse		'ignore
	Private SDUI5Collapse4 As SDUI5Collapse		'ignore
	Private SDUI5Collapse9 As SDUI5Collapse		'ignore
	Private SDUI5Collapse8 As SDUI5Collapse		'ignore
	Private SDUI5Collapse7 As SDUI5Collapse		'ignore
	Private SDUI5Collapse12 As SDUI5Collapse		'ignore
	Private SDUI5Collapse11 As SDUI5Collapse		'ignore
	Private SDUI5Collapse10 As SDUI5Collapse		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	SDUI5Container1.Classes = "mx-auto"
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
	SDUI5Collapse1.Active = True
	SDUI5Collapse1.GroupName = "grp1"
	SDUI5Collapse1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5Collapse1.Content = "Click the ""Sign Up"" button in the top right corner and follow the registration process."
	SDUI5Collapse1.Title = "How do I create an account?"
	BANano.Await(SDUI5Collapse1.AddComponent)
	'
	SDUI5Collapse6.Initialize(Me, "SDUI5Collapse6", "SDUI5Collapse6")
	SDUI5Collapse6.ParentID = "SDUI5Row1"
	SDUI5Collapse6.GroupName = "grp2"
	SDUI5Collapse6.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5Collapse6.Content = "Click the ""Sign Up"" button in the top right corner and follow the registration process."
	SDUI5Collapse6.Title = "How do I create an account?"
	BANano.Await(SDUI5Collapse6.AddComponent)
	'
	SDUI5Collapse2.Initialize(Me, "SDUI5Collapse2", "SDUI5Collapse2")
	SDUI5Collapse2.ParentID = "SDUI5Row1"
	SDUI5Collapse2.GroupName = "grp1"
	SDUI5Collapse2.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5Collapse2.Content = "Click on ""Forgot Password"" on the login page and follow the instructions sent to your email."
	SDUI5Collapse2.Title = "I forgot my password. What should I do?"
	BANano.Await(SDUI5Collapse2.AddComponent)
	'
	SDUI5Collapse3.Initialize(Me, "SDUI5Collapse3", "SDUI5Collapse3")
	SDUI5Collapse3.ParentID = "SDUI5Row1"
	SDUI5Collapse3.GroupName = "grp1"
	SDUI5Collapse3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5Collapse3.Content = "Go to ""My Account"" settings and select ""Edit Profile"" to make changes."
	SDUI5Collapse3.Title = "How do I update my profile information?"
	BANano.Await(SDUI5Collapse3.AddComponent)
	'
	SDUI5Collapse5.Initialize(Me, "SDUI5Collapse5", "SDUI5Collapse5")
	SDUI5Collapse5.ParentID = "SDUI5Row1"
	SDUI5Collapse5.GroupName = "grp2"
	SDUI5Collapse5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5Collapse5.Content = "Click on ""Forgot Password"" on the login page and follow the instructions sent to your email."
	SDUI5Collapse5.Title = "I forgot my password. What should I do?"
	BANano.Await(SDUI5Collapse5.AddComponent)
	'
	SDUI5Collapse4.Initialize(Me, "SDUI5Collapse4", "SDUI5Collapse4")
	SDUI5Collapse4.ParentID = "SDUI5Row1"
	SDUI5Collapse4.GroupName = "grp2"
	SDUI5Collapse4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5Collapse4.Content = "Go to ""My Account"" settings and select ""Edit Profile"" to make changes."
	SDUI5Collapse4.Title = "How do I update my profile information?"
	BANano.Await(SDUI5Collapse4.AddComponent)
	'
	SDUI5Collapse9.Initialize(Me, "SDUI5Collapse9", "SDUI5Collapse9")
	SDUI5Collapse9.ParentID = "SDUI5Row1"
	SDUI5Collapse9.GroupName = "grp3"
	SDUI5Collapse9.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5Collapse9.Content = "Click the ""Sign Up"" button in the top right corner and follow the registration process."
	SDUI5Collapse9.RightIcon = "plus"
	SDUI5Collapse9.Title = "How do I create an account?"
	BANano.Await(SDUI5Collapse9.AddComponent)
	'
	SDUI5Collapse8.Initialize(Me, "SDUI5Collapse8", "SDUI5Collapse8")
	SDUI5Collapse8.ParentID = "SDUI5Row1"
	SDUI5Collapse8.GroupName = "grp3"
	SDUI5Collapse8.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5Collapse8.Content = "Click on ""Forgot Password"" on the login page and follow the instructions sent to your email."
	SDUI5Collapse8.RightIcon = "plus"
	SDUI5Collapse8.Title = "I forgot my password. What should I do?"
	BANano.Await(SDUI5Collapse8.AddComponent)
	'
	SDUI5Collapse7.Initialize(Me, "SDUI5Collapse7", "SDUI5Collapse7")
	SDUI5Collapse7.ParentID = "SDUI5Row1"
	SDUI5Collapse7.GroupName = "grp3"
	SDUI5Collapse7.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5Collapse7.Content = "Go to ""My Account"" settings and select ""Edit Profile"" to make changes."
	SDUI5Collapse7.RightIcon = "plus"
	SDUI5Collapse7.Title = "How do I update my profile information?"
	BANano.Await(SDUI5Collapse7.AddComponent)
	'
	acc1.Initialize(Me, "acc1", "acc1")
	acc1.ParentID = "SDUI5Row1"
	BANano.Await(acc1.AddComponent)
	'
	SDUI5Collapse12.Initialize(Me, "SDUI5Collapse12", "SDUI5Collapse12")
	SDUI5Collapse12.ParentID = "acc1"
	SDUI5Collapse12.GroupName = "acc1"
	SDUI5Collapse12.JoinItem = True
	SDUI5Collapse12.Content = "Click the ""Sign Up"" button in the top right corner and follow the registration process."
	SDUI5Collapse12.Title = "How do I create an account?"
	BANano.Await(SDUI5Collapse12.AddComponent)
	'
	SDUI5Collapse11.Initialize(Me, "SDUI5Collapse11", "SDUI5Collapse11")
	SDUI5Collapse11.ParentID = "acc1"
	SDUI5Collapse11.GroupName = "acc1"
	SDUI5Collapse11.JoinItem = True
	SDUI5Collapse11.Content = "Click on ""Forgot Password"" on the login page and follow the instructions sent to your email."
	SDUI5Collapse11.Title = "I forgot my password. What should I do?"
	BANano.Await(SDUI5Collapse11.AddComponent)
	'
	SDUI5Collapse10.Initialize(Me, "SDUI5Collapse10", "SDUI5Collapse10")
	SDUI5Collapse10.ParentID = "acc1"
	SDUI5Collapse10.GroupName = "acc1"
	SDUI5Collapse10.JoinItem = True
	SDUI5Collapse10.Content = "Go to ""My Account"" settings and select ""Edit Profile"" to make changes."
	SDUI5Collapse10.Title = "How do I update my profile information?"
	BANano.Await(SDUI5Collapse10.AddComponent)
	pgIndex.UpdateTitle("SDUI5Accordion")
End Sub

Private Sub acc1_Change (Item As String)
	app.ShowToastSuccess(Item)
End Sub

