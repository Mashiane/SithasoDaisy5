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
	Private SDUI5RadioGroup1 As SDUI5RadioGroup		'ignore
	Private SDUI5RadioGroup2 As SDUI5RadioGroup		'ignore
	Private SDUI5RadioGroup3 As SDUI5RadioGroup		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Radio1 As SDUI5Radio		'ignore
	Private SDUI5Radio2 As SDUI5Radio		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Radio3 As SDUI5Radio		'ignore
	Private SDUI5Radio4 As SDUI5Radio		'ignore
	Private SDUI5Radio5 As SDUI5Radio		'ignore
	Private SDUI5Radio6 As SDUI5Radio		'ignore
	Private SDUI5Radio7 As SDUI5Radio		'ignore
	Private SDUI5Radio8 As SDUI5Radio		'ignore
	Private SDUI5Radio9 As SDUI5Radio		'ignore
	Private SDUI5Radio10 As SDUI5Radio		'ignore
	Private SDUI5Radio11 As SDUI5Radio		'ignore
	Private SDUI5Radio12 As SDUI5Radio		'ignore
	Private SDUI5Radio13 As SDUI5Radio		'ignore
	Private SDUI5Radio14 As SDUI5Radio		'ignore
	Private SDUI5Radio15 As SDUI5Radio		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Radio16 As SDUI5Radio		'ignore
	Private SDUI5Radio17 As SDUI5Radio		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Radio18 As SDUI5Radio		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5Radio19 As SDUI5Radio		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5RadioGroup4 As SDUI5RadioGroup		'ignore
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
	SDUI5Radio1.Initialize(Me, "SDUI5Radio1", "SDUI5Radio1")
	SDUI5Radio1.ParentID = "SDUI5Column1"
	SDUI5Radio1.Checked = True
	SDUI5Radio1.Label = ""
	BANano.Await(SDUI5Radio1.AddComponent)
	'
	SDUI5Radio2.Initialize(Me, "SDUI5Radio2", "SDUI5Radio2")
	SDUI5Radio2.ParentID = "SDUI5Column2"
	SDUI5Radio2.Checked = True
	SDUI5Radio2.RadioType = "legend"
	BANano.Await(SDUI5Radio2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Radio3.Initialize(Me, "SDUI5Radio3", "SDUI5Radio3")
	SDUI5Radio3.ParentID = "SDUI5Column4"
	SDUI5Radio3.Checked = True
	SDUI5Radio3.Color = "accent"
	SDUI5Radio3.GroupName = "radio1"
	SDUI5Radio3.Label = ""
	SDUI5Radio3.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Radio3.AddComponent)
	'
	SDUI5Radio4.Initialize(Me, "SDUI5Radio4", "SDUI5Radio4")
	SDUI5Radio4.ParentID = "SDUI5Column3"
	SDUI5Radio4.Checked = True
	SDUI5Radio4.GroupName = "radio2"
	SDUI5Radio4.Label = ""
	SDUI5Radio4.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Radio4.Size = "xs"
	BANano.Await(SDUI5Radio4.AddComponent)
	'
	SDUI5Radio5.Initialize(Me, "SDUI5Radio5", "SDUI5Radio5")
	SDUI5Radio5.ParentID = "SDUI5Column4"
	SDUI5Radio5.Color = "error"
	SDUI5Radio5.GroupName = "radio1"
	SDUI5Radio5.Label = ""
	SDUI5Radio5.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Radio5.AddComponent)
	'
	SDUI5Radio6.Initialize(Me, "SDUI5Radio6", "SDUI5Radio6")
	SDUI5Radio6.ParentID = "SDUI5Column4"
	SDUI5Radio6.Color = "info"
	SDUI5Radio6.GroupName = "radio1"
	SDUI5Radio6.Label = ""
	SDUI5Radio6.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Radio6.AddComponent)
	'
	SDUI5Radio7.Initialize(Me, "SDUI5Radio7", "SDUI5Radio7")
	SDUI5Radio7.ParentID = "SDUI5Column4"
	SDUI5Radio7.Color = "neutral"
	SDUI5Radio7.GroupName = "radio1"
	SDUI5Radio7.Label = ""
	SDUI5Radio7.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Radio7.AddComponent)
	'
	SDUI5Radio8.Initialize(Me, "SDUI5Radio8", "SDUI5Radio8")
	SDUI5Radio8.ParentID = "SDUI5Column4"
	SDUI5Radio8.Color = "primary"
	SDUI5Radio8.GroupName = "radio1"
	SDUI5Radio8.Label = ""
	SDUI5Radio8.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Radio8.AddComponent)
	'
	SDUI5Radio9.Initialize(Me, "SDUI5Radio9", "SDUI5Radio9")
	SDUI5Radio9.ParentID = "SDUI5Column4"
	SDUI5Radio9.Color = "secondary"
	SDUI5Radio9.GroupName = "radio1"
	SDUI5Radio9.Label = ""
	SDUI5Radio9.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Radio9.AddComponent)
	'
	SDUI5Radio10.Initialize(Me, "SDUI5Radio10", "SDUI5Radio10")
	SDUI5Radio10.ParentID = "SDUI5Column4"
	SDUI5Radio10.Color = "success"
	SDUI5Radio10.GroupName = "radio1"
	SDUI5Radio10.Label = ""
	SDUI5Radio10.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Radio10.AddComponent)
	'
	SDUI5Radio11.Initialize(Me, "SDUI5Radio11", "SDUI5Radio11")
	SDUI5Radio11.ParentID = "SDUI5Column4"
	SDUI5Radio11.Color = "warning"
	SDUI5Radio11.GroupName = "radio1"
	SDUI5Radio11.Label = ""
	SDUI5Radio11.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Radio11.AddComponent)
	'
	SDUI5Radio12.Initialize(Me, "SDUI5Radio12", "SDUI5Radio12")
	SDUI5Radio12.ParentID = "SDUI5Column3"
	SDUI5Radio12.GroupName = "radio2"
	SDUI5Radio12.Label = ""
	SDUI5Radio12.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Radio12.Size = "sm"
	BANano.Await(SDUI5Radio12.AddComponent)
	'
	SDUI5Radio13.Initialize(Me, "SDUI5Radio13", "SDUI5Radio13")
	SDUI5Radio13.ParentID = "SDUI5Column3"
	SDUI5Radio13.GroupName = "radio2"
	SDUI5Radio13.Label = ""
	SDUI5Radio13.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Radio13.Size = "md"
	BANano.Await(SDUI5Radio13.AddComponent)
	'
	SDUI5Radio14.Initialize(Me, "SDUI5Radio14", "SDUI5Radio14")
	SDUI5Radio14.ParentID = "SDUI5Column3"
	SDUI5Radio14.GroupName = "radio2"
	SDUI5Radio14.Label = ""
	SDUI5Radio14.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Radio14.Size = "lg"
	BANano.Await(SDUI5Radio14.AddComponent)
	'
	SDUI5Radio15.Initialize(Me, "SDUI5Radio15", "SDUI5Radio15")
	SDUI5Radio15.ParentID = "SDUI5Column3"
	SDUI5Radio15.GroupName = "radio2"
	SDUI5Radio15.Label = ""
	SDUI5Radio15.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Radio15.Size = "xl"
	BANano.Await(SDUI5Radio15.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5RadioGroup1.Initialize(Me, "SDUI5RadioGroup1", "SDUI5RadioGroup1")
	SDUI5RadioGroup1.ParentID = "SDUI5Column5"
	SDUI5RadioGroup1.CheckedColor = "warning"
	SDUI5RadioGroup1.Color = "primary"
	SDUI5RadioGroup1.GroupName = "frameworks"
	SDUI5RadioGroup1.Hint = "Select a framework"
	SDUI5RadioGroup1.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	SDUI5RadioGroup1.Size = "md"
	SDUI5RadioGroup1.Value = "b4a"
	BANano.Await(SDUI5RadioGroup1.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5RadioGroup2.Initialize(Me, "SDUI5RadioGroup2", "SDUI5RadioGroup2")
	SDUI5RadioGroup2.ParentID = "SDUI5Column6"
	SDUI5RadioGroup2.CheckedColor = "primary"
	SDUI5RadioGroup2.Color = "primary"
	SDUI5RadioGroup2.ColumnView = True
	SDUI5RadioGroup2.GroupName = "frameworks1"
	SDUI5RadioGroup2.Hint = "Select a framework"
	SDUI5RadioGroup2.LabelPosition = "left"
	SDUI5RadioGroup2.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	SDUI5RadioGroup2.Size = "md"
	SDUI5RadioGroup2.Value = "b4i"
	BANano.Await(SDUI5RadioGroup2.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.SizeMd = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5RadioGroup3.Initialize(Me, "SDUI5RadioGroup3", "SDUI5RadioGroup3")
	SDUI5RadioGroup3.ParentID = "SDUI5Column7"
	SDUI5RadioGroup3.CheckedColor = "primary"
	SDUI5RadioGroup3.Color = "primary"
	SDUI5RadioGroup3.ColumnView = True
	SDUI5RadioGroup3.GroupName = "frameworks2"
	SDUI5RadioGroup3.Hint = "Select a framework"
	SDUI5RadioGroup3.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	SDUI5RadioGroup3.Size = "md"
	SDUI5RadioGroup3.Value = "b4j"
	BANano.Await(SDUI5RadioGroup3.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.SizeMd = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row1"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.SizeMd = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5Radio16.Initialize(Me, "SDUI5Radio16", "SDUI5Radio16")
	SDUI5Radio16.ParentID = "SDUI5Column8"
	SDUI5Radio16.CheckedColor = "#0000ff"
	SDUI5Radio16.GroupName = "matrix1"
	SDUI5Radio16.Label = "Blue Pill"
	SDUI5Radio16.RadioType = "left-label"
	SDUI5Radio16.Value = "blue"
	BANano.Await(SDUI5Radio16.AddComponent)
	'
	SDUI5Radio17.Initialize(Me, "SDUI5Radio17", "SDUI5Radio17")
	SDUI5Radio17.ParentID = "SDUI5Column9"
	SDUI5Radio17.CheckedColor = "#ff0000"
	SDUI5Radio17.GroupName = "matrix"
	SDUI5Radio17.Label = "Red Pill"
	SDUI5Radio17.RadioType = "right-label"
	SDUI5Radio17.Value = "red"
	BANano.Await(SDUI5Radio17.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row1"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.SizeMd = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5Radio18.Initialize(Me, "SDUI5Radio18", "SDUI5Radio18")
	SDUI5Radio18.ParentID = "SDUI5Column10"
	SDUI5Radio18.CheckedColor = "#ff0000"
	SDUI5Radio18.GroupName = "matrix1"
	SDUI5Radio18.Label = "Red Pill"
	SDUI5Radio18.RadioType = "left-label"
	SDUI5Radio18.Value = "red"
	BANano.Await(SDUI5Radio18.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row1"
	SDUI5Column11.AlignSelf = ""
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.SizeMd = "6"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	SDUI5Radio19.Initialize(Me, "SDUI5Radio19", "SDUI5Radio19")
	SDUI5Radio19.ParentID = "SDUI5Column11"
	SDUI5Radio19.CheckedColor = "#0000ff"
	SDUI5Radio19.GroupName = "matrix"
	SDUI5Radio19.Label = "Blue Pill"
	SDUI5Radio19.RadioType = "right-label"
	SDUI5Radio19.Value = "blue"
	BANano.Await(SDUI5Radio19.AddComponent)
	'
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row1"
	SDUI5Column12.AlignSelf = ""
	SDUI5Column12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.SizeMd = "6"
	BANano.Await(SDUI5Column12.AddComponent)
	'
	SDUI5RadioGroup4.Initialize(Me, "SDUI5RadioGroup4", "SDUI5RadioGroup4")
	SDUI5RadioGroup4.ParentID = "SDUI5Column12"
	SDUI5RadioGroup4.CheckedColor = "primary"
	SDUI5RadioGroup4.Color = "primary"
	SDUI5RadioGroup4.ColumnView = True
	SDUI5RadioGroup4.GroupName = "frameworks3"
	SDUI5RadioGroup4.Hint = "Select a framework"
	SDUI5RadioGroup4.Label = "Legend"
	SDUI5RadioGroup4.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	SDUI5RadioGroup4.Shadow = "lg"
	SDUI5RadioGroup4.Value = "b4j"
	BANano.Await(SDUI5RadioGroup4.AddComponent)
	pgIndex.UpdateTitle("SDUI5RadioGroup")
End Sub

Private Sub SDUI5RadioGroup3_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5RadioGroup2_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5RadioGroup1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

