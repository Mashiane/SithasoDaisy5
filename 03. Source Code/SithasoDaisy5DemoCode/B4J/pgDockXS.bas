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
	Private SDUI5Dock1 As SDUI5Dock		'ignore
	Private SDUI5Button1 As SDUI5Button		'ignore
	Private SDUI5Button2 As SDUI5Button		'ignore
	Private SDUI5Button3 As SDUI5Button		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Dock1.Initialize(Me, "SDUI5Dock1", "SDUI5Dock1")
	SDUI5Dock1.ParentID = app.PageView
	SDUI5Dock1.Size = "xs"
	BANano.Await(SDUI5Dock1.AddComponent)
	'
	SDUI5Button1.Initialize(Me, "SDUI5Button1", "SDUI5Button1")
	SDUI5Button1.ParentID = "SDUI5Dock1"
	SDUI5Button1.DockItem = True
	SDUI5Button1.IconSize = "none"
	'SDUI5Button1.Image = "./assets/home1.svg"
	'SDUI5Button1.ImageHeight = "16px"
	'SDUI5Button1.ImageWidth = "16px"
	SDUI5Button1.Size = "none"
	SDUI5Button1.Text = ""
	BANano.Await(SDUI5Button1.AddComponent)
	'
	SDUI5Button2.Initialize(Me, "SDUI5Button2", "SDUI5Button2")
	SDUI5Button2.ParentID = "SDUI5Dock1"
	SDUI5Button2.Active = True
	SDUI5Button2.DockItem = True
	SDUI5Button2.IconSize = "none"
	'SDUI5Button2.Image = "./assets/inbox.svg"
	'SDUI5Button2.ImageHeight = "16px"
	'SDUI5Button2.ImageWidth = "16px"
	SDUI5Button2.Size = "none"
	SDUI5Button2.Text = ""
	BANano.Await(SDUI5Button2.AddComponent)
	'
	SDUI5Button3.Initialize(Me, "SDUI5Button3", "SDUI5Button3")
	SDUI5Button3.ParentID = "SDUI5Dock1"
	SDUI5Button3.DockItem = True
	SDUI5Button3.IconSize = "none"
	'SDUI5Button3.Image = "./assets/gear.svg"
	'SDUI5Button3.ImageHeight = "16px"
	'SDUI5Button3.ImageWidth = "16px"
	SDUI5Button3.Size = "none"
	SDUI5Button3.Text = ""
	BANano.Await(SDUI5Button3.AddComponent)
	pgIndex.UpdateTitle("SDUI5Dock")
End Sub

