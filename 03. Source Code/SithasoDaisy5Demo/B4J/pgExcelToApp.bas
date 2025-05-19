B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano						'ignore
	Private app As SDUI5App							'ignore
	Public name As String = "exceltoapp"
	Public title As String = "Excel To Web App"
	Public icon As String = "./assets/page.svg"
	Public color As String = "#000000"
	Private tblColumns As SDUI5Table				'ignore
	Private ExcelData As List
	Private ExcelHeadings As List
	Private fileName As String
End Sub

Sub Show(MainApp As SDUI5App)			'ignore
	app = MainApp
	BANano.Await(app.UsesExcel)
	BANano.LoadLayout(app.PageView, "importexcel")
	pgIndex.UpdateTitle("Import Excel SpreadSheet")
	tblColumns.AddColumn("excelcolumn", "Excel Column")
	tblColumns.AddColumnTextBox("tablecolumn", "Table Column", False)
End Sub

Sub getName As String		'ignore
	Return name
End Sub
'
Sub getIcon As String		'ignore
	Return icon
End Sub
'
Sub getTitle As String		'ignore
	Return title
End Sub
'
Sub getColor As String		'ignore
	Return color
End Sub

Private Sub tblColumns_ChangeRow (Row As Int, Value As Object, Column As String, item As Map)
	'update the map column with value
	item.Put(Column, Value)
	'update the row contents at this position
	tblColumns.UpdateRow(Row, item)
End Sub

Private Sub tblColumns_FileChange (e As BANanoEvent)
	tblColumns.ClearRows
	Dim fileObj As Map = tblColumns.GetFile
	If BANano.IsNull(fileObj) Or BANano.IsUndefined(fileObj) Then Return
	app.pagepause
	Dim fileDet As FileObject = app.GetFileDetails(fileObj)
	'get the file name
	fileName = fileDet.FileName
	ExcelData.Initialize
	tblColumns.Title = fileName
	'upload excel file
	Dim xcel As SDUIExcel
	xcel.Initialize(Me, "excel", fileName)
	Dim xcelBuffer As Object = BANano.Await(app.readAsArrayBufferWait(fileObj))
	ExcelData = BANano.Await(xcel.ReadFile(xcelBuffer))
	ExcelHeadings = xcel.GetExcelHeadings(ExcelData)
	'build the column headers
	Dim excelrows As List
	excelrows.Initialize
	For Each xlhdr As String In ExcelHeadings
		Dim nr As Map = CreateMap()
		Dim stablecolumn As String = app.UI.CleanID(xlhdr)
		nr.put("excelcolumn", xlhdr)
		nr.Put("tablecolumn", stablecolumn)
		excelrows.Add(nr)
	Next
	BANano.Await(tblColumns.SetItemsPaginate(excelrows))
	app.pageresume
End Sub

Private Sub tblColumns_SaveSingle (e As BANanoEvent)
	app.pagepause
	'read the table schema
	Private dbBilling As SDUIMySQLREST		'ignore
	dbBilling.Initialize(Me, "billing", Main.ServerIP, "billing")
	dbBilling.UseApiKey = True
	dbBilling.ApiKey = Main.APIKey
'	'get the field names, we want to see match
'	Dim schema As Map = BANano.Await(dbBilling.SchemaTableGet("billing", Main.ServerIP, Main.User, Main.Password))
'	Dim flds As List = schema.Get("schema")
'	Dim fldnames As Map = CreateMap()
'	For Each fld As Map In flds
'		Dim sname As String = fld.Get("name")
'		Dim stype As String = fld.Get("type")
'		fldnames.Put(sname, stype)
'	Next
'	Dim lMissing As List
'	lMissing.Initialize 
	'
	dbBilling.SetSchemaFromDataModel(app.DataModels)
	dbBilling.MatchSchema = False
'	'get the column details
	Dim fldsTo As List = tblColumns.Originals
	'the columns in each row
	Dim columns As Map = CreateMap()
	For Each col As Map In fldsTo
		Dim stablecolumn As String = col.Get("tablecolumn")
		Dim sexcelcolumn As String = col.Get("excelcolumn")
		columns.Put(sexcelcolumn, stablecolumn)
		'If fldnames.ContainsKey(stablecolumn) = False Then
		'	lMissing.Add(stablecolumn)
		'End If
	Next
'	'
'	If lMissing.Size > 0 Then
'		app.pageresume
'		BANano.Await(app.ShowSwalErrorWait("Missing Fields", app.UI.Join("<br>", lMissing), "Ok"))
'	End If
		
	Dim rCnt As Int = 0
	Dim rTot As Int = 0
'	Dim outFile As String = $"${fileName}.json"$
	Dim records As List
	records.Initialize
	'create the row data
	For Each r As Map In ExcelData
		rCnt = app.UI.Increment(rCnt)
		Dim nrow As Map = CreateMap()
		'Dim nextID As String = BANano.Await(dbBilling.NextID)
		'nrow.Put("id", nextID)
		nrow.Put("sourcefile", fileName)
		For Each scol As String In columns.Keys
			'target column
			Dim tcol As String = columns.Get(scol)
			'target value
			Dim svalue As String = r.Get(scol)
			svalue = app.ui.CStr(svalue)
			svalue = svalue.trim
'			svalue = svalue.Replace(CRLF, "")
'			svalue = BANano.EncodeURIComponent(svalue)
			nrow.Put(tcol, svalue)
		Next
		nrow.Put("rectype", "B")
		'records.Add(nrow)
		dbBilling.PrepareRecord
		BANano.Await(dbBilling.SetRecord(nrow))
		dbBilling.GetAffectedID
		BANano.Await(dbBilling.CREATE)
	Next
	Log(ExcelData.Size)
	app.pageresume
	BANano.Await(app.ShowSwalSuccessWait(fileName, "The import is finished!", "Ok"))
	'Dim outData As String = BANano.ToJson(records)
	'app.DownloadTextFile(outData, outFile)
End Sub
