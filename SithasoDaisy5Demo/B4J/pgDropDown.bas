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
	Private dd1menu As SDUI5Menu
	Private dd2menu As SDUI5Menu
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "dropdownview")
	pgIndex.UpdateTitle("SDUI5DropDown")
End Sub

Private Sub dd2menu_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub dd1menu_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub