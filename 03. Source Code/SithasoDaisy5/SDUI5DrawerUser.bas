B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#Event: Exit (event As BANanoEvent)
#Event: Click (event As BANanoEvent)
'
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: UserName, DisplayName: User Name, FieldType: String, DefaultValue: , Description: User Name
#DesignerProperty: Key: EmailAddress, DisplayName: Email Address, FieldType: String, DefaultValue: , Description: Email Address
#DesignerProperty: Key: Avatar, DisplayName: Avatar, FieldType: String, DefaultValue: , Description: Avatar
#DesignerProperty: Key: AvatarShape, DisplayName: Avatar Shape, FieldType: String, DefaultValue: circle, Description: Avatar Shape, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
#DesignerProperty: Key: AvatarSize, DisplayName: Avatar Size, FieldType: String, DefaultValue: 8, Description: Avatar Size
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
	Private sAvatarShape As String = "circle"
	Private sAvatarSize As String = "8"
	Private sEmailAddress As String = ""
	Private sUserName As String = ""
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("UserName", "")
	CustProps.Put("EmailAddress", "")
	CustProps.Put("Avatar", "")
	CustProps.Put("AvatarShape", "circle")
	CustProps.Put("AvatarSize", "8")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
End Sub
'set properties from an outside source
Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.Get("ParentID")
End Sub

Sub GetProperties As Map
	Return CustProps
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
		sAvatar = Props.GetDefault("Avatar", "")
		sAvatar = UI.CStr(sAvatar)
		sAvatarShape = Props.GetDefault("AvatarShape", "circle")
		sAvatarShape = UI.CStr(sAvatarShape)
		sAvatarSize = Props.GetDefault("AvatarSize", "8")
		sAvatarSize = UI.CStr(sAvatarSize)
		sEmailAddress = Props.GetDefault("EmailAddress", "")
		sEmailAddress = UI.CStr(sEmailAddress)
		sUserName = Props.GetDefault("UserName", "")
		sUserName = UI.CStr(sUserName)
	End If
	'
	UI.AddClassDT("flex justify-between items-center p-2")
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
    	<a id="${mName}_btn" class="btn btn-ghost">
            <img id="${mName}_image" alt="Profile" src="${sAvatar}"/>
            <div id="${mName}_names" class="flex flex-col text-start">
                <span id="${mName}_username" class="font-bold">${sUserName}</span>
                <span id="${mName}_email" class="text-sm">${sEmailAddress}</span>
            </div>
        </a>
        <a id="${mName}_exit" class="btn btn-sm mr-3 btn-ghost btn-circle" title="Logout">
			<svg-renderer id="${mName}_exit_icon" style="pointer-events:none;" style="width:70%;height:70%"   data-js="enabled" fill="currentColor" data-src="./assets/door-open-solid.svg"></svg-renderer>
        </a>
    </div>"$).Get("#" & mName)
	setAvatar(sAvatar)
	setAvatarShape(sAvatarShape)
	setAvatarSize(sAvatarSize)
	setEmailAddress(sEmailAddress)
	setUserName(sUserName)
	UI.ResizeIconByIDFromButtonSize($"${mName}_exit_icon"$, "sm")
	UI.OnEventByID($"${mName}_exit"$, "click", mCallBack, $"${mName}_exit"$)
	UI.OnEventByID($"${mName}_btn"$, "click", mCallBack, $"${mName}_click"$)
End Sub

'set Avatar
Sub setAvatar(s As String)			'ignoredeadcode
	sAvatar = s
	CustProps.put("Avatar", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetImageByID($"${mName}_image"$, s)
End Sub

'set Avatar Shape
Sub setAvatarShape(s As String)			'ignoredeadcode
	sAvatarShape = s
	CustProps.put("AvatarShape", s)
	If mElement = Null Then Return
	UI.SetMaskByID($"${mName}_image"$, s)
End Sub
'set Avatar Size
'options: xs|none|sm|md|lg|xl
Sub setAvatarSize(s As String)				'ignoredeadcode
	sAvatarSize = s
	CustProps.put("AvatarSize", s)
	If mElement = Null Then Return
	If s <> "" Then
		UI.SetHeightByID($"${mName}_image"$, s)
		UI.SetWidthByID($"${mName}_image"$, s)
	End If
End Sub
'set Email Address
Sub setEmailAddress(s As String)					'ignoredeadcode
	sEmailAddress = s
	CustProps.put("EmailAddress", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_email"$, s)
End Sub
'set User Name
Sub setUserName(s As String)						'ignoredeadcode
	sUserName = s
	CustProps.put("UserName", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_username"$, s)
End Sub
'get Avatar
Sub getAvatar As String
	Return sAvatar
End Sub
'get Avatar Shape
Sub getAvatarShape As String
	Return sAvatarShape
End Sub
'get Avatar Size
Sub getAvatarSize As String
	Return sAvatarSize
End Sub
'get Email Address
Sub getEmailAddress As String
	Return sEmailAddress
End Sub
'get User Name
Sub getUserName As String
	Return sUserName
End Sub