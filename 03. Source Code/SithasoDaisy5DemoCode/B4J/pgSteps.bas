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
	Private SDUI5Steps6 As SDUI5Steps		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Row4 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Steps1 As SDUI5Steps		'ignore
	Private SDUI5Steps2 As SDUI5Steps		'ignore
	Private SDUI5Steps3 As SDUI5Steps		'ignore
	Private SDUI5Steps4 As SDUI5Steps		'ignore
	Private SDUI5StepsItem1 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem2 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem3 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem4 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem5 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem6 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem7 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem8 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem9 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem10 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem11 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem12 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem13 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem14 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem15 As SDUI5StepsItem		'ignore
	Private SDUI5Row6 As SDUI5Row		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Row5 As SDUI5Row		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Steps5 As SDUI5Steps		'ignore
	Private SDUI5StepsItem16 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem17 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem18 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem19 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem20 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem21 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem22 As SDUI5StepsItem		'ignore
	Private SDUI5StepsItem23 As SDUI5StepsItem		'ignore
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
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Row3.Initialize(Me, "SDUI5Row3", "SDUI5Row3")
	SDUI5Row3.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row3.AddComponent)
	'
	SDUI5Row4.Initialize(Me, "SDUI5Row4", "SDUI5Row4")
	SDUI5Row4.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row4.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row2"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row3"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row4"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Steps1.Initialize(Me, "SDUI5Steps1", "SDUI5Steps1")
	SDUI5Steps1.ParentID = "SDUI5Column1"
	SDUI5Steps1.ActiveStep = ""
	'SDUI5Steps1.OverflowXAuto = False
	SDUI5Steps1.Steps = ""
	'SDUI5Steps1.StepsColor = "primary"
	BANano.Await(SDUI5Steps1.AddComponent)
	'
	SDUI5Steps2.Initialize(Me, "SDUI5Steps2", "SDUI5Steps2")
	SDUI5Steps2.ParentID = "SDUI5Column2"
	SDUI5Steps2.ActiveStep = ""
	SDUI5Steps2.Direction = "vertical"
	'SDUI5Steps2.OverflowXAuto = False
	SDUI5Steps2.Steps = ""
	'SDUI5Steps2.StepsColor = "primary"
	BANano.Await(SDUI5Steps2.AddComponent)
	'
	SDUI5Steps3.Initialize(Me, "SDUI5Steps3", "SDUI5Steps3")
	SDUI5Steps3.ParentID = "SDUI5Column3"
	SDUI5Steps3.ActiveStep = ""
	'SDUI5Steps3.OverflowXAuto = False
	SDUI5Steps3.Steps = ""
	'SDUI5Steps3.StepsColor = "primary"
	BANano.Await(SDUI5Steps3.AddComponent)
	'
	SDUI5Steps4.Initialize(Me, "SDUI5Steps4", "SDUI5Steps4")
	SDUI5Steps4.ParentID = "SDUI5Column4"
	SDUI5Steps4.ActiveStep = ""
	'SDUI5Steps4.OverflowXAuto = False
	SDUI5Steps4.Steps = ""
	'SDUI5Steps4.StepsColor = "primary"
	BANano.Await(SDUI5Steps4.AddComponent)
	'
	SDUI5StepsItem1.Initialize(Me, "SDUI5StepsItem1", "SDUI5StepsItem1")
	SDUI5StepsItem1.ParentID = "SDUI5Steps1"
	SDUI5StepsItem1.Color = "primary"
	SDUI5StepsItem1.Text = "Register"
	BANano.Await(SDUI5StepsItem1.AddComponent)
	'
	SDUI5StepsItem2.Initialize(Me, "SDUI5StepsItem2", "SDUI5StepsItem2")
	SDUI5StepsItem2.ParentID = "SDUI5Steps1"
	SDUI5StepsItem2.Color = "primary"
	SDUI5StepsItem2.Text = "Choose Plan"
	BANano.Await(SDUI5StepsItem2.AddComponent)
	'
	SDUI5StepsItem3.Initialize(Me, "SDUI5StepsItem3", "SDUI5StepsItem3")
	SDUI5StepsItem3.ParentID = "SDUI5Steps1"
	SDUI5StepsItem3.Text = "Purchase"
	BANano.Await(SDUI5StepsItem3.AddComponent)
	'
	SDUI5StepsItem4.Initialize(Me, "SDUI5StepsItem4", "SDUI5StepsItem4")
	SDUI5StepsItem4.ParentID = "SDUI5Steps1"
	SDUI5StepsItem4.Text = "Receive Product"
	BANano.Await(SDUI5StepsItem4.AddComponent)
	'
	SDUI5StepsItem5.Initialize(Me, "SDUI5StepsItem5", "SDUI5StepsItem5")
	SDUI5StepsItem5.ParentID = "SDUI5Steps2"
	SDUI5StepsItem5.Color = "primary"
	SDUI5StepsItem5.Text = "Register"
	BANano.Await(SDUI5StepsItem5.AddComponent)
	'
	SDUI5StepsItem6.Initialize(Me, "SDUI5StepsItem6", "SDUI5StepsItem6")
	SDUI5StepsItem6.ParentID = "SDUI5Steps2"
	SDUI5StepsItem6.Color = "primary"
	SDUI5StepsItem6.Text = "Choose Plan"
	BANano.Await(SDUI5StepsItem6.AddComponent)
	'
	SDUI5StepsItem7.Initialize(Me, "SDUI5StepsItem7", "SDUI5StepsItem7")
	SDUI5StepsItem7.ParentID = "SDUI5Steps2"
	SDUI5StepsItem7.Text = "Purchase"
	BANano.Await(SDUI5StepsItem7.AddComponent)
	'
	SDUI5StepsItem8.Initialize(Me, "SDUI5StepsItem8", "SDUI5StepsItem8")
	SDUI5StepsItem8.ParentID = "SDUI5Steps2"
	SDUI5StepsItem8.Text = "Receive Product"
	BANano.Await(SDUI5StepsItem8.AddComponent)
	'
	SDUI5StepsItem9.Initialize(Me, "SDUI5StepsItem9", "SDUI5StepsItem9")
	SDUI5StepsItem9.ParentID = "SDUI5Steps3"
	SDUI5StepsItem9.Color = "neutral"
	SDUI5StepsItem9.Icon = "😕"
	SDUI5StepsItem9.Text = "Step 1"
	BANano.Await(SDUI5StepsItem9.AddComponent)
	'
	SDUI5StepsItem10.Initialize(Me, "SDUI5StepsItem10", "SDUI5StepsItem10")
	SDUI5StepsItem10.ParentID = "SDUI5Steps3"
	SDUI5StepsItem10.Color = "neutral"
	SDUI5StepsItem10.Icon = "😃"
	SDUI5StepsItem10.Text = "Step 2"
	BANano.Await(SDUI5StepsItem10.AddComponent)
	'
	SDUI5StepsItem11.Initialize(Me, "SDUI5StepsItem11", "SDUI5StepsItem11")
	SDUI5StepsItem11.ParentID = "SDUI5Steps3"
	SDUI5StepsItem11.Icon = "😍"
	SDUI5StepsItem11.Text = "Step 3"
	BANano.Await(SDUI5StepsItem11.AddComponent)
	'
	SDUI5StepsItem12.Initialize(Me, "SDUI5StepsItem12", "SDUI5StepsItem12")
	SDUI5StepsItem12.ParentID = "SDUI5Steps4"
	SDUI5StepsItem12.Color = "primary"
	SDUI5StepsItem12.DataContent = "?"
	SDUI5StepsItem12.Text = "Step 1"
	BANano.Await(SDUI5StepsItem12.AddComponent)
	'
	SDUI5StepsItem13.Initialize(Me, "SDUI5StepsItem13", "SDUI5StepsItem13")
	SDUI5StepsItem13.ParentID = "SDUI5Steps4"
	SDUI5StepsItem13.Color = "primary"
	SDUI5StepsItem13.DataContent = "!"
	SDUI5StepsItem13.Text = "Step 2"
	BANano.Await(SDUI5StepsItem13.AddComponent)
	'
	SDUI5StepsItem14.Initialize(Me, "SDUI5StepsItem14", "SDUI5StepsItem14")
	SDUI5StepsItem14.ParentID = "SDUI5Steps4"
	SDUI5StepsItem14.DataContent = "✓"
	SDUI5StepsItem14.Text = "Step 3"
	BANano.Await(SDUI5StepsItem14.AddComponent)
	'
	SDUI5StepsItem15.Initialize(Me, "SDUI5StepsItem15", "SDUI5StepsItem15")
	SDUI5StepsItem15.ParentID = "SDUI5Steps4"
	SDUI5StepsItem15.DataContent = "★"
	SDUI5StepsItem15.Text = "Step 4"
	BANano.Await(SDUI5StepsItem15.AddComponent)
	'
	SDUI5Row6.Initialize(Me, "SDUI5Row6", "SDUI5Row6")
	SDUI5Row6.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row6.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row6"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Steps6.Initialize(Me, "SDUI5Steps6", "SDUI5Steps6")
	SDUI5Steps6.ParentID = "SDUI5Column6"
	SDUI5Steps6.ActiveStep = "3"
	'SDUI5Steps6.OverflowXAuto = False
	SDUI5Steps6.Steps = "Register;Choose Plan;Purchase;Receive Product"
	'SDUI5Steps6.StepsColor = "primary"
	BANano.Await(SDUI5Steps6.AddComponent)
	'
	SDUI5Row5.Initialize(Me, "SDUI5Row5", "SDUI5Row5")
	SDUI5Row5.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row5.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row5"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = "4"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Steps5.Initialize(Me, "SDUI5Steps5", "SDUI5Steps5")
	SDUI5Steps5.ParentID = "SDUI5Column5"
	SDUI5Steps5.ActiveStep = ""
	'SDUI5Steps5.OverflowXAuto = True
	SDUI5Steps5.Steps = ""
	'SDUI5Steps5.StepsColor = "primary"
	BANano.Await(SDUI5Steps5.AddComponent)
	'
	SDUI5StepsItem16.Initialize(Me, "SDUI5StepsItem16", "SDUI5StepsItem16")
	SDUI5StepsItem16.ParentID = "SDUI5Steps5"
	SDUI5StepsItem16.Color = "primary"
	SDUI5StepsItem16.Text = "Step 1"
	BANano.Await(SDUI5StepsItem16.AddComponent)
	'
	SDUI5StepsItem17.Initialize(Me, "SDUI5StepsItem17", "SDUI5StepsItem17")
	SDUI5StepsItem17.ParentID = "SDUI5Steps5"
	SDUI5StepsItem17.Color = "primary"
	SDUI5StepsItem17.Text = "Step 2"
	BANano.Await(SDUI5StepsItem17.AddComponent)
	'
	SDUI5StepsItem18.Initialize(Me, "SDUI5StepsItem18", "SDUI5StepsItem18")
	SDUI5StepsItem18.ParentID = "SDUI5Steps5"
	SDUI5StepsItem18.Color = "primary"
	SDUI5StepsItem18.Text = "Step 3"
	BANano.Await(SDUI5StepsItem18.AddComponent)
	'
	SDUI5StepsItem19.Initialize(Me, "SDUI5StepsItem19", "SDUI5StepsItem19")
	SDUI5StepsItem19.ParentID = "SDUI5Steps5"
	SDUI5StepsItem19.Text = "Step 4"
	BANano.Await(SDUI5StepsItem19.AddComponent)
	'
	SDUI5StepsItem20.Initialize(Me, "SDUI5StepsItem20", "SDUI5StepsItem20")
	SDUI5StepsItem20.ParentID = "SDUI5Steps5"
	SDUI5StepsItem20.Text = "Step 5"
	BANano.Await(SDUI5StepsItem20.AddComponent)
	'
	SDUI5StepsItem21.Initialize(Me, "SDUI5StepsItem21", "SDUI5StepsItem21")
	SDUI5StepsItem21.ParentID = "SDUI5Steps5"
	SDUI5StepsItem21.Text = "Step 6"
	BANano.Await(SDUI5StepsItem21.AddComponent)
	'
	SDUI5StepsItem22.Initialize(Me, "SDUI5StepsItem22", "SDUI5StepsItem22")
	SDUI5StepsItem22.ParentID = "SDUI5Steps5"
	SDUI5StepsItem22.Text = "Step 7"
	BANano.Await(SDUI5StepsItem22.AddComponent)
	'
	SDUI5StepsItem23.Initialize(Me, "SDUI5StepsItem23", "SDUI5StepsItem23")
	SDUI5StepsItem23.ParentID = "SDUI5Steps5"
	SDUI5StepsItem23.Text = "Step 8"
	BANano.Await(SDUI5StepsItem23.AddComponent)
	pgIndex.UpdateTitle("SDUI5Steps")
End Sub

Private Sub SDUI5Steps6_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

