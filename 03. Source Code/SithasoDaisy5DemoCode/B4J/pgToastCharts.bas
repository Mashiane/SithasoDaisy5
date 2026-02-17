B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private acc1 As SDUI5Accordion			'ignore
	Private chart1 As SDUI5ToastChart		'ignore
	Private chart2 As SDUI5ToastChart		'ignore
	Private chart3 As SDUI5ToastChart		'ignore
	Private chart4 As SDUI5ToastChart		'ignore
	Private chart5 As SDUI5ToastChart		'ignore
	Private chart6 As SDUI5ToastChart		'ignore
	Private chart7 As SDUI5ToastChart		'ignore
	Private chart8 As SDUI5ToastChart		'ignore
	Private chart9 As SDUI5ToastChart		'ignore
	Private chart10 As SDUI5ToastChart		'ignore
	Private chart11 As SDUI5ToastChart		'ignore
	Private chart12 As SDUI5ToastChart		'ignore
	Private chart13 As SDUI5ToastChart		'ignore
	Private chart14 As SDUI5ToastChart		'ignore
	Private chart15 As SDUI5ToastChart		'ignore
	Private chart16 As SDUI5ToastChart		'ignore
	Private chart17 As SDUI5ToastChart		'ignore
	Private chart18 As SDUI5ToastChart		'ignore
	Private chart19 As SDUI5ToastChart		'ignore
	Private chart20 As SDUI5ToastChart		'ignore
	Private chart21 As SDUI5ToastChart		'ignore
	Private chart22 As SDUI5ToastChart		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5Column13 As SDUI5Column		'ignore
	Private SDUI5Column14 As SDUI5Column		'ignore
	Private SDUI5Column15 As SDUI5Column		'ignore
	Private SDUI5Column16 As SDUI5Column		'ignore
	Private SDUI5Column17 As SDUI5Column		'ignore
	Private SDUI5Column18 As SDUI5Column		'ignore
	Private SDUI5Column19 As SDUI5Column		'ignore
	Private SDUI5Column20 As SDUI5Column		'ignore
	Private SDUI5Column21 As SDUI5Column		'ignore
	Private SDUI5Column22 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesToastChart)
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
	SDUI5Column1.Size = "6"
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
	SDUI5Column2.Size = "6"
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
	chart1.Initialize(Me, "chart1", "chart1")
	chart1.ParentID = "SDUI5Column1"
	chart1.ChartType = "bar"
	chart1.Enabled = True
	chart1.ExportMenuFileName = ""
	chart1.ExportMenuVisible = True
	chart1.Height = "400px"
	chart1.LegendPosition = "right"
	chart1.LegendShowCheckbox = True
	chart1.LegendVisible = True
	chart1.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart1.Position = "t=?; b=?; r=?; l=?"
	chart1.PositionStyle = "none"
	chart1.Attributes = ""
	chart1.Classes = ""
	chart1.Styles = ""
	chart1.Rounded = "lg"
	chart1.RoundedBox = False
	chart1.SeriesDataLabelsOffsetX = ""
	chart1.SeriesDataLabelsOffsetY = ""
	chart1.SeriesDataLabelsPieSeriesNameVisible = False
	chart1.SeriesDataLabelsVisible = False
	chart1.SeriesSelectable = False
	chart1.SeriesShowDot = False
	chart1.SeriesSpline = False
	chart1.SeriesStacked = False
	chart1.SeriesZoomable = False
	chart1.Shadow = "lg"
	chart1.TitleAlign = "left"
	chart1.TitleText = "Chart 1"
	chart1.Visible = True
	chart1.Width = "100%"
	chart1.XAxisDateFormat = "YYYY-MM-DD"
	chart1.XAxisPointOnColumn = False
	chart1.XAxisTitle = "X Axis"
	chart1.YAxisTitle = "Y Axis"
	BANano.Await(chart1.AddComponent)
	'
	chart2.Initialize(Me, "chart2", "chart2")
	chart2.ParentID = "SDUI5Column2"
	chart2.ChartType = "bar"
	chart2.Enabled = True
	chart2.ExportMenuFileName = ""
	chart2.ExportMenuVisible = True
	chart2.Height = "400px"
	chart2.LegendPosition = "right"
	chart2.LegendShowCheckbox = True
	chart2.LegendVisible = True
	chart2.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart2.Position = "t=?; b=?; r=?; l=?"
	chart2.PositionStyle = "none"
	chart2.Attributes = ""
	chart2.Classes = ""
	chart2.Styles = ""
	chart2.Rounded = "lg"
	chart2.RoundedBox = False
	chart2.SeriesDataLabelsOffsetX = ""
	chart2.SeriesDataLabelsOffsetY = ""
	chart2.SeriesDataLabelsPieSeriesNameVisible = False
	chart2.SeriesDataLabelsVisible = False
	chart2.SeriesSelectable = False
	chart2.SeriesShowDot = False
	chart2.SeriesSpline = False
	chart2.SeriesStacked = False
	chart2.SeriesZoomable = False
	chart2.Shadow = "lg"
	chart2.TitleAlign = "left"
	chart2.TitleText = "Chart 2"
	chart2.Visible = True
	chart2.Width = "100%"
	chart2.XAxisDateFormat = "YYYY-MM-DD"
	chart2.XAxisPointOnColumn = False
	chart2.XAxisTitle = "X Axis"
	chart2.YAxisTitle = "Y Axis"
	BANano.Await(chart2.AddComponent)
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
	SDUI5Column3.Size = "6"
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
	chart3.Initialize(Me, "chart3", "chart3")
	chart3.ParentID = "SDUI5Column3"
	chart3.ChartType = "bar"
	chart3.Enabled = True
	chart3.ExportMenuFileName = ""
	chart3.ExportMenuVisible = True
	chart3.Height = "400px"
	chart3.LegendPosition = "right"
	chart3.LegendShowCheckbox = True
	chart3.LegendVisible = True
	chart3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart3.Position = "t=?; b=?; r=?; l=?"
	chart3.PositionStyle = "none"
	chart3.Attributes = ""
	chart3.Classes = ""
	chart3.Styles = ""
	chart3.Rounded = "none"
	chart3.RoundedBox = False
	chart3.SeriesDataLabelsOffsetX = ""
	chart3.SeriesDataLabelsOffsetY = ""
	chart3.SeriesDataLabelsPieSeriesNameVisible = False
	chart3.SeriesDataLabelsVisible = False
	chart3.SeriesSelectable = False
	chart3.SeriesShowDot = False
	chart3.SeriesSpline = False
	chart3.SeriesStacked = False
	chart3.SeriesZoomable = False
	chart3.Shadow = "sm"
	chart3.TitleAlign = "left"
	chart3.TitleText = "Chart"
	chart3.Visible = True
	chart3.Width = "100%"
	chart3.XAxisDateFormat = "YYYY-MM-DD"
	chart3.XAxisPointOnColumn = False
	chart3.XAxisTitle = "X Axis"
	chart3.YAxisTitle = "Y Axis"
	BANano.Await(chart3.AddComponent)
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
	SDUI5Column4.Size = "6"
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
	chart4.Initialize(Me, "chart4", "chart4")
	chart4.ParentID = "SDUI5Column4"
	chart4.ChartType = "bar"
	chart4.Enabled = True
	chart4.ExportMenuFileName = ""
	chart4.ExportMenuVisible = True
	chart4.Height = "400px"
	chart4.LegendPosition = "right"
	chart4.LegendShowCheckbox = True
	chart4.LegendVisible = True
	chart4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart4.Position = "t=?; b=?; r=?; l=?"
	chart4.PositionStyle = "none"
	chart4.Attributes = ""
	chart4.Classes = ""
	chart4.Styles = ""
	chart4.Rounded = "none"
	chart4.RoundedBox = False
	chart4.SeriesDataLabelsOffsetX = ""
	chart4.SeriesDataLabelsOffsetY = ""
	chart4.SeriesDataLabelsPieSeriesNameVisible = False
	chart4.SeriesDataLabelsVisible = False
	chart4.SeriesSelectable = False
	chart4.SeriesShowDot = False
	chart4.SeriesSpline = False
	chart4.SeriesStacked = False
	chart4.SeriesZoomable = False
	chart4.Shadow = "sm"
	chart4.TitleAlign = "left"
	chart4.TitleText = "Chart"
	chart4.Visible = True
	chart4.Width = "100%"
	chart4.XAxisDateFormat = "YYYY-MM-DD"
	chart4.XAxisPointOnColumn = False
	chart4.XAxisTitle = "X Axis"
	chart4.YAxisTitle = "Y Axis"
	BANano.Await(chart4.AddComponent)
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
	SDUI5Column5.Size = "6"
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
	chart5.Initialize(Me, "chart5", "chart5")
	chart5.ParentID = "SDUI5Column5"
	chart5.ChartType = "bar"
	chart5.Enabled = True
	chart5.ExportMenuFileName = ""
	chart5.ExportMenuVisible = True
	chart5.Height = "400px"
	chart5.LegendPosition = "right"
	chart5.LegendShowCheckbox = True
	chart5.LegendVisible = True
	chart5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart5.Position = "t=?; b=?; r=?; l=?"
	chart5.PositionStyle = "none"
	chart5.Attributes = ""
	chart5.Classes = ""
	chart5.Styles = ""
	chart5.Rounded = "none"
	chart5.RoundedBox = False
	chart5.SeriesDataLabelsOffsetX = ""
	chart5.SeriesDataLabelsOffsetY = ""
	chart5.SeriesDataLabelsPieSeriesNameVisible = False
	chart5.SeriesDataLabelsVisible = False
	chart5.SeriesSelectable = False
	chart5.SeriesShowDot = False
	chart5.SeriesSpline = False
	chart5.SeriesStacked = False
	chart5.SeriesZoomable = False
	chart5.Shadow = "sm"
	chart5.TitleAlign = "left"
	chart5.TitleText = "Chart"
	chart5.Visible = True
	chart5.Width = "100%"
	chart5.XAxisDateFormat = "YYYY-MM-DD"
	chart5.XAxisPointOnColumn = False
	chart5.XAxisTitle = "X Axis"
	chart5.YAxisTitle = "Y Axis"
	BANano.Await(chart5.AddComponent)
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
	SDUI5Column6.Size = "6"
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
	chart6.Initialize(Me, "chart6", "chart6")
	chart6.ParentID = "SDUI5Column6"
	chart6.ChartType = "bar"
	chart6.Enabled = True
	chart6.ExportMenuFileName = ""
	chart6.ExportMenuVisible = True
	chart6.Height = "400px"
	chart6.LegendPosition = "right"
	chart6.LegendShowCheckbox = True
	chart6.LegendVisible = True
	chart6.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart6.Position = "t=?; b=?; r=?; l=?"
	chart6.PositionStyle = "none"
	chart6.Attributes = ""
	chart6.Classes = ""
	chart6.Styles = ""
	chart6.Rounded = "none"
	chart6.RoundedBox = False
	chart6.SeriesDataLabelsOffsetX = ""
	chart6.SeriesDataLabelsOffsetY = ""
	chart6.SeriesDataLabelsPieSeriesNameVisible = False
	chart6.SeriesDataLabelsVisible = False
	chart6.SeriesSelectable = False
	chart6.SeriesShowDot = False
	chart6.SeriesSpline = False
	chart6.SeriesStacked = False
	chart6.SeriesZoomable = False
	chart6.Shadow = "sm"
	chart6.TitleAlign = "left"
	chart6.TitleText = "Chart"
	chart6.Visible = True
	chart6.Width = "100%"
	chart6.XAxisDateFormat = "YYYY-MM-DD"
	chart6.XAxisPointOnColumn = False
	chart6.XAxisTitle = "X Axis"
	chart6.YAxisTitle = "Y Axis"
	BANano.Await(chart6.AddComponent)
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
	SDUI5Column7.Size = "6"
	SDUI5Column7.SizeLg = ""
	SDUI5Column7.SizeMd = ""
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
	chart7.Initialize(Me, "chart7", "chart7")
	chart7.ParentID = "SDUI5Column7"
	chart7.ChartType = "bar"
	chart7.Enabled = True
	chart7.ExportMenuFileName = ""
	chart7.ExportMenuVisible = True
	chart7.Height = "400px"
	chart7.LegendPosition = "right"
	chart7.LegendShowCheckbox = True
	chart7.LegendVisible = True
	chart7.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart7.Position = "t=?; b=?; r=?; l=?"
	chart7.PositionStyle = "none"
	chart7.Attributes = ""
	chart7.Classes = ""
	chart7.Styles = ""
	chart7.Rounded = "none"
	chart7.RoundedBox = False
	chart7.SeriesDataLabelsOffsetX = ""
	chart7.SeriesDataLabelsOffsetY = ""
	chart7.SeriesDataLabelsPieSeriesNameVisible = False
	chart7.SeriesDataLabelsVisible = False
	chart7.SeriesSelectable = False
	chart7.SeriesShowDot = False
	chart7.SeriesSpline = False
	chart7.SeriesStacked = False
	chart7.SeriesZoomable = False
	chart7.Shadow = "sm"
	chart7.TitleAlign = "left"
	chart7.TitleText = "Chart"
	chart7.Visible = True
	chart7.Width = "100%"
	chart7.XAxisDateFormat = "YYYY-MM-DD"
	chart7.XAxisPointOnColumn = False
	chart7.XAxisTitle = "X Axis"
	chart7.YAxisTitle = "Y Axis"
	BANano.Await(chart7.AddComponent)
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
	SDUI5Column8.Size = "6"
	SDUI5Column8.SizeLg = ""
	SDUI5Column8.SizeMd = ""
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
	chart8.Initialize(Me, "chart8", "chart8")
	chart8.ParentID = "SDUI5Column8"
	chart8.ChartType = "bar"
	chart8.Enabled = True
	chart8.ExportMenuFileName = ""
	chart8.ExportMenuVisible = True
	chart8.Height = "400px"
	chart8.LegendPosition = "right"
	chart8.LegendShowCheckbox = True
	chart8.LegendVisible = True
	chart8.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart8.Position = "t=?; b=?; r=?; l=?"
	chart8.PositionStyle = "none"
	chart8.Attributes = ""
	chart8.Classes = ""
	chart8.Styles = ""
	chart8.Rounded = "none"
	chart8.RoundedBox = False
	chart8.SeriesDataLabelsOffsetX = ""
	chart8.SeriesDataLabelsOffsetY = ""
	chart8.SeriesDataLabelsPieSeriesNameVisible = False
	chart8.SeriesDataLabelsVisible = False
	chart8.SeriesSelectable = False
	chart8.SeriesShowDot = False
	chart8.SeriesSpline = False
	chart8.SeriesStacked = False
	chart8.SeriesZoomable = False
	chart8.Shadow = "sm"
	chart8.TitleAlign = "left"
	chart8.TitleText = "Chart"
	chart8.Visible = True
	chart8.Width = "100%"
	chart8.XAxisDateFormat = "YYYY-MM-DD"
	chart8.XAxisPointOnColumn = False
	chart8.XAxisTitle = "X Axis"
	chart8.YAxisTitle = "Y Axis"
	BANano.Await(chart8.AddComponent)
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
	SDUI5Column9.Size = "6"
	SDUI5Column9.SizeLg = ""
	SDUI5Column9.SizeMd = ""
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
	chart9.Initialize(Me, "chart9", "chart9")
	chart9.ParentID = "SDUI5Column9"
	chart9.ChartType = "bar"
	chart9.Enabled = True
	chart9.ExportMenuFileName = ""
	chart9.ExportMenuVisible = True
	chart9.Height = "400px"
	chart9.LegendPosition = "right"
	chart9.LegendShowCheckbox = True
	chart9.LegendVisible = True
	chart9.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart9.Position = "t=?; b=?; r=?; l=?"
	chart9.PositionStyle = "none"
	chart9.Attributes = ""
	chart9.Classes = ""
	chart9.Styles = ""
	chart9.Rounded = "none"
	chart9.RoundedBox = False
	chart9.SeriesDataLabelsOffsetX = ""
	chart9.SeriesDataLabelsOffsetY = ""
	chart9.SeriesDataLabelsPieSeriesNameVisible = False
	chart9.SeriesDataLabelsVisible = False
	chart9.SeriesSelectable = False
	chart9.SeriesShowDot = False
	chart9.SeriesSpline = False
	chart9.SeriesStacked = False
	chart9.SeriesZoomable = False
	chart9.Shadow = "sm"
	chart9.TitleAlign = "left"
	chart9.TitleText = "Chart"
	chart9.Visible = True
	chart9.Width = "100%"
	chart9.XAxisDateFormat = "YYYY-MM-DD"
	chart9.XAxisPointOnColumn = False
	chart9.XAxisTitle = "X Axis"
	chart9.YAxisTitle = "Y Axis"
	BANano.Await(chart9.AddComponent)
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
	SDUI5Column10.Size = "6"
	SDUI5Column10.SizeLg = ""
	SDUI5Column10.SizeMd = ""
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
	chart10.Initialize(Me, "chart10", "chart10")
	chart10.ParentID = "SDUI5Column10"
	chart10.ChartType = "bar"
	chart10.Enabled = True
	chart10.ExportMenuFileName = ""
	chart10.ExportMenuVisible = True
	chart10.Height = "400px"
	chart10.LegendPosition = "right"
	chart10.LegendShowCheckbox = True
	chart10.LegendVisible = True
	chart10.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart10.Position = "t=?; b=?; r=?; l=?"
	chart10.PositionStyle = "none"
	chart10.Attributes = ""
	chart10.Classes = ""
	chart10.Styles = ""
	chart10.Rounded = "none"
	chart10.RoundedBox = False
	chart10.SeriesDataLabelsOffsetX = ""
	chart10.SeriesDataLabelsOffsetY = ""
	chart10.SeriesDataLabelsPieSeriesNameVisible = False
	chart10.SeriesDataLabelsVisible = False
	chart10.SeriesSelectable = False
	chart10.SeriesShowDot = False
	chart10.SeriesSpline = False
	chart10.SeriesStacked = False
	chart10.SeriesZoomable = False
	chart10.Shadow = "sm"
	chart10.TitleAlign = "left"
	chart10.TitleText = "Chart"
	chart10.Visible = True
	chart10.Width = "100%"
	chart10.XAxisDateFormat = "YYYY-MM-DD"
	chart10.XAxisPointOnColumn = False
	chart10.XAxisTitle = "X Axis"
	chart10.YAxisTitle = "Y Axis"
	BANano.Await(chart10.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row1"
	SDUI5Column11.AlignContent = "none"
	SDUI5Column11.AlignItems = "none"
	SDUI5Column11.AlignSelf = ""
	SDUI5Column11.BackgroundColor = ""
	SDUI5Column11.CenterChildren = False
	SDUI5Column11.Enabled = True
	SDUI5Column11.Height = ""
	SDUI5Column11.JustifyContent = "none"
	SDUI5Column11.JustifyItems = "none"
	SDUI5Column11.JustifySelf = "none"
	SDUI5Column11.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.OffsetLg = ""
	SDUI5Column11.OffsetMd = ""
	SDUI5Column11.OffsetSm = ""
	SDUI5Column11.OffsetXl = ""
	SDUI5Column11.OffsetXxl = ""
	SDUI5Column11.Order = ""
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.PlaceContent = "none"
	SDUI5Column11.PlaceItems = "none"
	SDUI5Column11.PlaceSelf = "none"
	SDUI5Column11.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column11.PositionStyle = "none"
	SDUI5Column11.Attributes = ""
	SDUI5Column11.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column11.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column11.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column11.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column11.Classes = ""
	SDUI5Column11.Styles = ""
	SDUI5Column11.Rounded = "none"
	SDUI5Column11.Shadow = "none"
	SDUI5Column11.Size = "6"
	SDUI5Column11.SizeLg = ""
	SDUI5Column11.SizeMd = ""
	SDUI5Column11.SizeSm = ""
	SDUI5Column11.SizeXl = ""
	SDUI5Column11.SizeXxl = ""
	SDUI5Column11.Text = ""
	SDUI5Column11.TextAlign = "none"
	SDUI5Column11.TextColor = ""
	SDUI5Column11.Visible = True
	SDUI5Column11.Width = ""
	BANano.Await(SDUI5Column11.AddComponent)
	'
	chart11.Initialize(Me, "chart11", "chart11")
	chart11.ParentID = "SDUI5Column11"
	chart11.ChartType = "bar"
	chart11.Enabled = True
	chart11.ExportMenuFileName = ""
	chart11.ExportMenuVisible = True
	chart11.Height = "400px"
	chart11.LegendPosition = "right"
	chart11.LegendShowCheckbox = True
	chart11.LegendVisible = True
	chart11.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart11.Position = "t=?; b=?; r=?; l=?"
	chart11.PositionStyle = "none"
	chart11.Attributes = ""
	chart11.Classes = ""
	chart11.Styles = ""
	chart11.Rounded = "none"
	chart11.RoundedBox = False
	chart11.SeriesDataLabelsOffsetX = ""
	chart11.SeriesDataLabelsOffsetY = ""
	chart11.SeriesDataLabelsPieSeriesNameVisible = False
	chart11.SeriesDataLabelsVisible = False
	chart11.SeriesSelectable = False
	chart11.SeriesShowDot = False
	chart11.SeriesSpline = False
	chart11.SeriesStacked = False
	chart11.SeriesZoomable = False
	chart11.Shadow = "sm"
	chart11.TitleAlign = "left"
	chart11.TitleText = "Chart"
	chart11.Visible = True
	chart11.Width = "100%"
	chart11.XAxisDateFormat = "YYYY-MM-DD"
	chart11.XAxisPointOnColumn = False
	chart11.XAxisTitle = "X Axis"
	chart11.YAxisTitle = "Y Axis"
	BANano.Await(chart11.AddComponent)
	'
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row1"
	SDUI5Column12.AlignContent = "none"
	SDUI5Column12.AlignItems = "none"
	SDUI5Column12.AlignSelf = ""
	SDUI5Column12.BackgroundColor = ""
	SDUI5Column12.CenterChildren = False
	SDUI5Column12.Enabled = True
	SDUI5Column12.Height = ""
	SDUI5Column12.JustifyContent = "none"
	SDUI5Column12.JustifyItems = "none"
	SDUI5Column12.JustifySelf = "none"
	SDUI5Column12.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.OffsetLg = ""
	SDUI5Column12.OffsetMd = ""
	SDUI5Column12.OffsetSm = ""
	SDUI5Column12.OffsetXl = ""
	SDUI5Column12.OffsetXxl = ""
	SDUI5Column12.Order = ""
	SDUI5Column12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.PlaceContent = "none"
	SDUI5Column12.PlaceItems = "none"
	SDUI5Column12.PlaceSelf = "none"
	SDUI5Column12.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column12.PositionStyle = "none"
	SDUI5Column12.Attributes = ""
	SDUI5Column12.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column12.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column12.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column12.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column12.Classes = ""
	SDUI5Column12.Styles = ""
	SDUI5Column12.Rounded = "none"
	SDUI5Column12.Shadow = "none"
	SDUI5Column12.Size = "6"
	SDUI5Column12.SizeLg = ""
	SDUI5Column12.SizeMd = ""
	SDUI5Column12.SizeSm = ""
	SDUI5Column12.SizeXl = ""
	SDUI5Column12.SizeXxl = ""
	SDUI5Column12.Text = ""
	SDUI5Column12.TextAlign = "none"
	SDUI5Column12.TextColor = ""
	SDUI5Column12.Visible = True
	SDUI5Column12.Width = ""
	BANano.Await(SDUI5Column12.AddComponent)
	'
	chart12.Initialize(Me, "chart12", "chart12")
	chart12.ParentID = "SDUI5Column12"
	chart12.ChartType = "bar"
	chart12.Enabled = True
	chart12.ExportMenuFileName = ""
	chart12.ExportMenuVisible = True
	chart12.Height = "400px"
	chart12.LegendPosition = "right"
	chart12.LegendShowCheckbox = True
	chart12.LegendVisible = True
	chart12.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart12.Position = "t=?; b=?; r=?; l=?"
	chart12.PositionStyle = "none"
	chart12.Attributes = ""
	chart12.Classes = ""
	chart12.Styles = ""
	chart12.Rounded = "none"
	chart12.RoundedBox = False
	chart12.SeriesDataLabelsOffsetX = ""
	chart12.SeriesDataLabelsOffsetY = ""
	chart12.SeriesDataLabelsPieSeriesNameVisible = False
	chart12.SeriesDataLabelsVisible = False
	chart12.SeriesSelectable = False
	chart12.SeriesShowDot = False
	chart12.SeriesSpline = False
	chart12.SeriesStacked = False
	chart12.SeriesZoomable = False
	chart12.Shadow = "sm"
	chart12.TitleAlign = "left"
	chart12.TitleText = "Chart"
	chart12.Visible = True
	chart12.Width = "100%"
	chart12.XAxisDateFormat = "YYYY-MM-DD"
	chart12.XAxisPointOnColumn = False
	chart12.XAxisTitle = "X Axis"
	chart12.YAxisTitle = "Y Axis"
	BANano.Await(chart12.AddComponent)
	'
	SDUI5Column13.Initialize(Me, "SDUI5Column13", "SDUI5Column13")
	SDUI5Column13.ParentID = "SDUI5Row1"
	SDUI5Column13.AlignContent = "none"
	SDUI5Column13.AlignItems = "none"
	SDUI5Column13.AlignSelf = ""
	SDUI5Column13.BackgroundColor = ""
	SDUI5Column13.CenterChildren = False
	SDUI5Column13.Enabled = True
	SDUI5Column13.Height = ""
	SDUI5Column13.JustifyContent = "none"
	SDUI5Column13.JustifyItems = "none"
	SDUI5Column13.JustifySelf = "none"
	SDUI5Column13.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column13.OffsetLg = ""
	SDUI5Column13.OffsetMd = ""
	SDUI5Column13.OffsetSm = ""
	SDUI5Column13.OffsetXl = ""
	SDUI5Column13.OffsetXxl = ""
	SDUI5Column13.Order = ""
	SDUI5Column13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column13.PlaceContent = "none"
	SDUI5Column13.PlaceItems = "none"
	SDUI5Column13.PlaceSelf = "none"
	SDUI5Column13.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column13.PositionStyle = "none"
	SDUI5Column13.Attributes = ""
	SDUI5Column13.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column13.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column13.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column13.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column13.Classes = ""
	SDUI5Column13.Styles = ""
	SDUI5Column13.Rounded = "none"
	SDUI5Column13.Shadow = "none"
	SDUI5Column13.Size = "6"
	SDUI5Column13.SizeLg = ""
	SDUI5Column13.SizeMd = ""
	SDUI5Column13.SizeSm = ""
	SDUI5Column13.SizeXl = ""
	SDUI5Column13.SizeXxl = ""
	SDUI5Column13.Text = ""
	SDUI5Column13.TextAlign = "none"
	SDUI5Column13.TextColor = ""
	SDUI5Column13.Visible = True
	SDUI5Column13.Width = ""
	BANano.Await(SDUI5Column13.AddComponent)
	'
	chart13.Initialize(Me, "chart13", "chart13")
	chart13.ParentID = "SDUI5Column13"
	chart13.ChartType = "bar"
	chart13.Enabled = True
	chart13.ExportMenuFileName = ""
	chart13.ExportMenuVisible = True
	chart13.Height = "400px"
	chart13.LegendPosition = "right"
	chart13.LegendShowCheckbox = True
	chart13.LegendVisible = True
	chart13.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart13.Position = "t=?; b=?; r=?; l=?"
	chart13.PositionStyle = "none"
	chart13.Attributes = ""
	chart13.Classes = ""
	chart13.Styles = ""
	chart13.Rounded = "none"
	chart13.RoundedBox = False
	chart13.SeriesDataLabelsOffsetX = ""
	chart13.SeriesDataLabelsOffsetY = ""
	chart13.SeriesDataLabelsPieSeriesNameVisible = False
	chart13.SeriesDataLabelsVisible = False
	chart13.SeriesSelectable = False
	chart13.SeriesShowDot = False
	chart13.SeriesSpline = False
	chart13.SeriesStacked = False
	chart13.SeriesZoomable = False
	chart13.Shadow = "sm"
	chart13.TitleAlign = "left"
	chart13.TitleText = "Chart"
	chart13.Visible = True
	chart13.Width = "100%"
	chart13.XAxisDateFormat = "YYYY-MM-DD"
	chart13.XAxisPointOnColumn = False
	chart13.XAxisTitle = "X Axis"
	chart13.YAxisTitle = "Y Axis"
	BANano.Await(chart13.AddComponent)
	'
	SDUI5Column14.Initialize(Me, "SDUI5Column14", "SDUI5Column14")
	SDUI5Column14.ParentID = "SDUI5Row1"
	SDUI5Column14.AlignContent = "none"
	SDUI5Column14.AlignItems = "none"
	SDUI5Column14.AlignSelf = ""
	SDUI5Column14.BackgroundColor = ""
	SDUI5Column14.CenterChildren = False
	SDUI5Column14.Enabled = True
	SDUI5Column14.Height = ""
	SDUI5Column14.JustifyContent = "none"
	SDUI5Column14.JustifyItems = "none"
	SDUI5Column14.JustifySelf = "none"
	SDUI5Column14.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column14.OffsetLg = ""
	SDUI5Column14.OffsetMd = ""
	SDUI5Column14.OffsetSm = ""
	SDUI5Column14.OffsetXl = ""
	SDUI5Column14.OffsetXxl = ""
	SDUI5Column14.Order = ""
	SDUI5Column14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column14.PlaceContent = "none"
	SDUI5Column14.PlaceItems = "none"
	SDUI5Column14.PlaceSelf = "none"
	SDUI5Column14.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column14.PositionStyle = "none"
	SDUI5Column14.Attributes = ""
	SDUI5Column14.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column14.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column14.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column14.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column14.Classes = ""
	SDUI5Column14.Styles = ""
	SDUI5Column14.Rounded = "none"
	SDUI5Column14.Shadow = "none"
	SDUI5Column14.Size = "6"
	SDUI5Column14.SizeLg = ""
	SDUI5Column14.SizeMd = ""
	SDUI5Column14.SizeSm = ""
	SDUI5Column14.SizeXl = ""
	SDUI5Column14.SizeXxl = ""
	SDUI5Column14.Text = ""
	SDUI5Column14.TextAlign = "none"
	SDUI5Column14.TextColor = ""
	SDUI5Column14.Visible = True
	SDUI5Column14.Width = ""
	BANano.Await(SDUI5Column14.AddComponent)
	'
	chart14.Initialize(Me, "chart14", "chart14")
	chart14.ParentID = "SDUI5Column14"
	chart14.ChartType = "bar"
	chart14.Enabled = True
	chart14.ExportMenuFileName = ""
	chart14.ExportMenuVisible = True
	chart14.Height = "400px"
	chart14.LegendPosition = "right"
	chart14.LegendShowCheckbox = True
	chart14.LegendVisible = True
	chart14.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart14.Position = "t=?; b=?; r=?; l=?"
	chart14.PositionStyle = "none"
	chart14.Attributes = ""
	chart14.Classes = ""
	chart14.Styles = ""
	chart14.Rounded = "none"
	chart14.RoundedBox = False
	chart14.SeriesDataLabelsOffsetX = ""
	chart14.SeriesDataLabelsOffsetY = ""
	chart14.SeriesDataLabelsPieSeriesNameVisible = False
	chart14.SeriesDataLabelsVisible = False
	chart14.SeriesSelectable = False
	chart14.SeriesShowDot = False
	chart14.SeriesSpline = False
	chart14.SeriesStacked = False
	chart14.SeriesZoomable = False
	chart14.Shadow = "sm"
	chart14.TitleAlign = "left"
	chart14.TitleText = "Chart"
	chart14.Visible = True
	chart14.Width = "100%"
	chart14.XAxisDateFormat = "YYYY-MM-DD"
	chart14.XAxisPointOnColumn = False
	chart14.XAxisTitle = "X Axis"
	chart14.YAxisTitle = "Y Axis"
	BANano.Await(chart14.AddComponent)
	'
	SDUI5Column15.Initialize(Me, "SDUI5Column15", "SDUI5Column15")
	SDUI5Column15.ParentID = "SDUI5Row1"
	SDUI5Column15.AlignContent = "none"
	SDUI5Column15.AlignItems = "none"
	SDUI5Column15.AlignSelf = ""
	SDUI5Column15.BackgroundColor = ""
	SDUI5Column15.CenterChildren = False
	SDUI5Column15.Enabled = True
	SDUI5Column15.Height = ""
	SDUI5Column15.JustifyContent = "none"
	SDUI5Column15.JustifyItems = "none"
	SDUI5Column15.JustifySelf = "none"
	SDUI5Column15.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column15.OffsetLg = ""
	SDUI5Column15.OffsetMd = ""
	SDUI5Column15.OffsetSm = ""
	SDUI5Column15.OffsetXl = ""
	SDUI5Column15.OffsetXxl = ""
	SDUI5Column15.Order = ""
	SDUI5Column15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column15.PlaceContent = "none"
	SDUI5Column15.PlaceItems = "none"
	SDUI5Column15.PlaceSelf = "none"
	SDUI5Column15.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column15.PositionStyle = "none"
	SDUI5Column15.Attributes = ""
	SDUI5Column15.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column15.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column15.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column15.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column15.Classes = ""
	SDUI5Column15.Styles = ""
	SDUI5Column15.Rounded = "none"
	SDUI5Column15.Shadow = "none"
	SDUI5Column15.Size = "6"
	SDUI5Column15.SizeLg = ""
	SDUI5Column15.SizeMd = ""
	SDUI5Column15.SizeSm = ""
	SDUI5Column15.SizeXl = ""
	SDUI5Column15.SizeXxl = ""
	SDUI5Column15.Text = ""
	SDUI5Column15.TextAlign = "none"
	SDUI5Column15.TextColor = ""
	SDUI5Column15.Visible = True
	SDUI5Column15.Width = ""
	BANano.Await(SDUI5Column15.AddComponent)
	'
	chart15.Initialize(Me, "chart15", "chart15")
	chart15.ParentID = "SDUI5Column15"
	chart15.ChartType = "bar"
	chart15.Enabled = True
	chart15.ExportMenuFileName = ""
	chart15.ExportMenuVisible = True
	chart15.Height = "400px"
	chart15.LegendPosition = "right"
	chart15.LegendShowCheckbox = True
	chart15.LegendVisible = True
	chart15.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart15.Position = "t=?; b=?; r=?; l=?"
	chart15.PositionStyle = "none"
	chart15.Attributes = ""
	chart15.Classes = ""
	chart15.Styles = ""
	chart15.Rounded = "none"
	chart15.RoundedBox = False
	chart15.SeriesDataLabelsOffsetX = ""
	chart15.SeriesDataLabelsOffsetY = ""
	chart15.SeriesDataLabelsPieSeriesNameVisible = False
	chart15.SeriesDataLabelsVisible = False
	chart15.SeriesSelectable = False
	chart15.SeriesShowDot = False
	chart15.SeriesSpline = False
	chart15.SeriesStacked = False
	chart15.SeriesZoomable = False
	chart15.Shadow = "sm"
	chart15.TitleAlign = "left"
	chart15.TitleText = "Chart"
	chart15.Visible = True
	chart15.Width = "100%"
	chart15.XAxisDateFormat = "YYYY-MM-DD"
	chart15.XAxisPointOnColumn = False
	chart15.XAxisTitle = "X Axis"
	chart15.YAxisTitle = "Y Axis"
	BANano.Await(chart15.AddComponent)
	'
	SDUI5Column16.Initialize(Me, "SDUI5Column16", "SDUI5Column16")
	SDUI5Column16.ParentID = "SDUI5Row1"
	SDUI5Column16.AlignContent = "none"
	SDUI5Column16.AlignItems = "none"
	SDUI5Column16.AlignSelf = ""
	SDUI5Column16.BackgroundColor = ""
	SDUI5Column16.CenterChildren = False
	SDUI5Column16.Enabled = True
	SDUI5Column16.Height = ""
	SDUI5Column16.JustifyContent = "none"
	SDUI5Column16.JustifyItems = "none"
	SDUI5Column16.JustifySelf = "none"
	SDUI5Column16.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column16.OffsetLg = ""
	SDUI5Column16.OffsetMd = ""
	SDUI5Column16.OffsetSm = ""
	SDUI5Column16.OffsetXl = ""
	SDUI5Column16.OffsetXxl = ""
	SDUI5Column16.Order = ""
	SDUI5Column16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column16.PlaceContent = "none"
	SDUI5Column16.PlaceItems = "none"
	SDUI5Column16.PlaceSelf = "none"
	SDUI5Column16.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column16.PositionStyle = "none"
	SDUI5Column16.Attributes = ""
	SDUI5Column16.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column16.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column16.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column16.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column16.Classes = ""
	SDUI5Column16.Styles = ""
	SDUI5Column16.Rounded = "none"
	SDUI5Column16.Shadow = "none"
	SDUI5Column16.Size = "6"
	SDUI5Column16.SizeLg = ""
	SDUI5Column16.SizeMd = ""
	SDUI5Column16.SizeSm = ""
	SDUI5Column16.SizeXl = ""
	SDUI5Column16.SizeXxl = ""
	SDUI5Column16.Text = ""
	SDUI5Column16.TextAlign = "none"
	SDUI5Column16.TextColor = ""
	SDUI5Column16.Visible = True
	SDUI5Column16.Width = ""
	BANano.Await(SDUI5Column16.AddComponent)
	'
	chart16.Initialize(Me, "chart16", "chart16")
	chart16.ParentID = "SDUI5Column16"
	chart16.ChartType = "bar"
	chart16.Enabled = True
	chart16.ExportMenuFileName = ""
	chart16.ExportMenuVisible = True
	chart16.Height = "400px"
	chart16.LegendPosition = "right"
	chart16.LegendShowCheckbox = True
	chart16.LegendVisible = True
	chart16.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart16.Position = "t=?; b=?; r=?; l=?"
	chart16.PositionStyle = "none"
	chart16.Attributes = ""
	chart16.Classes = ""
	chart16.Styles = ""
	chart16.Rounded = "none"
	chart16.RoundedBox = False
	chart16.SeriesDataLabelsOffsetX = ""
	chart16.SeriesDataLabelsOffsetY = ""
	chart16.SeriesDataLabelsPieSeriesNameVisible = False
	chart16.SeriesDataLabelsVisible = False
	chart16.SeriesSelectable = False
	chart16.SeriesShowDot = False
	chart16.SeriesSpline = False
	chart16.SeriesStacked = False
	chart16.SeriesZoomable = False
	chart16.Shadow = "sm"
	chart16.TitleAlign = "left"
	chart16.TitleText = "Chart"
	chart16.Visible = True
	chart16.Width = "100%"
	chart16.XAxisDateFormat = "YYYY-MM-DD"
	chart16.XAxisPointOnColumn = False
	chart16.XAxisTitle = "X Axis"
	chart16.YAxisTitle = "Y Axis"
	BANano.Await(chart16.AddComponent)
	'
	SDUI5Column17.Initialize(Me, "SDUI5Column17", "SDUI5Column17")
	SDUI5Column17.ParentID = "SDUI5Row1"
	SDUI5Column17.AlignContent = "none"
	SDUI5Column17.AlignItems = "none"
	SDUI5Column17.AlignSelf = ""
	SDUI5Column17.BackgroundColor = ""
	SDUI5Column17.CenterChildren = False
	SDUI5Column17.Enabled = True
	SDUI5Column17.Height = ""
	SDUI5Column17.JustifyContent = "none"
	SDUI5Column17.JustifyItems = "none"
	SDUI5Column17.JustifySelf = "none"
	SDUI5Column17.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column17.OffsetLg = ""
	SDUI5Column17.OffsetMd = ""
	SDUI5Column17.OffsetSm = ""
	SDUI5Column17.OffsetXl = ""
	SDUI5Column17.OffsetXxl = ""
	SDUI5Column17.Order = ""
	SDUI5Column17.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column17.PlaceContent = "none"
	SDUI5Column17.PlaceItems = "none"
	SDUI5Column17.PlaceSelf = "none"
	SDUI5Column17.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column17.PositionStyle = "none"
	SDUI5Column17.Attributes = ""
	SDUI5Column17.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column17.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column17.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column17.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column17.Classes = ""
	SDUI5Column17.Styles = ""
	SDUI5Column17.Rounded = "none"
	SDUI5Column17.Shadow = "none"
	SDUI5Column17.Size = "6"
	SDUI5Column17.SizeLg = ""
	SDUI5Column17.SizeMd = ""
	SDUI5Column17.SizeSm = ""
	SDUI5Column17.SizeXl = ""
	SDUI5Column17.SizeXxl = ""
	SDUI5Column17.Text = ""
	SDUI5Column17.TextAlign = "none"
	SDUI5Column17.TextColor = ""
	SDUI5Column17.Visible = True
	SDUI5Column17.Width = ""
	BANano.Await(SDUI5Column17.AddComponent)
	'
	chart17.Initialize(Me, "chart17", "chart17")
	chart17.ParentID = "SDUI5Column17"
	chart17.ChartType = "bar"
	chart17.Enabled = True
	chart17.ExportMenuFileName = ""
	chart17.ExportMenuVisible = True
	chart17.Height = "400px"
	chart17.LegendPosition = "right"
	chart17.LegendShowCheckbox = True
	chart17.LegendVisible = True
	chart17.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart17.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart17.Position = "t=?; b=?; r=?; l=?"
	chart17.PositionStyle = "none"
	chart17.Attributes = ""
	chart17.Classes = ""
	chart17.Styles = ""
	chart17.Rounded = "none"
	chart17.RoundedBox = False
	chart17.SeriesDataLabelsOffsetX = ""
	chart17.SeriesDataLabelsOffsetY = ""
	chart17.SeriesDataLabelsPieSeriesNameVisible = False
	chart17.SeriesDataLabelsVisible = False
	chart17.SeriesSelectable = False
	chart17.SeriesShowDot = False
	chart17.SeriesSpline = False
	chart17.SeriesStacked = False
	chart17.SeriesZoomable = False
	chart17.Shadow = "sm"
	chart17.TitleAlign = "left"
	chart17.TitleText = "Chart"
	chart17.Visible = True
	chart17.Width = "100%"
	chart17.XAxisDateFormat = "YYYY-MM-DD"
	chart17.XAxisPointOnColumn = False
	chart17.XAxisTitle = "X Axis"
	chart17.YAxisTitle = "Y Axis"
	BANano.Await(chart17.AddComponent)
	'
	SDUI5Column18.Initialize(Me, "SDUI5Column18", "SDUI5Column18")
	SDUI5Column18.ParentID = "SDUI5Row1"
	SDUI5Column18.AlignContent = "none"
	SDUI5Column18.AlignItems = "none"
	SDUI5Column18.AlignSelf = ""
	SDUI5Column18.BackgroundColor = ""
	SDUI5Column18.CenterChildren = False
	SDUI5Column18.Enabled = True
	SDUI5Column18.Height = ""
	SDUI5Column18.JustifyContent = "none"
	SDUI5Column18.JustifyItems = "none"
	SDUI5Column18.JustifySelf = "none"
	SDUI5Column18.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column18.OffsetLg = ""
	SDUI5Column18.OffsetMd = ""
	SDUI5Column18.OffsetSm = ""
	SDUI5Column18.OffsetXl = ""
	SDUI5Column18.OffsetXxl = ""
	SDUI5Column18.Order = ""
	SDUI5Column18.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column18.PlaceContent = "none"
	SDUI5Column18.PlaceItems = "none"
	SDUI5Column18.PlaceSelf = "none"
	SDUI5Column18.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column18.PositionStyle = "none"
	SDUI5Column18.Attributes = ""
	SDUI5Column18.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column18.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column18.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column18.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column18.Classes = ""
	SDUI5Column18.Styles = ""
	SDUI5Column18.Rounded = "none"
	SDUI5Column18.Shadow = "none"
	SDUI5Column18.Size = "6"
	SDUI5Column18.SizeLg = ""
	SDUI5Column18.SizeMd = ""
	SDUI5Column18.SizeSm = ""
	SDUI5Column18.SizeXl = ""
	SDUI5Column18.SizeXxl = ""
	SDUI5Column18.Text = ""
	SDUI5Column18.TextAlign = "none"
	SDUI5Column18.TextColor = ""
	SDUI5Column18.Visible = True
	SDUI5Column18.Width = ""
	BANano.Await(SDUI5Column18.AddComponent)
	'
	chart18.Initialize(Me, "chart18", "chart18")
	chart18.ParentID = "SDUI5Column18"
	chart18.ChartType = "bar"
	chart18.Enabled = True
	chart18.ExportMenuFileName = ""
	chart18.ExportMenuVisible = True
	chart18.Height = "400px"
	chart18.LegendPosition = "right"
	chart18.LegendShowCheckbox = True
	chart18.LegendVisible = True
	chart18.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart18.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart18.Position = "t=?; b=?; r=?; l=?"
	chart18.PositionStyle = "none"
	chart18.Attributes = ""
	chart18.Classes = ""
	chart18.Styles = ""
	chart18.Rounded = "none"
	chart18.RoundedBox = False
	chart18.SeriesDataLabelsOffsetX = ""
	chart18.SeriesDataLabelsOffsetY = ""
	chart18.SeriesDataLabelsPieSeriesNameVisible = False
	chart18.SeriesDataLabelsVisible = False
	chart18.SeriesSelectable = False
	chart18.SeriesShowDot = False
	chart18.SeriesSpline = False
	chart18.SeriesStacked = False
	chart18.SeriesZoomable = False
	chart18.Shadow = "sm"
	chart18.TitleAlign = "left"
	chart18.TitleText = "Chart"
	chart18.Visible = True
	chart18.Width = "100%"
	chart18.XAxisDateFormat = "YYYY-MM-DD"
	chart18.XAxisPointOnColumn = False
	chart18.XAxisTitle = "X Axis"
	chart18.YAxisTitle = "Y Axis"
	BANano.Await(chart18.AddComponent)
	'
	SDUI5Column19.Initialize(Me, "SDUI5Column19", "SDUI5Column19")
	SDUI5Column19.ParentID = "SDUI5Row1"
	SDUI5Column19.AlignContent = "none"
	SDUI5Column19.AlignItems = "none"
	SDUI5Column19.AlignSelf = ""
	SDUI5Column19.BackgroundColor = ""
	SDUI5Column19.CenterChildren = False
	SDUI5Column19.Enabled = True
	SDUI5Column19.Height = ""
	SDUI5Column19.JustifyContent = "none"
	SDUI5Column19.JustifyItems = "none"
	SDUI5Column19.JustifySelf = "none"
	SDUI5Column19.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column19.OffsetLg = ""
	SDUI5Column19.OffsetMd = ""
	SDUI5Column19.OffsetSm = ""
	SDUI5Column19.OffsetXl = ""
	SDUI5Column19.OffsetXxl = ""
	SDUI5Column19.Order = ""
	SDUI5Column19.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column19.PlaceContent = "none"
	SDUI5Column19.PlaceItems = "none"
	SDUI5Column19.PlaceSelf = "none"
	SDUI5Column19.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column19.PositionStyle = "none"
	SDUI5Column19.Attributes = ""
	SDUI5Column19.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column19.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column19.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column19.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column19.Classes = ""
	SDUI5Column19.Styles = ""
	SDUI5Column19.Rounded = "none"
	SDUI5Column19.Shadow = "none"
	SDUI5Column19.Size = "6"
	SDUI5Column19.SizeLg = ""
	SDUI5Column19.SizeMd = ""
	SDUI5Column19.SizeSm = ""
	SDUI5Column19.SizeXl = ""
	SDUI5Column19.SizeXxl = ""
	SDUI5Column19.Text = ""
	SDUI5Column19.TextAlign = "none"
	SDUI5Column19.TextColor = ""
	SDUI5Column19.Visible = True
	SDUI5Column19.Width = ""
	BANano.Await(SDUI5Column19.AddComponent)
	'
	chart19.Initialize(Me, "chart19", "chart19")
	chart19.ParentID = "SDUI5Column19"
	chart19.ChartType = "bar"
	chart19.Enabled = True
	chart19.ExportMenuFileName = ""
	chart19.ExportMenuVisible = True
	chart19.Height = "400px"
	chart19.LegendPosition = "right"
	chart19.LegendShowCheckbox = True
	chart19.LegendVisible = True
	chart19.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart19.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart19.Position = "t=?; b=?; r=?; l=?"
	chart19.PositionStyle = "none"
	chart19.Attributes = ""
	chart19.Classes = ""
	chart19.Styles = ""
	chart19.Rounded = "none"
	chart19.RoundedBox = False
	chart19.SeriesDataLabelsOffsetX = ""
	chart19.SeriesDataLabelsOffsetY = ""
	chart19.SeriesDataLabelsPieSeriesNameVisible = False
	chart19.SeriesDataLabelsVisible = False
	chart19.SeriesSelectable = False
	chart19.SeriesShowDot = False
	chart19.SeriesSpline = False
	chart19.SeriesStacked = False
	chart19.SeriesZoomable = False
	chart19.Shadow = "sm"
	chart19.TitleAlign = "left"
	chart19.TitleText = "Chart"
	chart19.Visible = True
	chart19.Width = "100%"
	chart19.XAxisDateFormat = "YYYY-MM-DD"
	chart19.XAxisPointOnColumn = False
	chart19.XAxisTitle = "X Axis"
	chart19.YAxisTitle = "Y Axis"
	BANano.Await(chart19.AddComponent)
	'
	SDUI5Column20.Initialize(Me, "SDUI5Column20", "SDUI5Column20")
	SDUI5Column20.ParentID = "SDUI5Row1"
	SDUI5Column20.AlignContent = "none"
	SDUI5Column20.AlignItems = "none"
	SDUI5Column20.AlignSelf = ""
	SDUI5Column20.BackgroundColor = ""
	SDUI5Column20.CenterChildren = False
	SDUI5Column20.Enabled = True
	SDUI5Column20.Height = ""
	SDUI5Column20.JustifyContent = "none"
	SDUI5Column20.JustifyItems = "none"
	SDUI5Column20.JustifySelf = "none"
	SDUI5Column20.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column20.OffsetLg = ""
	SDUI5Column20.OffsetMd = ""
	SDUI5Column20.OffsetSm = ""
	SDUI5Column20.OffsetXl = ""
	SDUI5Column20.OffsetXxl = ""
	SDUI5Column20.Order = ""
	SDUI5Column20.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column20.PlaceContent = "none"
	SDUI5Column20.PlaceItems = "none"
	SDUI5Column20.PlaceSelf = "none"
	SDUI5Column20.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column20.PositionStyle = "none"
	SDUI5Column20.Attributes = ""
	SDUI5Column20.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column20.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column20.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column20.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column20.Classes = ""
	SDUI5Column20.Styles = ""
	SDUI5Column20.Rounded = "none"
	SDUI5Column20.Shadow = "none"
	SDUI5Column20.Size = "6"
	SDUI5Column20.SizeLg = ""
	SDUI5Column20.SizeMd = ""
	SDUI5Column20.SizeSm = ""
	SDUI5Column20.SizeXl = ""
	SDUI5Column20.SizeXxl = ""
	SDUI5Column20.Text = ""
	SDUI5Column20.TextAlign = "none"
	SDUI5Column20.TextColor = ""
	SDUI5Column20.Visible = True
	SDUI5Column20.Width = ""
	BANano.Await(SDUI5Column20.AddComponent)
	'
	chart20.Initialize(Me, "chart20", "chart20")
	chart20.ParentID = "SDUI5Column20"
	chart20.ChartType = "bar"
	chart20.Enabled = True
	chart20.ExportMenuFileName = ""
	chart20.ExportMenuVisible = True
	chart20.Height = "400px"
	chart20.LegendPosition = "right"
	chart20.LegendShowCheckbox = True
	chart20.LegendVisible = True
	chart20.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart20.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart20.Position = "t=?; b=?; r=?; l=?"
	chart20.PositionStyle = "none"
	chart20.Attributes = ""
	chart20.Classes = ""
	chart20.Styles = ""
	chart20.Rounded = "none"
	chart20.RoundedBox = False
	chart20.SeriesDataLabelsOffsetX = ""
	chart20.SeriesDataLabelsOffsetY = ""
	chart20.SeriesDataLabelsPieSeriesNameVisible = False
	chart20.SeriesDataLabelsVisible = False
	chart20.SeriesSelectable = False
	chart20.SeriesShowDot = False
	chart20.SeriesSpline = False
	chart20.SeriesStacked = False
	chart20.SeriesZoomable = False
	chart20.Shadow = "sm"
	chart20.TitleAlign = "left"
	chart20.TitleText = "Chart"
	chart20.Visible = True
	chart20.Width = "100%"
	chart20.XAxisDateFormat = "YYYY-MM-DD"
	chart20.XAxisPointOnColumn = False
	chart20.XAxisTitle = "X Axis"
	chart20.YAxisTitle = "Y Axis"
	BANano.Await(chart20.AddComponent)
	'
	SDUI5Column21.Initialize(Me, "SDUI5Column21", "SDUI5Column21")
	SDUI5Column21.ParentID = "SDUI5Row1"
	SDUI5Column21.AlignContent = "none"
	SDUI5Column21.AlignItems = "none"
	SDUI5Column21.AlignSelf = ""
	SDUI5Column21.BackgroundColor = ""
	SDUI5Column21.CenterChildren = False
	SDUI5Column21.Enabled = True
	SDUI5Column21.Height = ""
	SDUI5Column21.JustifyContent = "none"
	SDUI5Column21.JustifyItems = "none"
	SDUI5Column21.JustifySelf = "none"
	SDUI5Column21.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column21.OffsetLg = ""
	SDUI5Column21.OffsetMd = ""
	SDUI5Column21.OffsetSm = ""
	SDUI5Column21.OffsetXl = ""
	SDUI5Column21.OffsetXxl = ""
	SDUI5Column21.Order = ""
	SDUI5Column21.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column21.PlaceContent = "none"
	SDUI5Column21.PlaceItems = "none"
	SDUI5Column21.PlaceSelf = "none"
	SDUI5Column21.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column21.PositionStyle = "none"
	SDUI5Column21.Attributes = ""
	SDUI5Column21.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column21.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column21.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column21.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column21.Classes = ""
	SDUI5Column21.Styles = ""
	SDUI5Column21.Rounded = "none"
	SDUI5Column21.Shadow = "none"
	SDUI5Column21.Size = "6"
	SDUI5Column21.SizeLg = ""
	SDUI5Column21.SizeMd = ""
	SDUI5Column21.SizeSm = ""
	SDUI5Column21.SizeXl = ""
	SDUI5Column21.SizeXxl = ""
	SDUI5Column21.Text = ""
	SDUI5Column21.TextAlign = "none"
	SDUI5Column21.TextColor = ""
	SDUI5Column21.Visible = True
	SDUI5Column21.Width = ""
	BANano.Await(SDUI5Column21.AddComponent)
	'
	chart21.Initialize(Me, "chart21", "chart21")
	chart21.ParentID = "SDUI5Column21"
	chart21.ChartType = "bar"
	chart21.Enabled = True
	chart21.ExportMenuFileName = ""
	chart21.ExportMenuVisible = True
	chart21.Height = "400px"
	chart21.LegendPosition = "right"
	chart21.LegendShowCheckbox = True
	chart21.LegendVisible = True
	chart21.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart21.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart21.Position = "t=?; b=?; r=?; l=?"
	chart21.PositionStyle = "none"
	chart21.Attributes = ""
	chart21.Classes = ""
	chart21.Styles = ""
	chart21.Rounded = "none"
	chart21.RoundedBox = False
	chart21.SeriesDataLabelsOffsetX = ""
	chart21.SeriesDataLabelsOffsetY = ""
	chart21.SeriesDataLabelsPieSeriesNameVisible = False
	chart21.SeriesDataLabelsVisible = False
	chart21.SeriesSelectable = False
	chart21.SeriesShowDot = False
	chart21.SeriesSpline = False
	chart21.SeriesStacked = False
	chart21.SeriesZoomable = False
	chart21.Shadow = "sm"
	chart21.TitleAlign = "left"
	chart21.TitleText = "Chart"
	chart21.Visible = True
	chart21.Width = "100%"
	chart21.XAxisDateFormat = ""
	chart21.XAxisPointOnColumn = False
	chart21.XAxisTitle = "X Axis"
	chart21.YAxisTitle = "Y Axis"
	BANano.Await(chart21.AddComponent)
	'
	SDUI5Column22.Initialize(Me, "SDUI5Column22", "SDUI5Column22")
	SDUI5Column22.ParentID = "SDUI5Row1"
	SDUI5Column22.AlignContent = "none"
	SDUI5Column22.AlignItems = "none"
	SDUI5Column22.AlignSelf = ""
	SDUI5Column22.BackgroundColor = ""
	SDUI5Column22.CenterChildren = False
	SDUI5Column22.Enabled = True
	SDUI5Column22.Height = ""
	SDUI5Column22.JustifyContent = "none"
	SDUI5Column22.JustifyItems = "none"
	SDUI5Column22.JustifySelf = "none"
	SDUI5Column22.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column22.OffsetLg = ""
	SDUI5Column22.OffsetMd = ""
	SDUI5Column22.OffsetSm = ""
	SDUI5Column22.OffsetXl = ""
	SDUI5Column22.OffsetXxl = ""
	SDUI5Column22.Order = ""
	SDUI5Column22.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column22.PlaceContent = "none"
	SDUI5Column22.PlaceItems = "none"
	SDUI5Column22.PlaceSelf = "none"
	SDUI5Column22.Position = "t=?; b=?; r=?; l=?"
	SDUI5Column22.PositionStyle = "none"
	SDUI5Column22.Attributes = ""
	SDUI5Column22.BorderColor = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column22.BorderRadius = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column22.BorderStyle = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column22.BorderWidth = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column22.Classes = ""
	SDUI5Column22.Styles = ""
	SDUI5Column22.Rounded = "none"
	SDUI5Column22.Shadow = "none"
	SDUI5Column22.Size = "6"
	SDUI5Column22.SizeLg = ""
	SDUI5Column22.SizeMd = ""
	SDUI5Column22.SizeSm = ""
	SDUI5Column22.SizeXl = ""
	SDUI5Column22.SizeXxl = ""
	SDUI5Column22.Text = ""
	SDUI5Column22.TextAlign = "none"
	SDUI5Column22.TextColor = ""
	SDUI5Column22.Visible = True
	SDUI5Column22.Width = ""
	BANano.Await(SDUI5Column22.AddComponent)
	'
	chart22.Initialize(Me, "chart22", "chart22")
	chart22.ParentID = "SDUI5Column22"
	chart22.ChartType = "bar"
	chart22.Enabled = True
	chart22.ExportMenuFileName = ""
	chart22.ExportMenuVisible = True
	chart22.Height = "400px"
	chart22.LegendPosition = "right"
	chart22.LegendShowCheckbox = True
	chart22.LegendVisible = True
	chart22.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart22.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	chart22.Position = "t=?; b=?; r=?; l=?"
	chart22.PositionStyle = "none"
	chart22.Attributes = ""
	chart22.Classes = ""
	chart22.Styles = ""
	chart22.Rounded = "none"
	chart22.RoundedBox = False
	chart22.SeriesDataLabelsOffsetX = ""
	chart22.SeriesDataLabelsOffsetY = ""
	chart22.SeriesDataLabelsPieSeriesNameVisible = False
	chart22.SeriesDataLabelsVisible = False
	chart22.SeriesSelectable = False
	chart22.SeriesShowDot = False
	chart22.SeriesSpline = False
	chart22.SeriesStacked = False
	chart22.SeriesZoomable = False
	chart22.Shadow = "sm"
	chart22.TitleAlign = "left"
	chart22.TitleText = "Chart"
	chart22.Visible = True
	chart22.Width = "100%"
	chart22.XAxisDateFormat = ""
	chart22.XAxisPointOnColumn = False
	chart22.XAxisTitle = "X Axis"
	chart22.YAxisTitle = "Y Axis"
	BANano.Await(chart22.AddComponent)
	pgIndex.UpdateTitle("SDUI5ToastChart")
	'
	BANano.Await(BuildChart1)
	BANano.Await(BuildChart2)
	BANano.Await(BuildChart3)
	BANano.Await(BuildChart4)
	BANano.Await(BuildChart5)
	BANano.Await(BuildChart6)
	BANano.Await(BuildChart7)
	BANano.Await(BuildChart8)
	BANano.Await(BuildChart9)
	BANano.Await(BuildChart10)
	BANano.Await(BuildChart11)
	BANano.Await(BuildChart12)
	BANano.Await(BuildChart13)
	BANano.Await(BuildChart14)
	BANano.Await(BuildChart15)
	BANano.Await(BuildChart16)
	BANano.Await(BuildChart17)
	BANano.Await(BuildChart18)
	BANano.Await(BuildChart19)
	BANano.Await(BuildChart20)
	BANano.Await(BuildChart21)
	BANano.Await(BuildChart22)
End Sub

'bar chart
Sub BuildChart1
	chart1.Clear
	chart1.ChartType = chart1.CHARTTYPE_BAR
	chart1.AddCategories(Array("Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart1.AddSeries("Budget", Array(5000, 3000, 5000, 7000, 6000, 4000, 1000))
	chart1.AddSeries("Income", Array(8000, 4000, 7000, 2000, 6000, 3000, 5000))
	chart1.TitleText = "Personal Finance"
	chart1.XAxisDateFormat = ""
	chart1.Refresh
End Sub

'area chart
Sub BuildChart2
	chart2.Clear
	chart2.ChartType = chart2.CHARTTYPE_AREA
	chart2.AddCategories(Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart2.AddSeries("Seoul", Array(20, 40, 25, 50, 15, 45, 33, 34, 20, 30, 22, 13))
	chart2.AddSeries("Sidney", Array(5, 30, 21, 18, 59, 50, 28, 33, 7, 20, 10, 30))
	chart2.AddSeries("Moscow", Array(30, 5, 18, 21, 33, 41, 29, 15, 30, 10, 33, 5))
	chart2.TitleText = "Average Temperature"
	chart2.XAxisPointOnColumn = False
	chart2.XAxisTitle = "Month"
	chart2.YAxisTitle = "Temperature (Celsius)"
	chart2.XAxisDateFormat = ""
	chart2.Refresh
End Sub

'area chart spline
Sub BuildChart3
	chart3.Clear
	chart3.ChartType = chart3.CHARTTYPE_AREA
	chart3.AddCategories(Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart3.AddSeries("Seoul", Array(20, 40, 25, 50, 15, 45, 33, 34, 20, 30, 22, 13))
	chart3.AddSeries("Sidney", Array(5, 30, 21, 18, 59, 50, 28, 33, 7, 20, 10, 30))
	chart3.AddSeries("Moscow", Array(30, 5, 18, 21, 33, 41, 29, 15, 30, 10, 33, 5))
	chart3.TitleText = "Average Temperature (Spline)"
	chart3.XAxisPointOnColumn = False
	chart3.XAxisTitle = "Month"
	chart3.YAxisTitle = "Temperature (Celsius)"
	chart3.SeriesSpline = True
	chart3.XAxisDateFormat = ""
	chart3.Refresh
End Sub

'area chart data labels
Sub BuildChart4
	chart4.Clear
	chart4.ChartType = chart4.CHARTTYPE_AREA
	chart4.AddCategories(Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart4.AddSeries("Seoul", Array(20, 40, 25, 50, 15, 45, 33, 34, 20, 30, 22, 13))
	chart4.AddSeries("Sidney", Array(5, 30, 21, 18, 59, 50, 28, 33, 7, 20, 10, 30))
	chart4.AddSeries("Moscow", Array(30, 5, 18, 21, 33, 41, 29, 15, 30, 10, 33, 5))
	chart4.TitleText = "Average Temperature (Data Labels)"
	chart4.XAxisPointOnColumn = False
	chart4.XAxisTitle = "Month"
	chart4.YAxisTitle = "Temperature (Celsius)"
	chart4.SeriesShowDot = True
	chart4.SeriesDataLabelsVisible = True
	chart4.SeriesDataLabelsOffsetY = 10
	chart4.XAxisDateFormat = ""
	chart4.Refresh
End Sub

'area chart stacked normal
Sub BuildChart5
	chart5.Clear
	chart5.ChartType = chart5.CHARTTYPE_AREA
	chart5.AddCategories(Array("Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart5.AddSeries("Budget", Array(5000, 3000, 5000, 7000, 6000, 4000, 1000))
	chart5.AddSeries("Income", Array(8000, 4000, 7000, 2000, 6000, 3000, 5000))
	chart5.AddSeries("Expenses", Array(4000, 4000, 6000, 3000, 4000, 5000, 7000))
	chart5.AddSeries("Debt", Array(3000, 4000, 3000, 1000, 2000, 4000, 3000))
	chart5.TitleText = "Monthly Revenue (Stacked Normal)"
	chart5.XAxisPointOnColumn = False
	chart5.XAxisTitle = "Month"
	chart5.YAxisTitle = "Amount"
	chart5.SeriesStacked = True
	chart5.XAxisDateFormat = ""
	chart5.Refresh
End Sub

'area chart stacked percent
Sub BuildChart6
	chart6.Clear
	chart6.ChartType = chart6.CHARTTYPE_AREA
	chart6.AddCategories(Array("Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart6.AddSeries("Budget", Array(5000, 3000, 5000, 7000, 6000, 4000, 1000))
	chart6.AddSeries("Income", Array(8000, 4000, 7000, 2000, 6000, 3000, 5000))
	chart6.AddSeries("Expenses", Array(4000, 4000, 6000, 3000, 4000, 5000, 7000))
	chart6.AddSeries("Debt", Array(3000, 4000, 3000, 1000, 2000, 4000, 3000))
	chart6.TitleText = "Monthly Revenue (Stacked Percent)"
	chart6.XAxisPointOnColumn = False
	chart6.XAxisTitle = "Month"
	chart6.YAxisTitle = "Amount"
	chart6.SeriesStackedPercent = True
	chart6.XAxisDateFormat = ""
	chart6.Refresh
End Sub

Sub BuildChart7
	chart7.Clear
	chart7.ChartType = chart7.CHARTTYPE_AREA
	chart7.AddCategories(Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart7.AddSeries("Seoul", Array(20, 40, 25, 50, 15, 45, 33, 34, 20, 30, 22, 13))
	chart7.AddSeries("Sidney", Array(5, 30, 21, 18, 59, 50, 28, 33, 7, 20, 10, 30))
	chart7.AddSeries("Moscow", Array(30, 5, 18, 21, 33, 41, 29, 15, 30, 10, 33, 5))
	chart7.TitleText = "Average Temperature (Zoomable)"
	chart7.XAxisPointOnColumn = False
	chart7.XAxisTitle = "Month"
	chart7.YAxisTitle = "Temperature (Celsius)"
	chart7.SeriesZoomable = True
	chart7.XAxisDateFormat = ""
	chart7.Refresh
End Sub

Sub BuildChart8
	chart8.Clear
	chart8.ChartType = chart8.CHARTTYPE_BAR
	chart8.AddCategories(Array("Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart8.AddSeries("Elviations", Array(-5000, -3000, -6000, -3000, -6000, -4000, 5000))
	chart8.AddSeries("Junglectics", Array(-8000, -1000, -7000, -2000, -5000, -3000, 7000))
	chart8.AddSeries("Amazonforce", Array(-900, -6000, -1000, -9000, -3000, -1000, 5000))
	chart8.TitleText = "Monthly Revenue"
	chart8.YAxisTitle = "Y Axis"
	chart8.XAxisDateFormat = ""
	chart8.Refresh
End Sub

'area chart stacked percent
Sub BuildChart9
	chart9.Clear
	chart9.ChartType = chart9.CHARTTYPE_COLUMN
	chart9.AddCategories(Array("Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart9.AddSeries("Budget", Array(5000, 3000, 5000, 7000, 6000, 4000, 1000))
	chart9.AddSeries("Income", Array(8000, 4000, 7000, 2000, 6000, 3000, 5000))
	chart9.AddSeries("Expenses", Array(-4000, -4000, 6000, 3000, 4000, 5000, 7000))
	chart9.AddSeries("Debt", Array(3000, -4000, -3000, -1000, 2000, 4000, 3000))
	chart9.TitleText = "Monthly Revenue"
	chart9.XAxisTitle = "Month"
	chart9.YAxisTitle = "Amount"
	chart9.XAxisDateFormat = ""
	'chart9.Responsive = True
	chart9.SeriesDataLabelsVisible = True
	chart9.Refresh
End Sub

'area chart stacked percent
Sub BuildChart10
	chart10.Clear
	chart10.ChartType = chart10.CHARTTYPE_LINE
	chart10.AddCategories(Array("01/01/2020", "02/01/2020","03/01/2020", "04/01/2020", "05/01/2020", "06/01/2020", "07/01/2020", "08/01/2020", "09/01/2020", "10/01/2020", "11/01/2020", "12/01/2020"))
	chart10.AddSeries("Seoul", Array(-3.5, -1.1, 4.0, 11.3, 17.5, 21.5, 25.9, 27.2, 24.4, 13.9, 6.6, -0.6))
	chart10.AddSeries("Seattle", Array(3.8, 5.6, 7.0, 9.1, 12.4, 15.3, 17.5, 17.8, 15.0, 10.6, 6.6, 3.7))
	chart10.AddSeries("Sydney", Array(22.1, 22.0, 20.9, 18.3, 15.2, 12.8, 11.8, 13.0, 15.2, 17.6, 19.4, 21.2))
	chart10.AddSeries("Moscow", Array(-10.3, -9.1, -4.1, 4.4, 12.2, 16.3, 18.5, 16.7, 10.9, 4.2, -2.0, -7.5))
	chart10.AddSeries("Jungfrau", Array(-13.2, -13.7, -13.1, -10.3, -6.1, -3.2, 0.0, -0.1, -1.8, -4.5, -9.0, -10.9))
	chart10.TitleText = "24-hr Average Temperature"
	chart10.XAxisTitle = "Month"
	chart10.YAxisTitle = "Amount"
	chart10.LegendPosition = "bottom"
	'chart10.Responsive = True
	chart10.SeriesDataLabelsVisible = True
	chart10.XAxisPointOnColumn = True
	chart10.XAxisDateFormat = "YY-MM-DD"
	chart10.Refresh
End Sub

Sub BuildChart11
	chart11.Clear
	chart11.ChartType = chart11.CHARTTYPE_LINE
	chart11.AddCategories(Array("Jun", "Jul", "Aug", "Sep", "Oct", "Nov"))
	chart11.AddSeries("Budget", Array(5000, 3000, 6000, 3000, 6000, 4000))
	chart11.AddSeries("Income", Array(8000, 1000, 7000, 2000, 5000, 3000))
	chart11.AddSeries("Outgo", Array(900, 6000, 1000, 9000, 3000, 1000))
	chart11.TitleText = "Finances"
	chart11.XAxisTitle = "Month"
	chart11.YAxisTitle = "Amount"
	chart11.SeriesSpline = True
	chart11.XAxisDateFormat = ""
	chart11.Refresh
End Sub

Sub BuildChart12
	chart12.Clear
	chart12.ChartType = chart12.CHARTTYPE_PIE
	chart12.AddCategory("Browser")
	chart12.AddSeriesValue("Chrome", 46.02)
	chart12.AddSeriesValue("IE", 20.47)
	chart12.AddSeriesValue("Firefox", 17.71)
	chart12.AddSeriesValue("Safari", 5.45)
	chart12.AddSeriesValue("Etc", 7.25)
	chart12.TitleText = "Usage share of Web Browsers"
	chart12.SeriesDataLabelsVisible = True
	chart12.SeriesDataLabelsPieSeriesNameVisible = True
	chart12.Refresh
End Sub

'area chart stacked normal
Sub BuildChart13
	chart13.Clear
	chart13.ChartType = chart13.CHARTTYPE_RADAR
	chart13.AddCategories(Array("Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart13.AddSeries("Budget", Array(5000, 3000, 5000, 7000, 6000, 4000, 1000))
	chart13.AddSeries("Income", Array(8000, 4000, 7000, 2000, 6000, 3000, 5000))
	chart13.AddSeries("Expenses", Array(4000, 4000, 6000, 3000, 4000, 5000, 7000))
	chart13.AddSeries("Debt", Array(3000, 4000, 3000, 1000, 2000, 4000, 3000))
	chart13.TitleText = "Annual Incomes"
	chart13.XAxisDateFormat = ""
	chart13.Refresh
End Sub

'area chart stacked normal
Sub BuildChart14
	chart14.Clear
	chart14.ChartType = chart14.CHARTTYPE_RADIAL_BAR
	chart14.AddCategories(Array("Korea", "United States", "Germany", "Canada", "Austria"))
	chart14.AddSeries("Gold medals", Array(132, 105, 92, 73, 64))
	chart14.AddSeries("Silver medals", Array(125, 110, 86, 64, 81))
	chart14.AddSeries("Bronze medals", Array(111, 90, 60, 62, 87))
	chart14.TitleText = "Winter Olympic medals per existing country (TOP 5)"
	chart14.Refresh
End Sub


Sub BuildChart15
	chart15.Clear
	chart15.ChartType = chart15.CHARTTYPE_GAUGE
	chart15.AddSeries("Speed", Array(80))
	chart15.TitleText = "Speedometer"
	chart15.CircularAxisTitleText = "km/h"
	chart15.CircularAxisScaleMin = 0
	chart15.CircularAxisScaleMax = 100
	chart15.PlotBandInitialize
	chart15.AddPlotBandRange(0, 20, "#55bf3b")
	chart15.AddPlotBandRange(20, 50, "#dddf0d")
	chart15.AddPlotBandRange(50, 110, "#df5353")
	chart15.Refresh
End Sub

Sub BuildChart16
	chart16.Clear
	chart16.ChartType = chart15.CHARTTYPE_GAUGE
	chart16.AddCategories(Array("Apple", "Watermelon", "Blueberry", "Grape", "Orange"))
	chart16.AddSeries("Fruit", Array("Orange"))
	chart16.TitleText = "Fruits"
	chart16.CircularLabelMargin = 25
	chart16.PlotBandInitialize
	chart16.AddPlotBandRange("Apple", "Watermelon", "#55bf3b")
	chart16.AddPlotBandRange("Watermelon", "Grape", "#dddf0d")
	chart16.AddPlotBandRange("Grape", "Apple", "#df5353")
	chart16.Refresh
End Sub

Sub BuildChart17
	chart17.Clear
	chart17.ChartType = chart15.CHARTTYPE_GAUGE
	chart17.AddSeries("Speed", Array(80))
	chart17.TitleText = "Speedometer"
	chart17.CircularAxisScaleMin =  0
	chart17.CircularAxisScaleMax =  90
	chart17.CircularAxisTitleText =  "km/h"
	chart17.PlotBandInitialize
	chart17.SeriesClockWise = False
	chart17.SeriesAngleRangeStart = 315
	chart17.SeriesAngleRangeEnd = 45
	chart17.AddPlotBandRange(0, 20, "#55bf3b")
	chart17.AddPlotBandRange(20, 50, "#dddf0d")
	chart17.AddPlotBandRange(50, 90, "#df5353")
	chart17.ThemePlotBandsBarWidth = 40
	chart17.Refresh
End Sub

Sub BuildChart18
	chart18.Clear
	chart18.ChartType = chart15.CHARTTYPE_GAUGE
	chart18.AddSeries("Speed", Array(80))
	chart18.TitleText = "Speedometer"
	chart18.CircularAxisScaleMin =  0
	chart18.CircularAxisScaleMax =  90
	chart18.CircularAxisTitleText =  "km/h"
	chart18.PlotBandInitialize
	chart18.SeriesAngleRangeStart = 225
	chart18.SeriesAngleRangeEnd = 135
	chart18.AddPlotBandRange(0, 20, "#55bf3b")
	chart18.AddPlotBandRange(20, 50, "#dddf0d")
	chart18.AddPlotBandRange(50, 90, "#df5353")
	chart18.ThemePlotBandsBarWidth = 40
	chart18.Refresh
End Sub


Sub BuildChart19
	chart19.Clear
	chart19.ChartType = chart15.CHARTTYPE_GAUGE
	chart19.AddSeries("Speed", Array(80))
	chart19.TitleText = "Speedometer"
	chart19.SeriesSolidClockHand = True
	chart19.Refresh
End Sub

Sub BuildChart20
	chart20.Clear
	chart20.ChartType = chart15.CHARTTYPE_GAUGE
	chart20.AddSeries("Speed", Array(80))
	chart20.TitleText = "Speedometer"
	chart20.CircularAxisScaleMin = 0
	chart20.CircularAxisScaleMax = 100
	chart20.CircularAxisTitleText = "km/h"
	chart20.SeriesAngleRangeStart = 270
	chart20.SeriesAngleRangeEnd = 90
	chart20.PlotBandInitialize
	chart20.AddPlotBandRange(0, 20, "#e4a0c2")
	chart20.AddPlotBandRange(20, 50, "#dc4d94")
	chart20.AddPlotBandRange(50, 100, "#a90757")
	chart20.ThemePlotBandsBarWidth = 40
	chart20.SeriesDataLabelsVisible = True
	chart20.SeriesDataLabelsOffsetY = -200
	chart20.Refresh
End Sub

Sub BuildChart21
	chart21.Clear
	chart21.ChartType = chart1.CHARTTYPE_COLUMN
	chart21.AddCategories(Array("Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	chart21.AddColors(Array("#24a681", "#fcda0b", "#5f9b24", "#efa12e"))
	chart21.AddSeries("Budget", Array(5000, 3000, 5000, 7000, 6000, 4000, 1000))
	chart21.AddSeries("Income", Array(8000, 4000, 7000, 2000, 6000, 3000, 5000))
	chart21.AddSeries("Expenses", Array(4000, 4000, 6000, 3000, 4000, 5000, 7000))
	chart21.AddSeries("Debt", Array(3000, 4000, 3000, 1000, 2000, 4000, 3000))
	chart21.TitleText = "Monthly Revenue"
	chart21.XAxisDateFormat = ""
	chart21.Refresh
End Sub

Sub BuildChart22
	chart22.Clear
	chart22.ChartType = chart12.CHARTTYPE_PIE
	chart22.AddCategory("Browser")
	chart22.AddSeriesValue("Chrome", 46.02)
	chart22.AddSeriesValue("IE", 20.47)
	chart22.AddSeriesValue("Firefox", 17.71)
	chart22.AddSeriesValue("Safari", 5.45)
	chart22.AddSeriesValue("Etc", 7.25)
	chart22.TitleText = "Usage share of Web Browsers"
	chart22.SeriesDataLabelsVisible = True
	chart22.SeriesDataLabelsPieSeriesNameVisible = True
	chart22.Refresh
End Sub

