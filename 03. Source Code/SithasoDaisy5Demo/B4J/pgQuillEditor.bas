B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5QuillEditor1 As SDUI5QuillEditor
End Sub

Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesJSONEditor)
	BANano.LoadLayout(app.PageView, "quillview")
	pgIndex.UpdateTitle("SDUI5QuillEditor")
End Sub

Private Sub SDUI5QuillEditor1_Change (Value As String)
	Log(Value)
End Sub