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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5QRCode1 As SDUI5QRCode		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesQRCode)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5QRCode1.Initialize(Me, "SDUI5QRCode1", "SDUI5QRCode1")
	SDUI5QRCode1.ParentID = "SDUI5Column1"
	SDUI5QRCode1.TypeOf = "normal"
	SDUI5QRCode1.Label = ""
	SDUI5QRCode1.Text = "SithasoDaisy5"
	SDUI5QRCode1.ColorDark = "#000000"
	SDUI5QRCode1.ColorLight = "#ffffff"
	SDUI5QRCode1.CorrectLevel = "H"
	SDUI5QRCode1.Size = "200"
	BANano.Await(SDUI5QRCode1.AddComponent)
	pgIndex.UpdateTitle("SDUI5QRCode")
End Sub

