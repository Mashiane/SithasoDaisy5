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
	
	' 1. Header Hero Card
	Private SDUI5RowHeader As SDUI5Row					'ignore
	Private SDUI5ColHeader As SDUI5Column				'ignore
	Private cardOverview As SDUI5Card					'ignore
	
	' 2. Interactive Gantt Row & Controls
	Private SDUI5RowInteractiveHeader As SDUI5Row		'ignore
	Private SDUI5ColInteractiveHeader As SDUI5Column	'ignore
	Private cardInteractiveTitle As SDUI5Card			'ignore
	Private SDUI5RowInteractiveControls As SDUI5Row		'ignore
	Private SDUI5ColInteractiveControls As SDUI5Column	'ignore
	Private btnModeDay As SDUI5Button					'ignore
	Private btnModeWeek As SDUI5Button					'ignore
	Private btnModeMonth As SDUI5Button					'ignore
	Private btnModeYear As SDUI5Button					'ignore
	Private btnModeHalfDay As SDUI5Button				'ignore
	Private btnToday As SDUI5Button						'ignore
	Private btnAddTask As SDUI5Button					'ignore
	Private btnUpdateTask As SDUI5Button				'ignore
	Private btnDeleteTask As SDUI5Button				'ignore
	
	' Live Event Status Alert
	Private SDUI5RowAlert As SDUI5Row					'ignore
	Private SDUI5ColAlert As SDUI5Column				'ignore
	Private alertStatus As SDUI5Alert					'ignore
	
	' Gantt 1: Interactive Instance
	Private SDUI5RowGantt1 As SDUI5Row					'ignore
	Private SDUI5ColGantt1 As SDUI5Column				'ignore
	Private ganttInteractive As SDUI5FrappeGantt		'ignore
	
	' Gantt 2: Expected Progress & Non-Working Shading
	Private SDUI5RowProgressHeader As SDUI5Row			'ignore
	Private SDUI5ColProgressHeader As SDUI5Column		'ignore
	Private cardProgressTitle As SDUI5Card				'ignore
	Private SDUI5RowGantt2 As SDUI5Row					'ignore
	Private SDUI5ColGantt2 As SDUI5Column				'ignore
	Private ganttProgress As SDUI5FrappeGantt			'ignore
	
	' Gantt 3: Task-Level ID Styling & DaisyUI Palette
	Private SDUI5RowStylingHeader As SDUI5Row			'ignore
	Private SDUI5ColStylingHeader As SDUI5Column		'ignore
	Private cardStylingTitle As SDUI5Card				'ignore
	Private SDUI5RowGantt3 As SDUI5Row					'ignore
	Private SDUI5ColGantt3 As SDUI5Column				'ignore
	Private ganttStyling As SDUI5FrappeGantt			'ignore
	
	' Gantt 4: Read-Only Executive Roadmap
	Private SDUI5RowReadonlyHeader As SDUI5Row			'ignore
	Private SDUI5ColReadonlyHeader As SDUI5Column		'ignore
	Private cardReadonlyTitle As SDUI5Card				'ignore
	Private SDUI5RowGantt4 As SDUI5Row					'ignore
	Private SDUI5ColGantt4 As SDUI5Column				'ignore
	Private ganttReadonly As SDUI5FrappeGantt			'ignore
	
	' Reference Guide Card
	Private SDUI5RowGuide As SDUI5Row					'ignore
	Private SDUI5ColGuide As SDUI5Column				'ignore
	Private cardGuide As SDUI5Card						'ignore
	
	Private taskCounter As Int = 10
End Sub

Public Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesFrappeGantt)
	BANano.Await(app.ClearPageView)
	pgIndex.UpdateTitle("Frappe Gantt")
	
	' 1. Main Container
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.Classes = "mx-auto space-y-6"
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
	cardOverview.Title = "Frappe Gantt - Modern Interactive SVG Gantt Chart (v1.2.2)"
	cardOverview.Content = "A powerful, responsive SVG Gantt chart component for SithasoDaisy5. Features dragging, resizing, dependency cascading, live progress editing, expected progress tracking, non-working days hatching, task thumbnails, localized tooltips, multiple view modes (Hour, Day, Week, Month, Year), and scoped per-instance styling."
	cardOverview.Border = True
	cardOverview.Shadow = "sm"
	cardOverview.Width = "full"
	BANano.Await(cardOverview.AddComponent)
	
	' =========================================================================
	' SECTION 1: Interactive Project Timeline & Dynamic Controls
	' =========================================================================
	SDUI5RowInteractiveHeader.Initialize(Me, "SDUI5RowInteractiveHeader", "SDUI5RowInteractiveHeader")
	SDUI5RowInteractiveHeader.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowInteractiveHeader.AddComponent)
	
	SDUI5ColInteractiveHeader.Initialize(Me, "SDUI5ColInteractiveHeader", "SDUI5ColInteractiveHeader")
	SDUI5ColInteractiveHeader.ParentID = "SDUI5RowInteractiveHeader"
	SDUI5ColInteractiveHeader.Size = "12"
	BANano.Await(SDUI5ColInteractiveHeader.AddComponent)
	
	cardInteractiveTitle.Initialize(Me, "cardInteractiveTitle", "cardInteractiveTitle")
	cardInteractiveTitle.ParentID = "SDUI5ColInteractiveHeader"
	cardInteractiveTitle.Title = "1. Interactive Project Timeline & View Modes"
	cardInteractiveTitle.Content = "Drag tasks to change dates, drag the right edge to change duration, or drag the circle handle to update progress. Upstream shifts automatically cascade through dependent tasks. Click view mode buttons below to switch perspectives."
	cardInteractiveTitle.Border = True
	cardInteractiveTitle.Shadow = "sm"
	cardInteractiveTitle.Width = "full"
	BANano.Await(cardInteractiveTitle.AddComponent)
	
	' Navigation Toolbar Controls
	SDUI5RowInteractiveControls.Initialize(Me, "SDUI5RowInteractiveControls", "SDUI5RowInteractiveControls")
	SDUI5RowInteractiveControls.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowInteractiveControls.AddComponent)
	
	SDUI5ColInteractiveControls.Initialize(Me, "SDUI5ColInteractiveControls", "SDUI5ColInteractiveControls")
	SDUI5ColInteractiveControls.ParentID = "SDUI5RowInteractiveControls"
	SDUI5ColInteractiveControls.Size = "12"
	SDUI5ColInteractiveControls.Classes = "flex flex-wrap items-center gap-2"
	BANano.Await(SDUI5ColInteractiveControls.AddComponent)
	
	btnModeDay.Initialize(Me, "btnModeDay", "btnModeDay")
	btnModeDay.ParentID = "SDUI5ColInteractiveControls"
	btnModeDay.Text = "Day Mode"
	btnModeDay.Color = "primary"
	btnModeDay.Size = "sm"
	BANano.Await(btnModeDay.AddComponent)
	
	btnModeWeek.Initialize(Me, "btnModeWeek", "btnModeWeek")
	btnModeWeek.ParentID = "SDUI5ColInteractiveControls"
	btnModeWeek.Text = "Week Mode"
	btnModeWeek.Color = "primary"
	btnModeWeek.Outline = True
	btnModeWeek.Size = "sm"
	BANano.Await(btnModeWeek.AddComponent)
	
	btnModeMonth.Initialize(Me, "btnModeMonth", "btnModeMonth")
	btnModeMonth.ParentID = "SDUI5ColInteractiveControls"
	btnModeMonth.Text = "Month Mode"
	btnModeMonth.Color = "primary"
	btnModeMonth.Outline = True
	btnModeMonth.Size = "sm"
	BANano.Await(btnModeMonth.AddComponent)
	
	btnModeYear.Initialize(Me, "btnModeYear", "btnModeYear")
	btnModeYear.ParentID = "SDUI5ColInteractiveControls"
	btnModeYear.Text = "Year Mode"
	btnModeYear.Color = "primary"
	btnModeYear.Outline = True
	btnModeYear.Size = "sm"
	BANano.Await(btnModeYear.AddComponent)
	
	btnModeHalfDay.Initialize(Me, "btnModeHalfDay", "btnModeHalfDay")
	btnModeHalfDay.ParentID = "SDUI5ColInteractiveControls"
	btnModeHalfDay.Text = "Half Day Mode"
	btnModeHalfDay.Color = "primary"
	btnModeHalfDay.Outline = True
	btnModeHalfDay.Size = "sm"
	BANano.Await(btnModeHalfDay.AddComponent)
	
	btnToday.Initialize(Me, "btnToday", "btnToday")
	btnToday.ParentID = "SDUI5ColInteractiveControls"
	btnToday.Text = "Scroll To Today"
	btnToday.Color = "accent"
	btnToday.Size = "sm"
	BANano.Await(btnToday.AddComponent)
	
	btnAddTask.Initialize(Me, "btnAddTask", "btnAddTask")
	btnAddTask.ParentID = "SDUI5ColInteractiveControls"
	btnAddTask.Text = "+ Add Task Dynamically"
	btnAddTask.Color = "success"
	btnAddTask.Size = "sm"
	BANano.Await(btnAddTask.AddComponent)
	
	btnUpdateTask.Initialize(Me, "btnUpdateTask", "btnUpdateTask")
	btnUpdateTask.ParentID = "SDUI5ColInteractiveControls"
	btnUpdateTask.Text = "Update Sprint 1 Progress"
	btnUpdateTask.Color = "warning"
	btnUpdateTask.Size = "sm"
	BANano.Await(btnUpdateTask.AddComponent)
	
	btnDeleteTask.Initialize(Me, "btnDeleteTask", "btnDeleteTask")
	btnDeleteTask.ParentID = "SDUI5ColInteractiveControls"
	btnDeleteTask.Text = "Delete Final Polish"
	btnDeleteTask.Color = "error"
	btnDeleteTask.Outline = True
	btnDeleteTask.Size = "sm"
	BANano.Await(btnDeleteTask.AddComponent)
	
	' Live Status / Callback Alert
	SDUI5RowAlert.Initialize(Me, "SDUI5RowAlert", "SDUI5RowAlert")
	SDUI5RowAlert.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowAlert.AddComponent)
	
	SDUI5ColAlert.Initialize(Me, "SDUI5ColAlert", "SDUI5ColAlert")
	SDUI5ColAlert.ParentID = "SDUI5RowAlert"
	SDUI5ColAlert.Size = "12"
	BANano.Await(SDUI5ColAlert.AddComponent)
	
	alertStatus.Initialize(Me, "alertStatus", "alertStatus")
	alertStatus.ParentID = "SDUI5ColAlert"
	alertStatus.Color = "info"
	alertStatus.Soft = True
	alertStatus.Title = "Live Gantt Event Logger"
	alertStatus.Text = "Interact with the timeline bars above (drag dates, edit progress, or click tasks) to inspect live dispatched events."
	alertStatus.Width = "full"
	BANano.Await(alertStatus.AddComponent)
	
	' Mount Gantt 1 Container
	SDUI5RowGantt1.Initialize(Me, "SDUI5RowGantt1", "SDUI5RowGantt1")
	SDUI5RowGantt1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowGantt1.AddComponent)
	
	SDUI5ColGantt1.Initialize(Me, "SDUI5ColGantt1", "SDUI5ColGantt1")
	SDUI5ColGantt1.ParentID = "SDUI5RowGantt1"
	SDUI5ColGantt1.Size = "12"
	SDUI5ColGantt1.Classes = "bg-base-100 rounded-box border border-base-content/10 p-4 shadow-sm"
	BANano.Await(SDUI5ColGantt1.AddComponent)
	
	ganttInteractive.Initialize(Me, "ganttInteractive", "ganttInteractive")
	ganttInteractive.ParentID = "SDUI5ColGantt1"
	ganttInteractive.ViewMode = "Day"
	ganttInteractive.ViewModes = "Hour;Quarter Day;Half Day;Day;Week;Month;Year"
	ganttInteractive.ViewModeSelect = True
	ganttInteractive.TodayButton = True
	ganttInteractive.Lines = "both"
	ganttInteractive.MoveDependencies = True
	ganttInteractive.Height = "360px"
	ganttInteractive.Width = "100%"
	BANano.Await(ganttInteractive.AddComponent)
	
	' Populate Gantt 1 Tasks (anchored around today)
	Dim dToday As String = app.UI.DateNow
	ganttInteractive.ClearTasks
	ganttInteractive.AddTask3("task-req", "Requirements & Scoping", "2026-11-01", "2026-11-05", 100, "", Null, "Initial discovery & wireframing", "", "", "")
	ganttInteractive.AddTask3("task-arch", "Architecture Design", "2026-11-05", "2026-11-10", 90, "", Array("task-req"), "Database schemas & contracts", "", "", "")
	ganttInteractive.AddTask3("task-core", "Core Backend API", "2026-11-10", "2026-11-20", 65, "", Array("task-arch"), "REST endpoints & authentication", "", "", "")
	ganttInteractive.AddTask3("task-ui", "Frontend Dashboard", "2026-11-14", "2026-11-26", 40, "", Array("task-arch"), "DaisyUI components & state", "", "", "")
	ganttInteractive.AddTask3("task-qa", "Quality Assurance", "2026-11-24", "2026-12-04", 15, "", Array("task-core", "task-ui"), "End-to-end regression test suite", "", "", "")
	ganttInteractive.AddTask3("task-rel", "Production Release", "2026-12-04", "2026-12-08", 0, "", Array("task-qa"), "Staged canary deployment", "", "", "")
	ganttInteractive.Refresh
	
	' =========================================================================
	' SECTION 2: Expected Progress & Schedule Tracking (Non-Working Shading)
	' =========================================================================
	SDUI5RowProgressHeader.Initialize(Me, "SDUI5RowProgressHeader", "SDUI5RowProgressHeader")
	SDUI5RowProgressHeader.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowProgressHeader.AddComponent)
	
	SDUI5ColProgressHeader.Initialize(Me, "SDUI5ColProgressHeader", "SDUI5ColProgressHeader")
	SDUI5ColProgressHeader.ParentID = "SDUI5RowProgressHeader"
	SDUI5ColProgressHeader.Size = "12"
	BANano.Await(SDUI5ColProgressHeader.AddComponent)
	
	cardProgressTitle.Initialize(Me, "cardProgressTitle", "cardProgressTitle")
	cardProgressTitle.ParentID = "SDUI5ColProgressHeader"
	cardProgressTitle.Title = "2. Schedule Tracking & Expected Progress (with Weekend Shading)"
	cardProgressTitle.Content = "Displays planned vs actual progress directly on the task bars. The soft underlay bar represents the target expected progress milestone, while the solid inner bar represents actual completion. Weekends are automatically hatched with diagonal stripes as non-working days, and holidays feature custom interactive tooltips."
	cardProgressTitle.Border = True
	cardProgressTitle.Shadow = "sm"
	cardProgressTitle.Width = "full"
	BANano.Await(cardProgressTitle.AddComponent)
	
	SDUI5RowGantt2.Initialize(Me, "SDUI5RowGantt2", "SDUI5RowGantt2")
	SDUI5RowGantt2.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowGantt2.AddComponent)
	
	SDUI5ColGantt2.Initialize(Me, "SDUI5ColGantt2", "SDUI5ColGantt2")
	SDUI5ColGantt2.ParentID = "SDUI5RowGantt2"
	SDUI5ColGantt2.Size = "12"
	SDUI5ColGantt2.Classes = "bg-base-100 rounded-box border border-base-content/10 p-4 shadow-sm"
	BANano.Await(SDUI5ColGantt2.AddComponent)
	
	ganttProgress.Initialize(Me, "ganttProgress", "ganttProgress")
	ganttProgress.ParentID = "SDUI5ColGantt2"
	ganttProgress.ViewMode = "Day"
	ganttProgress.ShowExpectedProgress = True
	ganttProgress.IgnoreWeekends = True
	ganttProgress.TodayButton = True
	ganttProgress.Lines = "both"
	ganttProgress.Height = "340px"
	ganttProgress.Width = "100%"
	BANano.Await(ganttProgress.AddComponent)
	
	' Configure holidays and theme colors
	ganttProgress.SetExpectedProgressColor("#f472b6")
	ganttProgress.SetWeekendHighlightColor("rgba(148, 163, 184, 0.12)")
	ganttProgress.AddHoliday("2026-11-20", "Release Code Freeze", "rgba(239, 68, 68, 0.15)")
	ganttProgress.AddHoliday("2026-11-27", "Thanksgiving Holiday", "rgba(245, 158, 11, 0.15)")
	
	' Tasks demonstrating ahead, behind, and on-track milestones
	ganttProgress.ClearTasks
	ganttProgress.AddTask4("ep-ahead", "Phase 1: Foundation (Ahead of Schedule)", "2026-11-05", "2026-11-18", 85, 60.0, "", Null, "Actual progress exceeds target", "", "", "")
	ganttProgress.AddTask4("ep-ontrack", "Phase 2: Integration (On Track)", "2026-11-12", "2026-11-26", 55, 55.0, "", Array("ep-ahead"), "Tracking exactly on expected schedule", "", "", "")
	ganttProgress.AddTask4("ep-behind", "Phase 3: Migration (Behind Schedule)", "2026-11-18", "2026-12-05", 25, 70.0, "", Array("ep-ontrack"), "Variance flag: actual progress is behind target", "", "", "")
	ganttProgress.AddTask4("ep-planned", "Phase 4: Security Audit", "2026-12-01", "2026-12-15", 0, 10.0, "", Array("ep-behind"), "Upcoming verification audit", "", "", "")
	ganttProgress.Refresh
	
	' =========================================================================
	' SECTION 3: Task-Level ID Styling & DaisyUI Color Palette
	' =========================================================================
	SDUI5RowStylingHeader.Initialize(Me, "SDUI5RowStylingHeader", "SDUI5RowStylingHeader")
	SDUI5RowStylingHeader.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowStylingHeader.AddComponent)
	
	SDUI5ColStylingHeader.Initialize(Me, "SDUI5ColStylingHeader", "SDUI5ColStylingHeader")
	SDUI5ColStylingHeader.ParentID = "SDUI5RowStylingHeader"
	SDUI5ColStylingHeader.Size = "12"
	BANano.Await(SDUI5ColStylingHeader.AddComponent)
	
	cardStylingTitle.Initialize(Me, "cardStylingTitle", "cardStylingTitle")
	cardStylingTitle.ParentID = "SDUI5ColStylingHeader"
	cardStylingTitle.Title = "3. Custom Task ID Styling & DaisyUI Semantic Palette"
	cardStylingTitle.Content = "Assign distinct styles to individual bars using task IDs (SetTaskColorByID), per-task color properties, assignee avatar thumbnails, and DaisyUI semantic classes (gantt-primary, gantt-secondary, gantt-accent, gantt-success, gantt-warning, gantt-error, gantt-info). Notice each Gantt instance on this page maintains independent styling!"
	cardStylingTitle.Border = True
	cardStylingTitle.Shadow = "sm"
	cardStylingTitle.Width = "full"
	BANano.Await(cardStylingTitle.AddComponent)
	
	SDUI5RowGantt3.Initialize(Me, "SDUI5RowGantt3", "SDUI5RowGantt3")
	SDUI5RowGantt3.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowGantt3.AddComponent)
	
	SDUI5ColGantt3.Initialize(Me, "SDUI5ColGantt3", "SDUI5ColGantt3")
	SDUI5ColGantt3.ParentID = "SDUI5RowGantt3"
	SDUI5ColGantt3.Size = "12"
	SDUI5ColGantt3.Classes = "bg-base-100 rounded-box border border-base-content/10 p-4 shadow-sm"
	BANano.Await(SDUI5ColGantt3.AddComponent)
	
	ganttStyling.Initialize(Me, "ganttStyling", "ganttStyling")
	ganttStyling.ParentID = "SDUI5ColGantt3"
	ganttStyling.ViewMode = "Day"
	ganttStyling.BarCornerRadius = 8
	ganttStyling.ArrowCurve = 8
	ganttStyling.TodayButton = True
	ganttStyling.Height = "360px"
	ganttStyling.Width = "100%"
	BANano.Await(ganttStyling.AddComponent)
	
	' Setup DaisyUI palette classes on this instance
	ganttStyling.AddDaisyUIThemeClasses
	ganttStyling.SetArrowColorWidth("#8b5cf6", "2px")
	
	' Add tasks with DaisyUI custom classes and colors
	ganttStyling.ClearTasks
	ganttStyling.AddTask3("clr-primary", "UI / UX Design", "2026-11-03", "2026-11-12", 90, "gantt-primary", Null, "Styled with DaisyUI Primary theme", "", "", "./assets/avatar.png")
	ganttStyling.AddTask3("clr-secondary", "Brand Identity & Styleguide", "2026-11-07", "2026-11-16", 75, "gantt-secondary", Array("clr-primary"), "Styled with DaisyUI Secondary theme", "", "", "./assets/mashy.jpg")
	ganttStyling.AddTask3("clr-accent", "Interactive Prototypes", "2026-11-14", "2026-11-23", 60, "gantt-accent", Array("clr-secondary"), "Styled with DaisyUI Accent theme", "", "", "")
	ganttStyling.AddTask3("clr-success", "Design Signoff & Approvals", "2026-11-20", "2026-11-28", 100, "gantt-success", Array("clr-accent"), "Styled with DaisyUI Success theme", "", "", "")
	ganttStyling.AddTask3("clr-warning", "Client Review Meeting", "2026-11-26", "2026-12-04", 45, "gantt-warning", Array("clr-success"), "Styled with DaisyUI Warning theme", "", "", "")
	ganttStyling.AddTask3("clr-error", "High Priority Bug Fixes", "2026-11-28", "2026-12-07", 30, "gantt-error", Array("clr-warning"), "Styled with DaisyUI Error theme", "", "", "")
	ganttStyling.Refresh
	
	' Override specific task colors via Task ID
	ganttStyling.SetTaskColorByID("clr-accent", "#06b6d4", "#0891b2", "#ffffff")
	
	' =========================================================================
	' SECTION 4: Read-Only Executive Roadmap & Hover Inspection
	' =========================================================================
	SDUI5RowReadonlyHeader.Initialize(Me, "SDUI5RowReadonlyHeader", "SDUI5RowReadonlyHeader")
	SDUI5RowReadonlyHeader.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowReadonlyHeader.AddComponent)
	
	SDUI5ColReadonlyHeader.Initialize(Me, "SDUI5ColReadonlyHeader", "SDUI5ColReadonlyHeader")
	SDUI5ColReadonlyHeader.ParentID = "SDUI5RowReadonlyHeader"
	SDUI5ColReadonlyHeader.Size = "12"
	BANano.Await(SDUI5ColReadonlyHeader.AddComponent)
	
	cardReadonlyTitle.Initialize(Me, "cardReadonlyTitle", "cardReadonlyTitle")
	cardReadonlyTitle.ParentID = "SDUI5ColReadonlyHeader"
	cardReadonlyTitle.Title = "4. Read-Only Executive Strategic Roadmap"
	cardReadonlyTitle.Content = "A locked, presentation-ready roadmap chart with drag-editing disabled (Readonly: True), Month view mode, horizontal grid lines, and interactive date column hovering (HoverOnDate: True). Perfect for executive summaries and public-facing reports."
	cardReadonlyTitle.Border = True
	cardReadonlyTitle.Shadow = "sm"
	cardReadonlyTitle.Width = "full"
	BANano.Await(cardReadonlyTitle.AddComponent)
	
	SDUI5RowGantt4.Initialize(Me, "SDUI5RowGantt4", "SDUI5RowGantt4")
	SDUI5RowGantt4.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowGantt4.AddComponent)
	
	SDUI5ColGantt4.Initialize(Me, "SDUI5ColGantt4", "SDUI5ColGantt4")
	SDUI5ColGantt4.ParentID = "SDUI5RowGantt4"
	SDUI5ColGantt4.Size = "12"
	SDUI5ColGantt4.Classes = "bg-base-100 rounded-box border border-base-content/10 p-4 shadow-sm"
	BANano.Await(SDUI5ColGantt4.AddComponent)
	
	ganttReadonly.Initialize(Me, "ganttReadonly", "ganttReadonly")
	ganttReadonly.ParentID = "SDUI5ColGantt4"
	ganttReadonly.ViewMode = "Month"
	ganttReadonly.Readonly = True
	ganttReadonly.HoverOnDate = True
	ganttReadonly.Lines = "horizontal"
	ganttReadonly.TodayButton = False
	ganttReadonly.BarHeight = 34
	ganttReadonly.BarCornerRadius = 6
	ganttReadonly.Height = "300px"
	ganttReadonly.Width = "100%"
	BANano.Await(ganttReadonly.AddComponent)
	
	' Populate Multi-Month Strategic Tasks
	ganttReadonly.ClearTasks
	ganttReadonly.AddTask3("strat-q1", "Q1: Discovery & Platform Modernization", "2026-01-01", "2026-03-31", 100, "", Null, "Completed Q1 core initiative", "#10b981", "#059669", "")
	ganttReadonly.AddTask3("strat-q2", "Q2: Microservices & Cloud Infrastructure", "2026-03-15", "2026-06-30", 80, "", Array("strat-q1"), "Ongoing Q2 cloud migration", "#3b82f6", "#2563eb", "")
	ganttReadonly.AddTask3("strat-q3", "Q3: AI Agent & Automation Ecosystem", "2026-06-01", "2026-09-30", 35, "", Array("strat-q2"), "Q3 intelligent agent rollout", "#8b5cf6", "#7c3aed", "")
	ganttReadonly.AddTask3("strat-q4", "Q4: Global Enterprise Expansion", "2026-09-01", "2026-12-31", 0, "", Array("strat-q3"), "Q4 worldwide deployment", "#f59e0b", "#d97706", "")
	ganttReadonly.Refresh
	
	' =========================================================================
	' SECTION 5: Comprehensive API & Capabilities Reference Card
	' =========================================================================
	SDUI5RowGuide.Initialize(Me, "SDUI5RowGuide", "SDUI5RowGuide")
	SDUI5RowGuide.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowGuide.AddComponent)
	
	SDUI5ColGuide.Initialize(Me, "SDUI5ColGuide", "SDUI5ColGuide")
	SDUI5ColGuide.ParentID = "SDUI5RowGuide"
	SDUI5ColGuide.Size = "12"
	BANano.Await(SDUI5ColGuide.AddComponent)
	
	cardGuide.Initialize(Me, "cardGuide", "cardGuide")
	cardGuide.ParentID = "SDUI5ColGuide"
	cardGuide.Title = "Component Highlights & Best Practices"
	cardGuide.Content = "• Zero jQuery: Powered by Frappe Gantt v1.2.2 UMD bundle with full native dark mode support (html[data-theme=dark]).<br/>" & _
		"• Scoped Style Isolation: All injected CSS rules and theme variables are isolated per instance ID (#mName), allowing multiple Gantts on one screen.<br/>" & _
		"• 50 Designer Properties: Configure layout, timeline, view modes, permissions, grid lines, and colors entirely within the visual designer.<br/>" & _
		"• Complete Event Hooks: Click, DoubleClick, DateChange, ProgressChange, ViewChange, Hover, and DateClick callbacks supported.<br/>" & _
		"• Dynamic Task Management: AddTask, UpdateTask, DeleteTask, and SetTaskColorByID update the live SVG chart instantly."
	cardGuide.Border = True
	cardGuide.Shadow = "sm"
	cardGuide.Width = "full"
	BANano.Await(cardGuide.AddComponent)
End Sub

' =============================================================================
' EVENT HANDLERS - INTERACTIVE GANTT CONTROLS
' =============================================================================

Private Sub btnModeDay_Click (e As BANanoEvent)
	ganttInteractive.DayMode
	app.ShowToastInfo("View switched to Day mode")
End Sub

Private Sub btnModeWeek_Click (e As BANanoEvent)
	ganttInteractive.WeekMode
	app.ShowToastInfo("View switched to Week mode")
End Sub

Private Sub btnModeMonth_Click (e As BANanoEvent)
	ganttInteractive.MonthMode
	app.ShowToastInfo("View switched to Month mode")
End Sub

Private Sub btnModeYear_Click (e As BANanoEvent)
	ganttInteractive.YearMode
	app.ShowToastInfo("View switched to Year mode")
End Sub

Private Sub btnModeHalfDay_Click (e As BANanoEvent)
	ganttInteractive.HalfDayMode
	app.ShowToastInfo("View switched to Half Day mode")
End Sub

Private Sub btnToday_Click (e As BANanoEvent)
	ganttInteractive.ScrollToToday
	app.ShowToastInfo("Scrolled to today's date")
End Sub

Private Sub btnAddTask_Click (e As BANanoEvent)
	taskCounter = taskCounter + 1
	Dim newID As String = "task-dyn-" & taskCounter
	ganttInteractive.AddTask3(newID, "Sprint Task #" & taskCounter, "2026-11-18", "2026-11-28", 20, "", Array("task-core"), "Dynamically added task item", "#06b6d4", "#0891b2", "")
	ganttInteractive.Refresh
	app.ShowToastSuccess("Added task: " & newID)
End Sub

Private Sub btnUpdateTask_Click (e As BANanoEvent)
	Dim updateMap As Map = CreateMap("progress": 88)
	ganttInteractive.UpdateTask("task-core", updateMap)
	app.ShowToastSuccess("Updated 'Core Backend API' progress to 88%")
End Sub

Private Sub btnDeleteTask_Click (e As BANanoEvent)
	If ganttInteractive.HasTask("task-rel") Then
		ganttInteractive.DeleteTask("task-rel")
		app.ShowToastWarning("Deleted task 'Production Release'")
	Else
		app.ShowToastInfo("Task already removed")
	End If
End Sub

' =============================================================================
' FRACTIONAL GANTT EVENT LISTENERS
' =============================================================================

Private Sub ganttInteractive_Click (task As Map)
	Dim tid As String = task.GetDefault("id", "")
	Dim tname As String = task.GetDefault("name", "")
	Dim prog As Int = task.GetDefault("progress", 0)
	alertStatus.Color = "primary"
	alertStatus.Title = "Task Click Event"
	alertStatus.Text = $"Selected Task: [${tid}] ${tname} | Progress: ${prog}%"$
End Sub

Private Sub ganttInteractive_DoubleClick (task As Map)
	Dim tid As String = task.GetDefault("id", "")
	Dim tname As String = task.GetDefault("name", "")
	alertStatus.Color = "secondary"
	alertStatus.Title = "Task Double Click Event"
	alertStatus.Text = $"Double clicked on Task: [${tid}] ${tname}"$
	app.ShowToastInfo($"Double-click on: ${tname}"$)
End Sub

Private Sub ganttInteractive_DateChange (task As Map, start As String, end_date As String)
	Dim tid As String = task.GetDefault("id", "")
	Dim tname As String = task.GetDefault("name", "")
	alertStatus.Color = "warning"
	alertStatus.Title = "Task Date Changed (Drag & Drop)"
	alertStatus.Text = $"Task: [${tid}] ${tname} shifted -> Start: ${start} | End: ${end_date}"$
	app.ShowToastWarning($"Dates shifted for: ${tname}"$)
End Sub

Private Sub ganttInteractive_ProgressChange (task As Map, progress As Int)
	Dim tid As String = task.GetDefault("id", "")
	Dim tname As String = task.GetDefault("name", "")
	alertStatus.Color = "success"
	alertStatus.Title = "Task Progress Changed (Handle Drag)"
	alertStatus.Text = $"Task: [${tid}] ${tname} progress updated -> ${progress}%"$
	app.ShowToastSuccess($"Progress: ${tname} -> ${progress}%"$)
End Sub

Private Sub ganttInteractive_ViewChange (mode As String)
	alertStatus.Color = "info"
	alertStatus.Title = "Timeline View Changed"
	alertStatus.Text = $"Active view mode changed to: ${mode}"$
End Sub
