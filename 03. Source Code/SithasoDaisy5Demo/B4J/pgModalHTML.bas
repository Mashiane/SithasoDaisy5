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
	Private SDUI5Modal1 As SDUI5Modal
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "modalhtmlview")
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