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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Browser1 As SDUI5Browser		'ignore
	Private SDUI5Panel1 As SDUI5Panel		'ignore
End Sub


Sub Show
	app = pgIndex.App
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
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Browser1.Initialize(Me, "SDUI5Browser1", "SDUI5Browser1")
	SDUI5Browser1.ParentID = "SDUI5Column1"
	SDUI5Browser1.BackgroundColor = "none"
	SDUI5Browser1.Height = ""
	SDUI5Browser1.MarginAXYTBLR = "a=20px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Browser1.URL = "https://b4x.com"
	BANano.Await(SDUI5Browser1.AddComponent)
	'
	SDUI5Panel1.Initialize(Me, "SDUI5Panel1", "SDUI5Panel1")
	SDUI5Panel1.ParentID = "SDUI5Browser1"
	SDUI5Panel1.BackgroundColor = "base-100"
	SDUI5Panel1.Grid = True
	SDUI5Panel1.Height = "80"
	SDUI5Panel1.JustifyItems = ""
	SDUI5Panel1.PlaceContent = "center"
	SDUI5Panel1.Text = "Hello SithasoDaisy5"
	BANano.Await(SDUI5Panel1.AddComponent)
	pgIndex.UpdateTitle("SDUI5Browser")
End Sub

