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
	Private tv2 As SDUI5TreeView
	Private cmenu1 As SDUI5ContextMenu
End Sub

Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesTreeView)
	BANano.Await(app.UsesContextMenu)
	BANano.LoadLayout(app.PageView, "treeview")
	pgIndex.UpdateTitle("SDUI5TreeView")
	'
	CreateTree
End Sub

Sub CreateTree
	treeView.clear()
	treeView.addNode("", "i1", "./assets/file-lines-solid.svg", "1", "")
	treeView.addNode("", "i2", "./assets/file-lines-solid.svg", "2", "")
	treeView.addNode("i2", "i21", "./assets/file-lines-solid.svg", "2.1", "")
	treeView.addNode("i2", "i22", "./assets/file-lines-solid.svg", "2.2", "")
	treeView.addNode("i2", "i23", "./assets/file-lines-solid.svg", "2.3", "")
	treeView.addNode("i23", "i231", "./assets/file-lines-solid.svg", "2.3.1", "")
	treeView.addNode("i23", "i232", "./assets/file-lines-solid.svg", "2.3.2", "")
	treeView.addNode("", "i3", "./assets/file-lines-solid.svg", "3", "")
	treeView.refresh()
	'
	tv2.clear()
	tv2.addNode("", "i1", "", "1", "")
	tv2.addNode("", "i2", "", "2", "")
	tv2.addNode("i2", "i21", "", "2.1", "")
	tv2.addNode("i2", "i22", "", "2.2", "")
	tv2.addNode("i2", "i23", "", "2.3", "")
	tv2.addNode("i23", "i231", "", "2.3.1", "")
	tv2.addNode("i23", "i232", "", "2.3.2", "")
	tv2.addNode("", "i3", "./assets/addfolder.svg", "3", "")
	tv2.refresh()
	'
	cmenu1.clear
	cmenu1.addItem("", "addnodeBefore", "./assets/table-column-plus-before.svg", "Add Before")
	cmenu1.addItem("", "addnodeAfter", "./assets/table-column-plus-after.svg", "Add After")
	cmenu1.addItem("", "nodeMoveLeft", "./assets/arrow-left-solid.svg", "Move Left")
	cmenu1.addItem("", "nodeMoveRight", "./assets/arrow-right-solid.svg", "Move Right")
	cmenu1.addItem("", "nodeMoveUp", "./assets/arrow-up-solid.svg", "Move Up")
	cmenu1.addItem("", "nodeMoveDown", "./assets/arrow-down-solid.svg", "Move Down")
	cmenu1.refresh
	
End Sub

Private Sub treeView_nodeDrop (e As BANanoEvent)
	Dim m As Map = app.GetMapFromEventDetail(e)
	Log("treeView_nodeDrop")
	Log(m)
End Sub

Private Sub treeView_nodeClick (e As BANanoEvent)
	Dim m As Map = app.GetMapFromEventDetail(e)
	Log("treeView_nodeClick")
	Log(m)
End Sub

Private Sub treeView_nodeChecked (e As BANanoEvent)
	Dim m As Map = app.GetMapFromEventDetail(e)
	Log("treeView_nodeChecked")
	Log(m)
End Sub

Private Sub treeView_nodeExpanded (e As BANanoEvent)
	Dim m As Map = app.GetMapFromEventDetail(e)
	Log("treeView_nodeExpanded")
	Log(m)
End Sub

Private Sub treeView_nodeCollapsed (e As BANanoEvent)
	Dim m As Map = app.GetMapFromEventDetail(e)
	Log("treeView_nodeCollapsed")
	Log(m)
End Sub

Private Sub treeView_nodeEdited (e As BANanoEvent)
	Dim m As Map = app.GetMapFromEventDetail(e)
	Log("treeView_nodeEdited")
	Log(m)
End Sub

private Sub treeView_nodeEditCancelled (e As BANanoEvent)
	Log("treeView_nodeEditCancelled")
	Dim m As Map = app.GetMapFromEventDetail(e)
	Log(m)
End Sub

Private Sub treeView_nodesSelected (e As BANanoEvent)
	Log("treeView_nodesSelected")
	Dim m As Map = app.GetMapFromEventDetail(e)
	Log(m)
End Sub

Private Sub cmenu1_ItemClick (e As BANanoEvent)
	Dim m As Map = app.GetMapFromEventDetail(e)
	Dim elementId As String = m.Get("elementId")
	Dim action As String = app.UI.GetRecursive(m, "node.nodeId")
	Dim nodeId As String = app.UI.MvField(elementId, 2, "-")
	'
	Select Case action
	Case "addnodebefore"
		treeView.addNodeBefore(nodeId, $"${nodeId}before"$, "", $"${nodeId} Before"$, "")
	Case "addnodeafter"
		treeView.addNodeAfter(nodeId, $"${nodeId}after"$, "", $"${nodeId} After"$, "")
	Case "nodemoveleft"
		treeView.nodeMoveLeft(nodeId)
	Case "nodemoveright"
		treeView.nodeMoveRight(nodeId)
	Case "nodemoveup"
		treeView.nodeMoveUp(nodeId)
	Case "nodemovedown"
		treeView.nodeMoveDown(nodeId)
	End Select
	'
	Dim nodes As List = treeView.GetTreeList
	Log(nodes)
End Sub