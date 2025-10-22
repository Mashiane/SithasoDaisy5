B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: InputType, DisplayName: Input Type, FieldType: String, DefaultValue: input, Description: Input Type, List: select|input|email|password|tel|url|number|file
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Label, Description: Caption
#DesignerProperty: Key: Suffix, DisplayName: Suffix, FieldType: String, DefaultValue: , Description: Suffix
#DesignerProperty: Key: FloatingLabel, DisplayName: Floating Label, FieldType: Boolean, DefaultValue: False, Description: Floating Label
#DesignerProperty: Key: LabelWidth, DisplayName: Label Width, FieldType: String, DefaultValue: , Description: Label Width
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue: , Description: Placeholder
#DesignerProperty: Key: RawOptions, DisplayName: Options, FieldType: String, DefaultValue: b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r, Description: Options
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: MinLength, DisplayName: Min Length, FieldType: String, DefaultValue: , Description: Min Length
#DesignerProperty: Key: MaxLength, DisplayName: Max Length, FieldType: String, DefaultValue: , Description: Max Length
#DesignerProperty: Key: MinValue, DisplayName: Min Value, FieldType: String, DefaultValue: , Description: Min Value
#DesignerProperty: Key: StepValue, DisplayName: Step Value, FieldType: String, DefaultValue: , Description: Step Value
#DesignerProperty: Key: MaxValue, DisplayName: Max Value, FieldType: String, DefaultValue: , Description: Max Value
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
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
	Private sLabel As String = ""
	Private sColor As String = "none"
	Private bFloatingLabel As Boolean = False
	Private sInputType As String = "input"
	Private sPlaceholder As String = ""
	Private sRawOptions As String = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	Private sSize As String = "none"
	Private sSuffix As String = ""
	Private bValidator As Boolean = False
	Private sValidatorHint As String = ""
	Private sLabelWidth As String = ""
	Private sMaxLength As String = ""
	Private sMaxValue As String = ""
	Private sMinLength As String = ""
	Private sMinValue As String = ""
	Private bRequired As Boolean = False
	Private sStepValue As String = ""
	Private sValue As String = ""
	Private sWidth As String = "full"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
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
	CustProps.Put("InputType", "input")
	CustProps.Put("Label", "Label")
	CustProps.Put("Suffix", "")
	CustProps.Put("FloatingLabel", False)
	CustProps.Put("LabelWidth", "")
	CustProps.Put("Placeholder", "")
	CustProps.Put("RawOptions", "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r")
	CustProps.Put("Value", "")
	CustProps.Put("Width", "full")
	CustProps.Put("MinLength", "")
	CustProps.Put("MaxLength", "")
	CustProps.Put("MinValue", "")
	CustProps.Put("StepValue", "")
	CustProps.Put("MaxValue", "")
	CustProps.Put("Required", False)
	CustProps.Put("Color", "none")
	CustProps.Put("Size", "none")
	CustProps.Put("Validator", False)
	CustProps.Put("ValidatorHint", "")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
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
		sLabel = Props.GetDefault("Label", "")
		sLabel = UI.CStr(sLabel)
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bFloatingLabel = Props.GetDefault("FloatingLabel", False)
		bFloatingLabel = UI.CBool(bFloatingLabel)
		sInputType = Props.GetDefault("InputType", "input")
		sInputType = UI.CStr(sInputType)
		sPlaceholder = Props.GetDefault("Placeholder", "")
		sPlaceholder = UI.CStr(sPlaceholder)
		sRawOptions = Props.GetDefault("RawOptions", "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r")
		sRawOptions = UI.CStr(sRawOptions)
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sSuffix = Props.GetDefault("Suffix", "")
		sSuffix = UI.CStr(sSuffix)
		bValidator = Props.GetDefault("Validator", False)
		bValidator = UI.CBool(bValidator)
		sValidatorHint = Props.GetDefault("ValidatorHint", "")
		sValidatorHint = UI.CStr(sValidatorHint)
		sLabelWidth = Props.GetDefault("LabelWidth", "")
		sLabelWidth = UI.CStr(sLabelWidth)
		sMaxLength = Props.GetDefault("MaxLength", "")
		sMaxLength = UI.CStr(sMaxLength)
		sMaxValue = Props.GetDefault("MaxValue", "")
		sMaxValue = UI.CStr(sMaxValue)
		sMinLength = Props.GetDefault("MinLength", "")
		sMinLength = UI.CStr(sMinLength)
		sMinValue = Props.GetDefault("MinValue", "")
		sMinValue = UI.CStr(sMinValue)
		bRequired = Props.GetDefault("Required", False)
		bRequired = UI.CBool(bRequired)
		sStepValue = Props.GetDefault("StepValue", "")
		sStepValue = UI.CStr(sStepValue)
		sValue = Props.GetDefault("Value", "")
		sValue = UI.CStr(sValue)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = UI.CStr(sWidth)
	End If
	'
	If bFloatingLabel = True Then UI.AddClassDT("floating-label")
	'select|input|email|password|tel|url|number|file
	Dim sTag As String = sInputType
	Select Case sInputType
	Case "email", "password", "tel", "url", "number", "input", "file"
		sTag = "input"
	Case "select" 
		sTag = "select"	
	End Select
	UI.AddClassDT(sTag)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
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
	mElement = mTarget.Append($"[BANCLEAN]	
		<label id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
  			<span id="${mName}_prefix" class="label whitespace-nowrap">${sLabel}</span>
  			<${sTag} id="${mName}_input"></${sTag}>
			<span id="${mName}_suffix" class="label hidden whitespace-nowrap">${sSuffix}</span>
		</label>
		<div id="${mName}_validatorhint" class="validator-hint hidden">${sValidatorHint}</div>"$).Get("#" & mName)
	'
	Select Case sInputType
	Case "input"
		UI.SetAttrByID($"${mName}_input"$, "type", "text")
	Case "email"
		UI.SetAttrByID($"${mName}_input"$, "type", "email")
	Case "password"
		UI.SetAttrByID($"${mName}_input"$, "type", "password")
	Case "tel"
		UI.SetAttrByID($"${mName}_input"$, "type", "tel")
		UI.AddClassByID($"${mName}_input"$, "tabular-nums")
	Case "url"
		UI.SetAttrByID($"${mName}_input"$, "type", "url")
	Case "file"
		UI.SetAttrByID($"${mName}_input"$, "type", "file")
		UI.AddClassByID($"${mName}_input"$, $"file-input [&::file-selector-button]:hidden p-1"$)
	Case "number"
		UI.SetAttrByID($"${mName}_input"$, "type", "number")
		UI.AddClassByID($"${mName}_input"$, "tabular-nums")
	End Select
		
	setColor(sColor)
	setSize(sSize)
	If sInputType = "select" Then
		setOptions(sRawOptions)
	End If
	setPlaceholder(sPlaceholder)
	
	setLabelWidth(sLabelWidth)
	setMaxLength(sMaxLength)
	setMaxValue(sMaxValue)
	setMinLength(sMinLength)
	setMinValue(sMinValue)
	setRequired(bRequired)
	setStepValue(sStepValue)
	setWidth(sWidth)
	setLabel(sLabel)
	setSuffix(sSuffix)
	setValidatorHint(sValidatorHint)
	setValidator(bValidator)
	'setVisible(bVisible)
End Sub

'set Width
Sub setWidth(s As String)			'ignoredeadcode
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetWidth(mElement, sWidth)
		UI.SetWidthByID($"${mName}_input"$, sWidth)
	End If
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Label Width
Sub setLabelWidth(s As String)				'ignoredeadcode
	sLabelWidth = s
	CustProps.put("LabelWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidthByID($"${mName}_prefix"$, s)
End Sub

'set Max Length	
Sub setMaxLength(s As String)				'ignoredeadcode
	sMaxLength = s
	CustProps.put("MaxLength", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttrByID($"${mName}_input"$, "maxlength", s)
End Sub

'set Max Value
Sub setMaxValue(s As String)			'ignoredeadcode
	sMaxValue = s
	CustProps.put("MaxValue", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttrByID($"${mName}_input"$, "max", s)
End Sub

'set Min Length
Sub setMinLength(s As String)			'ignoredeadcode
	sMinLength = s
	CustProps.put("MinLength", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttrByID($"${mName}_input"$, "minlength", s)
End Sub

'set Min Value
Sub setMinValue(s As String)				'ignoredeadcode
	sMinValue = s
	CustProps.put("MinValue", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttrByID($"${mName}_input"$, "min", s)
End Sub

'set Required
Sub setRequired(b As Boolean)				'ignoredeadcode
	bRequired = b
	CustProps.put("Required", b)
	If mElement = Null Then Return
	If b = True Then
		UI.SetAttrByID($"${mName}_input"$, "required", b)
	Else
		UI.RemoveAttrByID($"${mName}_input"$, "required")
	End If
End Sub

'set Step Value
Sub setStepValue(s As String)			'ignoredeadcode
	sStepValue = s
	CustProps.put("StepValue", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttrByID($"${mName}_input"$, "step", s)
End Sub

'get Label Width
Sub getLabelWidth As String
	Return sLabelWidth
End Sub
'get Max Length
Sub getMaxLength As String
	Return sMaxLength
End Sub
'get Max Value
Sub getMaxValue As String
	Return sMaxValue
End Sub
'get Min Length
Sub getMinLength As String
	Return sMinLength
End Sub
'get Min Value
Sub getMinValue As String
	Return sMinValue
End Sub
'get Required
Sub getRequired As Boolean
	Return bRequired
End Sub
'get Step Value
Sub getStepValue As String
	Return sStepValue
End Sub

'set Label
Sub setLabel(s As String)				'ignoredeadcode
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_prefix"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_prefix"$, False)
	Else
		UI.SetVisibleByID($"${mName}_prefix"$, True)
	End If
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)			'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s = "" Then Return
	Select Case sInputType
	Case "select"
		UI.SetColorByID($"${mName}_input"$, "color", "select", s)
	Case "input", "email", "password", "tel", "url", "number"
		UI.SetColorByID($"${mName}_input"$, "color", "input", s)
	Case "file"
		UI.SetColorByID($"${mName}_input"$, "color", "file-input", s)
	End Select
End Sub

'set Floating Label
Sub setFloatingLabel(b As Boolean)
	bFloatingLabel = b
	CustProps.put("FloatingLabel", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "floating-label")
	Else
		UI.RemoveClass(mElement, "floating-label")
	End If
End Sub

'set Input Type
'options: date|none|select|text
Sub setInputType(s As String)
	sInputType = s
	CustProps.put("InputType", s)
End Sub

'set Placeholder
Sub setPlaceholder(s As String)			'ignoredeadcode
	sPlaceholder = s
	CustProps.put("Placeholder", s)
	If mElement = Null Then Return
	Select Case sInputType
	Case "input", "email", "password", "tel", "url", "number"
		UI.SetAttrByID($"${mName}_input"$, "placeholder", s)
	End Select
End Sub

'set Options from a MV field
'b4j:b4j; b4i:b4i; b4r:b4r
Sub setOptions(s As String)					'ignoredeadcode
	sRawOptions = s
	CustProps.put("RawOptions", s)
	If mElement = Null Then Return
	Select Case sInputType
	Case "select"
		Dim m As Map = UI.GetKeyValues(s, False)
		SetOptionsFromMap(m)
	End Select
End Sub

'load the items from a map
Sub SetOptionsFromMap(m As Map)					'ignoredeadcode
	If mElement = Null Then Return
	Clear
	Dim sb As StringBuilder
	sb.Initialize
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		k = UI.CleanID(k)
		sb.Append($"<option id="${k}_${mName}" value="${k}">${v}</option>"$)
	Next
	UI.AppendByID($"${mName}_input)"$, sb.ToString)
End Sub

'load the items from a list
Sub SetOptionsFromList(m As List)
	If mElement = Null Then Return
	Dim nm As Map = CreateMap()
	For Each k As String In m
		Dim sk As String = UI.CleanID(k)
		nm.Put(sk, k)
	Next
	SetOptionsFromMap(nm)
End Sub

'get Raw Options
Sub getOptions As String
	Return sRawOptions
End Sub

Sub Clear			'ignoredeadcode
	If mElement = Null Then Return
	Select Case sInputType
	Case "select"
		UI.ClearByID($"${mName}_input"$)
		If sPlaceholder = "" Then Return
		UI.AppendByID($"${mName}_input"$, $"<option id="${mName}_placeholder" value="" disabled selected>${sPlaceholder}</option>"$)
	End Select
End Sub

Sub AddOption(iKey As String, iValue As String)
	If mElement = Null Then Return
	Select Case sInputType
	Case "select"
		Dim xKey As String = UI.CleanID(iKey)
		Dim scode As String = $"<option id="${xKey}_${mName}" value="${xKey}">${iValue}</option>"$
		UI.AppendByID($"${mName}_input"$, scode)
	End Select	
End Sub

'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)				'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then Return
	Select Case sInputType
	Case "select"
		UI.SetSizeByID($"${mName}_input"$, "size", "select", sSize)
	Case "input", "email", "password", "tel", "url", "number"
		UI.SetSizeByID($"${mName}_input"$, "size", "input", sSize)
	Case "file"
		UI.SetSizeByID($"${mName}_input"$, "size", "file-input", sSize)
	End Select
End Sub
'set Suffix
Sub setSuffix(s As String)				'ignoredeadcode
	sSuffix = s
	CustProps.put("Suffix", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_suffix"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_suffix"$, False)
	Else
		UI.SetVisibleByID($"${mName}_suffix"$, True)
	End If
End Sub

'set Validator
Sub setValidator(b As Boolean)				'ignoredeadcode
	bValidator = b
	CustProps.put("Validator", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClassByID($"${mName}_input"$, "validator")
	Else
		UI.RemoveClassByID($"${mName}_input"$, "validator")
	End If
End Sub
'set Validator Hint
Sub setValidatorHint(s As String)		'ignoredeadcode
	sValidatorHint = s
	CustProps.put("ValidatorHint", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_validatorhint"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_validatorhint"$, False)
	Else
		UI.SetVisibleByID($"${mName}_validatorhint"$, True)
	End If
End Sub
'get Caption
Sub getLabel As String
	Return sLabel
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Floating Label
Sub getFloatingLabel As Boolean
	Return bFloatingLabel
End Sub

'get Input Type
Sub getInputType As String
	Return sInputType
End Sub

'get Placeholder
Sub getPlaceholder As String
	Return sPlaceholder
End Sub

'get Size
Sub getSize As String
	Return sSize
End Sub
'get Suffix
Sub getSuffix As String
	Return sSuffix
End Sub
'get Validator
Sub getValidator As Boolean
	Return bValidator
End Sub
'get Validator Hint
Sub getValidatorHint As String
	Return sValidatorHint
End Sub