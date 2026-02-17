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
	Private SDUI5Range17 As SDUI5Range		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Range1 As SDUI5Range		'ignore
	Private SDUI5Range2 As SDUI5Range		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Range3 As SDUI5Range		'ignore
	Private SDUI5Range4 As SDUI5Range		'ignore
	Private SDUI5Range5 As SDUI5Range		'ignore
	Private SDUI5Range6 As SDUI5Range		'ignore
	Private SDUI5Range7 As SDUI5Range		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Range8 As SDUI5Range		'ignore
	Private SDUI5Range9 As SDUI5Range		'ignore
	Private SDUI5Range10 As SDUI5Range		'ignore
	Private SDUI5Range11 As SDUI5Range		'ignore
	Private SDUI5Range12 As SDUI5Range		'ignore
	Private SDUI5Range13 As SDUI5Range		'ignore
	Private SDUI5Range14 As SDUI5Range		'ignore
	Private SDUI5Range15 As SDUI5Range		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Range16 As SDUI5Range		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Range18 As SDUI5Range		'ignore
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
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Range1.Initialize(Me, "SDUI5Range1", "SDUI5Range1")
	SDUI5Range1.ParentID = "SDUI5Column1"
	SDUI5Range1.BackgroundColor = ""
	SDUI5Range1.StepValue = ""
	BANano.Await(SDUI5Range1.AddComponent)
	'
	SDUI5Range2.Initialize(Me, "SDUI5Range2", "SDUI5Range2")
	SDUI5Range2.ParentID = "SDUI5Column2"
	SDUI5Range2.BackgroundColor = ""
	SDUI5Range2.Border = False
	SDUI5Range2.BorderColor = ""
	SDUI5Range2.RangeType = "legend"
	SDUI5Range2.StepValue = ""
	BANano.Await(SDUI5Range2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Range3.Initialize(Me, "SDUI5Range3", "SDUI5Range3")
	SDUI5Range3.ParentID = "SDUI5Column3"
	SDUI5Range3.BackgroundColor = ""
	SDUI5Range3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range3.Size = "xs"
	SDUI5Range3.StepValue = ""
	BANano.Await(SDUI5Range3.AddComponent)
	'
	SDUI5Range4.Initialize(Me, "SDUI5Range4", "SDUI5Range4")
	SDUI5Range4.ParentID = "SDUI5Column3"
	SDUI5Range4.BackgroundColor = ""
	SDUI5Range4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range4.Size = "sm"
	SDUI5Range4.StepValue = ""
	BANano.Await(SDUI5Range4.AddComponent)
	'
	SDUI5Range5.Initialize(Me, "SDUI5Range5", "SDUI5Range5")
	SDUI5Range5.ParentID = "SDUI5Column3"
	SDUI5Range5.BackgroundColor = ""
	SDUI5Range5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range5.Size = "md"
	SDUI5Range5.StepValue = ""
	BANano.Await(SDUI5Range5.AddComponent)
	'
	SDUI5Range6.Initialize(Me, "SDUI5Range6", "SDUI5Range6")
	SDUI5Range6.ParentID = "SDUI5Column3"
	SDUI5Range6.BackgroundColor = ""
	SDUI5Range6.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range6.Size = "lg"
	SDUI5Range6.StepValue = ""
	BANano.Await(SDUI5Range6.AddComponent)
	'
	SDUI5Range7.Initialize(Me, "SDUI5Range7", "SDUI5Range7")
	SDUI5Range7.ParentID = "SDUI5Column3"
	SDUI5Range7.BackgroundColor = ""
	SDUI5Range7.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range7.Size = "xl"
	SDUI5Range7.StepValue = ""
	BANano.Await(SDUI5Range7.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Range8.Initialize(Me, "SDUI5Range8", "SDUI5Range8")
	SDUI5Range8.ParentID = "SDUI5Column4"
	SDUI5Range8.BackgroundColor = ""
	SDUI5Range8.Color = "accent"
	SDUI5Range8.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range8.StepValue = ""
	BANano.Await(SDUI5Range8.AddComponent)
	'
	SDUI5Range9.Initialize(Me, "SDUI5Range9", "SDUI5Range9")
	SDUI5Range9.ParentID = "SDUI5Column4"
	SDUI5Range9.BackgroundColor = ""
	SDUI5Range9.Color = "error"
	SDUI5Range9.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range9.StepValue = ""
	BANano.Await(SDUI5Range9.AddComponent)
	'
	SDUI5Range10.Initialize(Me, "SDUI5Range10", "SDUI5Range10")
	SDUI5Range10.ParentID = "SDUI5Column4"
	SDUI5Range10.BackgroundColor = ""
	SDUI5Range10.Color = "info"
	SDUI5Range10.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range10.StepValue = ""
	BANano.Await(SDUI5Range10.AddComponent)
	'
	SDUI5Range11.Initialize(Me, "SDUI5Range11", "SDUI5Range11")
	SDUI5Range11.ParentID = "SDUI5Column4"
	SDUI5Range11.BackgroundColor = ""
	SDUI5Range11.Color = "neutral"
	SDUI5Range11.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range11.StepValue = ""
	BANano.Await(SDUI5Range11.AddComponent)
	'
	SDUI5Range12.Initialize(Me, "SDUI5Range12", "SDUI5Range12")
	SDUI5Range12.ParentID = "SDUI5Column4"
	SDUI5Range12.BackgroundColor = ""
	SDUI5Range12.Color = "primary"
	SDUI5Range12.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range12.StepValue = ""
	BANano.Await(SDUI5Range12.AddComponent)
	'
	SDUI5Range13.Initialize(Me, "SDUI5Range13", "SDUI5Range13")
	SDUI5Range13.ParentID = "SDUI5Column4"
	SDUI5Range13.BackgroundColor = ""
	SDUI5Range13.Color = "secondary"
	SDUI5Range13.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range13.StepValue = ""
	BANano.Await(SDUI5Range13.AddComponent)
	'
	SDUI5Range14.Initialize(Me, "SDUI5Range14", "SDUI5Range14")
	SDUI5Range14.ParentID = "SDUI5Column4"
	SDUI5Range14.BackgroundColor = ""
	SDUI5Range14.Color = "success"
	SDUI5Range14.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range14.StepValue = ""
	BANano.Await(SDUI5Range14.AddComponent)
	'
	SDUI5Range15.Initialize(Me, "SDUI5Range15", "SDUI5Range15")
	SDUI5Range15.ParentID = "SDUI5Column4"
	SDUI5Range15.BackgroundColor = ""
	SDUI5Range15.Color = "warning"
	SDUI5Range15.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Range15.StepValue = ""
	BANano.Await(SDUI5Range15.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Range16.Initialize(Me, "SDUI5Range16", "SDUI5Range16")
	SDUI5Range16.ParentID = "SDUI5Column5"
	SDUI5Range16.BackgroundColor = "#ffff00"
	SDUI5Range16.StepValue = ""
	BANano.Await(SDUI5Range16.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Range17.Initialize(Me, "SDUI5Range17", "SDUI5Range17")
	SDUI5Range17.ParentID = "SDUI5Column6"
	SDUI5Range17.BackgroundColor = "#ffff00"
	SDUI5Range17.RangeType = "tooltip"
	SDUI5Range17.StepValue = ""
	SDUI5Range17.Value = "20"
	BANano.Await(SDUI5Range17.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.SizeMd = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5Range18.Initialize(Me, "SDUI5Range18", "SDUI5Range18")
	SDUI5Range18.ParentID = "SDUI5Column7"
	SDUI5Range18.Label = "Legend"
	SDUI5Range18.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Range18.RangeType = "legend"
	SDUI5Range18.RoundedBox = True
	SDUI5Range18.Shadow = "lg"
	SDUI5Range18.StepValue = ""
	BANano.Await(SDUI5Range18.AddComponent)
	pgIndex.UpdateTitle("SDUI5Range")
End Sub

Private Sub SDUI5Range17_Change (Value As Object)
	app.showtoastsuccess(Value)
End Sub

