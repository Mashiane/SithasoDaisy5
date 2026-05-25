B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: AnimationRotationInterval, DisplayName: Animation Rotation Interval, FieldType: Int, DefaultValue: 1, Description: Animation Rotation Interval
#DesignerProperty: Key: AnimationRotationSpeed, DisplayName: Animation Rotation Speed, FieldType: Int, DefaultValue: 10, Description: Animation Rotation Speed
#DesignerProperty: Key: AutoInitialize, DisplayName: Auto Initialize, FieldType: Boolean, DefaultValue: True, Description: Auto Initialize
#DesignerProperty: Key: AutoSetChartHeadBg, DisplayName: Auto Set Chart Head Bg, FieldType: Boolean, DefaultValue: False, Description: Auto Set Chart Head Bg
#DesignerProperty: Key: BackgroundPattern, DisplayName: Background Pattern, FieldType: String, DefaultValue: default, Description: Background Pattern, List: blurry|chaos|default|flurry|flux|gyrrate|leaves|none|quad|replicate|scribble|spiral|spot|squiggly|whirling
#DesignerProperty: Key: ChartHeadType, DisplayName: Chart Head Type, FieldType: String, DefaultValue: default, Description: Chart Head Type, List: default|landscape|rounded
#DesignerProperty: Key: ChartHeadBg, DisplayName: Chart Head Bg, FieldType: String, DefaultValue: #ffffff, Description: Chart Head Bg
#DesignerProperty: Key: HeadImageShape, DisplayName: Head Image Shape, FieldType: String, DefaultValue: symbolCircle, Description: Head Image Shape, List: symbolCircle|symbolCross|symbolDiamond|symbolDiamond2|symbolSquare|symbolSquare2|symbolStar|symbolTriangle|symbolTriangle2|symbolWye
#DesignerProperty: Key: HeadLinkerThumbCircleRadius, DisplayName: Head Linker Thumb Circle Radius, FieldType: Int, DefaultValue: 8, Description: Head Linker Thumb Circle Radius
#DesignerProperty: Key: LinkerThumbShape, DisplayName: Linker Thumb Shape, FieldType: String, DefaultValue: symbolCircle, Description: Linker Thumb Shape, List: symbolAsterisk|symbolCircle|symbolCross|symbolDiamond|symbolDiamond2|symbolPlus|symbolSquare|symbolSquare2|symbolStar|symbolTriangle|symbolTriangle2|symbolWye|symbolX
#DesignerProperty: Key: ShowChartHeadBorder, DisplayName: Show Chart Head Border, FieldType: Boolean, DefaultValue: True, Description: Show Chart Head Border
#DesignerProperty: Key: ShowTools, DisplayName: Show Tools, FieldType: Boolean, DefaultValue: True, Description: Show Tools
#DesignerProperty: Key: TreeType, DisplayName: Tree Type, FieldType: String, DefaultValue: default, Description: Tree Type, List: cellar|default|goldenRod|hSpider|hSpiderWalk|radialSpiderLeg|vSpiderWalk
#DesignerProperty: Key: TreeLinkType, DisplayName: Tree Link Type, FieldType: String, DefaultValue: none, Description: Tree Link Type, List: curveBasisClosed|curveBumpX|curveBumpY|curveLinear|curveStep|curveStepAfter|curveStepBefore|none
#DesignerProperty: Key: VerticalSpace, DisplayName: Vertical Space, FieldType: String, DefaultValue: 120px, Description: Vertical Space
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 900px, Description: Width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: ZoomInDistance, DisplayName: Zoom In Distance, FieldType: String, DefaultValue: 1.5, Description: Zoom In Distance
#DesignerProperty: Key: ZoomOutDistance, DisplayName: Zoom Out Distance, FieldType: String, DefaultValue: 0.5, Description: Zoom Out Distance
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
	Private Options As Map
	Private iAnimationRotationInterval As Int = 1
	Private iAnimationRotationSpeed As Int = 10
	Private bAutoInitialize As Boolean = True
	Private bAutoSetChartHeadBg As Boolean = False
	Private sBackgroundPattern As String = "default"
	Private sChartHeadType As String = "default"
	Private sChartHeadBg As String = "#ffffff"
	Private sHeadImageShape As String = "symbolCircle"
	Private iHeadLinkerThumbCircleRadius As Int = 8
	Private sHeight As String = "500px"
	Private sLinkerThumbShape As String = "symbolCircle"
	Private bShowChartHeadBorder As Boolean = True
	Private bShowTools As Boolean = True
	Private sTreeType As String = "default"
	Private sTreeLinkType As String = "none"
	Private sVerticalSpace As String = "120px"
	Private sWidth As String = "900px"
	Private dZoomInDistance As Double = "1.5"
	Private dZoomOutDistance As Double = "0.5"
	Public CONST BACKGROUNDPATTERN_BLURRY As String = "blurry"
	Public CONST BACKGROUNDPATTERN_CHAOS As String = "chaos"
	Public CONST BACKGROUNDPATTERN_DEFAULT As String = "default"
	Public CONST BACKGROUNDPATTERN_FLURRY As String = "flurry"
	Public CONST BACKGROUNDPATTERN_FLUX As String = "flux"
	Public CONST BACKGROUNDPATTERN_GYRRATE As String = "gyrrate"
	Public CONST BACKGROUNDPATTERN_LEAVES As String = "leaves"
	Public CONST BACKGROUNDPATTERN_NONE As String = "none"
	Public CONST BACKGROUNDPATTERN_QUAD As String = "quad"
	Public CONST BACKGROUNDPATTERN_REPLICATE As String = "replicate"
	Public CONST BACKGROUNDPATTERN_SCRIBBLE As String = "scribble"
	Public CONST BACKGROUNDPATTERN_SPIRAL As String = "spiral"
	Public CONST BACKGROUNDPATTERN_SPOT As String = "spot"
	Public CONST BACKGROUNDPATTERN_SQUIGGLY As String = "squiggly"
	Public CONST BACKGROUNDPATTERN_WHIRLING As String = "whirling"
	Public CONST CHARTHEADTYPE_DEFAULT As String = "default"
	Public CONST CHARTHEADTYPE_LANDSCAPE As String = "landscape"
	Public CONST CHARTHEADTYPE_ROUNDED As String = "rounded"
	Public CONST HEADIMAGESHAPE_SYMBOLCIRCLE As String = "symbolCircle"
	Public CONST HEADIMAGESHAPE_SYMBOLCROSS As String = "symbolCross"
	Public CONST HEADIMAGESHAPE_SYMBOLDIAMOND As String = "symbolDiamond"
	Public CONST HEADIMAGESHAPE_SYMBOLDIAMOND2 As String = "symbolDiamond2"
	Public CONST HEADIMAGESHAPE_SYMBOLSQUARE As String = "symbolSquare"
	Public CONST HEADIMAGESHAPE_SYMBOLSQUARE2 As String = "symbolSquare2"
	Public CONST HEADIMAGESHAPE_SYMBOLSTAR As String = "symbolStar"
	Public CONST HEADIMAGESHAPE_SYMBOLTRIANGLE As String = "symbolTriangle"
	Public CONST HEADIMAGESHAPE_SYMBOLTRIANGLE2 As String = "symbolTriangle2"
	Public CONST HEADIMAGESHAPE_SYMBOLWYE As String = "symbolWye"
	Public CONST LINKERTHUMBSHAPE_SYMBOLASTERISK As String = "symbolAsterisk"
	Public CONST LINKERTHUMBSHAPE_SYMBOLCIRCLE As String = "symbolCircle"
	Public CONST LINKERTHUMBSHAPE_SYMBOLCROSS As String = "symbolCross"
	Public CONST LINKERTHUMBSHAPE_SYMBOLDIAMOND As String = "symbolDiamond"
	Public CONST LINKERTHUMBSHAPE_SYMBOLDIAMOND2 As String = "symbolDiamond2"
	Public CONST LINKERTHUMBSHAPE_SYMBOLPLUS As String = "symbolPlus"
	Public CONST LINKERTHUMBSHAPE_SYMBOLSQUARE As String = "symbolSquare"
	Public CONST LINKERTHUMBSHAPE_SYMBOLSQUARE2 As String = "symbolSquare2"
	Public CONST LINKERTHUMBSHAPE_SYMBOLSTAR As String = "symbolStar"
	Public CONST LINKERTHUMBSHAPE_SYMBOLTRIANGLE As String = "symbolTriangle"
	Public CONST LINKERTHUMBSHAPE_SYMBOLTRIANGLE2 As String = "symbolTriangle2"
	Public CONST LINKERTHUMBSHAPE_SYMBOLWYE As String = "symbolWye"
	Public CONST LINKERTHUMBSHAPE_SYMBOLX As String = "symbolX"
	Public CONST TREETYPE_CELLAR As String = "cellar"
	Public CONST TREETYPE_DEFAULT As String = "default"
	Public CONST TREETYPE_GOLDENROD As String = "goldenRod"
	Public CONST TREETYPE_HSPIDER As String = "hSpider"
	Public CONST TREETYPE_HSPIDERWALK As String = "hSpiderWalk"
	Public CONST TREETYPE_RADIALSPIDERLEG As String = "radialSpiderLeg"
	Public CONST TREETYPE_VSPIDERWALK As String = "vSpiderWalk"
	Public CONST TREELINKTYPE_CURVEBASISCLOSED As String = "curveBasisClosed"
	Public CONST TREELINKTYPE_CURVEBUMPX As String = "curveBumpX"
	Public CONST TREELINKTYPE_CURVEBUMPY As String = "curveBumpY"
	Public CONST TREELINKTYPE_CURVELINEAR As String = "curveLinear"
	Public CONST TREELINKTYPE_CURVESTEP As String = "curveStep"
	Public CONST TREELINKTYPE_CURVESTEPAFTER As String = "curveStepAfter"
	Public CONST TREELINKTYPE_CURVESTEPBEFORE As String = "curveStepBefore"
	Public CONST TREELINKTYPE_NONE As String = "none"
	Private tree_data As List
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("TreeSpider") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesTreeSpider)' should be added!"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	BANano.DependsOnAsset("treeSpider.bundle.min.js")
	BANano.DependsOnAsset("treeSpider.css")
	tree_data.Initialize
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("AnimationRotationInterval", 1)
	CustProps.Put("AnimationRotationSpeed", 10)
	CustProps.Put("AutoInitialize", True)
	CustProps.Put("AutoSetChartHeadBg", False)
	CustProps.Put("BackgroundPattern", "default")
	CustProps.Put("ChartHeadType", "default")
	CustProps.Put("ChartHeadBg", "#ffffff")
	CustProps.Put("HeadImageShape", "symbolCircle")
	CustProps.Put("HeadLinkerThumbCircleRadius", 8)
	CustProps.Put("LinkerThumbShape", "symbolCircle")
	CustProps.Put("ShowChartHeadBorder", True)
	CustProps.Put("ShowTools", True)
	CustProps.Put("TreeType", "default")
	CustProps.Put("TreeLinkType", "none")
	CustProps.Put("VerticalSpace", "120px")
	CustProps.Put("Width", "900px")
	CustProps.Put("Height", "500px")
	CustProps.Put("ZoomInDistance", "1.5")
	CustProps.Put("ZoomOutDistance", "0.5")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
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
		iAnimationRotationInterval = Props.GetDefault("AnimationRotationInterval", 1)
		iAnimationRotationInterval = UI.CInt(iAnimationRotationInterval)
		iAnimationRotationSpeed = Props.GetDefault("AnimationRotationSpeed", 10)
		iAnimationRotationSpeed = UI.CInt(iAnimationRotationSpeed)
		bAutoInitialize = Props.GetDefault("AutoInitialize", True)
		bAutoInitialize = UI.CBool(bAutoInitialize)
		bAutoSetChartHeadBg = Props.GetDefault("AutoSetChartHeadBg", False)
		bAutoSetChartHeadBg = UI.CBool(bAutoSetChartHeadBg)
		sBackgroundPattern = Props.GetDefault("BackgroundPattern", "default")
		sBackgroundPattern = UI.CStr(sBackgroundPattern)
		sChartHeadType = Props.GetDefault("ChartHeadType", "default")
		sChartHeadType = UI.CStr(sChartHeadType)
		sChartHeadBg = Props.GetDefault("ChartHeadBg", "#ffffff")
		sChartHeadBg = UI.CStr(sChartHeadBg)
		sHeadImageShape = Props.GetDefault("HeadImageShape", "symbolCircle")
		sHeadImageShape = UI.CStr(sHeadImageShape)
		iHeadLinkerThumbCircleRadius = Props.GetDefault("HeadLinkerThumbCircleRadius", 8)
		iHeadLinkerThumbCircleRadius = UI.CInt(iHeadLinkerThumbCircleRadius)
		sHeight = Props.GetDefault("Height", "500px")
		sHeight = UI.CStr(sHeight)
		sLinkerThumbShape = Props.GetDefault("LinkerThumbShape", "symbolCircle")
		sLinkerThumbShape = UI.CStr(sLinkerThumbShape)
		bShowChartHeadBorder = Props.GetDefault("ShowChartHeadBorder", True)
		bShowChartHeadBorder = UI.CBool(bShowChartHeadBorder)
		bShowTools = Props.GetDefault("ShowTools", True)
		bShowTools = UI.CBool(bShowTools)
		sTreeType = Props.GetDefault("TreeType", "default")
		sTreeType = UI.CStr(sTreeType)
		sTreeLinkType = Props.GetDefault("TreeLinkType", "none")
		sTreeLinkType = UI.CStr(sTreeLinkType)
		If sTreeLinkType = "none" Then sTreeLinkType = ""
		sVerticalSpace = Props.GetDefault("VerticalSpace", "120px")
		sVerticalSpace = UI.CStr(sVerticalSpace)
		sWidth = Props.GetDefault("Width", "900px")
		sWidth = UI.CStr(sWidth)
		dZoomInDistance = Props.GetDefault("ZoomInDistance", "1.5")
		dZoomInDistance = UI.CDbl(dZoomInDistance)
		dZoomOutDistance = Props.GetDefault("ZoomOutDistance", "0.5")
		dZoomOutDistance = UI.CDbl(dZoomOutDistance)
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
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
End Sub

