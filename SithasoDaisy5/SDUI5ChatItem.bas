B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: FromAvatar, DisplayName: From Avatar, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: From Avatar
#DesignerProperty: Key: FromName, DisplayName: From Name, FieldType: String, DefaultValue: From Name, Description: From Name
#DesignerProperty: Key: Message, DisplayName: Message, FieldType: String, DefaultValue: Message, Description: Message
#DesignerProperty: Key: DeliveryTime, DisplayName: Delivery Time, FieldType: String, DefaultValue: 10:00 AM, Description: Delivery Time
#DesignerProperty: Key: TimeAgo, DisplayName: Time Ago, FieldType: Boolean, DefaultValue: True, Description: Time Ago
#DesignerProperty: Key: Unread, DisplayName: Unread, FieldType: String, DefaultValue: 2, Description: Unread
#DesignerProperty: Key: UnreadColor, DisplayName: Unread Color, FieldType: String, DefaultValue: primary, Description: Unread Color
#DesignerProperty: Key: UnreadVisible, DisplayName: Unread Visible, FieldType: Boolean, DefaultValue: True, Description: Unread Visible
#DesignerProperty: Key: HelpAvatar, DisplayName: Help Avatar, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Help Avatar
#DesignerProperty: Key: HelpVisible, DisplayName: Help Visible, FieldType: Boolean, DefaultValue: False, Description: Help Visible
#DesignerProperty: Key: AvatarShape, DisplayName: Avatar Shape, FieldType: String, DefaultValue: circle, Description: Avatar Shape, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
#DesignerProperty: Key: AvatarSize, DisplayName: Avatar Size, FieldType: String, DefaultValue: 12, Description: Avatar Size
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-100, Description: Background Color
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: True, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private sAvatarShape As String = "circle"
	Private sAvatarSize As String = "12"
	Private sBackgroundColor As String = "none"
	Private sDeliveryTime As String = "10:00 AM"
	Private sFromAvatar As String = ""
	Private sFromName As String = "From Name"
	Private sHelpAvatar As String = ""
	Private bHelpVisible As Boolean = False
	Private sMessage As String = "Message"
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = True
	Private sShadow As String = "none"
	Private bTimeAgo As Boolean = True
	Private sUnread As String = "2"
	Private sUnreadColor As String = "primary"
	Private bUnreadVisible As Boolean = True
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
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
		sAvatarShape = Props.GetDefault("AvatarShape", "circle")
		sAvatarShape = UI.CStr(sAvatarShape)
		sAvatarSize = Props.GetDefault("AvatarSize", "12")
		sAvatarSize = UI.CStr(sAvatarSize)
		sDeliveryTime = Props.GetDefault("DeliveryTime", "10:00 AM")
		sDeliveryTime = UI.CStr(sDeliveryTime)
		sFromAvatar = Props.GetDefault("FromAvatar", "./assets/mashy.jpg")
		sFromAvatar = UI.CStr(sFromAvatar)
		sFromName = Props.GetDefault("FromName", "From Name")
		sFromName = UI.CStr(sFromName)
		sHelpAvatar = Props.GetDefault("HelpAvatar", "")
		sHelpAvatar = UI.CStr(sHelpAvatar)
		bHelpVisible = Props.GetDefault("HelpVisible", False)
		bHelpVisible = UI.CBool(bHelpVisible)
		sMessage = Props.GetDefault("Message", "Message")
		sMessage = UI.CStr(sMessage)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", True)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		bTimeAgo = Props.GetDefault("TimeAgo", True)
		bTimeAgo = UI.CBool(bTimeAgo)
		sUnread = Props.GetDefault("Unread", "2")
		sUnread = UI.CStr(sUnread)
		sUnreadColor = Props.GetDefault("UnreadColor", "primary")
		sUnreadColor = UI.CStr(sUnreadColor)
		bUnreadVisible = Props.GetDefault("UnreadVisible", True)
		bUnreadVisible = UI.CBool(bUnreadVisible)
	End If
	'
	UI.AddClassDT("list-row flex items-center gap-3 p-2 hover:bg-base-200 cursor-pointer wa-sidebar-chat")
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
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
	Dim avtsize As String = UI.FixSize("w", sAvatarSize)
	Dim avtshape As String = UI.FixMask(sAvatarShape)
	Dim unreadcolor As String = UI.FixColor("badge", sUnreadColor)
	Dim sunreadvisible As String = ""
	If bUnreadVisible = False Then sunreadvisible = "hidden"
	Dim shelpvisible As String = ""
	If bHelpVisible = False Then shelpvisible = "hidden"
	
	mElement = mTarget.Append($"[BANCLEAN]
	<li id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<div id="${mName}_fromavt" class="avatar">
        	<div id="${mName}_fromhost" class="${avtsize} ${avtshape}">
          		<img id="${mName}_fromimg" src="${sFromAvatar}" alt="${sFromName}">
        	</div>
      	</div>
      	<div id="${mName}_flex1" class="flex-1">
        	<div id="${mName}_flex2" class="flex justify-between">
          		<span id="${mName}_fromname" class="font-semibold text-base">${sFromName}</span>
          		<span id="${mName}_time" class="text-xs text-gray-500">${sDeliveryTime}</span>
        	</div>
        	<div id="${mName}_flex3" class="flex justify-between">
          		<p id="${mName}_message" class="text-sm text-gray-500 truncate">${sMessage}</p>
          		<div id="${mName}_unread" class="badge ${unreadcolor} ${sunreadvisible} rounded-full w-5 h-5 badge-sm">${sUnread}</div>
        	</div>
      	</div>
      	<div id="${mName}_helpavt" class="avatar ${shelpvisible}">
        	<div id="${mName}_helphost" class="${avtsize} ${avtshape}">
          		<img id="${mName}_helpimg" src="${sHelpAvatar}" alt="">
        	</div>
      	</div>
	</li>"$).Get("#" & mName)
	UI.OnEvent(mElement, "click", mCallBack, $"${mName}_click"$)
End Sub

'set Avatar Shape
'options: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
Sub setAvatarShape(s As String)
	sAvatarShape = s
	CustProps.put("AvatarShape", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetMaskByID($"${mName}_fromhost"$, s)
		UI.SetMaskByID($"${mName}_helphost"$, s)
	End If
End Sub
'set Avatar Size
Sub setAvatarSize(s As String)
	sAvatarSize = s
	CustProps.put("AvatarSize", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetWidthByID($"${mName}_fromhost"$, s)
		UI.SetWidthByID($"${mName}_helphost"$, s)
	End If
End Sub
'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetBackgroundColor(mElement, s)
End Sub
'set Delivery Time
Sub setDeliveryTime(s As String)
	sDeliveryTime = s
	CustProps.put("DeliveryTime", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_time"$, s)
End Sub
'set From Avatar
Sub setFromAvatar(s As String)
	sFromAvatar = s
	CustProps.put("FromAvatar", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetImageByID($"${mName}_fromimg"$, s)
End Sub
'set From Name
Sub setFromName(s As String)
	sFromName = s
	CustProps.put("FromName", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_fromname"$, s)
End Sub
'set Help Avatar
Sub setHelpAvatar(s As String)
	sHelpAvatar = s
	CustProps.put("HelpAvatar", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetImageByID($"${mName}_helpimg"$, s)
End Sub
'set Help Visible
Sub setHelpVisible(b As Boolean)
	bHelpVisible = b
	CustProps.put("HelpVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_helpavt"$, b)
End Sub
'set Message
Sub setMessage(s As String)
	sMessage = s
	CustProps.put("Message", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_message"$, s)
End Sub
'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub
'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "rounded-box")
	Else
		UI.RemoveClass(mElement, "rounded-box")
	End If
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Time Ago
Sub setTimeAgo(b As Boolean)
	bTimeAgo = b
	CustProps.put("TimeAgo", b)
End Sub
'set Unread
Sub setUnread(s As String)
	sUnread = s
	CustProps.put("Unread", s)
	If mElement = Null Then Return
	Dim iUnread As Int = UI.CInt(s)
	If iUnread > 9 Then
		UI.SetTextByID($"${mName}_unread"$, "+9")
	Else
		UI.SetTextByID($"${mName}_unread"$, iUnread)
	End If
	If iUnread = 0 Then
		UI.SetVisibleByID($"${mName}_unread"$, False)
	Else
		UI.SetVisibleByID($"${mName}_unread"$, True)
	End If
End Sub
'set Unread Color
Sub setUnreadColor(s As String)
	sUnreadColor = s
	CustProps.put("UnreadColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColorByID($"${mName}_unread"$, "badge", "badge", s)
End Sub
'set Unread Visible
Sub setUnreadVisible(b As Boolean)
	bUnreadVisible = b
	CustProps.put("UnreadVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_unread"$, b)
End Sub
'get Avatar Shape
Sub getAvatarShape As String
	Return sAvatarShape
End Sub
'get Avatar Size
Sub getAvatarSize As String
	Return sAvatarSize
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Delivery Time
Sub getDeliveryTime As String
	Return sDeliveryTime
End Sub
'get From Avatar
Sub getFromAvatar As String
	Return sFromAvatar
End Sub
'get From Name
Sub getFromName As String
	Return sFromName
End Sub
'get Help Avatar
Sub getHelpAvatar As String
	Return sHelpAvatar
End Sub
'get Help Visible
Sub getHelpVisible As Boolean
	Return bHelpVisible
End Sub
'get Message
Sub getMessage As String
	Return sMessage
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Time Ago
Sub getTimeAgo As Boolean
	Return bTimeAgo
End Sub
'get Unread
Sub getUnread As String
	Return sUnread
End Sub
'get Unread Color
Sub getUnreadColor As String
	Return sUnreadColor
End Sub
'get Unread Visible
Sub getUnreadVisible As Boolean
	Return bUnreadVisible
End Sub