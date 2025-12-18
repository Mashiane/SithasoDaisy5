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
	Private acc1 As SDUI5Accordion
	Private chart1 As SDUI5ToastChart
	Private chart2 As SDUI5ToastChart
	Private chart3 As SDUI5ToastChart
	Private chart4 As SDUI5ToastChart
	Private chart5 As SDUI5ToastChart
	Private chart6 As SDUI5ToastChart
	Private chart7 As SDUI5ToastChart
	Private chart8 As SDUI5ToastChart
	Private chart9 As SDUI5ToastChart
	Private chart10 As SDUI5ToastChart
	Private chart11 As SDUI5ToastChart
	Private chart12 As SDUI5ToastChart
	Private chart13 As SDUI5ToastChart
	Private chart14 As SDUI5ToastChart
	Private chart15 As SDUI5ToastChart
	Private chart16 As SDUI5ToastChart
	Private chart17 As SDUI5ToastChart
	Private chart18 As SDUI5ToastChart
	Private chart19 As SDUI5ToastChart
	Private chart20 As SDUI5ToastChart
	Private chart21 As SDUI5ToastChart
	Private chart22 As SDUI5ToastChart
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesToastChart)
	BANano.LoadLayout(app.PageView, "toastchartview")
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