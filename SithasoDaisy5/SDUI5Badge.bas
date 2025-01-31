B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)
#Event: LeftClick (e As BANanoEvent)
#Event: RightClick (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: UseSpan, DisplayName: Use Span, FieldType: Boolean, DefaultValue: False, Description: Use Span
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Badge, Description: Text
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color, List: accent|error|info|neutral|primary|secondary|success|warning|none
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: none, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Dash, DisplayName: Dash, FieldType: Boolean, DefaultValue: False, Description: Dash
#DesignerProperty: Key: Ghost, DisplayName: Ghost, FieldType: Boolean, DefaultValue: False, Description: Ghost
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: LeftIcon, DisplayName: Left Icon, FieldType: String, DefaultValue: , Description: Left Icon
#DesignerProperty: Key: LeftIconColor, DisplayName: Left Icon Color, FieldType: String, DefaultValue: , Description: Left Icon Color
#DesignerProperty: Key: LeftIconSize, DisplayName: Left Icon Size, FieldType: String, DefaultValue: 16px, Description: Left Icon Size
#DesignerProperty: Key: Outline, DisplayName: Outline, FieldType: Boolean, DefaultValue: False, Description: Outline
#DesignerProperty: Key: RightIcon, DisplayName: Right Icon, FieldType: String, DefaultValue: , Description: Right Icon
#DesignerProperty: Key: RightIconColor, DisplayName: Right Icon Color, FieldType: String, DefaultValue: , Description: Right Icon Color
#DesignerProperty: Key: RightIconSize, DisplayName: Right Icon Size, FieldType: String, DefaultValue: 16px, Description: Right Icon Size
#DesignerProperty: Key: Round, DisplayName: Round, FieldType: Boolean, DefaultValue: False, Description: Round
#DesignerProperty: Key: Soft, DisplayName: Soft, FieldType: Boolean, DefaultValue: False, Description: Soft
#DesignerProperty: Key: IndicatorItem, DisplayName: Indicator Item, FieldType: Boolean, DefaultValue: False, Description: Indicator Item
#DesignerProperty: Key: IndicatorPosition, DisplayName: Indicator Position, FieldType: String, DefaultValue: top-start, Description: Indicator Position, List: bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
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
	Private sText As String = "Badge"
	Public Tag As Object
	'Public Root As SDUIElement
	Private sBackgroundColor As String = ""
	Private sColor As Boolean = "primary"
	Private bDash As Boolean = False
	Private bGhost As Boolean = False
	Private sHeight As String = ""
	Private sLeftIcon As String = ""
	Private sLeftIconColor As String = ""
	Private sLeftIconSize As String = "16px"
	Private bOutline As Boolean = False
	Private sRightIcon As String = ""
	Private sRightIconColor As String = ""
	Private sRightIconSize As String = "16px"
	Private bRound As Boolean = False
	Private sSize As String = "none"
	Private bSoft As Boolean = False
	Private sTextColor As String = ""
	Private sTextSize As String = ""
	Private bUseSpan As Boolean = False
	Private sWidth As String = ""
	Private sIndicatorPosition As String = "top-start"
	Private bIndicatorItem As Boolean = False
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
'set text
Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	Dim txt As BANanoElement = BANano.GetElement($"#${mName}_text"$)
	UI.SetText(txt, text)
	If sText = "" Then
		'hide
		UI.SetVisible(txt, False)
	Else
		'show
		UI.SetVisible(txt, True)
	End If
End Sub
'get text
Sub getText As String
	Return UI.GetText(mElement)
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		sColor = Props.GetDefault("Color", "primary")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bDash = Props.GetDefault("Dash", False)
		bDash = modSD5.CBool(bDash)
		bGhost = Props.GetDefault("Ghost", False)
		bGhost = modSD5.CBool(bGhost)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sLeftIcon = Props.GetDefault("LeftIcon", "")
		sLeftIcon = modSD5.CStr(sLeftIcon)
		sLeftIconColor = Props.GetDefault("LeftIconColor", "")
		sLeftIconColor = modSD5.CStr(sLeftIconColor)
		sLeftIconSize = Props.GetDefault("LeftIconSize", "16px")
		sLeftIconSize = modSD5.CStr(sLeftIconSize)
		bOutline = Props.GetDefault("Outline", False)
		bOutline = modSD5.CBool(bOutline)
		sRightIcon = Props.GetDefault("RightIcon", "")
		sRightIcon = modSD5.CStr(sRightIcon)
		sRightIconColor = Props.GetDefault("RightIconColor", "")
		sRightIconColor = modSD5.CStr(sRightIconColor)
		sRightIconSize = Props.GetDefault("RightIconSize", "16px")
		sRightIconSize = modSD5.CStr(sRightIconSize)
		bRound = Props.GetDefault("Round", False)
		bRound = modSD5.CBool(bRound)
		sSize = Props.GetDefault("Size", "none")
		sSize = modSD5.CStr(sSize)
		If sSize = "none" Then sSize = ""
		bSoft = Props.GetDefault("Soft", False)
		bSoft = modSD5.CBool(bSoft)
		sTextSize = Props.GetDefault("TextSize", "")
		sTextSize = modSD5.CStr(sTextSize)
		bUseSpan = Props.GetDefault("UseSpan", False)
		bUseSpan = modSD5.CBool(bUseSpan)
		sWidth = Props.GetDefault("Width", "")
		sWidth = modSD5.CStr(sWidth)
		sIndicatorPosition = Props.GetDefault("IndicatorPosition", "top-start")
		sIndicatorPosition = modSD5.CStr(sIndicatorPosition)
		bIndicatorItem = Props.GetDefault("IndicatorItem", False)
		bIndicatorItem = modSD5.CBool(bIndicatorItem)
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
	UI.AddClassDT("badge")
	If sColor <> "" Then UI.AddColorDT("badge", sColor)
	If bDash = True Then UI.AddClassDT("badge-dash")
	If bGhost = True Then UI.AddClassDT("badge-ghost")
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If bOutline = True Then UI.AddClassDT("badge-outline")
	If sSize <> "" Then UI.AddClassDT("badge-" & sSize)
	If bSoft = True Then UI.AddClassDT("badge-soft")
