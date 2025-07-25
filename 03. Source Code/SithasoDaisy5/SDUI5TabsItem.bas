﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _content, Description: Child Item _content
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: IconSize, DisplayName: Icon Size, FieldType: String, DefaultValue: 20px, Description: Icon Size
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: Badge, DisplayName: Badge, FieldType: String, DefaultValue: , Description: Badge
#DesignerProperty: Key: BadgeColor, DisplayName: Badge Color, FieldType: String, DefaultValue: , Description: Badge Color
#DesignerProperty: Key: BadgeSize, DisplayName: Badge Size, FieldType: String, DefaultValue: md, Description: Badge Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Active, DisplayName: Active, FieldType: Boolean, DefaultValue: False, Description: Active
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: , Description: Border Color
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
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
	Private sBadgeSize As String = "md"
	Private sBorderColor As String = ""
	Private sTextColor As String = ""
	Private bEnabled As Boolean = True
	Public CONST BADGESIZE_LG As String = "lg"
	Public CONST BADGESIZE_MD As String = "md"
	Public CONST BADGESIZE_NONE As String = "none"
	Public CONST BADGESIZE_SM As String = "sm"
	Public CONST BADGESIZE_XL As String = "xl"
	Public CONST BADGESIZE_XS As String = "xs"
	Private sIcon As String = ""
	Private sIconSize As String = "20px"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
End Sub

Sub LinkExisting
	mElement.Initialize($"#${mName}_${sParentID}"$)
	mTarget = BANano.GetElement("#" & sParentID)
	UI.OnEventByID($"${mName}_${sParentID}"$, "change", Me, "itemchange")
End Sub

' returns the element id
Public Sub getID() As String
	Return mName
End Sub
'add this element to an existing parent element using current props
Public Sub AddComponent
	If sParentID = "" Then Return
	sParentID = UI.CleanID(sParentID)
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
	s = UI.CleanID(s)
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
Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub
'
Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
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
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
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
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		bActive = Props.GetDefault("Active", False)
		bActive = UI.CBool(bActive)
		sBadge = Props.GetDefault("Badge", "")
		sBadge = UI.CStr(sBadge)
		sBadgeColor = Props.GetDefault("BadgeColor", "")
		sBadgeColor = UI.CStr(sBadgeColor)
		sBadgeSize = Props.GetDefault("BadgeSize", "md")
		sBadgeSize = UI.CStr(sBadgeSize)
		If sBadgeSize = "none" Then sBadgeSize = ""
		sBorderColor = Props.GetDefault("BorderColor", "")
		sBorderColor = UI.CStr(sBorderColor)
		bEnabled = Props.GetDefault("Enabled", True)
		bEnabled = UI.CBool(bEnabled)
		sIcon= Props.GetDefault("Icon", "")
		sIcon = UI.CStr(sIcon)
		sIconSize = Props.GetDefault("IconSize", "20px")
		sIconSize = UI.CStr(sIconSize)
	End If
	'
	'If bActive = True Then UI.AddClassDT("tab-active")
	'If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	'If sBadge <> "" Then UI.AddClassDT("badge-" & sBadge)
	'If sBadgeColor <> "" Then UI.AddClassDT("badge-" & sBadgeColor)
	'If sBorderColor <> "" Then UI.AddClassDT("border-color-" & sBorderColor)
	UI.AddClassDT("tab flex items-center justify-center gap-2 relative")
	UI.AddAttrDT("role", "tab")
	'UI.AddAttrDT("type", "radio")
	'UI.AddAttrDT("name", sParentID)
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
	<label id="${mName}_${sParentID}_label" class="${xclasses}" ${xattrs} style="${xstyles}">
    	<input id="${mName}_${sParentID}" type="radio" name="${sParentID}" value="${mName}"/>
		<svg-renderer id="${mName}_${sParentID}_icon" class="mr-1" width="${sIconSize}" height="${sIconSize}" style="pointer-events:none;" fill="currentColor" data-js="enabled"></svg-renderer>
		<span id="${mName}_${sParentID}_text">${sText}</span>
		<span id="${mName}_${sParentID}_badge" class="ml-1 badge absolute -top-2 -right-2 rounded-full w-6 h-6 flex items-center justify-center p-0 text-xs shadow-md">${sBadge}</div>
  	</label>
  	<div id="${mName}_${sParentID}_content" class="tab-content bg-base-100 border-base-300 p-6">${sText} Content</div>"$).Get("#" & mName & "_" & sParentID)
	setActive(bActive)
	setTextColor(sTextColor)
	setBackgroundColor(sBackgroundColor)
	setBorderColor(sBorderColor)
	setEnabled(bEnabled)
	setIcon(sIcon)
	setBadgeColor(sBadgeColor)
	setBadgeSize(sBadgeSize)
	setBadge(sBadge)
