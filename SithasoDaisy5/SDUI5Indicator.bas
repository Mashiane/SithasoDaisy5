B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TypeOf, DisplayName: Type Of, FieldType: String, DefaultValue: badge, Description: Type Of, List: badge|status|text
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: top-start, Description: Indicator Position, List: bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Indicator Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
'global variables in this module
Sub Class_Globals
	Public UI As UIShared 'ignore
	Public CustProps As Map 'ignore
	Private mCallBack As Object 'ignore
	Private mEventName As String 'ignore
	Private mElement As BANanoElement 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mName As String 'ignore
	Private BANano As BANano   'ignore
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private bEnabled As Boolean = True	'ignore
	Private sText As String = ""
	Public Tag As Object
	Private sBackgroundColor As String = ""
	Private sColor As String = "none"
	Private sIndicatorSize As String = "none"
	Private sTypeOf As String = "badge"
	Public CONST INDICATORSIZE_LG As String = "lg"
	Public CONST INDICATORSIZE_MD As String = "md"
	Public CONST INDICATORSIZE_NONE As String = "none"
	Public CONST INDICATORSIZE_SM As String = "sm"
	Public CONST INDICATORSIZE_XL As String = "xl"
	Public CONST INDICATORSIZE_XS As String = "xs"
	Public CONST TYPEOF_BADGE As String = "badge"
	Public CONST TYPEOF_STATUS As String = "status"
	Public CONST TYPEOF_TEXT As String = "text"
	Private sPosition As String = "top-start"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	UI.Initialize(Me)
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
End Sub
'add this element to an existing parent element using current props
Public Sub AddComponent
	If sParentID = "" Then Return
	mTarget = BANano.GetElement("#" & sParentID)
	DesignerCreateView(mTarget, CustProps)
End Sub
'remove this element from the dom
Public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub
'set the parent id
Sub setParentID(s As String)
	s = modSD5.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub
'get the parent id
Sub getParentID As String
	Return sParentID
End Sub
'return the #ID of the element
Public Sub getHere() As String
	Return $"#${mName}"$
End Sub
'set Visible
Sub setVisible(b As Boolean)
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	UI.SetVisible(mElement, b)
End Sub
'get Visible
Sub getVisible As Boolean
	bVisible = UI.GetVisible(mElement)
	Return bVisible
End Sub
'set Enabled
Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement = Null Then Return
	UI.SetEnabled(mElement, b)
End Sub
'get Enabled
Sub getEnabled As Boolean
	bEnabled = UI.GetEnabled(mElement)
	Return bEnabled
End Sub
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, $"${mEventName}_${methodName}"$)
End Sub

'set text
Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	Select Case sTypeOf
	Case "status"
	Case "text", "badge"
		UI.SetTextByID($"${mName}_text"$, text)
	End Select
End Sub
'get text
Sub getText As String
	sText = UI.GetText(mElement)
	Return sText
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		UI.ExcludePosition = True
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sIndicatorSize = Props.GetDefault("IndicatorSize", "none")
		sIndicatorSize = modSD5.CStr(sIndicatorSize)
		If sIndicatorSize = "none" Then sIndicatorSize = ""
		sTypeOf = Props.GetDefault("TypeOf", "badge")
		sTypeOf = modSD5.CStr(sTypeOf)
		sPosition = Props.GetDefault("Position", "top-start")
		sPosition = modSD5.CStr(sPosition)
	End If
	'
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	UI.AddClassDT("indicator")
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<span id="${mName}_text" class="indicator-item"></span>
	</div>"$).Get("#" & mName)
	setTypeOf(sTypeOf)
	setBackgroundColor(sBackgroundColor)
	setColor(sColor)
	setIndicatorSize(sIndicatorSize)
	setPosition(sPosition)
	setText(sText)
End Sub

'set Indicator Position
'options: bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
Sub setPosition(s As String)
	sPosition = s
	CustProps.put("Position", s)
	If mElement = Null Then Return
	'bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
	Dim fpart As String = modSD5.mvfield(s,1,"-")
	Dim spart As String = modSD5.mvfield(s,2,"-")
	UI.UpdateClassByID($"${mName}_text"$, "position", $"indicator-${fpart} indicator-${spart}"$)
End Sub


'get Position
Sub getPosition As String
	Return sPosition
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	UI.SetBackgroundColorByID($"${mName}_text"$, s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	Select Case sTypeOf
	Case "badge"
		UI.SetColorByID($"${mName}_text"$, "badge", s)
	Case "status"
		UI.SetColorByID($"${mName}_text"$, "status", s)
	Case "text"
		UI.SetTextColorByID($"${mName}_text"$, s)		
	End Select
End Sub
'set Indicator Size
'options: xs|none|sm|md|lg|xl
Sub setIndicatorSize(s As String)
	sIndicatorSize = s
	CustProps.put("IndicatorSize", s)
	If mElement = Null Then Return
	Select Case sTypeOf
	Case "badge"
		UI.SetSizeByID($"${mName}_text"$, "badge", s)
	Case "status"
		UI.SetSizeByID($"${mName}_text"$, "status", s)
	Case "text"
		UI.SetSizeByID($"${mName}_text"$, "text", s)
	End Select
End Sub
'set Type Of
'options: badge|status|text
Sub setTypeOf(s As String)
	sTypeOf = s
	CustProps.put("TypeOf", s)
	If mElement = Null Then Return
	Select Case sTypeOf
	Case "badge"
		UI.UpdateClassByID($"${mName}_text"$, "type",  "badge")
	Case "status"
		UI.UpdateClassByID($"${mName}_text"$, "type", "status")
	End Select
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Indicator Size
Sub getIndicatorSize As String
	Return sIndicatorSize
End Sub
'get Type Of
Sub getTypeOf As String
	Return sTypeOf
End Sub