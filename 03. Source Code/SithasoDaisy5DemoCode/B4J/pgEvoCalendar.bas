B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano							'ignore
	Private app As SDUI5App								'ignore
	Private SDUI5Container1 As SDUI5Container			'ignore
	
	' 1. Header Card Row
	Private SDUI5RowHeader As SDUI5Row					'ignore
	Private SDUI5ColHeader As SDUI5Column				'ignore
	Private cardOverview As SDUI5Card					'ignore
	
	' 2. Dropdown Controls Row (Theme, Language, FirstDayOfWeek)
	Private SDUI5RowControls As SDUI5Row				'ignore
	Private SDUI5ColTheme As SDUI5Column				'ignore
	Private cboTheme As SDUI5Select						'ignore
	Private SDUI5ColLanguage As SDUI5Column				'ignore
	Private cboLanguage As SDUI5Select					'ignore
	Private SDUI5ColFirstDay As SDUI5Column				'ignore
	Private cboFirstDay As SDUI5Select					'ignore
	
	' 3. Action Buttons & Presets Row
	Private SDUI5RowActions As SDUI5Row					'ignore
	Private SDUI5ColActions As SDUI5Column				'ignore
	Private btnPresetStock As SDUI5Button				'ignore
	Private btnPresetProject As SDUI5Button				'ignore
	Private btnAddEvent As SDUI5Button					'ignore
	Private btnToggleSidebar As SDUI5Button				'ignore
	Private btnToggleEventList As SDUI5Button			'ignore
	Private btnClearEvents As SDUI5Button				'ignore
	Private btnDestroy As SDUI5Button					'ignore
	
	' 4. Date Navigation Toolbar Row
	Private SDUI5RowNav As SDUI5Row						'ignore
	Private SDUI5ColNav As SDUI5Column					'ignore
	Private btnPrevYear As SDUI5Button					'ignore
	Private btnPrevMonth As SDUI5Button					'ignore
	Private btnToday As SDUI5Button						'ignore
	Private btnNextMonth As SDUI5Button					'ignore
	Private btnNextYear As SDUI5Button					'ignore
	Private btnJumpChristmas As SDUI5Button				'ignore
	
	' 5. Live Activity / Status Alert Row
	Private SDUI5RowStatus As SDUI5Row					'ignore
	Private SDUI5ColStatus As SDUI5Column				'ignore
	Private alertStatus As SDUI5Alert					'ignore
	
	' 6. EvoCalendar Component Row
	Private SDUI5RowCalendar As SDUI5Row				'ignore
	Private SDUI5ColCalendar As SDUI5Column				'ignore
	Private evo As SDUI5EvoCalendar						'ignore
	
	' 7. Reference and Documentation Card Row
	Private SDUI5RowGuide As SDUI5Row					'ignore
	Private SDUI5ColGuide As SDUI5Column				'ignore
	Private cardGuide As SDUI5Card						'ignore
	
	' State tracking
	Private sCurrentTheme As String = "default"
	Private sCurrentLanguage As String = "en"
	Private sCurrentFirstDay As String = "0"
	Private bSidebarOpen As Boolean = True
	Private bEventListOpen As Boolean = True
	Private eventCounter As Int = 100
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesEvoCalendar)
	BANano.Await(app.ClearPageView)
	pgIndex.UpdateTitle("SDUI5EvoCalendar")
	
	' 1. Main Page Container
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
	cardOverview.Title = "EvoCalendar - Modern Event Calendar (Zero jQuery / UmbrellaJS)"
	cardOverview.Content = "Interactive demonstration of SDUI5EvoCalendar running purely on BANano's embedded UmbrellaJS (u) with zero jQuery. Features responsive drawer auto-collapsing on tablet/mobile screens, multi-argument custom event dispatching, cross-month date auto-sync, event badges with arbitrary Map metadata payloads, and full runtime DOM lifecycle management."
	cardOverview.Border = True
	cardOverview.Shadow = "sm"
	cardOverview.Width = "full"
	BANano.Await(cardOverview.AddComponent)
	
	' 3. Dropdown Controls Row (Theme, Language, First Day)
	SDUI5RowControls.Initialize(Me, "SDUI5RowControls", "SDUI5RowControls")
	SDUI5RowControls.ParentID = "SDUI5Container1"
	SDUI5RowControls.GridCols = "1"
	SDUI5RowControls.GridColsMd = "3"
	SDUI5RowControls.Gap = "4"
	BANano.Await(SDUI5RowControls.AddComponent)
	
	' Theme Selector
	SDUI5ColTheme.Initialize(Me, "SDUI5ColTheme", "SDUI5ColTheme")
	SDUI5ColTheme.ParentID = "SDUI5RowControls"
	SDUI5ColTheme.SizeMd = "4"
	BANano.Await(SDUI5ColTheme.AddComponent)
	
	cboTheme.Initialize(Me, "cboTheme", "cboTheme")
	cboTheme.ParentID = "SDUI5ColTheme"
	cboTheme.Label = "Calendar Theme"
	cboTheme.InputType = "legend"
	cboTheme.Options = "default:Default (Teal / Slate);blue:Midnight Blue;coral:Orange Coral;navy:Royal Navy"
	cboTheme.Value = "default"
	cboTheme.Width = "full"
	BANano.Await(cboTheme.AddComponent)
	cboTheme.SetValue("default")
	
	' Language Selector
	SDUI5ColLanguage.Initialize(Me, "SDUI5ColLanguage", "SDUI5ColLanguage")
	SDUI5ColLanguage.ParentID = "SDUI5RowControls"
	SDUI5ColLanguage.SizeMd = "4"
	BANano.Await(SDUI5ColLanguage.AddComponent)
	
	cboLanguage.Initialize(Me, "cboLanguage", "cboLanguage")
	cboLanguage.ParentID = "SDUI5ColLanguage"
	cboLanguage.Label = "Calendar Language (i18n)"
	cboLanguage.InputType = "legend"
	cboLanguage.Options = "en:English;es:Español;de:Deutsch;pt:Português;fr:Français;nl:Nederlands"
	cboLanguage.Value = "en"
	cboLanguage.Width = "full"
	BANano.Await(cboLanguage.AddComponent)
	cboLanguage.SetValue("en")
	
	' First Day of Week Selector
	SDUI5ColFirstDay.Initialize(Me, "SDUI5ColFirstDay", "SDUI5ColFirstDay")
	SDUI5ColFirstDay.ParentID = "SDUI5RowControls"
	SDUI5ColFirstDay.SizeMd = "4"
	BANano.Await(SDUI5ColFirstDay.AddComponent)
	
	cboFirstDay.Initialize(Me, "cboFirstDay", "cboFirstDay")
	cboFirstDay.ParentID = "SDUI5ColFirstDay"
	cboFirstDay.Label = "First Day Of Week"
	cboFirstDay.InputType = "legend"
	cboFirstDay.Options = "0:Sunday (Default);1:Monday"
	cboFirstDay.Value = "0"
	cboFirstDay.Width = "full"
	BANano.Await(cboFirstDay.AddComponent)
	cboFirstDay.SetValue("0")
	
	' 4. Presets and Action Buttons Row
	SDUI5RowActions.Initialize(Me, "SDUI5RowActions", "SDUI5RowActions")
	SDUI5RowActions.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowActions.AddComponent)
	
	SDUI5ColActions.Initialize(Me, "SDUI5ColActions", "SDUI5ColActions")
	SDUI5ColActions.ParentID = "SDUI5RowActions"
	SDUI5ColActions.Size = "12"
	SDUI5ColActions.Classes = "flex flex-wrap items-center gap-2"
	BANano.Await(SDUI5ColActions.AddComponent)
	
	btnPresetStock.Initialize(Me, "btnPresetStock", "btnPresetStock")
	btnPresetStock.ParentID = "SDUI5ColActions"
	btnPresetStock.Color = "primary"
	btnPresetStock.Size = "sm"
	btnPresetStock.Text = "Preset: Retail Audits"
	BANano.Await(btnPresetStock.AddComponent)
	
	btnPresetProject.Initialize(Me, "btnPresetProject", "btnPresetProject")
	btnPresetProject.ParentID = "SDUI5ColActions"
	btnPresetProject.Color = "secondary"
	btnPresetProject.Size = "sm"
	btnPresetProject.Text = "Preset: Agile Milestones"
	BANano.Await(btnPresetProject.AddComponent)
	
	btnAddEvent.Initialize(Me, "btnAddEvent", "btnAddEvent")
	btnAddEvent.ParentID = "SDUI5ColActions"
	btnAddEvent.Color = "success"
	btnAddEvent.Size = "sm"
	btnAddEvent.Text = "+ Add Dynamic Event"
	BANano.Await(btnAddEvent.AddComponent)
	
	btnToggleSidebar.Initialize(Me, "btnToggleSidebar", "btnToggleSidebar")
	btnToggleSidebar.ParentID = "SDUI5ColActions"
	btnToggleSidebar.Color = "neutral"
	btnToggleSidebar.Size = "sm"
	btnToggleSidebar.Outline = True
	btnToggleSidebar.Text = "Toggle Sidebar"
	BANano.Await(btnToggleSidebar.AddComponent)
	
	btnToggleEventList.Initialize(Me, "btnToggleEventList", "btnToggleEventList")
	btnToggleEventList.ParentID = "SDUI5ColActions"
	btnToggleEventList.Color = "neutral"
	btnToggleEventList.Size = "sm"
	btnToggleEventList.Outline = True
	btnToggleEventList.Text = "Toggle Event List"
	BANano.Await(btnToggleEventList.AddComponent)
	
	btnClearEvents.Initialize(Me, "btnClearEvents", "btnClearEvents")
	btnClearEvents.ParentID = "SDUI5ColActions"
	btnClearEvents.Color = "warning"
	btnClearEvents.Size = "sm"
	btnClearEvents.Outline = True
	btnClearEvents.Text = "Clear Events"
	BANano.Await(btnClearEvents.AddComponent)
	
	btnDestroy.Initialize(Me, "btnDestroy", "btnDestroy")
	btnDestroy.ParentID = "SDUI5ColActions"
	btnDestroy.Color = "error"
	btnDestroy.Size = "sm"
	btnDestroy.Outline = True
	btnDestroy.Text = "Destroy Instance"
	BANano.Await(btnDestroy.AddComponent)
	
	' 5. Programmatic Date Navigation Row
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
	
	btnJumpChristmas.Initialize(Me, "btnJumpChristmas", "btnJumpChristmas")
	btnJumpChristmas.ParentID = "SDUI5ColNav"
	btnJumpChristmas.Color = "accent"
	btnJumpChristmas.Size = "sm"
	btnJumpChristmas.Text = "Jump to Christmas (Cross-Month Test)"
	BANano.Await(btnJumpChristmas.AddComponent)
	
	' 6. Live Activity / Status Alert Row
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
	alertStatus.Text = "EvoCalendar initialized with native UmbrellaJS adapter. Click days, events, or use controls above to test callbacks."
	alertStatus.Width = "full"
	BANano.Await(alertStatus.AddComponent)
	
	' 7. EvoCalendar Component Row
	SDUI5RowCalendar.Initialize(Me, "SDUI5RowCalendar", "SDUI5RowCalendar")
	SDUI5RowCalendar.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowCalendar.AddComponent)
	
	SDUI5ColCalendar.Initialize(Me, "SDUI5ColCalendar", "SDUI5ColCalendar")
	SDUI5ColCalendar.ParentID = "SDUI5RowCalendar"
	SDUI5ColCalendar.Size = "12"
	SDUI5ColCalendar.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5ColCalendar.Classes = "bg-base-100 rounded-box border border-base-content/10 shadow-sm"
	BANano.Await(SDUI5ColCalendar.AddComponent)
	
	InitCalendar
	
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
	cardGuide.Title = "SDUI5EvoCalendar Technical Specifications & Capabilities"
	cardGuide.Content = $"• Zero-jQuery Engine: Adapted to run seamlessly on BANano's embedded UmbrellaJS library (u) with automatic CustomEvent parameter forwarding.
• Cross-Month Auto Navigation: Calling selectDate(targetDate) automatically detects out-of-view months/years and triggers selectYear() and selectMonth() before highlighting.
• Responsive Drawer Management: Initial width checks prevent dual-panel open states on tablets and mobile viewports. Clicking calendar-inner automatically closes active drawers.
• Custom Data Payloads & Badges: Use AddEventWithData() to embed arbitrary Maps (e.g. database keys, status flags, user profiles) which are delivered cleanly to selectEvent.
• Dynamic Lifecycle: Includes AddCalendarEvent(), RemoveCalendarEvent(), ToggleSidebar(), ToggleEventList(), and full Destroy() cleanup."$
	cardGuide.Border = True
	cardGuide.Shadow = "sm"
	cardGuide.Width = "full"
	BANano.Await(cardGuide.AddComponent)
End Sub

Private Sub InitCalendar
	evo.Initialize(Me, "evo", "evo")
	evo.ParentID = "SDUI5ColCalendar"
	evo.Theme = sCurrentTheme
	evo.Language = sCurrentLanguage
	evo.FirstDayOfWeek = sCurrentFirstDay
	evo.Format = "yyyy-mm-dd"
	evo.TitleFormat = "MM yyyy"
	evo.EventHeaderFormat = "MM d, yyyy"
	evo.TodayHighlight = True
	evo.SidebarDisplayDefault = True
	evo.EventDisplayDefault = True
	evo.SidebarToggler = True
	evo.EventListToggler = True
	'evo.Width = "full"
	BANano.Await(evo.AddComponent)
	
	LoadStocktakePreset
