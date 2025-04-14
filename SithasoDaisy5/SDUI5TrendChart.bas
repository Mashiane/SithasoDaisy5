B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: ChartType, DisplayName: Chart Type, FieldType: String, DefaultValue: bar, Description: Chart Type, List: bar|line|pie|stack
#DesignerProperty: Key: Labels (,), DisplayName: Labels, FieldType: String, DefaultValue: , Description: Labels
#DesignerProperty: Key: Values (,), DisplayName: Values, FieldType: String, DefaultValue: , Description: Values
#DesignerProperty: Key: MinValue, DisplayName: Min, FieldType: String, DefaultValue: 0, Description: Min
#DesignerProperty: Key: MaxValue, DisplayName: Max, FieldType: String, DefaultValue: 0, Description: Max
#DesignerProperty: Key: Gap, DisplayName: Gap, FieldType: String, DefaultValue: 2, Description: Gap
#DesignerProperty: Key: Horizontal, DisplayName: Horizontal, FieldType: Boolean, DefaultValue: False, Description: Horizontal
#DesignerProperty: Key: Inside, DisplayName: Inside, FieldType: Boolean, DefaultValue: False, Description: Inside
#DesignerProperty: Key: Point, DisplayName: Point, FieldType: String, DefaultValue: , Description: Point
#DesignerProperty: Key: Radius, DisplayName: Radius, FieldType: String, DefaultValue: 2, Description: Radius
#DesignerProperty: Key: Rotate, DisplayName: Rotate, FieldType: String, DefaultValue: 0, Description: Rotate
#DesignerProperty: Key: Static, DisplayName: Static, FieldType: Boolean, DefaultValue: False, Description: Static
#DesignerProperty: Key: Donut, DisplayName: Donut, FieldType: String, DefaultValue: , Description: Donut
#DesignerProperty: Key: TooltipDisabled, DisplayName: Tooltip Disabled, FieldType: Boolean, DefaultValue: False, Description: Tooltip Disabled
#DesignerProperty: Key: TooltipFormat, DisplayName: Tooltip Format, FieldType: String, DefaultValue: @L @V, Description: Tooltip Format
#DesignerProperty: Key: Weight, DisplayName: Weight, FieldType: String, DefaultValue: 2, Description: Weight
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 400px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 400px, Description: Width
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: ShapeColor, DisplayName: Shape Color, FieldType: String, DefaultValue: #597BFC, Description: Shape Color
#DesignerProperty: Key: ShapeOpacity, DisplayName: Shape Opacity, FieldType: String, DefaultValue: 1, Description: Shape Opacity
#DesignerProperty: Key: ResidualColor, DisplayName: Residual Color, FieldType: String, DefaultValue: black, Description: Residual Color
#DesignerProperty: Key: ResidualOpacity, DisplayName: Residual Opacity, FieldType: String, DefaultValue: 0, Description: Residual Opacity
#DesignerProperty: Key: TooltipFontColor, DisplayName: Tooltip Font Color, FieldType: String, DefaultValue: white, Description: Tooltip Font Color
#DesignerProperty: Key: TooltipFontSize, DisplayName: Tooltip Font Size, FieldType: String, DefaultValue: 0.875em, Description: Tooltip Font Size
#DesignerProperty: Key: TooltipFontWeight, DisplayName: Tooltip Font Weight, FieldType: String, DefaultValue: bold, Description: Tooltip Font Weight
#DesignerProperty: Key: TooltipRadius, DisplayName: Tooltip Radius, FieldType: String, DefaultValue: 3px, Description: Tooltip Radius
#DesignerProperty: Key: TooltipPadding, DisplayName: Tooltip Padding, FieldType: String, DefaultValue: 3px 4px, Description: Tooltip Padding
#DesignerProperty: Key: TooltipBackground, DisplayName: Tooltip Background, FieldType: String, DefaultValue: black, Description: Tooltip Background
#DesignerProperty: Key: TooltipShadow, DisplayName: Tooltip Shadow, FieldType: String, DefaultValue: none, Description: Tooltip Shadow
#DesignerProperty: Key: AreaColor, DisplayName: Area Color, FieldType: String, DefaultValue: , Description: Area Color
#DesignerProperty: Key: AreaOpacity, DisplayName: Area Opacity, FieldType: String, DefaultValue: 0, Description: Area Opacity
#DesignerProperty: Key: PointInnerColor, DisplayName: Point Inner Color, FieldType: String, DefaultValue: , Description: Point Inner Color
#DesignerProperty: Key: PointBorderColor, DisplayName: Point Border Color, FieldType: String, DefaultValue: , Description: Point Border Color
#DesignerProperty: Key: PointOpacity, DisplayName: Point Opacity, FieldType: String, DefaultValue: 0, Description: Point Opacity
#DesignerProperty: Key: PointOpacityActive, DisplayName: Point Opacity Active, FieldType: String, DefaultValue: 1, Description: Point Opacity Active
#DesignerProperty: Key: ShapeColorX, DisplayName: Shape Color X, FieldType: String, DefaultValue: , Description: Shape Color X
#DesignerProperty: Key: ShapeOpacityActive, DisplayName: Shape Opacity Active, FieldType: String, DefaultValue: 0.5, Description: Shape Opacity Active
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
	Private sAreaColor As String = "#597BFC"
	Private sAreaOpacity As String = "0"
	Private sPointBorderColor As String = "#597BFC"
	Private sPointInnerColor As String = "#597BFC"
	Private sPointOpacity As String = "0"
	Private sPointOpacityActive As String = "1"
	Private sResidualColor As String = "black"
	Private sResidualOpacity As String = "0"
	Private sShapeColor As String = "#597BFC"
	Private sShapeColorX As String = "#597BFC"
	Private sShapeOpacity As String = "1"
	Private sShapeOpacityActive As String = "0.5"
	Private sTooltipBackground As String = "black"
	Private sTooltipFontColor As String = "white"
	Private sTooltipFontSize As String = "0.875em"
	Private sTooltipFontWeight As String = "bold"
	Private sTooltipPadding As String = "3px 4px"
	Private sTooltipRadius As String = "3px"
	Private sTooltipShadow As String = "none"
	Private sChartType As String = "bar"
	Private sDonut As String = ""
	Private sGap As String = "2"
	Private bHorizontal As Boolean = False
	Private bInside As Boolean = False
	Private sLabels As String = ""
	Private sMaxValue As String = "0"
	Private sMinValue As String = "0"
	Private sPoint As String = ""
	Private sRadius As String = "2"
	Private sRotate As String = "0"
	Private bStatic As Boolean = False
	Private bTooltipDisabled As Boolean = False
	Private sTooltipFormat As String = "@L @V"
	Private sValues As String = ""
	Private sWeight As String = "2"
	Public CONST CHARTTYPE_BAR As String = "bar"
	Public CONST CHARTTYPE_LINE As String = "line"
	Public CONST CHARTTYPE_PIE As String = "pie"
	Public CONST CHARTTYPE_STACK As String = "stack"
	Private sHeight As String = "400px"
	Private sShadow As String = "none"
	Private sWidth As String = "400px"
	Private sTag As String = ""
	Private TC As BANanoObject
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("trendcharts.js")
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
'use to add an event to the element
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
		sAreaColor = Props.GetDefault("AreaColor", "#597BFC")
		sAreaColor = UI.CStr(sAreaColor)
		sAreaOpacity = Props.GetDefault("AreaOpacity", "0")
		sAreaOpacity = UI.CStr(sAreaOpacity)
		sPointBorderColor = Props.GetDefault("PointBorderColor", "#597BFC")
		sPointBorderColor = UI.CStr(sPointBorderColor)
		sPointInnerColor = Props.GetDefault("PointInnerColor", "#597BFC")
		sPointInnerColor = UI.CStr(sPointInnerColor)
		sPointOpacity = Props.GetDefault("PointOpacity", "0")
		sPointOpacity = UI.CStr(sPointOpacity)
		sPointOpacityActive = Props.GetDefault("PointOpacityActive", "1")
		sPointOpacityActive = UI.CStr(sPointOpacityActive)
		sResidualColor = Props.GetDefault("ResidualColor", "black")
		sResidualColor = UI.CStr(sResidualColor)
		sResidualOpacity = Props.GetDefault("ResidualOpacity", "0")
		sResidualOpacity = UI.CStr(sResidualOpacity)
		sShapeColor = Props.GetDefault("ShapeColor", "#597BFC")
		sShapeColor = UI.CStr(sShapeColor)
		sShapeColorX = Props.GetDefault("ShapeColorX", "#597BFC")
		sShapeColorX = UI.CStr(sShapeColorX)
		sShapeOpacity = Props.GetDefault("ShapeOpacity", "1")
		sShapeOpacity = UI.CStr(sShapeOpacity)
		sShapeOpacityActive = Props.GetDefault("ShapeOpacityActive", "0.5")
		sShapeOpacityActive = UI.CStr(sShapeOpacityActive)
		sTooltipBackground = Props.GetDefault("TooltipBackground", "black")
		sTooltipBackground = UI.CStr(sTooltipBackground)
		sTooltipFontColor = Props.GetDefault("TooltipFontColor", "white")
		sTooltipFontColor = UI.CStr(sTooltipFontColor)
		sTooltipFontSize = Props.GetDefault("TooltipFontSize", "0.875em")
		sTooltipFontSize = UI.CStr(sTooltipFontSize)
		sTooltipFontWeight = Props.GetDefault("TooltipFontWeight", "bold")
		sTooltipFontWeight = UI.CStr(sTooltipFontWeight)
		sTooltipPadding = Props.GetDefault("TooltipPadding", "3px 4px")
		sTooltipPadding = UI.CStr(sTooltipPadding)
		sTooltipRadius = Props.GetDefault("TooltipRadius", "3px")
		sTooltipRadius = UI.CStr(sTooltipRadius)
		sTooltipShadow = Props.GetDefault("TooltipShadow", "none")
		sTooltipShadow = UI.CStr(sTooltipShadow)
		sChartType = Props.GetDefault("ChartType", "bar")
		sChartType = UI.CStr(sChartType)
		sDonut = Props.GetDefault("Donut", "")
		sDonut = UI.CStr(sDonut)
		sGap = Props.GetDefault("Gap", "2")
		sGap = UI.CStr(sGap)
		bHorizontal = Props.GetDefault("Horizontal", False)
		bHorizontal = UI.CBool(bHorizontal)
		bInside = Props.GetDefault("Inside", False)
		bInside = UI.CBool(bInside)
		sLabels = Props.GetDefault("Labels", "")
		sLabels = UI.CStr(sLabels)
		sMaxValue = Props.GetDefault("MaxValue", "0")
		sMaxValue = UI.CStr(sMaxValue)
		sMinValue = Props.GetDefault("MinValue", "0")
		sMinValue = UI.CStr(sMinValue)
		sPoint = Props.GetDefault("Point", "")
		sPoint = UI.CStr(sPoint)
		sRadius = Props.GetDefault("Radius", "2")
		sRadius = UI.CStr(sRadius)
		sRotate = Props.GetDefault("Rotate", "0")
		sRotate = UI.CStr(sRotate)
		bStatic = Props.GetDefault("Static", False)
		bStatic = UI.CBool(bStatic)
		bTooltipDisabled = Props.GetDefault("TooltipDisabled", False)
		bTooltipDisabled = UI.CBool(bTooltipDisabled)
		sTooltipFormat = Props.GetDefault("TooltipFormat", "@L @V")
		sTooltipFormat = UI.CStr(sTooltipFormat)
		sValues = Props.GetDefault("Values", "")
		sValues = UI.CStr(sValues)
		sWeight = Props.GetDefault("Weight", "2")
		sWeight = UI.CStr(sWeight)
		sHeight = Props.GetDefault("Height", "400px")
		sHeight = UI.CStr(sHeight)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		sWidth = Props.GetDefault("Width", "400px")
		sWidth = UI.CStr(sWidth)
	End If
	'
	If sValues <> "" Then UI.AddAttrDT("values", $"[${sValues}]"$)
	If sLabels <> "" Then UI.AddAttrDT("labels", $"[${sLabels}]"$)
	If bStatic Then UI.AddAttrDT("static", bStatic)
	If bTooltipDisabled Then UI.AddAttrDT("tooltip-disabled", bTooltipDisabled)
	UI.AddAttrDT("tooltip-format", sTooltipFormat)
	UI.AddAttrDT("max", sMaxValue)
	
	Select Case sChartType
	Case "bar"
		sTag = "tc-bar"
		UI.AddAttrDT("min", sMinValue)
		UI.AddAttrDT("radius", sRadius)
		UI.AddAttrDT("horizontal", bHorizontal)
		UI.AddAttrDT("gap", sGap)
		If sShapeColorX <> "" Then UI.AddStyleDT("--shape-color-x", sShapeColorX)
		If sShapeOpacityActive <> "" Then UI.AddStyleDT("--shape-opacity-active", sShapeOpacityActive)
	Case "line"
		sTag = "tc-line"
		UI.AddAttrDT("min", sMinValue)
		UI.AddAttrDT("weight", sWeight)
		If sPoint <> "" Then UI.AddAttrDT("point", sPoint)
		UI.AddAttrDT("inside", bInside)
		If sAreaColor <> "" Then UI.AddStyleDT("--area-color", sAreaColor)
		If sAreaOpacity <> "" Then UI.AddStyleDT("--area-opacity", sAreaOpacity)
		If sPointInnerColor <> "" Then UI.AddStyleDT("--point-inner-color", sPointInnerColor)
		If sPointBorderColor <> "" Then UI.AddStyleDT("--point-border-color", sPointBorderColor)
		If sPointOpacity <> "" Then UI.AddStyleDT("--point-opacity", sPointOpacity)
		If sPointOpacityActive <> "" Then UI.AddStyleDT("--point-opacity-active", sPointOpacityActive)
	Case "pie"
		sTag = "tc-pie"
		If sDonut <> "" Then UI.AddAttrDT("donut", sDonut)
		UI.AddAttrDT("rotate", sRotate)
		If sShapeColorX <> "" Then UI.AddStyleDT("--shape-color-x", sShapeColorX)
		If sShapeOpacityActive <> "" Then UI.AddStyleDT("--shape-opacity-active", sShapeOpacityActive)
	Case "stack"
		sTag = "tc-stack"
		UI.AddAttrDT("radius", sRadius)
		UI.AddAttrDT("horizontal", bHorizontal)
		UI.AddAttrDT("gap", sGap)
		If sShapeColorX <> "" Then UI.AddStyleDT("--shape-color-x", sShapeColorX)
		If sShapeOpacityActive <> "" Then UI.AddStyleDT("--shape-opacity-active", sShapeOpacityActive)
	End Select
	'
	If sShapeColor <> "" Then UI.AddStyleDT("--shape-color", sShapeColor)
	If sShapeOpacity <> "" Then UI.AddStyleDT("--shape-opacity", sShapeOpacity)
	If sResidualColor <> "" Then UI.AddStyleDT("--residual-color", sResidualColor)
	If sResidualOpacity <> "" Then UI.AddStyleDT("--residual-opacity", sResidualOpacity)
	If sTooltipFontColor <> "" Then UI.AddStyleDT("--tooltip-font-color", sTooltipFontColor)
	If sTooltipFontSize <> "" Then UI.AddStyleDT("--tooltip-font-size", sTooltipFontSize)
	If sTooltipFontWeight <> "" Then UI.AddStyleDT("--tooltip-font-weight", sTooltipFontWeight)
	If sTooltipRadius <> "" Then UI.AddStyleDT("--tooltip-radius", sTooltipRadius)
	If sTooltipPadding <> "" Then UI.AddStyleDT("--tooltip-padding", sTooltipPadding)
	If sTooltipBackground <> "" Then UI.AddStyleDT("--tooltip-background", sTooltipBackground)
	If sTooltipShadow <> "none" Then UI.AddStyleDT("--tooltip-shadow", sTooltipShadow)
	
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
	mElement = mTarget.Append($"[BANCLEAN]<div><${sTag} id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></${sTag}></div>"$).Get("#" & mName)
