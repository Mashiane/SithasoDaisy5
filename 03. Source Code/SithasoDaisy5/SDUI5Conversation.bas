B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.13
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Reply (MessageID as string)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: ChatId, DisplayName: Chat Id, FieldType: String, DefaultValue: , Description: Chat Id
#DesignerProperty: Key: ConversationType, DisplayName: Conversation Type, FieldType: String, DefaultValue: T, Description: Conversation Type, List: T|V|D|I|A
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: FontSize, DisplayName: Font Size, FieldType: String, DefaultValue: 14px, Description: Font Size
#DesignerProperty: Key: Incoming, DisplayName: Incoming, FieldType: Boolean, DefaultValue: True, Description: Incoming
#DesignerProperty: Key: SenderImage, DisplayName: Sender Image, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Sender Image
#DesignerProperty: Key: ImageShape, DisplayName: Image Shape, FieldType: String, DefaultValue: , Description: Image Shape, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
#DesignerProperty: Key: ImageSize, DisplayName: Image Size, FieldType: String, DefaultValue: 12, Description: Image Size
#DesignerProperty: Key: SenderName, DisplayName: Sender Name, FieldType: String, DefaultValue: , Description: Sender Name
#DesignerProperty: Key: SenderTime, DisplayName: Sender Time, FieldType: String, DefaultValue: , Description: Sender Time
#DesignerProperty: Key: Footer, DisplayName: Footer, FieldType: String, DefaultValue: , Description: Footer
#DesignerProperty: Key: Message, DisplayName: Message, FieldType: String, DefaultValue: , Description: Message
#DesignerProperty: Key: ReAction, DisplayName: Re Action, FieldType: String, DefaultValue: , Description: Re Action
#DesignerProperty: Key: ReplyId, DisplayName: Reply Id, FieldType: String, DefaultValue: , Description: Reply Id
#DesignerProperty: Key: ReplyMessage, DisplayName: Reply Message, FieldType: String, DefaultValue: , Description: Reply Message
#DesignerProperty: Key: FileMimeType, DisplayName: File Mime Type, FieldType: String, DefaultValue: , Description: File Mime Type
#DesignerProperty: Key: FileName, DisplayName: File Name, FieldType: String, DefaultValue: , Description: File Name
#DesignerProperty: Key: FilePreview, DisplayName: File Preview, FieldType: String, DefaultValue: , Description: File Preview
#DesignerProperty: Key: FileSize, DisplayName: File Size, FieldType: String, DefaultValue: none, Description: File Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: FileUrl, DisplayName: File Url, FieldType: String, DefaultValue: , Description: File Url
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
'global variables in this module
Sub Class_Globals
	Public UI As UIShared 'ignore
	Public CustProps As Map 'ignore
	Private mCallBack As Object 'ignore
	Private mEventName As String 'ignore
	Private mElement As BANanoElement 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mName As String 'ignore
	Private BANano As BANano   'ignore
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Public Tag As Object
	Private sBackgroundColor As String = "none"
	Private sConversationType As String = "T"
	Private sFileMimeType As String = ""
	Private sFileName As String = ""
	Private sFilePreview As String = ""
	Private sFileSize As String = "none"
	Private sFileUrl As String = ""
	Private sFontSize As String = "14px"
	Private sFooter As String = ""
	Private bIncoming As Boolean = True
	Private sMessage As String = ""
	Private sReplyId As String = ""
	Private sReplyMessage As String = ""
	Private sSenderImage As String = "./assets/mashy.jpg"
	Private sSenderName As String = ""
	Private sSenderTime As String = ""
	Private sTextColor As String = ""
	Private sReAction As String = ""
	Private sChatId As String = ""
	Private sImageShape As String = ""
	Private sImageSize As String = "12"
	Private bAvatarVisible As Boolean = True
	Private bHeaderVisible As Boolean = True
	Private bImageVisible As Boolean = True
	Private bMessageVisible As Boolean = True
	Private bPdfVisible As Boolean = True
	Private bReactionVisible As Boolean = True
	Private bVideoVisible As Boolean = True
	Private bFooterVisible As Boolean = True
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("SVGRenderer.min.js")
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("ChatId", "")
	CustProps.Put("ConversationType", "T")
	CustProps.Put("TextColor", "")
	CustProps.Put("BackgroundColor", "")
	CustProps.Put("FontSize", "14px")
	CustProps.Put("Incoming", True)
	CustProps.Put("SenderImage", "./assets/mashy.jpg")
	CustProps.Put("ImageShape", "")
	CustProps.Put("ImageSize", "12")
	CustProps.Put("SenderName", "")
	CustProps.Put("SenderTime", "")
	CustProps.Put("Footer", "")
	CustProps.Put("Message", "")
	CustProps.Put("ReAction", "")
	CustProps.Put("ReplyId", "")
	CustProps.Put("ReplyMessage", "")
	CustProps.Put("FileMimeType", "")
	CustProps.Put("FileName", "")
	CustProps.Put("FilePreview", "")
	CustProps.Put("FileSize", "none")
	CustProps.Put("FileUrl", "")
	CustProps.Put("Visible", True)
