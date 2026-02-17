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
	Private SDUI5ToolTip1 As SDUI5ToolTip		'ignore
	Private SDUI5Button1 As SDUI5Button		'ignore
	Private SDUI5ToolTip2 As SDUI5ToolTip		'ignore
	Private SDUI5Button2 As SDUI5Button		'ignore
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
	SDUI5ToolTip1.Initialize(Me, "SDUI5ToolTip1", "SDUI5ToolTip1")
	SDUI5ToolTip1.ParentID = "SDUI5Container1"
	SDUI5ToolTip1.Color = "none"
	SDUI5ToolTip1.HasContent = False
	SDUI5ToolTip1.Open = False
	SDUI5ToolTip1.Tip = "Hello"
	'SDUI5ToolTip1.TooltipPosition = "right"
	BANano.Await(SDUI5ToolTip1.AddComponent)
	'
	SDUI5Button1.Initialize(Me, "SDUI5Button1", "SDUI5Button1")
	SDUI5Button1.ParentID = "SDUI5ToolTip1"
	SDUI5Button1.Activator = False
	SDUI5Button1.Active = False
	SDUI5Button1.BackgroundColor = ""
	SDUI5Button1.Badge = ""
	SDUI5Button1.BadgeColor = ""
	SDUI5Button1.BadgeSize = "sm"
	SDUI5Button1.Block = False
	SDUI5Button1.Color = "primary"
	SDUI5Button1.Dash = False
	SDUI5Button1.DockItem = False
	SDUI5Button1.Enabled = True
	SDUI5Button1.Ghost = False
	SDUI5Button1.Height = ""
	SDUI5Button1.IconSize = "none"
	'SDUI5Button1.Image = ""
	'SDUI5Button1.ImageHeight = "32px"
	'SDUI5Button1.ImageWidth = "32px"
	SDUI5Button1.JoinItem = False
	SDUI5Button1.LeftIcon = ""
	SDUI5Button1.LeftIconColor = ""
	SDUI5Button1.Link = False
	SDUI5Button1.Loading = False
	SDUI5Button1.MarginAXYTBLR = "a=?; x=?; y=?; t=10px; b=?; l=10px; r=?"
	SDUI5Button1.Outline = False
	SDUI5Button1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Button1.Position = "t=?; b=?; r=?; l=?"
	SDUI5Button1.PositionStyle = "none"
	SDUI5Button1.Attributes = ""
	SDUI5Button1.Classes = ""
	SDUI5Button1.Styles = ""
	SDUI5Button1.RightIcon = ""
	SDUI5Button1.RightIconColor = ""
	SDUI5Button1.RightImage = ""
	SDUI5Button1.RightImageHeight = "32px"
	SDUI5Button1.RightImageWidth = "32px"
	SDUI5Button1.RoundedField = False
	SDUI5Button1.Shape = "none"
	SDUI5Button1.Size = "none"
	SDUI5Button1.SizeLarge = "none"
	SDUI5Button1.SizeMedium = "none"
	SDUI5Button1.SizeSmall = "none"
	SDUI5Button1.SizeXLarge = "none"
	SDUI5Button1.Soft = False
	SDUI5Button1.Text = "Hover Me"
	SDUI5Button1.TextColor = ""
	SDUI5Button1.Tooltip = ""
	SDUI5Button1.TooltipColor = "none"
	SDUI5Button1.TooltipOpen = False
	SDUI5Button1.TooltipPosition = "none"
	SDUI5Button1.Visible = True
	SDUI5Button1.Wide = False
	SDUI5Button1.Width = ""
	BANano.Await(SDUI5Button1.AddComponent)
	'
	SDUI5ToolTip2.Initialize(Me, "SDUI5ToolTip2", "SDUI5ToolTip2")
	SDUI5ToolTip2.ParentID = "SDUI5Container1"
	SDUI5ToolTip2.Color = "primary"
	SDUI5ToolTip2.HasContent = False
	SDUI5ToolTip2.Open = False
	SDUI5ToolTip2.Tip = "I am at the bottom"
	'SDUI5ToolTip2.TooltipPosition = "bottom"
	BANano.Await(SDUI5ToolTip2.AddComponent)
	'
	SDUI5Button2.Initialize(Me, "SDUI5Button2", "SDUI5Button2")
	SDUI5Button2.ParentID = "SDUI5ToolTip2"
	SDUI5Button2.Activator = False
	SDUI5Button2.Active = False
	SDUI5Button2.BackgroundColor = ""
	SDUI5Button2.Badge = ""
	SDUI5Button2.BadgeColor = ""
	SDUI5Button2.BadgeSize = "sm"
	SDUI5Button2.Block = False
	SDUI5Button2.Color = "primary"
	SDUI5Button2.Dash = False
	SDUI5Button2.DockItem = False
	SDUI5Button2.Enabled = True
	SDUI5Button2.Ghost = False
	SDUI5Button2.Height = ""
	SDUI5Button2.IconSize = "none"
	'SDUI5Button2.Image = ""
	'SDUI5Button2.ImageHeight = "32px"
	'SDUI5Button2.ImageWidth = "32px"
	SDUI5Button2.JoinItem = False
	SDUI5Button2.LeftIcon = ""
	SDUI5Button2.LeftIconColor = ""
	SDUI5Button2.Link = False
	SDUI5Button2.Loading = False
	SDUI5Button2.MarginAXYTBLR = "a=?; x=?; y=?; t=10px; b=?; l=10px; r=?"
	SDUI5Button2.Outline = False
	SDUI5Button2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Button2.Position = "t=?; b=?; r=?; l=?"
	SDUI5Button2.PositionStyle = "none"
	SDUI5Button2.Attributes = ""
	SDUI5Button2.Classes = ""
	SDUI5Button2.Styles = ""
	SDUI5Button2.RightIcon = ""
	SDUI5Button2.RightIconColor = ""
	SDUI5Button2.RightImage = ""
	SDUI5Button2.RightImageHeight = "32px"
	SDUI5Button2.RightImageWidth = "32px"
	SDUI5Button2.RoundedField = False
	SDUI5Button2.Shape = "none"
	SDUI5Button2.Size = "none"
	SDUI5Button2.SizeLarge = "none"
	SDUI5Button2.SizeMedium = "none"
	SDUI5Button2.SizeSmall = "none"
	SDUI5Button2.SizeXLarge = "none"
	SDUI5Button2.Soft = False
	SDUI5Button2.Text = "Bottom"
	SDUI5Button2.TextColor = ""
	SDUI5Button2.Tooltip = ""
	SDUI5Button2.TooltipColor = "none"
	SDUI5Button2.TooltipOpen = False
	SDUI5Button2.TooltipPosition = "none"
	SDUI5Button2.Visible = True
	SDUI5Button2.Wide = False
	SDUI5Button2.Width = ""
	BANano.Await(SDUI5Button2.AddComponent)
	pgIndex.UpdateTitle("SDUI5ToolTip")
End Sub

