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
	Private jEdit As SDUI5JsonEditor
End Sub

Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesJSONEditor)
	BANano.LoadLayout(app.PageView, "jsoneditorview")
	pgIndex.UpdateTitle("SDUI5JsonEditor")
	'
	Dim j As Map = CreateMap()
	j.Put("data", Array(1, 2, 3))
	j.Put("boolean", True)
	j.Put("color", "#82b92c")
	j.Put("null", Null)
	j.Put("number", 123)
	j.Put("object", CreateMap("a":"b", "c": "d"))
	j.Put("string", "Hello World")
	jEdit.Json = j
	BANano.Await(jEdit.Refresh)
End Sub

Private Sub jEdit_OnError (err As Object)
	
End Sub