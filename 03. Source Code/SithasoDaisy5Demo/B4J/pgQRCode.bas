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
End Sub


Sub Show
	App = pgIndex.app
	banano.Await(app.UsesQRCode)
	BANano.LoadLayout(app.PageView, "qrcodeview")
	pgIndex.UpdateTitle("SDUI5QRCode")
End Sub