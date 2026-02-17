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
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5Column13 As SDUI5Column		'ignore
	Private SDUI5Column14 As SDUI5Column		'ignore
	Private SDUI5Column15 As SDUI5Column		'ignore
	Private SDUI5Column16 As SDUI5Column		'ignore
	Private SDUI5Column17 As SDUI5Column		'ignore
	Private SDUI5Avatar1 As SDUI5Avatar		'ignore
	Private SDUI5Avatar2 As SDUI5Avatar		'ignore
	Private SDUI5Avatar3 As SDUI5Avatar		'ignore
	Private SDUI5Avatar4 As SDUI5Avatar		'ignore
	Private SDUI5Avatar5 As SDUI5Avatar		'ignore
	Private SDUI5Avatar6 As SDUI5Avatar		'ignore
	Private SDUI5Avatar7 As SDUI5Avatar		'ignore
	Private SDUI5Avatar8 As SDUI5Avatar		'ignore
	Private SDUI5Avatar9 As SDUI5Avatar		'ignore
	Private SDUI5Avatar10 As SDUI5Avatar		'ignore
	Private SDUI5Avatar11 As SDUI5Avatar		'ignore
	Private SDUI5Avatar12 As SDUI5Avatar		'ignore
	Private SDUI5Avatar13 As SDUI5Avatar		'ignore
	Private SDUI5Avatar14 As SDUI5Avatar		'ignore
	Private SDUI5Avatar15 As SDUI5Avatar		'ignore
	Private SDUI5Avatar16 As SDUI5Avatar		'ignore
	Private SDUI5AvatarGroup1 As SDUI5AvatarGroup		'ignore
	Private SDUI5Avatar17 As SDUI5Avatar		'ignore
	Private SDUI5Avatar18 As SDUI5Avatar		'ignore
	Private SDUI5Avatar19 As SDUI5Avatar		'ignore
	Private SDUI5Avatar20 As SDUI5Avatar		'ignore
	Private SDUI5Avatar21 As SDUI5Avatar		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	SDUI5Container1.Classes = "mx-auto"
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
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Size = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.Size = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row2"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.Size = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.Size = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row2"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.Size = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row2"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.Size = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row2"
	SDUI5Column11.AlignSelf = ""
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.Size = "6"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row2"
	SDUI5Column12.AlignSelf = ""
	SDUI5Column12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.Size = "6"
	BANano.Await(SDUI5Column12.AddComponent)
	'
	SDUI5Column13.Initialize(Me, "SDUI5Column13", "SDUI5Column13")
	SDUI5Column13.ParentID = "SDUI5Row2"
	SDUI5Column13.AlignSelf = ""
	SDUI5Column13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column13.Size = "6"
	BANano.Await(SDUI5Column13.AddComponent)
	'
	SDUI5Column14.Initialize(Me, "SDUI5Column14", "SDUI5Column14")
	SDUI5Column14.ParentID = "SDUI5Row2"
	SDUI5Column14.AlignSelf = ""
	SDUI5Column14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column14.Size = "6"
	BANano.Await(SDUI5Column14.AddComponent)
	'
	SDUI5Column15.Initialize(Me, "SDUI5Column15", "SDUI5Column15")
	SDUI5Column15.ParentID = "SDUI5Row3"
	SDUI5Column15.AlignSelf = ""
	SDUI5Column15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column15.Size = "6"
	BANano.Await(SDUI5Column15.AddComponent)
	'
	SDUI5Column16.Initialize(Me, "SDUI5Column16", "SDUI5Column16")
	SDUI5Column16.ParentID = "SDUI5Row3"
	SDUI5Column16.AlignSelf = ""
	SDUI5Column16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column16.Size = "6"
	BANano.Await(SDUI5Column16.AddComponent)
	'
	SDUI5Column17.Initialize(Me, "SDUI5Column17", "SDUI5Column17")
	SDUI5Column17.ParentID = "SDUI5Row3"
	SDUI5Column17.AlignSelf = ""
	SDUI5Column17.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column17.Size = "6"
	BANano.Await(SDUI5Column17.AddComponent)
	'
	SDUI5Avatar1.Initialize(Me, "SDUI5Avatar1", "SDUI5Avatar1")
	SDUI5Avatar1.ParentID = "SDUI5Column1"
	SDUI5Avatar1.AvatarType = "placeholder"
	SDUI5Avatar1.Image = "./assets/600x600.jpg"
	SDUI5Avatar1.RingColor = ""
	SDUI5Avatar1.TextColor = "#ffa500"
	BANano.Await(SDUI5Avatar1.AddComponent)
	'
	SDUI5Avatar2.Initialize(Me, "SDUI5Avatar2", "SDUI5Avatar2")
	SDUI5Avatar2.ParentID = "SDUI5Column2"
	SDUI5Avatar2.BackgroundColor = ""
	SDUI5Avatar2.RingColor = ""
	BANano.Await(SDUI5Avatar2.AddComponent)
	'
	SDUI5Avatar3.Initialize(Me, "SDUI5Avatar3", "SDUI5Avatar3")
	SDUI5Avatar3.ParentID = "SDUI5Column3"
	SDUI5Avatar3.BackgroundColor = ""
	SDUI5Avatar3.Ring = True
	BANano.Await(SDUI5Avatar3.AddComponent)
	'
	SDUI5Avatar4.Initialize(Me, "SDUI5Avatar4", "SDUI5Avatar4")
	SDUI5Avatar4.ParentID = "SDUI5Column15"
	SDUI5Avatar4.BackgroundColor = ""
	SDUI5Avatar4.Image = "./assets/daisywoman3.png"
	SDUI5Avatar4.Mask = "rounded-3xl"
	BANano.Await(SDUI5Avatar4.AddComponent)
	'
	SDUI5Avatar5.Initialize(Me, "SDUI5Avatar5", "SDUI5Avatar5")
	SDUI5Avatar5.ParentID = "SDUI5Column4"
	SDUI5Avatar5.BackgroundColor = ""
	SDUI5Avatar5.Image = "./assets/daisywoman3.png"
	SDUI5Avatar5.Mask = "rounded"
	BANano.Await(SDUI5Avatar5.AddComponent)
	'
	SDUI5Avatar6.Initialize(Me, "SDUI5Avatar6", "SDUI5Avatar6")
	SDUI5Avatar6.ParentID = "SDUI5Column5"
	SDUI5Avatar6.BackgroundColor = ""
	SDUI5Avatar6.Image = "./assets/daisywoman3.png"
	SDUI5Avatar6.Mask = "rounded"
	BANano.Await(SDUI5Avatar6.AddComponent)
	'
	SDUI5Avatar7.Initialize(Me, "SDUI5Avatar7", "SDUI5Avatar7")
	SDUI5Avatar7.ParentID = "SDUI5Column6"
	SDUI5Avatar7.BackgroundColor = ""
	SDUI5Avatar7.Image = "./assets/daisywoman3.png"
	SDUI5Avatar7.Mask = "rounded"
	BANano.Await(SDUI5Avatar7.AddComponent)
	'
	SDUI5Avatar8.Initialize(Me, "SDUI5Avatar8", "SDUI5Avatar8")
	SDUI5Avatar8.ParentID = "SDUI5Column8"
	SDUI5Avatar8.BackgroundColor = ""
	SDUI5Avatar8.Image = "./assets/daisywoman3.png"
	SDUI5Avatar8.Mask = "rounded"
	BANano.Await(SDUI5Avatar8.AddComponent)
	'
	SDUI5Avatar9.Initialize(Me, "SDUI5Avatar9", "SDUI5Avatar9")
	SDUI5Avatar9.ParentID = "SDUI5Column7"
	SDUI5Avatar9.BackgroundColor = ""
	SDUI5Avatar9.Image = "./assets/daisywoman3.png"
	BANano.Await(SDUI5Avatar9.AddComponent)
	'
	SDUI5Avatar10.Initialize(Me, "SDUI5Avatar10", "SDUI5Avatar10")
	SDUI5Avatar10.ParentID = "SDUI5Column9"
	SDUI5Avatar10.BackgroundColor = ""
	SDUI5Avatar10.Image = "./assets/daisywoman3.png"
	SDUI5Avatar10.Mask = "squircle"
	BANano.Await(SDUI5Avatar10.AddComponent)
	'
	SDUI5Avatar11.Initialize(Me, "SDUI5Avatar11", "SDUI5Avatar11")
	SDUI5Avatar11.ParentID = "SDUI5Column10"
	SDUI5Avatar11.BackgroundColor = ""
	SDUI5Avatar11.Image = "./assets/daisywoman3.png"
	SDUI5Avatar11.Mask = "hexagon"
	BANano.Await(SDUI5Avatar11.AddComponent)
	'
	SDUI5Avatar12.Initialize(Me, "SDUI5Avatar12", "SDUI5Avatar12")
	SDUI5Avatar12.ParentID = "SDUI5Column11"
	SDUI5Avatar12.BackgroundColor = ""
	SDUI5Avatar12.Image = "./assets/daisywoman3.png"
	SDUI5Avatar12.Mask = "triangle"
	BANano.Await(SDUI5Avatar12.AddComponent)
	'
	SDUI5Avatar13.Initialize(Me, "SDUI5Avatar13", "SDUI5Avatar13")
	SDUI5Avatar13.ParentID = "SDUI5Column12"
	SDUI5Avatar13.BackgroundColor = ""
	SDUI5Avatar13.Image = "./assets/daisywoman3.png"
	SDUI5Avatar13.Ring = True
	BANano.Await(SDUI5Avatar13.AddComponent)
	'
	SDUI5Avatar14.Initialize(Me, "SDUI5Avatar14", "SDUI5Avatar14")
	SDUI5Avatar14.ParentID = "SDUI5Column13"
	SDUI5Avatar14.BackgroundColor = ""
	SDUI5Avatar14.Image = "./assets/daisywoman3.png"
	SDUI5Avatar14.Online = True
	SDUI5Avatar14.OnlineStatus = True
	BANano.Await(SDUI5Avatar14.AddComponent)
	'
	SDUI5Avatar15.Initialize(Me, "SDUI5Avatar15", "SDUI5Avatar15")
	SDUI5Avatar15.ParentID = "SDUI5Column14"
	SDUI5Avatar15.BackgroundColor = ""
	SDUI5Avatar15.Image = "./assets/daisywoman3.png"
	SDUI5Avatar15.OnlineStatus = True
	BANano.Await(SDUI5Avatar15.AddComponent)
	'
	SDUI5Avatar16.Initialize(Me, "SDUI5Avatar16", "SDUI5Avatar16")
	SDUI5Avatar16.ParentID = "SDUI5Column16"
	SDUI5Avatar16.AvatarType = "placeholder"
	SDUI5Avatar16.BackgroundColor = "neutral"
	SDUI5Avatar16.Image = ""
	SDUI5Avatar16.Online = True
	SDUI5Avatar16.OnlineStatus = True
	SDUI5Avatar16.Placeholder = "AM"
	SDUI5Avatar16.RingColor = ""
	SDUI5Avatar16.Size = "20"
	SDUI5Avatar16.TextColor = "neutral-content"
	SDUI5Avatar16.TextSize = "3xl"
	BANano.Await(SDUI5Avatar16.AddComponent)
	'
	SDUI5AvatarGroup1.Initialize(Me, "SDUI5AvatarGroup1", "SDUI5AvatarGroup1")
	SDUI5AvatarGroup1.ParentID = "SDUI5Column17"
	SDUI5AvatarGroup1.Images = """one=./assets/1.jpg; two=./assets/2.jpg; three=./assets/3.jpg; four=./assets/4.jpg; five=./assets/5.jpg"""
	SDUI5AvatarGroup1.Space = "4"
	BANano.Await(SDUI5AvatarGroup1.AddComponent)
	'
	SDUI5Avatar17.Initialize(Me, "SDUI5Avatar17", "SDUI5Avatar17")
	SDUI5Avatar17.ParentID = "SDUI5AvatarGroup1"
	SDUI5Avatar17.AvatarType = "placeholder"
	SDUI5Avatar17.Image = "./assets/600x600.jpg"
	SDUI5Avatar17.RingColor = ""
	BANano.Await(SDUI5Avatar17.AddComponent)
	'
	SDUI5Avatar18.Initialize(Me, "SDUI5Avatar18", "SDUI5Avatar18")
	SDUI5Avatar18.ParentID = "SDUI5AvatarGroup1"
	SDUI5Avatar18.BackgroundColor = ""
	SDUI5Avatar18.RingColor = ""
	BANano.Await(SDUI5Avatar18.AddComponent)
	'
	SDUI5Avatar19.Initialize(Me, "SDUI5Avatar19", "SDUI5Avatar19")
	SDUI5Avatar19.ParentID = "SDUI5AvatarGroup1"
	SDUI5Avatar19.BackgroundColor = ""
	BANano.Await(SDUI5Avatar19.AddComponent)
	'
	SDUI5Avatar20.Initialize(Me, "SDUI5Avatar20", "SDUI5Avatar20")
	SDUI5Avatar20.ParentID = "SDUI5AvatarGroup1"
	SDUI5Avatar20.BackgroundColor = ""
	SDUI5Avatar20.Image = "./assets/daisywoman3.png"
	BANano.Await(SDUI5Avatar20.AddComponent)
	'
	SDUI5Avatar21.Initialize(Me, "SDUI5Avatar21", "SDUI5Avatar21")
	SDUI5Avatar21.ParentID = "SDUI5AvatarGroup1"
	SDUI5Avatar21.BackgroundColor = ""
	SDUI5Avatar21.Image = "./assets/daisywoman3.png"
	BANano.Await(SDUI5Avatar21.AddComponent)
	pgIndex.UpdateTitle("SDUI5Avatar")
End Sub

