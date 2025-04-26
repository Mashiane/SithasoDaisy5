B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Value As Boolean)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: ToggleType, DisplayName: Toggle Type, FieldType: String, DefaultValue: normal, Description: Toggle Type, List: legend|normal|left-label|right-label
#DesignerProperty: Key: Legend, DisplayName: Legend, FieldType: String, DefaultValue: Toggle, Description: Legend
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Turn On, Description: Label
#DesignerProperty: Key: Checked, DisplayName: Checked, FieldType: Boolean, DefaultValue: False, Description: Checked
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
'#DesignerProperty: Key: CheckedIcon, DisplayName: Checked Icon, FieldType: String, DefaultValue: , Description: Checked Icon
#DesignerProperty: Key: CheckedColor, DisplayName: Checked Color, FieldType: String, DefaultValue: , Description: Checked Color
'#DesignerProperty: Key: UncheckedIcon, DisplayName: Un-Checked Icon, FieldType: String, DefaultValue: , Description: UnChecked Icon
'#DesignerProperty: Key: UncheckedColor, DisplayName: Un-Checked Color, FieldType: String, DefaultValue: , Description: UnChecked Color
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Indeterminate, DisplayName: Indeterminate, FieldType: Boolean, DefaultValue: False, Description: Indeterminate
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: Validator, DisplayName: Validator, FieldType: Boolean, DefaultValue: False, Description: Validator
#DesignerProperty: Key: ValidatorHint, DisplayName: Validator Hint, FieldType: String, DefaultValue: , Description: Validator Hint
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
	Private bChecked As Boolean = False
	Private sColor As String = "none"
	Private sHint As String = ""
	Private bIndeterminate As Boolean = False
	Private sLabel As String = "Turn On"
	Private sLegend As String = "Toggle"
	Private bRequired As Boolean = False
	Private sSize As String = "none"
	Private bValidator As Boolean = False
	Private sValidatorHint As String = ""
	Private sToggleType As String = "normal"
	Private sCheckedColor As String = ""
	Private sCheckedIcon As String = ""
	Private sUncheckedColor As String = ""
	Private sUncheckedIcon As String = ""
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("SVGRenderer.min.js")
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
	Select Case sToggleType
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
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		bChecked = Props.GetDefault("Checked", False)
		bChecked = UI.CBool(bChecked)
		sCheckedColor = Props.GetDefault("CheckedColor", "")
		sCheckedColor = UI.CStr(sCheckedColor)
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sHint = Props.GetDefault("Hint", "")
		sHint = UI.CStr(sHint)
		bIndeterminate = Props.GetDefault("Indeterminate", False)
		bIndeterminate = UI.CBool(bIndeterminate)
		sLabel = Props.GetDefault("Label", "Turn On")
		sLabel = UI.CStr(sLabel)
		sLegend = Props.GetDefault("Legend", "Toggle")
		sLegend = UI.CStr(sLegend)
		bRequired = Props.GetDefault("Required", False)
		bRequired = UI.CBool(bRequired)
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sUncheckedColor = Props.GetDefault("UncheckedColor", "")
		sUncheckedColor = UI.CStr(sUncheckedColor)
		bValidator = Props.GetDefault("Validator", False)
		bValidator = UI.CBool(bValidator)
		sValidatorHint = Props.GetDefault("ValidatorHint", "")
		sValidatorHint = UI.CStr(sValidatorHint)
		sToggleType = Props.GetDefault("ToggleType", "normal")
		sToggleType = UI.CStr(sToggleType)
		sCheckedIcon = Props.GetDefault("CheckedIcon", "")
		sCheckedIcon = UI.CStr(sCheckedIcon)
		sUncheckedIcon = Props.GetDefault("UncheckedIcon", "")
		sUncheckedIcon = UI.CStr(sUncheckedIcon)
	End If
	
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	'
	
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	
	Select Case sToggleType
	Case "legend"
		mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="${xclasses} fieldset" ${xattrs} style="${xstyles}">
				<legend id="${mName}_legend" class="fieldset-legend">${sLegend}</legend>
				<label id="${mName}_labelhost" class="fieldset-label flex gap-2 items-center cursor-pointer">
  					<input id="${mName}" type="checkbox" class="toggle">
						<svg-renderer id="${mName}_checkedicon"    aria-label="enabled" data-js="enabled" fill="currentColor" data-src="${sCheckedIcon}" class="hidden"></svg-renderer>
						<svg-renderer id="${mName}_uncheckedicon"    aria-label="disabled" data-js="enabled" fill="currentColor" data-src="${sUncheckedIcon}" class="hidden"></svg-renderer>
  					</input>
					<span id="${mName}_label">${sLabel}</span>
				</label>
			</fieldset>"$).Get("#" & mName)
	Case "normal"
		mElement = mTarget.Append($"[BANCLEAN]<input id="${mName}" type="checkbox" class="${xclasses} toggle" ${xattrs} style="${xstyles}"></input>"$).Get("#" & mName)
	Case "left-label"
		mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="${xclasses} flex items-center justify-between gap-2" ${xattrs} style="${xstyles}">
  				<label id="${mName}_labelhost" class="cursor-pointer select-none">
    				<span id="${mName}_label">${sLabel}</span>
  				</label>
    			<input id="${mName}" type="checkbox" class="toggle">
					<svg-renderer id="${mName}_checkedicon"    aria-label="enabled" data-js="enabled" fill="currentColor" data-src="${sCheckedIcon}" class="hidden"></svg-renderer>
					<svg-renderer id="${mName}_uncheckedicon"  style=" " aria-label="disabled" data-js="enabled" fill="currentColor" data-src="${sUncheckedIcon}" class="hidden"></svg-renderer>
				</input>	
			</div>"$).Get("#" & mName)
	Case "right-label"
		mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="${xclasses} flex flex-col gap-2" ${xattrs} style="${xstyles}">
				<label id="${mName}_labelhost" class="flex gap-2 items-center cursor-pointer">
			 		<input id="${mName}" type="checkbox" class="toggle">
						<svg-renderer id="${mName}_checkedicon"    aria-label="enabled" data-js="enabled" fill="currentColor" data-src="${sCheckedIcon}" class="hidden"></svg-renderer>
						<svg-renderer id="${mName}_uncheckedicon"    aria-label="disabled" data-js="enabled" fill="currentColor" data-src="${sUncheckedIcon}" class="hidden"></svg-renderer>
					</input>
					<span id="${mName}_label">${sLabel}</span>
				</label>
			</div>"$).Get("#" & mName)
	End Select
	setColor(sColor)
	setEnabled(bEnabled)
	setRequired(bRequired)
	setSize(sSize)
	setChecked(bChecked)
	setIndeterminate(bIndeterminate)
'	setCheckedIcon(sCheckedIcon)
'	setUncheckedIcon(sUncheckedIcon)
	setCheckedColor(sCheckedColor)
'	setUncheckedColor(sUncheckedColor)
'	setVisible(bVisible)
	UI.OnEvent(mElement, "change", Me, "changed")
End Sub

Sub Focus
	Try
		If mElement = Null Then Return
		mElement.RunMethod("focus", Null)
	Catch
	End Try			'ignore
End Sub

private Sub changed(e As BANanoEvent)				'ignoredeadcode
	e.PreventDefault 
	Dim xChecked As Boolean = mElement.GetChecked 
	BANano.CallSub(mCallBack, $"${mEventName}_change"$, Array(xChecked))
End Sub

'legend|normal|left-label|right-label
Sub setToggleType(s As String)
	sToggleType = s
	CustProps.Put("ToggleType", s)
End Sub

Sub getToggleType As String
	Return sToggleType
End Sub

'set Checked
Sub setChecked(b As Boolean)			'ignoredeadcode
	bChecked = b
	CustProps.put("Checked", b)
	If mElement = Null Then Return
	mElement.SetChecked(bChecked)
End Sub
'set Checked Color
Sub setCheckedColor(s As String)			'ignoredeadcode
	sCheckedColor = s
	CustProps.put("CheckedColor", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetCheckedTextColor(mElement, s)
		If sCheckedIcon <> "" Then
			UI.SetIconColorByID($"${mName}_checkedicon"$, s)
		End If
	End If
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)				'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "toggle", sColor)
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
'set Indeterminate
Sub setIndeterminate(b As Boolean)			'ignoredeadcode
	bIndeterminate = b
	CustProps.put("Indeterminate", b)
	If mElement = Null Then Return
	If b = True Then
		mElement.SetField("indeterminate", True)
	Else
		mElement.SetField("indeterminate", Null)
	End If
End Sub
'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_label"$, s)
End Sub
'set Legend
Sub setLegend(s As String)
	sLegend = s
	CustProps.put("Legend", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub
'set Required
Sub setRequired(b As Boolean)			'ignoredeadcode
	bRequired = b
	CustProps.put("Required", b)
	If mElement = Null Then Return
	If b = True Then
		UI.SetAttr(mElement, "required", b)
	Else
		UI.RemoveAttr(mElement, "required")
	End If
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)				'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "toggle", sSize)
End Sub
'set Unchecked Color
Sub setUncheckedColor(s As String)			'ignoredeadcode
	sUncheckedColor = s
	CustProps.put("UncheckedColor", s)
	If mElement = Null Then Return
	If sUncheckedIcon <> "" Then
		UI.SetIconColorByID($"${mName}_uncheckedicon"$, s)
	End If
End Sub
'set Validator
Sub setValidator(b As Boolean)
	bValidator = b
	CustProps.put("Validator", b)
	If mElement = Null Then Return
	If b = True Then
		UI.SetAttr(mElement, "validator", b)
	Else
		UI.RemoveAttr(mElement, "validator")
	End If
End Sub
'set Validator Hint
Sub setValidatorHint(s As String)
	sValidatorHint = s
	CustProps.put("ValidatorHint", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "validator-hint", s)
End Sub
'get Checked
Sub getChecked As Boolean
	bChecked = mElement.getchecked
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
'get Hint
Sub getHint As String
	Return sHint
End Sub
'get Indeterminate
Sub getIndeterminate As Boolean
	Return bIndeterminate
End Sub
'get Label
Sub getLabel As String
	Return sLabel
End Sub
'get Legend
Sub getLegend As String
	Return sLegend
End Sub
'get Required
Sub getRequired As Boolean
	Return bRequired
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Unchecked Color
Sub getUncheckedColor As String
	Return sUncheckedColor
End Sub
'get Validator
Sub getValidator As Boolean
	Return bValidator
End Sub
'get Validator Hint
Sub getValidatorHint As String
	Return sValidatorHint
End Sub

'run validation
Sub IsBlank As Boolean
	Dim v As Boolean = getChecked
	v = UI.CBool(v)
	If v = False Then
		setColor("error")
		Return True
	End If
	setColor("success")
	Return False
End Sub

Sub ResetValidation
	Try
		setColor("success")
	Catch
		
	End Try		'ignore
End Sub

'set Checked Icon
Sub setCheckedIcon(s As String)			'ignoredeadcode
	sCheckedIcon = s
	CustProps.put("CheckedIcon", s)
	If mElement = Null Then Return
	If s <> "" Then
		UI.SetIconNameByID($"${mName}_checkedicon"$, s)
		UI.SetIconSizeByID($"${mName}_checkedicon"$, sSize)
		UI.SetVisibleByID($"${mName}_checkedicon"$, True)
	Else
		UI.SetVisibleByID($"${mName}_checkedicon"$, False)
	End If
End Sub
'set Unchecked Icon
Sub setUncheckedIcon(s As String)				'ignoredeadcode
	sUncheckedIcon = s
	CustProps.put("UncheckedIcon", s)
	If mElement = Null Then Return
	If s <> "" Then
		UI.SetIconNameByID($"${mName}_uncheckedicon"$, s)
		UI.SetIconSizeByID($"${mName}_uncheckedicon"$, sSize)
		UI.SetVisibleByID($"${mName}_uncheckedicon"$, True)
	Else
		UI.SetVisibleByID($"${mName}_uncheckedicon"$, False)
	End If
End Sub

'get Checked Icon
Sub getCheckedIcon As String
	Return sCheckedIcon
End Sub
'get Unchecked Icon
Sub getUncheckedIcon As String
	Return sUncheckedIcon
End Sub
