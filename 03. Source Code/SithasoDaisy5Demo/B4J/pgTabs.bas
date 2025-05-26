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
	Private tabs1 As SDUI5Tabs
	Private segment1 As SDUI5Segment
	Private tabs2 As SDUI5Tabs
	Private tabs3 As SDUI5Tabs
	Private SDUI5Tabs1 As SDUI5Tabs
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "tabsview")
	pgIndex.UpdateTitle("SDUI5Tabs")
	
	'update an existing tabitem
	Dim prj As SDUI5TabsItem = SDUI5Tabs1.TabItem("project")
	prj.IconSize = "20px"
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