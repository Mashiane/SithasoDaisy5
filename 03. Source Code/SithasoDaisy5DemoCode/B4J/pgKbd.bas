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
	Private SDUI5Kbd1 As SDUI5Kbd		'ignore
	Private SDUI5Kbd2 As SDUI5Kbd		'ignore
	Private SDUI5Kbd3 As SDUI5Kbd		'ignore
	Private SDUI5Kbd4 As SDUI5Kbd		'ignore
	Private SDUI5Kbd5 As SDUI5Kbd		'ignore
	Private SDUI5Kbd6 As SDUI5Kbd		'ignore
	Private SDUI5Kbd7 As SDUI5Kbd		'ignore
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
	SDUI5Kbd1.Initialize(Me, "SDUI5Kbd1", "SDUI5Kbd1")
	SDUI5Kbd1.ParentID = "SDUI5Column1"
	SDUI5Kbd1.Text = "S"
	BANano.Await(SDUI5Kbd1.AddComponent)
	'
	SDUI5Kbd2.Initialize(Me, "SDUI5Kbd2", "SDUI5Kbd2")
	SDUI5Kbd2.ParentID = "SDUI5Column1"
	SDUI5Kbd2.Text = "I"
	BANano.Await(SDUI5Kbd2.AddComponent)
	'
	SDUI5Kbd3.Initialize(Me, "SDUI5Kbd3", "SDUI5Kbd3")
	SDUI5Kbd3.ParentID = "SDUI5Column1"
	SDUI5Kbd3.Text = "T"
	BANano.Await(SDUI5Kbd3.AddComponent)
	'
	SDUI5Kbd4.Initialize(Me, "SDUI5Kbd4", "SDUI5Kbd4")
	SDUI5Kbd4.ParentID = "SDUI5Column1"
	SDUI5Kbd4.Text = "H"
	BANano.Await(SDUI5Kbd4.AddComponent)
	'
	SDUI5Kbd5.Initialize(Me, "SDUI5Kbd5", "SDUI5Kbd5")
	SDUI5Kbd5.ParentID = "SDUI5Column1"
	BANano.Await(SDUI5Kbd5.AddComponent)
	'
	SDUI5Kbd6.Initialize(Me, "SDUI5Kbd6", "SDUI5Kbd6")
	SDUI5Kbd6.ParentID = "SDUI5Column1"
	SDUI5Kbd6.Text = "S"
	BANano.Await(SDUI5Kbd6.AddComponent)
	'
	SDUI5Kbd7.Initialize(Me, "SDUI5Kbd7", "SDUI5Kbd7")
	SDUI5Kbd7.ParentID = "SDUI5Column1"
	SDUI5Kbd7.Text = "O"
	BANano.Await(SDUI5Kbd7.AddComponent)
	pgIndex.UpdateTitle("SDUI5Kbd")
End Sub

