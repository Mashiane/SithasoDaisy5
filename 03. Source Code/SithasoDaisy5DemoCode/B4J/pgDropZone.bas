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
	Private SDUI5DropZone1 As SDUI5DropZone		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	banano.Await(app.UsesDropZone)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5DropZone1.Initialize(Me, "SDUI5DropZone1", "SDUI5DropZone1")
	SDUI5DropZone1.ParentID = "SDUI5Column1"
	SDUI5DropZone1.RoundedBox = True
	SDUI5DropZone1.Shadow = "lg"
	BANano.Await(SDUI5DropZone1.AddComponent)
	pgIndex.UpdateTitle("SDUI5DropZone")
End Sub


Private Sub SDUI5DropZone1_Complete (FileObj As Object)
	Log(FileObj)
	
	Dim fd As FileObject = BANano.Await(app.GetFileDetails(FileObj))
	Log(fd)
	Dim sDataURL As String = BANano.Await(app.readAsDataURLWait(FileObj))
	Log(sDataURL)
End Sub

