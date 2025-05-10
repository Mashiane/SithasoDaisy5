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
	Private SDUI5DropZone1 As SDUI5DropZone
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	banano.Await(app.UsesDropZone)
	BANano.LoadLayout(app.PageView, "dropzoneview")
	pgIndex.UpdateTitle("SDUI5DropZone")
End Sub


Private Sub SDUI5DropZone1_Complete (FileObj As Object)
	Log(FileObj)
	
	Dim fd As FileObject = BANano.Await(app.GetFileDetails(FileObj))
	Log(fd)
	Dim sDataURL As String = BANano.Await(app.readAsDataURLWait(FileObj))
	Log(sDataURL)
End Sub