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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5GenderChart1 As SDUI5GenderChart		'ignore
	Private SDUI5GenderChart2 As SDUI5GenderChart		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	SDUI5Container1.Classes = "mx-auto"
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.Size = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.Size = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5GenderChart1.Initialize(Me, "SDUI5GenderChart1", "SDUI5GenderChart1")
	SDUI5GenderChart1.ParentID = "SDUI5Column1"
	SDUI5GenderChart1.FemaleColor = "#DA70D6"
	SDUI5GenderChart1.FemaleTarget = "5000"
	SDUI5GenderChart1.FemaleValue = "3200"
	SDUI5GenderChart1.MaleColor = "#DEB887"
	SDUI5GenderChart1.MaleTarget = "1500"
	SDUI5GenderChart1.MaleValue = "1200"
	BANano.Await(SDUI5GenderChart1.AddComponent)
	'
	SDUI5GenderChart2.Initialize(Me, "SDUI5GenderChart2", "SDUI5GenderChart2")
	SDUI5GenderChart2.ParentID = "SDUI5Column2"
	SDUI5GenderChart2.DataType = "percentages"
	SDUI5GenderChart2.FemaleValue = "40"
	SDUI5GenderChart2.MaleValue = "65"
	BANano.Await(SDUI5GenderChart2.AddComponent)
	pgIndex.UpdateTitle("SDUI5GenderChart")
End Sub