'	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sTextSize <> "" Then UI.AddTextSizeDT(sTextSize)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
	If bRound Then UI.AddClassDT("rounded-full aspect-square")
	If bIndicatorItem Then
		UI.AddClassDT("indicator-item")
	End If	  
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	If bUseSpan Then
		mElement = mTarget.Append($"[BANCLEAN]
		<span id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}
		<img id="${mName}_lefticon" src="${sLeftIcon}" alt="" class="hidden"></img>
		<span id="${mName}_text">${sText}</span>
		<img id="${mName}_righticon" src="${sRightIcon}" alt="" class="hidden"></img>
		</span>"$).Get("#" & mName)
	Else
		mElement = mTarget.Append($"[BANCLEAN]
		<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<img id="${mName}_lefticon" src="${sLeftIcon}" alt="" class="hidden"></img>
		<span id="${mName}_text">${sText}</span>
		<img id="${mName}_righticon" src="${sRightIcon}" alt="" class="hidden"></img>		
		</div>"$).Get("#" & mName)
	End If
	setLeftIcon(sLeftIcon)
	setLeftIconColor(sLeftIconColor)
	setLeftIconSize(sLeftIconSize)
	setRightIcon(sRightIcon)
	setRightIconColor(sRightIconColor)
	setTextColor(sTextColor)
	setTextSize(sTextSize)
	setRightIconSize(sRightIconSize)
	setSize(sSize)
	UI.OnEvent(mElement, "click", mCallBack, $"${mEventName}_click"$)
	UI.OnChildEvent($"${mName}_lefticon"$, "click", mCallBack, $"${mName})_leftclick"$)
	UI.OnChildEvent($"${mName}_righticon"$, "click", mCallBack, $"${mName})_rightclick"$)
	setIndicatorPosition(sIndicatorPosition)
'	setVisible(bVisible)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "badge", s)
End Sub
'set Dash
Sub setDash(b As Boolean)
	bDash = b
	CustProps.put("Dash", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "badge-dash")
	Else
		UI.RemoveClass(mElement, "badge-dash")
	End If
End Sub
'set Ghost
Sub setGhost(b As Boolean)
	bGhost = b
	CustProps.put("Ghost", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "badge-ghost")
	Else
		UI.RemoveClass(mElement, "badge-ghost")
	End If
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, s)
End Sub
'set Left Icon
Sub setLeftIcon(s As String)
	sLeftIcon = s
	CustProps.put("LeftIcon", s)
	If mElement = Null Then Return
	Dim icon As BANanoElement = BANano.GetElement($"#${mName}_lefticon"$)
	UI.SetImage(icon, s)
	If sLeftIcon = "" Then
		'hide
		UI.SetVisible(icon, False)
	Else
		'show
		UI.UpdateClass(mElement, "gap", "gap-2")
		UI.SetVisible(icon, True)
	End If
End Sub
'set Left Icon Color
Sub setLeftIconColor(s As String)
	sLeftIconColor = s
	CustProps.put("LeftIconColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_lefticon"$, s)
