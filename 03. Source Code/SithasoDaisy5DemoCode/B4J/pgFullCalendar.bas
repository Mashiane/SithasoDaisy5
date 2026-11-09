B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	
	' Header Row
	Private SDUI5RowHeader As SDUI5Row				'ignore
	Private SDUI5ColHeader As SDUI5Column			'ignore
	Private cardOverview As SDUI5Card				'ignore
	
	' Controls Row (Theme, Palette, View, Locale)
	Private SDUI5RowControls As SDUI5Row			'ignore
	Private SDUI5ColThemes As SDUI5Column			'ignore
	Private cboTheme As SDUI5Select					'ignore
	Private SDUI5ColPalettes As SDUI5Column			'ignore
	Private cboPalette As SDUI5Select				'ignore
	Private SDUI5ColViews As SDUI5Column			'ignore
	Private cboView As SDUI5Select					'ignore
	Private SDUI5ColLocales As SDUI5Column			'ignore
	Private cboLocale As SDUI5Select				'ignore
	
	' Presets and Theming Options Row
	Private SDUI5RowActions As SDUI5Row				'ignore
	Private SDUI5ColPresets As SDUI5Column			'ignore
	Private btnToggleDaisyUI As SDUI5Button			'ignore
	Private btnPresetDefault As SDUI5Button			'ignore
	Private btnPresetConference As SDUI5Button		'ignore
	Private btnPresetSprint As SDUI5Button			'ignore
	Private btnAddEvent As SDUI5Button				'ignore
	Private btnClearEvents As SDUI5Button			'ignore
	
	' Programmatic Date Navigation Row
	Private SDUI5RowNav As SDUI5Row					'ignore
	Private SDUI5ColNav As SDUI5Column				'ignore
	Private btnPrevYear As SDUI5Button				'ignore
	Private btnPrevMonth As SDUI5Button				'ignore
	Private btnToday As SDUI5Button					'ignore
	Private btnNextMonth As SDUI5Button				'ignore
	Private btnNextYear As SDUI5Button				'ignore
	Private btnJumpNextMonth As SDUI5Button			'ignore
	
	' Status / Live Callback Alert Row
	Private SDUI5RowStatus As SDUI5Row				'ignore
	Private SDUI5ColStatus As SDUI5Column			'ignore
	Private alertStatus As SDUI5Alert				'ignore
	
	' FullCalendar Component Row
	Private SDUI5RowCalendar As SDUI5Row			'ignore
	Private SDUI5ColCalendar As SDUI5Column			'ignore
	Private fc As SDUI5FullCalendar					'ignore
	
	' Reference and Documentation Card Row
	Private SDUI5RowGuide As SDUI5Row				'ignore
	Private SDUI5ColGuide As SDUI5Column			'ignore
	Private cardGuide As SDUI5Card					'ignore
	
	' State tracking
	Private sCurrentTheme As String = "material"
	Private sCurrentPalette As String = "default"
	Private sCurrentView As String = "dayGridMonth"
	Private sCurrentLocale As String = "en"
	Private bDaisyUIMode As Boolean = False
	Private eventCounter As Int = 100
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesFullCalendar)
	BANano.Await(app.ClearPageView)
	
	' 1. Main Container
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.Classes = "mx-auto space-y-4"
	BANano.Await(SDUI5Container1.AddComponent)
	
	' 2. Overview Hero Card
	SDUI5RowHeader.Initialize(Me, "SDUI5RowHeader", "SDUI5RowHeader")
	SDUI5RowHeader.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowHeader.AddComponent)
	
	SDUI5ColHeader.Initialize(Me, "SDUI5ColHeader", "SDUI5ColHeader")
	SDUI5ColHeader.ParentID = "SDUI5RowHeader"
	SDUI5ColHeader.Size = "12"
	BANano.Await(SDUI5ColHeader.AddComponent)
	
	cardOverview.Initialize(Me, "cardOverview", "cardOverview")
	cardOverview.ParentID = "SDUI5ColHeader"
	cardOverview.Title = "FullCalendar v7 - Themes and Capabilities Showcase"
	cardOverview.Content = "Comprehensive interactive demonstration of FullCalendar v7 integration. Demonstrates official stock themes (Material Design 3 / Monarch, Classic, Breezy, Forma, Pulse) with authentic upstream coloring and palettes. DaisyUI theming is completely optional and developer-controlled."
	cardOverview.Border = True
	cardOverview.Shadow = "sm"
	cardOverview.Width = "full"
	BANano.Await(cardOverview.AddComponent)
	
	' 3. Dropdown Controls Row (Theme, Palette, View, Locale)
	SDUI5RowControls.Initialize(Me, "SDUI5RowControls", "SDUI5RowControls")
	SDUI5RowControls.ParentID = "SDUI5Container1"
	SDUI5RowControls.GridCols = "1"
	SDUI5RowControls.GridColsMd = "4"
	SDUI5RowControls.Gap = "4"
	BANano.Await(SDUI5RowControls.AddComponent)
	
	' Theme Selector
	SDUI5ColThemes.Initialize(Me, "SDUI5ColThemes", "SDUI5ColThemes")
	SDUI5ColThemes.ParentID = "SDUI5RowControls"
	SDUI5ColThemes.SizeMd = "3"
	BANano.Await(SDUI5ColThemes.AddComponent)
	
	cboTheme.Initialize(Me, "cboTheme", "cboTheme")
	cboTheme.ParentID = "SDUI5ColThemes"
	cboTheme.Label = "FullCalendar Theme"
	cboTheme.InputType = "legend"
	cboTheme.Options = "material:Material Design 3 (Monarch);classic:Classic (Standard FullCalendar);breezy:Breezy (Tailwind Plus);forma:Forma (Fluent UI);pulse:Pulse (Apple Minimal)"
	cboTheme.Value = "material"
	cboTheme.Width = "full"
	BANano.Await(cboTheme.AddComponent)
	cboTheme.SetValue("material")
	
	' Palette Selector
	SDUI5ColPalettes.Initialize(Me, "SDUI5ColPalettes", "SDUI5ColPalettes")
	SDUI5ColPalettes.ParentID = "SDUI5RowControls"
	SDUI5ColPalettes.SizeMd = "3"
	BANano.Await(SDUI5ColPalettes.AddComponent)
	
	cboPalette.Initialize(Me, "cboPalette", "cboPalette")
	cboPalette.ParentID = "SDUI5ColPalettes"
	cboPalette.Label = "Theme Color Palette"
	cboPalette.InputType = "legend"
	cboPalette.Options = "default:Default Palette;purple:Purple (MD3 Baseline);blue:Blue;green:Green;red:Red;yellow:Yellow;amber:Amber;emerald:Emerald;rose:Rose"
	cboPalette.Value = "default"
	cboPalette.Width = "full"
	BANano.Await(cboPalette.AddComponent)
	cboPalette.SetValue("default")
	
	' View Selector
	SDUI5ColViews.Initialize(Me, "SDUI5ColViews", "SDUI5ColViews")
	SDUI5ColViews.ParentID = "SDUI5RowControls"
	SDUI5ColViews.SizeMd = "3"
	BANano.Await(SDUI5ColViews.AddComponent)
	
	cboView.Initialize(Me, "cboView", "cboView")
	cboView.ParentID = "SDUI5ColViews"
	cboView.Label = "Active Calendar View"
	cboView.InputType = "legend"
	cboView.Options = "dayGridMonth:Month Grid (dayGridMonth);timeGridWeek:Week TimeGrid (timeGridWeek);timeGridDay:Day TimeGrid (timeGridDay);listMonth:Month Agenda List (listMonth);listWeek:Week Agenda List (listWeek);multiMonthYear:Multi-Month Year (multiMonthYear)"
	cboView.Value = "dayGridMonth"
	cboView.Width = "full"
	BANano.Await(cboView.AddComponent)
	cboView.SetValue("dayGridMonth")
	
	' Locale Selector
	SDUI5ColLocales.Initialize(Me, "SDUI5ColLocales", "SDUI5ColLocales")
	SDUI5ColLocales.ParentID = "SDUI5RowControls"
	SDUI5ColLocales.SizeMd = "3"
	BANano.Await(SDUI5ColLocales.AddComponent)
	
	cboLocale.Initialize(Me, "cboLocale", "cboLocale")
	cboLocale.ParentID = "SDUI5ColLocales"
	cboLocale.Label = "Calendar Locale (i18n)"
	cboLocale.InputType = "legend"
	cboLocale.Options = "en:English (Default);es:Spanish (Espanol);fr:French (Francais);de:German (Deutsch);ja:Japanese;ar:Arabic;pt:Portuguese;it:Italian;ru:Russian;zh-cn:Chinese"
	cboLocale.Value = "en"
	cboLocale.Width = "full"
	BANano.Await(cboLocale.AddComponent)
	cboLocale.SetValue("en")
	
	' 4. Presets and Theming Toggle Row
	SDUI5RowActions.Initialize(Me, "SDUI5RowActions", "SDUI5RowActions")
	SDUI5RowActions.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowActions.AddComponent)
	
	SDUI5ColPresets.Initialize(Me, "SDUI5ColPresets", "SDUI5ColPresets")
	SDUI5ColPresets.ParentID = "SDUI5RowActions"
	SDUI5ColPresets.Size = "12"
	SDUI5ColPresets.Classes = "flex flex-wrap items-center gap-2"
	BANano.Await(SDUI5ColPresets.AddComponent)
	
	btnToggleDaisyUI.Initialize(Me, "btnToggleDaisyUI", "btnToggleDaisyUI")
	btnToggleDaisyUI.ParentID = "SDUI5ColPresets"
	btnToggleDaisyUI.Color = "neutral"
	btnToggleDaisyUI.Size = "sm"
	btnToggleDaisyUI.Text = "Color Source: Exact Upstream (Click to toggle DaisyUI)"
	BANano.Await(btnToggleDaisyUI.AddComponent)
	
	btnPresetDefault.Initialize(Me, "btnPresetDefault", "btnPresetDefault")
	btnPresetDefault.ParentID = "SDUI5ColPresets"
	btnPresetDefault.Color = "primary"
	btnPresetDefault.Size = "sm"
	btnPresetDefault.Text = "Preset: Corporate Schedule"
	BANano.Await(btnPresetDefault.AddComponent)
	
	btnPresetConference.Initialize(Me, "btnPresetConference", "btnPresetConference")
	btnPresetConference.ParentID = "SDUI5ColPresets"
	btnPresetConference.Color = "secondary"
	btnPresetConference.Size = "sm"
	btnPresetConference.Text = "Preset: Tech Conference"
	BANano.Await(btnPresetConference.AddComponent)
	
	btnPresetSprint.Initialize(Me, "btnPresetSprint", "btnPresetSprint")
	btnPresetSprint.ParentID = "SDUI5ColPresets"
	btnPresetSprint.Color = "accent"
	btnPresetSprint.Size = "sm"
	btnPresetSprint.Text = "Preset: Agile Sprint"
	BANano.Await(btnPresetSprint.AddComponent)
	
	btnAddEvent.Initialize(Me, "btnAddEvent", "btnAddEvent")
	btnAddEvent.ParentID = "SDUI5ColPresets"
	btnAddEvent.Color = "success"
	btnAddEvent.Size = "sm"
	btnAddEvent.Text = "+ Add Quick Event"
	BANano.Await(btnAddEvent.AddComponent)
	
	btnClearEvents.Initialize(Me, "btnClearEvents", "btnClearEvents")
	btnClearEvents.ParentID = "SDUI5ColPresets"
	btnClearEvents.Color = "error"
	btnClearEvents.Size = "sm"
	btnClearEvents.Outline = True
	btnClearEvents.Text = "Clear All Events"
	BANano.Await(btnClearEvents.AddComponent)
	
	' 5. Programmatic Date Navigation Toolbar
	SDUI5RowNav.Initialize(Me, "SDUI5RowNav", "SDUI5RowNav")
	SDUI5RowNav.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowNav.AddComponent)
	
	SDUI5ColNav.Initialize(Me, "SDUI5ColNav", "SDUI5ColNav")
	SDUI5ColNav.ParentID = "SDUI5RowNav"
	SDUI5ColNav.Size = "12"
	SDUI5ColNav.Classes = "flex flex-wrap items-center gap-2"
	BANano.Await(SDUI5ColNav.AddComponent)
	
	btnPrevYear.Initialize(Me, "btnPrevYear", "btnPrevYear")
	btnPrevYear.ParentID = "SDUI5ColNav"
	btnPrevYear.Size = "sm"
	btnPrevYear.Text = "« Prev Year"
	BANano.Await(btnPrevYear.AddComponent)
	
	btnPrevMonth.Initialize(Me, "btnPrevMonth", "btnPrevMonth")
	btnPrevMonth.ParentID = "SDUI5ColNav"
	btnPrevMonth.Size = "sm"
	btnPrevMonth.Text = "‹ Prev Month"
	BANano.Await(btnPrevMonth.AddComponent)
	
	btnToday.Initialize(Me, "btnToday", "btnToday")
	btnToday.ParentID = "SDUI5ColNav"
	btnToday.Color = "primary"
	btnToday.Size = "sm"
	btnToday.Text = "Today"
	BANano.Await(btnToday.AddComponent)
	
	btnNextMonth.Initialize(Me, "btnNextMonth", "btnNextMonth")
	btnNextMonth.ParentID = "SDUI5ColNav"
	btnNextMonth.Size = "sm"
	btnNextMonth.Text = "Next Month ›"
	BANano.Await(btnNextMonth.AddComponent)
	
	btnNextYear.Initialize(Me, "btnNextYear", "btnNextYear")
	btnNextYear.ParentID = "SDUI5ColNav"
	btnNextYear.Size = "sm"
	btnNextYear.Text = "Next Year »"
	BANano.Await(btnNextYear.AddComponent)
	
	btnJumpNextMonth.Initialize(Me, "btnJumpNextMonth", "btnJumpNextMonth")
	btnJumpNextMonth.ParentID = "SDUI5ColNav"
	btnJumpNextMonth.Color = "neutral"
	btnJumpNextMonth.Size = "sm"
	btnJumpNextMonth.Text = "Jump +1 Month"
	BANano.Await(btnJumpNextMonth.AddComponent)
	
	' 6. Live Activity / Status Alert
	SDUI5RowStatus.Initialize(Me, "SDUI5RowStatus", "SDUI5RowStatus")
	SDUI5RowStatus.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowStatus.AddComponent)
	
	SDUI5ColStatus.Initialize(Me, "SDUI5ColStatus", "SDUI5ColStatus")
	SDUI5ColStatus.ParentID = "SDUI5RowStatus"
	SDUI5ColStatus.Size = "12"
	BANano.Await(SDUI5ColStatus.AddComponent)
	
	alertStatus.Initialize(Me, "alertStatus", "alertStatus")
	alertStatus.ParentID = "SDUI5ColStatus"
	alertStatus.Color = "info"
	alertStatus.Soft = True
	alertStatus.Title = "Live Calendar Activity Log"
	alertStatus.Text = "Calendar initialized with Material Design 3 (Monarch) theme and exact upstream source colors. Click events, select ranges, or switch themes above to test."
	alertStatus.Width = "full"
	BANano.Await(alertStatus.AddComponent)
	
	' 7. FullCalendar Component
	SDUI5RowCalendar.Initialize(Me, "SDUI5RowCalendar", "SDUI5RowCalendar")
	SDUI5RowCalendar.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowCalendar.AddComponent)
	
	SDUI5ColCalendar.Initialize(Me, "SDUI5ColCalendar", "SDUI5ColCalendar")
	SDUI5ColCalendar.ParentID = "SDUI5RowCalendar"
	SDUI5ColCalendar.Size = "12"
	SDUI5ColCalendar.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5ColCalendar.Classes = "bg-base-100 rounded-box border border-base-content/10 shadow-sm"
	BANano.Await(SDUI5ColCalendar.AddComponent)
	
	fc.Initialize(Me, "fc", "fc")
	fc.ParentID = "SDUI5ColCalendar"
	fc.InitialView = "dayGridMonth"
	fc.ThemeName = "material"
	fc.Palette = "default"
	fc.DaisyUITheming = False
	fc.ScrollTime = "08:00:00"
	fc.SlotDuration = "00:30:00"
	fc.SlotMinTime = "07:00:00"
	fc.SlotMaxTime = "21:00:00"
	fc.Editable = True
	fc.Selectable = True
	fc.Droppable = True
	fc.DayMaxEvents = True
	fc.NowIndicator = True
	fc.NavLinks = True
	fc.ContentHeight = "auto"
	BANano.Await(fc.AddComponent)
	
	' 8. Architecture and Guide Card
	SDUI5RowGuide.Initialize(Me, "SDUI5RowGuide", "SDUI5RowGuide")
	SDUI5RowGuide.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowGuide.AddComponent)
	
	SDUI5ColGuide.Initialize(Me, "SDUI5ColGuide", "SDUI5ColGuide")
	SDUI5ColGuide.ParentID = "SDUI5RowGuide"
	SDUI5ColGuide.Size = "12"
	BANano.Await(SDUI5ColGuide.AddComponent)
	
	cardGuide.Initialize(Me, "cardGuide", "cardGuide")
	cardGuide.ParentID = "SDUI5ColGuide"
	cardGuide.Title = "FullCalendar v7 Theming Reference"
	cardGuide.Content = "• Material Design 3 (Monarch): Official FullCalendar v7 Material theme with authentic MD3 baseline palette (#6750A4 purple), pill badges, and dark mode." & CRLF & _
	"• 100% Exact Upstream Coloring: Authentic source CSS variables and palettes for Classic, Material (Monarch), Breezy (Tailwind), Forma (Fluent), and Pulse (Apple)." & CRLF & _
	"• Color Palettes: Support for purple, blue, green, red, yellow, amber, emerald, and rose palettes." & CRLF & _
	"• Optional DaisyUI Theming: Controlled via fc.DaisyUITheming (False by default preserves authentic source styling; True maps DaisyUI theme tokens)." & CRLF & _
	"• Dark Mode: FullCalendar v7 native [data-color-scheme=dark] activated automatically."
	cardGuide.Border = True
	cardGuide.Shadow = "sm"
	cardGuide.Width = "full"
	BANano.Await(cardGuide.AddComponent)
	
	pgIndex.UpdateTitle("SDUI5FullCalendar")
	
	' Load initial default event schedule
	LoadDefaultEvents
End Sub

' ---------------------------------------------------------
' Event Schedule Presets
' ---------------------------------------------------------

Private Sub LoadDefaultEvents
	fc.Clear
	Dim sStartMonth As String = app.UI.StartOfThisMonth
	eventCounter = 100
	
	' All-Day Milestone
	fc.AddEvent("EVT-101", "corporate", "Strategic Q4 Kickoff", sStartMonth, "", True, "", "#6750A4", "", False, True)
	
	' Multi-Day Executive Retreat
	fc.AddEvent("EVT-102", "corporate", "Executive Leadership Summit", app.ui.DateAdd(sStartMonth, 3), app.ui.DateAdd(sStartMonth, 6), False, "", "#895264", "", False, True)
	
	' Timed Weekly Reviews
	fc.AddEvent("EVT-103", "meetings", "Product Architecture Review", app.ui.DateAdd(sStartMonth, 7) & "T10:00:00", app.ui.DateAdd(sStartMonth, 7) & "T11:30:00", False, "", "#06b6d4", "", False, True)
	
	' High-priority Client Demo
	fc.AddEvent("EVT-104", "sales", "Enterprise Client Demo", app.ui.DateAdd(sStartMonth, 9) & "T14:00:00", app.ui.DateAdd(sStartMonth, 9) & "T15:30:00", False, "", "#10b981", "", False, True)
	
	' Critical Security Audit
	fc.AddEvent("EVT-105", "compliance", "SOC2 Compliance and Security Audit", app.ui.DateAdd(sStartMonth, 11), app.ui.DateAdd(sStartMonth, 14), False, "", "#ef4444", "", False, True)
	
	' Global Town Hall
	fc.AddEvent("EVT-106", "corporate", "Global All-Hands and Town Hall", app.ui.DateAdd(sStartMonth, 15) & "T16:00:00", app.ui.DateAdd(sStartMonth, 15) & "T17:30:00", False, "", "#f59e0b", "", False, True)
	
	' Background Maintenance Slot (Shaded highlight)
	fc.AddEvent("EVT-107", "infra", "Cloud Infrastructure Maintenance Window", app.ui.DateAdd(sStartMonth, 17), app.ui.DateAdd(sStartMonth, 19), True, "", "#94a3b8", "", True, True)
	
	' Product Release Launch
	fc.AddEvent("EVT-108", "product", "Version 5.0 Public Launch", app.ui.DateAdd(sStartMonth, 21) & "T09:00:00", app.ui.DateAdd(sStartMonth, 21) & "T12:00:00", False, "", "#6750A4", "", False, True)
	
	' Team Celebration Lunch
	fc.AddEvent("EVT-109", "social", "Team Celebration Lunch", app.ui.DateAdd(sStartMonth, 24) & "T12:30:00", app.ui.DateAdd(sStartMonth, 24) & "T14:00:00", False, "", "#ec4899", "", False, True)
	
	fc.Refresh
	Dim sMsg As String = "Loaded Corporate schedule with authentic Material Design 3 palette."
	alertStatus.Color = "primary"
	alertStatus.Title = "Corporate Preset Loaded"
	alertStatus.Text = sMsg
	app.ShowToastSuccess(sMsg)
End Sub

Private Sub LoadConferenceEvents
	fc.Clear
	Dim sStartMonth As String = app.UI.StartOfThisMonth
	Dim sConfStart As String = app.ui.DateAdd(sStartMonth, 10)
	Dim sDay2 As String = app.ui.DateAdd(sStartMonth, 11)
	Dim sDay3 As String = app.ui.DateAdd(sStartMonth, 12)
	
	' 3-Day Registration and Expo
	fc.AddEvent("CONF-01", "expo", "Innovation Expo and Badge Pickup", sConfStart, app.ui.DateAdd(sStartMonth, 13), True, "", "#64748b", "", False, True)
	
	' Day 1 Sessions
	fc.AddEvent("CONF-02", "keynote", "Opening Keynote: Future of Agentic UI", sConfStart & "T09:00:00", sConfStart & "T10:30:00", False, "", "#6750A4", "", False, True)
	fc.AddEvent("CONF-03", "workshop", "Workshop: Modern Web Components and BANano", sConfStart & "T11:00:00", sConfStart & "T13:00:00", False, "", "#895264", "", False, True)
	fc.AddEvent("CONF-04", "networking", "Speaker and Sponsor Networking Lunch", sConfStart & "T13:00:00", sConfStart & "T14:30:00", False, "", "#10b981", "", False, True)
	fc.AddEvent("CONF-05", "deepdive", "Deep Dive: FullCalendar v7 CSS Architecture", sConfStart & "T15:00:00", sConfStart & "T16:30:00", False, "", "#06b6d4", "", False, True)
	fc.AddEvent("CONF-06", "social", "Welcome Drinks and Networking Reception", sConfStart & "T18:00:00", sConfStart & "T21:00:00", False, "", "#f59e0b", "", False, True)
	
	' Day 2 Sessions and Hackathon
	fc.AddEvent("CONF-07", "panel", "Panel: Multi-Platform UI Frameworks", sDay2 & "T09:30:00", sDay2 & "T11:00:00", False, "", "#6750A4", "", False, True)
	fc.AddEvent("CONF-08", "hackathon", "24-Hour AI Coding Challenge Kickoff", sDay2 & "T11:30:00", sDay2 & "T18:00:00", False, "", "#ef4444", "", False, True)
	fc.AddEvent("CONF-09", "hackathon", "Overnight Hackathon Lab Open (Quiet Hours)", sDay2 & "T18:00:00", sDay3 & "T08:00:00", False, "", "#94a3b8", "", True, True)
	
	' Day 3 Showcase
	fc.AddEvent("CONF-10", "demos", "Hackathon Project Demos and Judging", sDay3 & "T10:00:00", sDay3 & "T13:00:00", False, "", "#895264", "", False, True)
	fc.AddEvent("CONF-11", "awards", "Awards Ceremony and Closing Reception", sDay3 & "T14:30:00", sDay3 & "T16:30:00", False, "", "#10b981", "", False, True)
	
	fc.Refresh
	fc.gotoDate(sConfStart)
	Dim sMsg As String = "Loaded Tech Conference Schedule (11 sessions across 3 tracks)."
	alertStatus.Color = "secondary"
	alertStatus.Title = "Conference Preset Loaded"
	alertStatus.Text = sMsg
	app.ShowToastSuccess(sMsg)
