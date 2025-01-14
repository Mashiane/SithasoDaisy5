B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: DockItem, DisplayName: Dock Item, FieldType: Boolean, DefaultValue: False, Description: Dock Item
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Button, Description: Text
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: primary|secondary|accent|neutral|info|success|warning|error|none
#DesignerProperty: Key: Badge, DisplayName: Badge, FieldType: String, DefaultValue: , Description: Badge
#DesignerProperty: Key: BadgeColor, DisplayName: Badge Color, FieldType: String, DefaultValue: , Description: Badge Color, List: danger|dark|light|medium|none|primary|secondary|success|tertiary|warning
#DesignerProperty: Key: BadgeSize, DisplayName: Badge Size, FieldType: String, DefaultValue: sm, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Active, DisplayName: Active, FieldType: Boolean, DefaultValue: False, Description: Active
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Block, DisplayName: Block, FieldType: Boolean, DefaultValue: False, Description: Block
#DesignerProperty: Key: Circle, DisplayName: Circle, FieldType: Boolean, DefaultValue: False, Description: Circle
#DesignerProperty: Key: Dash, DisplayName: Dash, FieldType: Boolean, DefaultValue: False, Description: Dash
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Ghost, DisplayName: Ghost, FieldType: Boolean, DefaultValue: False, Description: Ghost
#DesignerProperty: Key: JoinItem, DisplayName: Join Item, FieldType: Boolean, DefaultValue: False, Description: Join Item
#DesignerProperty: Key: Activator, DisplayName: Activator, FieldType: Boolean, DefaultValue: False, Description: Activator
#DesignerProperty: Key: RoundedField, DisplayName: Rounded Field, FieldType: Boolean, DefaultValue: False, Description: Rounded Field
#DesignerProperty: Key: Image, DisplayName: Left Image, FieldType: String, DefaultValue: , Description: Left Image
#DesignerProperty: Key: ImageColor, DisplayName: Left Image Color, FieldType: String, DefaultValue: , Description: Left Image Color
#DesignerProperty: Key: ImageHeight, DisplayName: Image Height, FieldType: String, DefaultValue: 32px, Description: Left Image Height
#DesignerProperty: Key: ImageWidth, DisplayName: Image Width, FieldType: String, DefaultValue: 32px, Description: Left Image Width
#DesignerProperty: Key: Link, DisplayName: Link, FieldType: Boolean, DefaultValue: False, Description: Link
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue: False, Description: Loading
#DesignerProperty: Key: Outline, DisplayName: Outline, FieldType: Boolean, DefaultValue: False, Description: Outline
#DesignerProperty: Key: RightImage, DisplayName: Right Image, FieldType: String, DefaultValue: , Description: Right Image
#DesignerProperty: Key: RightImageColor, DisplayName: Right Image Color, FieldType: String, DefaultValue: , Description: Right Image Color
#DesignerProperty: Key: RightImageHeight, DisplayName: Right Image Height, FieldType: String, DefaultValue: 32px, Description: Right Image Height
#DesignerProperty: Key: RightImageWidth, DisplayName: Right Image Width, FieldType: String, DefaultValue: 32px, Description: Right Image Width
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: SizeLarge, DisplayName: Size Large, FieldType: String, DefaultValue: none, Description: Size Large, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: SizeMedium, DisplayName: Size Medium, FieldType: String, DefaultValue: none, Description: Size Medium, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: SizeSmall, DisplayName: Size Small, FieldType: String, DefaultValue: none, Description: Size Small, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: SizeXLarge, DisplayName: Size X Large, FieldType: String, DefaultValue: none, Description: Size X Large, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Soft, DisplayName: Soft, FieldType: Boolean, DefaultValue: False, Description: Soft
#DesignerProperty: Key: Square, DisplayName: Square, FieldType: Boolean, DefaultValue: False, Description: Square
#DesignerProperty: Key: Wide, DisplayName: Wide, FieldType: Boolean, DefaultValue: False, Description: Wide
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
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
	'Public Root As SDUIElement
	Private bActive As Boolean = False
	Private sBackgroundColor As String = ""
	Private bBlock As Boolean = False
	Private sBtn As String = "btn"
	Private bCircle As Boolean = False
	Private sColor As String = "none"
	Private bDash As Boolean = False
	Private bDisabled As Boolean = False
	Private bGhost As Boolean = False
	Private sImage As String = ""
	Private sImageHeight As String = "32px"
	Private sImageWidth As String = "32px"
	Private bLink As Boolean = False
	Private bLoading As Boolean = False
	Private bOutline As Boolean = False
	Private sRightImage As String = ""
	Private sSize As String = "none"
	Private sSizeLarge As String = "none"
	Private sSizeMedium As String = "none"
	Private sSizeSmall As String = "none"
	Private sSizeXLarge As String = "none"
	Private bSoft As Boolean = False
	Private bSquare As Boolean = False
	Private sTextColor As String = ""
	Private bWide As Boolean = False
	Private sImageColor As String = ""
	Private sRightImageColor As String = ""
	Private sRightImageHeight As String = "32px"
	Private sRightImageWidth As String = "32px"
	Private sBadge As String = ""
	Private sBadgeColor As String = ""
	Private bBadgeVisible As Boolean = False
	Private sBadgeSize As String = "sm"
	Private sHeight As String = ""
	Private sWidth As String = ""
	Private bJoinItem As Boolean = False
	Private bDockItem As Boolean = False
	Private bActivator As Boolean = False
	Private bRoundedField As Boolean = False
	Private sTag As String = "button"
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

