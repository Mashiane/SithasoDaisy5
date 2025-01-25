B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _content, Description: Child Item _content
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: Badge, DisplayName: Badge, FieldType: String, DefaultValue: , Description: Badge
#DesignerProperty: Key: BadgeColor, DisplayName: Badge Color, FieldType: String, DefaultValue: , Description: Badge Color
#DesignerProperty: Key: BadgeSize, DisplayName: Badge Size, FieldType: String, DefaultValue: none, Description: Badge Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: , Description: Border Color
#DesignerProperty: Key: Active, DisplayName: Active, FieldType: Boolean, DefaultValue: False, Description: Active
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: RawClasses, DisplayName: Classes (;), FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: RawStyles, DisplayName: Styles (JSON), FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String use = and ;
#DesignerProperty: Key: RawAttributes, DisplayName: Attributes (JSON), FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String use = and ;
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
	Private sRawClasses As String = ""
	Private sRawStyles As String = ""
	Private sRawAttributes As String = ""
	Private sMarginAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sPaddingAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private sText As String = ""
	Public Tag As Object
	Private bActive As Boolean = False
	Private sBackgroundColor As String = ""
	Private sBadge As String = ""
	Private sBadgeColor As String = ""
	Private sBadgeSize As String = "none"
	Private sBorderColor As String = ""
	Private sTextColor As String = ""
	Private bEnabled As Boolean = True
	Public CONST BADGESIZE_LG As String = "lg"
	Public CONST BADGESIZE_MD As String = "md"
	Public CONST BADGESIZE_NONE As String = "none"
	Public CONST BADGESIZE_SM As String = "sm"
	Public CONST BADGESIZE_XL As String = "xl"
	Public CONST BADGESIZE_XS As String = "xs"
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
	sParentID = modSD5.CleanID(sParentID)
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
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, methodName)
End Sub
Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	if s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub
'
Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	if s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub
'
Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub
'
Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	if s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub
'
Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub
'
Sub getAttributes As String
	Return sRawAttributes
End Sub
'
Sub getStyles As String
	Return sRawStyles
End Sub
'
Sub getClasses As String
	Return sRawClasses
End Sub
'
Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub
'
Sub getMarginAXYTBLR As String
	Return sMarginAXYTBLR
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
		bActive = Props.GetDefault("Active", False)
		bActive = modSD5.CBool(bActive)
		'sBackgroundColor = Props.GetDefault("BackgroundColor", "")
		'sBackgroundColor = modSD5.CStr(sBackgroundColor)
		sBadge = Props.GetDefault("Badge", "")
		sBadge = modSD5.CStr(sBadge)
		sBadgeColor = Props.GetDefault("BadgeColor", "")
		sBadgeColor = modSD5.CStr(sBadgeColor)
		sBadgeSize = Props.GetDefault("BadgeSize", "none")
		sBadgeSize = modSD5.CStr(sBadgeSize)
		If sBadgeSize = "none" Then sBadgeSize = ""
		sBorderColor = Props.GetDefault("BorderColor", "")
		sBorderColor = modSD5.CStr(sBorderColor)
		bEnabled = Props.GetDefault("Enabled", True)
		bEnabled = modSD5.CBool(bEnabled)
		'sTextColor = Props.GetDefault("TextColor", "")
		'sTextColor = modSD5.CStr(sTextColor)
	End If
	'
	'If bActive = True Then UI.AddClassDT("tab-active")
	'If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	'If sBadge <> "" Then UI.AddClassDT("badge-" & sBadge)
	'If sBadgeColor <> "" Then UI.AddClassDT("badge-" & sBadgeColor)
	'If sBorderColor <> "" Then UI.AddClassDT("border-color-" & sBorderColor)
	UI.AddAttrDT("role", "tab")
	UI.AddClassDT("tab")
	UI.AddAttrDT("type", "radio")
	UI.AddAttrDT("name", sParentID)
	UI.AddAttrDT("aria-label", sText)
	'If sTabsName <> "" Then UI.AddAttrDT("tabs-name", sTabsName)
	'If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	'we will use the parent id 
	If BANano.Exists($"#${sParentID}"$) = False Then
		BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
		Return
	End If
	mTarget.Initialize($"#${sParentID}"$)
		
	mElement = mTarget.Append($"[BANCLEAN]
	<input id="${mName}_${sParentID}" class="${xclasses}" ${xattrs} style="${xstyles}"></input>
  	<div id="${mName}_content" class="tab-content bg-base-100 border-base-300 p-6">${sText} Content</div>"$).Get("#" & mName & "_" & sParentID)
	'
	setActive(bActive)
	setEnabled(bEnabled)
'	setVisible(bVisible)
	UI.OnEvent(mElement, "change", Me, "itemchange")
End Sub

private Sub itemchange(e As BANanoEvent)
	e.PreventDefault
	Dim itemName As String = modSD5.MvField(e.ID, 1, "_")
	BANano.CallSub(mCallBack, $"${sParentID}_change"$, Array(itemName))
End Sub

'set text
Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	UI.SetAttrByID($"${mName}_${sParentID}"$, "aria-label", sText)
End Sub

'get text
Sub getText As String
	Return sText
End Sub

'set Active
Sub setActive(b As Boolean)
	bActive = b
	CustProps.put("Active", b)
	If mElement = Null Then Return
	UI.SetChecked(mElement, b)
End Sub
'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
'	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Badge
Sub setBadge(s As String)
	sBadge = s
	CustProps.put("Badge", s)
	If mElement = Null Then Return
'	If s <> "" Then UI.AddClass(mElement, "badge-" & s)
End Sub
'set Badge Color
Sub setBadgeColor(s As String)
	sBadgeColor = s
	CustProps.put("BadgeColor", s)
	If mElement = Null Then Return
'	If s <> "" Then UI.AddClass(mElement, "badge-" & s)
End Sub
'set Badge Size
'options: xs|none|sm|md|lg|xl
Sub setBadgeSize(s As String)
	sBadgeSize = s
	CustProps.put("BadgeSize", s)
	If mElement = Null Then Return
End Sub
'set Border Color
Sub setBorderColor(s As String)
	sBorderColor = s
	CustProps.put("BorderColor", s)
	If mElement = Null Then Return
'	If s <> "" Then UI.AddClass(mElement, "border-color-" & s)
End Sub
'set Disabled
Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.put("Enabled", b)
	If mElement = Null Then Return
	If b = True Then
		UI.RemoveClass(mElement, "tab-disabled")
	Else
		UI.AddClass(mElement, "tab-disabled")
	End If
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
'	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
End Sub

Sub getEnabled As Boolean
	Return bEnabled
End Sub

'get Active
Sub getActive As Boolean
	Return bActive
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Badge
Sub getBadge As String
	Return sBadge
End Sub
'get Badge Color
Sub getBadgeColor As String
	Return sBadgeColor
End Sub
'get Badge Size
Sub getBadgeSize As String
	Return sBadgeSize
End Sub
'get Border Color
Sub getBorderColor As String
	Return sBorderColor
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub