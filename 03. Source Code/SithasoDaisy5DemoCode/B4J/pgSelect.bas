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
	Private SDUI5Select1 As SDUI5Select		'ignore
	Private btnClearSelectAsIs As SDUI5Button		'ignore
	Private btnLoadSelectAsIs As SDUI5Button		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Select2 As SDUI5Select		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Select3 As SDUI5Select		'ignore
	Private SDUI5Select4 As SDUI5Select		'ignore
	Private SDUI5Select5 As SDUI5Select		'ignore
	Private SDUI5Select6 As SDUI5Select		'ignore
	Private SDUI5Select7 As SDUI5Select		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Select8 As SDUI5Select		'ignore
	Private SDUI5Select9 As SDUI5Select		'ignore
	Private SDUI5Select10 As SDUI5Select		'ignore
	Private SDUI5Select11 As SDUI5Select		'ignore
	Private SDUI5Select12 As SDUI5Select		'ignore
	Private SDUI5Select13 As SDUI5Select		'ignore
	Private SDUI5Select14 As SDUI5Select		'ignore
	Private SDUI5Select15 As SDUI5Select		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Select16 As SDUI5Select		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private cboIcons As SDUI5Select		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
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
	SDUI5Column1.SizeMd = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Select1.Initialize(Me, "SDUI5Select1", "SDUI5Select1")
	SDUI5Select1.ParentID = "SDUI5Column1"
	SDUI5Select1.AllowBlank = False
	SDUI5Select1.AppendImage = "./assets/search.svg"
	SDUI5Select1.AppendVisible = True
	SDUI5Select1.BackgroundColor = ""
	SDUI5Select1.Border = False
	SDUI5Select1.BorderColor = ""
	SDUI5Select1.InputType = "legend"
	SDUI5Select1.Label = "Select (As Is)"
	SDUI5Select1.Options = "B4A:b4a; B4J:b4j; B4I:b4i; B4R:b4r"
	SDUI5Select1.Size = "none"
	SDUI5Select1.ValuesAsIs = True
	BANano.Await(SDUI5Select1.AddComponent)
	'
	SDUI5Select2.Initialize(Me, "SDUI5Select2", "SDUI5Select2")
	SDUI5Select2.ParentID = "SDUI5Column2"
	SDUI5Select2.AppendImage = "./assets/search.svg"
	SDUI5Select2.AppendVisible = True
	SDUI5Select2.InputType = "buttons"
	SDUI5Select2.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select2.Required = True
	SDUI5Select2.Size = "none"
	BANano.Await(SDUI5Select2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Select3.Initialize(Me, "SDUI5Select3", "SDUI5Select3")
	SDUI5Select3.ParentID = "SDUI5Column3"
	SDUI5Select3.AppendImage = "./assets/search.svg"
	SDUI5Select3.AppendVisible = True
	SDUI5Select3.InputType = "buttons"
	SDUI5Select3.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select3.Placeholder = "XSmall"
	SDUI5Select3.PrependImage = "./assets/search.svg"
	SDUI5Select3.PrependVisible = True
	SDUI5Select3.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select3.Size = "xs"
	BANano.Await(SDUI5Select3.AddComponent)
	'
	SDUI5Select4.Initialize(Me, "SDUI5Select4", "SDUI5Select4")
	SDUI5Select4.ParentID = "SDUI5Column3"
	SDUI5Select4.AppendImage = "./assets/search.svg"
	SDUI5Select4.AppendVisible = True
	SDUI5Select4.InputType = "buttons"
	SDUI5Select4.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select4.Placeholder = "Small"
	SDUI5Select4.PrependImage = "./assets/search.svg"
	SDUI5Select4.PrependVisible = True
	SDUI5Select4.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select4.Size = "sm"
	BANano.Await(SDUI5Select4.AddComponent)
	'
	SDUI5Select5.Initialize(Me, "SDUI5Select5", "SDUI5Select5")
	SDUI5Select5.ParentID = "SDUI5Column3"
	SDUI5Select5.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select5.Placeholder = "Medium"
	SDUI5Select5.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	BANano.Await(SDUI5Select5.AddComponent)
	'
	SDUI5Select6.Initialize(Me, "SDUI5Select6", "SDUI5Select6")
	SDUI5Select6.ParentID = "SDUI5Column3"
	SDUI5Select6.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select6.Placeholder = "Large"
	SDUI5Select6.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select6.Required = True
	SDUI5Select6.Size = "lg"
	BANano.Await(SDUI5Select6.AddComponent)
	'
	SDUI5Select7.Initialize(Me, "SDUI5Select7", "SDUI5Select7")
	SDUI5Select7.ParentID = "SDUI5Column3"
	SDUI5Select7.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select7.Placeholder = "XLarge"
	SDUI5Select7.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select7.Size = "xl"
	BANano.Await(SDUI5Select7.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Select8.Initialize(Me, "SDUI5Select8", "SDUI5Select8")
	SDUI5Select8.ParentID = "SDUI5Column4"
	SDUI5Select8.Color = "accent"
	SDUI5Select8.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select8.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select8.Size = "none"
	BANano.Await(SDUI5Select8.AddComponent)
	'
	SDUI5Select9.Initialize(Me, "SDUI5Select9", "SDUI5Select9")
	SDUI5Select9.ParentID = "SDUI5Column4"
	SDUI5Select9.Color = "error"
	SDUI5Select9.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select9.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select9.Size = "none"
	BANano.Await(SDUI5Select9.AddComponent)
	'
	SDUI5Select10.Initialize(Me, "SDUI5Select10", "SDUI5Select10")
	SDUI5Select10.ParentID = "SDUI5Column4"
	SDUI5Select10.Color = "info"
	SDUI5Select10.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select10.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select10.Size = "none"
	BANano.Await(SDUI5Select10.AddComponent)
	'
	SDUI5Select11.Initialize(Me, "SDUI5Select11", "SDUI5Select11")
	SDUI5Select11.ParentID = "SDUI5Column4"
	SDUI5Select11.Color = "neutral"
	SDUI5Select11.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select11.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select11.Size = "none"
	BANano.Await(SDUI5Select11.AddComponent)
	'
	SDUI5Select12.Initialize(Me, "SDUI5Select12", "SDUI5Select12")
	SDUI5Select12.ParentID = "SDUI5Column4"
	SDUI5Select12.Color = "primary"
	SDUI5Select12.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select12.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select12.Size = "none"
	BANano.Await(SDUI5Select12.AddComponent)
	'
	SDUI5Select13.Initialize(Me, "SDUI5Select13", "SDUI5Select13")
	SDUI5Select13.ParentID = "SDUI5Column4"
	SDUI5Select13.Color = "secondary"
	SDUI5Select13.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select13.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select13.Size = "none"
	BANano.Await(SDUI5Select13.AddComponent)
	'
	SDUI5Select14.Initialize(Me, "SDUI5Select14", "SDUI5Select14")
	SDUI5Select14.ParentID = "SDUI5Column4"
	SDUI5Select14.Color = "success"
	SDUI5Select14.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select14.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select14.Size = "none"
	BANano.Await(SDUI5Select14.AddComponent)
	'
	SDUI5Select15.Initialize(Me, "SDUI5Select15", "SDUI5Select15")
	SDUI5Select15.ParentID = "SDUI5Column4"
	SDUI5Select15.Color = "warning"
	SDUI5Select15.MarginAXYTBLR = "a=?; x=?; y=?; t=?; b=0.75rem; l=?; r=?"
	SDUI5Select15.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select15.Size = "none"
	BANano.Await(SDUI5Select15.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Select16.Initialize(Me, "SDUI5Select16", "SDUI5Select16")
	SDUI5Select16.ParentID = "SDUI5Column5"
	SDUI5Select16.AppendImage = "./assets/search.svg"
	SDUI5Select16.AppendVisible = True
	SDUI5Select16.InputType = "buttons-floating"
	SDUI5Select16.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Select16.Required = True
	SDUI5Select16.Size = "none"
	BANano.Await(SDUI5Select16.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	cboIcons.Initialize(Me, "cboIcons", "cboIcons")
	cboIcons.ParentID = "SDUI5Column6"
	cboIcons.AppendIcon = "./assets/github-brands.svg"
	cboIcons.AppendVisible = True
	cboIcons.InputType = "legend"
	cboIcons.Label = "Select Icons"
	cboIcons.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	cboIcons.Placeholder = ""
	cboIcons.PrependIcon = "./assets/house-solid.svg"
	cboIcons.PrependVisible = True
	cboIcons.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	cboIcons.Required = True
	cboIcons.RoundedBox = True
	cboIcons.Shadow = "lg"
	cboIcons.Size = "sm"
	BANano.Await(cboIcons.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.SizeMd = "4"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	btnClearSelectAsIs.Initialize(Me, "btnClearSelectAsIs", "btnClearSelectAsIs")
	btnClearSelectAsIs.ParentID = "SDUI5Column7"
	btnClearSelectAsIs.Block = True
	'btnClearSelectAsIs.Image = ""
	'btnClearSelectAsIs.ImageHeight = "32px"
	'btnClearSelectAsIs.ImageWidth = "32px"
	btnClearSelectAsIs.MarginAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	btnClearSelectAsIs.Text = "Clear Select (As Is)"
	BANano.Await(btnClearSelectAsIs.AddComponent)
	'
	btnLoadSelectAsIs.Initialize(Me, "btnLoadSelectAsIs", "btnLoadSelectAsIs")
	btnLoadSelectAsIs.ParentID = "SDUI5Column7"
	btnLoadSelectAsIs.Block = True
	'btnLoadSelectAsIs.Image = ""
	'btnLoadSelectAsIs.ImageHeight = "32px"
	'btnLoadSelectAsIs.ImageWidth = "32px"
	btnLoadSelectAsIs.MarginAXYTBLR = "a=2; x=?; y=?; t=?; b=?; l=?; r=?"
	btnLoadSelectAsIs.Text = "Load Select (As Is)"
	BANano.Await(btnLoadSelectAsIs.AddComponent)
	pgIndex.UpdateTitle("SDUI5Select")
End Sub

Private Sub SDUI5Select1_Change (Value As String)
	app.ShowToastSuccess(Value)
End Sub

Private Sub SDUI5Select1_Prepend (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Prepend...")
End Sub

Private Sub SDUI5Select1_Append (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("Append...")
End Sub

Private Sub btnLoadSelectAsIs_Click (e As BANanoEvent)
	Dim fake As SDUI5FakeIT
	fake.Initialize
	Dim recs As Map
	recs.Initialize 
	Dim rCnt As Int
	For rCnt = 1 To 10
		Dim sname As String = fake.Rand_Capital_City
		recs.Put(sname, sname)
	Next
	SDUI5Select1.SetOptionsFromMap(recs)
End Sub

Private Sub btnClearSelectAsIs_Click (e As BANanoEvent)
	SDUI5Select1.Clear
End Sub