'add this element to an existing parent element using current properties
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
	sText = UI.GetTextByID($"${mName}_text"$)
	Return sText
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		bActive = Props.GetDefault("Active", False)
		bActive = modSD5.CBool(bActive)
		bBlock = Props.GetDefault("Block", False)
		bBlock = modSD5.CBool(bBlock)
		bCircle = Props.GetDefault("Circle", False)
		bCircle = modSD5.CBool(bCircle)
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bDash = Props.GetDefault("Dash", False)
		bDash = modSD5.CBool(bDash)
		bDisabled = Props.GetDefault("Disabled", False)
		bDisabled = modSD5.CBool(bDisabled)
		bGhost = Props.GetDefault("Ghost", False)
		bGhost = modSD5.CBool(bGhost)
		sImage = Props.GetDefault("Image", "")
		sImage = modSD5.CStr(sImage)
		sImageColor = Props.GetDefault("ImageColor", "")
		sImageColor = modSD5.CStr(sImageColor)        
		sImageHeight = Props.GetDefault("ImageHeight", "32px")
		sImageHeight = modSD5.CStr(sImageHeight)
		sImageWidth = Props.GetDefault("ImageWidth", "32px")
		sImageWidth = modSD5.CStr(sImageWidth)
		bLink = Props.GetDefault("Link", False)
		bLink = modSD5.CBool(bLink)
		bLoading = Props.GetDefault("Loading", False)
		bLoading = modSD5.CBool(bLoading)
		bOutline = Props.GetDefault("Outline", False)
		bOutline = modSD5.CBool(bOutline)
		sRightImage = Props.GetDefault("RightImage", "")
		sRightImage = modSD5.CStr(sRightImage)
		sSize = Props.GetDefault("Size", "none")
		sSize = modSD5.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sSizeLarge = Props.GetDefault("SizeLarge", "none")
		sSizeLarge = modSD5.CStr(sSizeLarge)
		If sSizeLarge = "none" Then sSizeLarge = ""
		sSizeMedium = Props.GetDefault("SizeMedium", "none")
		sSizeMedium = modSD5.CStr(sSizeMedium)
		If sSizeMedium = "none" Then sSizeMedium = ""
		sSizeSmall = Props.GetDefault("SizeSmall", "none")
		sSizeSmall = modSD5.CStr(sSizeSmall)
		If sSizeSmall = "none" Then sSizeSmall = ""
		sSizeXLarge = Props.GetDefault("SizeXLarge", "none")
		sSizeXLarge = modSD5.CStr(sSizeXLarge)
		If sSizeXLarge = "none" Then sSizeXLarge = ""
		bSoft = Props.GetDefault("Soft", False)
		bSoft = modSD5.CBool(bSoft)
		bSquare = Props.GetDefault("Square", False)
		bSquare = modSD5.CBool(bSquare)
		bWide = Props.GetDefault("Wide", False)
		bWide = modSD5.CBool(bWide)
		sRightImageColor = Props.GetDefault("RightImageColor", "")
		sRightImageColor = modSD5.CStr(sRightImageColor)
		sRightImageHeight = Props.GetDefault("RightImageHeight", "32px")
		sRightImageHeight = modSD5.CStr(sRightImageHeight)
		sRightImageWidth = Props.GetDefault("RightImageWidth", "32px")
		sRightImageWidth = modSD5.CStr(sRightImageWidth)
		sBadge = Props.GetDefault("Badge", "")
		sBadge = modSD5.CStr(sBadge)
		sBadgeColor = Props.GetDefault("BadgeColor", "")
		sBadgeColor = modSD5.CStr(sBadgeColor)
		sBadgeSize = Props.GetDefault("BadgeSize", "sm")
		sBadgeSize = modSD5.CStr(sBadgeSize)
		If sBadgeSize = "none" Then sBadgeSize = ""
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "")
		sWidth = modSD5.CStr(sWidth)
		bJoinItem = Props.GetDefault("JoinItem", False)
		bJoinItem = modSD5.CBool(bJoinItem)
		bDockItem = Props.GetDefault("DockItem", False)
		bDockItem = modSD5.CBool(bDockItem)
		bActivator = Props.GetDefault("Activator", False)
		bActivator = modSD5.CBool(bActivator)
		bRoundedField = Props.GetDefault("RoundedField", False)
		bRoundedField = modSD5.CBool(bRoundedField)
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
	If bActivator Then
		UI.AddAttrDT("tabindex", "0")
		UI.AddAttrDT("role", "button")
		sTag = "div"
	End If
	
	If bJoinItem = True Then UI.AddClassDT("join-item")
	If bActive = True Then 
		If bDockItem Then
			UI.AddClassDT("dock-active")
		Else	
			UI.AddClassDT("btn-active")
		End If
	End If
	If bDockItem = False Then
		'If sBackgroundColor <> "" Then UI.AddClassDT("background-color-" & sBackgroundColor)
		If bRoundedField = True Then UI.AddClassDT("rounded-field")
		If bBlock = True Then UI.AddClassDT("btn-block")
		UI.AddClassDT(sBtn)
		If bCircle = True Then UI.AddClassDT("btn-circle")
		If sColor <> "" Then UI.AddClassDT("btn-" & sColor)
		If bDash = True Then UI.AddClassDT("btn-dash")
		If bDisabled = True Then UI.AddAttrDT("disabled", bDisabled)
		If bGhost = True Then UI.AddClassDT("btn-ghost")
		If bLink = True Then UI.AddClassDT("btn-link")
		If bOutline = True Then UI.AddClassDT("btn-outline")
		If sSize <> "" Then UI.AddClassDT("btn-" & sSize)
		If sSizeLarge <> "" Then UI.AddClassDT("lg:btn-" & sSizeLarge)
		If sSizeMedium <> "" Then UI.AddClassDT("md:btn-" & sSizeMedium)
		If sSizeSmall <> "" Then UI.AddClassDT("sm:btn-" & sSizeSmall)
		If sSizeXLarge <> "" Then UI.AddClassDT("xl:btn-" & sSizeXLarge)
		If bSoft = True Then UI.AddClassDT("btn-soft")
		If bSquare = True Then UI.AddClassDT("btn-square")
		If bWide = True Then UI.AddClassDT("btn-wide")
		If sHeight <> "" Then UI.AddHeightDT( sHeight)
		If sWidth <> "" Then UI.AddWidthDT( sWidth)
	End If
	UI.AddClassDT("inline-flex items-center")
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]
	<${sTag} id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<span id="${mName}_loading" class="loading-spinner hidden"></span>
		<img id="${mName}_leftimage" src="${sImage}" alt="" class="hidden"></img>
		<span id="${mName}_text"></span>
		<img id="${mName}_rightimage" src="${sRightImage}" alt="" class="hidden"></img>
		<div id="${mName}_badge" class="badge hidden"></div>
	</${sTag}>"$).Get("#" & mName)
	UI.OnEvent(mElement, "click", mCallBack, $"${mName}_click"$)
	setText(sText)
	setTextColor(sTextColor)
	setLeftImage(sImage)
	setLeftImageColor(sImageColor)
	setLeftImageHeight(sImageHeight)
	setLeftImageWidth(sImageWidth)
	setRightImage(sRightImage)
	setRightImageColor(sRightImageColor)
	setRightImageHeight(sRightImageHeight)
	setRightImageWidth(sRightImageWidth)
	setLoading(bLoading)
	setBadge(sBadge)
	setBadgeColor(sBadgeColor)
	setBadgeSize(sBadgeSize)
	setDockItem(bDockItem)
