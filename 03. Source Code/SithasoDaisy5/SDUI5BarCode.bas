B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
'https://github.com/lindell/JsBarcode
#Event: Valid (valid as Boolan)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Format, DisplayName: Format, FieldType: String, DefaultValue: auto, Description: Format, List: auto|codabar|CODE128|CODE128A|CODE128AUTO|CODE128B|CODE128C|CODE39|EAN13|EAN2|EAN5|EAN8|GenericBarcode|ITF|ITF14|MSI|MSI10|MSI1010|MSI11|MSI1110|pharmacode|UPC|UPCE
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 123456789012, Description: Value Of Bar Code
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: JsBarCode, Description: Text
#DesignerProperty: Key: Background, DisplayName: Background, FieldType: String, DefaultValue: #ffffff, Description: Background Color
#DesignerProperty: Key: DisplayValue, DisplayName: Display Value, FieldType: Boolean, DefaultValue: True, Description: Display Value
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Font, DisplayName: Font, FieldType: String, DefaultValue: monospace, Description: Font
#DesignerProperty: Key: FontBold, DisplayName: Font Bold, FieldType: Boolean, DefaultValue: False, Description: Font Bold
#DesignerProperty: Key: FontItalic, DisplayName: Font Italic, FieldType: Boolean, DefaultValue: False, Description: Font Italic
#DesignerProperty: Key: FontSize, DisplayName: Font Size, FieldType: Int, DefaultValue: 20, Description: Font Size
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: Int, DefaultValue: 100, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: Int, DefaultValue: 2, Description: Width
#DesignerProperty: Key: LineColor, DisplayName: Line Color, FieldType: String, DefaultValue: #000000, Description: Line Color
#DesignerProperty: Key: Margin, DisplayName: Margin, FieldType: Int, DefaultValue: 10, Description: Margin
#DesignerProperty: Key: MarginBottom, DisplayName: Margin Bottom, FieldType: Int, DefaultValue: -1, Description: Margin Bottom
#DesignerProperty: Key: MarginLeft, DisplayName: Margin Left, FieldType: Int, DefaultValue: -1, Description: Margin Left
#DesignerProperty: Key: MarginRight, DisplayName: Margin Right, FieldType: Int, DefaultValue: -1, Description: Margin Right
#DesignerProperty: Key: MarginTop, DisplayName: Margin Top, FieldType: Int, DefaultValue: -1, Description: Margin Top
#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue: center, Description: Text Align, List: center|left|right
#DesignerProperty: Key: TextMargin, DisplayName: Text Margin, FieldType: Int, DefaultValue: 2, Description: Text Margin
#DesignerProperty: Key: TextPosition, DisplayName: Text Position, FieldType: String, DefaultValue: bottom, Description: Text Position, List: bottom|top
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
	Private Options As Map
	Private sBackground As String = "#ffffff"
	Private bDisplayValue As Boolean = True
	Private bFlat As Boolean = False
	Private sFont As String = "monospace"
	Private bFontBold As Boolean = False
	Private bFontItalic As Boolean = False
	Private iFontSize As Int = 20
	Private sFormat As String = "auto"
	Private iHeight As Int = 100
	Private sLineColor As String = "#000000"
	Private iMargin As Int = 10
	Private iMarginBottom As Int = -1
	Private iMarginLeft As Int = -1
	Private iMarginRight As Int = -1
	Private iMarginTop As Int = -1
	Private sTextAlign As String = "center"
	Private iTextMargin As Int = 2
	Private sTextPosition As String = "bottom"
	Private sValue As String = "123456789012"
	Private iWidth As Int = 2
	Public CONST FORMAT_AUTO As String = "auto"
	Public CONST FORMAT_CODABAR As String = "codabar"
	Public CONST FORMAT_CODE128 As String = "CODE128"
	Public CONST FORMAT_CODE128A As String = "CODE128A"
	Public CONST FORMAT_CODE128AUTO As String = "CODE128AUTO"
	Public CONST FORMAT_CODE128B As String = "CODE128B"
	Public CONST FORMAT_CODE128C As String = "CODE128C"
	Public CONST FORMAT_CODE39 As String = "CODE39"
	Public CONST FORMAT_EAN13 As String = "EAN13"
	Public CONST FORMAT_EAN2 As String = "EAN2"
	Public CONST FORMAT_EAN5 As String = "EAN5"
	Public CONST FORMAT_EAN8 As String = "EAN8"
	Public CONST FORMAT_GENERICBARCODE As String = "GenericBarcode"
	Public CONST FORMAT_ITF As String = "ITF"
	Public CONST FORMAT_ITF14 As String = "ITF14"
	Public CONST FORMAT_MSI As String = "MSI"
	Public CONST FORMAT_MSI10 As String = "MSI10"
	Public CONST FORMAT_MSI1010 As String = "MSI1010"
	Public CONST FORMAT_MSI11 As String = "MSI11"
	Public CONST FORMAT_MSI1110 As String = "MSI1110"
	Public CONST FORMAT_PHARMACODE As String = "pharmacode"
	Public CONST FORMAT_UPC As String = "UPC"
	Public CONST FORMAT_UPCE As String = "UPCE"
	Public CONST TEXTALIGN_CENTER As String = "center"
	Public CONST TEXTALIGN_LEFT As String = "left"
	Public CONST TEXTALIGN_RIGHT As String = "right"
	Public CONST TEXTPOSITION_BOTTOM As String = "bottom"
	Public CONST TEXTPOSITION_TOP As String = "top"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("JsBarCode") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesBarCode)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
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
'set text
Sub setText(s As String)
	sText = s
	CustProps.Put("Text", s)
	Options.Put("text", s)
End Sub
'get text
Sub getText As String
	Return sText
End Sub
'set value
Sub setValue(text As String)
	sValue = text
	CustProps.Put("Value", text)
End Sub
'get value
Sub getValue As String
	Return sValue
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
		sBackground = Props.GetDefault("Background", "#ffffff")
		sBackground = UI.CStr(sBackground)
		bDisplayValue = Props.GetDefault("DisplayValue", True)
		bDisplayValue = UI.CBool(bDisplayValue)
		bFlat = Props.GetDefault("Flat", False)
		bFlat = UI.CBool(bFlat)
		sFont = Props.GetDefault("Font", "monospace")
		sFont = UI.CStr(sFont)
		bFontBold = Props.GetDefault("FontBold", False)
		bFontBold = UI.CBool(bFontBold)
		bFontItalic = Props.GetDefault("FontItalic", False)
		bFontItalic = UI.CBool(bFontItalic)
		iFontSize = Props.GetDefault("FontSize", 20)
		iFontSize = UI.CInt(iFontSize)
		sFormat = Props.GetDefault("Format", "auto")
		sFormat = UI.CStr(sFormat)
		iHeight = Props.GetDefault("Height", 100)
		iHeight = UI.CInt(iHeight)
		sLineColor = Props.GetDefault("LineColor", "#000000")
		sLineColor = UI.CStr(sLineColor)
		iMargin = Props.GetDefault("Margin", 10)
		iMargin = UI.CInt(iMargin)
		iMarginBottom = Props.GetDefault("MarginBottom", -1)
		iMarginBottom = UI.CInt(iMarginBottom)
		iMarginLeft = Props.GetDefault("MarginLeft", -1)
		iMarginLeft = UI.CInt(iMarginLeft)
		iMarginRight = Props.GetDefault("MarginRight", -1)
		iMarginRight = UI.CInt(iMarginRight)
		iMarginTop = Props.GetDefault("MarginTop", -1)
		iMarginTop = UI.CInt(iMarginTop)
		sText = Props.GetDefault("Text", "JsBarCode")
		sText = UI.CStr(sText)
		sTextAlign = Props.GetDefault("TextAlign", "center")
		sTextAlign = UI.CStr(sTextAlign)
		iTextMargin = Props.GetDefault("TextMargin", 2)
		iTextMargin = UI.CInt(iTextMargin)
		sTextPosition = Props.GetDefault("TextPosition", "bottom")
		sTextPosition = UI.CStr(sTextPosition)
		sValue = Props.GetDefault("Value", "123456789012")
		sValue = UI.CStr(sValue)
		iWidth = Props.GetDefault("Width", 2)
		iWidth = UI.CInt(iWidth)
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
	mElement = mTarget.Append($"[BANCLEAN]<canvas id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}</canvas>"$).Get("#" & mName)
	Options.Initialize 
	Refresh
End Sub

Sub Refresh				'ignoredeadcode
	mElement.empty
	Options.put("background", sBackground)
	Options.put("displayValue", bDisplayValue)
	Options.put("flat", bFlat)
	Options.put("font", sFont)
	Dim foList As List
	foList.Initialize
	If bFontBold Then foList.Add("bold")
	If bFontItalic Then foList.Add("italic")
	Dim sfontOptions As String = UI.Join(" ", foList)
	sfontOptions = sfontOptions.trim
	If sfontOptions <> "" Then Options.Put("fontOptions", sfontOptions)
	Options.put("fontSize", iFontSize)
	Options.put("format", sFormat)
	Options.put("height", iHeight)
	Options.put("lineColor", sLineColor)
	Options.put("margin", iMargin)
	Options.put("marginBottom", iMarginBottom)
	Options.put("marginLeft", iMarginLeft)
	Options.put("marginRight", iMarginRight)
	Options.put("marginTop", iMarginTop)
	Options.put("text", sText)
	Options.put("textAlign", sTextAlign)
	Options.put("textMargin", iTextMargin)
	Options.put("textPosition", sTextPosition)
	Options.put("width", iWidth)
	Dim validObj As Object
	Dim cbvalid As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_valid"$, BANano.Spread(validObj))
	Options.Put("valid", cbvalid)

	If iMarginBottom <> -1 Then Options.remove("marginBottom")
	If iMarginLeft <> -1 Then Options.remove("marginLeft")
	If iMarginRight <> -1 Then Options.remove("marginRight")
	If iMarginTop <> -1 Then Options.remove("marginTop")
	'
	Try
		Dim elID As String = $"#${mName}"$
		BANano.RunJavascriptMethod("JsBarcode", Array(elID, sValue, Options))
	Catch
	End Try			'ignore	
End Sub

Sub toBlob As Object
	Dim res As Object = mElement.RunMethod("toBlob", Null).Result
	Return res
End Sub

'convert canvas to dataURL
Sub ToDataURL As String
	Try
		Dim res As String = mElement.RunMethod("toDataURL", "image/png").Result
		Return res
	Catch
		Return ""
	End Try	'ignore
End Sub


'set Background Color
Sub setBackground(s As String)
	sBackground = s
	CustProps.put("Background", s)
	Options.put("background", s)
End Sub
'set Display Value
Sub setDisplayValue(b As Boolean)
	bDisplayValue = b
	CustProps.put("DisplayValue", b)
	Options.put("displayValue", b)
End Sub
'set Flat
Sub setFlat(b As Boolean)
	bFlat = b
	CustProps.put("Flat", b)
	Options.put("flat", b)
End Sub
'set Font
Sub setFont(s As String)
	sFont = s
	CustProps.put("Font", s)
	Options.put("font", s)
End Sub
'set Font Bold
Sub setFontBold(b As Boolean)
	bFontBold = b
	CustProps.put("FontBold", b)
End Sub
'set Font Italic
Sub setFontItalic(b As Boolean)
	bFontItalic = b
	CustProps.put("FontItalic", b)
End Sub
'set Font Size
Sub setFontSize(i As Int)
	iFontSize = i
	CustProps.put("FontSize", i)
	Options.put("fontSize", i)
End Sub
'set Format
'options: auto|codabar|CODE128|CODE128A|CODE128AUTO|CODE128B|CODE128C|CODE39|EAN13|EAN2|EAN5|EAN8|GenericBarcode|ITF|ITF14|MSI|MSI10|MSI1010|MSI11|MSI1110|pharmacode|UPC|UPCE
Sub setFormat(s As String)
	sFormat = s
	CustProps.put("Format", s)
	Options.put("format", s)
End Sub
'set Height
Sub setHeight(i As Int)
	iHeight = i
	CustProps.put("Height", i)
	Options.put("height", i)
End Sub
'set Line Color
'options: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
Sub setLineColor(s As String)
	sLineColor = s
	CustProps.put("LineColor", s)
	Options.put("lineColor", s)
End Sub
'set Margin
Sub setMargin(i As Int)
	iMargin = i
	CustProps.put("Margin", i)
	Options.put("margin", i)
End Sub
'set Margin Bottom
Sub setMarginBottom(i As Int)
	iMarginBottom = i
	CustProps.put("MarginBottom", i)
	Options.put("marginBottom", i)
End Sub
'set Margin Left
Sub setMarginLeft(i As Int)
	iMarginLeft = i
	CustProps.put("MarginLeft", i)
	Options.put("marginLeft", i)
End Sub
'set Margin Right
Sub setMarginRight(i As Int)
	iMarginRight = i
	CustProps.put("MarginRight", i)
	Options.put("marginRight", i)
End Sub
'set Margin Top
Sub setMarginTop(i As Int)
	iMarginTop = i
	CustProps.put("MarginTop", i)
	Options.put("marginTop", i)
End Sub
'set Text Align
'options: center|left|right
Sub setTextAlign(s As String)
    sTextAlign = s
    CustProps.put("TextAlign", s)
    Options.put("textAlign", s)
End Sub
'set Text Margin
Sub setTextMargin(i As Int)
    iTextMargin = i
    CustProps.put("TextMargin", i)
    Options.put("textMargin", i)
End Sub
'set Text Position
'options: bottom|top
Sub setTextPosition(s As String)
    sTextPosition = s
    CustProps.put("TextPosition", s)
    Options.put("textPosition", s)
End Sub
'set Width
Sub setWidth(i As Int)
    iWidth = i
    CustProps.put("Width", i)
    Options.put("width", i)
End Sub

'get Background Color
Sub getBackground As String
    Return sBackground
End Sub
'get Display Value
Sub getDisplayValue As Boolean
    Return bDisplayValue
End Sub
'get Flat
Sub getFlat As Boolean
    Return bFlat
End Sub
'get Font
Sub getFont As String
    Return sFont
End Sub
'get Font Bold
Sub getFontBold As Boolean
    Return bFontBold
End Sub
'get Font Italic
Sub getFontItalic As Boolean
    Return bFontItalic
End Sub
'get Font Size
Sub getFontSize As Int
    Return iFontSize
End Sub
'get Format
Sub getFormat As String
    Return sFormat
End Sub
'get Height
Sub getHeight As Int
    Return iHeight
End Sub
'get Line Color
Sub getLineColor As String
    Return sLineColor
End Sub
'get Margin
Sub getMargin As Int
    Return iMargin
End Sub
'get Margin Bottom
Sub getMarginBottom As Int
    Return iMarginBottom
End Sub
'get Margin Left
Sub getMarginLeft As Int
    Return iMarginLeft
End Sub
'get Margin Right
Sub getMarginRight As Int
    Return iMarginRight
End Sub
'get Margin Top
Sub getMarginTop As Int
    Return iMarginTop
End Sub
'get Text Align
Sub getTextAlign As String
    Return sTextAlign
End Sub
'get Text Margin
Sub getTextMargin As Int
    Return iTextMargin
End Sub
'get Text Position
Sub getTextPosition As String
    Return sTextPosition
End Sub
'get Width
Sub getWidth As Int
    Return iWidth
End Sub