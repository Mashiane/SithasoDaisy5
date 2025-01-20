B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: TitleClick (e As BANanoEvent)
#Event: BurgerClick (value As Boolean)
'
#DesignerProperty: Key: ReadMe, DisplayName: Read Me, FieldType: String, DefaultValue: Child Items - _left|_logo|_burger|_center|_right, Description: Child Items - _left|_logo|_burger|_center|_right
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: HasBurger, DisplayName: Has Burger, FieldType: Boolean, DefaultValue: True, Description: Has burger
#DesignerProperty: Key: HasLogo, DisplayName: Has Logo, FieldType: Boolean, DefaultValue: False, Description: Has Logo
#DesignerProperty: Key: LogoImage, DisplayName: Logo Image, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Logo Image
#DesignerProperty: Key: LogoMask, DisplayName: Logo Mask, FieldType: String, DefaultValue: none, Description: Logo Mask, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
#DesignerProperty: Key: LogoWidth, DisplayName: Logo Width, FieldType: String, DefaultValue: 10, Description: Logo Width
#DesignerProperty: Key: LogoHeight, DisplayName: Logo Height, FieldType: String, DefaultValue: 10, Description: Logo Height
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: NavBar, Description: Title
#DesignerProperty: Key: TitlePosition, DisplayName: Title Position, FieldType: String, DefaultValue: left, Description: Title Position, List: center|left|right
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-100, Description: Background Color
#DesignerProperty: Key: Glass, DisplayName: Glass, FieldType: Boolean, DefaultValue: False, Description: Glass
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: sm, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private bGlass As Boolean = False
	Private sHeight As String = ""
	Private sTextColor As String = ""
	Private sWidth As String = ""
	Private sRounded As String = "none"
	Private sShadow As String = "sm"
	Private sTitle As String = "NavBar"
	Private sTitlePosition As String = "left"
	Private bHasBurger As Boolean = True
	Public Hamburger As SDUI5Swap
	Public Logo As SDUI5Image
	Private bHasLogo As Boolean = False
	Private sLogoHeight As String = "10"
	Private sLogoImage As String = "./assets/mashy.jpg"
	Private sLogoMask As String = "none"
	Private sLogoWidth As String = "10"
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
	If s <> "" Then UI.SetPosition(mElement, sPosition)
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
		bGlass = Props.GetDefault("Glass", False)
		bGlass = modSD5.CBool(bGlass)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "")
		sWidth = modSD5.CStr(sWidth)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = modSD5.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "sm")
		sShadow = modSD5.CStr(sShadow)
		sTitle = Props.GetDefault("Title", "NavBar")
		sTitle = modSD5.CStr(sTitle)
		sTitlePosition = Props.GetDefault("TitlePosition", "left")
		sTitlePosition = modSD5.CStr(sTitlePosition)
		bHasBurger = Props.GetDefault("HasBurger", True)
		bHasBurger = modSD5.CBool(bHasBurger)
		bHasLogo = Props.GetDefault("HasLogo", False)
		bHasLogo = modSD5.CBool(bHasLogo)
		sLogoHeight = Props.GetDefault("LogoHeight", "10")
		sLogoHeight = modSD5.CStr(sLogoHeight)
		sLogoImage = Props.GetDefault("LogoImage", "./assets/mashy.jpg")
		sLogoImage = modSD5.CStr(sLogoImage)
		sLogoMask = Props.GetDefault("LogoMask", "none")
		sLogoMask = modSD5.CStr(sLogoMask)
		If sLogoMask = "none" Then sLogoMask = ""
		sLogoWidth = Props.GetDefault("LogoWidth", "10")
		sLogoWidth = modSD5.CStr(sLogoWidth)
	End If
	'
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If bGlass = True Then UI.AddClassDT("glass")
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	UI.AddClassDT("navbar")
'	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
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
		<div id="${mName}_left" class="navbar-start">
			<div id="${mName}_burger" class="hidden"></div>
			<div id="${mName}_logo" class="hidden"></div>
		</div>	
		<div id="${mName}_center" class="navbar-center"></div>
		<div id="${mName}_right" class="navbar-end"></div>
	</div>"$).Get("#" & mName)
	'set the title position
	setHasBurger(bHasBurger)
	setHasLogo(bHasLogo)
	setTitlePosition(sTitlePosition)
	setTitle(sTitle)