'	setVisible(bVisible)
	UI.OnEventByID($"${mName}_${sParentID}"$, "change", Me, "itemchange")
End Sub

Sub HideContent(skey As String)
	skey = UI.CleanID(skey)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${skey}_${sParentID}_content"$, False)
End Sub

Sub ShowContent(skey As String)
	skey = UI.CleanID(skey)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${skey}_${sParentID}_content"$, True)
End Sub


Sub setIconSize(s As String)
	sIconSize = s
	CustProps.Put("IconSize", s)
	If mElement = Null Then Return
	UI.SetAttrByID($"${mName}_${sParentID}_icon"$, "height", sIconSize)
	UI.SetAttrByID($"${mName}_${sParentID}_icon"$, "width", sIconSize)
End Sub

Sub getIconSize As String
	Return sIconSize
End Sub
	
Sub setIcon(s As String)				'ignoredeadcode
	sIcon = s
	CustProps.Put("Icon", sIcon)
	If mElement = Null Then Return
	If s = "" Then
		UI.SetVisibleByID($"${mName}_${sParentID}_icon"$, False)
	Else
		UI.SetIconNameByID($"${mName}_${sParentID}_icon"$, sIcon)
		UI.SetVisibleByID($"${mName}_${sParentID}_icon"$, True)
	End If	
End Sub

Sub getIcon As String
	Return sIcon
End Sub

private Sub itemchange(e As BANanoEvent)		'ignoredeadcode
	e.PreventDefault
	Dim itemName As String = UI.MvField(e.ID, 1, "_")
	BANano.CallSub(mCallBack, $"${sParentID}_change"$, Array(itemName))
End Sub

'set text
Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	UI.SetAttrByID($"${mName}_${sParentID}_label"$, "aria-label", sText)
	UI.SetTextByID($"${mName}_${sParentID}_text"$, sText)
End Sub

'get text
Sub getText As String
	Return sText
End Sub

'set Active
Sub setActive(b As Boolean)		'ignoredeadcode
	bActive = b
	CustProps.put("Active", b)
	If mElement = Null Then Return
	UI.SetChecked(mElement, b)
	If b Then
		UI.AddClassByID($"${mName}_${sParentID}_label"$, "tab-active")
	Else
		UI.RemoveClassByID($"${mName}_${sParentID}_label"$, "tab-active")
	End If
End Sub
'set Background Color
Sub setBackgroundColor(s As String)				'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If sBackgroundColor = "" Then Return
	Dim thisColor As String = $"[--tab-bg:${sBackgroundColor}]"$
	UI.UpdateClass(mElement, "bg", thisColor)
End Sub
'set Badge
Sub setBadge(s As String)				'ignoredeadcode
	sBadge = s
	CustProps.put("Badge", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_${sParentID}_badge"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_${sParentID}_badge"$, False)
	Else	
		UI.SetVisibleByID($"${mName}_${sParentID}_badge"$, True)
	End If
End Sub
'set Badge Color
Sub setBadgeColor(s As String)					'ignoredeadcode
	sBadgeColor = s
	CustProps.put("BadgeColor", s)
	If mElement = Null Then Return
	UI.SetColorByID($"${mName}_${sParentID}_badge"$, "color", "badge", sBadgeColor)
End Sub
'set Badge Size
'options: xs|none|sm|md|lg|xl
Sub setBadgeSize(s As String)
	sBadgeSize = s
	CustProps.put("BadgeSize", s)
	If mElement = Null Then Return
	UI.SetSizeByID($"${mName}_${sParentID}_badge"$, "size", "badge", s)
End Sub
'set Border Color
Sub setBorderColor(s As String)			'ignoredeadcode
	sBorderColor = s
	CustProps.put("BorderColor", s)
	If mElement = Null Then Return
	If sBorderColor = "" Then Return
	Dim thisColor As String = $"[--tab-border-color:${sBorderColor}]"$
	UI.UpdateClass(mElement, "bc", thisColor)
End Sub

'set Disabled
Sub setEnabled(b As Boolean)			'ignoredeadcode
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
Sub setTextColor(s As String)			'ignoredeadcode
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
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