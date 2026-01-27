B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TitleText, DisplayName: Title Text, FieldType: String, DefaultValue: Chart, Description: Title Text
#DesignerProperty: Key: TitleAlign, DisplayName: Title Align, FieldType: String, DefaultValue: left, Description: Title Align, List: center|left|right
#DesignerProperty: Key: ChartType, DisplayName: Chart Type, FieldType: String, DefaultValue: bar, Description: Chart Type, List: area|bar|column|line|pie|radial-bar|gauge
#DesignerProperty: Key: XAxisTitle, DisplayName: X Axis Title, FieldType: String, DefaultValue: X Axis, Description: X axis Title
#DesignerProperty: Key: YAxisTitle, DisplayName: Y Axis Title, FieldType: String, DefaultValue: Y Axis, Description: Y axis Title
#DesignerProperty: Key: ExportMenuFileName, DisplayName: Export Menu File Name, FieldType: String, DefaultValue: , Description: Export Menu File Name
#DesignerProperty: Key: ExportMenuVisible, DisplayName: Export Menu Visible, FieldType: Boolean, DefaultValue: True, Description: Export Menu Visible
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 400px, Description: Height.
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Width.
#DesignerProperty: Key: LegendVisible, DisplayName: Legend Visible, FieldType: Boolean, DefaultValue: True, Description: Legend Visible
#DesignerProperty: Key: LegendPosition, DisplayName: Legend Position, FieldType: String, DefaultValue: right, Description: Legend Position, List: bottom|left|right|top
#DesignerProperty: Key: LegendShowCheckbox, DisplayName: Legend Show Checkbox, FieldType: Boolean, DefaultValue: True, Description: Legend Show Checkbox
#DesignerProperty: Key: SeriesDataLabelsOffsetX, DisplayName: Series Data Labels Offset X, FieldType: String, DefaultValue: , Description: Series Data Labels Offset X
#DesignerProperty: Key: SeriesDataLabelsOffsetY, DisplayName: Series Data Labels Offset Y, FieldType: String, DefaultValue: , Description: Series Data Labels Offset Y
#DesignerProperty: Key: SeriesDataLabelsPieSeriesNameVisible, DisplayName: Series Data Labels Pie Series Name Visible, FieldType: Boolean, DefaultValue: True, Description: Series Data Labels Pie Seriesname Visible
#DesignerProperty: Key: SeriesDataLabelsVisible, DisplayName: Series Data Labels Visible, FieldType: Boolean, DefaultValue: False, Description: Series Data Labels Visible
#DesignerProperty: Key: SeriesSelectable, DisplayName: Series Selectable, FieldType: Boolean, DefaultValue: False, Description: Series Selectable
#DesignerProperty: Key: SeriesShowDot, DisplayName: Series Show Dot, FieldType: Boolean, DefaultValue: False, Description: Series Show Dot
#DesignerProperty: Key: SeriesSpline, DisplayName: Series Spline, FieldType: Boolean, DefaultValue: False, Description: Series Spline
#DesignerProperty: Key: SeriesStacked, DisplayName: Series Stacked, FieldType: Boolean, DefaultValue: False, Description: Series Stacked
#DesignerProperty: Key: SeriesZoomable, DisplayName: Series Zoomable, FieldType: Boolean, DefaultValue: False, Description: Series Zoomable
#DesignerProperty: Key: XAxisDateFormat, DisplayName: X Axis Date Format, FieldType: String, DefaultValue: , Description: X axis Date Format
#DesignerProperty: Key: XAxisPointOnColumn, DisplayName: X Axis Point On Column, FieldType: Boolean, DefaultValue: False, Description: X axis Point On Column
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: sm, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private sChartType As String = "bar"
	Private sExportMenuFileName As String = ""
	Private bExportMenuVisible As Boolean = True
	Private sHeight As String = "400px"
	Private sLegendPosition As String = "right"
	Private bLegendShowCheckbox As Boolean = True
	Private bLegendVisible As Boolean = True
	Private sSeriesDataLabelsOffsetX As String = ""
	Private sSeriesDataLabelsOffsetY As String = ""
	Private bSeriesDataLabelsPieSeriesNameVisible As Boolean = True
	Private bSeriesDataLabelsPieSeriesNameAnchorOuter As Boolean = False
	Private bSeriesDataLabelsVisible As Boolean = False
	Private sSeriesDataLabelsAnchor As String = ""
	Private bSeriesSelectable As Boolean = False
	Private bSeriesShowDot As Boolean = False
	Private bSeriesSpline As Boolean = False
	Private bSeriesStacked As Boolean = False
	Private bSeriesStackedPercent As Boolean = False
	Private bSeriesZoomable As Boolean = False
	Private bSeriesDiverging As Boolean = False
	Private sTitleAlign As String = "left"
	Private sTitleText As String = "Chart"
	Private sWidth As String = "100%"
	Private sXAxisDateFormat As String = ""
	Private bXAxisPointOnColumn As Boolean = False
	Private sXAxisTitle As String = "X Axis"
	Private sYAxisTitle As String = "Y Axis"
	Public CONST CHARTTYPE_AREA As String = "area"
	Public CONST CHARTTYPE_BAR As String = "bar"
	Public CONST CHARTTYPE_COLUMN As String = "column"
	Public CONST CHARTTYPE_LINE As String = "line"
	Public CONST CHARTTYPE_PIE As String = "pie"
	Public CONST CHARTTYPE_RADIAL_BAR As String = "radial-bar"
	Public CONST CHARTTYPE_RADAR As String = "radar"
	Public CONST CHARTTYPE_GAUGE As String = "gauge"
	Public CONST LEGENDPOSITION_BOTTOM As String = "bottom"
	Public CONST LEGENDPOSITION_LEFT As String = "left"
	Public CONST LEGENDPOSITION_RIGHT As String = "right"
	Public CONST LEGENDPOSITION_TOP As String = "top"
	Public CONST TITLEALIGN_CENTER As String = "center"
	Public CONST TITLEALIGN_LEFT As String = "left"
	Public CONST TITLEALIGN_RIGHT As String = "right"
	Private Options As Map
	Private categories As List
	Private series As List
	Private data As Map
	Private seriesM As Map
	Private chart As BANanoObject    'ignore
	Private sYAxisTitleAlign As String = ""
	Private bSeriesShift As Boolean = False
	Private sCircularAxisTitleText As String
	Private iCircularAxisScaleMin As Int
	Private iCircularAxisScaleMax As Int
	Private iCircularLabelMargin As Int
	Private bSeriesClockWise As Boolean
	Private iSeriesAngleRangeStart As Int
	Private iSeriesAngleRangeEnd As Int
	Private iThemePlotBandsBarWidth As Int
	Private bSeriesSolidClockHand As Boolean
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "sm"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("ToastChart") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesToastChart)' should be added!"$)
		Return
	End If
	BANano.DependsOnAsset("toastui-chart.min.css")
	BANano.DependsOnAsset("toastui-chart.min.js")
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	seriesM.Initialize
	categories.Initialize
	series.Initialize
	data.Initialize
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("TitleText", "Chart")
	CustProps.Put("TitleAlign", "left")
	CustProps.Put("ChartType", "bar")
	CustProps.Put("XAxisTitle", "X Axis")
	CustProps.Put("YAxisTitle", "Y Axis")
	CustProps.Put("ExportMenuFileName", "")
	CustProps.Put("ExportMenuVisible", True)
	CustProps.Put("Height", "400px")
	CustProps.Put("Width", "100%")
	CustProps.Put("LegendVisible", True)
	CustProps.Put("LegendPosition", "right")
	CustProps.Put("LegendShowCheckbox", True)
	CustProps.Put("SeriesDataLabelsOffsetX", "")
	CustProps.Put("SeriesDataLabelsOffsetY", "")
	CustProps.Put("SeriesDataLabelsPieSeriesNameVisible", True)
	CustProps.Put("SeriesDataLabelsVisible", False)
	CustProps.Put("SeriesSelectable", False)
	CustProps.Put("SeriesShowDot", False)
	CustProps.Put("SeriesSpline", False)
	CustProps.Put("SeriesStacked", False)
	CustProps.Put("SeriesZoomable", False)
	CustProps.Put("XAxisDateFormat", "")
	CustProps.Put("XAxisPointOnColumn", False)
	CustProps.Put("Rounded", "none")
	CustProps.Put("RoundedBox", False)
	CustProps.Put("Shadow", "sm")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=? ")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=? ")
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

Sub setSeriesShift(b As Boolean)
	bSeriesShift = b
	CustProps.Put("SeriesShift", bSeriesShift)
End Sub

Sub getSeriesShift As Boolean
	Return bSeriesShift
End Sub

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
		sChartType = Props.GetDefault("ChartType", "bar")
		sChartType = UI.CStr(sChartType)
		sExportMenuFileName = Props.GetDefault("ExportMenuFileName", "")
		sExportMenuFileName = UI.CStr(sExportMenuFileName)
		bExportMenuVisible = Props.GetDefault("ExportMenuVisible", True)
		bExportMenuVisible = UI.CBool(bExportMenuVisible)
		sHeight = Props.GetDefault("Height", "400px")
		sHeight = UI.CStr(sHeight)
		sLegendPosition = Props.GetDefault("LegendPosition", "right")
		sLegendPosition = UI.CStr(sLegendPosition)
		bLegendShowCheckbox = Props.GetDefault("LegendShowCheckbox", True)
		bLegendShowCheckbox = UI.CBool(bLegendShowCheckbox)
		bLegendVisible = Props.GetDefault("LegendVisible", True)
		bLegendVisible = UI.CBool(bLegendVisible)
		sSeriesDataLabelsOffsetX = Props.GetDefault("SeriesDataLabelsOffsetX", "")
		sSeriesDataLabelsOffsetX = UI.CStr(sSeriesDataLabelsOffsetX)
		sSeriesDataLabelsOffsetY = Props.GetDefault("SeriesDataLabelsOffsetY", "")
		sSeriesDataLabelsOffsetY = UI.CStr(sSeriesDataLabelsOffsetY)
		bSeriesDataLabelsPieSeriesNameVisible = Props.GetDefault("SeriesDataLabelsPieSeriesNameVisible", True)
		bSeriesDataLabelsPieSeriesNameVisible = UI.CBool(bSeriesDataLabelsPieSeriesNameVisible)
		bSeriesDataLabelsVisible = Props.GetDefault("SeriesDataLabelsVisible", False)
		bSeriesDataLabelsVisible = UI.CBool(bSeriesDataLabelsVisible)
		bSeriesSelectable = Props.GetDefault("SeriesSelectable", False)
		bSeriesSelectable = UI.CBool(bSeriesSelectable)
		bSeriesShowDot = Props.GetDefault("SeriesShowDot", False)
		bSeriesShowDot = UI.CBool(bSeriesShowDot)
		bSeriesSpline = Props.GetDefault("SeriesSpline", False)
		bSeriesSpline = UI.CBool(bSeriesSpline)
		bSeriesStacked = Props.GetDefault("SeriesStacked", False)
		bSeriesStacked = UI.CBool(bSeriesStacked)
		bSeriesZoomable = Props.GetDefault("SeriesZoomable", False)
		bSeriesZoomable = UI.CBool(bSeriesZoomable)
		sTitleAlign = Props.GetDefault("TitleAlign", "left")
		sTitleAlign = UI.CStr(sTitleAlign)
		sTitleText = Props.GetDefault("TitleText", "Chart")
		sTitleText = UI.CStr(sTitleText)
		sWidth = Props.GetDefault("Width", "100%")
		sWidth = UI.CStr(sWidth)
		sXAxisDateFormat = Props.GetDefault("XAxisDateFormat", "")
		sXAxisDateFormat = UI.CStr(sXAxisDateFormat)
		bXAxisPointOnColumn = Props.GetDefault("XAxisPointOnColumn", False)
		bXAxisPointOnColumn = UI.CBool(bXAxisPointOnColumn)
		sXAxisTitle = Props.GetDefault("XAxisTitle", "X Axis")
		sXAxisTitle = UI.CStr(sXAxisTitle)
		sYAxisTitle = Props.GetDefault("YAxisTitle", "Y Axis")
		sYAxisTitle = UI.CStr(sYAxisTitle)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "sm")
		sShadow = UI.CStr(sShadow)
	End If
	'
	UI.AddStyleDT("width", sWidth)
	UI.AddStyleDT("height", sHeight)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
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
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
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