End Sub

' returns the element id
Public Sub getID() As String
	Return mName
End Sub
'set properties from an outside source
Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.Get("ParentID")
End Sub

Sub GetProperties As Map
	Return CustProps
End Sub
'add this element to an existing parent element using current props
Public Sub AddComponent
	If sParentID = "" Then Return
	sParentID = UI.CleanID(sParentID)
	mTarget = BANano.GetElement("#" & sParentID)
	DesignerCreateView(mTarget, CustProps)
End Sub
'remove this element from the dom
Public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub
'set the parent id
Sub setParentID(s As String)
	s = UI.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub
'get the parent id
Sub getParentID As String
	Return sParentID
End Sub
'return the #ID of the element
Public Sub getHere() As String
	Return $"#${mName}"$
End Sub
'set Visible
Sub setVisible(b As Boolean)
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	UI.SetVisible(mElement, b)
End Sub
'get Visible
Sub getVisible As Boolean
	bVisible = UI.GetVisible(mElement)
	Return bVisible
End Sub
'use to add an event to the element
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, methodName)
End Sub

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		UI.ExcludeVisible = True
		UI.ExcludeEnabled = True
		sBackgroundColor = Props.GetDefault("BackgroundColor", "")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		sConversationType = Props.GetDefault("ConversationType", "T")
		sConversationType = UI.CStr(sConversationType)
		sFileMimeType = Props.GetDefault("FileMimeType", "")
		sFileMimeType = UI.CStr(sFileMimeType)
		sFileName = Props.GetDefault("FileName", "")
		sFileName = UI.CStr(sFileName)
		sFilePreview = Props.GetDefault("FilePreview", "")
		sFilePreview = UI.CStr(sFilePreview)
		sFileSize = Props.GetDefault("FileSize", "")
		sFileSize = UI.CStr(sFileSize)
		sFileUrl = Props.GetDefault("FileUrl", "")
		sFileUrl = UI.CStr(sFileUrl)
		sFontSize = Props.GetDefault("FontSize", "14px")
		sFontSize = UI.CStr(sFontSize)
		sFooter = Props.GetDefault("Footer", "")
		sFooter = UI.CStr(sFooter)
		bIncoming = Props.GetDefault("Incoming", True)
		bIncoming = UI.CBool(bIncoming)
		sMessage = Props.GetDefault("Message", "")
		sMessage = UI.CStr(sMessage)
		sReplyId = Props.GetDefault("ReplyId", "")
		sReplyId = UI.CStr(sReplyId)
		sReplyMessage = Props.GetDefault("ReplyMessage", "")
		sReplyMessage = UI.CStr(sReplyMessage)
		sSenderImage = Props.GetDefault("SenderImage", "./assets/mashy.jpg")
		sSenderImage = UI.CStr(sSenderImage)
		sSenderName = Props.GetDefault("SenderName", "")
		sSenderName = UI.CStr(sSenderName)
		sSenderTime = Props.GetDefault("SenderTime", "")
		sSenderTime = UI.CStr(sSenderTime)
		sTextColor = Props.GetDefault("TextColor", "")
		sTextColor = UI.CStr(sTextColor)
		sReAction = Props.GetDefault("ReAction", "")
		sReAction = UI.CStr(sReAction)
		sChatId = Props.GetDefault("ChatId", "")
		sChatId = UI.CStr(sChatId)
		sImageShape = Props.GetDefault("ImageShape", "")
		sImageShape = UI.CStr(sImageShape)
		sImageSize = Props.GetDefault("ImageSize", "")
		sImageSize = UI.CStr(sImageSize)
	End If
	'
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	'
	If sReplyId <> "" Then
		sReplyMessage = UI.ExtractFirstWords(sReplyMessage, 3) & "..."
	End If
	
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="chat">
    	<div id="${mName}_avatar" class="chat-image avatar">
    		<div id="${mName}_host">
    			<img id="${mName}_image" class="bg-cover bg-center bg-no-repeat" src="${sSenderImage}" alt=""></img>
    		</div>
    	</div>
    	<div id="${mName}_header" class="chat-header">
			<span id="${mName}_sendername">${sSenderName}</span>
			<span>&nbsp;&nbsp;<span>
			<time id="${mName}_sendtime" class="text-xs opacity-50">${sSenderTime}</time>
		</div>
		<div id="${mName}_chatbubble" class="chat-bubble relative group">
			<div id="${mName}_replybox" class="hidden cursor-pointer rounded-r-lg rounded-l-lg border-l-4 border-[#FFC0CB] pl-2 mb-2">
          		<p id="${mName}_replymessage" class="text-sm text-gray-100 hover:underline">${sReplyMessage}</p>
        	</div>
			<img id="${mName}_messageimg" src="./assets/250x300.png" alt="Image" class="cursor-pointer hidden mt-2 rounded-lg" style="max-width: 250px; max-height: 300px; object-fit: cover;"/>
			<div id="${mName}_pdfview" class="flex items-center space-x-4 p-4 cursor-pointer hidden">
				<div id="${mName}_pdficon" class="flex-shrink-0">
        			<img id="${mName}_pdficon1" src="./assets/pdfview.webp" alt="View Document" class="w-12 h-12" />
      			</div>
      			<div id="${mName}_pdfdetails" class="flex items-center justify-between w-full text-sm text-gray-500">
        			<span id="${mName}_filename class="font-semibold">${sFileName}</span><span id="${mName}_filesize" class="hidden">${sFileSize}</span>
        		</div>
      		</div>
			<div id="${mName}_videohost" class="hidden flex flex-col items-center space-y-2 cursor-pointer">
				<video id="${mName}_video" controls playsinline class="rounded-md shadow-md" style="max-width: 300px; max-height: 400px;" poster="${sFilePreview}">
            		<source id="${mName}_source" src="${sFileUrl}" type="${sFileMimeType}">
          		</video>
          		<div id="${mName}_videodetails" class="flex items-center justify-between w-full text-sm text-gray-500">
            		<span id="${mName}_filename1 class="font-semibold">${sFileName}</span><span id="${mName}_filesize1" class="hidden">${sFileSize}</span>
          		</div>
			</div>			
			<p id="${mName}_message">${sMessage}</p>
			<button id="${mName}_reply" data-tip="Reply" class="cursor-pointer opacity-0 group-hover:opacity-100 absolute -top-3 -right-3 tooltip tooltip-left flex items-center justify-center w-6 h-6 bg-gray-200 text-gray-600 rounded-full hover:bg-gray-300 hover:text-gray-800" title="Reply">
				<svg-renderer id="${mName}_replyicon" style="pointer-events:none;" style="width:50%;height:50%"  class="rounded-full" fill="currentColor" data-js="enabled" data-src="./assets/reply-solid.svg"></svg-renderer>
			</button>
			<div id="${mName}_reaction" class="absolute -bottom-3 -right-0 items-center justify-center rounded-full">${sReAction}️</div>
		</div>
		<div id="${mName}_footer" class="chat-footer opacity-50">${sFooter}</div>		
    </div>"$).Get("#" & mName)
	setIncoming(bIncoming)
	setImageSize(sImageSize)
	setImageShape(sImageShape)
	setBackgroundColor(sBackgroundColor)
	setConversationType(sConversationType)
	setFileMimeType(sFileMimeType)
	setFileName(sFileName)
	setFilePreview(sFilePreview)
	setFileSize(sFileSize)
	setFileUrl(sFileUrl)
	setFontSize(sFontSize)
	setFooter(sFooter)
	setMessage(sMessage)
	setReplyId(sReplyId)
	setReplyMessage(sReplyMessage)
	setSenderImage(sSenderImage)
	setSenderName(sSenderName)
	setSenderTime(sSenderTime)
	setTextColor(sTextColor)
	setReAction(sReAction)
	setChatId(sChatId)
	UI.OnEventByID($"${mName}_reply"$, "click", Me, "ClickReply")
	UI.OnEvent(mElement, "click", Me, "OpenFileOnTab")
