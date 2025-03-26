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
	BANano.LoadLayout(app.PageView, "jsoneditorview")
	pgIndex.UpdateTitle("SDUI5JsonEditor")
	'
	Dim j As Map = CreateMap()
	j.Put("name", "SithasoDaisy5")
	j.Put("version", "Beta 12")
	app.UI.PutRecursive(j, "stack.name1", "b4j")
	app.UI.PutRecursive(j, "stack.name2", "BANano")
	app.UI.PutRecursive(j, "stack.name3", "DaisyUI")
	jEdit.Json = j
	jEdit.refresh
End Sub

Private Sub jEdit_OnError (err As Object)
	
End Sub