End Sub

'set Has Hamburger
Sub setHasBurger(b As Boolean)
	bHasBurger = b
	CustProps.put("HasBurger", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_burger"$, b)
	If bHasBurger = False Then Return
	If BANano.Exists($"${mName}burger"$) = True Then Return
	Hamburger.Initialize(mCallBack, $"${mName}burger"$, $"${mName}burger"$)
	Hamburger.ParentID = $"${mName}_burger"$
	Hamburger.SwapType = Hamburger.SWAPTYPE_ICON
	Hamburger.TypeOf = Hamburger.TYPEOF_ROTATE
	Hamburger.OnIcon = "./assets/closemenu.svg"
	Hamburger.OffIcon = "./assets/menu.svg"
	Hamburger.Height = "24px"
	Hamburger.Width = "24px"
	Hamburger.Visible = True
	Hamburger.Active = False
	Hamburger.Enabled = True
	Hamburger.MarginAXYTBLR = "a=5px; x=?; y=?; t=?; b=?; l=?; r=?"
	Hamburger.AddComponent
	UI.OnChildEvent($"${mName}burger"$, "change", Me, "swapchange")
End Sub


'set Has Logo
Sub setHasLogo(b As Boolean)
	bHasLogo = b
	CustProps.put("HasLogo", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_logo"$, b)
	If bHasLogo = False Then Return
	If BANano.Exists($"${mName}logo"$) = True Then Return
	Logo.Initialize(mCallBack, $"${mName}logo"$, $"${mName}logo"$)
	Logo.ParentID = $"${mName}_logo"$
	Logo.Src = sLogoImage
	Logo.Width = sLogoWidth
	Logo.Height = sLogoHeight
	Logo.mask = sLogoMask
	Logo.Visible = True
	Logo.Enabled = True
	Logo.MarginAXYTBLR = "a=5px; x=?; y=?; t=?; b=?; l=?; r=?"
	Logo.AddComponent
End Sub

'get Has Logo
Sub getHasLogo As Boolean
	Return bHasLogo
End Sub

private Sub swapchange(e As BANanoEvent)
	e.PreventDefault
	Dim b As Boolean = Hamburger.Active
	BANano.CallSub(mCallBack, $"${mName}_BurgerClick"$, Array(b))
End Sub

'get Has Hamburger
Sub getHasBurger As Boolean
	Return bHasBurger
End Sub

'set Title
Sub setTitle(s As String)
	sTitle = s
	CustProps.put("Title", s)
	If mElement = Null Then Return
	If BANano.Exists($"#${mName}_title"$) Then
		UI.SetTextByID($"${mName}_title"$, s)
		Return
	End If
	'the title does not exist, add it	
	Select Case sTitlePosition
	Case "left"
		UI.AppendByID($"${mName}_left"$, $"<a id="${mName}_title" class="btn btn-ghost text-xl">${sTitle}</a>"$)
	Case "center"
		UI.AppendByID($"${mName}_center"$, $"<a id="${mName}_title" class="btn btn-ghost text-xl">${sTitle}</a>"$)
	Case "right"			
		UI.AppendByID($"${mName}_right"$, $"<a id="${mName}_title" class="btn btn-ghost text-xl">${sTitle}</a>"$)
	End Select
	UI.OnChildEvent($"${mName}_title"$, "click", mCallBack, $"${mName}_titleclick"$)
End Sub
'set Title Position
'options: center|left|right
Sub setTitlePosition(s As String)
	sTitlePosition = s
	CustProps.put("TitlePosition", s)
End Sub
'get Title
Sub getTitle As String
	Return sTitle
End Sub
'get Title Position
Sub getTitlePosition As String
	Return sTitlePosition
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Glass
Sub setGlass(b As Boolean)
	bGlass = b
	CustProps.put("Glass", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "glass")
	Else
		UI.RemoveClass(mElement, "glass")
	End If
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then Ui.SetWidth(mElement, sWidth)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Glass
Sub getGlass As Boolean
	Return bGlass
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Rounded
'options: rounded-full|none|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
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
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub