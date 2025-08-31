B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Value As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: RadioType, DisplayName: Radio Type, FieldType: String, DefaultValue: normal, Description: Toggle Type, List: legend|normal|left-label|right-label
#DesignerProperty: Key: Legend, DisplayName: Legend, FieldType: String, DefaultValue: Toggle, Description: Legend
#DesignerProperty: Key: LegendColor, DisplayName: Label Color, FieldType: String, DefaultValue: , Description: Label Color
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Radio, Description: Label
#DesignerProperty: Key: LabelColor, DisplayName: Label Color, FieldType: String, DefaultValue: , Description: Legend Color
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: AriaLabel, DisplayName: Aria Label, FieldType: String, DefaultValue: , Description: Aria Label
#DesignerProperty: Key: GroupName, DisplayName: Group Name, FieldType: String, DefaultValue: , Description: Group Name
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Checked, DisplayName: Checked, FieldType: Boolean, DefaultValue: False, Description: Checked
#DesignerProperty: Key: CheckedColor, DisplayName: Checked Color, FieldType: String, DefaultValue: , Description: Checked Color
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
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
	Private sAriaLabel As String = ""
	Private sBackgroundColor As String = ""
	Private bChecked As Boolean = False
	Private sCheckedColor As String = ""
	Private sColor As String = "none"
	Private sGroupName As String = ""
	Private sHint As String = ""
	Private sLabel As String = "Label"
	Private sSize As String = "none"
	Private sValue As String = ""
	Private sLegend As String = ""
	Private sRadioType As String = "normal"
	Private sLegendColor As String = ""
	Private sLabelColor As String
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
	UI.SetVisibleByID($"${mName}_control"$, b)
End Sub
'get Visible
Sub getVisible As Boolean
	bVisible = UI.GetVisible(mElement)
	Return bVisible
End Sub
'set Enabled
Sub setEnabled(b As Boolean)				'ignoredeadcode
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
		UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sLegendColor = Props.GetDefault("LegendColor", "")
		sLegendColor = UI.CStr(sLegendColor)
		sAriaLabel = Props.GetDefault("AriaLabel", "")
		sAriaLabel = UI.CStr(sAriaLabel)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		bChecked = Props.GetDefault("Checked", False)
		bChecked = UI.CBool(bChecked)
		sCheckedColor = Props.GetDefault("CheckedColor", "")
		sCheckedColor = UI.CStr(sCheckedColor)
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sGroupName = Props.GetDefault("GroupName", "")
		sGroupName = UI.CStr(sGroupName)
		sHint = Props.GetDefault("Hint", "")
		sHint = UI.CStr(sHint)
		sLabel = Props.GetDefault("Label", "Label")
		sLabel = UI.CStr(sLabel)
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sValue = Props.GetDefault("Value", "")
		sValue = UI.CStr(sValue)
		sLegend = Props.GetDefault("Legend", "")
		sLegend = UI.CStr(sLegend)
		sRadioType = Props.GetDefault("RadioType", "normal")
		sRadioType = UI.CStr(sRadioType)
		sLabelColor = Props.GetDefault("LabelColor", "")
		sLabelColor = UI.CStr(sLabelColor)
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
	Select Case sRadioType
		Case "legend"
			mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="rounded-sm ${xclasses} fieldset" ${xattrs} style="${xstyles}">
				<legend id="${mName}_legend" class="fieldset-legend">${sLegend}</legend>
				<label id="${mName}_labelhost" class="fieldset-label flex gap-2 items-center cursor-pointer">
  					<input id="${mName}" type="radio" class="radio"></input>
  					<span id="${mName}_label">${sLabel}</span>
				</label>
			</fieldset>"$).Get("#" & mName)
			setLegendColor(sLegendColor)
			setLabelColor(sLabelColor)
		Case "normal"
			mElement = mTarget.Append($"[BANCLEAN]<input id="${mName}" type="radio" class="${xclasses} radio" ${xattrs} style="${xstyles}"></input>"$).Get("#" & mName)
		Case "left-label"
			mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="${xclasses} flex items-center justify-between gap-2" ${xattrs} style="${xstyles}">
  				<label id="${mName}_labelhost" class="cursor-pointer select-none">
    				<span id="${mName}_label">${sLabel}</span>
  				</label>
    			<input id="${mName}" type="radio" class="radio">
			</div>"$).Get("#" & mName)
			setLabelColor(sLabelColor)
		Case "right-label"
			mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="${xclasses} flex flex-col gap-2" ${xattrs} style="${xstyles}">
				<label id="${mName}_labelhost" class="flex gap-2 items-center cursor-pointer">
			 		<input id="${mName}" type="radio" class="radio"></input>
					<span id="${mName}_label">${sLabel}</span>
				</label>
			</div>"$).Get("#" & mName)
			setLabelColor(sLabelColor)
	End Select
		
	setColor(sColor)
	setEnabled(bEnabled)
	setSize(sSize)
	setChecked(bChecked)
	setAriaLabel(sAriaLabel)
	setBackgroundColor(sBackgroundColor)
	setGroupName(sGroupName)
	setValue(sValue)
	setCheckedColor(sCheckedColor)
'	setVisible(bVisible)
	UI.OnEvent(mElement, "change", Me, "changed")
End Sub

Sub setLabelColor(s As String)			'ignoredeadcode
	sLabelColor = s
	CustProps.Put("LabelColor", s)
	UI.SetTextColorByID($"${mName}_label"$, s)
End Sub

Sub getLabelColor As String
	Return sLabelColor
End Sub


Sub Focus
	Try
		If mElement = Null Then Return
		mElement.RunMethod("focus", Null)
	Catch
	End Try			'ignore
End Sub

private Sub changed(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault
	Dim xChecked As String = mElement.GetValue
	BANano.CallSub(mCallBack, $"${mEventName}_change"$, Array(xChecked))
End Sub

'legend|normal|left-label|right-label
Sub setRadioType(s As String)
	sRadioType = s
	CustProps.Put("RadioType", s)
End Sub

Sub getRadioType As String
	Return sRadioType
End Sub


'set Legend
Sub setLegend(s As String)
	sLegend = s
	CustProps.put("Legend", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub

Sub getLegend As String
	Return sLegend
End Sub

'set Aria Label
Sub setAriaLabel(s As String)					'ignoredeadcode
	sAriaLabel = s
	CustProps.put("AriaLabel", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "aria-label", s)
End Sub
'set Background Color
Sub setBackgroundColor(s As String)				'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Checked
Sub setChecked(b As Boolean)				'ignoredeadcode
	bChecked = b
	CustProps.put("Checked", b)
	If mElement = Null Then Return
	mElement.SetChecked(bChecked)
End Sub
'set Checked Color
Sub setCheckedColor(s As String)				'ignoredeadcode
	sCheckedColor = s
	CustProps.put("CheckedColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetCheckedTextColor(mElement, s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)			'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "radio", sColor)
End Sub
'set Group Name
Sub setGroupName(s As String)			'ignoredeadcode
	sGroupName = s
	CustProps.put("GroupName", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "name", s)
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

'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub

'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)				'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "radio", sSize)
End Sub
'set Value
Sub setValue(s As String)				'ignoredeadcode
	sValue = s
	CustProps.put("Value", s)
	If mElement = Null Then Return
	mElement.SetValue(s)
End Sub
'get Aria Label
Sub getAriaLabel As String
	Return sAriaLabel
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Btn
'get Checked
Sub getChecked As Boolean
	Return bChecked
End Sub
'get Checked Color
Sub getCheckedColor As String
	Return sCheckedColor
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Group Name
Sub getGroupName As String
	Return sGroupName
End Sub

'get Hint
Sub getHint As String
	Return sHint
End Sub
'get Label
Sub getLabel As String
	Return sLabel
End Sub

'get Value
Sub getValue As String
	If mElement = Null Then Return ""
	sValue = ui.CStr(mElement.getvalue)
	Return sValue
End Sub