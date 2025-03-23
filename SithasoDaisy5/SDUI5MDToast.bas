B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
'https://github.com/dmuy/Material-Toast
#IgnoreWarnings:12
#Event: Action (e As BANanoEvent)
'
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TypeOf, DisplayName: Type Of, FieldType: String, DefaultValue: default, Description: Type Of, List: default|error|info|success|warning
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: , Description: Text
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: bottom_left, Description: Position, List: bottom_center|bottom_left|bottom_right|top_center|top_left|top_right
#DesignerProperty: Key: ActionText, DisplayName: Action Text, FieldType: String, DefaultValue: OK, Description: Action Text
#DesignerProperty: Key: Duration, DisplayName: Duration, FieldType: Int, DefaultValue: 5000, Description: Duration
#DesignerProperty: Key: Interaction, DisplayName: Interaction, FieldType: Boolean, DefaultValue: False, Description: Interaction
#DesignerProperty: Key: InteractionTimeout, DisplayName: Interaction Timeout, FieldType: String, DefaultValue: , Description: Interaction Timeout
#DesignerProperty: Key: Modal, DisplayName: Modal, FieldType: Boolean, DefaultValue: False, Description: Modal
'global variables in this module
Sub Class_Globals
	Private sParentID As String = ""
	Public CustProps As Map 'ignore
	Private mCallBack As Object 'ignore
	Private mEventName As String 'ignore
	Public mElement As BANanoElement 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mName As String 'ignore
	Private BANano As BANano   'ignore
	Private sText As String = ""
	Public Tag As Object
	Private Options As Map
	Private sActionText As String = "OK"
	Private callbacks As Map
	Private iDuration As Int = 5000
	Private bInteraction As Boolean = False
	Private sInteractionTimeout As String = ""
	Private bModal As Boolean = False
	Private sPosition As String = "bottom_left"
	Private sTypeOf As String = "default"
	Public CONST POSITION_BOTTOM_CENTER As String = "bottom_center"
	Public CONST POSITION_BOTTOM_LEFT As String = "bottom_left"
	Public CONST POSITION_BOTTOM_RIGHT As String = "bottom_right"
	Public CONST POSITION_TOP_CENTER As String = "top_center"
	Public CONST POSITION_TOP_LEFT As String = "top_left"
	Public CONST POSITION_TOP_RIGHT As String = "top_right"
	Public CONST TYPEOF_DEFAULT As String = "default"
	Public CONST TYPEOF_ERROR As String = "error"
	Public CONST TYPEOF_INFO As String = "info"
	Public CONST TYPEOF_SUCCESS As String = "success"
	Public CONST TYPEOF_WARNING As String = "warning"
	Private MDToastObject As BANanoObject
	Private UI As UIShared 'ignore
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	callbacks.Initialize
End Sub

'set the parent id
Sub setParentID(s As String)
	s = UI.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub


public Sub getParentID() As String
	Return sParentID
End Sub

'load a component from a json file
Sub LoadComponentJson(designName As String)
	CustProps = BANano.Await(BANano.GetFileAsJSON($"./assets/${designName}.json?${DateTime.Now}"$, Null))
End Sub

'add this element to an existing parent element using current props
Public Sub AddComponent
	If sParentID = "" Then Return
	mTarget = BANano.GetElement("#" & sParentID)
	DesignerCreateView(mTarget, CustProps)
End Sub

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		sParentID = Props.GetDefault("ParentID", "")
		sParentID = UI.CStr(sParentID)
		sActionText = Props.GetDefault("ActionText", "OK")
		sActionText = UI.CStr(sActionText)
		iDuration = Props.GetDefault("Duration", 5000)
		iDuration = UI.CInt(iDuration)
		bInteraction = Props.GetDefault("Interaction", False)
		bInteraction = UI.CBool(bInteraction)
		sInteractionTimeout = Props.GetDefault("InteractionTimeout", "")
		sInteractionTimeout = UI.CStr(sInteractionTimeout)
		bModal = Props.GetDefault("Modal", False)
		bModal = UI.CBool(bModal)
		sPosition = Props.GetDefault("Position", "bottom_left")
		sPosition = UI.CStr(sPosition)
		sTypeOf = Props.GetDefault("TypeOf", "default")
		sTypeOf = UI.CStr(sTypeOf)
	End If
	'
	'bottom_center|bottom_left|bottom_right|top_center|top_left|top_right
	Options.Initialize 
	Options.put("text", sText)
