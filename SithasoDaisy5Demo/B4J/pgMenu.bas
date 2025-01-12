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
	Private menu1 As SDUI5Menu
	Private menu2 As SDUI5Menu
	Private menu3 As SDUI5Menu
	Private menu9 As SDUI5Menu
	Private menu13 As SDUI5Menu
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "menuview")
End Sub

Private Sub menu1_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menu2_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menu3_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menu9_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menu13_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub