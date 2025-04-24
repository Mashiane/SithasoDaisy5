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
	Private SDUI5Column3 As SDUI5Column
	Private SDUI5Column4 As SDUI5Column
End Sub


Sub Show(MainApp As SDUI5App)
	pgIndex.ShowNavBar
	app = MainApp
	BANano.LoadLayout(app.PageView, "tablebuilderview")
	pgIndex.UpdateTitle("Table Builder")
	lsDB.Initialize("tables", "id")
	lsDB.SchemaAddText(Array("id", "tablename", "singular", "plural", "displayvalue", "primarykey", "autoincrement", "alphachooser", "columnchooser", "alphachooserfield"))
	'
	tblDesign.AddToolbarActionButtonIcon("schema", "./assets/table-list-solid.svg", "#03C03C", "#ffffff")
	
	tblDesign.AddColumn("id", "#")
	tblDesign.SetColumnVisible("id", False)
	tblDesign.AddColumnTextBox("tablename", "Table Name",False)
	tblDesign.AddColumnTextBox("singular", "Singular", False)
	tblDesign.AddColumnTextBox("plural", "Plural", False)
	tblDesign.AddColumnTextBox("displayvalue", "Display Value", False)
	tblDesign.AddColumnTextBox("primarykey", "Primary Key", False)
	tblDesign.AddColumnTextBox("alphachooserfield", "Alpha Chooser Field", False)
	tblDesign.AddColumnCheckBox("autoincrement", "Auto Increment", "success", False)
	tblDesign.AddColumnCheckBox("alphachooser", "Alpha Chooser", "success", False)
	tblDesign.AddColumnCheckBox("columnchooser", "Column Chooser", "success", False)
	tblDesign.AddColumnCheckBox("usetable", "Use Table", "success", False)
	tblDesign.AddColumnCheckBox("usemodal", "Use Modal", "success", False)
	tblDesign.AddDesignerColums
	'
	tblDesign.AddColumnAction("fields", "Fields", "./assets/table-cells-solid.svg", "#ff0000", "#ffffff")
	tblDesign.AddColumnAction("code", "MySQL REST", "./assets/code-solid.svg", "#53209d", "#ffffff")
	tblDesign.MoveBackButton
	'
	tblDesign.SetHeaderVerticalLR("edit")
	tblDesign.SetHeaderVerticalLR("delete")
	tblDesign.SetHeaderVerticalLR("clone")
	tblDesign.SetHeaderVerticalLR("fields")
	tblDesign.SetHeaderVerticalLR("code")
	tblDesign.SetHeaderVerticalLR("usetable")
	tblDesign.SetHeaderVerticalLR("usemodal")
	tblDesign.SetHeaderVerticalLR("autoincrement")
	tblDesign.SetHeaderVerticalLR("alphachooser")
	tblDesign.SetHeaderVerticalLR("columnchooser")
	prefTable.AddPropertyTextBox("id", "#", "", True)
	prefTable.SetPropertyVisible("id", False)
	prefTable.AddPropertyTextBox("tablename", "Table Name", "", True)
	prefTable.AddPropertyTextBox("singular", "Singular", "", True)
	prefTable.AddPropertyTextBox("plural", "Plural", "", True)
	prefTable.AddPropertyTextBox("displayvalue", "Display Value", "", True)
	prefTable.AddPropertyTextBox("primarykey", "Primary Key", "", True)
	prefTable.AddPropertyCheckBox("autoincrement", "Auto Increment", False, "success")
	prefTable.AddPropertyCheckBox("alphachooser", "Alpha Chooser", False, "success")
	prefTable.AddPropertyTextBox("alphachooserfield", "Alpha Chooser Field", "", True)
	prefTable.AddPropertyCheckBox("columnchooser", "Column Chooser", False, "success")
	prefTable.AddPropertyCheckBox("usetable", "Use Table", False, "success")
	prefTable.AddPropertyCheckBox("usemodal", "Use Modal", False, "success")
	'
	BANano.Await(MountTables)
End Sub

Private Sub tblDesign_Download (e As BANanoEvent)
	app.pagepause
	Dim download As List
	download.Initialize 
	'get existing tables
	BANano.Await(lsDB.Records)
	Do While lsDB.NextRow
		Dim stablename As String = lsDB.GetString("tablename")
		Dim fieldsDB As SDUILocalStorage
		fieldsDB.Initialize(stablename, "id")
		BANano.Await(fieldsDB.Records)
		'
		Dim rec As Map = lsDB.Record
		rec.Put("fields", fieldsDB.Result)
		download.Add(rec)
	Loop
	Dim dbJSON As String = BANano.ToJson(download)
	app.DownloadTextFile(dbJSON, "table_builder.json")
	app.pageresume
End Sub

Private Sub tblDesign_FileChange (e As BANanoEvent)
	'has the file been specified
	Dim fileObj As Map = app.GetFileFromEvent(e)
	If BANano.IsNull(fileObj) Or BANano.IsUndefined(fileObj) Then Return
	Dim fields As List = BANano.Await(app.readAsJsonWait(fileObj))
	'lsDB.Records = fields
	'BANano.Await(MountPreferences)
End Sub


private Sub tblDesign_schema(e As BANanoEvent)
	e.PreventDefault
	app.pagepause
	'get existing tables
	BANano.Await(lsDB.Records)
	Dim kv As Map = CreateMap()
	Do While lsDB.NextRow
		Dim sid As String = lsDB.GetString("id")
		Dim stablename As String = lsDB.GetString("tablename")
		kv.Put(stablename, sid)
	Loop
	'
	Dim tables As List
	tables.Initialize 
	'
	Dim fetch As SDUIFetch
	fetch.Initialize(Main.ServerURL)
	fetch.SetContentTypeApplicationJSON
	fetch.AddHeader("X-API-Key", Main.APIKey)
	fetch.SetURL($"/assets/api.php/columns"$)
	BANano.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		If Response.ContainsKey("tables") Then
			tables = Response.Get("tables")
		End If
	Else
		Log(fetch.ErrorMessage)
	End If
	'
	For Each tbl As Map In tables
		Dim sname As String = tbl.Get("name")
		Dim colTitle As String = sname.Replace("_", " ")
		colTitle = app.UI.ProperCase(colTitle)
		Dim columns As List = tbl.Get("columns")
		Dim pk As String = ""
		'get the primary field if existing
		For Each col As Map In columns
			Dim colName As String = col.Get("name")
			Dim colpk As Boolean = col.Get("pk")
			colpk = app.UI.CBool(colpk)
			If colpk Then 
				pk = colName
				Exit
			End If
		Next
		
		'add the table if it does not exist
		Dim nt As Map = CreateMap()
		nt.Put("id", lsDB.NextID)
		nt.Put("tablename", sname)
		nt.Put("singular", colTitle)
		nt.Put("plural", colTitle)
		nt.Put("primarykey", pk)
		If kv.ContainsKey(sname) Then
			Dim tbID As String = kv.Get(sname)
			nt.Put("id", tbID)
			lsDB.SetRecord(nt)
			BANano.Await(lsDB.Update)
		Else
			lsDB.SetRecord(nt)
			BANano.Await(lsDB.create)
		End If
		'
		Dim colDB As SDUILocalStorage
		colDB.Initialize(sname, "id")
		colDB.SchemaAddBoolean(Array("proprequired", "propvisible", "propenabled"))
		colDB.SchemaAddText(Array("id", "proppos", "propname", "proptitle", "propdatatype", "proptype", "propvalue", "props"))
		'add to the table definition
		Dim lstColumns As List
		lstColumns.Initialize 
		Dim colCnt As Int = 0
		'"String","Int","Double","Blob","Bool","Date"
		For Each col As Map In columns
			colCnt = BANano.parseInt(colCnt) + 1
			Dim colName As String = col.Get("name")
			Dim colTitle As String = colName.Replace("_", " ")
			colTitle = app.UI.ProperCase(colTitle)
			Dim colType As String = col.Get("type")
			colType = colType.Replace("varchar", "String")
			colType = colType.Replace("longtext", "LongText")
			colType = colType.Replace("text", "String")
			colType = colType.Replace("integer", "Int")
			colType = colType.Replace("float", "Double")
			colType = colType.Replace("real", "Double")
			colType = colType.Replace("bigint", "Int")
			colType = colType.Replace("decimal", "Double")
			colType = colType.Replace("datetime", "Date")
			colType = colType.Replace("timestamp", "Date")
			
			Dim nc As Map = CreateMap()
			nc.Put("id", colDB.NextID)
			nc.Put("proppos", colCnt)
			nc.Put("propname", colName)
			nc.Put("proptitle", colTitle)
			nc.Put("propdatatype", colType)
			nc.Put("proptype", "TextBox")
			nc.Put("propactive", True)
			nc.Put("propvisible", True)
			nc.Put("propcolumntype", "Normal")
			nc.Put("propcolumnvisible", True)
			nc.Put("propenabled", True)
			lstColumns.Add(nc)
		Next
		colDB.Records = lstColumns
	Next
	BANano.Await(MountTables)
	app.pageresume
