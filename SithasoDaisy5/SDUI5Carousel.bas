B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Direction, DisplayName: Direction, FieldType: String, DefaultValue: horizontal, Description: Direction, List: horizontal|none|vertical
#DesignerProperty: Key: SnapItems, DisplayName: Snap Items, FieldType: String, DefaultValue: start, Description: Snap Items, List: center|end|start
#DesignerProperty: Key: SpaceX, DisplayName: Space X, FieldType: String, DefaultValue: 4, Description: Space X
#DesignerProperty: Key: SpaceY, DisplayName: Space Y, FieldType: String, DefaultValue: , Description: Space Y
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: neutral, Description: Background Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: MinHeight, DisplayName: Min Height, FieldType: String, DefaultValue: , Description: Min Height
#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue: , Description: Max Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: MinWidth, DisplayName: Min Width, FieldType: String, DefaultValue: , Description: Min Width
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: , Description: Max Width
#DesignerProperty: Key: IndicatorButtons, DisplayName: Indicator Buttons, FieldType: Boolean, DefaultValue: False, Description: Indicator Buttons
#DesignerProperty: Key: NavigationButtons, DisplayName: Navigation Buttons, FieldType: Boolean, DefaultValue: False, Description: Navigation Buttons
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: True, Description: Rounded Box
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
	Private sBackgroundColor As String = "neutral"
	Private sDirection As String = "horizontal"
	Private sHeight As String = ""
	Private bIndicatorButtons As Boolean = False
	Private bNavigationButtons As Boolean = False
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = True
	Private sShadow As String = "none"
	Private sSnapItems As String = "start"
	Private sSpaceX As String = "4"
	Private sSpaceY As String = ""
	Private sWidth As String = "full"
	Public CONST DIRECTION_HORIZONTAL As String = "horizontal"
	Public CONST DIRECTION_NONE As String = "none"
	Public CONST DIRECTION_VERTICAL As String = "vertical"
	Public CONST SNAPITEMS_CENTER As String = "center"
	Public CONST SNAPITEMS_END As String = "end"
	Public CONST SNAPITEMS_START As String = "start"
	Private sMaxHeight As String = ""
	Private sMaxWidth As String = ""
	Private sMinHeight As String = ""
	Private sMinWidth As String = ""

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
		sBackgroundColor = Props.GetDefault("BackgroundColor", "neutral")
		sBackgroundColor = modSD5.CStr(sBackgroundColor)
		sDirection = Props.GetDefault("Direction", "horizontal")
		sDirection = modSD5.CStr(sDirection)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		bIndicatorButtons = Props.GetDefault("IndicatorButtons", False)
		bIndicatorButtons = modSD5.CBool(bIndicatorButtons)
		bNavigationButtons = Props.GetDefault("NavigationButtons", False)
		bNavigationButtons = modSD5.CBool(bNavigationButtons)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = modSD5.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", True)
		bRoundedBox = modSD5.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sSnapItems = Props.GetDefault("SnapItems", "start")
		sSnapItems = modSD5.CStr(sSnapItems)
		sSpaceX = Props.GetDefault("SpaceX", "4")
		sSpaceX = modSD5.CStr(sSpaceX)
		sSpaceY = Props.GetDefault("SpaceY", "")
		sSpaceY = modSD5.CStr(sSpaceY)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = modSD5.CStr(sWidth)
		sMaxHeight = Props.GetDefault("MaxHeight", "")
		sMaxHeight = modSD5.CStr(sMaxHeight)
		sMaxWidth = Props.GetDefault("MaxWidth", "")
		sMaxWidth = modSD5.CStr(sMaxWidth)
		sMinHeight = Props.GetDefault("MinHeight", "")
		sMinHeight = modSD5.CStr(sMinHeight)
		sMinWidth = Props.GetDefault("MinWidth", "")
		sMinWidth = modSD5.CStr(sMinWidth)        
	End If
	'
	'If sBackgroundColor <> "neutral" Then UI.AddBackgroundColorDT(sBackgroundColor)
	UI.AddClassDT("carousel")
	If sMaxHeight <> "" Then UI.AddMaxHeightDT(sMaxHeight)
	If sMaxWidth <> "" Then UI.AddMaxWidthDT(sMaxWidth)
	If sMinHeight <> "" Then UI.AddMinHeightDT(sMinHeight)
	If sMinWidth <> "" Then UI.AddMinWidthDT(sMinWidth)        
	If sDirection <> "" Then UI.AddClassDT("carousel-" & sDirection)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sSnapItems <> "" Then UI.AddClassDT("carousel-" & sSnapItems)
	If sSpaceX <> "" Then UI.AddClassDT("space-x-" & sSpaceX)
	If sSpaceY <> "" Then UI.AddClassDT("space-y-" & sSpaceY)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
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
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Direction
'options: horizontal|none|vertical
Sub setDirection(s As String)
	sDirection = s
	CustProps.put("Direction", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "carousel-" & s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Indicator Buttons
Sub setIndicatorButtons(b As Boolean)
	bIndicatorButtons = b
	CustProps.put("IndicatorButtons", b)
End Sub
'set Navigation Buttons
Sub setNavigationButtons(b As Boolean)
	bNavigationButtons = b
	CustProps.put("NavigationButtons", b)
	If mElement = Null Then Return
End Sub
'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub
'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "rounded-box")
	Else
		UI.RemoveClass(mElement, "rounded-box")
	End If
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Snap Items
'options: center|end|start
Sub setSnapItems(s As String)
	sSnapItems = s
	CustProps.put("SnapItems", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "carousel-" & s)
End Sub
'set Space X
Sub setSpaceX(s As String)
	sSpaceX = s
	CustProps.put("SpaceX", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "space-x-" & s)
End Sub
'set Space Y
Sub setSpaceY(s As String)
	sSpaceY = s
	CustProps.put("SpaceY", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "space-y-" & s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Direction
Sub getDirection As String
	Return sDirection
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Indicator Buttons
Sub getIndicatorButtons As Boolean
	Return bIndicatorButtons
End Sub
'get Navigation Buttons
Sub getNavigationButtons As Boolean
	Return bNavigationButtons
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Snap Items
Sub getSnapItems As String
	Return sSnapItems
End Sub
'get Space X
Sub getSpaceX As String
	Return sSpaceX
End Sub
'get Space Y
Sub getSpaceY As String
	Return sSpaceY
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Max Height
Sub setMaxHeight(s As String)
	sMaxHeight = s
	CustProps.put("MaxHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxHeight(mElement, s)
End Sub
'set Max Width
Sub setMaxWidth(s As String)
	sMaxWidth = s
	CustProps.put("MaxWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxWidth(mElement, s)
End Sub
'set Min Height
Sub setMinHeight(s As String)
	sMinHeight = s
	CustProps.put("MinHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMinHeight(mElement, s)
End Sub
'set Min Width
Sub setMinWidth(s As String)
	sMinWidth = s
	CustProps.put("MinWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMinWidth(mElement, s)
End Sub
'get Max Height
Sub getMaxHeight As String
	Return sMaxHeight
End Sub
'get Max Width
Sub getMaxWidth As String
	Return sMaxWidth
End Sub
'get Min Height
Sub getMinHeight As String
	Return sMinHeight
End Sub
'get Min Width
Sub getMinWidth As String
	Return sMinWidth
End Sub