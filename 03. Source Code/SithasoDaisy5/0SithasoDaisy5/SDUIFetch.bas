B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.8
@EndOfDesignText@
#IgnoreWarnings:12
'https://www.scrapingbee.com/curl-converter/javascript-fetch/

Private Sub Class_Globals
	Private BANano As BANano 'ignore
	Private mError As String
	Public Success As Boolean
	Public Response As Map
	Private parameters As Map
	Private vdata As Map
	Private vbaseURL As String
	Private headers As Map
	Public OK As Boolean
	Public Status As String
	Public StatusText As String
	Private bNoCors As Boolean
	Private bNoCache As Boolean = False
	Private sReferrerPolicy As String
	Private obaseURL As String
	Public fetchOptions As BANanoFetchOptions
	Public fetch As BANanoFetch
	Public fetchResponse As BANanoFetchResponse
	Public PostDataAsSearchParams As Boolean
	Public Body As String
	Private sredirect As String = ""
	Private schema As Map
	Public const DB_BOOL As String = "BOOL"
	Public const DB_INT As String = "INT"
	Public const DB_STRING As String = "STRING"
	Public const DB_DOUBLE As String = "DOUBLE"
	Private formData As BANanoObject
	Public GetHeadersFromFormData As Boolean = False
	Private bHasFormData As Boolean = False
	Public Mode As String 
	Public ShowLog As Boolean
End Sub


'<code>
''execute the fetch
'Dim j As SDUIFetch
''initialize the fetch with the base url
'j.Initialize("https://api.funtranslations.com/translate/minion.json")
''add a parameters
'j.AddParameter("text", txtMessage.value)
''set content type
'j.SetContentTypeApplicationJSON
''add header
'j.AddHeader("X-Funtranslations-Api-Secret", "")
'j.NoCache = True
''execute the post
'BANano.Await(J.PostWait)
'If j.Success Then
'	Dim Response As Map = j.response
'	If Response.ContainsKey("contents") Then
'		Dim minionTaal As String = UI.GetRecursive(Response, "contents.translated")
'		txtConvert.Value = minionTaal
'	End If
'Else	
'	txtConvert.Value = j.ErrorMessage
'End If
'</code>
Public Sub Initialize(url As String)
	' TargetModule is not used here
	vbaseURL = url
	obaseURL = url
	parameters.Initialize
	vdata.Initialize
	headers.Initialize
	OK = False
	Status = ""
	StatusText = ""
	bNoCors = False
	bNoCache = False
	sReferrerPolicy = ""
	fetchOptions.Initialize
	PostDataAsSearchParams = False
	Body = ""
	sredirect = ""
	schema.Initialize 
	GetHeadersFromFormData = False
	bHasFormData = False
	Mode = ""
	ShowLog = False
End Sub

Sub SchemaClear
	schema.Initialize 
End Sub

Sub SchemaAddDouble(bools As List)
	For Each b As String In bools
		schema.Put(b, DB_DOUBLE)
	Next
End Sub

Sub SchemaAddBoolean(bools As List)
	For Each b As String In bools
		schema.Put(b, DB_BOOL)
	Next
End Sub

Sub SchemaAddIntegers(bools As List)
	For Each b As String In bools
		schema.Put(b, DB_INT)
	Next
End Sub

Sub SchemaAddString(bools As List)
	For Each b As String In bools
		schema.Put(b, DB_STRING)
	Next
End Sub

Sub setRedirect(s As String)
	sredirect = s
End Sub

Sub getRedirect As String
	Return sredirect
End Sub

'https://www.b4x.com/android/forum/threads/sithasodaisy-tailwindcss-ui-toolkit-q-a.144271/post-921236
Sub setReferrerPolicy(s As String)
	sReferrerPolicy = s
End Sub

'set mode.no-cors to true/false
Sub setNoCors(b As Boolean)
	bNoCors = b
End Sub

Sub setBaseURL(s As String)
	vbaseURL = s
End Sub

'set basic authorization for this connection
Sub SetBasicAuthorization(username As String, password As String)
	Dim usernamepassword As Object = BANano.ToBase64($"${username}:${password}"$)
	Dim basic As String = $"Basic ${usernamepassword}"$
	AddHeader("Authorization", basic)
End Sub

'add a header value
Sub AddHeader(prop As String, value As String)
	headers.Put(prop, value)
End Sub

Sub AddHeaders(hdrs As Map)
	For Each k As String In hdrs.Keys
		Dim v As String = hdrs.Get(k)
		AddHeader(k, v)
	Next
End Sub

'add a parameter value
Sub AddParameters(mapOf As Map)
	For Each k As String In mapOf.Keys
		Dim v As Object = mapOf.Get(k)
		AddParameter(k, v)
	Next
End Sub

'set data from a map
Sub SetData(m As Map)
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		AddData(k, v)
	Next
End Sub

'this appears on query string 
Sub AddParameter(k As String, v As String)
	Dim dt As String = schema.Get(k)
	Select Case dt
	Case DB_BOOL
		v = CBool(v)
	Case DB_INT
		v = CInt(v)
	Case DB_STRING
		v = CStr(v)
	Case DB_DOUBLE
		v = CDbl(v)
	End Select
	parameters.Put(k, v)
