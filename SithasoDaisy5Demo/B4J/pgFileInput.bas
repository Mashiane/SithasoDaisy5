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
	Private SDUI5FileInput1 As SDUI5FileInput
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "fileinputview")
	pgIndex.UpdateTitle("SDUI5FileInput")
End Sub

Private Sub SDUI5FileInput1_Change (e As BANanoEvent)
	Log("SDUI5FileInput1_Change...")
	Dim fileObj As Map = SDUI5FileInput1.GetFile
	Log(fileObj)
End Sub