End Sub

Private Sub LoadSprintEvents
	fc.Clear
	Dim sStartMonth As String = app.UI.StartOfThisMonth
	Dim sSprintStart As String = app.ui.DateAdd(sStartMonth, 1)
	Dim sSprintEnd As String = app.ui.DateAdd(sStartMonth, 15)
	
	' Sprint Duration Window (Background shade)
	fc.AddEvent("SPR-BG", "sprint", "Sprint 42 Active Cycle", sSprintStart, sSprintEnd, True, "", "#e2e8f0", "", True, True)
	
	' Sprint Ceremonies
	fc.AddEvent("SPR-01", "ceremony", "Sprint 42 Planning and Backlog Commitment", sSprintStart & "T09:00:00", sSprintStart & "T11:30:00", False, "", "#6750A4", "", False, True)
	
	' Daily Standups
	Dim d As Int
	For d = 2 To 12
		Dim sDate As String = app.ui.DateAdd(sStartMonth, d)
		fc.AddEvent("SPR-SU-" & d, "standup", "Daily Standup", sDate & "T09:30:00", sDate & "T10:00:00", False, "", "#06b6d4", "", False, True)
	Next
	
	' Backlog Refinement
	fc.AddEvent("SPR-02", "refinement", "Mid-Sprint Backlog Refinement", app.ui.DateAdd(sStartMonth, 5) & "T14:00:00", app.ui.DateAdd(sStartMonth, 5) & "T15:30:00", False, "", "#895264", "", False, True)
	
	' Feature Freeze
	fc.AddEvent("SPR-03", "freeze", "Feature Code Freeze Deadline", app.ui.DateAdd(sStartMonth, 12) & "T17:00:00", app.ui.DateAdd(sStartMonth, 12) & "T18:00:00", False, "", "#f59e0b", "", False, True)
	
	' QA Regression Window
	fc.AddEvent("SPR-04", "qa", "QA End-to-End Regression Cycle", app.ui.DateAdd(sStartMonth, 13) & "T09:00:00", app.ui.DateAdd(sStartMonth, 13) & "T17:00:00", False, "", "#f97316", "", False, True)
	
	' Production Release
	fc.AddEvent("SPR-05", "prod", "Production Deployment V5.2.0", app.ui.DateAdd(sStartMonth, 14) & "T20:00:00", app.ui.DateAdd(sStartMonth, 14) & "T22:00:00", False, "", "#ef4444", "", False, True)
	
	' Retrospective and Demo
	fc.AddEvent("SPR-06", "retro", "Sprint 42 Retrospective and Demo Showcase", app.ui.DateAdd(sStartMonth, 15) & "T15:00:00", app.ui.DateAdd(sStartMonth, 15) & "T17:00:00", False, "", "#10b981", "", False, True)
	
	fc.Refresh
	fc.gotoDate(sSprintStart)
	Dim sMsg As String = "Loaded Agile 2-Week Sprint Schedule (Sprint planning, daily standups, code freeze, deployment)."
	alertStatus.Color = "accent"
	alertStatus.Title = "Sprint Preset Loaded"
	alertStatus.Text = sMsg
	app.ShowToastSuccess(sMsg)
