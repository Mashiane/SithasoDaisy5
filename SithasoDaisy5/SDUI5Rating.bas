B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Change (Value As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: InputType, DisplayName: Input Type, FieldType: String, DefaultValue: normal, Description: Input Type, List: normal|legend
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Rating, Description: Label
#DesignerProperty: Key: Mask, DisplayName: Mask, FieldType: String, DefaultValue: star, Description: Mask, List: circle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color, List: accent|error|info|neutral|primary|secondary|success|warning|none
#DesignerProperty: Key: RatingBackgroundColor, DisplayName: Rating Background Color, FieldType: String, DefaultValue: , Description: Rating Background Color
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|sm|xl|xs
#DesignerProperty: Key: Count, DisplayName: Count, FieldType: Int, DefaultValue: 5, MinRange: 0, MaxRange: 10, Description: Count of ratings
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 2, Description: Value
#DesignerProperty: Key: FirstHidden, DisplayName: First Hidden, FieldType: Boolean, DefaultValue: True, Description: First Hidden
#DesignerProperty: Key: Gap, DisplayName: Gap, FieldType: String, DefaultValue: 2, Description: Gap
#DesignerProperty: Key: Half, DisplayName: Half, FieldType: Boolean, DefaultValue: False, Description: Half
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: ReadOnly, DisplayName: Read Only, FieldType: Boolean, DefaultValue: False, Description: Read Only
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
	Private sColor As String = "primary"
	Private iCount As Int = 5
	Private bFirstHidden As Boolean = True
	Private sGap As String = "2"
	Private bHalf As Boolean = False
	Private sHint As String = ""
	Private sLabel As String = "Rating"
	Private sMask As String = "star"
	Private bReadOnly As Boolean = False
	Private sSize As String = "md"
	Private sValue As String = "2"
	Private bRequired As Boolean = False
	Private sInputType As String = "normal"
	Private sRatingBackgroundColor As String = "none"
	Private items As List
	Private sBackgroundColor As String = "base-200"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"
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
		sRatingBackgroundColor = Props.GetDefault("RatingBackgroundColor", "none")
		sRatingBackgroundColor = modSD5.CStr(sRatingBackgroundColor)
		If sRatingBackgroundColor = "none" Then sRatingBackgroundColor = ""
		sColor = Props.GetDefault("Color", "primary")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		iCount = Props.GetDefault("Count", 5)
		iCount = modSD5.Cint(iCount)
		bFirstHidden = Props.GetDefault("FirstHidden", True)
		bFirstHidden = modSD5.CBool(bFirstHidden)
		sGap = Props.GetDefault("Gap", "2")
		sGap = modSD5.CStr(sGap)
		bHalf = Props.GetDefault("Half", False)
		bHalf = modSD5.CBool(bHalf)
		sHint = Props.GetDefault("Hint", "")
		sHint = modSD5.CStr(sHint)
		sLabel = Props.GetDefault("Label", "Rating")
		sLabel = modSD5.CStr(sLabel)
		sMask = Props.GetDefault("Mask", "star")
		sMask = modSD5.CStr(sMask)
		bReadOnly = Props.GetDefault("ReadOnly", False)
		bReadOnly = modSD5.CBool(bReadOnly)
		sSize = Props.GetDefault("Size", "md")
		sSize = modSD5.CStr(sSize)
		sValue = Props.GetDefault("Value", "2")
		sValue = modSD5.CStr(sValue)
		bRequired = Props.GetDefault("Required", False)
		bRequired = modSD5.CBool(bRequired)
		sInputType = Props.GetDefault("InputType", "normal")
		sInputType = modSD5.CStr(sInputType)
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
				<div id="${mName}" class="rating"></div>
				<div id="${mName}_hint" class="fieldset-label hide">${sHint}</div>
			</fieldset>"$).Get("#" & mName)
			setBackgroundColor(sBackgroundColor)
			setBorder(bBorder)
			setBorderColor(sBorderColor)
			setRoundedBox(bRoundedBox)
			setShadow(sShadow)
	Case "normal"
		mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses} rating" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
	End Select
	setSize(sSize)
	setGap(sGap)
	setHalf(bHalf)
	BANano.Await(Refresh)
	setValue(sValue)
'	setVisible(bVisible)
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



'legend|normal
Sub setInputType(s As String)
	sInputType = s
	CustProps.Put("InputType", s)
End Sub

Sub getInputType As String
	Return sInputType
End Sub

'set Required, needs Refresh
Sub setRequired(b As Boolean)
	bRequired = b
	CustProps.put("Required", b)
End Sub

'get Required
Sub getRequired As Boolean
	Return bRequired
End Sub

Sub Clear			'ignoredeadcode
	If mElement = Null Then Return
	mElement.empty
	items.Initialize 
End Sub

'set Color, needs Refresh
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
End Sub
'set Count
Sub setCount(s As Int)
	iCount = s
	CustProps.put("Count", s)
End Sub


Sub Refresh			'ignoredeadcode
	If mElement = Null Then Return
	Clear
	Dim tCount As Int = modSD5.CInt(iCount)
	Dim fCount As Int = 0
	Dim maskName As String = modSD5.FixMask(sMask)
	Dim colorName As String = modSD5.FixColor("bg", sColor)
	If sRatingBackgroundColor <> "" Then
		colorName = modSD5.FixColor("bg", sRatingBackgroundColor)
	End If
	Dim sb As StringBuilder
	sb.Initialize
	items.Initialize 		
	Select Case bReadOnly
	Case True
		For fCount = 1 To tCount
			sb.Append($"<div id="${mName}_${fCount}" value="${fCount}" class="${maskName} ${colorName}" aria-label="${fCount} star"></div>"$)
		Next
		mElement.Append(sb.ToString)
	Case False
		If bFirstHidden Then
			sb.Append($"<input id="${mName}_0" type="radio" value="0" name="${mName}" class="rating-hidden hidden hide" aria-label="Clear"></input>"$)
		End If		
		Dim itemClasses As List
		For fCount = 1 To tCount
			itemClasses.Initialize
			itemClasses.Add(maskName)
			itemClasses.Add(colorName)
			Dim posD As Double = fCount
			If bHalf Then 
				posD = fCount - 0.5
				itemClasses.add("mask-half-1")
			End If
			Dim sclasses As String = modSD5.Join(" ", itemClasses)
				sb.Append($"<input id="${mName}_${fCount}" type="radio" value="${posD}" name="${mName}" class="${sclasses}" aria-label="${posD} star"></input>"$)
			items.Add($"${mName}_${fCount}"$)
			If bHalf Then
				itemClasses.Initialize
				itemClasses.Add(maskName)
				itemClasses.Add(colorName)
				itemClasses.add("mask-half-2")
				Dim sclasses As String = modSD5.Join(" ", itemClasses)
				sb.Append($"<input id="${mName}_${fCount}_2" type="radio" value="${fCount}" name="${mName}" class="${sclasses}" aria-label="${fCount} star"></input>"$)
				items.Add($"${mName}_${fCount}_2"$)
			End If
		Next
		BANano.Await(mElement.Append(sb.ToString))
		For Each k As String In items
			UI.OnChildEvent(k, "change", Me, "changed")
		Next
	End Select
End Sub

'set Rating Background Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setRangeBackgroundColor(s As String)
	sRatingBackgroundColor = s
	CustProps.put("RatingBackgroundColor", s)
End Sub

'get Rating Background Color
Sub getRatingBackgroundColor As String
	Return sRatingBackgroundColor
End Sub

private Sub changed(e As BANanoEvent)			'ignoreDeadCode
	e.PreventDefault
	Dim xChecked As String = UI.GetValueByID(e.ID)
	BANano.CallSub(mCallBack, $"${mEventName}_change"$, Array(xChecked))
End Sub


'set First Hidden, needs Refresh
Sub setFirstHidden(b As Boolean)
	bFirstHidden = b
	CustProps.put("FirstHidden", b)
End Sub

'set Gap
Sub setGap(s As String)			'ignoredeadcode
	sGap = s
	CustProps.put("Gap", s)
	If mElement = Null Then Return
	If bHalf Then Return
	If s <> "" Then UI.AddClass(mElement, "gap-" & s)
End Sub

'set Half, needs refresh
Sub setHalf(b As Boolean)			'ignoredeadcode
	bHalf = b
	CustProps.put("Half", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "rating-half")
	Else
		UI.RemoveClass(mElement, "rating-half")
	End If
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
'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub
'set Mask
'options: squircle|heart|hexagon|hexagon-2|decagon|pentagon|diamond|square|circle|star|star-2|triangle|triangle-2|triangle-3|triangle-4|none|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
Sub setMask(s As String)
	sMask = s
	CustProps.put("Mask", s)
End Sub
'set Read Only
Sub setReadOnly(b As Boolean)
	bReadOnly = b
	CustProps.put("ReadOnly", b)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)			'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "rating", s)
End Sub
'set Value
'to deselect all items, use 0
Sub setValue(s As String)			'ignoredeadcode
	sValue = s
	CustProps.put("Value", s)
	If mElement = Null Then Return
	If bReadOnly = True Then
		UI.SetAttrByID($"${mName}_${s}"$, "aria-current", "true")
	Else	
		UI.SetCheckedByID($"${mName}_${s}"$, True)
	End If
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Count
Sub getCount As Int
	Return iCount
End Sub
'get First Hidden
Sub getFirstHidden As Boolean
	Return bFirstHidden
End Sub
'get Gap
Sub getGap As String
	Return sGap
End Sub
'get Half
Sub getHalf As Boolean
	Return bHalf
End Sub
'get Hint
Sub getHint As String
	Return sHint
End Sub
'get Label
Sub getLabel As String
	Return sLabel
End Sub
'get Mask
Sub getMask As String
	Return sMask
End Sub
'get Read Only
Sub getReadOnly As Boolean
	Return bReadOnly
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Value
Sub getValue As String
	Dim selectedItems As List
	selectedItems.Initialize
	For Each item As String In items
		Dim b As Boolean = UI.GetCheckedByID(item)
		If b Then
			Dim ok As String = modSD5.MvField(item, 2, "_")
			selectedItems.Add(ok)
		End If
	Next
	sValue = modSD5.Join(";", selectedItems)
	Return sValue
End Sub

Sub IsBlank As Boolean
	Dim v As String = getValue
	v = modSD5.CStr(v)
	v = v.Trim
	If v = "" Or v = "0" Then
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