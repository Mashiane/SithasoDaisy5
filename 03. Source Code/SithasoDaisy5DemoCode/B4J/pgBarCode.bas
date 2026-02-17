B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5BarCode1 As SDUI5BarCode		'ignore
	Private SDUI5BarCode2 As SDUI5BarCode		'ignore
	Private SDUI5BarCode3 As SDUI5BarCode		'ignore
	Private SDUI5BarCode4 As SDUI5BarCode		'ignore
	Private SDUI5BarCode5 As SDUI5BarCode		'ignore
	Private SDUI5BarCode6 As SDUI5BarCode		'ignore
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesBarCode)
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
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Size = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.Size = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5BarCode1.Initialize(Me, "SDUI5BarCode1", "SDUI5BarCode1")
	SDUI5BarCode1.ParentID = "SDUI5Column1"
	SDUI5BarCode1.Format = "EAN13"
	SDUI5BarCode1.Text = "EAN13"
	BANano.Await(SDUI5BarCode1.AddComponent)
	'
	SDUI5BarCode2.Initialize(Me, "SDUI5BarCode2", "SDUI5BarCode2")
	SDUI5BarCode2.ParentID = "SDUI5Column2"
	SDUI5BarCode2.Format = "CODE128A"
	SDUI5BarCode2.Text = "Code 128A"
	SDUI5BarCode2.Width = 3
	BANano.Await(SDUI5BarCode2.AddComponent)
	'
	SDUI5BarCode3.Initialize(Me, "SDUI5BarCode3", "SDUI5BarCode3")
	SDUI5BarCode3.ParentID = "SDUI5Column3"
	SDUI5BarCode3.Format = "CODE39"
	SDUI5BarCode3.Text = "Code 39"
	SDUI5BarCode3.Width = 4
	BANano.Await(SDUI5BarCode3.AddComponent)
	'
	SDUI5BarCode4.Initialize(Me, "SDUI5BarCode4", "SDUI5BarCode4")
	SDUI5BarCode4.ParentID = "SDUI5Column4"
	SDUI5BarCode4.Format = "GenericBarcode"
	SDUI5BarCode4.Text = "Generic"
	SDUI5BarCode4.Width = 5
	BANano.Await(SDUI5BarCode4.AddComponent)
	'
	SDUI5BarCode5.Initialize(Me, "SDUI5BarCode5", "SDUI5BarCode5")
	SDUI5BarCode5.ParentID = "SDUI5Column5"
	SDUI5BarCode5.Format = "pharmacode"
	SDUI5BarCode5.Text = "Phama"
	SDUI5BarCode5.Width = 3
	BANano.Await(SDUI5BarCode5.AddComponent)
	'
	SDUI5BarCode6.Initialize(Me, "SDUI5BarCode6", "SDUI5BarCode6")
	SDUI5BarCode6.ParentID = "SDUI5Column6"
	SDUI5BarCode6.Format = "UPC"
	SDUI5BarCode6.Text = "UPC"
	SDUI5BarCode6.Width = 4
	BANano.Await(SDUI5BarCode6.AddComponent)
	pgIndex.UpdateTitle("SDUI5BarCode")
End Sub

