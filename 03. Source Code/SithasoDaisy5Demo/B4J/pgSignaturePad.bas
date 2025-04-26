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
	Private SDUI5Image1 As SDUI5Image
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "signaturepadview")
	pgIndex.UpdateTitle("SDUI5SignaturePad")
End Sub


Private Sub SDUI5SignaturePad1_Save (Data As String)
	If Data <> "" Then SDUI5Image1.Src = Data
End Sub