'	Options.put("actionText", sActionText)
	Options.put("duration", iDuration)
'	Options.put("init", False)
'	Options.put("interaction", bInteraction)
'	Options.put("interactionTimeout", sInteractionTimeout)
'	Options.put("modal", bModal)
	setPosition(sPosition)
	setTypeOf(sTypeOf)
'	Options.Put("close", True)
End Sub

Sub Show
	Dim e As BANanoEvent
	Dim cbAction As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_action"$, Array(e))
	Options.Put("onClick", cbAction)
	Options.Put("stopOnFocus", True)
	Dim oToastify As BANanoObject
	oToastify.Initialize("Toastify")
	Dim obj As BANanoObject = BANano.RunJavascriptMethod("Toastify", Array(Options))
	obj.RunMethod("showToast", Null)
	
'	If SubExists(mCallBack, $"${mName}_action"$) Then

'		Options.Put("action", cbAction)
'	End If
'	Options.Put("init", False)
'	'get the toast from window object
'	MDToastObject = BANano.RunJavascriptMethod("mdtoast", Array(sText, Options))
End Sub
'
Sub Hide
'	MDToastObject.RunMethod("hidden", Null)
End Sub

'set Action Text
Sub setActionText(s As String)
	sActionText = s
	CustProps.put("ActionText", s)
'	Options.put("actionText", s)
End Sub
'set Duration
Sub setDuration(i As Int)
	iDuration = i
	CustProps.put("Duration", i)
	Options.put("duration", i)
End Sub
'set Interaction
Sub setInteraction(b As Boolean)
	bInteraction = b
	CustProps.put("Interaction", b)
'	Options.put("interaction", b)
End Sub
'set Interaction Timeout
Sub setInteractionTimeout(s As String)
	sInteractionTimeout = s
	CustProps.put("InteractionTimeout", s)
'	Options.put("interactionTimeout", s)
End Sub
'set Modal
Sub setModal(b As Boolean)
	bModal = b
	CustProps.put("Modal", b)
'	Options.put("modal", b)
End Sub
'set Position
'options: bottom_left|top_left|top_center|top_right|bottom_left|bottom_center|bottom_right
Sub setPosition(s As String)
	sPosition = s
	CustProps.put("Position", s)
	Dim sgravity As String = UI.MvField(s, 1, "_")
	Dim xpos As String = UI.MvField(s,2, "_")	
	Options.Put("gravity", sgravity)
	Options.Put("position", xpos)
End Sub
'set Text
Sub setText(s As String)
	Options.Put("text", s)
	sText = s
	CustProps.put("Text", s)
End Sub
'set Type Of
'options: default|info|warning|success|error
Sub setTypeOf(s As String)
	sTypeOf = s
	CustProps.put("TypeOf", s)
	Select Case s
	Case "default", ""
	Case "info"
		UI.PutRecursive(Options, "style.background-color", "#00BAFE")
	Case "warning"
		UI.PutRecursive(Options, "style.background-color", "#FCB700")
	Case "success"
		UI.PutRecursive(Options, "style.background-color", "#00D390")
	Case "error"		
		UI.PutRecursive(Options, "style.background-color", "FF637D")
	End Select
'	Options.put("type", s)
End Sub
'get Action Text
Sub getActionText As String
	Return sActionText
End Sub
'get Duration
Sub getDuration As Int
	Return iDuration
End Sub
'get Interaction
Sub getInteraction As Boolean
	Return bInteraction
End Sub
'get Interaction Timeout
Sub getInteractionTimeout As String
	Return sInteractionTimeout
End Sub
'get Modal
Sub getModal As Boolean
	Return bModal
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
