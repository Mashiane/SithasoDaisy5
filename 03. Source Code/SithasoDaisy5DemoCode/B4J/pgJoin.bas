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
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Join1 As SDUI5Join		'ignore
	Private SDUI5Join2 As SDUI5Join		'ignore
	Private SDUI5Join3 As SDUI5Join		'ignore
	Private SDUI5Button1 As SDUI5Button		'ignore
	Private SDUI5Button2 As SDUI5Button		'ignore
	Private SDUI5Button3 As SDUI5Button		'ignore
	Private SDUI5Button4 As SDUI5Button		'ignore
	Private SDUI5Button5 As SDUI5Button		'ignore
	Private SDUI5Button6 As SDUI5Button		'ignore
	Private SDUI5Button7 As SDUI5Button		'ignore
	Private SDUI5Button8 As SDUI5Button		'ignore
	Private SDUI5Button9 As SDUI5Button		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.TextAlign = "center"
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = app.PageView
	SDUI5Row1.GridColsMd = "6"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = app.PageView
	SDUI5Row2.GridColsMd = "6"
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Row3.Initialize(Me, "SDUI5Row3", "SDUI5Row3")
	SDUI5Row3.ParentID = app.PageView
	SDUI5Row3.GridColsMd = "6"
	BANano.Await(SDUI5Row3.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row2"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row3"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Join1.Initialize(Me, "SDUI5Join1", "SDUI5Join1")
	SDUI5Join1.ParentID = "SDUI5Column1"
	BANano.Await(SDUI5Join1.AddComponent)
	'
	SDUI5Join2.Initialize(Me, "SDUI5Join2", "SDUI5Join2")
	SDUI5Join2.ParentID = "SDUI5Column2"
	SDUI5Join2.Direction = "vertical"
	BANano.Await(SDUI5Join2.AddComponent)
	'
	SDUI5Join3.Initialize(Me, "SDUI5Join3", "SDUI5Join3")
	SDUI5Join3.ParentID = "SDUI5Column3"
	SDUI5Join3.Direction = "vertical"
	SDUI5Join3.DirectionOnLg = "horizontal"
	BANano.Await(SDUI5Join3.AddComponent)
	'
	SDUI5Button1.Initialize(Me, "SDUI5Button1", "SDUI5Button1")
	SDUI5Button1.ParentID = "SDUI5Join1"
	SDUI5Button1.IconSize = "none"
	'SDUI5Button1.Image = ""
	'SDUI5Button1.ImageHeight = "32px"
	'SDUI5Button1.ImageWidth = "32px"
	SDUI5Button1.JoinItem = True
	SDUI5Button1.Size = "none"
	BANano.Await(SDUI5Button1.AddComponent)
	'
	SDUI5Button2.Initialize(Me, "SDUI5Button2", "SDUI5Button2")
	SDUI5Button2.ParentID = "SDUI5Join1"
	SDUI5Button2.IconSize = "none"
	'SDUI5Button2.Image = ""
	'SDUI5Button2.ImageHeight = "32px"
	'SDUI5Button2.ImageWidth = "32px"
	SDUI5Button2.JoinItem = True
	SDUI5Button2.Size = "none"
	BANano.Await(SDUI5Button2.AddComponent)
	'
	SDUI5Button3.Initialize(Me, "SDUI5Button3", "SDUI5Button3")
	SDUI5Button3.ParentID = "SDUI5Join1"
	SDUI5Button3.IconSize = "none"
	'SDUI5Button3.Image = ""
	'SDUI5Button3.ImageHeight = "32px"
	'SDUI5Button3.ImageWidth = "32px"
	SDUI5Button3.JoinItem = True
	SDUI5Button3.Size = "none"
	BANano.Await(SDUI5Button3.AddComponent)
	'
	SDUI5Button4.Initialize(Me, "SDUI5Button4", "SDUI5Button4")
	SDUI5Button4.ParentID = "SDUI5Join2"
	SDUI5Button4.IconSize = "none"
	'SDUI5Button4.Image = ""
	'SDUI5Button4.ImageHeight = "32px"
	'SDUI5Button4.ImageWidth = "32px"
	SDUI5Button4.JoinItem = True
	SDUI5Button4.Size = "none"
	BANano.Await(SDUI5Button4.AddComponent)
	'
	SDUI5Button5.Initialize(Me, "SDUI5Button5", "SDUI5Button5")
	SDUI5Button5.ParentID = "SDUI5Join2"
	SDUI5Button5.IconSize = "none"
	'SDUI5Button5.Image = ""
	'SDUI5Button5.ImageHeight = "32px"
	'SDUI5Button5.ImageWidth = "32px"
	SDUI5Button5.JoinItem = True
	SDUI5Button5.Size = "none"
	BANano.Await(SDUI5Button5.AddComponent)
	'
	SDUI5Button6.Initialize(Me, "SDUI5Button6", "SDUI5Button6")
	SDUI5Button6.ParentID = "SDUI5Join2"
	SDUI5Button6.IconSize = "none"
	'SDUI5Button6.Image = ""
	'SDUI5Button6.ImageHeight = "32px"
	'SDUI5Button6.ImageWidth = "32px"
	SDUI5Button6.JoinItem = True
	SDUI5Button6.Size = "none"
	BANano.Await(SDUI5Button6.AddComponent)
	'
	SDUI5Button7.Initialize(Me, "SDUI5Button7", "SDUI5Button7")
	SDUI5Button7.ParentID = "SDUI5Join3"
	SDUI5Button7.IconSize = "none"
	'SDUI5Button7.Image = ""
	'SDUI5Button7.ImageHeight = "32px"
	'SDUI5Button7.ImageWidth = "32px"
	SDUI5Button7.JoinItem = True
	SDUI5Button7.Size = "none"
	BANano.Await(SDUI5Button7.AddComponent)
	'
	SDUI5Button8.Initialize(Me, "SDUI5Button8", "SDUI5Button8")
	SDUI5Button8.ParentID = "SDUI5Join3"
	SDUI5Button8.IconSize = "none"
	'SDUI5Button8.Image = ""
	'SDUI5Button8.ImageHeight = "32px"
	'SDUI5Button8.ImageWidth = "32px"
	SDUI5Button8.JoinItem = True
	SDUI5Button8.Size = "none"
	BANano.Await(SDUI5Button8.AddComponent)
	'
	SDUI5Button9.Initialize(Me, "SDUI5Button9", "SDUI5Button9")
	SDUI5Button9.ParentID = "SDUI5Join3"
	SDUI5Button9.IconSize = "none"
	'SDUI5Button9.Image = ""
	'SDUI5Button9.ImageHeight = "32px"
	'SDUI5Button9.ImageWidth = "32px"
	SDUI5Button9.JoinItem = True
	SDUI5Button9.Size = "none"
	BANano.Await(SDUI5Button9.AddComponent)
	pgIndex.UpdateTitle("SDUI5Join")
End Sub

