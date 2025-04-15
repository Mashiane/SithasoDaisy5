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
	Private menuFaces As SDUI5Menu
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "menuview")
	pgIndex.UpdateTitle("SDUI5Menu")
	'
	menuFaces.Clear
	menuFaces.AddMenuItemAvatarText("", "face1", "https://picsum.photos/80/80?1", app.MASK_CIRCLE, "16", "Face 1", False)
	menuFaces.AddMenuItemAvatarText("", "face2", "https://picsum.photos/80/80?2", app.MASK_CIRCLE, "16", "Face 2", False)
	menuFaces.AddMenuItemAvatarText("", "face3", "https://picsum.photos/80/80?3", app.MASK_CIRCLE, "16", "Face 3", False)
	menuFaces.AddMenuItemAvatarText("", "face4", "https://picsum.photos/80/80?4", app.MASK_CIRCLE, "16", "Face 4", False)
	menuFaces.AddMenuItemAvatarText("", "face5", "https://picsum.photos/80/80?5", app.MASK_CIRCLE, "16", "Face 5", False)
	
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

Private Sub menuFaces_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub