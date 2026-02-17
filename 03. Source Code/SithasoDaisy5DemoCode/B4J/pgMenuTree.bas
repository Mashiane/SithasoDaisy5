B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private menuTree As SDUI5Menu		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
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
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = "4"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "4"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "4"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	menuTree.Initialize(Me, "menuTree", "menuTree")
	menuTree.ParentID = "SDUI5Column1"
	menuTree.HasCheckBox = True
	menuTree.MinHeight = ""
	menuTree.ItemClasses = ""
	menuTree.ItemStyles = ""
	menuTree.Shadow = "lg"
	BANano.Await(menuTree.AddComponent)
	pgIndex.UpdateTitle("SDUI5Menu - Tree")
	'
	menuTree.Clear
	menuTree.AddItemParent("", "face1", "", "Menu Item 1")
	menuTree.AddItemChild("face1", "face1item1", "", "Item 1 SubItem 1")
	menuTree.AddItemChild("face1", "face2item2", "", "Item 1 SubItem 2")
	menuTree.AddItemChild("face1", "face3item3", "", "Item 1 SubItem 3")
	
	menuTree.AddItemParent("", "face2", "", "Menu Item 2")
	menuTree.AddItemChild("face2", "face2item1", "", "Item 2 SubItem 1")
	menuTree.AddItemChild("face2", "face2item2", "", "Item 2 SubItem 2")
	
	menuTree.AddItemParent("", "face3", "", "Menu Item 3")
	menuTree.AddItemChild("face3", "face3item1", "", "Item 3 SubItem 1")
	menuTree.AddItemChild("face3", "face3item2", "", "Item 3 SubItem 2")
	
	menuTree.AddItemParent("", "face4", "", "Menu Item 4")
	menuTree.AddItemChild("face4", "face4item1", "", "Item 4 SubItem 1")
	menuTree.AddItemChild("face4", "face4item2", "", "Item 4 SubItem 2")
	
	menuTree.AddItemParent("", "face5", "", "Menu Item 5")
	menuTree.AddItemChild("face5", "face5item1", "", "Item 5 SubItem 1")
	menuTree.AddItemChild("face5", "face5item2", "", "Item 5 SubItem 2")
End Sub

Private Sub menuTree_ItemClick (item As String)
	app.ShowToastInfo(item)	
End Sub

Private Sub menuTree_Change (Value As String)
	app.ShowToastInfo(Value)
End Sub

