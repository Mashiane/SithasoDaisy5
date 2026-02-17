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
	Private dptime As SDUI5DatePickerTimeLine		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private txtDatePicker As SDUI5TextBox		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private txtDateTime As SDUI5TextBox		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private txtTime As SDUI5TextBox		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private txtRange As SDUI5TextBox		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private txtMultiple As SDUI5TextBox		'ignore
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
	dptime.Initialize(Me, "dptime", "dptime")
	dptime.ParentID = "SDUI5Column1"
	dptime.SelectionColor = "#ffc0cb"
	BANano.Await(dptime.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	txtDatePicker.Initialize(Me, "txtDatePicker", "txtDatePicker")
	txtDatePicker.ParentID = "SDUI5Column2"
	txtDatePicker.BackgroundColor = ""
	txtDatePicker.Border = False
	txtDatePicker.BorderColor = ""
	txtDatePicker.DPAllowInput = True
	txtDatePicker.DPAltFormat = "F j, Y"
	txtDatePicker.DPCloseOnSelect = True
	txtDatePicker.InputType = "legend"
	txtDatePicker.Label = "Date Picker"
	txtDatePicker.TypeOf = "date-picker"
	BANano.Await(txtDatePicker.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	txtDateTime.Initialize(Me, "txtDateTime", "txtDateTime")
	txtDateTime.ParentID = "SDUI5Column3"
	txtDateTime.BackgroundColor = ""
	txtDateTime.Border = False
	txtDateTime.BorderColor = ""
	txtDateTime.DPAllowInput = True
	txtDateTime.DPAltFormat = "F j, Y H:i"
	txtDateTime.DPCloseOnSelect = True
	txtDateTime.DPDateFormat = "Y-m-d H:i"
	txtDateTime.InputType = "legend"
	txtDateTime.Label = "Date Time Picker"
	txtDateTime.TypeOf = "date-time-picker"
	BANano.Await(txtDateTime.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	txtTime.Initialize(Me, "txtTime", "txtTime")
	txtTime.ParentID = "SDUI5Column4"
	txtTime.BackgroundColor = ""
	txtTime.Border = False
	txtTime.BorderColor = ""
	txtTime.DPAllowInput = True
	txtTime.DPAltFormat = "H:i"
	txtTime.DPCloseOnSelect = True
	txtTime.DPDateFormat = "H:i"
	txtTime.InputType = "legend"
	txtTime.Label = "Time Picker"
	txtTime.TypeOf = "time-picker"
	BANano.Await(txtTime.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	txtRange.Initialize(Me, "txtRange", "txtRange")
	txtRange.ParentID = "SDUI5Column5"
	txtRange.BackgroundColor = ""
	txtRange.Border = False
	txtRange.BorderColor = ""
	txtRange.DPAllowInput = True
	txtRange.DPAltFormat = "F j, Y"
	txtRange.DPCloseOnSelect = True
	txtRange.DPMode = "range"
	txtRange.InputType = "legend"
	txtRange.Label = "Range Date Picker"
	txtRange.TypeOf = "date-picker"
	BANano.Await(txtRange.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	txtMultiple.Initialize(Me, "txtMultiple", "txtMultiple")
	txtMultiple.ParentID = "SDUI5Column6"
	txtMultiple.BackgroundColor = ""
	txtMultiple.Border = False
	txtMultiple.BorderColor = ""
	txtMultiple.DPAllowInput = True
	txtMultiple.DPAltFormat = "F j, Y"
	txtMultiple.DPCloseOnSelect = True
	txtMultiple.DPMode = "multiple"
	txtMultiple.InputType = "legend"
	txtMultiple.Label = "Multiple Date Picker"
	txtMultiple.TypeOf = "date-picker"
	BANano.Await(txtMultiple.AddComponent)
	pgIndex.UpdateTitle("Calendars")
End Sub

Private Sub dptime_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

