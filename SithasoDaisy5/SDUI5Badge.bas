B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)
#Event: LeftClick (e As BANanoEvent)
#Event: RightClick (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: UseSpan, DisplayName: Use Span, FieldType: Boolean, DefaultValue: False, Description: Use Span
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Badge, Description: Text
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color, List: accent|error|info|neutral|primary|secondary|success|warning|none
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: none, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Dash, DisplayName: Dash, FieldType: Boolean, DefaultValue: False, Description: Dash
#DesignerProperty: Key: Ghost, DisplayName: Ghost, FieldType: Boolean, DefaultValue: False, Description: Ghost
#DesignerProperty: Key: Outline, DisplayName: Outline, FieldType: Boolean, DefaultValue: False, Description: Outline
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: LeftIcon, DisplayName: Left Icon, FieldType: String, DefaultValue: , Description: Left Icon
#DesignerProperty: Key: LeftIconColor, DisplayName: Left Icon Color, FieldType: String, DefaultValue: , Description: Left Icon Color
#DesignerProperty: Key: LeftIconSize, DisplayName: Left Icon Size, FieldType: String, DefaultValue: 16px, Description: Left Icon Size
#DesignerProperty: Key: LeftImage, DisplayName: Left Image, FieldType: String, DefaultValue: , Description: Left Image
#DesignerProperty: Key: LeftImageSize, DisplayName: Left Image Size, FieldType: String, DefaultValue: 16px, Description: Left Image Size
#DesignerProperty: Key: RightIcon, DisplayName: Right Icon, FieldType: String, DefaultValue: , Description: Right Icon
#DesignerProperty: Key: RightIconColor, DisplayName: Right Icon Color, FieldType: String, DefaultValue: , Description: Right Icon Color
#DesignerProperty: Key: RightIconSize, DisplayName: Right Icon Size, FieldType: String, DefaultValue: 16px, Description: Right Icon Size
#DesignerProperty: Key: RightImage, DisplayName: Right Image, FieldType: String, DefaultValue: , Description: Right Image
#DesignerProperty: Key: RightImageSize, DisplayName: Right Image Size, FieldType: String, DefaultValue: 16px, Description: Right Image Size
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: full, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: Soft, DisplayName: Soft, FieldType: Boolean, DefaultValue: False, Description: Soft
#DesignerProperty: Key: IndicatorItem, DisplayName: Indicator Item, FieldType: Boolean, DefaultValue: False, Description: Indicator Item
#DesignerProperty: Key: IndicatorPosition, DisplayName: Indicator Position, FieldType: String, DefaultValue: top-start, Description: Indicator Position, List: bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
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
	Private sText As String = "Badge"
	Public Tag As Object
	'Public Root As SDUIElement
	Private sBackgroundColor As String = ""
	Private sColor As Boolean = "primary"
	Private bDash As Boolean = False
	Private bGhost As Boolean = False
	Private sHeight As String = ""
	Private sLeftIcon As String = ""
	Private sLeftIconColor As String = ""
	Private sLeftIconSize As String = "16px"
	Private bOutline As Boolean = False
	Private sRightIcon As String = ""
	Private sRightIconColor As String = ""
	Private sRightIconSize As String = "16px"
	Private sSize As String = "none"
	Private bSoft As Boolean = False
	Private sTextColor As String = ""
	Private sTextSize As String = ""
	Private bUseSpan As Boolean = False
	Private sWidth As String = ""
	Private sIndicatorPosition As String = "top-start"
	Private bIndicatorItem As Boolean = False
	Private sLeftImage As String = ""
	Private sLeftImageSize As String = "16px"
	Private sRightImage As String = ""
	Private sRightImageSize As String = "16px"
	Private sRounded As String = "none"
	Private sShadow As String = "none"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("svg-loader.min.js")
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
'set text
Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	Dim txt As BANanoElement = BANano.GetElement($"#${mName}_text"$)
	UI.SetText(txt, text)
	If sText = "" Then
		'hide
		UI.SetVisible(txt, False)
	Else
		'show
		UI.SetVisible(txt, True)
	End If
End Sub
'get text
Sub getText As String
	Return UI.GetText(mElement)
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		sColor = Props.GetDefault("Color", "primary")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bDash = Props.GetDefault("Dash", False)
		bDash = UI.CBool(bDash)
		bGhost = Props.GetDefault("Ghost", False)
		bGhost = UI.CBool(bGhost)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sLeftIcon = Props.GetDefault("LeftIcon", "")
		sLeftIcon = UI.CStr(sLeftIcon)
		sLeftIconColor = Props.GetDefault("LeftIconColor", "")
		sLeftIconColor = UI.CStr(sLeftIconColor)
		sLeftIconSize = Props.GetDefault("LeftIconSize", "16px")
		sLeftIconSize = UI.CStr(sLeftIconSize)
		bOutline = Props.GetDefault("Outline", False)
		bOutline = UI.CBool(bOutline)
		sRightIcon = Props.GetDefault("RightIcon", "")
		sRightIcon = UI.CStr(sRightIcon)
		sRightIconColor = Props.GetDefault("RightIconColor", "")
		sRightIconColor = UI.CStr(sRightIconColor)
		sRightIconSize = Props.GetDefault("RightIconSize", "16px")
		sRightIconSize = UI.CStr(sRightIconSize)
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		bSoft = Props.GetDefault("Soft", False)
		bSoft = UI.CBool(bSoft)
		sTextSize = Props.GetDefault("TextSize", "")
		sTextSize = UI.CStr(sTextSize)
		bUseSpan = Props.GetDefault("UseSpan", False)
		bUseSpan = UI.CBool(bUseSpan)
		sWidth = Props.GetDefault("Width", "")
		sWidth = UI.CStr(sWidth)
		sIndicatorPosition = Props.GetDefault("IndicatorPosition", "top-start")
		sIndicatorPosition = UI.CStr(sIndicatorPosition)
		bIndicatorItem = Props.GetDefault("IndicatorItem", False)
		bIndicatorItem = UI.CBool(bIndicatorItem)
		sLeftImage = Props.GetDefault("LeftImage", "")
		sLeftImage = UI.CStr(sLeftImage)
		sLeftImageSize = Props.GetDefault("LeftImageSize", "16px")
		sLeftImageSize = UI.CStr(sLeftImageSize)
		sRightImage = Props.GetDefault("RightImage", "")
		sRightImage = UI.CStr(sRightImage)
		sRightImageSize = Props.GetDefault("RightImageSize", "16px")
		sRightImageSize = UI.CStr(sRightImageSize)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
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
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	UI.AddClassDT("badge flex-nowrap inline-flex items-center")
	If sColor <> "" Then UI.AddColorDT("badge", sColor)
	If bDash = True Then UI.AddClassDT("badge-dash")
	If bGhost = True Then UI.AddClassDT("badge-ghost")
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If bOutline = True Then UI.AddClassDT("badge-outline")
	If sSize <> "" Then UI.AddClassDT("badge-" & sSize)
	If bSoft = True Then UI.AddClassDT("badge-soft")
'	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sTextSize <> "" Then UI.AddTextSizeDT(sTextSize)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If bIndicatorItem Then
		UI.AddClassDT("indicator-item")
	End If	  
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	Dim xtag As String = "div"
	If bUseSpan Then xtag = "span"
	mElement = mTarget.Append($"[BANCLEAN]
	<${xtag} id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<img id="${mName}_leftimage" src="${sLeftImage}" alt="" class="hidden rounded-full bg-cover bg-center bg-no-repeat"></img>
		<svg id="${mName}_lefticon" style="pointer-events:none;" data-unique-ids="disabled" class="hidden rounded-full" data-js="enabled" fill="currentColor" data-src="${sLeftIcon}"></svg>
		<span id="${mName}_text" class="whitespace-nowrap">${sText}</span>
		<svg id="${mName}_righticon" style="pointer-events:none;" data-unique-ids="disabled" class="hidden rounded-full" data-js="enabled" fill="currentColor" data-src="${sRightIcon}"></svg>
		<img id="${mName}_rightimage" src="${sRightImage}" alt="" class="hidden rounded-full bg-cover bg-center bg-no-repeat"></img>
	</${xtag}>"$).Get("#" & mName)
	
	If sLeftImage <> "" Then
		setLeftImage(sLeftImage)
		setLeftImageSize(sLeftImageSize)
	End If
	
	If sLeftIcon <> "" Then
		setLeftIcon(sLeftIcon)
		setLeftIconColor(sLeftIconColor)
		setLeftIconSize(sLeftIconSize)
	End If
	
	If sRightIcon <> "" Then
		setRightIcon(sRightIcon)
		setRightIconColor(sRightIconColor)
		setRightIconSize(sRightIconSize)
	End If
	
	If sRightImage <> "" Then
		setRightImage(sRightImage)
		setRightImageSize(sRightImageSize)
	End If
	
	setTextColor(sTextColor)
	setTextSize(sTextSize)	
	setSize(sSize)
	setShadow(sShadow)
	setRounded(sRounded)
	'
	UI.OnEvent(mElement, "click", mCallBack, $"${mEventName}_click"$)
	UI.OnChildEvent($"${mName}_lefticon"$, "click", mCallBack, $"${mName})_leftclick"$)
	UI.OnChildEvent($"${mName}_righticon"$, "click", mCallBack, $"${mName})_rightclick"$)
	UI.OnChildEvent($"${mName}_leftimage"$, "click", mCallBack, $"${mName})_leftclick"$)
	UI.OnChildEvent($"${mName}_righimage"$, "click", mCallBack, $"${mName})_rightclick"$)
	setIndicatorPosition(sIndicatorPosition)
'	setVisible(bVisible)
End Sub

'set Left Image
Sub setLeftImage(s As String)			'ignoredeadcode
	sLeftImage = s
	CustProps.put("LeftImage", s)
	If mElement = Null Then Return
	Dim icon As BANanoElement = BANano.GetElement($"#${mName}_leftimage"$)
	UI.SetImage(icon, s)
	If sLeftImage = "" Then
		'hide
		UI.SetVisible(icon, False)
	Else
		'show
		UI.UpdateClass(mElement, "gap", "gap-2")
		UI.SetVisible(icon, True)
	End If
End Sub
'set Left Image Size
'options: xs|none|sm|md|lg|xl
Sub setLeftImageSize(s As String)			'ignoredeadcode
	sLeftImageSize = s
	CustProps.put("LeftImageSize", s)
	If mElement = Null Then Return
	UI.SetHeightByID($"${mName}_leftimage"$, s)
	UI.SetWidthByID($"${mName}_leftimage"$, s)
End Sub
'set Right Image
Sub setRightImage(s As String)				'ignoredeadcode
	sRightImage = s
	CustProps.put("RightImage", s)
	If mElement = Null Then Return
	Dim icon As BANanoElement = BANano.GetElement($"#${mName}_rightimage"$)
	UI.SetImage(icon, s)
	If sRightImage = "" Then
		'hide
		UI.SetVisible(icon, False)
	Else
		'show
		UI.UpdateClass(mElement, "gap", "gap-2")
		UI.SetVisible(icon, True)
	End If
End Sub
'set Right Image Size
'options: xs|none|sm|md|lg|xl
Sub setRightImageSize(s As String)			'ignoredeadcode
	sRightImageSize = s
	CustProps.put("RightImageSize", s)
	If mElement = Null Then Return
	UI.SetHeightByID($"${mName}_rightimage"$, s)
	UI.SetWidthByID($"${mName}_rightimage"$, s)
End Sub
'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)			'ignoredeadcode
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub
'set Shadow
'options: 2xl|inner|lg|md|none|shadow|sm|xl
Sub setShadow(s As String)					'ignoredeadcode
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'get Left Image
Sub getLeftImage As String
	Return sLeftImage
End Sub
'get Left Image Size
Sub getLeftImageSize As String
	Return sLeftImageSize
End Sub
'get Right Image
Sub getRightImage As String
	Return sRightImage
End Sub
'get Right Image Size
Sub getRightImageSize As String
	Return sRightImageSize
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "badge", s)
End Sub
'set Dash
Sub setDash(b As Boolean)
	bDash = b
	CustProps.put("Dash", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "badge-dash")
	Else
		UI.RemoveClass(mElement, "badge-dash")
	End If
End Sub
'set Ghost
Sub setGhost(b As Boolean)
	bGhost = b
	CustProps.put("Ghost", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "badge-ghost")
	Else
		UI.RemoveClass(mElement, "badge-ghost")
	End If
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, s)
End Sub
'set Left Icon
Sub setLeftIcon(s As String)			'ignoredeadcode
	sLeftIcon = s
	CustProps.put("LeftIcon", s)
	If mElement = Null Then Return
	UI.SetIconNameByID($"${mName}_lefticon"$, s)
	If sLeftIcon = "" Then
		'hide
		UI.SetVisibleByiD($"${mName}_lefticon"$, False)
	Else
		'show
		UI.SetVisibleByID($"${mName}_lefticon"$, True)
	End If
End Sub
'set Left Icon Color
Sub setLeftIconColor(s As String)  'ignoredeadcode
	sLeftIconColor = s
	CustProps.put("LeftIconColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetIconColorByID($"${mName}_lefticon"$, s)
End Sub
'set Left Icon Size
Sub setLeftIconSize(s As String)   'ignoredeadcode
	sLeftIconSize = s
	CustProps.put("LeftIconSize", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetIconSizeByID($"${mName}_lefticon"$, s)
End Sub
'set Outline
Sub setOutline(b As Boolean)
	bOutline = b
	CustProps.put("Outline", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "badge-outline")
	Else
		UI.RemoveClass(mElement, "badge-outline")
	End If
End Sub

'set Right Icon
Sub setRightIcon(s As String)		'ignoredeadcode
	sRightIcon = s
	CustProps.put("RightIcon", s)
	If mElement = Null Then Return
	UI.SetIconNameByID($"${mName}_righticon"$, s)
	If sRightIcon = "" Then
		'hide
		UI.SetVisibleByiD($"${mName}_righticon"$, False)
	Else
		'show
		UI.SetVisibleByID($"${mName}_righticon"$, True)
	End If
End Sub
'set Right Icon Color
Sub setRightIconColor(s As String)			'ignoredeadcode
	sRightIconColor = s
	CustProps.put("RightIconColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetIconColorByID($"${mName}_righticon"$, s)
End Sub
'set Right Icon Size
Sub setRightIconSize(s As String)				'ignoredeadcode
	sRightIconSize = s
	CustProps.put("RightIconSize", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetIconSizeByID($"${mName}_righticon"$, s)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)				'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "sm"
	UI.SetSize(mElement, "size", "badge", s)
End Sub
'set Soft
Sub setSoft(b As Boolean)
	bSoft = b
	CustProps.put("Soft", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "badge-Soft")
	Else
		UI.RemoveClass(mElement, "badge-Soft")
	End If
End Sub

'set Text Color
Sub setTextColor(s As String)				'ignoredeadcode
    sTextColor = s
    CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_text"$, s)
End Sub
'set Text Size
'options: xs|none|sm|md|lg|xl|base|2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl
Sub setTextSize(s As String)				'ignoredeadcode
    sTextSize = s
    CustProps.put("TextSize", s)
	If mElement = Null Then Return
	UI.SetTextSizeByID($"${mName}_text"$, s)
End Sub
'set Use Span
Sub setUseSpan(b As Boolean)
    bUseSpan = b
    CustProps.put("UseSpan", b)
End Sub
'set Width
Sub setWidth(s As String)
    sWidth = s
    CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, s)
End Sub

'get Background Color
Sub getBackgroundColor As String
        Return sBackgroundColor
End Sub
'get Color
Sub getColor As String
        Return sColor
End Sub
'get Dash
Sub getDash As Boolean
        Return bDash
End Sub
'get Ghost
Sub getGhost As Boolean
        Return bGhost
End Sub
'get Height
Sub getHeight As String
        Return sHeight
End Sub
'get Left Icon
Sub getLeftIcon As String
        Return sLeftIcon
End Sub
'get Left Icon Color
Sub getLeftIconColor As String
        Return sLeftIconColor
End Sub
'get Left Icon Size
Sub getLeftIconSize As String
        Return sLeftIconSize
End Sub
'get Outline
Sub getOutline As Boolean
        Return bOutline
End Sub
'get Right Icon
Sub getRightIcon As String
        Return sRightIcon
End Sub
'get Right Icon Color
Sub getRightIconColor As String
        Return sRightIconColor
End Sub
'get Right Icon Size
Sub getRightIconSize As String
        Return sRightIconSize
End Sub

'get Size
Sub getSize As String
        Return sSize
End Sub
'get Soft
Sub getSoft As Boolean
        Return bSoft
End Sub
'get Text Color
Sub getTextColor As String
        Return sTextColor
End Sub
'get Text Size
Sub getTextSize As String
        Return sTextSize
End Sub
'get Use Span
Sub getUseSpan As Boolean
        Return bUseSpan
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Indicator Position
'options: bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
Sub setIndicatorPosition(s As String)				'ignoredeadcode
	sIndicatorPosition = s
	CustProps.put("IndicatorPosition", s)
	If mElement = Null Then Return
	If bIndicatorItem = False Then Return
	'bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
	Dim fpart As String = UI.mvfield(s,1,"-")
	Dim spart As String = UI.mvfield(s,2,"-")
	UI.UpdateClass(mElement, "badgeposition", $"indicator-${fpart} indicator-${spart}"$)
End Sub
'set Indicator Item
Sub setIndicatorItem(b As Boolean)
	bIndicatorItem = b
	CustProps.put("IndicatorItem", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "indicator-item")
	Else
		UI.RemoveClass(mElement, "indicator-item")
	End If
End Sub

'get Indicator Position
Sub getIndicatorPosition As String
	Return sIndicatorPosition
End Sub
'get Indicator Item
Sub getIndicatorItem As Boolean
	Return bIndicatorItem
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub