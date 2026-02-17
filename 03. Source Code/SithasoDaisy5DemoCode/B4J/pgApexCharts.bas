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
	Private barchart As SDUI5ApexChart		'ignore
	Private columnChart As SDUI5ApexChart		'ignore
	Private linechart As SDUI5ApexChart		'ignore
	Private areaChart As SDUI5ApexChart		'ignore
	Private donutChart As SDUI5ApexChart		'ignore
	Private pieChart As SDUI5ApexChart		'ignore
	Private polArea As SDUI5ApexChart		'ignore
	Private radarChart As SDUI5ApexChart		'ignore
	Private radBar As SDUI5ApexChart		'ignore
	Private rangeAreaChart As SDUI5ApexChart		'ignore
	Private scatterChart As SDUI5ApexChart		'ignore
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
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesBarCode)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	linechart.Initialize(Me, "linechart", "linechart")
	linechart.ParentID = "SDUI5Column1"
	linechart.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	linechart.TypeOf = "line"
	BANano.Await(linechart.AddComponent)
	'
	barchart.Initialize(Me, "barchart", "barchart")
	barchart.ParentID = "SDUI5Column2"
	barchart.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(barchart.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	columnChart.Initialize(Me, "columnChart", "columnChart")
	columnChart.ParentID = "SDUI5Column3"
	columnChart.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	columnChart.TypeOf = "column"
	BANano.Await(columnChart.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Size = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	areaChart.Initialize(Me, "areaChart", "areaChart")
	areaChart.ParentID = "SDUI5Column4"
	areaChart.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	areaChart.TypeOf = "area"
	BANano.Await(areaChart.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	donutChart.Initialize(Me, "donutChart", "donutChart")
	donutChart.ParentID = "SDUI5Column5"
	donutChart.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	donutChart.TypeOf = "donut"
	BANano.Await(donutChart.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.Size = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	pieChart.Initialize(Me, "pieChart", "pieChart")
	pieChart.ParentID = "SDUI5Column6"
	pieChart.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	pieChart.TypeOf = "pie"
	BANano.Await(pieChart.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.Size = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	polArea.Initialize(Me, "polArea", "polArea")
	polArea.ParentID = "SDUI5Column7"
	polArea.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	polArea.TypeOf = "polarArea"
	BANano.Await(polArea.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.Size = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	radarChart.Initialize(Me, "radarChart", "radarChart")
	radarChart.ParentID = "SDUI5Column8"
	radarChart.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	radarChart.TypeOf = "radar"
	BANano.Await(radarChart.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row1"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.Size = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	radBar.Initialize(Me, "radBar", "radBar")
	radBar.ParentID = "SDUI5Column9"
	radBar.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	radBar.TypeOf = "radialBar"
	BANano.Await(radBar.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row1"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.Size = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	rangeAreaChart.Initialize(Me, "rangeAreaChart", "rangeAreaChart")
	rangeAreaChart.ParentID = "SDUI5Column10"
	rangeAreaChart.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	rangeAreaChart.TypeOf = "rangeArea"
	BANano.Await(rangeAreaChart.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row1"
	SDUI5Column11.AlignSelf = ""
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.Size = "6"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	scatterChart.Initialize(Me, "scatterChart", "scatterChart")
	scatterChart.ParentID = "SDUI5Column11"
	scatterChart.PaddingAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	scatterChart.TypeOf = "scatter"
	BANano.Await(scatterChart.AddComponent)
	pgIndex.UpdateTitle("SDUI5ApexChart")
	BANano.Await(BuildPage)
End Sub

Sub BuildPage
	'line chart
	linechart.Title = "Line Chart"
	linechart.XAxisTitle = "Days"
	linechart.YAxisTitle =  "Visitors"
	linechart.YAxisOutputFormat = "thousand"
	linechart.Gradient = False
	linechart.Clear
	linechart.AddCategories(Array("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"))
	linechart.AddSeries("Daily Visitors", "#008FFB", Array(1200, 1350, 1180, 1420, 1680, 1890, 2100))
	BANano.await(linechart.Refresh)
	'
	'bar chart
	barchart.Title = "Monthly Revenue"
	barchart.XAxisTitle = "Months"
	barchart.YAxisTitle = "Revenue ($)"
	barchart.YAxisOutputFormat = "money"
	barchart.XAxisLabelRotate =  "45"
	barchart.DataLabelOrientation =  "vertical"
	barchart.ShowDataLabels =  True
	barchart.clear
	barchart.addCategories(Array("Jan","Feb","Mar","Apr","May","Jun"))
	barchart.addSeries("Revenue", "#FF4560", Array(1200,1500,1800,2200,1900,2500))
	BANano.Await(barchart.refresh)
	'
	'column chart
	columnChart.Title = "Monthly Revenue Growth"
	columnChart.XAxisTitle =  "Revenue vs Target"
	columnChart.YAxisTitle =  "Month"
	columnChart.YAxisOutputFormat =  "money"
	columnChart.Gradient =  False
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

