﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private dptime As SDUI5DatePickerTimeLine
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "datetimelineview")
	pgIndex.UpdateTitle("Calendars")
End Sub

Private Sub dptime_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub