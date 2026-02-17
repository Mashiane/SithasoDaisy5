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
	Private SDUI5Avatar1 As SDUI5Avatar		'ignore
	Private SDUI5Avatar2 As SDUI5Avatar		'ignore
	Private SDUI5Avatar3 As SDUI5Avatar		'ignore
	Private SDUI5Avatar4 As SDUI5Avatar		'ignore
	Private SDUI5Avatar5 As SDUI5Avatar		'ignore
	Private SDUI5Avatar6 As SDUI5Avatar		'ignore
	Private SDUI5Avatar7 As SDUI5Avatar		'ignore
	Private SDUI5Avatar8 As SDUI5Avatar		'ignore
	Private SDUI5Avatar9 As SDUI5Avatar		'ignore
	Private SDUI5Panel2 As SDUI5Panel		'ignore
	Private SDUI5Indicator1 As SDUI5Indicator		'ignore
	Private SDUI5Panel1 As SDUI5Panel		'ignore
	Private SDUI5Panel3 As SDUI5Panel		'ignore
	Private SDUI5Indicator2 As SDUI5Indicator		'ignore
	Private SDUI5Panel4 As SDUI5Panel		'ignore
	Private SDUI5Panel5 As SDUI5Panel		'ignore
	Private SDUI5Indicator3 As SDUI5Indicator		'ignore
	Private SDUI5Button1 As SDUI5Button		'ignore
	Private SDUI5Panel6 As SDUI5Panel		'ignore
	Private SDUI5Indicator4 As SDUI5Indicator		'ignore
	Private SDUI5Panel7 As SDUI5Panel		'ignore
	Private SDUI5Indicator5 As SDUI5Indicator		'ignore
	Private SDUI5Image1 As SDUI5Image		'ignore
	Private SDUI5Panel8 As SDUI5Panel		'ignore
	Private SDUI5Indicator6 As SDUI5Indicator		'ignore
	Private SDUI5Panel9 As SDUI5Panel		'ignore
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
	SDUI5Row1.GridCols = ""
	SDUI5Row1.GridColsMd = "3"
	SDUI5Row1.GridColsSm = "2"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Avatar1.Initialize(Me, "SDUI5Avatar1", "SDUI5Avatar1")
	SDUI5Avatar1.ParentID = "SDUI5Row1"
	SDUI5Avatar1.Badge = "1"
	SDUI5Avatar1.BadgeSize = "xs"
	SDUI5Avatar1.BadgeVisible = True
	SDUI5Avatar1.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar1.Ring = True
	BANano.Await(SDUI5Avatar1.AddComponent)
	'
	SDUI5Avatar2.Initialize(Me, "SDUI5Avatar2", "SDUI5Avatar2")
	SDUI5Avatar2.ParentID = "SDUI5Row1"
	SDUI5Avatar2.Badge = "1"
	SDUI5Avatar2.BadgeSize = "xs"
	SDUI5Avatar2.BadgeVisible = True
	SDUI5Avatar2.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar2.Ring = True
	BANano.Await(SDUI5Avatar2.AddComponent)
	'
	SDUI5Avatar3.Initialize(Me, "SDUI5Avatar3", "SDUI5Avatar3")
	SDUI5Avatar3.ParentID = "SDUI5Row1"
	SDUI5Avatar3.Badge = "1"
	SDUI5Avatar3.BadgePosition = "top-center"
	SDUI5Avatar3.BadgeSize = "xs"
	SDUI5Avatar3.BadgeVisible = True
	SDUI5Avatar3.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar3.Ring = True
	BANano.Await(SDUI5Avatar3.AddComponent)
	'
	SDUI5Avatar4.Initialize(Me, "SDUI5Avatar4", "SDUI5Avatar4")
	SDUI5Avatar4.ParentID = "SDUI5Row1"
	SDUI5Avatar4.Badge = "1"
	SDUI5Avatar4.BadgePosition = "middle-start"
	SDUI5Avatar4.BadgeSize = "xs"
	SDUI5Avatar4.BadgeVisible = True
	SDUI5Avatar4.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar4.Ring = True
	BANano.Await(SDUI5Avatar4.AddComponent)
	'
	SDUI5Avatar5.Initialize(Me, "SDUI5Avatar5", "SDUI5Avatar5")
	SDUI5Avatar5.ParentID = "SDUI5Row1"
	SDUI5Avatar5.Badge = "1"
	SDUI5Avatar5.BadgePosition = "middle-center"
	SDUI5Avatar5.BadgeSize = "xs"
	SDUI5Avatar5.BadgeVisible = True
	SDUI5Avatar5.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar5.Ring = True
	BANano.Await(SDUI5Avatar5.AddComponent)
	'
	SDUI5Avatar6.Initialize(Me, "SDUI5Avatar6", "SDUI5Avatar6")
	SDUI5Avatar6.ParentID = "SDUI5Row1"
	SDUI5Avatar6.Badge = "1"
	SDUI5Avatar6.BadgePosition = "middle-end"
	SDUI5Avatar6.BadgeSize = "xs"
	SDUI5Avatar6.BadgeVisible = True
	SDUI5Avatar6.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar6.Ring = True
	BANano.Await(SDUI5Avatar6.AddComponent)
	'
	SDUI5Avatar7.Initialize(Me, "SDUI5Avatar7", "SDUI5Avatar7")
	SDUI5Avatar7.ParentID = "SDUI5Row1"
	SDUI5Avatar7.Badge = "1"
	SDUI5Avatar7.BadgePosition = "bottom-start"
	SDUI5Avatar7.BadgeSize = "xs"
	SDUI5Avatar7.BadgeVisible = True
	SDUI5Avatar7.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar7.Ring = True
	BANano.Await(SDUI5Avatar7.AddComponent)
	'
	SDUI5Avatar8.Initialize(Me, "SDUI5Avatar8", "SDUI5Avatar8")
	SDUI5Avatar8.ParentID = "SDUI5Row1"
	SDUI5Avatar8.Badge = "1"
	SDUI5Avatar8.BadgePosition = "bottom-center"
	SDUI5Avatar8.BadgeSize = "xs"
	SDUI5Avatar8.BadgeVisible = True
	SDUI5Avatar8.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar8.Ring = True
	BANano.Await(SDUI5Avatar8.AddComponent)
	'
	SDUI5Avatar9.Initialize(Me, "SDUI5Avatar9", "SDUI5Avatar9")
	SDUI5Avatar9.ParentID = "SDUI5Row1"
	SDUI5Avatar9.Badge = "1"
	SDUI5Avatar9.BadgePosition = "bottom-end"
	SDUI5Avatar9.BadgeSize = "xs"
	SDUI5Avatar9.BadgeVisible = True
	SDUI5Avatar9.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar9.Ring = True
	BANano.Await(SDUI5Avatar9.AddComponent)
	'
	SDUI5Panel2.Initialize(Me, "SDUI5Panel2", "SDUI5Panel2")
	SDUI5Panel2.ParentID = "SDUI5Row1"
	SDUI5Panel2.Height = "56"
	SDUI5Panel2.JustifyItems = ""
	SDUI5Panel2.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Panel2.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel2.Width = "56"
	BANano.Await(SDUI5Panel2.AddComponent)
	'
	SDUI5Indicator1.Initialize(Me, "SDUI5Indicator1", "SDUI5Indicator1")
	SDUI5Indicator1.ParentID = "SDUI5Panel2"
	SDUI5Indicator1.Color = "success"
	SDUI5Indicator1.Position = "top-end"
	'SDUI5Indicator1.Size = "none"
	SDUI5Indicator1.TypeOf = "status"
	BANano.Await(SDUI5Indicator1.AddComponent)
	'
	SDUI5Panel1.Initialize(Me, "SDUI5Panel1", "SDUI5Panel1")
	SDUI5Panel1.ParentID = "SDUI5Indicator1"
	SDUI5Panel1.BackgroundColor = "base-300"
	SDUI5Panel1.Grid = True
	SDUI5Panel1.Height = "32"
	SDUI5Panel1.JustifyItems = ""
	SDUI5Panel1.PlaceItems = "center"
	SDUI5Panel1.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel1.Text = "Content"
	SDUI5Panel1.Width = "32"
	BANano.Await(SDUI5Panel1.AddComponent)
	'
	SDUI5Panel3.Initialize(Me, "SDUI5Panel3", "SDUI5Panel3")
	SDUI5Panel3.ParentID = "SDUI5Row1"
	SDUI5Panel3.Height = "56"
	SDUI5Panel3.JustifyItems = ""
	SDUI5Panel3.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Panel3.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel3.Width = "56"
	BANano.Await(SDUI5Panel3.AddComponent)
	'
	SDUI5Indicator2.Initialize(Me, "SDUI5Indicator2", "SDUI5Indicator2")
	SDUI5Indicator2.ParentID = "SDUI5Panel3"
	SDUI5Indicator2.Color = "primary"
	SDUI5Indicator2.Position = "top-end"
	'SDUI5Indicator2.Size = "none"
	SDUI5Indicator2.Text = "New"
	BANano.Await(SDUI5Indicator2.AddComponent)
	'
	SDUI5Panel4.Initialize(Me, "SDUI5Panel4", "SDUI5Panel4")
	SDUI5Panel4.ParentID = "SDUI5Indicator2"
	SDUI5Panel4.BackgroundColor = "base-300"
	SDUI5Panel4.Grid = True
	SDUI5Panel4.Height = "32"
	SDUI5Panel4.JustifyItems = ""
	SDUI5Panel4.PlaceItems = "center"
	SDUI5Panel4.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel4.Text = "Content"
	SDUI5Panel4.Width = "32"
	BANano.Await(SDUI5Panel4.AddComponent)
	'
	SDUI5Panel5.Initialize(Me, "SDUI5Panel5", "SDUI5Panel5")
	SDUI5Panel5.ParentID = "SDUI5Row1"
	SDUI5Panel5.Height = "56"
	SDUI5Panel5.JustifyItems = ""
	SDUI5Panel5.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Panel5.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel5.Width = "56"
	BANano.Await(SDUI5Panel5.AddComponent)
	'
	SDUI5Indicator3.Initialize(Me, "SDUI5Indicator3", "SDUI5Indicator3")
	SDUI5Indicator3.ParentID = "SDUI5Panel5"
	SDUI5Indicator3.Color = "secondary"
	SDUI5Indicator3.Position = "top-end"
	'SDUI5Indicator3.Size = "none"
	SDUI5Indicator3.Text = "12"
	BANano.Await(SDUI5Indicator3.AddComponent)
	'
	SDUI5Button1.Initialize(Me, "SDUI5Button1", "SDUI5Button1")
	SDUI5Button1.ParentID = "SDUI5Indicator3"
	SDUI5Button1.IconSize = "none"
	'SDUI5Button1.Image = ""
	'SDUI5Button1.ImageHeight = "32px"
	'SDUI5Button1.ImageWidth = "32px"
	SDUI5Button1.Size = "none"
	SDUI5Button1.Text = "Inbox"
	BANano.Await(SDUI5Button1.AddComponent)
	'
	SDUI5Panel6.Initialize(Me, "SDUI5Panel6", "SDUI5Panel6")
	SDUI5Panel6.ParentID = "SDUI5Row1"
	SDUI5Panel6.Height = "56"
	SDUI5Panel6.JustifyItems = ""
	SDUI5Panel6.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Panel6.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel6.Width = "56"
	BANano.Await(SDUI5Panel6.AddComponent)
	'
	SDUI5Indicator4.Initialize(Me, "SDUI5Indicator4", "SDUI5Indicator4")
	SDUI5Indicator4.ParentID = "SDUI5Panel6"
	SDUI5Indicator4.Color = "error"
	SDUI5Indicator4.Position = "top-end"
	'SDUI5Indicator4.Size = "none"
	SDUI5Indicator4.Text = "Required"
	BANano.Await(SDUI5Indicator4.AddComponent)
	'
	SDUI5Panel7.Initialize(Me, "SDUI5Panel7", "SDUI5Panel7")
	SDUI5Panel7.ParentID = "SDUI5Row1"
	SDUI5Panel7.Height = "56"
	SDUI5Panel7.JustifyItems = ""
	SDUI5Panel7.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Panel7.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel7.Width = "56"
	BANano.Await(SDUI5Panel7.AddComponent)
	'
	SDUI5Indicator5.Initialize(Me, "SDUI5Indicator5", "SDUI5Indicator5")
	SDUI5Indicator5.ParentID = "SDUI5Panel7"
	SDUI5Indicator5.Color = "info"
	SDUI5Indicator5.Position = "middle-center"
	'SDUI5Indicator5.Size = "md"
	SDUI5Indicator5.Text = "Only available for Pro users"
	BANano.Await(SDUI5Indicator5.AddComponent)
	'
	SDUI5Image1.Initialize(Me, "SDUI5Image1", "SDUI5Image1")
	SDUI5Image1.ParentID = "SDUI5Indicator5"
	SDUI5Image1.Height = "188px"
	SDUI5Image1.Shadow = "lg"
	SDUI5Image1.Src = "https://img.daisyui.com/images/stock/photo-1606107557195-0e29a4b5b4aa.webp"
	SDUI5Image1.Width = "320px"
	BANano.Await(SDUI5Image1.AddComponent)
	'
	SDUI5Panel8.Initialize(Me, "SDUI5Panel8", "SDUI5Panel8")
	SDUI5Panel8.ParentID = "SDUI5Row1"
	SDUI5Panel8.Height = "56"
	SDUI5Panel8.JustifyItems = ""
	SDUI5Panel8.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Panel8.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel8.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel8.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel8.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel8.Width = "56"
	BANano.Await(SDUI5Panel8.AddComponent)
	'
	SDUI5Indicator6.Initialize(Me, "SDUI5Indicator6", "SDUI5Indicator6")
	SDUI5Indicator6.ParentID = "SDUI5Panel8"
	SDUI5Indicator6.Color = "secondary"
	'SDUI5Indicator6.Size = "md"
	SDUI5Indicator6.Text = ""
	BANano.Await(SDUI5Indicator6.AddComponent)
	'
	SDUI5Panel9.Initialize(Me, "SDUI5Panel9", "SDUI5Panel9")
	SDUI5Panel9.ParentID = "SDUI5Indicator6"
	SDUI5Panel9.BackgroundColor = "base-300"
	SDUI5Panel9.Grid = True
	SDUI5Panel9.Height = "32"
	SDUI5Panel9.JustifyItems = ""
	SDUI5Panel9.PlaceItems = "center"
	SDUI5Panel9.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel9.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel9.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel9.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?"
	SDUI5Panel9.Text = "Content"
	SDUI5Panel9.Width = "32"
	BANano.Await(SDUI5Panel9.AddComponent)
	pgIndex.UpdateTitle("SDUI5Indicator")
End Sub

