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
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private mycard As SDUI5Card		'ignore
	Private SDUI5Button1 As SDUI5Button		'ignore
	Private card2 As SDUI5Card		'ignore
	Private SDUI5Button2 As SDUI5Button		'ignore
	Private card3 As SDUI5Card		'ignore
	Private SDUI5Badge1 As SDUI5Badge		'ignore
	Private SDUI5Badge2 As SDUI5Badge		'ignore
	Private SDUI5Badge3 As SDUI5Badge		'ignore
	Private SDUI5Card1 As SDUI5Card		'ignore
	Private card4 As SDUI5Card		'ignore
	Private SDUI5Button3 As SDUI5Button		'ignore
	Private card5 As SDUI5Card		'ignore
	Private SDUI5Button4 As SDUI5Button		'ignore
	Private card6 As SDUI5Card		'ignore
	Private SDUI5Button5 As SDUI5Button		'ignore
	Private card7 As SDUI5Card		'ignore
	Private SDUI5Button6 As SDUI5Button		'ignore
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
	SDUI5Row1.GridCols = ""
	SDUI5Row1.GridColsMd = "12"
	SDUI5Row1.GridColsSm = "1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = ""
	SDUI5Column1.SizeMd = "6"
	SDUI5Column1.SizeSm = "12"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = ""
	SDUI5Column2.SizeMd = "6"
	SDUI5Column2.SizeSm = "12"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = ""
	SDUI5Column3.SizeMd = "6"
	SDUI5Column3.SizeSm = "12"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Size = ""
	SDUI5Column4.SizeMd = "6"
	SDUI5Column4.SizeSm = "12"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = ""
	SDUI5Column5.SizeMd = "6"
	SDUI5Column5.SizeSm = "12"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.Size = ""
	SDUI5Column6.SizeMd = "6"
	SDUI5Column6.SizeSm = "12"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.Size = ""
	SDUI5Column7.SizeMd = "6"
	SDUI5Column7.SizeSm = "12"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.Size = ""
	SDUI5Column8.SizeMd = "6"
	SDUI5Column8.SizeSm = "12"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	mycard.Initialize(Me, "mycard", "mycard")
	mycard.ParentID = "SDUI5Column1"
	mycard.Image = "./assets/shoes.webp"
	mycard.ImageVisible = True
	mycard.Content = "A card component has a figure, a body part, and inside body there are title and actions parts"
	BANano.Await(mycard.AddComponent)
	'
	SDUI5Button1.Initialize(Me, "SDUI5Button1", "SDUI5Button1")
	SDUI5Button1.ParentID = "mycard_actions"
	SDUI5Button1.Color = "primary"
	SDUI5Button1.IconSize = "none"
	'SDUI5Button1.Image = ""
	'SDUI5Button1.ImageHeight = "32px"
	'SDUI5Button1.ImageWidth = "32px"
	SDUI5Button1.Size = "none"
	SDUI5Button1.Text = "Buy Now"
	BANano.Await(SDUI5Button1.AddComponent)
	'
	card2.Initialize(Me, "card2", "card2")
	card2.ParentID = "SDUI5Column2"
	card2.Image = ""
	card2.Content = "A card component has a figure, a body part, and inside body there are title and actions parts"
	card2.Size = "xs"
	card2.Title = "XSmall Card"
	BANano.Await(card2.AddComponent)
	'
	SDUI5Button2.Initialize(Me, "SDUI5Button2", "SDUI5Button2")
	SDUI5Button2.ParentID = "card2_actions"
	SDUI5Button2.Color = "primary"
	SDUI5Button2.IconSize = "none"
	'SDUI5Button2.Image = ""
	'SDUI5Button2.ImageHeight = "32px"
	'SDUI5Button2.ImageWidth = "32px"
	SDUI5Button2.Size = "none"
	SDUI5Button2.Text = "Buy Now"
	BANano.Await(SDUI5Button2.AddComponent)
	'
	card3.Initialize(Me, "card3", "card3")
	card3.ParentID = "SDUI5Column3"
	card3.Border = False
	card3.Dash = True
	card3.Image = "./assets/shoes.webp"
	card3.ImageVisible = True
	card3.Content = "A card component has a figure, a body part, and inside body there are title and actions parts"
	BANano.Await(card3.AddComponent)
	'
	SDUI5Badge1.Initialize(Me, "SDUI5Badge1", "SDUI5Badge1")
	SDUI5Badge1.ParentID = "card3_title"
	SDUI5Badge1.Color = "secondary"
	SDUI5Badge1.Text = "NEW"
	BANano.Await(SDUI5Badge1.AddComponent)
	'
	SDUI5Badge2.Initialize(Me, "SDUI5Badge2", "SDUI5Badge2")
	SDUI5Badge2.ParentID = "card3_actions"
	SDUI5Badge2.Color = "none"
	SDUI5Badge2.Outline = True
	SDUI5Badge2.Text = "Fashion"
	BANano.Await(SDUI5Badge2.AddComponent)
	'
	SDUI5Badge3.Initialize(Me, "SDUI5Badge3", "SDUI5Badge3")
	SDUI5Badge3.ParentID = "card3_actions"
	SDUI5Badge3.Color = "none"
	SDUI5Badge3.Outline = True
	SDUI5Badge3.Text = "Products"
	BANano.Await(SDUI5Badge3.AddComponent)
	'
	SDUI5Card1.Initialize(Me, "SDUI5Card1", "SDUI5Card1")
	SDUI5Card1.ParentID = "SDUI5Column4"
	SDUI5Card1.Image = "./assets/shoes.webp"
	SDUI5Card1.ImagePosition = "end"
	SDUI5Card1.ImageVisible = True
	SDUI5Card1.Content = "A card component has a figure, a body part, and inside body there are title and actions parts"
	BANano.Await(SDUI5Card1.AddComponent)
	'
	card4.Initialize(Me, "card4", "card4")
	card4.ParentID = "SDUI5Column5"
	card4.BodyClasses = "items-center text-center"
	card4.Image = "./assets/shoes.webp"
	card4.ImageClasses = "px-10 pt-10"
	card4.ImageRoundedBox = True
	card4.ImageVisible = True
	card4.Content = "A card component has a figure, a body part, and inside body there are title and actions parts"
	BANano.Await(card4.AddComponent)
	'
	SDUI5Button3.Initialize(Me, "SDUI5Button3", "SDUI5Button3")
	SDUI5Button3.ParentID = "card4_actions"
	SDUI5Button3.Color = "primary"
	SDUI5Button3.IconSize = "none"
	'SDUI5Button3.Image = ""
	'SDUI5Button3.ImageHeight = "32px"
	'SDUI5Button3.ImageWidth = "32px"
	SDUI5Button3.Size = "none"
	SDUI5Button3.Text = "Buy Now"
	BANano.Await(SDUI5Button3.AddComponent)
	'
	card5.Initialize(Me, "card5", "card5")
	card5.ParentID = "SDUI5Column6"
	card5.Image = "./assets/spider.webp"
	card5.ImageFull = True
	card5.ImageHeight = "full"
	card5.ImageRoundedBox = True
	card5.ImageVisible = True
	card5.ImageWidth = "full"
	card5.Content = "A card component has a figure, a body part, and inside body there are title and actions parts"
	BANano.Await(card5.AddComponent)
	'
	SDUI5Button4.Initialize(Me, "SDUI5Button4", "SDUI5Button4")
	SDUI5Button4.ParentID = "card5_actions"
	SDUI5Button4.Color = "primary"
	SDUI5Button4.IconSize = "none"
	'SDUI5Button4.Image = ""
	'SDUI5Button4.ImageHeight = "32px"
	'SDUI5Button4.ImageWidth = "32px"
	SDUI5Button4.Size = "none"
	SDUI5Button4.Text = "Buy Now"
	BANano.Await(SDUI5Button4.AddComponent)
	'
	card6.Initialize(Me, "card6", "card6")
	card6.ParentID = "SDUI5Column7"
	card6.BackgroundColor = "primary"
	card6.Image = "./assets/spider.webp"
	card6.Content = "A card component has a figure, a body part, and inside body there are title and actions parts"
	card6.TextColor = "primary-content"
	BANano.Await(card6.AddComponent)
	'
	SDUI5Button5.Initialize(Me, "SDUI5Button5", "SDUI5Button5")
	SDUI5Button5.ParentID = "card6_actions"
	SDUI5Button5.IconSize = "none"
	'SDUI5Button5.Image = ""
	'SDUI5Button5.ImageHeight = "32px"
	'SDUI5Button5.ImageWidth = "32px"
	SDUI5Button5.Size = "none"
	SDUI5Button5.Text = "Buy Now"
	BANano.Await(SDUI5Button5.AddComponent)
	'
	card7.Initialize(Me, "card7", "card7")
	card7.ParentID = "SDUI5Column8"
	card7.BackgroundColor = ""
	card7.Image = "./assets/casette.webp"
	card7.ImageVisible = True
	card7.Content = "Click the button to watch on Jetflix app."
	card7.Shadow = "lg"
	card7.Side = True
	card7.Title = "New movie is released!"
	BANano.Await(card7.AddComponent)
	'
	SDUI5Button6.Initialize(Me, "SDUI5Button6", "SDUI5Button6")
	SDUI5Button6.ParentID = "card7_actions"
	SDUI5Button6.Color = "primary"
	SDUI5Button6.IconSize = "none"
	'SDUI5Button6.Image = ""
	'SDUI5Button6.ImageHeight = "32px"
	'SDUI5Button6.ImageWidth = "32px"
	SDUI5Button6.Size = "none"
	SDUI5Button6.Text = "Watch"
	BANano.Await(SDUI5Button6.AddComponent)
	pgIndex.UpdateTitle("SDUI5Card")
End Sub

