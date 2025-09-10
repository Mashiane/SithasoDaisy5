B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TypeOf, DisplayName: Type Of, FieldType: String, DefaultValue: icon, Description: Type Of, List: icon|text
#DesignerProperty: Key: MainButtonType, DisplayName: Main Button Type, FieldType: String, DefaultValue: none, Description: Main Button Type, List:none|close|main
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: #ffffff, Description: Text Color
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: lg, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Flower, DisplayName: Flower, FieldType: Boolean, DefaultValue: False, Description: Flower
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: ./assets/plus-solid.svg, Description: Icon
#DesignerProperty: Key: IconSize, DisplayName: Icon Size, FieldType: String, DefaultValue: 60%, Description: Icon Size
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: , Description: Text
#DesignerProperty: Key: MainButtonIcon, DisplayName: Main Button Icon, FieldType: String, DefaultValue: , Description: Main Button Icon
#DesignerProperty: Key: MainButtonColor, DisplayName: Main Button Color, FieldType: String, DefaultValue: , Description: Main Button Color
#DesignerProperty: Key: MainButtonText, DisplayName: Main Button Text, FieldType: String, DefaultValue: , Description: Main Button Text
#DesignerProperty: Key: MainButtonTextColor, DisplayName: Main Button Text Color, FieldType: String, DefaultValue: #ffffff, Description: Main Button Text Color
#DesignerProperty: Key: ChildSize, DisplayName: Child Size, FieldType: String, DefaultValue: md, Description: Child Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: RawChildKeys, DisplayName: Child Keys, FieldType: String, DefaultValue: , Description: Raw Child Keys
#DesignerProperty: Key: RawChildColors, DisplayName: Child Colors, FieldType: String, DefaultValue: , Description: Raw Child Colors
#DesignerProperty: Key: RawChildIcons, DisplayName: Child Icons, FieldType: String, DefaultValue: , Description: Raw Child Icons
#DesignerProperty: Key: RawChildText, DisplayName: Child Texts, FieldType: String, DefaultValue: , Description: Raw Child Text
#DesignerProperty: Key: RawChildTextColor, DisplayName: Child Text Colors, FieldType: String, DefaultValue: , Description: Raw Child Text Color
#DesignerProperty: Key: CenterChildren, DisplayName: Center Children, FieldType: Boolean, DefaultValue: False, Description: Center Children (Small Children)
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
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
	Private sPosition As String = "t=?; b=?; r=?; l=?"
	Private sPositionStyle As String = "none"
	Private sRawClasses As String = ""
	Private sRawStyles As String = ""
	Private sRawAttributes As String = ""
	Private sMarginAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sPaddingAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private bEnabled As Boolean = True	'ignore
	Private sText As String = ""
	Public Tag As Object
	Private sChildSize As String = "md"
	Private sMainButtonType As String = "none"
	Private sColor As String = ""
	Private bFlower As Boolean = False
	Private sIcon As String = "./assets/plus-solid.svg"
	Private sIconSize As String = "60%"
	Private sMainButtonColor As String = ""
	Private sMainButtonIcon As String = ""
	Private sMainButtonText As String = ""
	Private sMainButtonTextColor As String = ""
	Private sRawChildColors As String = ""
	Private sRawChildIcons As String = ""
	Private sRawChildKeys As String = ""
	Private sRawChildText As String = ""
	Private sRawChildTextColor As String = "#ffffff"
	Private sSize As String = "lg"
	Private sTextColor As String = "#ffffff"
	Private sTypeOf As String = "icon"
	Private bCloseButton As Boolean = False
	Private bCenterChildren As Boolean = False
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
'use to add an event to the element
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, methodName)
End Sub
'set Position Style
'options: static|relative|fixed|absolute|sticky|none
Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.put("PositionStyle", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "position", s)
End Sub
Sub getPositionStyle As String
	Return sPositionStyle
End Sub
'set raw positions
Sub setPosition(s As String)
	sPosition = s
	CustProps.Put("Position", sPosition)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPosition(mElement, sPosition)
End Sub
Sub getPosition As String
	Return sPosition
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
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sChildSize = Props.GetDefault("ChildSize", "md")
		sChildSize = UI.CStr(sChildSize)
		sColor = Props.GetDefault("Color", "")
		sColor = UI.CStr(sColor)
		bFlower = Props.GetDefault("Flower", False)
		bFlower = UI.CBool(bFlower)
		sIcon = Props.GetDefault("Icon", "./assets/plus-solid.svg")
		sIcon = UI.CStr(sIcon)
		sIconSize = Props.GetDefault("IconSize", "60%")
		sIconSize = UI.CStr(sIconSize)
		sMainButtonColor = Props.GetDefault("MainButtonColor", "")
		sMainButtonColor = UI.CStr(sMainButtonColor)
		sMainButtonIcon = Props.GetDefault("MainButtonIcon", "")
		sMainButtonIcon = UI.CStr(sMainButtonIcon)
		sMainButtonText = Props.GetDefault("MainButtonText", "")
		sMainButtonText = UI.CStr(sMainButtonText)
		sMainButtonTextColor = Props.GetDefault("MainButtonTextColor", "#ffffff")
		sMainButtonTextColor = UI.CStr(sMainButtonTextColor)
		sRawChildColors = Props.GetDefault("RawChildColors", "")
		sRawChildColors = UI.CStr(sRawChildColors)
		sRawChildIcons = Props.GetDefault("RawChildIcons", "")
		sRawChildIcons = UI.CStr(sRawChildIcons)
		sRawChildKeys = Props.GetDefault("RawChildKeys", "")
		sRawChildKeys = UI.CStr(sRawChildKeys)
		sRawChildText = Props.GetDefault("RawChildText", "")
		sRawChildText = UI.CStr(sRawChildText)
		sRawChildTextColor = Props.GetDefault("RawChildTextColor", "")
		sRawChildTextColor = UI.CStr(sRawChildTextColor)
		sSize = Props.GetDefault("Size", "lg")
		sSize = UI.CStr(sSize)
		sTextColor = Props.GetDefault("TextColor", "#ffffff")
		sTextColor = UI.CStr(sTextColor)
		sTypeOf = Props.GetDefault("TypeOf", "icon")
		sTypeOf = UI.CStr(sTypeOf)
		bCloseButton = Props.GetDefault("CloseButton", False)
		bCloseButton = UI.CBool(bCloseButton)
		sMainButtonType= Props.GetDefault("MainButtonType", "none")
		sMainButtonType = UI.CStr(sMainButtonType)
		bCenterChildren = Props.GetDefault("CenterChildren", False)
		bCenterChildren = UI.CBool(bCenterChildren)
	End If
	'
	UI.AddClassDT("fab flex!")
	If bFlower = True Then UI.AddClassDT("fab-flower")
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
		<div id="${mName}_button" tabindex="0" role="button" class="btn btn-circle">
			<span id="${mName}_buttontext" class="hidden"></span>
			<svg-renderer id="${mName}_buttonicon" style="pointer-events:none;" fit="false" replace="false" fill="currentColor" data-js="enabled"></svg-renderer>
		</div>
		<button id="${mName}_main" class="btn btn-circle hidden">
			<span id="${mName}_maintext" class="hidden"></span>
			<svg-renderer id="${mName}_mainicon" style="pointer-events:none;" fit="false" replace="false" fill="currentColor" data-js="enabled"></svg-renderer>
		</button>
	</div>"$).Get("#" & mName)
	setText(sText)
	setTextColor(sTextColor)
	setColor(sColor)
	setSize(sSize)
	setMainButtonType(sMainButtonType)
	setMainButtonColor(sMainButtonColor)
	setMainButtonIcon(sMainButtonIcon)
	setMainButtonText(sMainButtonText)
	setMainButtonTextColor(sMainButtonTextColor)
	setChildKeys(sRawChildKeys)
	setChildText(sRawChildText)
	setChildTextColor(sRawChildTextColor)
	setChildColors(sRawChildColors)
	setIcon(sIcon)
	setIconSize(sIconSize)
	setChildIcons(sRawChildIcons)
	setCenterChildren(bCenterChildren)
End Sub

Sub setCenterChildren(b As Boolean)   				'ignoredeadcode
	bCenterChildren = b
	CustProps.Put("CenterChildren", b)
	If bCenterChildren Then
		UI.AddClass(mElement, "items-center")
	Else
		UI.RemoveClass(mElement, "items-center")
	End If
End Sub

Sub getCenterChildren As Boolean
	Return bCenterChildren
End Sub

Sub setMainButtonType(s As String)					'ignoredeadcode
	sMainButtonType = s
	CustProps.Put("MainButtonType", s)
	If mElement = Null Then Return
	Select Case sMainButtonType
	Case "none"
		UI.RemoveElementByID($"${mName}_main"$)
	Case Else
		UI.SetVisibleByID($"${mName}_main"$, True)
		Select Case sMainButtonType
		Case "close"
			UI.AddClassByID($"${mName}_main"$, "fab-close")
			UI.RemoveClassByID($"${mName}_main"$, "fab-main-action")
		Case "main"
			UI.AddClassByID($"${mName}_main"$, "fab-main-action")
			UI.RemoveClassByID($"${mName}_main"$, "fab-close")
		End Select
	End Select
End Sub

Sub getMainButtonType As String
	Return sMainButtonType
End Sub

'set text
Sub setText(s As String)			'ignoredeadcode
	sText = s
	CustProps.Put("Text", s)
	If mElement = Null Then Return
	Select Case sTypeOf
	Case "text"
		UI.SetTextByID($"${mName}_buttontext"$, s)
	Case Else
		UI.RemoveElementByID($"${mName}_buttontext"$)
	End Select	
End Sub

'set Color
Sub setColor(s As String)							'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	UI.SetColorByID($"${mName}_button"$, "color", "btn", sColor)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)					'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	UI.SetSizeByid($"${mName}_button"$, "size", "btn", s)
	If sMainButtonType <> "none" Then UI.SetSizeByid($"${mName}_main"$, "size", "btn", s)
End Sub
'set Text Color
Sub setTextColor(s As String)					'ignoredeadcode
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	UI.SetTextColorByID($"${mName}_button"$, s)
End Sub

'get text
Sub getText As String
	Return sText
End Sub

'set Child Size
'options: xs|none|sm|md|lg|xl
Sub setChildSize(s As String)
	sChildSize = s
	CustProps.put("ChildSize", s)
End Sub

'set Flower
Sub setFlower(b As Boolean)
	bFlower = b
	CustProps.put("Flower", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "fab-flower")
	Else
		UI.RemoveClass(mElement, "fab-flower")
	End If
End Sub
'set Icon
Sub setIcon(s As String)			'ignoredeadcode
	sIcon = s
	CustProps.put("Icon", s)
	If mElement = Null Then Return
	If sTypeOf = "text" Then
		UI.RemoveElementByID($"${mName}_buttonicon"$)
	Else
		UI.SetAttrByID($"${mName}_buttonicon"$, "data-src", s)
		UI.SetVisibleByID($"${mName}_buttonicon"$, True)
	End If
End Sub

'set Icon Size
'options: xs|none|sm|md|lg|xl
Sub setIconSize(s As String)				'ignoredeadcode
	sIconSize = s
	CustProps.put("IconSize", s)
	If mElement = Null Then Return
	If sTypeOf <> "icon" Then Return
	UI.SetWidthByID($"${mName}_buttonicon"$, sIconSize)
	UI.SetHeightByID($"${mName}_buttonicon"$, sIconSize)
	If sMainButtonType <> "none" Then
		UI.SetWidthByID($"${mName}_mainicon"$, s)
		UI.SetHeightByID($"${mName}_mainicon"$, s)
	End If
End Sub

'set Main Button Color
Sub setMainButtonColor(s As String)				'ignoredeadcode
	sMainButtonColor = s
	CustProps.put("MainButtonColor", s)
	If mElement = Null Then Return
	If sMainButtonType <> "none" Then UI.SetColorByID($"${mName}_main"$, "color", "btn", s)
End Sub
'set Main Button Icon
Sub setMainButtonIcon(s As String)							'ignoredeadcode
	sMainButtonIcon = s
	CustProps.put("MainButtonIcon", s)
	If mElement = Null Then Return
	If sTypeOf = "text" Then
		UI.RemoveElementByID($"${mName}_mainicon"$)
	Else
		UI.RemoveElementByID($"${mName}_maintext"$)
		UI.SetAttrByID($"${mName}_mainicon"$, "data-src", s)	
	End If
End Sub
'set Main Button Text
Sub setMainButtonText(s As String)				'ignoredeadcode
	sMainButtonText = s
	CustProps.put("MainButtonText", s)
	If mElement = Null Then Return
	If sTypeOf <> "text" Then Return
	If sMainButtonType <> "none" Then 
		UI.SetTextByID($"${mName}_maintext"$, s)
		UI.SetVisibleByID($"${mName}_maintext"$, True)
	End If	
End Sub
'set Main Button Text Color
Sub setMainButtonTextColor(s As String)			'ignoredeadcode
	sMainButtonTextColor = s
	CustProps.put("MainButtonTextColor", s)
	If mElement = Null Then Return
	If sMainButtonType <> "none" Then UI.SetTextColorByID($"${mName}_main"$, s)
End Sub
'set Raw Child Colors
Sub setChildColors(s As String)			'ignoredeadcode
	sRawChildColors = s
	CustProps.put("RawChildColors", s)
	If mElement = Null Then Return
	Dim mtext As Map = UI.GetKeyValues(sRawChildColors, False)
	For Each k As String In mtext.Keys
		Dim v As String = mtext.Get(k)
		v = v.Trim
		k = UI.CleanID(k)
		UI.SetColorByID($"${mName}_${k}"$, "color", "btn", v)
	Next
End Sub
'set Raw Child Icons
Sub setChildIcons(s As String)				'ignoredeadcode
	sRawChildIcons = s
	CustProps.put("RawChildIcons", s)
	If mElement = Null Then Return
	Dim mtext As Map = UI.GetKeyValues(sRawChildIcons, False)
	For Each k As String In mtext.Keys
		Dim v As String = mtext.Get(k)
		v = v.Trim
		k = UI.CleanID(k)
		UI.SetAttrByID($"${mName}_${k}_icon"$, "data-src", v)
		UI.SetWidthByID($"${mName}_${k}_icon"$, sIconSize)
		UI.SetWidthByID($"${mName}_${k}_icon"$, sIconSize)
	Next
End Sub

'set Raw Child Keys
Sub setChildKeys(s As String)				'ignoredeadcode
	sRawChildKeys = s
	CustProps.put("RawChildKeys", s)
	If mElement = Null Then Return
	sRawChildKeys = sRawChildKeys.Replace(CRLF,"")
	sRawChildKeys = sRawChildKeys.Replace("<br/>", "")
	Dim children As List = UI.StrParse(";", sRawChildKeys)
	children = UI.ListTrimItems(children)
	'
	Dim btnSize As String = UI.FixSize("btn", sChildSize)
	Dim sbButtons As StringBuilder
	sbButtons.Initialize 
	If sTypeOf = "text" Then
		For Each btn As String In children
			btn = UI.CleanID(btn)
			sbButtons.Append($"<button id="${mName}_${btn}" class="btn ${btnSize} btn-circle"></button>"$)
		Next
	else if sTypeOf = "icon" Then
		For Each btn As String In children
			btn = UI.CleanID(btn)
			sbButtons.Append($"[BANCLEAN]<button id="${mName}_${btn}" class="btn ${btnSize} btn-circle">
				<svg-renderer id="${mName}_${btn}_icon" style="pointer-events:none;" fit="false" replace="true" fill="currentColor" data-js="enabled"></svg-renderer>
			</button>"$)
		Next
	End If
	UI.Append(mElement, sbButtons.ToString)
End Sub
'set Raw Child Text
Sub setChildText(s As String)			'ignoredeadcode
	sRawChildText = s
	CustProps.put("RawChildText", s)
	If mElement = Null Then Return
	If sTypeOf <> "text" Then Return
	Dim mtext As Map = UI.GetKeyValues(sRawChildText, False)
	For Each k As String In mtext.Keys
		Dim v As String = mtext.Get(k)
		v = v.Trim
		k = UI.CleanID(k)
		UI.SetTextByID($"${mName}_${k}"$, v)
	Next
End Sub

'set Raw Child Text Color
Sub setChildTextColor(s As String)			'ignoredeadcode
	sRawChildTextColor = s
	CustProps.put("RawChildTextColor", s)
	If mElement = Null Then Return
	Dim mtext As Map = UI.GetKeyValues(sRawChildTextColor, False)
	For Each k As String In mtext.Keys
		Dim v As String = mtext.Get(k)
		v = v.Trim
		k = UI.CleanID(k)
		UI.SetTextColorByID($"${mName}_${k}"$, v)
	Next
End Sub

'set Type Of
'options: icon|text
Sub setTypeOf(s As String)
	sTypeOf = s
	CustProps.put("TypeOf", s)
	If mElement = Null Then Return
End Sub
'get Child Size
Sub getChildSize As String
	Return sChildSize
End Sub

'get Color
Sub getColor As String
	Return sColor
End Sub
'get Flower
Sub getFlower As Boolean
	Return bFlower
End Sub
'get Icon
Sub getIcon As String
	Return sIcon
End Sub

'get Icon Size
Sub getIconSize As String
	Return sIconSize
End Sub

'get Main Button Color
Sub getMainButtonColor As String
	Return sMainButtonColor
End Sub
'get Main Button Icon
Sub getMainButtonIcon As String
	Return sMainButtonIcon
End Sub
'get Main Button Text
Sub getMainButtonText As String
	Return sMainButtonText
End Sub
'get Main Button Text Color
Sub getMainButtonTextColor As String
	Return sMainButtonTextColor
End Sub
'get Raw Child Colors
Sub getChildColors As String
	Return sRawChildColors
End Sub
'get Raw Child Icons
Sub getChildIcons As String
	Return sRawChildIcons
End Sub
'get Raw Child Keys
Sub getChildKeys As String
	Return sRawChildKeys
End Sub
'get Raw Child Text
Sub getChildText As String
	Return sRawChildText
End Sub
'get Raw Child Text Color
Sub getChildTextColor As String
	Return sRawChildTextColor
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Type Of
Sub getTypeOf As String
	Return sTypeOf
End Sub