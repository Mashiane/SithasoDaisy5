B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 56, Description: Width
#DesignerProperty: Key: Indeterminate, DisplayName: Indeterminate, FieldType: Boolean, DefaultValue: False, Description: Indeterminate
#DesignerProperty: Key: LeftIcon, DisplayName: Left Icon, FieldType: String, DefaultValue: , Description: Left Icon
#DesignerProperty: Key: LeftIconColor, DisplayName: Left Icon Color, FieldType: String, DefaultValue: , Description: Left Icon Color
#DesignerProperty: Key: MinValue, DisplayName: Min Value, FieldType: String, DefaultValue: 0, Description: Min Value
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 0, Description: Value
#DesignerProperty: Key: MaxValue, DisplayName: Max Value, FieldType: String, DefaultValue: 100, Description: Max Value
#DesignerProperty: Key: RightIcon, DisplayName: Right Icon, FieldType: String, DefaultValue: , Description: Right Icon
#DesignerProperty: Key: RightIconColor, DisplayName: Right Icon Color, FieldType: String, DefaultValue: , Description: Right Icon Color
#DesignerProperty: Key: StepValue, DisplayName: Step Value, FieldType: String, DefaultValue: 1, Description: Step Value
#DesignerProperty: Key: Ticks, DisplayName: Ticks, FieldType: String, DefaultValue: , Description: Ticks
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
	'Public Root As SDUIElement
	Private sBackgroundColor As String = ""
	Private sColor As String = "none"
	Private sHeight As String = ""
	Private bIndeterminate As Boolean = False
	Private sLeftIcon As String = ""
	Private sLeftIconColor As String = ""
	Private sMaxValue As String = "100"
	Private sMinValue As String = "0"
	Private sRightIcon As String = ""
	Private sRightIconColor As String = ""
	Private sStepValue As String = "1"
	Private sTicks As String = ""
	Private sValue As String = "0"
	Private sWidth As String = "56"
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

'set value
Sub setValue(text As String)
	sValue = text
	CustProps.Put("Value", text)
	If mElement = Null Then Return
	UI.SetValue(mElement, text)
End Sub
'get value
Sub getValue As String
	Return UI.GetValue(mElement)
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		bIndeterminate = Props.GetDefault("Indeterminate", False)
		bIndeterminate = modSD5.CBool(bIndeterminate)
		sLeftIcon = Props.GetDefault("LeftIcon", "")
		sLeftIcon = modSD5.CStr(sLeftIcon)
		sLeftIconColor = Props.GetDefault("LeftIconColor", "")
		sLeftIconColor = modSD5.CStr(sLeftIconColor)
		sMaxValue = Props.GetDefault("MaxValue", "100")
		sMaxValue = modSD5.CStr(sMaxValue)
		sMinValue = Props.GetDefault("MinValue", "0")
		sMinValue = modSD5.CStr(sMinValue)
		sRightIcon = Props.GetDefault("RightIcon", "")
		sRightIcon = modSD5.CStr(sRightIcon)
		sRightIconColor = Props.GetDefault("RightIconColor", "")
		sRightIconColor = modSD5.CStr(sRightIconColor)
		sStepValue = Props.GetDefault("StepValue", "1")
		sStepValue = modSD5.CStr(sStepValue)
		sTicks = Props.GetDefault("Ticks", "")
		sTicks = modSD5.CStr(sTicks)
		sValue = Props.GetDefault("Value", "0")
		sValue = modSD5.CStr(sValue)
		sWidth = Props.GetDefault("Width", "56")
		sWidth = modSD5.CStr(sWidth)
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
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sColor <> "" Then UI.AddColorDT("progress", sColor)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sMaxValue <> "" Then UI.AddAttrDT("max", sMaxValue)
	If sMinValue <> "" Then UI.AddAttrDT("min", sMinValue)
	UI.AddClassDT("progress")
	If sStepValue <> "" Then UI.AddAttrDT("step", sStepValue)
	If sValue <> "" Then UI.AddAttrDT("value", sValue)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]<progress id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></progress>"$).Get("#" & mName)
	setIndeterminate(bIndeterminate)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	if s <> "" then UI.SetColor(mElement, "color", "progress", s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, s)
End Sub
'set Indeterminate
Sub setIndeterminate(b As Boolean)
	bIndeterminate = b
	CustProps.put("Indeterminate", b)
	If mElement = Null Then Return
	If b Then
		UI.RemoveAttr(mElement, "max")
		UI.RemoveAttr(mElement, "value")
		UI.RemoveAttr(mElement, "min")
	Else
		UI.AddAttr(mElement, "max", sMaxValue)
		UI.AddAttr(mElement, "value", sValue)
		UI.AddAttr(mElement, "min", sMinValue)
	End If
End Sub
'set Left Icon
Sub setLeftIcon(s As String)
	sLeftIcon = s
	CustProps.put("LeftIcon", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.AddAttr(mElement, "left-icon", s)
End Sub
'set Left Icon Color
Sub setLeftIconColor(s As String)
	sLeftIconColor = s
	CustProps.put("LeftIconColor", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.AddAttr(mElement, "left-icon-color", s)
End Sub
'set Max Value
Sub setMaxValue(s As String)
	sMaxValue = s
	CustProps.put("MaxValue", s)
	If mElement = Null Then Return
	UI.AddAttr(mElement, "max", s)
End Sub
'set Min Value
Sub setMinValue(s As String)
	sMinValue = s
	CustProps.put("MinValue", s)
	If mElement = Null Then Return
	UI.AddAttr(mElement, "min", s)
End Sub
'set Right Icon
Sub setRightIcon(s As String)
	sRightIcon = s
	CustProps.put("RightIcon", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.AddAttr(mElement, "right-icon", s)
End Sub
'set Right Icon Color
Sub setRightIconColor(s As String)
	sRightIconColor = s
	CustProps.put("RightIconColor", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.AddAttr(mElement, "right-icon-color", s)
End Sub
'set Step Value
Sub setStepValue(s As String)
	sStepValue = s
	CustProps.put("StepValue", s)
	If mElement = Null Then Return
	UI.AddAttr(mElement, "step", s)
End Sub
'set Ticks
Sub setTicks(s As String)
	sTicks = s
	CustProps.put("Ticks", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.AddAttr(mElement, "ticks", s)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
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
Sub getMaxValue As String
	Return sMaxValue
End Sub
'get Min Value
Sub getMinValue As String
	Return sMinValue
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
Sub getStepValue As String
	Return sStepValue
End Sub
'get Ticks
Sub getTicks As String
	Return sTicks
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub