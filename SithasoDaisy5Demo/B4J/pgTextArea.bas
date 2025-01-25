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
	Private SDUI5TextArea1 As SDUI5TextArea
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "textareaview")
End Sub

Private Sub SDUI5TextArea1_Change (Value As String)
	Log("SDUI5TextArea1_Change...")
	Log(Value)
End Sub

Private Sub SDUI5TextArea1_Append (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Append")
End Sub

Private Sub SDUI5TextArea1_Prepend (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Prepend")
End Sub

Private Sub SDUI5TextArea1_Input (Value As String)
	Log("SDUI5TextArea1_Input...")
	Log(Value)
End Sub