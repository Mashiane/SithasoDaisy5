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
	Private SDUI5Modal1 As SDUI5Modal		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Modal1.Initialize(Me, "SDUI5Modal1", "SDUI5Modal1")
	SDUI5Modal1.ParentID = app.PageView
	'SDUI5Modal1.ActionType = "yes-no"
	SDUI5Modal1.Backdrop = False
	SDUI5Modal1.Height = ""
	SDUI5Modal1.Open = True
	SDUI5Modal1.Html = "<b>This is Modal HTML content</b>"
	SDUI5Modal1.Title = "Modal HTML"
	SDUI5Modal1.Width = "500px"
	BANano.Await(SDUI5Modal1.AddComponent)
	pgIndex.UpdateTitle("SDUI5Modal HTML")
End Sub

Private Sub SDUI5Modal1_No_Click (e As BANanoEvent)
	e.PreventDefault
	SDUI5Modal1.close
End Sub

Private Sub SDUI5Modal1_Yes_Click (e As BANanoEvent)
	e.PreventDefault
	SDUI5Modal1.close
End Sub

