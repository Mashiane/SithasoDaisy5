B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.13
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5WhatsApp1 As SDUI5WhatsApp
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	'adjust the pageview to 92%
	app.UI.SetHeightByID("pageview", "screen")
	BANano.LoadLayout(app.PageView, "whatsappview")
	pgIndex.UpdateTitle("SDUI5WhatsApp")
'	BANano.Await(SDUI5WhatsApp1.PrepareEmojis)
	'
	SDUI5WhatsApp1.Attachments.AddMenuItemIconText("pdf", "./assets/pdf.svg", "PDF", False)
	SDUI5WhatsApp1.Attachments.AddMenuItemIconText("pic", "./assets/picture.svg", "Image", False)
	SDUI5WhatsApp1.Attachments.AddMenuItemIconText("vid", "./assets/video.svg", "Video", False)
	
	SDUI5WhatsApp1.ClearChats
	SDUI5WhatsApp1.ClearRightHeader
	SDUI5WhatsApp1.ClearConversations
	SDUI5WhatsApp1.AddChat("chat-123456789", "./assets/1.jpg", "Chat 1", "10:00", "The last message said.", "1", "./assets/mashy.jpg")
	SDUI5WhatsApp1.AddChat("chat-123456788", "./assets/2.jpg", "Chat 2", "11:00", "The last message said.", "2", "./assets/mashy.jpg")
	SDUI5WhatsApp1.AddChat("chat-123456787", "./assets/3.jpg", "Chat 3", "12:00", "The last message said.", "3", "")
	SDUI5WhatsApp1.AddChat("chat-123456786", "./assets/4.jpg", "Chat 4", "13:00", "The last message said.", "4", "")
	SDUI5WhatsApp1.AddChat("chat-123456785", "./assets/5.jpg", "Chat 5", "14:00", "The last message said.", "5", "./assets/mashy.jpg")
	SDUI5WhatsApp1.AddChat("chat-123456784", "./assets/6.jpg", "Chat 6", "15:00", "The last message said.", "6", "")
	SDUI5WhatsApp1.RefreshChats
	Sleep(2000)
	SDUI5WhatsApp1.SetUnread("chat-123456787", "6")
	Sleep(2000)
	SDUI5WhatsApp1.SetUnread("chat-123456786", "10")
	Sleep(2000)
	SDUI5WhatsApp1.SetUnread("chat-123456784", "0")
	Sleep(2000)
	SDUI5WhatsApp1.SetUnread("chat-123456786", "0")
	Sleep(2000)
	SDUI5WhatsApp1.SetUnread("chat-123456788", "0")
	Sleep(1000)
	SDUI5WhatsApp1.MoveUp("chat-123456789")
	Sleep(1000)
	SDUI5WhatsApp1.MoveUp("chat-123456786")
	Sleep(1000)
	SDUI5WhatsApp1.MoveDown("chat-123456786")
	Sleep(1000)
	SDUI5WhatsApp1.AddEditChat("chat-123456784", "./assets/Angela.jpg", "Angela", "11:11", "Add Edit Chat", 30, "./assets/daisywoman3.png", True)
	Sleep(1000)
	SDUI5WhatsApp1.AddEditChat("chat-1973", "./assets/tranding-food-3.png", "Trending Foods", "12:12", "New Add Edit Chat", 0, "", True)
	Sleep(1000)
	SDUI5WhatsApp1.SetUnread("chat-1973", 5)
	app.ShowToastSuccess("Done!")
End Sub


Private Sub SDUI5WhatsApp1_ChatClick (chatID As String)
	app.ShowToastSuccess(chatID)
	SDUI5WhatsApp1.AddEditTextMessage("m-12345", True, "./assets/tranding-food-7.png", "Trending Foods", "19:08", _
	"This is an amazing food item", "", "", "")
	Sleep(1000)
	SDUI5WhatsApp1.AddEditTextMessage("m-12346", False, "./assets/tranding-food-7.png", "Trending Foods", "19:09", _
	"This is an amazing food item", "", "", "")
	Sleep(1000)
	SDUI5WhatsApp1.AddEditTextMessage("m-12346", False, "./assets/13.jpg", "Coffee", "19:39", _
	"This was delicious", "", "", "")
	Sleep(1000)
	SDUI5WhatsApp1.EnableEmoji(True)
	SDUI5WhatsApp1.EnableAttach(True)
	SDUI5WhatsApp1.EnableSend(True)
	SDUI5WhatsApp1.ShowSend
End Sub

Private Sub SDUI5WhatsApp1_Attachments_ItemClick (item As String)
	Select Case item
	Case "doc"
	Case "pdf"
		SDUI5WhatsApp1.FileChooserPDF
'		SDUI5WhatsApp1.FileChooser
	Case "pic"
		SDUI5WhatsApp1.FileChooserImage
'		SDUI5WhatsApp1.FileChooser
	Case "vid"
		SDUI5WhatsApp1.FileChooserVideo
'		SDUI5WhatsApp1.FileChooser
	End Select
End Sub

'this cannot be done internally
Private Sub SDUI5WhatsApp1_EmojiSelect (emoji As Map)
	SDUI5WhatsApp1.AppendEmoji(emoji)
End Sub

Private Sub SDUI5WhatsApp1_EmojiClickOutside (e As BANanoEvent)
	
End Sub

Private Sub SDUI5WhatsApp1_Back (e As BANanoEvent)
	app.ShowToast("Back clicked!")
End Sub

Private Sub SDUI5WhatsApp1_Copy (e As BANanoEvent)
	app.ShowToast(SDUI5WhatsApp1.ActiveChatID)
End Sub