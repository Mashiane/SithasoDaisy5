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
	Private SDUI5Filter1 As SDUI5Filter		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Filter2 As SDUI5Filter		'ignore
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
	SDUI5Column1.Size = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Filter1.Initialize(Me, "SDUI5Filter1", "SDUI5Filter1")
	SDUI5Filter1.ParentID = "SDUI5Column1"
	SDUI5Filter1.Label = "Choose Language"
	SDUI5Filter1.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Filter1.Required = True
	SDUI5Filter1.Shape = "square"
	SDUI5Filter1.TypeOf = "legend"
	SDUI5Filter1.Value = "b4i"
	BANano.Await(SDUI5Filter1.AddComponent)
	'
	SDUI5Filter2.Initialize(Me, "SDUI5Filter2", "SDUI5Filter2")
	SDUI5Filter2.ParentID = "SDUI5Column2"
	SDUI5Filter2.Value = "b4j"
	BANano.Await(SDUI5Filter2.AddComponent)
	pgIndex.UpdateTitle("SDUI5Filter")
End Sub

Private Sub SDUI5Filter1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