End Sub

'create a new formdata
Sub NewFormData
	formData.Initialize2("FormData", Null)
	bHasFormData = True
End Sub

Sub AddFormData(fldName As String, fldValue As Object)
	formData.RunMethod("set", Array(fldName, fldValue))
	bHasFormData = True
End Sub

Sub AddData(k As String, v As String)
	If schema.ContainsKey(k) Then
		Dim dt As String = schema.Get(k)
		Select Case dt
		Case DB_BOOL
			v = CBool(v)
		Case DB_INT
			v = CInt(v)
		Case DB_STRING
			v = CStr(v)
		Case DB_DOUBLE
			v = CDbl(v)
		End Select
	End If	
	PutRecursive(vdata, k, v)
End Sub

Sub AddDataList(k As String, v As List)
	PutRecursive(vdata, k, v)
End Sub

Sub AddDataMap(k As String, v As Map)
	PutRecursive(vdata, k, v)
End Sub

'double
private Sub CDbl(o As String) As Double
	o = Val(o)
	Dim out As Double = NumberFormat2Fix(o,0,2,2,False)
	Dim nvalue As String = CStr(out)
	nvalue = nvalue.replace(",", ".")
	nvalue = Val(nvalue)
	Dim nout As Double = BANano.parseFloat(nvalue)
	Return nout
End Sub

'convert object to string
private Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub


private Sub Val(value As String) As String
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


private Sub InStr(sText As String, sFind As String) As Int
	Return sText.tolowercase.IndexOf(sFind.tolowercase)
End Sub

'parseBool
private Sub CBool(v As Object) As Boolean
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

'convert to int
private Sub CInt(o As Object) As Int
	o = Val(o)
	Return BANano.parseInt(o)
End Sub

'<code>
''execute the post
'BANano.Await(J.PostWait)
'If j.Success Then
'	Dim Response As Map = j.response
'	If Response.ContainsKey("contents") Then
'		Dim minionTaal As String = UI.GetRecursive(Response, "contents.translated")
'		txtConvert.Value = minionTaal
'	End If
'Else	
'	txtConvert.Value = j.ErrorMessage
'End If
'</code>
Public Sub PostWait
	BANano.Await(fetchit("POST"))
End Sub

'set the url to process, this is set on initialize
'if there us a base start with /
Sub SetURL(url As String)
	vbaseURL = $"${obaseURL}${url}"$
	If ShowLog Then
		Log($"SDUI5Fetch.SetURL(${vbaseURL})"$)
	End If
End Sub

Private Sub fetchit(method As String)
	Response.Initialize
	'reset some variables
	Success = False
	mError = ""
	OK = False
	Status = ""
	StatusText = ""
	Response.Clear
	'
	Dim xbaseURL As String = vbaseURL
	fetchOptions.Method = method
	If sredirect <> "" Then
		fetchOptions.SetField("redirect", sredirect)
	End If
	If bNoCors Then Mode = "no-cors"
	If Mode <> "" Then fetchOptions.Mode = Mode
	If bNoCache Then
		fetchOptions.cache = "no-store"
	Else
		fetchOptions.cache = "no-cache"
	End If
	If headers.Size <> 0 Then
		fetchOptions.Headers = headers
	End If
	If ShowLog Then
		Log($"SDUI5Fetch-Headers: ${BANano.ToJson(headers)}"$)
	End If
	'
	If vdata.Size <> 0 Then
		Dim jsonData As String = BANano.ToJson(vdata)
		fetchOptions.Body = jsonData
		If PostDataAsSearchParams Then
			Dim obj As BANanoObject
			obj.Initialize2("URLSearchParams", vdata)
			fetchOptions.Body = obj
		End If
	Else
		Select Case method.ToLowerCase
		Case "get", "head"
		Case Else	
			fetchOptions.Body = Null
		End Select
	End If
	If ShowLog Then
		Log($"SDUI5Fetch-Data Sent: ${BANano.ToJson(vdata)}"$)
	End If
	'set our own body
	If Body <> "" Then fetchOptions.Body = Body
	If bHasFormData Then
		fetchOptions.Body = formData
		If GetHeadersFromFormData Then
			fetchOptions.Headers = formData.RunMethod("getHeaders", Null).result
		End If
	End If
	
	If parameters.Size <> 0 Then
		Dim sparameters As String = URLQueryStringFromMap(parameters)
		xbaseURL = $"${vbaseURL}?${sparameters}"$
	End If
	'
	If sReferrerPolicy <> "" Then
		fetchOptions.ReferrerPolicy = sReferrerPolicy
	End If
	If ShowLog Then
		Log($"SDUI5Fetch-Final URL: ${xbaseURL}"$)
	End If
	'use local variables
	Dim bf As BANanoFetch = fetch
	Dim bfr As BANanoFetchResponse = fetchResponse
	Dim bfo As BANanoFetchOptions = fetchOptions
	Dim prom As BANanoPromise
	Dim bfe As Object
	prom.NewStart
	bf.Initialize(xbaseURL, bfo)
	bf.Then(bfr)
		Status = bfr.status
		StatusText = bfr.StatusText
		If ShowLog Then
			Log($"SDUI5Fetch-Status: ${Status}"$)
			Log($"SDUI5Fetch-StatusText: ${StatusText}"$)
		End If
		OK = bfr.ok
		Success = bfr.OK
		If bfr.Status = 200 Then
			BANano.ReturnThen(bfr.Json)
		Else
			Dim m As Map = CreateMap()
			If StatusText.StartsWith("{") Then
				m = BANano.FromJson(bfr.StatusText)
			else if StatusText.StartsWith("[") Then
				m = BANano.FromJson(bfr.StatusText)
			Else
				m.Put("status", StatusText)
			End If
			BANano.ReturnThen(m)
		End If
	bf.Else(bfe)
		'network errors
		mError = bfe
		BANano.ReturnElse(bfe)
	bf.End
	prom.NewEnd
	'
	Response = BANano.Await(prom)
