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
	Private barchart As SDUI5ApexChart
	Private columnChart As SDUI5ApexChart
	Private linechart As SDUI5ApexChart
	Private areaChart As SDUI5ApexChart
	Private donutChart As SDUI5ApexChart
	Private pieChart As SDUI5ApexChart
	Private polArea As SDUI5ApexChart
	Private radarChart As SDUI5ApexChart
	Private radBar As SDUI5ApexChart
	Private rangeAreaChart As SDUI5ApexChart
	Private scatterChart As SDUI5ApexChart
End Sub

Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesBarCode)
	BANano.LoadLayout(app.PageView, "apexchartsview")
	pgIndex.UpdateTitle("SDUI5ApexChart")
	BANano.Await(BuildPage)
End Sub

Sub BuildPage
	'line chart
	linechart.Title = "Line Chart"
	linechart.Subtitle =  ""
	linechart.ColumnWidth = "70%"
	linechart.XAxisTitle = "Days"
	linechart.YAxisTitle =  "Visitors"
	linechart.YAxisOutputFormat = "thousand"
	linechart.Height = "350px"
	linechart.Gradient = False
	linechart.GridShow =  True
	linechart.Clear
	linechart.AddCategories(Array("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"))
	linechart.AddSeries("Daily Visitors", "#008FFB", Array(1200, 1350, 1180, 1420, 1680, 1890, 2100))
	BANano.await(linechart.Refresh)
	'
	'bar chart
	barchart.Title = "Monthly Revenue"
	barchart.Subtitle = ""
	barchart.ColumnWidth = "70%"
	barchart.XAxisTitle = "Months"
	barchart.YAxisTitle = "Revenue ($)"
	barchart.YAxisOutputFormat = "money"
	barchart.Height = "350px"
	barchart.Gradient =  True
	barchart.GridShow =  True
	barchart.XAxisLabelRotate =  "45"
	barchart.DataLabelOrientation =  "vertical"
	barchart.DataLabelPosition =  "center"
	barchart.ShowDataLabels =  True
	barchart.clear
	barchart.addCategories(Array("Jan","Feb","Mar","Apr","May","Jun"))
	barchart.addSeries("Revenue", "#FF4560", Array(1200,1500,1800,2200,1900,2500))
	BANano.Await(barchart.refresh)
	'
	'column chart
	columnChart.Title = "Monthly Revenue Growth"
	columnChart.Subtitle = ""
	columnChart.ColumnWidth =  "70%"
	columnChart.XAxisTitle =  "Revenue vs Target"
	columnChart.YAxisTitle =  "Month"
	columnChart.YAxisOutputFormat =  "money"
	columnChart.Height =  "350px"
	columnChart.Gradient =  False
	columnChart.GridShow =  True
	columnChart.DataLabelOrientation =  "horizontal"
	columnChart.DataLabelPosition =  "center"
	columnChart.ShowDataLabels =  True
	columnChart.clear
	columnChart.addCategories(Array("Jan","Feb","Mar","Apr","May"))
	columnChart.addSeries("Revenue", "#008FFB", Array(100,120,140,160,180))
	columnChart.addSeries("Target", "#00E396", Array(110,130,135,155,175))
	BANano.Await(columnChart.refresh)
	'
	'area chart
	areaChart.Title = "Stacked Area - Traffic Sources"
	areaChart.clear
	areaChart.addCategories(Array("Jan","Feb","Mar","Apr","May","Jun","Jul"))
	areaChart.addSeries("Organic", "#008FFB", Array(44,55,41,67,22,43,21))
	areaChart.addSeries("Direct", "#00E396", Array(13,23,20,8,13,27,33))
	areaChart.addSeries("Referral", "#FEB019", Array(11,17,15,15,21,14,22))
	BANano.Await(areaChart.refresh)
	'
	'donut chart
	donutChart.Title = "Browser Market Share"
	donutChart.Gradient = True
	donutChart.GridShow = False
	donutChart.ShowDataLabels = True
	donutChart.clear
	donutChart.addSeries("Chrome","#008FFB",65)
	donutChart.addSeries("Firefox","#00E396",20)
	donutChart.addSeries("Safari","#FEB019",10)
	donutChart.addSeries("Other","#FF4560",5)
	Dim options As Map = CreateMap()
	app.UI.PutRecursive(options, "stroke.width", 6)
	app.UI.PutRecursive(options, "stroke.colors", Array("#fff"))
	app.UI.PutRecursive(options, "stroke.lineCap", "round")
	donutChart.UpdateOptions(options)
	BANano.Await(donutChart.refresh)
	'
	'pie chart
	pieChart.Title =  "Browser Usage Statistics"
	pieChart.Gradient = True
	pieChart.GridShow = False
	pieChart.ShowDataLabels = True
	pieChart.clear
	pieChart.addSeries("Desktop", "#008FFB", 44)
	pieChart.addSeries("Mobile", "#00E396", 23)
	pieChart.addSeries("Tablet", "#FEB019", 33)
	Dim options As Map = CreateMap()
	app.UI.PutRecursive(options, "stroke.width", 6)
	app.UI.PutRecursive(options, "stroke.colors", Array("#fff"))
	app.UI.PutRecursive(options, "stroke.lineCap", "round")
	app.UI.PutRecursive(options, "plotOptions.pie.dataLabels.offset", 0)
	app.UI.PutRecursive(options, "plotOptions.pie.dataLabels.style.colors", Array("#fff"))
	pieChart.UpdateOptions(options)
	BANano.Await(pieChart.refresh)
	'
	'polar area
	polArea.Title = "Polar Area Distribution"
	polArea.Stacked =  True
	polArea.XAxisTitle = "Months"
	polArea.YAxisTitle =  "Traffic Volume"
	polArea.clear
	polArea.addSeries("House A", "#FF7A59", 44)
	polArea.addSeries("House B", "#FFD166", 20)
	polArea.addSeries("House C", "#06D6A0", 13)
	polArea.addSeries("House D", "#4CC9F0", 43)
	polArea.addSeries("House E", "#7209B7", 27)
	BANano.Await(polArea.refresh)
	'
	'radar chart
	radarChart.Title = "Radar Comparisons"
	radarChart.MarkerSize = "0"
	radarChart.GridShow = False
	radarChart.clear
	radarChart.addCategories(Array("Strength","Speed","Endurance","Agility","Technique","Luck"))
	radarChart.addSeries("Car 1", "#AA00FF", Array(80,50,30,40,100,20))
	BANano.Await(radarChart.refresh)
	'
	'radbar
	radBar.Title = "Projects"
	radBar.EndAngle = 270
	radBar.BarLabels = True
	radBar.clear
	radBar.addSeries("Progress", "#008FFB", 70)
	radBar.addSeries("Score", "#00E396", 80)
	radBar.addSeries("Rating", "#FEB019", 90)
	BANano.Await(radBar.refresh)
	'
	'range area
	rangeAreaChart.Title = "New York Temperature (Range)"
	rangeAreaChart.XAxisTitle = "Months"
	rangeAreaChart.YAxisTitle =  "Temperature"
	Dim xSeries As String = "New York Temperature"
	rangeAreaChart.clear
	rangeAreaChart.addSeriesColor(xSeries, "#008FFB")
	rangeAreaChart.addSeriesPoint(xSeries, "Jan", Array(-2, 4))
	rangeAreaChart.addSeriesPoint(xSeries, "Feb", Array(-1, 6))
	rangeAreaChart.addSeriesPoint(xSeries, "Mar", Array(3, 10))
	rangeAreaChart.addSeriesPoint(xSeries, "Apr", Array(8, 16))
	rangeAreaChart.addSeriesPoint(xSeries, "May", Array(13, 22))
	rangeAreaChart.addSeriesPoint(xSeries, "Jun", Array(18, 26))
	rangeAreaChart.addSeriesPoint(xSeries, "Jul", Array(21, 29))
	rangeAreaChart.addSeriesPoint(xSeries, "Aug", Array(21, 28))
	rangeAreaChart.addSeriesPoint(xSeries, "Sep", Array(17, 24))
	rangeAreaChart.addSeriesPoint(xSeries, "Oct", Array(11, 18))
	rangeAreaChart.addSeriesPoint(xSeries, "Nov", Array(6, 12))
	rangeAreaChart.addSeriesPoint(xSeries, "Dec", Array(1, 7))
	BANano.Await(rangeAreaChart.refresh)
	'
	scatterChart.Title = "Data Correlation Analysis"
	scatterChart.XAxisTitle = "X Coordinate"
	scatterChart.YAxisTitle = "Y Coordinate"
	scatterChart.clear
	scatterChart.addSeriesColor("Data Points", "#008FFB")
	scatterChart.addSeriesPoint("Data Points", 10, 20)
	scatterChart.addSeriesPoint("Data Points", 15, 25)
	scatterChart.addSeriesPoint("Data Points", 20, 30)
	scatterChart.addSeriesPoint("Data Points", 25, 35)
	scatterChart.addSeriesPoint("Data Points", 30, 40)
	BANano.Await(scatterChart.refresh)
End Sub