Sub Clear
	tree_data.Initialize 
End Sub

Sub AddItem(parentID As String, id As String, name As String, role As String, location As String, image As String)
	Dim ch As Map = CreateMap()
	ch.Put("id", id)
	If name <> "" Then ch.Put("name", name)
	If role <> "" Then ch.Put("role", role)
	If location <> "" Then ch.Put("location", location)
	If parentID <> "" Then ch.Put("parentId", parentID)
	If image <> "" Then ch.Put("image", image)
	tree_data.add(ch)	
End Sub

Sub Refresh
	Options.Initialize
	Options.put("animation_rotation_interval", iAnimationRotationInterval)
	Options.put("animation_rotation_speed", iAnimationRotationSpeed)
	Options.put("autoInitialize", bAutoInitialize)
	Options.put("auto_set_chart_head_bg", bAutoSetChartHeadBg)
	If sBackgroundPattern <> "" Then Options.put("backgroundPattern", sBackgroundPattern)
	If sChartHeadType <> "" Then Options.put("chart_head_type", sChartHeadType)
	If sChartHeadBg <> "" Then Options.put("chart_head_bg", sChartHeadBg)
	If sHeadImageShape <> "" Then Options.put("head_image_shape", sHeadImageShape)
	Options.put("head_linker_thumb_circle_radius", iHeadLinkerThumbCircleRadius)
	If sHeight <> "" Then Options.put("height", sHeight)
	If sLinkerThumbShape <> "" Then Options.put("linker_thumb_shape", sLinkerThumbShape)
	Options.put("show_chart_head_border", bShowChartHeadBorder)
	Options.put("show_tools", bShowTools)
	Options.put("targetContainer", $"#${mName}"$)
	If sTreeType <> "" Then Options.put("tree_type", sTreeType)
	If sTreeLinkType <> "" Then Options.put("tree_link_type", sTreeLinkType)
	If sVerticalSpace <> "" Then Options.put("verticalSpace", sVerticalSpace)
	If sWidth <> "" Then Options.put("width", sWidth)
	Options.put("zoom_in_distance", dZoomInDistance)
	Options.put("zoom_out_distance", dZoomOutDistance)
	Options.Put("tree_data", tree_data)
	'
	Dim ts As BANanoObject
	ts.Initialize2("TreeSpider", Options)
	If bAutoInitialize = False Then
		ts.RunMethod("initialize", Null)
	End If
End Sub

'set Animation Rotation Interval
Sub setAnimationRotationInterval(i As Int)
	iAnimationRotationInterval = i
	CustProps.put("AnimationRotationInterval", i)
	Options.put("animation_rotation_interval", i)
End Sub
'set Animation Rotation Speed
Sub setAnimationRotationSpeed(i As Int)
	iAnimationRotationSpeed = i
	CustProps.put("AnimationRotationSpeed", i)
	Options.put("animation_rotation_speed", i)
End Sub
'set Auto Initialize
Sub setAutoInitialize(b As Boolean)
	bAutoInitialize = b
	CustProps.put("AutoInitialize", b)
	Options.put("autoInitialize", b)
End Sub
'set Auto Set Chart Head Bg
Sub setAutoSetChartHeadBg(b As Boolean)
	bAutoSetChartHeadBg = b
	CustProps.put("AutoSetChartHeadBg", b)
	Options.put("auto_set_chart_head_bg", b)
End Sub
'set Background Pattern
'options: blurry|chaos|default|flurry|flux|gyrrate|leaves|none|quad|replicate|scribble|spiral|spot|squiggly|whirling
Sub setBackgroundPattern(s As String)
	sBackgroundPattern = s
	CustProps.put("BackgroundPattern", s)
	Options.put("backgroundPattern", s)
