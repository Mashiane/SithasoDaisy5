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
	Private tabs1 As SDUI5Tabs		'ignore
	Private segment1 As SDUI5Segment		'ignore
	Private tabs2 As SDUI5Tabs		'ignore
	Private tabs3 As SDUI5Tabs		'ignore
	Private SDUI5Tabs1 As SDUI5Tabs		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private tabs1item1 As SDUI5TabsItem		'ignore
	Private tabs1item2 As SDUI5TabsItem		'ignore
	Private tabs1item3 As SDUI5TabsItem		'ignore
	Private tabs1item4 As SDUI5TabsItem		'ignore
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5TabsItem1 As SDUI5TabsItem		'ignore
	Private SDUI5TabsItem2 As SDUI5TabsItem		'ignore
	Private SDUI5TabsItem3 As SDUI5TabsItem		'ignore
	Private SDUI5TabsItem4 As SDUI5TabsItem		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5TabsItem5 As SDUI5TabsItem		'ignore
	Private SDUI5TabsItem6 As SDUI5TabsItem		'ignore
	Private SDUI5TabsItem7 As SDUI5TabsItem		'ignore
	Private SDUI5TabsItem8 As SDUI5TabsItem		'ignore
	Private SDUI5Row4 As SDUI5Row		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Row5 As SDUI5Row		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
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
	SDUI5Row1.GridColsSm = "1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	tabs1.Initialize(Me, "tabs1", "tabs1")
	tabs1.ParentID = "SDUI5Column1"
	tabs1.Active = ""
	tabs1.Options = ""
	tabs1.Size = "xs"
	BANano.Await(tabs1.AddComponent)
	'
	tabs1item1.Initialize(Me, "tabs1item1", "tabs1item1")
	tabs1item1.ParentID = "tabs1"
	tabs1item1.BadgeSize = "none"
	'tabs1item1.Disabled = False
	tabs1item1.Text = "Item 1"
	BANano.Await(tabs1item1.AddComponent)
	'
	tabs1item2.Initialize(Me, "tabs1item2", "tabs1item2")
	tabs1item2.ParentID = "tabs1"
	tabs1item2.BadgeSize = "none"
	'tabs1item2.Disabled = False
	tabs1item2.Text = "Item 2"
	BANano.Await(tabs1item2.AddComponent)
	'
	tabs1item3.Initialize(Me, "tabs1item3", "tabs1item3")
	tabs1item3.ParentID = "tabs1"
	tabs1item3.BadgeSize = "none"
	'tabs1item3.Disabled = False
	tabs1item3.Text = "Item 3"
	BANano.Await(tabs1item3.AddComponent)
	'
	tabs1item4.Initialize(Me, "tabs1item4", "tabs1item4")
	tabs1item4.ParentID = "tabs1"
	tabs1item4.BadgeSize = "none"
	'tabs1item4.Disabled = False
	tabs1item4.Text = "Item 4"
	BANano.Await(tabs1item4.AddComponent)
	'
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = "SDUI5Container1"
	SDUI5Row2.GridColsSm = "1"
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row2"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	tabs2.Initialize(Me, "tabs2", "tabs2")
	tabs2.ParentID = "SDUI5Column2"
	tabs2.Active = ""
	tabs2.Placement = "bottom"
	tabs2.Options = ""
	tabs2.Size = "md"
	BANano.Await(tabs2.AddComponent)
	'
	SDUI5TabsItem1.Initialize(Me, "SDUI5TabsItem1", "SDUI5TabsItem1")
	SDUI5TabsItem1.ParentID = "tabs2"
	SDUI5TabsItem1.BadgeSize = "none"
	'SDUI5TabsItem1.Disabled = False
	SDUI5TabsItem1.Text = "Item 1"
	BANano.Await(SDUI5TabsItem1.AddComponent)
	'
	SDUI5TabsItem2.Initialize(Me, "SDUI5TabsItem2", "SDUI5TabsItem2")
	SDUI5TabsItem2.ParentID = "tabs2"
	SDUI5TabsItem2.BadgeSize = "none"
	'SDUI5TabsItem2.Disabled = False
	SDUI5TabsItem2.Text = "Item 2"
	BANano.Await(SDUI5TabsItem2.AddComponent)
	'
	SDUI5TabsItem3.Initialize(Me, "SDUI5TabsItem3", "SDUI5TabsItem3")
	SDUI5TabsItem3.ParentID = "tabs2"
	SDUI5TabsItem3.BadgeSize = "none"
	'SDUI5TabsItem3.Disabled = False
	SDUI5TabsItem3.Text = "Item 3"
	BANano.Await(SDUI5TabsItem3.AddComponent)
	'
	SDUI5TabsItem4.Initialize(Me, "SDUI5TabsItem4", "SDUI5TabsItem4")
	SDUI5TabsItem4.ParentID = "tabs2"
	SDUI5TabsItem4.BadgeSize = "none"
	'SDUI5TabsItem4.Disabled = False
	SDUI5TabsItem4.Text = "Item 4"
	BANano.Await(SDUI5TabsItem4.AddComponent)
	'
	SDUI5Row3.Initialize(Me, "SDUI5Row3", "SDUI5Row3")
	SDUI5Row3.ParentID = "SDUI5Container1"
	SDUI5Row3.GridColsSm = "1"
	BANano.Await(SDUI5Row3.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row3"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	tabs3.Initialize(Me, "tabs3", "tabs3")
	tabs3.ParentID = "SDUI5Column3"
	tabs3.Active = ""
	tabs3.Options = ""
	tabs3.Size = "lg"
	tabs3.Style = "border"
	BANano.Await(tabs3.AddComponent)
	'
	SDUI5TabsItem5.Initialize(Me, "SDUI5TabsItem5", "SDUI5TabsItem5")
	SDUI5TabsItem5.ParentID = "tabs3"
	SDUI5TabsItem5.Badge = "20"
	SDUI5TabsItem5.BadgeColor = "secondary"
	'SDUI5TabsItem5.Disabled = False
	SDUI5TabsItem5.Icon = "./assets/heart-solid.svg"
	SDUI5TabsItem5.Text = "Item 1"
	BANano.Await(SDUI5TabsItem5.AddComponent)
	'
	SDUI5TabsItem6.Initialize(Me, "SDUI5TabsItem6", "SDUI5TabsItem6")
	SDUI5TabsItem6.ParentID = "tabs3"
	SDUI5TabsItem6.BadgeSize = "none"
	'SDUI5TabsItem6.Disabled = False
	SDUI5TabsItem6.Text = "Item 2"
	BANano.Await(SDUI5TabsItem6.AddComponent)
	'
	SDUI5TabsItem7.Initialize(Me, "SDUI5TabsItem7", "SDUI5TabsItem7")
	SDUI5TabsItem7.ParentID = "tabs3"
	SDUI5TabsItem7.BadgeSize = "none"
	'SDUI5TabsItem7.Disabled = False
	SDUI5TabsItem7.Text = "Item 3"
	BANano.Await(SDUI5TabsItem7.AddComponent)
	'
	SDUI5TabsItem8.Initialize(Me, "SDUI5TabsItem8", "SDUI5TabsItem8")
	SDUI5TabsItem8.ParentID = "tabs3"
	SDUI5TabsItem8.BadgeSize = "none"
	'SDUI5TabsItem8.Disabled = False
	SDUI5TabsItem8.Text = "Item 4"
	BANano.Await(SDUI5TabsItem8.AddComponent)
	'
	SDUI5Row4.Initialize(Me, "SDUI5Row4", "SDUI5Row4")
	SDUI5Row4.ParentID = "SDUI5Container1"
	SDUI5Row4.GridColsSm = "1"
	BANano.Await(SDUI5Row4.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row4"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	segment1.Initialize(Me, "segment1", "segment1")
	segment1.ParentID = "SDUI5Column4"
	segment1.Active = "project"
	'segment1.Enabled = True
	segment1.Height = ""
	segment1.OptionWidth = ""
	segment1.Options = "project=Project View; properties=Properties; resources=Resources"
	BANano.Await(segment1.AddComponent)
	'
	SDUI5Row5.Initialize(Me, "SDUI5Row5", "SDUI5Row5")
	SDUI5Row5.ParentID = "SDUI5Container1"
	SDUI5Row5.GridColsSm = "1"
	BANano.Await(SDUI5Row5.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row5"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Tabs1.Initialize(Me, "SDUI5Tabs1", "SDUI5Tabs1")
	SDUI5Tabs1.ParentID = "SDUI5Column5"
	SDUI5Tabs1.Active = "project"
	SDUI5Tabs1.Options = "project=Project View; properties=Properties; resources=Resources"
	SDUI5Tabs1.Size = "lg"
	SDUI5Tabs1.Width = "full"
	BANano.Await(SDUI5Tabs1.AddComponent)
	pgIndex.UpdateTitle("SDUI5Tabs")
	
	'update an existing tabitem
	Dim prj As SDUI5TabsItem = SDUI5Tabs1.TabItem("project")
	prj.Icon = "./assets/search.svg"
	prj.Badge = "+99"
	prj.BadgeColor = app.COLOR_PRIMARY
	
	
	Dim prj1 As SDUI5TabsItem = BANano.Await(segment1.TabItem("project"))
	Log(prj1)
	
	prj1.Icon = "./assets/search.svg"
	prj1.Badge = "+50"
	prj1.BadgeColor = app.COLOR_SECONDARY
End Sub

Private Sub tabs1_Change (Item As String)
	app.ShowToastSuccess(Item)
End Sub

Private Sub segment1_Change (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub tabs3_Change (Item As String)
	app.ShowToastSuccess(Item)
End Sub

Private Sub tabs2_Change (Item As String)
	app.ShowToastSuccess(Item)
End Sub

Private Sub SDUI5Tabs1_Change (Item As String)
	app.ShowToastInfo(Item)
End Sub

