B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: AvatarType, DisplayName: Avatar Type, FieldType: String, DefaultValue: image, Description: Avatar Type, List: image|placeholder
#DesignerProperty: Key: Image, DisplayName: Image, FieldType: String, DefaultValue: ./assets/600by600.jpg, Description: Image
#DesignerProperty: Key: Mask, DisplayName: Mask, FieldType: String, DefaultValue: circle, Description: Mask, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
#DesignerProperty: Key: ChatImage, DisplayName: Chat Image, FieldType: Boolean, DefaultValue: False, Description: Chat Image
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue: S, Description: Placeholder
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: , Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: Badge, DisplayName: Badge, FieldType: String, DefaultValue: , Description: Badge
#DesignerProperty: Key: BadgeColor, DisplayName: Badge Color, FieldType: String, DefaultValue: secondary, Description: Badge Color
#DesignerProperty: Key: BadgePosition, DisplayName: Badge Position, FieldType: String, DefaultValue: top-end, Description: Badge Position, List: bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
#DesignerProperty: Key: BadgeSize, DisplayName: Badge Size, FieldType: String, DefaultValue: sm, Description: Badge Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: BadgeVisible, DisplayName: Badge Visible, FieldType: Boolean, DefaultValue: False, Description: Badge Visible
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: primary, Description: Background Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 12, Description: Width
#DesignerProperty: Key: OnlineStatus, DisplayName: Online Status, FieldType: Boolean, DefaultValue: False, Description: Online Status
#DesignerProperty: Key: Online, DisplayName: Online, FieldType: Boolean, DefaultValue: False, Description: Online
#DesignerProperty: Key: OnlineColor, DisplayName: Online Color, FieldType: String, DefaultValue: , Description: Online Color
#DesignerProperty: Key: Ring, DisplayName: Ring, FieldType: Boolean, DefaultValue: False, Description: Ring
#DesignerProperty: Key: RingColor, DisplayName: Ring Color, FieldType: String, DefaultValue: primary, Description: Ring Color
#DesignerProperty: Key: RingOffset, DisplayName: Ring Offset, FieldType: String, DefaultValue: 2, Description: Ring Offset
#DesignerProperty: Key: RingOffsetColor, DisplayName: Ring Offset Color, FieldType: String, DefaultValue: base-100, Description: Ring Offset Color
#DesignerProperty: Key: Activator, DisplayName: Activator, FieldType: Boolean, DefaultValue: False, Description: Activator
#DesignerProperty: Key: RoundedField, DisplayName: Rounded Field, FieldType: Boolean, DefaultValue: False, Description: Rounded Field
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
	Public Tag As Object
	'Public Root As SDUIElement
	Private sAvatarType As String = "image"
	Private sBackgroundColor As String = "primary"
	Private sHeight As String = ""
	Private sImage As String = "./assets/600by600.jpg"
	Private sMask As String = "circle"
	Private bOnline As Boolean = False
	Private sOnlineColor As String = ""
	Private bOnlineStatus As Boolean = False
	Private sPlaceholder As String = "S"
	Private bRing As Boolean = False
	Private sRingColor As String = "primary"
	Private sRingOffset As String = "2"
	Private sRingOffsetColor As String = "base-100"
	Private sTextColor As String = ""
	Private sWidth As String = "12"
	Public CONST AVATARTYPE_IMAGE As String = "image"
	Public CONST AVATARTYPE_PLACEHOLDER As String = "placeholder"
	Private sTextSize As String = ""
	Private sBadge As String = ""
	Private sBadgeColor As String = "secondary"
	Private sBadgePosition As String = "top-end"
	Public CONST BADGEPOSITION_BOTTOM_CENTER As String = "bottom-center"
	Public CONST BADGEPOSITION_MIDDLE_CENTER As String = "middle-center"
	Public CONST BADGEPOSITION_BOTTOM_END As String = "bottom-end"
	Public CONST BADGEPOSITION_BOTTOM_START As String = "bottom-start"
	Public CONST BADGEPOSITION_MIDDLE_END As String = "middle-end"
	Public CONST BADGEPOSITION_MIDDLE_START As String = "middle-start"
	Public CONST BADGEPOSITION_TOP_CENTER As String = "top-center"
	Public CONST BADGEPOSITION_TOP_END As String = "top-end"
	Public CONST BADGEPOSITION_TOP_START As String = "top-start"
	Private sBadgeSize As String = "sm"
	Private bBadgeVisible As Boolean = False
	Public CONST BADGESIZE_LG As String = "lg"
	Public CONST BADGESIZE_MD As String = "md"
	Public CONST BADGESIZE_NONE As String = "none"
	Public CONST BADGESIZE_SM As String = "sm"
	Public CONST BADGESIZE_XL As String = "xl"
	Public CONST BADGESIZE_XS As String = "xs"
	Private bActivator As Boolean = False
	Private bRoundedField As Boolean = False
	Private bChatImage As Boolean = False
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
	Return UI.GetVisible(mElement)
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
	Return UI.GetEnabled(mElement)
