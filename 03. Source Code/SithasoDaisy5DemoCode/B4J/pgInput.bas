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
	Private SDUI5TextBox1 As SDUI5TextBox		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5TextBox2 As SDUI5TextBox		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5TextBox3 As SDUI5TextBox		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5TextBox4 As SDUI5TextBox		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5TextBox5 As SDUI5TextBox		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5TextBox6 As SDUI5TextBox		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5TextBox7 As SDUI5TextBox		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5TextBox8 As SDUI5TextBox		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5TextBox9 As SDUI5TextBox		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5TextBox10 As SDUI5TextBox		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5TextBox11 As SDUI5TextBox		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5TextBox12 As SDUI5TextBox		'ignore
	Private SDUI5Column13 As SDUI5Column		'ignore
	Private SDUI5TextBox13 As SDUI5TextBox		'ignore
	Private SDUI5Column14 As SDUI5Column		'ignore
	Private SDUI5TextBox14 As SDUI5TextBox		'ignore
	Private SDUI5Column15 As SDUI5Column		'ignore
	Private SDUI5TextBox15 As SDUI5TextBox		'ignore
	Private SDUI5Column16 As SDUI5Column		'ignore
	Private SDUI5TextBox16 As SDUI5TextBox		'ignore
	Private SDUI5Column17 As SDUI5Column		'ignore
	Private SDUI5TextBox17 As SDUI5TextBox		'ignore
	Private SDUI5Column18 As SDUI5Column		'ignore
	Private txtpassword As SDUI5TextBox		'ignore
	Private coldialer As SDUI5Column		'ignore
	Private txtDialer As SDUI5TextBox		'ignore
	Private SDUI5Column19 As SDUI5Column		'ignore
	Private txtdob As SDUI5TextBox		'ignore
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
	SDUI5TextBox1.Initialize(Me, "SDUI5TextBox1", "SDUI5TextBox1")
	SDUI5TextBox1.ParentID = "SDUI5Column1"
	SDUI5TextBox1.AppendImage = "./assets/search.svg"
	SDUI5TextBox1.AppendVisible = True
	SDUI5TextBox1.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox1.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox1.DPPosition = "none"
	SDUI5TextBox1.InputType = "buttons"
	SDUI5TextBox1.Placeholder = "Type here"
	SDUI5TextBox1.PrependImage = "./assets/search.svg"
	SDUI5TextBox1.PrependVisible = True
	SDUI5TextBox1.Size = "none"
	BANano.Await(SDUI5TextBox1.AddComponent)
	'
	SDUI5TextBox2.Initialize(Me, "SDUI5TextBox2", "SDUI5TextBox2")
	SDUI5TextBox2.ParentID = "SDUI5Column2"
	SDUI5TextBox2.AppendImage = "./assets/search.svg"
	SDUI5TextBox2.AppendVisible = True
	SDUI5TextBox2.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox2.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox2.DPPosition = "none"
	SDUI5TextBox2.Ghost = True
	SDUI5TextBox2.InputType = "buttons"
	SDUI5TextBox2.Placeholder = "Ghost"
	SDUI5TextBox2.PrependImage = "./assets/search.svg"
	SDUI5TextBox2.PrependVisible = True
	SDUI5TextBox2.Size = "sm"
	BANano.Await(SDUI5TextBox2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5TextBox3.Initialize(Me, "SDUI5TextBox3", "SDUI5TextBox3")
	SDUI5TextBox3.ParentID = "SDUI5Column3"
	SDUI5TextBox3.AppendImage = "./assets/search.svg"
	SDUI5TextBox3.AppendVisible = True
	SDUI5TextBox3.BackgroundColor = ""
	SDUI5TextBox3.Border = False
	SDUI5TextBox3.BorderColor = ""
	SDUI5TextBox3.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox3.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox3.DPPosition = "none"
	SDUI5TextBox3.Hint = "Optional"
	SDUI5TextBox3.InputType = "legend"
	SDUI5TextBox3.Label = "What is your name?"
	SDUI5TextBox3.Placeholder = "Type here"
	SDUI5TextBox3.PrependImage = "./assets/search.svg"
	SDUI5TextBox3.PrependVisible = True
	SDUI5TextBox3.Required = True
	SDUI5TextBox3.Size = "xs"
	BANano.Await(SDUI5TextBox3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5TextBox4.Initialize(Me, "SDUI5TextBox4", "SDUI5TextBox4")
	SDUI5TextBox4.ParentID = "SDUI5Column4"
	SDUI5TextBox4.Color = "accent"
	SDUI5TextBox4.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox4.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox4.DPPosition = "none"
	SDUI5TextBox4.Hint = "Optional"
	SDUI5TextBox4.Label = "What is your name?"
	SDUI5TextBox4.Placeholder = "Type here"
	SDUI5TextBox4.Size = "none"
	BANano.Await(SDUI5TextBox4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5TextBox5.Initialize(Me, "SDUI5TextBox5", "SDUI5TextBox5")
	SDUI5TextBox5.ParentID = "SDUI5Column5"
	SDUI5TextBox5.Color = "error"
	SDUI5TextBox5.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox5.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox5.DPPosition = "none"
	SDUI5TextBox5.Hint = "Optional"
	SDUI5TextBox5.Label = "What is your name?"
	SDUI5TextBox5.Placeholder = "Type here"
	SDUI5TextBox5.Size = "none"
	BANano.Await(SDUI5TextBox5.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5TextBox6.Initialize(Me, "SDUI5TextBox6", "SDUI5TextBox6")
	SDUI5TextBox6.ParentID = "SDUI5Column6"
	SDUI5TextBox6.Color = "info"
	SDUI5TextBox6.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox6.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox6.DPPosition = "none"
	SDUI5TextBox6.Hint = "Optional"
	SDUI5TextBox6.Label = "What is your name?"
	SDUI5TextBox6.Placeholder = "Type here"
	SDUI5TextBox6.Required = True
	SDUI5TextBox6.Size = "none"
	BANano.Await(SDUI5TextBox6.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.SizeMd = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5TextBox7.Initialize(Me, "SDUI5TextBox7", "SDUI5TextBox7")
	SDUI5TextBox7.ParentID = "SDUI5Column7"
	SDUI5TextBox7.Color = "neutral"
	SDUI5TextBox7.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox7.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox7.DPPosition = "none"
	SDUI5TextBox7.Hint = "Optional"
	SDUI5TextBox7.Label = "What is your name?"
	SDUI5TextBox7.Placeholder = "Type here"
	SDUI5TextBox7.Size = "none"
	BANano.Await(SDUI5TextBox7.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.SizeMd = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5TextBox8.Initialize(Me, "SDUI5TextBox8", "SDUI5TextBox8")
	SDUI5TextBox8.ParentID = "SDUI5Column8"
	SDUI5TextBox8.Color = "primary"
	SDUI5TextBox8.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox8.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox8.DPPosition = "none"
	SDUI5TextBox8.Hint = "Optional"
	SDUI5TextBox8.Label = "What is your name?"
	SDUI5TextBox8.Placeholder = "Type here"
	SDUI5TextBox8.Size = "none"
	BANano.Await(SDUI5TextBox8.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row1"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.SizeMd = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5TextBox9.Initialize(Me, "SDUI5TextBox9", "SDUI5TextBox9")
	SDUI5TextBox9.ParentID = "SDUI5Column9"
	SDUI5TextBox9.Color = "secondary"
	SDUI5TextBox9.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox9.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox9.DPPosition = "none"
	SDUI5TextBox9.Hint = "Optional"
	SDUI5TextBox9.Label = "What is your name?"
	SDUI5TextBox9.Placeholder = "Type here"
	SDUI5TextBox9.Size = "none"
	BANano.Await(SDUI5TextBox9.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row1"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.SizeMd = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5TextBox10.Initialize(Me, "SDUI5TextBox10", "SDUI5TextBox10")
	SDUI5TextBox10.ParentID = "SDUI5Column10"
	SDUI5TextBox10.Color = "success"
	SDUI5TextBox10.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox10.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox10.DPPosition = "none"
	SDUI5TextBox10.Hint = "Optional"
	SDUI5TextBox10.Label = "What is your name?"
	SDUI5TextBox10.Placeholder = "Type here"
	SDUI5TextBox10.Size = "none"
	BANano.Await(SDUI5TextBox10.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row1"
	SDUI5Column11.AlignSelf = ""
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.SizeMd = "6"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	SDUI5TextBox11.Initialize(Me, "SDUI5TextBox11", "SDUI5TextBox11")
	SDUI5TextBox11.ParentID = "SDUI5Column11"
	SDUI5TextBox11.Color = "warning"
	SDUI5TextBox11.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox11.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox11.DPPosition = "none"
	SDUI5TextBox11.Hint = "Optional"
	SDUI5TextBox11.Label = "What is your name?"
	SDUI5TextBox11.Placeholder = "Type here"
	SDUI5TextBox11.Size = "none"
	BANano.Await(SDUI5TextBox11.AddComponent)
	'
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row1"
	SDUI5Column12.AlignSelf = ""
	SDUI5Column12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.SizeMd = "6"
	BANano.Await(SDUI5Column12.AddComponent)
	'
	SDUI5TextBox12.Initialize(Me, "SDUI5TextBox12", "SDUI5TextBox12")
	SDUI5TextBox12.ParentID = "SDUI5Column12"
	SDUI5TextBox12.AppendImage = "./assets/search.svg"
	SDUI5TextBox12.AppendVisible = True
	SDUI5TextBox12.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox12.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox12.DPPosition = "none"
	SDUI5TextBox12.Hint = "Optional"
	SDUI5TextBox12.InputType = "buttons"
	SDUI5TextBox12.Placeholder = "XSmall"
	SDUI5TextBox12.PrependImage = "./assets/search.svg"
	SDUI5TextBox12.PrependVisible = True
	SDUI5TextBox12.Size = "xs"
	BANano.Await(SDUI5TextBox12.AddComponent)
	'
	SDUI5Column13.Initialize(Me, "SDUI5Column13", "SDUI5Column13")
	SDUI5Column13.ParentID = "SDUI5Row1"
	SDUI5Column13.AlignSelf = ""
	SDUI5Column13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column13.SizeMd = "6"
	BANano.Await(SDUI5Column13.AddComponent)
	'
	SDUI5TextBox13.Initialize(Me, "SDUI5TextBox13", "SDUI5TextBox13")
	SDUI5TextBox13.ParentID = "SDUI5Column13"
	SDUI5TextBox13.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox13.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox13.DPPosition = "none"
	SDUI5TextBox13.Hint = "Optional"
	SDUI5TextBox13.Placeholder = "Small"
	SDUI5TextBox13.Size = "sm"
	BANano.Await(SDUI5TextBox13.AddComponent)
	'
	SDUI5Column14.Initialize(Me, "SDUI5Column14", "SDUI5Column14")
	SDUI5Column14.ParentID = "SDUI5Row1"
	SDUI5Column14.AlignSelf = ""
	SDUI5Column14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column14.SizeMd = "6"
	BANano.Await(SDUI5Column14.AddComponent)
	'
	SDUI5TextBox14.Initialize(Me, "SDUI5TextBox14", "SDUI5TextBox14")
	SDUI5TextBox14.ParentID = "SDUI5Column14"
	SDUI5TextBox14.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox14.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox14.DPPosition = "none"
	SDUI5TextBox14.Hint = "Optional"
	SDUI5TextBox14.Placeholder = "Medium"
	BANano.Await(SDUI5TextBox14.AddComponent)
	'
	SDUI5Column15.Initialize(Me, "SDUI5Column15", "SDUI5Column15")
	SDUI5Column15.ParentID = "SDUI5Row1"
	SDUI5Column15.AlignSelf = ""
	SDUI5Column15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column15.SizeMd = "6"
	BANano.Await(SDUI5Column15.AddComponent)
	'
	SDUI5TextBox15.Initialize(Me, "SDUI5TextBox15", "SDUI5TextBox15")
	SDUI5TextBox15.ParentID = "SDUI5Column15"
	SDUI5TextBox15.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox15.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox15.DPPosition = "none"
	SDUI5TextBox15.Hint = "Optional"
	SDUI5TextBox15.Placeholder = "Large"
	SDUI5TextBox15.Size = "lg"
	BANano.Await(SDUI5TextBox15.AddComponent)
	'
	SDUI5Column16.Initialize(Me, "SDUI5Column16", "SDUI5Column16")
	SDUI5Column16.ParentID = "SDUI5Row1"
	SDUI5Column16.AlignSelf = ""
	SDUI5Column16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column16.SizeMd = "6"
	BANano.Await(SDUI5Column16.AddComponent)
	'
	SDUI5TextBox16.Initialize(Me, "SDUI5TextBox16", "SDUI5TextBox16")
	SDUI5TextBox16.ParentID = "SDUI5Column16"
	SDUI5TextBox16.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox16.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox16.DPPosition = "none"
	SDUI5TextBox16.Hint = "Optional"
	SDUI5TextBox16.Placeholder = "XLarge"
	SDUI5TextBox16.Size = "xl"
	BANano.Await(SDUI5TextBox16.AddComponent)
	'
	SDUI5Column17.Initialize(Me, "SDUI5Column17", "SDUI5Column17")
	SDUI5Column17.ParentID = "SDUI5Row1"
	SDUI5Column17.AlignSelf = ""
	SDUI5Column17.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column17.SizeMd = "6"
	BANano.Await(SDUI5Column17.AddComponent)
	'
	SDUI5TextBox17.Initialize(Me, "SDUI5TextBox17", "SDUI5TextBox17")
	SDUI5TextBox17.ParentID = "SDUI5Column17"
	SDUI5TextBox17.AppendImage = "./assets/search.svg"
	SDUI5TextBox17.AppendVisible = True
	SDUI5TextBox17.DPAltFormat = "Y-m-d H:i"
	SDUI5TextBox17.DPDateFormat = "Y-m-d H:i"
	SDUI5TextBox17.DPPosition = "none"
	SDUI5TextBox17.InputType = "buttons-floating"
	SDUI5TextBox17.Label = "Number"
	SDUI5TextBox17.MaxValue = "10"
	SDUI5TextBox17.MinValue = "0"
	SDUI5TextBox17.Placeholder = "Number"
	SDUI5TextBox17.PrependImage = "./assets/search.svg"
	SDUI5TextBox17.PrependVisible = True
	SDUI5TextBox17.Required = True
	SDUI5TextBox17.Size = "sm"
	SDUI5TextBox17.StepValue = "1"
	SDUI5TextBox17.TypeOf = "number"
	BANano.Await(SDUI5TextBox17.AddComponent)
	'
	SDUI5Column18.Initialize(Me, "SDUI5Column18", "SDUI5Column18")
	SDUI5Column18.ParentID = "SDUI5Row1"
	SDUI5Column18.AlignSelf = ""
	SDUI5Column18.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column18.SizeMd = "6"
	BANano.Await(SDUI5Column18.AddComponent)
	'
	txtpassword.Initialize(Me, "txtpassword", "txtpassword")
	txtpassword.ParentID = "SDUI5Column18"
	txtpassword.AppendVisible = True
	txtpassword.DPAltFormat = "Y-m-d H:i"
	txtpassword.DPDateFormat = "Y-m-d H:i"
	txtpassword.DPPosition = "none"
	txtpassword.InputType = "legend"
	txtpassword.Label = "Password"
	txtpassword.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtpassword.Required = True
	txtpassword.RoundedBox = True
	txtpassword.Shadow = "lg"
	txtpassword.ShowEyes = True
	txtpassword.Size = "none"
	txtpassword.TypeOf = "password"
	txtpassword.Value = "anythingcanhappen"
	BANano.Await(txtpassword.AddComponent)
	'
	coldialer.Initialize(Me, "coldialer", "coldialer")
	coldialer.ParentID = "SDUI5Row1"
	coldialer.AlignSelf = ""
	coldialer.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	coldialer.SizeMd = "6"
	BANano.Await(coldialer.AddComponent)
	'
	txtDialer.Initialize(Me, "txtDialer", "txtDialer")
	txtDialer.ParentID = "coldialer"
	txtDialer.BackgroundColor = ""
	txtDialer.Border = False
	txtDialer.BorderColor = ""
	txtDialer.DPAltFormat = "Y-m-d H:i"
	txtDialer.DPDateFormat = "Y-m-d H:i"
	txtDialer.DPPosition = "none"
	txtDialer.Hint = "Optional"
	txtDialer.InputType = "buttons"
	txtDialer.Label = "KG's"
	txtDialer.MaxValue = "100"
	txtDialer.MinValue = "0"
	txtDialer.Required = True
	txtDialer.Size = "none"
	txtDialer.StepValue = "1"
	txtDialer.TypeOf = "dialer"
	BANano.Await(txtDialer.AddComponent)
	'
	SDUI5Column19.Initialize(Me, "SDUI5Column19", "SDUI5Column19")
	SDUI5Column19.ParentID = "SDUI5Row1"
	SDUI5Column19.AlignSelf = ""
	SDUI5Column19.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column19.SizeMd = "6"
	BANano.Await(SDUI5Column19.AddComponent)
	'
	txtdob.Initialize(Me, "txtdob", "txtdob")
	txtdob.ParentID = "SDUI5Column19"
	txtdob.BackgroundColor = ""
	txtdob.Border = False
	txtdob.BorderColor = ""
	txtdob.DPAllowInput = True
	txtdob.DPAltFormat = "F j, Y"
	txtdob.DPCloseOnSelect = True
	txtdob.Hint = "Optional"
	txtdob.InputType = "legend"
	txtdob.Label = "Date of Birth"
	txtdob.Size = "none"
	txtdob.TypeOf = "date-picker"
	BANano.Await(txtdob.AddComponent)
	pgIndex.UpdateTitle("SDUI5TextBox")
End Sub

Private Sub SDUI5TextBox1_Append (e As BANanoEvent)
	app.ShowToastSuccess("Append")
End Sub

Private Sub SDUI5TextBox1_Prepend (e As BANanoEvent)
	app.ShowToastSuccess("Prepend")
End Sub

Private Sub SDUI5TextBox1_Change (Value As String)
	Log("SDUI5TextBox1_Change...") 
	Log(Value)
End Sub

Private Sub SDUI5TextBox1_Input (Value As String)
	Log("SDUI5TextBox1_Input...")
	Log(Value)
End Sub