End Sub

private Sub OpenFileOnTab(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault
	e.StopPropagation
	Dim spos As String = UI.MvField(e.ID,2,"_")
	Dim url As String = UI.GetAttrByID($"aconversation_${spos}"$, "data-url")
	Dim url As String = UI.GetAttrByID(e.ID, "data-url")
	If url = "" Then Return
	UI.OpenURLTab(url)
End Sub

private Sub ClickReply(e As BANanoEvent)				'ignoredeadcode
	e.PreventDefault
	e.StopPropagation
	BANano.CallSub(mCallBack, $"${mName}_Reply"$, Array(mName))
End Sub

'set Avatar Visible
Sub setAvatarVisible(b As Boolean)
	bAvatarVisible = b
	CustProps.put("AvatarVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_avatar"$, b)
End Sub
'set Header Visible
Sub setHeaderVisible(b As Boolean)
	bHeaderVisible = b
	CustProps.put("HeaderVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_header"$, b)
End Sub
'set Image Visible
Sub setImageVisible(b As Boolean)
	bImageVisible = b
	CustProps.put("ImageVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_messageimg"$, b)
End Sub
'set Message Visible
Sub setMessageVisible(b As Boolean)
	bMessageVisible = b
	CustProps.put("MessageVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_message"$, b)
End Sub
'set Pdf Visible
Sub setPdfVisible(b As Boolean)
	bPdfVisible = b
	CustProps.put("PdfVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_pdfview"$, b)
End Sub
'set Reaction Visible
Sub setReactionVisible(b As Boolean)
	bReactionVisible = b
	CustProps.put("ReactionVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_reaction"$, b)
End Sub
'set Video Visible
Sub setVideoVisible(b As Boolean)
	bVideoVisible = b
	CustProps.put("VideoVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_videohost"$, b)
End Sub
'get Avatar Visible
Sub getAvatarVisible As Boolean
	Return bAvatarVisible
End Sub
'get Header Visible
Sub getHeaderVisible As Boolean
	Return bHeaderVisible
End Sub
'get Image Visible
Sub getImageVisible As Boolean
	Return bImageVisible
End Sub
'get Message Visible
Sub getMessageVisible As Boolean
	Return bMessageVisible
End Sub
'get Pdf Visible
Sub getPdfVisible As Boolean
	Return bPdfVisible
End Sub
'get Reaction Visible
Sub getReactionVisible As Boolean
	Return bReactionVisible
End Sub
'get Video Visible
Sub getVideoVisible As Boolean
	Return bVideoVisible
End Sub


'set Image Size
Sub setImageSize(s As String)				'ignoredeadcode
	sImageSize = s
	CustProps.put("ImageSize", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetSizeByID($"${mName}_host"$, "size", "size", s)
End Sub

'get Image Size
Sub getImageSize As String
	Return sImageSize
End Sub

'set Image Shape
Sub setImageShape(s As String)						'ignoredeadcode
	sImageShape = s
	CustProps.put("ImageShape", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetMaskByID($"${mName}_host"$, s)
End Sub
'get Image Shape
Sub getImageShape As String
	Return sImageShape
End Sub

'set Background Color
Sub setBackgroundColor(s As String)							'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetBackgroundColorByID($"${mName}_chatbubble"$, s)
End Sub
'set Conversation Type
Sub setConversationType(s As String)					'ignoredeadcode
	sConversationType = s
	CustProps.put("ConversationType", s)
	If mElement = Null Then Return
	If s = "" Then Return
	'message
	UI.SetVisibleByID($"${mName}_message"$, True)	
	'pdf
	UI.SetVisibleByID($"${mName}_pdfview"$, False)
	'image
	UI.SetVisibleByID($"${mName}_messageimg"$, False)
	'video
	UI.SetVisibleByID($"${mName}_videohost"$, False)
	Select Case sConversationType
	Case "T"
	Case "V"
		UI.SetVisibleByID($"${mName}_videohost"$, True)
	Case "D"
		UI.SetVisibleByID($"${mName}_pdfview"$, True)
	Case "I"
		UI.SetVisibleByID($"${mName}_messageimg"$, True)
	Case "A"
	End Select
End Sub
'set File Mime Type
Sub setFileMimeType(s As String)				'ignoredeadcode
	sFileMimeType = s
	CustProps.put("FileMimeType", s)
	If mElement = Null Then Return
	UI.RemoveAttrByID($"${mName}_source"$, "type")
	If s = "" Then Return
	If sConversationType = "V" Then UI.SetAttrByID($"${mName}_source"$, "type", sFileMimeType)
End Sub
'set File Name
Sub setFileName(s As String)						'ignoredeadcode
	sFileName = s
	CustProps.put("FileName", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetTextByID($"${mName}_filename"$, s)
	UI.SetTextByID($"${mName}_filename1"$, s)
	UI.SetVisibleByID($"${mName}_filename"$, True)
	UI.SetVisibleByID($"${mName}_filename1"$, True)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_filename"$, False)
		UI.SetVisibleByID($"${mName}_filename1"$, False)
	End If
	Select Case sConversationType
	Case "T"
	Case "V"
	Case "D"
	Case "I"
	Case "A"
	End Select
End Sub
'set File Preview
Sub setFilePreview(s As String)					'ignoredeadcode
	sFilePreview = s
	CustProps.put("FilePreview", s)
	If mElement = Null Then Return
	UI.RemoveAttrByID($"${mName}_video"$, "poster")
	If s = "" Then Return
	If sConversationType = "V" Then UI.SetAttrByID($"${mName}_video"$, "poster", s)
End Sub
'set File Size
'options: xs|none|sm|md|lg|xl
Sub setFileSize(s As String)				'ignoredeadcode
	sFileSize = s
	CustProps.put("FileSize", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_filesize"$, s)
	UI.SetTextByID($"${mName}_filesize1"$, s)
	UI.SetVisibleByID($"${mName}_filesize"$, True)
	UI.SetVisibleByID($"${mName}_filesize1"$, True)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_filesize"$, False)
		UI.SetVisibleByID($"${mName}_filesize1"$, False)
	End If
End Sub
'set File Url
Sub setFileUrl(s As String)						'ignoredeadcode
	sFileUrl = s
	CustProps.put("FileUrl", s)
	If mElement = Null Then Return
	UI.RemoveAttrByID($"${mName}_messageimg"$, "src")
	UI.RemoveAttrByID($"${mName}_source"$, "src")
	UI.RemoveAttr(mElement, "data-url")
	If s = "" Then Return
	Select Case sConversationType
	Case "A"	
	Case "D"
		UI.SetAttr(mElement, "data-url", s)
	Case "I"
		UI.SetImageByID($"${mName}_messageimg"$, s)
		UI.SetAttr(mElement, "data-url", s)
	Case "V"
		UI.SetImageByID($"${mName}_source"$, s)
		UI.SetAttr(mElement, "data-url", s)
	End Select
End Sub
'set Font Size
'options: xs|none|sm|md|lg|xl
Sub setFontSize(s As String)						'ignoredeadcode
	sFontSize = s
	CustProps.put("FontSize", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetStyleByID($"${mName}_message"$, "font-size", s)
End Sub
'set Footer
Sub setFooter(s As String)						'ignoredeadcode
	sFooter = s
	CustProps.put("Footer", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_footer"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_footer"$, False)
	Else
		UI.SetVisibleByID($"${mName}_footer"$, True)
	End If
End Sub
'set Incoming
Sub setIncoming(b As Boolean)							'ignoredeadcode
	bIncoming = b
	bIncoming = UI.CBool(bIncoming)
	CustProps.put("Incoming", b)
	If mElement = Null Then Return
	Select Case bIncoming
	Case True
		UI.AddClass(mElement,"chat-start")
		UI.RemoveClass(mElement, "chat-end")
	Case False
		UI.AddClass(mElement, "chat-end")		
		UI.RemoveClass(mElement, "chat-start")
	End Select
End Sub
'set Message
Sub setMessage(s As String)				'ignoredeadcode
	sMessage = s
	CustProps.put("Message", s)
	If mElement = Null Then Return
	sMessage = BANano.RunJavascriptMethod("whatsappToHtml", Array(sMessage))
	UI.SetHTMLByID($"${mName}_message"$, sMessage)
End Sub
'set Reply Id
Sub setReplyId(s As String)					'ignoredeadcode
	sReplyId = s
	CustProps.put("ReplyId", s)
	If mElement = Null Then Return
	UI.SetAttrByID($"${mName}_reply"$, "data-id", s)
	UI.SetAttrByID($"${mName}_replymessage"$, "data-id", s)
End Sub
'set Reply Message
Sub setReplyMessage(s As String)				'ignoredeadcode
	sReplyMessage = s
	CustProps.put("ReplyMessage", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_replymessage"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_replybox"$, False)
	Else	
		UI.SetVisibleByID($"${mName}_replybox"$, True)
	End If
End Sub
'set Sender Image
Sub setSenderImage(s As String)					'ignoredeadcode
	sSenderImage = s
	CustProps.put("SenderImage", s)
	If mElement = Null Then Return
	If s = "" Then 
		UI.SetVisibleByID($"${mName}_avatar"$, False)
		Return
	End If
	UI.SetImageByID($"${mName}_image"$, s)
	UI.SetVisibleByID($"${mName}_avatar"$, True)
End Sub
'set Sender Name
Sub setSenderName(s As String)				'ignoredeadcode
	sSenderName = s
	CustProps.put("SenderName", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_sendername"$, s)
End Sub
'set Sender Time
Sub setSenderTime(s As String)					'ignoredeadcode
	sSenderTime = s
	CustProps.put("SenderTime", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_sendtime"$, s)
End Sub
'set Text Color
Sub setTextColor(s As String)						'ignoredeadcode
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetTextColorByID($"${mName}_message"$, s)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Conversation Type
Sub getConversationType As String
	Return sConversationType
End Sub
'get File Mime Type
Sub getFileMimeType As String
	Return sFileMimeType
End Sub
'get File Name
Sub getFileName As String
	Return sFileName
End Sub
'get File Preview
Sub getFilePreview As String
	Return sFilePreview
End Sub
'get File Size
Sub getFileSize As String
	Return sFileSize
End Sub
'get File Url
Sub getFileUrl As String
	Return sFileUrl
End Sub
'get Font Size
Sub getFontSize As String
	Return sFontSize
End Sub
'get Footer
Sub getFooter As String
	Return sFooter
End Sub
'get Incoming
Sub getIncoming As Boolean
	Return bIncoming
End Sub
'get Message
Sub getMessage As String
	Return sMessage
End Sub
'get Reply Id
Sub getReplyId As String
	Return sReplyId
End Sub
'get Reply Message
Sub getReplyMessage As String
	Return sReplyMessage
End Sub
'get Sender Image
Sub getSenderImage As String
	Return sSenderImage
End Sub
'get Sender Name
Sub getSenderName As String
	Return sSenderName
End Sub
'get Sender Time
Sub getSenderTime As String
	Return sSenderTime
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub

'set Re Action
Sub setReAction(s As String)			'ignoredeadcode
	sReAction = s
	CustProps.put("ReAction", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_reaction"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_reaction"$, False)
	Else
		UI.SetVisibleByID($"${mName}_reaction"$, True)
	End If
End Sub

'get Re Action
Sub getReAction As String
	Return sReAction
End Sub

'set Chat Id
Sub setChatId(s As String)
	sChatId = s
	CustProps.put("ChatId", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "data-chatid", s)
End Sub

'get Chat Id
Sub getChatId As String
	Return sChatId
End Sub

'set Footer Visible
Sub setFooterVisible(b As Boolean)
	bFooterVisible = b
	CustProps.put("FooterVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_footer"$, b)
End Sub

'get Footer Visible
Sub getFooterVisible As Boolean
	Return bFooterVisible
End Sub