End Sub

Sub Refresh
	TC = BANano.ImportWait("trendcharts.js")
	Log(TC)
End Sub

'set Area Color
Sub setAreaColor(s As String)
	sAreaColor = s
	CustProps.put("AreaColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--area-color", s)
End Sub
'set Area Opacity
Sub setAreaOpacity(s As String)
	sAreaOpacity = s
	CustProps.put("AreaOpacity", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--area-opacity", s)
End Sub
'set Point Border Color
Sub setPointBorderColor(s As String)
	sPointBorderColor = s
	CustProps.put("PointBorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--point-border-color", s)
End Sub
'set Point Inner Color
Sub setPointInnerColor(s As String)
	sPointInnerColor = s
	CustProps.put("PointInnerColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--point-inner-color", s)
End Sub
'set Point Opacity
Sub setPointOpacity(s As String)
	sPointOpacity = s
	CustProps.put("PointOpacity", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--point-opacity", s)
End Sub
'set Point Opacity Active
Sub setPointOpacityActive(s As String)
	sPointOpacityActive = s
	CustProps.put("PointOpacityActive", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--point-opacity-active", s)
End Sub
'set Residual Color
Sub setResidualColor(s As String)
	sResidualColor = s
	CustProps.put("ResidualColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--residual-color", s)
End Sub
'set Residual Opacity
Sub setResidualOpacity(s As String)
	sResidualOpacity = s
	CustProps.put("ResidualOpacity", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--residual-opacity", s)
End Sub
'set Shape Color
Sub setShapeColor(s As String)
	sShapeColor = s
	CustProps.put("ShapeColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--shape-color", s)
End Sub
'set Shape Color X
Sub setShapeColorX(s As String)
	sShapeColorX = s
	CustProps.put("ShapeColorX", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--shape-color-x", s)
End Sub
'set Shape Opacity
Sub setShapeOpacity(s As String)
	sShapeOpacity = s
	CustProps.put("ShapeOpacity", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--shape-opacity", s)
End Sub
'set Shape Opacity Active
Sub setShapeOpacityActive(s As String)
	sShapeOpacityActive = s
	CustProps.put("ShapeOpacityActive", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--shape-opacity-active", s)
End Sub
'set Tooltip Background
Sub setTooltipBackground(s As String)
	sTooltipBackground = s
	CustProps.put("TooltipBackground", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--tooltip-background", s)
End Sub
'set Tooltip Font Color
Sub setTooltipFontColor(s As String)
	sTooltipFontColor = s
	CustProps.put("TooltipFontColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--tooltip-font-color", s)
End Sub
'set Tooltip Font Size
Sub setTooltipFontSize(s As String)
	sTooltipFontSize = s
	CustProps.put("TooltipFontSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--tooltip-font-size", s)
End Sub
'set Tooltip Font Weight
Sub setTooltipFontWeight(s As String)
	sTooltipFontWeight = s
	CustProps.put("TooltipFontWeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--tooltip-font-weight", s)
End Sub
'set Tooltip Padding
Sub setTooltipPadding(s As String)
	sTooltipPadding = s
	CustProps.put("TooltipPadding", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--tooltip-padding", s)
End Sub
'set Tooltip Radius
Sub setTooltipRadius(s As String)
	sTooltipRadius = s
	CustProps.put("TooltipRadius", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--tooltip-radius", s)
End Sub
'set Tooltip Shadow
Sub setTooltipShadow(s As String)
	sTooltipShadow = s
	CustProps.put("TooltipShadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "--tooltip-shadow", s)
End Sub
'set Chart Type
'options: bar|line|pie|stack
Sub setChartType(s As String)
	sChartType = s
	CustProps.put("ChartType", s)
End Sub
'set Donut
Sub setDonut(s As String)
	sDonut = s
	CustProps.put("Donut", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "donut", s)
End Sub
'set Gap
Sub setGap(s As String)
	sGap = s
	CustProps.put("Gap", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "gap", s)
End Sub
'set Horizontal
Sub setHorizontal(b As Boolean)
	bHorizontal = b
	CustProps.put("Horizontal", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "horizontal", b)
	Else
		UI.RemoveAttr(mElement, "horizontal")
	End If
End Sub
'set Inside
Sub setInside(b As Boolean)
	bInside = b
	CustProps.put("Inside", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "inside", b)
	Else
		UI.RemoveAttr(mElement, "inside")
	End If
End Sub
'set Labels
Sub setLabels(s As String)
	sLabels = s
	CustProps.put("Labels", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "labels", $"[${s}]"$)
End Sub
'set Max Value
Sub setMaxValue(s As String)
	sMaxValue = s
	CustProps.put("MaxValue", s)
	If mElement = Null Then Return
	If s <> "0" Then UI.AddAttr(mElement, "max", s)
End Sub
'set Min Value
Sub setMinValue(s As String)
	sMinValue = s
	CustProps.put("MinValue", s)
	If mElement = Null Then Return
	If s <> "0" Then UI.AddAttr(mElement, "min", s)
End Sub
'set Point
Sub setPoint(s As String)
	sPoint = s
	CustProps.put("Point", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "point", s)
End Sub
'set Radius
Sub setRadius(s As String)
	sRadius = s
	CustProps.put("Radius", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "radius", s)
End Sub
'set Rotate
Sub setRotate(s As String)
	sRotate = s
	CustProps.put("Rotate", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "rotate", s)
End Sub
'set Static
Sub setStatic(b As Boolean)
	bStatic = b
	CustProps.put("Static", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "static", b)
	Else
		UI.RemoveAttr(mElement, "static")
	End If
End Sub
'set Tooltip Disabled
Sub setTooltipDisabled(b As Boolean)
	bTooltipDisabled = b
	CustProps.put("TooltipDisabled", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "tooltip-disabled", b)
	Else
		UI.RemoveAttr(mElement, "tooltip-disabled")
	End If
End Sub
'set Tooltip Format
Sub setTooltipFormat(s As String)
	sTooltipFormat = s
	CustProps.put("TooltipFormat", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "tooltip-format", s)
End Sub
'set Values
Sub setValues(s As String)
	sValues = s
	CustProps.put("Values", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "values", $"[${s}]"$)
End Sub
'set Weight
Sub setWeight(s As String)
	sWeight = s
	CustProps.put("Weight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "weight", s)
End Sub
'get Area Color
Sub getAreaColor As String
	Return sAreaColor
End Sub
'get Area Opacity
Sub getAreaOpacity As String
	Return sAreaOpacity
End Sub
'get Point Border Color
Sub getPointBorderColor As String
	Return sPointBorderColor
End Sub
'get Point Inner Color
Sub getPointInnerColor As String
	Return sPointInnerColor
End Sub
'get Point Opacity
Sub getPointOpacity As String
	Return sPointOpacity
End Sub
'get Point Opacity Active
Sub getPointOpacityActive As String
	Return sPointOpacityActive
End Sub
'get Residual Color
Sub getResidualColor As String
	Return sResidualColor
End Sub
'get Residual Opacity
Sub getResidualOpacity As String
	Return sResidualOpacity
End Sub
'get Shape Color
Sub getShapeColor As String
	Return sShapeColor
End Sub
'get Shape Color X
Sub getShapeColorX As String
	Return sShapeColorX
End Sub
'get Shape Opacity
Sub getShapeOpacity As String
	Return sShapeOpacity
End Sub
'get Shape Opacity Active
Sub getShapeOpacityActive As String
	Return sShapeOpacityActive
End Sub
'get Tooltip Background
Sub getTooltipBackground As String
	Return sTooltipBackground
End Sub
'get Tooltip Font Color
Sub getTooltipFontColor As String
	Return sTooltipFontColor
End Sub
'get Tooltip Font Size
Sub getTooltipFontSize As String
	Return sTooltipFontSize
End Sub
'get Tooltip Font Weight
Sub getTooltipFontWeight As String
	Return sTooltipFontWeight
End Sub
'get Tooltip Padding
Sub getTooltipPadding As String
	Return sTooltipPadding
End Sub
'get Tooltip Radius
Sub getTooltipRadius As String
	Return sTooltipRadius
End Sub
'get Tooltip Shadow
Sub getTooltipShadow As String
	Return sTooltipShadow
End Sub
'get Chart Type
Sub getChartType As String
	Return sChartType
End Sub
'get Donut
Sub getDonut As String
	Return sDonut
End Sub
'get Gap
Sub getGap As String
	Return sGap
End Sub
'get Horizontal
Sub getHorizontal As Boolean
	Return bHorizontal
End Sub
'get Inside
Sub getInside As Boolean
	Return bInside
End Sub
'get Labels
Sub getLabels As String
	Return sLabels
End Sub
'get Max Value
Sub getMaxValue As String
	Return sMaxValue
End Sub
'get Min Value
Sub getMinValue As String
	Return sMinValue
End Sub
'get Point
Sub getPoint As String
	Return sPoint
End Sub
'get Radius
Sub getRadius As String
	Return sRadius
End Sub
'get Rotate
Sub getRotate As String
	Return sRotate
End Sub
'get Static
Sub getStatic As Boolean
	Return bStatic
End Sub
'get Tooltip Disabled
Sub getTooltipDisabled As Boolean
	Return bTooltipDisabled
End Sub
'get Tooltip Format
Sub getTooltipFormat As String
	Return sTooltipFormat
End Sub
'get Values
Sub getValues As String
	Return sValues
End Sub
'get Weight
Sub getWeight As String
	Return sWeight
End Sub