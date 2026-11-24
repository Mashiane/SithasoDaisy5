B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (task As Map)
#Event: DoubleClick (task As Map)
#Event: DateChange (task As Map, startDate As Object, endDate As Object)
#Event: ProgressChange (task As Map, progress As Object)
#Event: ViewChange (mode As Object)
#Event: Hover (task As Map, screenX As Int, screenY As Int, event As Object)
#Event: DateClick (dateString As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: ViewMode, DisplayName: View Mode, FieldType: String, DefaultValue: Day, Description: Initial view mode, List: Day|Half Day|Hour|Month|Quarter Day|Week|Year
#DesignerProperty: Key: ViewModes, DisplayName: View Modes (;), FieldType: String, DefaultValue: Quarter Day;Half Day;Day;Week;Month;Year, Description: Available view modes delimited by semicolon
#DesignerProperty: Key: DateFormat, DisplayName: Date Format, FieldType: String, DefaultValue: YYYY-MM-DD, Description: Format for displaying dates
#DesignerProperty: Key: Language, DisplayName: Language, FieldType: String, DefaultValue: en, Description: Language for localization, List: de|en|es|fr|hu|it|ptBr|ru|tr|zh
#DesignerProperty: Key: BarHeight, DisplayName: Bar Height, FieldType: Int, DefaultValue: 30, Description: Height of task bars (in pixels)
#DesignerProperty: Key: BarCornerRadius, DisplayName: Bar Corner Radius, FieldType: Int, DefaultValue: 3, Description: Radius of the task bar corners (in pixels)
#DesignerProperty: Key: ArrowCurve, DisplayName: Arrow Curve, FieldType: Int, DefaultValue: 5, Description: Curve radius of arrows connecting dependencies
#DesignerProperty: Key: Padding, DisplayName: Padding, FieldType: Int, DefaultValue: 18, Description: Padding around task bars (in pixels)
#DesignerProperty: Key: UpperHeaderHeight, DisplayName: Upper Header Height, FieldType: Int, DefaultValue: 45, Description: Height of upper header (in pixels)
#DesignerProperty: Key: LowerHeaderHeight, DisplayName: Lower Header Height, FieldType: Int, DefaultValue: 30, Description: Height of lower header (in pixels)
#DesignerProperty: Key: ColumnWidth, DisplayName: Column Width, FieldType: Int, DefaultValue: 45, Description: Width of each column in timeline (in pixels)
#DesignerProperty: Key: Lines, DisplayName: Lines, FieldType: String, DefaultValue: both, Description: Which grid lines to display, List: both|horizontal|none|vertical
#DesignerProperty: Key: Popup, DisplayName: Show Popup, FieldType: Boolean, DefaultValue: True, Description: Show popup tooltip on click or hover
#DesignerProperty: Key: PopupOn, DisplayName: Popup On, FieldType: String, DefaultValue: click, Description: Event to trigger popup display, List: click|hover
#DesignerProperty: Key: ScrollTo, DisplayName: Scroll To, FieldType: String, DefaultValue: today, Description: Starting point when chart is rendered, List: end|start|today
#DesignerProperty: Key: TodayButton, DisplayName: Today Button, FieldType: Boolean, DefaultValue: True, Description: Adds a button to navigate to today date
#DesignerProperty: Key: ViewModeSelect, DisplayName: View Mode Select, FieldType: Boolean, DefaultValue: False, Description: Allows selecting view mode from a dropdown
#DesignerProperty: Key: AutoMoveLabel, DisplayName: Auto Move Label, FieldType: Boolean, DefaultValue: False, Description: Move task labels when user scrolls horizontally
#DesignerProperty: Key: MoveDependencies, DisplayName: Move Dependencies, FieldType: Boolean, DefaultValue: True, Description: Moving a task automatically moves its dependencies
#DesignerProperty: Key: ShowExpectedProgress, DisplayName: Show Expected Progress, FieldType: Boolean, DefaultValue: False, Description: Shows expected progress for tasks
#DesignerProperty: Key: IgnoreWeekends, DisplayName: Ignore Weekends, FieldType: Boolean, DefaultValue: False, Description: Ignore weekends as non-working days (diagonal hatching)
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Disables all editing features
#DesignerProperty: Key: ReadonlyDates, DisplayName: Readonly Dates, FieldType: Boolean, DefaultValue: False, Description: Disables editing task dates
#DesignerProperty: Key: ReadonlyProgress, DisplayName: Readonly Progress, FieldType: Boolean, DefaultValue: False, Description: Disables editing task progress
#DesignerProperty: Key: FixedDuration, DisplayName: Fixed Duration, FieldType: Boolean, DefaultValue: False, Description: Lock task duration when dragging
#DesignerProperty: Key: HoverOnDate, DisplayName: Hover On Date, FieldType: Boolean, DefaultValue: False, Description: Highlight date column on hover and allow date clicking
#DesignerProperty: Key: SnapAt, DisplayName: Snap At, FieldType: String, DefaultValue: 1d, Description: Snap interval when dragging or resizing (e.g. 1d, 6h, 1h)
#DesignerProperty: Key: InfinitePadding, DisplayName: Infinite Padding, FieldType: Boolean, DefaultValue: True, Description: Extend timeline infinitely when user scrolls
#DesignerProperty: Key: ContainerHeight, DisplayName: Container Height, FieldType: String, DefaultValue: auto, Description: Dynamic container height (auto or pixels)
#DesignerProperty: Key: BarColor, DisplayName: Bar Color, FieldType: String, DefaultValue: , Description: Default Task Bar Color
#DesignerProperty: Key: BarLabelColor, DisplayName: Bar Label Color, FieldType: String, DefaultValue: , Description: Task Bar Label Color
#DesignerProperty: Key: BarProgressColor, DisplayName: Bar Progress Color, FieldType: String, DefaultValue: , Description: Task Bar Progress Color
#DesignerProperty: Key: ArrowColor, DisplayName: Arrow Color, FieldType: String, DefaultValue: , Description: Dependency Arrow Color
#DesignerProperty: Key: ArrowWidth, DisplayName: Arrow Width, FieldType: String, DefaultValue: , Description: Dependency Arrow Width
#DesignerProperty: Key: TickColor, DisplayName: Tick Color, FieldType: String, DefaultValue: , Description: Timeline Tick Color
#DesignerProperty: Key: ExpectedProgressColor, DisplayName: Expected Progress Color, FieldType: String, DefaultValue: , Description: Color of expected progress bar underlay
#DesignerProperty: Key: TodayHighlightColor, DisplayName: Today Highlight Color, FieldType: String, DefaultValue: , Description: Color of today highlight line and marker
#DesignerProperty: Key: WeekendHighlightColor, DisplayName: Weekend Highlight Color, FieldType: String, DefaultValue: , Description: Background highlight color for weekends
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Container Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Container Width
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: RawClasses, DisplayName: Classes (;), FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: RawStyles, DisplayName: Styles (JSON), FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String use = and ;
#DesignerProperty: Key: RawAttributes, DisplayName: Attributes (JSON), FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String use = and ;

