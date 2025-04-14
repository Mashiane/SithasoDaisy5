B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.8
@EndOfDesignText@
#IgnoreWarnings:32, 12

#Event: Finished

Sub Class_Globals
	Private fn As String
	Private BANano As BANano			'ignore
	Private mcallback As Object
	Private eventName As String
	Private tags As Map
	Private ffn As String
End Sub

'<code>
'Dim properties As List = jsonFile.Get("properties")
'Dim events As List = jsonFile.Get("events")
'Dim methods As List = jsonFile.Get("methods")
'Dim doc As SDUIDocxTemplator
'doc.Initialize(Me, "docx", "./assets/api.docx", $"${CompName}.docx"$)
'doc.SetField("component", CompName.ToUpperCase)
'doc.SetField("properties", properties)
'doc.SetField("events", events)
'doc.SetField("methods", methods)
'BANano.Await(doc.BuildWait)
'</code>	
Public Sub Initialize(mcb As Object, event As String, tmpFile As String, target As String)
	fn = tmpFile
	mcallback = mcb
	eventName = event
	tags.Initialize
	ffn = target
	BANano.DependsOnAsset("docxtemplater.min.js")
	BANano.DependsOnAsset("pizzip.min.js")
	BANano.DependsOnAsset("pizzip-utils.min.js")
End Sub

'create documentation for a component
Sub DocumentComponent(m As Map, compType As String, compName As String)
	Dim jsonFile As Map = BANano.Await(BANano.GetFileAsJSON($"./assets/${compType}.json?${DateTime.now}"$, Null))
	If jsonFile.ContainsKey("properties") Then
		Dim properties As List = jsonFile.Get("properties")
		Dim pdiff As List
		pdiff.Initialize
		For Each prop As Map In properties
			Dim skey As String = prop.GetDefault("Key","")
			Dim sval As String = prop.GetDefault("DefaultValue","")
			skey = CStr(skey)
			sval = CStr(sval)
			If skey = "" Then Continue
			If m.ContainsKey(skey) Then
				Dim nvalue As String = m.GetDefault(skey, "")
				nvalue = CStr(nvalue)
				If nvalue.EqualsIgnoreCase(sval) Then Continue
				prop.put("DefaultValue", nvalue)
				pdiff.Add(prop)
			End If
		Next
		'
		tags.Initialize 
		fn = "./assets/compapi.docx"
		ffn = compName & ".docx"
		eventName = "docx"
		SetField("component", $"${compType}.${compName}"$)
		SetField("properties", pdiff)
		BANano.Await(BuildWait)
	End If
End Sub

'convert object to string
private Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub

Sub Clear
	tags.Initialize 
End Sub

Sub SetField(key As String, value As Object)
	tags.Put(key,value)
End Sub

Sub BuildWait
	Dim PizZipUtils As BANanoObject
	PizZipUtils.Initialize("PizZipUtils")
	'
	Dim error, content As Object
	Dim cb As BANanoObject = BANano.CallBack(Me, "generate", Array(error, content))
	PizZipUtils.RunMethod("getBinaryContent", Array(fn, cb))
End Sub

Private Sub generate(error As Object, content As Object)			'ignore
	If BANano.IsNull(error) = False Then
		BANano.throw(error)
		Return
	End If
	'start processing
	Dim zip As BANanoObject
	zip.Initialize2("PizZip", content)
	'
	Dim options As Map = CreateMap()
	options.Put("paragraphLoop", True)
	options.Put("linebreaks", True)
	'
	Dim doc As BANanoObject
	doc.Initialize2("Docxtemplater", Array(zip, options))
	'
	doc.RunMethod("render", tags)
	'
	Dim blobOptions As Map = CreateMap()
	blobOptions.Put("type", "blob")
	blobOptions.Put("mimeType", "application/vnd.openxmlformats-officedocument.wordprocessingml.document")
	blobOptions.Put("compression", "DEFLATE")
	'
	Dim blob As BANanoObject = doc.RunMethod("getZip", Null).RunMethod("generate", blobOptions)
	BANano.RunJavascriptMethod("saveAs", Array(blob, ffn))
	
	If SubExists(mcallback, $"${eventName}_finished"$) Then
		CallSub(mcallback, $"${eventName}_finished"$)
	Else
		BANano.Console.Warn($"SDUIDocxTemplator: '${eventName}_finished' event does not exist!"$)
	End If
End Sub