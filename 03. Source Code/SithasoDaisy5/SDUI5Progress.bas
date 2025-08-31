B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: ProgressType, DisplayName: Progress Type, FieldType: String, DefaultValue: normal, Description: Progress Type, List: legend|normal|tooltip|normal-text
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Range, Description: Label
#DesignerProperty: Key: LegendColor, DisplayName: Label Color, FieldType: String, DefaultValue: , Description: Label Color
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: ProgressBackgroundColor, DisplayName: Progress Background Color, FieldType: String, DefaultValue: , Description: Progress Background Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: Int, DefaultValue: 0, MinRange: 0, MaxRange: 100, Description: Value
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: #ffffff, Description: Text Color
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: xs, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: TextVisible, DisplayName: Text Visible, FieldType: Boolean, DefaultValue: False, Description: Text Visible
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Indeterminate, DisplayName: Indeterminate, FieldType: Boolean, DefaultValue: False, Description: Indeterminate
#DesignerProperty: Key: LeftIcon, DisplayName: Left Icon, FieldType: String, DefaultValue: , Description: Left Icon
#DesignerProperty: Key: LeftIconColor, DisplayName: Left Icon Color, FieldType: String, DefaultValue: , Description: Left Icon Color
#DesignerProperty: Key: MinValue, DisplayName: Min Value, FieldType: Int, DefaultValue: 0, MinRange: 0, MaxRange: 100, Description: Min Value
#DesignerProperty: Key: StepValue, DisplayName: Step Value, FieldType: Int, DefaultValue: 1, MinRange: 0, MaxRange: 100, Description: Step Value
#DesignerProperty: Key: MaxValue, DisplayName: Max Value, FieldType: Int, DefaultValue: 100, MinRange: 0, MaxRange: 100, Description: Max Value
#DesignerProperty: Key: RightIcon, DisplayName: Right Icon, FieldType: String, DefaultValue: , Description: Right Icon
#DesignerProperty: Key: RightIconColor, DisplayName: Right Icon Color, FieldType: String, DefaultValue: , Description: Right Icon Color
#DesignerProperty: Key: Ticks, DisplayName: Ticks, FieldType: String, DefaultValue: , Description: Ticks
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
	Public CustProps As Map 'ignorew
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
	'Public Root As SDUIElement
	Private sProgressBackgroundColor As String = ""
	Private sColor As String = "none"
	Private sHeight As String = ""
	Private bIndeterminate As Boolean = False
	Private sLeftIcon As String = ""
	Private sLeftIconColor As String = ""
	Private iMaxValue As Int = 100
	Private iMinValue As Int = 0
	Private sRightIcon As String = ""
	Private sRightIconColor As String = ""
	Private iStepValue As Int = 1
	Private sTicks As String = ""
	Private iValue As Int = 0
	Private sWidth As String = "full"
	Private sProgressType As String = "normal"
	Private sLabel As String = ""
	Private sHint As String = ""
	Private sSize As String = "md"
	Private sBackgroundColor As String = "base-200"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"
	Private sTextColor As String = "#ffffff"
	Private sTextSize As String = "xs"
	Private bTextVisible As Boolean = False
	Private sLegendColor As String = ""
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
	mTarget = BANano.GetElement("#" & sParentID)
	DesignerCreateView(mTarget, CustProps)
End Sub
'remove this element from the dom
Public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub setLegendColor(s As String)				'ignoredeadcode
	sLegendColor = s
	CustProps.Put("LegendColor", s)
	UI.SetTextColorByID($"${mName}_legend"$, s)
End Sub

Sub getLegendColor As String
	Return sLegendColor
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
	Select Case sProgressType
	Case "normal"
		UI.SetVisible(mElement, b)
	Case Else
		UI.SetVisibleByID($"${mName}_control"$, b)
	End Select
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

'set value
Sub setValue(i As Int)			'ignoredeadcode
	iValue = i
	CustProps.Put("Value", i)
	If mElement = Null Then Return
	mElement.SetValue(i)
	Select Case sProgressType
	Case "legend"
		UI.SetTextByID($"${mName}_endlabel"$, iValue)
	Case "tooltip"
		UI.SetStyleByID($"${mName}_tooltip"$, "inset-inline-start", $"${iValue}%"$)
		UI.SetAttrByID($"${mName}_tooltip"$, "data-tip", iValue)
	Case "normal"
	End Select
	UI.SetTextByID($"${mName}_value"$, $"${iValue}%"$)