End Sub
'set Chart Head Type
'options: default|landscape|rounded
Sub setChartHeadType(s As String)
	sChartHeadType = s
	CustProps.put("ChartHeadType", s)
	Options.put("chart_head_type", s)
End Sub
'set Chart Head Bg
Sub setChartHeadBg(s As String)
	sChartHeadBg = s
	CustProps.put("ChartHeadBg", s)
	Options.put("chart_head_bg", s)
End Sub
'set Head Image Shape
'options: symbolCircle|symbolCross|symbolDiamond|symbolDiamond2|symbolSquare|symbolSquare2|symbolStar|symbolTriangle|symbolTriangle2|symbolWye
Sub setHeadImageShape(s As String)
	sHeadImageShape = s
	CustProps.put("HeadImageShape", s)
	Options.put("head_image_shape", s)
End Sub
'set Head Linker Thumb Circle Radius
Sub setHeadLinkerThumbCircleRadius(i As Int)
	iHeadLinkerThumbCircleRadius = i
	CustProps.put("HeadLinkerThumbCircleRadius", i)
	Options.put("head_linker_thumb_circle_radius", i)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	Options.put("height", s)
End Sub
'set Linker Thumb Shape
'options: symbolAsterisk|symbolCircle|symbolCross|symbolDiamond|symbolDiamond2|symbolPlus|symbolSquare|symbolSquare2|symbolStar|symbolTriangle|symbolTriangle2|symbolWye|symbolX
Sub setLinkerThumbShape(s As String)
	sLinkerThumbShape = s
	CustProps.put("LinkerThumbShape", s)
	Options.put("linker_thumb_shape", s)