End Sub

'get Size
Sub getBadgeSize As String
	Return sBadgeSize
End Sub

'set Size
'options: xs|none|sm|md|lg|xl
Sub setBadgeSize(s As String)
	sBadgeSize = s
	CustProps.put("BadgeSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSizebyid($"${mName}_badge"$, "size", "badge", s)
End Sub

'set Active
Sub setActive(b As Boolean)
	bActive = b
	CustProps.put("Active", b)
	If mElement = Null Then Return
	If bDockItem Then
		If b = True Then
			UI.AddClass(mElement, "dock-active")
		Else
			UI.RemoveClass(mElement, "dock-active")
		End If
	Else
		If b = True Then
			UI.AddClass(mElement, "btn-active")
		Else
			UI.RemoveClass(mElement, "btn-active")
		End If
	End If
End Sub
'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Block
Sub setBlock(b As Boolean)
	bBlock = b
	CustProps.put("Block", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "btn-block")
	Else
		UI.RemoveClass(mElement, "btn-block")
	End If
End Sub
'set Circle
Sub setCircle(b As Boolean)
	bCircle = b
	CustProps.put("Circle", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "btn-circle")
	Else
		UI.RemoveClass(mElement, "btn-circle")
	End If
End Sub
'set Color
'options: danger|dark|light|medium|none|primary|secondary|success|tertiary|warning
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "btn-" & s)
End Sub
'set Dash
Sub setDash(b As Boolean)
	bDash = b
	CustProps.put("Dash", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "btn-dash")
	Else
		UI.RemoveClass(mElement, "btn-dash")
	End If
