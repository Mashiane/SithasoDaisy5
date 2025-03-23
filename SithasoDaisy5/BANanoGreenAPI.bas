B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
'Developed by: Anele Mbanga (Mashy)
'Last Updated: 20 January 2025

Sub Class_Globals
	Private thisIdInstance As String
	Private thisApiTokenInstance As String
	Public RequestTimeoutSeconds As Int = 30 'Default 30 seconds
	Private mCallback As Object			'ignore
	Private mEventName As String		'ignore
	Private savatar As String
	Private sdeviceId As String			'ignore
	Private sapiUrl As String = "https://api.green-api.com"
	Private smediaUrl As String
	Private fetch As SDUIFetch
	Private BANAno As BANano		'ignore
	Private swid As String
	Private idelaySendMessagesMilliseconds As Int = 0
	Private sdeviceWebhook As String = "no"
	Private sincomingBlockWebhook As String = "no"
	Private sincomingCallWebhook As String = "no"
	Private sincomingWebhook As String = "no"
	Private skeepOnlineStatus As String = "no"
	Private smarkIncomingMessagesReaded As String = "no"
	Private smarkIncomingMessagesReadedOnReply As String = "no"
	Private soutgoingAPIMessageWebhook As String = "no"
	Private soutgoingMessageWebhook As String = "no"
	Private soutgoingWebhook As String = "no"
	Private spollMessageWebhook As String = "no"
	Private sproxyInstance As String = "system proxy"
	Private sstateWebhook As String = "no"
	Private sstatusInstanceWebhook As String = "no"
	Private swebhookUrl As String = ""
	Private swebhookUrlToken As String = ""
	Private iphoneNumber As Long
	Private seditedMessageWebhook As String = "no"
	Private sdeletedMessageWebhook As String = "no"
		
	Type Contact(id As String, name As String, contactName As String, typeOf As String, avatar As String)
	Type ContactInfo(avatar As String, name As String, contactName As String, email As String, category As String, _
	description As String, products As List, chatId As String, lastSeen As String, isArchive As Boolean, _
	isDisappearing As Boolean, isMute As Boolean, messageexpiration As Int, muteexpiration As Int, isBusiness As Boolean)
	Type Product(id As String, imageUrls As List, availability As String, reviewStatus As Map, name As String, description As String, price As String, isHidden As Boolean)
	Type ImageURL(requested As String, original As String)
	Type reviewStatus(whatsapp As String)
	Type GroupData(groupId As String, owner As String, subject As String, creation As Int, participants As List, _
	subjectTime As Int, subjectOwner As String, groupInviteLink As String)
	Type GroupParticipant(id As String, isAdmin As Boolean, isSuperAdmin As String)
	'
	Type MessageLocation(nameLocation As String, address As String, latitude As Double, longitude As Double, _
	jpegThumbnail As String, isForwarded As Boolean, forwardingScore As Int) 
	'
	Type MessageContact(displayName As String, vcard As String, isForwarded As Boolean, forwardingScore As Int)
	'
	Type MessageExtendedText(text As String, description As String, title As String, previewType As String, jpegThumbnail As String, stanzaId As String, participant As String, _
	isForwarded As Boolean, forwardingScore As Int)
	'
	Type MessageExtendedTextData(text As String)
	'
	Type MessagePollMessageData(stanzaId As String, name As String, options As List, votes As List, multipleAnswers As Boolean)
	'
	Type MessageQuoted(stanzaId As String, participant As String, typeMessage As String)
	'
	Type MessageData(typeMessage As String, textMessageData As Object, quotedMessage As Object)
	Type TextMessageData(textMessage As String, isTemplateMessage As Boolean)
	
	Type Message(typeOf As String, idMessage As String, timestamp As Int, statusMessage As String, _
	sendByApi As Boolean, typeMessage As String, chatId As String, senderId As String, senderName As String, senderContactName As String, _
	isForwarded As Boolean, forwardingScore As Boolean, textMessage As String, downloadUrl As String, caption As String, fileName As String, _
	jpegThumbnail As String, mimeType As String, isAnimated As Boolean, location As MessageLocation, contact As MessageContact, extendedTextMessage As MessageExtendedText, _
	extendedTextMessageData As MessageExtendedTextData, pollMessageData As MessagePollMessageData, quotedMessage As MessageQuoted)
	
	Public const MSG_TYPE_TEXT As String = "textMessage"
	Public const MSG_TYPE_IMAGE As String = "imageMessage"
	Public const MSG_TYPE_VIDEO As String = "videoMessage"
	Public const MSG_TYPE_DOCUMENT As String = "documentMessage"
	Public const MSG_TYPE_AUDIO As String = "audioMessage"
	Public const MSG_TYPE_STICKER As String = "stickerMessage"
	Public const MSG_TYPE_REACTION As String = "reactionMessage"
	Public const MSG_TYPE_LOCATION As String = "locationMessage"
	Public const MSG_TYPE_CONTACT As String = "contactMessage"
	Public const MSG_TYPE_EXTENDED As String = "extendedTextMessage"
	Public const MSG_TYPE_POLL As String = "pollMessage"
	Public const MSG_TYPE_POLLUPDATE As String = "pollUpdateMessage"
	Public const MSG_TYPE_QUOTED As String = "quotedMessage"
	'
'	Public const FONT_SERIF As String = "SERIF"
'	Public const FONT_SANS_SERIF As String = "SANS_SERIF"
'	Public const FONT_NORICAN_REGULAR As String = "NORICAN_REGULAR"
'	Public const FONT_BRYNDAN_WRITE As String = "BRYNDAN_WRITE"
'	Public const FONT_OSWALD_HEAVY As String = "OSWALD_HEAVY"
	'
	Type MessageNotification(receiptId As String, body As Map, chatId As String, idMessage As String, wid As String, _
	status As String, timestamp As Int, typeWebhook As String, sendByApi As Boolean, senderChatId As String, _
	senderId As String, senderName As String, typeMessage As String, textMessage As String)
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
private Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return BANAno.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
End Sub

'double
private Sub CDbl(o As String) As Double
	o = Val(o)
	Dim out As Double = NumberFormat2Fix(o,0,2,2,False)
	Dim nvalue As String = CStr(out)
	nvalue = nvalue.replace(",", ".")
	nvalue = Val(nvalue)
	Dim nout As Double = BANAno.parseFloat(nvalue)
	Return nout
End Sub

'convert object to string
private Sub CStr(o As Object) As String
	If BANAno.isnull(o) Or BANAno.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub


private Sub Val(value As String) As String
	value = CStr(value)
	value = value.Trim
	If value = "" Then value = "0"
	Try
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("0123456789.-", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub

private Sub InStr(sText As String, sFind As String) As Int
	Return sText.tolowercase.IndexOf(sFind.tolowercase)
End Sub

'parseBool
private Sub CBool(v As Object) As Boolean
	If BANAno.IsNull(v) Or BANAno.IsUndefined(v) Then
		v = False
	End If
	If GetType(v) = "string" Or GetType(v) = "object" Then
		Dim s As String = v & ""
		s = s.tolowercase
		s = s.trim
		If s = "" Then Return False
		If s = "false" Then Return False
		If S = "true" Then Return True
		If s = "1" Then Return True
		If s = "y" Then Return True
		If s = "0" Then Return False
		If s = "n" Then Return False
		If s = "no" Then Return False
		If s = "yes" Then Return True
		If s = "on" Then Return True
		If s = "off" Then Return False
	End If
	Return v
End Sub

'convert to int
private Sub CInt(o As Object) As Int
	o = Val(o)
	Return BANAno.parseInt(o)
End Sub

'****************
'<link>Click here to start configurations|https://console.green-api.com/instanceList</link>
'****************
'<code>
'greenApi.Initialize(Me, "GreenApi","710XXX", "6807c0XXXXa1b2cfXXXXX4bf33973efd4XXX", xui.DefaultFolder)
'</code>
Public Sub Initialize(Callback As Object, EventName As String, myIdInstance As String, myApiTokenInstance As String)
	mCallback = Callback
	mEventName = EventName
	thisIdInstance = myIdInstance
	thisApiTokenInstance = myApiTokenInstance
End Sub


'	************** Instances ***********
'https://console.green-api.com/app/api/getStateInstance
'1) notAuthorized - Account Is Not authorized. For account authorization refer To Before you start section
'2) authorized - Account Is authorized
'3) blocked - Account banned
'4) sleepMode - Account Is in Sleep mode. The state Is possible when the phone Is switched off. After the phone Is switched on, it may take up To 5 minutes For the account state To be changed To authorized.
'5)	starting - The account Is in the process of starting up (service mode). An instance, server, Or instance in maintenance mode Is rebooting. It may take up To 5 minutes For the account state To be set To authorized.
'6) yellowCard - Sending messages has been partially Or completely suspended on the account due To spamming activity
Sub GetStateInstance As String
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getStateInstance/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		If Response.ContainsKey("stateInstance") Then
			Dim res As String = Response.Get("stateInstance")
			Return res
		Else
			Return ""	
		End If
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

'https://console.green-api.com/app/api/reboot
Sub ReBoot As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/reboot/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		If Response.ContainsKey("isReboot") Then
			Dim res As String = Response.Get("isReboot")
			Return CBool(res)
		Else
			Return False
		End If
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/logout
Sub LogOut As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/logout/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		If Response.ContainsKey("isLogout") Then
			Dim res As String = Response.Get("isLogout")
			Return CBool(res)
		Else
			Return False
		End If
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/getAuthorizationCode
'get the authorization code by cellnumber
'set the PhoneNumber before calling thing
Sub GetAuthorizationCode As String
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/GetAuthorizationCode/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("phoneNumber", iphoneNumber)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim scode As String = Response.GetDefault("code", "")
		Return scode
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

Sub getPhoneNumber As Long
	Return iphoneNumber
End Sub

'https://console.green-api.com/app/api/getWaSettings
Sub GetWaSettings
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getWaSettings/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		savatar = Response.GetDefault("avatar", "")
		sdeviceId = Response.GetDefault("deviceId", "")
		iphoneNumber = Response.GetDefault("phone", 0)
		iphoneNumber = CInt(iphoneNumber)
		fetch.SchemaAddIntegers(Array("phoneNumber"))
	Else
		Log(fetch.ErrorMessage)
		savatar = ""
		sdeviceId = ""
		iphoneNumber = 0
	End If
End Sub

Sub getDeviceID As String
	Return sdeviceId
End Sub

'https://console.green-api.com/app/api/qr
Sub QR As String
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/qr/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim stype As String = Response.GetDefault("type", "")
		Dim smessage As String = Response.GetDefault("message", "")
		Select Case stype
		Case "qrCode"
			Return smessage
		Case "alreadyLogged"
			Return ""
		Case Else
			Return ""
		End Select
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

'https://console.green-api.com/app/api/getSettings
Sub GetSettings
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getSettings/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.RedirectFollow
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		swid = Response.GetDefault("wid", "")
		idelaySendMessagesMilliseconds = Response.GetDefault("delaySendMessagesMilliseconds", 0)
		sdeviceWebhook = Response.GetDefault("deviceWebhook", "")
		sincomingBlockWebhook = Response.GetDefault("incomingBlockWebhook", "")
		sincomingCallWebhook = Response.GetDefault("incomingCallWebhook", "")
		sincomingWebhook = Response.GetDefault("incomingWebhook", "")
		skeepOnlineStatus = Response.GetDefault("keepOnlineStatus", "")
		smarkIncomingMessagesReaded = Response.GetDefault("markIncomingMessagesReaded", "")
		smarkIncomingMessagesReadedOnReply = Response.GetDefault("markIncomingMessagesReadedOnReply", "")
		soutgoingAPIMessageWebhook = Response.GetDefault("outgoingAPIMessageWebhook", "")
		soutgoingMessageWebhook = Response.GetDefault("outgoingMessageWebhook", "")
		soutgoingWebhook = Response.GetDefault("outgoingWebhook", "")
		spollMessageWebhook = Response.GetDefault("pollMessageWebhook", "")
		sproxyInstance = Response.GetDefault("proxyInstance", "")
		sstateWebhook = Response.GetDefault("stateWebhook", "")
		sstatusInstanceWebhook = Response.GetDefault("statusInstanceWebhook", "")
		swebhookUrl = Response.GetDefault("webhookUrl", "")
		swebhookUrlToken = Response.GetDefault("webhookUrlToken", "")
		seditedMessageWebhook = Response.GetDefault("editedMessageWebhook", "")
		sdeletedMessageWebhook = Response.GetDefault("deletedMessageWebhook", "")
	Else
		Log(fetch.ErrorMessage)
	End If
End Sub

Sub setEditedMessageWebhook(s As String)
	seditedMessageWebhook = s
End Sub

Sub getEditedMessageWebhook As String
	Return seditedMessageWebhook
End Sub

Sub setDeletedMessageWebhook(s As String)
	sdeletedMessageWebhook = s
End Sub

Sub getDeletedMessageWebhook As String
	Return sdeletedMessageWebhook
End Sub

'get / set Token for connecting to your webhook server.
Sub getWebhookUrlToken As String
	Return swebhookUrlToken
End Sub

Sub getWebhookUrl As String
	Return swebhookUrl
End Sub

Sub getStatusInstanceWebhook As String
	Return sstatusInstanceWebhook
End Sub

'get / set Get notifications about changes in the instance authorization status, possible variants: yes, no
Sub getStateWebhook As String
	Return sstateWebhook
End Sub

Sub getProxyInstance As String
	Return sproxyInstance
End Sub

Sub getPollMessageWebhook As String
	Return spollMessageWebhook
End Sub

Sub getOutgoingWebhook As String
	Return soutgoingWebhook
End Sub

Sub getOutgoingMessageWebhook As String
	Return soutgoingMessageWebhook
End Sub

Sub getOutgoingAPIMessageWebhook As String
	Return soutgoingAPIMessageWebhook
End Sub

Sub getMarkIncomingMessagesReadedOnReply As String
	Return smarkIncomingMessagesReadedOnReply
End Sub

Sub getMarkIncomingMessagesReaded As String
	Return smarkIncomingMessagesReaded
End Sub

'get / set Sets the 'Online' status for your account
Sub getKeepOnlineStatus As String
	Return skeepOnlineStatus
End Sub

Sub getIncomingWebhook As String
	Return sincomingWebhook
End Sub

'get / set Get notifications about incoming call statuses, possible variants: yes, no
Sub getIncomingCallWebhook As String
	Return sincomingCallWebhook
End Sub

Sub getIncomingBlockWebhook As String
	Return sincomingBlockWebhook
End Sub

'get / set Get notifications about the device (phone) and battery level, possible variants: yes, no
Sub getDeviceWebhook As String
	Return sdeviceWebhook
End Sub

'get / set Message sending delay is in milliseconds
Sub getDelaySendMessagesMilliseconds As Int
	Return idelaySendMessagesMilliseconds
End Sub

'get/set Account ID in WhatsApp
Sub getWid As String
	Return swid
End Sub

'get / set URL to receive incoming notifications
Sub setWebhookUrlToken(s As String)
	swebhookUrlToken = s
End Sub

Sub setWebhookUrl(s As String)
	swebhookUrl = s
End Sub

Sub setStatusInstanceWebhook(s As String)
	sstatusInstanceWebhook = s
End Sub

Sub setStateWebhook(s As String)
	sstateWebhook = s
End Sub

Sub setProxyInstance(s As String)
	sproxyInstance = s
End Sub

'set / get Get notifications about the creation of a poll and voting in the poll, possible variants: yes, no
Sub setPollMessageWebhook(s As String)
	spollMessageWebhook = s
End Sub

'set / get Get notifications about outgoing messages sending / delivering / reading status, possible variants: yes, no
Sub setOutgoingWebhook(s As String)
	soutgoingWebhook = s
End Sub

'get / set Get notifications about messages sent from phone, possible variants: yes, no
Sub setOutgoingMessageWebhook(s As String)
	soutgoingMessageWebhook = s
End Sub

'get / set Get notifications about messages sent from API, possible variants: yes,no.
Sub setOutgoingAPIMessageWebhook(s As String)
	soutgoingAPIMessageWebhook = s
End Sub

'get / set Mark incoming messages as read when sending a message to the chat via API, possible variants: yes, no
Sub setMarkIncomingMessagesReadedOnReply(s As String)
	smarkIncomingMessagesReadedOnReply = s
End Sub

''get / set Mark incoming messages as read or not, possible variants: yes, no
Sub setMarkIncomingMessagesReaded(s As String)
	smarkIncomingMessagesReaded = s
End Sub

Sub setKeepOnlineStatus(s As String)
	skeepOnlineStatus = s
End Sub

'get / set Get notifications about incoming messages and files, possible variants: yes, no
Sub setIncomingWebhook(s As String)
	sincomingWebhook = s
End Sub

Sub setIncomingCallWebhook(s As String)
	sincomingCallWebhook = s
End Sub

'get / set  Get notifications about adding a chat to the list of blocked contacts, possible variants: yes, no
Sub setIncomingBlockWebhook(s As String)
	sincomingBlockWebhook = s
End Sub

Sub setDeviceWebhook(s As String)
	sdeviceWebhook = s
End Sub

Sub setDelaySendMessagesMilliseconds(s As Int)
	idelaySendMessagesMilliseconds  = s
End Sub

Sub getMediaUrl As String
	Return smediaUrl
End Sub

Sub getApiUrl As String
	Return sapiUrl
End Sub

Sub setApiUrl(s As String)
	sapiUrl = s
	fetch.Initialize(sapiUrl)
End Sub

Sub setMediaUrl(s As String)
	smediaUrl = s
End Sub

Sub getAvatar As String
	Return savatar
End Sub

'https://console.green-api.com/app/api/setSettings
Sub SetSettings As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/setSettings/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("webhookUrl", swebhookUrl)
	fetch.AddData("webhookUrlToken", swebhookUrlToken)
	fetch.AddData("delaySendMessagesMilliseconds", idelaySendMessagesMilliseconds)
	fetch.AddData("markIncomingMessagesReaded", smarkIncomingMessagesReaded)
	fetch.AddData("markIncomingMessagesReadedOnReply", smarkIncomingMessagesReadedOnReply)
	fetch.AddData("outgoingWebhook", soutgoingWebhook)
	fetch.AddData("outgoingMessageWebhook", soutgoingMessageWebhook)
	fetch.AddData("outgoingAPIMessageWebhook", soutgoingAPIMessageWebhook)
	fetch.AddData("stateWebhook", sstateWebhook)
	fetch.AddData("incomingWebhook", sincomingWebhook)
	fetch.AddData("deviceWebhook", sdeviceWebhook)
	fetch.AddData("keepOnlineStatus", skeepOnlineStatus)
	fetch.AddData("pollMessageWebhook", spollMessageWebhook)
	fetch.AddData("incomingBlockWebhook", sincomingBlockWebhook)
	fetch.AddData("editedMessageWebhook", seditedMessageWebhook)
	fetch.AddData("deletedMessageWebhook", sdeletedMessageWebhook)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim bsaveSettings As Boolean = Response.GetDefault("saveSettings", False)
		Return bsaveSettings
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub


'https://console.green-api.com/app/api/sendMessage
'The method is aimed for sending a text message to a personal or a group chat. The message will be added to the send queue.
'chatId		Yes		Chat Id
'message		Yes		Message text. Emoji 😃 characters supported
'quotedMessageId	No		Quoted message ID. If present, the message will be sent quoting the specified chat message
'linkPreview	No		The parameter includes displaying a preview And a description of the link. Enabled by default. Accepts values: True/False
'Return idMessage (String)
Sub SendMessage(chatId As String, message As String, quotedMessageId As String, linkPreview As Boolean) As String
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/sendMessage/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.SchemaAddBoolean(Array("linkPreview"))
	fetch.AddData("chatId", chatId)
	fetch.AddData("message", message)
	If quotedMessageId <> "" Then fetch.AddData("quotedMessageId", quotedMessageId)
	If linkPreview Then fetch.AddData("linkPreview", linkPreview)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim sidMessage As String = Response.GetDefault("idMessage", "")
		Return sidMessage
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

'https://console.green-api.com/app/api/sendFileByUrl
'The method is aimed for sending a file uploaded by Url. The message will be added to the send queue. The maximum size of outgoing files is 100 MB.
'<b>Parameter	Mandatory	Description</b>
'chatId		Yes		Chat Id
'urlFile		Yes		Link To outgoing File
'caption		No		File caption. Caption added To video, images.
'quotedMessageId	No		Quoted message ID. If present, the message will be sent quoting the specified chat message
'fileNameChat	Yes		File name displayed in chat, must contain file extension. 
'				(Example: file1.jpg, file2.mp3)
Sub SendFileByUrl(chatId As String, urlFile As String, fileNameChat As String, caption As String, quotedMessageId As String) As String
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/sendFileByUrl/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	fetch.AddData("urlFile", urlFile)
	fetch.AddData("fileName", fileNameChat)
	'
	If caption <> "" Then fetch.AddData("caption", caption)
	If quotedMessageId <> "" Then fetch.AddData("quotedMessageId", quotedMessageId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim sidMessage As String = Response.GetDefault("idMessage", "")
		Return sidMessage
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

'https://console.green-api.com/app/api/sendFileByUpload
'The method is aimed for sending a file uploaded by form (form-data). The message will be added to the send queue, in the response you will receive a link to the downloaded file.
'<b>Parameter	Mandatory	Description </b>
'chatId		Yes		Chat Id
'Dir		Yes		Folder File
'FileName	Yes		File name.
'caption		No		Caption added To video, images.
'quotedMessageId	No		Quoted message Id. If present, the message will be sent quoting the specified chat message.
'fileNameChat	No		File name displayed in chat, must contain file extension. 
'				(Example: file1.jpg, file2.mp3)
Sub SendFileByUpload(chatId As String, caption As String, fileObj As Object, fileNameChat As String, quotedMessageId As String) As Map
	Dim Response As Map = CreateMap()
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/sendFileByUpload/${thisApiTokenInstance}"$)
	fetch.NewFormData
	fetch.AddFormData("file", fileObj)
	fetch.AddFormData("chatId", chatId)
	fetch.AddFormData("fileName", fileNameChat)
	If caption <> "" Then fetch.AddFormData("caption", caption)
	If quotedMessageId <> "" Then fetch.AddFormData("quotedMessageId", quotedMessageId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Response = fetch.response
		Return Response
	Else
		Log(fetch.ErrorMessage)
		Return Response
	End If
End Sub

'https://console.green-api.com/app/api/setProfilePicture
Sub SetProfilePicture(fileObj As Object) As Map
	Dim Response As Map = CreateMap()
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/setProfilePicture/${thisApiTokenInstance}"$)
	fetch.NewFormData
	fetch.AddFormData("file", fileObj)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Response = fetch.response
		Return Response
	Else
		Log(fetch.ErrorMessage)
		Return Response
	End If
End Sub


'https://console.green-api.com/app/api/uploadFile
'The method is designed to upload a file to the cloud storage, which can be sent using the sendFileByUrl method.
Sub UploadFile(fileObj As Object) As String
	Dim Response As Map = CreateMap()
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/uploadFile/${thisApiTokenInstance}"$)
	fetch.NewFormData
	fetch.AddFormData("file", fileObj)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Response = fetch.response
		Dim surlFile As String = Response.GetDefault("urlFile", "")
		Return surlFile
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

'https://console.green-api.com/app/api/showMessagesQueue
'The method is aimed for getting a list of messages in the queue to be sent. 
Sub ShowMessagesQueue As List
	Dim Response As List
	Response.Initialize 
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/showMessagesQueue/${thisApiTokenInstance}"$)
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		Response = fetch.ResponseList
		Return Response
	Else
		Log(fetch.ErrorMessage)
		Return Response
	End If
End Sub

'https://console.green-api.com/app/api/clearMessagesQueue
'The method is aimed for clearing the queue of messages to be sent.
Sub ClearMessagesQueue As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/clearMessagesQueue/${thisApiTokenInstance}"$)
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.ResponseList
		Dim bisCleared As Boolean = Response.GetDefault("isCleared", False)
		bisCleared = CBool(bisCleared)
		Return bisCleared
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/sendLocation
Sub SendLocation(chatId As String, latitude As Double, longitude As Double, nameLocation As String, Address As String, quotedMessageId As String) As String
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/sendLocation/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	fetch.AddData("latitude", latitude)
	fetch.AddData("longitude", longitude)
	If nameLocation <> "" Then fetch.AddData("nameLocation", nameLocation)
	If Address <> "" Then fetch.AddData("address", Address)
	If quotedMessageId <> "" Then fetch.AddData("quotedMessageId", quotedMessageId)	 
	
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim sidMessage As String = Response.GetDefault("idMessage", "")
		Return sidMessage
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

'https://console.green-api.com/app/api/sendContact
Sub SendContact(chatId As String, firstName As String, middleName As String, lastName As String, phoneNumber As String, company As String, quotedMessageId As String) As String
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/sendContact/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	fetch.AddData("contact.phoneContact", phoneNumber)
	fetch.AddData("contact.firstName", firstName)
	If middleName <> "" Then fetch.AddData("contact.middleName", middleName)
	fetch.AddData("contact.lastName", lastName)
	If company <> "" Then fetch.AddData("contact.company", company)
	
	If quotedMessageId <> "" Then fetch.AddData("quotedMessageId", quotedMessageId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim sidMessage As String = Response.GetDefault("idMessage", "")
		Return sidMessage
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

'https://console.green-api.com/app/api/checkWhatsapp
'check whatsapp availability on a line
Sub CheckWhatsApp(sPhone As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/checkWhatsapp/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.SchemaAddIntegers(Array("phoneNumber"))
	fetch.AddData("phoneNumber", sPhone)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim resp As Boolean = Response.GetDefault("existsWhatsapp", False)
		resp = CBool(resp)
		Return resp
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/getAvatar
'The method returns a user or a group chat avatar.
Sub GetAvatarFor(sPhone As String) As String
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getAvatar/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", sPhone)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim resp As String = Response.GetDefault("urlAvatar", "")
		Return resp
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

'https://console.green-api.com/app/api/getContacts
'The method is aimed for getting a list of the current account contacts.
'type can be group/user
'The `GetContacts` method is designed to retrieve a list of contacts from your current account. 
'It's possible for this method to 'return a large number of contacts, as it includes all contacts associated with your account. 
'This could include individual contacts 'as well as those from group chats you belong to.
Sub GetContacts(groupsOnly As Boolean) As List
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getContacts/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.SchemaAddBoolean(Array("group"))
	fetch.AddParameter("group", groupsOnly)
	BANAno.Await(fetch.GetWait)
	Dim Response As List
	Response.Initialize 
	If fetch.Success Then
		Dim ans As List = fetch.ResponseList
		For Each item As Map In ans
			Dim scontactName As String = item.GetDefault("contactName", "")
			Dim sid As String = item.GetDefault("id", "")
			Dim sname As String = item.GetDefault("name", "")
			Dim stype As String = item.GetDefault("type", "")
			Dim newContact As Contact
			newContact.Initialize 
			newContact.id = sid
			newContact.contactName = scontactName
			newContact.name = sname
			newContact.typeOf = stype
			newContact.avatar = ""
			Response.Add(newContact)
		Next
		Return Response
	Else
		Log(fetch.ErrorMessage)
		Return Response
	End If
End Sub

Sub GetContactsMap(groupsOnly As Boolean) As Map
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getContacts/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.SchemaAddBoolean(Array("group"))
	fetch.AddParameter("group", groupsOnly)
	BANAno.Await(fetch.GetWait)
	Dim Response As Map = CreateMap()
	If fetch.Success Then
		Dim ans As List = fetch.ResponseList
		For Each item As Map In ans
			Dim sid As String = item.GetDefault("id", "")
			Response.Put(sid, item)
		Next
		Return Response
	Else
		Log(fetch.ErrorMessage)
		Return Response
	End If
End Sub


'The method is aimed for getting a list of the current account contacts.
'type can be group/user
Sub GetContactsWidthAvatar(groupsOnly As Boolean) As List
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getContacts/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.SchemaAddBoolean(Array("group"))
	fetch.AddParameter("group", groupsOnly)
	BANAno.Await(fetch.GetWait)
	Dim Response As List
	Response.Initialize 
	If fetch.Success Then
		Dim ans As List = fetch.ResponseList
		For Each item As Map In ans
			Dim scontactName As String = item.GetDefault("contactName", "")
			Dim sid As String = item.GetDefault("id", "")
			Dim sname As String = item.GetDefault("name", "")
			Dim stype As String = item.GetDefault("type", "")
			Dim xavatar As String = BANAno.Await(GetAvatarFor(sid))
			Dim newContact As Contact
			newContact.Initialize 
			newContact.id = sid
			newContact.contactName = scontactName
			newContact.name = sname
			newContact.typeOf = stype
			newContact.avatar = xavatar
			Response.Add(newContact)
		Next
		Return Response
	Else
		Log(fetch.ErrorMessage)
		Return Response
	End If
End Sub

'https://console.green-api.com/app/api/getContactInfo
Sub GetContactInfo(chatID As String) As ContactInfo
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getContactInfo/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatID)
	BANAno.Await(fetch.PostWait)
	'
	Dim newContact As ContactInfo
	newContact.Initialize
	newContact.products.Initialize
	'
	If fetch.Success Then
		Dim Response As Map = fetch.Response
		newContact.avatar = Response.GetDefault("avatar", "")
		newContact.contactName = Response.GetDefault("contactName", "")
		newContact.name = Response.GetDefault("name", "")
		newContact.email = Response.GetDefault("email", "")
		newContact.category = Response.GetDefault("category", "")
		newContact.description = Response.GetDefault("description", "")
		newContact.chatID  = Response.Get("chatId")
		newContact.lastSeen = Response.Get("lastSeen")
		newContact.isArchive = Response.Get("isArchive")
		newContact.isDisappearing = Response.Get("isDisappearing")
		newContact.isMute  = Response.Get("isMute")
		newContact.messageexpiration = Response.Get("messageexpiration")
		newContact.muteexpiration = Response.Get("muteexpiration")
		newContact.isBusiness = Response.Get("isBusiness")
		'process products
		Dim lproducts As List = Response.Get("products")
		Dim p As List
		p.Initialize 
		For Each pm As Map In lproducts
			Dim newproduct As Product
			newproduct.Initialize 
			newproduct.id = pm.Get("id")
			newproduct.availability = pm.Get("availability")
			newproduct.reviewStatus = pm.Get("reviewStatus")
			newproduct.name = pm.Get("name")
			newproduct.imageUrls = pm.Get("imageUrls")
			newproduct.description = pm.Get("description")
			newproduct.price = pm.Get("price")
			newproduct.isHidden = pm.Get("isHidden")
			p.Add(newproduct)
		Next						
		newContact.products = p
		Return newContact
	Else
		Log(fetch.ErrorMessage)
		Return newContact
	End If
End Sub

'https://console.green-api.com/app/api/deleteMessage
'The method deletes a message from a chat
Sub DeleteMessage(chatID As String, idMessage As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/deleteMessage/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatID)
	fetch.AddData("idMessage", idMessage)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Return True
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/archiveChat
'The method archives a chat. One can archive chats that have at least one incoming message.
Sub ArchiveChat(chatID As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/archiveChat/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatID)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Return True
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/unarchiveChat
'The method unarchives a chat.
Sub UnarchiveChat(chatID As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/unarchiveChat/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatID)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Return True
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub


'https://console.green-api.com/app/api/setDisappearingChat
'0 (off)
'86400 (24 hours)
'604800 (7 days)
'7776000 (90 days).
Sub SetDisappearingChat(chatID As String, ephemeralExpiration As Int) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/setDisappearingChat/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.SchemaAddIntegers(Array("ephemeralExpiration"))
	fetch.AddData("chatId", chatID)
	fetch.AddData("ephemeralExpiration", ephemeralExpiration)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim response As Map = fetch.response
		Dim bdisappearingMessagesInChat As Boolean = response.Get("disappearingMessagesInChat")
		Return bdisappearingMessagesInChat
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/createGroup
'The method is aimed for creating a group chat. 
'returns created, chatId and groupInviteLink
Sub CreateGroup(groupName As String, chatIds As List) As Map
	Dim nm As Map = CreateMap()
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/createGroup/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("groupName", groupName)
	fetch.AddDataList("chatIds", chatIds)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		nm = fetch.response
		Return nm
	Else
		Log(fetch.ErrorMessage)
		Return nm
	End If
End Sub

'https://console.green-api.com/app/api/updateGroupName
'The method changes a group chat name 
Sub UpdateGroupName(groupId As String, groupName As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/updateGroupName/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("groupId", groupId)
	fetch.AddData("groupName", groupName)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim bupdateGroupName As Boolean = Response.GetDefault("updateGroupName", False)
		Return bupdateGroupName
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/getGroupData
'The method gets group chat data. 
Sub GetGroupData(groupId As String) As GroupData
	Dim gd As GroupData
	gd.Initialize 
	'
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getGroupData/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("groupId", groupId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		gd.creation = Response.Get("creation")
		gd.groupId = Response.Get("groupId")
		gd.owner = Response.Get("owner")
		gd.subject = Response.Get("subject")
		Dim participants As List = Response.Get("participants")
		Dim pList As List
		pList.Initialize 
		For Each pm As Map In participants
			Dim np As GroupParticipant
			np.Initialize 
			np.id = pm.Get("id")
			np.isAdmin = CBool(pm.Get("isAdmin"))
			np.isSuperAdmin = CBool(pm.Get("isSuperAdmin"))
			pList.Add(np)
		Next
		gd.participants = pList
		gd.subjectTime = Response.Get("subjectTime")
		gd.subjectOwner = Response.Get("subjectOwner")
		gd.groupInviteLink = Response.Get("groupInviteLink")
		Return gd
	Else
		Log(fetch.ErrorMessage)
		Return gd
	End If
End Sub

'https://console.green-api.com/app/api/addGroupParticipant
Sub AddGroupParticipant(groupId As String, participantChatId As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/addGroupParticipant/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("groupId", groupId)
	fetch.AddData("participantChatId", participantChatId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim bupdateGroupName As Boolean = Response.GetDefault("addParticipant", False)
		Return bupdateGroupName
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/removeGroupParticipant
Sub RemoveGroupParticipant(groupId As String, participantChatId As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/removeGroupParticipant/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("groupId", groupId)
	fetch.AddData("participantChatId", participantChatId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim bupdateGroupName As Boolean = Response.GetDefault("removeParticipant", False)
		Return bupdateGroupName
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/setGroupAdmin
Sub SetGroupAdmin(groupId As String, participantChatId As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/setGroupAdmin/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("groupId", groupId)
	fetch.AddData("participantChatId", participantChatId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim bupdateGroupName As Boolean = Response.GetDefault("setGroupAdmin", False)
		Return bupdateGroupName
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/removeAdmin
Sub RemoveAdmin(groupId As String, participantChatId As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/removeAdmin/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("groupId", groupId)
	fetch.AddData("participantChatId", participantChatId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim bupdateGroupName As Boolean = Response.GetDefault("removeAdmin", False)
		Return bupdateGroupName
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/setGroupPicture
Sub SetGroupPicture(groupId As String, fileObj As Object) As Map
	Dim Response As Map = CreateMap()
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/setGroupPicture/${thisApiTokenInstance}"$)
	fetch.NewFormData
	fetch.AddFormData("file", fileObj)
	fetch.AddFormData("groupId", groupId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Response = fetch.response
		Return Response
	Else
		Log(fetch.ErrorMessage)
		Return Response
	End If
End Sub

'https://console.green-api.com/app/api/getMessage
'The method returns the chat message
Sub GetMessage(chatId As String, idMessage As String) As Message
	Dim nm As Message
	nm.Initialize 
	Dim Response As Map = CreateMap()
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getMessage/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	fetch.AddData("idMessage", idMessage)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Response = fetch.response
		nm = MessageFromMap(Response)
		Return nm
	Else
		Log(fetch.ErrorMessage)
		Return nm
	End If
End Sub

'https://console.green-api.com/app/api/leaveGroup.
Sub LeaveGroup(groupId As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/leaveGroup/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("groupId", groupId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim bupdateGroupName As Boolean = Response.GetDefault("leaveGroup", False)
		Return bupdateGroupName
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/getChatHistory
Sub GetChatHistory(chatId As String, icount As Int) As List
	Dim ResponseL As List
	ResponseL.Initialize
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getChatHistory/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	fetch.SchemaAddIntegers(Array("count"))
	fetch.adddata("count", icount)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		ResponseL = fetch.ResponseList
		Return ResponseL
'		Dim chats As List
'		chats.Initialize
'		For Each chatmsg As Map In ResponseL
'			Dim msg As Message = MessageFromMap(chatmsg)
'			chats.Add(msg)
'		Next
'		Return chats
	Else
		Log(fetch.ErrorMessage)
		Return ResponseL
	End If
End Sub

'get contacts with chats
Sub GetChats As List
	Dim outR As List
	outR.Initialize 
	Dim ResponseL As List
	ResponseL.Initialize
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/getChats/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		ResponseL = fetch.ResponseList
		For Each rec As Map In ResponseL
			Dim sid As String = rec.Get("id")
			Dim sname As String = rec.GetDefault("name", "")
			Dim cc As Contact
			cc.Initialize 
			cc.id = sid
			cc.name = sname
			outR.Add(cc)
		Next
		Return outR
	Else
		Log(fetch.ErrorMessage)
		Return ResponseL
	End If
End Sub

'https://console.green-api.com/app/api/receiveNotification
'The method is aimed for receiving one incoming notification from the notifications queue. It will get the next notification
'passing a receiveTimeout less than 0 does not record the timeout
'takes a value from 5 to 60 seconds
Sub ReceiveNotification(receiveTimeout As Int) As MessageNotification
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/receiveNotification/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.SchemaAddIntegers(Array("receiveTimeout"))
	If receiveTimeout >= 0 Then
		fetch.AddParameter("receiveTimeout", receiveTimeout)
	End If
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		Dim Response As Map = fetch.Response
		Dim n As MessageNotification
		n.Initialize
		n.receiptId = Response.Get("receiptId")
		n.body = Response.Get("body")
		n.chatId = fetch.GetRecursive(Response, "body.chatId")
		n.idMessage = fetch.GetRecursive(Response, "body.idMessage")
		n.status = fetch.GetRecursive(Response, "body.status")
		n.timestamp = fetch.GetRecursive(Response, "body.timestamp")
		n.typeWebhook = fetch.GetRecursive(Response, "body.typeWebhook")
		n.wid = fetch.GetRecursive(Response, "body.instanceData.wid")
		n.sendByApi = fetch.GetRecursive(Response, "body.sendByApi")
		n.senderChatId = fetch.GetRecursive(Response, "body.senderData.chatId")
		n.senderId = fetch.GetRecursive(Response, "body.senderData.sender")
		n.senderName = fetch.GetRecursive(Response, "body.senderData.senderName")
		n.typeMessage = fetch.GetRecursive(Response, "body.messageData.typeMessage")
		n.textMessage = fetch.GetRecursive(Response, "body.messageData.textMessageData.textMessage")
		
'		n.textMessage = fetch.GetRecursive(Response, "body.messageData.quotedMessage.stanzaId")
'		n.textMessage = fetch.GetRecursive(Response, "body.messageData.quotedMessage.participant")
'		n.textMessage = fetch.GetRecursive(Response, "body.messageData.quotedMessage.textMessage")
'		n.textMessage = fetch.GetRecursive(Response, "body.messageData.quotedMessage.typeMessage")
'		n.textMessage = fetch.GetRecursive(Response, "body.messageData.quotedMessage.downloadUrl")
'		n.textMessage = fetch.GetRecursive(Response, "body.messageData.quotedMessage.caption")
'		n.textMessage = fetch.GetRecursive(Response, "body.messageData.quotedMessage.jpegThumbnail")
		
		Return n
	Else
		Log(fetch.ErrorMessage)
		Return Null
	End If
End Sub

'https://console.green-api.com/app/api/deleteNotification
'The method is aimed for deleting an incoming notification from the notification queue
Sub DeleteNotification(receiptId As Int) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/deleteNotification/${thisApiTokenInstance}/${receiptId}"$)
	fetch.SetContentTypeApplicationJSON
	BANAno.Await(fetch.DeleteWait)
	If fetch.Success Then
		Dim Response As Map = fetch.Response
		Dim bresult As Boolean = CBool(Response.Get("result"))
		Return bresult
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/forwardMessages
'The method is intended for forwarding messages to a personal or group chat.
Sub ForwardMessages(chatId As String, chatIdFrom As String, messages As List) As List
	Dim ResponseL As List
	ResponseL.Initialize 
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/forwardMessages/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	fetch.AddData("chatIdFrom", chatIdFrom)
	fetch.AddDataList("messages", messages)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.Response
		ResponseL = Response.Get("messages")
		Return ResponseL
	Else
		Log(fetch.ErrorMessage)
		Return ResponseL
	End If
End Sub

'https://console.green-api.com/app/api/downloadFile
'The method is aimed for downloading incoming and outgoing files.
Sub DownloadFile(chatId As String, idMessage As String) As String
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/downloadFile/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	fetch.AddData("idMessage", idMessage)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.Response
		Dim sdownloadUrl As String = Response.Get("downloadUrl")
		Return sdownloadUrl
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub


'https://console.green-api.com/app/api/sendPoll
'This method is intended for sending messages with a poll to a private or group chat
Sub SendPoll(chatId As String, message As String, options As List, multipleAnswers As Boolean, quotedMessageId As String) As String
	Dim nOptions As List
	nOptions.Initialize 
	For Each opt As String In options
		Dim nopt As Map = CreateMap()
		nopt.Put("optionName", opt)
		nOptions.Add(nopt)
	Next
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/sendPoll/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	fetch.AddData("message", message)
	fetch.AddDataList("options", nOptions)
	fetch.AddData("multipleAnswers", multipleAnswers)
	If quotedMessageId <> "" Then fetch.AddData("quotedMessageId", quotedMessageId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.Response
		Dim sidMessage As String = Response.Get("idMessage")
		Return sidMessage
	Else
		Log(fetch.ErrorMessage)
		Return ""
	End If
End Sub

'https://console.green-api.com/app/api/lastIncomingMessages
'The method returns the last incoming messages of the account.
Sub LastIncomingMessages(minutes As Int) As List
	Dim ResponseL As List
	ResponseL.Initialize 
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/lastIncomingMessages/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.SchemaAddIntegers(Array("minutes"))
	fetch.AddParameter("minutes", minutes)
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		ResponseL = fetch.ResponseList
		Dim chats As List
		chats.Initialize
		For Each chatmsg As Map In ResponseL
			Dim msg As Message = MessageFromMap(chatmsg)
			chats.Add(msg)
		Next
		Return chats
	Else
		Log(fetch.ErrorMessage)
		Return ResponseL
	End If
End Sub

'https://console.green-api.com/app/api/lastOutgoingMessages
'The method returns the last outgoing messages of the account
Sub LastOutgoingMessages(minutes As Int) As List
	Dim ResponseL As List
	ResponseL.Initialize 
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/lastOutgoingMessages/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.SchemaAddIntegers(Array("minutes"))
	fetch.AddParameter("minutes", minutes)
	BANAno.Await(fetch.GetWait)
	If fetch.Success Then
		ResponseL = fetch.ResponseList
		Dim chats As List
		chats.Initialize
		For Each chatmsg As Map In ResponseL
			Dim msg As Message = MessageFromMap(chatmsg)
			chats.Add(msg)
		Next
		Return chats
	Else
		Log(fetch.ErrorMessage)
		Return ResponseL
	End If
End Sub


'convert a map to a message type
Sub MessageFromMap(response As Map) As Message
	Dim nm As Message
	nm.Initialize 
	nm.typeOf = response.Get("type")
	nm.idMessage = response.Get("idMessage")
	nm.timestamp = response.Get("timestamp")
	nm.statusMessage = response.Get("statusMessage")
	nm.sendByApi = CBool(response.Get("sendByApi"))
	nm.typeMessage = response.Get("typeMessage")
	nm.chatId = response.Get("chatId")
	nm.senderId = response.GetDefault("senderId", "")
	nm.senderName = response.GetDefault("senderName", "")
	nm.senderContactName = response.GetDefault("senderContactName", "")
	nm.isForwarded = CBool(response.Get("isForwarded"))
	nm.forwardingScore = response.Get("forwardingScore")
	nm.textMessage = response.GetDefault("textMessage", "")
	nm.downloadUrl = response.GetDefault("downloadUrl", "")
	nm.caption = response.GetDefault("caption", "")
	nm.fileName = response.GetDefault("fileName", "")
	nm.jpegThumbnail = response.GetDefault("jpegThumbnail", "")
	nm.mimeType = response.GetDefault("mimeType", "")
	nm.isAnimated = CBool(response.Get("isAnimated"))
	nm.location = LocationFromMap(response.Get("location"))
	nm.contact = ContactFromMap(response.Get("contact"))
	nm.extendedTextMessage = ExtendedTextMessageFromMap(response.Get("extendedTextMessage"))
	nm.extendedTextMessageData = ExtendedTextDataMessageFromMap(response.Get("extendedTextMessageData"))
	nm.pollMessageData = PollMessageDataFromMap(response.Get("pollMessageData"))
	nm.quotedMessage = QuotedMessageFromMap(response.Get("quotedMessage"))
	Return nm
End Sub

Sub LocationFromMap(response As Map) As MessageLocation
	Dim nl As MessageLocation
	nl.Initialize
	If BANAno.IsNull(response) Then Return nl
	If BANAno.IsUndefined(response) Then Return nl
	nl.nameLocation = response.get("nameLocation")
	nl.address = response.Get("address")
	nl.latitude = CDbl(response.Get("latitude"))
	nl.longitude = CDbl(response.Get("longitude"))
	nl.jpegThumbnail = response.Get("jpegThumbnail")
	nl.isForwarded = CDbl(response.Get("isForwarded"))
	nl.forwardingScore = response.Get("forwardingScore")
	Return nl
End Sub

Sub ContactFromMap(response As Map) As MessageContact
	Dim nc As MessageContact
	nc.Initialize 
	If BANAno.IsNull(response) Then Return nc
	If BANAno.IsUndefined(response) Then Return nc
	nc.displayName = response.Get("displayName")
	nc.vcard = response.Get("vcard")
	nc.isForwarded = response.Get("isForwarded")
	nc.forwardingScore = response.Get("forwardingScore")
	Return nc
End Sub

Sub ExtendedTextMessageFromMap(response As Map) As MessageExtendedText
	Dim et As MessageExtendedText
	et.Initialize 
	If BANAno.IsNull(response) Then Return et
	If BANAno.IsUndefined(response) Then Return et
	et.text = response.Get("text")
	et.description = response.Get("description")
	et.title = response.Get("title")
	et.previewType = response.Get("previewType")
	et.jpegThumbnail = response.Get("jpegThumbnail")
	et.stanzaId = response.Get("stanzaId")
	et.participant = response.Get("participant")
	et.isForwarded = CBool(response.Get("isForwarded"))
	et.forwardingScore = response.Get("forwardingScore")
	Return et
End Sub

Sub ExtendedTextDataMessageFromMap(response As Map) As MessageExtendedTextData
	Dim etd As MessageExtendedTextData
	etd.Initialize 
	If BANAno.IsNull(response) Then Return etd
	If BANAno.IsUndefined(response) Then Return etd
	etd.text = response.Get("text")
	Return etd
End Sub

Sub PollMessageDataFromMap(response As Map) As MessagePollMessageData
	Dim pmd As MessagePollMessageData
	pmd.Initialize 
	If BANAno.IsNull(response) Then Return pmd
	If BANAno.IsUndefined(response) Then Return pmd
	pmd.stanzaId = response.Get("stanzaId")
	pmd.name = response.Get("name")
	pmd.options = response.Get("options")
	pmd.votes = response.Get("votes")
	pmd.multipleAnswers = response.Get("multipleAnswers")
	Return pmd
End Sub

Sub QuotedMessageFromMap(response As Map) As MessageQuoted
	Dim mq As MessageQuoted
	mq.Initialize 
	If BANAno.IsNull(response) Then Return mq
	If BANAno.IsUndefined(response) Then Return mq
	mq.stanzaId = response.Get("stanzaId")
	mq.participant = response.Get("participant")
	mq.typeMessage = response.Get("typeMessage")
	Return mq
End Sub

'put recursive object to a map
Sub PutRecursive(data As Map, path As String, value As Object)
	Try
		If BANAno.IsNull(path) Or BANAno.IsUndefined(path) Then
			path = ""
		End If
		If path = "" Then Return
		Dim prevObj As BANanoObject = data
		If path.IndexOf(".") = -1 Then
			'we dont have a dot
			prevObj.SetField(path, value)
		Else
			'we have a dot
			Dim items As List = BANAno.Split(".", path)
			Dim iTot As Int = items.Size
			Dim iCnt As Int
			'
			Dim strprev As String = ""
			Dim prtObj As BANanoObject
			Dim litem As String = items.Get(iTot - 1)
			'
			For iCnt = 1 To iTot - 1
				'get the previos path
				strprev = items.Get(iCnt - 1)
				'the parent object
				prtObj = prevObj.GetField(strprev)
				'this does not exist, create it
				If BANAno.IsUndefined(prtObj) Then
					Dim no As Object
					prevObj.SetField(strprev, no)
					prevObj = prevObj.GetField(strprev)
				Else
					prevObj = prtObj
				End If
			Next
			prevObj.SetField(litem, value)
		End If
	Catch	'ignore
	End Try	'ignore
End Sub

'get recursive data from a map
Sub GetRecursive(data As Map, path As String) As Object
	Try
		Dim prevObj As BANanoObject = data
		If path.IndexOf(".") = -1 Then
			Dim res As Object = prevObj.GetField(path)
			If BANAno.IsUndefined(res) Then
				res = Null
			End If
			Return res
		Else
			Dim items As List = BANAno.Split(".", path)
			Dim iTot As Int = items.Size
			Dim iCnt As Int
			'
			Dim strprev As String = ""
			Dim prtObj As BANanoObject
			Dim litem As String = items.Get(iTot - 1)
			'
			For iCnt = 1 To iTot - 1
				'get the previos path
				strprev = items.Get(iCnt - 1)
				'the parent object
				prtObj = prevObj.GetField(strprev)
				'this does not exist, return
				If BANAno.IsUndefined(prtObj) Then
					Return Null
				Else
					prevObj = prtObj
				End If
			Next
			Dim res As Object = prevObj.GetField(litem)
			If BANAno.IsUndefined(res) Then
				res = Null
			End If
			Return res
		End If
	Catch
		Return Null
	End Try
End Sub

Sub ParticipantInGroup(grpID As String, chatID As String) As Boolean
	Dim gData As GroupData = BANAno.Await(GetGroupData(grpID))
	Dim participants As List = gData.participants
	'
	For Each participant As GroupParticipant In participants
		Dim pID As String = participant.id
		If pID.EqualsIgnoreCase(chatID) Then
			Return True
		End If
	Next
	Return False
End Sub

Sub ReadChats(chatId As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/readChat/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim bsetRead As Boolean = Response.GetDefault("setRead", False)
		Return bsetRead
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub

'https://console.green-api.com/app/api/readChat
Sub ReadChat(chatId As String, idMessage As String) As Boolean
	fetch.Initialize($"${sapiUrl}/waInstance${thisIdInstance}/readChat/${thisApiTokenInstance}"$)
	fetch.SetContentTypeApplicationJSON
	fetch.AddData("chatId", chatId)
	fetch.AddData("idMessage", idMessage)
	BANAno.Await(fetch.PostWait)
	If fetch.Success Then
		Dim Response As Map = fetch.response
		Dim bsetRead As Boolean = Response.GetDefault("setRead", False)
		Return bsetRead
	Else
		Log(fetch.ErrorMessage)
		Return False
	End If
End Sub