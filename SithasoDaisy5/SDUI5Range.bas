B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: HasLabel, DisplayName: Has Label, FieldType: Boolean, DefaultValue: False, Description: Has Label
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Range, Description: Label
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 10, Description: Value
#DesignerProperty: Key: MinValue, DisplayName: Min Value, FieldType: String, DefaultValue: 0, Description: Min Value
#DesignerProperty: Key: StepValue, DisplayName: Step Value, FieldType: String, DefaultValue: , Description: Step Value
#DesignerProperty: Key: MaxValue, DisplayName: Max Value, FieldType: String, DefaultValue: 100, Description: Max Value
#DesignerProperty: Key: Measure, DisplayName: Measure, FieldType: Boolean, DefaultValue: False, Description: Measure
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: ThumbColor, DisplayName: Thumb Color, FieldType: String, DefaultValue: , Description: Thumb Color
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
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
	Private sColor As String = "none"
	Private bHasLabel As Boolean = False
	Private sHint As String = ""
	Private sLabel As String = ""
	Private sMaxValue As String = "100"
	Private bMeasure As Boolean = False
	Private sMinValue As String = "0"
	Private sSize As String = "none"
	Private sStepValue As String = ""
	Private sTextColor As String = ""
	Private sThumbColor As String = ""
	Private sValue As String = "10"
	Private bDisabled As Boolean = False
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
		sBackgroundColor = Props.GetDefault("BackgroundColor", "")
		sBackgroundColor = modSD5.CStr(sBackgroundColor)
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bHasLabel = Props.GetDefault("HasLabel", False)
		bHasLabel = modSD5.CBool(bHasLabel)
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
		sStepValue = Props.GetDefault("StepValue", "")
		sStepValue = modSD5.CStr(sStepValue)
		sTextColor = Props.GetDefault("TextColor", "")
		sTextColor = modSD5.CStr(sTextColor)
		sThumbColor = Props.GetDefault("ThumbColor", "")
		sThumbColor = modSD5.CStr(sThumbColor)
		sValue = Props.GetDefault("Value", "10")
		sValue = modSD5.CStr(sValue)
		bDisabled = Props.GetDefault("Disabled", False)
		bDisabled = modSD5.CBool(bDisabled)
	End If
	'
'	'If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
'	If sColor <> "" Then UI.AddColorDT("range", sColor)
'	If bHasLabel = True Then UI.AddAttrDT("has-label", bHasLabel)
'	If sHint <> "" Then UI.AddAttrDT("hint", sHint)
'	If sLabel <> "" Then UI.AddAttrDT("label", sLabel)
'	If sMaxValue <> "100" Then UI.AddAttrDT("max", sMaxValue)
'	If bMeasure = True Then UI.AddAttrDT("measure", bMeasure)
'	If sMinValue <> "0" Then UI.AddAttrDT("min", sMinValue)
'	UI.AddClassDT("range")
'	If sSize <> "" Then UI.AddSizeDT("range", sSize)
'	If sStepValue <> "" Then UI.AddAttrDT("step", sStepValue)
'	'If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
'	If sThumbColor <> "" Then UI.AddClassDT("thumb-color-" & sThumbColor)
'	If sValue <> "10" Then UI.AddAttrDT("value", sValue)
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
	If bHasLabel Then
		mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
  				<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
  				<input id="${mName}" type="range"></input>
				<label id="${mName}_hint" class="fieldset-label">${sHint}</label>
			</fieldset>"$).Get("#" & mName)
	Else
		mElement = mTarget.Append($"[BANCLEAN]<input id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></input>"$).Get("#" & mName)
	End If
	If bHasLabel Then UI.AddClassByID($"${mName}_control"$, "fieldset")
	UI.AddClass(mElement, "range")
	setColor(sColor)
	setDisabled(bDisabled)
	setSize(sSize)
	UI.AddAttr(mElement, "type", "range")
	setBackgroundColor(sBackgroundColor)
	setMaxValue(sMaxValue)
	setMinValue(sMinValue)
	setStepValue(sStepValue)
	setValue(sValue)
End Sub

'set Disabled
Sub setDisabled(b As Boolean)
	bDisabled = b
	CustProps.put("Disabled", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "disabled", b)
	Else
		UI.RemoveAttr(mElement, "disabled")
	End If
End Sub
'get Disabled
Sub getDisabled As Boolean
	Return bDisabled
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "range", sColor)
End Sub
'set Has Label
Sub setHasLabel(b As Boolean)
	bHasLabel = b
	CustProps.put("HasLabel", b)
End Sub
'set Hint
Sub setHint(s As String)
	sHint = s
	CustProps.put("Hint", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_hint"$, s)
End Sub
'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub
'set Max Value
Sub setMaxValue(s As String)
	sMaxValue = s
	CustProps.put("MaxValue", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "max", s)
End Sub
'set Measure
Sub setMeasure(b As Boolean)
	bMeasure = b
	CustProps.put("Measure", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "measure", b)
	Else
		UI.RemoveAttr(mElement, "measure")
	End If
End Sub
'set Min Value
Sub setMinValue(s As String)
	sMinValue = s
	CustProps.put("MinValue", s)
	If mElement = Null Then Return
	If s <> "0" Then UI.AddAttr(mElement, "min", s)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "size", "range", sSize)
End Sub
'set Step Value
Sub setStepValue(s As String)
	sStepValue = s
	CustProps.put("StepValue", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "step", s)
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
	If s <> "" Then UI.AddClass(mElement, "thumb-color-" & s)
End Sub
'set Value
Sub setValue(s As String)
	sValue = s
	CustProps.put("Value", s)
	If mElement = Null Then Return
	If s <> "" Then mElement.SetValue(sValue)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Has Label
Sub getHasLabel As Boolean
	Return bHasLabel
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
	sValue = mElement.GetValue
	Return sValue
End Sub