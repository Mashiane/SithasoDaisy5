B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TagType, DisplayName: Tag Type, FieldType: String, DefaultValue: div, Description: Tag Type
#DesignerProperty: Key: HorizontalAnchor, DisplayName: Horizontal Anchor, FieldType: String, DefaultValue: left, Description: Horizontal Anchor, List: left|left-right|right
#DesignerProperty: Key: VerticalAnchor, DisplayName: Vertical Anchor, FieldType: String, DefaultValue: top, Description: Vertical Anchor, List: bottom|top|top-bottom
#DesignerProperty: Key: PositionStyle, DisplayName: Position, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: BoxSizing, DisplayName: Box Sizing, FieldType: String, DefaultValue: border-box, Description: Determines How The Total Width And Height Of An Element Are Calculated., List: border-box|none
#DesignerProperty: Key: LineHeight, DisplayName: Line Height, FieldType: String, DefaultValue: , Description: Line Height
#DesignerProperty: Key: Left, DisplayName: Left, FieldType: String, DefaultValue: , Description: Left
#DesignerProperty: Key: Right, DisplayName: Right, FieldType: String, DefaultValue: , Description: Right
#DesignerProperty: Key: Top, DisplayName: Top, FieldType: String, DefaultValue: , Description: Top
#DesignerProperty: Key: Bottom, DisplayName: Bottom, FieldType: String, DefaultValue: , Description: Bottom
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100px, Description: Width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 60px, Description: Height
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: BorderSet, DisplayName: Set Border, FieldType: Boolean, DefaultValue: False, Description: Set Border
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: Color, DefaultValue: #000000, Description: Border Color
#DesignerProperty: Key: BorderWidth, DisplayName: Border Width, FieldType: String, DefaultValue: 0px, Description: Border Width
#DesignerProperty: Key: BorderRadius, DisplayName: Border Radius, FieldType: String, DefaultValue: 0px, Description: Border Radius
#DesignerProperty: Key: BorderStyle, DisplayName: Border Style, FieldType: String, DefaultValue: solid, Description: Border Style, List: dashed|dotted|double|groove|hidden|inherit|initial|inset|none|outset|ridge|solid
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: WrapText, DisplayName: Wrap Text, FieldType: Boolean, DefaultValue: False, Description: Wrap Text
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: Color, DefaultValue: #000000, Description: Text Color
#DesignerProperty: Key: Alignment, DisplayName: Alignment, FieldType: String, DefaultValue: center, Description: Alignment, List: bottom|center|left|right|top|none
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: transparent, Description: Background Color
#DesignerProperty: Key: FontAwesomeIcon, DisplayName: Font Awesome Icon, FieldType: String, DefaultValue: , Description: Font Awesome Icon
#DesignerProperty: Key: MaterialIcon, DisplayName: Material Icon, FieldType: String, DefaultValue: , Description: Material Icon
#DesignerProperty: Key: FontName, DisplayName: Font Name, FieldType: String, DefaultValue: , Description: Font Name
#DesignerProperty: Key: FontBold, DisplayName: Font Bold, FieldType: Boolean, DefaultValue: False, Description: Font Bold
#DesignerProperty: Key: FontSize, DisplayName: Font Size, FieldType: String, DefaultValue: 15, Description: Font Size
#DesignerProperty: Key: FontItalic, DisplayName: Font Italic, FieldType: Boolean, DefaultValue: False, Description: Font Italic
#DesignerProperty: Key: GradientActive, DisplayName: GradientActive, FieldType: Boolean, DefaultValue: false, Description: Gradient should be set
#DesignerProperty: Key: Gradient, DisplayName: Gradient, FieldType: String, DefaultValue: , Description: Gradient, List: bl_tr|bottom_top|br_tl|left_right|right_left|tl_br|top_bottom|tr_bl
#DesignerProperty: Key: GradientColor1, DisplayName: GradientColor1, FieldType: Color, DefaultValue: #f86194, Gradient Color 1.
#DesignerProperty: Key: GradientColor2, DisplayName: GradientColor2, FieldType: Color, DefaultValue: #968918, Gradient Color 2.
#DesignerProperty: Key: MarginLeft, DisplayName: Margin Left, FieldType: String, DefaultValue: , Description: Margin Left
#DesignerProperty: Key: MarginRight, DisplayName: Margin Right, FieldType: String, DefaultValue: , Description: Margin Right
#DesignerProperty: Key: MarginTop, DisplayName: Margin Top, FieldType: String, DefaultValue: , Description: Margin Top
#DesignerProperty: Key: MarginBottom, DisplayName: Margin Bottom, FieldType: String, DefaultValue: , Description: Margin Bottom
#DesignerProperty: Key: PaddingLeft, DisplayName: Padding Left, FieldType: String, DefaultValue: , Description: Padding Left
#DesignerProperty: Key: PaddingRight, DisplayName: Padding Right, FieldType: String, DefaultValue: , Description: Padding Right
#DesignerProperty: Key: PaddingTop, DisplayName: Padding Top, FieldType: String, DefaultValue: , Description: Padding Top
#DesignerProperty: Key: PaddingBottom, DisplayName: Padding Bottom, FieldType: String, DefaultValue: , Description: Padding Bottom
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
	Private sPositionStyle As String = "none"
	Private sRawClasses As String = ""
	Private sRawStyles As String = ""
	Private sRawAttributes As String = ""
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private bEnabled As Boolean = True	'ignore
	Private sText As String = ""
	Public Tag As Object
	Private sAlignment As String = "center"
	Private sBackgroundColor As String = "transparent"
	Private cBorderColor As String = "#000000"
	Private sBorderRadius As String = "0px"
	Private bBorderSet As Boolean = False
	Private sBorderStyle As String = "solid"
	Private sBorderWidth As String = "0px"
	Private sBottom As String = ""
	Private sBoxSizing As String = "border-box"
	Private sFontAwesomeIcon As String = ""
	Private bFontBold As Boolean = False
	Private bFontItalic As Boolean = False
	Private sFontName As String = ""
	Private sFontSize As Int = "15"
	Private sHeight As String = "60px"
	Private sHorizontalAnchor As String = "left"
	Private sLeft As String = ""
	Private sLineHeight As String = ""
	Private sMarginBottom As String = ""
	Private sMarginLeft As String = ""
	Private sMarginRight As String = ""
	Private sMarginTop As String = ""
	Private sMaterialIcon As String = ""
	Private sPaddingBottom As String = ""
	Private sPaddingLeft As String = ""
	Private sPaddingRight As String = ""
	Private sPaddingTop As String = ""
	Private sRight As String = ""
	Private sTagType As String = "div"
	Private cTextColor As String = "#000000"
	Private sTop As String = ""
	Private sVerticalAnchor As String = "top"
	Private sWidth As String = "100px"
	Private bWrapText As Boolean = False
	Public CONST ALIGNMENT_BOTTOM As String = "bottom"
	Public CONST ALIGNMENT_CENTER As String = "center"
	Public CONST ALIGNMENT_LEFT As String = "left"
	Public CONST ALIGNMENT_NONE As String = "none"
	Public CONST ALIGNMENT_RIGHT As String = "right"
	Public CONST ALIGNMENT_TOP As String = "top"	
	Public CONST BORDERSTYLE_DASHED As String = "dashed"
	Public CONST BORDERSTYLE_DOTTED As String = "dotted"
	Public CONST BORDERSTYLE_DOUBLE As String = "double"
	Public CONST BORDERSTYLE_GROOVE As String = "groove"
	Public CONST BORDERSTYLE_HIDDEN As String = "hidden"
	Public CONST BORDERSTYLE_INHERIT As String = "inherit"
	Public CONST BORDERSTYLE_INITIAL As String = "initial"
	Public CONST BORDERSTYLE_INSET As String = "inset"
	Public CONST BORDERSTYLE_NONE As String = "none"
	Public CONST BORDERSTYLE_OUTSET As String = "outset"
	Public CONST BORDERSTYLE_RIDGE As String = "ridge"
	Public CONST BORDERSTYLE_SOLID As String = "solid"
	Public CONST BOXSIZING_BORDER_BOX As String = "border-box"
	Public CONST BOXSIZING_NONE As String = "none"
	Public CONST HORIZONTALANCHOR_LEFT As String = "left"
	Public CONST HORIZONTALANCHOR_LEFT_RIGHT As String = "left-right"
	Public CONST HORIZONTALANCHOR_RIGHT As String = "right"
	Public CONST VERTICALANCHOR_BOTTOM As String = "bottom"
	Public CONST VERTICALANCHOR_TOP As String = "top"
	Public CONST VERTICALANCHOR_TOP_BOTTOM As String = "top-bottom"
	Private bGradientActive As String
	Private sGradient As String
	Private sGradientColor1 As String
	Private sGradientColor2 As String
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
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
'
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

'set text
Sub setText(s As String)
	sText = s
	CustProps.Put("Text", s)
	If mElement = Null Then Return
	UI.SetText(mElement, s)
End Sub
'get text
Sub getText As String
	If mElement = Null Then Return ""
	sText = mElement.GetText
	Return sText
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sAlignment = Props.GetDefault("Alignment", "center")
		sAlignment = UI.CStr(sAlignment)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "transparent")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		cBorderColor = Props.GetDefault("BorderColor", "#000000")
		cBorderColor = UI.CStr(cBorderColor)
		sBorderRadius = Props.GetDefault("BorderRadius", "0px")
		sBorderRadius = UI.CStr(sBorderRadius)
		bBorderSet = Props.GetDefault("BorderSet", False)
		bBorderSet = UI.CBool(bBorderSet)
		sBorderStyle = Props.GetDefault("BorderStyle", "solid")
		sBorderStyle = UI.CStr(sBorderStyle)
		sBorderWidth = Props.GetDefault("BorderWidth", "0px")
		sBorderWidth = UI.CStr(sBorderWidth)
		sBottom = Props.GetDefault("Bottom", "")
		sBottom = UI.CStr(sBottom)
		sBoxSizing = Props.GetDefault("BoxSizing", "border-box")
		sBoxSizing = UI.CStr(sBoxSizing)
		If sBoxSizing = "none" Then sBoxSizing = ""
		sFontAwesomeIcon = Props.GetDefault("FontAwesomeIcon", "")
		sFontAwesomeIcon = UI.CStr(sFontAwesomeIcon)
		bFontBold = Props.GetDefault("FontBold", False)
		bFontBold = UI.CBool(bFontBold)
		bFontItalic = Props.GetDefault("FontItalic", False)
		bFontItalic = UI.CBool(bFontItalic)
		sFontName = Props.GetDefault("FontName", "")
		sFontName = UI.CStr(sFontName)
		sFontSize = Props.GetDefault("FontSize", 15)
		sFontSize = UI.CStr(sFontSize)
		sHeight = Props.GetDefault("Height", "60px")
		sHeight = UI.CStr(sHeight)
		sHorizontalAnchor = Props.GetDefault("HorizontalAnchor", "left")
		sHorizontalAnchor = UI.CStr(sHorizontalAnchor)
		sLeft = Props.GetDefault("Left", "")
		sLeft = UI.CStr(sLeft)
		sLineHeight = Props.GetDefault("LineHeight", "")
		sLineHeight = UI.CStr(sLineHeight)
		sMarginBottom = Props.GetDefault("MarginBottom", "")
		sMarginBottom = UI.CStr(sMarginBottom)
		sMarginLeft = Props.GetDefault("MarginLeft", "")
		sMarginLeft = UI.CStr(sMarginLeft)
		sMarginRight = Props.GetDefault("MarginRight", "")
		sMarginRight = UI.CStr(sMarginRight)
		sMarginTop = Props.GetDefault("MarginTop", "")
		sMarginTop = UI.CStr(sMarginTop)
		sMaterialIcon = Props.GetDefault("MaterialIcon", "")
		sMaterialIcon = UI.CStr(sMaterialIcon)
		sPaddingBottom = Props.GetDefault("PaddingBottom", "")
		sPaddingBottom = UI.CStr(sPaddingBottom)
		sPaddingLeft = Props.GetDefault("PaddingLeft", "")
		sPaddingLeft = UI.CStr(sPaddingLeft)
		sPaddingRight = Props.GetDefault("PaddingRight", "")
		sPaddingRight = UI.CStr(sPaddingRight)
		sPaddingTop = Props.GetDefault("PaddingTop", "")
		sPaddingTop = UI.CStr(sPaddingTop)
		sRight = Props.GetDefault("Right", "")
		sRight = UI.CStr(sRight)
		sTagType = Props.GetDefault("TagType", "div")
		sTagType = UI.CStr(sTagType)
		If sTagType = "" Then sTagType = "div"
		sText = Props.GetDefault("Text", "Label")
		sText = UI.CStr(sText)
		cTextColor = Props.GetDefault("TextColor", "#000000")
		cTextColor = UI.CStr(cTextColor)
		sTop = Props.GetDefault("Top", "")
		sTop = UI.CStr(sTop)
		sVerticalAnchor = Props.GetDefault("VerticalAnchor", "top")
		sVerticalAnchor = UI.CStr(sVerticalAnchor)
		sWidth = Props.GetDefault("Width", "100px")
		sWidth = UI.CStr(sWidth)
		bWrapText = Props.GetDefault("WrapText", False)
		bWrapText = UI.CBool(bWrapText)
		bGradientActive = Props.GetDefault("GradientActive", False)
		bGradientActive = UI.CBool(bGradientActive)
		sGradient = Props.GetDefault("Gradient", "")
		sGradientColor1 = Props.GetDefault("GradientColor1", "#f86194")
		sGradientColor2 = Props.GetDefault("GradientColor2", "#968918")
	End If
	'
	If bGradientActive Then sBackgroundColor = ""
	If sBackgroundColor <> "" Then UI.AddStyleDT("background-color", sBackgroundColor)
	If bBorderSet Then
		If cBorderColor <> "" Then UI.AddStyleDT("border-color", cBorderColor)
		If sBorderRadius <> "" Then UI.AddStyleDT("border-radius", sBorderRadius)
		If sBorderStyle <> "" Then UI.AddStyleDT("border-style", sBorderStyle)
		If sBorderWidth <> "" Then UI.AddStyleDT("border-width", sBorderWidth)
	End If	
	If sBottom <> "" Then UI.AddStyleDT("bottom", sBottom)
	If sBoxSizing <> "" Then UI.AddStyleDT("box-sizing", sBoxSizing)
	If bFontBold = True Then UI.AddStyleDT("font-weight", "bold")
	If bFontItalic = True Then UI.AddStyleDT("font-style", "italic")
	If sFontName <> "" Then UI.AddStyleDT("font-family", sFontName)
	If sFontSize <> "" Then UI.AddStyleDT("font-size", sFontSize)
	If sHeight <> "" Then UI.AddStyleDT("height", sHeight)
	If sLeft <> "" Then UI.AddStyleDT("left", sLeft)
	If sLineHeight <> "" Then UI.AddStyleDT("line-height", sLineHeight)
	If sMarginBottom <> "" Then UI.AddStyleDT("margin-bottom", sMarginBottom)
	If sMarginLeft <> "" Then UI.AddStyleDT("margin-left", sMarginLeft)
	If sMarginRight <> "" Then UI.AddStyleDT("margin-right", sMarginRight)
	If sMarginTop <> "" Then UI.AddStyleDT("margin-top", sMarginTop)
	If sPaddingBottom <> "" Then UI.AddStyleDT("padding-bottom", sPaddingBottom)
	If sPaddingLeft <> "" Then UI.AddStyleDT("padding-left", sPaddingLeft)
	If sPaddingRight <> "" Then UI.AddStyleDT("padding-right", sPaddingRight)
	If sPaddingTop <> "" Then UI.AddStyleDT("padding-top", sPaddingTop)
	If sRight <> "" Then UI.AddStyleDT("right", sRight)
	If cTextColor <> "" Then UI.AddStyleDT("color", cTextColor)
	If sTop <> "" Then UI.AddStyleDT("top", sTop)
	If sWidth <> "" Then UI.AddStyleDT("width", sWidth)
	If bWrapText = True Then 
		UI.AddStyleDT("white-space", "normal")
		UI.AddStyleDT("overflow-wrap", "break-word")
	End If
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
	mElement = mTarget.Append($"[BANCLEAN]<${sTagType} id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}</${sTagType}>"$).Get("#" & mName)
	setAlignment(sAlignment)
	If bGradientActive Then
		Dim agradient As String = UI.GetActualGradient(sGradient)
		UI.SetLinearGradient(mElement, agradient, sGradientColor1, sGradientColor2)
	End If
End Sub

'set Alignment
'options: bottom|center|left|right|top
Sub setAlignment(s As String)				'ignoredeadcode
	sAlignment = s
	CustProps.put("Alignment", s)
	If mElement = Null Then Return
	Select Case sAlignment
	Case "bottom"
	Case "center"
	Case "left"
	Case "right"
	Case "top"
	End Select
'	If s <> "" Then UI.AddStyle(mElement, "alignment", s)
End Sub
'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "background-color", s)
End Sub
'set Border Color
Sub setBorderColor(c As String)
	cBorderColor = c
	CustProps.put("BorderColor", c)
	If mElement = Null Then Return
	If bBorderSet = False Then Return
	If c <> "" Then UI.AddStyle(mElement, "border-color", c)
End Sub
'set Border Radius
Sub setBorderRadius(s As String)
	sBorderRadius = s
	CustProps.put("BorderRadius", s)
	If mElement = Null Then Return
	If bBorderSet = False Then Return
	If s <> "" Then UI.AddStyle(mElement, "border-radius", s)
End Sub
'set Border Set
Sub setBorderSet(b As Boolean)
	bBorderSet = b
	CustProps.put("BorderSet", b)
End Sub
'set Border Style
'options: dashed|dotted|double|groove|hidden|inherit|initial|inset|none|outset|ridge|solid
Sub setBorderStyle(s As String)
	sBorderStyle = s
	CustProps.put("BorderStyle", s)
	If mElement = Null Then Return
	If bBorderSet = False Then Return
	If s <> "" Then UI.AddStyle(mElement, "border-style", s)
