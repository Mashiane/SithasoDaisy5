B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _title|_content, Description: Child Item _title|_content
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: GroupName, DisplayName: Group Name, FieldType: String, DefaultValue: , Description: Group Name
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Collapse, Description: Title
#DesignerProperty: Key: RawContent, DisplayName: HTML Content, FieldType: String, DefaultValue: Collapse Content, Description: HTML Content
#DesignerProperty: Key: Active, DisplayName: Active, FieldType: Boolean, DefaultValue: False, Description: Active
#DesignerProperty: Key: RightIcon, DisplayName: Right Icon, FieldType: String, DefaultValue: none, Description: Right Icon, List: arrow|plus|none
#DesignerProperty: Key: JoinItem, DisplayName: Join Item, FieldType: Boolean, DefaultValue: False, Description: Join Item
#DesignerProperty: Key: TitleBackgroundColor, DisplayName: Title Background Color, FieldType: String, DefaultValue: , Description: Title Background Color
#DesignerProperty: Key: TitleTextColor, DisplayName: Title Text Color, FieldType: String, DefaultValue: , Description: Title Text Color
#DesignerProperty: Key: ContentBackgroundColor, DisplayName: Content Background Color, FieldType: String, DefaultValue: base-100, Description: Content Background Color
#DesignerProperty: Key: ContentTextColor, DisplayName: Content Text Color, FieldType: String, DefaultValue: , Description: Content Text Color
#DesignerProperty: Key: ContentTextSize, DisplayName: Content Text Size, FieldType: String, DefaultValue: sm, Description: Content Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-100, Description: Background Color
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: base-300, Description: Border Color
#DesignerProperty: Key: OpenClose, DisplayName: Open Close, FieldType: String, DefaultValue: none, Description: Open Close, List: close|none|open
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
	Private sBackgroundColor As String = "base-100"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private sContentBackgroundColor As String = "base-100"
	Private sContentTextColor As String = ""
	Private sContentTextSize As String = "sm"
	Private bJoinItem As Boolean = False
	Private sOpenClose As String = "none"
	Private sRawContent As String = "Collapse Content"
	Private sRightIcon As String = "none"
	Private sRounded As String = "none"
	Private sShadow As String = "none"
	Private sTextColor As String = ""
	Private sTitle As String = "Collapse"
	Private sTitleBackgroundColor As String = ""
	Private sTitleTextColor As String = ""
	Public CONST OPENCLOSE_CLOSE As String = "close"
	Public CONST OPENCLOSE_NONE As String = "none"
	Public CONST OPENCLOSE_OPEN As String = "open"
	Public CONST RIGHTICON_ARROW As String = "arrow"
	Public CONST RIGHTICON_PLUS As String = "plus"
	Private bActive As Boolean = False
	Private sGroupName As String = ""
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
		'sBackgroundColor = Props.GetDefault("BackgroundColor", "base-100")
		'sBackgroundColor = modSD5.CStr(sBackgroundColor)
		'If sBackgroundColor = "base-100" Then sBackgroundColor = ""
		sBorderColor = Props.GetDefault("BorderColor", "base-300")
		sBorderColor = modSD5.CStr(sBorderColor)
		sContentBackgroundColor = Props.GetDefault("ContentBackgroundColor", "base-100")
		sContentBackgroundColor = modSD5.CStr(sContentBackgroundColor)
		sContentTextColor = Props.GetDefault("ContentTextColor", "")
		sContentTextColor = modSD5.CStr(sContentTextColor)
		sContentTextSize = Props.GetDefault("ContentTextSize", "sm")
		sContentTextSize = modSD5.CStr(sContentTextSize)
		If sContentTextSize = "none" Then sContentTextSize = ""
		bJoinItem = Props.GetDefault("JoinItem", False)
		bJoinItem = modSD5.CBool(bJoinItem)
		sOpenClose = Props.GetDefault("OpenClose", "none")
		sOpenClose = modSD5.CStr(sOpenClose)
		If sOpenClose = "none" Then sOpenClose = ""
		sRawContent = Props.GetDefault("RawContent", "Collapse Content")
		sRawContent = modSD5.CStr(sRawContent)
		sRightIcon = Props.GetDefault("RightIcon", "arrow")
		sRightIcon = modSD5.CStr(sRightIcon)
		If sRightIcon = "none" Then sRightIcon = ""
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = modSD5.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sTextColor = Props.GetDefault("TextColor", "")
		sTextColor = modSD5.CStr(sTextColor)
		sTitle = Props.GetDefault("Title", "Collapse")
		sTitle = modSD5.CStr(sTitle)
		sTitleBackgroundColor = Props.GetDefault("TitleBackgroundColor", "")
		sTitleBackgroundColor = modSD5.CStr(sTitleBackgroundColor)
		sTitleTextColor = Props.GetDefault("TitleTextColor", "")
		sTitleTextColor = modSD5.CStr(sTitleTextColor)
		bActive = Props.GetDefault("Active", False)
		bActive = modSD5.CBool(bActive)
		sGroupName = Props.GetDefault("GroupName", "")
		sGroupName = modSD5.CStr(sGroupName)        
	End If
	'
	If bBorder = True Then UI.AddClassDT("border")
	If sBorderColor <> "" Then UI.AddColorDT("border", sBorderColor)
	UI.AddClassDT("collapse")
	If bJoinItem = True Then UI.AddClassDT("join-item")
	If sOpenClose <> "" Then UI.UpdateClassDT("openclose", "collapse-" & sOpenClose)
	If sRightIcon <> "" Then UI.UpdateClassDT("righticon", "collapse-" & sRightIcon)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
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
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<input id="${mName}_check" type="checkbox"></input>
		<div id="${mName}_title" class="collapse-title font-semibold">${sTitle}</div>
		<div id="${mName}_content" class="collapse-content">${sRawContent}</div>
	</div>"$).Get("#" & mName)
	setContentBackgroundColor(sContentBackgroundColor)
	setContentTextColor(sContentTextColor)
	setContentTextSize(sContentTextSize)
	setTitleBackgroundColor(sTitleBackgroundColor)
	setTitleTextColor(sTitleTextColor)
	setActive(bActive)
	setGroupName(sGroupName)
