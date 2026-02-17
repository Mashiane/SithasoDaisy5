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
	Private SDUI5Link1 As SDUI5Link		'ignore
	Private SDUI5Link2 As SDUI5Link		'ignore
	Private SDUI5Link3 As SDUI5Link		'ignore
	Private SDUI5Link4 As SDUI5Link		'ignore
	Private SDUI5Link5 As SDUI5Link		'ignore
	Private SDUI5Link6 As SDUI5Link		'ignore
	Private SDUI5Link7 As SDUI5Link		'ignore
	Private SDUI5Link8 As SDUI5Link		'ignore
	Private SDUI5Link9 As SDUI5Link		'ignore
	Private SDUI5Link10 As SDUI5Link		'ignore
	Private SDUI5Link11 As SDUI5Link		'ignore
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
	SDUI5Row1.GridCols = "3"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Link1.Initialize(Me, "SDUI5Link1", "SDUI5Link1")
	SDUI5Link1.ParentID = "SDUI5Row1"
	SDUI5Link1.IconSize = "16px"
	'SDUI5Link1.ListItem = False
	SDUI5Link1.Text = "Click Me"
	BANano.Await(SDUI5Link1.AddComponent)
	'
	SDUI5Link2.Initialize(Me, "SDUI5Link2", "SDUI5Link2")
	SDUI5Link2.ParentID = "SDUI5Row1"
	SDUI5Link2.Color = "primary"
	SDUI5Link2.IconSize = "16px"
	'SDUI5Link2.ListItem = False
	SDUI5Link2.Text = "Primary"
	BANano.Await(SDUI5Link2.AddComponent)
	'
	SDUI5Link3.Initialize(Me, "SDUI5Link3", "SDUI5Link3")
	SDUI5Link3.ParentID = "SDUI5Row1"
	SDUI5Link3.Color = "accent"
	SDUI5Link3.IconSize = "16px"
	'SDUI5Link3.ListItem = False
	SDUI5Link3.Text = "Accent"
	BANano.Await(SDUI5Link3.AddComponent)
	'
	SDUI5Link4.Initialize(Me, "SDUI5Link4", "SDUI5Link4")
	SDUI5Link4.ParentID = "SDUI5Row1"
	SDUI5Link4.Color = "error"
	SDUI5Link4.IconSize = "16px"
	'SDUI5Link4.ListItem = False
	SDUI5Link4.Text = "Error"
	BANano.Await(SDUI5Link4.AddComponent)
	'
	SDUI5Link5.Initialize(Me, "SDUI5Link5", "SDUI5Link5")
	SDUI5Link5.ParentID = "SDUI5Row1"
	SDUI5Link5.Color = "info"
	SDUI5Link5.IconSize = "16px"
	'SDUI5Link5.ListItem = False
	SDUI5Link5.Text = "Info"
	BANano.Await(SDUI5Link5.AddComponent)
	'
	SDUI5Link6.Initialize(Me, "SDUI5Link6", "SDUI5Link6")
	SDUI5Link6.ParentID = "SDUI5Row1"
	SDUI5Link6.Color = "neutral"
	SDUI5Link6.IconSize = "16px"
	'SDUI5Link6.ListItem = False
	SDUI5Link6.Text = "Neutral"
	BANano.Await(SDUI5Link6.AddComponent)
	'
	SDUI5Link7.Initialize(Me, "SDUI5Link7", "SDUI5Link7")
	SDUI5Link7.ParentID = "SDUI5Row1"
	SDUI5Link7.Color = "secondary"
	SDUI5Link7.IconSize = "16px"
	'SDUI5Link7.ListItem = False
	SDUI5Link7.Text = "Secondary"
	BANano.Await(SDUI5Link7.AddComponent)
	'
	SDUI5Link8.Initialize(Me, "SDUI5Link8", "SDUI5Link8")
	SDUI5Link8.ParentID = "SDUI5Row1"
	SDUI5Link8.Color = "success"
	SDUI5Link8.IconSize = "16px"
	'SDUI5Link8.ListItem = False
	SDUI5Link8.Text = "Success"
	BANano.Await(SDUI5Link8.AddComponent)
	'
	SDUI5Link9.Initialize(Me, "SDUI5Link9", "SDUI5Link9")
	SDUI5Link9.ParentID = "SDUI5Row1"
	SDUI5Link9.Color = "warning"
	SDUI5Link9.IconSize = "16px"
	'SDUI5Link9.ListItem = False
	SDUI5Link9.Text = "Warning"
	BANano.Await(SDUI5Link9.AddComponent)
	'
	SDUI5Link10.Initialize(Me, "SDUI5Link10", "SDUI5Link10")
	SDUI5Link10.ParentID = "SDUI5Row1"
	SDUI5Link10.Hover = True
	SDUI5Link10.IconSize = "16px"
	'SDUI5Link10.ListItem = False
	SDUI5Link10.Text = "Hover"
	BANano.Await(SDUI5Link10.AddComponent)
	'
	SDUI5Link11.Initialize(Me, "SDUI5Link11", "SDUI5Link11")
	SDUI5Link11.ParentID = "SDUI5Row1"
	SDUI5Link11.Icon = "./assets/heart.svg"
	'SDUI5Link11.ListItem = False
	SDUI5Link11.Text = "Has Icon"
	BANano.Await(SDUI5Link11.AddComponent)
	pgIndex.UpdateTitle("SDUI5Link")
End Sub

