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
	Private SDUI5CheckBox1 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox19 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox2 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox20 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBoxGroup1 As SDUI5CheckBoxGroup		'ignore
	Private SDUI5CheckBoxGroup2 As SDUI5CheckBoxGroup		'ignore
	Private SDUI5CheckBoxGroup3 As SDUI5CheckBoxGroup		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5CheckBox3 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox4 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox5 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox6 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox7 As SDUI5CheckBox		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5CheckBox8 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox9 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox10 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox11 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox12 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox13 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox14 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox15 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox16 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox17 As SDUI5CheckBox		'ignore
	Private SDUI5CheckBox18 As SDUI5CheckBox		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5CheckBoxGroup4 As SDUI5CheckBoxGroup		'ignore
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
	SDUI5CheckBox1.Initialize(Me, "SDUI5CheckBox1", "SDUI5CheckBox1")
	SDUI5CheckBox1.ParentID = "SDUI5Column1"
	SDUI5CheckBox1.Label = ""
	SDUI5CheckBox1.Legend = ""
	BANano.Await(SDUI5CheckBox1.AddComponent)
	'
	SDUI5CheckBox2.Initialize(Me, "SDUI5CheckBox2", "SDUI5CheckBox2")
	SDUI5CheckBox2.ParentID = "SDUI5Column2"
	SDUI5CheckBox2.BackgroundColor = ""
	SDUI5CheckBox2.Border = False
	SDUI5CheckBox2.BorderColor = ""
	SDUI5CheckBox2.CheckBoxType = "legend"
	SDUI5CheckBox2.Hint = "Select options for login"
	SDUI5CheckBox2.Label = "Remember Me"
	SDUI5CheckBox2.Legend = "My Options"
	BANano.Await(SDUI5CheckBox2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5CheckBox3.Initialize(Me, "SDUI5CheckBox3", "SDUI5CheckBox3")
	SDUI5CheckBox3.ParentID = "SDUI5Column3"
	SDUI5CheckBox3.Checked = True
	SDUI5CheckBox3.Label = ""
	SDUI5CheckBox3.Legend = ""
	SDUI5CheckBox3.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBox3.Size = "xs"
	BANano.Await(SDUI5CheckBox3.AddComponent)
	'
	SDUI5CheckBox4.Initialize(Me, "SDUI5CheckBox4", "SDUI5CheckBox4")
	SDUI5CheckBox4.ParentID = "SDUI5Column3"
	SDUI5CheckBox4.Checked = True
	SDUI5CheckBox4.Label = ""
	SDUI5CheckBox4.Legend = ""
	SDUI5CheckBox4.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBox4.Size = "sm"
	BANano.Await(SDUI5CheckBox4.AddComponent)
	'
	SDUI5CheckBox5.Initialize(Me, "SDUI5CheckBox5", "SDUI5CheckBox5")
	SDUI5CheckBox5.ParentID = "SDUI5Column3"
	SDUI5CheckBox5.Checked = True
	SDUI5CheckBox5.Label = ""
	SDUI5CheckBox5.Legend = ""
	SDUI5CheckBox5.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBox5.Size = "md"
	BANano.Await(SDUI5CheckBox5.AddComponent)
	'
	SDUI5CheckBox6.Initialize(Me, "SDUI5CheckBox6", "SDUI5CheckBox6")
	SDUI5CheckBox6.ParentID = "SDUI5Column3"
	SDUI5CheckBox6.Checked = True
	SDUI5CheckBox6.Label = ""
	SDUI5CheckBox6.Legend = ""
	SDUI5CheckBox6.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBox6.Size = "lg"
	BANano.Await(SDUI5CheckBox6.AddComponent)
	'
	SDUI5CheckBox7.Initialize(Me, "SDUI5CheckBox7", "SDUI5CheckBox7")
	SDUI5CheckBox7.ParentID = "SDUI5Column3"
	SDUI5CheckBox7.Checked = True
	SDUI5CheckBox7.Label = ""
	SDUI5CheckBox7.Legend = ""
	SDUI5CheckBox7.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5CheckBox7.Size = "xl"
	BANano.Await(SDUI5CheckBox7.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5CheckBox8.Initialize(Me, "SDUI5CheckBox8", "SDUI5CheckBox8")
	SDUI5CheckBox8.ParentID = "SDUI5Column4"
	SDUI5CheckBox8.Checked = True
	SDUI5CheckBox8.Color = "accent"
	SDUI5CheckBox8.Label = ""
	SDUI5CheckBox8.Legend = ""
	SDUI5CheckBox8.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox8.AddComponent)
	'
	SDUI5CheckBox9.Initialize(Me, "SDUI5CheckBox9", "SDUI5CheckBox9")
	SDUI5CheckBox9.ParentID = "SDUI5Column4"
	SDUI5CheckBox9.Checked = True
	SDUI5CheckBox9.Color = "error"
	SDUI5CheckBox9.Label = ""
	SDUI5CheckBox9.Legend = ""
	SDUI5CheckBox9.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox9.AddComponent)
	'
	SDUI5CheckBox10.Initialize(Me, "SDUI5CheckBox10", "SDUI5CheckBox10")
	SDUI5CheckBox10.ParentID = "SDUI5Column4"
	SDUI5CheckBox10.Checked = True
	SDUI5CheckBox10.Color = "info"
	SDUI5CheckBox10.Label = ""
	SDUI5CheckBox10.Legend = ""
	SDUI5CheckBox10.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox10.AddComponent)
	'
	SDUI5CheckBox11.Initialize(Me, "SDUI5CheckBox11", "SDUI5CheckBox11")
	SDUI5CheckBox11.ParentID = "SDUI5Column4"
	SDUI5CheckBox11.Checked = True
	SDUI5CheckBox11.Color = "neutral"
	SDUI5CheckBox11.Label = ""
	SDUI5CheckBox11.Legend = ""
	SDUI5CheckBox11.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox11.AddComponent)
	'
	SDUI5CheckBox12.Initialize(Me, "SDUI5CheckBox12", "SDUI5CheckBox12")
	SDUI5CheckBox12.ParentID = "SDUI5Column4"
	SDUI5CheckBox12.Checked = True
	SDUI5CheckBox12.Color = "primary"
	SDUI5CheckBox12.Label = ""
	SDUI5CheckBox12.Legend = ""
	SDUI5CheckBox12.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox12.AddComponent)
	'
	SDUI5CheckBox13.Initialize(Me, "SDUI5CheckBox13", "SDUI5CheckBox13")
	SDUI5CheckBox13.ParentID = "SDUI5Column4"
	SDUI5CheckBox13.Checked = True
	SDUI5CheckBox13.Color = "secondary"
	SDUI5CheckBox13.Label = ""
	SDUI5CheckBox13.Legend = ""
	SDUI5CheckBox13.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox13.AddComponent)
	'
	SDUI5CheckBox14.Initialize(Me, "SDUI5CheckBox14", "SDUI5CheckBox14")
	SDUI5CheckBox14.ParentID = "SDUI5Column4"
	SDUI5CheckBox14.Checked = True
	SDUI5CheckBox14.Color = "success"
	SDUI5CheckBox14.Label = ""
	SDUI5CheckBox14.Legend = ""
	SDUI5CheckBox14.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox14.AddComponent)
	'
	SDUI5CheckBox15.Initialize(Me, "SDUI5CheckBox15", "SDUI5CheckBox15")
	SDUI5CheckBox15.ParentID = "SDUI5Column4"
	SDUI5CheckBox15.Checked = True
	SDUI5CheckBox15.Color = "warning"
	SDUI5CheckBox15.Label = ""
	SDUI5CheckBox15.Legend = ""
	SDUI5CheckBox15.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox15.AddComponent)
	'
	SDUI5CheckBox16.Initialize(Me, "SDUI5CheckBox16", "SDUI5CheckBox16")
	SDUI5CheckBox16.ParentID = "SDUI5Column3"
	SDUI5CheckBox16.Checked = True
	SDUI5CheckBox16.Label = ""
	SDUI5CheckBox16.Legend = ""
	SDUI5CheckBox16.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox16.AddComponent)
	'
	SDUI5CheckBox17.Initialize(Me, "SDUI5CheckBox17", "SDUI5CheckBox17")
	SDUI5CheckBox17.ParentID = "SDUI5Column3"
	SDUI5CheckBox17.Checked = True
	SDUI5CheckBox17.Label = ""
	SDUI5CheckBox17.Legend = ""
	SDUI5CheckBox17.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox17.AddComponent)
	'
	SDUI5CheckBox18.Initialize(Me, "SDUI5CheckBox18", "SDUI5CheckBox18")
	SDUI5CheckBox18.ParentID = "SDUI5Column3"
	SDUI5CheckBox18.Checked = True
	SDUI5CheckBox18.Indeterminate = True
	SDUI5CheckBox18.Label = ""
	SDUI5CheckBox18.Legend = ""
	SDUI5CheckBox18.MarginAXYTBLR = "a=10px; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5CheckBox18.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5CheckBox19.Initialize(Me, "SDUI5CheckBox19", "SDUI5CheckBox19")
	SDUI5CheckBox19.ParentID = "SDUI5Column6"
	SDUI5CheckBox19.CheckBoxType = "left-label"
	SDUI5CheckBox19.Checked = True
	SDUI5CheckBox19.CheckedColor = "#ffa500"
	SDUI5CheckBox19.CheckedMarkColor = "#0000ff"
	SDUI5CheckBox19.Color = "primary"
	SDUI5CheckBox19.Label = "Check Box"
	SDUI5CheckBox19.Legend = ""
	BANano.Await(SDUI5CheckBox19.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.SizeMd = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5CheckBox20.Initialize(Me, "SDUI5CheckBox20", "SDUI5CheckBox20")
	SDUI5CheckBox20.ParentID = "SDUI5Column7"
	SDUI5CheckBox20.CheckBoxType = "right-label"
	SDUI5CheckBox20.Checked = True
	SDUI5CheckBox20.CheckedColor = "#ffa500"
	SDUI5CheckBox20.CheckedMarkColor = "#0000ff"
	SDUI5CheckBox20.Color = "neutral"
	SDUI5CheckBox20.Label = "Check Box"
	SDUI5CheckBox20.Legend = ""
	BANano.Await(SDUI5CheckBox20.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.SizeMd = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5CheckBoxGroup1.Initialize(Me, "SDUI5CheckBoxGroup1", "SDUI5CheckBoxGroup1")
	SDUI5CheckBoxGroup1.ParentID = "SDUI5Column5"
	SDUI5CheckBoxGroup1.ColumnView = True
	SDUI5CheckBoxGroup1.GroupName = "anelex"
	SDUI5CheckBoxGroup1.LabelPosition = "left"
	SDUI5CheckBoxGroup1.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	BANano.Await(SDUI5CheckBoxGroup1.AddComponent)
	'
	SDUI5CheckBoxGroup2.Initialize(Me, "SDUI5CheckBoxGroup2", "SDUI5CheckBoxGroup2")
	SDUI5CheckBoxGroup2.ParentID = "SDUI5Column8"
	SDUI5CheckBoxGroup2.ColumnView = True
	SDUI5CheckBoxGroup2.GroupName = "aneley"
	SDUI5CheckBoxGroup2.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	BANano.Await(SDUI5CheckBoxGroup2.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row1"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.SizeMd = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5CheckBoxGroup3.Initialize(Me, "SDUI5CheckBoxGroup3", "SDUI5CheckBoxGroup3")
	SDUI5CheckBoxGroup3.ParentID = "SDUI5Column9"
	SDUI5CheckBoxGroup3.GroupName = "anelea"
	SDUI5CheckBoxGroup3.LabelPosition = "left"
	SDUI5CheckBoxGroup3.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	BANano.Await(SDUI5CheckBoxGroup3.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row1"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.SizeMd = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5CheckBoxGroup4.Initialize(Me, "SDUI5CheckBoxGroup4", "SDUI5CheckBoxGroup4")
	SDUI5CheckBoxGroup4.ParentID = "SDUI5Column10"
	SDUI5CheckBoxGroup4.GroupName = "aneleb"
	SDUI5CheckBoxGroup4.LabelPosition = "left"
	SDUI5CheckBoxGroup4.Options = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	SDUI5CheckBoxGroup4.Shadow = "lg"
	BANano.Await(SDUI5CheckBoxGroup4.AddComponent)
	pgIndex.UpdateTitle("SDUI5CheckBox")
End Sub

Private Sub SDUI5CheckBox20_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBox2_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBox19_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBox1_Change (Value As Boolean)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBoxGroup3_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBoxGroup2_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5CheckBoxGroup1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

