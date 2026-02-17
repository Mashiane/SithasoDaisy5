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
	Private SDUI5TrendChart1 As SDUI5TrendChart		'ignore
	Private SDUI5TrendChart2 As SDUI5TrendChart		'ignore
	Private SDUI5TrendChart3 As SDUI5TrendChart		'ignore
	Private SDUI5TrendChart4 As SDUI5TrendChart		'ignore
	Private SDUI5TrendChart5 As SDUI5TrendChart		'ignore
	Private SDUI5TrendChart6 As SDUI5TrendChart		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesTrendCharts)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
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
	SDUI5TrendChart1.Initialize(Me, "SDUI5TrendChart1", "SDUI5TrendChart1")
	SDUI5TrendChart1.ParentID = "SDUI5Column1"
	SDUI5TrendChart1.ChartType = "line"
	'SDUI5TrendChart1.Height = "300px"
	SDUI5TrendChart1.Rounded = "lg"
	SDUI5TrendChart1.Shadow = "lg"
	SDUI5TrendChart1.ShapeColor = "#54C430"
	SDUI5TrendChart1.Values = "6,16,20,11,13,16,14,0,14,11,18,10,0,15,19,11,20,18,12,14"
	SDUI5TrendChart1.Weight = "1.6"
	'SDUI5TrendChart1.Width = "300px"
	BANano.Await(SDUI5TrendChart1.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Size = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5TrendChart2.Initialize(Me, "SDUI5TrendChart2", "SDUI5TrendChart2")
	SDUI5TrendChart2.ParentID = "SDUI5Column2"
	SDUI5TrendChart2.ChartType = "pie"
	SDUI5TrendChart2.Donut = "10"
	SDUI5TrendChart2.Gap = "6"
	'SDUI5TrendChart2.Height = "300px"
	SDUI5TrendChart2.Rounded = "lg"
	SDUI5TrendChart2.Shadow = "lg"
	SDUI5TrendChart2.ShapeColor = ""
	SDUI5TrendChart2.Values = "1200,800,400,200"
	SDUI5TrendChart2.Weight = "1.6"
	'SDUI5TrendChart2.Width = "300px"
	BANano.Await(SDUI5TrendChart2.AddComponent)
	'
	SDUI5TrendChart3.Initialize(Me, "SDUI5TrendChart3", "SDUI5TrendChart3")
	SDUI5TrendChart3.ParentID = "SDUI5Column3"
	SDUI5TrendChart3.ChartType = "line"
	'SDUI5TrendChart3.Height = "300px"
	SDUI5TrendChart3.Inside = True
	SDUI5TrendChart3.Rounded = "lg"
	SDUI5TrendChart3.Shadow = "lg"
	SDUI5TrendChart3.ShapeColor = "#54C430"
	SDUI5TrendChart3.Values = "12,10,12,11,13,16,14,10,12,11,17,18,16,17,20,14,15,13,12,14"
	SDUI5TrendChart3.Weight = "1.6"
	'SDUI5TrendChart3.Width = "300px"
	BANano.Await(SDUI5TrendChart3.AddComponent)
	'
	SDUI5TrendChart4.Initialize(Me, "SDUI5TrendChart4", "SDUI5TrendChart4")
	SDUI5TrendChart4.ParentID = "SDUI5Column4"
	SDUI5TrendChart4.ChartType = "stack"
	SDUI5TrendChart4.Gap = "3"
	'SDUI5TrendChart4.Height = "300px"
	SDUI5TrendChart4.Horizontal = True
	SDUI5TrendChart4.Radius = "20"
	SDUI5TrendChart4.Rounded = "lg"
	SDUI5TrendChart4.Shadow = "lg"
	SDUI5TrendChart4.ShapeColor = "#54C430"
	SDUI5TrendChart4.Values = "64,48,16,25,12,6"
	SDUI5TrendChart4.Weight = "1.6"
	'SDUI5TrendChart4.Width = "300px"
	BANano.Await(SDUI5TrendChart4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5TrendChart5.Initialize(Me, "SDUI5TrendChart5", "SDUI5TrendChart5")
	SDUI5TrendChart5.ParentID = "SDUI5Column5"
	'SDUI5TrendChart5.Height = "300px"
	SDUI5TrendChart5.Labels = "05/05/23,06/05/23,07/05/23,08/05/23,09/05/23,10/05/23,11/05/23,12/05/23,13/05/23,14/05/23,15/05/23,16/05/23,17/05/23,18/05/23,19/05/23,20/05/23,21/05/23,22/05/23"
	SDUI5TrendChart5.Rounded = "lg"
	SDUI5TrendChart5.Shadow = "lg"
	SDUI5TrendChart5.ShapeColor = "#54C430"
	SDUI5TrendChart5.TooltipFormat = "@L : @V€"
	SDUI5TrendChart5.Values = "120,100,120,110,130,160,140,100,120,110,170,180,160,170,200,140,150,130"
	SDUI5TrendChart5.Weight = "1.6"
	'SDUI5TrendChart5.Width = "300px"
	BANano.Await(SDUI5TrendChart5.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.Size = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5TrendChart6.Initialize(Me, "SDUI5TrendChart6", "SDUI5TrendChart6")
	SDUI5TrendChart6.ParentID = "SDUI5Column6"
	'SDUI5TrendChart6.Height = "300px"
	SDUI5TrendChart6.Horizontal = True
	SDUI5TrendChart6.Labels = "05/05/23,06/05/23,07/05/23,08/05/23,09/05/23,10/05/23,11/05/23,12/05/23,13/05/23,14/05/23,15/05/23,16/05/23,17/05/23,18/05/23,19/05/23,20/05/23,21/05/23,22/05/23"
	SDUI5TrendChart6.Rounded = "lg"
	SDUI5TrendChart6.Shadow = "lg"
	SDUI5TrendChart6.ShapeColor = "#54C430"
	SDUI5TrendChart6.TooltipFormat = "@L : @V€"
	SDUI5TrendChart6.Values = "120,100,120,110,130,160,140,100,120,110,170,180,160,170,200,140,150,130"
	SDUI5TrendChart6.Weight = "1.6"
	'SDUI5TrendChart6.Width = "300px"
	BANano.Await(SDUI5TrendChart6.AddComponent)
	pgIndex.UpdateTitle("SDUI5TrendChart")
	'
	
End Sub

