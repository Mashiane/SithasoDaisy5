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
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Phone1 As SDUI5Phone		'ignore
	Private SDUI5Phone2 As SDUI5Phone		'ignore
	Private SDUI5Panel1 As SDUI5Panel		'ignore
	Private SDUI5Panel2 As SDUI5Panel		'ignore
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
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Phone1.Initialize(Me, "SDUI5Phone1", "SDUI5Phone1")
	SDUI5Phone1.ParentID = "SDUI5Column1"
	SDUI5Phone1.Artboard = 2
	SDUI5Phone1.BorderColor = "primary"
	BANano.Await(SDUI5Phone1.AddComponent)
	'
	SDUI5Phone2.Initialize(Me, "SDUI5Phone2", "SDUI5Phone2")
	SDUI5Phone2.ParentID = "SDUI5Column2"
	SDUI5Phone2.Artboard = 2
	SDUI5Phone2.BorderColor = "success"
	SDUI5Phone2.Horizontal = True
	BANano.Await(SDUI5Phone2.AddComponent)
	'
	SDUI5Panel1.Initialize(Me, "SDUI5Panel1", "SDUI5Panel1")
	SDUI5Panel1.ParentID = "SDUI5Phone1_content"
	SDUI5Panel1.BackgroundColor = "base-100"
	SDUI5Panel1.CenterChildren = True
	SDUI5Panel1.Flexbox = True
	SDUI5Panel1.FlexDirection = "col"
	SDUI5Panel1.Height = "full"
	SDUI5Panel1.JustifyItems = ""
	SDUI5Panel1.Text = "Hello SithasoDaisy5"
	SDUI5Panel1.Width = "full"
	BANano.Await(SDUI5Panel1.AddComponent)
	'
	SDUI5Panel2.Initialize(Me, "SDUI5Panel2", "SDUI5Panel2")
	SDUI5Panel2.ParentID = "SDUI5Phone2_content"
	SDUI5Panel2.BackgroundColor = "base-100"
	SDUI5Panel2.CenterChildren = True
	SDUI5Panel2.Flexbox = True
	SDUI5Panel2.FlexDirection = "col"
	SDUI5Panel2.Height = "full"
	SDUI5Panel2.JustifyItems = ""
	SDUI5Panel2.Text = "Hello SithasoDaisy5"
	SDUI5Panel2.Width = "full"
	BANano.Await(SDUI5Panel2.AddComponent)
	pgIndex.UpdateTitle("SDUI5Phone")
End Sub

