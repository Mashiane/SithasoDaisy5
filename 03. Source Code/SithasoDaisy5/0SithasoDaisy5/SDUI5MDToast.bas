B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
			
'global variables in this module
Sub Class_Globals
	Private mCallBack As Object 'ignore
	Private mEventName As String 'ignore
	Private mName As String 'ignore
	Private BANano As BANano   'ignore
	Private sText As String = ""
	Private sTitle As String = ""
	Public Tag As Object
	Private iDuration As Int = 5000
	Private sPosition As String = "TR"
	Private sTypeOf As String = "info"
	Public CONST POSITION_BOTTOM_CENTER As String = "BC"
	Public CONST POSITION_BOTTOM_LEFT As String = "BL"
	Public CONST POSITION_BOTTOM_RIGHT As String = "BR"
	Public CONST POSITION_TOP_CENTER As String = "TC"
	Public CONST POSITION_TOP_LEFT As String = "TL"
	Public CONST POSITION_TOP_RIGHT As String = "TC"
	Public CONST POSITION_MIDDLE_CENTER As String = "MC"
	Public CONST TYPEOF_ERROR As String = "error"
	Public CONST TYPEOF_INFO As String = "info"
	Public CONST TYPEOF_SUCCESS As String = "success"
	Public CONST TYPEOF_WARNING As String = "warning"
	Private UI As UIShared 'ignore
	Private n As BANanoObject
	Private opt As Map
	Private ltypes As List
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	BANano.DependsOnAsset("notyf.min.css")
	BANano.DependsOnAsset("notyf.min.js")
	opt.Initialize
	ltypes.Initialize 
	
	Dim info As Map = CreateMap()
	info.Put("type", "info")
	info.Put("background", "var(--color-info)")
	info.Put("text", "")
	info.Put("color", "white")
	UI.PutRecursive(info, "icon.className", "fa-solid fa-circle-info")
	UI.PutRecursive(info, "icon.tagName", "i")
	UI.PutRecursive(info, "icon.color", "white")
	ltypes.Add(info)
	'	
	Dim warn As Map = CreateMap()
	warn.Put("type", "warning")
	warn.Put("background", "var(--color-warning)")
	warn.Put("text", "")
	warn.Put("color", "white")
	UI.PutRecursive(warn, "icon.className", "fa-solid fa-triangle-exclamation")
	UI.PutRecursive(warn, "icon.tagName", "i")
	UI.PutRecursive(warn, "icon.color", "white")
	ltypes.Add(warn)
	'
'	Dim succ As Map = CreateMap()
'	succ.Put("type", "success")
'	succ.Put("background", "var(--color-success)")
'	succ.Put("text", "")
'	succ.Put("color", "var(--color-success-content)")
'	UI.PutRecursive(succ, "icon.className", "notyf__icon--success")
'	UI.PutRecursive(succ, "icon.tagName", "i")
'	UI.PutRecursive(succ, "icon.color", "var(--color-success-content)")
'	ltypes.Add(succ)
'	'
'	Dim err As Map = CreateMap()
'	err.Put("type", "error")
'	err.Put("background", "var(--color-error)")
'	err.Put("text", "")
'	err.Put("color", "var(--color-error-content)")
'	UI.PutRecursive(err, "icon.className", "")
'	UI.PutRecursive(err, "icon.tagName", "i")
'	UI.PutRecursive(err, "icon.color", "var(--color-error-content)")
'	ltypes.Add(err)
	
End Sub

Sub Show
	opt.Initialize 
	opt.Put("duration", iDuration)
	opt.put("ripple", True)
	opt.put("types", ltypes)
	Dim xpos As String = "right"
	Dim ypos As String = "top"
	Select Case sPosition
	Case "BL", "bl"
		ypos = "bottom"
		xpos = "left"
	Case "TL", "tl"
		xpos = "left"
		ypos = "top"
	Case "TC", "tc"
		ypos = "top"
		xpos = "center"
	Case "TR", "tr"
		ypos = "top"
		xpos = "right"
	Case "BC", "bc"
		ypos = "bottom"
		xpos = "center"
	Case "BR", "br"
		ypos = "bottom"
		xpos = "right"
	Case "MC", "mc"
		ypos = "center"
		xpos = "center"						
	End Select
	Dim tpos As Map = CreateMap()
	tpos.Put("x", xpos)
	tpos.Put("y", ypos)
	opt.put("position", tpos)
	opt.put("dismissible", False)
	'
	Dim lMessage As List
	lMessage.Initialize 
	If sTitle <> "" Then lMessage.Add($"<b>${sTitle}</b>"$)
	lMessage.Add(sText)
	Dim smessage As String = UI.Join("</br>", lMessage)
	n.Initialize2("Notyf", opt)
	n.RunMethod("open", CreateMap("type": sTypeOf, "message":smessage))
End Sub

'set Duration
Sub setDuration(i As Int)
	iDuration = UI.CInt(i)
End Sub

'set Position
'options: BL|TL|TC|TR|BL|BC|BR|MC
Sub setPosition(s As String)
	sPosition = s
End Sub

'set Text
Sub setText(s As String)
	sText = s
End Sub

Sub setTitle(s As String)
	sTitle = s
End Sub

'set Type Of
'options: info|warning|success|error
Sub setTypeOf(s As String)
	sTypeOf = s
End Sub

'get Title
Sub getTitle As String
	Return sTitle
End Sub

'get Duration
Sub getDuration As Int
	Return iDuration
End Sub

'get Position
Sub getPosition As String
	Return sPosition
End Sub

'get Text
Sub getText As String
	Return sText
End Sub

'get Type Of
Sub getTypeOf As String
	Return sTypeOf
End Sub

Sub ShowInfo(smessage As String)
	setText(smessage)
	setTypeOf(TYPEOF_INFO)
	Show
End Sub

Sub ShowError(smessage As String)
	setText(smessage)
	setTypeOf(TYPEOF_ERROR)
	Show
End Sub

Sub ShowSuccess(smessage As String)
	setText(smessage)
	setTypeOf(TYPEOF_SUCCESS)
	Show
End Sub

Sub ShowWarning(smessage As String)
	setText(smessage)
	setTypeOf(TYPEOF_WARNING)
	Show
End Sub
