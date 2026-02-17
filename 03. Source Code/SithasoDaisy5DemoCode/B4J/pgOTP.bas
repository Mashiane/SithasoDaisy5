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
	Private SDUI5OTP1 As SDUI5OTP		'ignore
	Private SDUI5OTP2 As SDUI5OTP		'ignore
	Private SDUI5OTP3 As SDUI5OTP		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
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
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5OTP1.Initialize(Me, "SDUI5OTP1", "SDUI5OTP1")
	SDUI5OTP1.ParentID = "SDUI5Column1"
	SDUI5OTP1.MaxLen = 3
	BANano.Await(SDUI5OTP1.AddComponent)
	'
	SDUI5OTP2.Initialize(Me, "SDUI5OTP2", "SDUI5OTP2")
	SDUI5OTP2.ParentID = "SDUI5Column2"
	SDUI5OTP2.TypeOf = "number"
	BANano.Await(SDUI5OTP2.AddComponent)
	'
	SDUI5OTP3.Initialize(Me, "SDUI5OTP3", "SDUI5OTP3")
	SDUI5OTP3.ParentID = "SDUI5Column3"
	SDUI5OTP3.TypeOf = "password"
	BANano.Await(SDUI5OTP3.AddComponent)
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

