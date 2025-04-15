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
	Private SDUI5TrendChart1 As SDUI5TrendChart
	Private SDUI5TrendChart2 As SDUI5TrendChart
	Private SDUI5TrendChart3 As SDUI5TrendChart
	Private SDUI5TrendChart4 As SDUI5TrendChart
	Private SDUI5TrendChart5 As SDUI5TrendChart
	Private SDUI5TrendChart6 As SDUI5TrendChart
End Sub

Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesTrendCharts)
	BANano.LoadLayout(app.PageView, "trendview")
	pgIndex.UpdateTitle("SDUITrendChart")
	'
	
End Sub
