B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Value As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: RangeType, DisplayName: Range Type, FieldType: String, DefaultValue: normal, Description: Range Type, List: legend|normal|tooltip
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Range, Description: Label
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 10, Description: Value
#DesignerProperty: Key: MinValue, DisplayName: Min Value, FieldType: String, DefaultValue: 0, Description: Min Value
#DesignerProperty: Key: StepValue, DisplayName: Step Value, FieldType: String, DefaultValue: 1, Description: Step Value
#DesignerProperty: Key: MaxValue, DisplayName: Max Value, FieldType: String, DefaultValue: 100, Description: Max Value
#DesignerProperty: Key: Measure, DisplayName: Measure, FieldType: Boolean, DefaultValue: False, Description: Measure
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: ThumbColor, DisplayName: Thumb Color, FieldType: String, DefaultValue: , Description: Thumb Color
#DesignerProperty: Key: RangeBackgroundColor, DisplayName: Range Background Color, FieldType: String, DefaultValue: , Description: Range Background Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-200, Description: Background Color
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: Boolean, DefaultValue: True, Description: Border
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: base-300, Description: Border Color
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
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
	Private sRangeBackgroundColor As String = ""
	Private sColor As String = "none"
	Private sHint As String = ""
	Private sLabel As String = ""
	Private sMaxValue As String = "100"
	Private bMeasure As Boolean = False
	Private sMinValue As String = "0"
	Private sSize As String = "none"
	Private sStepValue As String = "1"
	Private sTextColor As String = ""
	Private sThumbColor As String = ""
	Private sValue As String = "10"
	Private sRangeType As String = "normal"
	Private sHeight As String = ""
	Private sWidth As String = "full"
	Private sBackgroundColor As String = "base-200"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private bRoundedBox As Boolean = False
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
	Select Case sRangeType
	Case "normal"
		UI.SetVisible(mElement, b)
	Case Else
		UI.SetVisibleByID($"${mName}_control"$, b)
	End Select
End Sub
'get Visible
Sub getVisible As Boolean
	bVisible = UI.GetVisible(mElement)
	Return bVisible
End Sub
'set Enabled
Sub setEnabled(b As Boolean)			'ignoredeadcode
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
		UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sRangeBackgroundColor = Props.GetDefault("RangeBackgroundColor", "")
		sRangeBackgroundColor = modSD5.CStr(sRangeBackgroundColor)
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sHint = Props.GetDefault("Hint", "")
		sHint = modSD5.CStr(sHint)
		sLabel = Props.GetDefault("Label", "")
		sLabel = modSD5.CStr(sLabel)
		sMaxValue = Props.GetDefault("MaxValue", "100")
		sMaxValue = modSD5.CStr(sMaxValue)
		bMeasure = Props.GetDefault("Measure", False)
		bMeasure = modSD5.CBool(bMeasure)
		sMinValue = Props.GetDefault("MinValue", "0")
		sMinValue = modSD5.CStr(sMinValue)
		sSize = Props.GetDefault("Size", "none")
		sSize = modSD5.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sStepValue = Props.GetDefault("StepValue", "1")
		sStepValue = modSD5.CStr(sStepValue)
		sTextColor = Props.GetDefault("TextColor", "")
		sTextColor = modSD5.CStr(sTextColor)
		sThumbColor = Props.GetDefault("ThumbColor", "")
		sThumbColor = modSD5.CStr(sThumbColor)
		sValue = Props.GetDefault("Value", "10")
		sValue = modSD5.CStr(sValue)
		sRangeType = Props.GetDefault("RangeType", "normal")
		sRangeType = modSD5.CStr(sRangeType)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = modSD5.CStr(sWidth)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
		sBackgroundColor = modSD5.CStr(sBackgroundColor)
		bBorder = Props.GetDefault("Border", True)
		bBorder = modSD5.CBool(bBorder)
		sBorderColor = Props.GetDefault("BorderColor", "base-300")
		sBorderColor = modSD5.CStr(sBorderColor)
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = modSD5.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
	End If
	'
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
	'
	Select Case sRangeType
	Case "legend"	
'		mElement = mTarget.Append($"[BANCLEAN]
'			<fieldset id="${mName}_control" class="-mt-8 ${xclasses} fieldset" ${xattrs} style="${xstyles}">
'  				<legend id="${mName}_legend" class="relative top-6 fieldset-legend">${sLabel}</legend>
'				<div id="${mName}_label" class="flex text-xs opacity-50 justify-between">
'  					<span id="${mName}_startlabel"></span>
'					<span id="${mName}_endlabel">${iValue}</span>
'				</div>
'  				<input id="${mName}" class="relative range w-full" type="range"></input>
'				<div id="${mName}_startend" class="flex text-xs opacity-50 justify-between">
'  					<span id="${mName}_start">${iMinValue}</span>
'					<span id="${mName}_end">${iMaxValue}</span>
'				</div>
'				<label id="${mName}_hint" class="fieldset-label">${sHint}</label>
'			</fieldset>"$).Get("#" & mName)
'			setBackgroundColor(sBackgroundColor)
'			setBorder(bBorder)
'			setBorderColor(sBorderColor)
'			setRoundedBox(bRoundedBox)
'			setShadow(sShadow)
			mElement = mTarget.Append($"[BANCLEAN]
				<fieldset id="${mName}_control" class="${xclasses} fieldset" ${xattrs} style="${xstyles}">
	        		<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
					<div id="${mName}_tooltip" class="tooltip" data-tip="${sValue}">
						<input id="${mName}" step="${sStepValue}" max="${sMaxValue}" min="${sMinValue}" value="${sValue}" class="range join-item w-full" type="range"></input>
					</div>
	        		<p id="${mName}_hint" class="fieldset-label hide">${sHint}</p>
	      		</fieldset>"$).Get("#" & mName)
			setBackgroundColor(sBackgroundColor)
			setBorder(bBorder)
			setBorderColor(sBorderColor)
			setRoundedBox(bRoundedBox)
			setShadow(sShadow)
	Case "tooltip"
			mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
        		<div class="relative mt-6">
            		<div id="${mName}_tooltip" class="absolute tooltip top-2 tooltip-open before:text-xs" style="inset-inline-start:${sValue}%" data-tip="${sValue}"></div>
					<input id="${mName}" class="range w-full" type="range" value="${sValue}" step="${sStepValue}" min="${sMinValue}" max="${sMaxValue}"></input>
        		</div>
        		<div id="${mName}_startend" class="flex text-xs opacity-50 justify-between">
					<span id="${mName}_start">${sMinValue}</span>
					<span id="${mName}_end">${sMaxValue}</span>
				</div>
    		</div>"$).Get("#" & mName)
	Case "normal"
			mElement = mTarget.Append($"[BANCLEAN]
			<input id="${mName}" type="range" class="${xclasses} range" ${xattrs} style="${xstyles}" value="${sValue}" step="${sStepValue}" min="${sMinValue}" max="${sMaxValue}"></input>"$).Get("#" & mName)
		setWidth(sWidth)
	End Select
	
	If sColor <> "" Then setColor(sColor)
	setEnabled(bEnabled)
	If sSize <> "" Then setSize(sSize)
	If sRangeBackgroundColor <> "" Then setRangeBackgroundColor(sRangeBackgroundColor)
	If sHeight <> "" Then setHeight(sHeight)
'	setVisible(bVisible)
	UI.OnEvent(mElement, "change", Me, "changed")
End Sub


'set Background Color
Sub setBackgroundColor(s As String)			'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_control"$, sBackgroundColor)
End Sub

'set Border
Sub setBorder(b As Boolean)				'ignoredeadcode
	bBorder = b
	CustProps.put("Border", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_control"$, "border")
	Else
		UI.RemoveClassByID($"${mName}_control"$, "border")
	End If
End Sub

'set Border Color
Sub setBorderColor(s As String)			'ignoredeadcode
	sBorderColor = s
	CustProps.put("BorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBorderColorByID($"${mName}_control"$, s)
End Sub

'set Rounded Box
Sub setRoundedBox(b As Boolean)			'ignoredeadcode
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_control"$, "rounded-box")
	Else
		UI.RemoveClassByID($"${mName}_control"$, "rounded-box")
	End If
End Sub

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)					'ignoredeadcode
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadowByID($"${mName}_control"$, s)
End Sub

'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Border
Sub getBorder As Boolean
	Return bBorder
End Sub
'get Border Color
Sub getBorderColor As String
	Return sBorderColor
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'set Width
Sub setWidth(s As String)			'ignoredeadcode
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub

Sub getWidth As String
	Return sWidth
End Sub

'set Height
Sub setHeight(s As String)			'ignoredeadcode
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, s)
End Sub

Sub getHeight As String
	Return sHeight
End Sub

'legend|normal|tooltip
Sub setRangeType(s As String)
	sRangeType = s
	CustProps.Put("RangeType", s)
End Sub

Sub getRangeType As String
	Return sRangeType
End Sub


private Sub changed(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault
	Dim cvalue As String = modSD5.CStr(mElement.getvalue)
	sValue = cvalue
	Select Case sRangeType
	Case "legend"
'		UI.SetTextByID($"${mName}_endlabel"$, iValue)
		UI.SetAttrByID($"${mName}_tooltip"$, "data-tip", sValue)
	Case "tooltip"
		UI.SetStyleByID($"${mName}_tooltip"$, "inset-inline-start", $"${cvalue}%"$)
		UI.SetAttrByID($"${mName}_tooltip"$, "data-tip", sValue)
	Case "normal"
	End Select
	BANano.CallSub(mCallBack, $"${mEventName}_change"$, Array(cvalue))
End Sub

'set End Value
Sub SetEndValue(s As String)
	CustProps.put("EndValue", s)
	If mElement = Null Then Return
	UI.SetTextByid($"${mName}_end"$, s)
End Sub

'set Show Start End
Sub SetShowStartEnd(b As Boolean)
	CustProps.put("ShowStartEnd", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_startend"$, b)
End Sub
'set Start Value
Sub SetStartValue(s As String)
	CustProps.put("StartValue", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_start"$, s)
End Sub
'set Tooltip
Sub SetTooltip(s As String)
	CustProps.put("Tooltip", s)
	If mElement = Null Then Return
	UI.SetAttrByID($"${mName}_tooltip"$, "data-tip", s)
End Sub
'set Tooltip Visible
Sub SetTooltipVisible(b As Boolean)
	CustProps.put("TooltipVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_tooltip"$, b)
End Sub

'set Background Color
Sub setRangeBackgroundColor(s As String)				'ignoredeadcode
	sRangeBackgroundColor = s
	CustProps.put("RangeBackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.AddStyle(mElement, "--range-shdw", s)
	End If
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)			'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "range", sColor)
End Sub
'set Hint
Sub setHint(s As String)
	sHint = s
	CustProps.put("Hint", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_hint"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_hint"$, False)
	Else
		UI.SetVisibleByID($"${mName}_hint"$, True)
	End If
End Sub
'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub
'set Max Value
Sub setMaxValue(s As String)			'ignoredeadcode
	sMaxValue = s
	CustProps.put("MaxValue", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "max", s)
	UI.SetTextByID($"${mName}_end"$, sMaxValue)
End Sub
'set Measure
Sub setMeasure(b As Boolean)
	bMeasure = b
	CustProps.put("Measure", b)
'	If mElement = Null Then Return
'	If b = True Then
'		UI.SetAttr(mElement, "measure", b)
'	Else
'		UI.RemoveAttr(mElement, "measure")
'	End If
End Sub
'set Min Value
Sub setMinValue(s As String)				'ignoredeadcode
	sMinValue = s
	CustProps.put("MinValue", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "min", s)
	UI.SetTextByID($"${mName}_end"$, sMaxValue)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)			'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "range", sSize)
End Sub
'set Step Value
Sub setStepValue(s As String)			'ignoredeadcode
	sStepValue = s
	CustProps.put("StepValue", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "step", s)
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
End Sub
'set Thumb Color
Sub setThumbColor(s As String)
	sThumbColor = s
	CustProps.put("ThumbColor", s)
	If mElement = Null Then Return
'	If s <> "" Then UI.AddClass(mElement, "thumb-color-" & s)
End Sub
'set Value
Sub setValue(s As String)				'ignoredeadcode
	sValue = s
	CustProps.put("Value", s)
	If mElement = Null Then Return
	mElement.SetValue(sValue)
	Select Case sRangeType
	Case "legend"
'		UI.SetTextByID($"${mName}_endlabel"$, iValue)
		UI.SetAttrByID($"${mName}_tooltip"$, "data-tip", sValue)
	Case "tooltip"
		UI.SetStyleByID($"${mName}_tooltip"$, "inset-inline-start", $"${sValue}%"$)
		UI.SetAttrByID($"${mName}_tooltip"$, "data-tip", sValue)
	Case "normal"
	End Select
End Sub
'get Range Background Color
Sub getRangeBackgroundColor As String
	Return sRangeBackgroundColor
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Hint
Sub getHint As String
	Return sHint
End Sub
'get Label
Sub getLabel As String
	Return sLabel
End Sub
'get Max Value
Sub getMaxValue As String
	Return sMaxValue
End Sub
'get Measure
Sub getMeasure As Boolean
	Return bMeasure
End Sub
'get Min Value
Sub getMinValue As String
	Return sMinValue
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Step Value
Sub getStepValue As String
	Return sStepValue
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Thumb Color
Sub getThumbColor As String
	Return sThumbColor
End Sub
'get Value
Sub getValue As String
	sValue = modSD5.Cstr(mElement.GetValue)
	Return sValue
End Sub

'run validation
Sub IsBlank As Boolean
	Dim v As String = getValue
	v = modSD5.CStr(v)
	v = v.Trim
	If v = "" Or v = "0" Then
		If sRangeType = "legend" Then
			setBorderColor("error")
		Else
			setColor("error")
		End If
		Return True
	End If
	If sRangeType = "legend" Then
		setBorderColor("success")
	Else
		setColor("success")
	End If
	Return False
End Sub

Sub ResetValidation
	Try
		If sRangeType = "legend" Then
			setBorderColor("success")
		Else
			setColor("success")
		End If
	Catch
		
	End Try		'ignore
End Sub