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
	Private SDUI5Text1 As SDUI5Text		'ignore
	Private SDUI5Text2 As SDUI5Text		'ignore
	Private SDUI5Text3 As SDUI5Text		'ignore
	Private SDUI5Text4 As SDUI5Text		'ignore
	Private SDUI5Text5 As SDUI5Text		'ignore
	Private SDUI5Text6 As SDUI5Text		'ignore
	Private SDUI5Text7 As SDUI5Text		'ignore
	Private SDUI5Text8 As SDUI5Text		'ignore
	Private SDUI5Text9 As SDUI5Text		'ignore
	Private SDUI5Text10 As SDUI5Text		'ignore
	Private SDUI5Text11 As SDUI5Text		'ignore
	Private SDUI5Text12 As SDUI5Text		'ignore
	Private SDUI5Text13 As SDUI5Text		'ignore
	Private SDUI5Text14 As SDUI5Text		'ignore
	Private SDUI5Text15 As SDUI5Text		'ignore
	Private SDUI5Text16 As SDUI5Text		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Text1.Initialize(Me, "SDUI5Text1", "SDUI5Text1")
	SDUI5Text1.ParentID = "SDUI5Container1"
	'SDUI5Text1.LoremIpsum = False
	SDUI5Text1.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text1.Rounded = "none"
	'SDUI5Text1.Shadow = "none"
	SDUI5Text1.Text = "Heading 1"
	SDUI5Text1.TextTag = "h1"
	BANano.Await(SDUI5Text1.AddComponent)
	'
	SDUI5Text2.Initialize(Me, "SDUI5Text2", "SDUI5Text2")
	SDUI5Text2.ParentID = "SDUI5Container1"
	'SDUI5Text2.LoremIpsum = False
	SDUI5Text2.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text2.Rounded = "none"
	'SDUI5Text2.Shadow = "none"
	SDUI5Text2.Text = "Heading 2"
	SDUI5Text2.TextTag = "h2"
	BANano.Await(SDUI5Text2.AddComponent)
	'
	SDUI5Text3.Initialize(Me, "SDUI5Text3", "SDUI5Text3")
	SDUI5Text3.ParentID = "SDUI5Container1"
	'SDUI5Text3.LoremIpsum = False
	SDUI5Text3.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text3.Rounded = "none"
	'SDUI5Text3.Shadow = "none"
	SDUI5Text3.Text = "Heading 3"
	SDUI5Text3.TextTag = "h3"
	BANano.Await(SDUI5Text3.AddComponent)
	'
	SDUI5Text4.Initialize(Me, "SDUI5Text4", "SDUI5Text4")
	SDUI5Text4.ParentID = "SDUI5Container1"
	'SDUI5Text4.LoremIpsum = False
	SDUI5Text4.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text4.Rounded = "none"
	'SDUI5Text4.Shadow = "none"
	SDUI5Text4.Text = "Heading 4"
	SDUI5Text4.TextTag = "h4"
	BANano.Await(SDUI5Text4.AddComponent)
	'
	SDUI5Text5.Initialize(Me, "SDUI5Text5", "SDUI5Text5")
	SDUI5Text5.ParentID = "SDUI5Container1"
	'SDUI5Text5.LoremIpsum = False
	SDUI5Text5.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text5.Rounded = "none"
	'SDUI5Text5.Shadow = "none"
	SDUI5Text5.Text = "Heading 5"
	SDUI5Text5.TextTag = "h5"
	BANano.Await(SDUI5Text5.AddComponent)
	'
	SDUI5Text6.Initialize(Me, "SDUI5Text6", "SDUI5Text6")
	SDUI5Text6.ParentID = "SDUI5Container1"
	'SDUI5Text6.LoremIpsum = False
	SDUI5Text6.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text6.Rounded = "none"
	'SDUI5Text6.Shadow = "none"
	SDUI5Text6.Text = "Heading 6"
	SDUI5Text6.TextTag = "h6"
	BANano.Await(SDUI5Text6.AddComponent)
	'
	SDUI5Text7.Initialize(Me, "SDUI5Text7", "SDUI5Text7")
	SDUI5Text7.ParentID = "SDUI5Container1"
	SDUI5Text7.ApplyDefaults = False
	'SDUI5Text7.LoremIpsum = False
	SDUI5Text7.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text7.Rounded = "none"
	'SDUI5Text7.Shadow = "none"
	SDUI5Text7.Text = "A new paragraph"
	BANano.Await(SDUI5Text7.AddComponent)
	'
	SDUI5Text8.Initialize(Me, "SDUI5Text8", "SDUI5Text8")
	SDUI5Text8.ParentID = "SDUI5Container1"
	SDUI5Text8.ApplyDefaults = False
	'SDUI5Text8.LoremIpsum = False
	SDUI5Text8.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text8.Rounded = "none"
	'SDUI5Text8.Shadow = "none"
	SDUI5Text8.Text = "Small"
	SDUI5Text8.TextTag = "small"
	BANano.Await(SDUI5Text8.AddComponent)
	'
	SDUI5Text9.Initialize(Me, "SDUI5Text9", "SDUI5Text9")
	SDUI5Text9.ParentID = "SDUI5Container1"
	SDUI5Text9.ApplyDefaults = False
	'SDUI5Text9.LoremIpsum = False
	SDUI5Text9.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text9.Rounded = "none"
	'SDUI5Text9.Shadow = "none"
	SDUI5Text9.Text = "Strong"
	SDUI5Text9.TextTag = "strong"
	BANano.Await(SDUI5Text9.AddComponent)
	'
	SDUI5Text10.Initialize(Me, "SDUI5Text10", "SDUI5Text10")
	SDUI5Text10.ParentID = "SDUI5Container1"
	SDUI5Text10.ApplyDefaults = False
	'SDUI5Text10.LoremIpsum = False
	SDUI5Text10.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text10.Rounded = "none"
	'SDUI5Text10.Shadow = "none"
	SDUI5Text10.Text = "This is marked content"
	SDUI5Text10.TextTag = "mark"
	BANano.Await(SDUI5Text10.AddComponent)
	'
	SDUI5Text11.Initialize(Me, "SDUI5Text11", "SDUI5Text11")
	SDUI5Text11.ParentID = "SDUI5Container1"
	SDUI5Text11.ApplyDefaults = False
	'SDUI5Text11.LoremIpsum = False
	SDUI5Text11.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text11.Rounded = "none"
	'SDUI5Text11.Shadow = "none"
	SDUI5Text11.Text = ""
	BANano.Await(SDUI5Text11.AddComponent)
	'
	SDUI5Text12.Initialize(Me, "SDUI5Text12", "SDUI5Text12")
	SDUI5Text12.ParentID = "SDUI5Text11"
	SDUI5Text12.ApplyDefaults = False
	'SDUI5Text12.LoremIpsum = False
	SDUI5Text12.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text12.Rounded = "none"
	'SDUI5Text12.Shadow = "none"
	SDUI5Text12.Text = "This is deleted text..."
	SDUI5Text12.TextTag = "del"
	BANano.Await(SDUI5Text12.AddComponent)
	'
	SDUI5Text13.Initialize(Me, "SDUI5Text13", "SDUI5Text13")
	SDUI5Text13.ParentID = "SDUI5Container1"
	SDUI5Text13.ApplyDefaults = False
	'SDUI5Text13.LoremIpsum = False
	SDUI5Text13.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text13.Rounded = "none"
	'SDUI5Text13.Shadow = "none"
	SDUI5Text13.Text = ""
	BANano.Await(SDUI5Text13.AddComponent)
	'
	SDUI5Text14.Initialize(Me, "SDUI5Text14", "SDUI5Text14")
	SDUI5Text14.ParentID = "SDUI5Text13"
	SDUI5Text14.ApplyDefaults = False
	'SDUI5Text14.LoremIpsum = False
	SDUI5Text14.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text14.Rounded = "none"
	'SDUI5Text14.Shadow = "none"
	SDUI5Text14.Text = "This text is marked as in-accurate"
	SDUI5Text14.TextTag = "s"
	BANano.Await(SDUI5Text14.AddComponent)
	'
	SDUI5Text15.Initialize(Me, "SDUI5Text15", "SDUI5Text15")
	SDUI5Text15.ParentID = "SDUI5Container1"
	SDUI5Text15.ApplyDefaults = False
	'SDUI5Text15.LoremIpsum = False
	SDUI5Text15.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text15.Rounded = "none"
	'SDUI5Text15.Shadow = "none"
	SDUI5Text15.Text = ""
	BANano.Await(SDUI5Text15.AddComponent)
	'
	SDUI5Text16.Initialize(Me, "SDUI5Text16", "SDUI5Text16")
	SDUI5Text16.ParentID = "SDUI5Text15"
	SDUI5Text16.ApplyDefaults = False
	'SDUI5Text16.LoremIpsum = False
	SDUI5Text16.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Text16.Rounded = "none"
	'SDUI5Text16.Shadow = "none"
	SDUI5Text16.Text = "This should be italic"
	SDUI5Text16.TextTag = "em"
	BANano.Await(SDUI5Text16.AddComponent)
	pgIndex.UpdateTitle("Typography")
End Sub

