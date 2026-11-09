B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#Event: selectDate (event As Map, newDate As Object)
#Event: selectEvent (event As Map, newEvent As Object)
#Event: selectMonth (activeMonth As Object, monthIndex As Int)
#Event: selectYear (activeYear As Int)
#Event: destroy (event As Map)
#Event: toggleSidebar (isOpen As Boolean)
#Event: toggleEventList (isOpen As Boolean)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Theme, DisplayName: Theme, FieldType: String, DefaultValue: default, Description: Calendar Theme, List: blue|coral|default|navy
#DesignerProperty: Key: Language, DisplayName: Language, FieldType: String, DefaultValue: en, Description: Language, List: de|en|es|pt
#DesignerProperty: Key: Format, DisplayName: Format, FieldType: String, DefaultValue: yyyy-mm-dd, Description: Date Format
#DesignerProperty: Key: TitleFormat, DisplayName: Title Format, FieldType: String, DefaultValue: MM yyyy, Description: Calendar Title Format
#DesignerProperty: Key: EventHeaderFormat, DisplayName: Event Header Format, FieldType: String, DefaultValue: MM d, yyyy, Description: Event Header Format
#DesignerProperty: Key: CanAddEvent, DisplayName: Can Add Event, FieldType: Boolean, DefaultValue: False, Description: Allow adding events
#DesignerProperty: Key: FirstDayOfWeek, DisplayName: First Day Of Week, FieldType: String, DefaultValue: 0, Description: First Day Of Week (0=Sun, 1=Mon)
#DesignerProperty: Key: EventDisplayDefault, DisplayName: Event Display Default, FieldType: Boolean, DefaultValue: True, Description: Event Display Default
#DesignerProperty: Key: EventListToggler, DisplayName: Event List Toggler, FieldType: Boolean, DefaultValue: True, Description: Event List Toggler
#DesignerProperty: Key: SidebarDisplayDefault, DisplayName: Sidebar Display Default, FieldType: Boolean, DefaultValue: True, Description: Sidebar Display Default
#DesignerProperty: Key: SidebarToggler, DisplayName: Sidebar Toggler, FieldType: Boolean, DefaultValue: True, Description: Sidebar Toggler
#DesignerProperty: Key: TodayHighlight, DisplayName: Today Highlight, FieldType: Boolean, DefaultValue: False, Description: Highlight Today
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: auto, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: auto, Description: Width
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

	Private sParentID As String = ""
	Private bVisible As Boolean = True
	Private bEnabled As Boolean = True
	Private sEventDisplayDefault As Boolean = True
	Private bEventListToggler As Boolean = True
	Private sEventHeaderFormat As String = "MM d, yyyy"
	Private bCanAddEvent As Boolean = False
	Private sFirstDayOfWeek As String = "0"
	Private sFormat As String = "yyyy-mm-dd"
	Private sLanguage As String = "en"
	Private bSidebarDisplayDefault As Boolean = True
	Private bSidebarToggler As Boolean = True
	Private sTheme As String = "default"
	Private sTitleFormat As String = "MM yyyy"
	Private bTodayHighlight As Boolean = False
	Private sHeight As String = "auto"
	Private sWidth As String = "auto"

	Private Options As Map
	Private Events As List
	Public Tag As Object
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("EvoCalendar") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesEvoCalendar)' should be added for '${Name}'"$)
		Return
	End If
	BANano.DependsOnAsset("evo-calendar.min.js")
	BANano.DependsOnAsset("evo-calendar.min.css")
	BANano.DependsOnAsset("evo-calendar.midnight-blue.min.css")
	BANano.DependsOnAsset("evo-calendar.orange-coral.min.css")
	BANano.DependsOnAsset("evo-calendar.royal-navy.min.css")
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	Events.Initialize
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Theme", "default")
	CustProps.Put("Language", "en")
	CustProps.Put("Format", "yyyy-mm-dd")
	CustProps.Put("TitleFormat", "MM yyyy")
	CustProps.Put("EventHeaderFormat", "MM d, yyyy")
	CustProps.Put("CanAddEvent", False)
	CustProps.Put("FirstDayOfWeek", "0")
	CustProps.Put("EventDisplayDefault", True)
	CustProps.Put("EventListToggler", True)
	CustProps.Put("SidebarDisplayDefault", True)
	CustProps.Put("SidebarToggler", True)
	CustProps.Put("TodayHighlight", False)
	CustProps.Put("Height", "auto")
	CustProps.Put("Width", "auto")
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
		sEventDisplayDefault = Props.GetDefault("EventDisplayDefault", True)
		sEventDisplayDefault = UI.CBool(sEventDisplayDefault)
		bEventListToggler = Props.GetDefault("EventListToggler", True)
		bEventListToggler = UI.CBool(bEventListToggler)
		sEventHeaderFormat = Props.GetDefault("EventHeaderFormat", "MM d, yyyy")
		sEventHeaderFormat = UI.CStr(sEventHeaderFormat)
		bCanAddEvent = Props.GetDefault("CanAddEvent", False)
		bCanAddEvent = UI.CBool(bCanAddEvent)
		sFirstDayOfWeek = Props.GetDefault("FirstDayOfWeek", "0")
		sFirstDayOfWeek = UI.CStr(sFirstDayOfWeek)
		sFormat = Props.GetDefault("Format", "yyyy-mm-dd")
		sFormat = UI.CStr(sFormat)
		sLanguage = Props.GetDefault("Language", "en")
		sLanguage = UI.CStr(sLanguage)
		bSidebarDisplayDefault = Props.GetDefault("SidebarDisplayDefault", True)
		bSidebarDisplayDefault = UI.CBool(bSidebarDisplayDefault)
		bSidebarToggler = Props.GetDefault("SidebarToggler", True)
		bSidebarToggler = UI.CBool(bSidebarToggler)
		sTheme = Props.GetDefault("Theme", "default")
		sTheme = UI.CStr(sTheme)
		sTitleFormat = Props.GetDefault("TitleFormat", "MM yyyy")
		sTitleFormat = UI.CStr(sTitleFormat)
		bTodayHighlight = Props.GetDefault("TodayHighlight", False)
		bTodayHighlight = UI.CBool(bTodayHighlight)
		sHeight = Props.GetDefault("Height", "auto")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "auto")
		sWidth = UI.CStr(sWidth)
	End If

	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	If sParentID <> "" Then
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"SDUI5EvoCalendar.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get($"#${mName}"$)
	UI.SetVisible(mElement, bVisible)
	UI.SetEnabled(mElement, bEnabled)
	Refresh
End Sub

'add component to parent dynamically
Public Sub AddComponent
	If sParentID = "" Then Return
	sParentID = UI.CleanID(sParentID)
	mTarget = BANano.GetElement("#" & sParentID)
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

'get selector
Public Sub getHere() As String
	Return $"#${mName}"$
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
	If mElement <> Null Then UI.SetVisible(mElement, b)
End Sub

'get visible
Public Sub getVisible() As Boolean
	Return bVisible
End Sub

'set enabled
Public Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement <> Null Then UI.SetEnabled(mElement, b)
End Sub

'get enabled
Public Sub getEnabled() As Boolean
	Return bEnabled
End Sub

'refresh calendar
Public Sub Refresh
	Dim themeVal As String = ""
	Select Case sTheme
	Case "blue"
		themeVal = "Midnight Blue"
	Case "coral"
		themeVal = "Orange Coral"
	Case "navy"
		themeVal = "Royal Navy"
	Case Else
		themeVal = ""
	End Select

	Options.Put("theme", themeVal)
	Options.Put("language", sLanguage)
	Options.Put("format", sFormat)
	Options.Put("titleFormat", sTitleFormat)
	Options.Put("eventHeaderFormat", sEventHeaderFormat)
	Options.Put("firstDayOfWeek", sFirstDayOfWeek)
	Options.Put("eventDisplayDefault", sEventDisplayDefault)
	Options.Put("eventListToggler", bEventListToggler)
	Options.Put("sidebarDisplayDefault", bSidebarDisplayDefault)
	Options.Put("sidebarToggler", bSidebarToggler)
	Options.Put("todayHighlight", bTodayHighlight)
	Options.Put("canAddEvent", bCanAddEvent)
	Options.Put("calendarEvents", Events)

	Dim ev As Object
	Dim newD As Object
	Dim selectEventCB As BANanoEvent = BANano.CallBack(mCallBack, $"${mEventName}_selectEvent"$, Array(ev, newD))
	Dim selectDateCB As BANanoEvent = BANano.CallBack(mCallBack, $"${mEventName}_selectDate"$, Array(ev, newD))
	Dim selectMonthCB As BANanoEvent = BANano.CallBack(mCallBack, $"${mEventName}_selectMonth"$, Array(ev, newD))
	Dim selectYearCB As BANanoEvent = BANano.CallBack(mCallBack, $"${mEventName}_selectYear"$, Array(ev))
	Dim destroyCB As BANanoEvent = BANano.CallBack(mCallBack, $"${mEventName}_destroy"$, Array(ev))
	Dim toggleSidebarCB As BANanoEvent = BANano.CallBack(mCallBack, $"${mEventName}_toggleSidebar"$, Array(ev))
	Dim toggleEventListCB As BANanoEvent = BANano.CallBack(mCallBack, $"${mEventName}_toggleEventList"$, Array(ev))

	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	uCal.RunMethod("evoCalendar", Options)
	uCal.RunMethod("on", Array("selectMonth", selectMonthCB))
	uCal.RunMethod("on", Array("selectEvent", selectEventCB))
	uCal.RunMethod("on", Array("selectDate", selectDateCB))
	uCal.RunMethod("on", Array("selectYear", selectYearCB))
	uCal.RunMethod("on", Array("destroy", destroyCB))
	uCal.RunMethod("on", Array("toggleSidebar", toggleSidebarCB))
	uCal.RunMethod("on", Array("toggleEventList", toggleEventListCB))
End Sub

'select a year
Public Sub selectYear(y As Object)
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	uCal.RunMethod("evoCalendar", Array("selectYear", y))
End Sub

'select a date (string format per Format property)
Public Sub selectDate(d As String)
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	uCal.RunMethod("evoCalendar", Array("selectDate", d))
End Sub

'select a month (0-11)
Public Sub selectMonth(d As Object)
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	uCal.RunMethod("evoCalendar", Array("selectMonth", d))
End Sub

'get active selected date
Public Sub getActiveDate As String
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	Dim r As String = uCal.RunMethod("evoCalendar", "getActiveDate").Result
	Return r
End Sub

'get list of active events
Public Sub getActiveEvents As List
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	Dim r As List = uCal.RunMethod("evoCalendar", "getActiveEvents").Result
	Return r
End Sub

'clear events
Public Sub Clear
	Events.Clear
End Sub

'add a calendar event
Public Sub AddEvent(eID As String, eName As String, eBadge As String, eDate1 As String, eDate2 As String, eDescription As String, eType As String, eColor As String, bEveryYear As Boolean)
	Dim em As Map = CreateMap()
	em.Put("id", eID)
	em.Put("name", eName)
	If eDate2 <> "" Then
		Dim dates As List
		dates.Initialize
		dates.Add(eDate1)
		dates.Add(eDate2)
		em.Put("date", dates)
	Else
		em.Put("date", eDate1)
	End If
	If eBadge <> "" Then em.Put("badge", eBadge)
	em.Put("type", eType)
	If bEveryYear Then em.Put("everyYear", bEveryYear)
	em.Put("description", eDescription)
	If eColor <> "" Then em.Put("color", eColor)
	Events.Add(em)
End Sub

'add holiday event
Public Sub AddHoliday(eID As String, eName As String, eBadge As String, eDate1 As String, eDate2 As String, eDescription As String, eColor As String, bEveryYear As Boolean)
	AddEvent(eID, eName, eBadge, eDate1, eDate2, eDescription, "holiday", eColor, bEveryYear)
End Sub

'add birthday event
Public Sub AddBirthday(eID As String, eName As String, eBadge As String, eDate1 As String, eDate2 As String, eDescription As String, eColor As String, bEveryYear As Boolean)
	AddEvent(eID, eName, eBadge, eDate1, eDate2, eDescription, "birthday", eColor, bEveryYear)
End Sub

'add raw event map
Public Sub AddEvent1(eventm As Map)
	Events.Add(eventm)
End Sub

'set theme: blue, coral, default, navy
Public Sub setTheme(s As String)
	CustProps.Put("Theme", s)
	sTheme = UI.CStr(s)
End Sub

Public Sub getTheme() As String
	Return sTheme
End Sub

'set language: de, en, es, pt
Public Sub setLanguage(s As String)
	CustProps.Put("Language", s)
	sLanguage = UI.CStr(s)
End Sub

Public Sub getLanguage() As String
	Return sLanguage
End Sub

'set date format
Public Sub setFormat(s As String)
	CustProps.Put("Format", s)
	sFormat = UI.CStr(s)
End Sub

Public Sub getFormat() As String
	Return sFormat
End Sub

'set title format
Public Sub setTitleFormat(s As String)
	CustProps.Put("TitleFormat", s)
	sTitleFormat = UI.CStr(s)