End Sub
'set Disabled
Sub setDisabled(b As Boolean)
	bDisabled = b
	CustProps.put("Disabled", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "disabled", b)
	Else
		UI.RemoveAttr(mElement, "disabled")
	End If
End Sub
'set Ghost
Sub setGhost(b As Boolean)
	bGhost = b
	CustProps.put("Ghost", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "btn-ghost")
	Else
		UI.RemoveClass(mElement, "btn-ghost")
	End If
End Sub

'set Image
Sub setLeftImage(s As String)
	sImage = s
	CustProps.put("Image", s)
	If mElement = Null Then Return
	Dim img As BANanoElement = BANano.GetElement($"#${mName}_leftimage"$)
	UI.SetImage(img, sImage)
	If sImage = "" Then
		UI.SetVisible(img, False)
	Else
		UI.SetVisible(img, True)
	End If
End Sub
'set Image Height
Sub setLeftImageHeight(s As String)
	sImageHeight = s
	CustProps.put("ImageHeight", s)
	If mElement = Null Then Return
	UI.SetStyleComputedByID($"#${mName}_leftimage"$, "height", sImageHeight)
End Sub
'set Image Width
Sub setLeftImageWidth(s As String)
	sImageWidth = s
	CustProps.put("ImageWidth", s)
	If mElement = Null Then Return
	UI.SetStyleComputedByID($"#${mName}_leftimage"$, "width", sImageHeight)
End Sub

'set Link
Sub setLink(b As Boolean)
	bLink = b
	CustProps.put("Link", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "btn-link")
	Else
		UI.RemoveClass(mElement, "btn-link")
	End If
