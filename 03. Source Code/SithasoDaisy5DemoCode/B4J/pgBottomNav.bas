B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private botNav As SDUI5BottomNavigation
	Private lastBadge As Int
	Private lastGift As Int
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	
	botNav.Initialize(Me, "botNav", "botNav")
	botNav.ParentID = app.PageView
	BANano.Await(botNav.AddComponent)
	'
	botNav.AddButton("home", "fa-solid fa-house", "Home", "")
	botNav.AddButtonItem("home", "products", "fas fa-tshirt", "Products", "")
	botNav.AddButtonItem("home", "discount", "fas fa-tag", "Discount", "")
	botNav.AddButtonItem("home", "gifts", "fas fa-gifts", "Gifts", "7")

	botNav.AddButton("search", "fa-solid fa-magnifying-glass", "Search", "")

	botNav.AddButton("setting", "fa-solid fa-plus", "Setting", "")
	botNav.AddButtonItem("setting", "bookmarks", "fas fa-bookmark", "Bookmarks", "")
	botNav.AddButtonItem("setting", "tasks", "fas fa-tasks", "Tasks", "")
	botNav.AddButtonItem("setting", "tickets", "fas fa-ticket-alt", "Tickets", "")

	botNav.AddButton("notification", "fas fa-bell", "Notification", "15")

	botNav.AddButton("config", "fa-solid fa-gear", "Setting", "")
	botNav.ModelValue = "home"
	lastBadge = 15
	lastGift = 7
	
	pgIndex.UpdateTitle("SDUI5BottomNavigation")
End Sub

Private Sub botNav_Change (value As String)
	app.ShowSwalInfoToast(value, 1000)
	Select Case value
	Case "notification"
		lastBadge = app.UI.increment(lastBadge)
		botNav.UpdateBadge("notification", lastBadge)
	Case "gifts"
		lastGift = app.UI.increment(lastGift)
		botNav.UpdateBadge("gifts", lastGift)
	End Select
End Sub