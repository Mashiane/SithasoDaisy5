B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private mTemplateFile As String
	Private mSheetName As String
	Private iStartRow As Int
	Private BANano As BANano		'ignore
	Private mFields As Map
	Private mRecords As List
	Private mColumns As Map
	Private mFileName As String
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize()
	iStartRow = 1
	mSheetName = "Sheet1"
	mFields.Initialize 
	mRecords.Initialize
	mColumns.Initialize 
End Sub

'add columns to print and its location
'<code>
'excel.AddColumn("A", "fullname")
'</code>
Sub AddColumn(colPosition As String, colName As String)
	colPosition = colPosition.ToUpperCase
	colName = colName.tolowercase
	mColumns.Put(colName, colPosition)
End Sub

'set a column row value
'<code>
'excel.SetColumn("A1", "Anele Mbanga")
'</code>
Sub SetColumn(ColName As String,fldValue As String)
	ColName = ColName.touppercase
	mFields.Put($"${ColName}"$, fldValue)
End Sub

'data for rows to print on the excel sheet
Sub SetRows(r As List)
	mRecords = BANano.DeepClone(r)
End Sub

'set the start row
Sub setStartRow(i As Int)
	iStartRow = i
End Sub

'get the start row
Sub getStartRow As Int
	Return iStartRow
End Sub

'set the template file to use
Sub setTemplateFile(s As String)
	mTemplateFile = s
End Sub

'get the template file to use
Sub getTemplateFile As String
	Return mTemplateFile
End Sub

'set the sheet name to use
Sub setSheetName(s As String)
	mSheetName = s
End Sub

'get the sheet name
Sub getSheetName As String
	Return mSheetName
End Sub

Sub setReportFileName(s As String)
	mFileName = s
End Sub

Sub getReportFileName As String
	Return mFileName
End Sub

Sub Execute
	'get excel file as array buffer
	Dim xlTemplate As Object = BANano.Await(BANano.GetFileAsArrayBuffer(mTemplateFile, Null))
	'
	Dim wb As BANanoObject
	wb.Initialize2("ExcelJS.Workbook", Null)
	'
	Dim xlFile As BANanoObject = BANano.Await(wb.GetField("xlsx").RunMethod("load", xlTemplate))
	'
	Dim sheet As BANanoObject = BANano.Await(xlFile.RunMethod("getWorksheet", mSheetName))
	'
	'write content in particilar RC of the excel sheet
	For Each k As String In mFields.Keys
		Dim v As String = mFields.Get(k)
		sheet.RunMethod("getCell", k).SetField("value", v)
	Next	
	'
	Dim borderAll As Map = CreateMap()
	Dim thinB As Map = CreateMap()
	thinB.Put("style", "thin")
	borderAll.Put("top", thinB)
	borderAll.Put("left", thinB)
	borderAll.Put("bottom", thinB)
	borderAll.Put("right", thinB)
	'
	Dim rCnt As Int = iStartRow
	Dim rowTot As Int = mRecords.Size - 1
	Dim rowCnt As Int = 0
	'
	For rowCnt = 0 To rowTot
		'get the record to print
		Dim rec As Map = mRecords.Get(rowCnt)
		'loop through each column we will write on the excel report
		For Each fldname As String In mColumns.keys
			'get the column to write to
			Dim colName As String = mColumns.Get(fldname)
			colName = colName.ToUpperCase
			'get the value to write
			Dim colValue As String = rec.GetDefault(fldname, "")
			colValue = CStr(colValue)
			'
			sheet.RunMethod("getCell", $"${colName}${rCnt}"$).SetField("value", colValue)
			sheet.RunMethod("getCell", $"${colName}${rCnt}"$).SetField("border", borderAll)
		Next
		'process the next row
		rCnt = BANano.parseInt(rCnt) + 1
	Next
	
	Dim xlBuffer As BANanoObject = BANano.Await(wb.GetField("xlsx").RunMethod("writeBuffer", Null))
	'
	Dim nxlFile As String = $"${mFileName}.xlsx"$
	Dim fc As List
	fc.Initialize
	fc.Add(xlBuffer)
	Dim blob As BANanoObject
	blob.Initialize2("Blob",Array(fc, CreateMap("type": "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8")))
	BANano.RunJavascriptMethod("saveAs",Array(blob,nxlFile))
End Sub


'convert an object to a string
private Sub CStr(o As Object) As String
	Return "" & o
End Sub
