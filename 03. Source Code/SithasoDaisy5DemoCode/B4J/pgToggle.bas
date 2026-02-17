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
	Private SDUI5Toggle1 As SDUI5Toggle		'ignore
	Private SDUI5Toggle2 As SDUI5Toggle		'ignore
	Private SDUI5Toggle16 As SDUI5Toggle		'ignore
	Private SDUI5Toggle17 As SDUI5Toggle		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Toggle3 As SDUI5Toggle		'ignore
	Private SDUI5Toggle4 As SDUI5Toggle		'ignore
	Private SDUI5Toggle5 As SDUI5Toggle		'ignore
	Private SDUI5Toggle6 As SDUI5Toggle		'ignore
	Private SDUI5Toggle7 As SDUI5Toggle		'ignore
	Private SDUI5Toggle8 As SDUI5Toggle		'ignore
	Private SDUI5Toggle9 As SDUI5Toggle		'ignore
	Private SDUI5Toggle10 As SDUI5Toggle		'ignore
	Private SDUI5Toggle11 As SDUI5Toggle		'ignore
	Private SDUI5Toggle12 As SDUI5Toggle		'ignore
	Private SDUI5Toggle13 As SDUI5Toggle		'ignore
	Private SDUI5Toggle14 As SDUI5Toggle		'ignore
	Private SDUI5Toggle15 As SDUI5Toggle		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5CheckBoxGroup1 As SDUI5CheckBoxGroup		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5CheckBoxGroup2 As SDUI5CheckBoxGroup		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5CheckBoxGroup3 As SDUI5CheckBoxGroup		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5CheckBoxGroup4 As SDUI5CheckBoxGroup		'ignore
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
	SDUI5Row1.Gap = "2"
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
	SDUI5Column1.SizeMd = "6"
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
	SDUI5Column2.SizeMd = "6"
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
	SDUI5Toggle1.Initialize(Me, "SDUI5Toggle1", "SDUI5Toggle1")
	SDUI5Toggle1.ParentID = "SDUI5Column1"
	SDUI5Toggle1.Checked = False
	SDUI5Toggle1.CheckedColor = ""
	SDUI5Toggle1.Color = "none"
	SDUI5Toggle1.Enabled = True
	SDUI5Toggle1.Hint = ""
	SDUI5Toggle1.Indeterminate = False
	SDUI5Toggle1.Label = "Turn On"
	SDUI5Toggle1.Legend = "Toggle"
	SDUI5Toggle1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle1.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle1.PositionStyle = "none"
	SDUI5Toggle1.Attributes = ""
	SDUI5Toggle1.Classes = ""
	SDUI5Toggle1.Styles = ""
	SDUI5Toggle1.Required = False
	SDUI5Toggle1.Size = "none"
	SDUI5Toggle1.ToggleType = "normal"
	SDUI5Toggle1.Validator = False
	SDUI5Toggle1.ValidatorHint = ""
	SDUI5Toggle1.Visible = True
	BANano.Await(SDUI5Toggle1.AddComponent)
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
	SDUI5Column3.SizeMd = "6"
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
	SDUI5Column4.SizeMd = "6"
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
	SDUI5Toggle2.Initialize(Me, "SDUI5Toggle2", "SDUI5Toggle2")
	SDUI5Toggle2.ParentID = "SDUI5Column2"
	SDUI5Toggle2.Checked = False
	SDUI5Toggle2.CheckedColor = "#00ff00"
	SDUI5Toggle2.Color = "none"
	SDUI5Toggle2.Enabled = True
	SDUI5Toggle2.Hint = ""
	SDUI5Toggle2.Indeterminate = False
	SDUI5Toggle2.Label = "Turn On"
	SDUI5Toggle2.Legend = "Toggle"
	SDUI5Toggle2.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle2.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle2.PositionStyle = "none"
	SDUI5Toggle2.Attributes = ""
	SDUI5Toggle2.Classes = ""
	SDUI5Toggle2.Styles = ""
	SDUI5Toggle2.Required = False
	SDUI5Toggle2.Size = "md"
	SDUI5Toggle2.ToggleType = "legend"
	SDUI5Toggle2.Validator = False
	SDUI5Toggle2.ValidatorHint = ""
	SDUI5Toggle2.Visible = True
	BANano.Await(SDUI5Toggle2.AddComponent)
	'
	SDUI5Toggle3.Initialize(Me, "SDUI5Toggle3", "SDUI5Toggle3")
	SDUI5Toggle3.ParentID = "SDUI5Column3"
	SDUI5Toggle3.Checked = True
	SDUI5Toggle3.CheckedColor = ""
	SDUI5Toggle3.Color = "none"
	SDUI5Toggle3.Enabled = True
	SDUI5Toggle3.Hint = ""
	SDUI5Toggle3.Indeterminate = False
	SDUI5Toggle3.Label = "Turn On"
	SDUI5Toggle3.Legend = "Toggle"
	SDUI5Toggle3.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle3.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle3.PositionStyle = "none"
	SDUI5Toggle3.Attributes = ""
	SDUI5Toggle3.Classes = ""
	SDUI5Toggle3.Styles = ""
	SDUI5Toggle3.Required = False
	SDUI5Toggle3.Size = "xs"
	SDUI5Toggle3.ToggleType = "normal"
	SDUI5Toggle3.Validator = False
	SDUI5Toggle3.ValidatorHint = ""
	SDUI5Toggle3.Visible = True
	BANano.Await(SDUI5Toggle3.AddComponent)
	'
	SDUI5Toggle4.Initialize(Me, "SDUI5Toggle4", "SDUI5Toggle4")
	SDUI5Toggle4.ParentID = "SDUI5Column4"
	SDUI5Toggle4.Checked = True
	SDUI5Toggle4.CheckedColor = ""
	SDUI5Toggle4.Color = "accent"
	SDUI5Toggle4.Enabled = True
	SDUI5Toggle4.Hint = ""
	SDUI5Toggle4.Indeterminate = False
	SDUI5Toggle4.Label = "Turn On"
	SDUI5Toggle4.Legend = "Toggle"
	SDUI5Toggle4.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle4.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle4.PositionStyle = "none"
	SDUI5Toggle4.Attributes = ""
	SDUI5Toggle4.Classes = ""
	SDUI5Toggle4.Styles = ""
	SDUI5Toggle4.Required = False
	SDUI5Toggle4.Size = "none"
	SDUI5Toggle4.ToggleType = "normal"
	SDUI5Toggle4.Validator = False
	SDUI5Toggle4.ValidatorHint = ""
	SDUI5Toggle4.Visible = True
	BANano.Await(SDUI5Toggle4.AddComponent)
	'
	SDUI5Toggle5.Initialize(Me, "SDUI5Toggle5", "SDUI5Toggle5")
	SDUI5Toggle5.ParentID = "SDUI5Column3"
	SDUI5Toggle5.Checked = True
	SDUI5Toggle5.CheckedColor = ""
	SDUI5Toggle5.Color = "none"
	SDUI5Toggle5.Enabled = True
	SDUI5Toggle5.Hint = ""
	SDUI5Toggle5.Indeterminate = False
	SDUI5Toggle5.Label = "Turn On"
	SDUI5Toggle5.Legend = "Toggle"
	SDUI5Toggle5.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle5.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle5.PositionStyle = "none"
	SDUI5Toggle5.Attributes = ""
	SDUI5Toggle5.Classes = ""
	SDUI5Toggle5.Styles = ""
	SDUI5Toggle5.Required = False
	SDUI5Toggle5.Size = "sm"
	SDUI5Toggle5.ToggleType = "normal"
	SDUI5Toggle5.Validator = False
	SDUI5Toggle5.ValidatorHint = ""
	SDUI5Toggle5.Visible = True
	BANano.Await(SDUI5Toggle5.AddComponent)
	'
	SDUI5Toggle6.Initialize(Me, "SDUI5Toggle6", "SDUI5Toggle6")
	SDUI5Toggle6.ParentID = "SDUI5Column3"
	SDUI5Toggle6.Checked = True
	SDUI5Toggle6.CheckedColor = ""
	SDUI5Toggle6.Color = "none"
	SDUI5Toggle6.Enabled = True
	SDUI5Toggle6.Hint = ""
	SDUI5Toggle6.Indeterminate = False
	SDUI5Toggle6.Label = "Turn On"
	SDUI5Toggle6.Legend = "Toggle"
	SDUI5Toggle6.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle6.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle6.PositionStyle = "none"
	SDUI5Toggle6.Attributes = ""
	SDUI5Toggle6.Classes = ""
	SDUI5Toggle6.Styles = ""
	SDUI5Toggle6.Required = False
	SDUI5Toggle6.Size = "md"
	SDUI5Toggle6.ToggleType = "normal"
	SDUI5Toggle6.Validator = False
	SDUI5Toggle6.ValidatorHint = ""
	SDUI5Toggle6.Visible = True
	BANano.Await(SDUI5Toggle6.AddComponent)
	'
	SDUI5Toggle7.Initialize(Me, "SDUI5Toggle7", "SDUI5Toggle7")
	SDUI5Toggle7.ParentID = "SDUI5Column3"
	SDUI5Toggle7.Checked = True
	SDUI5Toggle7.CheckedColor = ""
	SDUI5Toggle7.Color = "none"
	SDUI5Toggle7.Enabled = True
	SDUI5Toggle7.Hint = ""
	SDUI5Toggle7.Indeterminate = False
	SDUI5Toggle7.Label = "Turn On"
	SDUI5Toggle7.Legend = "Toggle"
	SDUI5Toggle7.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle7.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle7.PositionStyle = "none"
	SDUI5Toggle7.Attributes = ""
	SDUI5Toggle7.Classes = ""
	SDUI5Toggle7.Styles = ""
	SDUI5Toggle7.Required = False
	SDUI5Toggle7.Size = "lg"
	SDUI5Toggle7.ToggleType = "normal"
	SDUI5Toggle7.Validator = False
	SDUI5Toggle7.ValidatorHint = ""
	SDUI5Toggle7.Visible = True
	BANano.Await(SDUI5Toggle7.AddComponent)
	'
	SDUI5Toggle8.Initialize(Me, "SDUI5Toggle8", "SDUI5Toggle8")
	SDUI5Toggle8.ParentID = "SDUI5Column3"
	SDUI5Toggle8.Checked = True
	SDUI5Toggle8.CheckedColor = ""
	SDUI5Toggle8.Color = "none"
	SDUI5Toggle8.Enabled = True
	SDUI5Toggle8.Hint = ""
	SDUI5Toggle8.Indeterminate = False
	SDUI5Toggle8.Label = "Turn On"
	SDUI5Toggle8.Legend = "Toggle"
	SDUI5Toggle8.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle8.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle8.PositionStyle = "none"
	SDUI5Toggle8.Attributes = ""
	SDUI5Toggle8.Classes = ""
	SDUI5Toggle8.Styles = ""
	SDUI5Toggle8.Required = False
	SDUI5Toggle8.Size = "xl"
	SDUI5Toggle8.ToggleType = "normal"
	SDUI5Toggle8.Validator = False
	SDUI5Toggle8.ValidatorHint = ""
	SDUI5Toggle8.Visible = True
	BANano.Await(SDUI5Toggle8.AddComponent)
	'
	SDUI5Toggle9.Initialize(Me, "SDUI5Toggle9", "SDUI5Toggle9")
	SDUI5Toggle9.ParentID = "SDUI5Column4"
	SDUI5Toggle9.Checked = True
	SDUI5Toggle9.CheckedColor = ""
	SDUI5Toggle9.Color = "error"
	SDUI5Toggle9.Enabled = True
	SDUI5Toggle9.Hint = ""
	SDUI5Toggle9.Indeterminate = False
	SDUI5Toggle9.Label = "Turn On"
	SDUI5Toggle9.Legend = "Toggle"
	SDUI5Toggle9.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle9.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle9.PositionStyle = "none"
	SDUI5Toggle9.Attributes = ""
	SDUI5Toggle9.Classes = ""
	SDUI5Toggle9.Styles = ""
	SDUI5Toggle9.Required = False
	SDUI5Toggle9.Size = "none"
	SDUI5Toggle9.ToggleType = "normal"
	SDUI5Toggle9.Validator = False
	SDUI5Toggle9.ValidatorHint = ""
	SDUI5Toggle9.Visible = True
	BANano.Await(SDUI5Toggle9.AddComponent)
	'
	SDUI5Toggle10.Initialize(Me, "SDUI5Toggle10", "SDUI5Toggle10")
	SDUI5Toggle10.ParentID = "SDUI5Column4"
	SDUI5Toggle10.Checked = True
	SDUI5Toggle10.CheckedColor = ""
	SDUI5Toggle10.Color = "info"
	SDUI5Toggle10.Enabled = True
	SDUI5Toggle10.Hint = ""
	SDUI5Toggle10.Indeterminate = False
	SDUI5Toggle10.Label = "Turn On"
	SDUI5Toggle10.Legend = "Toggle"
	SDUI5Toggle10.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle10.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle10.PositionStyle = "none"
	SDUI5Toggle10.Attributes = ""
	SDUI5Toggle10.Classes = ""
	SDUI5Toggle10.Styles = ""
	SDUI5Toggle10.Required = False
	SDUI5Toggle10.Size = "none"
	SDUI5Toggle10.ToggleType = "normal"
	SDUI5Toggle10.Validator = False
	SDUI5Toggle10.ValidatorHint = ""
	SDUI5Toggle10.Visible = True
	BANano.Await(SDUI5Toggle10.AddComponent)
	'
	SDUI5Toggle11.Initialize(Me, "SDUI5Toggle11", "SDUI5Toggle11")
	SDUI5Toggle11.ParentID = "SDUI5Column4"
	SDUI5Toggle11.Checked = True
	SDUI5Toggle11.CheckedColor = ""
	SDUI5Toggle11.Color = "neutral"
	SDUI5Toggle11.Enabled = True
	SDUI5Toggle11.Hint = ""
	SDUI5Toggle11.Indeterminate = False
	SDUI5Toggle11.Label = "Turn On"
	SDUI5Toggle11.Legend = "Toggle"
	SDUI5Toggle11.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle11.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle11.PositionStyle = "none"
	SDUI5Toggle11.Attributes = ""
	SDUI5Toggle11.Classes = ""
	SDUI5Toggle11.Styles = ""
	SDUI5Toggle11.Required = False
	SDUI5Toggle11.Size = "none"
	SDUI5Toggle11.ToggleType = "normal"
	SDUI5Toggle11.Validator = False
	SDUI5Toggle11.ValidatorHint = ""
	SDUI5Toggle11.Visible = True
	BANano.Await(SDUI5Toggle11.AddComponent)
	'
	SDUI5Toggle12.Initialize(Me, "SDUI5Toggle12", "SDUI5Toggle12")
	SDUI5Toggle12.ParentID = "SDUI5Column4"
	SDUI5Toggle12.Checked = True
	SDUI5Toggle12.CheckedColor = ""
	SDUI5Toggle12.Color = "primary"
	SDUI5Toggle12.Enabled = True
	SDUI5Toggle12.Hint = ""
	SDUI5Toggle12.Indeterminate = False
	SDUI5Toggle12.Label = "Turn On"
	SDUI5Toggle12.Legend = "Toggle"
	SDUI5Toggle12.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle12.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle12.PositionStyle = "none"
	SDUI5Toggle12.Attributes = ""
	SDUI5Toggle12.Classes = ""
	SDUI5Toggle12.Styles = ""
	SDUI5Toggle12.Required = False
	SDUI5Toggle12.Size = "none"
	SDUI5Toggle12.ToggleType = "normal"
	SDUI5Toggle12.Validator = False
	SDUI5Toggle12.ValidatorHint = ""
	SDUI5Toggle12.Visible = True
	BANano.Await(SDUI5Toggle12.AddComponent)
	'
	SDUI5Toggle13.Initialize(Me, "SDUI5Toggle13", "SDUI5Toggle13")
	SDUI5Toggle13.ParentID = "SDUI5Column4"
	SDUI5Toggle13.Checked = True
	SDUI5Toggle13.CheckedColor = ""
	SDUI5Toggle13.Color = "secondary"
	SDUI5Toggle13.Enabled = True
	SDUI5Toggle13.Hint = ""
	SDUI5Toggle13.Indeterminate = False
	SDUI5Toggle13.Label = "Turn On"
	SDUI5Toggle13.Legend = "Toggle"
	SDUI5Toggle13.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle13.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle13.PositionStyle = "none"
	SDUI5Toggle13.Attributes = ""
	SDUI5Toggle13.Classes = ""
	SDUI5Toggle13.Styles = ""
	SDUI5Toggle13.Required = False
	SDUI5Toggle13.Size = "none"
	SDUI5Toggle13.ToggleType = "normal"
	SDUI5Toggle13.Validator = False
	SDUI5Toggle13.ValidatorHint = ""
	SDUI5Toggle13.Visible = True
	BANano.Await(SDUI5Toggle13.AddComponent)
	'
	SDUI5Toggle14.Initialize(Me, "SDUI5Toggle14", "SDUI5Toggle14")
	SDUI5Toggle14.ParentID = "SDUI5Column4"
	SDUI5Toggle14.Checked = True
	SDUI5Toggle14.CheckedColor = ""
	SDUI5Toggle14.Color = "success"
	SDUI5Toggle14.Enabled = True
	SDUI5Toggle14.Hint = ""
	SDUI5Toggle14.Indeterminate = False
	SDUI5Toggle14.Label = "Turn On"
	SDUI5Toggle14.Legend = "Toggle"
	SDUI5Toggle14.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle14.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle14.PositionStyle = "none"
	SDUI5Toggle14.Attributes = ""
	SDUI5Toggle14.Classes = ""
	SDUI5Toggle14.Styles = ""
	SDUI5Toggle14.Required = False
	SDUI5Toggle14.Size = "none"
	SDUI5Toggle14.ToggleType = "normal"
	SDUI5Toggle14.Validator = False
	SDUI5Toggle14.ValidatorHint = ""
	SDUI5Toggle14.Visible = True
	BANano.Await(SDUI5Toggle14.AddComponent)
	'
	SDUI5Toggle15.Initialize(Me, "SDUI5Toggle15", "SDUI5Toggle15")
	SDUI5Toggle15.ParentID = "SDUI5Column4"
	SDUI5Toggle15.Checked = True
	SDUI5Toggle15.CheckedColor = ""
	SDUI5Toggle15.Color = "warning"
	SDUI5Toggle15.Enabled = True
	SDUI5Toggle15.Hint = ""
	SDUI5Toggle15.Indeterminate = False
	SDUI5Toggle15.Label = "Turn On"
	SDUI5Toggle15.Legend = "Toggle"
	SDUI5Toggle15.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle15.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle15.PositionStyle = "none"
	SDUI5Toggle15.Attributes = ""
	SDUI5Toggle15.Classes = ""
	SDUI5Toggle15.Styles = ""
	SDUI5Toggle15.Required = False
	SDUI5Toggle15.Size = "none"
	SDUI5Toggle15.ToggleType = "normal"
	SDUI5Toggle15.Validator = False
	SDUI5Toggle15.ValidatorHint = ""
	SDUI5Toggle15.Visible = True
	BANano.Await(SDUI5Toggle15.AddComponent)
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
	SDUI5Column6.SizeMd = "6"
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
	SDUI5Toggle16.Initialize(Me, "SDUI5Toggle16", "SDUI5Toggle16")
	SDUI5Toggle16.ParentID = "SDUI5Column6"
	SDUI5Toggle16.Checked = True
	SDUI5Toggle16.CheckedColor = "#800080"
	SDUI5Toggle16.Color = "none"
	SDUI5Toggle16.Enabled = True
	SDUI5Toggle16.Hint = ""
	SDUI5Toggle16.Indeterminate = False
	SDUI5Toggle16.Label = "Turn On 16"
	SDUI5Toggle16.Legend = "Toggle"
	SDUI5Toggle16.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle16.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle16.PositionStyle = "none"
	SDUI5Toggle16.Attributes = ""
	SDUI5Toggle16.Classes = ""
	SDUI5Toggle16.Styles = ""
	SDUI5Toggle16.Required = False
	SDUI5Toggle16.Size = "md"
	SDUI5Toggle16.ToggleType = "left-label"
	SDUI5Toggle16.Validator = False
	SDUI5Toggle16.ValidatorHint = ""
	SDUI5Toggle16.Visible = True
	BANano.Await(SDUI5Toggle16.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignContent = "none"
	SDUI5Column7.AlignItems = "none"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.BackgroundColor = ""
	SDUI5Column7.CenterChildren = False
	SDUI5Column7.Enabled = True
	SDUI5Column7.Height = ""
	SDUI5Column7.JustifyContent = "none"
	SDUI5Column7.JustifyItems = "none"
	SDUI5Column7.JustifySelf = "none"
	SDUI5Column7.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.OffsetLg = ""
	SDUI5Column7.OffsetMd = ""
	SDUI5Column7.OffsetSm = ""
	SDUI5Column7.OffsetXl = ""
	SDUI5Column7.OffsetXxl = ""
	SDUI5Column7.Order = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.PlaceContent = "none"
	SDUI5Column7.PlaceItems = "none"
	SDUI5Column7.PlaceSelf = "none"
	SDUI5Column7.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column7.PositionStyle = "none"
	SDUI5Column7.Attributes = ""
	SDUI5Column7.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column7.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column7.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column7.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column7.Classes = ""
	SDUI5Column7.Styles = ""
	SDUI5Column7.Rounded = "none"
	SDUI5Column7.Shadow = "none"
	SDUI5Column7.Size = "12"
	SDUI5Column7.SizeLg = ""
	SDUI5Column7.SizeMd = "6"
	SDUI5Column7.SizeSm = ""
	SDUI5Column7.SizeXl = ""
	SDUI5Column7.SizeXxl = ""
	SDUI5Column7.Text = ""
	SDUI5Column7.TextAlign = "none"
	SDUI5Column7.TextColor = ""
	SDUI5Column7.Visible = True
	SDUI5Column7.Width = ""
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5Toggle17.Initialize(Me, "SDUI5Toggle17", "SDUI5Toggle17")
	SDUI5Toggle17.ParentID = "SDUI5Column7"
	SDUI5Toggle17.Checked = True
	SDUI5Toggle17.CheckedColor = "#800080"
	SDUI5Toggle17.Color = "none"
	SDUI5Toggle17.Enabled = True
	SDUI5Toggle17.Hint = ""
	SDUI5Toggle17.Indeterminate = False
	SDUI5Toggle17.Label = "Turn On"
	SDUI5Toggle17.Legend = "Toggle"
	SDUI5Toggle17.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle17.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Toggle17.Position = "t=?; b=?; r=?; l=?"
	SDUI5Toggle17.PositionStyle = "none"
	SDUI5Toggle17.Attributes = ""
	SDUI5Toggle17.Classes = ""
	SDUI5Toggle17.Styles = ""
	SDUI5Toggle17.Required = False
	SDUI5Toggle17.Size = "none"
	SDUI5Toggle17.ToggleType = "right-label"
	SDUI5Toggle17.Validator = False
	SDUI5Toggle17.ValidatorHint = ""
	SDUI5Toggle17.Visible = True
	BANano.Await(SDUI5Toggle17.AddComponent)
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
	SDUI5Column5.SizeMd = "6"
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
	SDUI5CheckBoxGroup1.Initialize(Me, "SDUI5CheckBoxGroup1", "SDUI5CheckBoxGroup1")
	SDUI5CheckBoxGroup1.ParentID = "SDUI5Column5"
	SDUI5CheckBoxGroup1.BackgroundColor = "base-200"
	SDUI5CheckBoxGroup1.Border = True
	SDUI5CheckBoxGroup1.BorderColor = "base-300"
	SDUI5CheckBoxGroup1.CheckedColor = ""
	SDUI5CheckBoxGroup1.Color = "none"
	SDUI5CheckBoxGroup1.ColumnView = True
	SDUI5CheckBoxGroup1.Enabled = True
	SDUI5CheckBoxGroup1.GroupName = "anelex"
	SDUI5CheckBoxGroup1.Height = ""
	SDUI5CheckBoxGroup1.Hint = ""
	SDUI5CheckBoxGroup1.Label = "Toggle Group"
	SDUI5CheckBoxGroup1.LabelPosition = "left"
	SDUI5CheckBoxGroup1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBoxGroup1.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBoxGroup1.Position = "t=?; b=?; r=?; l=?"
	SDUI5CheckBoxGroup1.PositionStyle = "none"
	SDUI5CheckBoxGroup1.Attributes = ""
	SDUI5CheckBoxGroup1.Classes = ""
	SDUI5CheckBoxGroup1.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	SDUI5CheckBoxGroup1.Styles = ""
	SDUI5CheckBoxGroup1.RoundedBox = True
	SDUI5CheckBoxGroup1.Selected = ""
	SDUI5CheckBoxGroup1.Shadow = "none"
	SDUI5CheckBoxGroup1.Size = "none"
	SDUI5CheckBoxGroup1.TypeOf = "toggle"
	SDUI5CheckBoxGroup1.Visible = True
	SDUI5CheckBoxGroup1.Width = "full"
	BANano.Await(SDUI5CheckBoxGroup1.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignContent = "none"
	SDUI5Column8.AlignItems = "none"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.BackgroundColor = ""
	SDUI5Column8.CenterChildren = False
	SDUI5Column8.Enabled = True
	SDUI5Column8.Height = ""
	SDUI5Column8.JustifyContent = "none"
	SDUI5Column8.JustifyItems = "none"
	SDUI5Column8.JustifySelf = "none"
	SDUI5Column8.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.OffsetLg = ""
	SDUI5Column8.OffsetMd = ""
	SDUI5Column8.OffsetSm = ""
	SDUI5Column8.OffsetXl = ""
	SDUI5Column8.OffsetXxl = ""
	SDUI5Column8.Order = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.PlaceContent = "none"
	SDUI5Column8.PlaceItems = "none"
	SDUI5Column8.PlaceSelf = "none"
	SDUI5Column8.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column8.PositionStyle = "none"
	SDUI5Column8.Attributes = ""
	SDUI5Column8.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column8.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column8.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column8.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column8.Classes = ""
	SDUI5Column8.Styles = ""
	SDUI5Column8.Rounded = "none"
	SDUI5Column8.Shadow = "none"
	SDUI5Column8.Size = "12"
	SDUI5Column8.SizeLg = ""
	SDUI5Column8.SizeMd = "6"
	SDUI5Column8.SizeSm = ""
	SDUI5Column8.SizeXl = ""
	SDUI5Column8.SizeXxl = ""
	SDUI5Column8.Text = ""
	SDUI5Column8.TextAlign = "none"
	SDUI5Column8.TextColor = ""
	SDUI5Column8.Visible = True
	SDUI5Column8.Width = ""
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5CheckBoxGroup2.Initialize(Me, "SDUI5CheckBoxGroup2", "SDUI5CheckBoxGroup2")
	SDUI5CheckBoxGroup2.ParentID = "SDUI5Column8"
	SDUI5CheckBoxGroup2.BackgroundColor = "base-200"
	SDUI5CheckBoxGroup2.Border = True
	SDUI5CheckBoxGroup2.BorderColor = "base-300"
	SDUI5CheckBoxGroup2.CheckedColor = ""
	SDUI5CheckBoxGroup2.Color = "none"
	SDUI5CheckBoxGroup2.ColumnView = True
	SDUI5CheckBoxGroup2.Enabled = True
	SDUI5CheckBoxGroup2.GroupName = "aneley"
	SDUI5CheckBoxGroup2.Height = ""
	SDUI5CheckBoxGroup2.Hint = ""
	SDUI5CheckBoxGroup2.Label = "Toggle Group"
	SDUI5CheckBoxGroup2.LabelPosition = "right"
	SDUI5CheckBoxGroup2.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBoxGroup2.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBoxGroup2.Position = "t=?; b=?; r=?; l=?"
	SDUI5CheckBoxGroup2.PositionStyle = "none"
	SDUI5CheckBoxGroup2.Attributes = ""
	SDUI5CheckBoxGroup2.Classes = ""
	SDUI5CheckBoxGroup2.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	SDUI5CheckBoxGroup2.Styles = ""
	SDUI5CheckBoxGroup2.RoundedBox = True
	SDUI5CheckBoxGroup2.Selected = ""
	SDUI5CheckBoxGroup2.Shadow = "none"
	SDUI5CheckBoxGroup2.Size = "none"
	SDUI5CheckBoxGroup2.TypeOf = "toggle"
	SDUI5CheckBoxGroup2.Visible = True
	SDUI5CheckBoxGroup2.Width = "full"
	BANano.Await(SDUI5CheckBoxGroup2.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row1"
	SDUI5Column9.AlignContent = "none"
	SDUI5Column9.AlignItems = "none"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.BackgroundColor = ""
	SDUI5Column9.CenterChildren = False
	SDUI5Column9.Enabled = True
	SDUI5Column9.Height = ""
	SDUI5Column9.JustifyContent = "none"
	SDUI5Column9.JustifyItems = "none"
	SDUI5Column9.JustifySelf = "none"
	SDUI5Column9.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.OffsetLg = ""
	SDUI5Column9.OffsetMd = ""
	SDUI5Column9.OffsetSm = ""
	SDUI5Column9.OffsetXl = ""
	SDUI5Column9.OffsetXxl = ""
	SDUI5Column9.Order = ""
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.PlaceContent = "none"
	SDUI5Column9.PlaceItems = "none"
	SDUI5Column9.PlaceSelf = "none"
	SDUI5Column9.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column9.PositionStyle = "none"
	SDUI5Column9.Attributes = ""
	SDUI5Column9.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column9.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column9.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column9.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column9.Classes = ""
	SDUI5Column9.Styles = ""
	SDUI5Column9.Rounded = "none"
	SDUI5Column9.Shadow = "none"
	SDUI5Column9.Size = "12"
	SDUI5Column9.SizeLg = ""
	SDUI5Column9.SizeMd = "6"
	SDUI5Column9.SizeSm = ""
	SDUI5Column9.SizeXl = ""
	SDUI5Column9.SizeXxl = ""
	SDUI5Column9.Text = ""
	SDUI5Column9.TextAlign = "none"
	SDUI5Column9.TextColor = ""
	SDUI5Column9.Visible = True
	SDUI5Column9.Width = ""
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5CheckBoxGroup3.Initialize(Me, "SDUI5CheckBoxGroup3", "SDUI5CheckBoxGroup3")
	SDUI5CheckBoxGroup3.ParentID = "SDUI5Column9"
	SDUI5CheckBoxGroup3.BackgroundColor = "base-200"
	SDUI5CheckBoxGroup3.Border = True
	SDUI5CheckBoxGroup3.BorderColor = "base-300"
	SDUI5CheckBoxGroup3.CheckedColor = ""
	SDUI5CheckBoxGroup3.Color = "none"
	SDUI5CheckBoxGroup3.ColumnView = False
	SDUI5CheckBoxGroup3.Enabled = True
	SDUI5CheckBoxGroup3.GroupName = "anelea"
	SDUI5CheckBoxGroup3.Height = ""
	SDUI5CheckBoxGroup3.Hint = ""
	SDUI5CheckBoxGroup3.Label = "Toggle Group"
	SDUI5CheckBoxGroup3.LabelPosition = "left"
	SDUI5CheckBoxGroup3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBoxGroup3.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBoxGroup3.Position = "t=?; b=?; r=?; l=?"
	SDUI5CheckBoxGroup3.PositionStyle = "none"
	SDUI5CheckBoxGroup3.Attributes = ""
	SDUI5CheckBoxGroup3.Classes = ""
	SDUI5CheckBoxGroup3.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	SDUI5CheckBoxGroup3.Styles = ""
	SDUI5CheckBoxGroup3.RoundedBox = True
	SDUI5CheckBoxGroup3.Selected = ""
	SDUI5CheckBoxGroup3.Shadow = "none"
	SDUI5CheckBoxGroup3.Size = "none"
	SDUI5CheckBoxGroup3.TypeOf = "toggle"
	SDUI5CheckBoxGroup3.Visible = True
	SDUI5CheckBoxGroup3.Width = "full"
	BANano.Await(SDUI5CheckBoxGroup3.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row1"
	SDUI5Column10.AlignContent = "none"
	SDUI5Column10.AlignItems = "none"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.BackgroundColor = ""
	SDUI5Column10.CenterChildren = False
	SDUI5Column10.Enabled = True
	SDUI5Column10.Height = ""
	SDUI5Column10.JustifyContent = "none"
	SDUI5Column10.JustifyItems = "none"
	SDUI5Column10.JustifySelf = "none"
	SDUI5Column10.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.OffsetLg = ""
	SDUI5Column10.OffsetMd = ""
	SDUI5Column10.OffsetSm = ""
	SDUI5Column10.OffsetXl = ""
	SDUI5Column10.OffsetXxl = ""
	SDUI5Column10.Order = ""
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.PlaceContent = "none"
	SDUI5Column10.PlaceItems = "none"
	SDUI5Column10.PlaceSelf = "none"
	SDUI5Column10.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column10.PositionStyle = "none"
	SDUI5Column10.Attributes = ""
	SDUI5Column10.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column10.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column10.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column10.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column10.Classes = ""
	SDUI5Column10.Styles = ""
	SDUI5Column10.Rounded = "none"
	SDUI5Column10.Shadow = "none"
	SDUI5Column10.Size = "12"
	SDUI5Column10.SizeLg = ""
	SDUI5Column10.SizeMd = "6"
	SDUI5Column10.SizeSm = ""
	SDUI5Column10.SizeXl = ""
	SDUI5Column10.SizeXxl = ""
	SDUI5Column10.Text = ""
	SDUI5Column10.TextAlign = "none"
	SDUI5Column10.TextColor = ""
	SDUI5Column10.Visible = True
	SDUI5Column10.Width = ""
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5CheckBoxGroup4.Initialize(Me, "SDUI5CheckBoxGroup4", "SDUI5CheckBoxGroup4")
	SDUI5CheckBoxGroup4.ParentID = "SDUI5Column10"
	SDUI5CheckBoxGroup4.BackgroundColor = "base-200"
	SDUI5CheckBoxGroup4.Border = True
	SDUI5CheckBoxGroup4.BorderColor = "base-300"
	SDUI5CheckBoxGroup4.CheckedColor = ""
	SDUI5CheckBoxGroup4.Color = "none"
	SDUI5CheckBoxGroup4.ColumnView = False
	SDUI5CheckBoxGroup4.Enabled = True
	SDUI5CheckBoxGroup4.GroupName = "aneleb"
	SDUI5CheckBoxGroup4.Height = ""
	SDUI5CheckBoxGroup4.Hint = ""
	SDUI5CheckBoxGroup4.Label = "Toggle Group"
	SDUI5CheckBoxGroup4.LabelPosition = "left"
	SDUI5CheckBoxGroup4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBoxGroup4.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBoxGroup4.Position = "t=?; b=?; r=?; l=?"
	SDUI5CheckBoxGroup4.PositionStyle = "none"
	SDUI5CheckBoxGroup4.Attributes = ""
	SDUI5CheckBoxGroup4.Classes = ""
	SDUI5CheckBoxGroup4.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	SDUI5CheckBoxGroup4.Styles = ""
	SDUI5CheckBoxGroup4.RoundedBox = True
	SDUI5CheckBoxGroup4.Selected = ""
	SDUI5CheckBoxGroup4.Shadow = "lg"
	SDUI5CheckBoxGroup4.Size = "none"
	SDUI5CheckBoxGroup4.TypeOf = "toggle"
	SDUI5CheckBoxGroup4.Visible = True
	SDUI5CheckBoxGroup4.Width = "full"
	BANano.Await(SDUI5CheckBoxGroup4.AddComponent)
	pgIndex.UpdateTitle("SDUI5Toggle")
End Sub

Private Sub SDUI5Toggle2_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Toggle1_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Toggle17_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Toggle16_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

