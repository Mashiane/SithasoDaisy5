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
	Private tabs1 As SDUI5Tabs
	Private segment1 As SDUI5Segment
	Private tabs2 As SDUI5Tabs
	Private tabs3 As SDUI5Tabs
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "tabsview")
	pgIndex.UpdateTitle("SDUI5Tabs")
End Sub

Private Sub tabs1_Change (Item As String)
	app.ShowToastSuccess(Item)
End Sub

Private Sub segment1_Change (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub tabs3_Change (Item As String)
	app.ShowToastSuccess(Item)
End Sub

Private Sub tabs2_Change (Item As String)
	app.ShowToastSuccess(Item)
End Sub