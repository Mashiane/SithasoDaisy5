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
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesBarCodeReader)
	BANano.LoadLayout(app.PageView, "barcodereaderfview")
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