End Sub
'set Loading
Sub setLoading(b As Boolean)
	bLoading = b
	CustProps.put("Loading", b)
	If mElement = Null Then Return
	Dim load As BANanoElement = BANano.GetElement($"#${mName}_loading"$)
	If b Then
		UI.AddClass(load, "loading")
		UI.RemoveClass(load, "hidden")
		'we have text and image
		If sImage <> "" Then
			If (sText = "") Or (sText <> "") Then
				setLeftImageVisible(False)
			End If	
		End If
	Else
		UI.RemoveClass(load, "loading")
		UI.AddClass(load, "hidden")
		'we have text and image
		If sImage <> "" Then
			If (sText = "") Or (sText <> "") Then
				setLeftImageVisible(True)
			End If
		End If
	End If
End Sub
'set Outline
Sub setOutline(b As Boolean)
	bOutline = b
	CustProps.put("Outline", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "btn-outline")
	Else
		UI.RemoveClass(mElement, "btn-outline")
	End If
End Sub
'set Right Image
Sub setRightImage(s As String)
	sRightImage = s
	CustProps.put("RightImage", s)
	If mElement = Null Then Return
	Dim img As BANanoElement = BANano.GetElement($"#${mName}_rightimage"$)
	UI.SetImage(img, sRightImage)
	If sRightImage = "" Then
		UI.SetVisible(img, False)
	Else
		UI.SetVisible(img, True)
	End If
End Sub
'set Size
'options: lg|md|none|sm|xl|xs
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	UI.UpdateClass(mElement, "size", "btn-" & s)
End Sub
'set Size Large
'options: lg|md|none|sm|xl|xs
Sub setSizeLarge(s As String)
	sSizeLarge = s
	CustProps.put("SizeLarge", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "lg:btn-" & s)
End Sub
'set Size Medium
'options: lg|md|none|sm|xl|xs
Sub setSizeMedium(s As String)
	sSizeMedium = s
	CustProps.put("SizeMedium", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "md:btn-" & s)
End Sub
'set Size Small
'options: lg|md|none|sm|xl|xs
Sub setSizeSmall(s As String)
	sSizeSmall = s
	CustProps.put("SizeSmall", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "sm:btn-" & s)
End Sub
'set Size X Large
'options: lg|md|none|sm|xl|xs
Sub setSizeXLarge(s As String)
	sSizeXLarge = s
	CustProps.put("SizeXLarge", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "xl:btn-" & s)
End Sub
'set Soft
Sub setSoft(b As Boolean)
	bSoft = b
	CustProps.put("Soft", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "btn-soft")
	Else
		UI.RemoveClass(mElement, "btn-soft")
	End If
End Sub
'set Square
Sub setSquare(b As Boolean)
	bSquare = b
	CustProps.put("Square", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "btn-square")
	Else
		UI.RemoveClass(mElement, "btn-square")
	End If
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	UI.SetTextColor(mElement, s)
End Sub
'set Wide
Sub setWide(b As Boolean)
	bWide = b
	CustProps.put("Wide", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "btn-wide")
	Else
		UI.RemoveClass(mElement, "btn-wide")
	End If
End Sub
'get Active
Sub getActive As Boolean
	Return bActive
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Block
Sub getBlock As Boolean
	Return bBlock
End Sub
'get Circle
Sub getCircle As Boolean
	Return bCircle
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Dash
Sub getDash As Boolean
	Return bDash
End Sub
'get Disabled
Sub getDisabled As Boolean
	Return bDisabled
End Sub
'get Ghost
Sub getGhost As Boolean
	Return bGhost
End Sub
'get Image
Sub getImage As String
	Return sImage
End Sub
'get Image Height
Sub getImageHeight As String
	Return sImageHeight
End Sub
'get Image Width
Sub getImageWidth As String
	Return sImageWidth
End Sub
'get Link
Sub getLink As Boolean
	Return bLink
End Sub
'get Loading
Sub getLoading As Boolean
	Return bLoading
End Sub
'get Outline
Sub getOutline As Boolean
	Return bOutline
