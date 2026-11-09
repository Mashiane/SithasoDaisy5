B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.8
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (task As Map)
#Event: DateChange (task As Map, startDate as Object, endDate As Object)
#Event: ProgressChange (task As Map, progress as Object)
#Event: ViewChange (mode As Object)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this div
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 1000px, Description: Width
#DesignerProperty: Key: BarColor, DisplayName: Bar Color, FieldType: String, DefaultValue: , Description: Bar Color
#DesignerProperty: Key: BarLabelColor, DisplayName: Bar Label Color, FieldType: String, DefaultValue: , Description: Bar Label Color
#DesignerProperty: Key: BarProgressColor, DisplayName: Bar Progress Color, FieldType: String, DefaultValue: , Description: Bar Progress Color
#DesignerProperty: Key: TickColor, DisplayName: Tick Color, FieldType: String, DefaultValue: , Description: Tick Color
#DesignerProperty: Key: ArrowCurve, DisplayName: Arrow Curve, FieldType: Int, DefaultValue: 5, Description: Arrow Curve
#DesignerProperty: Key: ArrowColor, DisplayName: Arrow Color, FieldType: String, DefaultValue: , Description: Arrow Color
#DesignerProperty: Key: ArrowWidth, DisplayName: Arrow Width, FieldType: String, DefaultValue: , Description: Arrow Width
#DesignerProperty: Key: BarCornerRadius, DisplayName: Bar Corner Radius, FieldType: Int, DefaultValue: 3, Description: Bar Corner Radius
#DesignerProperty: Key: BarHeight, DisplayName: Bar Height, FieldType: Int, DefaultValue: 20, Description: Bar Height
#DesignerProperty: Key: ColumnWidth, DisplayName: Column Width, FieldType: Int, DefaultValue: 30, Description: Column Width
#DesignerProperty: Key: DateFormat, DisplayName: Date Format, FieldType: String, DefaultValue: YYYY-MM-DD, Description: Date Format
#DesignerProperty: Key: HeaderHeight, DisplayName: Header Height, FieldType: Int, DefaultValue: 50, Description: Header Height
#DesignerProperty: Key: Language, DisplayName: Language, FieldType: String, DefaultValue: en, Description: Language, List: de|en|es|fr|hu|it|ptBr|ru|tr|zh
#DesignerProperty: Key: Padding, DisplayName: Padding, FieldType: Int, DefaultValue: 18, Description: Padding
#DesignerProperty: Key: StepValue, DisplayName: Step Value, FieldType: Int, DefaultValue: 24, Description: Step Value
#DesignerProperty: Key: ViewMode, DisplayName: View Mode, FieldType: String, DefaultValue: Day, Description: View Mode, List: Day|Half Day|Month|Quarter Day|Week
#DesignerProperty: Key: ViewModes, DisplayName: View Modes (;), FieldType: String, DefaultValue: Quarter Day;Half Day;Day;Week;Month, Description: View Modes (;)
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A-X-Y-T-B-L-R
#DesignerProperty: Key: RawClasses, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: RawStyles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String- use =
#DesignerProperty: Key: RawAttributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String- use =


Sub Class_Globals
	Private sTickColor As String
	Private sArrowColor As String
	Private sArrowWidth As String
	Private sBarColor As String
	Private sBarLabelColor As String
	Private sBarProgressColor As String
	Private sWidth As String
	Private sHeight As String
	Public CustProps As Map
	Private mback As Object
	Private mElement As BANanoElement
	Private mParent As BANanoElement
	Private mName As String
	Private BANano As BANano		'ignore
	Public Root As SDUIDiv
	Private mClasses As String
	Private mStyles As String
	Private mAttributes As String
	Private sMarginAXYTBLR As String
	Private sPaddingAXYTBLR As String
	Private mParentID As String
	Private bVisible As Boolean
	Private iArrowCurve As Int
	Private iBarCornerRadius As Int
	Private iBarHeight As Int
	Private iColumnWidth As Int
	Private sDateFormat As String
	Private iHeaderHeight As Int
	Private sLanguage As String
	Private iPadding As Int
	Private iStepValue As Int
	Private sViewMode As String
	Private sViewModes As String
	Private Options As Map
	Private Items As List
	Private gantt As BANanoObject
	Private tasks As Map
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	CustProps = Props
	mParent = Target
	If Props <> Null Then
		mParentID = Props.GetDefault("ParentID", "")
		mParentID = SDUIShared.CStr(mParentID)
		mClasses = Props.GetDefault("RawClasses", "")
		mStyles = Props.GetDefault("RawStyles", "")
		mAttributes = Props.GetDefault("RawAttributes", "")
		sMarginAXYTBLR = Props.GetDefault("MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		sPaddingAXYTBLR = Props.GetDefault("PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		bVisible = Props.GetDefault("Visible", True)
		bVisible = SDUIShared.parseBool(bVisible)
		iArrowCurve = Props.GetDefault("ArrowCurve", 5)
		iArrowCurve = SDUIShared.CInt(iArrowCurve)
		iBarCornerRadius = Props.GetDefault("BarCornerRadius", 3)
		iBarCornerRadius = SDUIShared.CInt(iBarCornerRadius)
		iBarHeight = Props.GetDefault("BarHeight", 20)
		iBarHeight = SDUIShared.CInt(iBarHeight)
		iColumnWidth = Props.GetDefault("ColumnWidth", 30)
		iColumnWidth = SDUIShared.CInt(iColumnWidth)
		sDateFormat = Props.GetDefault("DateFormat", "YYYY-MM-DD")
		sDateFormat = SDUIShared.CStr(sDateFormat)
		iHeaderHeight = Props.GetDefault("HeaderHeight", 50)
		iHeaderHeight = SDUIShared.CInt(iHeaderHeight)
		sLanguage = Props.GetDefault("Language", "en")
		sLanguage = SDUIShared.CStr(sLanguage)
		iPadding = Props.GetDefault("Padding", 18)
		iPadding = SDUIShared.CInt(iPadding)
		iStepValue = Props.GetDefault("StepValue", 24)
		iStepValue = SDUIShared.CInt(iStepValue)
		sViewMode = Props.GetDefault("ViewMode", "Day")
		sViewMode = SDUIShared.CStr(sViewMode)
		sViewModes = Props.GetDefault("ViewModes", "Quarter Day;Half Day;Day;Week;Month")
		sViewModes = SDUIShared.CStr(sViewModes)
		sWidth = Props.GetDefault("Width", "1000px")
		sWidth = SDUIShared.CStr(sWidth)
		sHeight = Props.GetDefault("Height", "500px")
		sHeight = SDUIShared.CStr(sHeight)
		sBarColor = Props.GetDefault("BarColor", "")
		sBarColor = SDUIShared.CStr(sBarColor)
		sBarLabelColor = Props.GetDefault("BarLabelColor", "")
		sBarLabelColor = SDUIShared.CStr(sBarLabelColor)
		sBarProgressColor = Props.GetDefault("BarProgressColor", "")
		sBarProgressColor = SDUIShared.CStr(sBarProgressColor)
		sArrowColor = Props.GetDefault("ArrowColor", "")
		sArrowColor = SDUIShared.CStr(sArrowColor)
		sArrowWidth = Props.GetDefault("ArrowWidth", "")
		sArrowWidth = SDUIShared.CStr(sArrowWidth)
		sTickColor = Props.GetDefault("TickColor", "")
		sTickColor = SDUIShared.CStr(sTickColor)
	End If
	'
	If mParentID = "" Then mParentID = mParent.Name
	AddFrappeGantt(mback, mParentID, mName)
	Root.classes(mClasses)
	Root.attributes(mAttributes)
	Root.styles(mStyles)
	Root.PaddingAXYTBLR(sPaddingAXYTBLR)
	Root.MarginAXYTBLR(sMarginAXYTBLR)
	If bVisible = False Then Hide	
End Sub

Public Sub AddFrappeGantt(mCallback As Object, ParentID As String, ID As String)
	ParentID = SDUIShared.CleanID(ParentID)
	ID = SDUIShared.CleanID(ID)
	mName = ID
	mback = mCallback
	'does the parent exist
	If BANano.Exists($"#${ParentID}"$) = False Then
		BANano.Throw($"FrappeGantt.Initialize: '${ParentID}' parent does not exist!"$)
		Return
	End If
	If BANano.Exists($"#${ID}"$) Then
		mElement.Initialize($"#${ID}"$)
	Else
		mParent = BANano.GetElement($"#${ParentID}"$)
		mElement = mParent.Append($"[BANCLEAN]<div id="${mName}"><svg id="${ID}g"></svg></div>"$).Get($"#${ID}"$)
	End If
	Options.Initialize
	Items.Initialize
	tasks.Initialize
	AssignElement(mCallback, mName)
	setArrowCurve(iArrowCurve)
	setBarCornerRadius(iBarCornerRadius)
	setBarHeight(iBarHeight)
	setColumnWidth(iColumnWidth)
	setCustomPopupHtml(Null)
	setDateFormat(sDateFormat)
	setHeaderHeight(iHeaderHeight)
	setLanguage(sLanguage)
	setPadding(iPadding)
	setStepValue(iStepValue)
	setViewMode(sViewMode)
	setViewModes(sViewModes)
	setHeight(sHeight)
	setWidth(sWidth)
	setBarColor(sBarColor)
	setBarLabelColor(sBarLabelColor)
	setBarProgressColor(sBarProgressColor)
	SetArrowColorWidth(sArrowColor, sArrowWidth)
	setTickColor(sTickColor)
End Sub

Sub AddCustomClass(className As String, barColor As String, barProgressColor As String, barLabelColor As String)
	'remove old classess
	SDUIShared.RemoveCSSRule($".${className} .bar"$)
	SDUIShared.RemoveCSSRule($".${className} .bar-label"$)
	SDUIShared.RemoveCSSRule($".${className} .bar-progress"$)
	'
	If barColor <> "" Then SDUIShared.InsertCSSRule($".${className} .bar"$, $"fill: ${barColor} !important;"$)
	If barProgressColor <> "" Then SDUIShared.InsertCSSRule($".${className} .bar-progress"$, $"fill: ${barProgressColor} !important;"$)
	If barLabelColor <> "" Then SDUIShared.InsertCSSRule($".${className} .bar-label"$, $"fill: ${barLabelColor} !important;"$)
End Sub

'set Tick Color
Sub setTickColor(s As String)
	s = SDUIShared.CStr(s)
	sTickColor = s
	SDUIShared.RemoveCSSRule(".gantt .tick")
	If s = "" Then Return
	SDUIShared.InsertCSSRule(".gantt .tick", $"stroke: ${s} !important;"$)
End Sub

'set Arrow Color
Sub SetArrowColorWidth(c As String, w As String)
	c = SDUIShared.CStr(c)
	w = SDUIShared.CStr(w)
	sArrowColor = c
	sArrowWidth = w
	SDUIShared.RemoveCSSRule(".gantt .arrow")
	If c = "" Or w = "" Then Return
	SDUIShared.InsertCSSRule(".gantt .arrow", $"stroke: ${sArrowColor} !important; stroke-width: ${sArrowWidth} !important;"$)
End Sub

'set Bar Color
Sub setBarColor(s As String)
	s = SDUIShared.CStr(s)
	sBarColor = s
	SDUIShared.RemoveCSSRule(".gantt .bar")
	If s = "" Then Return
	SDUIShared.InsertCSSRule(".gantt .bar", $"fill: ${s} !important;"$)
End Sub

'set Bar Label Color
Sub setBarLabelColor(s As String)
	s = SDUIShared.CStr(s)
	sBarLabelColor = s
	SDUIShared.RemoveCSSRule(".gantt .bar-label")
	If s = "" Then Return
	SDUIShared.InsertCSSRule(".gantt .bar-label", $"fill: ${s} !important;"$)
End Sub

'set Bar Progress Color
Sub setBarProgressColor(s As String)
	s = SDUIShared.CStr(s)
	sBarProgressColor = s
	SDUIShared.RemoveCSSRule(".gantt .bar-progress")
	If s = "" Then Return
	SDUIShared.InsertCSSRule(".gantt .bar-progress", $"fill: ${s} !important;"$)
End Sub

Sub shadow(s As String)
	Root.shadow(s)
End Sub

Sub RoundedBox
	Root.roundedBox
End Sub

'change the card to side
Sub setWidth(s As String)
	Root.W(s)
End Sub

'change the card to side
Sub setHeight(s As String)
	Root.H(s)
End Sub

Sub Initialize (CallBack As Object, cName As String, EventName As String)
	mName = SDUIShared.CleanID(cName)
	mback = CallBack
End Sub
'
'set Arrow Curve
Sub setArrowCurve(i As Int)
	i = SDUIShared.CInt(i)
	iArrowCurve = i
	Options.put("arrow_curve", i)
End Sub

'set Bar Corner Radius
Sub setBarCornerRadius(i As Int)
	i = SDUIShared.cint(i)
	iBarCornerRadius = i
	Options.put("bar_corner_radius", i)
End Sub

'set Bar Height
Sub setBarHeight(i As Int)
	i = SDUIShared.cint(i)
	iBarHeight = i
	Options.put("bar_height", i)
End Sub

'set Column Width
Sub setColumnWidth(i As Int)
	i = SDUIShared.cint(i)
	iColumnWidth = i
	Options.put("column_width", i)
End Sub

'set Custom Popup Html
Sub setCustomPopupHtml(s As Object)
	Options.put("custom_popup_html", s)
End Sub

'set Date Format
Sub setDateFormat(s As String)
	s = SDUIShared.CStr(s)
	sDateFormat = s
	Options.put("date_format", s)
End Sub

'set Header Height
Sub setHeaderHeight(i As Int)
	i = SDUIShared.cint(i)
	iHeaderHeight = i
	Options.put("header_height", i)
End Sub

'set Language
Sub setLanguage(s As String)
	s = SDUIShared.CStr(s)
	sLanguage = s
	Options.put("language", s)
End Sub

'set Padding
Sub setPadding(i As Int)
	i = SDUIShared.cint(i)
	iPadding = i
	Options.put("padding", i)
End Sub

'set Step Value
Sub setStepValue(i As Int)
	i = SDUIShared.cint(i)
	iStepValue = i
	Options.put("step", i)
End Sub

'set View Mode
'Quarter Day, Half Day, Day, Week, Month
Sub setViewMode(s As String)
	s = SDUIShared.CStr(s)
	sViewMode = s
	Options.put("view_mode", s)
End Sub

'set View Modes
Sub setViewModes(s As String)
	s = SDUIShared.CStr(s)
	sViewModes = s
	Dim vms As List = SDUIShared.StrParse(";", s)
	Options.put("view_modes", vms)
End Sub

Sub AssignElement(mCallBack As Object, ID As String)
	ID = SDUIShared.CleanID(ID)
	If BANano.Exists($"#${ID}"$) = False Then
		Return
	End If
	mName = ID
	mback = mCallBack
	mElement.Initialize($"#${ID}"$)
	Root.AssignElement(mback, mName)
End Sub

'enable
Sub Enable
	Root.Disabled(False)
End Sub

'disable
Sub Disable
	Root.Disabled(True)
End Sub

Sub getName As String
	Return $"${mName}"$
End Sub

'get the id of the component
Sub getHere As String
	Return $"#${mName}"$
End Sub

Sub Show
	Root.Hidden(False)
End Sub

Sub Hide
	Root.Hidden(True)
End Sub

public Sub AddToParent(targetID As String, props As Map)
	targetID = SDUIShared.CleanID(targetID)
	mParent = BANano.GetElement("#" & targetID)
	DesignerCreateView(mParent, props)
End Sub

Sub Clear
	Items.Initialize
	tasks.Initialize
End Sub

Sub AddTaskObject(obj As Map) As SDUIFrappeGantt
	Dim tID As String = obj.Get("id")
	tasks.Put(tID, obj)
	Return Me
End Sub

Sub AddTask(tID As String, tName As String, tStart As String, tEnd As String, tProgress As Int) As SDUIFrappeGantt
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

Sub AddTask1(tID As String, tName As String, tStart As String, tEnd As String, tProgress As Int, tClass As String) As SDUIFrappeGantt
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

Sub AddTask2(tID As String, tName As String, tStart As String, tEnd As String, tProgress As Int, tClass As String, tDependencies As List) As SDUIFrappeGantt
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
		Dim xDependencies As String = SDUIShared.Join(",", tDependencies)
		t.Put("dependencies", xDependencies)
	End If
	tasks.Put(tID, t)
	Return Me
End Sub

Sub SetTaskClass(tID As String, tCustomClass As String) As SDUIFrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		task.Put("custom_class", tCustomClass)
		tasks.Put(tID, task)
	End If
	Return Me
End Sub

Sub SetTaskDependencies(tID As String,  tDependencies As List) As SDUIFrappeGantt
	If tasks.ContainsKey(tID) Then
		Dim task As Map = tasks.Get(tID)
		If BANano.IsNull(tDependencies) Then 
			task.Put("dependencies", "")
		Else
			Dim xDependencies As String = SDUIShared.Join(",", tDependencies)
			task.Put("dependencies", xDependencies)
		End If
		tasks.Put(tID, task)
	End If
	Return Me
End Sub


Sub Refresh
	If tasks.Size = 0 Then
		AddTask("task-0", "No tasks to display!", SDUIShared.DateNow, SDUIShared.DateTimeNow, 100)
	End If
	Try
		Dim t As Object
		Dim s As Object
		Dim e As Object
		Dim p As Object
		Dim m As Object
		Dim cbC As BANanoObject = BANano.CallBack(mback, $"${mName}_click"$, Array(t))
		Dim cbDC As BANanoObject = BANano.CallBack(mback, $"${mName}_datechange"$, Array(t,s,e))
		Dim cbPC As BANanoObject = BANano.CallBack(mback, $"${mName}_progresschange"$, Array(t,p))
		Dim cbVC As BANanoObject = BANano.CallBack(mback, $"${mName}_viewchange"$, Array(m))
		'
		Options.Put("on_click", cbC)
		Options.Put("on_date_change", cbDC)
		Options.Put("on_progress_change", cbPC)
		Options.Put("on_view_change", cbVC)
		'
		Items.Initialize 
		For Each taskid As String In tasks.Keys
			Dim task As Map = tasks.Get(taskid)
			Items.Add(task)
		Next
		Dim k As String = $"#${mName}g"$
		gantt.Initialize2("Gantt", Array(k, Items, Options))
	Catch
	End Try		'ignore
End Sub

Sub DayMode
	gantt.RunMethod("change_view_mode", "Day")
End Sub

Sub HalfDayMode
	gantt.RunMethod("change_view_mode", "Half Day")
End Sub

Sub QuarterDayMode
	gantt.RunMethod("change_view_mode", "Quarter Day")
End Sub

Sub WeekMode
	gantt.RunMethod("change_view_mode", "Week")
End Sub

Sub MonthMode
	gantt.RunMethod("change_view_mode", "Month")
End Sub