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
	Private bc1 As SDUI5BreadCrumbs		'ignore
	Private SDUI5Link1 As SDUI5Link		'ignore
	Private SDUI5Link2 As SDUI5Link		'ignore
	Private SDUI5Text1 As SDUI5Text		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private bc2 As SDUI5BreadCrumbs		'ignore
	Private SDUI5Link3 As SDUI5Link		'ignore
	Private SDUI5Link4 As SDUI5Link		'ignore
	Private SDUI5Text2 As SDUI5Text		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private bc3 As SDUI5BreadCrumbs		'ignore
	Private SDUI5Link5 As SDUI5Link		'ignore
	Private SDUI5Link6 As SDUI5Link		'ignore
	Private SDUI5Text3 As SDUI5Text		'ignore
	Private SDUI5Text4 As SDUI5Text		'ignore
	Private SDUI5Text5 As SDUI5Text		'ignore
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
	SDUI5Column1.SizeMd = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	bc1.Initialize(Me, "bc1", "bc1")
	bc1.ParentID = "SDUI5Column1"
	BANano.Await(bc1.AddComponent)
	'
	SDUI5Link1.Initialize(Me, "SDUI5Link1", "SDUI5Link1")
	SDUI5Link1.ParentID = "bc1_content"
	SDUI5Link1.Hover = True
    SDUI5Link1.CustProps.Put("ListItem", True)
	SDUI5Link1.Text = "Home"
	BANano.Await(SDUI5Link1.AddComponent)
	'
	SDUI5Link2.Initialize(Me, "SDUI5Link2", "SDUI5Link2")
	SDUI5Link2.ParentID = "bc1_content"
	SDUI5Link2.Hover = True
    SDUI5Link2.CustProps.Put("ListItem", True)
	SDUI5Link2.Text = "Documents"
	BANano.Await(SDUI5Link2.AddComponent)
	'
	SDUI5Text1.Initialize(Me, "SDUI5Text1", "SDUI5Text1")
	SDUI5Text1.ParentID = "bc1_content"
	SDUI5Text1.ApplyDefaults = False
	SDUI5Text1.IconSize = "none"
	'SDUI5Text1.LoremIpsum = False
	'SDUI5Text1.Rounded = "none"
	'SDUI5Text1.Shadow = "none"
	SDUI5Text1.Text = "Add Document"
	SDUI5Text1.TextTag = "li"
	BANano.Await(SDUI5Text1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	bc2.Initialize(Me, "bc2", "bc2")
	bc2.ParentID = "SDUI5Column2"
	BANano.Await(bc2.AddComponent)
	'
	SDUI5Link3.Initialize(Me, "SDUI5Link3", "SDUI5Link3")
	SDUI5Link3.ParentID = "bc2_content"
	SDUI5Link3.Hover = True
	SDUI5Link3.Icon = "./assets/folderblue.svg"
    SDUI5Link3.CustProps.Put("ListItem", True)
	SDUI5Link3.Text = "Home"
	BANano.Await(SDUI5Link3.AddComponent)
	'
	SDUI5Link4.Initialize(Me, "SDUI5Link4", "SDUI5Link4")
	SDUI5Link4.ParentID = "bc2_content"
	SDUI5Link4.Hover = True
	SDUI5Link4.Icon = "./assets/folderblue.svg"
    SDUI5Link4.CustProps.Put("ListItem", True)
	SDUI5Link4.Text = "Documents"
	BANano.Await(SDUI5Link4.AddComponent)
	'
	SDUI5Text2.Initialize(Me, "SDUI5Text2", "SDUI5Text2")
	SDUI5Text2.ParentID = "bc2_content"
	SDUI5Text2.ApplyDefaults = False
	SDUI5Text2.Icon = "./assets/folderblue.svg"
	SDUI5Text2.IconSize = "24px"
	'SDUI5Text2.LoremIpsum = False
	'SDUI5Text2.Rounded = "none"
	'SDUI5Text2.Shadow = "none"
	SDUI5Text2.Text = "Add Document"
	SDUI5Text2.TextTag = "li"
	BANano.Await(SDUI5Text2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	bc3.Initialize(Me, "bc3", "bc3")
	bc3.ParentID = "SDUI5Column3"
	bc3.MaxWidth = "xs"
	BANano.Await(bc3.AddComponent)
	'
	SDUI5Link5.Initialize(Me, "SDUI5Link5", "SDUI5Link5")
	SDUI5Link5.ParentID = "bc3_content"
	SDUI5Link5.Hover = True
	SDUI5Link5.Icon = "./assets/folderblue.svg"
    SDUI5Link5.CustProps.Put("ListItem", True)
	SDUI5Link5.Text = "Link 1"
	BANano.Await(SDUI5Link5.AddComponent)
	'
	SDUI5Link6.Initialize(Me, "SDUI5Link6", "SDUI5Link6")
	SDUI5Link6.ParentID = "bc3_content"
	SDUI5Link6.Hover = True
	SDUI5Link6.Icon = "./assets/folderblue.svg"
    SDUI5Link6.CustProps.Put("ListItem", True)
	SDUI5Link6.Text = "Link 2"
	BANano.Await(SDUI5Link6.AddComponent)
	'
	SDUI5Text3.Initialize(Me, "SDUI5Text3", "SDUI5Text3")
	SDUI5Text3.ParentID = "bc3_content"
	SDUI5Text3.ApplyDefaults = False
	SDUI5Text3.Icon = "./assets/folderblue.svg"
	SDUI5Text3.IconSize = "24px"
	'SDUI5Text3.LoremIpsum = False
	'SDUI5Text3.Rounded = "none"
	'SDUI5Text3.Shadow = "none"
	SDUI5Text3.Text = "Link 3"
	SDUI5Text3.TextTag = "li"
	BANano.Await(SDUI5Text3.AddComponent)
	'
	SDUI5Text4.Initialize(Me, "SDUI5Text4", "SDUI5Text4")
	SDUI5Text4.ParentID = "bc3_content"
	SDUI5Text4.ApplyDefaults = False
	SDUI5Text4.Icon = "./assets/folderblue.svg"
	SDUI5Text4.IconSize = "24px"
	'SDUI5Text4.LoremIpsum = False
	'SDUI5Text4.Rounded = "none"
	'SDUI5Text4.Shadow = "none"
	SDUI5Text4.Text = "Link 4"
	SDUI5Text4.TextTag = "li"
	BANano.Await(SDUI5Text4.AddComponent)
	'
	SDUI5Text5.Initialize(Me, "SDUI5Text5", "SDUI5Text5")
	SDUI5Text5.ParentID = "bc3_content"
	SDUI5Text5.ApplyDefaults = False
	SDUI5Text5.Icon = "./assets/folderblue.svg"
	SDUI5Text5.IconSize = "24px"
	'SDUI5Text5.LoremIpsum = False
	'SDUI5Text5.Rounded = "none"
	'SDUI5Text5.Shadow = "none"
	SDUI5Text5.Text = "Link 5"
	SDUI5Text5.TextTag = "li"
	BANano.Await(SDUI5Text5.AddComponent)
	pgIndex.UpdateTitle("SDUI5BreadCrumbs")
End Sub


