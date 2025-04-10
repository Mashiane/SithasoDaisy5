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
	Private prefTable As SDUI5Preferences
	Private tblDesign As SDUI5Table
	Private lsDB As SDUILocalStorage
	Private Mode As String
End Sub


Sub Show(MainApp As SDUI5App)
	pgIndex.ShowNavBar
	app = MainApp
	BANano.LoadLayout(app.PageView, "tablebuilderview")
	pgIndex.UpdateTitle("Table Builder")
	lsDB.Initialize("tables", "id")
	lsDB.SchemaAddText(Array("id", "tablename", "singular", "plural", "displayvalue"))
	'
	tblDesign.AddColumn("id", "#")
	tblDesign.SetColumnVisible("id", False)
	tblDesign.AddColumnTextBox("tablename", "Table Name",False)
	tblDesign.AddColumnTextBox("singular", "Singular", False)
	tblDesign.AddColumnTextBox("plural", "Plural", False)
	tblDesign.AddColumnTextBox("displayvalue", "Display Value", False)
	tblDesign.AddDesignerColums
	tblDesign.AddColumnAction("fields", "Fields", "./assets/table-cells-solid.svg", "#ff0000", "#ffffff")
	
	prefTable.AddPropertyTextBox("id", "#", "", True)
	prefTable.SetPropertyVisible("id", False)
	prefTable.AddPropertyTextBox("tablename", "Table Name", "", True)
	prefTable.AddPropertyTextBox("singular", "Singular", "", True)
	prefTable.AddPropertyTextBox("plural", "Plural", "", True)
	prefTable.AddPropertyTextBox("displayvalue", "Display Value", "", True)
	'
	BANano.Await(MountTables)
End Sub

Private Sub tblDesign_fieldsRow (Row As Int, item As Map)
	Dim stablename As String = item.Get("tablename")
	BANano.SetLocalStorage2("table", stablename)
	pgIndex.CloseDrawerByForce
	pgPreferenceBuilder.Show(app)
End Sub

Sub MountTables
	BANano.Await(lsDB.Records)
	'
	Dim jsonQ As SDUIJSONQuery
	Dim result As List = jsonQ.Initialize(lsDB.result).OrderAsc("tablename").Exec
	tblDesign.SetItemsPaginate(result)
	Mode = "C"
	prefTable.SetPropertyBagDefaults
End Sub

Private Sub tblDesign_EditRow (Row As Int, item As Map)
	Mode = "U"
	prefTable.Title = "Edit Table"
	prefTable.PropertyBag = item
End Sub

Private Sub tblDesign_CloneRow (Row As Int, item As Map)
	Mode = "C"
	item.Put("id", lsDB.NextID)
	prefTable.PropertyBag = item
	app.ShowToastInfo("Save the record after update")
End Sub

Private Sub tblDesign_DeleteRow (Row As Int, item As Map)
	Dim toDeleteID As String = item.Get("id")
	Dim toDeleteName As String = item.Get("tablename")
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">${toDeleteName}</h2><br>Are you sure that you want to delete this table?"$
	Dim bConfirm As Boolean = BANano.Await(app.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	If bConfirm = False Then Return
	BANano.Await(lsDB.Delete(toDeleteID))
	BANano.Await(MountTables)
End Sub

Private Sub tblDesign_ChangeRow (Row As Int, Value As Object, Column As String, item As Map)
	item.Put(Column, Value)
	lsDB.SetRecord(item)
	BANano.Await(lsDB.update)
	BANano.Await(MountTables)
End Sub

Private Sub tblDesign_Add (e As BANanoEvent)
	Mode = "C"
	prefTable.SetPropertyBagDefaults
End Sub

Private Sub tblDesign_Refresh (e As BANanoEvent)
	BANano.Await(MountTables)
End Sub

Private Sub tblDesign_Back (e As BANanoEvent)
	pgIndex.OpenDrawer
	pgTypography.Show(app)
End Sub

Private Sub tblDesign_DeleteAll (e As BANanoEvent)
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">Tables</h2><br>Are you sure that you want to delete all the tables?"$
	Dim bConfirm As Boolean = BANano.Await(app.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	If bConfirm = False Then Return
	BANano.Await(lsDB.Clear)
	BANano.Await(MountTables)
End Sub

Private Sub prefTable_Yes_Click (e As BANanoEvent)
	'check if the property bag is valid
	Dim bIsValid As Boolean = BANano.Await(prefTable.IsPropertyBagValid)
	If bIsValid = False Then
		BANano.Await(app.ShowSwalErrorWait("Table", "The specified details are not valid, please fix the issues!", "Ok"))
		Return
	End If
	'the bag is valid, execute a preview
	Dim bag As Map = BANano.Await(prefTable.PropertyBag)
	Dim sid As String = bag.Get("id")
	'
	Select Case Mode
	Case "C", ""
		sid = lsDB.NextID
		bag.Put("id", sid)
		lsDB.SetRecord(bag)
		BANano.Await(lsDB.create)
	Case "U"
		lsDB.SetRecord(bag)
		BANano.Await(lsDB.Update)
	End Select
	BANano.Await(MountTables)
End Sub

Private Sub prefTable_No_Click (e As BANanoEvent)
	Mode = "C"
	prefTable.SetPropertyBagDefaults
End Sub