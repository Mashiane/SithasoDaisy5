B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Values As String)
#Event: Slide (Values As String, Handle As Int)
#Event: Update (Values As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: SliderType, DisplayName: Slider Type, FieldType: String, DefaultValue: default, Description: Display type. default = bare slider, legend = wrapped in fieldset with label, List: default|legend
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: NoUISlider, Description: Legend label text shown when SliderType is legend
#DesignerProperty: Key: LegendColor, DisplayName: Legend Color, FieldType: String, DefaultValue: , Description: Color for the legend text. DaisyUI theme color e.g. primary, secondary, accent
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint text displayed below the slider when SliderType is legend
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-200, Description: Fieldset background color when SliderType is legend
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: Boolean, DefaultValue: True, Description: Show border around the fieldset when SliderType is legend
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: base-300, Description: Border color when SliderType is legend
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: True, Description: Use rounded corners on the fieldset when SliderType is legend
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow style for the fieldset when SliderType is legend, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: StartValues, DisplayName: Start Values, FieldType: String, DefaultValue: 20,80, Description: Comma-separated initial handle positions. Single value e.g. 50 for one handle, two values e.g. 20,80 for dual handle range
#DesignerProperty: Key: RangeMin, DisplayName: Range Min, FieldType: String, DefaultValue: 0, Description: Minimum value of the slider scale. Ignored when Range (JSON) is set
#DesignerProperty: Key: RangeMax, DisplayName: Range Max, FieldType: String, DefaultValue: 100, Description: Maximum value of the slider scale. Ignored when Range (JSON) is set
#DesignerProperty: Key: StepValue, DisplayName: StepValue, FieldType: String, DefaultValue: 1, Description: Minimum step between values. Set e.g. 5 to snap to 0,5,10,15...
#DesignerProperty: Key: Connect, DisplayName: Connect, FieldType: String, DefaultValue: true, Description: Show colored bar between handles. true = filled between, false = handles only, or JSON array e.g. [true,false,true]
#DesignerProperty: Key: Margin, DisplayName: Margin, FieldType: String, DefaultValue: 0, Description: Minimum distance between two handles. Set 0 to disable. E.g. 20 means handles must be at least 20 apart
#DesignerProperty: Key: Limit, DisplayName: Limit, FieldType: String, DefaultValue: 0, Description: Maximum distance between two handles. Set 0 to disable. E.g. 40 means handles can be at most 40 apart
#DesignerProperty: Key: Padding, DisplayName: Padding, FieldType: String, DefaultValue: , Description: Prevents handles from reaching edges. Single number e.g. 10 or comma-separated left,right e.g. 10,5
#DesignerProperty: Key: Tooltips, DisplayName: Tooltips, FieldType: Boolean, DefaultValue: False, Description: Show value tooltips above handles. Customize appearance with TooltipColor
#DesignerProperty: Key: PipsMode, DisplayName: Pips Mode, FieldType: String, DefaultValue: , Description: Pips display mode. range = at min/max, steps = at step intervals, positions = at percentage positions, count = N evenly spaced, values = at specific values, List: |range|steps|positions|count|values
#DesignerProperty: Key: PipsValues, DisplayName: Pips Values, FieldType: String, DefaultValue: , Description: Pips values. For mode=count a number e.g. 5. For mode=values a comma list e.g. 0,25,50,75,100. For mode=positions a comma list of percentages e.g. 0,25,50,75,100
#DesignerProperty: Key: PipsDensity, DisplayName: Pips Density, FieldType: String, DefaultValue: , Description: Pips density. Number of sub-divisions between pips. E.g. 5 or 20. Leave blank for default
#DesignerProperty: Key: PipsStepped, DisplayName: Pips Stepped, FieldType: Boolean, DefaultValue: False, Description: When True, aligns pips to step values. Useful with mode=range or mode=steps
#DesignerProperty: Key: ClickablePips, DisplayName: Clickable Pips, FieldType: Boolean, DefaultValue: False, Description: When True, clicking a pip label or marker sets the handle to that value
#DesignerProperty: Key: Snap, DisplayName: Snap, FieldType: Boolean, DefaultValue: False, Description: Snap handles to values defined in the range
#DesignerProperty: Key: FormatterPrefix, DisplayName: Formatter Prefix, FieldType: String, DefaultValue: , Description: Text before the value in tooltips. E.g. $ or USD
#DesignerProperty: Key: FormatterSuffix, DisplayName: Formatter Suffix, FieldType: String, DefaultValue: , Description: Text after the value in tooltips. E.g. % or �
#DesignerProperty: Key: FormatterDecimals, DisplayName: Formatter Decimals, FieldType: Int, DefaultValue: 0, Description: Number of decimal places shown in tooltips. E.g. 2 for currency
#DesignerProperty: Key: FormatterThousand, DisplayName: Formatter Thousand, FieldType: String, DefaultValue: , Description: Thousands separator in tooltips. E.g. , for 1,000 or . for 1.000
#DesignerProperty: Key: FormatterMark, DisplayName: Formatter Mark, FieldType: String, DefaultValue: ., Description: Decimal separator in tooltips. E.g. . for 1.50 or , for 1,50
#DesignerProperty: Key: FormatterNegative, DisplayName: Formatter Negative, FieldType: String, DefaultValue: , Description: Symbol for negative values. E.g. ( for accounting format (250) instead of -250. Requires wNumb
#DesignerProperty: Key: FormatterNegativeBefore, DisplayName: Formatter Negative Before, FieldType: String, DefaultValue: , Description: Text before prefix for negative values. E.g. − for −$250. Requires wNumb
#DesignerProperty: Key: FormatterEncoder, DisplayName: Formatter Encoder, FieldType: String, DefaultValue: , Description: JS function name to encode display values. E.g. MyApp.toEur for currency conversion. Dot-notation supported. Requires wNumb
#DesignerProperty: Key: FormatterDecoder, DisplayName: Formatter Decoder, FieldType: String, DefaultValue: , Description: JS function name to decode user input back to raw values. Paired with Encoder. Requires wNumb
#DesignerProperty: Key: FormatterEdit, DisplayName: Formatter Edit, FieldType: String, DefaultValue: , Description: JS function name to format value when input is focused for editing. Requires wNumb
#DesignerProperty: Key: FormatterUndo, DisplayName: Formatter Undo, FieldType: String, DefaultValue: , Description: JS function name to restore formatted value when input loses focus. Paired with Edit. Requires wNumb
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Slider track and handle color. Matches DaisyUI theme colors, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Slider handle and track thickness, List: xs|sm|md|lg|xl|none
#DesignerProperty: Key: TooltipColor, DisplayName: Tooltip Color, FieldType: String, DefaultValue: none, Description: Tooltip background color. none = neutral, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=4; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A(all)-X(LR)-Y(TB)-T-B-L-R
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
	Private sPaddingAXYTBLR As String = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private bEnabled As Boolean = True	'ignore
	Public Tag As Object
	Private sStartValues As String = "20,80"
	Private sRangeMin As String = "0"
	Private sRangeMax As String = "100"
	Private sStepValue As String = "1"
	Private sConnect As String = "true"
	Private sMargin As String = "0"
	Private sLimit As String = "0"
	Private sPadding As String = ""
	Private bTooltips As Boolean = False
	Private sPipsMode As String = ""
	Private sPipsValues As String = ""
	Private sPipsDensity As String = ""
	Private bPipsStepped As Boolean = False
	Private bClickablePips As Boolean = False
	Private bSnap As Boolean = False
	Private sFormatterPrefix As String = ""
	Private sFormatterSuffix As String = ""
	Private iFormatterDecimals As Int = 0
	Private sFormatterThousand As String = ""
	Private sFormatterMark As String = "."
	Private sFormatterNegative As String = ""
	Private sFormatterNegativeBefore As String = ""
	Private sFormatterEncoder As String = ""
	Private sFormatterDecoder As String = ""
	Private sFormatterEdit As String = ""
	Private sFormatterUndo As String = ""
	Private sColor As String = "primary"
	Private sSize As String = "md"
	Private sTooltipColor As String = "none"
	Private sWidth As String = "full"
	Private sHeight As String = ""
	Private sSliderType As String = "default"
	Private sLabel As String = "NoUISlider"
	Private sLegendColor As String = ""
	Private sHint As String = ""
	Private sBackgroundColor As String = "base-200"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private bRoundedBox As Boolean = True
	Private sShadow As String = "none"
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	BANano.DependsOnAsset("nouislider.min.css")
	BANano.DependsOnAsset("nouislider.min.js")
	BANano.DependsOnAsset("wNumb.min.js")
	BANano.DependsOnAsset("SithasoNoUISlider.min.css")
	BANano.DependsOnAsset("SithasoNoUISlider.min.js")
	
	If BANano.AssetsIsDefined("NoUISlider") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesNoUISlider)' should be added for '${Name}'"$)
		Return
	End If
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
	CustProps.Put("SliderType", "default")
	CustProps.Put("Label", "NoUISlider")
	CustProps.Put("LegendColor", "")
	CustProps.Put("Hint", "")
	CustProps.Put("BackgroundColor", "base-200")
	CustProps.Put("Border", True)
	CustProps.Put("BorderColor", "base-300")
	CustProps.Put("RoundedBox", True)
	CustProps.Put("Shadow", "none")
	CustProps.Put("StartValues", "20,80")
	CustProps.Put("RangeMin", "0")
	CustProps.Put("RangeMax", "100")
	CustProps.Put("StepValue", "1")
	CustProps.Put("Connect", "true")
	CustProps.Put("Margin", "0")
	CustProps.Put("Limit", "0")
	CustProps.Put("Padding", "")
	CustProps.Put("Tooltips", False)
	CustProps.Put("PipsMode", "")
	CustProps.Put("PipsValues", "")
	CustProps.Put("PipsDensity", "")
	CustProps.Put("PipsStepped", False)
	CustProps.Put("ClickablePips", False)
	CustProps.Put("Snap", False)
	CustProps.Put("FormatterPrefix", "")
	CustProps.Put("FormatterSuffix", "")
	CustProps.Put("FormatterDecimals", 0)
	CustProps.Put("FormatterThousand", "")
	CustProps.Put("FormatterMark", ".")
	CustProps.Put("FormatterNegative", "")
	CustProps.Put("FormatterNegativeBefore", "")
	CustProps.Put("FormatterEncoder", "")
	CustProps.Put("FormatterDecoder", "")
	CustProps.Put("FormatterEdit", "")
	CustProps.Put("FormatterUndo", "")
	CustProps.Put("Color", "primary")
	CustProps.Put("Size", "md")
	CustProps.Put("TooltipColor", "none")
	CustProps.Put("Width", "full")
	CustProps.Put("Height", "")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=4; x=?; y=?; t=?; b=?; l=?; r=?")
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
	Select Case sSliderType
	Case "legend"
		UI.SetVisibleByID($"${mName}_control"$, b)
	Case Else
		UI.SetVisible(mElement, b)
	End Select
