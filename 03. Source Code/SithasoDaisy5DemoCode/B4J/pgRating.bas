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
	Private SDUI5Rating1 As SDUI5Rating		'ignore
	Private SDUI5Rating17 As SDUI5Rating		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Rating2 As SDUI5Rating		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Rating8 As SDUI5Rating		'ignore
	Private SDUI5Rating16 As SDUI5Rating		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Rating4 As SDUI5Rating		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Rating3 As SDUI5Rating		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Rating5 As SDUI5Rating		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Rating6 As SDUI5Rating		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Rating7 As SDUI5Rating		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Rating9 As SDUI5Rating		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5Rating10 As SDUI5Rating		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5Rating11 As SDUI5Rating		'ignore
	Private SDUI5Column13 As SDUI5Column		'ignore
	Private SDUI5Rating12 As SDUI5Rating		'ignore
	Private SDUI5Column14 As SDUI5Column		'ignore
	Private SDUI5Rating13 As SDUI5Rating		'ignore
	Private SDUI5Column15 As SDUI5Column		'ignore
	Private SDUI5Rating14 As SDUI5Rating		'ignore
	Private SDUI5Column16 As SDUI5Column		'ignore
	Private SDUI5Rating15 As SDUI5Rating		'ignore
	Private SDUI5Column17 As SDUI5Column		'ignore
	Private SDUI5Column18 As SDUI5Column		'ignore
	Private SDUI5Rating18 As SDUI5Rating		'ignore
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
	SDUI5Rating1.Initialize(Me, "SDUI5Rating1", "SDUI5Rating1")
	SDUI5Rating1.ParentID = "SDUI5Column1"
	SDUI5Rating1.BackgroundColor = ""
	SDUI5Rating1.Border = False
	SDUI5Rating1.BorderColor = ""
	SDUI5Rating1.InputType = "legend"
	'SDUI5Rating1.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating1.AddComponent)
	'
	SDUI5Rating2.Initialize(Me, "SDUI5Rating2", "SDUI5Rating2")
	SDUI5Rating2.ParentID = "SDUI5Column2"
	SDUI5Rating2.BackgroundColor = ""
	SDUI5Rating2.Color = "warning"
	SDUI5Rating2.FirstHidden = False
	'SDUI5Rating2.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating2.AddComponent)
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
	SDUI5Rating8.Initialize(Me, "SDUI5Rating8", "SDUI5Rating8")
	SDUI5Rating8.ParentID = "SDUI5Column3"
	SDUI5Rating8.BackgroundColor = ""
	SDUI5Rating8.FirstHidden = False
	'SDUI5Rating8.RatingBackgroundColor = ""
	SDUI5Rating8.Size = "xl"
	BANano.Await(SDUI5Rating8.AddComponent)
	'
	SDUI5Rating16.Initialize(Me, "SDUI5Rating16", "SDUI5Rating16")
	SDUI5Rating16.ParentID = "SDUI5Column4"
	SDUI5Rating16.BackgroundColor = ""
	SDUI5Rating16.Color = "warning"
	SDUI5Rating16.FirstHidden = False
	'SDUI5Rating16.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating16.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Rating4.Initialize(Me, "SDUI5Rating4", "SDUI5Rating4")
	SDUI5Rating4.ParentID = "SDUI5Column5"
	SDUI5Rating4.BackgroundColor = ""
	SDUI5Rating4.FirstHidden = False
	'SDUI5Rating4.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating4.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Rating3.Initialize(Me, "SDUI5Rating3", "SDUI5Rating3")
	SDUI5Rating3.ParentID = "SDUI5Column6"
	SDUI5Rating3.BackgroundColor = ""
	SDUI5Rating3.FirstHidden = False
	'SDUI5Rating3.RatingBackgroundColor = ""
	SDUI5Rating3.ReadOnly = True
	BANano.Await(SDUI5Rating3.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.SizeMd = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5Rating5.Initialize(Me, "SDUI5Rating5", "SDUI5Rating5")
	SDUI5Rating5.ParentID = "SDUI5Column7"
	SDUI5Rating5.BackgroundColor = ""
	SDUI5Rating5.FirstHidden = False
	'SDUI5Rating5.RatingBackgroundColor = ""
	SDUI5Rating5.Size = "xs"
	BANano.Await(SDUI5Rating5.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.SizeMd = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5Rating6.Initialize(Me, "SDUI5Rating6", "SDUI5Rating6")
	SDUI5Rating6.ParentID = "SDUI5Column8"
	SDUI5Rating6.BackgroundColor = ""
	SDUI5Rating6.FirstHidden = False
	'SDUI5Rating6.RatingBackgroundColor = ""
	SDUI5Rating6.Size = "sm"
	BANano.Await(SDUI5Rating6.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row1"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.SizeMd = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5Rating7.Initialize(Me, "SDUI5Rating7", "SDUI5Rating7")
	SDUI5Rating7.ParentID = "SDUI5Column9"
	SDUI5Rating7.BackgroundColor = ""
	SDUI5Rating7.FirstHidden = False
	'SDUI5Rating7.RatingBackgroundColor = ""
	SDUI5Rating7.Size = "lg"
	BANano.Await(SDUI5Rating7.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row1"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.SizeMd = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5Rating9.Initialize(Me, "SDUI5Rating9", "SDUI5Rating9")
	SDUI5Rating9.ParentID = "SDUI5Column10"
	SDUI5Rating9.BackgroundColor = ""
	SDUI5Rating9.Color = "accent"
	SDUI5Rating9.FirstHidden = False
	'SDUI5Rating9.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating9.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row1"
	SDUI5Column11.AlignSelf = ""
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.SizeMd = "6"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	SDUI5Rating10.Initialize(Me, "SDUI5Rating10", "SDUI5Rating10")
	SDUI5Rating10.ParentID = "SDUI5Column11"
	SDUI5Rating10.BackgroundColor = ""
	SDUI5Rating10.Color = "error"
	SDUI5Rating10.FirstHidden = False
	SDUI5Rating10.Mask = "heart"
	'SDUI5Rating10.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating10.AddComponent)
	'
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row1"
	SDUI5Column12.AlignSelf = ""
	SDUI5Column12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.SizeMd = "6"
	BANano.Await(SDUI5Column12.AddComponent)
	'
	SDUI5Rating11.Initialize(Me, "SDUI5Rating11", "SDUI5Rating11")
	SDUI5Rating11.ParentID = "SDUI5Column12"
	SDUI5Rating11.BackgroundColor = ""
	SDUI5Rating11.Color = "info"
	SDUI5Rating11.FirstHidden = False
	SDUI5Rating11.Mask = "circle"
	'SDUI5Rating11.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating11.AddComponent)
	'
	SDUI5Column13.Initialize(Me, "SDUI5Column13", "SDUI5Column13")
	SDUI5Column13.ParentID = "SDUI5Row1"
	SDUI5Column13.AlignSelf = ""
	SDUI5Column13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column13.SizeMd = "6"
	BANano.Await(SDUI5Column13.AddComponent)
	'
	SDUI5Rating12.Initialize(Me, "SDUI5Rating12", "SDUI5Rating12")
	SDUI5Rating12.ParentID = "SDUI5Column13"
	SDUI5Rating12.BackgroundColor = ""
	SDUI5Rating12.Color = "neutral"
	SDUI5Rating12.FirstHidden = False
	SDUI5Rating12.Mask = "triangle"
	'SDUI5Rating12.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating12.AddComponent)
	'
	SDUI5Column14.Initialize(Me, "SDUI5Column14", "SDUI5Column14")
	SDUI5Column14.ParentID = "SDUI5Row1"
	SDUI5Column14.AlignSelf = ""
	SDUI5Column14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column14.SizeMd = "6"
	BANano.Await(SDUI5Column14.AddComponent)
	'
	SDUI5Rating13.Initialize(Me, "SDUI5Rating13", "SDUI5Rating13")
	SDUI5Rating13.ParentID = "SDUI5Column14"
	SDUI5Rating13.BackgroundColor = ""
	SDUI5Rating13.FirstHidden = False
	SDUI5Rating13.Mask = "hexagon"
	'SDUI5Rating13.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating13.AddComponent)
	'
	SDUI5Column15.Initialize(Me, "SDUI5Column15", "SDUI5Column15")
	SDUI5Column15.ParentID = "SDUI5Row1"
	SDUI5Column15.AlignSelf = ""
	SDUI5Column15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column15.SizeMd = "6"
	BANano.Await(SDUI5Column15.AddComponent)
	'
	SDUI5Rating14.Initialize(Me, "SDUI5Rating14", "SDUI5Rating14")
	SDUI5Rating14.ParentID = "SDUI5Column15"
	SDUI5Rating14.BackgroundColor = ""
	SDUI5Rating14.Color = "secondary"
	SDUI5Rating14.FirstHidden = False
	SDUI5Rating14.Mask = "diamond"
	'SDUI5Rating14.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating14.AddComponent)
	'
	SDUI5Column16.Initialize(Me, "SDUI5Column16", "SDUI5Column16")
	SDUI5Column16.ParentID = "SDUI5Row1"
	SDUI5Column16.AlignSelf = ""
	SDUI5Column16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column16.SizeMd = "6"
	BANano.Await(SDUI5Column16.AddComponent)
	'
	SDUI5Rating15.Initialize(Me, "SDUI5Rating15", "SDUI5Rating15")
	SDUI5Rating15.ParentID = "SDUI5Column16"
	SDUI5Rating15.BackgroundColor = ""
	SDUI5Rating15.Color = "success"
	SDUI5Rating15.FirstHidden = False
	'SDUI5Rating15.RatingBackgroundColor = ""
	BANano.Await(SDUI5Rating15.AddComponent)
	'
	SDUI5Column17.Initialize(Me, "SDUI5Column17", "SDUI5Column17")
	SDUI5Column17.ParentID = "SDUI5Row1"
	SDUI5Column17.AlignSelf = ""
	SDUI5Column17.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column17.SizeMd = "6"
	BANano.Await(SDUI5Column17.AddComponent)
	'
	SDUI5Rating17.Initialize(Me, "SDUI5Rating17", "SDUI5Rating17")
	SDUI5Rating17.ParentID = "SDUI5Column17"
	SDUI5Rating17.BackgroundColor = ""
	SDUI5Rating17.Half = True
	'SDUI5Rating17.RatingBackgroundColor = ""
	SDUI5Rating17.Size = "xl"
	BANano.Await(SDUI5Rating17.AddComponent)
	'
	SDUI5Column18.Initialize(Me, "SDUI5Column18", "SDUI5Column18")
	SDUI5Column18.ParentID = "SDUI5Row1"
	SDUI5Column18.AlignSelf = ""
	SDUI5Column18.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column18.SizeMd = "6"
	BANano.Await(SDUI5Column18.AddComponent)
	'
	SDUI5Rating18.Initialize(Me, "SDUI5Rating18", "SDUI5Rating18")
	SDUI5Rating18.ParentID = "SDUI5Column18"
	SDUI5Rating18.Color = "success"
	SDUI5Rating18.InputType = "legend"
	SDUI5Rating18.Label = "Legend Rating"
	SDUI5Rating18.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	'SDUI5Rating18.RatingBackgroundColor = ""
	SDUI5Rating18.Required = True
	SDUI5Rating18.RoundedBox = True
	SDUI5Rating18.Shadow = "lg"
	BANano.Await(SDUI5Rating18.AddComponent)
	pgIndex.UpdateTitle("SDUI5Rating")
End Sub

Private Sub SDUI5Rating1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Rating17_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

