B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: HasLabel, DisplayName: Has Label, FieldType: Boolean, DefaultValue: False, Description: Has Label
#DesignerProperty: Key: Legend, DisplayName: Legend, FieldType: String, DefaultValue: Options , Description: Legend
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: CheckBox , Description: Label
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Checked, DisplayName: Checked, FieldType: Boolean, DefaultValue: False, Description: Checked
#DesignerProperty: Key: CheckedColor, DisplayName: Checked Color, FieldType: String, DefaultValue: , Description: Checked Color
#DesignerProperty: Key: UncheckedColor, DisplayName: Unchecked Color, FieldType: String, DefaultValue: , Description: Unchecked Color
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
	Private sCheckedColor As String = ""
	Private sColor As String = "none"
	Private bHasLabel As Boolean = False
	Private sHint As String = ""
	Private bIndeterminate As Boolean = False
	Private sLabel As String = "CheckBox"
	Private sLegend As String = "Options"
	Private bRequired As Boolean = False
	Private sSize As String = "none"
	Private sTitle As String = ""
	Private sUncheckedColor As String = ""
	Private bValidator As Boolean = False
	Private sValidatorHint As String = ""
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
	if s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub
'
Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	if s <> "" Then UI.SetStyles(mElement, sRawStyles)
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
	if s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
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
		bChecked = modSD5.CBool(bChecked)
		sCheckedColor = Props.GetDefault("CheckedColor", "")
		sCheckedColor = modSD5.CStr(sCheckedColor)
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bHasLabel = Props.GetDefault("HasLabel", False)
		bHasLabel = modSD5.CBool(bHasLabel)
		sHint = Props.GetDefault("Hint", "")
		sHint = modSD5.CStr(sHint)
		bIndeterminate = Props.GetDefault("Indeterminate", False)
		bIndeterminate = modSD5.CBool(bIndeterminate)
		sLabel = Props.GetDefault("Label", "CheckBox")
		sLabel = modSD5.CStr(sLabel)
		sLegend = Props.GetDefault("Legend", "Options")
		sLegend = modSD5.CStr(sLegend)
		bRequired = Props.GetDefault("Required", False)
		bRequired = modSD5.CBool(bRequired)
		sSize = Props.GetDefault("Size", "none")
		sSize = modSD5.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sTitle = Props.GetDefault("Title", "")
		sTitle = modSD5.CStr(sTitle)
		sUncheckedColor = Props.GetDefault("UncheckedColor", "")
		sUncheckedColor = modSD5.CStr(sUncheckedColor)
		bValidator = Props.GetDefault("Validator", False)
		bValidator = modSD5.CBool(bValidator)
		sValidatorHint = Props.GetDefault("ValidatorHint", "")
		sValidatorHint = modSD5.CStr(sValidatorHint)
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
	If bHasLabel Then
		mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
  				<legend id="${mName}_legend" class="fieldset-legend">${sLegend}</legend>
				<label id="${mName}_labelhost" class="fieldset-label">
					<input id="${mName}" type="checkbox"></input>
					<span id="${mName}_label">${sLabel}</span>
				</label>	
			</fieldset>"$).Get("#" & mName)
	Else
		mElement = mTarget.Append($"[BANCLEAN]<input id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></input>"$).Get("#" & mName)
	End If
	If bHasLabel Then UI.AddClassByID($"${mName}_control"$, "fieldset")
	UI.AddClass(mElement, "checkbox")
	setColor(sColor)
	setRequired(bRequired)
	setSize(sSize)
	UI.AddAttr(mElement, "type", "checkbox")
	setChecked(bChecked)
	setIndeterminate(bIndeterminate)
	setCheckedColor(sCheckedColor)
End Sub

'set Checked
Sub setChecked(b As Boolean)
	bChecked = b
	CustProps.put("Checked", b)
	If mElement = Null Then Return
	mElement.SetChecked(b)
End Sub
'set Checked Color
Sub setCheckedColor(s As String)
	sCheckedColor = s
	CustProps.put("CheckedColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetCheckedTextColor(mElement, s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "checkbox", sColor)
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
'set Indeterminate
Sub setIndeterminate(b As Boolean)
	bIndeterminate = b
	CustProps.put("Indeterminate", b)
	If mElement = Null Then Return
	If b = True Then
		mElement.SetField("indeterminate", b)
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
Sub setRequired(b As Boolean)
	bRequired = b
	CustProps.put("Required", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "required", b)
	Else
		UI.RemoveAttr(mElement, "required")
	End If
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "size", "checkbox", sSize)
End Sub
'set Title
Sub setTitle(s As String)
	sTitle = s
	CustProps.put("Title", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "title", s)
End Sub
'set Unchecked Color
Sub setUncheckedColor(s As String)
	sUncheckedColor = s
	CustProps.put("UncheckedColor", s)
	If mElement = Null Then Return
'	If s <> "" Then UI.AddAttr(mElement, "unchecked-color", s)
End Sub
'set Validator
Sub setValidator(b As Boolean)
	bValidator = b
	CustProps.put("Validator", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "validator")
	Else
		UI.RemoveClass(mElement, "validator")
	End If
End Sub
'set Validator Hint
Sub setValidatorHint(s As String)
	sValidatorHint = s
	CustProps.put("ValidatorHint", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "validator-hint", s)
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
'get Has Label
Sub getHasLabel As Boolean
	Return bHasLabel
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
'get Title
Sub getTitle As String
	Return sTitle
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