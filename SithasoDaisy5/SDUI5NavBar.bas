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
#DesignerProperty: Key: Sticky, DisplayName: Sticky, FieldType: Boolean, DefaultValue: True, Description: Sticky
#DesignerProperty: Key: Top, DisplayName: Top, FieldType: String, DefaultValue: 0, Description: Top
#DesignerProperty: Key: ZIndex, DisplayName: Z Index, FieldType: String, DefaultValue: 30, Description: Z index
#DesignerProperty: Key: HasBurger, DisplayName: Has Burger, FieldType: Boolean, DefaultValue: True, Description: Has burger
#DesignerProperty: Key: HideHamburger, DisplayName: Hide Hamburger, FieldType: Boolean, DefaultValue: False, Description: Hide Hamburger
#DesignerProperty: Key: HideHamburgerOnLargeScreen, DisplayName: LG - Hide Hamburger, FieldType: Boolean, DefaultValue: False, Description: Hide Hamburger On Large Screen
#DesignerProperty: Key: HasLogo, DisplayName: Has Logo, FieldType: Boolean, DefaultValue: False, Description: Has Logo
#DesignerProperty: Key: HideLogo, DisplayName: Hide Logo, FieldType: Boolean, DefaultValue: False, Description: Hide Logo
#DesignerProperty: Key: HideLogoOnLargeScreen, DisplayName: LG - Hide Logo, FieldType: Boolean, DefaultValue: False, Description: Hide Logo On Large Screen
#DesignerProperty: Key: LogoImage, DisplayName: Logo Image, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Logo Image
#DesignerProperty: Key: LogoMask, DisplayName: Logo Mask, FieldType: String, DefaultValue: none, Description: Logo Mask, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
#DesignerProperty: Key: LogoWidth, DisplayName: Logo Width, FieldType: String, DefaultValue: 10, Description: Logo Width
#DesignerProperty: Key: LogoHeight, DisplayName: Logo Height, FieldType: String, DefaultValue: 10, Description: Logo Height
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: NavBar, Description: Title
#DesignerProperty: Key: HideTitle, DisplayName: Hide Title, FieldType: Boolean, DefaultValue: False, Description: Hide Title
#DesignerProperty: Key: HideTitleOnLargeScreen, DisplayName: LG - Hide Title, FieldType: Boolean, DefaultValue: False, Description: Hide Title On Large Screen
#DesignerProperty: Key: TitlePosition, DisplayName: Title Position, FieldType: String, DefaultValue: left, Description: Title Position, List: center|left|right
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-100, Description: Background Color
#DesignerProperty: Key: Glass, DisplayName: Glass, FieldType: Boolean, DefaultValue: False, Description: Glass
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 16, Description: Height
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
	Private sHeight As String = "16"
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
	Private bSticky As Boolean = True
	Private sTop As String = "0"
	Private sZIndex As String = "30"
	Private bHideHamburger As Boolean = False
	Private bHideHamburgerOnLargeScreen As Boolean = False
	Private bHideLogoOnLargeScreen As Boolean = False
	Private bHideTitleOnLargeScreen As Boolean = False
	Private bHideLogo As Boolean = False
	Private bHideTitle As Boolean = False
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
'set Position Style
'options: static|relative|fixed|absolute|sticky|none
Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.put("PositionStyle", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyle(mElement, "position", s)
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
		bGlass = Props.GetDefault("Glass", False)
		bGlass = UI.CBool(bGlass)
		sHeight = Props.GetDefault("Height", "16")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "")
		sWidth = UI.CStr(sWidth)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "sm")
		sShadow = UI.CStr(sShadow)
		sTitle = Props.GetDefault("Title", "NavBar")
		sTitle = UI.CStr(sTitle)
		sTitlePosition = Props.GetDefault("TitlePosition", "left")
		sTitlePosition = UI.CStr(sTitlePosition)
		bHasBurger = Props.GetDefault("HasBurger", True)
		bHasBurger = UI.CBool(bHasBurger)
		bHasLogo = Props.GetDefault("HasLogo", False)
		bHasLogo = UI.CBool(bHasLogo)
		sLogoHeight = Props.GetDefault("LogoHeight", "10")
		sLogoHeight = UI.CStr(sLogoHeight)
		sLogoImage = Props.GetDefault("LogoImage", "./assets/mashy.jpg")
		sLogoImage = UI.CStr(sLogoImage)
		sLogoMask = Props.GetDefault("LogoMask", "none")
		sLogoMask = UI.CStr(sLogoMask)
		If sLogoMask = "none" Then sLogoMask = ""
		sLogoWidth = Props.GetDefault("LogoWidth", "10")
		sLogoWidth = UI.CStr(sLogoWidth)
		bSticky = Props.GetDefault("Sticky", True)
		bSticky = UI.CBool(bSticky)
		sTop = Props.GetDefault("Top", "0")
		sTop = UI.CStr(sTop)
		sZIndex = Props.GetDefault("ZIndex", "30")
		sZIndex = UI.CStr(sZIndex)
		bHideHamburger = Props.GetDefault("HideHamburger", False)
		bHideHamburger = UI.CBool(bHideHamburger)
		bHideHamburgerOnLargeScreen = Props.GetDefault("HideHamburgerOnLargeScreen", False)
		bHideHamburgerOnLargeScreen = UI.CBool(bHideHamburgerOnLargeScreen)
		bHideLogoOnLargeScreen = Props.GetDefault("HideLogoOnLargeScreen", False)
		bHideLogoOnLargeScreen = UI.CBool(bHideLogoOnLargeScreen)
		bHideTitleOnLargeScreen = Props.GetDefault("HideTitleOnLargeScreen", False)
		bHideTitleOnLargeScreen = UI.CBool(bHideTitleOnLargeScreen)
		bHideLogo = Props.GetDefault("HideLogo", False)
		bHideLogo = UI.CBool(bHideLogo)
		bHideTitle = Props.GetDefault("HideTitle", False)
		bHideTitle = UI.CBool(bHideTitle)
	End If
	'
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	UI.AddClassDT("navbar justify-center")
	If bGlass = True Then UI.AddClassDT("glass")
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If bSticky = True Then UI.AddClassDT("sticky")
	If sTop <> "" Then UI.AddClassDT("top-" & sTop)
	If sZIndex <> "" Then UI.AddClassDT("z-" & sZIndex)
