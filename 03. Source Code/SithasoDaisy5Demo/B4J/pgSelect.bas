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
	Private SDUI5Select1 As SDUI5Select
	Private btnClearSelectAsIs As SDUI5Button
	Private btnLoadSelectAsIs As SDUI5Button
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "selectview")
	pgIndex.UpdateTitle("SDUI5Select")
End Sub

Private Sub SDUI5Select1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Select1_Prepend (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Prepend...")
End Sub

Private Sub SDUI5Select1_Append (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Append...")
End Sub

Private Sub btnLoadSelectAsIs_Click (e As BANanoEvent)
	Dim fake As SDUI5FakeIT
	fake.Initialize
	Dim recs As Map
	recs.Initialize 
	Dim rCnt As Int
	For rCnt = 1 To 10
		Dim sname As String = fake.Rand_Capital_City
		recs.Put(sname, sname)
	Next
	SDUI5Select1.SetOptionsFromMap(recs)
End Sub

Private Sub btnClearSelectAsIs_Click (e As BANanoEvent)
	SDUI5Select1.Clear
End Sub