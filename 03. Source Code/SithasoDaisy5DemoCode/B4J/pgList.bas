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
	Private SDUI5List1 As SDUI5List		'ignore
	Private SDUI5List2 As SDUI5List		'ignore
	Private SDUI5List3 As SDUI5List		'ignore
	Private items As List
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5ListItem1 As SDUI5ListItem		'ignore
	Private SDUI5ListItem2 As SDUI5ListItem		'ignore
	Private SDUI5ListItem3 As SDUI5ListItem		'ignore
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
	SDUI5List1.Initialize(Me, "SDUI5List1", "SDUI5List1")
	SDUI5List1.ParentID = "SDUI5Column1"
	SDUI5List1.Height = ""
	BANano.Await(SDUI5List1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5List2.Initialize(Me, "SDUI5List2", "SDUI5List2")
	SDUI5List2.ParentID = "SDUI5Column2"
	SDUI5List2.Height = ""
	BANano.Await(SDUI5List2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5List3.Initialize(Me, "SDUI5List3", "SDUI5List3")
	SDUI5List3.ParentID = "SDUI5Column3"
	SDUI5List3.Height = ""
	BANano.Await(SDUI5List3.AddComponent)
	'
	SDUI5ListItem1.Initialize(Me, "SDUI5ListItem1", "SDUI5ListItem1")
	SDUI5ListItem1.ParentID = "SDUI5List1"
	SDUI5ListItem1.CursorPointer = False
	SDUI5ListItem1.ListRow = False
	SDUI5ListItem1.Opacity = 60
	SDUI5ListItem1.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5ListItem1.Text = "Most played songs this week"
	SDUI5ListItem1.TextSize = "xs"
	SDUI5ListItem1.Tracking = "wide"
	BANano.Await(SDUI5ListItem1.AddComponent)
	'
	SDUI5ListItem2.Initialize(Me, "SDUI5ListItem2", "SDUI5ListItem2")
	SDUI5ListItem2.ParentID = "SDUI5List2"
	SDUI5ListItem2.CursorPointer = False
	SDUI5ListItem2.ListRow = False
	SDUI5ListItem2.Opacity = 60
	SDUI5ListItem2.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5ListItem2.Text = "Most played songs this week"
	SDUI5ListItem2.TextSize = "xs"
	SDUI5ListItem2.Tracking = "wide"
	BANano.Await(SDUI5ListItem2.AddComponent)
	'
	SDUI5ListItem3.Initialize(Me, "SDUI5ListItem3", "SDUI5ListItem3")
	SDUI5ListItem3.ParentID = "SDUI5List3"
	SDUI5ListItem3.CursorPointer = False
	SDUI5ListItem3.ListRow = False
	SDUI5ListItem3.Opacity = 60
	SDUI5ListItem3.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=2; l=?; r=?"
	SDUI5ListItem3.Text = "Most played songs this week"
	SDUI5ListItem3.TextSize = "xs"
	SDUI5ListItem3.Tracking = "wide"
	BANano.Await(SDUI5ListItem3.AddComponent)
	pgIndex.UpdateTitle("SDUI5List")
	'
	items.Initialize
	items.Add(CreateMap("id":1, "name":"Dia Lupa", "album":"Remaining Season", "display":"https://img.daisyui.com/images/profile/demo/1@94.webp", _
	"description": $""Remaining Reason" became an instant hit, praised for its haunting sound and emotional depth. A viral performance brought it widespread recognition, making it one of Dio Lupa’s most iconic tracks."$))
	items.Add(CreateMap("id":2, "name":"Ellie Beilish", "album":"Bears of a Fever", "display":"https://img.daisyui.com/images/profile/demo/4@94.webp", _
	"description":$""Bears of a Fever" captivated audiences with its intense energy and mysterious lyrics. Its popularity skyrocketed after fans shared it widely online, earning Ellie critical acclaim."$))
	items.Add(CreateMap("id":3, "name":"Sabiro Gardner", "album":"Capucinno", "display":"https://img.daisyui.com/images/profile/demo/3@94.webp", _
	"description":$""Cappuccino" quickly gained attention for its smooth melody and relatable themes. The song’s success propelled Sabrino into the spotlight, solidifying their status as a rising star."$))
	
	BANano.Await(LoadFirstItem)
	BANano.Await(LoadSecondItem)
	BANano.Await(LoadThirdItem)
End Sub

Sub LoadFirstItem	
	' loading layouts as array (multiple times loading the same layout)
	For Each artist As Map In items
		'the number of the layout loaded
		Dim Ret As Long = BANano.LoadLayoutArray($"#${SDUI5List1.id}"$, "listviewitem1", False)
		' ret returns a unique number you can use to get all views
		Dim AllViews As Map = BANano.Await(BANano.GetAllViewsFromLayoutArray(Me, "listviewitem1", Ret))
		'get the root
		Dim msongitem As SDUI5ListItem = AllViews.Get("songitem")
		'assign a click item
		msongitem.OnEvent("click", $"artist_click"$)
		'get the image
		Dim mImage As SDUI5Image = AllViews.Get("image") ' always lowercase
		'update the image
		mImage.Src = artist.Get("display")
		'update title
		Dim mlbltitle As SDUI5Text = AllViews.Get("lbltitle")
		mlbltitle.Text = artist.Get("name")
		'update sub title
		Dim mlblsubtitle As SDUI5Text = AllViews.Get("lblsubtitle")
		mlblsubtitle.Text = artist.Get("album")

		Dim mbtnplay As SDUI5Button = AllViews.Get("btnplay")
		mbtnplay.OnEvent("click", $"play_click"$)
		Dim mbtnlove As SDUI5Button = AllViews.Get("btnlove")
		mbtnlove.OnEvent("click", $"love_click"$)
	Next
End Sub

Sub LoadThirdItem
	Dim iTot As Int = items.Size - 1
	Dim iCnt As Int = 0
	
	' loading layouts as array (multiple times loading the same layout)
	For iCnt = 0 To iTot
		'the number of the layout loaded
		Dim Ret As Long = BANano.LoadLayoutArray($"#${SDUI5List3.id}"$, "listviewitem3", False)
		' ret returns a unique number you can use to get all views
		Dim AllViews As Map = BANano.Await(BANano.GetAllViewsFromLayoutArray(Me, "listviewitem3", Ret))
		'get the root
		Dim msongitem As SDUI5ListItem = AllViews.Get("songitem")
		'assign a click item
		msongitem.OnEvent("click", $"artist_click"$)
		
		'get the record
		Dim artist As Map = items.Get(iCnt)
		'get the image
		Dim mImage As SDUI5Image = AllViews.Get("image") ' always lowercase
		'update the image
		mImage.Src = artist.Get("display")
		'update title
		Dim mlbltitle As SDUI5Text = AllViews.Get("lbltitle")
		mlbltitle.Text = artist.Get("name")
		'update sub title
		Dim mlblsubtitle As SDUI5Text = AllViews.Get("lblsubtitle")
		mlblsubtitle.Text = artist.Get("album")
		'
		Dim mdescription As SDUI5Text = AllViews.Get("description")
		mdescription.Text = artist.Get("description")
		
		Dim mbtnplay As SDUI5Button = AllViews.Get("btnplay")
		mbtnplay.OnEvent("click", $"play_click"$)
		Dim mbtnlove As SDUI5Button = AllViews.Get("btnlove")
		mbtnlove.OnEvent("click", $"love_click"$)
	Next
End Sub

Sub LoadSecondItem
	Dim iTot As Int = items.Size - 1
	Dim iCnt As Int = 0
	
	' loading layouts as array (multiple times loading the same layout)
	For iCnt = 0 To iTot
		'the number of the layout loaded
		Dim Ret As Long = BANano.LoadLayoutArray($"#${SDUI5List2.id}"$, "listviewitem2", False)
		' ret returns a unique number you can use to get all views
		Dim AllViews As Map = BANano.Await(BANano.GetAllViewsFromLayoutArray(Me, "listviewitem2", Ret))
		'get the root
		Dim msongitem As SDUI5ListItem = AllViews.Get("songitem")
		'assign a click item
		msongitem.OnEvent("click", $"artist_click"$)
		'
		Dim iPos As Int = BANano.parseInt(iCnt) + 1
		Dim mitempos As SDUI5Text = AllViews.Get("itempos")
		mitempos.Text = iPos
		'
		'get the record
		Dim artist As Map = items.Get(iCnt)
		'get the image
		Dim mImage As SDUI5Image = AllViews.Get("image") ' always lowercase
		'update the image
		mImage.Src = artist.Get("display")
		'update title
		Dim mlbltitle As SDUI5Text = AllViews.Get("lbltitle")
		mlbltitle.Text = artist.Get("name")
		'update sub title
		Dim mlblsubtitle As SDUI5Text = AllViews.Get("lblsubtitle")
		mlblsubtitle.Text = artist.Get("album")

		Dim mbtnplay As SDUI5Button = AllViews.Get("btnplay")
		mbtnplay.OnEvent("click", $"play_click"$)
'		Dim mbtnlove As SDUI5Button = AllViews.Get("btnlove")
'		mbtnlove.OnEvent("click", $"love_click"$)
	Next
End Sub

Sub artist_click(e As BANanoEvent)
	e.PreventDefault
	Dim itemID As String = app.IndexFromEventID(e.ID)
	app.ShowToastInfo($"Artist: ${itemID}"$)
End Sub


Sub play_click(e As BANanoEvent)
	e.PreventDefault
	Dim itemID As String = app.IndexFromEventID(e.ID)
	app.ShowToastInfo($"Play: ${itemID}"$)
End Sub

Sub love_click(e As BANanoEvent)
	e.PreventDefault
	Dim itemID As String = app.IndexFromEventID(e.ID)
	app.ShowToastInfo($"Love: ${itemID}"$)
End Sub

