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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Row4 As SDUI5Row		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Row5 As SDUI5Row		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Row6 As SDUI5Row		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5Row7 As SDUI5Row		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5Column13 As SDUI5Column		'ignore
	Private SDUI5Row8 As SDUI5Row		'ignore
	Private SDUI5Column14 As SDUI5Column		'ignore
	Private SDUI5Column15 As SDUI5Column		'ignore
	Private SDUI5Row9 As SDUI5Row		'ignore
	Private SDUI5Column16 As SDUI5Column		'ignore
	Private SDUI5Column17 As SDUI5Column		'ignore
	Private SDUI5Column18 As SDUI5Column		'ignore
	Private SDUI5Column19 As SDUI5Column		'ignore
	Private SDUI5Column20 As SDUI5Column		'ignore
	Private SDUI5Row10 As SDUI5Row		'ignore
	Private SDUI5Column21 As SDUI5Column		'ignore
	Private SDUI5Column22 As SDUI5Column		'ignore
	Private SDUI5Column23 As SDUI5Column		'ignore
	Private SDUI5Column24 As SDUI5Column		'ignore
	Private SDUI5Column25 As SDUI5Column		'ignore
	Private SDUI5Column26 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.TextAlign = "center"
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
	SDUI5Column1.BackgroundColor = "primary"
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column1.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column1.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column1.Text = "12"
	SDUI5Column1.TextColor = "primary-content"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = "SDUI5Container1"
	SDUI5Row2.Gap = ""
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row2"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.BackgroundColor = "primary"
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column2.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column2.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column2.Size = "11"
	SDUI5Column2.Text = "11"
	SDUI5Column2.TextColor = "primary-content"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row2"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.BackgroundColor = "accent"
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column3.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column3.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column3.Size = "1"
	SDUI5Column3.Text = "1"
	SDUI5Column3.TextColor = "white"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Row3.Initialize(Me, "SDUI5Row3", "SDUI5Row3")
	SDUI5Row3.ParentID = "SDUI5Container1"
	SDUI5Row3.Gap = ""
	BANano.Await(SDUI5Row3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row3"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.BackgroundColor = "primary"
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column4.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column4.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column4.Size = "10"
	SDUI5Column4.Text = "10"
	SDUI5Column4.TextColor = "primary-content"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row3"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.BackgroundColor = "accent"
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column5.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column5.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column5.Size = "2"
	SDUI5Column5.Text = "2"
	SDUI5Column5.TextColor = "white"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Row4.Initialize(Me, "SDUI5Row4", "SDUI5Row4")
	SDUI5Row4.ParentID = "SDUI5Container1"
	SDUI5Row4.Gap = ""
	BANano.Await(SDUI5Row4.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row4"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.BackgroundColor = "primary"
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column6.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column6.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column6.Size = "9"
	SDUI5Column6.Text = "9"
	SDUI5Column6.TextColor = "primary-content"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row4"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.BackgroundColor = "accent"
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column7.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column7.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column7.Size = "3"
	SDUI5Column7.Text = "3"
	SDUI5Column7.TextColor = "white"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5Row5.Initialize(Me, "SDUI5Row5", "SDUI5Row5")
	SDUI5Row5.ParentID = "SDUI5Container1"
	SDUI5Row5.Gap = ""
	BANano.Await(SDUI5Row5.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row5"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.BackgroundColor = "primary"
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column8.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column8.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column8.Size = "8"
	SDUI5Column8.Text = "8"
	SDUI5Column8.TextColor = "primary-content"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row5"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.BackgroundColor = "accent"
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column9.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column9.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column9.Size = "4"
	SDUI5Column9.Text = "4"
	SDUI5Column9.TextColor = "white"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5Row6.Initialize(Me, "SDUI5Row6", "SDUI5Row6")
	SDUI5Row6.ParentID = "SDUI5Container1"
	SDUI5Row6.Gap = ""
	BANano.Await(SDUI5Row6.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row6"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.BackgroundColor = "primary"
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column10.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column10.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column10.Size = "7"
	SDUI5Column10.Text = "7"
	SDUI5Column10.TextColor = "primary-content"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row6"
	SDUI5Column11.AlignSelf = ""
	SDUI5Column11.BackgroundColor = "accent"
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column11.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column11.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column11.Size = "5"
	SDUI5Column11.Text = "5"
	SDUI5Column11.TextColor = "white"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	SDUI5Row7.Initialize(Me, "SDUI5Row7", "SDUI5Row7")
	SDUI5Row7.ParentID = "SDUI5Container1"
	SDUI5Row7.Gap = ""
	BANano.Await(SDUI5Row7.AddComponent)
	'
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row7"
	SDUI5Column12.AlignSelf = ""
	SDUI5Column12.BackgroundColor = "primary"
	SDUI5Column12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column12.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column12.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column12.Size = "6"
	SDUI5Column12.Text = "6"
	SDUI5Column12.TextColor = "primary-content"
	BANano.Await(SDUI5Column12.AddComponent)
	'
	SDUI5Column13.Initialize(Me, "SDUI5Column13", "SDUI5Column13")
	SDUI5Column13.ParentID = "SDUI5Row7"
	SDUI5Column13.AlignSelf = ""
	SDUI5Column13.BackgroundColor = "accent"
	SDUI5Column13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column13.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column13.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column13.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column13.Size = "6"
	SDUI5Column13.Text = "6"
	SDUI5Column13.TextColor = "white"
	BANano.Await(SDUI5Column13.AddComponent)
	'
	SDUI5Row8.Initialize(Me, "SDUI5Row8", "SDUI5Row8")
	SDUI5Row8.ParentID = "SDUI5Container1"
	SDUI5Row8.Gap = ""
	BANano.Await(SDUI5Row8.AddComponent)
	'
	SDUI5Column14.Initialize(Me, "SDUI5Column14", "SDUI5Column14")
	SDUI5Column14.ParentID = "SDUI5Row8"
	SDUI5Column14.AlignSelf = ""
	SDUI5Column14.BackgroundColor = "primary"
	SDUI5Column14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column14.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column14.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column14.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column14.Size = "4"
	SDUI5Column14.Text = "4"
	SDUI5Column14.TextColor = "primary-content"
	BANano.Await(SDUI5Column14.AddComponent)
	'
	SDUI5Column15.Initialize(Me, "SDUI5Column15", "SDUI5Column15")
	SDUI5Column15.ParentID = "SDUI5Row8"
	SDUI5Column15.AlignSelf = ""
	SDUI5Column15.BackgroundColor = "accent"
	SDUI5Column15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column15.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column15.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column15.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column15.Size = "4"
	SDUI5Column15.Text = "4"
	SDUI5Column15.TextColor = "white"
	BANano.Await(SDUI5Column15.AddComponent)
	'
	SDUI5Row9.Initialize(Me, "SDUI5Row9", "SDUI5Row9")
	SDUI5Row9.ParentID = "SDUI5Container1"
	SDUI5Row9.Gap = ""
	BANano.Await(SDUI5Row9.AddComponent)
	'
	SDUI5Column16.Initialize(Me, "SDUI5Column16", "SDUI5Column16")
	SDUI5Column16.ParentID = "SDUI5Row9"
	SDUI5Column16.AlignSelf = ""
	SDUI5Column16.BackgroundColor = "primary"
	SDUI5Column16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column16.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column16.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column16.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column16.Size = "3"
	SDUI5Column16.Text = "3"
	SDUI5Column16.TextColor = "primary-content"
	BANano.Await(SDUI5Column16.AddComponent)
	'
	SDUI5Column17.Initialize(Me, "SDUI5Column17", "SDUI5Column17")
	SDUI5Column17.ParentID = "SDUI5Row9"
	SDUI5Column17.AlignSelf = ""
	SDUI5Column17.BackgroundColor = "accent"
	SDUI5Column17.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column17.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column17.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column17.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column17.Size = "3"
	SDUI5Column17.Text = "3"
	SDUI5Column17.TextColor = "white"
	BANano.Await(SDUI5Column17.AddComponent)
	'
	SDUI5Column18.Initialize(Me, "SDUI5Column18", "SDUI5Column18")
	SDUI5Column18.ParentID = "SDUI5Row8"
	SDUI5Column18.AlignSelf = ""
	SDUI5Column18.BackgroundColor = "warning"
	SDUI5Column18.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column18.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column18.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column18.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column18.Size = "4"
	SDUI5Column18.Text = "4"
	BANano.Await(SDUI5Column18.AddComponent)
	'
	SDUI5Column19.Initialize(Me, "SDUI5Column19", "SDUI5Column19")
	SDUI5Column19.ParentID = "SDUI5Row9"
	SDUI5Column19.AlignSelf = ""
	SDUI5Column19.BackgroundColor = "warning"
	SDUI5Column19.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column19.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column19.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column19.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column19.Size = "3"
	SDUI5Column19.Text = "3"
	BANano.Await(SDUI5Column19.AddComponent)
	'
	SDUI5Column20.Initialize(Me, "SDUI5Column20", "SDUI5Column20")
	SDUI5Column20.ParentID = "SDUI5Row9"
	SDUI5Column20.AlignSelf = ""
	SDUI5Column20.BackgroundColor = "error"
	SDUI5Column20.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column20.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column20.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column20.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column20.Size = "3"
	SDUI5Column20.Text = "3"
	BANano.Await(SDUI5Column20.AddComponent)
	'
	SDUI5Row10.Initialize(Me, "SDUI5Row10", "SDUI5Row10")
	SDUI5Row10.ParentID = "SDUI5Container1"
	SDUI5Row10.Gap = ""
	BANano.Await(SDUI5Row10.AddComponent)
	'
	SDUI5Column21.Initialize(Me, "SDUI5Column21", "SDUI5Column21")
	SDUI5Column21.ParentID = "SDUI5Row10"
	SDUI5Column21.AlignSelf = ""
	SDUI5Column21.BackgroundColor = "primary"
	SDUI5Column21.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column21.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column21.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column21.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column21.Size = "2"
	SDUI5Column21.Text = "2"
	SDUI5Column21.TextColor = "primary-content"
	BANano.Await(SDUI5Column21.AddComponent)
	'
	SDUI5Column22.Initialize(Me, "SDUI5Column22", "SDUI5Column22")
	SDUI5Column22.ParentID = "SDUI5Row10"
	SDUI5Column22.AlignSelf = ""
	SDUI5Column22.BackgroundColor = "accent"
	SDUI5Column22.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column22.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column22.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column22.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column22.Size = "2"
	SDUI5Column22.Text = "2"
	SDUI5Column22.TextColor = "white"
	BANano.Await(SDUI5Column22.AddComponent)
	'
	SDUI5Column23.Initialize(Me, "SDUI5Column23", "SDUI5Column23")
	SDUI5Column23.ParentID = "SDUI5Row10"
	SDUI5Column23.AlignSelf = ""
	SDUI5Column23.BackgroundColor = "warning"
	SDUI5Column23.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column23.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column23.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column23.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column23.Size = "2"
	SDUI5Column23.Text = "2"
	BANano.Await(SDUI5Column23.AddComponent)
	'
	SDUI5Column24.Initialize(Me, "SDUI5Column24", "SDUI5Column24")
	SDUI5Column24.ParentID = "SDUI5Row10"
	SDUI5Column24.AlignSelf = ""
	SDUI5Column24.BackgroundColor = "error"
	SDUI5Column24.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column24.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column24.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column24.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column24.Size = "2"
	SDUI5Column24.Text = "2"
	BANano.Await(SDUI5Column24.AddComponent)
	'
	SDUI5Column25.Initialize(Me, "SDUI5Column25", "SDUI5Column25")
	SDUI5Column25.ParentID = "SDUI5Row10"
	SDUI5Column25.AlignSelf = ""
	SDUI5Column25.BackgroundColor = "info"
	SDUI5Column25.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column25.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column25.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column25.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column25.Size = "2"
	SDUI5Column25.Text = "2"
	BANano.Await(SDUI5Column25.AddComponent)
	'
	SDUI5Column26.Initialize(Me, "SDUI5Column26", "SDUI5Column26")
	SDUI5Column26.ParentID = "SDUI5Row10"
	SDUI5Column26.AlignSelf = ""
	SDUI5Column26.BackgroundColor = "success"
	SDUI5Column26.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column26.BorderColor = "a=black; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column26.BorderStyle = "a=solid; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column26.BorderWidth = "a=1px; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	SDUI5Column26.Size = "2"
	SDUI5Column26.Text = "2"
	BANano.Await(SDUI5Column26.AddComponent)
	pgIndex.UpdateTitle("SDUI5Grid")
End Sub

