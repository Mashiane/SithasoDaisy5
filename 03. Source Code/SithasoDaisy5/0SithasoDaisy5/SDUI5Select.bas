B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Value As String)
#Event: Prepend (e As BANanoEvent)
#Event: Append (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: InputType, DisplayName: Input Type, FieldType: String, DefaultValue: normal, Description: Input Type, List: normal|legend|buttons|label-input|buttons-floating
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Select, Description: Label
#DesignerProperty: Key: LegendColor, DisplayName: Label Color, FieldType: String, DefaultValue: , Description: Label Color
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue: Select an element, Description: Placeholder
#DesignerProperty: Key: RawOptions, DisplayName: Options (JSON), FieldType: String, DefaultValue: b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r, Description: Options (JSON)
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: AllowBlank, DisplayName: AllowBlank, FieldType: Boolean, DefaultValue: True, Description: Allow Blank Item
#DesignerProperty: Key: ValuesAsIs, DisplayName: Values As Is, FieldType: Boolean, DefaultValue: False, Description: Values As Is
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: Ghost, DisplayName: Ghost, FieldType: Boolean, DefaultValue: False, Description: Ghost
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: False, Description: Grow
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: Validator, DisplayName: Validator, FieldType: Boolean, DefaultValue: False, Description: Validator
#DesignerProperty: Key: ValidatorHint, DisplayName: Validator Hint, FieldType: String, DefaultValue: , Description: Validator Hint
#DesignerProperty: Key: PrependColor, DisplayName: Prepend Color, FieldType: String, DefaultValue: none, Description: Prepend Color
#DesignerProperty: Key: PrependImage, DisplayName: Prepend Image, FieldType: String, DefaultValue: , Description: Prepend Image
#DesignerProperty: Key: PrependIcon, DisplayName: Prepend Icon, FieldType: String, DefaultValue: , Description: Prepend Icon
#DesignerProperty: Key: PrependIconColor, DisplayName: Prepend Icon Color, FieldType: String, DefaultValue: none, Description: Prepend Icon Color
#DesignerProperty: Key: PrependVisible, DisplayName: Prepend Visible, FieldType: Boolean, DefaultValue: False, Description: Prepend Visible
#DesignerProperty: Key: AppendColor, DisplayName: Append Color, FieldType: String, DefaultValue: none, Description: Append Color
#DesignerProperty: Key: AppendImage, DisplayName: Append Image, FieldType: String, DefaultValue: , Description: Append Image
#DesignerProperty: Key: AppendIcon, DisplayName: Append Icon, FieldType: String, DefaultValue: , Description: Append Icon
#DesignerProperty: Key: AppendIconColor, DisplayName: Append Icon Color, FieldType: String, DefaultValue: none, Description: Append Icon Color
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
	Private sLabel As String = "Select"
	Private sPlaceholder As String = "Select an element"
	Private bRequired As Boolean = False
	Private sSize As String = "md"
	Private bValidator As Boolean = False
	Private sValidatorHint As String = ""
	Private sValue As String = ""
	Private sRawOptions As String = "b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r"
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
	Private sAppendImage As String = ""
	Private sPrependImage As String = ""
	Private sAppendColor As String = "none"
	Private sAppendIconColor As String = "none"
	Private sPrependColor As String = "none"
	Private sPrependIconColor As String = "none"
	Private bValuesAsIs As Boolean = False
	Private sLegendColor As String = ""
	Private bAllowBlank As Boolean = True
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
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("InputType", "normal")
	CustProps.Put("Label", "Select")
	CustProps.Put("LegendColor", "")
	CustProps.Put("Placeholder", "Select an element")
	CustProps.Put("RawOptions", "b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r")
	CustProps.Put("Value", "")
	CustProps.Put("ValuesAsIs", False)
	CustProps.Put("Color", "none")
	CustProps.Put("Size", "md")
	CustProps.Put("Width", "full")
	CustProps.Put("Ghost", False)
	CustProps.Put("Grow", False)
	CustProps.Put("Hint", "")
	CustProps.Put("Required", False)
	CustProps.Put("Validator", False)
	CustProps.Put("ValidatorHint", "")
	CustProps.Put("PrependColor", "none")
	CustProps.Put("PrependImage", "")
	CustProps.Put("PrependIcon", "")
	CustProps.Put("PrependIconColor", "none")
	CustProps.Put("PrependVisible", False)
	CustProps.Put("AppendColor", "none")
	CustProps.Put("AppendImage", "")
	CustProps.Put("AppendIcon", "")
	CustProps.Put("AppendIconColor", "none")
	CustProps.Put("AppendVisible", False)
	CustProps.Put("BackgroundColor", "base-200")
	CustProps.Put("Border", True)
	CustProps.Put("BorderColor", "base-300")
	CustProps.Put("RoundedBox", False)
	CustProps.Put("Shadow", "none")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
	CustProps.Put("AllowBlank", True)
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
	Select Case sInputType
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

Sub setLegendColor(s As String)				'ignoredeadcode
	sLegendColor = s
	CustProps.Put("LegendColor", s)
	UI.SetTextColorByID($"${mName}_legend"$, s)
End Sub

Sub getLegendColor As String
	Return sLegendColor
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

Sub setAllowBlank(b As Boolean)
	bAllowBlank = b
	CustProps.Put("AllowBlank", b)
End Sub

Sub getAllowBlank As Boolean
	Return bAllowBlank
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
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bGhost = Props.GetDefault("Ghost", False)
		bGhost = UI.CBool(bGhost)
		bGrow = Props.GetDefault("Grow", False)
		bGrow = UI.CBool(bGrow)
		sHint = Props.GetDefault("Hint", "")
		sHint = UI.CStr(sHint)
		sLabel = Props.GetDefault("Label", "Select")
		sLabel = UI.CStr(sLabel)
		sPlaceholder = Props.GetDefault("Placeholder", "Select an element")
		sPlaceholder = UI.CStr(sPlaceholder)
		bRequired = Props.GetDefault("Required", False)
		bRequired = UI.CBool(bRequired)
		sSize = Props.GetDefault("Size", "md")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = "md"
		bValidator = Props.GetDefault("Validator", False)
		bValidator = UI.CBool(bValidator)
		sValidatorHint = Props.GetDefault("ValidatorHint", "")
		sValidatorHint = UI.CStr(sValidatorHint)
		sValue = Props.GetDefault("Value", "")
		sValue = UI.CStr(sValue)
		sRawOptions = Props.GetDefault("RawOptions", "b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r")
		sRawOptions = UI.CStr(sRawOptions)
		sAppendIcon = Props.GetDefault("AppendIcon", "")
		sAppendIcon = UI.CStr(sAppendIcon)
		bAppendVisible = Props.GetDefault("AppendVisible", False)
		bAppendVisible = UI.CBool(bAppendVisible)
		sPrependIcon = Props.GetDefault("PrependIcon", "")
		sPrependIcon = UI.CStr(sPrependIcon)
		bPrependVisible = Props.GetDefault("PrependVisible", False)
		bPrependVisible = UI.CBool(bPrependVisible)
		sInputType = Props.GetDefault("InputType", "normal")
		sInputType = UI.CStr(sInputType)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = UI.CStr(sWidth)
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
		sAppendImage = Props.GetDefault("AppendImage", "")
		sAppendImage = UI.CStr(sAppendImage)
		sPrependImage = Props.GetDefault("PrependImage", "")
		sPrependImage = UI.CStr(sPrependImage)
		sAppendColor = Props.GetDefault("AppendColor", "none")
		sAppendColor = UI.CStr(sAppendColor)
		If sAppendColor = "none" Then sAppendColor = ""
		sAppendIconColor = Props.GetDefault("AppendIconColor", "none")
		sAppendIconColor = UI.CStr(sAppendIconColor)
		If sAppendIconColor = "none" Then sAppendIconColor = ""
		sPrependColor = Props.GetDefault("PrependColor", "none")
		sPrependColor = UI.CStr(sPrependColor)
		If sPrependColor = "none" Then sPrependColor = ""
		sPrependIconColor = Props.GetDefault("PrependIconColor", "none")
		sPrependIconColor = UI.CStr(sPrependIconColor)
		If sPrependIconColor = "none" Then sPrependIconColor = ""
		bValuesAsIs = Props.GetDefault("ValuesAsIs", False)
		bValuesAsIs = UI.CBool(bValuesAsIs)
		bAllowBlank = Props.GetDefault("AllowBlank", True)
		bAllowBlank = UI.CBool(bAllowBlank)
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
		<fieldset id="${mName}_control" class="rounded-sm ${xclasses} fieldset" ${xattrs} style="${xstyles}">
        		<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
        		<div id="${mName}_join" class="join">
          			<button id="${mName}_prepend" class="btn join-item hidden tlradius blradius">
						<img id="${mName}_prependimage" class="hidden bg-cover bg-center bg-no-repeat" src="${sPrependImage}" alt=""></img>
						<svg-renderer id="${mName}_prepend_icon" style="pointer-events:none;" fill="currentColor" data-js="enabled" data-src="${sPrependIcon}" class="hidden"></svg-renderer>
					</button>
          			<select id="${mName}" class="select join-item tlradius trradius blradius brradius w-full">
						<option id="${mName}_placeholder" disabled selected>${sPlaceholder}</option>	
					</select>
          			<div id="${mName}_required" class="indicator join-item hidden">
            			<span id="${mName}_badge" class="indicator-item badge badge-error size-2 p-0 hidden"></span>
          			</div>
          			<button id="${mName}_append" class="btn join-item hidden trradius brradius">
						<img id="${mName}_appendimage" class="hidden bg-cover bg-center bg-no-repeat" src="${sAppendImage}" alt=""></img>
						<svg-renderer id="${mName}_append_icon" style="pointer-events:none;" fill="currentColor" data-js="enabled" data-src="${sAppendIcon}" class="hidden"></svg-renderer>
					</button>
        		</div>          
        		<p id="${mName}_hint" class="fieldset-label hidden">${sHint}</p>
      		</fieldset>"$).Get("#" & mName)
			setBackgroundColor(sBackgroundColor)
			setBorder(bBorder)
			setBorderColor(sBorderColor)
			setRoundedBox(bRoundedBox)
			setShadow(sShadow)
			setLegendColor(sLegendColor)
			If sPrependIcon <> "" Or sPrependImage <> "" Then UI.OnEventByID($"${mName}_prepend"$, "click", mCallBack, $"${mName}_prepend"$)
			If sAppendIcon <> "" Or sAppendImage <> "" Then UI.OnEventByID($"${mName}_append"$, "click", mCallBack, $"${mName}_append"$)
	Case "buttons"
		mElement = mTarget.Append($"[BANCLEAN]
		<div id="${mName}_control" class="join ${xclasses}" ${xattrs} style="${xstyles}">
          			<button id="${mName}_prepend" class="btn join-item hidden tlradius blradius">
						<img id="${mName}_prependimage" class="hidden bg-cover bg-center bg-no-repeat" src="${sPrependImage}" alt=""></img>
						<svg-renderer id="${mName}_prepend_icon" style="pointer-events:none;" fill="currentColor" data-js="enabled" data-src="${sPrependIcon}" class="hidden ${sPrependIcon}"></svg-renderer>
					</button>
          			<select id="${mName}" class="select join-item tlradius trradius blradius brradius w-full">
						<option id="${mName}_placeholder" value="" disabled selected>${sPlaceholder}</option>
					</select>
          			<div id="${mName}_required" class="indicator join-item hidden">
            			<span id="${mName}_badge" class="indicator-item badge badge-error size-2 p-0 hidden"></span>
          			</div>
          			<button id="${mName}_append" class="btn join-item hidden trradius brradius">
						<img id="${mName}_appendimage" class="hidden bg-cover bg-center bg-no-repeat" src="${sAppendImage}" alt=""></img>
						<svg-renderer id="${mName}_append_icon" style="pointer-events:none;" fill="currentColor" data-js="enabled" data-src="${sAppendIcon}" class="hidden"></svg-renderer>
					</button>
        		</div>"$).Get("#" & mName)
			If sPrependIcon <> "" Or sPrependImage <> "" Then UI.OnEventByID($"${mName}_prepend"$, "click", mCallBack, $"${mName}_prepend"$)
			If sAppendIcon <> "" Or sAppendImage <> "" Then UI.OnEventByID($"${mName}_append"$, "click", mCallBack, $"${mName}_append"$)
		Case "label-input"
			mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="mb-2 ${xclasses}" ${xattrs} style="${xstyles}">
				<label id="${mName}_legend" class="mb-1 fieldset-label">${sLabel}</label>
				<select id="${mName}" class="select w-full">
					<option id="${mName}_placeholder" value="" disabled selected>${sPlaceholder}</option>
				</select>
			</div>"$).Get("#" & mName)
		Case "buttons-floating"
			mElement = mTarget.Append($"[BANCLEAN]	
				<div id="${mName}_control" class="join w-full ${xclasses}" ${xattrs} style="${xstyles}">
					<button id="${mName}_prepend" class="btn join-item hidden tlradius blradius">
						<img id="${mName}_prependimage" class="hidden bg-cover bg-center bg-no-repeat" src="${sPrependImage}" alt=""></img>
						<svg-renderer id="${mName}_prepend_icon" style="pointer-events:none;" fill="currentColor" data-js="enabled" data-src="${sPrependIcon}" class="hidden"></svg-renderer>
					</button>
        			<label id="${mName}_floating" class="floating-label select join-item w-full tlradius trradius blradius brradius">
          				<span id="${mName}_legend" class="label">${sLabel}</span>
          				<select id="${mName}" class="select">
            				<option id="${mName}_placeholder" value="" disabled selected>${sPlaceholder}</option>
            			</select>
        			</label>
					<div id="${mName}_required" class="indicator join-item hidden">
            			<span id="${mName}_badge" class="indicator-item badge badge-error size-2 p-0 hidden"></span>
          			</div>
          			<button id="${mName}_append" class="btn join-item hidden trradius brradius">
						<img id="${mName}_appendimage" class="hidden bg-cover bg-center bg-no-repeat" src="${sAppendImage}" alt=""></img>
						<svg-renderer id="${mName}_append_icon" style="pointer-events:none;" fill="currentColor" data-js="enabled" data-src="${sAppendIcon}" class="hidden"></svg-renderer>
					</button>
      			</div>"$).Get("#" & mName)
			If sPrependIcon <> "" Or sPrependImage <> "" Then UI.OnEventByID($"${mName}_prepend"$, "click", mCallBack, $"${mName}_prepend"$)
			If sAppendIcon <> "" Or sAppendImage <> "" Then UI.OnEventByID($"${mName}_append"$, "click", mCallBack, $"${mName}_append"$)
	Case "normal"
		mElement = mTarget.Append($"[BANCLEAN]<select id="${mName}" class="${xclasses} select" ${xattrs} style="${xstyles}"></select>"$).Get("#" & mName)
	End Select
	setPlaceholder(sPlaceholder)
	setColor(sColor)
	setRequired(bRequired)
	BANano.Await(setSize(sSize))
	setGhost(bGhost)	
	setGrow(bGrow)
	setWidth(sWidth)
	setEnabled(bEnabled)
	Select Case sInputType
	Case "legend", "buttons", "buttons-floating"
		setAppendImage(sAppendImage)
		setAppendIcon(sAppendIcon)
		setAppendVisible(bAppendVisible)
		setPrependImage(sPrependImage)
		setPrependIcon(sPrependIcon)
		setPrependVisible(bPrependVisible)
		setPrependColor(sPrependColor)
		setPrependIconColor(sPrependIconColor)
		setAppendColor(sAppendColor)
		setAppendIconColor(sAppendIconColor)
	End Select
	BANano.Await(setOptions(sRawOptions))
	setValue(sValue)
	'setVisible(bVisible)
	UI.OnEvent(mElement, "change", Me, "changed")
End Sub

'set Append Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setAppendColor(s As String)			'ignoredeadcode
	sAppendColor = s
	CustProps.put("AppendColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_append"$, s)
End Sub
'set Append Icon Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setAppendIconColor(s As String)			'ignoredeadcode
	sAppendIconColor = s
	CustProps.put("AppendIconColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetIconColorByID($"${mName}_append_icon"$, s)
End Sub
'set Prepend Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setPrependColor(s As String)				'ignoredeadcode
	sPrependColor = s
	CustProps.put("PrependColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_prepend"$, s)
End Sub
'set Prepend Icon Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setPrependIconColor(s As String)			'ignoredeadcode
	sPrependIconColor = s
	CustProps.put("PrependIconColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetIconColorByID($"${mName}_prepend_icon"$, s)
End Sub
'get Append Color
Sub getAppendColor As String
	Return sAppendColor
End Sub
'get Append Icon Color
Sub getAppendIconColor As String
	Return sAppendIconColor
End Sub
'get Prepend Color
Sub getPrependColor As String
	Return sPrependColor
End Sub
'get Prepend Icon Color
Sub getPrependIconColor As String
	Return sPrependIconColor
End Sub


Sub Focus
	Try
		If mElement = Null Then Return
		mElement.RunMethod("focus", Null)
	Catch
	End Try			'ignore
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
			UI.SetWidthByID($"${mName}_control"$, s)
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



private Sub changed(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault 
	Dim cvalue As String = mElement.GetValue
	BANano.CallSub(mCallBack, $"${mEventName}_change"$, Array(cvalue))
End Sub

'legend|normal|buttons
Sub setInputType(s As String)
	sInputType = s
	CustProps.Put("InputType", s)
End Sub

Sub getInputType As String
	Return sInputType
End Sub

'set Prepend Visible
Sub setPrependVisible(b As Boolean)			'ignoredeadcode
	bPrependVisible = b
	CustProps.put("PrependVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_prepend"$, b)
End Sub

'set Append Visible
Sub setAppendVisible(b As Boolean)			'ignoredeadcode
	bAppendVisible = b
	CustProps.put("AppendVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_append"$, b)
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

'set Options from a MV field
'b4j:b4j; b4i:b4i; b4r:b4r
Sub setOptions(s As String)		'ignoredeadcode
	sRawOptions = s
	CustProps.put("RawOptions", s)
	If mElement = Null Then Return
	Dim m As Map = UI.GetKeyValues(s, False)
	SetOptionsFromMap(m)
End Sub

'load the items from a map
Sub SetOptionsFromMap(m As Map)		'ignoredeadcode
	If mElement = Null Then Return
	Clear
	If m.Size = 0 Then Return
	Dim sb As StringBuilder
	sb.Initialize
	If bAllowBlank Then
		sb.Append($"<option value="" selected>--Nothing Selected--</option>"$)
	End If
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		If bValuesAsIs = False Then k = UI.CleanID(k)
		sb.Append($"<option value="${k}">${v}</option>"$)
	Next
	mElement.Append(sb.ToString)
End Sub

''load the items from a map
'Sub SetOptionsFromMap(m As Map)		'ignoredeadcode
'	If mElement = Null Then Return
'	Clear
'	If m.Size = 0 Then Return
'	If bAllowBlank Then
'		AddOptionSelected("", "--Nothing Selected--")
'	End If
'	For Each k As String In m.Keys
'		Dim v As String = m.Get(k)
'		AddOption(k, v)
'	Next
'End Sub

'load the items from a list
Sub SetOptionsFromList(m As List)
	If mElement = Null Then Return
	Dim nm As Map = CreateMap()
	For Each k As String In m
		nm.Put(k, k)
	Next
	SetOptionsFromMap(nm)
End Sub

'get Raw Options
Sub getOptions As String
	Return sRawOptions
End Sub

Sub setValuesAsIs(b As Boolean)
	bValuesAsIs = b
	CustProps.Put("ValuesAsIs", bValuesAsIs)
End Sub

Sub getValuesAsIs As Boolean
	Return bValuesAsIs
End Sub

Sub Clear			'ignoredeadcode
	If mElement = Null Then Return
	mElement.Empty
	If sPlaceholder = "" Then Return
	mElement.Append($"<option id="${mName}_placeholder" value="" disabled selected>${sPlaceholder}</option>"$)
End Sub

Sub AddOption(iKey As String, iValue As String)
	If mElement = Null Then Return
	Dim cKey As String = iKey
	If bValuesAsIs = False Then cKey = UI.CleanID(iKey)
	Dim scode As String = $"<option value="${cKey}">${iValue}</option>"$
	mElement.Append(scode)
End Sub

Sub AddOptionSelected(iKey As String, iValue As String)
	If mElement = Null Then Return
	Dim cKey As String = iKey
	If bValuesAsIs = False Then cKey = UI.CleanID(iKey)
	Dim scode As String = $"<option value="${cKey}" selected>${iValue}</option>"$
	mElement.Append(scode)
End Sub

'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)			'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "select", sColor)
End Sub
'set Ghost
Sub setGhost(b As Boolean)			'ignoredeadcode
	bGhost = b
	CustProps.put("Ghost", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "select-ghost")
	Else
		UI.RemoveClass(mElement, "select-ghost")
	End If
End Sub
'set Grow
Sub setGrow(b As Boolean)				'ignoredeadcode
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
'set Placeholder
Sub setPlaceholder(s As String)		'ignoredeadcode
	sPlaceholder = s
	CustProps.put("Placeholder", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_placeholder"$, s)
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
		UI.RemoveAttr(mElement, "required")
		UI.SetVisibleByID($"${mName}_required"$, False)
		UI.SetVisibleByID($"${mName}_badge"$, False)
	End If
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

Sub setAppendIcon(s As String)				'ignoredeadcode
	sAppendIcon = s
	CustProps.put("AppendIcon", s)
	If mElement = Null Then Return
	If s = "" Then
		UI.SetVisibleByID($"${mName}_append_icon"$, False)
	Else
		UI.SetIconNameByID($"${mName}_append_icon"$, s)
		UI.SetVisibleByID($"${mName}_append_icon"$, True)
'		UI.OnEventByID($"${mName}_append_icon"$, "click", mCallBack, $"${mName}_append"$)
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
		UI.SetVisibleByID($"${mName}_prepend_icon"$, False)
	Else
		UI.SetIconNameByID($"${mName}_prepend_icon"$, s)
		UI.SetVisibleByID($"${mName}_prepend_icon"$, True)
'		UI.OnEventByID($"${mName}_prepend_icon"$, "click", mCallBack, $"${mName}_prepend"$)
		If sInputType = "buttons-floating" Then
			UI.RemoveClassByID($"${mName}_floating"$, "tlradius")
			UI.RemoveClassByID($"${mName}_floating"$, "blradius")
		Else
			UI.RemoveClass(mElement, "tlradius")
			UI.RemoveClass(mElement, "blradius")
		End If
	End If
End Sub

'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)				'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	BANano.Await(UI.SetSize(mElement, "size", "select", sSize))
	Select Case sInputType
	Case "buttons", "legend", "buttons-floating"
		BANano.Await(UI.SetSizeByID($"${mName}_prepend"$, "size", "btn", sSize))
		BANano.Await(UI.SetButtonImageSizeByID($"${mName}_prependimage"$, sSize))
		BANano.Await(UI.SetSizeByID($"${mName}_append"$, "size", "btn", sSize))
		BANano.Await(UI.SetButtonImageSizeByID($"${mName}_appendimage"$, sSize))
		BANano.Await(UI.ResizeIconByIDFromButtonSize($"${mName}_prepend_icon"$, sSize))
		BANano.Await(UI.ResizeIconByIDFromButtonSize($"${mName}_append_icon"$, sSize))
	End Select	
	If sInputType = "buttons-floating" Then
		BANano.Await(UI.SetSizeByID($"${mName}_floating"$, "size", "select", sSize))
	End If
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
'set Value
Sub setValue(s As String)			'ignoredeadcode
	sValue = s
	CustProps.put("Value", s)
	If mElement = Null Then Return
	mElement.SetValue(s)
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
'get Validator
Sub getValidator As Boolean
	Return bValidator
End Sub
'get Validator Hint
Sub getValidatorHint As String
	Return sValidatorHint
End Sub
'get Value
Sub getValue As String
	If mElement = Null Then Return ""
	sValue = UI.CStr(mElement.getvalue)
	Return sValue
End Sub

'run validation
Sub IsBlank As Boolean
	Dim v As String = getValue
	v = UI.CStr(v)
	v = v.Trim
	If v = "" Then
		If sInputType = "legend" Then
			setBorderColor("error")
		Else
			setColor("error")
		End If
		HintError($"The ${sLabel.tolowercase} is required."$)
		Focus
		Return True
	End If
	If sInputType = "legend" Then
		setBorderColor("success")
	Else
		setColor("success")
	End If
	setHint(sHint)
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

Sub SetLanguages
	SetOptionsFromMap(modSD5.Languages)
End Sub

Sub SetCountries
	SetOptionsFromMap(modSD5.Countries)
End Sub

Sub SetYears(yearsIntoPast As Int, yearsIntoFuture As Int)
	Clear
	Dim thisYear As Int = UI.YearNow
	Dim pStart As Int = BANano.parseInt(thisYear) - UI.CInt(yearsIntoPast)
	Dim fEnd As Int = BANano.parseInt(thisYear) + UI.CInt(yearsIntoFuture)
	Dim cntYear As Int = 0
	For cntYear = pStart To fEnd
		AddOption(cntYear, cntYear)
	Next
End Sub

Sub SetMonths
	Clear
	Dim Months As SDUIMap = modSD5.Months
	Dim l As List = Months.keys
	For Each k As String In l
		Dim v As String = Months.Get(k)
		AddOption(k,v)
	Next
End Sub

Sub SetDays
	Clear
	Dim Days As SDUIMap = modSD5.Days
	Dim l As List = Days.keys
	For Each k As String In l
		Dim v As String = Days.Get(k)
		AddOption(k,v)
	Next
End Sub

'<code>
'BANano.Await(SetThemes)
'</code>
Sub SetThemes
	Dim m As Map
	m.Initialize
	m.Put("abyss", "Abyss")
	m.Put("acid", "Acid")
	m.Put("aqua", "Aqua")
	m.Put("autumn", "Autumn")
	m.Put("black", "Black")
	m.Put("bumblebee", "Bumblebee")
	m.Put("business", "Business")
	m.Put("caramellatte", "Caramellatte")
	m.Put("coffee", "Coffee")
	m.Put("corporate", "Corporate")
	m.Put("cmyk", "CMYK")
	m.Put("cupcake", "Cupcake")
	m.Put("cyberpunk", "Cyberpunk")
	m.Put("dark", "Dark")
	m.Put("default", "Default")
	m.Put("dim", "Dim")
	m.Put("dracula", "Dracula")
	m.Put("emerald", "Emerald")
	m.Put("fantasy", "Fantasy")
	m.Put("forest", "Forest")
	m.Put("garden", "Garden")
	m.Put("halloween", "Halloween")
	m.Put("lemonade", "Lemonade")
	m.Put("light", "Light")
	m.Put("lofi", "Lofi")
	m.Put("luxury", "Luxury")
	m.Put("night", "Night")
	m.Put("nord", "Nord")
	m.Put("pastel", "Pastel")
	m.Put("retro", "Retro")
	m.Put("silk", "Silk")
	m.Put("sunset", "Sunset")
	m.Put("synthwave", "Synthwave")
	m.Put("valentine", "Valentine")
	m.Put("winter", "Winter")
	m.Put("wireframe", "Wireframe")
	SetOptionsFromMap(m)
End Sub

Sub SetValueByText(stext As String)
	Dim v As String = findValueByText(stext)
	If v <> "" Then
		setValue(v)
	End If
End Sub

Sub findValueByText(text As String) As String
	If text = Null Or text.Length = 0 Then Return ""

	' Get the options collection
	Dim xOptions As Object = mElement.GetField("options").Result

	' Convert HTMLCollection to array
	Dim a As BANanoObject
	a.Initialize("Array")
	Dim aOptions As List = a.RunMethod("from", xOptions)

	' Loop through options
	Dim i As Int
	For i = 0 To aOptions.Size - 1
		Dim optionx As BANanoObject = aOptions.Get(i)

		' Get visible text and value
		Dim t As String = optionx.GetField("text").Result
		Dim v As String = optionx.GetField("value").Result

		If t <> Null And t.EqualsIgnoreCase(text) Then
			Return v
		End If
	Next

	' Not found
	Return ""
End Sub

Sub getText As String
	' Get options collection
	Dim xOptions As Object = mElement.GetField("options").Result
	' Convert HTMLCollection to array
	Dim a As BANanoObject
	a.Initialize("Array")
	Dim aOptions As List = a.RunMethod("from", xOptions)
	Dim curValue As String = mElement.GetField("value").Result
	If curValue = Null Or curValue.Length = 0 Then Return ""
	Dim i As Int
	For i = 0 To aOptions.Size - 1
		Dim optionx As BANanoObject = aOptions.Get(i)
		Dim v As String = optionx.GetField("value").Result
		If v <> Null And v.EqualsIgnoreCase(curValue) Then
			Return optionx.GetField("text").Result
		End If
	Next
	' Not found
	Return ""
End Sub




Sub MoveNext
	Try
		Dim tSize As Int = BANano.parseInt(getItemCount) - 1
		Dim cIndex As Int = getSelectedIndex
		cIndex = UI.CInt(cIndex)
		cIndex = BANano.parseInt(cIndex) + 1
		If cIndex > tSize Then cIndex = tSize
		setSelectedIndex(cIndex)
	Catch		'ignore
	End Try		'ignore
End Sub

Sub MovePrevious
	Try
		Dim cIndex As Int = getSelectedIndex
		cIndex = UI.CInt(cIndex)
		cIndex = BANano.parseInt(cIndex) - 1
		If cIndex < 0 Then cIndex = 0
		setSelectedIndex(cIndex)
	Catch		'ignore
	End Try		'ignore
End Sub

Sub getSelectedIndex As Int
	Dim res As Int = mElement.GetField("selectedIndex").result
	Return res
End Sub

Sub setSelectedIndex(i As Int)
	mElement.SetField("selectedIndex", i)
End Sub

Sub removeSelected
	Dim idx As String = getSelectedIndex
	mElement.RunMethod("remove", idx)
End Sub

Sub removeByIndex(idx As Int)
	mElement.RunMethod("remove", idx)
End Sub

Sub getItemCount As Int
	'get the options of the select
	Dim xOptions As Object = mElement.GetField("options")
	'convert the HTMLCollection to array
	Dim a As BANanoObject
	a.Initialize("Array")
	Dim aOptions As List = a.RunMethod("from", xOptions)
	Return aOptions.size
End Sub

Sub findIndexByValue(value As String) As Int
	If value = Null Or value.Length = 0 Then Return -1

	' Get the options collection
	Dim xOptions As Object = mElement.GetField("options").Result

	' Convert HTMLCollection to array
	Dim a As BANanoObject
	a.Initialize("Array")
	Dim aOptions As List = a.RunMethod("from", xOptions)

	' Loop through options
	Dim i As Int
	For i = 0 To aOptions.Size - 1
		Dim optionx As BANanoObject = aOptions.Get(i)
		Dim k As String = optionx.GetField("value").Result

		If k <> Null And k.EqualsIgnoreCase(value) Then
			Return i
		End If
	Next

	' Not found
	Return -1
End Sub


Sub removeByValue(value As String)
	'get the options of the select
	Dim xOptions As Object = mElement.GetField("options")
	'convert the HTMLCollection to array
	Dim a As BANanoObject
	a.Initialize("Array")
	Dim aOptions As List = a.RunMethod("from", xOptions)
	'find the size of the array
	Dim aTot As Int = aOptions.Size - 1
	Dim aCnt As Int = 0
	For aCnt = 0 To aTot
		'get each option
		Dim optionx As BANanoObject = aOptions.Get(aCnt)
		'get the value
		Dim k As String = optionx.GetField("value").Result
		'if the value matches remove the item
		If k.EqualsIgnoreCase(value) Then
			mElement.RunMethod("remove", aCnt)
		End If
	Next
End Sub
