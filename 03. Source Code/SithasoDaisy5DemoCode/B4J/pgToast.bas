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
	Private toast2 As SDUI5Button		'ignore
	Private toast3 As SDUI5Button		'ignore
	Private toast4 As SDUI5Button		'ignore
	Private toast5 As SDUI5Button		'ignore
	Private SDUI5Toast2 As SDUI5Toast		'ignore
	Private SDUI5Toast3 As SDUI5Toast		'ignore
	Private SDUI5Toast4 As SDUI5Toast		'ignore
	Private SDUI5Toast5 As SDUI5Toast		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Toast2.Initialize(Me, "SDUI5Toast2", "SDUI5Toast2")
	SDUI5Toast2.ParentID = app.PageView
	SDUI5Toast2.HorizontalPosition = "start"
	SDUI5Toast2.VerticalPosition = "bottom"
	BANano.Await(SDUI5Toast2.AddComponent)
	'
	toast3.Initialize(Me, "toast3", "toast3")
	toast3.ParentID = "SDUI5Toast2"
	toast3.Activator = False
	toast3.Active = False
	toast3.BackgroundColor = ""
	toast3.Badge = ""
	toast3.BadgeColor = ""
	toast3.BadgeSize = "sm"
	toast3.Block = False
	toast3.Color = "none"
	toast3.Dash = False
	toast3.DockItem = False
	toast3.Enabled = True
	toast3.Ghost = False
	toast3.Height = ""
	toast3.IconSize = "none"
    toast3.Image = "./assets/addfolder.svg"
	'toast3.ImageHeight = "32px"
	'toast3.ImageWidth = "32px"
	toast3.IndicatorColor = "error"
	toast3.IndicatorPosition = "top-end"
	toast3.IndicatorSize = "xs"
	toast3.IndicatorTextColor = "none"
	toast3.IndicatorValue = ""
	toast3.IndicatorVisible = False
	toast3.JoinItem = False
	toast3.LeftIcon = ""
	toast3.LeftIconColor = ""
	toast3.Link = False
	toast3.Loading = False
	toast3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	toast3.Outline = False
	toast3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	toast3.PopOverTarget = ""
	toast3.Position = "t=?; b=?; r=?; l=?"
	toast3.PositionStyle = "none"
	toast3.Attributes = ""
	toast3.Classes = ""
	toast3.Styles = ""
	toast3.RightIcon = ""
	toast3.RightIconColor = ""
	toast3.RightImage = ""
	toast3.RightImageHeight = "32px"
	toast3.RightImageWidth = "32px"
	toast3.RoundedField = False
	toast3.Shadow = "md"
	toast3.Shape = "circle"
	toast3.Size = "none"
	toast3.SizeLarge = "none"
	toast3.SizeMedium = "none"
	toast3.SizeSmall = "none"
	toast3.SizeXLarge = "none"
	toast3.Soft = False
	toast3.Text = ""
	toast3.TextColor = ""
	toast3.TextSize = ""
	toast3.TextVisible = True
	toast3.Tooltip = ""
	toast3.TooltipColor = "none"
	toast3.TooltipOpen = False
	toast3.TooltipPosition = "none"
	toast3.Visible = True
	toast3.Wide = False
	toast3.Width = ""
	BANano.Await(toast3.AddComponent)
	'
	SDUI5Toast3.Initialize(Me, "SDUI5Toast3", "SDUI5Toast3")
	SDUI5Toast3.ParentID = app.PageView
	SDUI5Toast3.HorizontalPosition = "end"
	SDUI5Toast3.VerticalPosition = "top"
	BANano.Await(SDUI5Toast3.AddComponent)
	'
	toast2.Initialize(Me, "toast2", "toast2")
	toast2.ParentID = "SDUI5Toast3"
	toast2.Activator = False
	toast2.Active = False
	toast2.BackgroundColor = ""
	toast2.Badge = ""
	toast2.BadgeColor = ""
	toast2.BadgeSize = "sm"
	toast2.Block = False
	toast2.Color = "none"
	toast2.Dash = False
	toast2.DockItem = False
	toast2.Enabled = True
	toast2.Ghost = False
	toast2.Height = ""
	toast2.IconSize = "none"
    toast2.Image = "./assets/addfolder.svg"
	'toast2.ImageHeight = "32px"
	'toast2.ImageWidth = "32px"
	toast2.IndicatorColor = "error"
	toast2.IndicatorPosition = "top-end"
	toast2.IndicatorSize = "xs"
	toast2.IndicatorTextColor = "none"
	toast2.IndicatorValue = ""
	toast2.IndicatorVisible = False
	toast2.JoinItem = False
	toast2.LeftIcon = ""
	toast2.LeftIconColor = ""
	toast2.Link = False
	toast2.Loading = False
	toast2.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	toast2.Outline = False
	toast2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	toast2.PopOverTarget = ""
	toast2.Position = "t=?; b=?; r=?; l=?"
	toast2.PositionStyle = "none"
	toast2.Attributes = ""
	toast2.Classes = ""
	toast2.Styles = ""
	toast2.RightIcon = ""
	toast2.RightIconColor = ""
	toast2.RightImage = ""
	toast2.RightImageHeight = "32px"
	toast2.RightImageWidth = "32px"
	toast2.RoundedField = False
	toast2.Shadow = "md"
	toast2.Shape = "circle"
	toast2.Size = "none"
	toast2.SizeLarge = "none"
	toast2.SizeMedium = "none"
	toast2.SizeSmall = "none"
	toast2.SizeXLarge = "none"
	toast2.Soft = False
	toast2.Text = ""
	toast2.TextColor = ""
	toast2.TextSize = ""
	toast2.TextVisible = True
	toast2.Tooltip = ""
	toast2.TooltipColor = "none"
	toast2.TooltipOpen = False
	toast2.TooltipPosition = "none"
	toast2.Visible = True
	toast2.Wide = False
	toast2.Width = ""
	BANano.Await(toast2.AddComponent)
	'
	SDUI5Toast4.Initialize(Me, "SDUI5Toast4", "SDUI5Toast4")
	SDUI5Toast4.ParentID = app.PageView
	SDUI5Toast4.HorizontalPosition = "end"
	SDUI5Toast4.VerticalPosition = "bottom"
	BANano.Await(SDUI5Toast4.AddComponent)
	'
	toast5.Initialize(Me, "toast5", "toast5")
	toast5.ParentID = "SDUI5Toast4"
	toast5.Activator = False
	toast5.Active = False
	toast5.BackgroundColor = ""
	toast5.Badge = ""
	toast5.BadgeColor = ""
	toast5.BadgeSize = "sm"
	toast5.Block = False
	toast5.Color = "none"
	toast5.Dash = False
	toast5.DockItem = False
	toast5.Enabled = True
	toast5.Ghost = False
	toast5.Height = ""
	toast5.IconSize = "none"
    toast5.Image = "./assets/addfolder.svg"
	'toast5.ImageHeight = "32px"
	'toast5.ImageWidth = "32px"
	toast5.IndicatorColor = "error"
	toast5.IndicatorPosition = "top-end"
	toast5.IndicatorSize = "xs"
	toast5.IndicatorTextColor = "none"
	toast5.IndicatorValue = ""
	toast5.IndicatorVisible = False
	toast5.JoinItem = False
	toast5.LeftIcon = ""
	toast5.LeftIconColor = ""
	toast5.Link = False
	toast5.Loading = False
	toast5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	toast5.Outline = False
	toast5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	toast5.PopOverTarget = ""
	toast5.Position = "t=?; b=?; r=?; l=?"
	toast5.PositionStyle = "none"
	toast5.Attributes = ""
	toast5.Classes = ""
	toast5.Styles = ""
	toast5.RightIcon = ""
	toast5.RightIconColor = ""
	toast5.RightImage = ""
	toast5.RightImageHeight = "32px"
	toast5.RightImageWidth = "32px"
	toast5.RoundedField = False
	toast5.Shadow = "md"
	toast5.Shape = "circle"
	toast5.Size = "none"
	toast5.SizeLarge = "none"
	toast5.SizeMedium = "none"
	toast5.SizeSmall = "none"
	toast5.SizeXLarge = "none"
	toast5.Soft = False
	toast5.Text = ""
	toast5.TextColor = ""
	toast5.TextSize = ""
	toast5.TextVisible = True
	toast5.Tooltip = ""
	toast5.TooltipColor = "none"
	toast5.TooltipOpen = False
	toast5.TooltipPosition = "none"
	toast5.Visible = True
	toast5.Wide = False
	toast5.Width = ""
	BANano.Await(toast5.AddComponent)
	'
	SDUI5Toast5.Initialize(Me, "SDUI5Toast5", "SDUI5Toast5")
	SDUI5Toast5.ParentID = app.PageView
	SDUI5Toast5.HorizontalPosition = "center"
	SDUI5Toast5.VerticalPosition = "middle"
	BANano.Await(SDUI5Toast5.AddComponent)
	'
	toast4.Initialize(Me, "toast4", "toast4")
	toast4.ParentID = "SDUI5Toast5"
	toast4.Activator = False
	toast4.Active = False
	toast4.BackgroundColor = ""
	toast4.Badge = ""
	toast4.BadgeColor = ""
	toast4.BadgeSize = "sm"
	toast4.Block = False
	toast4.Color = "none"
	toast4.Dash = False
	toast4.DockItem = False
	toast4.Enabled = True
	toast4.Ghost = False
	toast4.Height = ""
	toast4.IconSize = "none"
    toast4.Image = "./assets/addfolder.svg"
	'toast4.ImageHeight = "32px"
	'toast4.ImageWidth = "32px"
	toast4.IndicatorColor = "error"
	toast4.IndicatorPosition = "top-end"
	toast4.IndicatorSize = "xs"
	toast4.IndicatorTextColor = "none"
	toast4.IndicatorValue = ""
	toast4.IndicatorVisible = False
	toast4.JoinItem = False
	toast4.LeftIcon = ""
	toast4.LeftIconColor = ""
	toast4.Link = False
	toast4.Loading = False
	toast4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	toast4.Outline = False
	toast4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	toast4.PopOverTarget = ""
	toast4.Position = "t=?; b=?; r=?; l=?"
	toast4.PositionStyle = "none"
	toast4.Attributes = ""
	toast4.Classes = ""
	toast4.Styles = ""
	toast4.RightIcon = ""
	toast4.RightIconColor = ""
	toast4.RightImage = ""
	toast4.RightImageHeight = "32px"
	toast4.RightImageWidth = "32px"
	toast4.RoundedField = False
	toast4.Shadow = "md"
	toast4.Shape = "circle"
	toast4.Size = "none"
	toast4.SizeLarge = "none"
	toast4.SizeMedium = "none"
	toast4.SizeSmall = "none"
	toast4.SizeXLarge = "none"
	toast4.Soft = False
	toast4.Text = ""
	toast4.TextColor = ""
	toast4.TextSize = ""
	toast4.TextVisible = True
	toast4.Tooltip = ""
	toast4.TooltipColor = "none"
	toast4.TooltipOpen = False
	toast4.TooltipPosition = "none"
	toast4.Visible = True
	toast4.Wide = False
	toast4.Width = ""
	BANano.Await(toast4.AddComponent)
	pgIndex.UpdateTitle("SDUI5Toast")
End Sub

Private Sub toast5_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Toast 5")
End Sub

Private Sub toast4_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Toast 4")
End Sub

Private Sub toast3_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Toast 3")
End Sub

Private Sub toast2_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Toast 2")
End Sub


