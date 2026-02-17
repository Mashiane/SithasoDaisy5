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
	Private bdrawer1 As SDUI5BottomDrawer		'ignore
	Private chart1 As SDUI5ToastChart		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesToastChart)
	BANano.Await(app.ClearPageView)
	bdrawer1.Initialize(Me, "bdrawer1", "bdrawer1")
	bdrawer1.ParentID = app.PageView
	bdrawer1.BackdropColor = ""
	bdrawer1.BackgroundColor = "base-300"
	bdrawer1.Breakpoints = ""
	bdrawer1.MaxWidth = "90%"
	bdrawer1.Showbackdrop = False
	BANano.Await(bdrawer1.AddComponent)
	'
	chart1.Initialize(Me, "chart1", "chart1")
	chart1.ParentID = "bdrawer1content"
	chart1.Height = "400"
	chart1.SeriesDataLabelsPieSeriesNameVisible = False
	chart1.Width = "700"
	BANano.Await(chart1.AddComponent)
	pgIndex.UpdateTitle("SDUI5BottomDrawer")
	bdrawer1.Open = True
	BANano.Await(BuildChart)
End Sub

Sub BuildChart
	chart1.Clear
	chart1.Width = 300
	chart1.Height = 300
	chart1.ChartType = chart1.CHARTTYPE_GAUGE
	chart1.AddSeries("Speed", Array(80))
	chart1.TitleText = "Speedometer"
	chart1.CircularAxisScaleMin = 0
	chart1.CircularAxisScaleMax = 100
	chart1.CircularAxisTitleText = "km/h"
	chart1.SeriesAngleRangeStart = 270
	chart1.SeriesAngleRangeEnd = 90
	chart1.PlotBandInitialize
	chart1.AddPlotBandRange(0, 20, "#e4a0c2")
	chart1.AddPlotBandRange(20, 50, "#dc4d94")
	chart1.AddPlotBandRange(50, 100, "#a90757")
	chart1.ThemePlotBandsBarWidth = 40
	chart1.SeriesDataLabelsVisible = True
	chart1.SeriesDataLabelsOffsetY = -200
	chart1.Refresh
End Sub