End Sub

'get Visible
Sub getVisible As Boolean
	bVisible = UI.GetVisible(mElement)
	Return bVisible
End Sub

'set Enabled
Sub setEnabled(b As Boolean) 'ignoredeadcode
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement = Null Then Return
	If b Then
		mElement.RunMethod("enableSlider", Null)
	Else
		mElement.RunMethod("disableSlider", Null)
	End If
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

Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub

Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub

Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub

Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub

Sub getAttributes As String
	Return sRawAttributes
End Sub

Sub getStyles As String
	Return sRawStyles
End Sub

Sub getClasses As String
	Return sRawClasses
End Sub

Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub

Sub getMarginAXYTBLR As String
	Return sMarginAXYTBLR
End Sub

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		sSliderType = Props.GetDefault("SliderType", "default")
		sSliderType = UI.CStr(sSliderType)
		sLabel = Props.GetDefault("Label", "NoUISlider")
		sLabel = UI.CStr(sLabel)
		sLegendColor = Props.GetDefault("LegendColor", "")
		sLegendColor = UI.CStr(sLegendColor)
		sHint = Props.GetDefault("Hint", "")
		sHint = UI.CStr(sHint)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		bBorder = Props.GetDefault("Border", True)
		bBorder = UI.CBool(bBorder)
		sBorderColor = Props.GetDefault("BorderColor", "base-300")
		sBorderColor = UI.CStr(sBorderColor)
		bRoundedBox = Props.GetDefault("RoundedBox", True)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sStartValues = Props.GetDefault("StartValues", "20,80")
		sStartValues = UI.CStr(sStartValues)
		sRangeMin = Props.GetDefault("RangeMin", "0")
		sRangeMin = UI.CStr(sRangeMin)
		sRangeMax = Props.GetDefault("RangeMax", "100")
		sRangeMax = UI.CStr(sRangeMax)
		sStepValue = Props.GetDefault("StepValue", "1")
		sStepValue = UI.CStr(sStepValue)
		sConnect = Props.GetDefault("Connect", "true")
		sConnect = UI.CStr(sConnect)
		sMargin = Props.GetDefault("Margin", "0")
		sMargin = UI.CStr(sMargin)
		sLimit = Props.GetDefault("Limit", "0")
		sLimit = UI.CStr(sLimit)
		sPadding = Props.GetDefault("Padding", "")
		sPadding = UI.CStr(sPadding)
		bTooltips = Props.GetDefault("Tooltips", False)
		bTooltips = UI.CBool(bTooltips)
		sPipsMode = Props.GetDefault("PipsMode", "")
		sPipsMode = UI.CStr(sPipsMode)
		sPipsValues = Props.GetDefault("PipsValues", "")
		sPipsValues = UI.CStr(sPipsValues)
		sPipsDensity = Props.GetDefault("PipsDensity", "")
		sPipsDensity = UI.CStr(sPipsDensity)
		bPipsStepped = Props.GetDefault("PipsStepped", False)
		bPipsStepped = UI.CBool(bPipsStepped)
		bClickablePips = Props.GetDefault("ClickablePips", False)
		bClickablePips = UI.CBool(bClickablePips)
		bSnap = Props.GetDefault("Snap", False)
		bSnap = UI.CBool(bSnap)
		sFormatterPrefix = Props.GetDefault("FormatterPrefix", "")
		sFormatterPrefix = UI.CStr(sFormatterPrefix)
		sFormatterSuffix = Props.GetDefault("FormatterSuffix", "")
		sFormatterSuffix = UI.CStr(sFormatterSuffix)
		iFormatterDecimals = Props.GetDefault("FormatterDecimals", 0)
		iFormatterDecimals = UI.CInt(iFormatterDecimals)
		sFormatterThousand = Props.GetDefault("FormatterThousand", "")
		sFormatterThousand = UI.CStr(sFormatterThousand)
		sFormatterMark = Props.GetDefault("FormatterMark", ".")
		sFormatterMark = UI.CStr(sFormatterMark)
		sFormatterNegative = Props.GetDefault("FormatterNegative", "")
		sFormatterNegative = UI.CStr(sFormatterNegative)
		sFormatterNegativeBefore = Props.GetDefault("FormatterNegativeBefore", "")
		sFormatterNegativeBefore = UI.CStr(sFormatterNegativeBefore)
		sFormatterEncoder = Props.GetDefault("FormatterEncoder", "")
		sFormatterEncoder = UI.CStr(sFormatterEncoder)
		sFormatterDecoder = Props.GetDefault("FormatterDecoder", "")
		sFormatterDecoder = UI.CStr(sFormatterDecoder)
		sFormatterEdit = Props.GetDefault("FormatterEdit", "")
		sFormatterEdit = UI.CStr(sFormatterEdit)
		sFormatterUndo = Props.GetDefault("FormatterUndo", "")
		sFormatterUndo = UI.CStr(sFormatterUndo)
		sColor = Props.GetDefault("Color", "primary")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sSize = Props.GetDefault("Size", "md")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = "md"
		sTooltipColor = Props.GetDefault("TooltipColor", "none")
		sTooltipColor = UI.CStr(sTooltipColor)
		If sTooltipColor = "none" Then sTooltipColor = ""
		sWidth = Props.GetDefault("Width", "full")
		sWidth = UI.CStr(sWidth)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
	End If
	'
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	'
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	'
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	'
	Select Case sSliderType
	Case "legend"
			mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="fieldset ${xclasses}" style="${xstyles}">
				<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
				<label id="${mName}_values" class="label flex justify-between" for="${mName}">
    				<span id="${mName}_value1"></span>
    				<span id="${mName}_value2"></span>
  				</label>
				<sithaso-nouislider id="${mName}" class="w-full"></sithaso-nouislider>
				<p id="${mName}_hint" class="fieldset-label hidden">${sHint}</p>
			</fieldset>"$).Get("#" & mName)
		setBackgroundColor(sBackgroundColor)
		setBorder(bBorder)
		setBorderColor(sBorderColor)
		setRoundedBox(bRoundedBox)
		setShadow(sShadow)
		setLegendColor(sLegendColor)
		setHint(sHint)
	Case Else
		mElement = mTarget.Append($"[BANCLEAN]<sithaso-nouislider id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></sithaso-nouislider>"$).Get("#" & mName)
	End Select
	
	setEnabled(bEnabled)
	setTooltipColor(sTooltipColor)
	setSize(sSize)
	setColor(sColor)
	setFormatterMark(sFormatterMark)
	setFormatterNegative(sFormatterNegative)
	setFormatterNegativeBefore(sFormatterNegativeBefore)
	setFormatterEncoder(sFormatterEncoder)
	setFormatterDecoder(sFormatterDecoder)
	setFormatterEdit(sFormatterEdit)
	setFormatterUndo(sFormatterUndo)
	setFormatterThousand(sFormatterThousand)
	setFormatterDecimals(iFormatterDecimals)
	setFormatterSuffix(sFormatterSuffix)
	setFormatterPrefix(sFormatterPrefix)
	setRangeMin(sRangeMin)
	setRangeMax(sRangeMax)
	setStepValue(sStepValue)
	setConnect(sConnect)
	setTooltips(bTooltips)
	setSnap(bSnap)
	setClickablePips(bClickablePips)
	setPipsMode(sPipsMode)
	setPipsValues(sPipsValues)
	setPipsDensity(sPipsDensity)
	setPipsStepped(bPipsStepped)
	setLimit(sLimit)
	setPadding(sPadding)
	setMargin(sMargin)
	' Add event listeners
	mElement.On("slidechange", Me, "ChangeEvent")
	mElement.On("slidedrag", Me, "SlideEvent")
	mElement.On("slideupdate", Me, "UpdateEvent")
	' Value spans are initialized by the slideupdate event that fires when
	' setStartValues triggers _rebuildSlider in the JS web component.
	' This ensures formatted values (e.g. "$500") are displayed immediately,
	' not raw numeric values (e.g. "500").
	setStartValues(sStartValues)
End Sub

'--- Property Setters/Getters ---

'<code>
''' Single handle: nos.setStartValues("50")
''' Dual handle range: nos.setStartValues("20,80")
''' Three handles: nos.setStartValues("10,50,90")
'''</code>
Sub setStartValues(s As String) 'ignoredeadcode
	sStartValues = s
	CustProps.Put("StartValues", s)
	If mElement = Null Then Return
	mElement.SetAttr("start", s)
End Sub

'get Start Values - returns comma-separated handle positions
Sub getStartValues As String
	Return sStartValues
End Sub

'set RangeMin - minimum value on the slider scale
Sub setRangeMin(s As String) 'ignoredeadcode
	sRangeMin = s
	CustProps.Put("RangeMin", s)
	If mElement = Null Then Return
	mElement.SetAttr("range-min", s)
End Sub

'get RangeMin
Sub getRangeMin As String
	Return sRangeMin
End Sub

'set RangeMax - maximum value on the slider scale
Sub setRangeMax(s As String) 'ignoredeadcode
	sRangeMax = s
	CustProps.Put("RangeMax", s)
	If mElement = Null Then Return
	mElement.SetAttr("range-max", s)
End Sub

'get RangeMax
Sub getRangeMax As String
	Return sRangeMax
End Sub

'set Step - minimum step between values. E.g. "5" snaps to 0,5,10,15...
Sub setStepValue(s As String) 'ignoredeadcode
	sStepValue = s
	CustProps.Put("Step", s)
	If mElement = Null Then Return
	mElement.SetAttr("step", s)
End Sub

'get Step
Sub getStepValue As String
	Return sStepValue
End Sub

'set Connect - "true" fills bar between handles, "false" shows handles only
' Can also pass JSON array e.g. "[true,false,true]" for multi-handle configurations
Sub setConnect(s As String) 'ignoredeadcode
	sConnect = s
	CustProps.Put("Connect", s)
	If mElement = Null Then Return
	mElement.SetAttr("connect", s)
End Sub

'get Connect
Sub getConnect As String
	Return sConnect
End Sub

'set Margin - minimum enforced distance between two handles. 0 = no minimum
Sub setMargin(s As String) 'ignoredeadcode
	sMargin = s
	CustProps.Put("Margin", s)
	If mElement = Null Then Return
	mElement.SetAttr("margin", s)
End Sub

'get Margin
Sub getMargin As String
	Return sMargin
End Sub

'set Limit - maximum enforced distance between two handles. 0 = no maximum
Sub setLimit(s As String) 'ignoredeadcode
	sLimit = s
	CustProps.Put("Limit", s)
	If mElement = Null Then Return
	mElement.SetAttr("limit", s)
End Sub

'get Limit
Sub getLimit As String
	Return sLimit
End Sub

'set Padding - prevents handles from reaching slider edges
' Single number e.g. "10" pads both sides by 10
' Two numbers e.g. "10,5" pads left by 10 and right by 5
Sub setPadding(s As String) 'ignoredeadcode
	sPadding = s
	CustProps.Put("Padding", s)
	If mElement = Null Then Return
	mElement.SetAttr("padding", s)
End Sub

'get Padding
Sub getPadding As String
	Return sPadding
End Sub

'set Tooltips - show value labels above handles when dragging
Sub setTooltips(b As Boolean) 'ignoredeadcode
	bTooltips = b
	CustProps.Put("Tooltips", b)
	If mElement = Null Then Return
	mElement.SetAttr("tooltips", b)
End Sub

'get Tooltips
Sub getTooltips As Boolean
	Return bTooltips
End Sub

'set Pips Mode - range, steps, positions, count, values
Sub setPipsMode(s As String) 'ignoredeadcode
	sPipsMode = s
	CustProps.Put("PipsMode", s)
	If mElement = Null Then Return
	BuildPips
End Sub

'get Pips Mode
Sub getPipsMode As String
	Return sPipsMode
End Sub

'set Pips Values - comma list e.g. 0,25,50,75,100 or number for count mode e.g. 5
Sub setPipsValues(s As String) 'ignoredeadcode
	sPipsValues = s
	CustProps.Put("PipsValues", s)
	If mElement = Null Then Return
	BuildPips
End Sub

'get Pips Values
Sub getPipsValues As String
	Return sPipsValues
End Sub

'set Pips Density - number of sub-divisions between pips e.g. 5 or 20
Sub setPipsDensity(s As String) 'ignoredeadcode
	sPipsDensity = s
	CustProps.Put("PipsDensity", s)
	If mElement = Null Then Return
	BuildPips
End Sub

'get Pips Density
Sub getPipsDensity As String
	Return sPipsDensity
End Sub

'set Pips Stepped - when True, aligns pips to step values
Sub setPipsStepped(b As Boolean) 'ignoredeadcode
	bPipsStepped = b
	CustProps.Put("PipsStepped", b)
	If mElement = Null Then Return
	BuildPips
End Sub

'get Pips Stepped
Sub getPipsStepped As Boolean
	Return bPipsStepped
End Sub

'Build the pips JSON from individual properties and set the pips attribute
Private Sub BuildPips
	mElement.RemoveAttr("pips")
	If sPipsValues = "" Then Return
	Dim pm As Map = CreateMap()
	If sPipsMode <> "" Then pm.Put("mode", sPipsMode)
	If sPipsValues <> "" Then
		'For mode=count, values must be a number (e.g. 5), not an array
		If sPipsMode = "count" Then
			pm.Put("values", UI.CInt(sPipsValues))
		Else
			Dim pvalues As List = UI.StrParse(",", sPipsValues)
			'Convert string values to numbers for proper JSON serialization
			Dim numValues As List
			numValues.Initialize
			For Each v As String In pvalues
				numValues.Add(UI.CDbl(v))
			Next
			pm.Put("values", numValues)
		End If
	End If
	If sPipsDensity <> "" Then pm.Put("density", UI.CInt(sPipsDensity))
	If bPipsStepped Then pm.Put("stepped", bPipsStepped)
	Dim spips As String = BANano.ToJson(pm)
	mElement.SetAttr("pips", spips)
End Sub

'set Clickable Pips - when True, clicking a pip label/marker sets the handle to that value
Sub setClickablePips(b As Boolean) 'ignoredeadcode
	bClickablePips = b
	CustProps.Put("ClickablePips", b)
	If mElement = Null Then Return
	mElement.SetAttr("clickable-pips", b)
End Sub

'get Clickable Pips
Sub getClickablePips As Boolean
	Return bClickablePips
End Sub

'set Snap - when True, handles snap to values defined in the range
Sub setSnap(b As Boolean) 'ignoredeadcode
	bSnap = b
	CustProps.Put("Snap", b)
	If mElement = Null Then Return
	mElement.SetAttr("snap", b)
End Sub

'get Snap
Sub getSnap As Boolean
	Return bSnap
End Sub