'set Chart Type
'options: area|bar|column|radial|line|pie
Sub setChartType(s As String)
	sChartType = s
	CustProps.put("ChartType", s)
	Select Case sChartType
	Case CHARTTYPE_GAUGE
		PlotBandInitialize
	End Select
End Sub

'set Export Menu File Name
Sub setExportMenuFileName(s As String)
	sExportMenuFileName = s
	CustProps.put("ExportMenuFileName", s)
End Sub

'set Export Menu Visible
Sub setExportMenuVisible(b As Boolean)
	bExportMenuVisible = b
	CustProps.put("ExportMenuVisible", b)
End Sub

'set The Height Of The Editor.
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If sHeight = "" Then Return
	UI.SetStyle(mElement, "height", sHeight)
End Sub

'set Legend Position
'options: bottom|left|right|top
Sub setLegendPosition(s As String)
	sLegendPosition = s
	CustProps.put("LegendPosition", s)
End Sub

'set Legend Show Checkbox
Sub setLegendShowCheckbox(b As Boolean)
	bLegendShowCheckbox = b
	CustProps.put("LegendShowCheckbox", b)
End Sub

'set Legend Visible
Sub setLegendVisible(b As Boolean)
	bLegendVisible = b
	CustProps.put("LegendVisible", b)
End Sub

'set Series Data Labels Offset X
Sub setSeriesDataLabelsOffsetX(s As String)
	sSeriesDataLabelsOffsetX = s
	CustProps.put("SeriesDataLabelsOffsetX", s)
End Sub
'set Series Data Labels Offset Y
Sub setSeriesDataLabelsOffsetY(s As String)
	sSeriesDataLabelsOffsetY = s
	CustProps.put("SeriesDataLabelsOffsetY", s)
End Sub

'set Series Data Labels Pie Seriesname Visible
Sub setSeriesDataLabelsPieSeriesNameVisible(b As Boolean)
	bSeriesDataLabelsPieSeriesNameVisible = b
	CustProps.put("SeriesDataLabelsPieSeriesNameVisible", b)
End Sub

Sub setSeriesDataLabelsPieSeriesNameAnchorOuter(b As Boolean)
	bSeriesDataLabelsPieSeriesNameAnchorOuter = b
	CustProps.Put("SeriesDataLabelsPieSeriesNameAnchorOuter", bSeriesDataLabelsPieSeriesNameAnchorOuter)
End Sub

Sub getSeriesDataLabelsPieSeriesNameAnchorOuter As Boolean
	Return bSeriesDataLabelsPieSeriesNameAnchorOuter
End Sub

''center' | 'start' | 'end' | 'auto' | 'outer'
Sub setSeriesDataLabelsAnchor(s As String)
	sSeriesDataLabelsAnchor = s
	CustProps.Put("SeriesDataLabelsAnchor", sSeriesDataLabelsAnchor)
End Sub

Sub setSeriesAngleRangeStart(i As Int)
	iSeriesAngleRangeStart = i
	CustProps.Put("SeriesAngleRangeStart", i)
	UI.PutRecursive(Options, "series.angleRange.start", iSeriesAngleRangeStart)
End Sub

Sub getSeriesAngleRangeStart As Int
	Return iSeriesAngleRangeStart
End Sub

Sub setSeriesAngleRangeEnd(i As Int)
	iSeriesAngleRangeEnd = i
	CustProps.Put("SeriesAngleRangeEnd", i)
	UI.PutRecursive(Options, "series.angleRange.end", iSeriesAngleRangeEnd)
End Sub

Sub getSeriesAngleRangeEnd As Int
	Return iSeriesAngleRangeEnd
End Sub

Sub setSeriesClockWise(b As Boolean)
	bSeriesClockWise = b
	CustProps.Put("SeriesClockWise", b)
	UI.PutRecursive(Options, "series.clockwise", b)
End Sub

Sub getSeriesClockWise As Boolean
	Return bSeriesClockWise
End Sub

Sub getSeriesDataLabelsAnchor As String
	Return sSeriesDataLabelsAnchor
End Sub

'set Series Data Labels Visible
Sub setSeriesDataLabelsVisible(b As Boolean)
	bSeriesDataLabelsVisible = b
	CustProps.put("SeriesDataLabelsVisible", b)
End Sub

'set Series Selectable
Sub setSeriesSelectable(b As Boolean)
	bSeriesSelectable = b
	CustProps.put("SeriesSelectable", b)
End Sub

'set Series Show Dot
Sub setSeriesShowDot(b As Boolean)
	bSeriesShowDot = b
	CustProps.put("SeriesShowDot", b)
End Sub

'set Series Spline
Sub setSeriesSpline(b As Boolean)
	bSeriesSpline = b
	CustProps.put("SeriesSpline", b)
End Sub

'set Series Stacked
Sub setSeriesStacked(b As Boolean)
	bSeriesStacked = b
	CustProps.put("SeriesStacked", b)
End Sub

'set Series Stacked Percent
Sub setSeriesStackedPercent(b As Boolean)
	bSeriesStackedPercent = b
	CustProps.put("SeriesStackedPercent", b)
End Sub

'set Series Zoomable
Sub setSeriesZoomable(b As Boolean)
	bSeriesZoomable = b
	CustProps.put("SeriesZoomable", b)
End Sub

'set Title Align
'options: center|left|right
Sub setTitleAlign(s As String)
	sTitleAlign = s
	CustProps.put("TitleAlign", s)
End Sub

'set Title Text
Sub setTitleText(s As String)
	sTitleText = s
	CustProps.put("TitleText", s)
End Sub

'set The Width Of The Editor.
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If sWidth = "" Then Return
'	If BANano.IsNumber(sWidth) Then sWidth = sWidth & "px"
	UI.SetWidth(mElement, sWidth)
End Sub

'set X axis Date Format
Sub setXAxisDateFormat(s As String)
	sXAxisDateFormat = s
	CustProps.put("XAxisDateFormat", s)
End Sub

'set X axis Point On Column
Sub setXAxisPointOnColumn(b As Boolean)
	bXAxisPointOnColumn = b
	CustProps.put("XAxisPointOnColumn", b)
End Sub

'set X axis Title
Sub setXAxisTitle(s As String)
	sXAxisTitle = s
	CustProps.put("XAxisTitle", s)
End Sub

'set Y axis Title
Sub setYAxisTitle(s As String)
	sYAxisTitle = s
	CustProps.put("YAxisTitle", s)
End Sub

'get Chart Type
Sub getChartType As String
	Return sChartType
End Sub

'get Export Menu File Name
Sub getExportMenuFileName As String
	Return sExportMenuFileName
End Sub

'get Export Menu Visible
Sub getExportMenuVisible As Boolean
	Return bExportMenuVisible
End Sub
'get The Height Of The Editor.
Sub getHeight As String
	Return sHeight
End Sub
'get Legend Position
Sub getLegendPosition As String
	Return sLegendPosition
End Sub
'get Legend Show Checkbox
Sub getLegendShowCheckbox As Boolean
	Return bLegendShowCheckbox
End Sub
'get Legend Visible
Sub getLegendVisible As Boolean
	Return bLegendVisible
End Sub
'get Series Data Labels Offset X
Sub getSeriesDataLabelsOffsetX As String
	Return sSeriesDataLabelsOffsetX
End Sub
'get Series Data Labels Offset Y
Sub getSeriesDataLabelsOffsetY As String
	Return sSeriesDataLabelsOffsetY
End Sub
'get Series Data Labels Pie Seriesname Visible
Sub getSeriesDataLabelsPieSeriesNameVisible As Boolean
	Return bSeriesDataLabelsPieSeriesNameVisible
End Sub
'get Series Data Labels Visible
Sub getSeriesDataLabelsVisible As Boolean
	Return bSeriesDataLabelsVisible
End Sub
'get Series Selectable
Sub getSeriesSelectable As Boolean
	Return bSeriesSelectable
End Sub
'get Series Show Dot
Sub getSeriesShowDot As Boolean
	Return bSeriesShowDot
End Sub
'get Series Spline
Sub getSeriesSpline As Boolean
	Return bSeriesSpline
End Sub
'get Series Stacked
Sub getSeriesStacked As Boolean
	Return bSeriesStacked
End Sub

Sub getSeriesStackedPercent As Boolean
	Return bSeriesStackedPercent
End Sub

'get Series Zoomable
Sub getSeriesZoomable As Boolean
	Return bSeriesZoomable
End Sub

Sub getSeriesDiverging As Boolean
	Return bSeriesDiverging
End Sub

Sub setSeriesDiverging(b As Boolean)
	bSeriesDiverging = b
	CustProps.Put("SeriesDiverging", bSeriesDiverging)
End Sub

'get Title Align
Sub getTitleAlign As String
	Return sTitleAlign
End Sub
'get Title Text
Sub getTitleText As String
	Return sTitleText
End Sub
'get The Width Of The Editor.
Sub getWidth As String
	Return sWidth
End Sub
'get X axis Date Format
Sub getXAxisDateFormat As String
	Return sXAxisDateFormat
End Sub
'get X axis Point On Column
Sub getXAxisPointOnColumn As Boolean
	Return bXAxisPointOnColumn
End Sub
'get X axis Title
Sub getXAxisTitle As String
	Return sXAxisTitle
End Sub
'get Y axis Title
Sub getYAxisTitle As String
	Return sYAxisTitle
End Sub

Sub getYAxisTitleAlign As String
	Return sYAxisTitleAlign
End Sub

Sub setYAxisTitleAlign(s As String)
	sYAxisTitleAlign = s
	CustProps.Put("YAxisTitleAlign", s)
End Sub

Sub Clear
	seriesM.Initialize
	categories.Initialize
	Options.Initialize
	data.Initialize
	series.Initialize
End Sub

'add a series category value matrix
Sub AddSeriesCategoryValue(seriesName As String, catName As String, value As Object)
	Dim seriesValues As List
	'the series does not exist, create it
	If seriesM.ContainsKey(seriesName) = False Then
		seriesValues.Initialize
		Dim catTot As Int = categories.Size - 1
		Dim catCnt As Int
		For catCnt = 0 To catTot
			seriesValues.Add("")
		Next
		Dim ser As Map = CreateMap()
		ser.Put("name", seriesName)
		ser.Put("data", seriesValues)
		seriesM.Put(seriesName, ser)
	End If
	'get the series data
	Dim ser As Map = seriesM.Get(seriesName)
	'get the series values
	seriesValues = ser.Get("data")
	'what is the cat pos
	Dim catPos As Int = categories.IndexOf(catName)
	If catPos <> -1 Then
		'update the category value at that position
		seriesValues.Set(catPos, value)
		ser.Put("data", seriesValues)
		'save the latest series information back
		seriesM.Put(seriesName, ser)
	End If
End Sub

'add a single category
Sub AddCategory(catName As String)
	categories.Add(catName)
End Sub
'
'add a collection of categories
Sub AddCategories(cats As List)
	categories.AddAll(cats)
End Sub

'add colors for series
Sub AddColors(cats As List)
	UI.PutRecursive(Options, "theme.series.colors", cats)
End Sub

Sub AddSeries(SeriesName As String, values As List)
	Dim ser As Map = CreateMap()
	ser.Put("name", SeriesName)
	ser.Put("data", values)
	seriesM.Put(SeriesName, ser)
End Sub

Sub AddXY(X As String, y As Object)
	AddSeriesValue(x, y)
End Sub

Sub AddSeriesValue(SeriesName As String, value As Object)
	Dim ser As Map = CreateMap()
	ser.Put("name", SeriesName)
	ser.Put("data", value)
	seriesM.Put(SeriesName, ser)
End Sub

Sub Refresh
	data.Initialize
	series.Initialize
	If sExportMenuFileName <> "" Then UI.PutRecursive(Options, "exportMenu.filename", sExportMenuFileName)
	UI.PutRecursive(Options, "exportMenu.visible", bExportMenuVisible)
	UI.PutRecursive(Options, "chart.height", "auto")
	UI.PutRecursive(Options, "chart.width", "auto")
	If sLegendPosition <> "" Then UI.PutRecursive(Options, "legend.align", sLegendPosition)
	UI.PutRecursive(Options, "legend.showCheckbox", bLegendShowCheckbox)
	UI.PutRecursive(Options, "legend.visible", bLegendVisible)
	If sSeriesDataLabelsOffsetX <> "" Then UI.PutRecursive(Options, "series.dataLabels.offsetX", UI.CInt(sSeriesDataLabelsOffsetX))
	If sSeriesDataLabelsOffsetY <> "" Then UI.PutRecursive(Options, "series.dataLabels.offsetY", UI.CInt(sSeriesDataLabelsOffsetY))
	UI.PutRecursive(Options, "series.dataLabels.visible", bSeriesDataLabelsVisible)
	If sSeriesDataLabelsAnchor <> "" Then UI.PutRecursive(Options, "series.dataLabels.anchor", sSeriesDataLabelsAnchor)
	UI.PutRecursive(Options, "series.dataLabels.pieSeriesName.visible", bSeriesDataLabelsPieSeriesNameVisible)
	If bSeriesDataLabelsPieSeriesNameAnchorOuter Then
		UI.PutRecursive(Options, "series.dataLabels.pieSeriesName.anchor", "outer")
	End If
	If bSeriesStacked Then UI.PutRecursive(Options, "series.stack.type", "normal")
	If bSeriesStackedPercent Then UI.PutRecursive(Options, "series.stack.type", "percent")
	UI.PutRecursive(Options, "series.selectable", bSeriesSelectable)
	UI.PutRecursive(Options, "series.showDot", bSeriesShowDot)
	UI.PutRecursive(Options, "series.spline", bSeriesSpline)
	UI.PutRecursive(Options, "series.zoomable", bSeriesZoomable)
	If bSeriesShift Then UI.PutRecursive(Options, "series.shift", True)
	If bSeriesDiverging Then UI.PutRecursive(Options, "series.diverging", bSeriesDiverging)
	If sTitleAlign <> "" Then UI.PutRecursive(Options, "chart.title.align", sTitleAlign)
	If sTitleText <> "" Then UI.PutRecursive(Options, "chart.title.text", sTitleText)
	If sXAxisDateFormat <> "" Then UI.PutRecursive(Options, "xAxis.date.format", sXAxisDateFormat)
	UI.PutRecursive(Options, "xAxis.pointOnColumn", bXAxisPointOnColumn)
	If sXAxisTitle <> "" Then UI.PutRecursive(Options, "xAxis.title.text", sXAxisTitle)
	If sYAxisTitle <> "" Then UI.PutRecursive(Options, "yAxis.title.text", sYAxisTitle)
	If sYAxisTitleAlign <> "" Then UI.PutRecursive(Options, "yAxis.title.align", sYAxisTitleAlign)
	'
	data.Put("categories", categories)
	For Each k As String In seriesM.Keys
		Dim ser As Map = seriesM.Get(k)
		series.Add(ser)
	Next
	'
	data.Put("series", series)
	Dim obj As Map = CreateMap()
	'obj.Put("el", mchart.ToObject)
	obj.Put("el", mElement.ToObject)
	obj.Put("data", data)
	obj.Put("options", Options)
	'
	Dim toastui As BANanoObject
	toastui.Initialize("toastui")
	'
	Select Case sChartType
		Case "area"
			chart = toastui.GetField("Chart").RunMethod("areaChart", obj)
		Case "bar"
			chart = toastui.GetField("Chart").RunMethod("barChart", obj)
		Case "column"
			chart = toastui.GetField("Chart").RunMethod("columnChart", obj)
		Case "radial-bar"
			chart = toastui.GetField("Chart").RunMethod("radialBarChart", obj)
		Case "line"
			chart = toastui.GetField("Chart").RunMethod("lineChart", obj)
		Case "pie"
			chart = toastui.GetField("Chart").RunMethod("pieChart", obj)
		Case "radar"
			chart = toastui.GetField("Chart").RunMethod("radarChart", obj)
		Case "gauge"
			chart = toastui.GetField("Chart").RunMethod("gaugeChart", obj)
	End Select
