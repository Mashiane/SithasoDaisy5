B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano				'ignore
	Private app As SDUI5App					'ignore
	Private dd1menu As SDUI5Menu			'ignore
	Private dd2menu As SDUI5Menu			'ignore
	Private menuPopOver1 As SDUI5Menu		'ignore
	Private SDUI5Menu1 As SDUI5Menu
	Private SDUI5Menu2 As SDUI5Menu
	Private SDUI5Avatar2 As SDUI5Avatar
	Private SDUI5Image1 As SDUI5Image
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "dropdownview")
	pgIndex.UpdateTitle("SDUI5DropDown")
	'
	menuPopOver1.AddMenuItem("itemx", "Item X", False)
	menuPopOver1.AddMenuItem("itemy", "Item Y", False)
	'
	SDUI5Menu1.AddMenuItem("itemx", "Item X", False)
	SDUI5Menu1.AddMenuItem("itemy", "Item Y", False)
	'
	SDUI5Menu2.AddMenuItem("itemx", "Item X", False)
	SDUI5Menu2.AddMenuItem("itemy", "Item Y", False)
End Sub

Private Sub dd2menu_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub dd1menu_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menuPopOver1_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub SDUI5Menu2_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub SDUI5Menu1_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub SDUI5Image1_Click (e As BANanoEvent)
	SDUI5Menu2.TogglePopover
End Sub

Private Sub SDUI5Avatar2_Click (e As BANanoEvent)
	SDUI5Menu1.TogglePopover
End Sub