'set Formatter Prefix - text before the value in tooltips. E.g. "$" or "USD "
Sub setFormatterPrefix(s As String) 'ignoredeadcode
	sFormatterPrefix = s
	CustProps.Put("FormatterPrefix", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-prefix", s)
End Sub

'get Formatter Prefix
Sub getFormatterPrefix As String
	Return sFormatterPrefix
End Sub

'set Formatter Suffix - text after the value in tooltips. E.g. " %" or " �"
Sub setFormatterSuffix(s As String) 'ignoredeadcode
	sFormatterSuffix = s
	CustProps.Put("FormatterSuffix", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-suffix", s)
End Sub

'get Formatter Suffix
Sub getFormatterSuffix As String
	Return sFormatterSuffix
End Sub

'set Formatter Decimals - number of decimal places in tooltips. E.g. 2 for $1,234.56
Sub setFormatterDecimals(i As Int) 'ignoredeadcode
	iFormatterDecimals = i
	CustProps.Put("FormatterDecimals", i)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-decimals", i)
End Sub

'get Formatter Decimals
Sub getFormatterDecimals As Int
	Return iFormatterDecimals
End Sub

'set Formatter Thousand - thousands separator. E.g. "," for 1,000 or "." for 1.000
Sub setFormatterThousand(s As String) 'ignoredeadcode
	sFormatterThousand = s
	CustProps.Put("FormatterThousand", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-thousand", s)
End Sub

'get Formatter Thousand
Sub getFormatterThousand As String
	Return sFormatterThousand
End Sub

'set Formatter Mark - decimal separator. E.g. "." for 1.50 or "," for 1,50
Sub setFormatterMark(s As String) 'ignoredeadcode
	sFormatterMark = s
	CustProps.Put("FormatterMark", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-mark", s)
End Sub

'get Formatter Mark
Sub getFormatterMark As String
	Return sFormatterMark
End Sub

'set Formatter Negative - symbol for negative values. E.g. ( for accounting format (250)
Sub setFormatterNegative(s As String) 'ignoredeadcode
	sFormatterNegative = s
	CustProps.Put("FormatterNegative", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-negative", s)
End Sub

'get Formatter Negative
Sub getFormatterNegative As String
	Return sFormatterNegative
End Sub

'set Formatter Negative Before - text before prefix for negative values. E.g. − for −$250
Sub setFormatterNegativeBefore(s As String) 'ignoredeadcode
	sFormatterNegativeBefore = s
	CustProps.Put("FormatterNegativeBefore", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-negative-before", s)
End Sub

'get Formatter Negative Before
Sub getFormatterNegativeBefore As String
	Return sFormatterNegativeBefore
End Sub

'set Formatter Encoder - JS function name to encode display values. E.g. MyApp.toEur
Sub setFormatterEncoder(s As String) 'ignoredeadcode
	sFormatterEncoder = s
	CustProps.Put("FormatterEncoder", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-encoder", s)
End Sub

'get Formatter Encoder
Sub getFormatterEncoder As String
	Return sFormatterEncoder
End Sub

'set Formatter Decoder - JS function name to decode user input back to raw values
Sub setFormatterDecoder(s As String) 'ignoredeadcode
	sFormatterDecoder = s
	CustProps.Put("FormatterDecoder", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-decoder", s)
End Sub

'get Formatter Decoder
Sub getFormatterDecoder As String
	Return sFormatterDecoder
End Sub

'set Formatter Edit - JS function name to format value when input is focused for editing
Sub setFormatterEdit(s As String) 'ignoredeadcode
	sFormatterEdit = s
	CustProps.Put("FormatterEdit", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-edit", s)
End Sub

'get Formatter Edit
Sub getFormatterEdit As String
	Return sFormatterEdit
End Sub

'set Formatter Undo - JS function name to restore formatted value when input loses focus
Sub setFormatterUndo(s As String) 'ignoredeadcode
	sFormatterUndo = s
	CustProps.Put("FormatterUndo", s)
	If mElement = Null Then Return
	mElement.SetAttr("formatter-undo", s)
End Sub

'get Formatter Undo
Sub getFormatterUndo As String
	Return sFormatterUndo
End Sub

'set Color - DaisyUI theme color for track and handle. none = default gray
Sub setColor(s As String) 'ignoredeadcode
	sColor = s
	CustProps.Put("Color", s)
	If mElement = Null Then Return
	mElement.SetAttr("color", s)
End Sub

'get Color
Sub getColor As String
	Return sColor
End Sub

'set Size - handle and track thickness. none defaults to md
Sub setSize(s As String) 'ignoredeadcode
	sSize = s
	CustProps.Put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	mElement.SetAttr("size", sSize)
End Sub

'get Size
Sub getSize As String
	Return sSize
End Sub

'set Tooltip Color - DaisyUI theme color for tooltip background. none uses neutral
Sub setTooltipColor(s As String) 'ignoredeadcode
	sTooltipColor = s
	CustProps.Put("TooltipColor", s)
	If mElement = Null Then Return
	mElement.SetAttr("tooltip-color", s)
End Sub

'get Tooltip Color
Sub getTooltipColor As String
	Return sTooltipColor
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.Put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then
		Select Case sSliderType
		Case "legend"
			UI.SetWidthByID($"${mName}_control"$, s)
		Case Else
			UI.SetWidth(mElement, s)
		End Select
	End If
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.Put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then
		Select Case sSliderType
		Case "legend"
			UI.SetHeightByID($"${mName}_control"$, s)
		Case Else
			UI.SetHeight(mElement, s)
		End Select
	End If
End Sub

'get Height
Sub getHeight As String
	Return sHeight
End Sub

'set NoUISlider Type - display style. default = bare slider, legend = fieldset with label
Sub setSliderType(s As String)
	sSliderType = s
	CustProps.Put("SliderType", s)
End Sub

'get NoUISlider Type
Sub getSliderType As String
	Return sSliderType
End Sub

'set Label - legend text shown when SliderType is legend
Sub setLabel(s As String)
	sLabel = s
	CustProps.Put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub

'get Label
Sub getLabel As String
	Return sLabel
End Sub

'set Legend Color - color for the legend text (DaisyUI theme color)
Sub setLegendColor(s As String)					'ignoredeadcode
	sLegendColor = s
	CustProps.Put("LegendColor", s)
	If mElement = Null Then Return
	UI.SetTextColorByID($"${mName}_legend"$, s)
End Sub

'get Legend Color
Sub getLegendColor As String
	Return sLegendColor
End Sub

'set Hint - text displayed below the slider when SliderType is legend
Sub setHint(s As String)
	sHint = s
	CustProps.Put("Hint", s)
	If mElement = Null Then Return
	UI.SetHTMLByID($"${mName}_hint"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_hint"$, False)
	Else
		UI.SetVisibleByID($"${mName}_hint"$, True)
	End If
End Sub

'get Hint
Sub getHint As String
	Return sHint
End Sub

'show an error hint in error color
Sub HintError(s As String)			'ignoredeadcode
	If mElement = Null Then Return
	UI.SetHTMLByID($"${mName}_hint"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_hint"$, False)
		UI.SetTextColorByID($"${mName}_hint"$, "base-content")
	Else
		UI.SetVisibleByID($"${mName}_hint"$, True)
		UI.SetTextColorByID($"${mName}_hint"$, "error")
	End If
End Sub

'set Background Color - fieldset background when SliderType is legend
Sub setBackgroundColor(s As String)			'ignoredeadcode
	sBackgroundColor = s
	CustProps.Put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_control"$, s)
End Sub

'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub

'set Border - show border on fieldset when SliderType is legend
Sub setBorder(b As Boolean)				'ignoredeadcode
	bBorder = b
	CustProps.Put("Border", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_control"$, "border")
	Else
		UI.RemoveClassByID($"${mName}_control"$, "border")
	End If
End Sub

'get Border
Sub getBorder As Boolean
	Return bBorder
End Sub

'set Border Color - fieldset border color when SliderType is legend
Sub setBorderColor(s As String)			'ignoredeadcode
	sBorderColor = s
	CustProps.Put("BorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBorderColorByID($"${mName}_control"$, s)
End Sub

'get Border Color
Sub getBorderColor As String
	Return sBorderColor
End Sub

'set Rounded Box - rounded corners on fieldset when SliderType is legend
Sub setRoundedBox(b As Boolean)			'ignoredeadcode
	bRoundedBox = b
	CustProps.Put("RoundedBox", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_control"$, "rounded-box")
	Else
		UI.RemoveClassByID($"${mName}_control"$, "rounded-box")
	End If
End Sub

'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub

'set Shadow - shadow style on fieldset when SliderType is legend
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)					'ignoredeadcode
	sShadow = s
	CustProps.Put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadowByID($"${mName}_control"$, s)
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'--- API Methods ---

'Get the current slider values as a comma-separated string
'When a formatter is active, returns formatted strings (e.g., "$500,$3,000")
'When no formatter, returns raw numeric strings (e.g., "500,3000")
''' Example: Dim vals As String = nos.GetValues  ' returns "20.00,80.00" or "$20.00,$80.00"
Public Sub GetValues As String
	If mElement = Null Then Return ""
	Dim values As Object = mElement.RunMethod("getValues", Null).Result
	Return UI.CStr(values)
End Sub

'Get the current slider values as raw numeric strings, stripping any formatting
'Always returns unformatted numeric values regardless of formatter settings
'Useful when you need numeric values for calculations but the slider has a formatter
''' Example: Dim rawVals As String = nos.GetRawValues  ' always returns "500,3000" even with $ formatter
Public Sub GetRawValues As String
	If mElement = Null Then Return ""
	Dim rawVals As Object = mElement.RunMethod("getRawValues", Null).Result
	Return UI.CStr(rawVals)
End Sub

'Set the slider values. Pass comma-separated string for multi-handle or single number
''' Example: nos.SetValues("30,70")  ' dual handle
''' Example: nos.SetValues("50")     ' single handle
Public Sub SetValues(sValues As String)
	If mElement = Null Then Return
	mElement.RunMethod("setValues", Array(sValues))
End Sub

'Set a specific handle to a value. Handle 0 = left, Handle 1 = right
''' Example: nos.SetHandle(0, 25.0)  ' set left handle to 25
Public Sub SetHandle(iHandle As Int, dValue As Double)
	If mElement = Null Then Return
	mElement.RunMethod("setHandle", Array(iHandle, dValue))
End Sub

'Reset the slider back to its initial StartValues
Public Sub Reset
	If mElement = Null Then Return
	mElement.RunMethod("reset", Null)
End Sub

'Disable the slider (grays it out, prevents interaction)
Public Sub DisableSlider
	If mElement = Null Then Return
	mElement.RunMethod("disableSlider", Null)
	bEnabled = False
	CustProps.Put("Enabled", False)
End Sub

'Enable a previously disabled slider
Public Sub EnableSlider
	If mElement = Null Then Return
	mElement.RunMethod("enableSlider", Null)
	bEnabled = True
	CustProps.Put("Enabled", True)
End Sub

'Increment all handle values by the given number of steps
''' Example: nos.StepUp(1)  ' moves each handle forward by one step
Public Sub StepUp(iSteps As Int)
	If mElement = Null Then Return
	mElement.RunMethod("stepUp", Array(iSteps))
End Sub

'Decrement all handle values by the given number of steps
''' Example: nos.StepDown(2)  ' moves each handle backward by two steps
Public Sub StepDown(iSteps As Int)
	If mElement = Null Then Return
	mElement.RunMethod("stepDown", Array(iSteps))
End Sub

'Update slider options at runtime without rebuilding. Pass JSON string
''' Example: nos.UpdateOptions("{""range"":{""min"":0,""max"":200}}")
Public Sub UpdateOptions(sOptions As String)
	If mElement = Null Then Return
	mElement.RunMethod("updateOptions", Array(sOptions))
End Sub

'Rebuild the slider completely. Use after changing multiple attributes at once
Public Sub Rebuild
	If mElement = Null Then Return
	mElement.RunMethod("rebuild", Null)
End Sub

'Get handle positions as percentage strings
Public Sub GetPositions As String
	If mElement = Null Then Return ""
	Dim positions As Object = mElement.RunMethod("getPositions", Null).Result
	Return UI.CStr(positions)
End Sub

'Destroy the slider instance and clean up. Call before removing the element
Public Sub Destroy
	If mElement = Null Then Return
	mElement.RunMethod("destroy", Null)
End Sub

'--- Event Handlers ---

Private Sub ChangeEvent (e As BANanoEvent)			'ignoredeadcode
	Dim d As Object = e.Detail
	Dim m As Map = d
	Dim values As Object = m.Get("values")
	Dim sValues As String = UI.CStr(values)
	Dim formatted As Object = m.Get("formatted")
	UpdateValueSpans(values, formatted)
	If SubExists(mCallBack, mEventName & "_change") Then
		CallSub2(mCallBack, mEventName & "_change", sValues)
	End If
End Sub

Private Sub SlideEvent (e As BANanoEvent)			'ignoredeadcode
	Dim d As Object = e.Detail
	Dim m As Map = d
	Dim values As Object = m.Get("values")
	Dim sValues As String = UI.CStr(values)
	Dim iHandle As Int = UI.CInt(m.Get("handle"))
	Dim formatted As Object = m.Get("formatted")
	UpdateValueSpans(values, formatted)
	If SubExists(mCallBack, mEventName & "_slide") Then
		CallSub3(mCallBack, mEventName & "_slide", sValues, iHandle)
	End If
End Sub

Private Sub UpdateEvent (e As BANanoEvent)			'ignoredeadcode
	Dim d As Object = e.Detail
	Dim m As Map = d
	Dim values As Object = m.Get("values")
	Dim sValues As String = UI.CStr(values)
	Dim formatted As Object = m.Get("formatted")
	UpdateValueSpans(values, formatted)
	If SubExists(mCallBack, mEventName & "_update") Then
		CallSub2(mCallBack, mEventName & "_update", sValues)
	End If
End Sub

'Update the value1 and value2 span elements using formatted values from the web component
'When a formatter is active, the web component provides pre-formatted strings via the 'formatted' event property
'When no formatter is active, raw numeric values are displayed as-is
Private Sub UpdateValueSpans(values As Object, formatted As Object)
	Dim sValues As String = UI.CStr(values)
	Dim hasFormatted As Boolean = (formatted <> Null)
	' Parse comma-separated raw values (safe because raw values are numeric)
	Dim arrValues As List
	If sValues.Contains(",") Then
		arrValues = Regex.Split(",", sValues)
	Else
		arrValues.Initialize2(Array As String(sValues))
	End If
	' Build formatted array - use formatted list directly from JS (avoids comma-in-value bug)
	Dim arrFormatted As List
	If hasFormatted Then
		Try
			arrFormatted = formatted
		Catch
			arrFormatted = arrValues
		End Try
		If arrFormatted = Null Or arrFormatted.IsInitialized = False Then arrFormatted = arrValues
	Else
		arrFormatted = arrValues
	End If
	' Update value spans
	If arrValues.Size >= 2 Then
		Dim el1 As BANanoElement = BANano.GetElement("#" & mName & "_value1")
		Dim el2 As BANanoElement = BANano.GetElement("#" & mName & "_value2")
		If arrFormatted.Size >= 2 Then
			If el1.Length > 0 Then el1.SetText(UI.CStr(arrFormatted.Get(0)))
			If el2.Length > 0 Then el2.SetText(UI.CStr(arrFormatted.Get(1)))
		Else
			If el1.Length > 0 Then el1.SetText(UI.CStr(arrValues.Get(0)))
			If el2.Length > 0 Then el2.SetText(UI.CStr(arrValues.Get(1)))
		End If
	Else If arrValues.Size = 1 Then
		Dim el1 As BANanoElement = BANano.GetElement("#" & mName & "_value1")
		If el1.Length > 0 Then
			If arrFormatted.Size >= 1 Then
				el1.SetText(UI.CStr(arrFormatted.Get(0)))
			Else
				el1.SetText(UI.CStr(arrValues.Get(0)))
			End If
		End If
	End If
End Sub