End Sub
'set Border Width
Sub setBorderWidth(s As String)
	sBorderWidth = s
	CustProps.put("BorderWidth", s)
	If mElement = Null Then Return
	If bBorderSet = False Then Return
	If s <> "" Then UI.AddStyle(mElement, "border-width", s)
End Sub
'set Bottom
Sub setBottom(s As String)
	sBottom = s
	CustProps.put("Bottom", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "bottom", s)
End Sub
'set Determines How The Total Width And Height Of An Element Are Calculated.
'options: border-box|none
Sub setBoxSizing(s As String)
	sBoxSizing = s
	CustProps.put("BoxSizing", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "box-sizing", s)
End Sub
'set Font Bold
Sub setFontBold(b As Boolean)
	bFontBold = b
	CustProps.put("FontBold", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddStyle(mElement, "font-weight", "bold")
	Else
		UI.RemoveStyle(mElement, "font-weight")
	End If
End Sub
'set Font Italic
Sub setFontItalic(b As Boolean)
	bFontItalic = b
	CustProps.put("FontItalic", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddStyle(mElement, "font-style", "italic")
	Else
		UI.AddStyle(mElement, "font-style", "normal")
	End If
End Sub
'set Font Name
Sub setFontName(s As String)
	sFontName = s
	CustProps.put("FontName", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "font-family", s)
End Sub
'set Font Size
Sub setFontSize(s As String)
	sFontSize = s
	CustProps.put("FontSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "font-size", S)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "60px" Then UI.AddStyle(mElement, "height", s)
End Sub
'set Horizontal Anchor
'options: left|left-right|right
Sub setHorizontalAnchor(s As String)
	sHorizontalAnchor = s
	CustProps.put("HorizontalAnchor", s)
	If mElement = Null Then Return
End Sub
'set Left
Sub setLeft(s As String)
	sLeft = s
	CustProps.put("Left", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "left", s)
End Sub
'set Line Height
Sub setLineHeight(s As String)
	sLineHeight = s
	CustProps.put("LineHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "line-height", s)
End Sub
'set Margin Bottom
Sub setMarginBottom(s As String)
	sMarginBottom = s
	CustProps.put("MarginBottom", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "margin-bottom", s)
End Sub
'set Margin Left
Sub setMarginLeft(s As String)
	sMarginLeft = s
	CustProps.put("MarginLeft", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "margin-left", s)
End Sub
'set Margin Right
Sub setMarginRight(s As String)
	sMarginRight = s
	CustProps.put("MarginRight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "margin-right", s)
End Sub
'set Margin Top
Sub setMarginTop(s As String)
	sMarginTop = s
	CustProps.put("MarginTop", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "margin-top", s)
End Sub
'set Padding Bottom
Sub setPaddingBottom(s As String)
	sPaddingBottom = s
	CustProps.put("PaddingBottom", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "padding-bottom", s)
End Sub
'set Padding Left
Sub setPaddingLeft(s As String)
	sPaddingLeft = s
	CustProps.put("PaddingLeft", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "padding-left", s)
End Sub
'set Padding Right
Sub setPaddingRight(s As String)
	sPaddingRight = s
	CustProps.put("PaddingRight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "padding-right", s)
End Sub
'set Padding Top
Sub setPaddingTop(s As String)
	sPaddingTop = s
	CustProps.put("PaddingTop", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "padding-top", s)
End Sub
'set Right
Sub setRight(s As String)
	sRight = s
	CustProps.put("Right", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "right", s)
End Sub
'set Tag Type
Sub setTagType(s As String)
	sTagType = s
	CustProps.put("TagType", s)
End Sub
'set Text Color
Sub setTextColor(c As String)
	cTextColor = c
	CustProps.put("TextColor", c)
	If mElement = Null Then Return
	If c <> "" Then UI.AddStyle(mElement, "color", c)
End Sub
'set Top
Sub setTop(s As String)
	sTop = s
	CustProps.put("Top", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "top", s)
End Sub
'set Vertical Anchor
'options: bottom|top|top-bottom
Sub setVerticalAnchor(s As String)
	sVerticalAnchor = s
	CustProps.put("VerticalAnchor", s)
	If mElement = Null Then Return
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "width", s)
End Sub
'set Wrap Text
Sub setWrapText(b As Boolean)
	bWrapText = b
	CustProps.put("WrapText", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddStyle(mElement, "white-space", "normal")
		UI.AddStyle(mElement, "overflow-wrap", "break-word")
	Else
	End If
End Sub
'get Alignment
Sub getAlignment As String
	Return sAlignment
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Border Color
Sub getBorderColor As Object
	Return cBorderColor
End Sub
'get Border Radius
Sub getBorderRadius As String
	Return sBorderRadius
End Sub
'get Border Set
Sub getBorderSet As Boolean
	Return bBorderSet
End Sub
'get Border Style
Sub getBorderStyle As String
	Return sBorderStyle
End Sub
'get Border Width
Sub getBorderWidth As String
	Return sBorderWidth
End Sub
'get Bottom
Sub getBottom As String
	Return sBottom
End Sub
'get Determines How The Total Width And Height Of An Element Are Calculated.
Sub getBoxSizing As String
	Return sBoxSizing
End Sub
'get Font Bold
Sub getFontBold As Boolean
	Return bFontBold
End Sub
'get Font Italic
Sub getFontItalic As Boolean
	Return bFontItalic
End Sub
'get Font Name
Sub getFontName As String
	Return sFontName
End Sub
'get Font Size
Sub getFontSize As String
	Return sFontSize
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Horizontal Anchor
Sub getHorizontalAnchor As String
	Return sHorizontalAnchor
End Sub
'get Left
Sub getLeft As String
	Return sLeft
End Sub
'get Line Height
Sub getLineHeight As String
	Return sLineHeight
End Sub
'get Margin Bottom
Sub getMarginBottom As String
	Return sMarginBottom
End Sub
'get Margin Left
Sub getMarginLeft As String
	Return sMarginLeft
End Sub
'get Margin Right
Sub getMarginRight As String
	Return sMarginRight
End Sub
'get Margin Top
Sub getMarginTop As String
	Return sMarginTop
End Sub
'get Padding Bottom
Sub getPaddingBottom As String
	Return sPaddingBottom
End Sub
'get Padding Left
Sub getPaddingLeft As String
	Return sPaddingLeft
End Sub
'get Padding Right
Sub getPaddingRight As String
	Return sPaddingRight
End Sub
'get Padding Top
Sub getPaddingTop As String
	Return sPaddingTop
End Sub
'get Right
Sub getRight As String
	Return sRight
End Sub
'get Tag Type
Sub getTagType As String
	Return sTagType
End Sub
'get Text Color
Sub getTextColor As Object
	Return cTextColor
End Sub
'get Top
Sub getTop As String
	Return sTop
End Sub
'get Vertical Anchor
Sub getVerticalAnchor As String
	Return sVerticalAnchor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub
'get Wrap Text
Sub getWrapText As Boolean
	Return bWrapText
End Sub