Sub Class_Globals
	Public UI As UIShared 'ignore
	Public CustProps As Map 'ignore
	Private mCallBack As Object 'ignore
	Private mEventName As String 'ignore
	Public mElement As BANanoElement 'ignore
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
	Private tasks As Map
	Private Items As List
	Public gantt As BANanoObject

	Private sHeight As String = "500px"
	Private sWidth As String = "100%"
	Private sViewMode As String = "Day"
	Private sViewModes As String = "Quarter Day;Half Day;Day;Week;Month;Year"
	Private sDateFormat As String = "YYYY-MM-DD"
	Private sLanguage As String = "en"
	Private iBarHeight As Int = 30
	Private iBarCornerRadius As Int = 3
	Private iArrowCurve As Int = 5
	Private iPadding As Int = 18
	Private iUpperHeaderHeight As Int = 45
	Private iLowerHeaderHeight As Int = 30
	Private iColumnWidth As Int = 45
	Private sLines As String = "both"
	Private bPopup As Boolean = True
	Private sPopupOn As String = "click"
	Private sScrollTo As String = "today"
	Private bTodayButton As Boolean = True
	Private bViewModeSelect As Boolean = False
	Private bAutoMoveLabel As Boolean = False
	Private bMoveDependencies As Boolean = True
	Private bShowExpectedProgress As Boolean = False
	Private bReadonly As Boolean = False
	Private bReadonlyDates As Boolean = False
	Private bReadonlyProgress As Boolean = False
	Private bFixedDuration As Boolean = False
	Private bHoverOnDate As Boolean = False
	Private sSnapAt As String = "1d"
	Private bInfinitePadding As Boolean = True
	Private sContainerHeight As String = "auto"
	Private sBarColor As String = ""
	Private sBarLabelColor As String = ""
	Private sBarProgressColor As String = ""
	Private sArrowColor As String = ""
	Private sArrowWidth As String = ""
	Private sTickColor As String = ""
	Private sExpectedProgressColor As String = ""
	Private sTodayHighlightColor As String = ""
	Private sWeekendHighlightColor As String = ""
	Private customPopupHtml As Object = Null
	Private oHolidays As Object = Null
	Private oIgnore As Object = Null
	Private holidaysMap As Map
	Private ignoredDatesList As List
	Private bIgnoreWeekends As Boolean = False
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("FrappeGantt") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesFrappeGantt)' should be added for '${Name}'"$)
		Return
	End If
	BANano.DependsOnAsset("frappe-gantt.min.css")
	BANano.DependsOnAsset("frappe-gantt.min.js")
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	If mEventName = "" Then mEventName = UI.CleanID(Name)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	tasks.Initialize
	Items.Initialize
	holidaysMap.Initialize
	ignoredDatesList.Initialize
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("ViewMode", "Day")
	CustProps.Put("ViewModes", "Quarter Day;Half Day;Day;Week;Month;Year")
	CustProps.Put("DateFormat", "YYYY-MM-DD")
	CustProps.Put("Language", "en")
	CustProps.Put("BarHeight", 30)
	CustProps.Put("BarCornerRadius", 3)
	CustProps.Put("ArrowCurve", 5)
	CustProps.Put("Padding", 18)
	CustProps.Put("UpperHeaderHeight", 45)
	CustProps.Put("LowerHeaderHeight", 30)
	CustProps.Put("ColumnWidth", 45)
	CustProps.Put("Lines", "both")
	CustProps.Put("Popup", True)
	CustProps.Put("PopupOn", "click")
	CustProps.Put("ScrollTo", "today")
	CustProps.Put("TodayButton", True)
	CustProps.Put("ViewModeSelect", False)
	CustProps.Put("AutoMoveLabel", False)
	CustProps.Put("MoveDependencies", True)
	CustProps.Put("ShowExpectedProgress", False)
	CustProps.Put("IgnoreWeekends", False)
	CustProps.Put("Readonly", False)
	CustProps.Put("ReadonlyDates", False)
	CustProps.Put("ReadonlyProgress", False)
	CustProps.Put("FixedDuration", False)
	CustProps.Put("HoverOnDate", False)
	CustProps.Put("SnapAt", "1d")
	CustProps.Put("InfinitePadding", True)
	CustProps.Put("ContainerHeight", "auto")
	CustProps.Put("BarColor", "")
	CustProps.Put("BarLabelColor", "")
	CustProps.Put("BarProgressColor", "")
	CustProps.Put("ArrowColor", "")
	CustProps.Put("ArrowWidth", "")
	CustProps.Put("TickColor", "")
	CustProps.Put("ExpectedProgressColor", "")
	CustProps.Put("TodayHighlightColor", "")
	CustProps.Put("WeekendHighlightColor", "")
	CustProps.Put("Height", "500px")
	CustProps.Put("Width", "100%")
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

'build the view in designer
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		sParentID = Props.GetDefault("ParentID", "")
		sParentID = UI.CStr(sParentID)
		bVisible = Props.GetDefault("Visible", True)
		bVisible = UI.CBool(bVisible)
		bEnabled = Props.GetDefault("Enabled", True)
		bEnabled = UI.CBool(bEnabled)
		sHeight = Props.GetDefault("Height", "500px")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "100%")
		sWidth = UI.CStr(sWidth)
		sViewMode = Props.GetDefault("ViewMode", "Day")
		sViewMode = UI.CStr(sViewMode)
		sViewModes = Props.GetDefault("ViewModes", "Quarter Day;Half Day;Day;Week;Month;Year")
		sViewModes = UI.CStr(sViewModes)
		sDateFormat = Props.GetDefault("DateFormat", "YYYY-MM-DD")
		sDateFormat = UI.CStr(sDateFormat)
		sLanguage = Props.GetDefault("Language", "en")
		sLanguage = UI.CStr(sLanguage)
		iBarHeight = Props.GetDefault("BarHeight", 30)
		iBarHeight = UI.CInt(iBarHeight)
		iBarCornerRadius = Props.GetDefault("BarCornerRadius", 3)
		iBarCornerRadius = UI.CInt(iBarCornerRadius)
		iArrowCurve = Props.GetDefault("ArrowCurve", 5)
		iArrowCurve = UI.CInt(iArrowCurve)
		iPadding = Props.GetDefault("Padding", 18)
		iPadding = UI.CInt(iPadding)
		iUpperHeaderHeight = Props.GetDefault("UpperHeaderHeight", 45)
		iUpperHeaderHeight = UI.CInt(iUpperHeaderHeight)
		iLowerHeaderHeight = Props.GetDefault("LowerHeaderHeight", 30)
		iLowerHeaderHeight = UI.CInt(iLowerHeaderHeight)
		iColumnWidth = Props.GetDefault("ColumnWidth", 45)
		iColumnWidth = UI.CInt(iColumnWidth)
		sLines = Props.GetDefault("Lines", "both")
		sLines = UI.CStr(sLines)
		bPopup = Props.GetDefault("Popup", True)
		bPopup = UI.CBool(bPopup)
		sPopupOn = Props.GetDefault("PopupOn", "click")
		sPopupOn = UI.CStr(sPopupOn)
		sScrollTo = Props.GetDefault("ScrollTo", "today")
		sScrollTo = UI.CStr(sScrollTo)
		bTodayButton = Props.GetDefault("TodayButton", True)
		bTodayButton = UI.CBool(bTodayButton)
		bViewModeSelect = Props.GetDefault("ViewModeSelect", False)
		bViewModeSelect = UI.CBool(bViewModeSelect)
		bAutoMoveLabel = Props.GetDefault("AutoMoveLabel", False)
		bAutoMoveLabel = UI.CBool(bAutoMoveLabel)
		bMoveDependencies = Props.GetDefault("MoveDependencies", True)
		bMoveDependencies = UI.CBool(bMoveDependencies)
		bShowExpectedProgress = Props.GetDefault("ShowExpectedProgress", False)
		bShowExpectedProgress = UI.CBool(bShowExpectedProgress)
		bIgnoreWeekends = Props.GetDefault("IgnoreWeekends", False)
		bIgnoreWeekends = UI.CBool(bIgnoreWeekends)
		setIgnoreWeekends(bIgnoreWeekends)
		bReadonly = Props.GetDefault("Readonly", False)
		bReadonly = UI.CBool(bReadonly)
		bReadonlyDates = Props.GetDefault("ReadonlyDates", False)
		bReadonlyDates = UI.CBool(bReadonlyDates)
		bReadonlyProgress = Props.GetDefault("ReadonlyProgress", False)
		bReadonlyProgress = UI.CBool(bReadonlyProgress)
		bFixedDuration = Props.GetDefault("FixedDuration", False)
		bFixedDuration = UI.CBool(bFixedDuration)
		bHoverOnDate = Props.GetDefault("HoverOnDate", False)
		bHoverOnDate = UI.CBool(bHoverOnDate)
		sSnapAt = Props.GetDefault("SnapAt", "1d")
		sSnapAt = UI.CStr(sSnapAt)
		bInfinitePadding = Props.GetDefault("InfinitePadding", True)
		bInfinitePadding = UI.CBool(bInfinitePadding)
		sContainerHeight = Props.GetDefault("ContainerHeight", "auto")
		sContainerHeight = UI.CStr(sContainerHeight)
		sBarColor = Props.GetDefault("BarColor", "")
		sBarColor = UI.CStr(sBarColor)
		sBarLabelColor = Props.GetDefault("BarLabelColor", "")
		sBarLabelColor = UI.CStr(sBarLabelColor)
		sBarProgressColor = Props.GetDefault("BarProgressColor", "")
		sBarProgressColor = UI.CStr(sBarProgressColor)
		sArrowColor = Props.GetDefault("ArrowColor", "")
		sArrowColor = UI.CStr(sArrowColor)
		sArrowWidth = Props.GetDefault("ArrowWidth", "")
		sArrowWidth = UI.CStr(sArrowWidth)
		sTickColor = Props.GetDefault("TickColor", "")
		sTickColor = UI.CStr(sTickColor)
		sExpectedProgressColor = Props.GetDefault("ExpectedProgressColor", "")
		sExpectedProgressColor = UI.CStr(sExpectedProgressColor)
		sTodayHighlightColor = Props.GetDefault("TodayHighlightColor", "")
		sTodayHighlightColor = UI.CStr(sTodayHighlightColor)
		sWeekendHighlightColor = Props.GetDefault("WeekendHighlightColor", "")
		sWeekendHighlightColor = UI.CStr(sWeekendHighlightColor)
	End If

	UI.AddStyleDT("width", sWidth)
	UI.AddStyleDT("height", sHeight)

	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	If sParentID <> "" Then
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"SDUI5FrappeGantt.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get($"#${mName}"$)

	ApplyStyles
	UI.SetVisible(mElement, bVisible)
	UI.SetEnabled(mElement, bEnabled)
End Sub

Private Sub BuildOptions
	Options.Initialize
	Options.Put("header_height", iUpperHeaderHeight + iLowerHeaderHeight + 10)
	Options.Put("upper_header_height", iUpperHeaderHeight)
	Options.Put("lower_header_height", iLowerHeaderHeight)
	If iColumnWidth > 0 Then Options.Put("column_width", iColumnWidth)
	Options.Put("view_mode", sViewMode)
	If sViewModes <> "" Then
		Dim vms As List = UI.StrParse(";", sViewModes)
		Dim vmIdx As Int = vms.IndexOf(sViewMode)
		If vmIdx > 0 Then
			vms.RemoveAt(vmIdx)
			vms.InsertAt(0, sViewMode)
		End If
		Options.Put("view_modes", vms)
	End If
	Options.Put("bar_height", iBarHeight)
	Options.Put("bar_corner_radius", iBarCornerRadius)
	Options.Put("arrow_curve", iArrowCurve)
	Options.Put("padding", iPadding)
	Options.Put("date_format", sDateFormat)
	Options.Put("language", sLanguage)
	Options.Put("lines", sLines)
	Options.Put("popup_on", sPopupOn)
	Options.Put("scroll_to", sScrollTo)
	Options.Put("today_button", bTodayButton)
	Options.Put("view_mode_select", bViewModeSelect)
	Options.Put("auto_move_label", bAutoMoveLabel)
	Options.Put("move_dependencies", bMoveDependencies)
	Options.Put("show_expected_progress", bShowExpectedProgress)
	Options.Put("readonly", bReadonly)
	Options.Put("readonly_dates", bReadonlyDates)
	Options.Put("readonly_progress", bReadonlyProgress)
	Options.Put("fixed_duration", bFixedDuration)
	Options.Put("hover_on_date", bHoverOnDate)
	If sSnapAt <> "" Then Options.Put("snap_at", sSnapAt)
	If sContainerHeight <> "" Then Options.Put("container_height", sContainerHeight)
	Options.Put("infinite_padding", bInfinitePadding)
	If bPopup = False Then
		Options.Put("popup", False)
	Else If customPopupHtml <> Null Then
		Options.Put("custom_popup_html", customPopupHtml)
	End If
	If holidaysMap.Size > 0 Then
		Options.Put("holidays", holidaysMap)
	Else If oHolidays <> Null Then
		Options.Put("holidays", oHolidays)
	End If
	If ignoredDatesList.Size > 0 Then
		Options.Put("ignore", ignoredDatesList)
	Else If oIgnore <> Null Then
		Options.Put("ignore", oIgnore)
	End If
End Sub

'render or re-render the gantt chart
Public Sub Refresh
	If mElement = Null Then Return
	mElement.Empty
	BuildOptions

	If SubExists(mCallBack, $"${mEventName}_click"$) Then
		Dim t As Object
		Dim cbC As BANanoObject = BANano.CallBack(mCallBack, $"${mEventName}_click"$, Array(t))
		Options.Put("on_click", cbC)
	End If
	If SubExists(mCallBack, $"${mEventName}_doubleclick"$) Then
		Dim t As Object
		Dim cbDblC As BANanoObject = BANano.CallBack(mCallBack, $"${mEventName}_doubleclick"$, Array(t))
		Options.Put("on_double_click", cbDblC)
	End If
	If SubExists(mCallBack, $"${mEventName}_datechange"$) Then
		Dim t As Object
		Dim s As Object
		Dim e As Object
		Dim cbDC As BANanoObject = BANano.CallBack(mCallBack, $"${mEventName}_datechange"$, Array(t, s, e))
		Options.Put("on_date_change", cbDC)
	End If
	If SubExists(mCallBack, $"${mEventName}_progresschange"$) Then
		Dim t As Object
		Dim p As Object
		Dim cbPC As BANanoObject = BANano.CallBack(mCallBack, $"${mEventName}_progresschange"$, Array(t, p))
		Options.Put("on_progress_change", cbPC)
	End If
	If SubExists(mCallBack, $"${mEventName}_viewchange"$) Then
		Dim m As Object
		Dim cbVC As BANanoObject = BANano.CallBack(mCallBack, $"${mEventName}_viewchange"$, Array(m))
		Options.Put("on_view_change", cbVC)
	End If
	If SubExists(mCallBack, $"${mEventName}_hover"$) Then
		Dim t As Object
		Dim sx As Object
		Dim sy As Object
		Dim ev As Object
		Dim cbH As BANanoObject = BANano.CallBack(mCallBack, $"${mEventName}_hover"$, Array(t, sx, sy, ev))
		Options.Put("on_hover", cbH)
	End If
	If SubExists(mCallBack, $"${mEventName}_dateclick"$) Then
		Dim dt As Object
		Dim cbDtC As BANanoObject = BANano.CallBack(mCallBack, $"${mEventName}_dateclick"$, Array(dt))
		Options.Put("on_date_click", cbDtC)
	End If

	Items.Initialize
	For Each taskid As String In tasks.Keys
		Dim task As Map = tasks.Get(taskid)
		Items.Add(task)
	Next

	If Items.Size = 0 Then
		Dim defTask As Map = CreateMap("id": "task-0", "name": "No tasks to display!", "start": UI.DateNow, "end": UI.DateTimeNow, "progress": 100)
		Items.Add(defTask)
	End If

	Try
		gantt.Initialize2("Gantt", Array($"#${mName}"$, Items, Options))
	Catch
		Log($"[SDUI5FrappeGantt.${mName}] Error initializing Gantt: ${LastException.Message}"$)
	End Try
End Sub

'refresh tasks on an active gantt instance
Public Sub RefreshTasks(tasksList As List)
	SetTasks(tasksList)
	If gantt <> Null Then
		gantt.RunMethod("refresh", Array(Items))
	Else
		Refresh
	End If
End Sub

'update an individual task dynamically
Public Sub UpdateTask(taskID As String, newDetails As Map)
	If tasks.ContainsKey(taskID) Then
		Dim t As Map = tasks.Get(taskID)
		For Each k As String In newDetails.Keys
			t.Put(k, newDetails.Get(k))
		Next
		tasks.Put(taskID, t)
	End If
	If gantt <> Null Then
		gantt.RunMethod("update_task", Array(taskID, newDetails))
	End If
End Sub

'add component to parent dynamically
Public Sub AddComponent
	If sParentID = "" Then Return
	sParentID = UI.CleanID(sParentID)
	mTarget = BANano.GetElement("#" & sParentID)
	DesignerCreateView(mTarget, CustProps)
End Sub

'legacy helper to add to parent
Public Sub AddToParent(targetID As String, props As Map)
	targetID = UI.CleanID(targetID)
	mTarget = BANano.GetElement("#" & targetID)
	DesignerCreateView(mTarget, props)
End Sub

'legacy helper to add Frappe Gantt
Public Sub AddFrappeGantt(Callback As Object, ParentID As String, ID As String)
	ParentID = UI.CleanID(ParentID)
	ID = UI.CleanID(ID)
	mName = ID
	mEventName = ID
	mCallBack = Callback
	sParentID = ParentID
	CustProps.Put("ParentID", sParentID)
	If BANano.Exists($"#${ParentID}"$) = False Then
		BANano.Throw($"SDUI5FrappeGantt.AddFrappeGantt: '${ParentID}' parent does not exist!"$)
		Return
	End If
	mTarget = BANano.GetElement($"#${ParentID}"$)
	DesignerCreateView(mTarget, CustProps)
End Sub

'remove the component from DOM
Public Sub Remove()
	If mElement <> Null Then mElement.Remove
	BANano.SetMeToNull
End Sub

'get element ID
Public Sub getID() As String
	Return mName
End Sub

'get element selector
Public Sub getHere() As String
	Return $"#${mName}"$
End Sub

'get element name
Public Sub getName As String
	Return mName
End Sub

'set parent ID
Public Sub setParentID(s As String)
	s = UI.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub

'get parent ID
Public Sub getParentID() As String
	Return sParentID
End Sub

'set visible
Public Sub setVisible(b As Boolean)
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	UI.SetVisible(mElement, b)
End Sub

'get visible
Public Sub getVisible() As Boolean
	If mElement = Null Then Return bVisible
	bVisible = UI.GetVisible(mElement)
	Return bVisible
End Sub

'show component
Public Sub Show
	setVisible(True)
End Sub

'hide component
Public Sub Hide
	setVisible(False)
End Sub

'set enabled
Public Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement = Null Then Return
	UI.SetEnabled(mElement, b)
End Sub

'get enabled
Public Sub getEnabled() As Boolean
	If mElement = Null Then Return bEnabled
	bEnabled = UI.GetEnabled(mElement)
	Return bEnabled
End Sub

'enable component
Public Sub Enable
	setEnabled(True)
End Sub

'disable component
Public Sub Disable
	setEnabled(False)
End Sub

'set properties from an outside source
Public Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.GetDefault("ParentID", "")
End Sub

'get component properties map
Public Sub GetProperties As Map
	Return CustProps
End Sub

'add event listener
Public Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, methodName)
End Sub

'set Position Style
Public Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.Put("PositionStyle", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "position", s)
End Sub

Public Sub getPositionStyle As String
	Return sPositionStyle
End Sub

'set raw positions
Public Sub setPosition(s As String)
	sPosition = s
	CustProps.Put("Position", sPosition)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPosition(mElement, sPosition)
End Sub

Public Sub getPosition As String
	Return sPosition
End Sub

Public Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub

Public Sub getAttributes As String
	Return sRawAttributes
End Sub

Public Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub

Public Sub getStyles As String
	Return sRawStyles
End Sub

Public Sub setClasses(s As String)
	sRawClasses = s
	CustProps.Put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub

Public Sub getClasses As String
	Return sRawClasses
End Sub

Public Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub

Public Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub

Public Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub

Public Sub getMarginAXYTBLR As String
	Return sMarginAXYTBLR
End Sub

Public Sub setWidth(s As String)
	sWidth = s
	CustProps.Put("Width", s)
	If mElement = Null Then Return
	UI.SetWidth(mElement, s)
End Sub

Public Sub getWidth As String
	Return sWidth
End Sub

Public Sub setHeight(s As String)
	sHeight = s
	CustProps.Put("Height", s)
	If mElement = Null Then Return
	UI.SetHeight(mElement, s)
End Sub

Public Sub getHeight As String
	Return sHeight
End Sub

Public Sub shadow(s As String)
	CustProps.Put("Shadow", s)
	If mElement = Null Then Return
	UI.SetShadow(mElement, s)
End Sub

Public Sub RoundedBox
	CustProps.Put("RoundedBox", True)
	If mElement = Null Then Return
	UI.SetRoundedBox(mElement, True)
End Sub

'apply custom CSS styles
Public Sub ApplyStyles
	If sBarColor <> "" Then setBarColor(sBarColor)
	If sBarLabelColor <> "" Then setBarLabelColor(sBarLabelColor)
	If sBarProgressColor <> "" Then setBarProgressColor(sBarProgressColor)
	If sArrowColor <> "" Or sArrowWidth <> "" Then SetArrowColorWidth(sArrowColor, sArrowWidth)
	If sTickColor <> "" Then setTickColor(sTickColor)
	If sExpectedProgressColor <> "" Then SetExpectedProgressColor(sExpectedProgressColor)
	If sTodayHighlightColor <> "" Then SetTodayHighlightColor(sTodayHighlightColor)
	If sWeekendHighlightColor <> "" Then SetWeekendHighlightColor(sWeekendHighlightColor)
End Sub

'set default Bar Color across all tasks
Public Sub setBarColor(s As String)
	s = UI.CStr(s)
	sBarColor = s
	CustProps.Put("BarColor", s)
	UI.RemoveCSSRule($"#${mName} .bar"$)
	If s = "" Then Return
	UI.InsertCSSRule($"#${mName} .bar"$, $"fill: ${s} !important;"$)
End Sub

Public Sub getBarColor As String
	Return sBarColor
End Sub

'set default Bar Label Color across all tasks
Public Sub setBarLabelColor(s As String)
	s = UI.CStr(s)
	sBarLabelColor = s
	CustProps.Put("BarLabelColor", s)
	UI.RemoveCSSRule($"#${mName} .bar-label"$)
	If s = "" Then Return
	UI.InsertCSSRule($"#${mName} .bar-label"$, $"fill: ${s} !important;"$)
End Sub

Public Sub getBarLabelColor As String
	Return sBarLabelColor
End Sub

'set default Bar Progress Color across all tasks
Public Sub setBarProgressColor(s As String)
	s = UI.CStr(s)
	sBarProgressColor = s
	CustProps.Put("BarProgressColor", s)
	UI.RemoveCSSRule($"#${mName} .bar-progress"$)
	If s = "" Then Return
	UI.InsertCSSRule($"#${mName} .bar-progress"$, $"fill: ${s} !important;"$)
End Sub

Public Sub getBarProgressColor As String
	Return sBarProgressColor
End Sub

'set Arrow Color and Width
Public Sub SetArrowColorWidth(c As String, w As String)
	c = UI.CStr(c)
	w = UI.CStr(w)
	sArrowColor = c
	sArrowWidth = w
	CustProps.Put("ArrowColor", c)
	CustProps.Put("ArrowWidth", w)
	UI.RemoveCSSRule($"#${mName} .arrow"$)
	If c = "" And w = "" Then Return
	Dim sb As StringBuilder
	sb.Initialize
	If c <> "" Then sb.Append($"stroke: ${c} !important; "$)
	If w <> "" Then sb.Append($"stroke-width: ${w} !important;"$)
	UI.InsertCSSRule($"#${mName} .arrow"$, sb.ToString)
End Sub

'set Tick Color
Public Sub setTickColor(s As String)
	s = UI.CStr(s)
	sTickColor = s
	CustProps.Put("TickColor", s)
	UI.RemoveCSSRule($"#${mName} .tick"$)
	If s = "" Then Return
	UI.InsertCSSRule($"#${mName} .tick"$, $"stroke: ${s} !important;"$)
End Sub

Public Sub getTickColor As String
	Return sTickColor
End Sub

'add custom class styles
Public Sub AddCustomClass(className As String, barColor As String, barProgressColor As String, barLabelColor As String)
	UI.RemoveCSSRule($".${className} .bar"$)
	UI.RemoveCSSRule($".${className} .bar-label"$)
	UI.RemoveCSSRule($".${className} .bar-progress"$)
	If barColor <> "" Then UI.InsertCSSRule($".${className} .bar"$, $"fill: ${barColor} !important;"$)
	If barProgressColor <> "" Then UI.InsertCSSRule($".${className} .bar-progress"$, $"fill: ${barProgressColor} !important;"$)
	If barLabelColor <> "" Then UI.InsertCSSRule($".${className} .bar-label"$, $"fill: ${barLabelColor} !important;"$)
End Sub

'clear tasks
Public Sub ClearTasks As SDUI5FrappeGantt
	tasks.Initialize
	Items.Initialize
	Return Me
End Sub

Public Sub Clear As SDUI5FrappeGantt
	Return ClearTasks
End Sub

'add task map object
Public Sub AddTaskObject(obj As Map) As SDUI5FrappeGantt
	Dim tID As String = obj.GetDefault("id", "")
	If tID <> "" Then tasks.Put(tID, obj)
	Return Me
End Sub

'add simple task
Public Sub AddTask(tID As String, tName As String, tStart As String, tEnd As String, tProgress As Int) As SDUI5FrappeGantt
	Dim t As Map = CreateMap()
	t.Put("id", tID)
	t.Put("name", tName)
	t.Put("start", tStart)
	t.Put("end", tEnd)
	t.Put("progress", tProgress)
	t.Put("custom_class", "")
	t.Put("dependencies", "")
	tasks.Put(tID, t)
	Return Me
End Sub

'add task with custom class
Public Sub AddTask1(tID As String, tName As String, tStart As String, tEnd As String, tProgress As Int, tClass As String) As SDUI5FrappeGantt
	Dim t As Map = CreateMap()
	t.Put("id", tID)
	t.Put("name", tName)
	t.Put("start", tStart)
	t.Put("end", tEnd)
	t.Put("progress", tProgress)
	t.Put("custom_class", tClass)
	t.Put("dependencies", "")
	tasks.Put(tID, t)
	Return Me
End Sub

'add task with custom class and dependencies list
Public Sub AddTask2(tID As String, tName As String, tStart As String, tEnd As String, tProgress As Int, tClass As String, tDependencies As List) As SDUI5FrappeGantt
	Dim t As Map = CreateMap()
	t.Put("id", tID)
	t.Put("name", tName)
	t.Put("start", tStart)
	t.Put("end", tEnd)
	t.Put("progress", tProgress)
	t.Put("custom_class", tClass)
	If BANano.IsNull(tDependencies) Then
		t.Put("dependencies", "")
	Else
		Dim xDependencies As String = UI.Join(",", tDependencies)
		t.Put("dependencies", xDependencies)
	End If
	tasks.Put(tID, t)
	Return Me
End Sub

'add full task with Frappe Gantt 1.2.2 properties (description, color, color_progress, thumbnail)
Public Sub AddTask3(tID As String, tName As String, tStart As String, tEnd As String, tProgress As Int, tClass As String, tDependencies As List, tDescription As String, tColor As String, tColorProgress As String, tThumbnail As String) As SDUI5FrappeGantt
	Dim t As Map = CreateMap()
	t.Put("id", tID)
	t.Put("name", tName)
	t.Put("start", tStart)
	t.Put("end", tEnd)
	t.Put("progress", tProgress)
	t.Put("custom_class", tClass)
	If BANano.IsNull(tDependencies) Then
		t.Put("dependencies", "")
	Else
		Dim xDependencies As String = UI.Join(",", tDependencies)
		t.Put("dependencies", xDependencies)
	End If
	If tDescription <> "" Then t.Put("description", tDescription)
	If tColor <> "" Then t.Put("color", tColor)
	If tColorProgress <> "" Then t.Put("color_progress", tColorProgress)
	If tThumbnail <> "" Then t.Put("thumbnail", tThumbnail)
	tasks.Put(tID, t)
	Return Me
End Sub

'add a task including custom expected progress (0 - 100)
Public Sub AddTask4(tID As String, tName As String, tStart As String, tEnd As String, tProgress As Int, tExpectedProgress As Double, tClass As String, tDependencies As List, tDescription As String, tColor As String, tColorProgress As String, tThumbnail As String) As SDUI5FrappeGantt
	Dim t As Map = CreateMap()
	t.Put("id", tID)
	t.Put("name", tName)
	t.Put("start", tStart)
	t.Put("end", tEnd)
	t.Put("progress", tProgress)
	t.Put("expected_progress", tExpectedProgress)
	t.Put("custom_class", tClass)
	If BANano.IsNull(tDependencies) Then
		t.Put("dependencies", "")
	Else
		Dim xDependencies As String = UI.Join(",", tDependencies)
		t.Put("dependencies", xDependencies)
	End If
	If tDescription <> "" Then t.Put("description", tDescription)
	If tColor <> "" Then t.Put("color", tColor)
	If tColorProgress <> "" Then t.Put("color_progress", tColorProgress)
	If tThumbnail <> "" Then t.Put("thumbnail", tThumbnail)
	tasks.Put(tID, t)
	Return Me
End Sub

'add a task with start date and duration (e.g. tDuration = "5d", "2h", "1m 3d")
Public Sub AddTaskDuration(tID As String, tName As String, tStart As String, tDuration As String, tProgress As Int) As SDUI5FrappeGantt
	Dim t As Map = CreateMap()
	t.Put("id", tID)
	t.Put("name", tName)
	t.Put("start", tStart)
	t.Put("duration", tDuration)
	t.Put("progress", tProgress)
	t.Put("custom_class", "")
	t.Put("dependencies", "")
	tasks.Put(tID, t)
	Return Me
End Sub

'add a full task with duration and Frappe Gantt 1.2.2 properties
Public Sub AddTaskWithDuration(tID As String, tName As String, tStart As String, tDuration As String, tProgress As Int, tClass As String, tDependencies As List, tDescription As String, tColor As String, tColorProgress As String, tThumbnail As String) As SDUI5FrappeGantt
	Dim t As Map = CreateMap()
	t.Put("id", tID)
	t.Put("name", tName)
	t.Put("start", tStart)
	t.Put("duration", tDuration)
	t.Put("progress", tProgress)
	t.Put("custom_class", tClass)
	If BANano.IsNull(tDependencies) Then
		t.Put("dependencies", "")
	Else
		Dim xDependencies As String = UI.Join(",", tDependencies)
		t.Put("dependencies", xDependencies)
	End If
	If tDescription <> "" Then t.Put("description", tDescription)
	If tColor <> "" Then t.Put("color", tColor)
	If tColorProgress <> "" Then t.Put("color_progress", tColorProgress)
	If tThumbnail <> "" Then t.Put("thumbnail", tThumbnail)
	tasks.Put(tID, t)
	Return Me
End Sub

'bulk set tasks from list
Public Sub SetTasks(taskList As List) As SDUI5FrappeGantt
	ClearTasks
	If BANano.IsNull(taskList) Then Return Me
	For Each t As Map In taskList
		Dim tid As String = t.GetDefault("id", "")
		If tid <> "" Then tasks.Put(tid, t)
	Next
	Return Me
End Sub

'get all tasks
Public Sub GetTasks As List
	Dim res As List
	res.Initialize
	For Each k As String In tasks.Keys
		res.Add(tasks.Get(k))
	Next
	Return res
End Sub

'get task by id
Public Sub GetTask(tID As String) As Map
	If tasks.ContainsKey(tID) Then
		Return tasks.Get(tID)
	End If
	Return Null
End Sub

'check if a task exists by id
Public Sub HasTask(tID As String) As Boolean
	Return tasks.ContainsKey(tID)
End Sub

'delete a task by id
Public Sub DeleteTask(tID As String) As SDUI5FrappeGantt
	If tasks.ContainsKey(tID) Then
		tasks.Remove(tID)
		If gantt <> Null Then Refresh
	End If
	Return Me
End Sub

'get count of tasks
Public Sub GetTaskCount As Int
	Return tasks.Size
End Sub

'get list of all task IDs
Public Sub GetTaskIds As List
	Dim res As List
	res.Initialize
	For Each k As String In tasks.Keys
		res.Add(k)
	Next
	Return res
End Sub

'set task class
Public Sub SetTaskClass(tID As String, tCustomClass As String) As SDUI5FrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		task.Put("custom_class", tCustomClass)
		tasks.Put(tID, task)
	End If
	Return Me
End Sub

'set task dependencies
Public Sub SetTaskDependencies(tID As String, tDependencies As List) As SDUI5FrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		If BANano.IsNull(tDependencies) Then 
			task.Put("dependencies", "")
		Else
			Dim xDependencies As String = UI.Join(",", tDependencies)
			task.Put("dependencies", xDependencies)
		End If
		tasks.Put(tID, task)
	End If
	Return Me
End Sub

'set custom expected progress for a task (0 - 100)
Public Sub SetTaskExpectedProgress(tID As String, ExpectedProgress As Double) As SDUI5FrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		task.Put("expected_progress", ExpectedProgress)
		tasks.Put(tID, task)
	End If
	If gantt <> Null Then
		UpdateTask(tID, CreateMap("expected_progress": ExpectedProgress))
	End If
	Return Me
End Sub

'set task bar color and progress bar color in task data and live chart
Public Sub SetTaskColor(tID As String, color As String, progressColor As String) As SDUI5FrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		If color <> "" Then task.Put("color", color)
		If progressColor <> "" Then task.Put("color_progress", progressColor)
		tasks.Put(tID, task)
	End If
	If gantt <> Null Then
		Dim details As Map = CreateMap()
		If color <> "" Then details.Put("color", color)
		If progressColor <> "" Then details.Put("color_progress", progressColor)
		UpdateTask(tID, details)
	End If
	Return Me
End Sub

'set task bar color only
Public Sub SetTaskColor1(tID As String, color As String) As SDUI5FrappeGantt
	Return SetTaskColor(tID, color, "")
End Sub

'style task bar, progress, and label via CSS using task ID (data-id attribute)
Public Sub SetTaskColorByID(tID As String, barColor As String, progressColor As String, labelColor As String) As SDUI5FrappeGantt
	tID = UI.CleanID(tID)
	Dim selectorPrefix As String = $"#${mName} .bar-wrapper[data-id='${tID}']"$
	UI.RemoveCSSRule($"${selectorPrefix} .bar"$)
	UI.RemoveCSSRule($"${selectorPrefix} .bar-progress"$)
	UI.RemoveCSSRule($"${selectorPrefix} .bar-label"$)
	If barColor <> "" Then UI.InsertCSSRule($"${selectorPrefix} .bar"$, $"fill: ${barColor} !important;"$)
	If progressColor <> "" Then UI.InsertCSSRule($"${selectorPrefix} .bar-progress"$, $"fill: ${progressColor} !important;"$)
	If labelColor <> "" Then UI.InsertCSSRule($"${selectorPrefix} .bar-label"$, $"fill: ${labelColor} !important;"$)
	Return Me
End Sub

'bulk set task colors from map (key = task ID, value = color String OR Map of color/color_progress/label_color)
Public Sub SetTaskColors(colorsMap As Map) As SDUI5FrappeGantt
	If BANano.IsNull(colorsMap) Then Return Me
	For Each tid As String In colorsMap.Keys
		Dim val As Object = colorsMap.Get(tid)
		If val Is Map Then
			Dim m As Map = val
			Dim bc As String = m.GetDefault("color", "")
			Dim pc As String = m.GetDefault("color_progress", "")
			Dim lc As String = m.GetDefault("label_color", "")
			SetTaskColor(tid, bc, pc)
			If lc <> "" Then SetTaskColorByID(tid, bc, pc, lc)
		Else
			Dim bc As String = UI.CStr(val)
			SetTaskColor(tid, bc, "")
		End If
	Next
	Return Me
End Sub

'directly style live SVG rect element for a task bar in the DOM
Public Sub SetTaskElementColor(tID As String, barColor As String) As SDUI5FrappeGantt
	tID = UI.CleanID(tID)
	Dim sel As String = $"#${mName} .bar-wrapper[data-id='${tID}'] .bar"$
	If BANano.Exists(sel) Then
		Dim el As BANanoElement = BANano.GetElement(sel)
		el.SetStyle(BANano.ToJson(CreateMap("fill": barColor)))
	End If
	Return Me
End Sub

'directly style live SVG rect element for a task progress bar in the DOM
Public Sub SetTaskElementProgressColor(tID As String, progressColor As String) As SDUI5FrappeGantt
	tID = UI.CleanID(tID)
	Dim sel As String = $"#${mName} .bar-wrapper[data-id='${tID}'] .bar-progress"$
	If BANano.Exists(sel) Then
		Dim el As BANanoElement = BANano.GetElement(sel)
		el.SetStyle(BANano.ToJson(CreateMap("fill": progressColor)))
	End If
	Return Me
End Sub

'directly style live SVG text element for a task label in the DOM
Public Sub SetTaskElementLabelColor(tID As String, labelColor As String) As SDUI5FrappeGantt
	tID = UI.CleanID(tID)
	Dim sel As String = $"#${mName} .bar-wrapper[data-id='${tID}'] .bar-label"$
	If BANano.Exists(sel) Then
		Dim el As BANanoElement = BANano.GetElement(sel)
		el.SetStyle(BANano.ToJson(CreateMap("fill": labelColor)))
	End If
	Return Me
End Sub

'set task description
Public Sub SetTaskDescription(tID As String, description As String) As SDUI5FrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		task.Put("description", description)
		tasks.Put(tID, task)
	End If
	Return Me
End Sub

'set task thumbnail url
Public Sub SetTaskThumbnail(tID As String, thumbnailURL As String) As SDUI5FrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		task.Put("thumbnail", thumbnailURL)
		tasks.Put(tID, task)
	End If
	Return Me
End Sub

'set task start and end dates
Public Sub SetTaskDates(tID As String, startDate As String, endDate As String) As SDUI5FrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		task.Put("start", startDate)
		task.Put("end", endDate)
		tasks.Put(tID, task)
	End If
	Return Me
End Sub

'set task progress (0-100)
Public Sub SetTaskProgress(tID As String, progress As Int) As SDUI5FrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		task.Put("progress", progress)
		tasks.Put(tID, task)
	End If
	Return Me
End Sub

'change view mode
Public Sub ChangeViewMode(mode As String)
	sViewMode = mode
	CustProps.Put("ViewMode", sViewMode)
	If gantt <> Null Then
		gantt.RunMethod("change_view_mode", Array(mode))
	End If
End Sub

'change view mode with maintain position flag
Public Sub ChangeViewMode1(mode As String, maintainPos As Boolean)
	sViewMode = mode
	CustProps.Put("ViewMode", sViewMode)
	If gantt <> Null Then
		gantt.RunMethod("change_view_mode", Array(mode, maintainPos))
	End If
End Sub

Public Sub DayMode
	ChangeViewMode("Day")
End Sub

Public Sub HalfDayMode
	ChangeViewMode("Half Day")
End Sub

Public Sub QuarterDayMode
	ChangeViewMode("Quarter Day")
End Sub

Public Sub HourMode
	ChangeViewMode("Hour")
End Sub

Public Sub WeekMode
	ChangeViewMode("Week")
End Sub

Public Sub MonthMode
	ChangeViewMode("Month")
End Sub

Public Sub YearMode
	ChangeViewMode("Year")
End Sub

'scroll to current / today date
Public Sub ScrollCurrent
	If gantt <> Null Then
		gantt.RunMethod("scroll_current", Null)
	End If
End Sub

Public Sub ScrollToToday
	ScrollCurrent
End Sub

'scroll to specific position: 'today', 'start', 'end', or date string
Public Sub ScrollTo(pos As String)
	If gantt <> Null Then
		gantt.RunMethod("set_scroll_position", Array(pos))
	End If
End Sub

'unselect all tasks
Public Sub UnselectAll
	If gantt <> Null Then
		gantt.RunMethod("unselect_all", Null)
	End If
End Sub

'hide active popup
Public Sub HidePopup
	If gantt <> Null Then
		gantt.RunMethod("hide_popup", Null)
	End If
End Sub

'update options on active chart
Public Sub UpdateOptions(newOptions As Map)
	If gantt <> Null Then
		gantt.RunMethod("update_options", Array(newOptions))
	End If
End Sub

'get underlying BANanoObject for direct JS API access
Public Sub GetGantt As BANanoObject
	Return gantt
End Sub

'get underlying Bar BANanoObject for a task from active Gantt instance
Public Sub GetTaskBar(tID As String) As BANanoObject
	If gantt <> Null Then
		Return gantt.RunMethod("get_bar", Array(tID))
	End If
	Return Null
End Sub

'get underlying task BANanoObject from active Gantt instance
Public Sub GetTaskFromGantt(tID As String) As BANanoObject
	If gantt <> Null Then
		Return gantt.RunMethod("get_task", Array(tID))
	End If
	Return Null
End Sub

'set a Frappe Gantt CSS variable on the container (e.g. "--g-arrow-color", "#3b82f6")
Public Sub SetThemeVariable(varName As String, varValue As String) As SDUI5FrappeGantt
	If mElement <> Null Then
		mElement.SetStyle(BANano.ToJson(CreateMap(varName: varValue)))
	End If
	Return Me
End Sub

Public Sub SetHeaderBackground(color As String) As SDUI5FrappeGantt
	Return SetThemeVariable("--g-header-background", color)
End Sub

Public Sub SetRowColor(color As String) As SDUI5FrappeGantt
	Return SetThemeVariable("--g-row-color", color)
End Sub

Public Sub SetRowBorderColor(color As String) As SDUI5FrappeGantt
	Return SetThemeVariable("--g-row-border-color", color)
End Sub

Public Sub setTodayHighlightColor(color As String)
	sTodayHighlightColor = color
	CustProps.Put("TodayHighlightColor", color)
	SetThemeVariable("--g-today-highlight", color)
End Sub

Public Sub getTodayHighlightColor As String
	Return sTodayHighlightColor
End Sub

Public Sub setWeekendHighlightColor(color As String)
	sWeekendHighlightColor = color
	CustProps.Put("WeekendHighlightColor", color)
	SetThemeVariable("--g-weekend-highlight-color", color)
End Sub

Public Sub getWeekendHighlightColor As String
	Return sWeekendHighlightColor
End Sub

Public Sub setExpectedProgressColor(color As String)
	sExpectedProgressColor = color
	CustProps.Put("ExpectedProgressColor", color)
	SetThemeVariable("--g-expected-progress", color)
End Sub

Public Sub getExpectedProgressColor As String
	Return sExpectedProgressColor
End Sub

'setup pre-defined custom classes for DaisyUI palette (primary, secondary, accent, success, warning, error, info)
Public Sub AddDaisyUIThemeClasses As SDUI5FrappeGantt
	AddCustomClass("gantt-primary", "var(--color-primary, #570df8)", "var(--color-primary-content, #ffffff)", "var(--color-primary-content, #ffffff)")
	AddCustomClass("gantt-secondary", "var(--color-secondary, #f000b8)", "var(--color-secondary-content, #ffffff)", "var(--color-secondary-content, #ffffff)")
	AddCustomClass("gantt-accent", "var(--color-accent, #37cdbe)", "var(--color-accent-content, #ffffff)", "var(--color-accent-content, #ffffff)")
	AddCustomClass("gantt-success", "var(--color-success, #36d399)", "var(--color-success-content, #ffffff)", "var(--color-success-content, #ffffff)")
	AddCustomClass("gantt-warning", "var(--color-warning, #fbbd23)", "var(--color-warning-content, #ffffff)", "var(--color-warning-content, #ffffff)")
	AddCustomClass("gantt-error", "var(--color-error, #f87272)", "var(--color-error-content, #ffffff)", "var(--color-error-content, #ffffff)")
	AddCustomClass("gantt-info", "var(--color-info, #3abff8)", "var(--color-info-content, #ffffff)", "var(--color-info-content, #ffffff)")
	Return Me
End Sub

'add a named holiday with tooltip label and highlight color
Public Sub AddHoliday(dateStr As String, holidayName As String, highlightColor As String) As SDUI5FrappeGantt
	If highlightColor = "" Then highlightColor = "var(--g-weekend-highlight-color)"
	Dim hList As List
	If holidaysMap.ContainsKey(highlightColor) Then
		hList = holidaysMap.Get(highlightColor)
	Else
		hList.Initialize
		holidaysMap.Put(highlightColor, hList)
	End If
	If holidayName <> "" Then
		hList.Add(CreateMap("date": dateStr, "name": holidayName))
	Else
		hList.Add(dateStr)
	End If
	Return Me
End Sub

'add multiple holidays under a specific highlight color
Public Sub AddHolidays(highlightColor As String, dateList As List) As SDUI5FrappeGantt
	If highlightColor = "" Then highlightColor = "var(--g-weekend-highlight-color)"
	Dim hList As List
	If holidaysMap.ContainsKey(highlightColor) Then
		hList = holidaysMap.Get(highlightColor)
	Else
		hList.Initialize
		holidaysMap.Put(highlightColor, hList)
	End If
	For Each dt As Object In dateList
		hList.Add(dt)
	Next
	Return Me
End Sub

'clear defined holidays
Public Sub ClearHolidays As SDUI5FrappeGantt
	holidaysMap.Initialize
	oHolidays = Null
	Return Me
End Sub

'add a specific date to ignore/exclude from timeline progress
Public Sub AddIgnoredDate(dateStr As String) As SDUI5FrappeGantt
	ignoredDatesList.Add(dateStr)
	Return Me
End Sub

'bulk set dates to ignore
Public Sub SetIgnoredDates(dateList As List) As SDUI5FrappeGantt
	ignoredDatesList.Initialize
	If BANano.IsNull(dateList) = False Then
		For Each d As Object In dateList
			ignoredDatesList.Add(d)
		Next
	End If
	If bIgnoreWeekends Then ignoredDatesList.Add("weekend")
	Return Me
End Sub

'toggle ignoring weekends
Public Sub setIgnoreWeekends(b As Boolean)
	bIgnoreWeekends = b
	CustProps.Put("IgnoreWeekends", b)
	If b Then
		If ignoredDatesList.IndexOf("weekend") = -1 Then ignoredDatesList.Add("weekend")
	Else
		Dim idx As Int = ignoredDatesList.IndexOf("weekend")
		If idx <> -1 Then ignoredDatesList.RemoveAt(idx)
	End If
End Sub

Public Sub getIgnoreWeekends As Boolean
	Return bIgnoreWeekends
End Sub

'clear all ignored dates
Public Sub ClearIgnoredDates As SDUI5FrappeGantt
	ignoredDatesList.Initialize
	bIgnoreWeekends = False
	oIgnore = Null
	Return Me
End Sub