End Sub

'convert response to a list
Sub ToList As List
	Dim bo As Object = Response
	Return bo
End Sub

'convert response to a list
Sub ResponseList As List
	Dim bo As Object = Response
	Return bo
End Sub

public Sub ErrorMessage() As String
	Return mError
End Sub

'set the content type
Sub SetContentType(value As String)
	AddHeader("Content-Type", value)
End Sub

'set content type application json
Sub SetContentTypeApplicationJSON
	SetContentType("application/json; charset=utf-8")
End Sub

Sub SetContentTypeApplication_X_WWW_Form_URLEncoded
	SetContentType("application/x-www-form-urlencoded")
End Sub

Sub SetContentTypeApplication_X_WWW_Form_URLEncodedUTF8
	SetContentType("application/x-www-form-urlencoded;charset=utf-8")
End Sub

'<code>
''execute the post
'BANano.Await(J.GetWait)
'If j.Success Then
'	Dim Response As Map = j.response
'	If Response.ContainsKey("contents") Then
'		Dim minionTaal As String = UI.GetRecursive(Response, "contents.translated")
'		txtConvert.Value = minionTaal
'	End If
'Else	
'	txtConvert.Value = j.ErrorMessage
'End If
'</code>
Public Sub GetWait
	BANano.Await(fetchit("GET"))
End Sub

'<code>
''execute the post
'BANano.Await(J.PutWait)
'If j.Success Then
'	Dim Response As Map = j.response
'	If Response.ContainsKey("contents") Then
'		Dim minionTaal As String = UI.GetRecursive(Response, "contents.translated")
'		txtConvert.Value = minionTaal
'	End If
'Else	
'	txtConvert.Value = j.ErrorMessage
'End If
'</code>
Sub PutWait
	BANano.Await(fetchit("PUT"))
End Sub

Sub PatchWait
	BANano.Await(fetchit("PATCH"))
End Sub

'<code>
''execute the post
'BANano.Await(J.DeleteWait)
'If j.Success Then
'	Dim Response As Map = j.response
'	If Response.ContainsKey("contents") Then
'		Dim minionTaal As String = UI.GetRecursive(Response, "contents.translated")
'		txtConvert.Value = minionTaal
'	End If
'Else	
'	txtConvert.Value = j.ErrorMessage
'End If
'</code>
Sub DeleteWait
	BANano.Await(fetchit("DELETE"))
End Sub

'set access control allow origin
Sub SetAccessControlAllowOrigin(value As String)
	AddHeader("Access-Control-Allow-Origin", value)
End Sub
'set access control allow credentials
Sub SetAccessControlAllowCredentials(value As Boolean)
	AddHeader("Access-Control-Allow-Credentials", value)
End Sub
'set access control allow methods
Sub SetAccessControlAllowMethods(value As String)
	AddHeader("Access-Control-Allow-Methods", value)
End Sub
'set access control allow headers
Sub SetAccessControlAllowHeaders(value As String)
	AddHeader("Access-Control-Allow-Headers", value)
End Sub

'set origin
Sub SetOrigin(value As String)
	AddHeader("Origin", value)
End Sub

Sub SetAuthorizationBearerToken(sToken As String)
	AddHeader("Authorization", $"Bearer ${sToken}"$)
End Sub

Sub PutRecursive(xdata As Map, path As String, value As Object)
	Try
		If BANano.IsNull(path) Or BANano.IsUndefined(path) Then
			path = ""
		End If
		If path = "" Then Return
		Dim prevObj As BANanoObject = xdata
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
Sub GetRecursive(xdata As Map, path As String) As Object
	Try
		Dim prevObj As BANanoObject = xdata
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
	sb = Null
	sout = RemDelim(sout, "&")
	Return sout
End Sub

private Sub RemDelim(sValue As String, Delim As String) As String
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

Sub setNoCache(b As Boolean)
	bNoCache = b
End Sub

Sub RedirectFollow
	setRedirect("follow")
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
private Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return BANano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
End Sub