End Sub
'set Show Chart Head Border
Sub setShowChartHeadBorder(b As Boolean)
	bShowChartHeadBorder = b
	CustProps.put("ShowChartHeadBorder", b)
	Options.put("show_chart_head_border", b)
End Sub
'set Show Tools
Sub setShowTools(b As Boolean)
	bShowTools = b
	CustProps.put("ShowTools", b)
	Options.put("show_tools", b)
End Sub
'set Tree Type
'options: cellar|default|goldenRod|hSpider|hSpiderWalk|radialSpiderLeg|vSpiderWalk
Sub setTreeType(s As String)
	sTreeType = s
	CustProps.put("TreeType", s)
	Options.put("tree-type", s)
End Sub
'set Tree Link Type
'options: curveBasisClosed|curveBumpX|curveBumpY|curveLinear|curveStep|curveStepAfter|curveStepBefore|none
Sub setTreeLinkType(s As String)
	sTreeLinkType = s
	CustProps.put("TreeLinkType", s)
	Options.put("tree_link_type", s)
End Sub
'set Vertical Space
Sub setVerticalSpace(s As String)
	sVerticalSpace = s
	CustProps.put("VerticalSpace", s)
	Options.put("verticalSpace", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	Options.put("width", s)
End Sub
'set Zoom In Distance
Sub setZoomInDistance(d As Double)
	dZoomInDistance = d
	CustProps.put("ZoomInDistance", d)
	Options.put("zoom_in_distance", d)
End Sub
'set Zoom Out Distance
Sub setZoomOutDistance(d As Double)
	dZoomOutDistance = d
	CustProps.put("ZoomOutDistance", d)
	Options.put("zoom_out_distance", d)
End Sub
'get Animation Rotation Interval
Sub getAnimationRotationInterval As Int
	Return iAnimationRotationInterval
End Sub
'get Animation Rotation Speed
Sub getAnimationRotationSpeed As Int
	Return iAnimationRotationSpeed
End Sub
'get Auto Initialize
Sub getAutoInitialize As Boolean
	Return bAutoInitialize
End Sub
'get Auto Set Chart Head Bg
Sub getAutoSetChartHeadBg As Boolean
	Return bAutoSetChartHeadBg
End Sub
'get Background Pattern
Sub getBackgroundPattern As String
	Return sBackgroundPattern
End Sub
'get Chart Head Type
Sub getChartHeadType As String
	Return sChartHeadType
End Sub
'get Chart Head Bg
Sub getChartHeadBg As String
	Return sChartHeadBg
End Sub
'get Head Image Shape
Sub getHeadImageShape As String
	Return sHeadImageShape
End Sub
'get Head Linker Thumb Circle Radius
Sub getHeadLinkerThumbCircleRadius As Int
	Return iHeadLinkerThumbCircleRadius
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Linker Thumb Shape
Sub getLinkerThumbShape As String
	Return sLinkerThumbShape
End Sub
'get Show Chart Head Border
Sub getShowChartHeadBorder As Boolean
	Return bShowChartHeadBorder
End Sub
'get Show Tools
Sub getShowTools As Boolean
	Return bShowTools
End Sub
'get Tree Type
Sub getTreeType As String
	Return sTreeType
End Sub
'get Tree Link Type
Sub getTreeLinkType As String
	Return sTreeLinkType
End Sub
'get Vertical Space
Sub getVerticalSpace As String
	Return sVerticalSpace
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub
'get Zoom In Distance
Sub getZoomInDistance As Double
	Return dZoomInDistance
End Sub
'get Zoom Out Distance
Sub getZoomOutDistance As Double
	Return dZoomOutDistance
End Sub
