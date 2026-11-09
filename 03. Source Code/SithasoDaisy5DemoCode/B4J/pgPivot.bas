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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Pivot1 As SDUI5Pivot		'ignore
	Private btnLocal As SDUI5Button
	Private btnRemote As SDUI5Button
	Private btnExpand As SDUI5Button
	Private btnCollapse As SDUI5Button
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesPivot)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	btnLocal.Initialize(Me, "btnLocal", "btnLocal")
	btnLocal.ParentID = "SDUI5Column1"
	btnLocal.Text = "Load Local JSON"
	btnLocal.Color = "primary"
	btnLocal.MarginAXYTBLR = "r=2; b=2"
	BANano.Await(btnLocal.AddComponent)
	'
	btnRemote.Initialize(Me, "btnRemote", "btnRemote")
	btnRemote.ParentID = "SDUI5Column1"
	btnRemote.Text = "Load Remote JSON"
	btnRemote.Color = "secondary"
	btnRemote.MarginAXYTBLR = "r=2; b=2"
	BANano.Await(btnRemote.AddComponent)
	'
	btnExpand.Initialize(Me, "btnExpand", "btnExpand")
	btnExpand.ParentID = "SDUI5Column1"
	btnExpand.Text = "Expand All"
	btnExpand.Color = "neutral"
	btnExpand.MarginAXYTBLR = "r=2; b=2"
	BANano.Await(btnExpand.AddComponent)
	'
	btnCollapse.Initialize(Me, "btnCollapse", "btnCollapse")
	btnCollapse.ParentID = "SDUI5Column1"
	btnCollapse.Text = "Collapse All"
	btnCollapse.Color = "neutral"
	btnCollapse.MarginAXYTBLR = "r=2; b=2"
	BANano.Await(btnCollapse.AddComponent)
	'
	SDUI5Pivot1.Initialize(Me, "SDUI5Pivot1", "SDUI5Pivot1")
	SDUI5Pivot1.ParentID = "SDUI5Column1"
	SDUI5Pivot1.DataSourceFileName = "./assets/sales.json"
	BANano.Await(SDUI5Pivot1.AddComponent)
	pgIndex.UpdateTitle("SDUI5Pivot")
End Sub

Private Sub btnLocal_Click (e As BANanoEvent)
	SDUI5Pivot1.SetFileName("./assets/sales.json")
	app.ShowToastSuccess("Loaded local sales.json")
End Sub

Private Sub btnRemote_Click (e As BANanoEvent)
	SDUI5Pivot1.SetFileName("https://cdn.webdatarocks.com/data/data.json")
	app.ShowToastSuccess("Loaded remote data.json")
End Sub

Private Sub btnExpand_Click (e As BANanoEvent)
	SDUI5Pivot1.ExpandAllData
End Sub

Private Sub btnCollapse_Click (e As BANanoEvent)
	SDUI5Pivot1.CollapseAllData
End Sub