'	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
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
	<nav id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<div id="${mName}_left" class="navbar-start flex items-center gap-2">
			<div id="${mName}_burger" class="hidden"></div>
			<div id="${mName}_logo" class="hidden"></div>
		</div>	
		<div id="${mName}_center" class="navbar-center flex items-center"></div>
		<div id="${mName}_right" class="navbar-end flex items-center"></div>
	</nav>"$).Get("#" & mName)
	'set the title position
	setHasBurger(bHasBurger)
	setHideHamburger(bHideHamburger)
	setHideHamburgerOnLargeScreen(bHideHamburgerOnLargeScreen)
	setHasLogo(bHasLogo)
	setHideLogoOnLargeScreen(bHideLogoOnLargeScreen)
	setTitlePosition(sTitlePosition)
	setTitle(sTitle)
	setHideTitleOnLargeScreen(bHideTitleOnLargeScreen)
	setHideLogo(bHideLogo)
	setHideTitle(bHideTitle)
'	setVisible(bVisible)
End Sub

'set Hide Logo
Sub setHideLogo(b As Boolean)					'ignoredeadcode
	bHideLogo = b
	CustProps.put("HideLogo", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_logo"$, Not(b))
End Sub
'set Hide Title
Sub setHideTitle(b As Boolean)					'ignoredeadcode
	bHideTitle = b
	CustProps.put("HideTitle", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_title"$, Not(b))
End Sub
'get Hide Logo
Sub getHideLogo As Boolean
	Return bHideLogo
End Sub
'get Hide Title
Sub getHideTitle As Boolean
	Return bHideTitle
End Sub

'set Hide Hamburger
Sub setHideHamburger(b As Boolean)				'ignoredeadcode
	bHideHamburger = b
	CustProps.put("HideHamburger", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_burger"$, Not(b))
End Sub

'set Hide Hamburger On Large Screen
Sub setHideHamburgerOnLargeScreen(b As Boolean)			'ignoredeadcode
	bHideHamburgerOnLargeScreen = b
	CustProps.put("HideHamburgerOnLargeScreen", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_burger"$, "lg:hidden")
	Else
		UI.RemoveClassByID($"${mName}_burger"$, "lg:hidden")
	End If
End Sub
'set Hide Logo On Large Screen
Sub setHideLogoOnLargeScreen(b As Boolean)				'ignoredeadcode
	bHideLogoOnLargeScreen = b
	CustProps.put("HideLogoOnLargeScreen", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_logo"$, "lg:hidden")
	Else
		UI.RemoveClassByID($"${mName}_logo"$, "lg:hidden")
	End If
End Sub
'set Hide Title On Large Screen
Sub setHideTitleOnLargeScreen(b As Boolean)				'ignoredeadcode
	bHideTitleOnLargeScreen = b
	CustProps.put("HideTitleOnLargeScreen", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_title"$, "lg:hidden")
	Else
		UI.RemoveClassByID($"${mName}_title"$, "lg:hidden")
	End If
End Sub
'get Hide Hamburger
Sub getHideHamburger As Boolean
	Return bHideHamburger
End Sub
'get Hide Hamburger On Large Screen
Sub getHideHamburgerOnLargeScreen As Boolean
	Return bHideHamburgerOnLargeScreen
End Sub
'get Hide Logo On Large Screen
Sub getHideLogoOnLargeScreen As Boolean
	Return bHideLogoOnLargeScreen
End Sub
'get Hide Title On Large Screen
Sub getHideTitleOnLargeScreen As Boolean
	Return bHideTitleOnLargeScreen
End Sub


'set Sticky
Sub setSticky(b As Boolean)
	bSticky = b
	CustProps.put("Sticky", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "sticky")
	Else
		UI.RemoveClass(mElement, "sticky")
	End If
End Sub

'set Top
Sub setTop(s As String)
	sTop = s
	CustProps.put("Top", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "top-" & s)
End Sub

'set Z index
Sub setZIndex(s As String)
	sZIndex = s
	CustProps.put("ZIndex", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "z-" & s)
End Sub

'get Sticky
Sub getSticky As Boolean
	Return bSticky
End Sub

'get Top
Sub getTop As String
	Return sTop
End Sub
'get Z index
Sub getZIndex As String
	Return sZIndex
End Sub


'set Has Hamburger
Sub setHasBurger(b As Boolean)			'ignoredeadcode
	bHasBurger = b
	CustProps.put("HasBurger", b)
	If mElement = Null Then Return
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
'	Hamburger.MarginAXYTBLR = "a=5px; x=?; y=?; t=?; b=?; l=?; r=?"
	Hamburger.AddComponent
	UI.OnChildEvent($"${mName}burger"$, "change", Me, "swapchange")
	Hamburger.UI.AddClassByID($"${mName}_burger"$, "shrink-0 ml-2")
End Sub


'set Has Logo
Sub setHasLogo(b As Boolean)			'ignoredeadcode
	bHasLogo = b
	CustProps.put("HasLogo", b)
	If mElement = Null Then Return
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
'	Logo.MarginAXYTBLR = "a=5px; x=?; y=?; t=?; b=?; l=?; r=?"
	Logo.AddComponent
	Logo.UI.AddClassByID($"${mName}_logo"$, "shrink-0")
End Sub

'set Logo Height
Sub setLogoHeight(s As String)
	sLogoHeight = s
	CustProps.put("LogoHeight", s)
	If mElement = Null Then Return
	Logo.Height = s
End Sub
'set Logo Image
Sub setLogoImage(s As String)
	sLogoImage = s
	CustProps.put("LogoImage", s)
	If mElement = Null Then Return
	Logo.Src = s
End Sub
'set Logo Mask
'options: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
Sub setLogoMask(s As String)
	sLogoMask = s
	CustProps.put("LogoMask", s)
	If mElement = Null Then Return
	Logo.Mask = s
End Sub
'set Logo Width
Sub setLogoWidth(s As String)
	sLogoWidth = s
	CustProps.put("LogoWidth", s)
	If mElement = Null Then Return
	Logo.Width = s
End Sub
'get Logo Height
Sub getLogoHeight As String
	Return sLogoHeight
End Sub
'get Logo Image
Sub getLogoImage As String
	Return sLogoImage
End Sub
'get Logo Mask
Sub getLogoMask As String
	Return sLogoMask
End Sub
'get Logo Width
Sub getLogoWidth As String
	Return sLogoWidth
End Sub

'get Has Logo
Sub getHasLogo As Boolean
	Return bHasLogo
End Sub

private Sub swapchange(e As BANanoEvent)		'ignoreDeadCode
	e.PreventDefault
	Dim b As Boolean = Hamburger.Active
	BANano.CallSub(mCallBack, $"${mName}_BurgerClick"$, Array(b))
End Sub

'get Has Hamburger
Sub getHasBurger As Boolean
	Return bHasBurger
End Sub

'set Title
Sub setTitle(s As String)				'ignoredeadcode
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
Sub setTitlePosition(s As String)					'ignoredeadcode
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
	If s <> "" Then UI.SetWidth(mElement, sWidth)
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