End Sub
'set Position Style
'options: static|relative|fixed|absolute|sticky|none
Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.put("PositionStyle", s)
	If mElement = Null Then Return
	if s <> "" then UI.AddStyle(mElement, "position", s)
End Sub
Sub getPositionStyle As String
	Return sPositionStyle
End Sub
'set raw positions
Sub setPosition(s As String)
	sPosition = s
	CustProps.Put("Position", sPosition)
	If mElement = Null Then Return
	UI.SetPosition(mElement, sPosition)
End Sub
Sub getPosition As String
	Return sPosition
End Sub
Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	UI.SetAttributes(mElement, sRawAttributes)
End Sub
'
Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	UI.SetStyles(mElement, sRawStyles)
End Sub
'
Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	UI.SetClasses(mElement, sRawStyles)
End Sub
'
Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub
'
Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub
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
		sAvatarType = Props.GetDefault("AvatarType", "image")
		sAvatarType = modSD5.CStr(sAvatarType)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sImage = Props.GetDefault("Image", "./assets/600by600.jpg")
		sImage = modSD5.CStr(sImage)
		sMask = Props.GetDefault("Mask", "circle")
		sMask = modSD5.CStr(sMask)
		If sMask = "none" Then sMask = ""
		bOnline = Props.GetDefault("Online", False)
		bOnline = modSD5.CBool(bOnline)
		sOnlineColor = Props.GetDefault("OnlineColor", "")
		sOnlineColor = modSD5.CStr(sOnlineColor)
		bOnlineStatus = Props.GetDefault("OnlineStatus", False)
		bOnlineStatus = modSD5.CBool(bOnlineStatus)
		sPlaceholder = Props.GetDefault("Placeholder", "S")
		sPlaceholder = modSD5.CStr(sPlaceholder)
		bRing = Props.GetDefault("Ring", False)
		bRing = modSD5.CBool(bRing)
		sRingColor = Props.GetDefault("RingColor", "primary")
		sRingColor = modSD5.CStr(sRingColor)
		sRingOffset = Props.GetDefault("RingOffset", "2")
		sRingOffset = modSD5.CStr(sRingOffset)
		sRingOffsetColor = Props.GetDefault("RingOffsetColor", "base-100")
		sRingOffsetColor = modSD5.CStr(sRingOffsetColor)
		sWidth = Props.GetDefault("Width", "12")
		sWidth = modSD5.CStr(sWidth)
		sTextSize = Props.GetDefault("TextSize", "")
		sTextSize = modSD5.CStr(sTextSize)
		sBadge = Props.GetDefault("Badge", "")
		sBadge = modSD5.CStr(sBadge)
		sBadgeColor = Props.GetDefault("BadgeColor", "secondary")
		sBadgeColor = modSD5.CStr(sBadgeColor)
		sBadgePosition = Props.GetDefault("BadgePosition", "top-end")
		sBadgePosition = modSD5.CStr(sBadgePosition)
		sBadgeSize = Props.GetDefault("BadgeSize", "sm")
		sBadgeSize = modSD5.CStr(sBadgeSize)
		bBadgeVisible = Props.GetDefault("BadgeVisible", False)
		bBadgeVisible = modSD5.CBool(bBadgeVisible)
		bActivator = Props.GetDefault("Activator", False)
		bActivator = modSD5.CBool(bActivator)
		bRoundedField = Props.GetDefault("RoundedField", False)
		bRoundedField = modSD5.CBool(bRoundedField)
		bChatImage = Props.GetDefault("ChatImage", False)
		bChatImage = modSD5.CBool(bChatImage)
	End If
	'
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	UI.AddClassDT("avatar")
	If bActivator Then
		UI.AddAttrDT("tabindex", "0")
		UI.AddAttrDT("role", "button")
	End If
	If bChatImage Then
		UI.AddClassDT("chat-image")
	End If
	If bRoundedField = True Then UI.AddClassDT("rounded-field")
	If bOnline Then 
		If bOnlineStatus Then UI.UpdateClassDT("online", "avatar-online")
	Else
		If bOnlineStatus Then UI.UpdateClassDT("online", "avatar-offline")
	End If
	If sAvatarType = "placeholder" Then UI.AddClassDT("avatar-placeholder")
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	Select Case sAvatarType
	Case "image"
		mElement = mTarget.Append($"[BANCLEAN]
		<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
			<span id="${mName}_badge" class="hidden indicator-item badge">${sBadge}</span>
  			<div id="${mName}_host">
    			<img id="${mName}_image" src="${sImage}" alt=""></img>
  			</div>
		</div>"$).Get("#" & mName)		
	Case "placeholder"
		mElement = mTarget.Append($"[BANCLEAN]
		<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
			<span id="${mName}_badge" class="hidden indicator-item badge">${sBadge}</span>
  			<div id="${mName}_host">
				<span id="${mName}_text">${sPlaceholder}</span>
			</div>
		</div>"$).Get("#" & mName)
		setTextColor(sTextColor)
		setBackgroundColor(sBackgroundColor)
		setTextSize(sTextSize)
	End Select
	setWidth(sWidth)
	setHeight(sHeight)
	setMask(sMask)
	setOnline(bOnline)
	setRing(bRing)
	setRingColor(sRingColor)
	setRingOffset(sRingOffset)
	setRingOffsetColor(sRingOffsetColor)
	setBadge(sBadge)
	setBadgeColor(sBadgeColor)
	setBadgePosition(sBadgePosition)
	setBadgeSize(sBadgeSize)
	setBadgeVisible(bBadgeVisible)
End Sub

'set Badge Size
'options: lg|md|none|sm|xl|xs
Sub setBadgeSize(s As String)
	sBadgeSize = s
	CustProps.put("BadgeSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSizeByID($"${mName}_badge"$, "size", "badge", s)
End Sub
'set Badge Visible
Sub setBadgeVisible(b As Boolean)
	bBadgeVisible = b
	CustProps.put("BadgeVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_badge"$, b)
	If b Then
		UI.AddClass(mElement,"indicator")
	Else
		UI.RemoveClass(mElement, "indicator")
	End If
End Sub

'get Badge Size
Sub getBadgeSize As String
	Return sBadgeSize
End Sub
'get Badge Visible
Sub getBadgeVisible As Boolean
	Return bBadgeVisible
End Sub

'set Badge
Sub setBadge(s As String)
	sBadge = s
	CustProps.put("Badge", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_badge"$, sBadge)
End Sub
'set Badge Color
Sub setBadgeColor(s As String)
	sBadgeColor = s
	CustProps.put("BadgeColor", s)
	If mElement = Null Then Return
	If sBadge = "" Then Return
	UI.SetColorByID($"${mName}_badge"$, "color", "badge", sBadgeColor)
End Sub
'set Badge Position
'options: bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
Sub setBadgePosition(s As String)
	sBadgePosition = s
	CustProps.put("BadgePosition", s)
	If mElement = Null Then Return
	If sBadge = "" Then Return
	'bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
	Dim fpart As String = modSD5.mvfield(s,1,"-")
	Dim spart As String = modSD5.mvfield(s,2,"-")
	UI.UpdateClassByID($"${mName}_badge"$, "badgeposition", $"indicator-${fpart} indicator-${spart}"$)
End Sub
'get Badge
Sub getBadge As String
	Return sBadge
End Sub
'get Badge Color
Sub getBadgeColor As String
	Return sBadgeColor
End Sub
'get Badge Position
Sub getBadgePosition As String
	Return sBadgePosition
End Sub

'set Text Size
Sub setTextSize(s As String)
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	UI.SetTextSizeByID($"${mName}_text"$, s)
End Sub

'get Text Size
Sub getTextSize As String
	Return sTextSize
End Sub

'set Avatar Type
'options: image|placeholder
Sub setAvatarType(s As String)
	sAvatarType = s
	CustProps.put("AvatarType", s)
End Sub
'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	UI.SetBackgroundColorByID($"${mName}_host"$, s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	UI.SetHeightByID($"${mName}_host"$, s)
End Sub
'set Image
Sub setImage(s As String)
	sImage = s
	CustProps.put("Image", s)
	If mElement = Null Then Return
	UI.SetImageByID($"${mName}_image"$, s)
End Sub
'set Mask
'options: squircle|heart|hexagon|hexagon-2|decagon|pentagon|diamond|square|circle|star|star-2|triangle|triangle-2|triangle-3|triangle-4|none|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
Sub setMask(s As String)
	sMask = s
	CustProps.put("Mask", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetMaskByID($"${mName}_host"$, s)
End Sub
'set Online
Sub setOnline(b As Boolean)
	bOnline = b
	CustProps.put("Online", b)
	If mElement = Null Then Return
	UI.RemoveClass(mElement, "avatar-online")
	UI.RemoveClass(mElement, "avatar-offline")
	If bOnline Then
		If bOnlineStatus Then UI.UpdateClass(mElement, "online", "avatar-online")
	Else
		If bOnlineStatus Then UI.UpdateClass(mElement, "online", "avatar-offline")
	End If
End Sub
'set Online Color
Sub setOnlineColor(s As String)
	sOnlineColor = s
	CustProps.put("OnlineColor", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.AddAttr(mElement, "online-color", s)
End Sub
'set Online Status
Sub setOnlineStatus(b As Boolean)
	bOnlineStatus = b
	CustProps.put("OnlineStatus", b)
	If mElement = Null Then Return
	If b = False Then
		UI.RemoveClass(mElement, "avatar-online")
		UI.RemoveClass(mElement, "avatar-offline")
	End If
End Sub
'set Placeholder
Sub setPlaceholder(s As String)
	sPlaceholder = s
	CustProps.put("Placeholder", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_text"$, s)
End Sub
'set Ring
Sub setRing(b As Boolean)
	bRing = b
	CustProps.put("Ring", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_host"$, "ring")
	Else
		UI.RemoveClassByID($"${mName}_host"$, "ring")
	End If
End Sub
'set Ring Color
Sub setRingColor(s As String)
	sRingColor = s
	CustProps.put("RingColor", s)
	If mElement = Null Then Return
	If bRing = False Then Return
	UI.SetRingColorByID($"${mName}_host"$,  s)
End Sub
'set Ring Offset
Sub setRingOffset(s As String)
	sRingOffset = s
	CustProps.put("RingOffset", s)
	If mElement = Null Then Return
	If bRing = False Then Return
	Dim xoffset As String = $"ring-offset-${s}"$
	UI.UpdateClassByID($"${mName}_host"$, "ringoffset", xoffset)
End Sub
'set Ring Offset Color
Sub setRingOffsetColor(s As String)
	sRingOffsetColor = s
	CustProps.put("RingOffsetColor", s)
	If mElement = Null Then Return
	If bRing = False Then Return
	Dim xoffset As String = $"ring-offset-${s}"$
	UI.UpdateClassByID($"${mName}_host"$, "ringoffsetcolor", xoffset)
End Sub

'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	UI.SetTextColorByID($"${mName}_host"$, s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	UI.SetWidthByID($"${mName}_host"$, s)
End Sub
'get Avatar Type
Sub getAvatarType As String
	Return sAvatarType
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Image
Sub getImage As String
	Return sImage
End Sub
'get Mask
Sub getMask As String
	Return sMask
End Sub
'get Online
Sub getOnline As Boolean
	Return bOnline
End Sub
'get Online Color
Sub getOnlineColor As String
	Return sOnlineColor
End Sub
'get Online Status
Sub getOnlineStatus As Boolean
	Return bOnlineStatus
End Sub
'get Placeholder
Sub getPlaceholder As String
	Return sPlaceholder
End Sub
'get Ring
Sub getRing As Boolean
	Return bRing
End Sub
'get Ring Color
Sub getRingColor As String
	Return sRingColor
End Sub
'get Ring Offset
Sub getRingOffset As String
	Return sRingOffset
End Sub
'get Ring Offset Color
Sub getRingOffsetColor As String
	Return sRingOffsetColor
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub

'set Activator
Sub setActivator(b As Boolean)
	bActivator = b
	CustProps.put("Activator", b)
End Sub

'set Rounded Field
Sub setRoundedField(b As Boolean)
	bRoundedField = b
	CustProps.put("RoundedField", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "rounded-field")
	Else
		UI.RemoveClass(mElement, "rounded-field")
	End If
End Sub
'get Activator
Sub getActivator As Boolean
	Return bActivator
End Sub
'get Rounded Field
Sub getRoundedField As Boolean
	Return bRoundedField
End Sub

'set Chat Image
Sub setChatImage(b As Boolean)
	bChatImage = b
	CustProps.put("ChatImage", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClass(mElement, "chat-image")
	Else
		UI.RemoveClass(mElement, "chat-image")
	End If
End Sub

'get Chat Image
Sub getChatImage As Boolean
	Return bChatImage
End Sub