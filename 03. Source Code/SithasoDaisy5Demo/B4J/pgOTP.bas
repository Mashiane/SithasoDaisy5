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
	Private SDUI5OTP1 As SDUI5OTP
	Private SDUI5OTP2 As SDUI5OTP
	Private SDUI5OTP3 As SDUI5OTP
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "otpview")
	pgIndex.UpdateTitle("SDUI5OTP")
End Sub

Private Sub SDUI5OTP3_Complete (e As BANanoEvent)
	Log(e.Detail)
End Sub

Private Sub SDUI5OTP2_Complete (e As BANanoEvent)
	Log(e.Detail)
End Sub

Private Sub SDUI5OTP1_Complete (e As BANanoEvent)
	Log(e.Detail)
End Sub