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
	Private SDUI5TextBox1 As SDUI5TextBox
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "inputview")
End Sub

Private Sub SDUI5TextBox1_Append (e As BANanoEvent)
	app.ShowToastSuccess("Append")
End Sub

Private Sub SDUI5TextBox1_Prepend (e As BANanoEvent)
	app.ShowToastSuccess("Prepend")
End Sub

Private Sub SDUI5TextBox1_Change (Value As String)
	Log("SDUI5TextBox1_Change...") 
	Log(Value)
End Sub

Private Sub SDUI5TextBox1_Input (Value As String)
	Log("SDUI5TextBox1_Input...")
	Log(Value)
End Sub