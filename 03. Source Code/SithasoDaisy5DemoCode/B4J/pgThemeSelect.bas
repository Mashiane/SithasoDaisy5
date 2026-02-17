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
	Private SDUI5GroupSelect1 As SDUI5GroupSelect		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.BackgroundColor = ""
	SDUI5Container1.BackgroundImage = ""
	SDUI5Container1.CenterChildren = False
	SDUI5Container1.Container = True
	SDUI5Container1.ContainerFluid = False
	SDUI5Container1.ContainerLg = False
	SDUI5Container1.ContainerMd = False
	SDUI5Container1.ContainerSm = False
	SDUI5Container1.ContainerXl = False
	SDUI5Container1.ContainerXxl = False
	SDUI5Container1.Enabled = True
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	SDUI5Container1.Height = ""
	SDUI5Container1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Container1.MaxHeight = ""
	SDUI5Container1.MaxWidth = ""
	SDUI5Container1.MinHeight = ""
	SDUI5Container1.MinWidth = ""
	SDUI5Container1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Container1.PageView = False
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
	SDUI5Row1.Gap = ""
	SDUI5Row1.GridCols = "12"
	SDUI5Row1.GridColsLg = ""
	SDUI5Row1.GridColsMd = ""
	SDUI5Row1.GridColsSm = ""
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
	SDUI5GroupSelect1.Initialize(Me, "SDUI5GroupSelect1", "SDUI5GroupSelect1")
	SDUI5GroupSelect1.ParentID = "SDUI5Column1"
	SDUI5GroupSelect1.ActiveColor = "#22c55e"
	SDUI5GroupSelect1.BackgroundColor = ""
	SDUI5GroupSelect1.Border = False
	SDUI5GroupSelect1.BorderColor = ""
	SDUI5GroupSelect1.ChipColor = "neutral"
	SDUI5GroupSelect1.Enabled = True
	SDUI5GroupSelect1.GroupName = "group1"
	SDUI5GroupSelect1.Height = ""
	SDUI5GroupSelect1.Label = "Select Theme"
	SDUI5GroupSelect1.LegendColor = ""
	SDUI5GroupSelect1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5GroupSelect1.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5GroupSelect1.Position = "t=?; b=?; r=?; l=?"
	SDUI5GroupSelect1.PositionStyle = "none"
	SDUI5GroupSelect1.Attributes = ""
	SDUI5GroupSelect1.Classes = ""
	SDUI5GroupSelect1.Options = ""
	SDUI5GroupSelect1.Styles = ""
	SDUI5GroupSelect1.RoundedBox = True
	SDUI5GroupSelect1.Selected = ""
	SDUI5GroupSelect1.Shadow = "none"
	SDUI5GroupSelect1.SingleSelect = True
	SDUI5GroupSelect1.Size = "sm"
	SDUI5GroupSelect1.TextColor = "#ffffff"
	SDUI5GroupSelect1.ThemeController = True
	SDUI5GroupSelect1.Visible = True
	SDUI5GroupSelect1.Width = "full"
	BANano.Await(SDUI5GroupSelect1.AddComponent)
	pgIndex.UpdateTitle("Theme Controller")
	BANano.Await(SDUI5GroupSelect1.SetThemes)
End Sub