End Sub
'get value
Sub getValue As Int
	If mElement = Null Then Return 0
	iValue = UI.CInt(mElement.getvalue)
	Return iValue
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		sLegendColor = Props.GetDefault("LegendColor", "")
		sLegendColor = UI.CStr(sLegendColor)
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		bIndeterminate = Props.GetDefault("Indeterminate", False)
		bIndeterminate = UI.CBool(bIndeterminate)
		sLeftIcon = Props.GetDefault("LeftIcon", "")
		sLeftIcon = UI.CStr(sLeftIcon)
		sLeftIconColor = Props.GetDefault("LeftIconColor", "")
		sLeftIconColor = UI.CStr(sLeftIconColor)
		iMaxValue = Props.GetDefault("MaxValue", 100)
		iMaxValue = UI.CInt(iMaxValue)
		iMinValue = Props.GetDefault("MinValue", 0)
		iMinValue = UI.Cint(iMinValue)
		sRightIcon = Props.GetDefault("RightIcon", "")
		sRightIcon = UI.CStr(sRightIcon)
		sRightIconColor = Props.GetDefault("RightIconColor", "")
		sRightIconColor = UI.CStr(sRightIconColor)
		iStepValue = Props.GetDefault("StepValue", 1)
		iStepValue = UI.Cint(iStepValue)
		sTicks = Props.GetDefault("Ticks", "")
		sTicks = UI.CStr(sTicks)
		iValue = Props.GetDefault("Value", 0)
		iValue = UI.Cint(iValue)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = UI.CStr(sWidth)
		sLabel = Props.GetDefault("Label", "")
		sLabel = UI.CStr(sLabel)
		sProgressType = Props.GetDefault("ProgressType", "normal")
		sProgressType = UI.CStr(sProgressType)
		sHint = Props.GetDefault("Hint", "")
		sHint = UI.CStr(sHint)
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = "md"
		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		bBorder = Props.GetDefault("Border", True)
		bBorder = UI.CBool(bBorder)
		sBorderColor = Props.GetDefault("BorderColor", "base-300")
		sBorderColor = UI.CStr(sBorderColor)
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sTextColor = Props.GetDefault("TextColor", "#ffffff")
		sTextColor = UI.CStr(sTextColor)
		sTextSize = Props.GetDefault("TextSize", "xs")
		sTextSize = UI.CStr(sTextSize)
		bTextVisible = Props.GetDefault("TextVisible", False)
		bTextVisible = UI.CBool(bTextVisible)
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
	'
'	Select Case sProgressType
'	Case "legend"
'		If sWidth <> "" Then UI.AddClassDT(sWidth)
'	Case "tooltip"
'		If sWidth <> "" Then UI.AddClassDT(sWidth)
'	Case "normal"
'		If sWidth <> "" Then UI.AddClassDT(sWidth)
'	End Select
'	
	
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	'
	Select Case sProgressType
		Case "legend"
'			mElement = mTarget.Append($"[BANCLEAN]
'			<fieldset id="${mName}_control" class="-mt-8 ${xclasses} fieldset" ${xattrs} style="${xstyles}">
'  				<legend id="${mName}_legend" class="relative top-6 fieldset-legend">${sLabel}</legend>
'				<div id="${mName}_label" class="flex text-xs opacity-50 justify-between">
'  					<span id="${mName}_startlabel"></span>
'					<span id="${mName}_endlabel">${iValue}</span>
'				</div>
'  				<progress id="${mName}" class="progress rounded-full w-full relative" value="${iValue}" step="${iStepValue}" min="${iMinValue}" max="${iMaxValue}"></progress>
'				<div id="${mName}_startend" class="flex text-xs opacity-50 justify-between">
'  					<span id="${mName}_start">${iMinValue}</span>
'					<span id="${mName}_end">${iMaxValue}</span>
'				</div>
'				<label id="${mName}_hint" class="fieldset-label hidden">${sHint}</label>
'			</fieldset>"$).Get("#" & mName)
			
			
			mElement = mTarget.Append($"[BANCLEAN]
				<fieldset id="${mName}_control" class="rounded-sm ${xclasses} fieldset" ${xattrs} style="${xstyles}">
	        		<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
					<div id="${mName}_tooltip" class="relative tooltip w-full" data-tip="${iValue}">
						<progress id="${mName}" step="${iStepValue}" max="${iMaxValue}" min="${iMinValue}" value="${iValue}" class="progress rounded-full w-full"></progress>
						<div id="${mName}_value" class="absolute inset-0 flex -top-2 items-center font-bold justify-center">${iValue}%</div>
					</div>
	        		<p id="${mName}_hint" class="fieldset-label hidden">${sHint}</p>
	      		</fieldset>"$).Get("#" & mName)
				
			setBackgroundColor(sBackgroundColor)
			setBorder(bBorder)
			setBorderColor(sBorderColor)
			setRoundedBox(bRoundedBox)
			setShadow(sShadow)
			setTextColor(sTextColor)
			setTextSize(sTextSize)
			setTextVisible(bTextVisible)
			setLegendColor(sLegendColor)
		Case "tooltip"
			mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
        		<div class="relative mt-6 w-full">
            		<div id="${mName}_tooltip" class="absolute tooltip tooltip-open before:text-xs" style="inset-inline-start:${iValue}%" data-tip="${iValue}"></div>
					<progress id="${mName}" class="progress rounded-full w-full" value="${iValue}" step="${iStepValue}" min="${iMinValue}" max="${iMaxValue}"></progress>
					<div id="${mName}_value" class="absolute inset-0 flex -top-2 items-center justify-center font-bold">${iValue}%</div>
        		</div>
        		<div id="${mName}_startend" class="flex text-xs opacity-50 justify-between">
					<span id="${mName}_start">${iMinValue}</span>
					<span id="${mName}_end">${iMaxValue}</span>
				</div>
    		</div>"$).Get("#" & mName)
			UpdateTooltipTop
			setTextColor(sTextColor)
			setTextSize(sTextSize)
			setTextVisible(bTextVisible)
		Case "normal"
			mElement = mTarget.Append($"[BANCLEAN]<progress id="${mName}" class="${xclasses} progress rounded-full" ${xattrs} style="${xstyles}" value="${iValue}" step="${iStepValue}" min="${iMinValue}" max="${iMaxValue}"></progress>"$).Get("#" & mName)
			setWidth(sWidth)
		Case "normal-text"
			mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="w-full ${xclasses}" ${xattrs} style="${xstyles}">
	        	<div id="${mName}_tooltip" class="w-full relative tooltip" data-tip="${iValue}">
					<progress id="${mName}" step="${iStepValue}" max="${iMaxValue}" min="${iMinValue}" value="${iValue}" class="progress rounded-full w-full"></progress>
					<div id="${mName}_value" class="absolute inset-0 flex -top-2 items-center font-bold justify-center">${iValue}%</div>
				</div>
	        </div>"$).Get("#" & mName)
			setTextColor(sTextColor)
			setTextSize(sTextSize)
			setTextVisible(bTextVisible)
	End Select
	If sProgressBackgroundColor <> "" Then UI.SetBackgroundColor(mElement, sProgressBackgroundColor)
	If sColor <> "" Then UI.SetColor(mElement, "color", "progress", sColor)
	If sHeight <> "" Then UI.SetHeight(mElement, sHeight)
	setIndeterminate(bIndeterminate)
	If sSize <> "" Then setSize(sSize)
	setValue(iValue)
	'setVisible(bVisible)
End Sub

'set Text Color
Sub setTextColor(s As String)			'ignoredeadcode
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_value"$, sTextColor)
End Sub
'set Text Size
'options: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
Sub setTextSize(s As String)			'ignoredeadcode
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextSizeByID($"${mName}_value"$, sTextSize)
End Sub
'set Text Visible
Sub setTextVisible(b As Boolean)			'ignoredeadcode
	bTextVisible = b
	CustProps.put("TextVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_value"$, b)
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Text Size
Sub getTextSize As String
	Return sTextSize
End Sub
'get Text Visible
Sub getTextVisible As Boolean
	Return bTextVisible
End Sub



'xs - 8px
'sm - 16px
'md - 24px
'lg - 32px
'xl - 40px
private Sub UpdateTooltipTop		'ignoredeadcode
	Select Case sSize
	Case "lg"
			UI.UpdateClassByID($"${mName}_tooltip"$, "top", "top-1")
	Case "md"
			UI.UpdateClassByID($"${mName}_tooltip"$, "top", "top-1")
	Case "sm"
			UI.UpdateClassByID($"${mName}_tooltip"$, "top", "top-1")
	Case "xl"
			UI.UpdateClassByID($"${mName}_tooltip"$, "top", "top-1")
	Case "xs"
			UI.UpdateClassByID($"${mName}_tooltip"$, "top", "top-3")
	Case Else
			UI.UpdateClassByID($"${mName}_tooltip"$, "top", "top-1")
	End Select
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

'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)			'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	Dim psize As String = "24px"
	Select Case s
	Case "xs"
		psize = "8px"
	Case "sm"
		psize = "16px"
	Case "md"
		psize = "24px"
	Case "lg"
		psize = "32px"
	Case "xl"
		psize = "40px"
	End Select
	UI.SetSize(mElement, "size", "h", psize)
End Sub

Sub getSize As String
	Return sSize
End Sub

'set Width
Sub setWidth(s As String)				'ignoredeadcode
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub

Sub getWidth As String
	Return sWidth
End Sub

'set Hint
Sub setHint(s As String)
	sHint = s
	CustProps.put("Hint", s)
	If mElement = Null Then Return
	UI.SetHTMLByID($"${mName}_hint"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_hint"$, False)
	Else
		UI.SetVisibleByID($"${mName}_hint"$, True)
	End If
	UI.SetTextColorByID($"${mName}_hint"$, $"base-content"$)
End Sub

'set Hint
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

Sub getHint As String
	Return sHint
End Sub

'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub

Sub getLabel As String
	Return sLabel
End Sub

'legend|normal|tooltip
Sub setProgressType(s As String)
	sProgressType = s
	CustProps.Put("ProgressType", s)
End Sub

Sub getProgressType As String
	Return sProgressType
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

'set Progress Background Color
Sub setProgressBackgroundColor(s As String)
	sProgressBackgroundColor = s
	CustProps.put("ProgressBackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "progress", s)
End Sub
'set Height
Sub setHeight(s As String)				'ignoredeadcode
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, s)
End Sub
'set Indeterminate
Sub setIndeterminate(b As Boolean)				'ignoredeadcode
	bIndeterminate = b
	CustProps.put("Indeterminate", b)
	If mElement = Null Then Return
	If b Then
		UI.RemoveAttr(mElement, "max")
		UI.RemoveAttr(mElement, "value")
		UI.RemoveAttr(mElement, "min")
		UI.RemoveAttr(mElement, "step")
	Else
		UI.SetAttr(mElement, "step", iStepValue)
		UI.SetAttr(mElement, "max", iMaxValue)
		UI.SetAttr(mElement, "value", iValue)
		UI.SetAttr(mElement, "min", iMinValue)
	End If
End Sub
'set Left Icon
Sub setLeftIcon(s As String)
	sLeftIcon = s
	CustProps.put("LeftIcon", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.SetAttr(mElement, "left-icon", s)
End Sub
'set Left Icon Color
Sub setLeftIconColor(s As String)
	sLeftIconColor = s
	CustProps.put("LeftIconColor", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.SetAttr(mElement, "left-icon-color", s)
End Sub
'set Max Value
Sub setMaxValue(i As Int)
	iMaxValue = i
	CustProps.put("MaxValue", i)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "max", i)
End Sub
'set Min Value
Sub setMinValue(i As Int)
	iMinValue = i
	CustProps.put("MinValue", i)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "min", i)
End Sub
'set Right Icon
Sub setRightIcon(s As String)
	sRightIcon = s
	CustProps.put("RightIcon", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.SetAttr(mElement, "right-icon", s)
End Sub
'set Right Icon Color
Sub setRightIconColor(s As String)
	sRightIconColor = s
	CustProps.put("RightIconColor", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.SetAttr(mElement, "right-icon-color", s)
End Sub
'set Step Value
Sub setStepValue(i As Int)
	iStepValue = i
	CustProps.put("StepValue", i)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "step", i)
End Sub
'set Ticks
Sub setTicks(s As String)
	sTicks = s
	CustProps.put("Ticks", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.SetAttr(mElement, "ticks", s)
End Sub
'get Progress Background Color
Sub getProgressBackgroundColor As String
	Return sProgressBackgroundColor
End Sub


'get Color
Sub getColor As String
	Return sColor
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Indeterminate
Sub getIndeterminate As Boolean
	Return bIndeterminate
End Sub
'get Left Icon
Sub getLeftIcon As String
	Return sLeftIcon
End Sub
'get Left Icon Color
Sub getLeftIconColor As String
	Return sLeftIconColor
End Sub
'get Max Value
Sub getMaxValue As Int
	Return iMaxValue
End Sub
'get Min Value
Sub getMinValue As Int
	Return iMinValue
End Sub
'get Right Icon
Sub getRightIcon As String
	Return sRightIcon
End Sub
'get Right Icon Color
Sub getRightIconColor As String
	Return sRightIconColor
End Sub
'get Step Value
Sub getStepValue As Int
	Return iStepValue
End Sub
'get Ticks
Sub getTicks As String
	Return sTicks
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub