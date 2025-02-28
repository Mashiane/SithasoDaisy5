B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5Wizard1 As SDUI5Wizard
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	pgIndex.UpdateTitle("SDUI5Wizard")
	BANano.LoadLayout(app.PageView, "wizardview")	
	BANano.LoadLayout(SDUI5Wizard1.ContentAt(1), "wizard1")
	BANano.LoadLayout(SDUI5Wizard1.ContentAt(2), "wizard2")
	BANano.LoadLayout(SDUI5Wizard1.ContentAt(3), "wizard3")
	BANano.LoadLayout(SDUI5Wizard1.ContentAt(4), "wizard4")
End Sub

Private Sub SDUI5Wizard1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub