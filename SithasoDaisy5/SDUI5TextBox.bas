B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Append (e As BANanoEvent)
#Event: Prepend (e As BANanoEvent)
#Event: Change (Value As String)
#Event: Input (Value As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: InputType, DisplayName: Input Type, FieldType: String, DefaultValue: normal, Description: Input Type, List: normal|legend|buttons
#DesignerProperty: Key: TypeOf, DisplayName: Type, FieldType: String, DefaultValue: text, Description: Type Of, List: date|datetime-local|email|month|number|password|search|tel|text|time|url|week
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: , Description: Label
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue: , Description: Placeholder
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Ghost, DisplayName: Ghost, FieldType: Boolean, DefaultValue: False, Description: Ghost
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: False, Description: Grow
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: MinLength, DisplayName: Min Length, FieldType: String, DefaultValue: , Description: Min Length
#DesignerProperty: Key: MaxLength, DisplayName: Max Length, FieldType: String, DefaultValue: , Description: Max Length
#DesignerProperty: Key: StepValue, DisplayName: Step Value, FieldType: String, DefaultValue: , Description: Step Value
#DesignerProperty: Key: MinValue, DisplayName: Min Value, FieldType: String, DefaultValue: , Description: Min Value
#DesignerProperty: Key: MaxValue, DisplayName: Max Value, FieldType: String, DefaultValue: , Description: Max Value
#DesignerProperty: Key: Pattern, DisplayName: Pattern, FieldType: String, DefaultValue: , Description: Pattern
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: Validator, DisplayName: Validator, FieldType: Boolean, DefaultValue: False, Description: Validator
#DesignerProperty: Key: ValidatorHint, DisplayName: Validator Hint, FieldType: String, DefaultValue: , Description: Validator Hint
#DesignerProperty: Key: PrependIcon, DisplayName: Prepend Icon, FieldType: String, DefaultValue: , Description: Prepend Icon
#DesignerProperty: Key: PrependVisible, DisplayName: Prepend Visible, FieldType: Boolean, DefaultValue: False, Description: Prepend Visible
#DesignerProperty: Key: AppendIcon, DisplayName: Append Icon, FieldType: String, DefaultValue: , Description: Append Icon
#DesignerProperty: Key: AppendVisible, DisplayName: Append Visible, FieldType: Boolean, DefaultValue: False, Description: Append Visible
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
	Private sColor As String = "none"
	Private bGhost As Boolean = False
	Private bGrow As Boolean = False
	Private sHint As String = ""
	Private sLabel As String = ""
	Private sMaxLength As String = ""
	Private sMaxValue As String = ""
	Private sMinLength As String = ""
	Private sMinValue As String = ""
	Private sPattern As String = ""
	Private sPlaceholder As String = ""
	Private bRequired As Boolean = False
	Private sSize As String = "md"
	Private sStepValue As String = ""
	Private sTypeOf As String = "text"
	Private bValidator As Boolean = False
	Private sValidatorHint As String = ""
	Private sValue As String = ""
	Public CONST TYPEOF_DATE As String = "date"
	Public CONST TYPEOF_DATETIME_LOCAL As String = "datetime-local"
	Public CONST TYPEOF_EMAIL As String = "email"
	Public CONST TYPEOF_MONTH As String = "month"
	Public CONST TYPEOF_NONE As String = "none"
	Public CONST TYPEOF_NUMBER As String = "number"
	Public CONST TYPEOF_PASSWORD As String = "password"
	Public CONST TYPEOF_SEARCH As String = "search"
	Public CONST TYPEOF_TEL As String = "tel"
	Public CONST TYPEOF_TEXT As String = "text"
	Public CONST TYPEOF_TIME As String = "time"
	Public CONST TYPEOF_URL As String = "url"
	Public CONST TYPEOF_WEEK As String = "week"
	Private sAppendIcon As String = ""
	Private bAppendVisible As Boolean = False
	Private sPrependIcon As String = ""
	Private bPrependVisible As Boolean = False
	Private sInputType As String = "normal"
	Private sWidth As String = "full"
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
            'UI.ExcludeBackgroundColor = True
            'UI.ExcludeTextColor = True
            'UI.ExcludeVisible = True
            'UI.ExcludeEnabled = True
            sColor = Props.GetDefault("Color", "none")
            sColor = modSD5.CStr(sColor)
            If sColor = "none" Then sColor = ""
            bGhost = Props.GetDefault("Ghost", False)
            bGhost = modSD5.CBool(bGhost)
            bGrow = Props.GetDefault("Grow", False)
            bGrow = modSD5.CBool(bGrow)
            sHint = Props.GetDefault("Hint", "")
            sHint = modSD5.CStr(sHint)
            sLabel = Props.GetDefault("Label", "")
            sLabel = modSD5.CStr(sLabel)
            sMaxLength = Props.GetDefault("MaxLength", "")
            sMaxLength = modSD5.CStr(sMaxLength)
            sMaxValue = Props.GetDefault("MaxValue", "")
            sMaxValue = modSD5.CStr(sMaxValue)
            sMinLength = Props.GetDefault("MinLength", "")
            sMinLength = modSD5.CStr(sMinLength)
            sMinValue = Props.GetDefault("MinValue", "")
            sMinValue = modSD5.CStr(sMinValue)
            sPattern = Props.GetDefault("Pattern", "")
            sPattern = modSD5.CStr(sPattern)
            sPlaceholder = Props.GetDefault("Placeholder", "")
            sPlaceholder = modSD5.CStr(sPlaceholder)
            bRequired = Props.GetDefault("Required", False)
            bRequired = modSD5.CBool(bRequired)
            sSize = Props.GetDefault("Size", "md")
            sSize = modSD5.CStr(sSize)
            If sSize = "none" Then sSize = ""
            sStepValue = Props.GetDefault("StepValue", "")
            sStepValue = modSD5.CStr(sStepValue)
            sTypeOf = Props.GetDefault("TypeOf", "text")
            sTypeOf = modSD5.CStr(sTypeOf)
            bValidator = Props.GetDefault("Validator", False)
            bValidator = modSD5.CBool(bValidator)
            sValidatorHint = Props.GetDefault("ValidatorHint", "")
            sValidatorHint = modSD5.CStr(sValidatorHint)
            sValue = Props.GetDefault("Value", "")
			sValue = modSD5.CStr(sValue)
			sAppendIcon = Props.GetDefault("AppendIcon", "")
			sAppendIcon = modSD5.CStr(sAppendIcon)
			bAppendVisible = Props.GetDefault("AppendVisible", False)
			bAppendVisible = modSD5.CBool(bAppendVisible)
			sPrependIcon = Props.GetDefault("PrependIcon", "")
			sPrependIcon = modSD5.CStr(sPrependIcon)
			bPrependVisible = Props.GetDefault("PrependVisible", False)
			bPrependVisible = modSD5.CBool(bPrependVisible)
			sInputType = Props.GetDefault("InputType", "normal")
			sInputType = modSD5.CStr(sInputType)
			sWidth = Props.GetDefault("Width", "full")
			sWidth = modSD5.CStr(sWidth)
        End If
        '
		If sInputType = "buttons" Then UI.AddClassDT("join")
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
		Select Case sInputType
		Case "legend"	
			mElement = mTarget.Append($"[BANCLEAN]
				<fieldset id="${mName}_control" class="${xclasses} fieldset" ${xattrs} style="${xstyles}">
	        		<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
	        		<div id="${mName}_join" class="join">
	          			<button id="${mName}_prepend" class="btn join-item hidden">
							<img id="${mName}_prependimage" src="${sPrependIcon}" alt=""></img>
						</button>
	          			<input id="${mName}" class="input join-item tlradius trradius blradius brradius w-full"/>
	          			<div id="${mName}_required" class="indicator join-item hidden">
	            			<span id="${mName}_badge" class="indicator-item badge badge-error badge-xs hidden"></span>
	          			</div>
	          			<button id="${mName}_append" class="btn join-item hidden"><img id="${mName}_appendimage" src="${sAppendIcon}" alt=""></img></button>
	        		</div>          
	        		<p id="${mName}_hint" class="fieldset-label">${sHint}</p>
	      		</fieldset>"$).Get("#" & mName)
			UI.OnEventByID($"${mName}_prepend"$, "click", mCallBack, $"${mName}_prepend"$)
			UI.OnEventByID($"${mName}_append"$, "click", mCallBack, $"${mName}_append"$)
		Case "buttons"
			mElement = mTarget.Append($"[BANCLEAN]			
				<div id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
          			<button id="${mName}_prepend" class="btn join-item hidden">
						<img id="${mName}_prependimage" src="${sPrependIcon}" alt=""></img>
					</button>
          			<input id="${mName}" class="input join-item tlradius trradius blradius brradius w-full"></input>
          			<div id="${mName}_required" class="indicator join-item hidden">
            			<span id="${mName}_badge" class="indicator-item badge badge-error badge-xs hidden"></span>
          			</div>
          			<button id="${mName}_append" class="btn join-item hidden"><img id="${mName}_appendimage" src="${sAppendIcon}" alt=""></img></button>
        		</div>"$).Get("#" & mName)
			UI.OnEventByID($"${mName}_prepend"$, "click", mCallBack, $"${mName}_prepend"$)
			UI.OnEventByID($"${mName}_append"$, "click", mCallBack, $"${mName}_append"$)
		Case "normal"
			mElement = mTarget.Append($"[BANCLEAN]<input id="${mName}" class="${xclasses} input" ${xattrs} style="${xstyles}"></input>"$).Get("#" & mName)
		End Select
		setColor(sColor)
		setGhost(bGhost)
		setGrow(bGrow)
		setHint(sHint)
		setMaxLength(sMaxLength)
		setMinLength(sMinLength)
		setMaxValue(sMaxValue)
		setMinValue(sMinValue)
		setPattern(sPattern)
		setPlaceholder(sPlaceholder)
		setRequired(bRequired)
		BANano.Await(setSize(sSize))
	setStepValue(sStepValue)
	setTypeOf(sTypeOf)
	setEnabled(bEnabled)
	setAppendIcon(sAppendIcon)
	setAppendVisible(bAppendVisible)
	setPrependIcon(sPrependIcon)
	setPrependVisible(bPrependVisible)
	setWidth(sWidth)
'	setVisible(bVisible)
	UI.OnEvent(mElement, "change", Me, "changed")
	UI.OnEvent(mElement, "input", Me, "changed1")
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	Select Case sInputType
	Case "legend"
		UI.SetWidthByID($"${mName}_join"$, s)
	Case "buttons"
		UI.SetWidthByID($"${mName}_control"$, s)
	Case "normal"
		If s <> "" Then UI.SetWidth(mElement, sWidth)
	End Select
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

private Sub changed1(e As BANanoEvent)			'ignore
	Dim cvalue As String = mElement.GetValue
	BANano.CallSub(mCallBack, $"${mName}_input"$, Array(cvalue))
End Sub

private Sub changed(e As BANanoEvent)			'ignore
	Dim cvalue As String = mElement.GetValue
	BANano.CallSub(mCallBack, $"${mName}_change"$, Array(cvalue))
End Sub



'legend|normal|buttons
Sub setInputType(s As String)
	sInputType = s
	CustProps.Put("InputType", s)
End Sub

Sub getInputType As String
	Return sInputType
End Sub

Sub setAppendIcon(s As String)
	sAppendIcon = s
	CustProps.put("AppendIcon", s)
	If mElement = Null Then Return
	If s = "" Then
		UI.SetVisibleByID($"${mName}_append"$, False)
	Else
		UI.RemoveClass(mElement, "trradius")
		UI.RemoveClass(mElement, "brradius")
		UI.SetVisibleByID($"${mName}_append"$, True)
		UI.SetImageByID($"${mName}_appendimage"$, s)
	End If
End Sub

'set Append Visible
Sub setAppendVisible(b As Boolean)
	bAppendVisible = b
	CustProps.put("AppendVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_append"$, b)
End Sub
'set Prepend Icon
Sub setPrependIcon(s As String)
	sPrependIcon = s
	CustProps.put("PrependIcon", s)
	If mElement = Null Then Return
	If s = "" Then
		UI.SetVisibleByID($"${mName}_prepend"$, False)
	Else
		UI.RemoveClass(mElement, "tlradius")
		UI.RemoveClass(mElement, "blradius")
		UI.SetVisibleByID($"${mName}_prepend"$, True)
		UI.SetImageByID($"${mName}_prependimage"$, s)
	End If
End Sub
'set Prepend Visible
Sub setPrependVisible(b As Boolean)
	bPrependVisible = b
	CustProps.put("PrependVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_prepend"$, b)
End Sub
'get Append Icon
Sub getAppendIcon As String
	Return sAppendIcon
End Sub
'get Append Visible
Sub getAppendVisible As Boolean
	Return bAppendVisible
End Sub
'get Prepend Icon
Sub getPrependIcon As String
	Return sPrependIcon
End Sub
'get Prepend Visible
Sub getPrependVisible As Boolean
	Return bPrependVisible
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
	If mElement = Null Then Return ""
	sValue = UI.GetValue(mElement)
	Return sValue
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


'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
    sColor = s
    CustProps.put("Color", s)
    If mElement = Null Then Return
    If s <> "" Then UI.SetColor(mElement, "color", "input", sColor)
End Sub

'set Ghost
Sub setGhost(b As Boolean)
        bGhost = b
        CustProps.put("Ghost", b)
        If mElement = Null Then Return
        If b = True Then
            UI.AddClass(mElement, "input-ghost")
        Else
            UI.RemoveClass(mElement, "input-ghost")
        End If
End Sub
'set Grow
Sub setGrow(b As Boolean)
        bGrow = b
        CustProps.put("Grow", b)
        If mElement = Null Then Return
        If b = True Then
            UI.AddClass(mElement, "grow")
        Else
            UI.RemoveClass(mElement, "grow")
        End If
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
'set Max Length
Sub setMaxLength(s As String)
        sMaxLength = s
        CustProps.put("MaxLength", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "maxlength", s)
End Sub
'set Max Value
Sub setMaxValue(s As String)
        sMaxValue = s
        CustProps.put("MaxValue", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "max", s)
End Sub
'set Min Length
Sub setMinLength(s As String)
        sMinLength = s
        CustProps.put("MinLength", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "minlength", s)
End Sub
'set Min Value
Sub setMinValue(s As String)
        sMinValue = s
        CustProps.put("MinValue", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "min", s)
End Sub
'set Pattern
Sub setPattern(s As String)
        sPattern = s
        CustProps.put("Pattern", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "pattern", s)
End Sub
'set Placeholder
Sub setPlaceholder(s As String)
        sPlaceholder = s
        CustProps.put("Placeholder", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "placeholder", s)
End Sub
'set Required
Sub setRequired(b As Boolean)
        bRequired = b
        CustProps.put("Required", b)
        If mElement = Null Then Return
        If b = True Then
            UI.SetAttr(mElement, "required", b)
			UI.SetVisibleByID($"${mName}_required"$, True)
			UI.SetVisibleByID($"${mName}_badge"$, True)
		Else
			UI.SetVisibleByID($"${mName}_required"$, False)
			UI.SetVisibleByID($"${mName}_badge"$, False)
			UI.RemoveAttr(mElement, "required")
        End If
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
    sSize = s
    CustProps.put("Size", s)
    If mElement = Null Then Return
	If s = "" Then sSize = "md"
	BANano.Await(UI.SetSize(mElement, "size", "input", sSize))
	Select Case sInputType
	Case "buttons", "legend"
		BANano.Await(UI.SetSizeByID($"${mName}_prepend"$, "size", "btn", sSize))
		BANano.Await(UI.SetButtonImageSizeByID($"${mName}_prependimage"$, sSize))
		BANano.Await(UI.SetSizeByID($"${mName}_append"$, "size", "btn", sSize))
		BANano.Await(UI.SetButtonImageSizeByID($"${mName}_appendimage"$, sSize))
	End Select
End Sub
'set Step Value
Sub setStepValue(s As String)
        sStepValue = s
        CustProps.put("StepValue", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "step", s)
End Sub
'set Type Of
'options: date|datetime-local|email|input|month|number|password|search|tel|text|time|url|week
Sub setTypeOf(s As String)
    sTypeOf = s
    CustProps.put("TypeOf", s)
    If mElement = Null Then Return
    If s <> "text" Then UI.SetAttr(mElement, "type", s)
	If sTypeOf = "tel" Then UI.AddClass(mElement, "tabular-nums")
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
        If s <> "" Then UI.SetAttr(mElement, "validator-hint", s)
End Sub
'get Color
Sub getColor As String
        Return sColor
End Sub
'get Ghost
Sub getGhost As Boolean
        Return bGhost
End Sub
'get Grow
Sub getGrow As Boolean
        Return bGrow
End Sub
'get Hint
Sub getHint As String
        Return sHint
End Sub
'get Label
Sub getLabel As String
        Return sLabel
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
'get Pattern
Sub getPattern As String
        Return sPattern
End Sub
'get Placeholder
Sub getPlaceholder As String
        Return sPlaceholder
End Sub
'get Required
Sub getRequired As Boolean
        Return bRequired
End Sub
'get Size
Sub getSize As String
        Return sSize
End Sub
'get Step Value
Sub getStepValue As String
        Return sStepValue
End Sub
'get Type Of
Sub getTypeOf As String
        Return sTypeOf
End Sub
'get Validator
Sub getValidator As Boolean
        Return bValidator
End Sub
'get Validator Hint
Sub getValidatorHint As String
        Return sValidatorHint
End Sub