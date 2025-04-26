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
	Private btnStart As SDUI5Button
	Private btnStop As SDUI5Button
	Private progTip As SDUI5Progress
	Private progTimer As Timer
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "progressview")
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