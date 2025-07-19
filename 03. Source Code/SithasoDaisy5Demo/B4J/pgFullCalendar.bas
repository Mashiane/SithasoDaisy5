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
	Private fc As SDUI5FullCalendar
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesFullCalendar)
	BANano.LoadLayout(app.PageView, "fullcalendarview")
	pgIndex.UpdateTitle("SDUI5FullCalendar")
	'
	fc.AddEvent("1", "", "All Day Event",  app.ui.YearNow & "-" & app.ui.MonthNow & "-01", "", False, "", "", "", False, True)
	fc.AddEvent("2", "", "Long Event", app.ui.YearNow & "-" & app.ui.MonthNow & "-07", app.ui.YearNow & "-" & app.ui.MonthNow & "-10", False, "", "", "", False, True)
	fc.AddEvent("3", "", "Repeating Event", app.ui.YearNow & "-" & app.ui.MonthNow & "-09T16:00:00-05:00", "", False, "", "", "", False,True)
	fc.AddEvent("4", "", "Conference", app.ui.YearNow & "-" & app.ui.MonthNow & "-11", app.ui.YearNow & "-" & app.ui.MonthNow & "-13", False, "", "", "", False, True)
	fc.AddEvent("5", "", "Meeting", app.ui.YearNow & "-" & app.ui.MonthNow & "-12T10:30:00-05:00", app.ui.YearNow & "-" & app.ui.MonthNow & "12T12:30:00-05:00", False, "","", "", False, True)
	fc.AddEvent("6", "", "Lunch", app.ui.YearNow & "-" & app.ui.MonthNow & "-13T12:00:00-05:00", "", True, "", "", "", False, True)
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