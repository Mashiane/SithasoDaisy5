B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
			
'global variables in this module
Sub Class_Globals
	Public CustProps As Map 'ignore
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
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("daisy-toast.js")
End Sub

Sub Show
	UI.SetProps(CustProps)
	UI.ExcludeEnabled = True
	UI.ExcludeVisible = True
	UI.ExcludePosition = True
	UI.ExcludeBackgroundColor = True
	UI.AddAttrDT("type", sTypeOf)
	UI.AddAttrDT("position", sPosition)
	UI.AddAttrDT("timer", iDuration)
	UI.AddAttrDT("title", sTitle)
	UI.AddAttrDT("message", sText)
	Dim xattrs As String = UI.BuildExAttributes
	BANano.GetElement($"#body"$).Append($"<daisy-toast ${xattrs}></daisy-toast>"$)
End Sub

'set Duration
Sub setDuration(i As Int)
	iDuration = UI.CInt(i)
	CustProps.put("Duration", iDuration)
End Sub

'set Position
'options: BL|TL|TC|TR|BL|BC|BR|MC
Sub setPosition(s As String)
	sPosition = s
	CustProps.put("Position", s)
End Sub

'set Text
Sub setText(s As String)
	sText = s
	CustProps.put("Text", s)
End Sub

Sub setTitle(s As String)
	sTitle = s
	CustProps.put("Title", s)
End Sub

'set Type Of
'options: info|warning|success|error
Sub setTypeOf(s As String)
	sTypeOf = s
	CustProps.put("TypeOf", s)
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
