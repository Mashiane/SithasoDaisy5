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
	Private SDUI5Join1 As SDUI5Join		'ignore
	Private SDUI5Button1 As SDUI5Button		'ignore
	Private SDUI5Button2 As SDUI5Button		'ignore
	Private SDUI5Button3 As SDUI5Button		'ignore
	Private SDUI5Button4 As SDUI5Button		'ignore
	Private SDUI5Button5 As SDUI5Button		'ignore
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Join2 As SDUI5Join		'ignore
	Private SDUI5Button6 As SDUI5Button		'ignore
	Private SDUI5Button7 As SDUI5Button		'ignore
	Private SDUI5Button8 As SDUI5Button		'ignore
	Private SDUI5Button9 As SDUI5Button		'ignore
	Private SDUI5Button10 As SDUI5Button		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Join3 As SDUI5Join		'ignore
	Private SDUI5Button11 As SDUI5Button		'ignore
	Private SDUI5Button12 As SDUI5Button		'ignore
	Private SDUI5Button13 As SDUI5Button		'ignore
	Private SDUI5Button14 As SDUI5Button		'ignore
	Private SDUI5Button15 As SDUI5Button		'ignore
	Private SDUI5Row4 As SDUI5Row		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Join4 As SDUI5Join		'ignore
	Private SDUI5Button16 As SDUI5Button		'ignore
	Private SDUI5Button17 As SDUI5Button		'ignore
	Private SDUI5Button18 As SDUI5Button		'ignore
	Private SDUI5Row5 As SDUI5Row		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Join5 As SDUI5Join		'ignore
	Private SDUI5Button19 As SDUI5Button		'ignore
	Private SDUI5Button20 As SDUI5Button		'ignore
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
	SDUI5Join1.Initialize(Me, "SDUI5Join1", "SDUI5Join1")
	SDUI5Join1.ParentID = "SDUI5Column1"
	BANano.Await(SDUI5Join1.AddComponent)
	'
	SDUI5Button1.Initialize(Me, "SDUI5Button1", "SDUI5Button1")
	SDUI5Button1.ParentID = "SDUI5Join1"
	SDUI5Button1.IconSize = "none"
	'SDUI5Button1.Image = ""
	'SDUI5Button1.ImageHeight = "32px"
	'SDUI5Button1.ImageWidth = "32px"
	SDUI5Button1.JoinItem = True
	SDUI5Button1.Size = "none"
	SDUI5Button1.Text = "1"
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
	SDUI5Button2.Text = "2"
	BANano.Await(SDUI5Button2.AddComponent)
	'
	SDUI5Button3.Initialize(Me, "SDUI5Button3", "SDUI5Button3")
	SDUI5Button3.ParentID = "SDUI5Join1"
	SDUI5Button3.Active = True
	SDUI5Button3.IconSize = "none"
	'SDUI5Button3.Image = ""
	'SDUI5Button3.ImageHeight = "32px"
	'SDUI5Button3.ImageWidth = "32px"
	SDUI5Button3.JoinItem = True
	SDUI5Button3.Size = "none"
	SDUI5Button3.Text = "3"
	BANano.Await(SDUI5Button3.AddComponent)
	'
	SDUI5Button4.Initialize(Me, "SDUI5Button4", "SDUI5Button4")
	SDUI5Button4.ParentID = "SDUI5Join1"
	SDUI5Button4.IconSize = "none"
	'SDUI5Button4.Image = ""
	'SDUI5Button4.ImageHeight = "32px"
	'SDUI5Button4.ImageWidth = "32px"
	SDUI5Button4.JoinItem = True
	SDUI5Button4.Size = "none"
	SDUI5Button4.Text = "4"
	BANano.Await(SDUI5Button4.AddComponent)
	'
	SDUI5Button5.Initialize(Me, "SDUI5Button5", "SDUI5Button5")
	SDUI5Button5.ParentID = "SDUI5Join1"
	SDUI5Button5.IconSize = "none"
	'SDUI5Button5.Image = ""
	'SDUI5Button5.ImageHeight = "32px"
	'SDUI5Button5.ImageWidth = "32px"
	SDUI5Button5.JoinItem = True
	SDUI5Button5.Size = "none"
	SDUI5Button5.Text = "5"
	BANano.Await(SDUI5Button5.AddComponent)
	'
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row2"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Join2.Initialize(Me, "SDUI5Join2", "SDUI5Join2")
	SDUI5Join2.ParentID = "SDUI5Column2"
	BANano.Await(SDUI5Join2.AddComponent)
	'
	SDUI5Button6.Initialize(Me, "SDUI5Button6", "SDUI5Button6")
	SDUI5Button6.ParentID = "SDUI5Join2"
	SDUI5Button6.IconSize = "none"
	'SDUI5Button6.Image = ""
	'SDUI5Button6.ImageHeight = "32px"
	'SDUI5Button6.ImageWidth = "32px"
	SDUI5Button6.JoinItem = True
	SDUI5Button6.Size = "sm"
	SDUI5Button6.Text = "1"
	BANano.Await(SDUI5Button6.AddComponent)
	'
	SDUI5Button7.Initialize(Me, "SDUI5Button7", "SDUI5Button7")
	SDUI5Button7.ParentID = "SDUI5Join2"
	SDUI5Button7.IconSize = "none"
	'SDUI5Button7.Image = ""
	'SDUI5Button7.ImageHeight = "32px"
	'SDUI5Button7.ImageWidth = "32px"
	SDUI5Button7.JoinItem = True
	SDUI5Button7.Size = "sm"
	SDUI5Button7.Text = "2"
	BANano.Await(SDUI5Button7.AddComponent)
	'
	SDUI5Button8.Initialize(Me, "SDUI5Button8", "SDUI5Button8")
	SDUI5Button8.ParentID = "SDUI5Join2"
	SDUI5Button8.Active = True
	SDUI5Button8.IconSize = "none"
	'SDUI5Button8.Image = ""
	'SDUI5Button8.ImageHeight = "32px"
	'SDUI5Button8.ImageWidth = "32px"
	SDUI5Button8.JoinItem = True
	SDUI5Button8.Size = "sm"
	SDUI5Button8.Text = "3"
	BANano.Await(SDUI5Button8.AddComponent)
	'
	SDUI5Button9.Initialize(Me, "SDUI5Button9", "SDUI5Button9")
	SDUI5Button9.ParentID = "SDUI5Join2"
	SDUI5Button9.IconSize = "none"
	'SDUI5Button9.Image = ""
	'SDUI5Button9.ImageHeight = "32px"
	'SDUI5Button9.ImageWidth = "32px"
	SDUI5Button9.JoinItem = True
	SDUI5Button9.Size = "sm"
	SDUI5Button9.Text = "4"
	BANano.Await(SDUI5Button9.AddComponent)
	'
	SDUI5Button10.Initialize(Me, "SDUI5Button10", "SDUI5Button10")
	SDUI5Button10.ParentID = "SDUI5Join2"
	SDUI5Button10.IconSize = "none"
	'SDUI5Button10.Image = ""
	'SDUI5Button10.ImageHeight = "32px"
	'SDUI5Button10.ImageWidth = "32px"
	SDUI5Button10.JoinItem = True
	SDUI5Button10.Size = "sm"
	SDUI5Button10.Text = "5"
	BANano.Await(SDUI5Button10.AddComponent)
	'
	SDUI5Row3.Initialize(Me, "SDUI5Row3", "SDUI5Row3")
	SDUI5Row3.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row3.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row3"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Join3.Initialize(Me, "SDUI5Join3", "SDUI5Join3")
	SDUI5Join3.ParentID = "SDUI5Column3"
	BANano.Await(SDUI5Join3.AddComponent)
	'
	SDUI5Button11.Initialize(Me, "SDUI5Button11", "SDUI5Button11")
	SDUI5Button11.ParentID = "SDUI5Join3"
	SDUI5Button11.IconSize = "none"
	'SDUI5Button11.Image = ""
	'SDUI5Button11.ImageHeight = "32px"
	'SDUI5Button11.ImageWidth = "32px"
	SDUI5Button11.JoinItem = True
	SDUI5Button11.Size = "sm"
	SDUI5Button11.Text = "1"
	BANano.Await(SDUI5Button11.AddComponent)
	'
	SDUI5Button12.Initialize(Me, "SDUI5Button12", "SDUI5Button12")
	SDUI5Button12.ParentID = "SDUI5Join3"
	SDUI5Button12.IconSize = "none"
	'SDUI5Button12.Image = ""
	'SDUI5Button12.ImageHeight = "32px"
	'SDUI5Button12.ImageWidth = "32px"
	SDUI5Button12.JoinItem = True
	SDUI5Button12.Size = "sm"
	SDUI5Button12.Text = "2"
	BANano.Await(SDUI5Button12.AddComponent)
	'
	SDUI5Button13.Initialize(Me, "SDUI5Button13", "SDUI5Button13")
	SDUI5Button13.ParentID = "SDUI5Join3"
	SDUI5Button13.IconSize = "none"
	'SDUI5Button13.Image = ""
	'SDUI5Button13.ImageHeight = "32px"
	'SDUI5Button13.ImageWidth = "32px"
	SDUI5Button13.JoinItem = True
	SDUI5Button13.Size = "sm"
	SDUI5Button13.Text = "3"
	BANano.Await(SDUI5Button13.AddComponent)
	'
	SDUI5Button14.Initialize(Me, "SDUI5Button14", "SDUI5Button14")
	SDUI5Button14.ParentID = "SDUI5Join3"
	SDUI5Button14.IconSize = "none"
	'SDUI5Button14.Image = ""
	'SDUI5Button14.ImageHeight = "32px"
	'SDUI5Button14.ImageWidth = "32px"
	SDUI5Button14.JoinItem = True
	SDUI5Button14.Size = "sm"
	SDUI5Button14.Text = "4"
	BANano.Await(SDUI5Button14.AddComponent)
	'
	SDUI5Button15.Initialize(Me, "SDUI5Button15", "SDUI5Button15")
	SDUI5Button15.ParentID = "SDUI5Join3"
	SDUI5Button15.IconSize = "none"
	'SDUI5Button15.Image = ""
	'SDUI5Button15.ImageHeight = "32px"
	'SDUI5Button15.ImageWidth = "32px"
	SDUI5Button15.JoinItem = True
	SDUI5Button15.Size = "sm"
	SDUI5Button15.Text = "5"
	BANano.Await(SDUI5Button15.AddComponent)
	'
	SDUI5Row4.Initialize(Me, "SDUI5Row4", "SDUI5Row4")
	SDUI5Row4.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row4.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row4"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Join4.Initialize(Me, "SDUI5Join4", "SDUI5Join4")
	SDUI5Join4.ParentID = "SDUI5Column4"
	BANano.Await(SDUI5Join4.AddComponent)
	'
	SDUI5Button16.Initialize(Me, "SDUI5Button16", "SDUI5Button16")
	SDUI5Button16.ParentID = "SDUI5Join4"
	SDUI5Button16.IconSize = "none"
	'SDUI5Button16.Image = "./assets/left.svg"
	'SDUI5Button16.ImageHeight = "16px"
	'SDUI5Button16.ImageWidth = "16px"
	SDUI5Button16.JoinItem = True
	SDUI5Button16.Size = "sm"
	SDUI5Button16.Text = ""
	BANano.Await(SDUI5Button16.AddComponent)
	'
	SDUI5Button17.Initialize(Me, "SDUI5Button17", "SDUI5Button17")
	SDUI5Button17.ParentID = "SDUI5Join4"
	SDUI5Button17.IconSize = "none"
	'SDUI5Button17.Image = ""
	'SDUI5Button17.ImageHeight = "32px"
	'SDUI5Button17.ImageWidth = "32px"
	SDUI5Button17.JoinItem = True
	SDUI5Button17.Size = "sm"
	SDUI5Button17.Text = "Page 22"
	BANano.Await(SDUI5Button17.AddComponent)
	'
	SDUI5Button18.Initialize(Me, "SDUI5Button18", "SDUI5Button18")
	SDUI5Button18.ParentID = "SDUI5Join4"
	SDUI5Button18.IconSize = "none"
	'SDUI5Button18.Image = "./assets/right.svg"
	'SDUI5Button18.ImageHeight = "16px"
	'SDUI5Button18.ImageWidth = "16px"
	SDUI5Button18.JoinItem = True
	SDUI5Button18.Size = "sm"
	SDUI5Button18.Text = ""
	BANano.Await(SDUI5Button18.AddComponent)
	'
	SDUI5Row5.Initialize(Me, "SDUI5Row5", "SDUI5Row5")
	SDUI5Row5.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row5.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row5"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = "3"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Join5.Initialize(Me, "SDUI5Join5", "SDUI5Join5")
	SDUI5Join5.ParentID = "SDUI5Column5"
	SDUI5Join5.Grid = True
	SDUI5Join5.GridCols = "2"
	BANano.Await(SDUI5Join5.AddComponent)
	'
	SDUI5Button19.Initialize(Me, "SDUI5Button19", "SDUI5Button19")
	SDUI5Button19.ParentID = "SDUI5Join5"
	SDUI5Button19.IconSize = "none"
	'SDUI5Button19.Image = ""
	'SDUI5Button19.ImageHeight = "16px"
	'SDUI5Button19.ImageWidth = "16px"
	SDUI5Button19.JoinItem = True
	SDUI5Button19.Outline = True
	SDUI5Button19.Size = "sm"
	SDUI5Button19.Text = "Previous"
	BANano.Await(SDUI5Button19.AddComponent)
	'
	SDUI5Button20.Initialize(Me, "SDUI5Button20", "SDUI5Button20")
	SDUI5Button20.ParentID = "SDUI5Join5"
	SDUI5Button20.IconSize = "none"
	'SDUI5Button20.Image = ""
	'SDUI5Button20.ImageHeight = "32px"
	'SDUI5Button20.ImageWidth = "32px"
	SDUI5Button20.JoinItem = True
	SDUI5Button20.Outline = True
	SDUI5Button20.Size = "sm"
	SDUI5Button20.Text = "Next"
	BANano.Await(SDUI5Button20.AddComponent)
	pgIndex.UpdateTitle("SDUI5Join")
End Sub

