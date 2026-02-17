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
	Private SDUI5ChatBubble1 As SDUI5ChatBubble		'ignore
	Private SDUI5ChatBubble2 As SDUI5ChatBubble		'ignore
	Private SDUI5ChatBubble3 As SDUI5ChatBubble		'ignore
	Private SDUI5ChatBubble4 As SDUI5ChatBubble		'ignore
	Private SDUI5ChatBubble5 As SDUI5ChatBubble		'ignore
	Private SDUI5ChatBubble6 As SDUI5ChatBubble		'ignore
	Private SDUI5ChatBubble7 As SDUI5ChatBubble		'ignore
	Private SDUI5ChatBubble8 As SDUI5ChatBubble		'ignore
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
	SDUI5Row1.GridColsSm = "1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5ChatBubble1.Initialize(Me, "SDUI5ChatBubble1", "SDUI5ChatBubble1")
	SDUI5ChatBubble1.ParentID = "SDUI5Column1"
	SDUI5ChatBubble1.FooterVisible = False
	SDUI5ChatBubble1.HeaderVisible = False
	SDUI5ChatBubble1.ImageVisible = False
	SDUI5ChatBubble1.MessageTime = "17:20"
	BANano.Await(SDUI5ChatBubble1.AddComponent)
	'
	SDUI5ChatBubble2.Initialize(Me, "SDUI5ChatBubble2", "SDUI5ChatBubble2")
	SDUI5ChatBubble2.ParentID = "SDUI5Column1"
	SDUI5ChatBubble2.FooterVisible = False
	SDUI5ChatBubble2.HeaderVisible = False
	SDUI5ChatBubble2.ImageVisible = False
	SDUI5ChatBubble2.Message = "It's the most famous B4x Web Development BANano Framework. <br> Enjoy it and <b>have fun</b>"
	SDUI5ChatBubble2.MessageTime = "17:20"
	SDUI5ChatBubble2.Placement = "end"
	BANano.Await(SDUI5ChatBubble2.AddComponent)
	'
	SDUI5ChatBubble3.Initialize(Me, "SDUI5ChatBubble3", "SDUI5ChatBubble3")
	SDUI5ChatBubble3.ParentID = "SDUI5Column1"
	SDUI5ChatBubble3.FooterVisible = False
	SDUI5ChatBubble3.HeaderVisible = False
	SDUI5ChatBubble3.MessageTime = "17:20"
	BANano.Await(SDUI5ChatBubble3.AddComponent)
	'
	SDUI5ChatBubble4.Initialize(Me, "SDUI5ChatBubble4", "SDUI5ChatBubble4")
	SDUI5ChatBubble4.ParentID = "SDUI5Column1"
	SDUI5ChatBubble4.FooterVisible = False
	SDUI5ChatBubble4.HeaderVisible = False
	SDUI5ChatBubble4.Message = "It's the most famous B4x Web Development BANano Framework"
	SDUI5ChatBubble4.MessageTime = "17:20"
	SDUI5ChatBubble4.Placement = "end"
	BANano.Await(SDUI5ChatBubble4.AddComponent)
	'
	SDUI5ChatBubble5.Initialize(Me, "SDUI5ChatBubble5", "SDUI5ChatBubble5")
	SDUI5ChatBubble5.ParentID = "SDUI5Column1"
	SDUI5ChatBubble5.MessageTime = "17:20"
	BANano.Await(SDUI5ChatBubble5.AddComponent)
	'
	SDUI5ChatBubble6.Initialize(Me, "SDUI5ChatBubble6", "SDUI5ChatBubble6")
	SDUI5ChatBubble6.ParentID = "SDUI5Column1"
	SDUI5ChatBubble6.Message = "It's the most famous B4x Web Development BANano Framework"
	SDUI5ChatBubble6.MessageTime = "17:20"
	SDUI5ChatBubble6.Placement = "end"
	BANano.Await(SDUI5ChatBubble6.AddComponent)
	'
	SDUI5ChatBubble7.Initialize(Me, "SDUI5ChatBubble7", "SDUI5ChatBubble7")
	SDUI5ChatBubble7.ParentID = "SDUI5Column1"
	SDUI5ChatBubble7.Color = "primary"
	SDUI5ChatBubble7.MessageTime = "17:20"
	BANano.Await(SDUI5ChatBubble7.AddComponent)
	'
	SDUI5ChatBubble8.Initialize(Me, "SDUI5ChatBubble8", "SDUI5ChatBubble8")
	SDUI5ChatBubble8.ParentID = "SDUI5Column1"
	SDUI5ChatBubble8.Color = "secondary"
	SDUI5ChatBubble8.Message = "It's the most famous B4x Web Development BANano Framework"
	SDUI5ChatBubble8.MessageTime = "17:20"
	SDUI5ChatBubble8.Placement = "end"
	BANano.Await(SDUI5ChatBubble8.AddComponent)
	pgIndex.UpdateTitle("SDUI5ChatBubble")
End Sub