End Sub

Sub setCircularAxisTitleText(s As String)
	sCircularAxisTitleText = s
	CustProps.Put("CircularAxisTitleText", s)
	UI.PutRecursive(Options, "circularAxis.title.text", s)
End Sub

Sub getCircularAxisTitleText As String
	Return sCircularAxisTitleText
End Sub

Sub setCircularAxisScaleMin(i As Int)
	iCircularAxisScaleMin = i
	CustProps.Put("CircularAxisScaleMin", i)
	UI.PutRecursive(Options, "circularAxis.scale.min", i)
End Sub

Sub setCircularAxisScaleMax(i As Int)
	iCircularAxisScaleMax = i
	CustProps.Put("CircularAxisScaleMax", i)
	UI.PutRecursive(Options, "circularAxis.scale.max", i)
End Sub

Sub setCircularLabelMargin(i As Int)
	iCircularLabelMargin = i
	CustProps.Put("CircularLabelMargin", i)
	UI.PutRecursive(Options, "circularAxis.label.margin", i)
End Sub

Sub getiCircularLabelMargin As Int
	Return iCircularLabelMargin
End Sub

Sub getCircularAxisScaleMax As Int
	Return iCircularAxisScaleMax
End Sub

Sub getCircularAxisScaleMin As Int
	Return iCircularAxisScaleMin
End Sub

Sub PlotBandInitialize()
	Dim lst As List
	lst.Initialize
	UI.PutRecursive(Options, "plot.bands", lst)
End Sub

Sub AddPlotBandRange(iStart As Object, iEnd As String, sColor As String)
	Dim lst As List = UI.GetRecursive(Options, "plot.bands")
	Dim opt As Map = CreateMap()
	opt.Put("range", Array(iStart, iEnd))
	opt.Put("color", sColor)
	lst.Add(opt)
	UI.PutRecursive(Options, "plot.bands", lst)
End Sub

Sub setThemePlotBandsBarWidth(i As Int)
	iThemePlotBandsBarWidth = i
	CustProps.Put("ThemePlotBandsBarWidth", i)
	UI.PutRecursive(Options, "theme.plot.bands.barWidth", i)
End Sub

Sub getThemePlotBandsBarWidth As Int
	Return iThemePlotBandsBarWidth
End Sub

Sub setSeriesSolidClockHand(b As Boolean)
	CustProps.Put("SeriesSolidClockHand", bSeriesSolidClockHand)
	bSeriesSolidClockHand = b
	UI.PutRecursive(Options, "series.solid.clockHand", bSeriesSolidClockHand)
End Sub	

Sub getSeriesSolidClockHand As Boolean
	Return bSeriesSolidClockHand
End Sub
