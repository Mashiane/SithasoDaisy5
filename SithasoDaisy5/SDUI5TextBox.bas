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
#DesignerProperty: Key: InputType, DisplayName: Input Type, FieldType: String, DefaultValue: normal, Description: Input Type, List: normal|legend|buttons|label-input|buttons-floating
#DesignerProperty: Key: TypeOf, DisplayName: Type, FieldType: String, DefaultValue: text, Description: Type Of, List: dialer|date|datetime-local|email|month|number|password|search|tel|text|time|url|week
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: , Description: Label
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue: , Description: Placeholder
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: ShowEyes, DisplayName: Show Eyes, FieldType: Boolean, DefaultValue: False, Description: Show Eyes
#DesignerProperty: Key: Ghost, DisplayName: Ghost, FieldType: Boolean, DefaultValue: False, Description: Ghost
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: False, Description: Grow
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: MinLength, DisplayName: Min Length, FieldType: String, DefaultValue: , Description: Min Length
#DesignerProperty: Key: MaxLength, DisplayName: Max Length, FieldType: String, DefaultValue: , Description: Max Length
#DesignerProperty: Key: MinValue, DisplayName: Min Value, FieldType: String, DefaultValue: , Description: Min Value
#DesignerProperty: Key: StepValue, DisplayName: Step Value, FieldType: String, DefaultValue: , Description: Step Value
#DesignerProperty: Key: MaxValue, DisplayName: Max Value, FieldType: String, DefaultValue: , Description: Max Value
#DesignerProperty: Key: Pattern, DisplayName: Pattern, FieldType: String, DefaultValue: , Description: Pattern
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: Validator, DisplayName: Validator, FieldType: Boolean, DefaultValue: False, Description: Validator
#DesignerProperty: Key: ValidatorHint, DisplayName: Validator Hint, FieldType: String, DefaultValue: , Description: Validator Hint
#DesignerProperty: Key: PrependImage, DisplayName: Prepend Image, FieldType: String, DefaultValue: , Description: Prepend Image
#DesignerProperty: Key: PrependIcon, DisplayName: Prepend Icon, FieldType: String, DefaultValue: , Description: Prepend Icon
#DesignerProperty: Key: PrependVisible, DisplayName: Prepend Visible, FieldType: Boolean, DefaultValue: False, Description: Prepend Visible
#DesignerProperty: Key: AppendImage, DisplayName: Append Image, FieldType: String, DefaultValue: , Description: Append Image
#DesignerProperty: Key: AppendIcon, DisplayName: Append Icon, FieldType: String, DefaultValue: , Description: Append Icon
#DesignerProperty: Key: AppendVisible, DisplayName: Append Visible, FieldType: Boolean, DefaultValue: False, Description: Append Visible
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
	Private sBackgroundColor As String = "base-200"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"
	Private bShowEyes As Boolean = False
	Private sAppendImage As String = ""
	Private sPrependImage As String = ""
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
            UI.ExcludeBackgroundColor = True
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
            If sSize = "none" Then sSize = "md"
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
			bShowEyes = Props.GetDefault("ShowEyes", False)
			bShowEyes = modSD5.CBool(bShowEyes)
			sAppendImage = Props.GetDefault("AppendImage", "")
			sAppendImage = modSD5.CStr(sAppendImage)
			sPrependImage = Props.GetDefault("PrependImage", "")
			sPrependImage = modSD5.CStr(sPrependImage)
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
		Select Case sInputType
		Case "legend"	
			mElement = mTarget.Append($"[BANCLEAN]
				<fieldset id="${mName}_control" class="${xclasses} fieldset" ${xattrs} style="${xstyles}">
	        		<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
	        		<div id="${mName}_join" class="join">
	          			<button id="${mName}_prepend" class="btn join-item hidden">
							<img id="${mName}_prependimage" class="hidden" src="${sPrependImage}" alt=""></img>
							<i id="${mName}_prependicon" data-icon="${sPrependIcon}" class="hidden ${sPrependIcon}"></i>
						</button>
	          			<input id="${mName}" class="input join-item tlradius trradius blradius brradius w-full"/>
	          			<div id="${mName}_required" class="indicator join-item hidden">
	            			<span id="${mName}_badge" class="indicator-item badge badge-error size-2 p-0 hidden"></span>
	          			</div>
	          			<button id="${mName}_append" class="btn join-item hidden">
							<img id="${mName}_appendimage" class="hidden" src="${sAppendImage}" alt=""></img>
							<i id="${mName}_appendicon" data-icon="${sAppendIcon}" class="hidden ${sAppendIcon}"></i>
						</button>
	        		</div>          
	        		<p id="${mName}_hint" class="fieldset-label hide">${sHint}</p>
	      		</fieldset>"$).Get("#" & mName)
				setBackgroundColor(sBackgroundColor)
				setBorder(bBorder)
				setBorderColor(sBorderColor)
				setRoundedBox(bRoundedBox)
				setShadow(sShadow)
			UI.OnEventByID($"${mName}_prepend"$, "click", mCallBack, $"${mName}_prepend"$)
			UI.OnEventByID($"${mName}_append"$, "click", mCallBack, $"${mName}_append"$)
		Case "buttons"
			mElement = mTarget.Append($"[BANCLEAN]			
				<div id="${mName}_control" class="join ${xclasses}" ${xattrs} style="${xstyles}">
          			<button id="${mName}_prepend" class="btn join-item hidden">
						<img id="${mName}_prependimage" class="hidden" src="${sPrependImage}" alt=""></img>
						<i id="${mName}_prependicon" data-icon="${sPrependIcon}" class="hidden ${sPrependIcon}"></i>
					</button>
          			<input id="${mName}" class="input join-item tlradius trradius blradius brradius w-full"></input>
          			<div id="${mName}_required" class="indicator join-item hidden">
            			<span id="${mName}_badge" class="indicator-item badge badge-error size-2 p-0 hidden"></span>
          			</div>
          			<button id="${mName}_append" class="btn join-item hidden">
						<img id="${mName}_appendimage" class="hidden" src="${sAppendImage}" alt=""></img>
						<i id="${mName}_appendicon" data-icon="${sAppendIcon}" class="hidden ${sAppendIcon}"></i>
					</button>
        		</div>"$).Get("#" & mName)
			UI.OnEventByID($"${mName}_prepend"$, "click", mCallBack, $"${mName}_prepend"$)
			UI.OnEventByID($"${mName}_append"$, "click", mCallBack, $"${mName}_append"$)
		Case "label-input"
			mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
				<label id="${mName}_legend" class="fieldset-label">${sLabel}</label>
				<input id="${mName}" class="input w-full" type="text"></input>
			</div>"$).Get("#" & mName)
		Case "buttons-floating"
			mElement = mTarget.Append($"[BANCLEAN]
				<div id="${mName}_control" class="join w-full ${xclasses}" ${xattrs} style="${xstyles}">
					<button id="${mName}_prepend" class="btn join-item hidden">
						<img id="${mName}_prependimage" class="hidden" src="${sPrependImage}" alt=""></img>
						<i id="${mName}_prependicon" data-icon="${sPrependIcon}" class="hidden ${sPrependIcon}"></i>
					</button>
        			<label id="${mName}_floating" class="floating-label input join-item w-full tlradius trradius blradius brradius">
          				<span id="${mName}_legend" class="label">${sLabel}</span>
						<input id="${mName}" class="tlradius"></input>          				
        			</label>
					<div id="${mName}_required" class="indicator join-item hidden">
            			<span id="${mName}_badge" class="indicator-item badge badge-error size-2 p-0 hidden"></span>
          			</div>
          			<button id="${mName}_append" class="btn join-item hidden">
						<img id="${mName}_appendimage" class="hidden" src="${sAppendImage}" alt=""></img>
						<i id="${mName}_appendicon" data-icon="${sAppendIcon}" class="hidden ${sAppendIcon}"></i>
					</button>
      			</div>"$).Get("#" & mName)	
			UI.OnEventByID($"${mName}_prepend"$, "click", mCallBack, $"${mName}_prepend"$)
			UI.OnEventByID($"${mName}_append"$, "click", mCallBack, $"${mName}_append"$)
		Case "normal"
			mElement = mTarget.Append($"[BANCLEAN]<input id="${mName}" class="${xclasses} input" ${xattrs} style="${xstyles}"></input>"$).Get("#" & mName)
		End Select
		setTypeOf(sTypeOf)
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
	setEnabled(bEnabled)
	Select Case sInputType
	Case "legend", "buttons", "buttons-floating"
		setShowEyes(bShowEyes)
		setAppendImage(sAppendImage)
		setAppendIcon(sAppendIcon)
		setAppendVisible(bAppendVisible)
		setPrependImage(sPrependImage)
		setPrependIcon(sPrependIcon)
		setPrependVisible(bPrependVisible)
	End Select
	setWidth(sWidth)
	setValue(sValue)
'	setVisible(bVisible)
	UI.OnEvent(mElement, "change", Me, "changed")
	UI.OnEvent(mElement, "input", Me, "changed1")
End Sub

'set Show Eyes
Sub setShowEyes(b As Boolean)				'ignoredeadcode
	bShowEyes = b
	CustProps.put("ShowEyes", b)
	If mElement = Null Then Return
	If bShowEyes = False Then Return
	sAppendImage = ""
	bAppendVisible = bShowEyes
	Select Case sTypeOf
	Case "password"
		sAppendIcon = "fa-solid fa-eye"
	Case "text"
		sAppendIcon = "fa-solid fa-eye-slash"
	End Select
	UI.OnEventByID($"${mName}_append"$, "click", Me, "TogglePassword")
End Sub

private Sub TogglePassword(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault
	Dim cicon As String = BANano.GetElement($"#${mName}_appendicon"$).GetData("icon")
	cicon = modSD5.CStr(cicon)
	Select Case cicon
	Case "fa-solid fa-eye"
		mElement.SetAttr("type", "text")
		UI.SetIconNameByID($"${mName}_appendicon"$, "fa-solid fa-eye-slash")
	Case "fa-solid fa-eye-slash"
		mElement.SetAttr("type", "password")
		UI.SetIconNameByID($"${mName}_appendicon"$, "fa-solid fa-eye")
	End Select
End Sub

'get Show Eyes
Sub getShowEyes As Boolean
	Return bShowEyes
End Sub

'set Background Color
Sub setBackgroundColor(s As String)			'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If sInputType <> "legend" Then Return
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
	Select Case sInputType
	Case "legend"
		UI.SetWidthByID($"${mName}_join"$, s)
	Case "buttons", "label-input", "buttons-floating"
		UI.SetWidthByID($"${mName}_control"$, s)
	Case "normal"
		If s <> "" Then UI.SetWidth(mElement, sWidth)
	End Select
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

private Sub changed1(e As BANanoEvent)			'ignoredeadcode
	Dim cvalue As String = mElement.GetValue
	BANano.CallSub(mCallBack, $"${mName}_input"$, Array(cvalue))
End Sub

private Sub changed(e As BANanoEvent)			'ignoredeadcode
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

Sub setAppendImage(s As String)				'ignoredeadcode
	sAppendImage = s
	CustProps.put("AppendImage", s)
	If mElement = Null Then Return
	If s = "" Then
		UI.SetVisibleByID($"${mName}_appendimage"$, False)
	Else
		UI.SetImageByID($"${mName}_appendimage"$, s)
		UI.SetVisibleByID($"${mName}_appendimage"$, True)
		If sInputType = "buttons-floating" Then
			UI.RemoveClassByID($"${mName}_floating"$, "trradius")
			UI.RemoveClassByID($"${mName}_floating"$, "brradius")
		Else
			UI.RemoveClass(mElement, "trradius")
			UI.RemoveClass(mElement, "brradius")
		End If
	End If
End Sub

Sub getAppendImage As String
	Return sAppendImage
End Sub

Sub setAppendIcon(s As String)				'ignoredeadcode
	sAppendIcon = s
	CustProps.put("AppendIcon", s)
	If mElement = Null Then Return
	If s = "" Then
		UI.SetVisibleByID($"${mName}_appendicon"$, False)
	Else
		UI.UpdateClassByID($"${mName}_appendicon"$, "icon", s)
		UI.SetVisibleByID($"${mName}_appendicon"$, True)
		If sInputType = "buttons-floating" Then
			UI.RemoveClassByID($"${mName}_floating"$, "trradius")
			UI.RemoveClassByID($"${mName}_floating"$, "brradius")
		Else
			UI.RemoveClass(mElement, "trradius")
			UI.RemoveClass(mElement, "brradius")
		End If
	End If
End Sub

'set Append Visible
Sub setAppendVisible(b As Boolean)				'ignoredeadcode
	bAppendVisible = b
	CustProps.put("AppendVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_append"$, b)
End Sub

'set Prepend Image
Sub setPrependImage(s As String)				'ignoredeadcode
	sPrependImage = s
	CustProps.put("PrependImage", s)
	If mElement = Null Then Return	
	If s = "" Then
		UI.SetVisibleByID($"${mName}_prependimage"$, False)
	Else
		UI.SetImageByID($"${mName}_prependimage"$, s)
		UI.SetVisibleByID($"${mName}_prependimage"$, True)
		If sInputType = "buttons-floating" Then
			UI.RemoveClassByID($"${mName}_floating"$, "tlradius")
			UI.RemoveClassByID($"${mName}_floating"$, "blradius")
		Else
			UI.RemoveClass(mElement, "tlradius")
			UI.RemoveClass(mElement, "blradius")
		End If
	End If
End Sub

Sub getPrependImage As String
	Return sPrependImage
End Sub

'set Prepend Icon
Sub setPrependIcon(s As String)				'ignoredeadcode
	sPrependIcon = s
	CustProps.put("PrependIcon", s)
	If mElement = Null Then Return	
	If s = "" Then
		UI.SetVisibleByID($"${mName}_prependicon"$, False)
	Else
		UI.UpdateClassByID($"${mName}_prependicon"$, "icon", s)
		UI.SetVisibleByID($"${mName}_prependicon"$, True)
		If sInputType = "buttons-floating" Then
			UI.RemoveClassByID($"${mName}_floating"$, "tlradius")
			UI.RemoveClassByID($"${mName}_floating"$, "blradius")
		Else
			UI.RemoveClass(mElement, "tlradius")
			UI.RemoveClass(mElement, "blradius")
		End If
	End If
End Sub
'set Prepend Visible
Sub setPrependVisible(b As Boolean)				'ignoredeadcode
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
Sub setValue(text As String)			'ignoredeadcode
	sValue = text
	CustProps.Put("Value", text)
	If mElement = Null Then Return
	UI.SetValue(mElement, text)
End Sub
'get value
Sub getValue As String					'ignoredeadcode
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


'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)				'ignoredeadcode
    sColor = s
    CustProps.put("Color", s)
    If mElement = Null Then Return
    If s <> "" Then UI.SetColor(mElement, "color", "input", sColor)
End Sub

'set Ghost
Sub setGhost(b As Boolean)				'ignoredeadcode
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
Sub setGrow(b As Boolean)			'ignoredeadcode
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
Sub setHint(s As String)			'ignoredeadcode
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
'set Max Length
Sub setMaxLength(s As String)			'ignoredeadcode
        sMaxLength = s
        CustProps.put("MaxLength", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "maxlength", s)
End Sub
'set Max Value
Sub setMaxValue(s As String)			'ignoredeadcode
        sMaxValue = s
        CustProps.put("MaxValue", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "max", s)
End Sub
'set Min Length
Sub setMinLength(s As String)				'ignoredeadcode
        sMinLength = s
        CustProps.put("MinLength", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "minlength", s)
End Sub
'set Min Value
Sub setMinValue(s As String)			'ignoredeadcode
        sMinValue = s
        CustProps.put("MinValue", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "min", s)
End Sub
'set Pattern
Sub setPattern(s As String)			'ignoredeadcode
        sPattern = s
        CustProps.put("Pattern", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "pattern", s)
End Sub
'set Placeholder
Sub setPlaceholder(s As String)			'ignoredeadcode
        sPlaceholder = s
        CustProps.put("Placeholder", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "placeholder", s)
End Sub
'set Required
Sub setRequired(b As Boolean)				'ignoredeadcode
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
Sub setSize(s As String)				'ignoredeadcode
    sSize = s
    CustProps.put("Size", s)
    If mElement = Null Then Return
	If s = "" Then sSize = "md"
	BANano.Await(UI.SetSize(mElement, "size", "input", sSize))
	Select Case sInputType
	Case "buttons", "legend", "buttons-floating"
		BANano.Await(UI.SetSizeByID($"${mName}_prepend"$, "size", "btn", sSize))
		BANano.Await(UI.SetButtonImageSizeByID($"${mName}_prependimage"$, sSize))
		BANano.Await(UI.SetSizeByID($"${mName}_append"$, "size", "btn", sSize))
		BANano.Await(UI.SetButtonImageSizeByID($"${mName}_appendimage"$, sSize))
		BANano.Await(UI.SetIconSizeStyleByID($"${mName}_prependicon"$, sSize))
		BANano.Await(UI.SetIconSizeStyleByID($"${mName}_appendicon"$, sSize))
	End Select
	If sInputType = "buttons-floating" Then
		BANano.Await(UI.SetSizeByID($"${mName}_floating"$, "size", "input", sSize))
	End If
End Sub
'set Step Value
Sub setStepValue(s As String)				'ignoredeadcode
        sStepValue = s
        CustProps.put("StepValue", s)
        If mElement = Null Then Return
        If s <> "" Then UI.SetAttr(mElement, "step", s)
End Sub
'set Type Of
'options: date|datetime-local|email|input|month|number|password|search|tel|text|time|url|week
Sub setTypeOf(s As String)				'ignoredeadcode
    sTypeOf = s
    CustProps.put("TypeOf", s)
    If mElement = Null Then Return
    If s <> "" Then UI.SetAttr(mElement, "type", s)
	If sTypeOf = "tel" Then UI.AddClass(mElement, "tabular-nums")
	If sTypeOf = "number" Then UI.AddClass(mElement, "tabular-nums")
	If sTypeOf = "dialer" Then
		UI.SetNoArrows(mElement)
		If sValue = "" Then sValue = "0"
		If sMinValue = "" Then sMinValue = "0"
		If sMaxValue = "" Then sMaxValue = "100"
		If sStepValue = "" Then sStepValue = "1"
		UI.SetAttr(mElement, "type", "number")
		UI.AddClass(mElement, "text-center tabular-nums")
		sPrependImage = ""
		sAppendImage = ""
		sPrependIcon = "fa-solid fa-minus"
		sAppendIcon = "fa-solid fa-plus"
		bPrependVisible = True
		bAppendVisible = True
		UI.OnEventByID($"${mName}_prepend"$, "click", Me, "PropertyDecrement")
		UI.OnEventByID($"${mName}_append"$, "click", Me, "PropertyIncrement")
	End If
End Sub

private Sub PropertyDecrement(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim minvalue As Int = modSD5.CInt(mElement.GetAttr("min"))
	Dim stpvalue As Int = modSD5.CInt(mElement.GetAttr("step"))
	Dim curvalue As Int = modSD5.CInt(mElement.GetValue)
	Dim nxtvalue As Int = BANano.parseInt(curvalue) - BANano.parseInt(stpvalue)
	If nxtvalue < minvalue Then
		nxtvalue = minvalue
		mElement.SetValue(minvalue)
	Else
		mElement.SetValue(nxtvalue)
	End If
	'
	Dim e As BANanoEvent
	CallSub2(mCallBack, $"${mName}_prepend"$, e)		'ignore
End Sub

private Sub PropertyIncrement(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim maxvalue As Int = modSD5.CInt(mElement.GetAttr("max"))
	Dim stpvalue As Int = modSD5.CInt(mElement.GetAttr("step"))
	Dim curvalue As Int = modSD5.CInt(mElement.GetValue)
	Dim nxtvalue As Int = BANano.parseInt(curvalue) + BANano.parseInt(stpvalue)
	If nxtvalue > maxvalue Then
		nxtvalue = maxvalue
		mElement.SetValue(maxvalue)
	Else
		mElement.SetValue(nxtvalue)
	End If
	'
	Dim e As BANanoEvent
	CallSub2(mCallBack, $"${mName}_append"$, e)		'ignore
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

'Not(IsMatch)
Sub IsMatch(otherValue As String, tErrorMessage As String) As Boolean
	Dim v As String = getValue
	v = modSD5.CStr(v)
	v = v.Trim
	otherValue = modSD5.CStr(otherValue)
	otherValue = otherValue.Trim
	If v = otherValue Then
		If sInputType = "legend" Then
			setBorderColor("success")
		Else
			setColor("success")
		End If
		Return False
	Else
		If sInputType = "legend" Then
			setBorderColor("error")
		Else
			setColor("error")
		End If
		Return True
	End If
End Sub
Sub IsMinLength(minLen As Int, tErrorMessage As String) As Boolean
	Dim v As String = getValue
	v = modSD5.CStr(v)
	v = v.Trim
	If v.Length >= minLen Then
		If sInputType = "legend" Then
			setBorderColor("success")
		Else
			setColor("success")
		End If
		Return False
	Else
		If sInputType = "legend" Then
			setBorderColor("error")
		Else
			setColor("error")
		End If
		Return True
	End If
End Sub
'run validation
Sub IsBlank As Boolean
	Dim v As String = getValue
	v = modSD5.CStr(v)
	v = v.Trim
	If v = "" Then
		If sInputType = "legend" Then
			setBorderColor("error")
		Else
			setColor("error")
		End If
		Return True
	End If
	If sInputType = "legend" Then
		setBorderColor("success")
	Else
		setColor("success")
	End If
	Return False
End Sub

Sub ResetValidation
	Try
		If sInputType = "legend" Then
			setBorderColor("success")
		Else
			setColor("success")
		End If
	Catch
		
	End Try		'ignore
End Sub