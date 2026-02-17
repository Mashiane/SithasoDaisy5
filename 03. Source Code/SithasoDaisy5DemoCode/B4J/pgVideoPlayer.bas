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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5VideoPlayer1 As SDUI5VideoPlayer		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5VideoPlayer2 As SDUI5VideoPlayer		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5VideoPlayer3 As SDUI5VideoPlayer		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5VideoPlayer4 As SDUI5VideoPlayer		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesVideoAudioPlayer)
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
	SDUI5Column1.Size = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5VideoPlayer1.Initialize(Me, "SDUI5VideoPlayer1", "SDUI5VideoPlayer1")
	SDUI5VideoPlayer1.ParentID = "SDUI5Column1"
	SDUI5VideoPlayer1.Height = ""
	SDUI5VideoPlayer1.Mp4Url = "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-1080p.mp4"
	SDUI5VideoPlayer1.Poster = "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg"
	SDUI5VideoPlayer1.Provider = "none"
	SDUI5VideoPlayer1.Rounded = "lg"
	SDUI5VideoPlayer1.Shadow = "lg"
	SDUI5VideoPlayer1.Title = "View From A Blue Moon"
	BANano.Await(SDUI5VideoPlayer1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5VideoPlayer2.Initialize(Me, "SDUI5VideoPlayer2", "SDUI5VideoPlayer2")
	SDUI5VideoPlayer2.ParentID = "SDUI5Column2"
	SDUI5VideoPlayer2.Embed = True
	SDUI5VideoPlayer2.EmbedId = "76979871"
	SDUI5VideoPlayer2.Height = ""
	SDUI5VideoPlayer2.Poster = "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg"
	SDUI5VideoPlayer2.Provider = "vimeo"
	SDUI5VideoPlayer2.Rounded = "lg"
	SDUI5VideoPlayer2.Shadow = "lg"
	SDUI5VideoPlayer2.Title = "View From A Blue Moon"
	BANano.Await(SDUI5VideoPlayer2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5VideoPlayer3.Initialize(Me, "SDUI5VideoPlayer3", "SDUI5VideoPlayer3")
	SDUI5VideoPlayer3.ParentID = "SDUI5Column3"
	SDUI5VideoPlayer3.Embed = True
	SDUI5VideoPlayer3.EmbedId = "vvj18FptOt8"
	SDUI5VideoPlayer3.Height = ""
	SDUI5VideoPlayer3.Rounded = "lg"
	SDUI5VideoPlayer3.Shadow = "lg"
	SDUI5VideoPlayer3.Title = "SithasoDaisy5"
	BANano.Await(SDUI5VideoPlayer3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Size = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5VideoPlayer4.Initialize(Me, "SDUI5VideoPlayer4", "SDUI5VideoPlayer4")
	SDUI5VideoPlayer4.ParentID = "SDUI5Column4"
	SDUI5VideoPlayer4.Height = ""
	SDUI5VideoPlayer4.Mp3Url = "https://cdn.plyr.io/static/demo/Kishi_Bashi_-_It_All_Began_With_a_Burst.mp3"
	SDUI5VideoPlayer4.Provider = "none"
	SDUI5VideoPlayer4.Rounded = "lg"
	SDUI5VideoPlayer4.Shadow = "lg"
	SDUI5VideoPlayer4.TypeOf = "audio"
	BANano.Await(SDUI5VideoPlayer4.AddComponent)
	pgIndex.UpdateTitle("SDUI5VideoPlayer")
End Sub

