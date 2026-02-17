B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5Wizard1 As SDUI5Wizard		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Text1 As SDUI5Text		'ignore
	Private SDUI5Text2 As SDUI5Text		'ignore
	Private SDUI5Text3 As SDUI5Text		'ignore
	Private SDUI5Text4 As SDUI5Text		'ignore
End Sub


Sub Show
	app = pgIndex.App
	pgIndex.UpdateTitle("SDUI5Wizard")
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
	SDUI5Wizard1.Initialize(Me, "SDUI5Wizard1", "SDUI5Wizard1")
	SDUI5Wizard1.ParentID = "SDUI5Column1"
	SDUI5Wizard1.ButtonsRounded = "lg"
	SDUI5Wizard1.ButtonsShadow = "none"
	SDUI5Wizard1.NextColor = "success"
	SDUI5Wizard1.PreviousColor = "error"
	SDUI5Wizard1.Steps = "Register;Choose Plan;Purchase;Receive Product"
	SDUI5Wizard1.Width = "full"
	BANano.Await(SDUI5Wizard1.AddComponent)
	SDUI5Text1.Initialize(Me, "SDUI5Text1", "SDUI5Text1")
	SDUI5Text1.ParentID = SDUI5Wizard1.ContentAt(1)
	SDUI5Text1.ApplyDefaults = False
	'SDUI5Text1.LoremIpsum = False
	'SDUI5Text1.Rounded = "none"
	'SDUI5Text1.Shadow = "none"
	SDUI5Text1.Text = "Step 1 Content here..."
	BANano.Await(SDUI5Text1.AddComponent)
	SDUI5Text2.Initialize(Me, "SDUI5Text2", "SDUI5Text2")
	SDUI5Text2.ParentID = SDUI5Wizard1.ContentAt(2)
	SDUI5Text2.ApplyDefaults = False
	'SDUI5Text2.LoremIpsum = False
	'SDUI5Text2.Rounded = "none"
	'SDUI5Text2.Shadow = "none"
	SDUI5Text2.Text = "Step 2 Content here..."
	BANano.Await(SDUI5Text2.AddComponent)
	SDUI5Text3.Initialize(Me, "SDUI5Text3", "SDUI5Text3")
	SDUI5Text3.ParentID = SDUI5Wizard1.ContentAt(3)
	SDUI5Text3.ApplyDefaults = False
	'SDUI5Text3.LoremIpsum = False
	'SDUI5Text3.Rounded = "none"
	'SDUI5Text3.Shadow = "none"
	SDUI5Text3.Text = "Step 3 Content here..."
	BANano.Await(SDUI5Text3.AddComponent)
	
	SDUI5Text4.Initialize(Me, "SDUI5Text4", "SDUI5Text4")
	SDUI5Text4.ParentID = SDUI5Wizard1.ContentAt(4)
	SDUI5Text4.ApplyDefaults = False
	'SDUI5Text4.LoremIpsum = False
	SDUI5Text4.Opacity = 95
	'SDUI5Text4.Rounded = "none"
	'SDUI5Text4.Shadow = "none"
	SDUI5Text4.Text = "Step 4 Content here..."
	BANano.Await(SDUI5Text4.AddComponent)
End Sub

Private Sub SDUI5Wizard1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

