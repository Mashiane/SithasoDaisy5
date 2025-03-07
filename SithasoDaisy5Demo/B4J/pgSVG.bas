B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5Svg1 As SDUI5Svg
	Private SDUI5Svg2 As SDUI5Svg
	Private SDUI5Svg3 As SDUI5Svg
	Private SDUI5Svg4 As SDUI5Svg
End Sub

'https://freesvgicons.com/
Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "svgview")
	pgIndex.UpdateTitle("SDUI5Svg")
End Sub

Private Sub SDUI5Svg4_Click (e As BANanoEvent)
	app.ShowToast("svg4")
End Sub

Private Sub SDUI5Svg3_Click (e As BANanoEvent)
	app.ShowToast("svg3")
End Sub

Private Sub SDUI5Svg2_Click (e As BANanoEvent)
	app.ShowToast("svg2")
End Sub

Private Sub SDUI5Svg1_Click (e As BANanoEvent)
	app.ShowToast("svg1")
End Sub