End Sub
'get Right Image
Sub getRightImage As String
	Return sRightImage
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Size Large
Sub getSizeLarge As String
	Return sSizeLarge
End Sub
'get Size Medium
Sub getSizeMedium As String
	Return sSizeMedium
End Sub
'get Size Small
Sub getSizeSmall As String
	Return sSizeSmall
End Sub
'get Size X Large
Sub getSizeXLarge As String
	Return sSizeXLarge
End Sub
'get Soft
Sub getSoft As Boolean
	Return bSoft
End Sub
'get Square
Sub getSquare As Boolean
	Return bSquare
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Wide
Sub getWide As Boolean
	Return bWide
End Sub

'set Image Color
Sub setLeftImageColor(s As String)
	sImageColor = s
	CustProps.put("ImageColor", s)
	If mElement = Null Then Return
	UI.SetTextColorByID($"${mName}_leftimage"$, s)
End Sub

'get Image Color
Sub getImageColor As String
	Return sImageColor
End Sub

'set Image Visibility
Sub setLeftImageVisible(b As Boolean)
	CustProps.put("ImageVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_leftimage"$, b)
End Sub

Sub setRightImageVisible(b As Boolean)
	CustProps.put("RightImageVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_rightimage"$, b)
End Sub

'set Right Image Color
Sub setRightImageColor(s As String)
	sRightImageColor = s
	CustProps.put("RightImageColor", s)
	If mElement = Null Then Return
	UI.SetTextColorByID($"${mName}_rightimage"$, s)
End Sub
'set Right Image Height
Sub setRightImageHeight(s As String)
	sRightImageHeight = s
	CustProps.put("RightImageHeight", s)
	If mElement = Null Then Return
	UI.SetHeightByID($"${mName}_rightimage"$, s)
End Sub
'set Right Image Width
Sub setRightImageWidth(s As String)
	sRightImageWidth = s
	CustProps.put("RightImageWidth", s)
	If mElement = Null Then Return
	UI.SetWidthByID($"${mName}_rightimage"$, s)
End Sub

'get Right Image Color
Sub getRightImageColor As String
	Return sRightImageColor
End Sub
'get Right Image Height
Sub getRightImageHeight As String
	Return sRightImageHeight
End Sub
'get Right Image Width
Sub getRightImageWidth As String
	Return sRightImageWidth
End Sub

'set Badge
Sub setBadge(s As String)
	sBadge = s
	CustProps.put("Badge", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_badge"$, s)
	If sBadge = "" Then
		UI.SetVisibleByID($"${mName}_badge"$, False)
	Else	
		UI.SetVisibleByID($"${mName}_badge"$, True)
	End If
End Sub
'set Badge Color
'options: danger|dark|light|medium|none|primary|secondary|success|tertiary|warning
Sub setBadgeColor(s As String)
	sBadgeColor = s
	CustProps.put("BadgeColor", s)
	If mElement = Null Then Return
	UI.SetColorByID($"${mName}_badge"$, "color", "badge", s)
End Sub
'set Badge Visible
Sub setBadgeVisible(b As Boolean)
	bBadgeVisible = b
	CustProps.put("BadgeVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_badge"$, b)
End Sub
'get Badge
Sub getBadge As String
	Return sBadge
End Sub
'get Badge Color
Sub getBadgeColor As String
	Return sBadgeColor
End Sub
'get Badge Visible
Sub getBadgeVisible As Boolean
	Return bBadgeVisible
End Sub


'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	UI.SetHeight(mElement, s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	if s <> "" then Ui.SetWidth(mElement, s)
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

public Sub getParentID() As String
	Return sParentID
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

'get Join Item
Sub getJoinItem As Boolean
	Return bJoinItem
End Sub

'set Dock Item
Sub setDockItem(b As Boolean)
	bDockItem = b
	CustProps.put("DockItem", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_text"$, "dock-label")
	Else
		UI.RemoveClassByID($"${mName}_text"$, "dock-label")
	End If
End Sub
'get Dock Item
Sub getDockItem As Boolean
	Return bDockItem
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