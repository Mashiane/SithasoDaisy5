B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private SDUI5Button1 As SDUI5Button
	Private SDUI5Button10 As SDUI5Button
	Private SDUI5Button11 As SDUI5Button
	Private SDUI5Button12 As SDUI5Button
	Private SDUI5Button13 As SDUI5Button
	Private SDUI5Button14 As SDUI5Button
	Private SDUI5Button15 As SDUI5Button
	Private SDUI5Button16 As SDUI5Button
	Private SDUI5Button17 As SDUI5Button
	Private SDUI5Button18 As SDUI5Button
	Private SDUI5Button19 As SDUI5Button
	Private SDUI5Button2 As SDUI5Button
	Private SDUI5Button20 As SDUI5Button
	Private SDUI5Button21 As SDUI5Button
	Private SDUI5Button22 As SDUI5Button
	Private SDUI5Button23 As SDUI5Button
	Private SDUI5Button24 As SDUI5Button
	Private SDUI5Button25 As SDUI5Button
	Private SDUI5Button26 As SDUI5Button
	Private SDUI5Button27 As SDUI5Button
	Private SDUI5Button28 As SDUI5Button
	Private SDUI5Button29 As SDUI5Button
	Private SDUI5Button3 As SDUI5Button
	Private SDUI5Button30 As SDUI5Button
	Private SDUI5Button31 As SDUI5Button
	Private SDUI5Button32 As SDUI5Button
	Private SDUI5Button33 As SDUI5Button
	Private SDUI5Button4 As SDUI5Button
	Private SDUI5Button5 As SDUI5Button
	Private SDUI5Button6 As SDUI5Button
	Private SDUI5Button7 As SDUI5Button
	Private SDUI5Button8 As SDUI5Button
	Private SDUI5Button9 As SDUI5Button
	Private app As SDUI5App
End Sub

Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "buttonsview")
End Sub


Private Sub SDUI5Button9_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button9_Click")
End Sub

Private Sub SDUI5Button8_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button8_Click")
End Sub

Private Sub SDUI5Button7_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button7_Click")
End Sub

Private Sub SDUI5Button6_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button6_Click")
End Sub

Private Sub SDUI5Button5_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button5_Click")
End Sub

Private Sub SDUI5Button4_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button4_Click")
End Sub

Private Sub SDUI5Button33_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button33_Click")
End Sub

Private Sub SDUI5Button32_Click (e As BANanoEvent)
	e.PreventDefault
	Dim isLoading As Boolean = Not(SDUI5Button32.Loading)
	SDUI5Button32.Loading = isLoading
	app.ShowToastInfo("SDUI5Button32_Click")
End Sub

Private Sub SDUI5Button31_Click (e As BANanoEvent)
	e.PreventDefault
	Dim isLoading As Boolean = Not(SDUI5Button31.Loading)
	SDUI5Button31.Loading = isLoading
	app.ShowToastInfo("SDUI5Button31_Click")
End Sub

Private Sub SDUI5Button3_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button3_Click")
End Sub

Private Sub SDUI5Button29_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button29_Click")
End Sub

Private Sub SDUI5Button28_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button28_Click")
End Sub

Private Sub SDUI5Button27_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button27_Click")
End Sub

Private Sub SDUI5Button26_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button26_Click")
End Sub

Private Sub SDUI5Button25_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button25_Click")
End Sub

Private Sub SDUI5Button24_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button24_Click")
End Sub

Private Sub SDUI5Button23_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button23_Click")
End Sub

Private Sub SDUI5Button22_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button22_Click")
End Sub

Private Sub SDUI5Button21_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button21_Click")
End Sub

Private Sub SDUI5Button20_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button20_Click")
End Sub

Private Sub SDUI5Button2_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button2_Click")
End Sub

Private Sub SDUI5Button19_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button19_Click")
End Sub

Private Sub SDUI5Button18_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button18_Click")
End Sub

Private Sub SDUI5Button17_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button17_Click")
End Sub

Private Sub SDUI5Button16_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button16_Click")
End Sub

Private Sub SDUI5Button15_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button15_Click")
End Sub

Private Sub SDUI5Button14_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button14_Click")
End Sub

Private Sub SDUI5Button13_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button13_Click")
End Sub

Private Sub SDUI5Button12_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button12_Click")
End Sub

Private Sub SDUI5Button11_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button11_Click")
End Sub

Private Sub SDUI5Button10_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button10_Click")
End Sub

Private Sub SDUI5Button1_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button1_Click")
End Sub

Private Sub SDUI5Button30_Click (e As BANanoEvent)
	e.PreventDefault
	Dim isLoading As Boolean = Not(SDUI5Button30.Loading)
	SDUI5Button30.Loading = isLoading
	app.ShowToastInfo("SDUI5Button30_Click")
End Sub