End Sub

Private Sub tblDesign_codeRow (Row As Int, item As Map)
	Dim clsTC As clsTableCode
	BANano.Await(clsTC.Initialize(app, item))
	clsTC.BuildPage
End Sub

Private Sub tblDesign_fieldsRow (Row As Int, item As Map)
	Dim thisTable As String = BANano.ToJson(item)
	BANano.SetLocalStorage2("thistable", thisTable)
	Dim stablename As String = item.Get("tablename")
	BANano.SetLocalStorage2("table", stablename)
	pgIndex.CloseDrawerByForce
	pgPreferenceBuilder.Show(app)
End Sub

Sub MountTables
	SDUI5Column3.Size = 12
	SDUI5Column4.Visible = False
	BANano.Await(lsDB.Records)
	'
	Dim jsonQ As SDUIJSONQuery
	Dim result As List = jsonQ.Initialize(lsDB.result).OrderAsc("tablename").Exec
	tblDesign.SetItemsPaginate(result)
	Mode = "C"
	If result.Size = 0 Then
		tblDesign.SetDeleteAllEnable(False)
	Else
		tblDesign.SetDeleteAllEnable(True)
	End If
	prefTable.SetPropertyBagDefaults
End Sub

Private Sub tblDesign_EditRow (Row As Int, item As Map)
	SDUI5Column3.Size = 8
	SDUI5Column4.Visible = True
	Mode = "U"
	prefTable.Title = "Edit Table"
	prefTable.PropertyBag = item
End Sub

Private Sub tblDesign_CloneRow (Row As Int, item As Map)
	SDUI5Column3.Size = 8
	SDUI5Column4.Visible = True
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
	tblDesign.SetRowEnsureVisible(Row)
End Sub

Private Sub tblDesign_Add (e As BANanoEvent)
	SDUI5Column3.Size = 8
	SDUI5Column4.Visible = True
	Mode = "C"
	prefTable.SetPropertyBagDefaults
End Sub

Private Sub tblDesign_Refresh (e As BANanoEvent)
	BANano.Await(MountTables)
End Sub

Private Sub tblDesign_Back (e As BANanoEvent)
	pgTypography.Show(app)
End Sub

Private Sub tblDesign_DeleteAll (e As BANanoEvent)
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">Tables</h2><br>Are you sure that you want to delete all the tables?"$
	Dim bConfirm As Boolean = BANano.Await(app.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	If bConfirm = False Then Return
	'get existing tables
	BANano.Await(lsDB.Records)
	Do While lsDB.NextRow
		'remove the individual table
		Dim stablename As String = lsDB.GetString("tablename")
		BANano.RemoveLocalStorage2(stablename)
	Loop
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
	SDUI5Column3.Size = 12
	SDUI5Column4.Visible = False
End Sub