End Sub

Public Sub getTitleFormat() As String
	Return sTitleFormat
End Sub

'set event header format
Public Sub setEventHeaderFormat(s As String)
	CustProps.Put("EventHeaderFormat", s)
	sEventHeaderFormat = UI.CStr(s)
End Sub

Public Sub getEventHeaderFormat() As String
	Return sEventHeaderFormat
End Sub

'set first day of week (0=Sunday, 1=Monday)
Public Sub setFirstDayOfWeek(s As String)
	CustProps.Put("FirstDayOfWeek", s)
	sFirstDayOfWeek = UI.CStr(s)
End Sub

Public Sub getFirstDayOfWeek() As String
	Return sFirstDayOfWeek
End Sub

'set event display default
Public Sub setEventDisplayDefault(b As Boolean)
	CustProps.Put("EventDisplayDefault", b)
	sEventDisplayDefault = b
End Sub

Public Sub getEventDisplayDefault() As Boolean
	Return sEventDisplayDefault
End Sub

'set event list toggler
Public Sub setEventListToggler(b As Boolean)
	CustProps.Put("EventListToggler", b)
	bEventListToggler = b
End Sub

Public Sub getEventListToggler() As Boolean
	Return bEventListToggler
End Sub

'set sidebar display default
Public Sub setSidebarDisplayDefault(b As Boolean)
	CustProps.Put("SidebarDisplayDefault", b)
	bSidebarDisplayDefault = b
End Sub

Public Sub getSidebarDisplayDefault() As Boolean
	Return bSidebarDisplayDefault
End Sub

'set sidebar toggler
Public Sub setSidebarToggler(b As Boolean)
	CustProps.Put("SidebarToggler", b)
	bSidebarToggler = b
End Sub

Public Sub getSidebarToggler() As Boolean
	Return bSidebarToggler
End Sub

'set today highlight
Public Sub setTodayHighlight(b As Boolean)
	CustProps.Put("TodayHighlight", b)
	bTodayHighlight = b
End Sub

Public Sub getTodayHighlight() As Boolean
	Return bTodayHighlight
End Sub

'destroy the calendar instance and restore DOM
Public Sub Destroy
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	uCal.RunMethod("evoCalendar", "destroy")
End Sub

'add a calendar event with custom payload data
Public Sub AddEventWithData(eID As String, eName As String, eBadge As String, eDate1 As String, eDate2 As String, eDescription As String, eType As String, eColor As String, bEveryYear As Boolean, CustomData As Map)
	Dim em As Map = CreateMap()
	em.Put("id", eID)
	em.Put("name", eName)
	If eDate2 <> "" Then
		Dim dates As List
		dates.Initialize
		dates.Add(eDate1)
		dates.Add(eDate2)
		em.Put("date", dates)
	Else
		em.Put("date", eDate1)
	End If
	If eBadge <> "" Then em.Put("badge", eBadge)
	em.Put("type", eType)
	If bEveryYear Then em.Put("everyYear", bEveryYear)
	em.Put("description", eDescription)
	If eColor <> "" Then em.Put("color", eColor)
	If CustomData <> Null Then
		For Each k As String In CustomData.Keys
			Dim v As Object = CustomData.Get(k)
			em.Put(k, v)
		Next
	End If
	Events.Add(em)
End Sub

'dynamically add an event at runtime without reinitializing
Public Sub AddCalendarEvent(eventMap As Map)
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	uCal.RunMethod("evoCalendar", Array("addCalendarEvent", Array(eventMap)))
End Sub

'dynamically remove an event at runtime by ID
Public Sub RemoveCalendarEvent(eventId As String)
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	uCal.RunMethod("evoCalendar", Array("removeCalendarEvent", eventId))
End Sub

'toggle sidebar visibility
Public Sub ToggleSidebar(bOpen As Boolean)
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	uCal.RunMethod("evoCalendar", Array("toggleSidebar", bOpen))
End Sub

'toggle event list visibility
Public Sub ToggleEventList(bOpen As Boolean)
	Dim uCal As BANanoElement = BANano.GetElement($"#${mName}"$)
	uCal.RunMethod("evoCalendar", Array("toggleEventList", bOpen))
End Sub

'set can add event
Public Sub setCanAddEvent(b As Boolean)
	CustProps.Put("CanAddEvent", b)
	bCanAddEvent = b
End Sub

Public Sub getCanAddEvent() As Boolean
	Return bCanAddEvent
End Sub
