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
	Private SDUI5Panel1 As SDUI5Panel		'ignore
	Private SDUI5Panel2 As SDUI5Panel		'ignore
	Private SDUI5Divider4 As SDUI5Divider		'ignore
	Private SDUI5Panel3 As SDUI5Panel		'ignore
	Private SDUI5Panel4 As SDUI5Panel		'ignore
	Private SDUI5Panel5 As SDUI5Panel		'ignore
	Private SDUI5Divider1 As SDUI5Divider		'ignore
	Private SDUI5Panel6 As SDUI5Panel		'ignore
	Private SDUI5Panel7 As SDUI5Panel		'ignore
	Private SDUI5Divider2 As SDUI5Divider		'ignore
	Private SDUI5Divider3 As SDUI5Divider		'ignore
	Private SDUI5Divider5 As SDUI5Divider		'ignore
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
	SDUI5Panel1.Initialize(Me, "SDUI5Panel1", "SDUI5Panel1")
	SDUI5Panel1.ParentID = "SDUI5Row1"
	SDUI5Panel1.Flexbox = True
	SDUI5Panel1.FlexDirection = "col"
	SDUI5Panel1.JustifyItems = ""
	SDUI5Panel1.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.Width = "full"
	BANano.Await(SDUI5Panel1.AddComponent)
	'
	SDUI5Panel2.Initialize(Me, "SDUI5Panel2", "SDUI5Panel2")
	SDUI5Panel2.ParentID = "SDUI5Panel1"
	SDUI5Panel2.BackgroundColor = "base-300"
	SDUI5Panel2.Height = "20"
	SDUI5Panel2.JustifyItems = ""
	SDUI5Panel2.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.RoundedBox = True
	SDUI5Panel2.Width = "full"
	BANano.Await(SDUI5Panel2.AddComponent)
	'
	SDUI5Divider4.Initialize(Me, "SDUI5Divider4", "SDUI5Divider4")
	SDUI5Divider4.ParentID = "SDUI5Panel1"
	BANano.Await(SDUI5Divider4.AddComponent)
	'
	SDUI5Panel3.Initialize(Me, "SDUI5Panel3", "SDUI5Panel3")
	SDUI5Panel3.ParentID = "SDUI5Panel1"
	SDUI5Panel3.BackgroundColor = "base-300"
	SDUI5Panel3.Height = "20"
	SDUI5Panel3.JustifyItems = ""
	SDUI5Panel3.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.RoundedBox = True
	SDUI5Panel3.Width = "full"
	BANano.Await(SDUI5Panel3.AddComponent)
	'
	SDUI5Panel4.Initialize(Me, "SDUI5Panel4", "SDUI5Panel4")
	SDUI5Panel4.ParentID = "SDUI5Row1"
	SDUI5Panel4.Flexbox = True
	SDUI5Panel4.FlexDirection = "row"
	SDUI5Panel4.Height = "300px"
	SDUI5Panel4.JustifyItems = ""
	SDUI5Panel4.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.Width = "full"
	BANano.Await(SDUI5Panel4.AddComponent)
	'
	SDUI5Panel5.Initialize(Me, "SDUI5Panel5", "SDUI5Panel5")
	SDUI5Panel5.ParentID = "SDUI5Panel4"
	SDUI5Panel5.BackgroundColor = "base-300"
	SDUI5Panel5.FlexGrow = "1"
	SDUI5Panel5.Height = "full"
	SDUI5Panel5.JustifyItems = ""
	SDUI5Panel5.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.RoundedBox = True
	SDUI5Panel5.Width = "100px"
	BANano.Await(SDUI5Panel5.AddComponent)
	'
	SDUI5Divider1.Initialize(Me, "SDUI5Divider1", "SDUI5Divider1")
	SDUI5Divider1.ParentID = "SDUI5Panel4"
	SDUI5Divider1.Color = "primary"
	SDUI5Divider1.Direction = "horizontal"
	SDUI5Divider1.Text = "OR"
	BANano.Await(SDUI5Divider1.AddComponent)
	'
	SDUI5Panel6.Initialize(Me, "SDUI5Panel6", "SDUI5Panel6")
	SDUI5Panel6.ParentID = "SDUI5Panel4"
	SDUI5Panel6.BackgroundColor = "base-300"
	SDUI5Panel6.FlexGrow = "1"
	SDUI5Panel6.Height = "full"
	SDUI5Panel6.JustifyItems = ""
	SDUI5Panel6.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.RoundedBox = True
	SDUI5Panel6.Width = "100px"
	BANano.Await(SDUI5Panel6.AddComponent)
	'
	SDUI5Panel7.Initialize(Me, "SDUI5Panel7", "SDUI5Panel7")
	SDUI5Panel7.ParentID = "SDUI5Row1"
	SDUI5Panel7.Flexbox = True
	SDUI5Panel7.FlexDirection = "row"
	SDUI5Panel7.Height = "300px"
	SDUI5Panel7.JustifyItems = ""
	SDUI5Panel7.PaddingAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Panel7.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.Width = "full"
	BANano.Await(SDUI5Panel7.AddComponent)
	'
	SDUI5Divider2.Initialize(Me, "SDUI5Divider2", "SDUI5Divider2")
	SDUI5Divider2.ParentID = "SDUI5Panel7"
	SDUI5Divider2.Direction = "horizontal"
	SDUI5Divider2.Text = "Start"
	SDUI5Divider2.TextPlacement = "start"
	BANano.Await(SDUI5Divider2.AddComponent)
	'
	SDUI5Divider3.Initialize(Me, "SDUI5Divider3", "SDUI5Divider3")
	SDUI5Divider3.ParentID = "SDUI5Panel7"
	SDUI5Divider3.Direction = "horizontal"
	SDUI5Divider3.Text = "OF"
	BANano.Await(SDUI5Divider3.AddComponent)
	'
	SDUI5Divider5.Initialize(Me, "SDUI5Divider5", "SDUI5Divider5")
	SDUI5Divider5.ParentID = "SDUI5Panel7"
	SDUI5Divider5.Direction = "horizontal"
	SDUI5Divider5.Text = "End"
	SDUI5Divider5.TextPlacement = "end"
	BANano.Await(SDUI5Divider5.AddComponent)
	pgIndex.UpdateTitle("SDUI5Divider")
End Sub

