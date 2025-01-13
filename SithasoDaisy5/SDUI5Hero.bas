B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _content, Description: Child Item _content
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundImage, DisplayName: Background Image, FieldType: String, DefaultValue: , Description: Background Image
#DesignerProperty: Key: Overlay, DisplayName: Overlay, FieldType: Boolean, DefaultValue: False, Description: Overlay
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: ContentTextAlign, DisplayName: Text Align, FieldType: String, DefaultValue: , Description: Content Text Align, List: center|end|justify|left|none|right|start
#DesignerProperty: Key: ContentFlexDirection, DisplayName: Flex Direction, FieldType: String, DefaultValue: flex-col, Description: Content Flex Direction, List: flex-col|flex-col-reverse|flex-row|flex-row-reverse
#DesignerProperty: Key: SmContentFlexDirection, DisplayName: SM Flex Direction, FieldType: String, DefaultValue: none, Description: Sm Content Flex Direction, List: flex-col|flex-col-reverse|flex-row|flex-row-reverse
#DesignerProperty: Key: MdContentFlexDirection, DisplayName: MD Flex Direction, FieldType: String, DefaultValue: none, Description: Md Content Flex Direction, List: flex-col|flex-col-reverse|flex-row|flex-row-reverse
#DesignerProperty: Key: LgContentFlexDirection, DisplayName: LG Flex Direction, FieldType: String, DefaultValue: flex-row, Description: Lg Content Flex Direction, List: flex-col|flex-col-reverse|flex-row|flex-row-reverse
#DesignerProperty: Key: XlContentFlexDirection, DisplayName: XL Flex Direction, FieldType: String, DefaultValue: none, Description: Xl Content Flex Direction, List: flex-col|flex-col-reverse|flex-row|flex-row-reverse
#DesignerProperty: Key: XxlContentFlexDirection, DisplayName: XXL Flex Direction, FieldType: String, DefaultValue: none, Description: Xxl Content Flex Direction, List: flex-col|flex-col-reverse|flex-row|flex-row-reverse
#DesignerProperty: Key: MinHeight, DisplayName: Min Height, FieldType: String, DefaultValue: 56, Description: Min Height
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: MinWidth, DisplayName: Min Width, FieldType: String, DefaultValue: , Description: Min Width
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: RawContentAttributes, DisplayName: Content Attributes, FieldType: String, DefaultValue: , Description: Raw Content Attributes
#DesignerProperty: Key: RawContentClass, DisplayName: Content Class, FieldType: String, DefaultValue: , Description: Raw Content Class
#DesignerProperty: Key: RawContentStyle, DisplayName: Content Style, FieldType: String, DefaultValue: , Description: Raw Content Style
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
	Private sBackgroundColor As String = ""
	Private sBackgroundImage As String = ""
	Private sContentFlexDirection As String = "flex-col"
	Private sContentTextAlign As String = ""
	Private sHeight As String = ""
	Private sLgContentFlexDirection As String = "flex-row"
	Private sMdContentFlexDirection As String = "none"
	Private sMinHeight As String = "56"
	Private sMinWidth As String = ""
	Private bOverlay As Boolean = False
	Private sRawContentAttributes As String = ""
	Private sRawContentClass As String = ""
	Private sRawContentStyle As String = ""
	Private sSmContentFlexDirection As String = "none"
	Private sTextColor As String = ""
	Private sWidth As String = ""
	Private sXlContentFlexDirection As String = "none"
	Private sXxlContentFlexDirection As String = "none"
	Private sRounded As String = "none"
	Private sShadow As String = "none"        
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
	UI.OnEvent(mElement, event, mCallBack, $"${mEventName}_${methodName}"$)
End Sub
'set Position Style
'options: static|relative|fixed|absolute|sticky|none
Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.put("PositionStyle", s)
	If mElement = Null Then Return
	UI.AddStyle(mElement, "position", s)
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
		'sBackgroundColor = Props.GetDefault("BackgroundColor", "")
		'sBackgroundColor = modSD5.CStr(sBackgroundColor)
		sBackgroundImage = Props.GetDefault("BackgroundImage", "")
		sBackgroundImage = modSD5.CStr(sBackgroundImage)
		sContentFlexDirection = Props.GetDefault("ContentFlexDirection", "flex-col")
		sContentFlexDirection = modSD5.CStr(sContentFlexDirection)
		If sContentFlexDirection = "none" Then sContentFlexDirection = ""
		sContentTextAlign = Props.GetDefault("ContentTextAlign", "")
		sContentTextAlign = modSD5.CStr(sContentTextAlign)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sLgContentFlexDirection = Props.GetDefault("LgContentFlexDirection", "flex-row")
		sLgContentFlexDirection = modSD5.CStr(sLgContentFlexDirection)
		If sLgContentFlexDirection = "none" Then sLgContentFlexDirection = ""
		sMdContentFlexDirection = Props.GetDefault("MdContentFlexDirection", "none")
		sMdContentFlexDirection = modSD5.CStr(sMdContentFlexDirection)
		If sMdContentFlexDirection = "none" Then sMdContentFlexDirection = ""
		sMinHeight = Props.GetDefault("MinHeight", "56")
		sMinHeight = modSD5.CStr(sMinHeight)
		sMinWidth = Props.GetDefault("MinWidth", "")
		sMinWidth = modSD5.CStr(sMinWidth)
		bOverlay = Props.GetDefault("Overlay", False)
		bOverlay = modSD5.CBool(bOverlay)
		sRawContentAttributes = Props.GetDefault("RawContentAttributes", "")
		sRawContentAttributes = modSD5.CStr(sRawContentAttributes)
		sRawContentClass = Props.GetDefault("RawContentClass", "")
		sRawContentClass = modSD5.CStr(sRawContentClass)
		sRawContentStyle = Props.GetDefault("RawContentStyle", "")
		sRawContentStyle = modSD5.CStr(sRawContentStyle)
		sSmContentFlexDirection = Props.GetDefault("SmContentFlexDirection", "none")
		sSmContentFlexDirection = modSD5.CStr(sSmContentFlexDirection)
		If sSmContentFlexDirection = "none" Then sSmContentFlexDirection = ""
		'sTextColor = Props.GetDefault("TextColor", "")
		'sTextColor = modSD5.CStr(sTextColor)
		sWidth = Props.GetDefault("Width", "")
		sWidth = modSD5.CStr(sWidth)
		sXlContentFlexDirection = Props.GetDefault("XlContentFlexDirection", "none")
		sXlContentFlexDirection = modSD5.CStr(sXlContentFlexDirection)
		If sXlContentFlexDirection = "none" Then sXlContentFlexDirection = ""
		sXxlContentFlexDirection = Props.GetDefault("XxlContentFlexDirection", "none")
		sXxlContentFlexDirection = modSD5.CStr(sXxlContentFlexDirection)
		If sXxlContentFlexDirection = "none" Then sXxlContentFlexDirection = ""
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = modSD5.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""        
	End If
	'
	'If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	UI.AddClassDT("hero")
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)        
	If sBackgroundImage <> "" Then
		UI.AddBackgroundImageDT(sBackgroundImage)
	End If
	If sHeight <> "" Then UI.AddSizeDT("h", sHeight)
	If sMinHeight <> "" Then UI.AddSizeDT("min-h", sMinHeight)
	If sMinWidth <> "" Then UI.AddSizeDT("min-w", sMinWidth)
	If sWidth <> "" Then UI.AddSizeDT("w", sWidth)
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
		<div id="${mName}_overlay" class="hero-overlay hidden"></div>
		<div id="${mName}_content" class="hero-content"></div>
	</div>"$).Get("#" & mName)
	setOverlay(bOverlay)
	setContentTextAlign(sContentTextAlign)
	setContentFlexDirection(sContentFlexDirection)
	setMdContentFlexDirection(sMdContentFlexDirection)
	setLgContentFlexDirection(sLgContentFlexDirection)
	setSmContentFlexDirection(sSmContentFlexDirection)
	setXlContentFlexDirection(sXlContentFlexDirection)
	setXxlContentFlexDirection(sXxlContentFlexDirection)
	setContentAttributes(sRawContentAttributes)
	setContentClass(sRawContentClass)
	setContentStyle(sRawContentStyle)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Background Image
Sub setBackgroundImage(s As String)
	sBackgroundImage = s
	CustProps.put("BackgroundImage", s)
	If mElement = Null Then Return
	UI.SetBackgroundImage(mElement, s)
End Sub
'set Content Flex Direction
'options: flex-col|flex-col-reverse|flex-row|flex-row-reverse
Sub setContentFlexDirection(s As String)
	sContentFlexDirection = s
	CustProps.put("ContentFlexDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_content"$, s)
End Sub
'set Content Text Align
Sub setContentTextAlign(s As String)
	sContentTextAlign = s
	CustProps.put("ContentTextAlign", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyleByID($"${mName}_content"$, "text-align", s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "h", sHeight)
End Sub
'set Lg Content Flex Direction
'options: flex-col|flex-col-reverse|flex-row|flex-row-reverse
Sub setLgContentFlexDirection(s As String)
	sLgContentFlexDirection = s
	CustProps.put("LgContentFlexDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_content"$, $"lg:${s}"$)
End Sub
'set Md Content Flex Direction
'options: flex-col|flex-col-reverse|flex-row|flex-row-reverse
Sub setMdContentFlexDirection(s As String)
	sMdContentFlexDirection = s
	CustProps.put("MdContentFlexDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_content"$, $"md:${s}"$)
End Sub
'set Min Height
Sub setMinHeight(s As String)
	sMinHeight = s
	CustProps.put("MinHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "min-h-", s)
End Sub
'set Min Width
Sub setMinWidth(s As String)
	sMinWidth = s
	CustProps.put("MinWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "min-w-", s)
End Sub
'set Overlay
Sub setOverlay(b As Boolean)
	bOverlay = b
	CustProps.put("Overlay", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_overlay"$, b)
End Sub
'set Raw Content Attributes
Sub setContentAttributes(s As String)
	sRawContentAttributes = s
	CustProps.put("RawContentAttributes", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttributesByID($"${mName}_content"$, s)
End Sub
'set Raw Content Class
Sub setContentClass(s As String)
	sRawContentClass = s
	CustProps.put("RawContentClass", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClassesByID($"${mName}_content"$, s)
End Sub
'set Raw Content Style
Sub setContentStyle(s As String)
	sRawContentStyle = s
	CustProps.put("RawContentStyle", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStylesByID($"${mName}_content"$, s)
End Sub
'set Sm Content Flex Direction
'options: flex-col|flex-col-reverse|flex-row|flex-row-reverse
Sub setSmContentFlexDirection(s As String)
	sSmContentFlexDirection = s
	CustProps.put("SmContentFlexDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_content"$, $"sm:${s}"$)
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
	If s <> "" Then UI.SetSize(mElement, "w", sWidth)
End Sub
'set Xl Content Flex Direction
'options: flex-col|flex-col-reverse|flex-row|flex-row-reverse
Sub setXlContentFlexDirection(s As String)
	sXlContentFlexDirection = s
	CustProps.put("XlContentFlexDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_content"$, $"xl:${s}"$)
End Sub
'set Xxl Content Flex Direction
'options: flex-col|flex-col-reverse|flex-row|flex-row-reverse
Sub setXxlContentFlexDirection(s As String)
	sXxlContentFlexDirection = s
	CustProps.put("XxlContentFlexDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_content"$, $"xxl:${s}"$)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Background Image
Sub getBackgroundImage As String
	Return sBackgroundImage
End Sub
'get Content Flex Direction
Sub getContentFlexDirection As String
	Return sContentFlexDirection
End Sub
'get Content Text Align
Sub getContentTextAlign As String
	Return sContentTextAlign
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Lg Content Flex Direction
Sub getLgContentFlexDirection As String
	Return sLgContentFlexDirection
End Sub
'get Md Content Flex Direction
Sub getMdContentFlexDirection As String
	Return sMdContentFlexDirection
End Sub
'get Min Height
Sub getMinHeight As String
	Return sMinHeight
End Sub
'get Min Width
Sub getMinWidth As String
	Return sMinWidth
End Sub
'get Overlay
Sub getOverlay As Boolean
	Return bOverlay
End Sub
'get Raw Content Attributes
Sub getContentAttributes As String
	Return sRawContentAttributes
End Sub
'get Raw Content Class
Sub getContentClass As String
	Return sRawContentClass
End Sub
'get Raw Content Style
Sub getContentStyle As String
	Return sRawContentStyle
End Sub
'get Sm Content Flex Direction
Sub getSmContentFlexDirection As String
	Return sSmContentFlexDirection
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub
'get Xl Content Flex Direction
Sub getXlContentFlexDirection As String
	Return sXlContentFlexDirection
End Sub
'get Xxl Content Flex Direction
Sub getXxlContentFlexDirection As String
	Return sXxlContentFlexDirection
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

'get Rounded
Sub getRounded As String
	Return sRounded
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub