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
	Private SDUI5FileInput1 As SDUI5FileInput		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5FileInput2 As SDUI5FileInput		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5FileInput3 As SDUI5FileInput		'ignore
	Private SDUI5FileInput4 As SDUI5FileInput		'ignore
	Private SDUI5FileInput5 As SDUI5FileInput		'ignore
	Private SDUI5FileInput6 As SDUI5FileInput		'ignore
	Private SDUI5FileInput7 As SDUI5FileInput		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5FileInput8 As SDUI5FileInput		'ignore
	Private SDUI5FileInput9 As SDUI5FileInput		'ignore
	Private SDUI5FileInput10 As SDUI5FileInput		'ignore
	Private SDUI5FileInput11 As SDUI5FileInput		'ignore
	Private SDUI5FileInput12 As SDUI5FileInput		'ignore
	Private SDUI5FileInput13 As SDUI5FileInput		'ignore
	Private SDUI5FileInput14 As SDUI5FileInput		'ignore
	Private SDUI5FileInput15 As SDUI5FileInput		'ignore
	Private SDUI5FileInput16 As SDUI5FileInput		'ignore
	Private SDUI5FileInput17 As SDUI5FileInput		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5FileInput18 As SDUI5FileInput		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5FileInput19 As SDUI5FileInput		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5FileInput20 As SDUI5FileInput		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5FileInput21 As SDUI5FileInput		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5FileInput22 As SDUI5FileInput		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5FileInput23 As SDUI5FileInput		'ignore
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
	SDUI5FileInput1.Initialize(Me, "SDUI5FileInput1", "SDUI5FileInput1")
	SDUI5FileInput1.ParentID = "SDUI5Column1"
	BANano.Await(SDUI5FileInput1.AddComponent)
	'
	SDUI5FileInput2.Initialize(Me, "SDUI5FileInput2", "SDUI5FileInput2")
	SDUI5FileInput2.ParentID = "SDUI5Column2"
	SDUI5FileInput2.BackgroundColor = ""
	SDUI5FileInput2.Border = False
	SDUI5FileInput2.BorderColor = ""
	SDUI5FileInput2.Hint = "Max size 2MB"
	SDUI5FileInput2.InputType = "legend"
	SDUI5FileInput2.Required = True
	BANano.Await(SDUI5FileInput2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Classes = "gap-y-2"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5FileInput3.Initialize(Me, "SDUI5FileInput3", "SDUI5FileInput3")
	SDUI5FileInput3.ParentID = "SDUI5Column3"
	SDUI5FileInput3.HideSelectorButton = True
	SDUI5FileInput3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput3.AddComponent)
	'
	SDUI5FileInput4.Initialize(Me, "SDUI5FileInput4", "SDUI5FileInput4")
	SDUI5FileInput4.ParentID = "SDUI5Column3"
	SDUI5FileInput4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5FileInput4.Size = "sm"
	BANano.Await(SDUI5FileInput4.AddComponent)
	'
	SDUI5FileInput5.Initialize(Me, "SDUI5FileInput5", "SDUI5FileInput5")
	SDUI5FileInput5.ParentID = "SDUI5Column3"
	SDUI5FileInput5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5FileInput5.Size = "md"
	BANano.Await(SDUI5FileInput5.AddComponent)
	'
	SDUI5FileInput6.Initialize(Me, "SDUI5FileInput6", "SDUI5FileInput6")
	SDUI5FileInput6.ParentID = "SDUI5Column3"
	SDUI5FileInput6.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5FileInput6.Required = True
	SDUI5FileInput6.Size = "lg"
	BANano.Await(SDUI5FileInput6.AddComponent)
	'
	SDUI5FileInput7.Initialize(Me, "SDUI5FileInput7", "SDUI5FileInput7")
	SDUI5FileInput7.ParentID = "SDUI5Column3"
	SDUI5FileInput7.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5FileInput7.Size = "xl"
	BANano.Await(SDUI5FileInput7.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Classes = "gap-y-2"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5FileInput8.Initialize(Me, "SDUI5FileInput8", "SDUI5FileInput8")
	SDUI5FileInput8.ParentID = "SDUI5Column4"
	SDUI5FileInput8.Color = "accent"
	SDUI5FileInput8.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput8.AddComponent)
	'
	SDUI5FileInput9.Initialize(Me, "SDUI5FileInput9", "SDUI5FileInput9")
	SDUI5FileInput9.ParentID = "SDUI5Column4"
	SDUI5FileInput9.Color = "error"
	SDUI5FileInput9.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput9.AddComponent)
	'
	SDUI5FileInput10.Initialize(Me, "SDUI5FileInput10", "SDUI5FileInput10")
	SDUI5FileInput10.ParentID = "SDUI5Column4"
	SDUI5FileInput10.Color = "info"
	SDUI5FileInput10.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput10.AddComponent)
	'
	SDUI5FileInput11.Initialize(Me, "SDUI5FileInput11", "SDUI5FileInput11")
	SDUI5FileInput11.ParentID = "SDUI5Column4"
	SDUI5FileInput11.Color = "neutral"
	SDUI5FileInput11.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput11.AddComponent)
	'
	SDUI5FileInput12.Initialize(Me, "SDUI5FileInput12", "SDUI5FileInput12")
	SDUI5FileInput12.ParentID = "SDUI5Column4"
	SDUI5FileInput12.Color = "primary"
	SDUI5FileInput12.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput12.AddComponent)
	'
	SDUI5FileInput13.Initialize(Me, "SDUI5FileInput13", "SDUI5FileInput13")
	SDUI5FileInput13.ParentID = "SDUI5Column4"
	SDUI5FileInput13.Color = "secondary"
	SDUI5FileInput13.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput13.AddComponent)
	'
	SDUI5FileInput14.Initialize(Me, "SDUI5FileInput14", "SDUI5FileInput14")
	SDUI5FileInput14.ParentID = "SDUI5Column4"
	SDUI5FileInput14.Color = "success"
	SDUI5FileInput14.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput14.AddComponent)
	'
	SDUI5FileInput15.Initialize(Me, "SDUI5FileInput15", "SDUI5FileInput15")
	SDUI5FileInput15.ParentID = "SDUI5Column4"
	SDUI5FileInput15.Color = "warning"
	SDUI5FileInput15.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput15.AddComponent)
	'
	SDUI5FileInput16.Initialize(Me, "SDUI5FileInput16", "SDUI5FileInput16")
	SDUI5FileInput16.ParentID = "SDUI5Column3"
	SDUI5FileInput16.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput16.AddComponent)
	'
	SDUI5FileInput17.Initialize(Me, "SDUI5FileInput17", "SDUI5FileInput17")
	SDUI5FileInput17.ParentID = "SDUI5Column3"
	SDUI5FileInput17.Ghost = True
	SDUI5FileInput17.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	BANano.Await(SDUI5FileInput17.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5FileInput18.Initialize(Me, "SDUI5FileInput18", "SDUI5FileInput18")
	SDUI5FileInput18.ParentID = "SDUI5Column5"
	SDUI5FileInput18.Hint = "Max size 2MB"
	SDUI5FileInput18.InputType = "legend"
	SDUI5FileInput18.Label = "Legend File"
	SDUI5FileInput18.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5FileInput18.Required = True
	SDUI5FileInput18.RoundedBox = True
	SDUI5FileInput18.Shadow = "lg"
	BANano.Await(SDUI5FileInput18.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5FileInput19.Initialize(Me, "SDUI5FileInput19", "SDUI5FileInput19")
	SDUI5FileInput19.ParentID = "SDUI5Column6"
	SDUI5FileInput19.Color = "primary"
	SDUI5FileInput19.Hint = "Max size 2MB"
	SDUI5FileInput19.InputType = "microphone"
	SDUI5FileInput19.Label = "Legend File"
	SDUI5FileInput19.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5FileInput19.Required = True
	SDUI5FileInput19.RoundedBox = True
	SDUI5FileInput19.Shadow = "lg"
	BANano.Await(SDUI5FileInput19.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.SizeMd = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5FileInput20.Initialize(Me, "SDUI5FileInput20", "SDUI5FileInput20")
	SDUI5FileInput20.ParentID = "SDUI5Column7"
	SDUI5FileInput20.Color = "secondary"
	SDUI5FileInput20.Hint = "Max size 2MB"
	SDUI5FileInput20.InputType = "progress"
	SDUI5FileInput20.Label = "Legend File"
	SDUI5FileInput20.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5FileInput20.Required = True
	SDUI5FileInput20.RoundedBox = True
	SDUI5FileInput20.Shadow = "lg"
	BANano.Await(SDUI5FileInput20.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.SizeMd = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5FileInput21.Initialize(Me, "SDUI5FileInput21", "SDUI5FileInput21")
	SDUI5FileInput21.ParentID = "SDUI5Column8"
	SDUI5FileInput21.Color = "accent"
	SDUI5FileInput21.Hint = "Max size 2MB"
	SDUI5FileInput21.InputType = "camera"
	SDUI5FileInput21.Label = "Legend File"
	SDUI5FileInput21.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5FileInput21.Required = True
	SDUI5FileInput21.RoundedBox = True
	SDUI5FileInput21.Shadow = "lg"
	BANano.Await(SDUI5FileInput21.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row1"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.SizeMd = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5FileInput22.Initialize(Me, "SDUI5FileInput22", "SDUI5FileInput22")
	SDUI5FileInput22.ParentID = "SDUI5Column9"
	SDUI5FileInput22.Color = "success"
	SDUI5FileInput22.Hint = "Max size 2MB"
	SDUI5FileInput22.InputType = "camcorder"
	SDUI5FileInput22.Label = "Legend File"
	SDUI5FileInput22.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5FileInput22.Required = True
	SDUI5FileInput22.RoundedBox = True
	SDUI5FileInput22.Shadow = "lg"
	BANano.Await(SDUI5FileInput22.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row1"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.SizeMd = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5FileInput23.Initialize(Me, "SDUI5FileInput23", "SDUI5FileInput23")
	SDUI5FileInput23.ParentID = "SDUI5Column10"
	SDUI5FileInput23.Color = "info"
	SDUI5FileInput23.Hint = "Max size 2MB"
	SDUI5FileInput23.InputType = "progress"
	SDUI5FileInput23.Label = "Legend File"
	SDUI5FileInput23.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5FileInput23.ProgressValue = "65"
	SDUI5FileInput23.Required = True
	SDUI5FileInput23.RoundedBox = True
	SDUI5FileInput23.Shadow = "lg"
	BANano.Await(SDUI5FileInput23.AddComponent)
	pgIndex.UpdateTitle("SDUI5FileInput")
End Sub

Private Sub SDUI5FileInput1_Change (e As BANanoEvent)
	Log("SDUI5FileInput1_Change...")
	Dim fileObj As Map = SDUI5FileInput1.GetFile
	Log(fileObj)
End Sub