End Sub

Private Sub AddQuickEvent
	eventCounter = eventCounter + 1
	Dim sToday As String = app.ui.DateNow
	Dim sTargetDate As String = app.ui.DateAdd(sToday, (eventCounter Mod 7) + 1)
	Dim colors() As String = Array As String("#6750A4", "#10b981", "#895264", "#f59e0b", "#ef4444", "#06b6d4", "#ec4899")
	Dim sColor As String = colors(eventCounter Mod colors.Length)
	Dim sTitle As String = "Dynamic Task #" & eventCounter
	Dim sStart As String = sTargetDate & "T11:00:00"
	Dim sEnd As String = sTargetDate & "T12:30:00"
	
	fc.AddEvent("EVT-" & eventCounter, "dynamic", sTitle, sStart, sEnd, False, "", sColor, "", False, True)
	fc.Refresh
	
	Dim sMsg As String = "Dynamically added event: '" & sTitle & "' on " & sTargetDate & " (" & sColor & ")."
	alertStatus.Color = "success"
	alertStatus.Title = "Event Created"
	alertStatus.Text = sMsg
	app.ShowToastSuccess(sMsg)
End Sub

Private Sub ClearAllEvents
	fc.Clear
	fc.Refresh
	Dim sMsg As String = "Cleared all events from the calendar."
	alertStatus.Color = "warning"
	alertStatus.Title = "Calendar Cleared"
	alertStatus.Text = sMsg
	app.ShowToastInfo(sMsg)
End Sub

' ---------------------------------------------------------
' Dropdown Handlers
' ---------------------------------------------------------

Private Sub cboTheme_Change (Value As String)
	sCurrentTheme = Value
	fc.ChangeTheme(Value)
	Dim sDisplay As String = Value.ToUpperCase
	If Value = "material" Or Value = "monarch" Then sDisplay = "MATERIAL DESIGN 3 (MONARCH)"
	Dim sMsg As String = "FullCalendar theme switched to: " & sDisplay
	alertStatus.Color = "primary"
	alertStatus.Title = "Theme Switched"
	alertStatus.Text = sMsg
	app.ShowToastSuccess(sMsg)
End Sub

Private Sub cboPalette_Change (Value As String)
	sCurrentPalette = Value
	fc.ChangePalette(Value)
	Dim sMsg As String = "Theme palette changed to: " & Value.ToUpperCase
	alertStatus.Color = "secondary"
	alertStatus.Title = "Palette Changed"
	alertStatus.Text = sMsg
	app.ShowToastSuccess(sMsg)
End Sub

Private Sub cboView_Change (Value As String)
	sCurrentView = Value
	fc.changeView(Value)
	Dim sMsg As String = "Calendar view changed to: " & Value
	alertStatus.Color = "secondary"
	alertStatus.Title = "View Changed"
	alertStatus.Text = sMsg
	app.ShowToastInfo(sMsg)
End Sub

Private Sub cboLocale_Change (Value As String)
	sCurrentLocale = Value
	fc.UpdateLocale(Value)
	Dim sMsg As String = "Calendar locale updated to: " & Value
	alertStatus.Color = "accent"
	alertStatus.Title = "Locale Changed"
	alertStatus.Text = sMsg
	app.ShowToastSuccess(sMsg)
End Sub

' ---------------------------------------------------------
' Button Click Handlers
' ---------------------------------------------------------

Private Sub btnToggleDaisyUI_Click (e As BANanoEvent)
	e.PreventDefault
	bDaisyUIMode = Not(bDaisyUIMode)
	fc.setDaisyUITheming(bDaisyUIMode)
	If bDaisyUIMode Then
		btnToggleDaisyUI.Text = "Color Source: DaisyUI Theme Tokens (Active)"
		btnToggleDaisyUI.Color = "primary"
		Dim sMsg As String = "DaisyUI Theming ENABLED: FullCalendar now adopts DaisyUI color tokens."
		alertStatus.Color = "primary"
		alertStatus.Title = "DaisyUI Theming Active"
		alertStatus.Text = sMsg
		app.ShowToastSuccess(sMsg)
	Else
		btnToggleDaisyUI.Text = "Color Source: Exact Upstream (Active)"
		btnToggleDaisyUI.Color = "neutral"
		Dim sMsg As String = "DaisyUI Theming DISABLED: FullCalendar now uses 100% authentic upstream source colors and palettes."
		alertStatus.Color = "info"
		alertStatus.Title = "Authentic Source Theming Active"
		alertStatus.Text = sMsg
		app.ShowToastInfo(sMsg)
	End If
End Sub

Private Sub btnPresetDefault_Click (e As BANanoEvent)
	e.PreventDefault
	LoadDefaultEvents
End Sub

Private Sub btnPresetConference_Click (e As BANanoEvent)
	e.PreventDefault
	LoadConferenceEvents
End Sub

Private Sub btnPresetSprint_Click (e As BANanoEvent)
	e.PreventDefault
	LoadSprintEvents
End Sub

Private Sub btnAddEvent_Click (e As BANanoEvent)
	e.PreventDefault
	AddQuickEvent
End Sub

Private Sub btnClearEvents_Click (e As BANanoEvent)
	e.PreventDefault
	ClearAllEvents
End Sub

Private Sub btnPrevYear_Click (e As BANanoEvent)
	e.PreventDefault
	fc.gotoPrevYear
	app.ShowToastInfo("Navigated to Previous Year")
End Sub

Private Sub btnPrevMonth_Click (e As BANanoEvent)
	e.PreventDefault
	fc.gotoPrevMonth
	app.ShowToastInfo("Navigated to Previous Period")
End Sub

Private Sub btnToday_Click (e As BANanoEvent)
	e.PreventDefault
	fc.gotoToday
	app.ShowToastInfo("Navigated to Today")
End Sub

Private Sub btnNextMonth_Click (e As BANanoEvent)
	e.PreventDefault
	fc.gotoNextMonth
	app.ShowToastInfo("Navigated to Next Period")
End Sub

Private Sub btnNextYear_Click (e As BANanoEvent)
	e.PreventDefault
	fc.gotoNextYear
	app.ShowToastInfo("Navigated to Next Year")
End Sub

Private Sub btnJumpNextMonth_Click (e As BANanoEvent)
	e.PreventDefault
	Dim sNext As String = app.ui.MonthAdd(app.ui.DateNow, 1)
	fc.gotoDate(sNext)
	app.ShowToastInfo("Jumped to: " & sNext)
End Sub

' ---------------------------------------------------------
' FullCalendar Event Callbacks
' ---------------------------------------------------------

Private Sub fc_EventClick (args As Map)
	Dim sTitle As String = app.UI.CStr(app.UI.GetRecursive(args, "title"))
	Dim sStart As String = app.UI.CStr(app.UI.GetRecursive(args, "startStr"))
	If sStart = "" Then sStart = app.UI.CStr(app.UI.GetRecursive(args, "start"))
	Dim sId As String = app.UI.CStr(app.UI.GetRecursive(args, "id"))
	Dim sMsg As String = "Event Clicked: '" & sTitle & "' [ID: " & sId & "] | Starts: " & sStart
	alertStatus.Color = "primary"
	alertStatus.Title = "Event Clicked"
	alertStatus.Text = sMsg
	app.ShowToastInfo(sMsg)
	Log(sMsg)
End Sub

Private Sub fc_DateClick (args As Map)
	Dim sDate As String = app.UI.CStr(app.UI.GetRecursive(args, "dateStr"))
	Dim sMsg As String = "Date/Slot Clicked: " & sDate
	alertStatus.Color = "secondary"
	alertStatus.Title = "Date Clicked"
	alertStatus.Text = sMsg
	app.ShowToastInfo(sMsg)
	Log(sMsg)
End Sub

Private Sub fc_Select (args As Map)
	Dim sStart As String = app.UI.CStr(app.UI.GetRecursive(args, "startStr"))
	Dim sEnd As String = app.UI.CStr(app.UI.GetRecursive(args, "endStr"))
	Dim sMsg As String = "Date Range Selected: " & sStart & " to " & sEnd
	alertStatus.Color = "accent"
	alertStatus.Title = "Range Selected"
	alertStatus.Text = sMsg
	app.ShowToastInfo(sMsg)
	Log(sMsg)
End Sub

Private Sub fc_EventDrop (args As Map)
	Dim sTitle As String = app.UI.CStr(app.UI.GetRecursive(args, "event.title"))
	Dim sStart As String = app.UI.CStr(app.UI.GetRecursive(args, "event.startStr"))
	Dim sMsg As String = "Event Dragged & Dropped: '" & sTitle & "' -> New Start: " & sStart
	alertStatus.Color = "warning"
	alertStatus.Title = "Event Moved"
	alertStatus.Text = sMsg
	app.ShowToastSuccess(sMsg)
	Log(sMsg)
End Sub

Private Sub fc_EventResize (args As Map)
	Dim sTitle As String = app.UI.CStr(app.UI.GetRecursive(args, "event.title"))
	Dim sEnd As String = app.UI.CStr(app.UI.GetRecursive(args, "event.endStr"))
	Dim sMsg As String = "Event Resized: '" & sTitle & "' -> New End: " & sEnd
	alertStatus.Color = "warning"
	alertStatus.Title = "Event Resized"
	alertStatus.Text = sMsg
	app.ShowToastSuccess(sMsg)
	Log(sMsg)
End Sub

Private Sub fc_Drop (args As Map)
	Dim sMsg As String = "External Item Dropped on Calendar."
	alertStatus.Color = "info"
	alertStatus.Title = "External Item Dropped"
	alertStatus.Text = sMsg
	app.ShowToastInfo(sMsg)
	Log(sMsg)
End Sub

Private Sub fc_DateRangeChange (startDate As String, endDate As String, lastView As String)
	sCurrentView = lastView
	Dim sMsg As String = "Visible Date Range: " & startDate & " to " & endDate & " (View: " & lastView & ")"
	alertStatus.Color = "info"
	alertStatus.Title = "Calendar View Range Updated"
	alertStatus.Text = sMsg
	Log(sMsg)
End Sub

Private Sub fc_NextMonth (e As BANanoEvent)
	Log("fc_NextMonth: " & fc.CurrentStartDate & " to " & fc.CurrentEndDate)
End Sub

Private Sub fc_PrevMonth (e As BANanoEvent)
	Log("fc_PrevMonth: " & fc.CurrentStartDate & " to " & fc.CurrentEndDate)
End Sub

Private Sub fc_NextYear (e As BANanoEvent)
	Log("fc_NextYear: " & fc.CurrentStartDate & " to " & fc.CurrentEndDate)
End Sub

Private Sub fc_PrevYear (e As BANanoEvent)
	Log("fc_PrevYear: " & fc.CurrentStartDate & " to " & fc.CurrentEndDate)
End Sub