End Sub
'set Left Icon Size
Sub setLeftIconSize(s As String)
	sLeftIconSize = s
	CustProps.put("LeftIconSize", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetWidthByID($"${mName}_lefticon"$, s)
	UI.SetHeightByID($"${mName}_lefticon"$, s)
End Sub
'set Outline
Sub setOutline(b As Boolean)
	bOutline = b
	CustProps.put("Outline", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "badge-outline")
	Else
		UI.RemoveClass(mElement, "badge-outline")
	End If
End Sub

'set Right Icon
Sub setRightIcon(s As String)
	sRightIcon = s
	CustProps.put("RightIcon", s)
	If mElement = Null Then Return
	Dim icon As BANanoElement = BANano.GetElement($"#${mName}_righticon"$)
	UI.SetImage(icon, s)
	If sRightIcon = "" Then
		'hide
		UI.SetVisible(icon, False)
	Else
		'show
		UI.UpdateClass(mElement, "gap", "gap-2")
		UI.SetVisible(icon, True)
	End If
End Sub
'set Right Icon Color
Sub setRightIconColor(s As String)
	sRightIconColor = s
	CustProps.put("RightIconColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_righticon"$, s)
End Sub
'set Right Icon Size
Sub setRightIconSize(s As String)
	sRightIconSize = s
	CustProps.put("RightIconSize", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetHeightByID($"${mName}_righticon"$, s)
	UI.SetWidthByID($"${mName}_righticon"$, s)
End Sub
'set Round
Sub setRound(b As Boolean)
	bRound = b
	CustProps.put("Round", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "rounded-full aspect-square")
	Else
		UI.RemoveClass(mElement, "rounded-full aspect-square")
	End If
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "sm"
	UI.SetSize(mElement, "size", "badge", s)
End Sub
'set Soft
Sub setSoft(b As Boolean)
	bSoft = b
	CustProps.put("Soft", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "badge-Soft")
	Else
		UI.RemoveClass(mElement, "badge-Soft")
	End If
End Sub

'set Text Color
Sub setTextColor(s As String)
    sTextColor = s
    CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_text"$, s)
End Sub
'set Text Size
'options: xs|none|sm|md|lg|xl|base|2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl
Sub setTextSize(s As String)
    sTextSize = s
    CustProps.put("TextSize", s)
	If mElement = Null Then Return
	UI.SetTextSizeByID($"${mName}_text"$, s)
End Sub
'set Use Span
Sub setUseSpan(b As Boolean)
    bUseSpan = b
    CustProps.put("UseSpan", b)
End Sub
'set Width
Sub setWidth(s As String)
    sWidth = s
    CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, s)
End Sub

'get Background Color
Sub getBackgroundColor As String
        Return sBackgroundColor
End Sub
'get Color
Sub getColor As String
        Return sColor
End Sub
'get Dash
Sub getDash As Boolean
        Return bDash
End Sub
'get Ghost
Sub getGhost As Boolean
        Return bGhost
End Sub
'get Height
Sub getHeight As String
        Return sHeight
End Sub
'get Left Icon
Sub getLeftIcon As String
        Return sLeftIcon
End Sub
'get Left Icon Color
Sub getLeftIconColor As String
        Return sLeftIconColor
End Sub
'get Left Icon Size
Sub getLeftIconSize As String
        Return sLeftIconSize
End Sub
'get Outline
Sub getOutline As Boolean
        Return bOutline
End Sub
'get Right Icon
Sub getRightIcon As String
        Return sRightIcon
End Sub
'get Right Icon Color
Sub getRightIconColor As String
        Return sRightIconColor
End Sub
'get Right Icon Size
Sub getRightIconSize As String
        Return sRightIconSize
End Sub
'get Round
Sub getRound As Boolean
        Return bRound
End Sub
'get Size
Sub getSize As String
        Return sSize
End Sub
'get Soft
Sub getSoft As Boolean
        Return bSoft
End Sub
'get Text Color
Sub getTextColor As String
        Return sTextColor
End Sub
'get Text Size
Sub getTextSize As String
        Return sTextSize
End Sub
'get Use Span
Sub getUseSpan As Boolean
        Return bUseSpan
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Indicator Position
'options: bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
Sub setIndicatorPosition(s As String)
	sIndicatorPosition = s
	CustProps.put("IndicatorPosition", s)
	If mElement = Null Then Return
	If bIndicatorItem = False Then Return
	'bottom-center|middle-center|bottom-end|bottom-start|middle-end|middle-start|top-center|top-end|top-start
	Dim fpart As String = modSD5.mvfield(s,1,"-")
	Dim spart As String = modSD5.mvfield(s,2,"-")
	UI.UpdateClass(mElement, "badgeposition", $"indicator-${fpart} indicator-${spart}"$)
End Sub
'set Indicator Item
Sub setIndicatorItem(b As Boolean)
	bIndicatorItem = b
	CustProps.put("IndicatorItem", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "indicator-item")
	Else
		UI.RemoveClass(mElement, "indicator-item")
	End If
End Sub

'get Indicator Position
Sub getIndicatorPosition As String
	Return sIndicatorPosition
End Sub
'get Indicator Item
Sub getIndicatorItem As Boolean
	Return bIndicatorItem
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub