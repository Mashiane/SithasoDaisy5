B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Avatar, DisplayName: Avatar, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Avatar
#DesignerProperty: Key: AvatarSize, DisplayName: Avatar Size, FieldType: String, DefaultValue: 12, Description: Avatar Size
#DesignerProperty: Key: Mask, DisplayName: Mask, FieldType: String, DefaultValue: none, Description: Mask, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Chat Title, Description: Title
#DesignerProperty: Key: SubTitle, DisplayName: Sub Title, FieldType: String, DefaultValue: Chat Subtitle, Description: Sub Title
#DesignerProperty: Key: Badge, DisplayName: Badge, FieldType: String, DefaultValue: 12, Description: Badge
#DesignerProperty: Key: BadgeColor, DisplayName: Badge Color, FieldType: String, DefaultValue: none, Description: Badge Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: TimeAgo, DisplayName: Time Ago, FieldType: String, DefaultValue: Time Ago, Description: Time Ago
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
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
	Private sAvatar As String = ""
	Private sAvatarSize As String = "12"
	Private sBadge As String = ""
	Private sBadgeColor As String = "none"
	Private sMask As String = "none"
	Private sRounded As String = "none"
	Private sShadow As String = "none"
	Private sSubTitle As String = "Chat Subtitle"
	Private sTimeAgo As String = "Time Ago"
	Private sTitle As String = "Chat Title"
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
	if s <> "" then UI.SetPosition(mElement, sPosition)
End Sub
Sub getPosition As String
	Return sPosition
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
		sAvatar = Props.GetDefault("Avatar", "")
		sAvatar = modSD5.CStr(sAvatar)
		sAvatarSize = Props.GetDefault("AvatarSize", "12")
		sAvatarSize = modSD5.CStr(sAvatarSize)
		sBadge = Props.GetDefault("Badge", "")
		sBadge = modSD5.CStr(sBadge)
		sBadgeColor = Props.GetDefault("BadgeColor", "none")
		sBadgeColor = modSD5.CStr(sBadgeColor)
		If sBadgeColor = "none" Then sBadgeColor = ""
		sMask = Props.GetDefault("Mask", "none")
		sMask = modSD5.CStr(sMask)
		If sMask = "none" Then sMask = ""
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = modSD5.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sSubTitle = Props.GetDefault("SubTitle", "Chat Subtitle")
		sSubTitle = modSD5.CStr(sSubTitle)
		sTimeAgo = Props.GetDefault("TimeAgo", "Time Ago")
		sTimeAgo = modSD5.CStr(sTimeAgo)
		sTitle = Props.GetDefault("Title", "Chat Title")
		sTitle = modSD5.CStr(sTitle)
	End If
	'
	UI.AddClassDT("flex items-center justify-between p-4 hover:bg-gray-100")
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	UI.AddClassDT("cursor-pointer")

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
      		<div class="flex items-center space-x-4">
        		<div id="${mName}_avatar" class="avatar">
          			<div id="${mName}_avatarhost">
            			<img id="${mName}_image" src="${sAvatar}" alt="">
          			</div>
        		</div>
        		<div id="${mName}_titles">
          			<p id="${mName}_title" class="font-semibold">${sTitle}</p>
          			<p id="${mName}_subtitle" class="text-sm text-gray-500">${sSubTitle}</p>
        		</div>
      		</div>
      		<div id="${mName}_rights" class="text-right">
        		<div id="${mName}_badge" class="badge">${sBadge}</div>
        		<p id="${mName}_time" class="text-sm text-gray-400">${sTimeAgo}</p>
      		</div>
    	</div>"$).Get("#" & mName)
		setBadgeColor(sBadgeColor)
		setAvatarSize(sAvatarSize)
		setBadge(sBadge)
		setMask(sMask)
End Sub

'set Avatar
Sub setAvatar(s As String)
	sAvatar = s
	CustProps.put("Avatar", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetImageByID($"${mName}_image"$, s)
End Sub
'set Avatar Size
'options: xs|none|sm|md|lg|xl
Sub setAvatarSize(s As String)
	sAvatarSize = s
	CustProps.put("AvatarSize", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetWidthByID($"${mName}_avatarhost"$, s)
		UI.SetHeightByID($"${mName}_avatarhost"$, s)
	End If
End Sub
'set Badge
Sub setBadge(s As String)
	sBadge = s
	CustProps.put("Badge", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_badge"$, s)
	If s = "" Then 
		UI.SetVisibleByID($"${mName}_badge"$, False)
	Else
		UI.SetVisibleByID($"${mName}_badge"$, True)
	End If
End Sub
'set Badge Color
'options: accent|error|info|neutral|none|primary|secondary|success|warning
Sub setBadgeColor(s As String)
	sBadgeColor = s
	CustProps.put("BadgeColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColorByID($"${mName}_badge"$, "color", "badge", s)
End Sub
'set Mask
'options: squircle|heart|hexagon|hexagon-2|decagon|pentagon|diamond|square|circle|star|star-2|triangle|triangle-2|triangle-3|triangle-4|none|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
Sub setMask(s As String)
	sMask = s
	CustProps.put("Mask", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaskByID($"${mName}_avatarhost"$, sMask)
End Sub
'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Sub Title
Sub setSubTitle(s As String)
	sSubTitle = s
	CustProps.put("SubTitle", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_subtitle"$, s)
End Sub
'set Timeago
Sub setTimeAgo(s As String)
	sTimeAgo = s
	CustProps.put("TimeAgo", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_time"$, s)
End Sub
'set Title
Sub setTitle(s As String)
	sTitle = s
	CustProps.put("Title", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_title"$, s)
End Sub
'get Avatar
Sub getAvatar As String
	Return sAvatar
End Sub
'get Avatar Size
Sub getAvatarSize As String
	Return sAvatarSize
End Sub
'get Badge
Sub getBadge As String
	Return sBadge
End Sub
'get Badge Color
Sub getBadgeColor As String
	Return sBadgeColor
End Sub
'get Mask
Sub getMask As String
	Return sMask
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Sub Title
Sub getSubTitle As String
	Return sSubTitle
End Sub
'get Timeago
Sub getTimeago As String
	Return sTimeAgo
End Sub
'get Title
Sub getTitle As String
	Return sTitle
End Sub