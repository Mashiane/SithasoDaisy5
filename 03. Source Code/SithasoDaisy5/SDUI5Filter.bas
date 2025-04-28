B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Value As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TypeOf, DisplayName: Type, FieldType: String, DefaultValue: default, Description: Type Of, List: legend|default
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: CheckBox Group, Description: Label
#DesignerProperty: Key: RawOptions, DisplayName: Options, FieldType: String, DefaultValue: b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r, Description: Options
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color
#DesignerProperty: Key: ActiveColor, DisplayName: Active Color, FieldType: String, DefaultValue: #00ff00, Description: Active Color
#DesignerProperty: Key: Shape, DisplayName: Shape, FieldType: String, DefaultValue: full, Description: Shape, List: square|circle|none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
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
	Private sRawOptions As String = "b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r"
	Private sActiveColor As String = "#00ff00"
	Private sColor As String = "primary"
	Private sShape As String = "full"
	Private sSize As String = "none"
	Private sValue As String = ""
	Private items As Map
	Private sTypeOf As String = "default"
	Private sLabel As String = "Filter"
	Private sBackgroundColor As String = "base-200"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"
	Private bRequired As Boolean = False
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize	
	items.Initialize
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
		UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sRawOptions = Props.GetDefault("RawOptions", "b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r")
		sRawOptions = UI.CStr(sRawOptions)
		sActiveColor = Props.GetDefault("ActiveColor", "none")
		sActiveColor = UI.CStr(sActiveColor)
		sColor = Props.GetDefault("Color", "primary")
		sColor = UI.CStr(sColor)
		sShape = Props.GetDefault("Shape", "")
		sShape = UI.CStr(sShape)
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sValue = Props.GetDefault("Value", "")
		sValue = UI.CStr(sValue)
		sTypeOf = Props.GetDefault("TypeOf", "default")
		sTypeOf = UI.CStr(sTypeOf)
		sLabel = Props.GetDefault("Label", "Label")
		sLabel = UI.CStr(sLabel)
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
		bRequired = Props.GetDefault("Required", False)
		bRequired = UI.CBool(bRequired)
	End If
	'
	UI.AddClassDT("w-full")
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
	Select Case sTypeOf
	Case "legend"
		mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="fieldset rounded-sm ${xclasses}" ${xattrs} style="${xstyles}">
        		<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
        		<div id="${mName}_join" class="join">
          			<div id="${mName}" class="filter join-item w-full"></div>
          			<div id="${mName}_required" class="indicator join-item hidden">
            			<span id="${mName}_badge" class="indicator-item badge badge-error size-2 p-0 hidden"></span>
          			</div>
          		</div>          
        	</fieldset>"$).Get("#" & mName)
		setBackgroundColor(sBackgroundColor)
		setBorder(bBorder)
		setBorderColor(sBorderColor)
		setRoundedBox(bRoundedBox)
		setShadow(sShadow)
		setRequired(bRequired)
	Case Else	
		mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="filter ${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
	End Select
'	setVisible(bVisible)
	BANano.Await(setOptions(sRawOptions))
	BANano.Await(setValue(sValue))
End Sub

Sub setLabel(s As String)
	sLabel = s
	CustProps.Put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub

Sub getLabel As String
	Return sLabel
End Sub

'set Required
Sub setRequired(b As Boolean)				'ignoredeadcode
	bRequired = b
	CustProps.put("Required", b)
	If mElement = Null Then Return
	If b = True Then
		UI.SetVisibleByID($"${mName}_required"$, True)
		UI.SetVisibleByID($"${mName}_badge"$, True)
	Else
		UI.SetVisibleByID($"${mName}_required"$, False)
		UI.SetVisibleByID($"${mName}_badge"$, False)
	End If
End Sub

Sub getRequired As Boolean
	Return bRequired
End Sub

'set Background Color
Sub setBackgroundColor(s As String)			'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If sTypeOf <> "legend" Then Return
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

'set Value
Sub setValue(s As String)			'ignoredeadcode
	sValue = s
	CustProps.put("Value", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetCheckedByID($"${sValue}_${mName}"$, True)
End Sub

'get Value
Sub getValue As String
	If mElement = Null Then Return ""
	Dim selectedItems As List
	selectedItems.Initialize
	For Each item As String In items.keys
		Dim b As Boolean = UI.GetCheckedByID(item)
		If b Then
			Dim ok As String = UI.MvField(item, 1, "_")
			selectedItems.Add(ok)
		End If
	Next
	sValue = UI.Join(";", selectedItems)
	Return sValue
End Sub

Sub ResetValidation
	Try
		setBorderColor("success")
	Catch
	End Try		'ignore
End Sub

'run validation
Sub IsBlank As Boolean
	Dim v As String = getValue
	v = UI.CStr(v)
	v = v.Trim
	If v = "" Then
		setBorderColor("error")
		Return True
	End If
	setBorderColor("success")
	Return False
End Sub

Sub Clear			'ignoredeadcode
	If mElement = Null Then Return
	mElement.empty
	items.Initialize
	Dim itemShape As String = UI.FixRounded(sShape)
	Dim itemSize As String = UI.FixSize("btn", sSize)
	mElement.Append($"<input id="reset_${mName}" class="btn ${itemShape} ${itemSize} filter-reset" aria-label="x" value="reset" type="radio" name="${mName}"></input>"$)
End Sub

Sub AddOption(sKey As String, xValue As String)
	If mElement = Null Then Return
	sKey = UI.CleanID(sKey)
	Dim itemShape As String = UI.FixRounded(sShape)
	Dim itemSize As String = UI.FixSize("btn", sSize)
	Dim itemColor As String = UI.FixColor("btn", sColor)
	Dim checkedColor As String = ""
	Dim borderColor As String = ""
	If sActiveColor <> "" Then
		Dim abg As String = UI.FixColor("bg", sActiveColor)
		checkedColor = $"checked:${abg}"$
		Dim bbg As String = UI.FixColor("border", sActiveColor)
		borderColor = $"checked:${bbg}"$
	End If
	mElement.Append($"<input id="${sKey}_${mName}" class="btn ${itemShape} ${itemSize} ${itemColor} ${checkedColor} ${borderColor}" type="radio" value="${sKey}" name="${mName}" aria-label="${xValue}"></input>"$)
	items.put($"${sKey}_${mName}"$, $"${sKey}_${mName}"$)
	UI.OnEventByID($"${sKey}_${mName}"$, "change", Me, "changed")
End Sub

'set Raw Options
Sub setOptions(s As String)			'ignoredeadcode
	sRawOptions = s
	CustProps.put("RawOptions", s)
	If mElement = Null Then Return
	Dim m As Map = UI.GetKeyValues(s, False)
	BANano.Await(SetOptionsFromMap(m))
End Sub

'load the items from a map
Sub SetOptionsFromMap(m As Map)			'ignoredeadcode
	If mElement = Null Then Return
	BANano.Await(Clear)
	If m.Size = 0 Then Return
	'
	Dim itemShape As String = UI.FixRounded(sShape)
	Dim itemSize As String = UI.FixSize("btn", sSize)
	Dim itemColor As String = UI.FixColor("btn", sColor)
	Dim checkedColor As String = ""
	Dim borderColor As String = ""
	If sActiveColor <> "" Then
		Dim abg As String = UI.FixColor("bg", sActiveColor)
		checkedColor = $"checked:${abg}"$
		Dim bbg As String = UI.FixColor("border", sActiveColor)
		borderColor = $"checked:${bbg}"$
	End If
	Dim sb As StringBuilder
	sb.Initialize
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		k = UI.CleanID(k)
		sb.Append($"<input id="${k}_${mName}" class="btn ${itemShape} ${itemSize} ${itemColor} ${checkedColor} ${borderColor}" type="radio" value="${k}" name="${mName}" aria-label="${v}"></input>"$)
		items.put($"${k}_${mName}"$, $"${k}_${mName}"$)
	Next
	mElement.Append(sb.ToString)
	For Each item As String In items.keys
		UI.OnEventByID(item, "change", Me, "changed")
	Next
End Sub


private Sub changed(e As BANanoEvent)			'ignoreDeadCode
	e.PreventDefault
	Dim xChecked As String = UI.GetValueByID(e.ID)
	BANano.CallSub(mCallBack, $"${mEventName}_change"$, Array(xChecked))
End Sub

'get Raw Options
Sub getOptions As String
	Return sRawOptions
End Sub

'set Active Color
Sub setActiveColor(s As String)
	sActiveColor = s
	CustProps.put("ActiveColor", s)
End Sub

'set Color
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
End Sub

'set Shape
'options: square|circle|none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setShape(s As String)
	sShape = s
	CustProps.put("Shape", s)
End Sub

'get Active Color
Sub getActiveColor As String
	Return sActiveColor
End Sub

'get Color
Sub getColor As String
	Return sColor
End Sub

'get Shape
Sub getShape As String
	Return sShape
End Sub

'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
    sSize = s
    CustProps.put("Size", s)
End Sub

'get Size
Sub getSize As String
	Return sSize
End Sub

Sub setTypeOf(s As String)
	sTypeOf = s
	CustProps.Put("TypeOf", s)
End Sub

Sub getTypeOf As String
	Return sTypeOf
End Sub