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
	Private SDUI5TextArea1 As SDUI5TextArea		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5TextArea2 As SDUI5TextArea		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5TextArea3 As SDUI5TextArea		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5TextArea4 As SDUI5TextArea		'ignore
	Private SDUI5TextArea5 As SDUI5TextArea		'ignore
	Private SDUI5TextArea6 As SDUI5TextArea		'ignore
	Private SDUI5TextArea7 As SDUI5TextArea		'ignore
	Private SDUI5TextArea8 As SDUI5TextArea		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5TextArea9 As SDUI5TextArea		'ignore
	Private SDUI5TextArea10 As SDUI5TextArea		'ignore
	Private SDUI5TextArea11 As SDUI5TextArea		'ignore
	Private SDUI5TextArea12 As SDUI5TextArea		'ignore
	Private SDUI5TextArea13 As SDUI5TextArea		'ignore
	Private SDUI5TextArea14 As SDUI5TextArea		'ignore
	Private SDUI5TextArea15 As SDUI5TextArea		'ignore
	Private SDUI5TextArea16 As SDUI5TextArea		'ignore
	Private SDUI5TextArea17 As SDUI5TextArea		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5TextArea18 As SDUI5TextArea		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private txtArea As SDUI5TextArea		'ignore
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
	SDUI5TextArea1.Initialize(Me, "SDUI5TextArea1", "SDUI5TextArea1")
	SDUI5TextArea1.ParentID = "SDUI5Column1"
	SDUI5TextArea1.AppendColor = "none"
	SDUI5TextArea1.AppendIcon = ""
	SDUI5TextArea1.AppendIconColor = "none"
	SDUI5TextArea1.AppendImage = "./assets/search.svg"
	SDUI5TextArea1.AppendVisible = True
	SDUI5TextArea1.AutoSizeToContent = False
	SDUI5TextArea1.BackgroundColor = "base-200"
	SDUI5TextArea1.Border = True
	SDUI5TextArea1.BorderColor = "base-300"
	SDUI5TextArea1.Color = "none"
	SDUI5TextArea1.Enabled = True
	SDUI5TextArea1.Ghost = False
	SDUI5TextArea1.Height = ""
	SDUI5TextArea1.Hint = ""
	SDUI5TextArea1.InputType = "buttons"
	SDUI5TextArea1.Label = ""
	SDUI5TextArea1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea1.MaxHeight = ""
	SDUI5TextArea1.MaxWidth = ""
	SDUI5TextArea1.MinHeight = ""
	SDUI5TextArea1.MinWidth = ""
	SDUI5TextArea1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea1.Placeholder = "Bio"
	SDUI5TextArea1.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea1.PositionStyle = "none"
	SDUI5TextArea1.PrependColor = "none"
	SDUI5TextArea1.PrependIcon = ""
	SDUI5TextArea1.PrependIconColor = "none"
	SDUI5TextArea1.PrependImage = "./assets/search.svg"
	SDUI5TextArea1.PrependVisible = True
	SDUI5TextArea1.Attributes = ""
	SDUI5TextArea1.Classes = ""
	SDUI5TextArea1.Styles = ""
	SDUI5TextArea1.Required = False
	SDUI5TextArea1.RoundedBox = False
	SDUI5TextArea1.Shadow = "none"
	SDUI5TextArea1.Size = "none"
	SDUI5TextArea1.Validator = False
	SDUI5TextArea1.ValidatorHint = ""
	SDUI5TextArea1.Value = ""
	SDUI5TextArea1.Visible = True
	SDUI5TextArea1.Width = "full"
	BANano.Await(SDUI5TextArea1.AddComponent)
	'
	SDUI5TextArea2.Initialize(Me, "SDUI5TextArea2", "SDUI5TextArea2")
	SDUI5TextArea2.ParentID = "SDUI5Column2"
	SDUI5TextArea2.AppendColor = "none"
	SDUI5TextArea2.AppendIcon = ""
	SDUI5TextArea2.AppendIconColor = "none"
	SDUI5TextArea2.AppendImage = ""
	SDUI5TextArea2.AppendVisible = False
	SDUI5TextArea2.AutoSizeToContent = False
	SDUI5TextArea2.BackgroundColor = "base-200"
	SDUI5TextArea2.Border = True
	SDUI5TextArea2.BorderColor = "base-300"
	SDUI5TextArea2.Color = "none"
	SDUI5TextArea2.Enabled = True
	SDUI5TextArea2.Ghost = True
	SDUI5TextArea2.Height = ""
	SDUI5TextArea2.Hint = ""
	SDUI5TextArea2.InputType = "normal"
	SDUI5TextArea2.Label = ""
	SDUI5TextArea2.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea2.MaxHeight = ""
	SDUI5TextArea2.MaxWidth = ""
	SDUI5TextArea2.MinHeight = ""
	SDUI5TextArea2.MinWidth = ""
	SDUI5TextArea2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea2.Placeholder = "Ghost"
	SDUI5TextArea2.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea2.PositionStyle = "none"
	SDUI5TextArea2.PrependColor = "none"
	SDUI5TextArea2.PrependIcon = ""
	SDUI5TextArea2.PrependIconColor = "none"
	SDUI5TextArea2.PrependImage = ""
	SDUI5TextArea2.PrependVisible = False
	SDUI5TextArea2.Attributes = ""
	SDUI5TextArea2.Classes = ""
	SDUI5TextArea2.Styles = ""
	SDUI5TextArea2.Required = False
	SDUI5TextArea2.RoundedBox = False
	SDUI5TextArea2.Shadow = "none"
	SDUI5TextArea2.Size = "none"
	SDUI5TextArea2.Validator = False
	SDUI5TextArea2.ValidatorHint = ""
	SDUI5TextArea2.Value = ""
	SDUI5TextArea2.Visible = True
	SDUI5TextArea2.Width = "full"
	BANano.Await(SDUI5TextArea2.AddComponent)
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
	SDUI5TextArea3.Initialize(Me, "SDUI5TextArea3", "SDUI5TextArea3")
	SDUI5TextArea3.ParentID = "SDUI5Column3"
	SDUI5TextArea3.AppendColor = "none"
	SDUI5TextArea3.AppendIcon = ""
	SDUI5TextArea3.AppendIconColor = "none"
	SDUI5TextArea3.AppendImage = "./assets/search.svg"
	SDUI5TextArea3.AppendVisible = True
	SDUI5TextArea3.AutoSizeToContent = False
	SDUI5TextArea3.BackgroundColor = ""
	SDUI5TextArea3.Border = False
	SDUI5TextArea3.BorderColor = ""
	SDUI5TextArea3.Color = "none"
	SDUI5TextArea3.Enabled = True
	SDUI5TextArea3.Ghost = False
	SDUI5TextArea3.Height = "12"
	SDUI5TextArea3.Hint = "Optional"
	SDUI5TextArea3.InputType = "legend"
	SDUI5TextArea3.Label = "Your Bio"
	SDUI5TextArea3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea3.MaxHeight = ""
	SDUI5TextArea3.MaxWidth = ""
	SDUI5TextArea3.MinHeight = ""
	SDUI5TextArea3.MinWidth = ""
	SDUI5TextArea3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea3.Placeholder = "Bio"
	SDUI5TextArea3.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea3.PositionStyle = "none"
	SDUI5TextArea3.PrependColor = "none"
	SDUI5TextArea3.PrependIcon = ""
	SDUI5TextArea3.PrependIconColor = "none"
	SDUI5TextArea3.PrependImage = ""
	SDUI5TextArea3.PrependVisible = False
	SDUI5TextArea3.Attributes = ""
	SDUI5TextArea3.Classes = ""
	SDUI5TextArea3.Styles = ""
	SDUI5TextArea3.Required = True
	SDUI5TextArea3.RoundedBox = False
	SDUI5TextArea3.Shadow = "none"
	SDUI5TextArea3.Size = "none"
	SDUI5TextArea3.Validator = False
	SDUI5TextArea3.ValidatorHint = ""
	SDUI5TextArea3.Value = ""
	SDUI5TextArea3.Visible = True
	SDUI5TextArea3.Width = "full"
	BANano.Await(SDUI5TextArea3.AddComponent)
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
	SDUI5TextArea4.Initialize(Me, "SDUI5TextArea4", "SDUI5TextArea4")
	SDUI5TextArea4.ParentID = "SDUI5Column4"
	SDUI5TextArea4.AppendColor = "none"
	SDUI5TextArea4.AppendIcon = ""
	SDUI5TextArea4.AppendIconColor = "none"
	SDUI5TextArea4.AppendImage = ""
	SDUI5TextArea4.AppendVisible = False
	SDUI5TextArea4.AutoSizeToContent = False
	SDUI5TextArea4.BackgroundColor = "base-200"
	SDUI5TextArea4.Border = True
	SDUI5TextArea4.BorderColor = "base-300"
	SDUI5TextArea4.Color = "none"
	SDUI5TextArea4.Enabled = True
	SDUI5TextArea4.Ghost = False
	SDUI5TextArea4.Height = ""
	SDUI5TextArea4.Hint = ""
	SDUI5TextArea4.InputType = "normal"
	SDUI5TextArea4.Label = ""
	SDUI5TextArea4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea4.MaxHeight = ""
	SDUI5TextArea4.MaxWidth = ""
	SDUI5TextArea4.MinHeight = ""
	SDUI5TextArea4.MinWidth = ""
	SDUI5TextArea4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea4.Placeholder = "XSmall"
	SDUI5TextArea4.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea4.PositionStyle = "none"
	SDUI5TextArea4.PrependColor = "none"
	SDUI5TextArea4.PrependIcon = ""
	SDUI5TextArea4.PrependIconColor = "none"
	SDUI5TextArea4.PrependImage = ""
	SDUI5TextArea4.PrependVisible = False
	SDUI5TextArea4.Attributes = ""
	SDUI5TextArea4.Classes = ""
	SDUI5TextArea4.Styles = ""
	SDUI5TextArea4.Required = False
	SDUI5TextArea4.RoundedBox = False
	SDUI5TextArea4.Shadow = "none"
	SDUI5TextArea4.Size = "xs"
	SDUI5TextArea4.Validator = False
	SDUI5TextArea4.ValidatorHint = ""
	SDUI5TextArea4.Value = ""
	SDUI5TextArea4.Visible = True
	SDUI5TextArea4.Width = "full"
	BANano.Await(SDUI5TextArea4.AddComponent)
	'
	SDUI5TextArea5.Initialize(Me, "SDUI5TextArea5", "SDUI5TextArea5")
	SDUI5TextArea5.ParentID = "SDUI5Column4"
	SDUI5TextArea5.AppendColor = "none"
	SDUI5TextArea5.AppendIcon = ""
	SDUI5TextArea5.AppendIconColor = "none"
	SDUI5TextArea5.AppendImage = ""
	SDUI5TextArea5.AppendVisible = False
	SDUI5TextArea5.AutoSizeToContent = False
	SDUI5TextArea5.BackgroundColor = "base-200"
	SDUI5TextArea5.Border = True
	SDUI5TextArea5.BorderColor = "base-300"
	SDUI5TextArea5.Color = "none"
	SDUI5TextArea5.Enabled = True
	SDUI5TextArea5.Ghost = False
	SDUI5TextArea5.Height = ""
	SDUI5TextArea5.Hint = ""
	SDUI5TextArea5.InputType = "normal"
	SDUI5TextArea5.Label = ""
	SDUI5TextArea5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea5.MaxHeight = ""
	SDUI5TextArea5.MaxWidth = ""
	SDUI5TextArea5.MinHeight = ""
	SDUI5TextArea5.MinWidth = ""
	SDUI5TextArea5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea5.Placeholder = "Small"
	SDUI5TextArea5.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea5.PositionStyle = "none"
	SDUI5TextArea5.PrependColor = "none"
	SDUI5TextArea5.PrependIcon = ""
	SDUI5TextArea5.PrependIconColor = "none"
	SDUI5TextArea5.PrependImage = ""
	SDUI5TextArea5.PrependVisible = False
	SDUI5TextArea5.Attributes = ""
	SDUI5TextArea5.Classes = ""
	SDUI5TextArea5.Styles = ""
	SDUI5TextArea5.Required = False
	SDUI5TextArea5.RoundedBox = False
	SDUI5TextArea5.Shadow = "none"
	SDUI5TextArea5.Size = "sm"
	SDUI5TextArea5.Validator = False
	SDUI5TextArea5.ValidatorHint = ""
	SDUI5TextArea5.Value = ""
	SDUI5TextArea5.Visible = True
	SDUI5TextArea5.Width = "full"
	BANano.Await(SDUI5TextArea5.AddComponent)
	'
	SDUI5TextArea6.Initialize(Me, "SDUI5TextArea6", "SDUI5TextArea6")
	SDUI5TextArea6.ParentID = "SDUI5Column4"
	SDUI5TextArea6.AppendColor = "none"
	SDUI5TextArea6.AppendIcon = ""
	SDUI5TextArea6.AppendIconColor = "none"
	SDUI5TextArea6.AppendImage = ""
	SDUI5TextArea6.AppendVisible = False
	SDUI5TextArea6.AutoSizeToContent = False
	SDUI5TextArea6.BackgroundColor = "base-200"
	SDUI5TextArea6.Border = True
	SDUI5TextArea6.BorderColor = "base-300"
	SDUI5TextArea6.Color = "none"
	SDUI5TextArea6.Enabled = True
	SDUI5TextArea6.Ghost = False
	SDUI5TextArea6.Height = ""
	SDUI5TextArea6.Hint = ""
	SDUI5TextArea6.InputType = "normal"
	SDUI5TextArea6.Label = ""
	SDUI5TextArea6.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea6.MaxHeight = ""
	SDUI5TextArea6.MaxWidth = ""
	SDUI5TextArea6.MinHeight = ""
	SDUI5TextArea6.MinWidth = ""
	SDUI5TextArea6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea6.Placeholder = "Medium"
	SDUI5TextArea6.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea6.PositionStyle = "none"
	SDUI5TextArea6.PrependColor = "none"
	SDUI5TextArea6.PrependIcon = ""
	SDUI5TextArea6.PrependIconColor = "none"
	SDUI5TextArea6.PrependImage = ""
	SDUI5TextArea6.PrependVisible = False
	SDUI5TextArea6.Attributes = ""
	SDUI5TextArea6.Classes = ""
	SDUI5TextArea6.Styles = ""
	SDUI5TextArea6.Required = True
	SDUI5TextArea6.RoundedBox = False
	SDUI5TextArea6.Shadow = "none"
	SDUI5TextArea6.Size = "md"
	SDUI5TextArea6.Validator = False
	SDUI5TextArea6.ValidatorHint = ""
	SDUI5TextArea6.Value = ""
	SDUI5TextArea6.Visible = True
	SDUI5TextArea6.Width = "full"
	BANano.Await(SDUI5TextArea6.AddComponent)
	'
	SDUI5TextArea7.Initialize(Me, "SDUI5TextArea7", "SDUI5TextArea7")
	SDUI5TextArea7.ParentID = "SDUI5Column4"
	SDUI5TextArea7.AppendColor = "none"
	SDUI5TextArea7.AppendIcon = ""
	SDUI5TextArea7.AppendIconColor = "none"
	SDUI5TextArea7.AppendImage = ""
	SDUI5TextArea7.AppendVisible = False
	SDUI5TextArea7.AutoSizeToContent = False
	SDUI5TextArea7.BackgroundColor = "base-200"
	SDUI5TextArea7.Border = True
	SDUI5TextArea7.BorderColor = "base-300"
	SDUI5TextArea7.Color = "none"
	SDUI5TextArea7.Enabled = True
	SDUI5TextArea7.Ghost = False
	SDUI5TextArea7.Height = ""
	SDUI5TextArea7.Hint = ""
	SDUI5TextArea7.InputType = "normal"
	SDUI5TextArea7.Label = ""
	SDUI5TextArea7.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea7.MaxHeight = ""
	SDUI5TextArea7.MaxWidth = ""
	SDUI5TextArea7.MinHeight = ""
	SDUI5TextArea7.MinWidth = ""
	SDUI5TextArea7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea7.Placeholder = "Large"
	SDUI5TextArea7.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea7.PositionStyle = "none"
	SDUI5TextArea7.PrependColor = "none"
	SDUI5TextArea7.PrependIcon = ""
	SDUI5TextArea7.PrependIconColor = "none"
	SDUI5TextArea7.PrependImage = ""
	SDUI5TextArea7.PrependVisible = False
	SDUI5TextArea7.Attributes = ""
	SDUI5TextArea7.Classes = ""
	SDUI5TextArea7.Styles = ""
	SDUI5TextArea7.Required = False
	SDUI5TextArea7.RoundedBox = False
	SDUI5TextArea7.Shadow = "none"
	SDUI5TextArea7.Size = "lg"
	SDUI5TextArea7.Validator = False
	SDUI5TextArea7.ValidatorHint = ""
	SDUI5TextArea7.Value = ""
	SDUI5TextArea7.Visible = True
	SDUI5TextArea7.Width = "full"
	BANano.Await(SDUI5TextArea7.AddComponent)
	'
	SDUI5TextArea8.Initialize(Me, "SDUI5TextArea8", "SDUI5TextArea8")
	SDUI5TextArea8.ParentID = "SDUI5Column4"
	SDUI5TextArea8.AppendColor = "none"
	SDUI5TextArea8.AppendIcon = ""
	SDUI5TextArea8.AppendIconColor = "none"
	SDUI5TextArea8.AppendImage = ""
	SDUI5TextArea8.AppendVisible = False
	SDUI5TextArea8.AutoSizeToContent = False
	SDUI5TextArea8.BackgroundColor = "base-200"
	SDUI5TextArea8.Border = True
	SDUI5TextArea8.BorderColor = "base-300"
	SDUI5TextArea8.Color = "none"
	SDUI5TextArea8.Enabled = True
	SDUI5TextArea8.Ghost = False
	SDUI5TextArea8.Height = ""
	SDUI5TextArea8.Hint = ""
	SDUI5TextArea8.InputType = "normal"
	SDUI5TextArea8.Label = ""
	SDUI5TextArea8.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea8.MaxHeight = ""
	SDUI5TextArea8.MaxWidth = ""
	SDUI5TextArea8.MinHeight = ""
	SDUI5TextArea8.MinWidth = ""
	SDUI5TextArea8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea8.Placeholder = "XLarge"
	SDUI5TextArea8.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea8.PositionStyle = "none"
	SDUI5TextArea8.PrependColor = "none"
	SDUI5TextArea8.PrependIcon = ""
	SDUI5TextArea8.PrependIconColor = "none"
	SDUI5TextArea8.PrependImage = ""
	SDUI5TextArea8.PrependVisible = False
	SDUI5TextArea8.Attributes = ""
	SDUI5TextArea8.Classes = ""
	SDUI5TextArea8.Styles = ""
	SDUI5TextArea8.Required = False
	SDUI5TextArea8.RoundedBox = False
	SDUI5TextArea8.Shadow = "none"
	SDUI5TextArea8.Size = "xl"
	SDUI5TextArea8.Validator = False
	SDUI5TextArea8.ValidatorHint = ""
	SDUI5TextArea8.Value = ""
	SDUI5TextArea8.Visible = True
	SDUI5TextArea8.Width = "full"
	BANano.Await(SDUI5TextArea8.AddComponent)
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
	SDUI5TextArea9.Initialize(Me, "SDUI5TextArea9", "SDUI5TextArea9")
	SDUI5TextArea9.ParentID = "SDUI5Column5"
	SDUI5TextArea9.AppendColor = "none"
	SDUI5TextArea9.AppendIcon = ""
	SDUI5TextArea9.AppendIconColor = "none"
	SDUI5TextArea9.AppendImage = ""
	SDUI5TextArea9.AppendVisible = False
	SDUI5TextArea9.AutoSizeToContent = False
	SDUI5TextArea9.BackgroundColor = "base-200"
	SDUI5TextArea9.Border = True
	SDUI5TextArea9.BorderColor = "base-300"
	SDUI5TextArea9.Color = "accent"
	SDUI5TextArea9.Enabled = True
	SDUI5TextArea9.Ghost = False
	SDUI5TextArea9.Height = ""
	SDUI5TextArea9.Hint = ""
	SDUI5TextArea9.InputType = "normal"
	SDUI5TextArea9.Label = ""
	SDUI5TextArea9.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea9.MaxHeight = ""
	SDUI5TextArea9.MaxWidth = ""
	SDUI5TextArea9.MinHeight = ""
	SDUI5TextArea9.MinWidth = ""
	SDUI5TextArea9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea9.Placeholder = "Bio"
	SDUI5TextArea9.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea9.PositionStyle = "none"
	SDUI5TextArea9.PrependColor = "none"
	SDUI5TextArea9.PrependIcon = ""
	SDUI5TextArea9.PrependIconColor = "none"
	SDUI5TextArea9.PrependImage = ""
	SDUI5TextArea9.PrependVisible = False
	SDUI5TextArea9.Attributes = ""
	SDUI5TextArea9.Classes = ""
	SDUI5TextArea9.Styles = ""
	SDUI5TextArea9.Required = False
	SDUI5TextArea9.RoundedBox = False
	SDUI5TextArea9.Shadow = "none"
	SDUI5TextArea9.Size = "none"
	SDUI5TextArea9.Validator = False
	SDUI5TextArea9.ValidatorHint = ""
	SDUI5TextArea9.Value = ""
	SDUI5TextArea9.Visible = True
	SDUI5TextArea9.Width = "full"
	BANano.Await(SDUI5TextArea9.AddComponent)
	'
	SDUI5TextArea10.Initialize(Me, "SDUI5TextArea10", "SDUI5TextArea10")
	SDUI5TextArea10.ParentID = "SDUI5Column5"
	SDUI5TextArea10.AppendColor = "none"
	SDUI5TextArea10.AppendIcon = ""
	SDUI5TextArea10.AppendIconColor = "none"
	SDUI5TextArea10.AppendImage = ""
	SDUI5TextArea10.AppendVisible = False
	SDUI5TextArea10.AutoSizeToContent = False
	SDUI5TextArea10.BackgroundColor = "base-200"
	SDUI5TextArea10.Border = True
	SDUI5TextArea10.BorderColor = "base-300"
	SDUI5TextArea10.Color = "error"
	SDUI5TextArea10.Enabled = True
	SDUI5TextArea10.Ghost = False
	SDUI5TextArea10.Height = ""
	SDUI5TextArea10.Hint = ""
	SDUI5TextArea10.InputType = "normal"
	SDUI5TextArea10.Label = ""
	SDUI5TextArea10.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea10.MaxHeight = ""
	SDUI5TextArea10.MaxWidth = ""
	SDUI5TextArea10.MinHeight = ""
	SDUI5TextArea10.MinWidth = ""
	SDUI5TextArea10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea10.Placeholder = "Bio"
	SDUI5TextArea10.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea10.PositionStyle = "none"
	SDUI5TextArea10.PrependColor = "none"
	SDUI5TextArea10.PrependIcon = ""
	SDUI5TextArea10.PrependIconColor = "none"
	SDUI5TextArea10.PrependImage = ""
	SDUI5TextArea10.PrependVisible = False
	SDUI5TextArea10.Attributes = ""
	SDUI5TextArea10.Classes = ""
	SDUI5TextArea10.Styles = ""
	SDUI5TextArea10.Required = False
	SDUI5TextArea10.RoundedBox = False
	SDUI5TextArea10.Shadow = "none"
	SDUI5TextArea10.Size = "none"
	SDUI5TextArea10.Validator = False
	SDUI5TextArea10.ValidatorHint = ""
	SDUI5TextArea10.Value = ""
	SDUI5TextArea10.Visible = True
	SDUI5TextArea10.Width = "full"
	BANano.Await(SDUI5TextArea10.AddComponent)
	'
	SDUI5TextArea11.Initialize(Me, "SDUI5TextArea11", "SDUI5TextArea11")
	SDUI5TextArea11.ParentID = "SDUI5Column5"
	SDUI5TextArea11.AppendColor = "none"
	SDUI5TextArea11.AppendIcon = ""
	SDUI5TextArea11.AppendIconColor = "none"
	SDUI5TextArea11.AppendImage = ""
	SDUI5TextArea11.AppendVisible = False
	SDUI5TextArea11.AutoSizeToContent = False
	SDUI5TextArea11.BackgroundColor = "base-200"
	SDUI5TextArea11.Border = True
	SDUI5TextArea11.BorderColor = "base-300"
	SDUI5TextArea11.Color = "info"
	SDUI5TextArea11.Enabled = True
	SDUI5TextArea11.Ghost = False
	SDUI5TextArea11.Height = ""
	SDUI5TextArea11.Hint = ""
	SDUI5TextArea11.InputType = "normal"
	SDUI5TextArea11.Label = ""
	SDUI5TextArea11.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea11.MaxHeight = ""
	SDUI5TextArea11.MaxWidth = ""
	SDUI5TextArea11.MinHeight = ""
	SDUI5TextArea11.MinWidth = ""
	SDUI5TextArea11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea11.Placeholder = "Bio"
	SDUI5TextArea11.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea11.PositionStyle = "none"
	SDUI5TextArea11.PrependColor = "none"
	SDUI5TextArea11.PrependIcon = ""
	SDUI5TextArea11.PrependIconColor = "none"
	SDUI5TextArea11.PrependImage = ""
	SDUI5TextArea11.PrependVisible = False
	SDUI5TextArea11.Attributes = ""
	SDUI5TextArea11.Classes = ""
	SDUI5TextArea11.Styles = ""
	SDUI5TextArea11.Required = False
	SDUI5TextArea11.RoundedBox = False
	SDUI5TextArea11.Shadow = "none"
	SDUI5TextArea11.Size = "none"
	SDUI5TextArea11.Validator = False
	SDUI5TextArea11.ValidatorHint = ""
	SDUI5TextArea11.Value = ""
	SDUI5TextArea11.Visible = True
	SDUI5TextArea11.Width = "full"
	BANano.Await(SDUI5TextArea11.AddComponent)
	'
	SDUI5TextArea12.Initialize(Me, "SDUI5TextArea12", "SDUI5TextArea12")
	SDUI5TextArea12.ParentID = "SDUI5Column5"
	SDUI5TextArea12.AppendColor = "none"
	SDUI5TextArea12.AppendIcon = ""
	SDUI5TextArea12.AppendIconColor = "none"
	SDUI5TextArea12.AppendImage = ""
	SDUI5TextArea12.AppendVisible = False
	SDUI5TextArea12.AutoSizeToContent = False
	SDUI5TextArea12.BackgroundColor = "base-200"
	SDUI5TextArea12.Border = True
	SDUI5TextArea12.BorderColor = "base-300"
	SDUI5TextArea12.Color = "neutral"
	SDUI5TextArea12.Enabled = True
	SDUI5TextArea12.Ghost = False
	SDUI5TextArea12.Height = ""
	SDUI5TextArea12.Hint = ""
	SDUI5TextArea12.InputType = "normal"
	SDUI5TextArea12.Label = ""
	SDUI5TextArea12.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea12.MaxHeight = ""
	SDUI5TextArea12.MaxWidth = ""
	SDUI5TextArea12.MinHeight = ""
	SDUI5TextArea12.MinWidth = ""
	SDUI5TextArea12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea12.Placeholder = "Bio"
	SDUI5TextArea12.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea12.PositionStyle = "none"
	SDUI5TextArea12.PrependColor = "none"
	SDUI5TextArea12.PrependIcon = ""
	SDUI5TextArea12.PrependIconColor = "none"
	SDUI5TextArea12.PrependImage = ""
	SDUI5TextArea12.PrependVisible = False
	SDUI5TextArea12.Attributes = ""
	SDUI5TextArea12.Classes = ""
	SDUI5TextArea12.Styles = ""
	SDUI5TextArea12.Required = False
	SDUI5TextArea12.RoundedBox = False
	SDUI5TextArea12.Shadow = "none"
	SDUI5TextArea12.Size = "none"
	SDUI5TextArea12.Validator = False
	SDUI5TextArea12.ValidatorHint = ""
	SDUI5TextArea12.Value = ""
	SDUI5TextArea12.Visible = True
	SDUI5TextArea12.Width = "full"
	BANano.Await(SDUI5TextArea12.AddComponent)
	'
	SDUI5TextArea13.Initialize(Me, "SDUI5TextArea13", "SDUI5TextArea13")
	SDUI5TextArea13.ParentID = "SDUI5Column5"
	SDUI5TextArea13.AppendColor = "none"
	SDUI5TextArea13.AppendIcon = ""
	SDUI5TextArea13.AppendIconColor = "none"
	SDUI5TextArea13.AppendImage = ""
	SDUI5TextArea13.AppendVisible = False
	SDUI5TextArea13.AutoSizeToContent = False
	SDUI5TextArea13.BackgroundColor = "base-200"
	SDUI5TextArea13.Border = True
	SDUI5TextArea13.BorderColor = "base-300"
	SDUI5TextArea13.Color = "primary"
	SDUI5TextArea13.Enabled = True
	SDUI5TextArea13.Ghost = False
	SDUI5TextArea13.Height = ""
	SDUI5TextArea13.Hint = ""
	SDUI5TextArea13.InputType = "normal"
	SDUI5TextArea13.Label = ""
	SDUI5TextArea13.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea13.MaxHeight = ""
	SDUI5TextArea13.MaxWidth = ""
	SDUI5TextArea13.MinHeight = ""
	SDUI5TextArea13.MinWidth = ""
	SDUI5TextArea13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea13.Placeholder = "Bio"
	SDUI5TextArea13.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea13.PositionStyle = "none"
	SDUI5TextArea13.PrependColor = "none"
	SDUI5TextArea13.PrependIcon = ""
	SDUI5TextArea13.PrependIconColor = "none"
	SDUI5TextArea13.PrependImage = ""
	SDUI5TextArea13.PrependVisible = False
	SDUI5TextArea13.Attributes = ""
	SDUI5TextArea13.Classes = ""
	SDUI5TextArea13.Styles = ""
	SDUI5TextArea13.Required = False
	SDUI5TextArea13.RoundedBox = False
	SDUI5TextArea13.Shadow = "none"
	SDUI5TextArea13.Size = "none"
	SDUI5TextArea13.Validator = False
	SDUI5TextArea13.ValidatorHint = ""
	SDUI5TextArea13.Value = ""
	SDUI5TextArea13.Visible = True
	SDUI5TextArea13.Width = "full"
	BANano.Await(SDUI5TextArea13.AddComponent)
	'
	SDUI5TextArea14.Initialize(Me, "SDUI5TextArea14", "SDUI5TextArea14")
	SDUI5TextArea14.ParentID = "SDUI5Column5"
	SDUI5TextArea14.AppendColor = "none"
	SDUI5TextArea14.AppendIcon = ""
	SDUI5TextArea14.AppendIconColor = "none"
	SDUI5TextArea14.AppendImage = ""
	SDUI5TextArea14.AppendVisible = False
	SDUI5TextArea14.AutoSizeToContent = False
	SDUI5TextArea14.BackgroundColor = "base-200"
	SDUI5TextArea14.Border = True
	SDUI5TextArea14.BorderColor = "base-300"
	SDUI5TextArea14.Color = "secondary"
	SDUI5TextArea14.Enabled = True
	SDUI5TextArea14.Ghost = False
	SDUI5TextArea14.Height = ""
	SDUI5TextArea14.Hint = ""
	SDUI5TextArea14.InputType = "normal"
	SDUI5TextArea14.Label = ""
	SDUI5TextArea14.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea14.MaxHeight = ""
	SDUI5TextArea14.MaxWidth = ""
	SDUI5TextArea14.MinHeight = ""
	SDUI5TextArea14.MinWidth = ""
	SDUI5TextArea14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea14.Placeholder = "Bio"
	SDUI5TextArea14.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea14.PositionStyle = "none"
	SDUI5TextArea14.PrependColor = "none"
	SDUI5TextArea14.PrependIcon = ""
	SDUI5TextArea14.PrependIconColor = "none"
	SDUI5TextArea14.PrependImage = ""
	SDUI5TextArea14.PrependVisible = False
	SDUI5TextArea14.Attributes = ""
	SDUI5TextArea14.Classes = ""
	SDUI5TextArea14.Styles = ""
	SDUI5TextArea14.Required = False
	SDUI5TextArea14.RoundedBox = False
	SDUI5TextArea14.Shadow = "none"
	SDUI5TextArea14.Size = "none"
	SDUI5TextArea14.Validator = False
	SDUI5TextArea14.ValidatorHint = ""
	SDUI5TextArea14.Value = ""
	SDUI5TextArea14.Visible = True
	SDUI5TextArea14.Width = "full"
	BANano.Await(SDUI5TextArea14.AddComponent)
	'
	SDUI5TextArea15.Initialize(Me, "SDUI5TextArea15", "SDUI5TextArea15")
	SDUI5TextArea15.ParentID = "SDUI5Column5"
	SDUI5TextArea15.AppendColor = "none"
	SDUI5TextArea15.AppendIcon = ""
	SDUI5TextArea15.AppendIconColor = "none"
	SDUI5TextArea15.AppendImage = ""
	SDUI5TextArea15.AppendVisible = False
	SDUI5TextArea15.AutoSizeToContent = False
	SDUI5TextArea15.BackgroundColor = "base-200"
	SDUI5TextArea15.Border = True
	SDUI5TextArea15.BorderColor = "base-300"
	SDUI5TextArea15.Color = "success"
	SDUI5TextArea15.Enabled = True
	SDUI5TextArea15.Ghost = False
	SDUI5TextArea15.Height = ""
	SDUI5TextArea15.Hint = ""
	SDUI5TextArea15.InputType = "normal"
	SDUI5TextArea15.Label = ""
	SDUI5TextArea15.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea15.MaxHeight = ""
	SDUI5TextArea15.MaxWidth = ""
	SDUI5TextArea15.MinHeight = ""
	SDUI5TextArea15.MinWidth = ""
	SDUI5TextArea15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea15.Placeholder = "Bio"
	SDUI5TextArea15.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea15.PositionStyle = "none"
	SDUI5TextArea15.PrependColor = "none"
	SDUI5TextArea15.PrependIcon = ""
	SDUI5TextArea15.PrependIconColor = "none"
	SDUI5TextArea15.PrependImage = ""
	SDUI5TextArea15.PrependVisible = False
	SDUI5TextArea15.Attributes = ""
	SDUI5TextArea15.Classes = ""
	SDUI5TextArea15.Styles = ""
	SDUI5TextArea15.Required = False
	SDUI5TextArea15.RoundedBox = False
	SDUI5TextArea15.Shadow = "none"
	SDUI5TextArea15.Size = "none"
	SDUI5TextArea15.Validator = False
	SDUI5TextArea15.ValidatorHint = ""
	SDUI5TextArea15.Value = ""
	SDUI5TextArea15.Visible = True
	SDUI5TextArea15.Width = "full"
	BANano.Await(SDUI5TextArea15.AddComponent)
	'
	SDUI5TextArea16.Initialize(Me, "SDUI5TextArea16", "SDUI5TextArea16")
	SDUI5TextArea16.ParentID = "SDUI5Column5"
	SDUI5TextArea16.AppendColor = "none"
	SDUI5TextArea16.AppendIcon = ""
	SDUI5TextArea16.AppendIconColor = "none"
	SDUI5TextArea16.AppendImage = ""
	SDUI5TextArea16.AppendVisible = False
	SDUI5TextArea16.AutoSizeToContent = False
	SDUI5TextArea16.BackgroundColor = "base-200"
	SDUI5TextArea16.Border = True
	SDUI5TextArea16.BorderColor = "base-300"
	SDUI5TextArea16.Color = "warning"
	SDUI5TextArea16.Enabled = True
	SDUI5TextArea16.Ghost = False
	SDUI5TextArea16.Height = ""
	SDUI5TextArea16.Hint = ""
	SDUI5TextArea16.InputType = "normal"
	SDUI5TextArea16.Label = ""
	SDUI5TextArea16.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea16.MaxHeight = ""
	SDUI5TextArea16.MaxWidth = ""
	SDUI5TextArea16.MinHeight = ""
	SDUI5TextArea16.MinWidth = ""
	SDUI5TextArea16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea16.Placeholder = "Bio"
	SDUI5TextArea16.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea16.PositionStyle = "none"
	SDUI5TextArea16.PrependColor = "none"
	SDUI5TextArea16.PrependIcon = ""
	SDUI5TextArea16.PrependIconColor = "none"
	SDUI5TextArea16.PrependImage = ""
	SDUI5TextArea16.PrependVisible = False
	SDUI5TextArea16.Attributes = ""
	SDUI5TextArea16.Classes = ""
	SDUI5TextArea16.Styles = ""
	SDUI5TextArea16.Required = False
	SDUI5TextArea16.RoundedBox = False
	SDUI5TextArea16.Shadow = "none"
	SDUI5TextArea16.Size = "none"
	SDUI5TextArea16.Validator = False
	SDUI5TextArea16.ValidatorHint = ""
	SDUI5TextArea16.Value = ""
	SDUI5TextArea16.Visible = True
	SDUI5TextArea16.Width = "full"
	BANano.Await(SDUI5TextArea16.AddComponent)
	'
	SDUI5TextArea17.Initialize(Me, "SDUI5TextArea17", "SDUI5TextArea17")
	SDUI5TextArea17.ParentID = "SDUI5Column4"
	SDUI5TextArea17.AppendColor = "none"
	SDUI5TextArea17.AppendIcon = ""
	SDUI5TextArea17.AppendIconColor = "none"
	SDUI5TextArea17.AppendImage = ""
	SDUI5TextArea17.AppendVisible = False
	SDUI5TextArea17.AutoSizeToContent = False
	SDUI5TextArea17.BackgroundColor = "base-200"
	SDUI5TextArea17.Border = True
	SDUI5TextArea17.BorderColor = "base-300"
	SDUI5TextArea17.Color = "none"
	SDUI5TextArea17.Enabled = True
	SDUI5TextArea17.Ghost = False
	SDUI5TextArea17.Height = ""
	SDUI5TextArea17.Hint = ""
	SDUI5TextArea17.InputType = "normal"
	SDUI5TextArea17.Label = ""
	SDUI5TextArea17.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5TextArea17.MaxHeight = ""
	SDUI5TextArea17.MaxWidth = ""
	SDUI5TextArea17.MinHeight = ""
	SDUI5TextArea17.MinWidth = ""
	SDUI5TextArea17.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea17.Placeholder = "Disabled"
	SDUI5TextArea17.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea17.PositionStyle = "none"
	SDUI5TextArea17.PrependColor = "none"
	SDUI5TextArea17.PrependIcon = ""
	SDUI5TextArea17.PrependIconColor = "none"
	SDUI5TextArea17.PrependImage = ""
	SDUI5TextArea17.PrependVisible = False
	SDUI5TextArea17.Attributes = ""
	SDUI5TextArea17.Classes = ""
	SDUI5TextArea17.Styles = ""
	SDUI5TextArea17.Required = False
	SDUI5TextArea17.RoundedBox = False
	SDUI5TextArea17.Shadow = "none"
	SDUI5TextArea17.Size = "none"
	SDUI5TextArea17.Validator = False
	SDUI5TextArea17.ValidatorHint = ""
	SDUI5TextArea17.Value = ""
	SDUI5TextArea17.Visible = True
	SDUI5TextArea17.Width = "full"
	BANano.Await(SDUI5TextArea17.AddComponent)
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
	SDUI5TextArea18.Initialize(Me, "SDUI5TextArea18", "SDUI5TextArea18")
	SDUI5TextArea18.ParentID = "SDUI5Column6"
	SDUI5TextArea18.AppendColor = "none"
	SDUI5TextArea18.AppendIcon = ""
	SDUI5TextArea18.AppendIconColor = "none"
	SDUI5TextArea18.AppendImage = "./assets/search.svg"
	SDUI5TextArea18.AppendVisible = True
	SDUI5TextArea18.AutoSizeToContent = False
	SDUI5TextArea18.BackgroundColor = "base-200"
	SDUI5TextArea18.Border = True
	SDUI5TextArea18.BorderColor = "base-300"
	SDUI5TextArea18.Color = "none"
	SDUI5TextArea18.Enabled = True
	SDUI5TextArea18.Ghost = False
	SDUI5TextArea18.Height = ""
	SDUI5TextArea18.Hint = ""
	SDUI5TextArea18.InputType = "buttons-floating"
	SDUI5TextArea18.Label = "Biography"
	SDUI5TextArea18.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea18.MaxHeight = ""
	SDUI5TextArea18.MaxWidth = ""
	SDUI5TextArea18.MinHeight = ""
	SDUI5TextArea18.MinWidth = ""
	SDUI5TextArea18.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5TextArea18.Placeholder = "Bio"
	SDUI5TextArea18.Position = "t=?; b=?; r=?; l=?"
	SDUI5TextArea18.PositionStyle = "none"
	SDUI5TextArea18.PrependColor = "none"
	SDUI5TextArea18.PrependIcon = ""
	SDUI5TextArea18.PrependIconColor = "none"
	SDUI5TextArea18.PrependImage = "./assets/search.svg"
	SDUI5TextArea18.PrependVisible = True
	SDUI5TextArea18.Attributes = ""
	SDUI5TextArea18.Classes = ""
	SDUI5TextArea18.Styles = ""
	SDUI5TextArea18.Required = True
	SDUI5TextArea18.RoundedBox = False
	SDUI5TextArea18.Shadow = "none"
	SDUI5TextArea18.Size = "none"
	SDUI5TextArea18.Validator = False
	SDUI5TextArea18.ValidatorHint = ""
	SDUI5TextArea18.Value = ""
	SDUI5TextArea18.Visible = True
	SDUI5TextArea18.Width = "full"
	BANano.Await(SDUI5TextArea18.AddComponent)
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
	txtArea.Initialize(Me, "txtArea", "txtArea")
	txtArea.ParentID = "SDUI5Column7"
	txtArea.AppendColor = "none"
	txtArea.AppendIcon = "./assets/music-solid.svg"
	txtArea.AppendIconColor = "none"
	txtArea.AppendImage = ""
	txtArea.AppendVisible = True
	txtArea.AutoSizeToContent = False
	txtArea.BackgroundColor = "base-200"
	txtArea.Border = True
	txtArea.BorderColor = "base-300"
	txtArea.Color = "none"
	txtArea.Enabled = True
	txtArea.Ghost = False
	txtArea.Height = "12"
	txtArea.Hint = ""
	txtArea.InputType = "legend"
	txtArea.Label = "Fieldset Area"
	txtArea.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	txtArea.MaxHeight = ""
	txtArea.MaxWidth = ""
	txtArea.MinHeight = ""
	txtArea.MinWidth = ""
	txtArea.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtArea.Placeholder = ""
	txtArea.Position = "t=?; b=?; r=?; l=?"
	txtArea.PositionStyle = "none"
	txtArea.PrependColor = "none"
	txtArea.PrependIcon = "./assets/user-solid.svg"
	txtArea.PrependIconColor = "none"
	txtArea.PrependImage = ""
	txtArea.PrependVisible = True
	txtArea.Attributes = ""
	txtArea.Classes = ""
	txtArea.Styles = ""
	txtArea.Required = True
	txtArea.RoundedBox = True
	txtArea.Shadow = "lg"
	txtArea.Size = "none"
	txtArea.Validator = False
	txtArea.ValidatorHint = ""
	txtArea.Value = ""
	txtArea.Visible = True
	txtArea.Width = "full"
	BANano.Await(txtArea.AddComponent)
	pgIndex.UpdateTitle("SDUI5TextArea")
End Sub

Private Sub SDUI5TextArea1_Change (Value As String)
	Log("SDUI5TextArea1_Change...")
	Log(Value)
End Sub

Private Sub SDUI5TextArea1_Append (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Append")
End Sub

Private Sub SDUI5TextArea1_Prepend (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Prepend")
End Sub

Private Sub SDUI5TextArea1_Input (Value As String)
	Log("SDUI5TextArea1_Input...")
	Log(Value)
End Sub

