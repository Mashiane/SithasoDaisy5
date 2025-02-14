B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private btnShowModal1 As SDUI5Button
	Private modal1 As SDUI5Modal
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "modalview")
	pgIndex.UpdateTitle("SDUI5Modal")
End Sub

Private Sub btnShowModal1_Click (e As BANanoEvent)
	e.PreventDefault
	modal1.Title = "New Title"
	modal1.Html = $"<b>Testing MsgBox Message</b>"$
	modal1.Show
End Sub

Private Sub modal1_Yes_Click (e As BANanoEvent)
	e.PreventDefault
	modal1.close
End Sub

Private Sub modal1_No_Click (e As BANanoEvent)
	e.PreventDefault
	modal1.close
End Sub

Private Sub modal1_Cancel_Click (e As BANanoEvent)
	e.PreventDefault
	modal1.close
End Sub