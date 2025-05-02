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
	Private menuTree As SDUI5Menu
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "menutreex")
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