'getters and setters for configuration options
Public Sub setViewMode(s As String)
	s = UI.CStr(s)
	sViewMode = s
	CustProps.Put("ViewMode", s)
	If gantt <> Null Then
		gantt.RunMethod("change_view_mode", Array(s))
	End If
End Sub

Public Sub getViewMode As String
	Return sViewMode
End Sub

Public Sub setViewModes(s As String)
	s = UI.CStr(s)
	sViewModes = s
	CustProps.Put("ViewModes", s)
End Sub

Public Sub getViewModes As String
	Return sViewModes
End Sub

Public Sub setDateFormat(s As String)
	s = UI.CStr(s)
	sDateFormat = s
	CustProps.Put("DateFormat", s)
End Sub

Public Sub getDateFormat As String
	Return sDateFormat
End Sub

Public Sub setLanguage(s As String)
	s = UI.CStr(s)
	sLanguage = s
	CustProps.Put("Language", s)
End Sub

Public Sub getLanguage As String
	Return sLanguage
End Sub

Public Sub setBarHeight(i As Int)
	i = UI.CInt(i)
	iBarHeight = i
	CustProps.Put("BarHeight", i)
End Sub

Public Sub getBarHeight As Int
	Return iBarHeight
End Sub

Public Sub setBarCornerRadius(i As Int)
	i = UI.CInt(i)
	iBarCornerRadius = i
	CustProps.Put("BarCornerRadius", i)
End Sub

Public Sub getBarCornerRadius As Int
	Return iBarCornerRadius
End Sub

Public Sub setArrowCurve(i As Int)
	i = UI.CInt(i)
	iArrowCurve = i
	CustProps.Put("ArrowCurve", i)
End Sub

Public Sub getArrowCurve As Int
	Return iArrowCurve
End Sub

Public Sub setPadding(i As Int)
	i = UI.CInt(i)
	iPadding = i
	CustProps.Put("Padding", i)
End Sub

Public Sub getPadding As Int
	Return iPadding
End Sub

Public Sub setUpperHeaderHeight(i As Int)
	i = UI.CInt(i)
	iUpperHeaderHeight = i
	CustProps.Put("UpperHeaderHeight", i)
End Sub

Public Sub getUpperHeaderHeight As Int
	Return iUpperHeaderHeight
End Sub

Public Sub setLowerHeaderHeight(i As Int)
	i = UI.CInt(i)
	iLowerHeaderHeight = i
	CustProps.Put("LowerHeaderHeight", i)
End Sub

Public Sub getLowerHeaderHeight As Int
	Return iLowerHeaderHeight
End Sub

Public Sub setHeaderHeight(i As Int)
	i = UI.CInt(i)
	CustProps.Put("HeaderHeight", i)
	iUpperHeaderHeight = i * 0.6
	iLowerHeaderHeight = i * 0.4
End Sub

Public Sub setColumnWidth(i As Int)
	i = UI.CInt(i)
	iColumnWidth = i
	CustProps.Put("ColumnWidth", i)
End Sub

Public Sub getColumnWidth As Int
	Return iColumnWidth
End Sub

Public Sub setStepValue(i As Int)
	CustProps.Put("StepValue", i)
End Sub

Public Sub setLines(s As String)
	s = UI.CStr(s)
	sLines = s
	CustProps.Put("Lines", s)
End Sub

Public Sub getLines As String
	Return sLines
End Sub

Public Sub setPopup(b As Boolean)
	b = UI.CBool(b)
	bPopup = b
	CustProps.Put("Popup", b)
End Sub

Public Sub getPopup As Boolean
	Return bPopup
End Sub

Public Sub setPopupOn(s As String)
	s = UI.CStr(s)
	sPopupOn = s
	CustProps.Put("PopupOn", s)
End Sub

Public Sub getPopupOn As String
	Return sPopupOn
End Sub

Public Sub setScrollTo(s As String)
	s = UI.CStr(s)
	sScrollTo = s
	CustProps.Put("ScrollTo", s)
End Sub

Public Sub getScrollTo As String
	Return sScrollTo
End Sub

Public Sub setTodayButton(b As Boolean)
	b = UI.CBool(b)
	bTodayButton = b
	CustProps.Put("TodayButton", b)
End Sub

Public Sub getTodayButton As Boolean
	Return bTodayButton
End Sub

Public Sub setViewModeSelect(b As Boolean)
	b = UI.CBool(b)
	bViewModeSelect = b
	CustProps.Put("ViewModeSelect", b)
End Sub

Public Sub getViewModeSelect As Boolean
	Return bViewModeSelect
End Sub

Public Sub setAutoMoveLabel(b As Boolean)
	b = UI.CBool(b)
	bAutoMoveLabel = b
	CustProps.Put("AutoMoveLabel", b)
End Sub

Public Sub getAutoMoveLabel As Boolean
	Return bAutoMoveLabel
End Sub

Public Sub setMoveDependencies(b As Boolean)
	b = UI.CBool(b)
	bMoveDependencies = b
	CustProps.Put("MoveDependencies", b)
End Sub

Public Sub getMoveDependencies As Boolean
	Return bMoveDependencies
End Sub

Public Sub setShowExpectedProgress(b As Boolean)
	b = UI.CBool(b)
	bShowExpectedProgress = b
	CustProps.Put("ShowExpectedProgress", b)
End Sub

Public Sub getShowExpectedProgress As Boolean
	Return bShowExpectedProgress
End Sub

Public Sub setReadonly(b As Boolean)
	b = UI.CBool(b)
	bReadonly = b
	CustProps.Put("Readonly", b)
End Sub

Public Sub getReadonly As Boolean
	Return bReadonly
End Sub

Public Sub setReadonlyDates(b As Boolean)
	b = UI.CBool(b)
	bReadonlyDates = b
	CustProps.Put("ReadonlyDates", b)
End Sub

Public Sub getReadonlyDates As Boolean
	Return bReadonlyDates
End Sub

Public Sub setReadonlyProgress(b As Boolean)
	b = UI.CBool(b)
	bReadonlyProgress = b
	CustProps.Put("ReadonlyProgress", b)
End Sub

Public Sub getReadonlyProgress As Boolean
	Return bReadonlyProgress
End Sub

Public Sub setFixedDuration(b As Boolean)
	b = UI.CBool(b)
	bFixedDuration = b
	CustProps.Put("FixedDuration", b)
End Sub

Public Sub getFixedDuration As Boolean
	Return bFixedDuration
End Sub

Public Sub setHoverOnDate(b As Boolean)
	b = UI.CBool(b)
	bHoverOnDate = b
	CustProps.Put("HoverOnDate", b)
End Sub

Public Sub getHoverOnDate As Boolean
	Return bHoverOnDate
End Sub

Public Sub setSnapAt(s As String)
	s = UI.CStr(s)
	sSnapAt = s
	CustProps.Put("SnapAt", s)
End Sub

Public Sub getSnapAt As String
	Return sSnapAt
End Sub

Public Sub setContainerHeight(s As String)
	s = UI.CStr(s)
	sContainerHeight = s
	CustProps.Put("ContainerHeight", s)
End Sub

Public Sub getContainerHeight As String
	Return sContainerHeight
End Sub

Public Sub setInfinitePadding(b As Boolean)
	b = UI.CBool(b)
	bInfinitePadding = b
	CustProps.Put("InfinitePadding", b)
End Sub

Public Sub getInfinitePadding As Boolean
	Return bInfinitePadding
End Sub

Public Sub setCustomPopupHtml(s As Object)
	customPopupHtml = s
End Sub

Public Sub getCustomPopupHtml As Object
	Return customPopupHtml
End Sub

Public Sub setHolidays(h As Object)
	oHolidays = h
End Sub

Public Sub getHolidays As Object
	Return oHolidays
End Sub

Public Sub setIgnore(ig As Object)
	oIgnore = ig
End Sub

Public Sub getIgnore As Object
	Return oIgnore
End Sub