End Sub

'set Group Name
Sub setGroupName(s As String)
	sGroupName = s
	CustProps.put("GroupName", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttrByID($"${mName}_check"$, "name", s)
End Sub

'get Group Name
Sub getGroupName As String
	Return sGroupName
End Sub

'set Active
Sub setActive(b As Boolean)
	bActive = b
	CustProps.put("Active", b)
	If mElement = Null Then Return
	UI.SetCheckedByID($"${mName}_check"$, b)
End Sub

'get Active
Sub getActive As Boolean
	Return bActive
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Border Color
Sub setBorderColor(s As String)
	sBorderColor = s
	CustProps.put("BorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "bordercolor", "border", s)
End Sub
'set Content Background Color
Sub setContentBackgroundColor(s As String)
	sContentBackgroundColor = s
	CustProps.put("ContentBackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_content"$, s)
End Sub
'set Content Text Color
Sub setContentTextColor(s As String)
	sContentTextColor = s
	CustProps.put("ContentTextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_content"$, s)
End Sub
'set Content Text Size
'options: xs|none|sm|md|lg|xl|base|2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl
Sub setContentTextSize(s As String)
	sContentTextSize = s
	CustProps.put("ContentTextSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextSizeByID($"${mName}_content"$, s)
End Sub
'set Join Item
Sub setJoinItem(b As Boolean)
	bJoinItem = b
	CustProps.put("JoinItem", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "join-item")
	Else
		UI.RemoveClass(mElement, "join-item")
	End If
End Sub
'set Open Close
'options: close|none|open
Sub setOpenClose(s As String)
	sOpenClose = s
	CustProps.put("OpenClose", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "collapse-" & s)
End Sub
'set Raw Content
Sub setContent(s As String)
	sRawContent = s
	CustProps.put("RawContent", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_content"$, s)
End Sub
'set Right Icon
'options: arrow|plus
Sub setRightIcon(s As String)
	sRightIcon = s
	CustProps.put("RightIcon", s)
	If mElement = Null Then Return
	If s <> "arrow" Then UI.AddClass(mElement, "collapse-" & s)
End Sub
'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	UI.SetRounded(mElement, sRounded)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, s)
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
End Sub
'set Title
Sub setTitle(s As String)
	sTitle = s
	CustProps.put("Title", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_title"$, s)
End Sub
'set Title Background Color
Sub setTitleBackgroundColor(s As String)
	sTitleBackgroundColor = s
	CustProps.put("TitleBackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_title"$, s)
End Sub
'set Title Text Color
Sub setTitleTextColor(s As String)
	sTitleTextColor = s
	CustProps.put("TitleTextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_title"$, s)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Border Color
Sub getBorderColor As String
	Return sBorderColor
End Sub
'get Content Background Color
Sub getContentBackgroundColor As String
	Return sContentBackgroundColor
End Sub
'get Content Text Color
Sub getContentTextColor As String
	Return sContentTextColor
End Sub
'get Content Text Size
Sub getContentTextSize As String
	Return sContentTextSize
End Sub
'get Join Item
Sub getJoinItem As Boolean
	Return bJoinItem
End Sub
'get Open Close
Sub getOpenClose As String
	Return sOpenClose
End Sub
'get Raw Content
Sub getRawContent As String
	Return sRawContent
End Sub
'get Right Icon
Sub getRightIcon As String
	Return sRightIcon
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Title
Sub getTitle As String
	Return sTitle
End Sub
'get Title Background Color
Sub getTitleBackgroundColor As String
	Return sTitleBackgroundColor
End Sub
'get Title Text Color
Sub getTitleTextColor As String
	Return sTitleTextColor
End Sub