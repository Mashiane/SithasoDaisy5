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
	Private SDUI5Stack1 As SDUI5Stack		'ignore
	Private SDUI5Image1 As SDUI5Image		'ignore
	Private SDUI5Image2 As SDUI5Image		'ignore
	Private SDUI5Image3 As SDUI5Image		'ignore
	Private SDUI5Stack2 As SDUI5Stack		'ignore
	Private SDUI5Panel1 As SDUI5Panel		'ignore
	Private SDUI5Panel2 As SDUI5Panel		'ignore
	Private SDUI5Panel3 As SDUI5Panel		'ignore
	Private SDUI5Stack3 As SDUI5Stack		'ignore
	Private SDUI5Panel4 As SDUI5Panel		'ignore
	Private SDUI5Panel5 As SDUI5Panel		'ignore
	Private SDUI5Panel6 As SDUI5Panel		'ignore
	Private SDUI5Stack4 As SDUI5Stack		'ignore
	Private SDUI5Panel7 As SDUI5Panel		'ignore
	Private SDUI5Panel8 As SDUI5Panel		'ignore
	Private SDUI5Panel9 As SDUI5Panel		'ignore
	Private SDUI5Stack5 As SDUI5Stack		'ignore
	Private SDUI5Panel10 As SDUI5Panel		'ignore
	Private SDUI5Panel11 As SDUI5Panel		'ignore
	Private SDUI5Panel12 As SDUI5Panel		'ignore
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
	SDUI5Row1.GridColsMd = "2"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Stack1.Initialize(Me, "SDUI5Stack1", "SDUI5Stack1")
	SDUI5Stack1.ParentID = "SDUI5Row1"
	BANano.Await(SDUI5Stack1.AddComponent)
	'
	SDUI5Image1.Initialize(Me, "SDUI5Image1", "SDUI5Image1")
	SDUI5Image1.ParentID = "SDUI5Stack1"
	SDUI5Image1.Height = ""
	SDUI5Image1.Mask = "none"
	SDUI5Image1.RoundedBox = True
	SDUI5Image1.Src = "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp"
	SDUI5Image1.Width = ""
	BANano.Await(SDUI5Image1.AddComponent)
	'
	SDUI5Image2.Initialize(Me, "SDUI5Image2", "SDUI5Image2")
	SDUI5Image2.ParentID = "SDUI5Stack1"
	SDUI5Image2.Height = ""
	SDUI5Image2.Mask = "none"
	SDUI5Image2.RoundedBox = True
	SDUI5Image2.Src = "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp"
	SDUI5Image2.Width = ""
	BANano.Await(SDUI5Image2.AddComponent)
	'
	SDUI5Image3.Initialize(Me, "SDUI5Image3", "SDUI5Image3")
	SDUI5Image3.ParentID = "SDUI5Stack1"
	SDUI5Image3.Height = ""
	SDUI5Image3.Mask = "none"
	SDUI5Image3.RoundedBox = True
	SDUI5Image3.Src = "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp"
	SDUI5Image3.Width = ""
	BANano.Await(SDUI5Image3.AddComponent)
	'
	SDUI5Stack2.Initialize(Me, "SDUI5Stack2", "SDUI5Stack2")
	SDUI5Stack2.ParentID = "SDUI5Row1"
	SDUI5Stack2.Height = "20"
	SDUI5Stack2.Width = "32"
	BANano.Await(SDUI5Stack2.AddComponent)
	'
	SDUI5Panel1.Initialize(Me, "SDUI5Panel1", "SDUI5Panel1")
	SDUI5Panel1.ParentID = "SDUI5Stack2"
	SDUI5Panel1.BackgroundColor = "primary"
	SDUI5Panel1.Grid = True
	SDUI5Panel1.JustifyItems = ""
	SDUI5Panel1.PlaceContent = "center"
	SDUI5Panel1.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.RoundedBox = True
	SDUI5Panel1.Text = "1"
	SDUI5Panel1.TextColor = "primary-content"
	BANano.Await(SDUI5Panel1.AddComponent)
	'
	SDUI5Panel2.Initialize(Me, "SDUI5Panel2", "SDUI5Panel2")
	SDUI5Panel2.ParentID = "SDUI5Stack2"
	SDUI5Panel2.BackgroundColor = "accent"
	SDUI5Panel2.Grid = True
	SDUI5Panel2.JustifyItems = ""
	SDUI5Panel2.PlaceContent = "center"
	SDUI5Panel2.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.RoundedBox = True
	SDUI5Panel2.Text = "2"
	SDUI5Panel2.TextColor = "accent-content"
	BANano.Await(SDUI5Panel2.AddComponent)
	'
	SDUI5Panel3.Initialize(Me, "SDUI5Panel3", "SDUI5Panel3")
	SDUI5Panel3.ParentID = "SDUI5Stack2"
	SDUI5Panel3.BackgroundColor = "secondary"
	SDUI5Panel3.Grid = True
	SDUI5Panel3.JustifyItems = ""
	SDUI5Panel3.PlaceContent = "center"
	SDUI5Panel3.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.RoundedBox = True
	SDUI5Panel3.Text = "3"
	SDUI5Panel3.TextColor = "secondary-content"
	BANano.Await(SDUI5Panel3.AddComponent)
	'
	SDUI5Stack3.Initialize(Me, "SDUI5Stack3", "SDUI5Stack3")
	SDUI5Stack3.ParentID = "SDUI5Row1"
	SDUI5Stack3.Alignment = "end"
	SDUI5Stack3.Height = "20"
	SDUI5Stack3.Width = "32"
	BANano.Await(SDUI5Stack3.AddComponent)
	'
	SDUI5Panel4.Initialize(Me, "SDUI5Panel4", "SDUI5Panel4")
	SDUI5Panel4.ParentID = "SDUI5Stack3"
	SDUI5Panel4.BackgroundColor = "secondary"
	SDUI5Panel4.Grid = True
	SDUI5Panel4.JustifyItems = ""
	SDUI5Panel4.PlaceContent = "center"
	SDUI5Panel4.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.RoundedBox = True
	SDUI5Panel4.Text = "3"
	SDUI5Panel4.TextColor = "secondary-content"
	BANano.Await(SDUI5Panel4.AddComponent)
	'
	SDUI5Panel5.Initialize(Me, "SDUI5Panel5", "SDUI5Panel5")
	SDUI5Panel5.ParentID = "SDUI5Stack3"
	SDUI5Panel5.BackgroundColor = "accent"
	SDUI5Panel5.Grid = True
	SDUI5Panel5.JustifyItems = ""
	SDUI5Panel5.PlaceContent = "center"
	SDUI5Panel5.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.RoundedBox = True
	SDUI5Panel5.Text = "2"
	SDUI5Panel5.TextColor = "accent-content"
	BANano.Await(SDUI5Panel5.AddComponent)
	'
	SDUI5Panel6.Initialize(Me, "SDUI5Panel6", "SDUI5Panel6")
	SDUI5Panel6.ParentID = "SDUI5Stack3"
	SDUI5Panel6.BackgroundColor = "primary"
	SDUI5Panel6.Grid = True
	SDUI5Panel6.JustifyItems = ""
	SDUI5Panel6.PlaceContent = "center"
	SDUI5Panel6.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.RoundedBox = True
	SDUI5Panel6.Text = "1"
	SDUI5Panel6.TextColor = "primary-content"
	BANano.Await(SDUI5Panel6.AddComponent)
	'
	SDUI5Stack4.Initialize(Me, "SDUI5Stack4", "SDUI5Stack4")
	SDUI5Stack4.ParentID = "SDUI5Row1"
	SDUI5Stack4.Alignment = "start"
	SDUI5Stack4.Height = "20"
	SDUI5Stack4.Width = "32"
	BANano.Await(SDUI5Stack4.AddComponent)
	'
	SDUI5Panel7.Initialize(Me, "SDUI5Panel7", "SDUI5Panel7")
	SDUI5Panel7.ParentID = "SDUI5Stack4"
	SDUI5Panel7.BackgroundColor = "secondary"
	SDUI5Panel7.Grid = True
	SDUI5Panel7.JustifyItems = ""
	SDUI5Panel7.PlaceContent = "center"
	SDUI5Panel7.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.RoundedBox = True
	SDUI5Panel7.Text = "3"
	SDUI5Panel7.TextColor = "secondary-content"
	BANano.Await(SDUI5Panel7.AddComponent)
	'
	SDUI5Panel8.Initialize(Me, "SDUI5Panel8", "SDUI5Panel8")
	SDUI5Panel8.ParentID = "SDUI5Stack4"
	SDUI5Panel8.BackgroundColor = "accent"
	SDUI5Panel8.Grid = True
	SDUI5Panel8.JustifyItems = ""
	SDUI5Panel8.PlaceContent = "center"
	SDUI5Panel8.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel8.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel8.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel8.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel8.RoundedBox = True
	SDUI5Panel8.Text = "2"
	SDUI5Panel8.TextColor = "accent-content"
	BANano.Await(SDUI5Panel8.AddComponent)
	'
	SDUI5Panel9.Initialize(Me, "SDUI5Panel9", "SDUI5Panel9")
	SDUI5Panel9.ParentID = "SDUI5Stack4"
	SDUI5Panel9.BackgroundColor = "primary"
	SDUI5Panel9.Grid = True
	SDUI5Panel9.JustifyItems = ""
	SDUI5Panel9.PlaceContent = "center"
	SDUI5Panel9.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel9.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel9.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel9.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel9.RoundedBox = True
	SDUI5Panel9.Text = "1"
	SDUI5Panel9.TextColor = "primary-content"
	BANano.Await(SDUI5Panel9.AddComponent)
	'
	SDUI5Stack5.Initialize(Me, "SDUI5Stack5", "SDUI5Stack5")
	SDUI5Stack5.ParentID = "SDUI5Row1"
	SDUI5Stack5.Alignment = "top"
	SDUI5Stack5.Height = "20"
	SDUI5Stack5.Width = "32"
	BANano.Await(SDUI5Stack5.AddComponent)
	'
	SDUI5Panel10.Initialize(Me, "SDUI5Panel10", "SDUI5Panel10")
	SDUI5Panel10.ParentID = "SDUI5Stack5"
	SDUI5Panel10.BackgroundColor = "secondary"
	SDUI5Panel10.Grid = True
	SDUI5Panel10.JustifyItems = ""
	SDUI5Panel10.PlaceContent = "center"
	SDUI5Panel10.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel10.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel10.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel10.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel10.RoundedBox = True
	SDUI5Panel10.Text = "3"
	SDUI5Panel10.TextColor = "secondary-content"
	BANano.Await(SDUI5Panel10.AddComponent)
	'
	SDUI5Panel11.Initialize(Me, "SDUI5Panel11", "SDUI5Panel11")
	SDUI5Panel11.ParentID = "SDUI5Stack5"
	SDUI5Panel11.BackgroundColor = "accent"
	SDUI5Panel11.Grid = True
	SDUI5Panel11.JustifyItems = ""
	SDUI5Panel11.PlaceContent = "center"
	SDUI5Panel11.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel11.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel11.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel11.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel11.RoundedBox = True
	SDUI5Panel11.Text = "2"
	SDUI5Panel11.TextColor = "accent-content"
	BANano.Await(SDUI5Panel11.AddComponent)
	'
	SDUI5Panel12.Initialize(Me, "SDUI5Panel12", "SDUI5Panel12")
	SDUI5Panel12.ParentID = "SDUI5Stack5"
	SDUI5Panel12.BackgroundColor = "primary"
	SDUI5Panel12.Grid = True
	SDUI5Panel12.JustifyItems = ""
	SDUI5Panel12.PlaceContent = "center"
	SDUI5Panel12.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel12.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel12.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel12.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel12.RoundedBox = True
	SDUI5Panel12.Text = "1"
	SDUI5Panel12.TextColor = "primary-content"
	BANano.Await(SDUI5Panel12.AddComponent)
	pgIndex.UpdateTitle("SDUI5Stack")
End Sub

