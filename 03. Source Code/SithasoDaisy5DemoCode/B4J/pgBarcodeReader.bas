B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano					'ignore
	Private app As SDUI5App						'ignore
	Private bcr1 As SDUI5BarcodeReader			'ignore
	Private btnScan As SDUI5Button				'ignore
	Private btnStopScan As SDUI5Button			'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesBarCodeReader)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
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
	SDUI5Column1.Size = ""
	SDUI5Column1.SizeMd = "6"
	SDUI5Column1.SizeSm = "12"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = ""
	SDUI5Column2.SizeMd = "6"
	SDUI5Column2.SizeSm = "12"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	bcr1.Initialize(Me, "bcr1", "bcr1")
	bcr1.ParentID = "SDUI5Column1"
	bcr1.Fps = 10
	bcr1.Rounded = "md"
	bcr1.Shadow = "shadow"
	BANano.Await(bcr1.AddComponent)
	'
	btnScan.Initialize(Me, "btnScan", "btnScan")
	btnScan.ParentID = "SDUI5Column2"
	btnScan.Block = True
	'btnScan.Image = ""
	'btnScan.ImageHeight = "32px"
	'btnScan.ImageWidth = "32px"
	btnScan.IndicatorSize = "xs"
	btnScan.MarginAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	btnScan.Size = "none"
	btnScan.Text = "Start Scan"
	BANano.Await(btnScan.AddComponent)
	'
	btnStopScan.Initialize(Me, "btnStopScan", "btnStopScan")
	btnStopScan.ParentID = "SDUI5Column2"
	btnStopScan.Block = True
	'btnStopScan.Image = ""
	'btnStopScan.ImageHeight = "32px"
	'btnStopScan.ImageWidth = "32px"
	btnStopScan.IndicatorSize = "xs"
	btnStopScan.MarginAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	btnStopScan.Size = "none"
	btnStopScan.Text = "Stop Scan"
	BANano.Await(btnStopScan.AddComponent)
	pgIndex.UpdateTitle("SDUI5BarcodeReader")
End Sub

Private Sub bcr1_ScanFailure (error As Object)
	Log(error)
End Sub

Private Sub bcr1_ScanSuccess (decodedText As String, decodedResult As Map)
'	BANano.Await(bcr1.StopScanWait)
	app.ShowToastInfo(decodedText)
End Sub

Private Sub btnStopScan_Click (e As BANanoEvent)
	BANano.Await(bcr1.StopScanWait)
End Sub

Private Sub btnScan_Click (e As BANanoEvent)
	e.PreventDefault
	BANano.Await(bcr1.StartScanWait)
End Sub

