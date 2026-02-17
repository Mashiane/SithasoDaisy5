B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private txtcolorpicker1 As SDUI5TextBox		'ignore
	Private txtcolorpicker2 As SDUI5TextBox		'ignore
	Private txtcolorpicker3 As SDUI5TextBox		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
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
	txtcolorpicker1.Initialize(Me, "txtcolorpicker1", "txtcolorpicker1")
	txtcolorpicker1.ParentID = "SDUI5Column1"
	txtcolorpicker1.AppendVisible = True
	txtcolorpicker1.InputType = "legend"
	txtcolorpicker1.Label = "Legend ColorPicker"
	txtcolorpicker1.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtcolorpicker1.RoundedBox = True
	txtcolorpicker1.Shadow = "lg"
	txtcolorpicker1.TypeOf = "color-wheel"
	txtcolorpicker1.WheelPlacement = "bottom-end"
	txtcolorpicker1.DPAltFormat = "F j"
	BANano.Await(txtcolorpicker1.AddComponent)
	'
	txtcolorpicker2.Initialize(Me, "txtcolorpicker2", "txtcolorpicker2")
	txtcolorpicker2.ParentID = "SDUI5Column2"
	txtcolorpicker2.AppendVisible = True
	txtcolorpicker2.InputType = "buttons"
	txtcolorpicker2.Label = "Buttons ColorPicker"
	txtcolorpicker2.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtcolorpicker2.RoundedBox = True
	txtcolorpicker2.Shadow = "lg"
	txtcolorpicker2.TypeOf = "color-wheel"
	txtcolorpicker2.WheelPlacement = "bottom-end"
	txtcolorpicker2.DPAltFormat = "F j"
	BANano.Await(txtcolorpicker2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	txtcolorpicker3.Initialize(Me, "txtcolorpicker3", "txtcolorpicker3")
	txtcolorpicker3.ParentID = "SDUI5Column3"
	txtcolorpicker3.AppendVisible = True
	txtcolorpicker3.InputType = "buttons-floating"
	txtcolorpicker3.Label = "Floating ColorPicker"
	txtcolorpicker3.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtcolorpicker3.RoundedBox = True
	txtcolorpicker3.Shadow = "lg"
	txtcolorpicker3.TypeOf = "color-wheel"
	txtcolorpicker3.WheelPlacement = "bottom-end"
	txtcolorpicker3.DPAltFormat = "F j"
	BANano.Await(txtcolorpicker3.AddComponent)
	pgIndex.UpdateTitle("SDUI5TextBox - ColorPicker")
End Sub


Private Sub txtcolorpicker1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub txtcolorpicker3_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub txtcolorpicker2_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

