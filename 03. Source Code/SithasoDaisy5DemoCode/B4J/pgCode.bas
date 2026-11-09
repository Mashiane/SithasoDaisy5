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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Code1 As SDUI5Code		'ignore
	Private SDUI5Code2 As SDUI5Code		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesCode)
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
	SDUI5Column1.Size = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	Dim sbB4X As StringBuilder
	sbB4X.Initialize
	sbB4X.Append("' Mockup Code - B4X Example" & CRLF)
	sbB4X.Append("Sub Process_Globals" & CRLF)
	sbB4X.Append("    Private BANano As BANano" & CRLF)
	sbB4X.Append("    Private app As SDUI5App" & CRLF)
	sbB4X.Append("    Private SDUI5Code1 As SDUI5Code" & CRLF)
	sbB4X.Append("End Sub" & CRLF)
	sbB4X.Append("" & CRLF)
	sbB4X.Append("Sub Show" & CRLF)
	sbB4X.Append("    app = pgIndex.App" & CRLF)
	sbB4X.Append("    BANano.Await(app.UsesCode)" & CRLF)
	sbB4X.Append("    SDUI5Code1.Initialize(Me, ""SDUI5Code1"", ""SDUI5Code1"")" & CRLF)
	sbB4X.Append("    SDUI5Code1.ParentID = ""SDUI5Column1""" & CRLF)
	sbB4X.Append("    SDUI5Code1.Content = ""Hello SithasoDaisy5!""" & CRLF)
	sbB4X.Append("    BANano.Await(SDUI5Code1.AddComponent)" & CRLF)
	sbB4X.Append("End Sub")
	'
	SDUI5Code1.Initialize(Me, "SDUI5Code1", "SDUI5Code1")
	SDUI5Code1.ParentID = "SDUI5Column1"
	SDUI5Code1.Height = "350px"
	SDUI5Code1.Content = sbB4X.ToString
	BANano.Await(SDUI5Code1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	Dim sbJS As StringBuilder
	sbJS.Initialize
	sbJS.Append("// Card Style - JavaScript Example" & CRLF)
	sbJS.Append("function greet(user) {" & CRLF)
	sbJS.Append("    const message = `Welcome to SithasoDaisy5, ${user}!`;" & CRLF)
	sbJS.Append("    console.log(message);" & CRLF)
	sbJS.Append("    return message;" & CRLF)
	sbJS.Append("}" & CRLF)
	sbJS.Append("" & CRLF)
	sbJS.Append("// Execute greeting" & CRLF)
	sbJS.Append("greet('Developer');")
	'
	SDUI5Code2.Initialize(Me, "SDUI5Code2", "SDUI5Code2")
	SDUI5Code2.ParentID = "SDUI5Column2"
	SDUI5Code2.CodeType = "card"
	SDUI5Code2.Caption = "JavaScript Snippet (Card Style)"
	SDUI5Code2.Language = "js"
	SDUI5Code2.FileName = "example.js"
	SDUI5Code2.Height = "350px"
	SDUI5Code2.HasDownload = True
	SDUI5Code2.HasRefresh = True
	SDUI5Code2.Content = sbJS.ToString
	BANano.Await(SDUI5Code2.AddComponent)
	'
	pgIndex.UpdateTitle("SDUI5Code")
End Sub

Private Sub SDUI5Code2_download (e As BANanoEvent)			'ignoredeadcode
	SDUI5Code2.Download("example.js")
End Sub

Private Sub SDUI5Code2_refresh (e As BANanoEvent)			'ignoredeadcode
	app.ShowToastSuccess("Code refreshed!")
End Sub
