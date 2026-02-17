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
	Private fc As SDUI5FullCalendar		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesFullCalendar)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	fc.Initialize(Me, "fc", "fc")
	fc.ParentID = "SDUI5Column1"
	fc.InitialView = "multiMonthYear"
	fc.ScrollTime = "06:00:00"
	fc.SlotDuration = "00:30:00"
	fc.SlotMaxTime = "24:00:00"
	fc.SlotMinTime = "00:00:00"
	BANano.Await(fc.AddComponent)
	pgIndex.UpdateTitle("SDUI5FullCalendar")
	'
	'get the start of this month
	Dim sStartMonth As String = app.UI.StartOfThisMonth
			
	fc.AddEvent("1", "", "All Day Event",  sStartMonth, "", False, "", "", "", False, True)
	fc.AddEvent("2", "", "Long Event", app.ui.DateAdd(sStartMonth, 7), app.ui.DateAdd(sStartMonth, 10), False, "", "", "", False, True)
	fc.AddEvent("3", "", "Repeating Event", app.ui.DateAdd(sStartMonth, 9) & "T16:00:00-05:00", "", False, "", "", "", False,True)
	fc.AddEvent("4", "", "Conference", app.ui.DateAdd(sStartMonth, 11), app.ui.DateAdd(sStartMonth, 13), False, "", "", "", False, True)
	fc.AddEvent("5", "", "Meeting", app.ui.DateAdd(sStartMonth, 12) & "12T10:30:00-05:00", app.ui.DateAdd(sStartMonth, 12)  & "T12:30:00-05:00", False, "","", "", False, True)
	fc.AddEvent("6", "", "Lunch", app.ui.DateAdd(sStartMonth, 13) & "13T12:00:00-05:00", "", True, "", "", "", False, True)
	fc.Refresh
End Sub

Private Sub fc_NextMonth (e As BANanoEvent)
	Log("fc_NextMonth")
	Log(fc.CurrentStartDate)
	Log(fc.CurrentEndDate)
End Sub

Private Sub fc_PrevMonth (e As BANanoEvent)
	Log("fc_PrevMonth")
	Log(fc.CurrentStartDate)
	Log(fc.CurrentEndDate)
End Sub

Private Sub fc_NextYear (e As BANanoEvent)
	Log("fc_NextYear")
	Log(fc.CurrentStartDate)
	Log(fc.CurrentEndDate)
End Sub

Private Sub fc_PrevYear (e As BANanoEvent)
	Log("fc_PrevYear")
	Log(fc.CurrentStartDate)
	Log(fc.CurrentEndDate)
End Sub

Private Sub fc_EventClick (args As Map)
	Log("fc_EventClick...")
	
End Sub

Private Sub fc_EventDrop (args As Map)
	Log("fc_EventDrop...")
	
End Sub

Private Sub fc_EventResize (args As Map)
	Log("fc_EventResize...")
	
End Sub

Private Sub fc_Drop (args As Map)
	Log("fc_Drop...")
	
End Sub

Private Sub fc_DateClick (args As Map)
	Log("fc_DateClick...")
	
End Sub


Private Sub fc_DateRangeChange (startDate As String, endDate As String, lastView As String)
	Log("fc_DateRangeChange...")
	Log("Range Start: " & startDate)
	Log("Range End: " & endDate)
	Log("Last View: " & lastView)
End Sub

