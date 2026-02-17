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
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Timeline1 As SDUI5Timeline		'ignore
	Private SDUI5TimelineItem1 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem2 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem3 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem4 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem5 As SDUI5TimelineItem		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Timeline2 As SDUI5Timeline		'ignore
	Private SDUI5TimelineItem6 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem7 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem8 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem9 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem10 As SDUI5TimelineItem		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Timeline3 As SDUI5Timeline		'ignore
	Private SDUI5TimelineItem11 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem12 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem13 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem14 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem15 As SDUI5TimelineItem		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Timeline4 As SDUI5Timeline		'ignore
	Private SDUI5TimelineItem16 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem17 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem18 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem19 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem20 As SDUI5TimelineItem		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Timeline5 As SDUI5Timeline		'ignore
	Private SDUI5TimelineItem21 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem22 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem23 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem24 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem25 As SDUI5TimelineItem		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Timeline6 As SDUI5Timeline		'ignore
	Private SDUI5TimelineItem26 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem27 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem28 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem29 As SDUI5TimelineItem		'ignore
	Private SDUI5TimelineItem30 As SDUI5TimelineItem		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.BackgroundColor = ""
	SDUI5Container1.CenterChildren = False
	SDUI5Container1.Container = True
	SDUI5Container1.ContainerFluid = False
	SDUI5Container1.ContainerLg = False
	SDUI5Container1.ContainerMd = False
	SDUI5Container1.ContainerSm = False
	SDUI5Container1.ContainerXl = False
	SDUI5Container1.ContainerXxl = False
	SDUI5Container1.Enabled = True
	SDUI5Container1.Height = ""
	SDUI5Container1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Container1.MaxHeight = ""
	SDUI5Container1.MaxWidth = ""
	SDUI5Container1.MinHeight = ""
	SDUI5Container1.MinWidth = ""
	SDUI5Container1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Container1.Position = "t=?; b=?; r=?; l=?"
	SDUI5Container1.PositionStyle = "none"
	SDUI5Container1.Attributes = ""
	SDUI5Container1.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Container1.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Container1.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Container1.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Container1.Classes = ""
	SDUI5Container1.Styles = ""
	SDUI5Container1.Rounded = "none"
	SDUI5Container1.Shadow = "none"
	SDUI5Container1.Text = ""
	SDUI5Container1.TextAlign = "none"
	SDUI5Container1.TextColor = ""
	SDUI5Container1.Visible = True
	SDUI5Container1.Width = ""
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.AlignContent = "none"
	SDUI5Row1.AlignItems = "none"
	SDUI5Row1.AlignSelf = "none"
	SDUI5Row1.BackgroundColor = ""
	SDUI5Row1.CenterChildren = False
	SDUI5Row1.Enabled = True
	SDUI5Row1.Gap = "2"
	SDUI5Row1.GridCols = "12"
	SDUI5Row1.GridColsLg = ""
	SDUI5Row1.GridColsMd = ""
	SDUI5Row1.GridColsSm = "1"
	SDUI5Row1.GridColsXl = ""
	SDUI5Row1.GridColsXxl = ""
	SDUI5Row1.Height = ""
	SDUI5Row1.JustifyContent = "none"
	SDUI5Row1.JustifyItems = "none"
	SDUI5Row1.JustifySelf = "none"
	SDUI5Row1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Row1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Row1.PlaceContent = "none"
	SDUI5Row1.PlaceItems = "none"
	SDUI5Row1.PlaceSelf = "none"
	SDUI5Row1.Position = "t=?; b=?; r=?; l=?"
	SDUI5Row1.PositionStyle = "none"
	SDUI5Row1.Attributes = ""
	SDUI5Row1.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Row1.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Row1.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Row1.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Row1.Classes = ""
	SDUI5Row1.Styles = ""
	SDUI5Row1.Rounded = "none"
	SDUI5Row1.Shadow = "none"
	SDUI5Row1.TextAlign = "none"
	SDUI5Row1.TextColor = ""
	SDUI5Row1.Visible = True
	SDUI5Row1.Width = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignContent = "none"
	SDUI5Column1.AlignItems = "none"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.BackgroundColor = ""
	SDUI5Column1.CenterChildren = False
	SDUI5Column1.Enabled = True
	SDUI5Column1.Height = ""
	SDUI5Column1.JustifyContent = "none"
	SDUI5Column1.JustifyItems = "none"
	SDUI5Column1.JustifySelf = "none"
	SDUI5Column1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.OffsetLg = ""
	SDUI5Column1.OffsetMd = ""
	SDUI5Column1.OffsetSm = ""
	SDUI5Column1.OffsetXl = ""
	SDUI5Column1.OffsetXxl = ""
	SDUI5Column1.Order = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.PlaceContent = "none"
	SDUI5Column1.PlaceItems = "none"
	SDUI5Column1.PlaceSelf = "none"
	SDUI5Column1.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column1.PositionStyle = "none"
	SDUI5Column1.Attributes = ""
	SDUI5Column1.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column1.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column1.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column1.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column1.Classes = ""
	SDUI5Column1.Styles = ""
	SDUI5Column1.Rounded = "none"
	SDUI5Column1.Shadow = "none"
	SDUI5Column1.Size = "12"
	SDUI5Column1.SizeLg = ""
	SDUI5Column1.SizeMd = ""
	SDUI5Column1.SizeSm = ""
	SDUI5Column1.SizeXl = ""
	SDUI5Column1.SizeXxl = ""
	SDUI5Column1.Text = ""
	SDUI5Column1.TextAlign = "none"
	SDUI5Column1.TextColor = ""
	SDUI5Column1.Visible = True
	SDUI5Column1.Width = ""
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Timeline1.Initialize(Me, "SDUI5Timeline1", "SDUI5Timeline1")
	SDUI5Timeline1.ParentID = "SDUI5Column1"
	SDUI5Timeline1.Compact = False
	SDUI5Timeline1.Direction = "horizontal"
	SDUI5Timeline1.Enabled = True
	SDUI5Timeline1.LGDirection = "none"
	SDUI5Timeline1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline1.MDDirection = "none"
	SDUI5Timeline1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline1.Position = "t=?; b=?; r=?; l=?"
	SDUI5Timeline1.PositionStyle = "none"
	SDUI5Timeline1.Attributes = ""
	SDUI5Timeline1.Classes = ""
	SDUI5Timeline1.Styles = ""
	SDUI5Timeline1.SMDirection = "none"
	SDUI5Timeline1.SnapIcon = False
	SDUI5Timeline1.Visible = True
	SDUI5Timeline1.XLDirection = "none"
	BANano.Await(SDUI5Timeline1.AddComponent)
	'
	SDUI5TimelineItem1.Initialize(Me, "SDUI5TimelineItem1", "SDUI5TimelineItem1")
	SDUI5TimelineItem1.ParentID = "SDUI5Timeline1"
	SDUI5TimelineItem1.Enabled = True
	SDUI5TimelineItem1.End = True
	SDUI5TimelineItem1.EndBox = True
	SDUI5TimelineItem1.EndJoinSuffix = True
	SDUI5TimelineItem1.EndJoinSuffixColor = ""
	SDUI5TimelineItem1.EndText = "First Macintosh computer"
	SDUI5TimelineItem1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem1.Middle = True
	SDUI5TimelineItem1.MiddleBox = False
	SDUI5TimelineItem1.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem1.MiddleIconSize = "16px"
	SDUI5TimelineItem1.MiddleText = ""
	SDUI5TimelineItem1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem1.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem1.PositionStyle = "none"
	SDUI5TimelineItem1.Attributes = ""
	SDUI5TimelineItem1.Classes = ""
	SDUI5TimelineItem1.Styles = ""
	SDUI5TimelineItem1.Start = True
	SDUI5TimelineItem1.StartBox = False
	SDUI5TimelineItem1.StartJoinPrefix = False
	SDUI5TimelineItem1.StartJoinPrefixColor = ""
	SDUI5TimelineItem1.StartText = "1984"
	SDUI5TimelineItem1.Visible = True
	BANano.Await(SDUI5TimelineItem1.AddComponent)
	'
	SDUI5TimelineItem2.Initialize(Me, "SDUI5TimelineItem2", "SDUI5TimelineItem2")
	SDUI5TimelineItem2.ParentID = "SDUI5Timeline1"
	SDUI5TimelineItem2.Enabled = True
	SDUI5TimelineItem2.End = True
	SDUI5TimelineItem2.EndBox = True
	SDUI5TimelineItem2.EndJoinSuffix = True
	SDUI5TimelineItem2.EndJoinSuffixColor = ""
	SDUI5TimelineItem2.EndText = "iMac"
	SDUI5TimelineItem2.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem2.Middle = True
	SDUI5TimelineItem2.MiddleBox = False
	SDUI5TimelineItem2.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem2.MiddleIconSize = "16px"
	SDUI5TimelineItem2.MiddleText = ""
	SDUI5TimelineItem2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem2.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem2.PositionStyle = "none"
	SDUI5TimelineItem2.Attributes = ""
	SDUI5TimelineItem2.Classes = ""
	SDUI5TimelineItem2.Styles = ""
	SDUI5TimelineItem2.Start = True
	SDUI5TimelineItem2.StartBox = False
	SDUI5TimelineItem2.StartJoinPrefix = True
	SDUI5TimelineItem2.StartJoinPrefixColor = ""
	SDUI5TimelineItem2.StartText = "1998"
	SDUI5TimelineItem2.Visible = True
	BANano.Await(SDUI5TimelineItem2.AddComponent)
	'
	SDUI5TimelineItem3.Initialize(Me, "SDUI5TimelineItem3", "SDUI5TimelineItem3")
	SDUI5TimelineItem3.ParentID = "SDUI5Timeline1"
	SDUI5TimelineItem3.Enabled = True
	SDUI5TimelineItem3.End = True
	SDUI5TimelineItem3.EndBox = True
	SDUI5TimelineItem3.EndJoinSuffix = True
	SDUI5TimelineItem3.EndJoinSuffixColor = ""
	SDUI5TimelineItem3.EndText = "iPod"
	SDUI5TimelineItem3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem3.Middle = True
	SDUI5TimelineItem3.MiddleBox = False
	SDUI5TimelineItem3.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem3.MiddleIconSize = "16px"
	SDUI5TimelineItem3.MiddleText = ""
	SDUI5TimelineItem3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem3.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem3.PositionStyle = "none"
	SDUI5TimelineItem3.Attributes = ""
	SDUI5TimelineItem3.Classes = ""
	SDUI5TimelineItem3.Styles = ""
	SDUI5TimelineItem3.Start = True
	SDUI5TimelineItem3.StartBox = False
	SDUI5TimelineItem3.StartJoinPrefix = True
	SDUI5TimelineItem3.StartJoinPrefixColor = ""
	SDUI5TimelineItem3.StartText = "2001"
	SDUI5TimelineItem3.Visible = True
	BANano.Await(SDUI5TimelineItem3.AddComponent)
	'
	SDUI5TimelineItem4.Initialize(Me, "SDUI5TimelineItem4", "SDUI5TimelineItem4")
	SDUI5TimelineItem4.ParentID = "SDUI5Timeline1"
	SDUI5TimelineItem4.Enabled = True
	SDUI5TimelineItem4.End = True
	SDUI5TimelineItem4.EndBox = True
	SDUI5TimelineItem4.EndJoinSuffix = True
	SDUI5TimelineItem4.EndJoinSuffixColor = ""
	SDUI5TimelineItem4.EndText = "iPhone"
	SDUI5TimelineItem4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem4.Middle = True
	SDUI5TimelineItem4.MiddleBox = False
	SDUI5TimelineItem4.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem4.MiddleIconSize = "16px"
	SDUI5TimelineItem4.MiddleText = ""
	SDUI5TimelineItem4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem4.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem4.PositionStyle = "none"
	SDUI5TimelineItem4.Attributes = ""
	SDUI5TimelineItem4.Classes = ""
	SDUI5TimelineItem4.Styles = ""
	SDUI5TimelineItem4.Start = True
	SDUI5TimelineItem4.StartBox = False
	SDUI5TimelineItem4.StartJoinPrefix = True
	SDUI5TimelineItem4.StartJoinPrefixColor = ""
	SDUI5TimelineItem4.StartText = "2007"
	SDUI5TimelineItem4.Visible = True
	BANano.Await(SDUI5TimelineItem4.AddComponent)
	'
	SDUI5TimelineItem5.Initialize(Me, "SDUI5TimelineItem5", "SDUI5TimelineItem5")
	SDUI5TimelineItem5.ParentID = "SDUI5Timeline1"
	SDUI5TimelineItem5.Enabled = True
	SDUI5TimelineItem5.End = True
	SDUI5TimelineItem5.EndBox = True
	SDUI5TimelineItem5.EndJoinSuffix = False
	SDUI5TimelineItem5.EndJoinSuffixColor = ""
	SDUI5TimelineItem5.EndText = "Apple Watch"
	SDUI5TimelineItem5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem5.Middle = True
	SDUI5TimelineItem5.MiddleBox = False
	SDUI5TimelineItem5.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem5.MiddleIconSize = "16px"
	SDUI5TimelineItem5.MiddleText = ""
	SDUI5TimelineItem5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem5.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem5.PositionStyle = "none"
	SDUI5TimelineItem5.Attributes = ""
	SDUI5TimelineItem5.Classes = ""
	SDUI5TimelineItem5.Styles = ""
	SDUI5TimelineItem5.Start = True
	SDUI5TimelineItem5.StartBox = False
	SDUI5TimelineItem5.StartJoinPrefix = True
	SDUI5TimelineItem5.StartJoinPrefixColor = ""
	SDUI5TimelineItem5.StartText = "2015"
	SDUI5TimelineItem5.Visible = True
	BANano.Await(SDUI5TimelineItem5.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignContent = "none"
	SDUI5Column2.AlignItems = "none"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.BackgroundColor = ""
	SDUI5Column2.CenterChildren = False
	SDUI5Column2.Enabled = True
	SDUI5Column2.Height = ""
	SDUI5Column2.JustifyContent = "none"
	SDUI5Column2.JustifyItems = "none"
	SDUI5Column2.JustifySelf = "none"
	SDUI5Column2.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.OffsetLg = ""
	SDUI5Column2.OffsetMd = ""
	SDUI5Column2.OffsetSm = ""
	SDUI5Column2.OffsetXl = ""
	SDUI5Column2.OffsetXxl = ""
	SDUI5Column2.Order = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.PlaceContent = "none"
	SDUI5Column2.PlaceItems = "none"
	SDUI5Column2.PlaceSelf = "none"
	SDUI5Column2.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column2.PositionStyle = "none"
	SDUI5Column2.Attributes = ""
	SDUI5Column2.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column2.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column2.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column2.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column2.Classes = ""
	SDUI5Column2.Styles = ""
	SDUI5Column2.Rounded = "none"
	SDUI5Column2.Shadow = "none"
	SDUI5Column2.Size = "12"
	SDUI5Column2.SizeLg = ""
	SDUI5Column2.SizeMd = ""
	SDUI5Column2.SizeSm = ""
	SDUI5Column2.SizeXl = ""
	SDUI5Column2.SizeXxl = ""
	SDUI5Column2.Text = ""
	SDUI5Column2.TextAlign = "none"
	SDUI5Column2.TextColor = ""
	SDUI5Column2.Visible = True
	SDUI5Column2.Width = ""
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Timeline2.Initialize(Me, "SDUI5Timeline2", "SDUI5Timeline2")
	SDUI5Timeline2.ParentID = "SDUI5Column2"
	SDUI5Timeline2.Compact = False
	SDUI5Timeline2.Direction = "horizontal"
	SDUI5Timeline2.Enabled = True
	SDUI5Timeline2.LGDirection = "none"
	SDUI5Timeline2.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline2.MDDirection = "none"
	SDUI5Timeline2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline2.Position = "t=?; b=?; r=?; l=?"
	SDUI5Timeline2.PositionStyle = "none"
	SDUI5Timeline2.Attributes = ""
	SDUI5Timeline2.Classes = ""
	SDUI5Timeline2.Styles = ""
	SDUI5Timeline2.SMDirection = "none"
	SDUI5Timeline2.SnapIcon = False
	SDUI5Timeline2.Visible = True
	SDUI5Timeline2.XLDirection = "none"
	BANano.Await(SDUI5Timeline2.AddComponent)
	'
	SDUI5TimelineItem6.Initialize(Me, "SDUI5TimelineItem6", "SDUI5TimelineItem6")
	SDUI5TimelineItem6.ParentID = "SDUI5Timeline2"
	SDUI5TimelineItem6.Enabled = True
	SDUI5TimelineItem6.End = True
	SDUI5TimelineItem6.EndBox = True
	SDUI5TimelineItem6.EndJoinSuffix = True
	SDUI5TimelineItem6.EndJoinSuffixColor = ""
	SDUI5TimelineItem6.EndText = "First Macintosh computer"
	SDUI5TimelineItem6.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem6.Middle = True
	SDUI5TimelineItem6.MiddleBox = False
	SDUI5TimelineItem6.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem6.MiddleIconSize = "16px"
	SDUI5TimelineItem6.MiddleText = ""
	SDUI5TimelineItem6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem6.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem6.PositionStyle = "none"
	SDUI5TimelineItem6.Attributes = ""
	SDUI5TimelineItem6.Classes = ""
	SDUI5TimelineItem6.Styles = ""
	SDUI5TimelineItem6.Start = False
	SDUI5TimelineItem6.StartBox = False
	SDUI5TimelineItem6.StartJoinPrefix = False
	SDUI5TimelineItem6.StartJoinPrefixColor = ""
	SDUI5TimelineItem6.StartText = "1984"
	SDUI5TimelineItem6.Visible = True
	BANano.Await(SDUI5TimelineItem6.AddComponent)
	'
	SDUI5TimelineItem7.Initialize(Me, "SDUI5TimelineItem7", "SDUI5TimelineItem7")
	SDUI5TimelineItem7.ParentID = "SDUI5Timeline2"
	SDUI5TimelineItem7.Enabled = True
	SDUI5TimelineItem7.End = True
	SDUI5TimelineItem7.EndBox = True
	SDUI5TimelineItem7.EndJoinSuffix = True
	SDUI5TimelineItem7.EndJoinSuffixColor = ""
	SDUI5TimelineItem7.EndText = "iMac"
	SDUI5TimelineItem7.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem7.Middle = True
	SDUI5TimelineItem7.MiddleBox = False
	SDUI5TimelineItem7.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem7.MiddleIconSize = "16px"
	SDUI5TimelineItem7.MiddleText = ""
	SDUI5TimelineItem7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem7.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem7.PositionStyle = "none"
	SDUI5TimelineItem7.Attributes = ""
	SDUI5TimelineItem7.Classes = ""
	SDUI5TimelineItem7.Styles = ""
	SDUI5TimelineItem7.Start = False
	SDUI5TimelineItem7.StartBox = False
	SDUI5TimelineItem7.StartJoinPrefix = True
	SDUI5TimelineItem7.StartJoinPrefixColor = ""
	SDUI5TimelineItem7.StartText = "1998"
	SDUI5TimelineItem7.Visible = True
	BANano.Await(SDUI5TimelineItem7.AddComponent)
	'
	SDUI5TimelineItem8.Initialize(Me, "SDUI5TimelineItem8", "SDUI5TimelineItem8")
	SDUI5TimelineItem8.ParentID = "SDUI5Timeline2"
	SDUI5TimelineItem8.Enabled = True
	SDUI5TimelineItem8.End = True
	SDUI5TimelineItem8.EndBox = True
	SDUI5TimelineItem8.EndJoinSuffix = True
	SDUI5TimelineItem8.EndJoinSuffixColor = ""
	SDUI5TimelineItem8.EndText = "iPod"
	SDUI5TimelineItem8.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem8.Middle = True
	SDUI5TimelineItem8.MiddleBox = False
	SDUI5TimelineItem8.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem8.MiddleIconSize = "16px"
	SDUI5TimelineItem8.MiddleText = ""
	SDUI5TimelineItem8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem8.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem8.PositionStyle = "none"
	SDUI5TimelineItem8.Attributes = ""
	SDUI5TimelineItem8.Classes = ""
	SDUI5TimelineItem8.Styles = ""
	SDUI5TimelineItem8.Start = False
	SDUI5TimelineItem8.StartBox = False
	SDUI5TimelineItem8.StartJoinPrefix = True
	SDUI5TimelineItem8.StartJoinPrefixColor = ""
	SDUI5TimelineItem8.StartText = "2001"
	SDUI5TimelineItem8.Visible = True
	BANano.Await(SDUI5TimelineItem8.AddComponent)
	'
	SDUI5TimelineItem9.Initialize(Me, "SDUI5TimelineItem9", "SDUI5TimelineItem9")
	SDUI5TimelineItem9.ParentID = "SDUI5Timeline2"
	SDUI5TimelineItem9.Enabled = True
	SDUI5TimelineItem9.End = True
	SDUI5TimelineItem9.EndBox = True
	SDUI5TimelineItem9.EndJoinSuffix = True
	SDUI5TimelineItem9.EndJoinSuffixColor = ""
	SDUI5TimelineItem9.EndText = "iPhone"
	SDUI5TimelineItem9.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem9.Middle = True
	SDUI5TimelineItem9.MiddleBox = False
	SDUI5TimelineItem9.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem9.MiddleIconSize = "16px"
	SDUI5TimelineItem9.MiddleText = ""
	SDUI5TimelineItem9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem9.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem9.PositionStyle = "none"
	SDUI5TimelineItem9.Attributes = ""
	SDUI5TimelineItem9.Classes = ""
	SDUI5TimelineItem9.Styles = ""
	SDUI5TimelineItem9.Start = False
	SDUI5TimelineItem9.StartBox = False
	SDUI5TimelineItem9.StartJoinPrefix = True
	SDUI5TimelineItem9.StartJoinPrefixColor = ""
	SDUI5TimelineItem9.StartText = "2007"
	SDUI5TimelineItem9.Visible = True
	BANano.Await(SDUI5TimelineItem9.AddComponent)
	'
	SDUI5TimelineItem10.Initialize(Me, "SDUI5TimelineItem10", "SDUI5TimelineItem10")
	SDUI5TimelineItem10.ParentID = "SDUI5Timeline2"
	SDUI5TimelineItem10.Enabled = True
	SDUI5TimelineItem10.End = True
	SDUI5TimelineItem10.EndBox = True
	SDUI5TimelineItem10.EndJoinSuffix = False
	SDUI5TimelineItem10.EndJoinSuffixColor = ""
	SDUI5TimelineItem10.EndText = "Apple Watch"
	SDUI5TimelineItem10.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem10.Middle = True
	SDUI5TimelineItem10.MiddleBox = False
	SDUI5TimelineItem10.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem10.MiddleIconSize = "16px"
	SDUI5TimelineItem10.MiddleText = ""
	SDUI5TimelineItem10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem10.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem10.PositionStyle = "none"
	SDUI5TimelineItem10.Attributes = ""
	SDUI5TimelineItem10.Classes = ""
	SDUI5TimelineItem10.Styles = ""
	SDUI5TimelineItem10.Start = False
	SDUI5TimelineItem10.StartBox = False
	SDUI5TimelineItem10.StartJoinPrefix = True
	SDUI5TimelineItem10.StartJoinPrefixColor = ""
	SDUI5TimelineItem10.StartText = "2015"
	SDUI5TimelineItem10.Visible = True
	BANano.Await(SDUI5TimelineItem10.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignContent = "none"
	SDUI5Column3.AlignItems = "none"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.BackgroundColor = ""
	SDUI5Column3.CenterChildren = False
	SDUI5Column3.Enabled = True
	SDUI5Column3.Height = ""
	SDUI5Column3.JustifyContent = "none"
	SDUI5Column3.JustifyItems = "none"
	SDUI5Column3.JustifySelf = "none"
	SDUI5Column3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.OffsetLg = ""
	SDUI5Column3.OffsetMd = ""
	SDUI5Column3.OffsetSm = ""
	SDUI5Column3.OffsetXl = ""
	SDUI5Column3.OffsetXxl = ""
	SDUI5Column3.Order = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.PlaceContent = "none"
	SDUI5Column3.PlaceItems = "none"
	SDUI5Column3.PlaceSelf = "none"
	SDUI5Column3.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column3.PositionStyle = "none"
	SDUI5Column3.Attributes = ""
	SDUI5Column3.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column3.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column3.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column3.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column3.Classes = ""
	SDUI5Column3.Styles = ""
	SDUI5Column3.Rounded = "none"
	SDUI5Column3.Shadow = "none"
	SDUI5Column3.Size = "12"
	SDUI5Column3.SizeLg = ""
	SDUI5Column3.SizeMd = ""
	SDUI5Column3.SizeSm = ""
	SDUI5Column3.SizeXl = ""
	SDUI5Column3.SizeXxl = ""
	SDUI5Column3.Text = ""
	SDUI5Column3.TextAlign = "none"
	SDUI5Column3.TextColor = ""
	SDUI5Column3.Visible = True
	SDUI5Column3.Width = ""
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Timeline3.Initialize(Me, "SDUI5Timeline3", "SDUI5Timeline3")
	SDUI5Timeline3.ParentID = "SDUI5Column3"
	SDUI5Timeline3.Compact = False
	SDUI5Timeline3.Direction = "horizontal"
	SDUI5Timeline3.Enabled = True
	SDUI5Timeline3.LGDirection = "none"
	SDUI5Timeline3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline3.MDDirection = "none"
	SDUI5Timeline3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline3.Position = "t=?; b=?; r=?; l=?"
	SDUI5Timeline3.PositionStyle = "none"
	SDUI5Timeline3.Attributes = ""
	SDUI5Timeline3.Classes = ""
	SDUI5Timeline3.Styles = ""
	SDUI5Timeline3.SMDirection = "none"
	SDUI5Timeline3.SnapIcon = False
	SDUI5Timeline3.Visible = True
	SDUI5Timeline3.XLDirection = "none"
	BANano.Await(SDUI5Timeline3.AddComponent)
	'
	SDUI5TimelineItem11.Initialize(Me, "SDUI5TimelineItem11", "SDUI5TimelineItem11")
	SDUI5TimelineItem11.ParentID = "SDUI5Timeline3"
	SDUI5TimelineItem11.Enabled = True
	SDUI5TimelineItem11.End = False
	SDUI5TimelineItem11.EndBox = False
	SDUI5TimelineItem11.EndJoinSuffix = True
	SDUI5TimelineItem11.EndJoinSuffixColor = ""
	SDUI5TimelineItem11.EndText = ""
	SDUI5TimelineItem11.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem11.Middle = True
	SDUI5TimelineItem11.MiddleBox = False
	SDUI5TimelineItem11.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem11.MiddleIconSize = "16px"
	SDUI5TimelineItem11.MiddleText = ""
	SDUI5TimelineItem11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem11.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem11.PositionStyle = "none"
	SDUI5TimelineItem11.Attributes = ""
	SDUI5TimelineItem11.Classes = ""
	SDUI5TimelineItem11.Styles = ""
	SDUI5TimelineItem11.Start = True
	SDUI5TimelineItem11.StartBox = True
	SDUI5TimelineItem11.StartJoinPrefix = False
	SDUI5TimelineItem11.StartJoinPrefixColor = ""
	SDUI5TimelineItem11.StartText = "First Macintosh computer"
	SDUI5TimelineItem11.Visible = True
	BANano.Await(SDUI5TimelineItem11.AddComponent)
	'
	SDUI5TimelineItem12.Initialize(Me, "SDUI5TimelineItem12", "SDUI5TimelineItem12")
	SDUI5TimelineItem12.ParentID = "SDUI5Timeline3"
	SDUI5TimelineItem12.Enabled = True
	SDUI5TimelineItem12.End = False
	SDUI5TimelineItem12.EndBox = False
	SDUI5TimelineItem12.EndJoinSuffix = True
	SDUI5TimelineItem12.EndJoinSuffixColor = ""
	SDUI5TimelineItem12.EndText = ""
	SDUI5TimelineItem12.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem12.Middle = True
	SDUI5TimelineItem12.MiddleBox = False
	SDUI5TimelineItem12.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem12.MiddleIconSize = "16px"
	SDUI5TimelineItem12.MiddleText = ""
	SDUI5TimelineItem12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem12.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem12.PositionStyle = "none"
	SDUI5TimelineItem12.Attributes = ""
	SDUI5TimelineItem12.Classes = ""
	SDUI5TimelineItem12.Styles = ""
	SDUI5TimelineItem12.Start = True
	SDUI5TimelineItem12.StartBox = True
	SDUI5TimelineItem12.StartJoinPrefix = True
	SDUI5TimelineItem12.StartJoinPrefixColor = ""
	SDUI5TimelineItem12.StartText = "iMac"
	SDUI5TimelineItem12.Visible = True
	BANano.Await(SDUI5TimelineItem12.AddComponent)
	'
	SDUI5TimelineItem13.Initialize(Me, "SDUI5TimelineItem13", "SDUI5TimelineItem13")
	SDUI5TimelineItem13.ParentID = "SDUI5Timeline3"
	SDUI5TimelineItem13.Enabled = True
	SDUI5TimelineItem13.End = False
	SDUI5TimelineItem13.EndBox = False
	SDUI5TimelineItem13.EndJoinSuffix = True
	SDUI5TimelineItem13.EndJoinSuffixColor = ""
	SDUI5TimelineItem13.EndText = ""
	SDUI5TimelineItem13.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem13.Middle = True
	SDUI5TimelineItem13.MiddleBox = False
	SDUI5TimelineItem13.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem13.MiddleIconSize = "16px"
	SDUI5TimelineItem13.MiddleText = ""
	SDUI5TimelineItem13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem13.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem13.PositionStyle = "none"
	SDUI5TimelineItem13.Attributes = ""
	SDUI5TimelineItem13.Classes = ""
	SDUI5TimelineItem13.Styles = ""
	SDUI5TimelineItem13.Start = True
	SDUI5TimelineItem13.StartBox = True
	SDUI5TimelineItem13.StartJoinPrefix = True
	SDUI5TimelineItem13.StartJoinPrefixColor = ""
	SDUI5TimelineItem13.StartText = "iPod"
	SDUI5TimelineItem13.Visible = True
	BANano.Await(SDUI5TimelineItem13.AddComponent)
	'
	SDUI5TimelineItem14.Initialize(Me, "SDUI5TimelineItem14", "SDUI5TimelineItem14")
	SDUI5TimelineItem14.ParentID = "SDUI5Timeline3"
	SDUI5TimelineItem14.Enabled = True
	SDUI5TimelineItem14.End = False
	SDUI5TimelineItem14.EndBox = False
	SDUI5TimelineItem14.EndJoinSuffix = True
	SDUI5TimelineItem14.EndJoinSuffixColor = ""
	SDUI5TimelineItem14.EndText = ""
	SDUI5TimelineItem14.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem14.Middle = True
	SDUI5TimelineItem14.MiddleBox = False
	SDUI5TimelineItem14.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem14.MiddleIconSize = "16px"
	SDUI5TimelineItem14.MiddleText = ""
	SDUI5TimelineItem14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem14.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem14.PositionStyle = "none"
	SDUI5TimelineItem14.Attributes = ""
	SDUI5TimelineItem14.Classes = ""
	SDUI5TimelineItem14.Styles = ""
	SDUI5TimelineItem14.Start = True
	SDUI5TimelineItem14.StartBox = True
	SDUI5TimelineItem14.StartJoinPrefix = True
	SDUI5TimelineItem14.StartJoinPrefixColor = ""
	SDUI5TimelineItem14.StartText = "iPhone"
	SDUI5TimelineItem14.Visible = True
	BANano.Await(SDUI5TimelineItem14.AddComponent)
	'
	SDUI5TimelineItem15.Initialize(Me, "SDUI5TimelineItem15", "SDUI5TimelineItem15")
	SDUI5TimelineItem15.ParentID = "SDUI5Timeline3"
	SDUI5TimelineItem15.Enabled = True
	SDUI5TimelineItem15.End = False
	SDUI5TimelineItem15.EndBox = False
	SDUI5TimelineItem15.EndJoinSuffix = False
	SDUI5TimelineItem15.EndJoinSuffixColor = ""
	SDUI5TimelineItem15.EndText = ""
	SDUI5TimelineItem15.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem15.Middle = True
	SDUI5TimelineItem15.MiddleBox = False
	SDUI5TimelineItem15.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem15.MiddleIconSize = "16px"
	SDUI5TimelineItem15.MiddleText = ""
	SDUI5TimelineItem15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem15.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem15.PositionStyle = "none"
	SDUI5TimelineItem15.Attributes = ""
	SDUI5TimelineItem15.Classes = ""
	SDUI5TimelineItem15.Styles = ""
	SDUI5TimelineItem15.Start = True
	SDUI5TimelineItem15.StartBox = True
	SDUI5TimelineItem15.StartJoinPrefix = True
	SDUI5TimelineItem15.StartJoinPrefixColor = ""
	SDUI5TimelineItem15.StartText = "Apple Watch"
	SDUI5TimelineItem15.Visible = True
	BANano.Await(SDUI5TimelineItem15.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignContent = "none"
	SDUI5Column4.AlignItems = "none"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.BackgroundColor = ""
	SDUI5Column4.CenterChildren = False
	SDUI5Column4.Enabled = True
	SDUI5Column4.Height = ""
	SDUI5Column4.JustifyContent = "none"
	SDUI5Column4.JustifyItems = "none"
	SDUI5Column4.JustifySelf = "none"
	SDUI5Column4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.OffsetLg = ""
	SDUI5Column4.OffsetMd = ""
	SDUI5Column4.OffsetSm = ""
	SDUI5Column4.OffsetXl = ""
	SDUI5Column4.OffsetXxl = ""
	SDUI5Column4.Order = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.PlaceContent = "none"
	SDUI5Column4.PlaceItems = "none"
	SDUI5Column4.PlaceSelf = "none"
	SDUI5Column4.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column4.PositionStyle = "none"
	SDUI5Column4.Attributes = ""
	SDUI5Column4.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column4.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column4.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column4.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column4.Classes = ""
	SDUI5Column4.Styles = ""
	SDUI5Column4.Rounded = "none"
	SDUI5Column4.Shadow = "none"
	SDUI5Column4.Size = "12"
	SDUI5Column4.SizeLg = ""
	SDUI5Column4.SizeMd = ""
	SDUI5Column4.SizeSm = ""
	SDUI5Column4.SizeXl = ""
	SDUI5Column4.SizeXxl = ""
	SDUI5Column4.Text = ""
	SDUI5Column4.TextAlign = "none"
	SDUI5Column4.TextColor = ""
	SDUI5Column4.Visible = True
	SDUI5Column4.Width = ""
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Timeline4.Initialize(Me, "SDUI5Timeline4", "SDUI5Timeline4")
	SDUI5Timeline4.ParentID = "SDUI5Column4"
	SDUI5Timeline4.Compact = False
	SDUI5Timeline4.Direction = "horizontal"
	SDUI5Timeline4.Enabled = True
	SDUI5Timeline4.LGDirection = "none"
	SDUI5Timeline4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline4.MDDirection = "none"
	SDUI5Timeline4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline4.Position = "t=?; b=?; r=?; l=?"
	SDUI5Timeline4.PositionStyle = "none"
	SDUI5Timeline4.Attributes = ""
	SDUI5Timeline4.Classes = ""
	SDUI5Timeline4.Styles = ""
	SDUI5Timeline4.SMDirection = "none"
	SDUI5Timeline4.SnapIcon = False
	SDUI5Timeline4.Visible = True
	SDUI5Timeline4.XLDirection = "none"
	BANano.Await(SDUI5Timeline4.AddComponent)
	'
	SDUI5TimelineItem16.Initialize(Me, "SDUI5TimelineItem16", "SDUI5TimelineItem16")
	SDUI5TimelineItem16.ParentID = "SDUI5Timeline4"
	SDUI5TimelineItem16.Enabled = True
	SDUI5TimelineItem16.End = False
	SDUI5TimelineItem16.EndBox = False
	SDUI5TimelineItem16.EndJoinSuffix = True
	SDUI5TimelineItem16.EndJoinSuffixColor = ""
	SDUI5TimelineItem16.EndText = ""
	SDUI5TimelineItem16.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem16.Middle = True
	SDUI5TimelineItem16.MiddleBox = False
	SDUI5TimelineItem16.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem16.MiddleIconSize = "16px"
	SDUI5TimelineItem16.MiddleText = ""
	SDUI5TimelineItem16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem16.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem16.PositionStyle = "none"
	SDUI5TimelineItem16.Attributes = ""
	SDUI5TimelineItem16.Classes = ""
	SDUI5TimelineItem16.Styles = ""
	SDUI5TimelineItem16.Start = True
	SDUI5TimelineItem16.StartBox = True
	SDUI5TimelineItem16.StartJoinPrefix = False
	SDUI5TimelineItem16.StartJoinPrefixColor = ""
	SDUI5TimelineItem16.StartText = "First Macintosh computer"
	SDUI5TimelineItem16.Visible = True
	BANano.Await(SDUI5TimelineItem16.AddComponent)
	'
	SDUI5TimelineItem17.Initialize(Me, "SDUI5TimelineItem17", "SDUI5TimelineItem17")
	SDUI5TimelineItem17.ParentID = "SDUI5Timeline4"
	SDUI5TimelineItem17.Enabled = True
	SDUI5TimelineItem17.End = True
	SDUI5TimelineItem17.EndBox = True
	SDUI5TimelineItem17.EndJoinSuffix = True
	SDUI5TimelineItem17.EndJoinSuffixColor = ""
	SDUI5TimelineItem17.EndText = "iMac"
	SDUI5TimelineItem17.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem17.Middle = True
	SDUI5TimelineItem17.MiddleBox = False
	SDUI5TimelineItem17.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem17.MiddleIconSize = "16px"
	SDUI5TimelineItem17.MiddleText = ""
	SDUI5TimelineItem17.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem17.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem17.PositionStyle = "none"
	SDUI5TimelineItem17.Attributes = ""
	SDUI5TimelineItem17.Classes = ""
	SDUI5TimelineItem17.Styles = ""
	SDUI5TimelineItem17.Start = False
	SDUI5TimelineItem17.StartBox = False
	SDUI5TimelineItem17.StartJoinPrefix = True
	SDUI5TimelineItem17.StartJoinPrefixColor = ""
	SDUI5TimelineItem17.StartText = ""
	SDUI5TimelineItem17.Visible = True
	BANano.Await(SDUI5TimelineItem17.AddComponent)
	'
	SDUI5TimelineItem18.Initialize(Me, "SDUI5TimelineItem18", "SDUI5TimelineItem18")
	SDUI5TimelineItem18.ParentID = "SDUI5Timeline4"
	SDUI5TimelineItem18.Enabled = True
	SDUI5TimelineItem18.End = False
	SDUI5TimelineItem18.EndBox = False
	SDUI5TimelineItem18.EndJoinSuffix = True
	SDUI5TimelineItem18.EndJoinSuffixColor = ""
	SDUI5TimelineItem18.EndText = ""
	SDUI5TimelineItem18.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem18.Middle = True
	SDUI5TimelineItem18.MiddleBox = False
	SDUI5TimelineItem18.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem18.MiddleIconSize = "16px"
	SDUI5TimelineItem18.MiddleText = ""
	SDUI5TimelineItem18.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem18.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem18.PositionStyle = "none"
	SDUI5TimelineItem18.Attributes = ""
	SDUI5TimelineItem18.Classes = ""
	SDUI5TimelineItem18.Styles = ""
	SDUI5TimelineItem18.Start = True
	SDUI5TimelineItem18.StartBox = True
	SDUI5TimelineItem18.StartJoinPrefix = True
	SDUI5TimelineItem18.StartJoinPrefixColor = ""
	SDUI5TimelineItem18.StartText = "iPod"
	SDUI5TimelineItem18.Visible = True
	BANano.Await(SDUI5TimelineItem18.AddComponent)
	'
	SDUI5TimelineItem19.Initialize(Me, "SDUI5TimelineItem19", "SDUI5TimelineItem19")
	SDUI5TimelineItem19.ParentID = "SDUI5Timeline4"
	SDUI5TimelineItem19.Enabled = True
	SDUI5TimelineItem19.End = True
	SDUI5TimelineItem19.EndBox = True
	SDUI5TimelineItem19.EndJoinSuffix = True
	SDUI5TimelineItem19.EndJoinSuffixColor = ""
	SDUI5TimelineItem19.EndText = "iPhone"
	SDUI5TimelineItem19.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem19.Middle = True
	SDUI5TimelineItem19.MiddleBox = False
	SDUI5TimelineItem19.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem19.MiddleIconSize = "16px"
	SDUI5TimelineItem19.MiddleText = ""
	SDUI5TimelineItem19.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem19.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem19.PositionStyle = "none"
	SDUI5TimelineItem19.Attributes = ""
	SDUI5TimelineItem19.Classes = ""
	SDUI5TimelineItem19.Styles = ""
	SDUI5TimelineItem19.Start = False
	SDUI5TimelineItem19.StartBox = False
	SDUI5TimelineItem19.StartJoinPrefix = True
	SDUI5TimelineItem19.StartJoinPrefixColor = ""
	SDUI5TimelineItem19.StartText = ""
	SDUI5TimelineItem19.Visible = True
	BANano.Await(SDUI5TimelineItem19.AddComponent)
	'
	SDUI5TimelineItem20.Initialize(Me, "SDUI5TimelineItem20", "SDUI5TimelineItem20")
	SDUI5TimelineItem20.ParentID = "SDUI5Timeline4"
	SDUI5TimelineItem20.Enabled = True
	SDUI5TimelineItem20.End = False
	SDUI5TimelineItem20.EndBox = False
	SDUI5TimelineItem20.EndJoinSuffix = False
	SDUI5TimelineItem20.EndJoinSuffixColor = ""
	SDUI5TimelineItem20.EndText = ""
	SDUI5TimelineItem20.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem20.Middle = True
	SDUI5TimelineItem20.MiddleBox = False
	SDUI5TimelineItem20.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem20.MiddleIconSize = "16px"
	SDUI5TimelineItem20.MiddleText = ""
	SDUI5TimelineItem20.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem20.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem20.PositionStyle = "none"
	SDUI5TimelineItem20.Attributes = ""
	SDUI5TimelineItem20.Classes = ""
	SDUI5TimelineItem20.Styles = ""
	SDUI5TimelineItem20.Start = True
	SDUI5TimelineItem20.StartBox = True
	SDUI5TimelineItem20.StartJoinPrefix = True
	SDUI5TimelineItem20.StartJoinPrefixColor = ""
	SDUI5TimelineItem20.StartText = "Apple Watch"
	SDUI5TimelineItem20.Visible = True
	BANano.Await(SDUI5TimelineItem20.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignContent = "none"
	SDUI5Column5.AlignItems = "none"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.BackgroundColor = ""
	SDUI5Column5.CenterChildren = False
	SDUI5Column5.Enabled = True
	SDUI5Column5.Height = ""
	SDUI5Column5.JustifyContent = "none"
	SDUI5Column5.JustifyItems = "none"
	SDUI5Column5.JustifySelf = "none"
	SDUI5Column5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.OffsetLg = ""
	SDUI5Column5.OffsetMd = ""
	SDUI5Column5.OffsetSm = ""
	SDUI5Column5.OffsetXl = ""
	SDUI5Column5.OffsetXxl = ""
	SDUI5Column5.Order = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.PlaceContent = "none"
	SDUI5Column5.PlaceItems = "none"
	SDUI5Column5.PlaceSelf = "none"
	SDUI5Column5.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column5.PositionStyle = "none"
	SDUI5Column5.Attributes = ""
	SDUI5Column5.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column5.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column5.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column5.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column5.Classes = ""
	SDUI5Column5.Styles = ""
	SDUI5Column5.Rounded = "none"
	SDUI5Column5.Shadow = "none"
	SDUI5Column5.Size = "12"
	SDUI5Column5.SizeLg = ""
	SDUI5Column5.SizeMd = ""
	SDUI5Column5.SizeSm = ""
	SDUI5Column5.SizeXl = ""
	SDUI5Column5.SizeXxl = ""
	SDUI5Column5.Text = ""
	SDUI5Column5.TextAlign = "none"
	SDUI5Column5.TextColor = ""
	SDUI5Column5.Visible = True
	SDUI5Column5.Width = ""
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Timeline5.Initialize(Me, "SDUI5Timeline5", "SDUI5Timeline5")
	SDUI5Timeline5.ParentID = "SDUI5Column5"
	SDUI5Timeline5.Compact = False
	SDUI5Timeline5.Direction = "vertical"
	SDUI5Timeline5.Enabled = True
	SDUI5Timeline5.LGDirection = "none"
	SDUI5Timeline5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline5.MDDirection = "none"
	SDUI5Timeline5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline5.Position = "t=?; b=?; r=?; l=?"
	SDUI5Timeline5.PositionStyle = "none"
	SDUI5Timeline5.Attributes = ""
	SDUI5Timeline5.Classes = ""
	SDUI5Timeline5.Styles = ""
	SDUI5Timeline5.SMDirection = "none"
	SDUI5Timeline5.SnapIcon = False
	SDUI5Timeline5.Visible = True
	SDUI5Timeline5.XLDirection = "none"
	BANano.Await(SDUI5Timeline5.AddComponent)
	'
	SDUI5TimelineItem21.Initialize(Me, "SDUI5TimelineItem21", "SDUI5TimelineItem21")
	SDUI5TimelineItem21.ParentID = "SDUI5Timeline5"
	SDUI5TimelineItem21.Enabled = True
	SDUI5TimelineItem21.End = False
	SDUI5TimelineItem21.EndBox = False
	SDUI5TimelineItem21.EndJoinSuffix = True
	SDUI5TimelineItem21.EndJoinSuffixColor = "primary"
	SDUI5TimelineItem21.EndText = ""
	SDUI5TimelineItem21.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem21.Middle = True
	SDUI5TimelineItem21.MiddleBox = False
	SDUI5TimelineItem21.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem21.MiddleIconSize = "16px"
	SDUI5TimelineItem21.MiddleText = ""
	SDUI5TimelineItem21.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem21.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem21.PositionStyle = "none"
	SDUI5TimelineItem21.Attributes = ""
	SDUI5TimelineItem21.Classes = ""
	SDUI5TimelineItem21.Styles = ""
	SDUI5TimelineItem21.Start = True
	SDUI5TimelineItem21.StartBox = True
	SDUI5TimelineItem21.StartJoinPrefix = False
	SDUI5TimelineItem21.StartJoinPrefixColor = ""
	SDUI5TimelineItem21.StartText = "First Macintosh computer"
	SDUI5TimelineItem21.Visible = True
	BANano.Await(SDUI5TimelineItem21.AddComponent)
	'
	SDUI5TimelineItem22.Initialize(Me, "SDUI5TimelineItem22", "SDUI5TimelineItem22")
	SDUI5TimelineItem22.ParentID = "SDUI5Timeline5"
	SDUI5TimelineItem22.Enabled = True
	SDUI5TimelineItem22.End = True
	SDUI5TimelineItem22.EndBox = True
	SDUI5TimelineItem22.EndJoinSuffix = True
	SDUI5TimelineItem22.EndJoinSuffixColor = "primary"
	SDUI5TimelineItem22.EndText = "iMac"
	SDUI5TimelineItem22.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem22.Middle = True
	SDUI5TimelineItem22.MiddleBox = False
	SDUI5TimelineItem22.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem22.MiddleIconSize = "16px"
	SDUI5TimelineItem22.MiddleText = ""
	SDUI5TimelineItem22.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem22.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem22.PositionStyle = "none"
	SDUI5TimelineItem22.Attributes = ""
	SDUI5TimelineItem22.Classes = ""
	SDUI5TimelineItem22.Styles = ""
	SDUI5TimelineItem22.Start = False
	SDUI5TimelineItem22.StartBox = False
	SDUI5TimelineItem22.StartJoinPrefix = True
	SDUI5TimelineItem22.StartJoinPrefixColor = "primary"
	SDUI5TimelineItem22.StartText = ""
	SDUI5TimelineItem22.Visible = True
	BANano.Await(SDUI5TimelineItem22.AddComponent)
	'
	SDUI5TimelineItem23.Initialize(Me, "SDUI5TimelineItem23", "SDUI5TimelineItem23")
	SDUI5TimelineItem23.ParentID = "SDUI5Timeline5"
	SDUI5TimelineItem23.Enabled = True
	SDUI5TimelineItem23.End = False
	SDUI5TimelineItem23.EndBox = False
	SDUI5TimelineItem23.EndJoinSuffix = True
	SDUI5TimelineItem23.EndJoinSuffixColor = "primary"
	SDUI5TimelineItem23.EndText = ""
	SDUI5TimelineItem23.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem23.Middle = True
	SDUI5TimelineItem23.MiddleBox = False
	SDUI5TimelineItem23.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem23.MiddleIconSize = "16px"
	SDUI5TimelineItem23.MiddleText = ""
	SDUI5TimelineItem23.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem23.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem23.PositionStyle = "none"
	SDUI5TimelineItem23.Attributes = ""
	SDUI5TimelineItem23.Classes = ""
	SDUI5TimelineItem23.Styles = ""
	SDUI5TimelineItem23.Start = True
	SDUI5TimelineItem23.StartBox = True
	SDUI5TimelineItem23.StartJoinPrefix = True
	SDUI5TimelineItem23.StartJoinPrefixColor = "primary"
	SDUI5TimelineItem23.StartText = "iPod"
	SDUI5TimelineItem23.Visible = True
	BANano.Await(SDUI5TimelineItem23.AddComponent)
	'
	SDUI5TimelineItem24.Initialize(Me, "SDUI5TimelineItem24", "SDUI5TimelineItem24")
	SDUI5TimelineItem24.ParentID = "SDUI5Timeline5"
	SDUI5TimelineItem24.Enabled = True
	SDUI5TimelineItem24.End = True
	SDUI5TimelineItem24.EndBox = True
	SDUI5TimelineItem24.EndJoinSuffix = True
	SDUI5TimelineItem24.EndJoinSuffixColor = ""
	SDUI5TimelineItem24.EndText = "iPhone"
	SDUI5TimelineItem24.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem24.Middle = True
	SDUI5TimelineItem24.MiddleBox = False
	SDUI5TimelineItem24.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem24.MiddleIconSize = "16px"
	SDUI5TimelineItem24.MiddleText = ""
	SDUI5TimelineItem24.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem24.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem24.PositionStyle = "none"
	SDUI5TimelineItem24.Attributes = ""
	SDUI5TimelineItem24.Classes = ""
	SDUI5TimelineItem24.Styles = ""
	SDUI5TimelineItem24.Start = False
	SDUI5TimelineItem24.StartBox = False
	SDUI5TimelineItem24.StartJoinPrefix = True
	SDUI5TimelineItem24.StartJoinPrefixColor = "primary"
	SDUI5TimelineItem24.StartText = ""
	SDUI5TimelineItem24.Visible = True
	BANano.Await(SDUI5TimelineItem24.AddComponent)
	'
	SDUI5TimelineItem25.Initialize(Me, "SDUI5TimelineItem25", "SDUI5TimelineItem25")
	SDUI5TimelineItem25.ParentID = "SDUI5Timeline5"
	SDUI5TimelineItem25.Enabled = True
	SDUI5TimelineItem25.End = False
	SDUI5TimelineItem25.EndBox = False
	SDUI5TimelineItem25.EndJoinSuffix = False
	SDUI5TimelineItem25.EndJoinSuffixColor = ""
	SDUI5TimelineItem25.EndText = ""
	SDUI5TimelineItem25.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem25.Middle = True
	SDUI5TimelineItem25.MiddleBox = False
	SDUI5TimelineItem25.MiddleIcon = "./assets/checkblack.svg"
	SDUI5TimelineItem25.MiddleIconSize = "16px"
	SDUI5TimelineItem25.MiddleText = ""
	SDUI5TimelineItem25.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem25.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem25.PositionStyle = "none"
	SDUI5TimelineItem25.Attributes = ""
	SDUI5TimelineItem25.Classes = ""
	SDUI5TimelineItem25.Styles = ""
	SDUI5TimelineItem25.Start = True
	SDUI5TimelineItem25.StartBox = True
	SDUI5TimelineItem25.StartJoinPrefix = True
	SDUI5TimelineItem25.StartJoinPrefixColor = ""
	SDUI5TimelineItem25.StartText = "Apple Watch"
	SDUI5TimelineItem25.Visible = True
	BANano.Await(SDUI5TimelineItem25.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignContent = "none"
	SDUI5Column6.AlignItems = "none"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.BackgroundColor = ""
	SDUI5Column6.CenterChildren = False
	SDUI5Column6.Enabled = True
	SDUI5Column6.Height = ""
	SDUI5Column6.JustifyContent = "none"
	SDUI5Column6.JustifyItems = "none"
	SDUI5Column6.JustifySelf = "none"
	SDUI5Column6.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.OffsetLg = ""
	SDUI5Column6.OffsetMd = ""
	SDUI5Column6.OffsetSm = ""
	SDUI5Column6.OffsetXl = ""
	SDUI5Column6.OffsetXxl = ""
	SDUI5Column6.Order = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.PlaceContent = "none"
	SDUI5Column6.PlaceItems = "none"
	SDUI5Column6.PlaceSelf = "none"
	SDUI5Column6.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column6.PositionStyle = "none"
	SDUI5Column6.Attributes = ""
	SDUI5Column6.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column6.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column6.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column6.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column6.Classes = ""
	SDUI5Column6.Styles = ""
	SDUI5Column6.Rounded = "none"
	SDUI5Column6.Shadow = "none"
	SDUI5Column6.Size = "12"
	SDUI5Column6.SizeLg = ""
	SDUI5Column6.SizeMd = ""
	SDUI5Column6.SizeSm = ""
	SDUI5Column6.SizeXl = ""
	SDUI5Column6.SizeXxl = ""
	SDUI5Column6.Text = ""
	SDUI5Column6.TextAlign = "none"
	SDUI5Column6.TextColor = ""
	SDUI5Column6.Visible = True
	SDUI5Column6.Width = ""
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Timeline6.Initialize(Me, "SDUI5Timeline6", "SDUI5Timeline6")
	SDUI5Timeline6.ParentID = "SDUI5Column6"
	SDUI5Timeline6.Compact = False
	SDUI5Timeline6.Direction = "horizontal"
	SDUI5Timeline6.Enabled = True
	SDUI5Timeline6.LGDirection = "none"
	SDUI5Timeline6.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline6.MDDirection = "none"
	SDUI5Timeline6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Timeline6.Position = "t=?; b=?; r=?; l=?"
	SDUI5Timeline6.PositionStyle = "none"
	SDUI5Timeline6.Attributes = ""
	SDUI5Timeline6.Classes = ""
	SDUI5Timeline6.Styles = ""
	SDUI5Timeline6.SMDirection = "none"
	SDUI5Timeline6.SnapIcon = False
	SDUI5Timeline6.Visible = True
	SDUI5Timeline6.XLDirection = "none"
	BANano.Await(SDUI5Timeline6.AddComponent)
	'
	SDUI5TimelineItem26.Initialize(Me, "SDUI5TimelineItem26", "SDUI5TimelineItem26")
	SDUI5TimelineItem26.ParentID = "SDUI5Timeline6"
	SDUI5TimelineItem26.Enabled = True
	SDUI5TimelineItem26.End = False
	SDUI5TimelineItem26.EndBox = False
	SDUI5TimelineItem26.EndJoinSuffix = True
	SDUI5TimelineItem26.EndJoinSuffixColor = ""
	SDUI5TimelineItem26.EndText = ""
	SDUI5TimelineItem26.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem26.Middle = True
	SDUI5TimelineItem26.MiddleBox = False
	SDUI5TimelineItem26.MiddleIcon = ""
	SDUI5TimelineItem26.MiddleIconSize = "16px"
	SDUI5TimelineItem26.MiddleText = ""
	SDUI5TimelineItem26.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem26.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem26.PositionStyle = "none"
	SDUI5TimelineItem26.Attributes = ""
	SDUI5TimelineItem26.Classes = ""
	SDUI5TimelineItem26.Styles = ""
	SDUI5TimelineItem26.Start = True
	SDUI5TimelineItem26.StartBox = True
	SDUI5TimelineItem26.StartJoinPrefix = False
	SDUI5TimelineItem26.StartJoinPrefixColor = ""
	SDUI5TimelineItem26.StartText = "First Macintosh computer"
	SDUI5TimelineItem26.Visible = True
	BANano.Await(SDUI5TimelineItem26.AddComponent)
	'
	SDUI5TimelineItem27.Initialize(Me, "SDUI5TimelineItem27", "SDUI5TimelineItem27")
	SDUI5TimelineItem27.ParentID = "SDUI5Timeline6"
	SDUI5TimelineItem27.Enabled = True
	SDUI5TimelineItem27.End = True
	SDUI5TimelineItem27.EndBox = True
	SDUI5TimelineItem27.EndJoinSuffix = True
	SDUI5TimelineItem27.EndJoinSuffixColor = ""
	SDUI5TimelineItem27.EndText = "iMac"
	SDUI5TimelineItem27.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem27.Middle = True
	SDUI5TimelineItem27.MiddleBox = False
	SDUI5TimelineItem27.MiddleIcon = ""
	SDUI5TimelineItem27.MiddleIconSize = "16px"
	SDUI5TimelineItem27.MiddleText = ""
	SDUI5TimelineItem27.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem27.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem27.PositionStyle = "none"
	SDUI5TimelineItem27.Attributes = ""
	SDUI5TimelineItem27.Classes = ""
	SDUI5TimelineItem27.Styles = ""
	SDUI5TimelineItem27.Start = False
	SDUI5TimelineItem27.StartBox = False
	SDUI5TimelineItem27.StartJoinPrefix = True
	SDUI5TimelineItem27.StartJoinPrefixColor = ""
	SDUI5TimelineItem27.StartText = ""
	SDUI5TimelineItem27.Visible = True
	BANano.Await(SDUI5TimelineItem27.AddComponent)
	'
	SDUI5TimelineItem28.Initialize(Me, "SDUI5TimelineItem28", "SDUI5TimelineItem28")
	SDUI5TimelineItem28.ParentID = "SDUI5Timeline6"
	SDUI5TimelineItem28.Enabled = True
	SDUI5TimelineItem28.End = False
	SDUI5TimelineItem28.EndBox = False
	SDUI5TimelineItem28.EndJoinSuffix = True
	SDUI5TimelineItem28.EndJoinSuffixColor = ""
	SDUI5TimelineItem28.EndText = ""
	SDUI5TimelineItem28.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem28.Middle = True
	SDUI5TimelineItem28.MiddleBox = False
	SDUI5TimelineItem28.MiddleIcon = ""
	SDUI5TimelineItem28.MiddleIconSize = "16px"
	SDUI5TimelineItem28.MiddleText = ""
	SDUI5TimelineItem28.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem28.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem28.PositionStyle = "none"
	SDUI5TimelineItem28.Attributes = ""
	SDUI5TimelineItem28.Classes = ""
	SDUI5TimelineItem28.Styles = ""
	SDUI5TimelineItem28.Start = True
	SDUI5TimelineItem28.StartBox = True
	SDUI5TimelineItem28.StartJoinPrefix = True
	SDUI5TimelineItem28.StartJoinPrefixColor = ""
	SDUI5TimelineItem28.StartText = "iPod"
	SDUI5TimelineItem28.Visible = True
	BANano.Await(SDUI5TimelineItem28.AddComponent)
	'
	SDUI5TimelineItem29.Initialize(Me, "SDUI5TimelineItem29", "SDUI5TimelineItem29")
	SDUI5TimelineItem29.ParentID = "SDUI5Timeline6"
	SDUI5TimelineItem29.Enabled = True
	SDUI5TimelineItem29.End = True
	SDUI5TimelineItem29.EndBox = True
	SDUI5TimelineItem29.EndJoinSuffix = True
	SDUI5TimelineItem29.EndJoinSuffixColor = ""
	SDUI5TimelineItem29.EndText = "iPhone"
	SDUI5TimelineItem29.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem29.Middle = True
	SDUI5TimelineItem29.MiddleBox = False
	SDUI5TimelineItem29.MiddleIcon = ""
	SDUI5TimelineItem29.MiddleIconSize = "16px"
	SDUI5TimelineItem29.MiddleText = ""
	SDUI5TimelineItem29.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem29.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem29.PositionStyle = "none"
	SDUI5TimelineItem29.Attributes = ""
	SDUI5TimelineItem29.Classes = ""
	SDUI5TimelineItem29.Styles = ""
	SDUI5TimelineItem29.Start = False
	SDUI5TimelineItem29.StartBox = False
	SDUI5TimelineItem29.StartJoinPrefix = True
	SDUI5TimelineItem29.StartJoinPrefixColor = ""
	SDUI5TimelineItem29.StartText = ""
	SDUI5TimelineItem29.Visible = True
	BANano.Await(SDUI5TimelineItem29.AddComponent)
	'
	SDUI5TimelineItem30.Initialize(Me, "SDUI5TimelineItem30", "SDUI5TimelineItem30")
	SDUI5TimelineItem30.ParentID = "SDUI5Timeline6"
	SDUI5TimelineItem30.Enabled = True
	SDUI5TimelineItem30.End = False
	SDUI5TimelineItem30.EndBox = False
	SDUI5TimelineItem30.EndJoinSuffix = False
	SDUI5TimelineItem30.EndJoinSuffixColor = ""
	SDUI5TimelineItem30.EndText = ""
	SDUI5TimelineItem30.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem30.Middle = True
	SDUI5TimelineItem30.MiddleBox = False
	SDUI5TimelineItem30.MiddleIcon = ""
	SDUI5TimelineItem30.MiddleIconSize = "16px"
	SDUI5TimelineItem30.MiddleText = ""
	SDUI5TimelineItem30.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TimelineItem30.Position = "t=?; b=?; r=?; l=?"
	SDUI5TimelineItem30.PositionStyle = "none"
	SDUI5TimelineItem30.Attributes = ""
	SDUI5TimelineItem30.Classes = ""
	SDUI5TimelineItem30.Styles = ""
	SDUI5TimelineItem30.Start = True
	SDUI5TimelineItem30.StartBox = True
	SDUI5TimelineItem30.StartJoinPrefix = True
	SDUI5TimelineItem30.StartJoinPrefixColor = ""
	SDUI5TimelineItem30.StartText = "Apple Watch"
	SDUI5TimelineItem30.Visible = True
	BANano.Await(SDUI5TimelineItem30.AddComponent)
	pgIndex.UpdateTitle("SDUI5Timeline")
End Sub

