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
	Private bankcontainer As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Hover3D1 As SDUI5Hover3D		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Hover3D2 As SDUI5Hover3D		'ignore
	Private SDUI5Hover3D3 As SDUI5Hover3D		'ignore
	Private SDUI5Hover3D4 As SDUI5Hover3D		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	bankcontainer.Initialize(Me, "bankcontainer", "bankcontainer")
	bankcontainer.ParentID = app.PageView
	'bankcontainer.Gradient = ""
	'bankcontainer.GradientActive = False
	BANano.Await(bankcontainer.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "bankcontainer"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.CenterChildren = True
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.CenterChildren = True
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5BankCard1.Initialize(Me, "SDUI5BankCard1", "SDUI5BankCard1")
	SDUI5BankCard1.ParentID = "SDUI5Column1"
	SDUI5BankCard1.CardHolder = "SITHASO HOLDINGS"
	'SDUI5BankCard1.Gradient = "bl_tr"
	'SDUI5BankCard1.GradientActive = True
	'SDUI5BankCard1.GradientColor1 = "#FF00FF"
	'SDUI5BankCard1.GradientColor2 = "#0006FF"
	SDUI5BankCard1.MarginAXYTBLR = "a=6; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5BankCard1.TextColor = "#FFFFFF"
	SDUI5BankCard1.Width = "96"
	BANano.Await(SDUI5BankCard1.AddComponent)
	'
	SDUI5Hover3D1.Initialize(Me, "SDUI5Hover3D1", "SDUI5Hover3D1")
	SDUI5Hover3D1.ParentID = "SDUI5Column2"
	SDUI5Hover3D1.Image = "https://img.daisyui.com/images/stock/creditcard.webp"
	SDUI5Hover3D1.MarginAXYTBLR = "a=6; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Hover3D1.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.CenterChildren = True
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Hover3D2.Initialize(Me, "SDUI5Hover3D2", "SDUI5Hover3D2")
	SDUI5Hover3D2.ParentID = "SDUI5Column3"
	SDUI5Hover3D2.Image = "https://img.daisyui.com/images/stock/card-1.webp?x"
	SDUI5Hover3D2.MarginAXYTBLR = "a=6; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Hover3D2.Width = "60"
	BANano.Await(SDUI5Hover3D2.AddComponent)
	'
	SDUI5Hover3D3.Initialize(Me, "SDUI5Hover3D3", "SDUI5Hover3D3")
	SDUI5Hover3D3.ParentID = "SDUI5Column3"
	SDUI5Hover3D3.Image = "https://img.daisyui.com/images/stock/card-2.webp?x"
	SDUI5Hover3D3.MarginAXYTBLR = "a=6; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Hover3D3.Width = "60"
	BANano.Await(SDUI5Hover3D3.AddComponent)
	'
	SDUI5Hover3D4.Initialize(Me, "SDUI5Hover3D4", "SDUI5Hover3D4")
	SDUI5Hover3D4.ParentID = "SDUI5Column3"
	SDUI5Hover3D4.Image = "https://img.daisyui.com/images/stock/card-3.webp?x"
	SDUI5Hover3D4.MarginAXYTBLR = "a=6; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Hover3D4.Width = "60"
	BANano.Await(SDUI5Hover3D4.AddComponent)
	pgIndex.UpdateTitle("SDUI5BankCard & SDUI5Hover3D")
End Sub


Private Sub SDUI5BankCard1_Click (e As BANanoEvent)
	app.ShowSwalSuccessToast("Bank Account", 3000)
End Sub