End Sub

Private Sub LoadStocktakePreset
	evo.Clear
	Dim y As String = app.UI.YearNow
	Dim m As String = app.UI.MonthNow
	
	' 1. Audit Event with Badge and Payload
	Dim d1 As Map = CreateMap("store": "Cape Town Distribution Center", "manager": "Sarah Jenkins", "skus": 1420)
	evo.AddEventWithData("evt-audit-1", "Full Distribution Audit", "AUDIT", $"${y}-${m}-08"$, "", "Comprehensive physical verification and serial scanning.", "event", "#E95420", False, d1)
	
	' 2. Cycle Count Event
	Dim d2 As Map = CreateMap("store": "Johannesburg Superstore", "manager": "David Ndlovu", "aisle": "Electronics B")
	evo.AddEventWithData("evt-cycle-1", "Weekly Cycle Count (A-Items)", "CYCLE", $"${y}-${m}-15"$, "", "High-value perpetual inventory verification.", "holiday", "#77216F", False, d2)
	
	' 3. Scheduled Maintenance
	Dim d3 As Map = CreateMap("service": "Cloud PocketBase Sync", "duration": "45m")
	evo.AddEventWithData("evt-maint-1", "ERP Database Sync Window", "SYSTEM", $"${y}-${m}-22"$, "", "Scheduled maintenance and ledger reconciliation.", "birthday", "#007AA6", False, d3)
	
	' 4. Multi-day Stock Count
	evo.AddEvent("evt-annual-1", "Regional Hub Year-End Reconciliation", "CERTIFIED", $"${y}-${m}-27"$, $"${y}-${m}-29"$, "Multi-facility simultaneous reconciliation.", "event", "#10b981", True)
	
	evo.Refresh
	UpdateStatus("Loaded Preset: Retail & Inventory Audits (with badges and metadata payloads).", "info")
End Sub

Private Sub LoadProjectMilestonesPreset
	evo.Clear
	Dim y As String = app.UI.YearNow
	Dim m As String = app.UI.MonthNow
	
	evo.AddEventWithData("prj-1", "Sprint 42 Release", "RELEASE", $"${y}-${m}-05"$, "", "Production deployment of version 5.70 with zero-jQuery EvoCalendar.", "event", "#6366f1", False, CreateMap("version": "5.70", "lead": "Antigravity"))
	evo.AddEventWithData("prj-2", "UI/UX Accessibility Review", "REVIEW", $"${y}-${m}-12"$, "", "WCAG 2.2 AA conformance and mobile contrast checks.", "holiday", "#ec4899", False, CreateMap("auditor": "Design System Lead"))
	evo.AddEventWithData("prj-3", "Quarterly Roadmap Review", "STRATEGY", $"${y}-${m}-19"$, "", "Executive milestone review and resource allocation.", "birthday", "#f59e0b", False, CreateMap("room": "Boardroom Alpha"))
	evo.AddEventWithData("prj-4", "Hackathon & Innovation Day", "INTERNAL", $"${y}-${m}-26"$, "", "All-hands engineering hackathon and prototype presentations.", "event", "#14b8a6", True, CreateMap("teams": 8))
	
	evo.Refresh
	UpdateStatus("Loaded Preset: Agile Milestones & Engineering Roadmap.", "info")
End Sub

' ----------------------------------------------------
' Controls Event Handlers
' ----------------------------------------------------

Private Sub cboTheme_Change (item As String)
	sCurrentTheme = item
	evo.Theme = sCurrentTheme
	evo.Refresh
	UpdateStatus($"Calendar theme updated to: ${sCurrentTheme}"$, "info")
End Sub

Private Sub cboLanguage_Change (item As String)
	sCurrentLanguage = item
	evo.Language = sCurrentLanguage
	evo.Refresh
	UpdateStatus($"Calendar language updated to: ${sCurrentLanguage}"$, "info")
End Sub

Private Sub cboFirstDay_Change (item As String)
	sCurrentFirstDay = item
	evo.FirstDayOfWeek = sCurrentFirstDay
	evo.Refresh
	Dim dayName As String = "Sunday"
	If item = "1" Then dayName = "Monday"
	UpdateStatus($"First day of week set to: ${dayName} (${item})"$, "info")
End Sub

' ----------------------------------------------------
' Preset and Action Buttons
' ----------------------------------------------------

Private Sub btnPresetStock_Click (e As BANanoEvent)
	LoadStocktakePreset
End Sub

Private Sub btnPresetProject_Click (e As BANanoEvent)
	LoadProjectMilestonesPreset
End Sub

Private Sub btnAddEvent_Click (e As BANanoEvent)
	eventCounter = eventCounter + 1
	Dim activeD As String = evo.ActiveDate
	If activeD = "" Then activeD = app.UI.DateNow
	
	Dim newEvt As Map = CreateMap()
	newEvt.Put("id", "evt-" & eventCounter)
	newEvt.Put("name", "Ad-Hoc Inspection #" & eventCounter)
	newEvt.Put("badge", "NEW")
	newEvt.Put("description", $"Quick event scheduled on ${activeD} via AddCalendarEvent()."$)
	newEvt.Put("date", activeD)
	newEvt.Put("type", "event")
	newEvt.Put("color", "#059669")
	newEvt.Put("created_by", "Demo User")
	
	evo.AddCalendarEvent(newEvt)
	UpdateStatus($"Added dynamic event 'Ad-Hoc Inspection #${eventCounter}' on ${activeD} without page reload!"$, "success")
End Sub

Private Sub btnToggleSidebar_Click (e As BANanoEvent)
	bSidebarOpen = Not(bSidebarOpen)
	evo.ToggleSidebar(bSidebarOpen)
	UpdateStatus($"Toggled calendar sidebar: ${bSidebarOpen}"$, "info")
End Sub

Private Sub btnToggleEventList_Click (e As BANanoEvent)
	bEventListOpen = Not(bEventListOpen)
	evo.ToggleEventList(bEventListOpen)
	UpdateStatus($"Toggled calendar event list: ${bEventListOpen}"$, "info")
End Sub

Private Sub btnClearEvents_Click (e As BANanoEvent)
	evo.Clear
	evo.Refresh
	UpdateStatus("Cleared all calendar events.", "warning")
End Sub

Private Sub btnDestroy_Click (e As BANanoEvent)
	evo.Destroy
	UpdateStatus("Calendar destroyed and DOM elements cleared. Click any preset button to re-initialize.", "error")
End Sub

' ----------------------------------------------------
' Programmatic Date Navigation
' ----------------------------------------------------

Private Sub btnPrevYear_Click (e As BANanoEvent)
	evo.selectYear("prev")
	UpdateStatus("Navigated to Previous Year.", "info")
End Sub

Private Sub btnNextYear_Click (e As BANanoEvent)
	evo.selectYear("next")
	UpdateStatus("Navigated to Next Year.", "info")
End Sub

Private Sub btnPrevMonth_Click (e As BANanoEvent)
	Dim curDate As String = evo.ActiveDate
	If curDate = "" Then curDate = app.UI.DateNow
	Dim prevD As String = app.UI.DateAdd(curDate, -30)
	evo.selectDate(prevD)
	UpdateStatus($"Navigated to: ${prevD}"$, "info")
End Sub

Private Sub btnToday_Click (e As BANanoEvent)
	Dim sToday As String = app.UI.DateNow
	evo.selectDate(sToday)
	UpdateStatus($"Jumped to Today: ${sToday}"$, "success")
End Sub

Private Sub btnNextMonth_Click (e As BANanoEvent)
	Dim curDate As String = evo.ActiveDate
	If curDate = "" Then curDate = app.UI.DateNow
	Dim nextD As String = app.UI.DateAdd(curDate, 30)
	evo.selectDate(nextD)
	UpdateStatus($"Navigated to: ${nextD}"$, "info")
End Sub

Private Sub btnJumpChristmas_Click (e As BANanoEvent)
	Dim xDate As String = app.UI.YearNow & "-12-25"
	evo.selectDate(xDate)
	UpdateStatus($"Jumped to Christmas (${xDate}) - cross-month and cross-year auto-navigation verified!"$, "warning")
End Sub

' ----------------------------------------------------
' EvoCalendar Component Event Callbacks
' ----------------------------------------------------

Private Sub evo_selectDate (event As Map, newDate As Object)
	Log("evo_selectDate")
	Log(newDate)
	UpdateStatus($"[selectDate] Active date selected: ${newDate}"$, "info")
End Sub

Private Sub evo_selectEvent (event As Map, newEvent As Object)
	Log("evo_selectEvent")
	Log(newEvent)
	Dim evm As Map = newEvent
	Dim eName As String = evm.GetDefault("name", "Event")
	Dim eBadge As String = evm.GetDefault("badge", "")
	Dim eDesc As String = evm.GetDefault("description", "")
	Dim badgeTxt As String = ""
	If eBadge <> "" Then badgeTxt = $" [${eBadge}]"$
	UpdateStatus($"[selectEvent] Clicked event: '${eName}'${badgeTxt} - ${eDesc}"$, "success")
	
	' Show SweetAlert if metadata is present
	If evm.ContainsKey("store") Then
		Dim storeName As String = evm.Get("store")
		Dim manager As String = evm.GetDefault("manager", "N/A")
		app.ShowSwalSuccess($"<b>${eName}</b><br>Store: ${storeName}<br>Manager: ${manager}"$)
	else if evm.ContainsKey("version") Then
		Dim ver As String = evm.Get("version")
		app.ShowSwalInfo($"<b>${eName}</b><br>Version: ${ver}<br>${eDesc}"$)
	End If
End Sub

Private Sub evo_selectMonth (activeMonth As Object, monthIndex As Int)
	Log("evo_selectMonth")
	UpdateStatus($"[selectMonth] Active month: ${activeMonth} (Index: ${monthIndex})"$, "info")
End Sub

Private Sub evo_selectYear (activeYear As Int)
	Log("evo_selectYear")
	UpdateStatus($"[selectYear] Active year: ${activeYear}"$, "info")
End Sub

Private Sub evo_destroy (event As Map)
	Log("evo_destroy")
	UpdateStatus("[destroy] Calendar instance was cleanly destroyed.", "error")
End Sub

' Helper to update status banner
Private Sub UpdateStatus(msg As String, alertColor As String)
	alertStatus.Text = msg
	alertStatus.Color = alertColor
	alertStatus.Visible = True
End Sub
