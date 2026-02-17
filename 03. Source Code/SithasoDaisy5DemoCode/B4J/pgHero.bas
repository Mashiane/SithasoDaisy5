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
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Hero1 As SDUI5Hero		'ignore
	Private SDUI5Hero2 As SDUI5Hero		'ignore
	Private SDUI5Hero3 As SDUI5Hero		'ignore
	Private SDUI5Image1 As SDUI5Image		'ignore
	Private SDUI5Image2 As SDUI5Image		'ignore
	Private SDUI5Row4 As SDUI5Row		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Hero4 As SDUI5Hero		'ignore
	Private SDUI5Container2 As SDUI5Container		'ignore
	Private SDUI5Text1 As SDUI5Text		'ignore
	Private SDUI5Text2 As SDUI5Text		'ignore
	Private SDUI5Button1 As SDUI5Button		'ignore
	Private SDUI5Container3 As SDUI5Container		'ignore
	Private SDUI5Button2 As SDUI5Button		'ignore
	Private SDUI5Text3 As SDUI5Text		'ignore
	Private SDUI5Text4 As SDUI5Text		'ignore
	Private SDUI5Container4 As SDUI5Container		'ignore
	Private SDUI5Button3 As SDUI5Button		'ignore
	Private SDUI5Text5 As SDUI5Text		'ignore
	Private SDUI5Text6 As SDUI5Text		'ignore
	Private SDUI5Container5 As SDUI5Container		'ignore
	Private SDUI5Button4 As SDUI5Button		'ignore
	Private SDUI5Text7 As SDUI5Text		'ignore
	Private SDUI5Text8 As SDUI5Text		'ignore
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
	SDUI5Hero1.Initialize(Me, "SDUI5Hero1", "SDUI5Hero1")
	SDUI5Hero1.ParentID = "SDUI5Column1"
	SDUI5Hero1.BackgroundColor = "base-200"
	SDUI5Hero1.ContentTextAlign = "center"
	SDUI5Hero1.ContentAttributes = ""
	SDUI5Hero1.ContentClass = ""
	SDUI5Hero1.ContentStyle = ""
	SDUI5Hero1.Rounded = "lg"
	SDUI5Hero1.Shadow = "lg"
	BANano.Await(SDUI5Hero1.AddComponent)
	'
	SDUI5Hero2.Initialize(Me, "SDUI5Hero2", "SDUI5Hero2")
	SDUI5Hero2.ParentID = "SDUI5Column2"
	SDUI5Hero2.BackgroundColor = "base-200"
	SDUI5Hero2.ContentAttributes = ""
	SDUI5Hero2.ContentClass = ""
	SDUI5Hero2.ContentStyle = ""
	SDUI5Hero2.Rounded = "lg"
	SDUI5Hero2.Shadow = "lg"
	BANano.Await(SDUI5Hero2.AddComponent)
	'
	SDUI5Hero3.Initialize(Me, "SDUI5Hero3", "SDUI5Hero3")
	SDUI5Hero3.ParentID = "SDUI5Column3"
	SDUI5Hero3.BackgroundColor = "base-200"
	SDUI5Hero3.LgContentFlexDirection = "flex-row-reverse"
	SDUI5Hero3.ContentAttributes = ""
	SDUI5Hero3.ContentClass = ""
	SDUI5Hero3.ContentStyle = ""
	SDUI5Hero3.Rounded = "lg"
	SDUI5Hero3.Shadow = "lg"
	BANano.Await(SDUI5Hero3.AddComponent)
	'
	SDUI5Image1.Initialize(Me, "SDUI5Image1", "SDUI5Image1")
	SDUI5Image1.ParentID = "SDUI5Hero2_content"
	SDUI5Image1.Height = ""
	SDUI5Image1.Mask = "rounded-lg"
	SDUI5Image1.MaxWidth = "sm"
	SDUI5Image1.Shadow = "2xl"
	SDUI5Image1.Src = "https://img.daisyui.com/images/stock/photo-1635805737707-575885ab0820.webp"
	SDUI5Image1.Width = ""
	BANano.Await(SDUI5Image1.AddComponent)
	'
	SDUI5Image2.Initialize(Me, "SDUI5Image2", "SDUI5Image2")
	SDUI5Image2.ParentID = "SDUI5Hero3_content"
	SDUI5Image2.Height = ""
	SDUI5Image2.Mask = "rounded-lg"
	SDUI5Image2.MaxWidth = "sm"
	SDUI5Image2.Shadow = "2xl"
	SDUI5Image2.Src = "https://img.daisyui.com/images/stock/photo-1635805737707-575885ab0820.webp"
	SDUI5Image2.Width = ""
	BANano.Await(SDUI5Image2.AddComponent)
	'
	SDUI5Row4.Initialize(Me, "SDUI5Row4", "SDUI5Row4")
	SDUI5Row4.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row4.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row4"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Hero4.Initialize(Me, "SDUI5Hero4", "SDUI5Hero4")
	SDUI5Hero4.ParentID = "SDUI5Column4"
	SDUI5Hero4.BackgroundImage = "https://img.daisyui.com/images/stock/photo-1507358522600-9f71e620c44e.webp"
	SDUI5Hero4.ContentTextAlign = "center"
	SDUI5Hero4.Height = "480px"
	SDUI5Hero4.MinHeight = ""
	SDUI5Hero4.Overlay = True
	SDUI5Hero4.ContentAttributes = ""
	SDUI5Hero4.ContentClass = ""
	SDUI5Hero4.ContentStyle = ""
	SDUI5Hero4.Rounded = "lg"
	SDUI5Hero4.Shadow = "lg"
	SDUI5Hero4.TextColor = "neutral-content"
	BANano.Await(SDUI5Hero4.AddComponent)
	'
	SDUI5Container2.Initialize(Me, "SDUI5Container2", "SDUI5Container2")
	SDUI5Container2.ParentID = "SDUI5Hero1_content"
	SDUI5Container2.Container = False
	SDUI5Container2.MaxWidth = "md"
	BANano.Await(SDUI5Container2.AddComponent)
	'
	SDUI5Text1.Initialize(Me, "SDUI5Text1", "SDUI5Text1")
	SDUI5Text1.ParentID = "SDUI5Container2"
	SDUI5Text1.ApplyDefaults = False
	SDUI5Text1.FontWeight = "bold"
	'SDUI5Text1.LoremIpsum = False
	'SDUI5Text1.Rounded = "none"
	'SDUI5Text1.Shadow = "none"
	SDUI5Text1.Text = "Hello there"
	SDUI5Text1.TextSize = "5xl"
	SDUI5Text1.TextTag = "h1"
	BANano.Await(SDUI5Text1.AddComponent)
	'
	SDUI5Text2.Initialize(Me, "SDUI5Text2", "SDUI5Text2")
	SDUI5Text2.ParentID = "SDUI5Container2"
	'SDUI5Text2.LoremIpsum = False
	SDUI5Text2.PaddingAXYTBLR = "a=?; x=?; y=6; t=?; b=?; l=?; r=?"
	'SDUI5Text2.Rounded = "none"
	'SDUI5Text2.Shadow = "none"
	SDUI5Text2.Text = "Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi."
	BANano.Await(SDUI5Text2.AddComponent)
	'
	SDUI5Button1.Initialize(Me, "SDUI5Button1", "SDUI5Button1")
	SDUI5Button1.ParentID = "SDUI5Container2"
	SDUI5Button1.Color = "primary"
	SDUI5Button1.IconSize = "none"
	'SDUI5Button1.Image = ""
	'SDUI5Button1.ImageHeight = "32px"
	'SDUI5Button1.ImageWidth = "32px"
	SDUI5Button1.Size = "none"
	SDUI5Button1.Text = "Getting Started"
	BANano.Await(SDUI5Button1.AddComponent)
	'
	SDUI5Container3.Initialize(Me, "SDUI5Container3", "SDUI5Container3")
	SDUI5Container3.ParentID = "SDUI5Hero2_content"
	SDUI5Container3.Container = False
	SDUI5Container3.MaxWidth = "md"
	BANano.Await(SDUI5Container3.AddComponent)
	'
	SDUI5Button2.Initialize(Me, "SDUI5Button2", "SDUI5Button2")
	SDUI5Button2.ParentID = "SDUI5Container3"
	SDUI5Button2.Color = "primary"
	SDUI5Button2.IconSize = "none"
	'SDUI5Button2.Image = ""
	'SDUI5Button2.ImageHeight = "32px"
	'SDUI5Button2.ImageWidth = "32px"
	SDUI5Button2.Size = "none"
	SDUI5Button2.Text = "Getting Started"
	BANano.Await(SDUI5Button2.AddComponent)
	'
	SDUI5Text3.Initialize(Me, "SDUI5Text3", "SDUI5Text3")
	SDUI5Text3.ParentID = "SDUI5Container3"
	'SDUI5Text3.LoremIpsum = False
	SDUI5Text3.PaddingAXYTBLR = "a=?; x=?; y=6; t=?; b=?; l=?; r=?"
	'SDUI5Text3.Rounded = "none"
	'SDUI5Text3.Shadow = "none"
	SDUI5Text3.Text = "Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi."
	BANano.Await(SDUI5Text3.AddComponent)
	'
	SDUI5Text4.Initialize(Me, "SDUI5Text4", "SDUI5Text4")
	SDUI5Text4.ParentID = "SDUI5Container3"
	SDUI5Text4.ApplyDefaults = False
	SDUI5Text4.FontWeight = "bold"
	'SDUI5Text4.LoremIpsum = False
	'SDUI5Text4.Rounded = "none"
	'SDUI5Text4.Shadow = "none"
	SDUI5Text4.Text = "Box Office News"
	SDUI5Text4.TextSize = "5xl"
	SDUI5Text4.TextTag = "h1"
	BANano.Await(SDUI5Text4.AddComponent)
	'
	SDUI5Container4.Initialize(Me, "SDUI5Container4", "SDUI5Container4")
	SDUI5Container4.ParentID = "SDUI5Hero3_content"
	SDUI5Container4.Container = False
	SDUI5Container4.MaxWidth = "md"
	BANano.Await(SDUI5Container4.AddComponent)
	'
	SDUI5Button3.Initialize(Me, "SDUI5Button3", "SDUI5Button3")
	SDUI5Button3.ParentID = "SDUI5Container4"
	SDUI5Button3.Color = "primary"
	SDUI5Button3.IconSize = "none"
	'SDUI5Button3.Image = ""
	'SDUI5Button3.ImageHeight = "32px"
	'SDUI5Button3.ImageWidth = "32px"
	SDUI5Button3.Size = "none"
	SDUI5Button3.Text = "Getting Started"
	BANano.Await(SDUI5Button3.AddComponent)
	'
	SDUI5Text5.Initialize(Me, "SDUI5Text5", "SDUI5Text5")
	SDUI5Text5.ParentID = "SDUI5Container4"
	'SDUI5Text5.LoremIpsum = False
	SDUI5Text5.PaddingAXYTBLR = "a=?; x=?; y=6; t=?; b=?; l=?; r=?"
	'SDUI5Text5.Rounded = "none"
	'SDUI5Text5.Shadow = "none"
	SDUI5Text5.Text = "Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi."
	BANano.Await(SDUI5Text5.AddComponent)
	'
	SDUI5Text6.Initialize(Me, "SDUI5Text6", "SDUI5Text6")
	SDUI5Text6.ParentID = "SDUI5Container4"
	SDUI5Text6.ApplyDefaults = False
	SDUI5Text6.FontWeight = "bold"
	'SDUI5Text6.LoremIpsum = False
	'SDUI5Text6.Rounded = "none"
	'SDUI5Text6.Shadow = "none"
	SDUI5Text6.Text = "Box Office News"
	SDUI5Text6.TextSize = "5xl"
	SDUI5Text6.TextTag = "h1"
	BANano.Await(SDUI5Text6.AddComponent)
	'
	SDUI5Container5.Initialize(Me, "SDUI5Container5", "SDUI5Container5")
	SDUI5Container5.ParentID = "SDUI5Hero4_content"
	SDUI5Container5.Container = False
	SDUI5Container5.MaxWidth = "md"
	BANano.Await(SDUI5Container5.AddComponent)
	'
	SDUI5Button4.Initialize(Me, "SDUI5Button4", "SDUI5Button4")
	SDUI5Button4.ParentID = "SDUI5Container5"
	SDUI5Button4.Color = "primary"
	SDUI5Button4.IconSize = "none"
	'SDUI5Button4.Image = ""
	'SDUI5Button4.ImageHeight = "32px"
	'SDUI5Button4.ImageWidth = "32px"
	SDUI5Button4.Size = "none"
	SDUI5Button4.Text = "Getting Started"
	BANano.Await(SDUI5Button4.AddComponent)
	'
	SDUI5Text7.Initialize(Me, "SDUI5Text7", "SDUI5Text7")
	SDUI5Text7.ParentID = "SDUI5Container5"
	'SDUI5Text7.LoremIpsum = False
	SDUI5Text7.PaddingAXYTBLR = "a=?; x=?; y=6; t=?; b=?; l=?; r=?"
	'SDUI5Text7.Rounded = "none"
	'SDUI5Text7.Shadow = "none"
	SDUI5Text7.Text = "Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi."
	BANano.Await(SDUI5Text7.AddComponent)
	'
	SDUI5Text8.Initialize(Me, "SDUI5Text8", "SDUI5Text8")
	SDUI5Text8.ParentID = "SDUI5Container5"
	SDUI5Text8.ApplyDefaults = False
	SDUI5Text8.FontWeight = "bold"
	'SDUI5Text8.LoremIpsum = False
	'SDUI5Text8.Rounded = "none"
	'SDUI5Text8.Shadow = "none"
	SDUI5Text8.Text = "Box Office News"
	SDUI5Text8.TextSize = "5xl"
	SDUI5Text8.TextTag = "h1"
	BANano.Await(SDUI5Text8.AddComponent)
	pgIndex.UpdateTitle("SDUI5Hero")
End Sub

