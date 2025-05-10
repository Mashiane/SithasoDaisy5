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
	Private treeView As SDUI5TreeView		'ignore
End Sub

Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesTreeView)
	BANano.LoadLayout(app.PageView, "treeview")
	pgIndex.UpdateTitle("SDUI5TreeView")
	'
	CreateTree
End Sub

Sub CreateTree
	treeView.clear()
	treeView.addNode("", "i1", "", "1", "")
	treeView.addNode("", "i2", "", "2", "")
	treeView.addNode("i2", "i21", "", "2.1", "")
	treeView.addNode("i2", "i22", "", "2.2", "")
	treeView.addNode("i2", "i23", "", "2.3", "")
	treeView.addNode("i23", "i231", "", "2.3.1", "")
	treeView.addNode("i23", "i232", "", "2.3.2", "")
	treeView.addNode("", "i3", "./assets/addfolder.svg", "3", "")
	treeView.refresh()
End Sub

Private Sub treeView_nodeDrop (e As BANanoEvent)
	Log("treeView_nodeDrop")
	Log(e.Detail)
End Sub

Private Sub treeView_nodeClick (e As BANanoEvent)
	Log("treeView_nodeClick")
	Log(e.Detail)
End Sub

Private Sub treeView_nodeChecked (e As BANanoEvent)
	Log("treeView_nodeChecked")
	Log(e.Detail)
End Sub

Private Sub treeView_nodeExpanded (e As BANanoEvent)
	Log("treeView_nodeExpanded")
	Log(e.Detail)
End Sub

Private Sub treeView_nodeCollapsed (e As BANanoEvent)
	Log("treeView_nodeCollapsed")
	Log(e.Detail)
End Sub

Private Sub treeView_nodeEdited (e As BANanoEvent)
	Log("treeView_nodeEdited")
	Log(e.Detail)
End Sub

private Sub treeView_nodeEditCancelled (e As BANanoEvent)
	Log("treeView_nodeEditCancelled")
	Log(e.Detail)
End Sub

Private Sub treeView_nodesSelected (e As BANanoEvent)
	Log("treeView_nodesSelected")
	Log(e.Detail)
End Sub