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
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5LottiePlayer1 As SDUI5LottiePlayer		'ignore
	Private SDUI5LottiePlayer2 As SDUI5LottiePlayer		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5LottiePlayer3 As SDUI5LottiePlayer		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5LottiePlayer4 As SDUI5LottiePlayer		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5LottiePlayer5 As SDUI5LottiePlayer		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesLottiePlayer)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = "4"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "4"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5LottiePlayer1.Initialize(Me, "SDUI5LottiePlayer1", "SDUI5LottiePlayer1")
	SDUI5LottiePlayer1.ParentID = "SDUI5Column1"
	SDUI5LottiePlayer1.Controls = True
	SDUI5LottiePlayer1.Height = "400px"
	SDUI5LottiePlayer1.ShouldLoop = True
	SDUI5LottiePlayer1.Src = "https://assets4.lottiefiles.com/datafiles/zc3XRzudyWE36ZBJr7PIkkqq0PFIrIBgp4ojqShI/newAnimation.json"
	SDUI5LottiePlayer1.Width = "400px"
	BANano.Await(SDUI5LottiePlayer1.AddComponent)
	'
	SDUI5LottiePlayer2.Initialize(Me, "SDUI5LottiePlayer2", "SDUI5LottiePlayer2")
	SDUI5LottiePlayer2.ParentID = "SDUI5Column2"
	SDUI5LottiePlayer2.Height = "400px"
	SDUI5LottiePlayer2.ShouldLoop = True
	SDUI5LottiePlayer2.Src = "https://assets4.lottiefiles.com/datafiles/zc3XRzudyWE36ZBJr7PIkkqq0PFIrIBgp4ojqShI/newAnimation.json"
	SDUI5LottiePlayer2.Width = "400px"
	BANano.Await(SDUI5LottiePlayer2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "4"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5LottiePlayer3.Initialize(Me, "SDUI5LottiePlayer3", "SDUI5LottiePlayer3")
	SDUI5LottiePlayer3.ParentID = "SDUI5Column3"
	SDUI5LottiePlayer3.Height = "400px"
	SDUI5LottiePlayer3.Mode = "bounce"
	SDUI5LottiePlayer3.ShouldLoop = True
	SDUI5LottiePlayer3.Src = "https://assets4.lottiefiles.com/datafiles/zc3XRzudyWE36ZBJr7PIkkqq0PFIrIBgp4ojqShI/newAnimation.json"
	SDUI5LottiePlayer3.Width = "400px"
	BANano.Await(SDUI5LottiePlayer3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Size = "4"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5LottiePlayer4.Initialize(Me, "SDUI5LottiePlayer4", "SDUI5LottiePlayer4")
	SDUI5LottiePlayer4.ParentID = "SDUI5Column4"
	SDUI5LottiePlayer4.AutoPlay = False
	SDUI5LottiePlayer4.Height = "400px"
	SDUI5LottiePlayer4.Hover = True
	SDUI5LottiePlayer4.Intermission = "1000"
	SDUI5LottiePlayer4.ShouldLoop = True
	SDUI5LottiePlayer4.Src = "https://assets4.lottiefiles.com/datafiles/zc3XRzudyWE36ZBJr7PIkkqq0PFIrIBgp4ojqShI/newAnimation.json"
	SDUI5LottiePlayer4.Width = "400px"
	BANano.Await(SDUI5LottiePlayer4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5LottiePlayer5.Initialize(Me, "SDUI5LottiePlayer5", "SDUI5LottiePlayer5")
	SDUI5LottiePlayer5.ParentID = "SDUI5Column5"
	SDUI5LottiePlayer5.Background = "#ffcc00"
	SDUI5LottiePlayer5.Height = "400px"
	SDUI5LottiePlayer5.ShouldLoop = True
	SDUI5LottiePlayer5.Src = "https://assets4.lottiefiles.com/datafiles/zc3XRzudyWE36ZBJr7PIkkqq0PFIrIBgp4ojqShI/newAnimation.json"
	SDUI5LottiePlayer5.Width = "400px"
	BANano.Await(SDUI5LottiePlayer5.AddComponent)
	pgIndex.UpdateTitle("SDUI5LottiePlayer")
End Sub

