B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (value As Boolean)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: SwapType, DisplayName: Swap Type, FieldType: String, DefaultValue: text, Description: Swap Type, List: icon|text
#DesignerProperty: Key: TypeOf, DisplayName: Type Of, FieldType: String, DefaultValue: flip, Description: Type Of, List: flip|rotate
#DesignerProperty: Key: OnIcon, DisplayName: On Icon, FieldType: String, DefaultValue: , Description: On Icon
#DesignerProperty: Key: OffIcon, DisplayName: Off Icon, FieldType: String, DefaultValue: , Description: Off Icon
#DesignerProperty: Key: IndeterminateIcon, DisplayName: Indeterminate Icon, FieldType: String, DefaultValue: , Description: Indeterminate Icon
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 32px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 32px, Description: Width
#DesignerProperty: Key: OnText, DisplayName: On Text, FieldType: String, DefaultValue: ON, Description: On Text
#DesignerProperty: Key: OnTextColor, DisplayName: On Text Color, FieldType: String, DefaultValue: , Description: On Text Color
#DesignerProperty: Key: OffText, DisplayName: Off Text, FieldType: String, DefaultValue: OFF, Description: Off Text
#DesignerProperty: Key: OffTextColor, DisplayName: Off Text Color, FieldType: String, DefaultValue: , Description: Off Text Color
#DesignerProperty: Key: IndeterminateText, DisplayName: Indeterminate Text, FieldType: String, DefaultValue: NA, Description: Indeterminate Text
#DesignerProperty: Key: IndeterminateTextColor, DisplayName: Indeterminate Text Color, FieldType: String, DefaultValue: , Description: Indeterminate Text Color
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: 9xl, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: Active, DisplayName: Active, FieldType: Boolean, DefaultValue: False, Description: Active
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
	Private bActive As Boolean = False
	Private sHeight As String = "32px"
	Private sIndeterminateIcon As String = ""
	Private sIndeterminateText As String = "NA"
	Private sIndeterminateTextColor As String = ""
	Private sOffIcon As String = ""
	Private sOffText As String = "OFF"
	Private sOffTextColor As String = ""
	Private sOnIcon As String = ""
	Private sOnText As String = "ON"
	Private sOnTextColor As String = ""
	Private sSwap As String = "swap"
	Private sSwapType As String = "text"
	Private sTextSize As String = "9xl"
	Private sTypeOf As String = "flip"
	Private sWidth As String = "32px"
	Public CONST SWAPTYPE_ICON As String = "icon"
	Public CONST SWAPTYPE_TEXT As String = "text"
	Public CONST TYPEOF_FLIP As String = "flip"
	Public CONST TYPEOF_ROTATE As String = "rotate"
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
	UI.AddStyle(mElement, "position", s)
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
		bActive = Props.GetDefault("Active", False)
		bActive = modSD5.CBool(bActive)
		sHeight = Props.GetDefault("Height", "32px")
		sHeight = modSD5.CStr(sHeight)
		sIndeterminateIcon = Props.GetDefault("IndeterminateIcon", "")
		sIndeterminateIcon = modSD5.CStr(sIndeterminateIcon)
		sIndeterminateText = Props.GetDefault("IndeterminateText", "NA")
		sIndeterminateText = modSD5.CStr(sIndeterminateText)
		sIndeterminateTextColor = Props.GetDefault("IndeterminateTextColor", "")
		sIndeterminateTextColor = modSD5.CStr(sIndeterminateTextColor)
		sOffIcon = Props.GetDefault("OffIcon", "")
		sOffIcon = modSD5.CStr(sOffIcon)
		sOffText = Props.GetDefault("OffText", "OFF")
		sOffText = modSD5.CStr(sOffText)
		sOffTextColor = Props.GetDefault("OffTextColor", "")
		sOffTextColor = modSD5.CStr(sOffTextColor)
		sOnIcon = Props.GetDefault("OnIcon", "")
		sOnIcon = modSD5.CStr(sOnIcon)
		sOnText = Props.GetDefault("OnText", "ON")
		sOnText = modSD5.CStr(sOnText)
		sOnTextColor = Props.GetDefault("OnTextColor", "")
		sOnTextColor = modSD5.CStr(sOnTextColor)
		sSwapType = Props.GetDefault("SwapType", "text")
		sSwapType = modSD5.CStr(sSwapType)
		sTextSize = Props.GetDefault("TextSize", "9xl")
		sTextSize = modSD5.CStr(sTextSize)
		sTypeOf = Props.GetDefault("TypeOf", "flip")
		sTypeOf = modSD5.CStr(sTypeOf)
		sTypeOf = sTypeOf.ToLowerCase
		sWidth = Props.GetDefault("Width", "32px")
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
	UI.AddClassDT(sSwap)
	UI.AddClassDT("swap-" & sTypeOf)
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]
	<label id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<input id="${mName}_check" type="checkbox" class="hidden"></input>
	</label>"$).Get("#" & mName)
	Select Case sSwapType
	Case "text"
		setTextSize(sTextSize)
		mElement.Append($"[BANCLEAN]
		<div id="${mName}_indeterminate" class="swap-indeterminate">${sIndeterminateText}</div>
		<div id="${mName}_on" class="swap-on">${sOnText}</div>
  		<div id="${mName}_off" class="swap-off">${sOffText}</div>"$)
		setOffTextColor(sOffTextColor)
		setOnTextColor(sOnTextColor)
		setIndeterminateTextColor(sIndeterminateTextColor)
	Case "icon"
		mElement.Append($"[BANCLEAN]
		<div id="${mName}_indeterminate" class="swap-indeterminate"><img id="${mName}_indeterminateicon" src="${sIndeterminateIcon}" alt=""></img></div>
		<div id="${mName}_on" class="swap-on"><img id="${mName}_onicon" src="${sOnIcon}" alt=""></img></div>
  		<div id="${mName}_off" class="swap-off"><img id="${mName}_officon" src="${sOffIcon}" alt=""></img></div>"$)
		setWidth(sWidth)
		setHeight(sHeight)
	End Select
	setActive(bActive)	
	UI.OnChildEvent($"${mName}_check"$, "change", Me, "swapchange")
End Sub

private Sub swapchange(e As BANanoEvent)
	e.PreventDefault
	Dim b As Boolean = getActive
	BANano.CallSub(mCallBack, $"${mName}_change"$, Array(b))
End Sub

'set Active
Sub setActive(b As Boolean)
	bActive = b
	CustProps.put("Active", b)
	If mElement = Null Then Return
	UI.SetCheckedByID($"${mName}_check"$, b)
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	UI.AddStyleByID($"${mName}_indeterminateicon"$, "height", sHeight)
	UI.AddStyleByID($"${mName}_onicon"$, "height", sHeight)
	UI.AddStyleByID($"${mName}_officon"$, "height", sHeight)
End Sub

'set Indeterminate Icon
Sub setIndeterminateIcon(s As String)
	sIndeterminateIcon = s
	CustProps.put("IndeterminateIcon", s)
	If mElement = Null Then Return
	UI.SetImageByID($"${mName}_indeterminate"$, s)
End Sub
'set Indeterminate Text
Sub setIndeterminateText(s As String)
	sIndeterminateText = s
	CustProps.put("IndeterminateText", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_indeterminate"$, s)
End Sub
'set Indeterminate Text Color
Sub setIndeterminateTextColor(s As String)
	sIndeterminateTextColor = s
	CustProps.put("IndeterminateTextColor", s)
	If mElement = Null Then Return
	UI.SetTextColorByID($"${mName}_indeterminate"$, s)
End Sub
'set Off Icon
Sub setOffIcon(s As String)
	sOffIcon = s
	CustProps.put("OffIcon", s)
	If mElement = Null Then Return
	UI.SetImageByID($"${mName}_officon"$, sOffIcon)
End Sub
'set Off Text
Sub setOffText(s As String)
	sOffText = s
	CustProps.put("OffText", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_off"$, s)
End Sub
'set Off Text Color
Sub setOffTextColor(s As String)
	sOffTextColor = s
	CustProps.put("OffTextColor", s)
	If mElement = Null Then Return
	UI.SetTextColorByID($"${mName}_off"$, s)
End Sub
'set On Icon
Sub setOnIcon(s As String)
	sOnIcon = s
	CustProps.put("OnIcon", s)
	If mElement = Null Then Return
	UI.SetImageByID($"${mName}_onicon"$, s)
End Sub
'set On Text
Sub setOnText(s As String)
	sOnText = s
	CustProps.put("OnText", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_on"$, s)
End Sub
'set On Text Color
Sub setOnTextColor(s As String)
	sOnTextColor = s
	CustProps.put("OnTextColor", s)
	If mElement = Null Then Return
	UI.SetTextColorByID($"${mName}_on"$, s)
End Sub
'set Swap Type
'options: icon|text
Sub setSwapType(s As String)
	sSwapType = s
	CustProps.put("SwapType", s)
End Sub
'set Text Size
Sub setTextSize(s As String)
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	UI.SetTextSize(mElement, s)
End Sub

'set Type Of
'options: flip|rotate
Sub setTypeOf(s As String)
	sTypeOf = s
	CustProps.put("TypeOf", s)
	If mElement = Null Then Return
	UI.AddClass(mElement, "swap-" & s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	UI.AddStyleByID($"${mName}_indeterminateicon"$, "height", sWidth)
	UI.AddStyleByID($"${mName}_onicon"$, "height", sWidth)
	UI.AddStyleByID($"${mName}_officon"$, "height", sWidth)
End Sub
'get Active
Sub getActive As Boolean
	bActive = UI.GetCheckedByID($"${mName}_check"$)
	bActive = modSD5.CBool(bActive)
	Return bActive
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Indeterminate Icon
Sub getIndeterminateIcon As String
	Return sIndeterminateIcon
End Sub
'get Indeterminate Text
Sub getIndeterminateText As String
	Return sIndeterminateText
End Sub
'get Indeterminate Text Color
Sub getIndeterminateTextColor As String
	Return sIndeterminateTextColor
End Sub
'get Off Icon
Sub getOffIcon As String
	Return sOffIcon
End Sub
'get Off Text
Sub getOffText As String
	Return sOffText
End Sub
'get Off Text Color
Sub getOffTextColor As String
	Return sOffTextColor
End Sub
'get On Icon
Sub getOnIcon As String
	Return sOnIcon
End Sub
'get On Text
Sub getOnText As String
	Return sOnText
End Sub
'get On Text Color
Sub getOnTextColor As String
	Return sOnTextColor
End Sub
'get Swap Type
Sub getSwapType As String
	Return sSwapType
End Sub
'get Text Size
Sub getTextSize As String
	Return sTextSize
End Sub
'get Type Of
Sub getTypeOf As String
	Return sTypeOf
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub