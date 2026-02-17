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
	Private btnStart As SDUI5Button		'ignore
	Private btnStop As SDUI5Button		'ignore
	Private progTip As SDUI5Progress		'ignore
	Private progTimer As Timer
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Progress1 As SDUI5Progress		'ignore
	Private SDUI5Progress2 As SDUI5Progress		'ignore
	Private SDUI5Progress3 As SDUI5Progress		'ignore
	Private SDUI5Progress4 As SDUI5Progress		'ignore
	Private SDUI5Progress5 As SDUI5Progress		'ignore
	Private SDUI5Progress6 As SDUI5Progress		'ignore
	Private SDUI5Progress7 As SDUI5Progress		'ignore
	Private SDUI5Progress8 As SDUI5Progress		'ignore
	Private SDUI5Progress9 As SDUI5Progress		'ignore
	Private SDUI5Progress10 As SDUI5Progress		'ignore
	Private SDUI5Progress11 As SDUI5Progress		'ignore
	Private SDUI5Progress12 As SDUI5Progress		'ignore
	Private SDUI5Progress13 As SDUI5Progress		'ignore
	Private SDUI5Progress14 As SDUI5Progress		'ignore
	Private SDUI5Progress15 As SDUI5Progress		'ignore
	Private SDUI5Progress16 As SDUI5Progress		'ignore
	Private SDUI5Progress17 As SDUI5Progress		'ignore
	Private SDUI5Progress18 As SDUI5Progress		'ignore
	Private SDUI5Progress19 As SDUI5Progress		'ignore
	Private SDUI5Progress20 As SDUI5Progress		'ignore
	Private SDUI5Progress21 As SDUI5Progress		'ignore
	Private SDUI5Progress22 As SDUI5Progress		'ignore
	Private SDUI5Progress23 As SDUI5Progress		'ignore
	Private SDUI5Progress24 As SDUI5Progress		'ignore
	Private SDUI5Progress25 As SDUI5Progress		'ignore
	Private SDUI5Progress26 As SDUI5Progress		'ignore
	Private SDUI5Progress27 As SDUI5Progress		'ignore
	Private SDUI5Progress28 As SDUI5Progress		'ignore
	Private SDUI5Progress29 As SDUI5Progress		'ignore
	Private SDUI5Progress30 As SDUI5Progress		'ignore
	Private SDUI5Progress31 As SDUI5Progress		'ignore
	Private SDUI5Progress32 As SDUI5Progress		'ignore
	Private SDUI5Progress33 As SDUI5Progress		'ignore
	Private SDUI5Progress34 As SDUI5Progress		'ignore
	Private SDUI5Progress35 As SDUI5Progress		'ignore
	Private SDUI5Progress36 As SDUI5Progress		'ignore
	Private SDUI5Progress37 As SDUI5Progress		'ignore
	Private SDUI5Progress38 As SDUI5Progress		'ignore
	Private SDUI5Progress39 As SDUI5Progress		'ignore
	Private SDUI5Progress40 As SDUI5Progress		'ignore
	Private SDUI5Progress41 As SDUI5Progress		'ignore
	Private SDUI5Progress42 As SDUI5Progress		'ignore
	Private SDUI5Progress43 As SDUI5Progress		'ignore
	Private SDUI5Progress44 As SDUI5Progress		'ignore
	Private SDUI5Progress45 As SDUI5Progress		'ignore
	Private SDUI5Progress46 As SDUI5Progress		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Progress47 As SDUI5Progress		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Progress48 As SDUI5Progress		'ignore
	Private SDUI5Row4 As SDUI5Row		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Progress49 As SDUI5Progress		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row3.Initialize(Me, "SDUI5Row3", "SDUI5Row3")
	SDUI5Row3.ParentID = "SDUI5Container1"
	SDUI5Row3.GridCols = ""
	SDUI5Row3.GridColsMd = "2"
	SDUI5Row3.GridColsSm = "1"
	BANano.Await(SDUI5Row3.AddComponent)
	'
	SDUI5Progress1.Initialize(Me, "SDUI5Progress1", "SDUI5Progress1")
	SDUI5Progress1.ParentID = "SDUI5Row3"
	SDUI5Progress1.BackgroundColor = ""
	SDUI5Progress1.Size = "xs"
	BANano.Await(SDUI5Progress1.AddComponent)
	'
	SDUI5Progress2.Initialize(Me, "SDUI5Progress2", "SDUI5Progress2")
	SDUI5Progress2.ParentID = "SDUI5Row3"
	SDUI5Progress2.BackgroundColor = ""
	SDUI5Progress2.Size = "sm"
	SDUI5Progress2.Value = "10"
	BANano.Await(SDUI5Progress2.AddComponent)
	'
	SDUI5Progress3.Initialize(Me, "SDUI5Progress3", "SDUI5Progress3")
	SDUI5Progress3.ParentID = "SDUI5Row3"
	SDUI5Progress3.BackgroundColor = ""
	SDUI5Progress3.Value = "40"
	BANano.Await(SDUI5Progress3.AddComponent)
	'
	SDUI5Progress4.Initialize(Me, "SDUI5Progress4", "SDUI5Progress4")
	SDUI5Progress4.ParentID = "SDUI5Row3"
	SDUI5Progress4.BackgroundColor = ""
	SDUI5Progress4.Size = "lg"
	SDUI5Progress4.Value = "70"
	BANano.Await(SDUI5Progress4.AddComponent)
	'
	SDUI5Progress5.Initialize(Me, "SDUI5Progress5", "SDUI5Progress5")
	SDUI5Progress5.ParentID = "SDUI5Row3"
	SDUI5Progress5.BackgroundColor = ""
	SDUI5Progress5.Size = "xl"
	SDUI5Progress5.Value = "100"
	BANano.Await(SDUI5Progress5.AddComponent)
	'
	SDUI5Progress6.Initialize(Me, "SDUI5Progress6", "SDUI5Progress6")
	SDUI5Progress6.ParentID = "SDUI5Row3"
	SDUI5Progress6.BackgroundColor = ""
	SDUI5Progress6.Color = "primary"
	BANano.Await(SDUI5Progress6.AddComponent)
	'
	SDUI5Progress7.Initialize(Me, "SDUI5Progress7", "SDUI5Progress7")
	SDUI5Progress7.ParentID = "SDUI5Row3"
	SDUI5Progress7.BackgroundColor = ""
	SDUI5Progress7.Color = "primary"
	SDUI5Progress7.Value = "10"
	BANano.Await(SDUI5Progress7.AddComponent)
	'
	SDUI5Progress8.Initialize(Me, "SDUI5Progress8", "SDUI5Progress8")
	SDUI5Progress8.ParentID = "SDUI5Row3"
	SDUI5Progress8.BackgroundColor = ""
	SDUI5Progress8.Color = "primary"
	SDUI5Progress8.Value = "40"
	BANano.Await(SDUI5Progress8.AddComponent)
	'
	SDUI5Progress9.Initialize(Me, "SDUI5Progress9", "SDUI5Progress9")
	SDUI5Progress9.ParentID = "SDUI5Row3"
	SDUI5Progress9.BackgroundColor = ""
	SDUI5Progress9.Color = "primary"
	SDUI5Progress9.Value = "70"
	BANano.Await(SDUI5Progress9.AddComponent)
	'
	SDUI5Progress10.Initialize(Me, "SDUI5Progress10", "SDUI5Progress10")
	SDUI5Progress10.ParentID = "SDUI5Row3"
	SDUI5Progress10.BackgroundColor = ""
	SDUI5Progress10.Color = "primary"
	SDUI5Progress10.Value = "100"
	BANano.Await(SDUI5Progress10.AddComponent)
	'
	SDUI5Progress11.Initialize(Me, "SDUI5Progress11", "SDUI5Progress11")
	SDUI5Progress11.ParentID = "SDUI5Row3"
	SDUI5Progress11.BackgroundColor = ""
	SDUI5Progress11.Color = "secondary"
	BANano.Await(SDUI5Progress11.AddComponent)
	'
	SDUI5Progress12.Initialize(Me, "SDUI5Progress12", "SDUI5Progress12")
	SDUI5Progress12.ParentID = "SDUI5Row3"
	SDUI5Progress12.BackgroundColor = ""
	SDUI5Progress12.Color = "secondary"
	SDUI5Progress12.Value = "10"
	BANano.Await(SDUI5Progress12.AddComponent)
	'
	SDUI5Progress13.Initialize(Me, "SDUI5Progress13", "SDUI5Progress13")
	SDUI5Progress13.ParentID = "SDUI5Row3"
	SDUI5Progress13.BackgroundColor = ""
	SDUI5Progress13.Color = "secondary"
	SDUI5Progress13.Value = "40"
	BANano.Await(SDUI5Progress13.AddComponent)
	'
	SDUI5Progress14.Initialize(Me, "SDUI5Progress14", "SDUI5Progress14")
	SDUI5Progress14.ParentID = "SDUI5Row3"
	SDUI5Progress14.BackgroundColor = ""
	SDUI5Progress14.Color = "secondary"
	SDUI5Progress14.Value = "70"
	BANano.Await(SDUI5Progress14.AddComponent)
	'
	SDUI5Progress15.Initialize(Me, "SDUI5Progress15", "SDUI5Progress15")
	SDUI5Progress15.ParentID = "SDUI5Row3"
	SDUI5Progress15.BackgroundColor = ""
	SDUI5Progress15.Color = "secondary"
	SDUI5Progress15.Value = "100"
	BANano.Await(SDUI5Progress15.AddComponent)
	'
	SDUI5Progress16.Initialize(Me, "SDUI5Progress16", "SDUI5Progress16")
	SDUI5Progress16.ParentID = "SDUI5Row3"
	SDUI5Progress16.BackgroundColor = ""
	SDUI5Progress16.Color = "accent"
	BANano.Await(SDUI5Progress16.AddComponent)
	'
	SDUI5Progress17.Initialize(Me, "SDUI5Progress17", "SDUI5Progress17")
	SDUI5Progress17.ParentID = "SDUI5Row3"
	SDUI5Progress17.BackgroundColor = ""
	SDUI5Progress17.Color = "accent"
	SDUI5Progress17.Value = "10"
	BANano.Await(SDUI5Progress17.AddComponent)
	'
	SDUI5Progress18.Initialize(Me, "SDUI5Progress18", "SDUI5Progress18")
	SDUI5Progress18.ParentID = "SDUI5Row3"
	SDUI5Progress18.BackgroundColor = ""
	SDUI5Progress18.Color = "accent"
	SDUI5Progress18.Value = "40"
	BANano.Await(SDUI5Progress18.AddComponent)
	'
	SDUI5Progress19.Initialize(Me, "SDUI5Progress19", "SDUI5Progress19")
	SDUI5Progress19.ParentID = "SDUI5Row3"
	SDUI5Progress19.BackgroundColor = ""
	SDUI5Progress19.Color = "accent"
	SDUI5Progress19.Value = "70"
	BANano.Await(SDUI5Progress19.AddComponent)
	'
	SDUI5Progress20.Initialize(Me, "SDUI5Progress20", "SDUI5Progress20")
	SDUI5Progress20.ParentID = "SDUI5Row3"
	SDUI5Progress20.BackgroundColor = ""
	SDUI5Progress20.Color = "accent"
	SDUI5Progress20.Value = "100"
	BANano.Await(SDUI5Progress20.AddComponent)
	'
	SDUI5Progress21.Initialize(Me, "SDUI5Progress21", "SDUI5Progress21")
	SDUI5Progress21.ParentID = "SDUI5Row3"
	SDUI5Progress21.BackgroundColor = ""
	SDUI5Progress21.Color = "neutral"
	BANano.Await(SDUI5Progress21.AddComponent)
	'
	SDUI5Progress22.Initialize(Me, "SDUI5Progress22", "SDUI5Progress22")
	SDUI5Progress22.ParentID = "SDUI5Row3"
	SDUI5Progress22.BackgroundColor = ""
	SDUI5Progress22.Color = "neutral"
	SDUI5Progress22.Value = "10"
	BANano.Await(SDUI5Progress22.AddComponent)
	'
	SDUI5Progress23.Initialize(Me, "SDUI5Progress23", "SDUI5Progress23")
	SDUI5Progress23.ParentID = "SDUI5Row3"
	SDUI5Progress23.BackgroundColor = ""
	SDUI5Progress23.Color = "neutral"
	SDUI5Progress23.Value = "40"
	BANano.Await(SDUI5Progress23.AddComponent)
	'
	SDUI5Progress24.Initialize(Me, "SDUI5Progress24", "SDUI5Progress24")
	SDUI5Progress24.ParentID = "SDUI5Row3"
	SDUI5Progress24.BackgroundColor = ""
	SDUI5Progress24.Color = "neutral"
	SDUI5Progress24.Value = "70"
	BANano.Await(SDUI5Progress24.AddComponent)
	'
	SDUI5Progress25.Initialize(Me, "SDUI5Progress25", "SDUI5Progress25")
	SDUI5Progress25.ParentID = "SDUI5Row3"
	SDUI5Progress25.BackgroundColor = ""
	SDUI5Progress25.Color = "neutral"
	SDUI5Progress25.Value = "100"
	BANano.Await(SDUI5Progress25.AddComponent)
	'
	SDUI5Progress26.Initialize(Me, "SDUI5Progress26", "SDUI5Progress26")
	SDUI5Progress26.ParentID = "SDUI5Row3"
	SDUI5Progress26.BackgroundColor = ""
	SDUI5Progress26.Color = "info"
	BANano.Await(SDUI5Progress26.AddComponent)
	'
	SDUI5Progress27.Initialize(Me, "SDUI5Progress27", "SDUI5Progress27")
	SDUI5Progress27.ParentID = "SDUI5Row3"
	SDUI5Progress27.BackgroundColor = ""
	SDUI5Progress27.Color = "info"
	SDUI5Progress27.Value = "10"
	BANano.Await(SDUI5Progress27.AddComponent)
	'
	SDUI5Progress28.Initialize(Me, "SDUI5Progress28", "SDUI5Progress28")
	SDUI5Progress28.ParentID = "SDUI5Row3"
	SDUI5Progress28.BackgroundColor = ""
	SDUI5Progress28.Color = "info"
	SDUI5Progress28.Value = "40"
	BANano.Await(SDUI5Progress28.AddComponent)
	'
	SDUI5Progress29.Initialize(Me, "SDUI5Progress29", "SDUI5Progress29")
	SDUI5Progress29.ParentID = "SDUI5Row3"
	SDUI5Progress29.BackgroundColor = ""
	SDUI5Progress29.Color = "info"
	SDUI5Progress29.Value = "70"
	BANano.Await(SDUI5Progress29.AddComponent)
	'
	SDUI5Progress30.Initialize(Me, "SDUI5Progress30", "SDUI5Progress30")
	SDUI5Progress30.ParentID = "SDUI5Row3"
	SDUI5Progress30.BackgroundColor = ""
	SDUI5Progress30.Color = "info"
	SDUI5Progress30.Value = "100"
	BANano.Await(SDUI5Progress30.AddComponent)
	'
	SDUI5Progress31.Initialize(Me, "SDUI5Progress31", "SDUI5Progress31")
	SDUI5Progress31.ParentID = "SDUI5Row3"
	SDUI5Progress31.BackgroundColor = ""
	SDUI5Progress31.Color = "success"
	BANano.Await(SDUI5Progress31.AddComponent)
	'
	SDUI5Progress32.Initialize(Me, "SDUI5Progress32", "SDUI5Progress32")
	SDUI5Progress32.ParentID = "SDUI5Row3"
	SDUI5Progress32.BackgroundColor = ""
	SDUI5Progress32.Color = "success"
	SDUI5Progress32.Value = "10"
	BANano.Await(SDUI5Progress32.AddComponent)
	'
	SDUI5Progress33.Initialize(Me, "SDUI5Progress33", "SDUI5Progress33")
	SDUI5Progress33.ParentID = "SDUI5Row3"
	SDUI5Progress33.BackgroundColor = ""
	SDUI5Progress33.Color = "success"
	SDUI5Progress33.Value = "40"
	BANano.Await(SDUI5Progress33.AddComponent)
	'
	SDUI5Progress34.Initialize(Me, "SDUI5Progress34", "SDUI5Progress34")
	SDUI5Progress34.ParentID = "SDUI5Row3"
	SDUI5Progress34.BackgroundColor = ""
	SDUI5Progress34.Color = "success"
	SDUI5Progress34.Value = "70"
	BANano.Await(SDUI5Progress34.AddComponent)
	'
	SDUI5Progress35.Initialize(Me, "SDUI5Progress35", "SDUI5Progress35")
	SDUI5Progress35.ParentID = "SDUI5Row3"
	SDUI5Progress35.BackgroundColor = ""
	SDUI5Progress35.Color = "success"
	SDUI5Progress35.Value = "100"
	BANano.Await(SDUI5Progress35.AddComponent)
	'
	SDUI5Progress36.Initialize(Me, "SDUI5Progress36", "SDUI5Progress36")
	SDUI5Progress36.ParentID = "SDUI5Row3"
	SDUI5Progress36.BackgroundColor = ""
	SDUI5Progress36.Color = "warning"
	BANano.Await(SDUI5Progress36.AddComponent)
	'
	SDUI5Progress37.Initialize(Me, "SDUI5Progress37", "SDUI5Progress37")
	SDUI5Progress37.ParentID = "SDUI5Row3"
	SDUI5Progress37.BackgroundColor = ""
	SDUI5Progress37.Color = "warning"
	SDUI5Progress37.Value = "10"
	BANano.Await(SDUI5Progress37.AddComponent)
	'
	SDUI5Progress38.Initialize(Me, "SDUI5Progress38", "SDUI5Progress38")
	SDUI5Progress38.ParentID = "SDUI5Row3"
	SDUI5Progress38.BackgroundColor = ""
	SDUI5Progress38.Color = "warning"
	SDUI5Progress38.Value = "40"
	BANano.Await(SDUI5Progress38.AddComponent)
	'
	SDUI5Progress39.Initialize(Me, "SDUI5Progress39", "SDUI5Progress39")
	SDUI5Progress39.ParentID = "SDUI5Row3"
	SDUI5Progress39.BackgroundColor = ""
	SDUI5Progress39.Color = "warning"
	SDUI5Progress39.Value = "70"
	BANano.Await(SDUI5Progress39.AddComponent)
	'
	SDUI5Progress40.Initialize(Me, "SDUI5Progress40", "SDUI5Progress40")
	SDUI5Progress40.ParentID = "SDUI5Row3"
	SDUI5Progress40.BackgroundColor = ""
	SDUI5Progress40.Color = "warning"
	SDUI5Progress40.Value = "100"
	BANano.Await(SDUI5Progress40.AddComponent)
	'
	SDUI5Progress41.Initialize(Me, "SDUI5Progress41", "SDUI5Progress41")
	SDUI5Progress41.ParentID = "SDUI5Row3"
	SDUI5Progress41.BackgroundColor = ""
	SDUI5Progress41.Color = "error"
	BANano.Await(SDUI5Progress41.AddComponent)
	'
	SDUI5Progress42.Initialize(Me, "SDUI5Progress42", "SDUI5Progress42")
	SDUI5Progress42.ParentID = "SDUI5Row3"
	SDUI5Progress42.BackgroundColor = ""
	SDUI5Progress42.Color = "error"
	SDUI5Progress42.Value = "10"
	BANano.Await(SDUI5Progress42.AddComponent)
	'
	SDUI5Progress43.Initialize(Me, "SDUI5Progress43", "SDUI5Progress43")
	SDUI5Progress43.ParentID = "SDUI5Row3"
	SDUI5Progress43.BackgroundColor = ""
	SDUI5Progress43.Color = "error"
	SDUI5Progress43.Value = "40"
	BANano.Await(SDUI5Progress43.AddComponent)
	'
	SDUI5Progress44.Initialize(Me, "SDUI5Progress44", "SDUI5Progress44")
	SDUI5Progress44.ParentID = "SDUI5Row3"
	SDUI5Progress44.BackgroundColor = ""
	SDUI5Progress44.Color = "error"
	SDUI5Progress44.Value = "70"
	BANano.Await(SDUI5Progress44.AddComponent)
	'
	SDUI5Progress45.Initialize(Me, "SDUI5Progress45", "SDUI5Progress45")
	SDUI5Progress45.ParentID = "SDUI5Row3"
	SDUI5Progress45.BackgroundColor = ""
	SDUI5Progress45.Color = "error"
	SDUI5Progress45.Value = "100"
	BANano.Await(SDUI5Progress45.AddComponent)
	'
	SDUI5Progress46.Initialize(Me, "SDUI5Progress46", "SDUI5Progress46")
	SDUI5Progress46.ParentID = "SDUI5Row3"
	SDUI5Progress46.BackgroundColor = ""
	SDUI5Progress46.Indeterminate = True
	BANano.Await(SDUI5Progress46.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = "8"
	SDUI5Column1.SizeSm = "12"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "4"
	SDUI5Column2.SizeSm = "12"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	progTip.Initialize(Me, "progTip", "progTip")
	progTip.ParentID = "SDUI5Column1"
	progTip.BackgroundColor = ""
	progTip.Label = "Progress"
	progTip.ProgressType = "tooltip"
	progTip.Value = "30"
	BANano.Await(progTip.AddComponent)
	'
	btnStart.Initialize(Me, "btnStart", "btnStart")
	btnStart.ParentID = "SDUI5Column2"
	btnStart.IconSize = "none"
	'btnStart.Image = ""
	'btnStart.ImageHeight = "32px"
	'btnStart.ImageWidth = "32px"
	btnStart.MarginAXYTBLR = "a=?; x=?; y=?; t=32px; b=?; l=?; r=?"
	btnStart.Size = "none"
	btnStart.Text = "Start"
	BANano.Await(btnStart.AddComponent)
	'
	btnStop.Initialize(Me, "btnStop", "btnStop")
	btnStop.ParentID = "SDUI5Column2"
	btnStop.IconSize = "none"
	'btnStop.Image = ""
	'btnStop.ImageHeight = "32px"
	'btnStop.ImageWidth = "32px"
	btnStop.MarginAXYTBLR = "a=?; x=?; y=?; t=32px; b=?; l=5px; r=?"
	btnStop.Size = "none"
	btnStop.Text = "Stop"
	BANano.Await(btnStop.AddComponent)
	'
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row2"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Progress47.Initialize(Me, "SDUI5Progress47", "SDUI5Progress47")
	SDUI5Progress47.ParentID = "SDUI5Column3"
	SDUI5Progress47.BackgroundColor = ""
	SDUI5Progress47.Border = False
	SDUI5Progress47.BorderColor = ""
	SDUI5Progress47.Label = "Progress"
	SDUI5Progress47.ProgressType = "legend"
	SDUI5Progress47.TextSize = "sm"
	SDUI5Progress47.TextVisible = True
	SDUI5Progress47.Value = "30"
	BANano.Await(SDUI5Progress47.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row2"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Progress48.Initialize(Me, "SDUI5Progress48", "SDUI5Progress48")
	SDUI5Progress48.ParentID = "SDUI5Column4"
	SDUI5Progress48.Label = "Progress"
	SDUI5Progress48.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Progress48.ProgressType = "legend"
	SDUI5Progress48.RoundedBox = True
	SDUI5Progress48.Shadow = "lg"
	SDUI5Progress48.TextSize = "sm"
	SDUI5Progress48.TextVisible = True
	SDUI5Progress48.Value = "30"
	BANano.Await(SDUI5Progress48.AddComponent)
	'
	SDUI5Row4.Initialize(Me, "SDUI5Row4", "SDUI5Row4")
	SDUI5Row4.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row4"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Progress49.Initialize(Me, "SDUI5Progress49", "SDUI5Progress49")
	SDUI5Progress49.ParentID = "SDUI5Column5"
	SDUI5Progress49.BackgroundColor = ""
	SDUI5Progress49.Border = False
	SDUI5Progress49.BorderColor = ""
	SDUI5Progress49.Label = "Normal Text"
	SDUI5Progress49.ProgressType = "normal-text"
	SDUI5Progress49.TextSize = "md"
	SDUI5Progress49.TextVisible = True
	SDUI5Progress49.Value = "30"
	BANano.Await(SDUI5Progress49.AddComponent)
	pgIndex.UpdateTitle("SDUI5Progress")
	progTimer.Initialize("progTimer", 1000)
	progTimer.Enabled = False
End Sub

Private Sub btnStop_Click (e As BANanoEvent)
	e.PreventDefault 
	app.ShowToastSuccess("Timer stopped...")
	progTimer.Enabled = False
End Sub

Sub progTimer_Tick
	'get the current value
	Dim cValue As Int = progTip.Value
	'get the step value
	Dim sValue As Int = progTip.StepValue
	'get the min value
	Dim miValue As Int = progTip.MinValue
	'get the max value
	Dim maValue As Int = progTip.maxvalue
	'add the current value to the step value
	Dim nValue As Int = BANano.parseInt(cValue) + BANano.parseInt(sValue)
	If nValue >= maValue Then
		progTip.Value = miValue
		progTimer.Enabled = False
	Else
		progTip.Value = nValue
	End If	
End Sub

Private Sub btnStart_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Timer started...")
	progTimer.Enabled = True
End Sub

