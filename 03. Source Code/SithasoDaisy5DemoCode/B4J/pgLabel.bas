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
	Private SDUI5Label1 As SDUI5Label		'ignore
	Private SDUI5Label2 As SDUI5Label		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Label3 As SDUI5Label		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Label4 As SDUI5Label		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Label5 As SDUI5Label		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Label6 As SDUI5Label		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Label7 As SDUI5Label		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Label8 As SDUI5Label		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Label9 As SDUI5Label		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Label10 As SDUI5Label		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5Label12 As SDUI5Label		'ignore
	Private SDUI5Column15 As SDUI5Column		'ignore
	Private SDUI5Label15 As SDUI5Label		'ignore
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
	SDUI5Label1.Initialize(Me, "SDUI5Label1", "SDUI5Label1")
	SDUI5Label1.ParentID = "SDUI5Column1"
	SDUI5Label1.Label = "https://"
	SDUI5Label1.Placeholder = "URL"
	SDUI5Label1.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	'SDUI5Label1.Value = ""
	BANano.Await(SDUI5Label1.AddComponent)
	'
	SDUI5Label2.Initialize(Me, "SDUI5Label2", "SDUI5Label2")
	SDUI5Label2.ParentID = "SDUI5Column2"
	SDUI5Label2.InputType = "select"
	SDUI5Label2.Label = "App Type"
	SDUI5Label2.Placeholder = "Please select App Type"
	SDUI5Label2.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	'SDUI5Label2.Value = ""
	BANano.Await(SDUI5Label2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Label3.Initialize(Me, "SDUI5Label3", "SDUI5Label3")
	SDUI5Label3.ParentID = "SDUI5Column3"
	SDUI5Label3.Label = ""
	SDUI5Label3.Placeholder = "domain name"
	SDUI5Label3.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Label3.Suffix = ".com"
	'SDUI5Label3.Value = ""
	BANano.Await(SDUI5Label3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Label4.Initialize(Me, "SDUI5Label4", "SDUI5Label4")
	SDUI5Label4.ParentID = "SDUI5Column4"
	SDUI5Label4.Color = "success"
	SDUI5Label4.FloatingLabel = True
	SDUI5Label4.Label = "Large"
	SDUI5Label4.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Label4.Size = "lg"
	'SDUI5Label4.Value = ""
	BANano.Await(SDUI5Label4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Label5.Initialize(Me, "SDUI5Label5", "SDUI5Label5")
	SDUI5Label5.ParentID = "SDUI5Column5"
	SDUI5Label5.Color = "success"
	SDUI5Label5.FloatingLabel = True
	SDUI5Label5.Label = "XSmall"
	SDUI5Label5.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Label5.Size = "xs"
	'SDUI5Label5.Value = ""
	BANano.Await(SDUI5Label5.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Label6.Initialize(Me, "SDUI5Label6", "SDUI5Label6")
	SDUI5Label6.ParentID = "SDUI5Column6"
	SDUI5Label6.Color = "primary"
	SDUI5Label6.FloatingLabel = True
	SDUI5Label6.Label = "Medium"
	SDUI5Label6.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Label6.Size = "md"
	'SDUI5Label6.Value = ""
	BANano.Await(SDUI5Label6.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.SizeMd = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5Label7.Initialize(Me, "SDUI5Label7", "SDUI5Label7")
	SDUI5Label7.ParentID = "SDUI5Column7"
	SDUI5Label7.Color = "accent"
	SDUI5Label7.FloatingLabel = True
	SDUI5Label7.Label = "XLarge"
	SDUI5Label7.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Label7.Size = "xl"
	'SDUI5Label7.Value = ""
	BANano.Await(SDUI5Label7.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.SizeMd = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5Label8.Initialize(Me, "SDUI5Label8", "SDUI5Label8")
	SDUI5Label8.ParentID = "SDUI5Column8"
	SDUI5Label8.Color = "info"
	SDUI5Label8.FloatingLabel = True
	SDUI5Label8.Label = "Publish Date"
	SDUI5Label8.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	'SDUI5Label8.Value = ""
	BANano.Await(SDUI5Label8.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row1"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.SizeMd = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5Label9.Initialize(Me, "SDUI5Label9", "SDUI5Label9")
	SDUI5Label9.ParentID = "SDUI5Column9"
	SDUI5Label9.Color = "info"
	SDUI5Label9.FloatingLabel = True
	SDUI5Label9.InputType = "email"
	SDUI5Label9.Label = "Email Address"
	SDUI5Label9.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	'SDUI5Label9.Value = "anele@mbangas.com"
	BANano.Await(SDUI5Label9.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row1"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.SizeMd = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5Label10.Initialize(Me, "SDUI5Label10", "SDUI5Label10")
	SDUI5Label10.ParentID = "SDUI5Column10"
	SDUI5Label10.Color = "info"
	SDUI5Label10.FloatingLabel = True
	SDUI5Label10.InputType = "password"
	SDUI5Label10.Label = "Password"
	SDUI5Label10.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	'SDUI5Label10.Value = ""
	BANano.Await(SDUI5Label10.AddComponent)
	'
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row1"
	SDUI5Column12.AlignSelf = ""
	SDUI5Column12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.SizeMd = "6"
	BANano.Await(SDUI5Column12.AddComponent)
	'
	SDUI5Label12.Initialize(Me, "SDUI5Label12", "SDUI5Label12")
	SDUI5Label12.ParentID = "SDUI5Column12"
	SDUI5Label12.Color = "info"
	SDUI5Label12.InputType = "number"
	SDUI5Label12.Label = "Range"
	SDUI5Label12.MaxValue = "100"
	SDUI5Label12.MinValue = "0"
	SDUI5Label12.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	SDUI5Label12.StepValue = "1"
	'SDUI5Label12.Value = ""
	BANano.Await(SDUI5Label12.AddComponent)
	'
	SDUI5Column15.Initialize(Me, "SDUI5Column15", "SDUI5Column15")
	SDUI5Column15.ParentID = "SDUI5Row1"
	SDUI5Column15.AlignSelf = ""
	SDUI5Column15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column15.SizeMd = "6"
	BANano.Await(SDUI5Column15.AddComponent)
	'
	SDUI5Label15.Initialize(Me, "SDUI5Label15", "SDUI5Label15")
	SDUI5Label15.ParentID = "SDUI5Column15"
	SDUI5Label15.InputType = "file"
	SDUI5Label15.Label = "File"
	SDUI5Label15.Options = "b4a:b4a; b4j:b4j; b4i:b4i; b4r:b4r"
	'SDUI5Label15.Value = ""
	BANano.Await(SDUI5Label15.AddComponent)
	pgIndex.UpdateTitle("SDUI5Label")
End Sub

