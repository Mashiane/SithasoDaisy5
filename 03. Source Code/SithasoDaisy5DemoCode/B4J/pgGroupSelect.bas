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
	Private SDUI5GroupSelect1 As SDUI5GroupSelect		'ignore
	Private SDUI5GroupSelect2 As SDUI5GroupSelect		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
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
	SDUI5GroupSelect1.Initialize(Me, "SDUI5GroupSelect1", "SDUI5GroupSelect1")
	SDUI5GroupSelect1.ParentID = "SDUI5Column1"
	SDUI5GroupSelect1.Label = "Multiple Select"
	SDUI5GroupSelect1.Size = "sm"
	BANano.Await(SDUI5GroupSelect1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5GroupSelect2.Initialize(Me, "SDUI5GroupSelect2", "SDUI5GroupSelect2")
	SDUI5GroupSelect2.ParentID = "SDUI5Column2"
	SDUI5GroupSelect2.GroupName = "group2"
	SDUI5GroupSelect2.Label = "Single Select"
	SDUI5GroupSelect2.SingleSelect = True
	SDUI5GroupSelect2.Size = "md"
	BANano.Await(SDUI5GroupSelect2.AddComponent)
	pgIndex.UpdateTitle("SDUI5GroupSelect")
End Sub

Private Sub SDUI5GroupSelect1_Change (Selected As String)
	app.ShowToastSuccess(Selected)
End Sub


Private Sub SDUI5GroupSelect2_Change (Selected As String)
	app.ShowToastSuccess(Selected)
End Sub

