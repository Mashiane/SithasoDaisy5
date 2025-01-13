B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TextTag, DisplayName: Tag, FieldType: String, DefaultValue: p, Description: Tag, List: abbr|blockquote|del|em|h1|h2|h3|h4|h5|h6|ins|mark|p|s|small|span|strong|u|aside|figcaption|figure|ol|ul|li
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: IconSize, DisplayName: Icon Size, FieldType: String, DefaultValue: , Description: Icon Size
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: ApplyDefaults, DisplayName: Apply Defaults, FieldType: Boolean, DefaultValue: True, Description: Apply Defaults
#DesignerProperty: Key: Decoration, DisplayName: Decoration, FieldType: String, DefaultValue: none, Description: Decoration, List: line-through|no-underline|none|underline
#DesignerProperty: Key: FontWeight, DisplayName: Font Weight, FieldType: String, DefaultValue: none, Description: Font Weight, List: black|bold|extrabold|extralight|light|medium|none|normal|semibold|thin
#DesignerProperty: Key: Italic, DisplayName: Italic, FieldType: Boolean, DefaultValue: False, Description: Italic
#DesignerProperty: Key: Overflow, DisplayName: Overflow, FieldType: String, DefaultValue: none, Description: Overflow, List: none|overflow-clip|overflow-ellipsis|truncate
#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue: none, Description: Text Align, List: center|end|justify|left|none|right|start
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: none, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: Transform, DisplayName: Transform, FieldType: String, DefaultValue: none, Description: Transform, List: capitalize|lowercase|none|normal-case|uppercase
#DesignerProperty: Key: VerticalAlign, DisplayName: Vertical Align, FieldType: String, DefaultValue: none, Description: Vertical Align, List: baseline|bottom|middle|none|text-bottom|text-top|top
#DesignerProperty: Key: WordBreak, DisplayName: Word Break, FieldType: String, DefaultValue: none, Description: Word Break, List: all|none|normal|words
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
	Private bApplyDefaults As Boolean = True
	Private sDecoration As String = "none"
	Private sFontWeight As String = "none"
	Private bItalic As Boolean = False
	Private sOverflow As String = "none"
	Private sTextAlign As String = "none"
	Private sTextColor As String = ""
	Private sTextSize As String = "none"
	Private sTextTag As String = "p"
	Private sTransform As String = "none"
	Private sVerticalAlign As String = "none"
	Private sWordBreak As String = "none"
	Public CONST DECORATION_LINE_THROUGH As String = "line-through"
	Public CONST DECORATION_NO_UNDERLINE As String = "no-underline"
	Public CONST DECORATION_NONE As String = "none"
	Public CONST DECORATION_UNDERLINE As String = "underline"
	Public CONST FONTWEIGHT_BLACK As String = "black"
	Public CONST FONTWEIGHT_BOLD As String = "bold"
	Public CONST FONTWEIGHT_EXTRABOLD As String = "extrabold"
	Public CONST FONTWEIGHT_EXTRALIGHT As String = "extralight"
	Public CONST FONTWEIGHT_LIGHT As String = "light"
	Public CONST FONTWEIGHT_MEDIUM As String = "medium"
	Public CONST FONTWEIGHT_NONE As String = "none"
	Public CONST FONTWEIGHT_NORMAL As String = "normal"
	Public CONST FONTWEIGHT_SEMIBOLD As String = "semibold"
	Public CONST FONTWEIGHT_THIN As String = "thin"
	Public CONST OVERFLOW_NONE As String = "none"
	Public CONST OVERFLOW_OVERFLOW_CLIP As String = "overflow-clip"
	Public CONST OVERFLOW_OVERFLOW_ELLIPSIS As String = "overflow-ellipsis"
	Public CONST OVERFLOW_TRUNCATE As String = "truncate"
	Public CONST TEXTALIGN_CENTER As String = "center"
	Public CONST TEXTALIGN_END As String = "end"
	Public CONST TEXTALIGN_JUSTIFY As String = "justify"
	Public CONST TEXTALIGN_LEFT As String = "left"
	Public CONST TEXTALIGN_NONE As String = "none"
	Public CONST TEXTALIGN_RIGHT As String = "right"
	Public CONST TEXTALIGN_START As String = "start"
	Public CONST TEXTSIZE_2XL As String = "2xl"
	Public CONST TEXTSIZE_3XL As String = "3xl"
	Public CONST TEXTSIZE_4XL As String = "4xl"
	Public CONST TEXTSIZE_5XL As String = "5xl"
	Public CONST TEXTSIZE_6XL As String = "6xl"
	Public CONST TEXTSIZE_7XL As String = "7xl"
	Public CONST TEXTSIZE_8XL As String = "8xl"
	Public CONST TEXTSIZE_9XL As String = "9xl"
	Public CONST TEXTSIZE_BASE As String = "base"
	Public CONST TEXTSIZE_LG As String = "lg"
	Public CONST TEXTSIZE_MD As String = "md"
	Public CONST TEXTSIZE_NONE As String = "none"
	Public CONST TEXTSIZE_SM As String = "sm"
	Public CONST TEXTSIZE_XL As String = "xl"
	Public CONST TEXTSIZE_XS As String = "xs"
	Public CONST TEXTTAG_ABBR As String = "abbr"
	Public CONST TEXTTAG_BLOCKQUOTE As String = "blockquote"
	Public CONST TEXTTAG_DEL As String = "del"
	Public CONST TEXTTAG_EM As String = "em"
	Public CONST TEXTTAG_H1 As String = "h1"
	Public CONST TEXTTAG_H2 As String = "h2"
	Public CONST TEXTTAG_H3 As String = "h3"
	Public CONST TEXTTAG_H4 As String = "h4"
	Public CONST TEXTTAG_H5 As String = "h5"
	Public CONST TEXTTAG_H6 As String = "h6"
	Public CONST TEXTTAG_INS As String = "ins"
	Public CONST TEXTTAG_MARK As String = "mark"
	Public CONST TEXTTAG_P As String = "p"
	Public CONST TEXTTAG_S As String = "s"
	Public CONST TEXTTAG_SMALL As String = "small"
	Public CONST TEXTTAG_SPAN As String = "span"
	Public CONST TEXTTAG_STRONG As String = "strong"
	Public CONST TEXTTAG_U As String = "u"
	Public CONST TRANSFORM_CAPITALIZE As String = "capitalize"
	Public CONST TRANSFORM_LOWERCASE As String = "lowercase"
	Public CONST TRANSFORM_NONE As String = "none"
	Public CONST TRANSFORM_NORMAL_CASE As String = "normal-case"
	Public CONST TRANSFORM_UPPERCASE As String = "uppercase"
	Public CONST VERTICALALIGN_BASELINE As String = "baseline"
	Public CONST VERTICALALIGN_BOTTOM As String = "bottom"
	Public CONST VERTICALALIGN_MIDDLE As String = "middle"
	Public CONST VERTICALALIGN_NONE As String = "none"
	Public CONST VERTICALALIGN_TEXT_BOTTOM As String = "text-bottom"
	Public CONST VERTICALALIGN_TEXT_TOP As String = "text-top"
	Public CONST VERTICALALIGN_TOP As String = "top"
	Public CONST WORDBREAK_ALL As String = "all"
	Public CONST WORDBREAK_NONE As String = "none"
	Public CONST WORDBREAK_NORMAL As String = "normal"
	Public CONST WORDBREAK_WORDS As String = "words"
	Private sIcon As String = ""
	Private sIconSize As String = ""
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
'set text
Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_text"$, text)
	If text = "" Then
		UI.SetVisibleByID($"${mName}_text"$, False)
	Else
		UI.SetVisibleByID($"${mName}_text"$, True)
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
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		bApplyDefaults = Props.GetDefault("ApplyDefaults", True)
		bApplyDefaults = modSD5.CBool(bApplyDefaults)
		sDecoration = Props.GetDefault("Decoration", "none")
		sDecoration = modSD5.CStr(sDecoration)
		If sDecoration = "none" Then sDecoration = ""
		sFontWeight = Props.GetDefault("FontWeight", "none")
		sFontWeight = modSD5.CStr(sFontWeight)
		If sFontWeight = "none" Then sFontWeight = ""
		bItalic = Props.GetDefault("Italic", False)
		bItalic = modSD5.CBool(bItalic)
		sOverflow = Props.GetDefault("Overflow", "none")
		sOverflow = modSD5.CStr(sOverflow)
		If sOverflow = "none" Then sOverflow = ""
		sTextAlign = Props.GetDefault("TextAlign", "none")
		sTextAlign = modSD5.CStr(sTextAlign)
		If sTextAlign = "none" Then sTextAlign = ""
		'sTextColor = Props.GetDefault("TextColor", "")
		'sTextColor = modSD5.CStr(sTextColor)
		sTextSize = Props.GetDefault("TextSize", "none")
		sTextSize = modSD5.CStr(sTextSize)
		If sTextSize = "none" Then sTextSize = ""
		sTextTag = Props.GetDefault("TextTag", "p")
		sTextTag = modSD5.CStr(sTextTag)
		sTransform = Props.GetDefault("Transform", "none")
		sTransform = modSD5.CStr(sTransform)
		If sTransform = "none" Then sTransform = ""
		sVerticalAlign = Props.GetDefault("VerticalAlign", "none")
		sVerticalAlign = modSD5.CStr(sVerticalAlign)
		If sVerticalAlign = "none" Then sVerticalAlign = ""
		sWordBreak = Props.GetDefault("WordBreak", "none")
		sWordBreak = modSD5.CStr(sWordBreak)
		If sWordBreak = "none" Then sWordBreak = ""
		sIcon = Props.GetDefault("Icon", "")
		sIcon = modSD5.CStr(sIcon)
		sIconSize = Props.GetDefault("IconSize", "")
		sIconSize = modSD5.CStr(sIconSize)
	End If
	'
	If bApplyDefaults Then
		Select Case sTextTag
		Case "h1"
			sTextSize = "5xl"
			sFontWeight = "extrabold"
		Case "h2"
			sTextSize = "4xl"
			sFontWeight = "bold"
		Case "h3"
			sTextSize = "3xl"
			sFontWeight = "bold"
		Case "h4"
			sTextSize = "2xl"
			sFontWeight = "bold"
		Case "h5"
			sTextSize = "xl"
			sFontWeight = "bold"
		Case "h6"
			sTextSize = "lg"
			sFontWeight = "bold"
		End Select
	End If
	'
	If sFontWeight <> "" Then UI.AddClassDT("font-" & sFontWeight)
	If sTextSize <> "" Then UI.AddTextSizeDT(sTextSize)
	If sDecoration <> "" Then UI.AddClassDT("decoration-" & sDecoration)
	If bItalic = True Then UI.AddClassDT("italic")
	If sOverflow <> "" Then UI.AddClassDT("overflow-" & sOverflow)
	If sTextAlign <> "" Then UI.AddStyleDT("text-align", sTextAlign)
	'If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sTransform <> "" Then UI.AddClassDT("transform-" & sTransform)
	If sVerticalAlign <> "" Then UI.AddClassDT("align-" & sVerticalAlign)
	If sWordBreak <> "" Then UI.AddClassDT("break-" & sWordBreak)
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
	<${sTextTag} id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<img id="${mName}_icon" class="hidden mr-2"></img>
		<span id="${mName}_text"></span>
	</${sTextTag}>"$).Get("#" & mName)
	setText(sText)
	setIcon(sIcon)
	setIconSize(sIconSize)
End Sub

'set Apply Defaults
Sub setApplyDefaults(b As Boolean)
	bApplyDefaults = b
	CustProps.put("ApplyDefaults", b)
End Sub
'set Decoration
'options: line-through|no-underline|none|underline
Sub setDecoration(s As String)
	sDecoration = s
	CustProps.put("Decoration", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "decoration-" & s)
End Sub
'set Font Weight
'options: black|bold|extrabold|extralight|light|medium|none|normal|semibold|thin
Sub setFontWeight(s As String)
	sFontWeight = s
	CustProps.put("FontWeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "font-" & s)
End Sub
'set Italic
Sub setItalic(b As Boolean)
	bItalic = b
	CustProps.put("Italic", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "italic")
	Else
		UI.RemoveClass(mElement, "italic")
	End If
End Sub
'set Overflow
'options: none|overflow-clip|overflow-ellipsis|truncate
Sub setOverflow(s As String)
	sOverflow = s
	CustProps.put("Overflow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "overflow-" & s)
End Sub
'set Text Align
'options: center|end|justify|left|none|right|start
Sub setTextAlign(s As String)
	sTextAlign = s
	CustProps.put("TextAlign", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "text-align", s)
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
End Sub
'set Text Size
'options: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
Sub setTextSize(s As String)
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextSize(mElement, sTextSize)
End Sub
'set Text Tag
'options: abbr|blockquote|del|em|h1|h2|h3|h4|h5|h6|ins|mark|p|s|small|span|strong|u
Sub setTextTag(s As String)
	sTextTag = s
	CustProps.put("TextTag", s)
End Sub
'set Transform
'options: capitalize|lowercase|none|normal-case|uppercase
Sub setTransform(s As String)
	sTransform = s
	CustProps.put("Transform", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "transform-" & s)
End Sub
'set Vertical Align
'options: baseline|bottom|middle|none|text-bottom|text-top|top
Sub setVerticalAlign(s As String)
	sVerticalAlign = s
	CustProps.put("VerticalAlign", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "align-" & s)
End Sub
'set Word Break
'options: all|none|normalwords
Sub setWordBreak(s As String)
	sWordBreak = s
	CustProps.put("WordBreak", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "break-" & s)
End Sub
'get Apply Defaults
Sub getApplyDefaults As Boolean
	Return bApplyDefaults
End Sub
'get Decoration
Sub getDecoration As String
	Return sDecoration
End Sub
'get Font Weight
Sub getFontWeight As String
	Return sFontWeight
End Sub
'get Italic
Sub getItalic As Boolean
	Return bItalic
End Sub
'get Overflow
Sub getOverflow As String
	Return sOverflow
End Sub
'get Text Align
Sub getTextAlign As String
	Return sTextAlign
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Text Size
Sub getTextSize As String
	Return sTextSize
End Sub
'get Text Tag
Sub getTextTag As String
	Return sTextTag
End Sub
'get Transform
Sub getTransform As String
	Return sTransform
End Sub
'get Vertical Align
Sub getVerticalAlign As String
	Return sVerticalAlign
End Sub
'get Word Break
Sub getWordBreak As String
	Return sWordBreak
End Sub

'set Icon
Sub setIcon(s As String)
	sIcon = s
	CustProps.put("Icon", s)
	If mElement = Null Then Return
	If sIcon = "" Then
		UI.SetVisibleByID($"${mName}_icon"$, False)
		UI.RemoveClass(mElement, "inline-flex items-center")
	Else
		UI.SetVisibleByID($"${mName}_icon"$, True)
		UI.AddClass(mElement, "inline-flex items-center")
		UI.SetImageByID($"${mName}_icon"$, sIcon)
	End If	
End Sub

'set Icon Size
'options: xs|none|sm|md|lg|xl
Sub setIconSize(s As String)
	sIconSize = s
	CustProps.put("IconSize", s)
	If mElement = Null Then Return
	If sIcon = "" Then Return
	UI.SetWidthByID($"${mName}_icon"$, s)
	UI.SetHeightByID($"${mName}_icon"$, s)
End Sub

'get Icon
Sub getIcon As String
	Return sIcon
End Sub

'get Icon Size
Sub getIconSize As String
	Return sIconSize
End Sub