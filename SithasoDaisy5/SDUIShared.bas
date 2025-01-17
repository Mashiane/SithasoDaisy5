B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=9.8
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Private BANano As BANano  'ignore
	Type FileObject(FileName As String, FileDate As String, FileSize As Long, FileType As String, Status As String, FullPath As String, FileDateOnly As String, FileOK As Boolean, FO As BANanoObject, Extension As String, webkitRelativePath As String)
	Public ColorMap As Map
	Type Paginate(previousPage As Int, nextPage As Int, totalPages As Int, items As List)
	Public const CRLF1 As String = Chr(13) & Chr(10)		'ignore	'
	Type StorageQuota(usage As Int, quota As Int, percentUsed As Int, remaining As Int)
	Public const NBSP As String = "&nbsp;"
	Type TableDescription(tableName As String, PrimaryKey As String, AutoIncrement As String, Fields As List, Strings As List, Booleans As List, Doubles As List, Blobs As List, Integers As List, TinyInts As List, Sorts As List, FieldNames As List)
	Public Languages As Map
	Public Countries As Map
	Public Months As SDUIMap
	Public Days As SDUIMap
	Type SortHelper(sortkey As String, value As Object) 
	Type Address(suburb As String, name As String, city As String, country As String, countryCode As String, _
	municipality As String, postcode As String, road As String, state As String, displayName As String, lat As String, lon As String)
	Public MissingParents As Map
End Sub


' Gets the current location of the user
public Sub GetMyLocation As BANanoGeoPosition
	Return BANano.Await(BANano.GetGeoPosition(CreateMap("enableHighAccuracy": True, "timeout": 5000, "maximumAge": 0)))
End Sub

'percentage of x from y
Sub Math_Percentage(x As String, y As String) As Int
	Private math As BANanoObject
	math.Initialize("math")
	Dim xperc As Int = math.RunMethod("evaluate", $"round((${x}/${y})*100)"$).result
	Return xperc
End Sub

Sub Math_Expression(svalues As String) As Object
	Private math As BANanoObject
	math.Initialize("math")
	Dim xperc As Object = math.RunMethod("evaluate", Array(svalues)).result
	Return xperc
End Sub

Sub Math_ExpressionList(values As List) As Object
	Private math As BANanoObject
	math.Initialize("math")
	Dim svalues As String = Join("", values)
	Dim xperc As Object = math.RunMethod("evaluate", Array(svalues)).result
	Return xperc
End Sub

'sum x and y
Sub Math_Sum(x As Int, y As Int) As Int
	Private math As BANanoObject
	Dim values As List
	values.Initialize
	values.Add(x)
	values.Add(y)
	Dim svalues As String = Join(",", values)
	math.Initialize("math")
	Dim xperc As Int = math.RunMethod("evaluate", $"sum(${svalues})"$).result
	Return xperc
End Sub

Sub Math_SumList(values As List) As Int
	Private math As BANanoObject
	Dim svalues As String = Join(",", values)
	math.Initialize("math")
	Dim xperc As Int = math.RunMethod("evaluate", $"sum(${svalues})"$).result
	Return xperc
End Sub

'subtract y from x
Sub Math_Subtract(x As Int, y As Int) As Int
	Private math As BANanoObject
	math.Initialize("math")
	Dim xperc As Int = math.RunMethod("evaluate", $"subtract(${x},${y})"$).result
	Return xperc
End Sub

'divide x by y
Sub Math_Divide(x As Int, y As Int) As Int
	Private math As BANanoObject
	math.Initialize("math")
	Dim xperc As Int = math.RunMethod("evaluate", $"divide(${x},${y})"$).result
	Return xperc
End Sub


Sub GetInnerHTML(id As String) As String
	id = CleanID(id)
	If BANano.Exists($"#${id}"$) Then
		Dim tmp As String = BANano.GetElement($"#${id}"$).GetField("innerHTML").Result
		Return tmp
	Else
		Return ""
	End If
End Sub

Sub GetTextFile(fileName As String) As String
	Dim fContents As String = BANano.Await(BANano.GetFileAsText($"${fileName}?${DateTime.now}"$, Null, "utf-8"))
	Return fContents
End Sub

'download a pdf from a path
'<code>
'app.DownloadPDF("http:/", "pdfName", "newpdfname.pdf")
'</code>
Sub DownloadPDF(pdfPath As String, pdfName As String, DownloadPdfName As String)
	Dim pdfFile As BANanoObject = BANano.await(FetchAsFile(pdfPath, pdfName))
	DownloadBlob(pdfFile, DownloadPdfName)
End Sub

#if javascript
function downloadFile(url) {
    const link = document.createElement('a'); // Create an anchor element
    link.href = url;                          // Set the file URL
    link.download = '';                       // Set the download attribute (filename can be optional)
    document.body.appendChild(link);          // Append the link to the document
    link.click();                             // Programmatically click the link
    document.body.removeChild(link);          // Remove the link from the document
}
#End If


Sub Download(content As String, FileName As String)
	content = content.Replace("~","$")
	DownloadText2File(content, FileName)
End Sub

Sub DownloadAsZip(content As String, FileName As String, ZipFileName As String)
	content = content.Replace("~","$")
	'
	Dim Zip As BANanoObject
	Zip.Initialize2("PizZip", Null)
	Zip.RunMethod("file", Array(FileName, content))
	'
	Dim zipContent As Object = Zip.RunMethod("generate", CreateMap("type":"blob"))
	'
	BANano.RunJavascriptMethod("saveAs",Array(zipContent,ZipFileName))
End Sub

Sub ShowItem(elID As String)
	elID = CleanID(elID)
	BANano.GetElement($"#${elID}"$).RemoveClass("hidden")
End Sub

Sub RemoveItem(elID As String)
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) Then
		BANano.GetElement($"#${elID}"$).Remove
	End If
End Sub

Sub HideItem(elID As String)
	elID = CleanID(elID)
	BANano.GetElement($"#${elID}"$).AddClass("hidden")
End Sub

Sub CopyToClipboard(txt As String)
	BANano.Await(BANano.Navigator.GetField("clipboard").RunMethod("writeText", txt))
End Sub

Sub CopyFromClipBoard As String
	Dim clipText As Object = BANano.Await(BANano.Navigator.GetField("clipboard").RunMethod("readText", Null))
	Return clipText
End Sub



Sub CreateList As List
	Dim nl As List
	nl.Initialize
	Return nl
End Sub


'convert number to a letter
'for excel
Sub NumberToLetters(inum As Int) As String
	Dim res As String = BANano.RunJavascriptMethod("numberToLetters", Array(inum))
	Return res
End Sub

#if javascript
const numberToLetters = (num) => {
            let letters = "";
            while (num >= 0) {
                letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"[num % 26] + letters;
                num = Math.floor(num / 26) - 1;
            }
            return letters;
        };
#End If


'convert a list to a map
Sub ListToMap(lst As List) As Map
	Dim m As Map = CreateMap()
	For Each k As String In lst
		m.Put(k, k)
	Next
	Return m
End Sub

'get start and end dates of a month based on date
Sub GetMonthStartEnd(dateString As String) As List
	dateString = dateString.trim
	' Parse the input date string to extract year, month, and day
	Dim syear As String = MvField(dateString,1,"-")
	Dim smonth As String = MvField(dateString,2,"-")
	
	' Set the calendar to the first day of the given month
	Dim startDate As Long
	DateTime.DateFormat = "yyyy-MM-dd"
	startDate = DateTime.DateParse(syear & "-" & smonth & "-01")
    
	' Calculate the end date by finding the first day of the next month, then subtracting one day
	Dim nextMonth As Int = BANano.parseInt(smonth) + 1
	Dim nextYear As Int = BANano.parseInt(syear)
    
	If nextMonth > 12 Then
		nextMonth = 1
		nextYear = BANano.parseInt(syear) + 1
	End If
    
	Dim endDate As Long
	endDate = DateTime.DateParse(nextYear & "-" & nextMonth & "-01") - DateTime.TicksPerDay
    
	' Format the start and end dates back to "yyyy-MM-dd" format
	Dim startDateString As String = DateTime.Date(startDate)
	Dim endDateString As String = DateTime.Date(endDate)
    
	' Create a list to return the start and end dates
	Dim result As List
	result.Initialize
	result.Add(startDateString)
	result.Add(endDateString)
    
	Return result
End Sub

Sub GenerateOTP(iLength As Int) As String
	Dim sb As StringBuilder
	sb.Initialize 
	Dim Seed As Long = DateTime.Now
	RndSeed(Seed)
	For i = 0 To iLength - 1
		Dim sout As String = Rnd(1, 10)
		sb.Append(sout)
	Next
	Return sb.tostring
End Sub

Sub GetWeekendDates(startDate As String, endDate As String) As List
	DateTime.DateFormat = "yyyy-MM-dd"
	' Initialize the list to hold weekend dates
	Dim weekendDates As List
	weekendDates.Initialize

	' Parse the start and end dates
	Dim sd As Long = DateTime.DateParse(startDate)
	Dim ed As Long = DateTime.DateParse(endDate)

	' Loop through all dates from start to end
	For i = sd To ed Step DateTime.TicksPerDay
		' Get the day of the week (1=Sunday, 7=Saturday)
		Dim dayOfWeek As Int = DateTime.GetDayOfWeek(i)

		' Check if it's a weekend (Saturday = 7, Sunday = 1)
		If dayOfWeek = 1 Or dayOfWeek = 7 Then
			' Add the date to the list
			weekendDates.Add(DateTime.Date(i))
		End If
	Next

	Return weekendDates
End Sub

Sub GetWorkingDates(startDate As String, endDate As String) As List
	DateTime.DateFormat = "yyyy-MM-dd"
	' Initialize the list to hold working dates
	Dim workingDates As List
	workingDates.Initialize

	' Parse the start and end dates
	Dim sd As Long = DateTime.DateParse(startDate)
	Dim ed As Long = DateTime.DateParse(endDate)

	' Loop through all dates from start to end
	For i = sd To ed Step DateTime.TicksPerDay
		' Get the day of the week (1=Sunday, 7=Saturday)
		Dim dayOfWeek As Int = DateTime.GetDayOfWeek(i)

		' Check if it's a working day (Monday to Friday)
		If dayOfWeek <> 1 And dayOfWeek <> 7 Then
			' Add the date to the list
			workingDates.Add(DateTime.Date(i))
		End If
	Next

	Return workingDates
End Sub



Sub ExtractIconName(iconName As String) As String
	If iconName = "" Then Return ""
	Dim startIndex As Int = iconName.IndexOf(QUOTE) ' Find the first double quote
	If startIndex <> -1 Then ' If a double quote is found
		Dim endIndex As Int = iconName.IndexOf2(QUOTE, startIndex + 1) ' Find the next double quote after the first
		If endIndex <> -1 Then ' If a closing double quote is found
			' Extract the content between the double quotes
			Return iconName.SubString2(startIndex + 1, endIndex)
		End If
	End If
	' Return the original string if no complete pair of double quotes is found
	Return iconName
End Sub


Sub HideFullPhoneNumber(PhoneNumber As String) As String
	Dim PasswordChars As String = ""
	For i = 0 To PhoneNumber.Length -1
		If i >= 3 And i <= PhoneNumber.Length -4 Then
			PasswordChars = PasswordChars & "*"
		End If
	Next
	Return PhoneNumber.SubString2(0,3) & PasswordChars & PhoneNumber.SubString2(PhoneNumber.Length -4,PhoneNumber.Length)
End Sub

Sub MvToArrayDefinition(delim As String, delimOut As String, strIt As String) As String
	Dim imags As List = StrParse(delim, strIt)
	Dim simgs As String = JoinQuote(delimOut, imags)
	Dim sout As String = $"Array(${simgs})"$
	Return sout
End Sub

Sub StrInstr(text As String, search As String) As Boolean
	Dim idxpos As Int = text.IndexOf(search)
	If idxpos = -1 Then
		Return False
	Else
		Return True
	End If
End Sub

Sub RightSize(v As String) As String
	v = CStr(v)
	If v.EndsWith("px") Or v.EndsWith("rem") Or v.EndsWith("vh") Or v.EndsWith("vw") Or v.EndsWith("%") Then
		Return $"[${v}]"$
	Else
		Return v
	End If
End Sub

'apply styles separated by ;
Sub AddRawStyles(elID As String, varStyles As String)
	elID = CleanID(elID)
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	Dim mxItems As List = StrParse(";", varStyles)
	Dim ms As Map = CreateMap()
	For Each mtx As String In mxItems
		mtx = mtx.Replace(":", "=")
		mtx = mtx.Trim
		If mtx = "" Then Continue
		Dim k As String = MvField(mtx,1,"=")
		Dim v As String = MvField(mtx,2,"=")
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then
			ms.put(k, v)
		End If
	Next
	AddStyleMap(elID, ms)
End Sub

'apply attributes separated by ;
Sub AddRawAttributes(elID As String, varStyles As String)
	elID = CleanID(elID)
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	Dim mxItems As List = StrParse(";", varStyles)
	For Each mtx As String In mxItems
		mtx = mtx.Replace(":", "=")
		mtx = mtx.Trim
		If mtx = "" Then Continue
		Dim k As String = MvField(mtx,1,"=")
		Dim v As String = MvField(mtx,2,"=")
		k = k.trim
		v = v.trim
		Select Case k
			Case "class"
				AddClass(elID, v)
			Case "style"
				AddRawStyles(elID, v)
			Case Else
				SetAttr(elID, k, v)
		End Select
	Next
End Sub

Sub AddRawMargins(elID As String, varMarginAXYTBLR As String)
	elID = CleanID(elID)
	varMarginAXYTBLR = CStr(varMarginAXYTBLR)
	If varMarginAXYTBLR = "" Then Return
	Dim mm As Map = GetMarginPadding(varMarginAXYTBLR)
	For Each k As String In mm.Keys
		Dim v As String = mm.Get(k)
		If v <> "" Then
			If v.StartsWith("n") Then
				Dim nn As String = StrMid(v,2)
				Dim n As String = RightSize(nn)
				Dim classKey As String = $"-m${k}-${n}"$
				If k = "a" Then
					classKey = $"-m-${n}"$
				End If
				AddClass(elID, classKey)
			Else
				v = RightSize(v)
				Dim classKey As String = $"m${k}-${v}"$
				If k = "a" Then
					classKey = $"m-${v}"$
				End If
				AddClass(elID, classKey)
			End If
		End If
	Next
End Sub

'multiple class addision
Sub AddRawClasses(elID As String, varStyles As String)
	elID = CleanID(elID)
	varStyles = varStyles.Replace(" ", ";")
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	AddClass(elID, varStyles)
End Sub

Sub AddRawPadding(elID As String, varsetPaddingTBLR As String)
	elID = CleanID(elID)
	varsetPaddingTBLR = CStr(varsetPaddingTBLR)
	If varsetPaddingTBLR = "" Then Return
	Dim mm As Map = GetMarginPadding(varsetPaddingTBLR)
	For Each k As String In mm.Keys
		Dim v As String = mm.Get(k)
		If v <> "" Then
			If v.StartsWith("n") Then
				Dim nn As String = StrMid(v,2)
				Dim n As String = RightSize(nn)
				Dim classKey As String = $"-p${k}-${n}"$
				If k = "a" Then
					classKey = $"-p-${n}"$
				End If
				AddClass(elID, classKey)
			Else
				v = RightSize(v)
				Dim classKey As String = $"p${k}-${v}"$
				If k = "a" Then
					classKey = $"p-${v}"$
				End If
				AddClass(elID, classKey)
			End If
		End If
	Next
End Sub


Sub StrInstr1(Start As Int, text As String, search As String) As Boolean
	Dim idxpos As Int = text.IndexOf2(search, Start-1)
	If idxpos = -1 Then
		Return False
	Else
		Return True	
	End If
End Sub

Sub StrLen(Text As String) As Int
	Return Text.Length
End Sub

Sub StrUCase(Text As String) As String
	Return Text.ToUpperCase
End Sub

Sub StrLCase(Text As String) As String
	Return Text.ToLowerCase
End Sub

Sub StrLeft(Text As String, iLength As Int) As String
	If iLength>Text.Length Then iLength=Text.Length
	Return Text.SubString2(0, iLength)
End Sub

Sub StrRight(Text As String, iLength As Int) As String
	If iLength>Text.Length Then iLength=Text.Length
	Return Text.SubString(Text.Length-iLength)
End Sub

Sub StrMid1(Text As String, Start As Int, iLength As Int) As String
	Return Text.SubString2(Start-1,Start+iLength-1)
End Sub

Sub StrMid(Text As String, Start As Int) As String
	Return Text.SubString(Start-1)
End Sub

Sub JoinMap(delimiter As String, itemDelimiter As String,  theMap As Map) As String
	If theMap.Size = 0 Then Return ""
	Dim sbx As StringBuilder
	sbx.Initialize
	For Each k As String In theMap.Keys
		Dim v As String = theMap.Get(k)
		sbx.Append(k).Append(itemDelimiter).Append(v).Append(delimiter)
	Next
	Dim sout As String = sbx.ToString
	sbx.Initialize
	Return sout
End Sub

Sub SetVisible(cID As String, b As Boolean)
	cID = CStr(cID)
	If BANano.Exists($"#${cID}"$) = False Then Return
	If b Then
		BANano.GetElement($"#${cID}"$).RemoveClass("hidden")
	Else
		BANano.GetElement($"#${cID}"$).AddClass("hidden")
	End If		
End Sub

Sub RemoveLastClass(cID As String, xattr As String)
	cID = CStr(cID)
	If BANano.Exists($"#${cID}"$) = False Then Return
	Dim mLast As String = GetData(cID, xattr)
	mLast = CStr(mLast)
	mLast = mLast.trim
	If mLast <> "" Then RemoveClass(cID, mLast)
End Sub

Sub GetData(cid As String, attr As String) As String
	cid = CStr(cid)
	Return BANano.GetElement($"#${cid}"$).GetData(attr)
End Sub

Sub SetData(cid As String, attr As String, attrv As String)
	cid = CStr(cid)
	BANano.GetElement($"#${cid}"$).setData(attr, attrv)
End Sub

Sub BlurActiveElement
	BANano.Window.GetField("document").GetField("activeElement").RunMethod("blur", Null)
End Sub

Sub AddEvent(cid As String, event As String, CallBackModule As Object, methodName As String)
	cid = CStr(cid)
	If BANano.Exists($"#${cid}"$) = False Then Return
	event = event.Replace(":","")
	event = event.Replace(".","")
	event = event.Replace("-","")
	event = event.tolowercase
	BANano.GetElement($"#${cid}"$).On(event, CallBackModule, methodName)
End Sub

Sub AddEventBANanoObject(cid As String, event As String, CallBackMethod As BANanoObject)
	cid = CStr(cid)
	If BANano.Exists($"#${cid}"$) = False Then Return
	event = event.Replace(":","")
	event = event.Replace(".","")
	event = event.Replace("-","")
	event = event.tolowercase
	BANano.GetElement($"#${cid}"$).AddEventListener(event, CallBackMethod, True)
End Sub

Sub GetFileNameOnly(value As String) As String
	Dim nItem As String = CStr(value)
	nItem = MvLast("/", nItem)
	nItem = MvField(nItem, 1, ".")
	Return nItem
End Sub

Sub Divide(v1 As Int, v2 As Int) As Double
	Dim v3 As Double = CInt(v1) / CInt(v2)
	Return v3              
End Sub

Sub Subtract(v1 As Int, v2 As Int) As Int
	Dim v3 As Int = CInt(v1) - CInt(v2)
	Return v3
End Sub

Sub Sum(v1 As Int, v2 As Int) As Int
	Dim v3 As Int = CInt(v1) + CInt(v2)
	Return v3
End Sub

Sub Multiply(v1 As Int, v2 As Int) As Int
	Dim v3 As Int = CInt(v1) * CInt(v2)
	Return v3
End Sub

Sub Increment(v As Int) As Int
	v = BANano.parseInt(v) + 1
	Return v
End Sub

Sub Decrement(v As Int) As Int
	v = BANano.parseInt(v) - 1
	Return v
End Sub


'create a list from map specific keys
Sub GetListFromMapKeys(m As Map, keys As List) As List
	Dim lst As List
	lst.Initialize
	For Each k As String In keys
		If m.ContainsKey(k) Then
			Dim v As Object = m.Get(k)
			lst.Add(v)
		End If
	Next
	Return lst
End Sub

Sub FixShadow(s As String) As String
	Select Case s
	Case "shadow"
		Return s
	Case Else
		Dim x As String = "shadow-" & s
		Return x
	End Select
End Sub

Sub FixRounded(s As String) As String
	Select Case s
	Case "rounded"
		Return s
	Case Else
		Dim x As String = "rounded-" & s
		Return x
	End Select
End Sub

Sub FixMask(mask As String) As String
	mask = mask.Replace("mask-", "")
	Select Case mask
	Case "rounded-xs", "rounded-md", "rounded-xl","rounded-sm", "rounded-2xl", "rounded-3xl", "rounded", "rounded-full", "rounded-lg"
		Return mask
	Case "circle"
		Return "rounded-full"
	Case "rounded"
		Return "rounded"
	Case "none", ""
		Return ""
	Case Else
		Return "mask mask-" & mask
	End Select
End Sub

'code for DOMContentLoaded
Sub DOMContentLoaded As String
	Dim str As String = $"var body = document.getElementById("body");
    var loader1 = document.createElement("div");
    loader1.setAttribute("id", "loader-1")
    loader1.style.cssText = 'display:block;top:0px;position:fixed;width:100%;height:100%;z-index:999999';
    var loader = document.createElement("div");
    loader.setAttribute("id", "loader")
    loader1.appendChild(loader);
    body.appendChild(loader1);"$
	Return str
End Sub

Sub ShowLoader
	Dim lEL As BANanoElement
	lEL.Initialize("#loader-1")
	Dim mStyle As Map = CreateMap()
	mStyle.Put("display", "block")
	lEL.SetStyle(BANano.ToJson(mStyle))
End Sub

Sub HideLoader
	Dim lEL As BANanoElement
	lEL.Initialize("#loader-1")
	Dim mStyle As Map = CreateMap()
	mStyle.Put("display", "none")
	lEL.SetStyle(BANano.ToJson(mStyle))
End Sub

'get file parent path
Sub GetFileParentPath(Path As String) As String
	Dim Path1 As String
	Dim L As Int
	If Path = "/" Then
		Return "/"
	End If
	L = Path.LastIndexOf("/")
	If L = Path.Length - 1 Then
		'Strip the last slash
		Path1 = Path.SubString2(0,L)
	Else
		Path1 = Path
	End If
	L = Path.LastIndexOf("/")
	If L = 0 Then
		L = 1
	End If
	Return Path1.SubString2(0,L)
End Sub
'
'get file name
Sub GetFileName(Path As String) As String
	If Path = "/" Then
		Return "/"
	End If
	Return Path.SubString(Path.LastIndexOf("/")+1)
End Sub
'get file extension
Sub GetFileExt(FullPath As String) As String
	Return FullPath.SubString(FullPath.LastIndexOf(".")+1)
End Sub

Sub Map2Style(m As Map) As String
	Dim sb As StringBuilder
	sb.Initialize
	Dim i As Int
	Dim iWhere As Int = m.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			sb.Append(";")
		End If
		Dim scol As String = m.GetKeyAt(i)
		Dim sval As String = m.GetValueAt(i)
		sb.Append($"${scol}:${sval}"$)
	Next
	Dim sout As String = sb.ToString
	sb.Initialize
	Return sout
End Sub


'get parameters in the url
Sub GetURLParams As Map
	Dim params As Map = BANano.GetURLParams(BANano.Location.GetHref)
	Return params
End Sub

Sub GetQueryString As Map
	Dim params As Map = BANano.GetURLParams(BANano.Location.GetHref)
	Return params
End Sub

Sub GetHexColor(Color As String, Intensity As String) As String
	Color = Color.ToLowerCase
	Intensity = Intensity.ToLowerCase
	Color = Color.Replace("none", "")
	Intensity = Intensity.Replace("normal", "")
	Dim sCode As String = $"${Color} ${Intensity}"$
	sCode = sCode.Trim
	If ColorMap.ContainsKey(sCode) Then
		Dim hexColor As String = ColorMap.Get(sCode)
		Return hexColor
	Else
		Return sCode
	End If
End Sub

Sub ListConcat(s As List, a As List)
	For Each o As Object In a
		s.Add(o)
	Next
End Sub

'play an audio file
Sub PlayAudio(url As String, volume As Double)
	Dim audio As BANanoObject
	audio.Initialize2("Audio", url)
	audio.RunMethod("play", Null)
	audio.SetField("volume", volume)
End Sub

#if javascript
// Adjust canvas coordinate space taking into account pixel ratio,
// to make it look crisp on mobile devices.
// This also causes canvas to be cleared.
function resizeCanvas(canvas,signaturePad) {
// When zoomed out to less than 100%, for some very strange reason,
// some browsers report devicePixelRatio as less than 1
// and only part of the canvas is cleared then.
var ratio =  Math.max(window.devicePixelRatio || 1, 1);
// This part causes the canvas to be cleared
canvas.width = canvas.offsetWidth * ratio;
canvas.height = canvas.offsetHeight * ratio;
canvas.getContext("2d").scale(ratio, ratio);
// This library does not listen for canvas changes, so after the canvas is automatically
// cleared by the browser, SignaturePad#isEmpty might still return false, even though the
// canvas looks empty, because the internal data of this library wasn't cleared. To make sure
// that the state of this library is consistent with visual state of the canvas, you
// have to clear it manually.
signaturePad.clear();
}
#End If

Sub AddStyleComputed(id As String, var As String, value As String)
	id = CleanID(id)
	If BANano.Exists($"#${id}"$) = False Then Return
	BANano.GetElement($"#${id}"$).GetField("style").RunMethod("setProperty", Array(var, value))
End Sub

'remove a style property like "--value"
Sub RemoveStyleComputed(id As String, var As String)
	id = CleanID(id)
	If BANano.Exists($"#${id}"$) = False Then Return
	BANano.GetElement($"#${id}"$).GetField("style").RunMethod("removeProperty", Array(var))
End Sub

'add a collection of styles to the element
Sub AddStyleMap(id As String, ms As Map)
	id = CleanID(id)
	If ms.Size = 0 Then Return
	BANano.GetElement($"#${id}"$).SetStyle(BANano.ToJson(ms))
End Sub

'get a style property like "--value"
Sub GetStyleComputed(id As String, var As String) As Object
	id = CleanID(id)
	If BANano.Exists($"#${id}"$) = False Then Return ""
	Dim tElement As BANanoElement = BANano.GetElement($"#${id}"$)
	Dim computed As BANanoObject
	computed.Initialize4("getComputedStyle", tElement.ToObject) ' note that computed is read-only!
	Return computed.RunMethod("getPropertyValue", var)
End Sub

'get a page from a list
Sub ListPaginate(lst As List, pageSize As Int, pageNumber As Int) As Paginate
	Dim xx As Paginate
	xx.initialize
	Try
		If lst.Size = 0 Then
			xx.previousPage = 0
			xx.nextPage = 0
			xx.totalPages = 0
			xx.items.Initialize 
			Return xx	
		End If
		Dim res As Map = BANano.RunJavascriptMethod("paginator", Array(lst, pageNumber, pageSize))
		xx.previousPage = res.Get("previousPage")
		xx.nextPage = res.Get("nextPage")
		xx.totalPages = res.Get("totalPages")
		xx.items = res.Get("items")
		Return xx
	Catch
		Log($"ListPaginate: ${LastException}"$)
		Return xx
	End Try
End Sub

#if javascript
var paginator = function paginate(items) {
  var page = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : 1;
  var perPage = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : 10;
  var offset = perPage * (page - 1);
  var totalPages = Math.ceil(items.length / perPage);
  var paginatedItems = items.slice(offset, perPage * page);
  return {
    previousPage: page - 1 ? page - 1 : 0,
    nextPage: totalPages > page ? page + 1 : 0,
    total: items.length,
    totalPages: totalPages,
    items: paginatedItems
  };
};
#End If

Sub GetColorHex(sColor As String) As String
	sColor = sColor.tolowercase
	If sColor = "none" Then Return ""
	If ColorMap.ContainsKey(sColor) Then
		Dim xColor As String = ColorMap.Get(sColor)
		Return xColor
	Else
		Return sColor
	End If
End Sub

Sub InitCountries
	Countries.Initialize
	Countries.Put("AD","Andorra")
	Countries.Put("AE","United Arab Emirates")
	Countries.Put("AF","Afghanistan")
	Countries.Put("AG","Antigua and Barbuda")
	Countries.Put("AI","Anguilla")
	Countries.Put("AL","Albania")
	Countries.Put("AM","Armenia")
	Countries.Put("AO","Angola")
	Countries.Put("AQ","Antarctica")
	Countries.Put("AR","Argentina")
	Countries.Put("AS","American Samoa")
	Countries.Put("AT","Austria")
	Countries.Put("AU","Australia")
	Countries.Put("AW","Aruba")
	Countries.Put("AX","Åland")
	Countries.Put("AZ","Azerbaijan")
	Countries.Put("BA","Bosnia and Herzegovina")
	Countries.Put("BB","Barbados")
	Countries.Put("BD","Bangladesh")
	Countries.Put("BE","Belgium")
	Countries.Put("BF","Burkina Faso")
	Countries.Put("BG","Bulgaria")
	Countries.Put("BH","Bahrain")
	Countries.Put("BI","Burundi")
	Countries.Put("BJ","Benin")
	Countries.Put("BL","Saint Barthélemy")
	Countries.Put("BM","Bermuda")
	Countries.Put("BN","Brunei")
	Countries.Put("BO","Bolivia")
	Countries.Put("BQ","Bonaire")
	Countries.Put("BR","Brazil")
	Countries.Put("BS","Bahamas")
	Countries.Put("BT","Bhutan")
	Countries.Put("BV","Bouvet Island")
	Countries.Put("BW","Botswana")
	Countries.Put("BY","Belarus")
	Countries.Put("BZ","Belize")
	Countries.Put("CA","Canada")
	Countries.Put("CC","Cocos [Keeling] Islands")
	Countries.Put("CD","Democratic Republic of the Congo")
	Countries.Put("CF","Central African Republic")
	Countries.Put("CG","Republic of the Congo")
	Countries.Put("CH","Switzerland")
	Countries.Put("CI","Ivory Coast")
	Countries.Put("CK","Cook Islands")
	Countries.Put("CL","Chile")
	Countries.Put("CM","Cameroon")
	Countries.Put("CN","China")
	Countries.Put("CO","Colombia")
	Countries.Put("CR","Costa Rica")
	Countries.Put("CU","Cuba")
	Countries.Put("CV","Cape Verde")
	Countries.Put("CW","Curacao")
	Countries.Put("CX","Christmas Island")
	Countries.Put("CY","Cyprus")
	Countries.Put("CZ","Czech Republic")
	Countries.Put("DE","Germany")
	Countries.Put("DJ","Djibouti")
	Countries.Put("DK","Denmark")
	Countries.Put("DM","Dominica")
	Countries.Put("DO","Dominican Republic")
	Countries.Put("DZ","Algeria")
	Countries.Put("EC","Ecuador")
	Countries.Put("EE","Estonia")
	Countries.Put("EG","Egypt")
	Countries.Put("EH","Western Sahara")
	Countries.Put("ER","Eritrea")
	Countries.Put("ES","Spain")
	Countries.Put("ET","Ethiopia")
	Countries.Put("FI","Finland")
	Countries.Put("FJ","Fiji")
	Countries.Put("FK","Falkland Islands")
	Countries.Put("FM","Micronesia")
	Countries.Put("FO","Faroe Islands")
	Countries.Put("FR","France")
	Countries.Put("GA","Gabon")
	Countries.Put("GB", "United Kingdom")
	Countries.Put("GD","Grenada")
	Countries.Put("GE","Georgia")
	Countries.Put("GF","French Guiana")
	Countries.Put("GG","Guernsey")
	Countries.Put("GH","Ghana")
	Countries.Put("GI","Gibraltar")
	Countries.Put("GL","Greenland")
	Countries.Put("GM","Gambia")
	Countries.Put("GN","Guinea")
	Countries.Put("GP","Guadeloupe")
	Countries.Put("GQ","Equatorial Guinea")
	Countries.Put("GR","Greece")
	Countries.Put("GS","South Georgia and the South Sandwich Islands")
	Countries.Put("GT","Guatemala")
	Countries.Put("GU","Guam")
	Countries.Put("GW","Guinea-Bissau")
	Countries.Put("GY","Guyana")
	Countries.Put("HK","Hong Kong")
	Countries.Put("HM","Heard Island and McDonald Islands")
	Countries.Put("HN","Honduras")
	Countries.Put("HR","Croatia")
	Countries.Put("HT","Haiti")
	Countries.Put("HU","Hungary")
	Countries.Put("ID","Indonesia")
	Countries.Put("IE","Ireland")
	Countries.Put("IL","Israel")
	Countries.Put("IM","Isle of Man")
	Countries.Put("IN","India")
	Countries.Put("IO","British Indian Ocean Territory")
	Countries.Put("IQ","Iraq")
	Countries.Put("IR","Iran")
	Countries.Put("IS","Iceland")
	Countries.Put("IT","Italy")
	Countries.Put("JE","Jersey")
	Countries.Put("JM","Jamaica")
	Countries.Put("JO","Jordan")
	Countries.Put("JP","Japan")
	Countries.Put("KE","Kenya")
	Countries.Put("KG","Kyrgyzstan")
	Countries.Put("KH","Cambodia")
	Countries.Put("KI","Kiribati")
	Countries.Put("KM","Comoros")
	Countries.Put("KN","Saint Kitts and Nevis")
	Countries.Put("KP","North Korea")
	Countries.Put("KR","South Korea")
	Countries.Put("KW","Kuwait")
	Countries.Put("KY","Cayman Islands")
	Countries.Put("KZ","Kazakhstan")
	Countries.Put("LA","Laos")
	Countries.Put("LB","Lebanon")
	Countries.Put("LC","Saint Lucia")
	Countries.Put("LI","Liechtenstein")
	Countries.Put("LK","Sri Lanka")
	Countries.Put("LR","Liberia")
	Countries.Put("LS","Lesotho")
	Countries.Put("LT","Lithuania")
	Countries.Put("LU","Luxembourg")
	Countries.Put("LV","Latvia")
	Countries.Put("LY","Libya")
	Countries.Put("MA","Morocco")
	Countries.Put("MC","Monaco")
	Countries.Put("MD","Moldova")
	Countries.Put("ME","Montenegro")
	Countries.Put("MF","Saint Martin")
	Countries.Put("MG","Madagascar")
	Countries.Put("MH","Marshall Islands")
	Countries.Put("MK","North Macedonia")
	Countries.Put("ML","Mali")
	Countries.Put("MM","Myanmar [Burma]")
	Countries.Put("MN","Mongolia")
	Countries.Put("MO","Macao")
	Countries.Put("MP","Northern Mariana Islands")
	Countries.Put("MQ","Martinique")
	Countries.Put("MR","Mauritania")
	Countries.Put("MS","Montserrat")
	Countries.Put("MT","Malta")
	Countries.Put("MU","Mauritius")
	Countries.Put("MV","Maldives")
	Countries.Put("MW","Malawi")
	Countries.Put("MX","Mexico")
	Countries.Put("MY","Malaysia")
	Countries.Put("MZ","Mozambique")
	Countries.Put("NA","Namibia")
	Countries.Put("NC","New Caledonia")
	Countries.Put("NE","Niger")
	Countries.Put("NF","Norfolk Island")
	Countries.Put("NG","Nigeria")
	Countries.Put("NI","Nicaragua")
	Countries.Put("NL","Netherlands")
	Countries.Put("NO","Norway")
	Countries.Put("NP","Nepal")
	Countries.Put("NR","Nauru")
	Countries.Put("NU","Niue")
	Countries.Put("NZ","New Zealand")
	Countries.Put("OM","Oman")
	Countries.Put("PA","Panama")
	Countries.Put("PE","Peru")
	Countries.Put("PF","French Polynesia")
	Countries.Put("PG","Papua New Guinea")
	Countries.Put("PH","Philippines")
	Countries.Put("PK","Pakistan")
	Countries.Put("PL","Poland")
	Countries.Put("PM","Saint Pierre and Miquelon")
	Countries.Put("PN","Pitcairn Islands")
	Countries.Put("PR","Puerto Rico")
	Countries.Put("PS","Palestine")
	Countries.Put("PT","Portugal")
	Countries.Put("PW","Palau")
	Countries.Put("PY","Paraguay")
	Countries.Put("QA","Qatar")
	Countries.Put("RE","Réunion")
	Countries.Put("RO","Romania")
	Countries.Put("RS","Serbia")
	Countries.Put("RU","Russia")
	Countries.Put("RW","Rwanda")
	Countries.Put("SA","Saudi Arabia")
	Countries.Put("SB","Solomon Islands")
	Countries.Put("SC","Seychelles")
	Countries.Put("SD","Sudan")
	Countries.Put("SE","Sweden")
	Countries.Put("SG","Singapore")
	Countries.Put("SH","Saint Helena")
	Countries.Put("SI","Slovenia")
	Countries.Put("SJ","Svalbard and Jan Mayen")
	Countries.Put("SK","Slovakia")
	Countries.Put("SL","Sierra Leone")
	Countries.Put("SM","San Marino")
	Countries.Put("SN","Senegal")
	Countries.Put("SO","Somalia")
	Countries.Put("SR","Suriname")
	Countries.Put("SS","South Sudan")
	Countries.Put("ST","São Tomé and Príncipe")
	Countries.Put("SV","El Salvador")
	Countries.Put("SX","Sint Maarten")
	Countries.Put("SY","Syria")
	Countries.Put("SZ","Swaziland")
	Countries.Put("TC","Turks and Caicos Islands")
	Countries.Put("TD","Chad")
	Countries.Put("TF","French Southern Territories")
	Countries.Put("TG","Togo")
	Countries.Put("TH","Thailand")
	Countries.Put("TJ","Tajikistan")
	Countries.Put("TK","Tokelau")
	Countries.Put("TL","East Timor")
	Countries.Put("TM","Turkmenistan")
	Countries.Put("TN","Tunisia")
	Countries.Put("TO","Tonga")
	Countries.Put("TR","Turkey")
	Countries.Put("TT","Trinidad and Tobago")
	Countries.Put("TV","Tuvalu")
	Countries.Put("TW","Taiwan")
	Countries.Put("TZ","Tanzania")
	Countries.Put("UA","Ukraine")
	Countries.Put("UG","Uganda")
	Countries.Put("UM","U.S. Minor Outlying Islands")
	Countries.Put("US","United States")
	Countries.Put("UY","Uruguay")
	Countries.Put("UZ","Uzbekistan")
	Countries.Put("VA","Vatican City")
	Countries.Put("VC","Saint Vincent and the Grenadines")
	Countries.Put("VE","Venezuela")
	Countries.Put("VG","British Virgin Islands")
	Countries.Put("VI","U.S. Virgin Islands")
	Countries.Put("VN","Vietnam")
	Countries.Put("VU","Vanuatu")
	Countries.Put("WF","Wallis and Futuna")
	Countries.Put("WS","Samoa")
	Countries.Put("XK","Kosovo")
	Countries.Put("YE","Yemen")
	Countries.Put("YT","Mayotte")
	Countries.Put("ZA","South Africa")
	Countries.Put("ZM","Zambia")
	Countries.Put("ZW","Zimbabwe")
End Sub

Sub InitLanguages
	Languages.Initialize 
	Languages.Put("Afrikaans","af")
	Languages.Put("Albanian","sq")
	Languages.Put("Arabic","ar")
	Languages.Put("Armenian ALPHA","hy")
	Languages.Put("Azerbaijani ALPHA","az")
	Languages.Put("Basque ALPHA","eu")
	Languages.Put("Belarusian","be")
	Languages.Put("Bulgarian","bg")
	Languages.Put("Catalan","ca")
	Languages.Put("Chinese (Simplified)", "zh-CN")
	Languages.Put("Chinese (Traditional)","zh-TW")
	Languages.Put("Croatian", "hr")
	Languages.Put("Czech","cs")
	Languages.Put("Danish","da")
	Languages.Put("Dutch","nl")
	Languages.Put("English","en")
	Languages.Put("Estonian","et")
	Languages.Put("Filipino","tl")
	Languages.Put("Finnish","fi")
	Languages.Put("French","fr")
	Languages.Put("Galician","gl")
	Languages.Put("Georgian ALPHA","ka")
	Languages.Put("German","de")
	Languages.Put("Greek","el")
	Languages.Put("Haitian Creole ALPHA","ht")
	Languages.Put("Hebrew","iw")
	Languages.Put("Hindi","hi")
	Languages.Put("Hungarian","hu")
	Languages.Put("Icelandic","is")
	Languages.Put("Indonesian","id")
	Languages.Put("Irish", "ga")
	Languages.Put("Italian","it")
	Languages.Put("Japanese", "ja")
	Languages.Put("Korean", "ko")
	Languages.Put("Latvian", "lv")
	Languages.Put("Lithuanian","lt")
	Languages.Put("Macedonian","mk")
	Languages.Put("Malay","ms")
	Languages.Put("Maltese","mt")
	Languages.Put("Norwegian","no")
	Languages.Put("Persian","fa")
	Languages.Put("Polish","pl")
	Languages.Put("Portuguese","pt")
	Languages.Put("Romanian","ro")
	Languages.Put("Russian","ru")
	Languages.Put("Serbian","sr")
	Languages.Put("Slovak", "sk")
	Languages.Put("Slovenian","sl")
	Languages.Put("Spanish", "es")
	Languages.Put("Swahili","sw")
	Languages.Put("Swedish","sv")
	Languages.Put("Thai", "th")
	Languages.Put("Turkish","tr")
	Languages.Put("Ukrainian","uk")
	Languages.Put("Urdu ALPHA", "ur")
	Languages.Put("Vietnamese","vi")
	Languages.Put("Welsh","cy")
	Languages.Put("Yiddish","yi")
End Sub

Sub GetAlphaColor(a As String) As String
	Dim fp As String = a.Trim
	fp = fp.ToUpperCase
	Dim fp1 As String = Left1(fp, 1)
	Dim col As String = ColorMap.GetDefault(fp1, "#ab6210")
	Return col
End Sub

Sub InitDays
	Days.Initialize 
	Dim x As Int = 0
	For x = 1 To 31
		Dim nd As String = PadRight(x, 2, "0")
		Days.Put(nd, nd)
	Next	
End Sub

Sub InitMonths
	Months.Initialize
	Months.Put("01", "January")
	Months.Put("02", "February")
	Months.Put("03", "March")
	Months.Put("04", "April")
	Months.Put("05", "May")
	Months.Put("06", "June")
	Months.Put("07", "July")
	Months.Put("08", "August")
	Months.Put("09", "September")
	Months.Put("10", "October")
	Months.Put("11", "November")
	Months.Put("12", "December")
End Sub


Sub InitColors
	ColorMap.Initialize
	
	ColorMap.Put("A", "#51c44f")
	ColorMap.Put("B", "#8223b7")
	ColorMap.Put("C", "#b47540")
	ColorMap.Put("D", "#f49a56")
	ColorMap.Put("E", "#27acd9")
	
	ColorMap.Put("F", "#73464e")
	ColorMap.Put("G", "#684cce")
	ColorMap.Put("H", "#66c8bc")
	ColorMap.Put("I", "#498057")
	ColorMap.Put("J", "#f8941e")
	
	ColorMap.Put("K", "#374209")
	ColorMap.Put("L", "#f300e0")
	ColorMap.Put("M", "#d88c22")
	ColorMap.Put("N", "#498057")
	ColorMap.Put("O", "#f70783")
	
	ColorMap.Put("P", "#82ca09")
	ColorMap.Put("Q", "#94b02f")
	ColorMap.Put("R", "#6ca92a")
	ColorMap.Put("S", "#d48e58")
	ColorMap.Put("T", "#16d3e7")
	'
	ColorMap.Put("U", "#18c59b")
	ColorMap.Put("V", "#c198cd")
	ColorMap.Put("W", "#4dfab8")
	ColorMap.Put("X", "#a4bbcc")
	ColorMap.Put("Y", "#47cacc")
	ColorMap.Put("Z", "#f1710d")
	'
	ColorMap.Put("#", "#ab6210")
	'
	ColorMap.Put("gray", "#9e9e9e")
	ColorMap.Put("zinc", "#92898a")
	ColorMap.Put("stone", "#B7B09C")
	ColorMap.Put("emerald", "#50C878")
	ColorMap.Put("sky", "#87CEEB")
	ColorMap.Put("violet", "#EE82EE")
	ColorMap.Put("fuchsia", "#FF00FF")
	ColorMap.Put("rose", "#FF007F")
	ColorMap.put("red lighten-5", "#ffebee")
	ColorMap.put("red lighten-4", "#ffcdd2")
	ColorMap.put("red lighten-3", "#ef9a9a")
	ColorMap.put("red lighten-2", "#e57373")
	ColorMap.put("red lighten-1", "#ef5350")
	ColorMap.put("red", "#f44336")
	ColorMap.put("red darken-1", "#e53935")
	ColorMap.put("red darken-2", "#d32f2f")
	ColorMap.put("red darken-3", "#c62828")
	ColorMap.put("red darken-4", "#b71c1c")
	ColorMap.put("red accent-1", "#ff8a80")
	ColorMap.put("red accent-2", "#ff5252")
	ColorMap.put("red accent-3", "#ff1744")
	ColorMap.put("red accent-4", "#d50000")
	ColorMap.put("pink lighten-5", "#fce4ec")
	ColorMap.put("pink lighten-4", "#f8bbd0")
	ColorMap.put("pink lighten-3", "#f48fb1")
	ColorMap.put("pink lighten-2", "#f06292")
	ColorMap.put("pink lighten-1", "#ec407a")
	ColorMap.put("pink", "#e91e63")
	ColorMap.put("pink darken-1", "#d81b60")
	ColorMap.put("pink darken-2", "#c2185b")
	ColorMap.put("pink darken-3", "#ad1457")
	ColorMap.put("pink darken-4", "#880e4f")
	ColorMap.put("pink accent-1", "#ff80ab")
	ColorMap.put("pink accent-2", "#ff4081")
	ColorMap.put("pink accent-3", "#f50057")
	ColorMap.put("pink accent-4", "#c51162")
	ColorMap.put("purple lighten-5", "#f3e5f5")
	ColorMap.put("purple lighten-4", "#e1bee7")
	ColorMap.put("purple lighten-3", "#ce93d8")
	ColorMap.put("purple lighten-2", "#ba68c8")
	ColorMap.put("purple lighten-1", "#ab47bc")
	ColorMap.put("purple", "#9c27b0")
	ColorMap.put("purple darken-1", "#8e24aa")
	ColorMap.put("purple darken-2", "#7b1fa2")
	ColorMap.put("purple darken-3", "#6a1b9a")
	ColorMap.put("purple darken-4", "#4a148c")
	ColorMap.put("purple accent-1", "#ea80fc")
	ColorMap.put("purple accent-2", "#e040fb")
	ColorMap.put("purple accent-3", "#d500f9")
	ColorMap.put("purple accent-4", "#aa00ff")
	ColorMap.put("deep-purple lighten-5", "#ede7f6")
	ColorMap.put("deep-purple lighten-4", "#d1c4e9")
	ColorMap.put("deep-purple lighten-3", "#b39ddb")
	ColorMap.put("deep-purple lighten-2", "#9575cd")
	ColorMap.put("deep-purple lighten-1", "#7e57c2")
	ColorMap.put("deep-purple", "#673ab7")
	ColorMap.put("deep-purple darken-1", "#5e35b1")
	ColorMap.put("deep-purple darken-2", "#512da8")
	ColorMap.put("deep-purple darken-3", "#4527a0")
	ColorMap.put("deep-purple darken-4", "#311b92")
	ColorMap.put("deep-purple accent-1", "#b388ff")
	ColorMap.put("deep-purple accent-2", "#7c4dff")
	ColorMap.put("deep-purple accent-3", "#651fff")
	ColorMap.put("deep-purple accent-4", "#6200ea")
	ColorMap.put("indigo lighten-5", "#e8eaf6")
	ColorMap.put("indigo lighten-4", "#c5cae9")
	ColorMap.put("indigo lighten-3", "#9fa8da")
	ColorMap.put("indigo lighten-2", "#7986cb")
	ColorMap.put("indigo lighten-1", "#5c6bc0")
	ColorMap.put("indigo", "#3f51b5")
	ColorMap.put("indigo darken-1", "#3949ab")
	ColorMap.put("indigo darken-2", "#303f9f")
	ColorMap.put("indigo darken-3", "#283593")
	ColorMap.put("indigo darken-4", "#1a237e")
	ColorMap.put("indigo accent-1", "#8c9eff")
	ColorMap.put("indigo accent-2", "#536dfe")
	ColorMap.put("indigo accent-3", "#3d5afe")
	ColorMap.put("indigo accent-4", "#304ffe")
	ColorMap.put("blue lighten-5", "#e3f2fd")
	ColorMap.put("blue lighten-4", "#bbdefb")
	ColorMap.put("blue lighten-3", "#90caf9")
	ColorMap.put("blue lighten-2", "#64b5f6")
	ColorMap.put("blue lighten-1", "#42a5f5")
	ColorMap.put("blue", "#2196f3")
	ColorMap.put("blue darken-1", "#1e88e5")
	ColorMap.put("blue darken-2", "#1976d2")
	ColorMap.put("blue darken-3", "#1565c0")
	ColorMap.put("blue darken-4", "#0d47a1")
	ColorMap.put("blue accent-1", "#82b1ff")
	ColorMap.put("blue accent-2", "#448aff")
	ColorMap.put("blue accent-3", "#2979ff")
	ColorMap.put("blue accent-4", "#2962ff")
	ColorMap.put("light-blue lighten-5", "#e1f5fe")
	ColorMap.put("light-blue lighten-4", "#b3e5fc")
	ColorMap.put("light-blue lighten-3", "#81d4fa")
	ColorMap.put("light-blue lighten-2", "#4fc3f7")
	ColorMap.put("light-blue lighten-1", "#29b6f6")
	ColorMap.put("light-blue", "#03a9f4")
	ColorMap.put("light-blue darken-1", "#039be5")
	ColorMap.put("light-blue darken-2", "#0288d1")
	ColorMap.put("light-blue darken-3", "#0277bd")
	ColorMap.put("light-blue darken-4", "#01579b")
	ColorMap.put("light-blue accent-1", "#80d8ff")
	ColorMap.put("light-blue accent-2", "#40c4ff")
	ColorMap.put("light-blue accent-3", "#00b0ff")
	ColorMap.put("light-blue accent-4", "#0091ea")
	ColorMap.put("cyan lighten-5", "#e0f7fa")
	ColorMap.put("cyan lighten-4", "#b2ebf2")
	ColorMap.put("cyan lighten-3", "#80deea")
	ColorMap.put("cyan lighten-2", "#4dd0e1")
	ColorMap.put("cyan lighten-1", "#26c6da")
	ColorMap.put("cyan", "#00bcd4")
	ColorMap.put("cyan darken-1", "#00acc1")
	ColorMap.put("cyan darken-2", "#0097a7")
	ColorMap.put("cyan darken-3", "#00838f")
	ColorMap.put("cyan darken-4", "#006064")
	ColorMap.put("cyan accent-1", "#84ffff")
	ColorMap.put("cyan accent-2", "#18ffff")
	ColorMap.put("cyan accent-3", "#00e5ff")
	ColorMap.put("cyan accent-4", "#00b8d4")
	ColorMap.put("teal lighten-5", "#e0f2f1")
	ColorMap.put("teal lighten-4", "#b2dfdb")
	ColorMap.put("teal lighten-3", "#80cbc4")
	ColorMap.put("teal lighten-2", "#4db6ac")
	ColorMap.put("teal lighten-1", "#26a69a")
	ColorMap.put("teal", "#009688")
	ColorMap.put("teal darken-1", "#00897b")
	ColorMap.put("teal darken-2", "#00796b")
	ColorMap.put("teal darken-3", "#00695c")
	ColorMap.put("teal darken-4", "#004d40")
	ColorMap.put("teal accent-1", "#a7ffeb")
	ColorMap.put("teal accent-2", "#64ffda")
	ColorMap.put("teal accent-3", "#1de9b6")
	ColorMap.put("teal accent-4", "#00bfa5")
	ColorMap.put("green lighten-5", "#e8f5e9")
	ColorMap.put("green lighten-4", "#c8e6c9")
	ColorMap.put("green lighten-3", "#a5d6a7")
	ColorMap.put("green lighten-2", "#81c784")
	ColorMap.put("green lighten-1", "#66bb6a")
	ColorMap.put("green", "#4caf50")
	ColorMap.put("green darken-1", "#43a047")
	ColorMap.put("green darken-2", "#388e3c")
	ColorMap.put("green darken-3", "#2e7d32")
	ColorMap.put("green darken-4", "#1b5e20")
	ColorMap.put("green accent-1", "#b9f6ca")
	ColorMap.put("green accent-2", "#69f0ae")
	ColorMap.put("green accent-3", "#00e676")
	ColorMap.put("green accent-4", "#00c853")
	ColorMap.put("light-green lighten-5", "#f1f8e9")
	ColorMap.put("light-green lighten-4", "#dcedc8")
	ColorMap.put("light-green lighten-3", "#c5e1a5")
	ColorMap.put("light-green lighten-2", "#aed581")
	ColorMap.put("light-green lighten-1", "#9ccc65")
	ColorMap.put("light-green", "#8bc34a")
	ColorMap.put("light-green darken-1", "#7cb342")
	ColorMap.put("light-green darken-2", "#689f38")
	ColorMap.put("light-green darken-3", "#558b2f")
	ColorMap.put("light-green darken-4", "#33691e")
	ColorMap.put("light-green accent-1", "#ccff90")
	ColorMap.put("light-green accent-2", "#b2ff59")
	ColorMap.put("light-green accent-3", "#76ff03")
	ColorMap.put("light-green accent-4", "#64dd17")
	ColorMap.put("lime lighten-5", "#f9fbe7")
	ColorMap.put("lime lighten-4", "#f0f4c3")
	ColorMap.put("lime lighten-3", "#e6ee9c")
	ColorMap.put("lime lighten-2", "#dce775")
	ColorMap.put("lime lighten-1", "#d4e157")
	ColorMap.put("lime", "#cddc39")
	ColorMap.put("lime darken-1", "#c0ca33")
	ColorMap.put("lime darken-2", "#afb42b")
	ColorMap.put("lime darken-3", "#9e9d24")
	ColorMap.put("lime darken-4", "#827717")
	ColorMap.put("lime accent-1", "#f4ff81")
	ColorMap.put("lime accent-2", "#eeff41")
	ColorMap.put("lime accent-3", "#c6ff00")
	ColorMap.put("lime accent-4", "#aeea00")
	ColorMap.put("yellow lighten-5", "#fffde7")
	ColorMap.put("yellow lighten-4", "#fff9c4")
	ColorMap.put("yellow lighten-3", "#fff59d")
	ColorMap.put("yellow lighten-2", "#fff176")
	ColorMap.put("yellow lighten-1", "#ffee58")
	ColorMap.put("yellow", "#ffeb3b")
	ColorMap.put("yellow darken-1", "#fdd835")
	ColorMap.put("yellow darken-2", "#fbc02d")
	ColorMap.put("yellow darken-3", "#f9a825")
	ColorMap.put("yellow darken-4", "#f57f17")
	ColorMap.put("yellow accent-1", "#ffff8d")
	ColorMap.put("yellow accent-2", "#ffff00")
	ColorMap.put("yellow accent-3", "#ffea00")
	ColorMap.put("yellow accent-4", "#ffd600")
	ColorMap.put("amber lighten-5", "#fff8e1")
	ColorMap.put("amber lighten-4", "#ffecb3")
	ColorMap.put("amber lighten-3", "#ffe082")
	ColorMap.put("amber lighten-2", "#ffd54f")
	ColorMap.put("amber lighten-1", "#ffca28")
	ColorMap.put("amber", "#ffc107")
	ColorMap.put("amber darken-1", "#ffb300")
	ColorMap.put("amber darken-2", "#ffa000")
	ColorMap.put("amber darken-3", "#ff8f00")
	ColorMap.put("amber darken-4", "#ff6f00")
	ColorMap.put("amber accent-1", "#ffe57f")
	ColorMap.put("amber accent-2", "#ffd740")
	ColorMap.put("amber accent-3", "#ffc400")
	ColorMap.put("amber accent-4", "#ffab00")
	ColorMap.put("orange lighten-5", "#fff3e0")
	ColorMap.put("orange lighten-4", "#ffe0b2")
	ColorMap.put("orange lighten-3", "#ffcc80")
	ColorMap.put("orange lighten-2", "#ffb74d")
	ColorMap.put("orange lighten-1", "#ffa726")
	ColorMap.put("orange", "#ff9800")
	ColorMap.put("orange darken-1", "#fb8c00")
	ColorMap.put("orange darken-2", "#f57c00")
	ColorMap.put("orange darken-3", "#ef6c00")
	ColorMap.put("orange darken-4", "#e65100")
	ColorMap.put("orange accent-1", "#ffd180")
	ColorMap.put("orange accent-2", "#ffab40")
	ColorMap.put("orange accent-3", "#ff9100")
	ColorMap.put("orange accent-4", "#ff6d00")
	ColorMap.put("deep-orange lighten-5", "#fbe9e7")
	ColorMap.put("deep-orange lighten-4", "#ffccbc")
	ColorMap.put("deep-orange lighten-3", "#ffab91")
	ColorMap.put("deep-orange lighten-2", "#ff8a65")
	ColorMap.put("deep-orange lighten-1", "#ff7043")
	ColorMap.put("deep-orange", "#ff5722")
	ColorMap.put("deep-orange darken-1", "#f4511e")
	ColorMap.put("deep-orange darken-2", "#e64a19")
	ColorMap.put("deep-orange darken-3", "#d84315")
	ColorMap.put("deep-orange darken-4", "#bf360c")
	ColorMap.put("deep-orange accent-1", "#ff9e80")
	ColorMap.put("deep-orange accent-2", "#ff6e40")
	ColorMap.put("deep-orange accent-3", "#ff3d00")
	ColorMap.put("deep-orange accent-4", "#dd2c00")
	ColorMap.put("brown lighten-5", "#efebe9")
	ColorMap.put("brown lighten-4", "#d7ccc8")
	ColorMap.put("brown lighten-3", "#bcaaa4")
	ColorMap.put("brown lighten-2", "#a1887f")
	ColorMap.put("brown lighten-1", "#8d6e63")
	ColorMap.put("brown", "#795548")
	ColorMap.put("brown darken-1", "#6d4c41")
	ColorMap.put("brown darken-2", "#5d4037")
	ColorMap.put("brown darken-3", "#4e342e")
	ColorMap.put("brown darken-4", "#3e2723")
	ColorMap.put("grey lighten-5", "#fafafa")
	ColorMap.put("grey lighten-4", "#f5f5f5")
	ColorMap.put("grey lighten-3", "#eeeeee")
	ColorMap.put("grey lighten-2", "#e0e0e0")
	ColorMap.put("grey lighten-1", "#bdbdbd")
	ColorMap.put("grey", "#9e9e9e")
	ColorMap.put("grey darken-1", "#757575")
	ColorMap.put("grey darken-2", "#616161")
	ColorMap.put("grey darken-3", "#424242")
	ColorMap.put("grey darken-4", "#212121")
	ColorMap.put("blue-grey lighten-5", "#eceff1")
	ColorMap.put("blue-grey lighten-4", "#cfd8dc")
	ColorMap.put("blue-grey lighten-3", "#b0bec5")
	ColorMap.put("blue-grey lighten-2", "#90a4ae")
	ColorMap.put("blue-grey lighten-1", "#78909c")
	ColorMap.put("blue-grey", "#607d8b")
	ColorMap.put("blue-grey darken-1", "#546e7a")
	ColorMap.put("blue-grey darken-2", "#455a64")
	ColorMap.put("blue-grey darken-3", "#37474f")
	ColorMap.put("blue-grey darken-4", "#263238")
	ColorMap.put("black", "#000000")
	ColorMap.put("white", "#ffffff")
	ColorMap.put("transparent", "transparent")
	'
	ColorMap.Put("primary", "primary")
	ColorMap.Put("secondary", "secondary")
	ColorMap.Put("accent", "accent")
	ColorMap.Put("neutral", "neutral")
	ColorMap.Put("base", "base")
	ColorMap.Put("info", "info")
	ColorMap.Put("success", "success")
	ColorMap.Put("warning", "warning")
	ColorMap.Put("error", "error")
	ColorMap.Put("ghost", "ghost")
	ColorMap.Put("white", "white")
	ColorMap.Put("red", "red")
	ColorMap.put("black", "black")
	ColorMap.put("blue", "blue")
	ColorMap.put("gray", "gray")
	ColorMap.put("orange", "orange")
	ColorMap.put("yellow", "yellow")
	ColorMap.put("green", "green")
	ColorMap.put("teal", "teal")
	ColorMap.put("indigo", "indigo")
	ColorMap.put("purple", "purple")
	ColorMap.put("pink", "pink")
End Sub



#if javascript
const languages = {
      "am-ET": "Amharic",
      "ar-SA": "Arabic",
      "be-BY": "Bielarus",
      "bem-ZM": "Bemba",
      "bi-VU": "Bislama",
      "bjs-BB": "Bajan",
      "bn-IN": "Bengali",
      "bo-CN": "Tibetan",
      "br-FR": "Breton",
      "bs-BA": "Bosnian",
      "ca-ES": "Catalan",
      "cop-EG": "Coptic",
      "cs-CZ": "Czech",
      "cy-GB": "Welsh",
      "da-DK": "Danish",
      "dz-BT": "Dzongkha",
      "de-DE": "German",
      "dv-MV": "Maldivian",
      "el-GR": "Greek",
      "en-GB": "English",
      "es-ES": "Spanish",
      "et-EE": "Estonian",
      "eu-ES": "Basque",
      "fa-IR": "Persian",
      "fi-FI": "Finnish",
      "fn-FNG": "Fanagalo",
      "fo-FO": "Faroese",
      "fr-FR": "French",
      "gl-ES": "Galician",
      "gu-IN": "Gujarati",
      "ha-NE": "Hausa",
      "he-IL": "Hebrew",
      "hi-IN": "Hindi",
      "hr-HR": "Croatian",
      "hu-HU": "Hungarian",
      "id-ID": "Indonesian",
      "is-IS": "Icelandic",
      "it-IT": "Italian",
      "ja-JP": "Japanese",
      "kk-KZ": "Kazakh",
      "km-KM": "Khmer",
      "kn-IN": "Kannada",
      "ko-KR": "Korean",
      "ku-TR": "Kurdish",
      "ky-KG": "Kyrgyz",
      "la-VA": "Latin",
      "lo-LA": "Lao",
      "lv-LV": "Latvian",
      "men-SL": "Mende",
      "mg-MG": "Malagasy",
      "mi-NZ": "Maori",
      "ms-MY": "Malay",
      "mt-MT": "Maltese",
      "my-MM": "Burmese",
      "ne-NP": "Nepali",
      "niu-NU": "Niuean",
      "nl-NL": "Dutch",
      "no-NO": "Norwegian",
      "ny-MW": "Nyanja",
      "ur-PK": "Pakistani",
      "pau-PW": "Palauan",
      "pa-IN": "Panjabi",
      "ps-PK": "Pashto",
      "pis-SB": "Pijin",
      "pl-PL": "Polish",
      "pt-PT": "Portuguese",
      "rn-BI": "Kirundi",
      "ro-RO": "Romanian",
      "ru-RU": "Russian",
      "sg-CF": "Sango",
      "si-LK": "Sinhala",
      "sk-SK": "Slovak",
      "sm-WS": "Samoan",
      "sn-ZW": "Shona",
      "so-SO": "Somali",
      "sq-AL": "Albanian",
      "sr-RS": "Serbian",
      "sv-SE": "Swedish",
      "sw-SZ": "Swahili",
      "ta-LK": "Tamil",
      "te-IN": "Telugu",
      "tet-TL": "Tetum",
      "tg-TJ": "Tajik",
      "th-TH": "Thai",
      "ti-TI": "Tigrinya",
      "tk-TM": "Turkmen",
      "tl-PH": "Tagalog",
      "tn-BW": "Tswana",
      "to-TO": "Tongan",
      "tr-TR": "Turkish",
      "uk-UA": "Ukrainian",
      "uz-UZ": "Uzbek",
      "vi-VN": "Vietnamese",
      "wo-SN": "Wolof",
      "xh-ZA": "Xhosa",
      "yi-YD": "Yiddish",
      "zu-ZA": "Zulu"
    }
#End If

#if javascript
function addScript(url) {
     var script = document.createElement('script');
     script.type = 'application/javascript';
     script.src = url;
	 document.head.appendChild(script);
 }
 function addScriptAsync(url) {
     var script = document.createElement('script');
     script.type = 'application/javascript';
     script.src = url;
	 script.async = true;
	 script.defer = true;
	 document.head.appendChild(script);
 }
 function addCSS(url){
 	var style = document.createElement('link');
	style.rel = 'stylesheet';
	style.type = 'text/css';
	style.href  = url;
	document.head.appendChild(style);
 }
#End If

'add a javascript file at run-time
Sub AddJavascriptFile(url As String)
	BANano.RunJavascriptMethod("addScript", Array(url))
End Sub

Sub AddJavascriptFileAsync(url As String)
	BANano.RunJavascriptMethod("addScriptAsync", Array(url))
End Sub

Sub AddCSSFile(url As String)
	BANano.RunJavascriptMethod("addCSS", Array(url))
End Sub



Sub guid(glen As Int) As String
	Dim s As String = BANano.GenerateUUID
	s = s.ToLowerCase
	Return Left1(s, glen)
End Sub


Sub guid1(glen As Int) As String
	Dim s As String = BANano.RunJavascriptMethod("guid", Array(glen))
	s = s.ToLowerCase
	Return s
End Sub

Sub guidAlpha(glen As Int) As String
	glen = BANano.parseInt(glen) - 1
	Dim s As String = BANano.RunJavascriptMethod("generateUniqueId", Array(glen))
	s = s.ToLowerCase
	Return s
End Sub

'generate a random hex color
Sub RandomHexColor As String
	'define a stringbuilder
	Dim shex As StringBuilder
	shex.initialize
	shex.append("#")
	'define an array of possible hex values
	Dim hexValues As List
	hexValues.Initialize
	hexValues.AddAll(Array(0, 1 , 2 , 3 ,4 ,5 , 6 , 7 , 8 , 9, "A", "B", "C", "D", "E", "F"))
	'loop 5 times, get a random number between 0 and the length of the array
	Dim i As Int
	For i = 0 To 5
		Dim idx As Int = Rnd(0, hexValues.Size)
		'get a value from the hexValues array at that position
		Dim hvalue As String = hexValues.Get(idx)
		'append it
		shex.Append(hvalue)
	Next
	'return the final result.
	Dim sout As String = shex.tostring
	shex.Initialize
	Return sout
End Sub

''overwrite-swal font
'#if css
'	.swal2-popup {
'	font-family: Roboto, 'Helvetica Neue', Helvetica, Arial, sans-serif !important;
'}
'#End If


#if css
	[v-cloak] {
		display:none;
	}

#End If

#if css
.pulse {
box-shadow: 0 0 0 rgba(88, 120, 243, 0.4);
animation: pulse 1s infinite;
}
@keyframes pulse {
0% {
box-shadow: 0 0 0 0 rgba(88, 120, 243, 0.4);
}
50% {
box-shadow: 0 0 0 10px rgba(88, 120, 243, 0);
}
100% {
box-shadow: 0 0 0 0 rgba(88, 120, 243, 0);
}
}
#End If
#if css
:root{
  scrollbar-color: #606060 !important;
  scrollbar-width: thin !important;
}
::-webkit-scrollbar {
background: transparent;
width: 12px !important;
}
::-webkit-scrollbar-thumb {
background: #606060 !important;
border-radius: 100px !important;
}
#End If


#if css
/* Hide scrollbar For Chrome, Safari And Opera */
/*.drawer-side::-webkit-scrollbar { */
/*    display: none; */
/*} */

.container,
.container-fluid,
.container-lg,
.container-md,
.container-sm,
.container-xl,
.container-2xl {
    --bs-gutter-x: 1.5rem;
    --bs-gutter-y: 0rem;
    width: 100%;
    padding-right: calc(var(--bs-gutter-x) * .5);
    padding-left: calc(var(--bs-gutter-x) * .5);
}

@media (min-width: 576px) {
    .container {
        max-width: 576px;
    }
}

@media (min-width: 768px) {
    .container {
        max-width: 768px;
    }
}

@media (min-width: 992px) {
    .container {
        max-width: 992px;
    }
}

@media (min-width: 1200px) {
    .container {
        max-width: 1200px;
    }
}

@media (min-width: 1400px) {
    .container {
        max-width: 1400px;
    }
}


.row {
    --bs-gutter-x: 1.5rem;
    --bs-gutter-y: 0rem;
    display: flex;
    flex-wrap: wrap;
    margin-bottom: .75rem;
    margin-top: calc(-1 * var(--bs-gutter-y));
    margin-right: calc(-.5 * var(--bs-gutter-x));
    margin-left: calc(-.5 * var(--bs-gutter-x))
}

.row>* {
    box-sizing: border-box;
    flex-shrink: 0;
    width: 100%;
    max-width: 100%;
    padding-right: calc(var(--bs-gutter-x) * .5);
    padding-left: calc(var(--bs-gutter-x) * .5);
    margin-top: var(--bs-gutter-y)
}

.col {
    flex: 1 0 0%;
    padding-top: .75rem;
    padding-bottom: .75rem
}
#End If

#if javascript
function guid(len) {
        var buf = [],
            chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789',
            charlen = chars.length,
            length = len || 32;
            
        for (var i = 0; i < length; i++) {
            buf[i] = chars.charAt(Math.floor(Math.random() * charlen));
        }
        
        return buf.join('');
    }
#end if

#if javascript
function generateUniqueId(len) {
    const alphabet = "abcdefghijklmnopqrstuvwxyz";
    const alphanumeric = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    const timestamp = Date.now().toString(36); // Convert timestamp to base 36
    const randomChars = Array.from({ length: len - timestamp.length }, () =>
        alphanumeric.charAt(Math.floor(Math.random() * alphanumeric.length))
    ).join("");
    const firstChar = alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    return firstChar + randomChars + timestamp;
}
#End If

Sub CleanID(s As String) As String
	s = CStr(s)
	s = s.tolowercase
	s = s.Replace("#", "")
	s = s.Replace(" ", "")
	s = s.Replace("{", "")
	s = s.Replace("]", "")
	s = s.Replace("[", "")
	s = s.Replace("}", "")
	s = s.Replace("(", "")
	s = s.Replace(")", "")	
	s = s.Trim
	Return s
End Sub

'convert object to string
Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub

'join list to mv string
Sub Join(delimiter As String, lst As List) As String
	If lst.Size = 0 Then Return ""
	Dim i As Int
	Dim sbx As StringBuilder
	Dim fld As String
	sbx.Initialize
	fld = lst.Get(0)
	sbx.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		sbx.Append(delimiter).Append(fld)
	Next
	Dim sout As String = sbx.ToString
	sbx.Initialize
	Return sout
End Sub

'join list to mv string
Sub JoinQuote(delimiter As String, lst As List) As String
	If lst.Size = 0 Then Return ""
	Dim i As Int
	Dim sbx As StringBuilder
	Dim fld As String
	sbx.Initialize
	fld = lst.Get(0)
	sbx.Append(QUOTE).Append(fld).Append(QUOTE)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		sbx.Append(delimiter).Append(QUOTE).Append(fld).Append(QUOTE)
	Next
	Dim sout As String = sbx.ToString
	sbx.Initialize
	Return sout
End Sub

'mvfield sub
Sub MvField(sValue As String, iPosition As Int, Delimiter As String) As String
	If sValue.Length = 0 Then Return ""
	Dim xPos As Int = sValue.IndexOf(Delimiter)
	If xPos = -1 Then Return sValue
	Dim mValues As List = StrParse(Delimiter,sValue)
	Dim tValues As Int
	tValues = mValues.size -1
	Select Case iPosition
		Case -1
			Return mValues.get(tValues)
		Case -2
			Return mValues.get(tValues - 1)
		Case -3
			Dim sb As StringBuilder
			sb.Initialize
			Dim startcnt As Int
			sb.Append(mValues.Get(1))
			For startcnt = 2 To tValues
				sb.Append(Delimiter)
				sb.Append(mValues.get(startcnt))
			Next
			Dim sout As String = sb.ToString
			sb.Initialize
			Return sout
		Case Else
			iPosition = iPosition - 1
			If iPosition <= -1 Then
				Return mValues.get(tValues)
			End If
			If iPosition > tValues Then
				Return ""
			End If
			Return mValues.get(iPosition)
	End Select
End Sub

Sub MVTrimItems(delim As String, svalue As String) As String
	Dim cols As List = StrParse(delim, svalue)
	Dim colTot As Int = cols.Size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim strcol As String = cols.Get(colCnt)
		strcol = strcol.Trim
		cols.Set(colCnt, strcol)
	Next
	svalue = Join(delim, cols)
	Return svalue
End Sub

'trim list items
Sub ListTrimItems(cols As List) As List
	Dim colTot As Int = cols.Size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim strcol As String = cols.Get(colCnt)
		strcol = strcol.Trim
		cols.Set(colCnt, strcol)
	Next
	Return cols
End Sub

'parse a string
Sub StrParse(delim As String, inputString As String) As List
	Dim nl As List
	nl.Initialize
	Try
		inputString = CStr(inputString)
		If BANano.IsNull(inputString) Or BANano.IsUndefined(inputString) Then inputString = ""
		If inputString = "" Then Return nl
		If inputString.IndexOf(delim) = -1 Then
			nl.Add(inputString)
		Else
			nl = BANano.Split(delim,inputString)
		End If
		Return nl
	Catch
		'Log(LastException)
		Return nl
	End Try
End Sub


Sub InStr(sText As String, sFind As String) As Int
	Return sText.tolowercase.IndexOf(sFind.tolowercase)
End Sub

'return sentences of lorem ipsum
Sub LoremIpsum(count As Int) As String
	Dim str As String = $"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."$
	Dim sb As StringBuilder
	sb.Initialize
	For i = 1 To count
		sb.Append(str).Append(CRLF)
	Next
	Dim sout As String = sb.ToString
	sb.Initialize
	Return sout
End Sub

'shuffle a list
Sub ShuffleList(pl As List) As List
	For i = pl.Size - 1 To 0 Step -1
		Dim j As Int
		Dim k As Object
		j = Rnd(0, i + 1)
		k = pl.Get(j)
		pl.Set(j,pl.Get(i))
		pl.Set(i,k)
	Next
	Return pl
End Sub

'explode a list
Sub ExplodeList(lst As List, runs As Int) As List
	Dim nList As List
	nList.Initialize
	Dim oCnt As Int
	For oCnt = 1 To runs
		nList.AddAll(lst)
	Next
	nList = ShuffleList(nList)
	Return nList
End Sub

'get the number of specified words
Sub LoremIpsumWords(count As Int) As String
	Dim para1 As String = LoremIpsum(1)
	Dim words As List = StrParse(" ", para1)
	Dim nl As List
	nl.Initialize 
	Dim wcnt As Int
	For wcnt = 0 To count - 1
		Dim w As String = words.Get(wcnt)
		If wcnt = 0 Then w = ProperCase(w)
		nl.Add(w)
	Next
	Dim out As String = Join(" ", nl)
	Return out & "."
End Sub

'get the number of specified words
Sub LoremIpsumSentence(count As Int) As String
	Dim para1 As String = LoremIpsum(count)
	Dim words As List = StrParse(".", para1)
	'
	Dim nl As List
	nl.Initialize 
	Dim wcnt As Int
	For wcnt = 0 To count - 1
		Dim w As String = words.Get(wcnt)
		nl.Add(w)
	Next
	Dim ol As List = ShuffleList(nl)
	Dim out As String = Join(".", ol)
	Return out
End Sub

'convert to int
Sub CInt(o As Object) As Int
	o = Val(o)
	Return BANano.parseInt(o)
End Sub

'check if value isNaN
Sub isNaN(obj As Object) As Boolean
	Dim res As Boolean = BANano.Window.RunMethod("isNaN", Array(obj)).Result
	Return res
End Sub

Sub PlaySound(url As String)
	Dim sound As BANanoObject
	sound.Initialize2("Audio", "")
	sound.SetField("autoplay", False)
	sound.SetField("src", url)
	sound.RunMethod("play", Null)
End Sub

Sub Val(value As String) As String
	value = CStr(value)
	value = value.Trim
	If value = "" Then value = "0"
	Try
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("0123456789.-", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub

'save text to a file
Sub DownloadText2File(content As String, fileName As String)
	Dim fc As List
	fc.Initialize
	fc.Add(content)
	Dim blob As BANanoObject
	blob.Initialize2("Blob",Array(fc, CreateMap("type": "text/plain;charset=utf-8")))
	BANano.RunJavascriptMethod("saveAs",Array(blob,fileName))
End Sub

Sub DownloadBlob(blob As Object, fileName As String)
	BANano.RunJavascriptMethod("saveAs",Array(blob,fileName))
End Sub

Sub CBool(v As Object) As Boolean
	Return parseBool(v)
End Sub

'parseBool
Sub parseBool(v As Object) As Boolean
	If BANano.IsNull(v) Or BANano.IsUndefined(v) Then
		v = False
	End If
	If GetType(v) = "string" Or GetType(v) = "object" Then
		Dim s As String = v & ""
		s = s.tolowercase
		s = s.trim
		If s = "" Then Return False
		If s = "false" Then Return False
		If S = "true" Then Return True
		If s = "1" Then Return True
		If s = "y" Then Return True
		If s = "0" Then Return False
		If s = "n" Then Return False
		If s = "no" Then Return False
		If s = "yes" Then Return True
		If s = "on" Then Return True
		If s = "off" Then Return False
	End If
	Return v
End Sub

'count mv string
Sub MvCount(strMV As String, Delimiter As String) As Int
	strMV = CStr(strMV)
	strMV = strMV.Trim
	If strMV = "" Then Return 0
	Dim spValues As List = StrParse(Delimiter,strMV)
	Return spValues.Size
End Sub

Sub CamelCase(idName As String) As String
	idName = idName.trim
	If idName = "" Then Return ""
	Dim ls As StringBuilder
	ls.Initialize
	Dim slen As Int = idName.Length
	Dim i As Int = 0
	For i = 0 To slen - 1
		Dim mout As String = idName.CharAt(i)
		If "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".IndexOf(mout) = -1 Then
			ls.Append("-")
		Else
			ls.Append(mout)
		End If
	Next
	Dim sname As String = ls.tostring
	ls.Initialize
	sname = ProperSubName(sname, False)
	Return sname
End Sub

Sub MvLast(delim As String, value As String) As String
	Dim tot As Int = MvCount(value,delim)
	Return MvField(value,tot,delim)
End Sub

Sub CamelCaseOthers(vx As String) As String
	vx = vx.Replace(":", "-")
	vx = vx.Replace(".", "-")
	Dim varList As List = StrParse("-", vx)
	Dim varTot As Int = varList.Size - 1
	Dim varCnt As Int
	'
	Dim varItem As String = varList.Get(varCnt)
	varItem = varItem.tolowercase
	varList.Set(varCnt, varItem)
	For varCnt = 1 To varTot
		Dim varItem As String = varList.Get(varCnt)
		varItem = ProperCase(varItem)
		varList.Set(varCnt, varItem)
	Next
	Dim subName1 As String = Join("",varList)
	Return subName1
End Sub

'return proper sub name
Sub ProperSubName(vx As String, removePref As Boolean) As String
	vx = vx.Replace(":", "-")
	vx = vx.Replace(".", "-")
	Dim varList As List = StrParse("-", vx)
	If removePref Then
		varList.RemoveAt(0)
	End If
	Dim varTot As Int = varList.Size - 1
	Dim varCnt As Int
	For varCnt = 0 To varTot
		Dim varItem As String = varList.Get(varCnt)
		varItem = ProperCase(varItem)
		varList.Set(varCnt, varItem)
	Next
	Dim subName1 As String = Join("",varList)
	Return subName1
End Sub

Sub ProperCase(myStr As String) As String
	Try
		If myStr.trim.length = 0 Then Return ""
		Dim x As String
		Dim j, k As Int
		myStr = myStr.tolowercase
		x = myStr.ToUpperCase.CharAt(0)
		myStr = x & myStr.SubString2(1, myStr.Length)
		For j = 1 To myStr.Length
			k = myStr.IndexOf2(" ", j + 1)
			If k = -1 Then Exit
			x = myStr.ToUpperCase.CharAt(k + 1)
			myStr = myStr.SubString2(0, k + 1) & x & myStr.SubString2(k + 2, myStr.Length)
		Next
		Return myStr
	Catch
		Return myStr
	End Try
End Sub

'get the rest of the mv data from a particular position
Sub MvRest(delim As String, svalue As String, startPos As String) As String
	Dim spItems As List = StrParse(delim, svalue)
	Dim lst As List
	lst.initialize
	Dim rCnt As Int = startPos-1
	Dim rTot As Int = spItems.size - 1
	For rCnt = (startPos-1) To rTot
		lst.Add(spItems.Get(rCnt))
	Next
	Return Join(delim,lst)
End Sub

'remove the delimiter from stringbuilder
Sub RemDelim(sValue As String, Delim As String) As String
	Dim sw As Boolean = sValue.EndsWith(Delim)
	If sw Then
		Dim lDelim As Int = Delim.Length
		Dim nValue As String = sValue
		sw = nValue.EndsWith(Delim)
		If sw Then
			nValue = nValue.SubString2(0, nValue.Length-lDelim)
		End If
		Return nValue
	Else
		Return sValue
	End If
End Sub

Sub PrettierCode(code As String) As String
	Dim Prettier As BANanoObject = BANano.window.GetField("prettier")
	'
	Dim soutput As String = ""
	soutput = Prettier.RunMethod("format", Array(code)).Result
	Return soutput
End Sub

'Sub BeautifyPHP(code As String) As String
'	Dim Prettier As BANanoObject = BANano.window.GetField("prettier")
'	Dim prettierPlugins As BANanoObject = BANano.Window.GetField("prettierPlugins")
'	'
'	Dim soutput As String = ""
'	Dim pObject As Map = CreateMap()
'	pObject.Put("parser", "php")
'	pObject.Put("plugins", prettierPlugins)
'	soutput = Prettier.RunMethod("format", Array(code, pObject)).Result
'	Return soutput
'End Sub

'Sub BeautifyGraphSQL(code As String) As String
'	Dim Prettier As BANanoObject = BANano.window.GetField("prettier")
'	Dim prettierPlugins As BANanoObject = BANano.Window.GetField("prettierPlugins")
'	'
'	Dim soutput As String = ""
'	Dim pObject As Map = CreateMap()
'	pObject.Put("parser", "graphql")
'	pObject.Put("plugins", prettierPlugins)
'	soutput = Prettier.RunMethod("format", Array(code, pObject)).Result
'	Return soutput
'End Sub

'beautify source code
Public Sub BeautifyB4X(sc As String) As Boolean
	Dim lines As List = StrParse(CRLF, sc)
	Dim nIndent As Int
	Dim nLine As Int
	Dim strNewLine As String
	For nLine = 0 To lines.Size - 1
		strNewLine = lines.get(nLine)
		If IsBlockEnd(strNewLine) Then nIndent = nIndent - 1
		If nIndent < 0 Then nIndent = 0
		' Put back new line.
		Dim xLine As String = Space1(nIndent * 4) & strNewLine
		lines.Set(nLine, xLine)
		If IsBlockStart(strNewLine) Then nIndent = nIndent + 1
	Next
	Dim sout As String = Join(CRLF, lines)
	Return sout
End Sub

Sub Space1(HM As Int) As String
	Dim RS As String = ""
	Do While Len1(RS) < HM
		RS = RS & " "
	Loop
	Return RS
End Sub

'is block start
Sub IsBlockStart(strLine As String) As Boolean
	Dim bOK As Boolean
	Dim nPos As Int
	Dim strTemp As String
	nPos = InStr1(strLine, " ") - 1
	If nPos < 0 Then nPos = Len1(strLine)
	strTemp = Left1(strLine, nPos)
	strTemp = strTemp.tolowercase
	Select Case strTemp
		Case "for", "do", "while", "select", "case", "else", "#else", "try", "#region", "sub", "catch"
			bOK = True
		Case "if", "#if", "else", "#else"
			'find the posiiton of then
			Dim p1 As Int = Len1(strLine)
			p1 = BANano.parseInt(p1)
			Dim p2 As Int = InStr1(strLine.tolowercase, " then")
			p2 = BANano.parseInt(p2)
			Dim p3 As Int = p2 + 4
			p3 = BANano.parseInt(p3)
			bOK = (p1 = p3)
		Case "private", "public"
			If strLine.ToLowerCase.StartsWith("private sub ") Then bOK = True
			If strLine.ToLowerCase.StartsWith("public sub ") Then bOK = True
			'			Dim p1 As Int = Len1(strTemp)
			'			p1 = banano.parseInt(p1)
			'			Dim p2 As Int = InStr2(nPos + 1, strLine, " ")
			'			p2 = banano.parseInt(p2)
			'			nPos = InStr2(p1 + 1, strLine, " ")
			'			nPos = banano.parseInt(nPos)
			'			Select Case Mid2(strLine, nPos + 1, p2 - nPos - 1)
			'				Case "Sub"
			'					bOK = True
			'			End Select
	End Select
	Return bOK
End Sub


'is block end
Sub IsBlockEnd(strLine As String) As Boolean
	Dim bOK As Boolean
	Dim nPos As Int
	Dim strTemp As String
	nPos = InStr1(strLine, " ") - 1
	If nPos < 0 Then nPos = Len1(strLine)
	nPos = BANano.parseInt(nPos)
	'
	strTemp = Left1(strLine, nPos)
	strTemp = strTemp.ToLowerCase
	Select Case strTemp
		Case "next", "loop", "case", "else", "#else", "#end", "catch"
			bOK = True
		Case "end"
			Dim p1 As Int = Len1(strLine)
			p1 = BANano.parseInt(p1)
			bOK = (p1 > 3)
	End Select
	Return bOK
End Sub

'return the position of a string found in a string
Sub InStr1(Text As String, sFind As String) As Int
	Return Text.tolowercase.IndexOf(sFind.tolowercase) + 1
End Sub

' return length of a string
Sub Len1(Text As String) As Long
	Return Text.Length
End Sub

'return the left part of a string
Sub Left1(Text As String, xLength As Long) As String
	If xLength>Text.Length Then xLength=Text.Length
	Return Text.SubString2(0, xLength)
End Sub

Sub TimeAgo(dt As String) As String
	dt = CStr(dt).trim
	If dt = "" Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("moment", Array(dt, "YYYY-MM-DD HH:mm"))
	Dim res As String = bo.RunMethod("fromNow", Null).result
	Return res
End Sub

'format date to meet your needs
Sub FormatDisplayDate(item As String, sFormat As String) As String			'ignoredeadcode
	Try
		item = "" & item
		If item = "" Then Return ""
		If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
		Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(item))
		Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
		If sDate = "Invalid Date" Then Return ""
		'For Each k As String In DateTranslations.Keys
		'	Dim v As String = DateTranslations.Get(k)
		'	sDate = sDate.Replace(k, v)
		'Next
		Return sDate
	Catch
		Return ""
	End Try
End Sub
'format numeric display
Sub FormatDisplayNumber(item As String, sFormat As String) As String			'ignoredeadcode
	Try
		item = "" & item
		If item = "" Then Return ""
		If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
		item = Val(item)
		item = BANano.parseFloat(item)
		Dim bo As BANanoObject = BANano.RunJavascriptMethod("numeral", Array(item))
		Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
		Return sDate
	Catch
		Return ""
	End Try
End Sub
Sub FormatFileSize(Bytes As Float) As String					'ignoredeadcode
	If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then
		Bytes = 0
	End If
	Bytes = BANano.parsefloat(Bytes)
	Try
		Private Unit() As String = Array As String(" Byte", " KB", " MB", " GB", " TB", " PB", " EB", " ZB", " YB")
		If Bytes = 0 Then
			Return "0 Bytes"
		Else
			Private Po, Si As Double
			Private I As Int
			Bytes = Abs(Bytes)
			I = Floor(Logarithm(Bytes, 1024))
			Po = Power(1024, I)
			Si = Bytes / Po
			Return NumberFormat(Si, 1, 3) & Unit(I)
		End If
	Catch
		Return "0 Bytes"
	End Try
End Sub

'convert the items in a list to a map
Sub ListToSelectOptions(lst As List) As Map
	Dim m As Map = CreateMap()
	For Each item As String In lst
		m.Put(item, item)
	Next
	Return m
End Sub

Sub ListToSelectOptionsSort(lst As List) As Map
	lst.Sort(True)
	Dim m As Map = CreateMap()
	For Each item As String In lst
		m.Put(item, item)
	Next
	Return m
End Sub

'list items to integer
Sub ListItemsToInt(cols As List) As List
    Dim colTot As Int = cols.Size - 1
    Dim colCnt As Int
    For colCnt = 0 To colTot
        Dim strcol As String = cols.Get(colCnt)
        strcol = strcol.trim
        strcol = BANano.parseInt(strcol)
        cols.Set(colCnt, strcol)
    Next
    Return cols
End Sub
'list items to float
Sub ListItemsToFloat(cols As List) As List
    Dim colTot As Int = cols.Size - 1
    Dim colCnt As Int
    For colCnt = 0 To colTot
        Dim strcol As String = cols.Get(colCnt)
        strcol = strcol.trim
        strcol = BANano.parseFloat(strcol)
        cols.Set(colCnt, strcol)
    Next
    Return cols
End Sub

'date difference
Sub DateDiff(currentDate As String, otherDate As String) As Int
    If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0
    If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0
    Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(currentDate))
    Dim bo1 As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(otherDate))
    '
    Dim rslt As String = bo.RunMethod("diff", Array(bo1, "day")).Result
    Return rslt
End Sub

'year difference
Sub YearDiff(currentDate As String, otherDate As String) As Int
    If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0
    If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0
    Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(currentDate))
    Dim bo1 As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(otherDate))
    '
    Dim rslt As String = bo.RunMethod("diff", Array(bo1, "year")).Result
    Return rslt
End Sub

'month difference
Sub MonthDiff(currentDate As String, otherDate As String) As Int
    If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0
    If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0
    Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(currentDate))
    Dim bo1 As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(otherDate))
    '
	Dim rslt As String = bo.RunMethod("diff", Array(bo1, "month")).Result
    Return rslt
End Sub

'minute difference
Sub MinuteDiff(currentDate As String, otherDate As String) As Int
    If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0
    If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0
    Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(currentDate))
    Dim bo1 As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(otherDate))
    '
    Dim rslt As String = bo.RunMethod("diff", Array(bo1, "minute")).Result
    Return rslt
End Sub

'year now
Sub YearNow() As String
    Dim lNow As Long
    Dim dt As String
    lNow = DateTime.Now
    DateTime.DateFormat = "yyyy"
    dt = DateTime.Date(lNow)
    Return dt
End Sub
'month now
Sub MonthNow() As String
    Dim lNow As Long
    Dim dt As String
    lNow = DateTime.Now
    DateTime.DateFormat = "MM"
    dt = DateTime.Date(lNow)
    Return dt
End Sub

'calculate the time difference between 2 times
Sub TimeDiff(startTime As String, endTime As String) As String
	startTime = CStr(startTime)
	endTime = CStr(endTime)
	Dim ot As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array($"2000-01-01 ${startTime}"$, "HH:mm"))
	Dim nt As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array($"2000-01-01 ${endTime}"$, "HH:mm"))
	Dim sTime As String = nt.RunMethod("diff", Array(ot, "minute")).Result
	Dim xtime As String = ConvertMinutesToHours(CInt(sTime))
	Return xtime
End Sub

Sub TimeDiff1(startTime As String, endTime As String) As String
	startTime = CStr(startTime)
	endTime = CStr(endTime)
	Dim ot As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array($"${startTime}"$, "YYYY-MM-DD HH:mm"))
	Dim nt As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array($"${endTime}"$, "YYYY-MM-DD HH:mm"))
	Dim sTime As String = nt.RunMethod("diff", Array(ot, "minute")).Result
	Dim xtime As String = ConvertMinutesToHours(CInt(sTime))
	Return xtime
End Sub

Sub ConvertMinutesToHours(totalMinutes As Int) As String
	totalMinutes = BANano.parseInt(totalMinutes)
	Dim hours As Int = Floor(totalMinutes / 60)
	Dim minutes As Int = totalMinutes Mod 60
	Dim sout As String = $"${hours}:${minutes}"$
	Return sout
End Sub

Sub ConvertHoursToMinutes(hours As String) As Int
	If hours.IndexOf(":") > -1 Then
		' Input is in "HH:mm" format
		Dim parts() As String = BANano.Split(":", hours)
		If parts.Length = 2 Then
			Dim hoursPart As Int
			Dim minutesPart As Int
			hoursPart = CInt(parts(0))
			minutesPart = CInt(parts(1))
            
			Dim totalMinutes As Int
			totalMinutes = BANano.parseInt(hoursPart) * 60
			totalMinutes = BANano.parseInt(totalMinutes) + minutesPart
            
			Return totalMinutes
		Else
			Log("Invalid input format. Expected HH:mm")
			Return -1 ' or any suitable error handling
		End If
	Else
		' Input is a plain number representing hours
		Try
			Dim hoursAsInt As Int
			hoursAsInt = CInt(hours)
			Return hoursAsInt
		Catch
			Return -1 ' or any suitable error handling
		End Try
	End If
End Sub

'calculate the time added between 2 times
Sub TimeAdd(currentTime As String, minutes2Add As String) As String
	currentTime = CStr(currentTime)
	minutes2Add = CStr(minutes2Add)
	minutes2Add = ConvertHoursToMinutes(minutes2Add)
	minutes2Add = CStr(minutes2Add)
	'parse the current time
	Dim ctObject As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array($"2000-01-01 ${currentTime}"$))
	'add the specified minutes
	Dim rsObject As BANanoObject = ctObject.RunMethod("add", Array(minutes2Add, "minute"))
	Dim sTime As String = rsObject.RunMethod("format", Array("HH:mm")).Result
	Return sTime
End Sub

'calculate the time added between 2 times
Sub TimeAdd1(currentDate As String, currentTime As String, minutes2Add As String) As String
	currentTime = CStr(currentTime)
	minutes2Add = CStr(minutes2Add)
	minutes2Add = ConvertHoursToMinutes(minutes2Add)
	minutes2Add = CStr(minutes2Add)
	'parse the current time
	Dim ctObject As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array($"${currentDate} ${currentTime}"$))
	'add the specified minutes
	Dim rsObject As BANanoObject = ctObject.RunMethod("add", Array(minutes2Add, "minute"))
	Dim sTime As String = rsObject.RunMethod("format", Array("YYYY-MM-DD HH:mm")).Result
	Return sTime
End Sub


'add days to date
Sub DateAdd(mDate As String, HowManyDays As Int) As String
	DateTime.DateFormat = "yyyy-MM-dd"
    HowManyDays = CInt(HowManyDays)
    Dim ConvertDate, NewDateDay As Long
    ConvertDate = DateTime.DateParse(mDate)
    NewDateDay = DateTime.Add(ConvertDate, 0, 0, HowManyDays)
    Return DateTime.Date(NewDateDay)
End Sub
'add months to date
Sub MonthAdd(mDate As String, HowManyMonths As Int) As String
	DateTime.DateFormat = "yyyy-MM-dd"
    HowManyMonths = CInt(HowManyMonths)
    Dim ConvertDate, NewDateDay As Long
    ConvertDate = DateTime.DateParse(mDate)
    NewDateDay = DateTime.Add(ConvertDate, 0, HowManyMonths, 0)
    Return DateTime.Date(NewDateDay)
End Sub
'add years to date
Sub YearsAdd(mDate As String, HowManyYears As Int) As String
	DateTime.DateFormat = "yyyy-MM-dd"
	HowManyYears = CInt(HowManyYears)
    Dim ConvertDate, NewDateDay As Long
    ConvertDate = DateTime.DateParse(mDate)
	NewDateDay = DateTime.Add(ConvertDate, HowManyYears, 0, 0)
    Return DateTime.Date(NewDateDay)
End Sub
'Returns the number of days that have passed between two dates.
'Pass the dates as a String
Sub NumberOfDaysBetweenDates(CurrentDate As String, OtherDate As String) As Int
	DateTime.DateFormat = "yyyy-MM-dd"
    Dim CurrDate, OthDate As Long
    CurrDate = DateTime.DateParse(CurrentDate)
    OthDate = DateTime.DateParse(OtherDate)
    Dim tpd As Long = DateTime.TicksPerDay
    Dim iOut As Long = (CurrDate - OthDate)/tpd
    Return iOut
End Sub
Sub PeriodBetweenInDays(CurrentDate As String, OtherDate As String) As Int
	DateTime.DateFormat = "yyyy-MM-dd"
    Dim CurrDate, OthDate As Long
    CurrDate = DateTime.DateParse(CurrentDate)
    OthDate = DateTime.DateParse(OtherDate)
    Dim tpd As Long = DateTime.TicksPerDay
	Dim iOut As Long = (CurrDate - OthDate)/tpd
	Return iOut
End Sub

Sub MaskEmail(email As String) As String
	' Split the email into username and domain
	Dim parts As List = StrParse("@", email)
	If parts.Size <> 2 Then Return email  ' Return the original if email is not valid

	Dim username As String = parts.Get(0)
	Dim domain As String = parts.Get(1)
    
	' Check if the username length is greater than 2 for masking
	If username.Length > 2 Then
		Dim sb As StringBuilder
		sb.Initialize 
		sb.Append(username.CharAt(0))
		Dim rep As String = RepeatCharacter("*", username.Length - 2)
		sb.Append(rep)
		sb.Append(username.CharAt(username.Length - 1))
		Dim maskedUsername As String = sb.tostring
	Else
		Dim maskedUsername As String = username
	End If
    
	' Return the masked email
	Return maskedUsername & "@" & domain
End Sub

Sub RepeatCharacter(character As String, count As Int) As String
	If count <= 0 Then Return "" ' Return an empty string if count is less than or equal to zero
	Dim result As StringBuilder
	result.Initialize
    
	For i = 1 To count
		result.Append(character)
	Next
    
	Return result.ToString
End Sub

Sub GetClientIPAddress As String
	Dim j As SDUIFetch
	j.Initialize("https://api.ipify.org/?format=json")
	BANano.Await(J.GetWait)
	If j.Success Then
		Dim Response As Map = j.response
		Dim resp As String = Response.GetDefault("ip","")
		Return resp
	Else
		Return ""
	End If
End Sub

'Sub GetServerDateOld(pb As SDUIPocketBase) As String
'	'get the current server date
'	Dim checkIn As Map
'	Dim sservertime As String = ""
'	Dim sservertimeDate As String = ""
'	Dim sservertimeTime As String = ""
'	Dim j As SDUIFetch
'	j.Initialize("http://worldtimeapi.org/api/timezone/Africa/Johannesburg")
'	BANano.Await(J.GetWait)
'	'execute the post
'	If j.Success Then
'		Dim Response As Map = j.response
'		Dim sdatetime As String = Response.Get("datetime")
'		Dim alltime As String = MvField(sdatetime, 1, ".")
'		sservertimeDate = MvField(alltime, 1, "T")
'		sservertimeTime = MvField(alltime, 2, "T")
'		Dim shh As String = MvField(sservertimeTime,1,":")
'		Dim smm As String = MvField(sservertimeTime,2,":")
'		sservertimeTime = $"${shh}:${smm}"$
'		Return $"${sservertimeDate}.${sservertimeTime}"$
'	Else
'		checkIn = BANano.Await(pb.SERVER_DATE_TIME)
'		sservertime = checkIn.GetDefault("servertime", "")
'		sservertimeDate = MvField(sservertime, 1, " ")
'		sservertimeDate = sservertimeDate.trim
'		sservertimeTime = MvField(sservertime, 2, " ")
'		sservertimeTime = sservertimeTime.Trim
'		Return $"${sservertimeDate}.${sservertimeTime}"$
'	End If
'End Sub

'Sub GetServerDate(pb As SDUIPocketBase) As String
'	'get the current server date
'	Dim checkIn As Map
'	Dim sservertime As String = ""
'	Dim sservertimeDate As String = ""
'	Dim sservertimeTime As String = ""
'	checkIn = BANano.Await(pb.SERVER_DATE_TIME)
'	sservertime = checkIn.GetDefault("servertime", "")
'	sservertimeDate = MvField(sservertime, 1, " ")
'	sservertimeDate = sservertimeDate.trim
'	sservertimeTime = MvField(sservertime, 2, " ")
'	sservertimeTime = sservertimeTime.Trim
'	Return $"${sservertimeDate}.${sservertimeTime}"$
'End Sub

'returns whether an OTP has expired or not
Sub OTPExpired(oldDate As String, newDate As String) As Boolean
	DateTime.DateFormat = "yyyy-MM-dd HH:mm"
	Dim CurrDate, OthDate As Long
	CurrDate = DateTime.DateParse(oldDate)
	OthDate = DateTime.DateParse(newDate)
	If OthDate <= CurrDate Then
		Return False
	Else
		Return True
	End If
End Sub


'double
Sub CDbl(o As String) As Double
	o = Val(o)
	Dim out As Double = NumberFormat2Fix(o,0,2,2,False)
	Dim nvalue As String = CStr(out)
	nvalue = nvalue.replace(",", ".")
	nvalue = Val(nvalue)
	Dim nout As Double = BANano.parseFloat(nvalue)
	Return nout
End Sub

Sub MakeMoney(sValue As String) As String
	Try
		If BANano.IsNull(sValue) Or BANano.IsUndefined(sValue) Then Return "0.00"
		If sValue.Length = 0 Then Return "0.00"
		If sValue.IndexOf(",") Then sValue = sValue.Replace(",","")
		sValue = Val(sValue)
		If sValue = "0" Then sValue = "000"
		sValue = Round2(sValue,2)
		Return NumberFormat2Fix(sValue, 1, 2, 2, True)
	Catch
		Return sValue
	End Try
End Sub

'project days
Sub ProjectDays(sDays As String) As String
	Try
		sDays = sDays.trim
		If sDays = "" Then sDays = "0"
		sDays = sDays.Replace(",","")
		sDays = NumberFormat2Fix(sDays,0,0,0,True)
		Return sDays & " Dys"
	Catch
		Return "0 Dys"
	End Try
End Sub

'get file details, this implements a blob
Sub GetFileDetails(fileObj As Map) As FileObject
	Dim ff As FileObject
	ff.Initialize
	ff.FileOK = False
	If BANano.IsNull(fileObj) Or BANano.IsUndefined(fileObj) Then Return ff
	Dim sname As String = fileObj.Get("name")
	Dim lmd As Object = fileObj.Get("lastModified")
	Dim ssize As String = fileObj.Get("size")
	Dim stype As String = fileObj.Get("type")
	Dim swebkitRelativePath As String = fileObj.Get("webkitRelativePath")
	'
	Dim slastModifiedDate As BANanoObject
	slastModifiedDate.Initialize2("Date", lmd)    '
	Dim yyyy As String = slastModifiedDate.RunMethod("getFullYear", Null).Result
	Dim dd As String = slastModifiedDate.RunMethod("getDate", Null).Result
	Dim mm As String = slastModifiedDate.RunMethod("getMonth", Null).Result
	Dim hh As String = slastModifiedDate.RunMethod("getHours", Null).Result
	Dim minutes As String = slastModifiedDate.RunMethod("getMinutes", Null).Result
	'pad the details
	dd = PadRight(dd, 2, "0")
	mm = PadRight(mm, 2, "0")
	hh = PadRight(hh, 2, "0")
	minutes = PadRight(minutes, 2, "0")
	'
	Dim fd As String = $"${yyyy}-${mm}-${dd} ${hh}:${minutes}"$
	ff.FileName = sname
	ff.FileDate = fd
	ff.FileDateOnly = $"${yyyy}-${mm}-${dd}"$
	ff.FileSize = ssize
	ff.FileType = stype
	ff.FileOK = True
	ff.Extension = MvLast(".", sname)
	ff.webkitRelativePath = swebkitRelativePath
	Return ff
End Sub

'KB
Sub ToKiloBytes(kbSize As Int) As Int
	Dim maxs As Int = BANano.parseInt(kbSize) * 1024
	Return maxs
End Sub

'b
Sub ToBytes(kbSize As Int) As Long
	Dim maxs As Long = (BANano.parseInt(kbSize) * 1024) * 1024
	Return maxs
End Sub

'pad things to the right
'the value will be on the right
Sub PadRight(Value As String, MaxLen As Int, PadChar As String) As String
	Value = CStr(Value)
	Dim intOrdNoLen As Int = Len(Value)
	Dim i As Int
	For i = 1 To (MaxLen - intOrdNoLen) Step 1
		Value = PadChar & Value
	Next
	Return Value
End Sub

'pad things to the left
'the value will be on the left
Sub PadLeft(Value As String, MaxLen As Int, PadChar As String) As String
	Value = CStr(Value)
	Dim intOrdNoLen As Int = Len(Value)
	Dim i As Int
	For i = 1 To (MaxLen - intOrdNoLen) Step 1
		Value = Value & PadChar
	Next
	Return Value
End Sub

'get the length of the string
Sub Len(Text As String) As Int
	Return Text.Length
End Sub

'read as text
Sub readAsText(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsText"))
	Return promise
End Sub
'read as binary string
Sub readAsBinaryString(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsBinaryString"))
	Return promise
End Sub
'read as data url
Sub readAsDataURL(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsDataURL"))
	Return promise
End Sub
'read as array buffer
Sub readAsArrayBuffer(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsArrayBuffer"))
	Return promise
End Sub
'read as data url
Sub readAsDataURLFromBlob(blb As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadBlob", Array(blb))
	Return promise
End Sub
Sub GetBase64ImageFromURLWait(url As String) As String
	Dim dataUrl As String = BANano.Await(BANano.GetFileAsDataURL(url, Null))
	Return dataUrl
End Sub
'read blob
private Sub ReadBlob(blb As Object)
	' make a filereader
	Dim FileReader As BANanoObject
	FileReader.Initialize2("FileReader", Null)
	' make a callback for the onload event
	' an onload of a FileReader requires a 'event' param
	Dim event As Map
	FileReader.SetField("onload", BANano.CallBack(Me, "OnLoad1", Array(event)))
	FileReader.SetField("onerror", BANano.CallBack(Me, "OnError1", Array(event)))
	' start reading the DataURL
	FileReader.RunMethod("readAsBinaryString", blb)
End Sub
'read file
private Sub ReadFile(FileToRead As Object, MethodName As String)
	' make a filereader
	Dim FileReader As BANanoObject
	FileReader.Initialize2("FileReader", Null)
	' attach the file (to get the name later)
	FileReader.SetField("file", FileToRead)
	' make a callback for the onload event
	' an onload of a FileReader requires a 'event' param
	Dim event As Map
	FileReader.SetField("onload", BANano.CallBack(Me, "OnLoad", Array(event)))
	FileReader.SetField("onerror", BANano.CallBack(Me, "OnError", Array(event)))
	' start reading the DataURL
	FileReader.RunMethod(MethodName, FileToRead)
End Sub
private Sub OnLoad(event As Map) As String 'IgnoreDeadCode
	' getting our file again (set in UploadFileAndGetDataURL)
	Dim FileReader As BANanoObject = event.Get("target")
	Dim UploadedFile As BANanoObject = FileReader.GetField("file")
	' return to the then of the UploadFileAndGetDataURL
	BANano.ReturnThen(CreateMap("name": UploadedFile.GetField("name"), "result": FileReader.Getfield("result")))
End Sub
private Sub OnError(event As Map) As String 'IgnoreDeadCode
	Dim FileReader As BANanoObject = event.Get("target")
	Dim UploadedFile As BANanoObject = FileReader.GetField("file")
	Dim Abort As Boolean = False
	' uncomment this if you want to abort the whole operatio
	' Abort = true
	' FileReader.RunMethod("abort", Null)
	BANano.ReturnElse(CreateMap("name": UploadedFile.GetField("name"), "result": FileReader.GetField("error"), "abort": Abort))
End Sub
'
private Sub OnLoad1(event As Map) As String 'IgnoreDeadCode
	' getting our file again (set in UploadFileAndGetDataURL)
	Dim FileReader As BANanoObject = event.Get("target")
	Dim result As Object = FileReader.Getfield("result")
	' return to the then of the UploadFileAndGetDataURL
	BANano.ReturnThen(result)
End Sub

private Sub OnError1(event As Map) As String 'IgnoreDeadCode
	Dim FileReader As BANanoObject = event.Get("target")
	Dim result As Object = FileReader.GetField("error")
	' uncomment this if you want to abort the whole operatio
	' Abort = true
	' FileReader.RunMethod("abort", Null)
	BANano.ReturnElse(result)
End Sub

'get the file contents
Sub readAsJsonWait(fr As Map) As Object
	Try
		Dim fd As Map = BANano.Await(readAsText(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return BANano.FromJson(sresult)
	Catch
		Return ""
	End Try
End Sub

'get the file contents
Sub readAsTextWait(fr As Map) As String
	Try
		Dim fd As Map = BANano.Await(readAsText(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try
End Sub

'get the file contents
Sub readAsBinaryStringWait(fr As Map) As String
	Try
		Dim fd As Map = BANano.Await(readAsBinaryString(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try
End Sub

'get the file contents
Sub readAsDataURLWait(fr As Map) As String
	Try
		Dim fd As Map = BANano.Await(readAsDataURL(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try
End Sub

'get the file contents
Sub readAsArrayBufferWait(fr As Map) As String
	Try
		Dim fd As Map = BANano.Await(readAsArrayBuffer(fr))
		Dim sname As String = fd.Get("name")		'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try
End Sub

'calculate the progress done
Sub ProgressDone(currentCount As Long, totalCount As Long) As Int
	Dim pd As Int = (currentCount / totalCount) * 100
	pd = NumberFormat2Fix(pd, 0,0, 0, False)
	pd = CInt(pd)
	Return pd
End Sub

'upload file to server and return success or error
'server should have write permissions
'<code>
'Sub FileInput_Change (fo As Map)
'dim fd as FileOK = BANano.Await(UploadFileWait(fo))
''dim fd As FileOk = 'BANano.Await(UploadFileOptionsWait(fileObj, "../assets", False))
'if fd.FileOk = True Then
'else
'end if
'</code>
Sub UploadFileWait(fileO As Map) As FileObject
	'get the file details
	Dim fileDet As FileObject = GetFileDetails(fileO)
	'get the file name
	Dim fn As String = fileDet.FileName
	'start uploading the file
	Dim fd As BANanoObject
	fd.Initialize2("FormData", Null)
	fd.RunMethod("append", Array("upload", fileO))
	'
	Dim Res As String = BANano.CallAjaxWait("./assets/upload.php", "POST", "", fd, True, Null)
	Dim result As Map = BANano.FromJson(Res)
	Dim sstatus As String = result.Get("status")
	fileDet.Status = sstatus
	If sstatus = "success" Then
		fileDet.FileOK = True
	Else
		fileDet.FileOK = False
	End If
	fileDet.FullPath = $"./assets/${fn}"$
	Return fileDet
End Sub

'<code>
''upload to assets folder without renaming the file
'BANano.Await(UploadFileOptionsWait(fileObj, "../assets", "n"))
'</code>
Sub UploadFileOptionsWait(fileO As Map, targetPath As String, bRename As String) As FileObject
	'get the file details
	Dim fileDet As FileObject = GetFileDetails(fileO)
	'start uploading the file
	Dim fd As BANanoObject
	fd.Initialize2("FormData", Null)
	fd.RunMethod("append", Array("upload", fileO))
	fd.RunMethod("append", Array("target", targetPath))
	fd.RunMethod("append", Array("renameit", bRename))
	'
	Dim Res As String = BANano.CallAjaxWait("./assets/uploadoptions.php", "POST", "", fd, False, Null)
	Dim result As Map = BANano.FromJson(Res)
	Dim sstatus As String = result.Get("status")
	Dim sfullpath As String = result.Get("fullpath")
	Dim sname As String = result.Get("name")
	fileDet.Status = sstatus
	fileDet.FileName = sname
	If sstatus = "success" Then
		fileDet.FileOK = True
	Else
		fileDet.FileOK = False
	End If
	fileDet.FullPath = sfullpath
	Return fileDet
End Sub

Sub NavigateToRoot
	Dim shref As String = BANano.Location.GetHref
	Dim fp As String = MvField(shref,1,"?")
	BANano.Location.Replace(fp)
End Sub

Sub NavigateTo(url As String, params As Map)
	If BANano.IsNull(params) Then
		BANano.Location.Assign(url)
		Return
	End If
	If params.Size <> 0 Then
		Dim sparams As String = URLQueryStringFromMap(params)
		Dim obaseURL As String = $"${url}?${sparams}"$
		BANano.Location.Assign(obaseURL)
	End If
End Sub


'<code>
''upload to assets folder without renaming the file
'BANano.Await(UploadFileRenameToWait(fileObj, "../assets", "anewName.pdf"))
'</code>
Sub UploadFileRenameToWait(fileO As Map, targetPath As String, newFileName As String) As FileObject
	'get the file details
	Dim fileDet As FileObject = GetFileDetails(fileO)
	'start uploading the file
	Dim fd As BANanoObject
	fd.Initialize2("FormData", Null)
	fd.RunMethod("append", Array("upload", fileO))
	fd.RunMethod("append", Array("target", targetPath))
	fd.RunMethod("append", Array("renameit", "y"))
	fd.RunMethod("append", Array("myname", newFileName))
	'
	Dim Res As String = BANano.CallAjaxWait("./assets/uploadoptions.php", "POST", "", fd, True, Null)
	Dim result As Map = BANano.FromJson(Res)
	Dim sstatus As String = result.Get("status")
	Dim sfullpath As String = result.Get("fullpath")
	Dim sname As String = result.Get("name")
	fileDet.Status = sstatus
	fileDet.FileName = sname
	If sstatus = "success" Then
		fileDet.FileOK = True
	Else
		fileDet.FileOK = False
	End If
	fileDet.FullPath = sfullpath
	Return fileDet
End Sub

'increment map key
Sub IncrementMap(m As Map, k As String)
    If m.ContainsKey(k) Then
        Dim lc As Int = m.Get(k)
        lc = BANano.parseInt(lc)
        lc = lc + 1
        m.Put(k, lc)
    Else
        m.Put(k, 1)
    End If
End Sub
'decrement map key
Sub DecrementMap(m As Map, k As String)
    If m.ContainsKey(k) Then
        Dim lc As Int = m.Get(k)
        lc = BANano.parseInt(lc)
        lc = lc - 1
        m.Put(k, lc)
    Else
        m.Put(k, 0)
    End If
End Sub
Sub EQOperators(sm As Map) As List  'ignore
    Dim nl As List
    nl.initialize
    For Each k As String In sm.Keys
        nl.Add("=")
    Next
    Return nl
End Sub
Sub YYYYMMDD(sdate As String) As String
    Return FormatDisplayDate(sdate, "YYYY-MM-DD")
End Sub
Sub YYYYMM(sdate As String) As String
    Return FormatDisplayDate(sdate, "YYYY-MM")
End Sub
'return a date with day, month year name
Sub NiceDate(sdate As String) As String				'ignoredeadcode
    Return FormatDisplayDate(sdate, "ddd, DD MMM YYYY")
End Sub
Sub NiceMonth(sdate As String) As String			'ignoredeadcode
    Return FormatDisplayDate(sdate, "MMMM, YYYY")
End Sub
Sub NiceYear(sdate As String) As String			'ignoredeadcode
    Return FormatDisplayDate(sdate, "YYYY")
End Sub
'return a date time
Sub NiceTime(stime As String) As String				'ignoredeadcode
    Return FormatDisplayDate(stime, "ddd, DD MMM YYYY @ HH:mm:ss")
End Sub

Sub NiceDateTime(stime As String) As String				'ignoredeadcode
    Return FormatDisplayDate(stime, "ddd, DD MMM YYYY @ HH:mm")
End Sub

'return money
Sub NiceMoney(smoney As String) As String				'ignoredeadcode
    Return FormatDisplayNumber(smoney, "0,0.00")
End Sub
'return thousands
Sub Thousands(smoney As String) As String				'ignoredeadcode
	Return FormatDisplayNumber(smoney, "0,0")
End Sub

Sub NiceFileSize(fsx As String) As String		'ignoredeadcode
	Return FormatFileSize(fsx)
End Sub


'scrollIntoView smoothly
Sub EnsureVisible(elID As String)
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) = False Then Return
	Dim opt As Map = CreateMap("behavior": "smooth")
	BANano.GetElement($"#${elID}"$).RunMethod("scrollIntoView", opt)
End Sub

Sub SetTimeOut(Module As Object, MethodName As String, seconds As String)
	Dim cb As BANanoObject = BANano.callback(Module, MethodName, Null)
	BANano.Window.SetTimeout(cb, seconds)
End Sub

'run when this time elapses
Sub StartTimerAfter(Module As Object, MethodName As String, seconds As String)
	Dim cb As BANanoObject = BANano.callback(Module, MethodName, Null)
	BANano.Window.SetTimeout(cb, seconds)
End Sub

Sub SetInterval(Module As Object, MethodName As String, seconds As String) As Int
	Dim cb As BANanoObject = BANano.CallBack(Module, MethodName, Null)
	Dim res As Int = BANano.Window.SetInterval(cb, seconds)
	Return res
End Sub

Sub StartTimer(Module As Object, MethodName As String, seconds As String) As Int
	Dim cb As BANanoObject = BANano.CallBack(Module, MethodName, Null)
	Dim res As Int = BANano.Window.SetInterval(cb, seconds)
	Return res
End Sub

Sub clearInterval(theInterval As Int)
	BANano.Window.ClearInterval(theInterval)
End Sub

Sub StopTimer(theInterval As Int)
	BANano.Window.ClearInterval(theInterval)
End Sub

'put recursive object to a map
Sub PutRecursive(data As Map, path As String, value As Object)
	Try
		If BANano.IsNull(path) Or BANano.IsUndefined(path) Then
			path = ""
		End If
		If path = "" Then Return
		Dim prevObj As BANanoObject = data
		If path.IndexOf(".") = -1 Then
			'we dont have a dot
			prevObj.SetField(path, value)
		Else
			'we have a dot
			Dim items As List = BANano.Split(".", path)
			Dim iTot As Int = items.Size
			Dim iCnt As Int
			'
			Dim strprev As String = ""
			Dim prtObj As BANanoObject
			Dim litem As String = items.Get(iTot - 1)
			'
			For iCnt = 1 To iTot - 1
				'get the previos path
				strprev = items.Get(iCnt - 1)
				'the parent object
				prtObj = prevObj.GetField(strprev)
				'this does not exist, create it
				If BANano.IsUndefined(prtObj) Then
					Dim no As Object
					prevObj.SetField(strprev, no)
					prevObj = prevObj.GetField(strprev)
				Else
					prevObj = prtObj
				End If
			Next
			prevObj.SetField(litem, value)
		End If
	Catch	'ignore
	End Try	'ignore
End Sub

'get recursive data from a map
Sub GetRecursive(data As Map, path As String) As Object
    Try
        Dim prevObj As BANanoObject = data
		If path.IndexOf(".") = -1 Then
			Dim res As Object = prevObj.GetField(path)
			If BANano.IsUndefined(res) Then
				res = Null
			End If
			Return res
		Else
        	Dim items As List = BANano.Split(".", path)
        	Dim iTot As Int = items.Size
        	Dim iCnt As Int
        	'
        	Dim strprev As String = ""
        	Dim prtObj As BANanoObject
        	Dim litem As String = items.Get(iTot - 1)
        	'
        	For iCnt = 1 To iTot - 1
            	'get the previos path
            	strprev = items.Get(iCnt - 1)
            	'the parent object
            	prtObj = prevObj.GetField(strprev)
            	'this does not exist, return
            	If BANano.IsUndefined(prtObj) Then
                	Return Null
            	Else
                	prevObj = prtObj
            	End If
        	Next
        	Dim res As Object = prevObj.GetField(litem)
        	If BANano.IsUndefined(res) Then
            	res = Null
        	End If
        	Return res
		End If
	Catch
		Return Null
	End Try
End Sub

Sub GetKeyValues(bHasNothing As Boolean, result As List, k As String, v As String) As Map
	Dim mx As Map = CreateMap()
	If bHasNothing Then
		mx.Put("", "-- Nothing Selected --")
	End If
	For Each row As Map In result
		Dim f1 As String = row.get(k)
		Dim f2 As String = row.get(v)
		mx.Put(f1, f2)
	Next
	Return mx
End Sub

Sub KeyValuesFromMV(delim As String, opt As String) As Map
	Dim nm As Map = CreateMap()
	Dim values As List = StrParse(delim, opt)
	For Each k As String In values
		nm.Put(k, k)
	Next
	Return nm
End Sub

Sub GetFileFromAsset(path As String, name As String) As BANanoObject
	Dim ret As BANanoObject = BANano.Await(FetchAsFile(path, name))
	Return ret
End Sub

'fetch a file from assets as file object
'<code>
' Dim fo As BANanoObject = BANano.Await(FetchAsFile("./assets","large.png"))
'</code>
Sub FetchAsFile(path As String, name As String) As BANanoObject
	Dim fetch As BANanoFetch
	Dim fetchResponse As BANanoFetchResponse
	Dim blob As BANanoObject
  
	Dim prom As BANanoPromise
  
	' we are going to use a Promise Wrapper as we want to use Await() for it.
	prom.NewStart
	fetch.Initialize(path & "/" & name, Null)
	fetch.Then(fetchResponse)
	' resolve the blob
	Return fetchResponse.Blob
	fetch.Then(blob) 'ignore
	' Use ReturnThen/ReturnElse for the final result in case of a Promise.NewStart/NewEnd wrapper
	BANano.ReturnThen(blob)
	fetch.End
	prom.NewEnd
  
	' wait from the Promise
	Dim result As BANanoObject = BANano.Await(prom)
  
	' make a new File object
	Dim f As BANanoObject
	f.Initialize2("File",Array(Array(result), name, CreateMap("type": result.getfield("type"))))
      
	Return f
End Sub

'take normal text contend and convert to a file object
Sub Text2FileObject(contents As String, fn As String) As BANanoObject
	Dim fc As List
	fc.Initialize
	fc.Add(contents)
	Dim blob As BANanoObject
	blob.Initialize2("Blob",Array(fc, CreateMap("type": "text/plain;charset=utf-8")))
	' make a new File object
	Dim f As BANanoObject
	f.Initialize2("File",Array(Array(blob), fn, CreateMap("type": blob.getfield("type"))))
	Return f
End Sub


Sub URLQueryStringFromMap(params As Map) As String
	Dim sb As StringBuilder
	sb.Initialize
	For Each k As String In params.Keys
		Dim v As String = params.Get(k)
		k = BANano.EncodeURIComponent(k)
		v = BANano.EncodeURIComponent(v)
		sb.Append($"${k}=${v}&"$)
	Next
	Dim sout As String = sb.ToString
	sout = RemDelim(sout, "&")
	sb.Initialize
	Return sout
End Sub

Sub DeCamelCase(st As String) As String
	If st.Length = 0 Then Return ""
	Dim k As Int
	Dim s As String
	Dim newst As String = st.CharAt(0)
	For i = 1 To st.Length - 1
		s = st.CharAt(i)
		k = Asc(s)
		If k>64 And k < 91 And st.CharAt(i-1) <> " " Then
			newst = newst & "-" & s
		Else
			newst = newst & s
		End If
	Next
	newst = newst.tolowercase
	Return newst
End Sub

'use space
Sub DeCamelCaseSpace(st As String) As String
	If st.Length = 0 Then Return ""
	st = CamelCase(st)
	Dim k As Int
	Dim s As String
	Dim newst As String = st.CharAt(0)
	For i = 1 To st.Length - 1
		s = st.CharAt(i)
		k = Asc(s)
		If k>64 And k < 91 And st.CharAt(i-1) <> " " Then
			newst = newst & " " & s
		Else
			newst = newst & s
		End If
	Next
	Return newst
End Sub

Sub Json2Options(svalue As String) As Map
	svalue = svalue.Replace(CRLF, ";")
	svalue = svalue.Replace("<br/>", ";")
	Dim m As Map = CreateMap()
	Dim items As List = StrParse(";", svalue)
	For Each item As String In items
		Dim k As String = MvField(item,1,":")
		Dim v As String = MvField(item,2,":")
		k = CStr(k)
		v = CStr(v)
		k = k.Trim
		v = v.trim
		If k <> "" Then m.Put(k, v)
	Next
	Return m
End Sub

Sub Json2CreateMap(svalue As String) As String
	Dim sbRes As StringBuilder
	sbRes.Initialize
	sbRes.Append("CreateMap(") 
	svalue = svalue.Replace(CRLF, ";").Replace("<br/>", ";")
	Dim items As List = StrParse(";", svalue)
	For Each item As String In items
		Dim k As String = MvField(item,1,":")
		Dim v As String = MvField(item,2,":")
		k = CStr(k)
		v = CStr(v)
		k = k.Trim
		v = v.trim
		If k <> "" Then 
			sbRes.Append($""${k}":"${v}""$)
			sbRes.Append(",")
		End If
	Next
	Dim sout As String = sbRes.ToString
	sbRes.Initialize
	sout = RemDelim(sout, ",")
	sout = sout & ")"
	sout = sout.replace("<br/>", "")
	Return sout
End Sub

Sub Map2CreateMap(m As Map) As String
	Dim sbRes As StringBuilder
	sbRes.Initialize
	sbRes.Append("CreateMap(")
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		k = CStr(k)
		v = CStr(v)
		k = k.Trim
		v = v.trim
		If k <> "" Then
			sbRes.Append($""${k}":"${v}""$)
			sbRes.Append(",")
		End If
	Next
	Dim sout As String = sbRes.ToString
	sbRes.Initialize
	sout = RemDelim(sout, ",")
	sout = sout & ")"
	Return sout
End Sub

Sub MvRemoveDuplicates(delim As String, value As String) As String
	Dim items As List = StrParse(delim, value)
	Dim nitems As List = ListRemoveDuplicates(items)
	Dim out As String = Join(delim, nitems)
	Return out
End Sub

Sub ListRemoveDuplicates(lst As List) As List
	Dim nd As Map = CreateMap()
	For Each k As String In lst
		nd.Put(k, k)
	Next
	Dim nl As List
	nl.Initialize
	For Each k As String In nd.Keys
		nl.Add(k)
	Next
	nl.Sort(True)
	Return nl
End Sub

Sub ListRemoveDuplicatesNoSort(lst As List) As List
	Dim nd As Map = CreateMap()
	For Each k As String In lst
		nd.Put(k, k)
	Next
	Dim nl As List
	nl.Initialize
	For Each k As String In nd.Keys
		nl.Add(k)
	Next
	Return nl
End Sub


'time now
Sub TimeNow() As String
    Dim lNow As Long
    Dim dt As String
    lNow = DateTime.Now
    DateTime.DateFormat = "HH:mm"
    dt = DateTime.Date(lNow)
    Return dt
End Sub
'return the current yyyy-MM-dd
Sub DateNow() As String
    Dim lNow As Long
    Dim dt As String
    lNow = DateTime.Now
    DateTime.DateFormat = "yyyy-MM-dd"
    dt = DateTime.Date(lNow)
    Return dt
End Sub
'get the date based on days added
Sub DateOnDaysFromToday(days2Add As Int) As String
    Dim mDateNow As String = DateNow
    Dim res As String = DateAdd(mDateNow, days2Add)
    Return res
End Sub
'return the current yyyy-MM-dd HH:mm
Sub DateTimeNow() As String
    Dim lNow As Long
    Dim dt As String
    lNow = DateTime.Now
    DateTime.DateFormat = "yyyy-MM-dd HH:mm"
    dt = DateTime.Date(lNow)
    Return dt
End Sub
'date time now
Sub DateTimeNowBackUp() As String
    Dim lNow As Long
    Dim dt As String
    lNow = DateTime.Now
    DateTime.DateFormat = "yyyy-MM-dd HH-mm"
    dt = DateTime.Date(lNow)
    Return dt
End Sub
'return the current yyyy-MM-dd HH:mm:ss
Sub Now() As String
    Dim lNow As Long
    Dim dt As String
    lNow = DateTime.Now
    DateTime.DateFormat = "yyyy-MM-dd HH:mm:ss"
    dt = DateTime.Date(lNow)
    Return dt
End Sub
'long date
Sub LongDateTimeToday() As String
    DateTime.DateFormat = "yyyy-MM-dd HH:mm"
    Dim dt As Long = DateTime.now
    DateTime.DateFormat = "dd/MM/yyyy, HH:mm"
    Return DateTime.Date(dt)
End Sub

Sub SetText(elName As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).SetText(text)
End Sub

Sub SetValue(elName As String, text As Object)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).SetValue(text)
End Sub

Sub GetValue(elName As String) As Object
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return ""
	Dim out As Object = BANano.GetElement($"#${elName}"$).GetValue
	Return out
End Sub

Sub GetText(elName As String) As String
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return ""
	Dim out As String = BANano.GetElement($"#${elName}"$).GetText
	Return out
End Sub

Sub SetSrc(elName As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	Dim svalue As String = ""
	If CStr(text).StartsWith("data:image") Then
		svalue = text
	Else
		svalue = $"${text}?${DateTime.Now}"$
	End If
	BANano.GetElement($"#${elName}"$).SetAttr("src", svalue)
End Sub

Sub SetImage(elName As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	Dim svalue As String = ""
	If CStr(text).StartsWith("data:image") Then
		svalue = text
	Else
		svalue = $"${text}?${DateTime.Now}"$
	End If
	BANano.GetElement($"#${elName}"$).SetAttr("src", svalue)
End Sub

Sub AddAttr(elName As String, attr As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).SetAttr(attr, text)
End Sub

Sub AddDataAttr(elName As String, attr As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).SetData(attr, text)
End Sub

Sub SetAttr(elName As String, attr As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).SetAttr(attr, text)
End Sub

Sub SetDataAttr(elName As String, attr As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).SetData(attr, text)
End Sub

Sub GetDataAttr(elName As String, attr As String) As String
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return ""
	Dim text As String = BANano.GetElement($"#${elName}"$).GetData(attr)
	text = CStr(text)
	text = text.trim
	Return text
End Sub

Sub GetAttr(elName As String, attr As String) As String
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return ""
	Dim text As String = BANano.GetElement($"#${elName}"$).GetAttr(attr)
	text = CStr(text)
	text = text.trim
	Return text
End Sub

Sub AddClass(elName As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	text = text.Trim
	text = text.Replace(" ",";")
	Dim lst As List = StrParse(";", text)
	For Each c As String In lst
		BANano.GetElement($"#${elName}"$).AddClass(c)
	Next	
End Sub

Sub RemoveClass(elName As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	text = text.Replace(" ", ";")
	Dim lst As List = StrParse(";", text)
	For Each c As String In lst
		BANano.GetElement($"#${elName}"$).RemoveClass(c)
	Next
End Sub

Sub RemoveAttr(elName As String, attr As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).RemoveAttr(attr)
End Sub

Sub SetComputedValue(elName As String, text As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).GetField("style").RunMethod("setProperty", Array("--value", text))
End Sub

Sub SetIconName(elName As String, scontent As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elName}"$)
	Dim mLastIcon As String = el.GetData("eyes")
	mLastIcon = CStr(mLastIcon)
	If mLastIcon <> "" Then el.RemoveClass(mLastIcon)
	el.AddClass(scontent)
	el.SetData("eyes", scontent)
End Sub


Sub SetIconColor(elName As String, scontent As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elName}"$)
	Dim mLastIcon As String = el.GetData("textcolor")
	mLastIcon = CStr(mLastIcon)
	If mLastIcon <> "" Then el.RemoveClass(mLastIcon)
	Dim ns As String = FixColor("text", scontent)
	el.AddClass(ns)
	el.SetData("textcolor", ns)
End Sub

Sub SetIconSize(elName As String, scontent As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elName}"$)
	Dim mLastIcon As String = el.GetData("size")
	mLastIcon = CStr(mLastIcon)
	If mLastIcon <> "" Then el.RemoveClass(mLastIcon)
	Dim ns As String = FixSize("fa", scontent)
	el.AddClass(ns)
	el.SetData("size", ns)
End Sub

Sub HideElement(elName As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).AddClass("hidden")
End Sub

Sub ShowElement(elName As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).RemoveClass("hidden")
End Sub

Sub ShowHide(elName As String, Status As Boolean)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	If Status Then
		BANano.GetElement($"#${elName}"$).RemoveClass("hidden")
	Else
		BANano.GetElement($"#${elName}"$).AddClass("hidden")
	End If		
End Sub

Sub Show(elName As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).RemoveClass("hidden")
End Sub

Sub SetChecked(elName As String, Status As Boolean)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).SetChecked(Status)
End Sub

Sub GetChecked(elName As String) As Boolean
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return False
	Dim b As Boolean = BANano.GetElement($"#${elName}"$).GetChecked
	Return b
End Sub

Sub Exists(elName As String) As Boolean
	elName = CleanID(elName)
	Dim b As Boolean =BANano.Exists($"#${elName}"$)
	Return b
End Sub

Sub Hide(elName As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).AddClass("hidden")
End Sub

Sub Append(elName As String, scontent As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).Append($"[BANCLEAN]${scontent}"$)
End Sub

Sub Clear(elName As String)
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).Empty
End Sub

Sub Remove(elName As String)
	If elName = "" Then Return
	elName = CleanID(elName)
	If BANano.Exists($"#${elName}"$) = False Then Return
	BANano.GetElement($"#${elName}"$).Remove
End Sub

'prefix a color
Sub FixColor(prefix As String, v As String) As String
	prefix = CStr(prefix)
	v = CStr(v)
	v = v.ToLowerCase
	If prefix = "" And v = "" Then Return ""
	Dim nc As String = v
	If ColorMap.ContainsKey(v) Then nc = ColorMap.Get(v)
	v = nc
	Select Case v
		Case "primary", "secondary", "accent", "neutral", "base", "warning", "error", "info", "success", "ghost"
		Case Else
			If v.StartsWith("#") Then
			else if v.StartsWith("\{") Then
			Else
				v = GetHexColor(v, "")
			End If
	End Select
	Dim res As String = ""
	If v.StartsWith("#") Then
		res = $"${prefix}-[${v}]"$
		If prefix = "btn" Then
			res = res.Replace("btn-", "bg-")
		End If
		If prefix = "badge" Then
			res = res.Replace("badge-", "bg-")
		End If
	Else
		res = $"${prefix}-${v}"$
	End If
	If res.EndsWith("-") Then res = ""
	Return res
End Sub

'prefix a color
Sub FixColorIntensity(prefix As String, v As String, i As String) As String
	prefix = CStr(prefix)
	v = CStr(v)
	i = CStr(i)
	If prefix = "" Or v = "" Then Return ""
	Dim p1 As String = FixColor(prefix, v)
	If i <> "" Then
		If p1.Contains("[") = False Then
			p1 = p1 & "-" & i
		End If
	End If
	If p1.EndsWith("-") Then p1 = ""
	Return p1
End Sub

Sub FixSize(prefix As String, v As String) As String
	prefix = CStr(prefix)
	v = CStr(v)
	If prefix = "" Or v = "" Then Return ""
	Dim res As String = ""
	If v.EndsWith("px") Then
		res = $"${prefix}-[${v}]"$
	else if v.EndsWith("rem") Then
		res = $"${prefix}-[${v}]"$
	else if v.EndsWith("vh") Then
		res = $"${prefix}-[${v}]"$
	else if v.EndsWith("vw") Then
		res = $"${prefix}-[${v}]"$
	else if v.EndsWith("%") Then
		res = $"${prefix}-[${v}]"$
	Else
		res = $"${prefix}-${v}"$
	End If
	If res.EndsWith("-") Then res = ""
	Return res
End Sub

Sub RawToMap(varStyles As String) As Map
	Dim m As Map = CreateMap()
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	Dim mxItems As List = StrParse(";", varStyles)
	mxItems = ListTrimItems(mxItems)
	For Each mtx As String In mxItems
		mtx = mtx.Trim
		If mtx.Length = 0 Then Continue
		Dim k As String = MvField(mtx, 1, ":")
		Dim v As String = MvField(mtx, 2, ":")
		m.Put(k, v)
	Next
	Return m
End Sub

Sub KeyValues2Map(varStyles As String) As Map
	Dim m As Map = CreateMap()
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	Dim mxItems As List = StrParse(";", varStyles)
	mxItems = ListTrimItems(mxItems)
	For Each mtx As String In mxItems
		mtx = mtx.Trim
		If mtx.Length = 0 Then Continue
		Dim k As String = MvField(mtx, 1, ":")
		Dim v As String = MvField(mtx, 2, ":")
		m.Put(k, v)
	Next
	Return m
End Sub

Sub ColorNameToHSL(n As String) As String
	Dim res As String = BANano.RunJavascriptMethod("nameToHSL", Array(n))
	Return res
End Sub

Sub ColorNameToHex(n As String) As String
	Dim res As String = BANano.RunJavascriptMethod("nameToHex", Array(n))
	Return res
End Sub

Sub HexToHSL(h As String) As String
	Dim res As String = BANano.RunJavascriptMethod("hexToHSL", Array(h))
	Return res
End Sub

#if javascript
function nameToHSL(name) {
  let fakeDiv = document.createElement("div");
  fakeDiv.style.color = name;
  document.body.appendChild(fakeDiv);
  let cs = window.getComputedStyle(fakeDiv),
      pv = cs.getPropertyValue("color");
  document.body.removeChild(fakeDiv);
  // Code ripped from RGBToHSL() (except pv is substringed)
  let rgb = pv.substr(4).split(")")[0].split(","),
      r = rgb[0] / 255,
      g = rgb[1] / 255,
      b = rgb[2] / 255,
      cmin = Math.min(r,g,b),
      cmax = Math.max(r,g,b),
      delta = cmax - cmin,
      h = 0,
      s = 0,
      l = 0;
  if (delta == 0)
    h = 0;
  else if (cmax == r)
    h = ((g - b) / delta) % 6;
  else if (cmax == g)
    h = (b - r) / delta + 2;
  else
    h = (r - g) / delta + 4;
  h = Math.round(h * 60);
  if (h < 0)
    h += 360;
  l = (cmax + cmin) / 2;
  s = delta == 0 ? 0 : delta / (1 - Math.abs(2 * l - 1));
  s = +(s * 100).toFixed(1);
  l = +(l * 100).toFixed(1);
  return "hsl(" + h + "," + s + "%," + l + "%)";
}

function nameToHex(name) {
  // Get RGB from named color in temporary div
  let fakeDiv = document.createElement("div");
  fakeDiv.style.color = name;
  document.body.appendChild(fakeDiv);
  let cs = window.getComputedStyle(fakeDiv),
      pv = cs.getPropertyValue("color");
  document.body.removeChild(fakeDiv);
  // Code ripped from RGBToHex() (except pv is substringed)
  let rgb = pv.substr(4).split(")")[0].split(","),
      r = (+rgb[0]).toString(16),
      g = (+rgb[1]).toString(16),
      b = (+rgb[2]).toString(16);
  if (r.length == 1)
    r = "0" + r;
  if (g.length == 1)
    g = "0" + g;
  if (b.length == 1)
    b = "0" + b;
  return "#" + r + g + b;
}

function hexToHSL(H) {
  // Convert hex to RGB first
  let r = 0, g = 0, b = 0;
  if (H.length == 4) {
    r = "0x" + H[1] + H[1];
    g = "0x" + H[2] + H[2];
    b = "0x" + H[3] + H[3];
  } else if (H.length == 7) {
    r = "0x" + H[1] + H[2];
    g = "0x" + H[3] + H[4];
    b = "0x" + H[5] + H[6];
  }
  // Then to HSL
  r /= 255;
  g /= 255;
  b /= 255;
  let cmin = Math.min(r,g,b),
      cmax = Math.max(r,g,b),
      delta = cmax - cmin,
      h = 0,
      s = 0,
      l = 0;
  if (delta == 0)
    h = 0;
  else if (cmax == r)
    h = ((g - b) / delta) % 6;
  else if (cmax == g)
    h = (b - r) / delta + 2;
  else
    h = (r - g) / delta + 4;
  h = Math.round(h * 60);
  if (h < 0)
    h += 360;
  l = (cmax + cmin) / 2;
  s = delta == 0 ? 0 : delta / (1 - Math.abs(2 * l - 1));
  s = +(s * 100).toFixed(1);
  l = +(l * 100).toFixed(1);
  //return "hsl(" + h + "," + s + "%," + l + "%)";
  return "" + h + "_" + s + "%_" + l + "%";
}
#End If

'get the id and children html of this element
Sub GetHTML(id As String) As String
	id = CleanID(id)
	If BANano.Exists($"#${id}"$) Then
		Dim tmp As String = BANano.Window.GetField("document").RunMethod("getElementById", id).GetField("outerHTML").Result
		Return tmp
	Else
		Return ""
	End If
End Sub

'convert form to json
Sub FormToJSON(frmID As String) As Map
	frmID = CleanID(frmID)
	'
	Dim FormDataJson As BANanoObject
	FormDataJson.Initialize("FormDataJson")
	'
	Dim k As String = $"#${frmID}"$
	Dim opt As Map = CreateMap()
	opt.Put("includeDisabled", True)
	opt.Put("uncheckedValue", True)
	Dim res As Map = FormDataJson.runmethod("toJson", Array(k, opt))
	Return res
End Sub

Sub FormKeyValue(frmID As String, pkField As String) As String
	Dim data As Map = FormToJSON(frmID)
	If data.ContainsKey(pkField) Then
		Dim out As String = data.Get(pkField)
		Return out
	Else
		Log(pkField)
		Return ""	
	End If
End Sub

'set form data from json
Sub FormFromJSON(frmID As String, jsonData As Map)
	frmID = CleanID(frmID)
	'
	Dim FormDataJson As BANanoObject
	FormDataJson.Initialize("FormDataJson")
	'
	Dim k As String = $"#${frmID}"$
	FormDataJson.runmethod("fromJson", Array(k, jsonData))
End Sub

'save map to localstorage as json
Sub SetLocalStorage(k As String, source As Object)
	Dim nd As String = BANano.ToJson(source)
	BANano.SetLocalStorage2(k, nd)
End Sub

Sub DeleteLocalStorage(k As String)
	BANano.RemoveLocalStorage2(k)
End Sub

'get map from localstorage
Sub GetLocalStorage(k As String) As Object
	Dim nd As String = BANano.GetLocalStorage2(k)
	nd = CStr(nd)
	If nd <> "" Then
		Dim res As Object = BANano.fromjson(nd)
		Return res
	End If
	Dim mn As Map = CreateMap()
	Return mn
End Sub

'open a url on a blank window
Sub OpenURLTab(url As String)
	Dim bo As BANanoObject = BANano.Window.RunMethod("open", Array(url, "_blank"))
	bo.RunMethod("focus", Null)
End Sub

Sub OpenURLTarget(url As String, target As String)
	Dim bo As BANanoObject = BANano.Window.RunMethod("open", Array(url, target))
	bo.RunMethod("focus", Null)
End Sub

'open whatsapp using the telephone number
'include country code with + on number
Sub OpenURLWhatsApp(tel As String)
	OpenURLTab($"https://api.whatsapp.com/send?phone=${tel}"$)
End Sub

Sub OpenURLWhatsAppText(tel As String, text As String)
	OpenURLTab($"https://api.whatsapp.com/send?phone=${tel}&text=${text}"$)
End Sub

'place a call using a number
'include country code with + on number
Sub OpenURLTel(tel As String)
	OpenURLTab($"tel:${tel}"$)
End Sub

#if javascript
function dataURLToBlob(dataURL) {
  // Code taken from https://github.com/ebidel/filer.js
  var parts = dataURL.split(';base64,');
  var contentType = parts[0].split(":")[1];
  var raw = window.atob(parts[1]);
  var rawLength = raw.length;
  var uInt8Array = new Uint8Array(rawLength);
  for (var i = 0; i < rawLength; ++i) {
    uInt8Array[i] = raw.charCodeAt(i);
  }
  return new Blob([uInt8Array], { type: contentType });
}
#End If

Sub dataURLToBlob(dataURL As String) As Object
	Dim blob As Object = BANano.Await(BANano.RunJavascriptMethod("dataURLToBlob", Array(dataURL)))
	Return blob
End Sub

'convert a dataURL to a blob
Sub DataURIToFileWait(obj As String, name As String) As BANanoObject
	Dim Fetch As BANanoFetch
	Dim fetchResponse As BANanoFetchResponse
	Dim blob As BANanoObject
	Dim prom As BANanoPromise
	' we are going to use a Promise Wrapper as we want to use Await() for it.
	prom.NewStart
	Fetch.Initialize(obj, Null)
	Fetch.Then(fetchResponse)
	' resolve the blob
	Return fetchResponse.Blob
	Fetch.Then(blob) 'ignore
	' Use ReturnThen/ReturnElse for the final result in case of a Promise.NewStart/NewEnd wrapper
	BANano.ReturnThen(blob)
	Fetch.End
	prom.NewEnd
	' wait from the Promise
	Dim result As BANanoObject = BANano.Await(prom)
	' make a new File object
	Dim f As BANanoObject
	f.Initialize2("File",Array(Array(result), name, CreateMap("type": result.getfield("type"))))
	Return f
End Sub

'check if storage can persist
Sub StoragePersistedWait As Boolean
	Dim canPersist As BANanoPromise = BANano.Navigator.GetField("storage").RunMethod("persisted", Null)
	Dim res As Boolean = BANano.Await(canPersist)
	Return res
End Sub

'request persist of storage
Sub StoragePersistWait As Boolean
	Dim ispersisted As BANanoPromise = BANano.Navigator.GetField("storage").RunMethod("persist", Null)
	Dim res As Boolean = BANano.Await(ispersisted)
	Return res
End Sub

'check storage estimate
Sub StorageEstimateWait As StorageQuota
	Dim obj As BANanoPromise = BANano.Navigator.GetField("storage").RunMethod("estimate", Null)
	Dim res As Map = BANano.Await(obj)
	Dim q As StorageQuota = StorageToQuota(res)
	Return q
End Sub

'get storage quota
private Sub StorageToQuota(m As Map) As StorageQuota
	Dim sq As StorageQuota
	sq.Initialize
	sq.quota = m.get("quota")
	sq.usage = m.get("usage")
	sq.percentUsed = (sq.usage / sq.quota) * 100
	sq.remaining = sq.quota - sq.usage
	Return sq
End Sub

Sub SetCookie(key As String, value As String, expires As Int, spath As String, domain As String, secure As Boolean)
	Dim xOptions As Map = CreateMap()
	xOptions.Put("expires", expires)
	If spath <> "" Then xOptions.Put("path", spath)
	If domain <> "" Then xOptions.Put("domain", domain)
	If secure Then
		xOptions.Put("secure", "true")
	End If
	Dim jsonO As String = BANano.ToJson(xOptions)
	BANano.SetCookie(key, value, jsonO)
End Sub
 
'get file contents without upload
'<code>
''get the file contents without upload
'Dim txt As String = BANano.Await(Vuetify.GetFileAsText(fileObj))
'</code>
Sub GetFileAsText(fileObj As Map) As String
	Dim res As String = BANano.Await(readAsTextWait(fileObj))
	Return res
End Sub
'get file contents without upload
'<code>
''get the file contents without upload
'Dim res As Object = BANano.Await(Vuetify.GetFileAsJSON(fileObj))
'</code>
Sub GetFileAsJSON(fileObj As Map) As Object
	Dim res As Object = BANano.Await(readAsJsonWait(fileObj))
	Return res
End Sub
'get file contents without upload
'<code>
''get the file contents without upload
'Dim res As Object = BANano.Await(Vuetify.GetFileAsBinaryString(fileObj))
'</code>
Sub GetFileAsBinaryString(fileObj As Map) As Object
	Dim res As Object = BANano.Await(readAsBinaryStringWait(fileObj))
	Return res
End Sub
'get file contents without upload
'<code>
''get the file contents without upload
'Dim txt As String = BANano.Await(Vuetify.GetFileAsDataURL(fileObj))
'</code>
Sub GetFileAsDataURL(fileObj As Map) As Object
	Dim res As Object = BANano.Await(readAsDataURLWait(fileObj))
	Return res
End Sub
'get file contents without upload
'<code>
''get the file contents without upload
'Dim obj As Object = BANano.Await(Vuetify.GetFileAsArrayBuffer(fileObj))
'</code>
Sub GetFileAsArrayBuffer(fileObj As Map) As Object
	Dim res As Object = BANano.Await(readAsArrayBufferWait(fileObj))
	Return res
End Sub

'get alpha
Sub Alpha(value As String) As String
	value = CStr(value)
	Try
		value = value.Trim
		If value = "" Then value = ""
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub

Sub GeneratePassword(plength As Int, includeLowercase As Boolean,  includeUppercase As Boolean, includeNumbers As Boolean, includeSpecialChars As Boolean) As String
	Dim uppercaseArray() As String = Array As String ("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")
	Dim lowercaseArray() As String = Array As String ("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
	Dim numbersArray()   As String = Array As String ("0","1","2","3","4","5","6","7","8","9")
	Dim symbolsArray() As String = Array As String ("@", "#", "$", "!", "^", "*", "(", ")", "_", "+", "[", "]", "{", "}", "|", ";", ":", ".")
	'
	Dim charList As List
	charList.Initialize
  
	If includeNumbers  Then charList.AddAll(numbersArray)
	If includeLowercase Then charList.AddAll(lowercaseArray)
	If includeUppercase Then charList.AddAll(uppercaseArray)
	If includeSpecialChars Then charList.AddAll(symbolsArray)

	Dim newPassword As StringBuilder
	newPassword.Initialize
  
	For i = 1 To plength
		newPassword.Append(charList.Get(Rnd(0, charList.Size)))
	Next
	Return newPassword.ToString
End Sub

Public Sub GeneratePinCode(PinLength As Int) As Int
	Dim result As String =""
	Dim RandomArray() As String = Array As String(1,2,3,4,5,6,7,8,9,0)
	For i = 0 To PinLength - 1
		result = result &  RandomArray( Rnd( 0, Rnd(2, RandomArray.Length -1)) )
	Next
	Return  result
End Sub

'get alpha
Sub AlphaNumeric(value As String) As String
	value = CStr(value)
	Try
		value = value.Trim
		If value = "" Then value = ""
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub

Sub IsAlphabet(input As String) As Boolean
	' Iterate through each character in the string
	For i = 0 To input.Length - 1
		Dim charCode As Int = Asc(input.CharAt(i))
		' Check if the ASCII code is between 'a'-'z' (97-122) or 'A'-'Z' (65-90)
		Dim case1 As Boolean = (charCode >= 65) And (charCode <= 90)
		Dim case2 As Boolean = (charCode >= 97) And (charCode <= 122)
		Dim case3 As Boolean = case1 Or case2
		If Not(case3) Then Return False
	Next
	' If all characters are alphabets, return True
	Return True
End Sub

'Sub GetExcelColumnName(columnNumber As Int) As String
'	Dim columnName As StringBuilder
'	columnName.Initialize
'
'	Dim dividend As Int = columnNumber
'	Dim modulo As Int
'    
'	' Loop to calculate the corresponding Excel column letters
'	Do While dividend > 0
'		modulo = (BANano.parseInt(dividend) - 1) Mod 26
'		Dim ch As String = Chr(BANano.parseInt(modulo) + 65)
'		columnName.Append(ch)
'		Dim d As Int = BANano.parseInt(dividend) - BANano.parseInt(modulo) - 1
'		dividend = BANano.parseInt(d) / 26
'	Loop
'	Dim sout As String = columnName.ToString
'	sout = sout.touppercase
'	Return sout
'End Sub

'Sub GetExcelColumnNumber(columnName As String) As Int
'	columnName = columnName.ToUpperCase
'	Dim columnNumber As Int = 0
'	Dim ilength As Int = columnName.Length
'    
'	' Iterate through each character in the column name
'	For i = 0 To ilength - 1
'		Dim charCode As Int = Asc(columnName.CharAt(i))
'		' Convert character to its position in the alphabet (A=1, B=2, ..., Z=26)
'		Dim charValue As Int = BANano.parseInt(charCode) - 64
'		' Calculate column number
'		Dim c As Int = BANano.parseInt(columnNumber) * 26 + BANano.parseInt(charValue)
'		columnNumber = c
'	Next    
'	Return columnNumber
'End Sub



'remove an item from a list
Sub ListRemoveItem(lst As List, itm As Object) As List
	Dim idx As Int = lst.IndexOf(itm)
	If idx <> -1 Then
		lst.RemoveAt(idx)
	End If
	Return lst
End Sub

'single quote each item on the list
Sub ListSingleQuoteItems(lst As List)
	Dim lTot As Int = lst.Size - 1
	Dim lCnt As Int
	For lCnt = 0 To lTot
		Dim lItem As String = lst.Get(lCnt)
		lItem = lItem.Replace("'", "")
		lItem = $"'${lItem}'"$
		lst.Set(lCnt, lItem)
	Next
End Sub

Sub ListToArrayVariable(lst As List) As String
	Dim lTot As Int = lst.Size - 1
	Dim lCnt As Int
	For lCnt = 0 To lTot
		Dim lItem As String = lst.Get(lCnt)
		lItem = lItem.Replace(QUOTE, "")
		lItem = $""${lItem}""$
		lst.Set(lCnt, lItem)
	Next
	Dim xs As String = Join(",", lst)
	Return xs
End Sub

'make the keys of the maps to lowercase
Sub ListOfMapsKeysToLowerCase(lst As List)
	Dim recTot As Int = lst.Size - 1
	Dim recCnt As Int
	For recCnt = 0 To recTot
		Dim m As Map = lst.Get(recCnt)
		m = MakeLowerCase(m)
		lst.Set(recCnt, m)
	Next
End Sub

Sub ListOfMapsIndexOf(lst As List, key As String, value As String) As Int
	value = CStr(value)
	Dim recTot As Int = lst.Size - 1
	Dim recCnt As Int
	For recCnt = 0 To recTot
		Dim m As Map = lst.Get(recCnt)
		If m.ContainsKey(key) Then
			Dim v As String = m.Get(key)
			v = CStr(v)
			If v.EqualsIgnoreCase(value) Then
				Return recCnt
			End If
		End If
	Next
	Return -1
End Sub

Sub ListOfMapsGetProperty(lst As List, key As String) As List
	key = CStr(key)
	Dim nList As List
	nList.Initialize
	' 
	Dim recTot As Int = lst.Size - 1
	Dim recCnt As Int
	For recCnt = 0 To recTot
		Dim m As Map = lst.Get(recCnt)
		If m.ContainsKey(key) Then
			Dim v As String = m.Get(key)
			v = CStr(v)
			nList.Add(v)
		End If
	Next
	Return nList
End Sub

'make lowercase
Sub MakeLowerCase(m As Map) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		k = k.tolowercase
		nm.Put(k, v)
	Next
	Return nm
End Sub

'convert a list to integer
Sub CIntList(lst As List) As List
	Dim nl As List
	nl.Initialize
	Dim lTot As Int = lst.Size - 1
	Dim lCnt As Int = 0
	For lCnt = 0 To lTot
		Dim lox As String = lst.Get(lCnt)
		lox = CInt(lox)
		nl.Add(lox)
	Next
	Return nl
End Sub
'convert a list to doubles
Sub CDblList(lst As List) As List
	Dim nl As List
	nl.Initialize
	Dim lTot As Int = lst.Size - 1
	Dim lCnt As Int = 0
	For lCnt = 0 To lTot
		Dim lox As String = lst.Get(lCnt)
		lox = CDbl(lox)
		nl.Add(lox)
	Next
	Return nl
End Sub
'convert a list to strings
Sub CStrList(lst As List) As List
	Dim nl As List
	nl.Initialize
	Dim lTot As Int = lst.Size - 1
	Dim lCnt As Int = 0
	For lCnt = 0 To lTot
		Dim lox As String = lst.Get(lCnt)
		lox = CStr(lox)
		nl.Add(lox)
	Next
	Return nl
End Sub

'parse a string
Sub StrParseComma(delim As String, inputString As Object) As List
	Dim nl As List
	nl.Initialize
	Try
		If BANano.IsNull(inputString) Or BANano.IsUndefined(inputString) Then inputString = ""
		If inputString = "" Then
			Return nl
		End If
		If BANano.IsArray(inputString) Then
			Return inputString
		End If
		Dim sinputString As String = CStr(inputString)
		If sinputString.Contains(",") Then
			sinputString = sinputString.Replace(",", delim)
		End If
		If sinputString.IndexOf(delim) = -1 Then
			nl.Add(sinputString)
		Else
			nl = BANano.Split(delim,sinputString)
		End If
		Return nl
	Catch
		'Log(LastException)
		Return nl
	End Try
End Sub

'encrypt data for php sending
Sub Encrypt4Php(data As String, key As String) As String
	Dim encpt As BANanoObject
	encpt.Initialize2("Encryption", Null)
	Dim result As String = encpt.RunMethod("encrypt", Array(data, key)).Result
	Return result
End Sub

'decreypt data from php
Sub Decrypt4Php(decr As String, key As String) As String
	Dim encpt As BANanoObject
	encpt.Initialize2("Encryption", Null)
	Dim result As String = encpt.RunMethod("decrypt", Array(decr, key)).result
	Return result
End Sub

'add event
Sub On(elID As String, event As String, mCallBack As Object, MethodName As String)
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) = False Then Return
	MethodName = MethodName.ToLowerCase
	If SubExists(mCallBack, MethodName) Then
		BANano.GetElement($"#${elID}"$).Off(event)
		BANano.GetElement($"#${elID}"$).On(event, mCallBack, MethodName)
	End If
End Sub

Sub AESEncrypt(v As String, s As String) As String
	Dim CryptoJS As BANanoObject
	CryptoJS.Initialize("CryptoJS")
	
	Dim o As BANanoObject = CryptoJS.GetField("AES").RunMethod("encrypt", Array(v, s))
	Dim i As String = o.RunMethod("toString", Null).Result
	Return i
End Sub

Sub AESDecrypt(v As String, s As String) As String
	Dim CryptoJS As BANanoObject
	CryptoJS.Initialize("CryptoJS")
	Dim bytes As BANanoObject = CryptoJS.GetField("AES").RunMethod("decrypt", Array(v, s))
	'
	Dim k As BANanoObject = CryptoJS.GetField("enc").GetField("Utf8")
	'
	Dim i As String = bytes.RunMethod("toString", k).Result
	Return i
End Sub

Sub ReadTextFileFromAssets(fn As String) As String
	Dim fileContents As String = BANano.Await(BANano.GetFileAsText($"${fn}?${DateTime.now}"$, Null, "utf8"))
	Return fileContents
End Sub

Sub ReadJSONFileFromAssets(fn As String) As Object
	Dim fileContents As String = BANano.Await(BANano.GetFileAsJSON($"${fn}?${DateTime.now}"$, Null))
	Return fileContents
End Sub

Sub ReadBase64FileFromAssets(fn As String) As Object
	Dim fileContents As String = BANano.Await(BANano.GetFileAsDataURL($"${fn}?${DateTime.now}"$, Null))
	Return fileContents
End Sub

'<code>
''use fetch to get the file contents
'Dim csvData As String = banano.Await(banano.GetFileAsText("./assets/data.csv", Null, "utf8"))
''parse the file contents and retrieve items on complete
'ImportCSV(Me, "mycsv", csvData, "", true, true, "ISO-8859-1")
'
''will fire in each iteration
'Sub mycsv_step(results As Map, parserObj As BANanoObject)
'End Sub
'
''will fire when completed
'Sub mycsv_complete(results As Map, fileObj As BANAnoObject)
'Dim data As list = results.get("data")
'Dim errors As List = results.get("errors")
'Dim meta As Map = results.get("meta")
'Dim fields As List = meta.get("fields")
'End Sub
'</code>
Sub ImportCSV(Module As Object, event As String, content As String, delimiter As String, hasHeader As Boolean, dynamicTyping As Boolean, encoding As String)
	event = event.tolowercase
	Dim config As Map = CreateMap()
	config.Put("delimiter", delimiter)
	config.Put("header", hasHeader)
	config.Put("dynamicTyping", dynamicTyping)
	config.Put("worker", True)
	config.put("download", False)
	config.put("skipEmptyLines", True)
	config.put("encoding", encoding)
	'
	Dim xstep As String = $"${event}_step"$
	Dim results As Object
	Dim parser As Object
	If SubExists(Module, xstep) Then
		Dim stepCB As BANanoObject = BANano.CallBack(Module, xstep, Array(results, parser))
		config.Put("step", stepCB)
	End If
	'
	Dim xcomplete As String = $"${event}_complete"$
	Dim filex As Object
	If SubExists(Module, xcomplete) Then
		Dim completeCB As BANanoObject = BANano.CallBack(Module, xcomplete, Array(results, filex))
		config.Put("complete", completeCB)
	End If
	'
	Dim Papa As BANanoObject
	Papa.Initialize("Papa")
	Papa.RunMethod("parse", Array(content, config))
End Sub

'<code>
''parse a list of records from data-table to make csv
'Dim csvData As String = ListOfMapsToCSV(records, ",", true)
'</code>
Sub ListOfMapsToCSV(content As List, quotes As Boolean, delimiter As String, hasHeader As Boolean) As String
	Dim config As Map = CreateMap()
	config.Put("quotes", quotes)
	config.Put("delimiter", delimiter)
	config.Put("header", hasHeader)
	config.put("skipEmptyLines", True)
	'
	Dim Papa As BANanoObject
	Papa.Initialize("Papa")
	Dim res As String = Papa.RunMethod("unparse", Array(content, config)).Result
	Return res
End Sub

'<code>
''Return an array of all values meeting the filter criteria
'Dim xout As List = ArrayFilter(Me, oldList, "checkadult")
'Sub checkadult(value As Object, index As Int, arr As List) As Boolean
'	value = BANano.parseint(value)
'	Return value >= 18
'End Sub
'</code>
Sub ArrayFilter(Module As Object, lst As List, MethodName As String) As List
	Dim jsO As JSArray
	jsO.Initialize(Module, lst)
	Dim js1 As JSArray = jsO.filter(MethodName)
	Return js1.items
End Sub

'<code>
''creates a new array from calling a function for every array element.
'Dim xout As List = ArrayMap(Me, oldList, "doadult")
'Sub doadult(value As Object, index As Int, arr As List) As Object
'	value = BANano.parseInt(value)
'	Return value * 2
'End Sub
'</code>
Sub ArrayMap(Module As Object, lst As List, MethodName As String) As List
	Dim jsO As JSArray
	jsO.Initialize(Module, lst)
	Dim js1 As JSArray = jsO.map(MethodName)
	Return js1.items
End Sub

Sub ListAddNothingSelected(lst As List)
	lst.InsertAt(0, "--Nothing Selected--")
End Sub

 Sub TailwindCSSClass(p As String, i As String) As String
	i = CStr(i)
	If i = "" Then Return ""
	If i.EndsWith("rem") Then Return $"${p}-[${i}]"$
	If i.EndsWith("px") Then Return $"${p}-[${i}]"$
	If i.EndsWith("vh") Then Return $"${p}-[${i}]"$
	If i.EndsWith("vw") Then Return $"${p}-[${i}]"$
	If i.StartsWith("#") Then Return $"${p}-[${i}]"$
	If i.EndsWith("%") Then Return $"${p}-[${i}]"$
	Return $"${p}-${i}"$
End Sub

Sub TailwindCSSColor(prefix As String, s As String) As String
	If prefix = "" And s = "" Then Return ""
	If s = "" Then Return ""
	Dim c As String = FixColor(prefix, s)
	Return c
End Sub

'unflatten as list of map objects using id, parentid, data attributes
Sub Unflatten(tdata As List, childname As String) As List
	Try
		'id, parentid, data
		Dim tree As List
		Dim mappedArr As Map
		MissingParents.Initialize 
		'
		tree.Initialize
		mappedArr.Initialize
		'
		'create a temp map to hold everything with 'children' as 'data'
		For Each arrElem As Map In tdata
			Dim dID As String = arrElem.Get("id")
			'
			Dim cdata As List
			cdata.Initialize
			arrElem.Put(childname, cdata)
			'
			mappedArr.Put(dID, arrElem)
		Next
		'
		For Each dID As String In mappedArr.Keys
			Dim mappedElem As Map = mappedArr.Get(dID)
			Dim parentid As String = mappedElem.Get("parentid")
			' If the element is at the root level, add it to first level elements list.
			If parentid = "" Or parentid = "0" Then
				tree.Add(mappedElem)
			Else
				'If the element is not at the root level, add it to its parent list of children.
				If mappedArr.ContainsKey(parentid) Then
					Dim parentElem As Map = mappedArr.Get(parentid)
					Dim children As List = parentElem.Get(childname)
					children.Add(mappedElem)
					parentElem.Put(childname, children)
					mappedArr.Put(parentid, parentElem)
				Else
					MissingParents.Put(parentid, parentid)
				End If
			End If
		Next
		'
		For Each mk As String In mappedArr.Keys
			Dim mi As Map = mappedArr.Get(mk)
			Dim childs As List = mi.Get(childname)
			If childs.Size = 0 Then mi.Remove(childname)
		Next
		Return tree
	Catch
		'Log(LastException)
		Return tree
	End Try
End Sub

'insert a css rule
Sub InsertCSSRule(selector As String, styles As Object)
	BANano.RunJavascriptMethod("insertRule", Array(selector, styles))
End Sub

'remove a css rule 
Sub RemoveCSSRule(selector As String)
	Dim i As BANanoObject
	i.Initialize("insertRule")
	i.RunMethod("remove", selector)
End Sub

'build code to send email
'to send email via gmail, you need to set less secure apps on https://myaccount.google.com/
Sub BuildSendEmail(fromEmail As String, toEmail As String, ccEmail As String, subject As String, message As String) As Map
	message = message.replace(CRLF,"|")
	Dim Se As Map = CreateMap()
	Se.put("from", fromEmail)
	Se.put("to", toEmail)
	Se.put("cc", ccEmail)
	Se.put("subject", subject)
	Se.put("msg", message)
	Return Se
End Sub

'send an email
'to send email via gmail, you need to set less secure apps on https://myaccount.google.com
'1. Click Security
'<code>
''send an email
'to send email via gmail, you need to set less secure apps on https://myaccount.google.com
'Dim bOK As Boolean = BANano.Await(SendEmailWait("from@gmail.com", "to@gmail.com", "cc@gmail.com", "Test Email", "Have you received this||..."))
'</code>
Sub SendEmailWait(fromEmail As String, toEmail As String, ccEmail As String, subject As String, message As String) As Boolean
	Dim res As String = BANano.CallInlinePHPWait("SendEmail", BuildSendEmail(fromEmail, toEmail, ccEmail, subject, message))	'ignore
	Dim result As Map = BANano.FromJson(res)
	Dim sstatus As String = result.Get("status")
	If sstatus = "success" Then
		Return True
	Else
		Return False
	End If
End Sub

'slang - js, css, html, php, vb
Sub BeautifySourceCode(sc As String, slang As String) As String
	Try
		Select Case slang
			Case "js"
				Dim res As String = BANano.RunJavascriptMethod("js_beautify", Array(sc))
			Case "css"
				Dim res As String = BANano.RunJavascriptMethod("css_beautify", Array(sc))
			Case "html"
				Dim res As String = BANano.RunJavascriptMethod("html_beautify", Array(sc))
			Case "php"
				Return ""
				'Dim res As String = BeautifyPHP(sc)
			Case "vb"
				Dim res As String = BeautifyB4X(sc)
			Case Else
				Dim res As String = PrettierCode(sc)
		End Select
	Catch
		Return ""
	End Try
	Return res
End Sub

Sub AddCodeLine(lst As List, cl As String)
	cl = cl.Replace("~","$")
	lst.Add(cl)
End Sub

Sub BuildCodeLine(lst As List) As String
	Dim allCode As String = Join(CRLF, lst)
	allCode = allCode.Replace("~","$")
	Dim nCode As String = BeautifySourceCode(allCode, "vb")
	Return nCode
End Sub

Sub AddCode(sb As StringBuilder, cl As String)
	cl = cl.Replace("~","$")
	sb.Append(cl).Append(CRLF)
End Sub

Sub AddComment(sb As StringBuilder, cl As String)
	cl = cl.Replace("~","$")
	sb.Append($"'${cl}"$).Append(CRLF)
End Sub

Sub BuildCode(sb As StringBuilder) As String
	Dim allCode As String = sb.ToString
	sb.Initialize
	allCode = allCode.Replace("~","$")
	Dim nCode As String = BeautifySourceCode(allCode, "vb")
	Return nCode
End Sub

#if javascript
// Converts image to canvas; returns new canvas element
function convertImageToCanvas(image) {
	var canvas = document.createElement("canvas");
	canvas.width = image.width;
	canvas.height = image.height;
	canvas.getContext("2d").drawImage(image, 0, 0);

	return canvas;
}
// Converts canvas to an image
function convertCanvasToImage(canvas) {
	var image = new Image();
	image.src = canvas.toDataURL("image/png");
	return image;
}
#End If

'redirect to https
Sub RedirectToHTTPS
	BANano.Eval($"if (location.protocol !== "https:"){location.replace(window.location.href.replace("http:", "https:"));}"$)
End Sub
    'on the current window naviage to some other page
Sub NavigatetoURL(url As String)
	BANano.Location.SetHref(url)
End Sub

'get the host name
Sub GetHostName As String
	Dim s As String = BANano.Window.GetField("location").GetField("hostname").Result
	Return s
End Sub
    'get the current URL
Sub GetURL As String
	Dim s As String = BANano.Window.GetField("location").GetField("href").Result
	Return s
End Sub
    'get the protocol used in the app
Sub GetProtocol As String
	Dim s As String = BANano.Window.GetField("location").GetField("protocol").Result
	Return s
End Sub
    'open URL on current window
Sub OpenURL(url As String)
	BANano.Window.GetField("location").RunMethod("assign", url)
End Sub

Sub ListIndexOf(lst As List, prop As String, value As String) As Int
	value = CStr(value)
	Dim lstCnt As Int = 0
	Dim lstTot As Int = lst.Size - 1
	Dim rec As Map = CreateMap()
	Dim pos As Int = -1
	For lstCnt = 0 To lstTot
		rec = lst.Get(lstCnt)
		If rec.ContainsKey(prop) Then
			Dim v As String = rec.get(prop)
			v = CStr(v)
			If v.EqualsIgnoreCase(value) Then
				pos = lstCnt
				Exit
			End If
		End If
	Next
	Return pos
End Sub

Sub MapFind(lst As Map, prop As String, value As String) As Map
	value = CStr(value)
	For Each rec As Map In lst.Values
		If rec.ContainsKey(prop) Then
			Dim v As String = rec.get(prop)
			v = CStr(v)
			If v.EqualsIgnoreCase(value) Then
				Return rec
 				Exit
			End If
		End If
	Next
	Return Null
End Sub


Sub ListChange(lst As List, prop As String, value As String, item As Map) As List
	Dim pos As Int = ListIndexOf(lst, prop, value)
	If pos = -1 Then Return lst
	'get the record at that position
	Dim rec As Map = lst.Get(pos)
	'we have found it, update it
	For Each k As String In item.Keys
		Dim v1 As Object = item.Get(k)
		rec.Put(k, v1)
	Next
	'update list at that position
	lst.Set(pos, rec)
	Return lst
End Sub

'add an item to a list of it does not exist / replace it
Sub ListCreateUpdate(lst As List, prop As String, value As String, item As Map) As List
	Dim pos As Int = ListIndexOf(lst, prop, value)
	If pos = -1 Then
		lst.Add(item)
	Else
		'get the record at that position
		Dim rec As Map = lst.Get(pos)
		'we have found it, update it
		For Each k As String In item.Keys
			Dim v1 As Object = item.Get(k)
			rec.Put(k, v1)
		Next
		lst.Set(pos, rec)
	End If
	Return lst
End Sub

'returns whether a map exists in a list based on a property
Sub ListContains(lst As List, prop As String, value As String) As Boolean
	Dim pos As Int = ListIndexOf(lst, prop, value)
	If pos = -1 Then Return False
	Return True
End Sub

'returns the map based on a property
Sub ListFind(lst As List, prop As String, value As String) As Map
	Dim m As Map = CreateMap()
	Dim pos As Int = ListIndexOf(lst, prop, value)
	If pos = -1 Then Return Null
	m = lst.Get(pos)
	Return m
End Sub

Sub ListFindItemsLike(lst As List, value As String) As List
	value = value.tolowercase
	Dim nItems As List
	nItems.Initialize 
	For Each item As String In lst
		Dim xitem As String = item.tolowercase
		Dim idxpos As Int = xitem.IndexOf(value)
		If idxpos >= 0 Then
			nItems.add(item)
		End If
	Next
	Return nItems
End Sub


'find records matching these keys key
Sub ListFindKeys(lst As List, prop As String, lstKeys As List) As List
	Dim res As List
	res.Initialize
	For Each k As String In lstKeys
		Dim pos As Int = ListIndexOf(lst, prop, k)
		If pos = -1 Then Continue
		Dim mExist As Map = lst.Get(pos)
		res.Add(mExist)
	Next
	Return res
End Sub

Sub ListAdd(lst As List, obj As Object)
	lst.Add(obj)
End Sub

Sub ListClear(lst As List)
	lst.Initialize
End Sub

'update a list at a particular position, this replaces
Sub ListUpdate(lst As List, prop As String, value As String, item As Map) As List
	Dim pos As Int = ListIndexOf(lst, prop, value)
	If pos = -1 Then Return lst
	'update list at that position
	lst.Set(pos, item)
	Return lst
End Sub

'delete an item from the list
Sub ListDelete(lst As List, prop As String, value As String) As List
	Dim pos As Int = ListIndexOf(lst, prop, value)
	If pos = -1 Then Return lst
	'update list at that position
	lst.RemoveAt(pos)
	Return lst
End Sub

Sub ListDeleteAll(lst As List, prop As String, value As String) As List
	value = CStr(value)
	Dim lstTot As Int = lst.Size - 1
	Dim lstCnt As Int = 0
	For lstCnt = lstTot To 0 Step -1
		Dim rec As Map = lst.Get(lstCnt)
		If rec.ContainsKey(prop) Then
			Dim v As String = rec.get(prop)
			v = CStr(v)
			If v.EqualsIgnoreCase(value) Then
				lst.RemoveAt(lstCnt)
			End If
		End If
	Next
	Return lst
End Sub

Sub ListFindWhere(res As List, props As Map) As Int
	Dim rCnt As Int = 0
	Dim rTot As Int = res.Size - 1
	Dim pTot As Int = props.size
	For rCnt = 0 To rTot
		Dim iFound As Int = 0
		'get the record at the position
		Dim rec As Map = res.Get(rCnt)
		'loop through each position
		For Each k As String In props.Keys
			Dim v As String = props.GetDefault(k,"")
			'does the field at that position match
			If rec.ContainsKey(k) Then
				Dim recvalue As String = rec.GetDefault(k, "")
				v = CStr(v)
				recvalue = CStr(recvalue)
				If recvalue.EqualsIgnoreCase(v) Then
					iFound = iFound + 1
				End If
			End If
		Next
		If iFound = pTot Then
			Return rCnt
		End If
	Next
	Return -1
End Sub

Sub ListSearchWhere(res As List, props As Map) As List
	Dim nlist As List
	nlist.Initialize 
	'
	Dim rCnt As Int = 0
	Dim rTot As Int = res.Size - 1
	Dim pTot As Int = props.size
	For rCnt = 0 To rTot
		Dim iFound As Int = 0
		'get the record at the position
		Dim rec As Map = res.Get(rCnt)
		'loop through each position
		For Each k As String In props.Keys
			Dim v As String = props.GetDefault(k,"")
			'does the field at that position match
			If rec.ContainsKey(k) Then
				Dim recvalue As String = rec.GetDefault(k, "")
				v = CStr(v)
				recvalue = CStr(recvalue)
				If recvalue.EqualsIgnoreCase(v) Then
					iFound = iFound + 1
				End If
			End If
		Next
		If iFound = pTot Then
			nlist.Add(rec)
		End If
	Next
	Return nlist
End Sub

Sub URLSearchParamsFromURL As BANanoObject
	Dim href As String = BANano.Location.GetHref
	Dim url As BANanoObject
	url.Initialize2("URL", href)
	Dim searchParams As BANanoObject = url.GetField("searchParams")
	Return searchParams
End Sub

Sub URLSearchParamsFromMap(params As Map) As BANanoObject
	Dim obj As BANanoObject
	obj.Initialize2("URLSearchParams", params)
	Return obj
End Sub

Sub MapLowerKeys(m As Map) As Map
    Dim nm As Map
    nm.initialize
    For Each strKey As String In m.Keys
        Dim objValue As Object = m.Get(strKey)
        If BANano.IsNull(objValue) Then objValue = ""
        nm.Put(strKey.ToLowerCase,objValue)
    Next
    Return nm
End Sub

Sub SortMapByKeys(om As Map) As Map
	Dim nm As Map = CreateMap()
	Dim nl As List
	nl.Initialize 
	For Each k As String In om.Keys
		nl.Add(k)
	Next
	nl.Sort(True)
	For Each k As String In nl
		Dim v As Object = om.Get(k)
		nm.Put(k, v)
	Next
	Return nm
End Sub

'sort a list of maps by a unique map property
Sub ListOfMapsSort(lst As List, orderBy As String) As List
	If lst.Size = 0 Then Return lst
	Dim fields As List
	fields.Initialize
	For Each fldm As Map In lst
		Dim sname As String = fldm.Get(orderBy)
		Dim sh As SortHelper
		sh.Initialize 
		sh.SortKey = sname
		sh.Value = fldm
		fields.Add(sh)
	Next
	'javascript is case sensitive, make it lowercase
	fields.SortType("sortkey", True)
	Dim sorted As List
	sorted.Initialize
	For Each sh As SortHelper In fields
		sorted.Add(sh.Value)
	Next
	Return sorted
End Sub

'convert date from js date object
Sub FromJSDate(dt As BANanoObject) As String
	Dim yyyy As String = dt.RunMethod("getFullYear", Null).Result
	Dim dd As String = dt.RunMethod("getDate", Null).Result
	Dim mm As Int = dt.RunMethod("getMonth", Null).Result
	mm = BANano.parseInt(mm) + 1
	'pad the details
	dd = PadRight(dd, 2, "0")
	mm = PadRight(mm, 2, "0")
	'
	Dim fd As String = $"${yyyy}-${mm}-${dd}"$
	Return fd
End Sub

Sub GetFileFromEvent (e As BANanoEvent) As Map
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = BANano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Dim filex As Map = res.Get(0)
	Return filex
End Sub

Sub GetFilesFromEvent (e As BANanoEvent) As List
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = BANano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Return res
End Sub

Sub GetIDFromEvent(e As BANanoEvent) As String
	Dim src As String = e.OtherField("srcElement").GetField("id").Result
	Return src
End Sub

'update map mv field with distinct values
Sub MapDistinctMvField(m As Map, key As String, delim As String, value As String)
	value = CStr(value)
	value = value.Trim
	If value = "" Then Return
	Dim ov As String = m.Get(key)
	Dim values As List = StrParse(delim, ov)
	If values.IndexOf(value) = -1 Then
		values.Add(value)
		Dim ou As String = Join(delim, values)
		m.Put(key, ou)
	End If
End Sub

'extract named keys from map and create a new map
Sub MapCopyKeys(o As Map, keysOf As List) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In keysOf
		If o.ContainsKey(k) Then
			Dim v As Object = o.Get(k)
			nm.Put(k, v)
		End If
	Next
	Return nm
End Sub

Sub JoinMapKeys(o As Map, delim As String) As String
	Dim nl As List
	nl.Initialize 
	For Each k As String In o.Keys
		nl.Add(k)
	Next
	Dim x As String = Join(delim, nl)
	Return x
End Sub

Sub JoinMapValues(o As Map, delim As String) As String
	Dim nl As List
	nl.Initialize 
	For Each k As String In o.values
		nl.Add(k)
	Next
	Dim x As String = Join(delim, nl)
	Return x
End Sub

'join a particular key from a list of maps
Sub JoinListOfMapsKeys(o As List, keyName As String, delim As String) As String
	Dim nl As List
	nl.Initialize 
	For Each m As Map In o
		Dim v As String = m.Get(keyName)
		nl.Add(v)
	Next
	Dim x As String = Join(delim, nl)
	Return x
End Sub

Sub GetRawStyles(varStyles As String) As Map
	varStyles = CStr(varStyles)
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	varStyles = varStyles.Replace("=", ":")
	varStyles = varStyles.Replace(",", ";")
	varStyles = varStyles.Replace("'", "")
	varStyles = varStyles.trim
	Dim mxItems As List = StrParse(";", varStyles)
	mxItems = ListRemoveDuplicates(mxItems)
	Dim ms As Map = CreateMap()
	For Each mtx As String In mxItems
		mtx = mtx.Trim
		If mtx = "" Then Continue
		Dim k As String = MvField(mtx,1,":")
		Dim v As String = MvField(mtx,2,":")
		v = CStr(v)
		k = CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then
			k = DeCamelCase(k)
			Select Case k
				Case "padding-x", "padding-horizontal"
					ms.put("padding-left", v)
					ms.put("padding-right", v)
				Case "padding-y", "padding-vertical"
					ms.put("padding-top", v)
					ms.put("padding-bottom", v)
				Case "margin-x", "margin-horizontal"
					ms.put("margin-left", v)
					ms.put("margin-right", v)
				Case "margin-y", "margin-vertical"
					ms.put("margin-top", v)
					ms.put("margin-bottom", v)
				Case "resize-mode"
					Select Case v
					Case "stretch"
						ms.put("object-fit", "fill")
					Case "center"
						ms.put("object-fit", "none")
						ms.put("object-position", "center")
					Case Else
						ms.put("object-fit", v)
					End Select
				Case Else
					ms.put(k, v)
			End Select
		End If
	Next
	Return ms
End Sub

Sub GetRawMargins(varStyles As String) As Map
	Dim ms As Map = CreateMap()
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	varStyles = varStyles.Replace(",", ";")
	varStyles = varStyles.Replace("=", ":")
	varStyles = varStyles.trim
	Dim mxItems As List = StrParse(";", varStyles)
	mxItems = ListRemoveDuplicates(mxItems)
	For Each mtx As String In mxItems
		mtx = mtx.Replace("?", "")
		mtx = mtx.Trim
		If mtx = "" Then Continue
		Dim k As String = MvField(mtx,1,":")
		Dim v As String = MvField(mtx,2,":")
		v = CStr(v)
		k = CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then
			Select Case k
				Case "a"
					ms.put("margin-top", v)
					ms.put("margin-left", v)
					ms.put("margin-bottom", v)
					ms.put("margin-right", v)
				Case "x"
					ms.put("margin-left", v)
					ms.put("margin-right", v)
				Case "y"
					ms.put("margin-top", v)
					ms.put("margin-bottom", v)
				Case "t"
					ms.put("margin-top", v)
				Case "b"
					ms.put("margin-bottom", v)
				Case "l"
					ms.put("margin-left", v)
				Case "r"
					ms.put("margin-right", v)
			End Select
		End If
	Next
	Return ms
End Sub

Sub GetRawPadding(varStyles As String) As Map
	Dim ms As Map = CreateMap()
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	varStyles = varStyles.Replace(",", ";")
	varStyles = varStyles.ToLowerCase
	varStyles = varStyles.Replace("=", ":")
	varStyles = varStyles.trim
	Dim mxItems As List = StrParse(";", varStyles)
	mxItems = ListRemoveDuplicates(mxItems)
	For Each mtx As String In mxItems
		mtx = mtx.Replace("?", "")
		mtx = mtx.Trim
		If mtx = "" Then Continue
		Dim k As String = MvField(mtx,1,":")
		Dim v As String = MvField(mtx,2,":")
		v = CStr(v)
		k = CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then
			Select Case k
				Case "a"
					ms.put("padding-top", v)
					ms.put("padding-left", v)
					ms.put("padding-bottom", v)
					ms.put("padding-right", v)
				Case "x"
					ms.put("padding-left", v)
					ms.put("padding-right", v)
				Case "y"
					ms.put("padding-top", v)
					ms.put("padding-bottom", v)
				Case "t"
					ms.put("padding-top", v)
				Case "b"
					ms.put("padding-bottom", v)
				Case "l"
					ms.put("padding-left", v)
				Case "r"
					ms.put("padding-right", v)
			End Select
		End If
	Next
	Return ms
End Sub

Sub GetRawClasses(varStyles As String) As List
	varStyles = varStyles.Replace(" ", ";")
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	varStyles = varStyles.trim
	Dim mxItems As List = StrParse(";", varStyles)
	mxItems = ListRemoveDuplicates(mxItems)
	Return mxItems
End Sub


Sub GetRawAttributes(varStyles As String) As Map
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	varStyles = varStyles.Replace(" ", ";")
	varStyles = varStyles.Replace("=", ":")
	varStyles = varStyles.trim
	Dim mxItems As List = StrParse(";", varStyles)
	mxItems = ListRemoveDuplicates(mxItems)
	Dim ms As Map = CreateMap()
	For Each mtx As String In mxItems
		mtx = mtx.Trim
		If mtx = "" Then Continue
		Dim k As String = MvField(mtx,1,":")
		Dim v As String = MvField(mtx,2,":")
		v = CStr(v)
		k = CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then
			ms.put(k, v)
		End If
	Next
	Return ms
End Sub


Sub BuildStyles(o As Map) As String
	Dim colStyle As StringBuilder
	colStyle.Initialize
	'
	For Each k As String In o.Keys
		Dim v As String = o.GetDefault(k, "")
		v = CStr(v)
		k = CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then 
			colStyle.Append($"${k}:${v};"$)
		End If
	Next
	Dim sout As String = colStyle.ToString
	colStyle.Initialize
	Return sout
End Sub

Sub BuildAttributes(o As Map) As String
	Dim colStyle As StringBuilder
	colStyle.Initialize
	'
	For Each k As String In o.Keys
		Dim v As String = o.GetDefault(k, "")
		v = CStr(v)
		k = CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then 
			colStyle.Append($"${k}="${v}" "$)
		End If
	Next
	Dim sout As String = colStyle.ToString
	colStyle.Initialize
	Return sout
End Sub


'join a map value that is a list to up to 2 levels
'dot notatiton
Sub MapJoinKey(o As Map, keyOf As String, delim As String) As String
	If keyOf.IndexOf(".") = -1 Then
		Dim l As List = o.Get(keyOf).As(List)
		Dim x As String = Join(delim, l)
		Return x
	Else
		Dim k1 As String = MvField(keyOf, 1, ".")
		Dim k2 As String = MvField(keyOf, 2, ".")
		Dim nl As List
		nl.Initialize
		Dim l As List = o.Get(k1).As(List)
		For Each r As Map In l
			Dim v As Object = r.Get(k2)
			nl.Add(v)
		Next
		Dim x As String = Join(delim, nl)
		Return x
	End If
End Sub

Sub OptionsToMap(opt As String) As Map
	opt = opt.replace("|", ";")
	Dim litems As List = StrParse(";", opt)
	litems = ListTrimItems(litems)
	
	Dim m As Map = CreateMap()
	For Each item As String In litems
		item = item.Trim
		Dim hascolon As Int = item.IndexOf(":")
		If hascolon = -1 Then
			m.Put(item, item)
		Else
			Dim fpart As String = MvField(item, 1, ":")
			fpart = fpart.Trim
			Dim spart As String = MvField(item, 2, ":")
			spart = spart.Trim
			m.Put(fpart, spart)
		End If
	Next
	Return m
End Sub

Sub SetElementSize(elID As String, prefix As String, w As String)
	If w = "" Then Return
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elID}"$)
	Dim c As String = FixSize(prefix, w)
	el.AddClass(c)
End Sub

Sub SetWidth(elID As String, w As String)
	If w = "" Then Return
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elID}"$)
	Dim mLastColor As String = el.GetData("w")
	mLastColor = CStr(mLastColor)
	If mLastColor <> "" Then el.RemoveClass(mLastColor)
	Dim c As String = FixSize("w", w)
	el.AddClass(c)
	el.SetData("w", c)
End Sub

Sub SetHeight(elID As String, w As String)
	If w = "" Then Return
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elID}"$)
	Dim mLastColor As String = el.GetData("h")
	mLastColor = CStr(mLastColor)
	If mLastColor <> "" Then el.RemoveClass(mLastColor)
	Dim c As String = FixSize("h", w)
	el.AddClass(c)
	el.SetData("h", c)
End Sub


Sub SetColor(elID As String, prefix As String, s As String)
	If s = "" Then Return
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elID}"$)
	Dim mLastColor As String = el.GetData("color")
	mLastColor = CStr(mLastColor)
	If mLastColor <> "" Then el.RemoveClass(mLastColor)
	Dim c As String = FixColor(prefix, s)
	el.AddClass(c)
	el.SetData("color", c)
End Sub

Sub SetColorIntensity(elID As String, prefix As String, c As String, i As String)
	If prefix = "" And c = "" Then Return
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elID}"$)
	Dim mLastColor As String = el.GetData("color")
	mLastColor = CStr(mLastColor)
	If mLastColor <> "" Then el.RemoveClass(mLastColor)
	Dim c1 As String = FixColorIntensity(prefix, c, i)
	el.AddClass(c1)
	el.SetData("color", c1)
End Sub

Sub SetTextColor(elID As String, prefix As String, s As String)
	If s = "" Then Return
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elID}"$)
	Dim mLastColor As String = el.GetData("textcolor")
	mLastColor = CStr(mLastColor)
	If mLastColor <> "" Then el.RemoveClass(mLastColor)
	Dim c As String = FixColor(prefix, s)
	el.AddClass(c)
	el.SetData("textcolor", c)
End Sub

Sub SetTextColorIntensity(elID As String, prefix As String, c As String, i As String)
	If prefix = "" And c = "" Then Return
	elID = CleanID(elID)
	If BANano.Exists($"#${elID}"$) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${elID}"$)
	Dim mLastColor As String = el.GetData("textcolor")
	mLastColor = CStr(mLastColor)
	If mLastColor <> "" Then el.RemoveClass(mLastColor)
	Dim c1 As String = FixColorIntensity(prefix, c, i)
	el.AddClass(c1)
	el.SetData("textcolor", c1)
End Sub

Sub Initials(FullName As String) As String
	Dim parts As List = StrParse(" ", FullName)
	If parts.Size = 1 Then
		Dim fn As String = parts.Get(0)
		Dim xfn As String = Left1(fn, 1)
		xfn = xfn.ToUpperCase
		Return xfn
	Else
		Dim fn1 As String = parts.Get(0)
		Dim fn2 As String = MvField(FullName, -1, " ")
		Dim xfn1 As String = Left1(fn1, 1)
		Dim xfn2 As String = Left1(fn2, 1)
		Dim afn As String = $"${xfn1}${xfn2}"$
		afn = afn.ToUpperCase
		Return afn
	End If
End Sub

'return 1 if blank else zero
Sub OneIfBlankElseZero(svalue As String) As Int
	Dim v As String = CStr(svalue)
	v = v.Trim
	If v = "" Then
		Return 1
	Else
		Return 0
	End If
End Sub

' Gets the current location of the user
public Sub GetLocation(Options As Object) As BANanoGeoPosition
	Return BANano.Await(BANano.GetGeoPosition(CreateMap("enableHighAccuracy": True, "timeout": 5000, "maximumAge": 0)))
End Sub

' returns is a certain Latitude/Longitude is within a circle around another Latitude/Logitude
public Sub IsPositionInCircle(posLat As Double, posLon As Double, circleLat As Double, circleLon As Double, radiusInMeter As Long) As Boolean
	Dim Lat1, Lat2, dlat, dlon As Double
	Lat1 = deg2rad(circleLat)
	Lat2 = deg2rad(posLat)
	dlat = deg2rad(posLat - circleLat)
	dlon = deg2rad(posLon - circleLon)
	
	Dim a As Double = Sin(dlat/2) * Sin(dlat/2) + Cos(Lat1) * Cos(Lat2) * Sin(dlon/2) * Sin(dlon/2)
	Dim c As Double = 2 * ATan2(Sqrt(a), Sqrt(1-a))
	Dim distance As Double = 6378137 * c ' Earth Radius in Meters
	
	Return distance <= radiusInMeter
End Sub

' converts degrees to radians
public Sub deg2rad(Deg As Double) As Double 'ignore
	Return Deg * cPI / 180
End Sub

' converts radians to degrees
public Sub rad2deg(Rad As Double) As Double 'ignore
	Return Rad * 180 / cPI
End Sub

'check if a field exists in an element
Sub FieldExists(el As BANanoElement, fldName As String) As Boolean
	If el.ToObject.GetField(fldName) = BANano.UNDEFINED Then Return False
	Return True
End Sub

Sub OnEventMethod(el As BANanoElement, event As String, Module As Object, MethodName As String, args As List)		'ignore
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.CallBack(Module, MethodName, Array(e))
	el.RunMethod("on", Array(event, cb))
End Sub

'get element by data
Sub GetElementByData(dataattr As String, value As String) As BANanoElement
	dataattr = dataattr.tolowercase
	Dim skey As String = $"[data-${dataattr}='${value}']"$
	Dim dataId As BANanoElement
	dataId.Initialize(skey)
	Return dataId
End Sub

''add a class on condition
'public Sub AddClassOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
'	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
'	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
'	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
'	If varShouldBe <> varCondition Then Return
'	If BANano.IsNumber(varClass) Then varClass = CStr(varClass)
'	AddClass(varClass)
'End Sub
'
''add an attr on condition
'public Sub AddAttrOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Object)
'	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
'	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
'	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
'	If varShouldBe <> varCondition Then Return
'	If BANano.IsNumber(varClass) Then varClass = CStr(varClass)
'	varClass = varClass.trim
'	If varClass = "" Then Return
'	AddAttr(varClass, varShouldBe)
'End Sub
'
''add an attr on condition
'public Sub AddStyleOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Object)
'	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
'	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
'	If varShouldBe <> varCondition Then Return
'	AddStyle(varClass, varCondition)
'End Sub
'
'public Sub AddStyleOnConditionTrue(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
'	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
'	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
'	If varShouldBe Then AddStyle(varClass, varCondition)
'End Sub
'
'Sub BindAttr(attr As String, value As String)
'	AddAttr($":${attr}"$, value)
'End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
public Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return BANano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
End Sub
#if JavaScript
function BANano_r2fFIX(number, decimals, minf) {
var decimals2=minf;
if (decimals2<decimals) {decimals2=decimals}
if (decimals2>decimals) {decimals=decimals2}
let v = +(Math.round(number + "e+" + decimals) + "e-" + decimals2);
var s = +v.toFixed(decimals2);
if (s.countDecimals()<=minf) {
return v.toFixed(minf);
} else {
return v.toFixed(decimals2);
}
};
Number.prototype.countDecimals = function () {
if (Math.floor(this.valueOf()) === this.valueOf()) return 0;
var str = this.toString();
if (str.indexOf(".") !== -1 && str.indexOf("-") !== -1) {
return str.split("-")[1] || 0;
} else if (str.indexOf(".") !== -1) {
return str.split(".")[1].length || 0;
}
return str.split("-")[1] || 0;
};
function NumberFormat2(number, minimumIntegers, maximumFractions, minimumFractions,groupingUsed) {
return BANano_nf2(BANano_r2fFIX(number,maximumFractions,minimumFractions),minimumIntegers,groupingUsed);
}
#End If

'Sub IsMap (str As String) As Boolean
'	Try
'		Dim M As Map = str.As(JSON).ToMap
'		Return M.IsInitialized
'	Catch
'		Return False
'	End Try
'End Sub
'
'Sub IsList (str As String) As Boolean
'	Try
'		Dim L As List = str.As(JSON).ToList
'		Return L.IsInitialized
'	Catch
'		Return False
'	End Try
'End Sub

#if javascript
// Uint8Array to Base64
        const convertBitArrtoB64 = (bitArr) => (btoa(bitArr.reduce((data, byte) => data + String.fromCharCode(byte), '')));
        // Base64 to Uint8Array
        const convertB64ToBitArr = (b64Str) => (Uint8Array.from(atob((b64Str.includes(';base64,') ? (b64Str.split(','))[1] : b64Str)), (v) => v.charCodeAt(0)));
		
		function htmlToElement(html) {
            let documentFragment = document.createDocumentFragment();
            let template = document.createElement('template');
            template.innerHTML = html.trim();
            for (let i = 0, e = template.content.childNodes.length; i < e; i++) {
                documentFragment.appendChild(template.content.childNodes[i].cloneNode(true));
            }
            return documentFragment;
        }
#End If

'typeOf - width, style, color, radius
public Sub GetRawBorders(typeof As String, varOffsets As String) As Map
	Dim mm As Map = CreateMap("a":"", "t":"", "r":"", "b":"", "l":"", "tl":"", "tr":"", "bl":"", "br":"")
	varOffsets = CStr(varOffsets)
	varOffsets = varOffsets.Replace(" ", ";")
	varOffsets = varOffsets.Replace(CRLF, ";").Replace("<br/>", ";")
	varOffsets = varOffsets.trim
	If varOffsets = "" Then Return mm
	varOffsets = varOffsets.Replace(",", ";")
	varOffsets = varOffsets.Replace(":", "=")
	varOffsets = varOffsets.replace("?","")
	varOffsets = varOffsets.Replace("'", "")
	varOffsets = varOffsets.Replace(QUOTE, "")
	varOffsets = varOffsets.trim
	'
	Dim ss As List = StrParse(";", varOffsets)
	ss = ListRemoveDuplicates(ss)
	For Each item As String In ss
		Dim k As String = MvField(item,1,"=")
		Dim v As String = MvField(item,2,"=")
		k = CStr(k).trim
		v = CStr(v).trim
		Dim nk As String = ""
		Select Case k
			Case "a"
				nk = $"border-${typeof}"$
			Case "t"
				nk = $"border-top-${typeof}"$
			Case "r"
				nk = $"border-right-${typeof}"$
			Case "b"
				nk = $"border-bottom-${typeof}"$
			Case "l"
				nk = $"border-left-${typeof}"$
			Case "tl"
				nk = $"border-top-left-${typeof}"$
			Case "tr"
				nk = $"border-top-right-${typeof}"$
			Case "bl"
				nk = $"border-bottom-left-${typeof}"$
			Case "br"
				nk = $"border-bottom-right-${typeof}"$
		End Select
		If nk <> "" And v <> "" Then
			mm.Put(nk, v)
		End If
	Next
	Return mm
End Sub


Sub GetRawPositions(varStyles As String) As Map
	varStyles = CStr(varStyles)
	Dim ms As Map = CreateMap()
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	varStyles = varStyles.Replace("=", ":")
	varStyles = varStyles.trim
	Dim mxItems As List = StrParse(";", varStyles)
	mxItems = ListRemoveDuplicates(mxItems)
	For Each mtx As String In mxItems
		mtx = mtx.Replace("?", "")
		mtx = mtx.Trim
		If mtx = "" Then Continue
		Dim k As String = MvField(mtx,1,":")
		Dim v As String = MvField(mtx,2,":")
		v = CStr(v)
		k = CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then
			Select Case k
				Case "t"
					ms.Put("top", v)
				Case "b"
					ms.Put("bottom", v)
				Case "r"
					ms.Put("right", v)
				Case "l"
					ms.Put("left", v)
				Case Else
					ms.Put(k, v)
			End Select
		End If
	Next
	Return ms
End Sub

'parse and trim items
Sub StrParseTrim(delim As String, inputString As String) As List
	Dim nl As List
	nl.Initialize
	Try
		inputString = CStr(inputString)
		If BANano.IsNull(inputString) Or BANano.IsUndefined(inputString) Then inputString = ""
		If inputString = "" Then Return nl
		If inputString.IndexOf(delim) = -1 Then
			nl.Add(inputString)
		Else
			nl = BANano.Split(delim,inputString)
		End If
		Dim nl1 As List = ListTrimItems(nl)
		Return nl1
	Catch
		'Log(LastException)
		Return nl
	End Try
End Sub

Sub GetMarginPadding(varOffsets As String) As Map
	Dim mm As Map = CreateMap("a":"", "x":"", "y":"", "t":"", "b":"", "l":"", "r":"")
	If BANano.IsUndefined(varOffsets) Or BANano.IsUndefined(varOffsets) Then Return mm
	varOffsets = varOffsets.Replace(":", "=")
	varOffsets = varOffsets.replace("-","|")
	varOffsets = varOffsets.replace(",","|")
	varOffsets = varOffsets.replace(";","|")
	varOffsets = varOffsets.replace("|",",")
	varOffsets = varOffsets.replace("?","")
	varOffsets = varOffsets.trim
	'
	Dim ss As List = StrParse(",", varOffsets)
	For Each item As String In ss
		Dim k As String = MvField(item,1,"=")
		Dim v As String = MvField(item,2,"=")
		k = CStr(k).trim
		v = CStr(v).trim
		mm.Put(k, v)
	Next
	Return mm
End Sub
Sub GetSizes(varOffsets As String) As Map
	Dim mm As Map = CreateMap("xs":"", "sm":"", "md":"", "lg":"", "xl":"")
	If BANano.IsUndefined(varOffsets) Or BANano.IsUndefined(varOffsets) Then Return mm
	varOffsets = varOffsets.Replace(":", "=")
	varOffsets = varOffsets.replace("-","|")
	varOffsets = varOffsets.replace(",","|")
	varOffsets = varOffsets.replace(";","|")
	varOffsets = varOffsets.replace("|",",")
	varOffsets = varOffsets.replace("?","")
	varOffsets = varOffsets.replace(" ","")
	varOffsets = varOffsets.trim
	'
	Dim ss As List = StrParse(",", varOffsets)
	For Each item As String In ss
		Dim k As String = MvField(item,1,"=")
		Dim v As String = MvField(item,2,"=")
		k = CStr(k).trim
		v = CStr(v).trim
		mm.Put(k, v)
	Next
	Return mm
End Sub


Sub LoadAssetsOnDemand(Key As String, Items As List)
	Dim iTot As Int = Items.size - 1
	Dim iCnt As Int = 0
	For iCnt = 0 To iTot
		Dim fn As String = Items.Get(iCnt)
		If fn.EndsWith(".js") Then
			If fn.StartsWith("./scripts/") = False Then
				Items.Set(iCnt, $"./scripts/${fn}"$)
			End If
		End If
		If fn.EndsWith(".css") Then
			If fn.StartsWith("./styles/") = False Then
				Items.Set(iCnt, $"./styles/${fn}"$)
			End If
		End If
	Next
	Dim pathsNotFound() As String
	If BANano.AssetsIsDefined(Key) = False Then
		'load the assets
		pathsNotFound = BANano.AssetsLoadWait(Key, Items)
		If BANano.IsNull(pathsNotFound) = False Then
			BANano.Console.Warn($"${Key} not fully loaded..."$)
			For Each path As String In pathsNotFound
				Log(path)
			Next
		End If
	End If
End Sub

Sub CleanAttributes(varStyles As String) As String
	Dim ms As Map = GetRawStyles(varStyles)
	Dim sbOut As StringBuilder
	sbOut.Initialize
	For Each k As String In ms.Keys
		Dim v As String = ms.Get(k)
		sbOut.Append(k)
		sbOut.Append(":")
		sbOut.Append(v)
		sbOut.Append(";")
	Next
	Dim strOut As String = sbOut.ToString
	strOut = RemDelim(strOut,";")
	Return strOut
End Sub

Sub CleanStyles(varStyles As String) As String
	Dim ms As Map = GetRawStyles(varStyles)
	Dim sbOut As StringBuilder
	sbOut.Initialize
	For Each k As String In ms.Keys
		Dim v As String = ms.Get(k)
		sbOut.Append(k)
		sbOut.Append(":")
		sbOut.Append(v)
		sbOut.Append(";")
	Next
	Dim strOut As String = sbOut.ToString
	strOut = RemDelim(strOut,";")
	Return strOut
End Sub

Sub CleanClasses(varStyles As String) As String
	Dim lst As List = GetRawClasses(varStyles)
	Dim sclasses As String = Join(" ", lst)
	sclasses = sclasses.trim
	Return sclasses
End Sub

'execute a fetch and get the file as blob
Sub FetchAsFileBlob(url As String, name As String) As BANanoObject
	Dim fetch As BANanoFetch
	Dim fetchResponse As BANanoFetchResponse
	Dim blob As BANanoObject
  
	Dim prom As BANanoPromise
  
	' we are going to use a Promise Wrapper as we want to use Await() for it.
	prom.NewStart
	fetch.Initialize(url, Null)
	fetch.Then(fetchResponse)
	' resolve the blob
	Return fetchResponse.Blob
	fetch.Then(blob) 'ignore
	' Use ReturnThen/ReturnElse for the final result in case of a Promise.NewStart/NewEnd wrapper
	BANano.ReturnThen(blob)
	fetch.End
	prom.NewEnd
  
	' wait from the Promise
	Dim result As BANanoObject = BANano.Await(prom)
  
	' make a new File object
	Dim f As BANanoObject
	f.Initialize2("File",Array(Array(result), name, CreateMap("type": result.getfield("type"))))
	Return f
End Sub

'DownloadSave("anele.txt", "text/plain", theStr)
public Sub DownloadSave(fileName As String, contentType As String, content As Object)
	Dim blob As BANanoObject
	blob.Initialize2("Blob", Array(Array(content), CreateMap("type": contentType)))
	DownloadOnClick(fileName, blob)
End Sub

public Sub DownloadOnClick(fileName As String, blob As Object)
	Dim document As BANanoObject
	Dim link As BANanoObject	
	document.Initialize("document")
    link = document.RunMethod("createElement", "a")
	link.SetField("href", BANano.createObjectURL(blob))
	link.SetField("download", fileName)
	link.RunMethod("click", Null)
	BANano.revokeObjectURL(link.GetField("href"))
End Sub

Sub FileExistWait(fn As String) As Boolean
	Dim error As Object
	Dim fetch As BANanoFetch
	Dim fetchResponse As BANanoFetchResponse
	Dim prom As BANanoPromise
	'
	Dim bfo As BANanoFetchOptions
	bfo.Method = "HEAD"
	'_prom = new Promise(function(resolve,reject) {
	prom.NewStart
	'_fetch=fetch(_fn,_bfo);
	fetch.Initialize(fn, bfo)
	'_fetch.then(function(_fetchresponse) {
	fetch.Then(fetchResponse)
	'resolve(_fetchresponse.ok);
	BANano.ReturnThen(fetchResponse.OK)
	'}).catch(function(_error) {
	fetch.Else(error)
	'reject(false);
	BANano.ReturnElse(False)
	'});
	fetch.End
	'});
	prom.NewEnd
      
	'_res=await _prom;
	Dim res As Boolean = BANano.Await(prom)
	Return res
End Sub

Sub ExtractDateOfBirthFromRSAID(idNumber As String) As String
	If idNumber.Length <> 13 Then 
		idNumber = PadRight(idNumber, 13, "0")
	End If
	Dim iyear As Int = Left1(idNumber,2)
	Dim imonth As Int = StrMid1(idNumber,3,2)
	Dim iday As Int = StrMid1(idNumber,5,2)
	'
	Dim formulajs As BANanoObject
	formulajs.Initialize("formulajs")
	Dim dob As BANanoObject = formulajs.RunMethod("DATE", Array(iyear, imonth, iday))
	Dim ndob As BANanoObject
	ndob.Initialize2("Date", dob)
	Dim yyyy As String = ndob.RunMethod("getFullYear", Null).result
	Dim mm As Int = ndob.RunMethod("getMonth", Null).result
	Dim dd As String = ndob.RunMethod("getDate", Null).result
	mm = BANano.parseInt(mm) + 1
	mm = PadRight(mm, 2, "0")
	dd = PadRight(dd, 2, "0")
	'
	Select Case yyyy
	Case "1900"
		yyyy = "2000"	
	Case "1901"
		yyyy = "2001"
	Case "1902"
		yyyy = "2002"
	Case "1903"
		yyyy = "2003"
	Case "1904"
		yyyy = "2004"
	Case "1905"
		yyyy = "2005"
	Case "1906"
		yyyy = "2006"
	Case "1907"
		yyyy = "2007"
	Case "1908"
		yyyy = "2008"
	Case "1909"
		yyyy = "2009"
	End Select
	Dim nDate As String = $"${yyyy}-${mm}-${dd}"$
	Return nDate
End Sub

Sub CalculateAge(birthDateString As String) As Int
	If birthDateString = "" Then Return 0
	Dim sToday As String = DateNow
	Dim dyears As Int = YearDiff(sToday, birthDateString)
	dyears = CInt(dyears)
	dyears = Abs(dyears)
	Return dyears
End Sub

Sub GetAddressFromLatLon(dLat As Double, dLon As Double, limitTo As Int) As Address
	Dim sSearch As String = $"${dLat},${dLon}"$
	Dim j As SDUIFetch
	j.Initialize("https://nominatim.openstreetmap.org/search")
	j.AddParameter("q", sSearch)
	j.AddParameter("format", "json")
	j.AddParameter("limit", limitTo)
	j.AddParameter("addressdetails", "1")
	j.SetContentTypeApplicationJSON
	j.NoCache = True
	'execute the post
	BANano.Await(J.GetWait)
	Dim address As Map = CreateMap()
	Dim addr As Address
	addr.Initialize
	If j.Success Then
		Dim items As List = j.ResponseList
		If items.Size >= 0 Then
			address = items.Get(0)
			addr.city = GetRecursive(address, "address.city")
			addr.road = GetRecursive(address, "address.road")
			addr.suburb = GetRecursive(address, "address.suburb")
			addr.municipality = GetRecursive(address, "address.municipality")
			addr.state = GetRecursive(address, "address.state")
			addr.postcode = GetRecursive(address, "address.postcode")
			addr.country = GetRecursive(address, "address.country")
			addr.countrycode = GetRecursive(address, "address.country_code")
			addr.displayname = address.Get("display_name")
			addr.name = address.Get("name")
			addr.lat = address.Get("lat")
			addr.lon = address.Get("lon")
		End If
	End If
	Return addr
End Sub

public Sub FromBase64(s As String) As String
	Return BANano.RunJavascriptMethod("Base64.decode", Array As String(s))
End Sub

public Sub ToBase64(s As String) As String
	Return BANano.RunJavascriptMethod("Base64.encode", Array As String(s))
End Sub

public Sub FromBase64Bytes(s As String) As Byte()
	Return BANano.RunJavascriptMethod("Base64.atob", Array As String(s))
End Sub

public Sub ToBase64Bytes(s As String) As Byte()
	Return BANano.RunJavascriptMethod("Base64.btoa", Array As String(s))
End Sub

public Sub FromBase64URI(s As String) As String
	Return BANano.RunJavascriptMethod("Base64.decode", Array As String(s))
End Sub

public Sub ToBase64URI(s As String) As String
	Return BANano.RunJavascriptMethod("Base64.encodeURI", Array As String(s))
End Sub

Public Sub GetMimeTypeByExtension(Extension As String) As String
	Extension = Extension.Replace(".","").ToLowerCase
	Select Extension
		Case "png","bmp","ico"
			Return "image/" & Extension
		Case "mp4", "wmv", "mov", "flv",  "mkv"
			Return "video/" & Extension
		Case "mp3",   "m4a",  "flac", "wma", "aiff"
			Return "audio/" & Extension
		Case "aac"
			Return "audio/aac"
		Case "abw"
			Return "application/x-abiword"
		Case "arc" 
			Return "application/octet-stream"
		Case "avi" 
			Return "video/x-msvideo"
		Case "azw" 
			Return "application/vnd.amazon.ebook"
		Case "bin" 
			Return "application/octet-stream"
		Case "bz" 
			Return "application/x-bzip"
		Case "bz2" 
			Return "application/x-bzip2"
		Case "csh" 
			Return "application/x-csh"
		Case "css" 
			Return "text/css"
		Case "csv" 
			Return "text/csv"
		Case "doc" 
			Return "application/msword"
		Case "epub" 
			Return "application/epub+zip"
		Case "gif" 
			Return "image/gif"
		Case "htm", "html" 
			Return "text/html"
		Case "ico" 
			Return "image/x-icon"
		Case "ics" 
			Return "text/calendar"
		Case "jar" 
			Return "application/java-archive"
		Case "jpeg","jpg" 
			Return "image/jpeg"
		Case "js" 
			Return "application/javascript"
		Case "json" 
			Return "application/json"
		Case "mid","midi" 
			Return "audio/midi"
		Case "mpeg" 
			Return "video/mpeg"
		Case "mpkg" 
			Return "application/vnd.apple.installer+xml"
		Case "odp" 
			Return "application/vnd.oasis.opendocument.presentation"
		Case "ods" 
			Return "application/vnd.oasis.opendocument.spreadsheet"
		Case "odt"
			Return "application/vnd.oasis.opendocument.text"
		Case "oga" 
			Return "audio/ogg"
		Case "ogv" 
			Return "video/ogg"
		Case "ogx"
			Return "application/ogg"
		Case "pdf" 
			Return "application/pdf"
		Case "ppt" 
			Return "application/vnd.ms-powerpoint"
		Case "rar" 
			Return "application/x-rar-compressed"
		Case "rtf" 
			Return "application/rtf"
		Case "sh" 
			Return "application/x-sh"
		Case "svg" 
			Return "image/svg+xml"
		Case "swf" 
			Return "application/x-shockwave-flash"
		Case "tar" 
			Return "application/x-tar"
		Case "tif","tiff"
			Return "image/tiff"
		Case "ttf" 
			Return "font/ttf"
		Case "vsd" 
			Return "application/vnd.visio"
		Case "wav" 
			Return "audio/x-wav"
		Case "weba"
			Return "audio/webm"
		Case "webm" 
			Return "video/webm"
		Case "webp" 
			Return "image/webp"
		Case "woff" 
			Return "font/woff"
		Case "woff2" 
			Return "font/woff2"
		Case "xhtml" 
			Return "application/xhtml+xml"
		Case "xls" 
			Return "application/vnd.ms-excel"
		Case "xml" 
			Return "application/xml"
		Case "xul" 
			Return "application/vnd.mozilla.xul+xml"
		Case "zip" 
			Return "application/zip"
		Case "3gp" 
			Return "video/3gpp audio/3gpp if it doesn't contain video"
		Case "3g2" 
			Return "video/3gpp2 audio/3gpp2 if it doesn't contain video"
		Case "7z" 
			Return "application/x-7z-compressed"			
		Case Else
			Log("unknown mime type")
			Return ""
	End Select
End Sub

'convert unix time to normal date
Sub UnixToNormalDate(udt As String) As String
	Dim res As String = BANano.RunJavascriptMethod("unixToNormalDate", Array(udt))
	Return res
End Sub

'extract first number of words from a string
Sub ExtractFirstWords(input As String, numwords As Int) As String
	' Split the string into an array of words
	Dim words As List = StrParse(" ", input)
	
	' Check if the input has fewer than number of words
	If words.size <= numwords Then
		Return input.Trim
	End If
    
	' Join the first 5 words and return the result
	Dim result As StringBuilder
	result.Initialize 
	For i = 0 To (numwords - 1)
		result.Append(words.Get(i))
		result.Append(" ")
	Next
	' Return the trimmed result
	Return result.ToString.trim
End Sub



#if javascript
function unixToNormalDate(unixTimestamp) {
    // Convert Unix timestamp from seconds to milliseconds
    const date = new Date(unixTimestamp * 1000);
    
    // Get individual date components
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0'); // Months are 0-indexed
    const day = String(date.getDate()).padStart(2, '0');
    
    // Get individual time components
    const hours = String(date.getHours()).padStart(2, '0');
    const minutes = String(date.getMinutes()).padStart(2, '0');
    
    // Format and return the date string in YYYY-MM-DD HH:MM format
    return `${year}-${month}-${day} ${hours}:${minutes}`;
}
#End If