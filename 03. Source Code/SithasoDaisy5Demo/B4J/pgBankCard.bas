B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5BankCard1 As SDUI5BankCard			'ignore
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "bankcardview")
	pgIndex.UpdateTitle("SDUI5BankCard & SDUI5Hover3D")
End Sub


Private Sub SDUI5BankCard1_Click (e As BANanoEvent)
	app.ShowSwalSuccessToast("Bank Account", 3000)
End Sub