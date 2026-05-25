B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.13
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Back (e As BANanoEvent)
#Event: ChatClick (chatID As String)
#Event: Attachments_ItemClick (item As String)
#Event: EmojiSelect (emoji As Map)
#Event: EmojiClickOutside (e As BANanoEvent)
#Event: CancelReply (e As BANanoEvent)
#Event: Reply (MessageID as string)
#Event: Search (e As BANanoEvent)
#Event: ClearSearch (e As BANanoEvent)
#Event: Send (e As BANanoEvent)
#Event: FileChange (e As BANanoEvent)
#Event: RefreshChats (e As BANanoEvent)

#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _actions, Description: Child Item _actions
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: ButtonSize, DisplayName: Button Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: SideVisible, DisplayName: Side Visible, FieldType: Boolean, DefaultValue: True, Description: Side Visible
#DesignerProperty: Key: SideHeaderVisible, DisplayName: Side Header Visible, FieldType: Boolean, DefaultValue: True, Description: Side Header Visible
#DesignerProperty: Key: SideBackVisible, DisplayName: Side Back Visible, FieldType: Boolean, DefaultValue: False, Description: Side Back Visible
#DesignerProperty: Key: SideAvatarVisible, DisplayName: Side Avatar Visible, FieldType: Boolean, DefaultValue: True, Description: Side Avatar Visible
#DesignerProperty: Key: SideAvatar, DisplayName: Side Avatar, FieldType: String, DefaultValue: ./assets/avatar.png, Description: Side Avatar
#DesignerProperty: Key: SideSearchVisible, DisplayName: Side Search Visible, FieldType: Boolean, DefaultValue: False, Description: Side Search Visible
#DesignerProperty: Key: RightHeaderVisible, DisplayName: Right Header Visible, FieldType: Boolean, DefaultValue: True, Description: Right Header Visible
#DesignerProperty: Key: RightAvatarVisible, DisplayName: Right Avatar Visible, FieldType: Boolean, DefaultValue: True, Description: Right Avatar Visible
#DesignerProperty: Key: RightAvatar, DisplayName: Right Avatar, FieldType: String, DefaultValue: ./assets/avatar.png, Description: Right Avatar
#DesignerProperty: Key: RightName, DisplayName: Right Name, FieldType: String, DefaultValue: Anele Mbanga (Mashy), Description: Right Name
#DesignerProperty: Key: RightStatus, DisplayName: Right Status, FieldType: String, DefaultValue: Online, Description: Right Status
#DesignerProperty: Key: AllowAttachments, DisplayName: Allow Attachments, FieldType: Boolean, DefaultValue: True, Description: Attachments
#DesignerProperty: Key: Camera, DisplayName: Camera, FieldType: Boolean, DefaultValue: True, Description: Camera
#DesignerProperty: Key: Emojis, DisplayName: Emojis, FieldType: Boolean, DefaultValue: True, Description: Emojis
#DesignerProperty: Key: Voice, DisplayName: Voice, FieldType: Boolean, DefaultValue: True, Description: Voice
#DesignerProperty: Key: FontSize, DisplayName: Font Size, FieldType: String, DefaultValue: 14px, Description: Chat Bubble Font Size
#DesignerProperty: Key: ImageShape, DisplayName: Image Shape, FieldType: String, DefaultValue: circle, Description: Chat Bubble Image Shape, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
#DesignerProperty: Key: ImageSize, DisplayName: Image Size, FieldType: String, DefaultValue: 12, Description: Chat Bubble Image Size
#DesignerProperty: Key: IncomingTextColor, DisplayName: Incoming Text Color, FieldType: String, DefaultValue: , Description: Chat Bubble Incoming Text Color
#DesignerProperty: Key: IncomingBackgroundColor, DisplayName: Incoming Background Color, FieldType: String, DefaultValue: , Description: Chat Bubble Incoming Background Color
#DesignerProperty: Key: OutgoingTextColor, DisplayName: Outgoing Text Color, FieldType: String, DefaultValue: , Description: Chat Bubble Outgoing Text Color
#DesignerProperty: Key: OutgoingBackgroundColor, DisplayName: Outgoing Background Color, FieldType: String, DefaultValue: , Description: Chat Bubble Outgoing Background Color
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: RawClasses, DisplayName: Classes (;), FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: RawStyles, DisplayName: Styles (JSON), FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String use = and ;
#DesignerProperty: Key: RawAttributes, DisplayName: Attributes (JSON), FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String use = and ;

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
	Private sPosition As String = "t=?; b=?; r=?; l=?"
	Private sPositionStyle As String = "none"
	Private sRawClasses As String = ""
	Private sRawStyles As String = ""
	Private sRawAttributes As String = ""
	Private sMarginAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sPaddingAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private bEnabled As Boolean = True	'ignore
	Public Tag As Object
	Private sRightAvatar As String = "./assets/avatar.png"
	Private bRightAvatarVisible As Boolean = True
	Private bRightHeaderVisible As Boolean = True
	Private sRightName As String = "Anele Mbanga (Mashy)"
	Private sRightStatus As String = "Online"
	Private sSideAvatar As String = "./assets/avatar.png"
	Private bSideAvatarVisible As Boolean = True
	Private bSideHeaderVisible As Boolean = True
	Private bSideSearchVisible As Boolean = False
	Private bSideVisible As Boolean = True
	Private messages As Map
	Private sMessage As String
	Private chatRecords As Map
	Private lastUp As String
	Private sActiveChatID As String
	Private sButtonSize As String = "md"
	Public Attachments As SDUI5Menu
	Public EmojiPicker As SDUI5EmojiMart
	Private bAllowAttachments As Boolean = True
	Private bCamera As Boolean = True
	Private bEmojis As Boolean = True
	Private bVoice As Boolean = True
	Public MessageID As String = ""
	Private bSideBackVisible As Boolean = False
	Private sFontSize As String = "14px"
	Private sImageShape As String = "circle"
	Private sImageSize As String = "12"
	Private sIncomingBackgroundColor As String = ""
	Private sIncomingTextColor As String = ""
	Private sOutgoingBackgroundColor As String = ""
	Private sOutgoingTextColor As String = ""
	Private sLastMsgID As String = ""
	Private sActiveImage As String = ""
	Private sLastUser As String = ""
	Private sActiveChatName As String = ""
	Public MessageType As String = "T"
	Private bOnlineVisible As Boolean
	Private sOnlineColor As String = "success"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("WhatsApp") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesWhatsApp)' should be added!"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	chatRecords.Initialize 
	lastUp = ""
	messages.Initialize  
	sLastMsgID = ""
	BANano.DependsOnAsset("SVGRenderer.min.js")
	BANano.DependsOnAsset("whatsapp.min.css")
	BANano.DependsOnAsset("emojimart.js")
	MessageType = "T"
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("ButtonSize", "md")
	CustProps.Put("SideVisible", True)
	CustProps.Put("SideHeaderVisible", True)
	CustProps.Put("SideBackVisible", False)
	CustProps.Put("SideAvatarVisible", True)
	CustProps.Put("SideAvatar", "./assets/avatar.png")
	CustProps.Put("SideSearchVisible", False)
	CustProps.Put("RightHeaderVisible", True)
	CustProps.Put("RightAvatarVisible", True)
	CustProps.Put("RightAvatar", "./assets/avatar.png")
	CustProps.Put("RightName", "Anele Mbanga (Mashy)")
	CustProps.Put("RightStatus", "Online")
	CustProps.Put("AllowAttachments", True)
	CustProps.Put("Camera", True)
	CustProps.Put("Emojis", True)
	CustProps.Put("Voice", True)
	CustProps.Put("FontSize", "14px")
	CustProps.Put("ImageShape", "circle")
	CustProps.Put("ImageSize", "12")
	CustProps.Put("IncomingTextColor", "")
	CustProps.Put("IncomingBackgroundColor", "")
	CustProps.Put("OutgoingTextColor", "")
	CustProps.Put("OutgoingBackgroundColor", "")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
End Sub

private Sub MessageTypeAudio
	MessageType = "A"
End Sub

private Sub MessageTypeEmoji
	MessageType = "E"
End Sub

private Sub MessageTypeURL
	MessageType = "U"
End Sub

private Sub MessageTypePDF
	MessageType = "P"
End Sub

private Sub MessageTypeImage
	MessageType = "I"
End Sub

private Sub MessageTypeVideo
	MessageType = "V"
End Sub

private Sub MessageTypeText
	MessageType = "T"
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
'set Enabled
Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement = Null Then Return
	UI.SetEnabled(mElement, b)
End Sub
'get Enabled
Sub getEnabled As Boolean
	bEnabled = UI.GetEnabled(mElement)
	Return bEnabled
End Sub
'use to add an event to the element
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, methodName)
End Sub
'set Position Style
'options: static|relative|fixed|absolute|sticky|none
Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.put("PositionStyle", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "position", s)
End Sub
Sub getPositionStyle As String
	Return sPositionStyle
End Sub
'set raw positions
Sub setPosition(s As String)
	sPosition = s
	CustProps.Put("Position", sPosition)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPosition(mElement, sPosition)
End Sub
Sub getPosition As String
	Return sPosition
End Sub
Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub
'
Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub
'
Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub
'
Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub
'
Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub
'
Sub getAttributes As String
	Return sRawAttributes
End Sub
'
Sub getStyles As String
	Return sRawStyles
End Sub
'
Sub getClasses As String
	Return sRawClasses
End Sub
'
Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub
'
Sub getMarginAXYTBLR As String
	Return sMarginAXYTBLR
End Sub

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sRightAvatar = Props.GetDefault("RightAvatar", "./assets/avatar.png")
		sRightAvatar = UI.CStr(sRightAvatar)
		bRightAvatarVisible = Props.GetDefault("RightAvatarVisible", True)
		bRightAvatarVisible = UI.CBool(bRightAvatarVisible)
		bRightHeaderVisible = Props.GetDefault("RightHeaderVisible", True)
		bRightHeaderVisible = UI.CBool(bRightHeaderVisible)
		sRightName = Props.GetDefault("RightName", "Anele Mbanga (Mashy)")
		sRightName = UI.CStr(sRightName)
		sRightStatus = Props.GetDefault("RightStatus", "Online")
		sRightStatus = UI.CStr(sRightStatus)
		sSideAvatar = Props.GetDefault("SideAvatar", "./assets/avatar.png")
		sSideAvatar = UI.CStr(sSideAvatar)
		bSideAvatarVisible = Props.GetDefault("SideAvatarVisible", True)
		bSideAvatarVisible = UI.CBool(bSideAvatarVisible)
		bSideHeaderVisible = Props.GetDefault("SideHeaderVisible", True)
		bSideHeaderVisible = UI.CBool(bSideHeaderVisible)
		bSideSearchVisible = Props.GetDefault("SideSearchVisible", False)
		bSideSearchVisible = UI.CBool(bSideSearchVisible)
		bSideVisible = Props.GetDefault("SideVisible", True)
		bSideVisible = UI.CBool(bSideVisible)
		sButtonSize = Props.GetDefault("ButtonSize", "md")
		sButtonSize = UI.CStr(sButtonSize)
		bAllowAttachments = Props.GetDefault("AllowAttachments", True)
		bAllowAttachments = UI.CBool(bAllowAttachments)
		bCamera = Props.GetDefault("Camera", True)
		bCamera = UI.CBool(bCamera)
		bEmojis = Props.GetDefault("Emojis", True)
		bEmojis = UI.CBool(bEmojis)
		bVoice = Props.GetDefault("Voice", True)
		bVoice = UI.CBool(bVoice)
		bSideBackVisible = Props.GetDefault("SideBackVisible", False)
		bSideBackVisible = UI.CBool(bSideBackVisible)
		sFontSize = Props.GetDefault("FontSize", "14px")
		sFontSize = UI.CStr(sFontSize)
		sImageShape = Props.GetDefault("ImageShape", "circle")
		sImageShape = UI.CStr(sImageShape)
		sImageSize = Props.GetDefault("ImageSize", "12")
		sImageSize = UI.CStr(sImageSize)
		sIncomingBackgroundColor = Props.GetDefault("IncomingBackgroundColor", "")
		sIncomingBackgroundColor = UI.CStr(sIncomingBackgroundColor)
		sIncomingTextColor = Props.GetDefault("IncomingTextColor", "")
		sIncomingTextColor = UI.CStr(sIncomingTextColor)
		sOutgoingBackgroundColor = Props.GetDefault("OutgoingBackgroundColor", "")
		sOutgoingBackgroundColor = UI.CStr(sOutgoingBackgroundColor)
		sOutgoingTextColor = Props.GetDefault("OutgoingTextColor", "")
		sOutgoingTextColor = UI.CStr(sOutgoingTextColor)
	End If
	
	UI.AddClassDT("flex overflow-hidden shadow-sm rounded-box w-full h-full")
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
	<input id="${mName}_filepick" type="file" class="hidden" name="${mName}_filepick"/>
	<div id="${mName}_side" class="wa-chat-sidebar">
        <div id="${mName}_sideheader" class="wa-chat-header">
			<div class="flex">
				<button id="${mName}_back" class="btn btn-ghost btn-circle hidden mr-2 tooltip tooltip-right" data-tip="Exit Messenger">
					<svg-renderer id="${mName}_backicon" style="pointer-events:none;" class="rounded-full" fill="currentColor" data-js="enabled" data-src="./assets/chevron-left-solid.svg"></svg-renderer>
				</button>
            	<div class="wa-avatar">
                	<img id="${mName}_sideavatar" class="bg-cover bg-center bg-no-repeat" src="${sSideAvatar}" alt="">
            	</div>
            </div>
			<div id="${mName}_sideactions" class="wa-chat-header-right items-center">
                <img src="./assets/circle-notch-solid.svg" alt="" class="icon hidden">
                <img src="./assets/chat.svg" alt="" class="icon hidden">
                <img src="./assets/more.svg" alt="" class="icon hidden">
				<button id="${mName}_refreshchats" class="btn btn-ghost btn-circle ml-2 tooltip tooltip-left" data-tip="Refresh Chats">
					<svg-renderer id="${mName}_refreshchatsicon" style="pointer-events:none;"   class="rounded-full" fill="currentColor" data-js="enabled" data-src="./assets/rotate-solid.svg"></svg-renderer>
				</button>
            </div>
        </div>
        <div id="${mName}_sidesearch" class="wa-sidebar-search">
            <div class="wa-sidebar-search-container">
                <img src="./assets/search-solid.svg" alt="">
                <input id="${mName}_leftsearch" autocomplete="off" type="search" placeholder="Search..." class="flex-grow mr-3"></input>
            </div>
        </div>
		<div id="${mName}_unreadchats" class="hidden"></div>
        <div id="${mName}_chats" class="wa-sidebar-chats"></div>
    </div>
    <div id="${mName}_rightsection" class="wa-message-container">
        <div id="${mName}_rightheader" class="wa-chat-header">
            <div class="wa-chat-title">
				<div id="${mName}_online" class="mr-2 inline-grid *:[grid-area:1/1]">
  					<div id="${mName}_online1" aria-label="status" class="status status-xl animate-ping"></div>
  					<div id="${mName}_online2" aria-label="status" class="status status-xl"></div>
				</div>
                <div class="wa-avatar">
                    <img id="${mName}_rightavatar" class="bg-cover bg-center bg-no-repeat" src="${sRightAvatar}" alt="">
                </div>
                <div class="wa-message-header-content flex items-center">
                    <h4 id="${mName}_rightname" class="font-semibold mr-2">${sRightName}</h4>
                    <button id="${mName}_rightstatus" class="btn btn-ghost rounded-full btn-md font-semibold tooltip-primary tooltip tooltip-right" data-tip="Click here to copy number.">${sRightStatus}</button>
                </div>
			</div>
            <div id="${mName}_rightactions" class="wa-chat-header-right items-center">
				<div id="${mName}_righthelp" class="wa-avatar">
                    <img id="${mName}_righthelpavatar" class="bg-cover bg-center bg-no-repeat" src="${sRightAvatar}" alt="" class="hidden">
                </div>
                <img src="./assets/search-solid.svg" alt="" class="icon hidden">
                <img src="./assets/more.svg" alt="" class="icon hidden">
            </div>
        </div>
        <div id="${mName}_messages" class="wa-message-content">
        </div>
        <div id="${mName}_footer" class="wa-message-footer">
			<button id="${mName}_emoji" data-tip="Send Emoji" class="btn btn-ghost btn-circle tooltip tooltip-right">
				<svg-renderer id="${mName}_emojiicon" style="pointer-events:none;" class="rounded-full" fill="currentColor" data-js="enabled" data-src="./assets/face-smile-solid.svg"></svg-renderer>
			</button>
			<button id="${mName}_attach" class="btn btn-ghost btn-circle mr-2 tooltip tooltip-right" data-tip="Send Document, Image or Video">
				<svg-renderer id="${mName}_attachicon" style="pointer-events:none;" class="rounded-full" fill="currentColor" data-js="enabled" data-src="./assets/paperclip-solid.svg"></svg-renderer>
			</button>
            <input id="${mName}_message" type="text" placeholder="Type a message here" class="flex-grow"></input>
			<button id="${mName}_cancelreply" data-tip="Cancel Reply" class="btn btn-ghost btn-circle ml-2 hidden tooltip tooltip-left">
				<svg-renderer id="${mName}_cancelreplyicon" style="pointer-events:none;" class="rounded-full" fill="currentColor" data-js="enabled" data-src="./assets/xmark-solid.svg"></svg-renderer>
			</button>
            <button id="${mName}_send" data-tip="Send Message" class="btn btn-ghost btn-circle ml-2 tooltip tooltip-left hidden">
				<svg-renderer id="${mName}_sendicon" style="pointer-events:none;" class="rounded-full" fill="currentColor" data-js="enabled" data-src="./assets/paper-plane-solid.svg"></svg-renderer>
			</button>
			<button id="${mName}_voice" class="btn btn-ghost btn-circle ml-2 ">
				<svg-renderer id="${mName}_voiceicon" style="pointer-events:none;" class="rounded-full" fill="currentColor" data-js="enabled" data-src="./assets/microphone.svg"></svg-renderer>
			</button>
        </div>
		<ul id="${mName}_attachments" class="flex-nowrap card dropdown menu menu-lg z-1 w-auto h-auto rounded-box bg-base-100 shadow-sm mt-4 mb-4" popover style="position-anchor:--${mName}_attachanchor"></ul>
		<ul id="${mName}_emojis" class="flex-nowrap card dropdown menu z-1 w-auto h-auto rounded-box bg-base-100 shadow-sm mt-4 mb-4" popover style="position-anchor:--${mName}_emojianchor">
		</ul>
    </div>	
	</div>"$).Get("#" & mName)
		
	UI.SetBackgroundImageByID($"${mName}_messages"$, "./assets/wa-background.png")
	setRightAvatar(sRightAvatar)
	setRightAvatarVisible(bRightAvatarVisible)
	setRightHeaderVisible(bRightHeaderVisible)
	setSideAvatar(sSideAvatar)
	setSideAvatarVisible(bSideAvatarVisible)
	setSideHeaderVisible(bSideHeaderVisible)
	setSideSearchVisible(bSideSearchVisible)
	setSideVisible(bSideVisible)
	setButtonSize(sButtonSize)
	setAllowAttachments(bAllowAttachments)
	setCamera(bCamera)
	setVoice(bVoice)
	setSideBackVisible(bSideBackVisible)
	'anchor the documents
	UI.AddAttrByID($"${mName}_attach"$, "popovertarget", $"${mName}_attachments"$)
	UI.AddStyleByID($"${mName}_attach"$, "anchor-name", $"--${mName}_attachanchor"$)
	UI.SetPlacementByID($"${mName}_attachments"$, "dropdown", "top")

	'anchor the emojis
	UI.AddAttrByID($"${mName}_emoji"$, "popovertarget", $"${mName}_emojis"$)
	UI.AddStyleByID($"${mName}_emoji"$, "anchor-name", $"--${mName}_emojianchor"$)
	UI.SetPlacementByID($"${mName}_emojis"$, "dropdown", "top")
	
	Attachments.Initialize(mCallBack, $"${mName}_attachments"$, $"${mName}_attachments"$)
	Attachments.LinkExisting
	'
	UI.OnEventByID($"${mName}_cancelreply"$, "click", Me, "CancelTheReply")
	
'	UI.OnEventByID($"${mName}_emoji"$, "click", Me, "ToggleEmoji")
'	UI.OnEventByID($"${mName}_attach"$, "click", Me, "ToggleAttachments")
	UI.OnEventByID($"${mName}_back"$, "click", mCallBack, $"${mName}_back"$)
	UI.OnEventByID($"${mName}_rightstatus"$, "click", Me, "CopyToClipboard")
	'
	UI.OnEventByID($"${mName}_leftsearch"$, "keyup", mCallBack, $"${mName}_search"$)
	UI.OnEventByID($"${mName}_leftsearch"$, "search", mCallBack, $"${mName}_clearsearch"$)
	
	UI.OnEventByID($"${mName}_message"$, "keyup", Me, "MessageKeyUp")
	UI.OnEventByID($"${mName}_message"$, "click", Me, "MessageClick")
	UI.OnEventByID($"${mName}_message"$, "change", Me, "MessageChange")
	UI.OnEventByID($"${mName}_send"$, "click", mCallBack, $"${mName}_send"$)
	UI.OnEventByID($"${mName}_filepick"$, "change", mCallBack, $"${mName}_FileChange"$)
	UI.oneventbyid($"${mName}_refreshchats"$, "click", mCallBack, $"${mName}_refreshchats"$)
	'
	EnableEmoji(False)
	EnableAttach(False)
	EnableSend(False)
	SetOnline
	setEmojis(bEmojis)
	BANano.Await(PrepareEmojis)
End Sub

private Sub CopyToClipboard(e As BANanoEvent)
	e.PreventDefault 
	BANano.Await(BANano.Navigator.GetField("clipboard").RunMethod("writeText", sRightStatus))
End Sub

Sub TriggerAttach
	If mElement = Null Then Return
	Dim aEL As BANanoElement = BANano.GetElement($"#${mName}_attach"$)
	aEL.Trigger("click", Null)
End Sub

Sub setOnlineVisible(b As Boolean)				'ignoredeadcode
	bOnlineVisible = b
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_online"$, b)
End Sub

Sub getOnlineVisible As Boolean			'ignoredeadcode
	Return bOnlineVisible
End Sub

Sub setOnlineColor(sColor As String)		'ignoredeadcode
	sOnlineColor = sColor
	UI.SetColorByID($"${mName}_online1"$, "color", "status", sColor)
	UI.SetColorByID($"${mName}_online2"$, "color", "status", sColor)
End Sub

Sub getOnlineColor As String				'ignoredeadcode
	Return sOnlineColor
End Sub

Sub SetOnline				'ignoredeadcode
	setOnlineColor("success")
	setOnlineVisible(True)
End Sub

Sub SetOffline				'ignoredeadcode
	setOnlineColor("error")
	setOnlineVisible(True)
End Sub

Sub SetTextPlaceholder(s As String)
	UI.SetAttrByID($"${mName}_message"$, "placeholder", s)
End Sub

Sub EnableEmoji(b As Boolean)							'ignoredeadcode
	UI.SetEnabledByID($"${mName}_emoji"$, b)
End Sub

Sub EnableAttach(b As Boolean)							'ignoredeadcode
	UI.SetEnabledByID($"${mName}_attach"$, b)
End Sub

Sub EnableSend(b As Boolean)							'ignoredeadcode
	UI.SetEnabledByID($"${mName}_send"$, b)
End Sub

Sub EnableVoice(b As Boolean)							'ignoredeadcode
	UI.SetEnabledByID($"${mName}_voice"$, b)
End Sub


'get selected file
Sub GetFile As Map
	Dim fe As BANanoElement = BANano.GetElement($"#${mName}_filepick"$)
	If fe.GetField("files").GetField("length").Result = 0 Then 'ignore
		Return Null
	Else
		Dim obj() As BANanoObject = fe.GetField("files").Result
		Return obj(0)
	End If
End Sub

Sub GetFileDataURL As String
	Dim fileObj As Map = BANano.Await(GetFile)
	If BANano.IsNull(fileObj) Then Return ""
	Dim fo As Object = BANano.Await(BANano.RunJavascriptMethod("fileToDataURL", Array(fileObj)))
	Return fo
End Sub

Sub GetSearchValue As String
	Dim s As String = UI.GetValueByID($"${mName}_leftsearch"$)
	Return s
End Sub

Sub SetSearchPlaceholder(s As String)
	UI.SetAttrByID($"${mName}_leftsearch"$, "placeholder", s)
End Sub

Sub SetSearchValue(s As String)
	UI.SetValueByID($"${mName}_leftsearch"$, s)
End Sub

private Sub MessageClick(e As BANanoEvent)				'ignoredeadcode
'	CloseInternalModals
End Sub

private Sub MessageChange(e As BANanoEvent)		'ignore
'	CloseInternalModals
	Dim msg As String = getMessage
	If msg = "" Then
		UI.SetVisibleByID($"${mName}_send"$, False)
		EnableSend(False)
	Else
		UI.SetVisibleByID($"${mName}_send"$, True)
		EnableSend(True)
	End If
End Sub

private Sub MessageKeyUp(e As BANanoEvent)				'ignoredeadcode
'	CloseInternalModals
	If e.Key = "Enter" Then
		BANano.CallSub(mCallBack, $"${mName}_send"$, Array(e))
		Return
	End If
	Dim msg As String = getMessage
	If msg = "" Then
		UI.SetVisibleByID($"${mName}_send"$, False)
		EnableSend(False)
	Else
		UI.SetVisibleByID($"${mName}_send"$, True)	
		EnableSend(True)
	End If	
End Sub

Sub setSideBackVisible(b As Boolean)					'ignoredeadcode
	CustProps.Put("SideBackVisible", b)
	bSideBackVisible = b
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_back"$, b)
End Sub

Sub getSideBackVisible As Boolean
	Return bSideBackVisible
End Sub

private Sub CancelTheReply(e As BANanoEvent)
	e.PreventDefault
	UI.Hide($"${mName}_cancelreply"$)
	MessageID = ""
	MessageType = "T"
	SetTextPlaceholder("Type a message here.")
	UI.FocusByID($"${mName}_message"$)
	Dim e As BANanoEvent
	BANano.CallSub(mCallBack, $"${mName}_CancelReply"$, Array(e))
End Sub

Sub MessageFocus
	UI.FocusByID($"${mName}_message"$)
End Sub

'set Attachments
Sub setAllowAttachments(b As Boolean)				'ignoredeadcode
	bAllowAttachments = b
	CustProps.put("AllowAttachments", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_attach"$, b)
End Sub
'set Camera
Sub setCamera(b As Boolean)					'ignoredeadcode
	bCamera = b
	CustProps.put("Camera", b)
	If mElement = Null Then Return
End Sub
'set Emojis
Sub setEmojis(b As Boolean)					'ignoredeadcode
	bEmojis = b
	CustProps.put("Emojis", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_emoji"$, b)
End Sub
'set Voice
Sub setVoice(b As Boolean)						'ignoredeadcode
	bVoice = b
	CustProps.put("Voice", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_voice"$, b)
End Sub

'get Attachments
Sub getAllowAttachments As Boolean
	Return bAllowAttachments
End Sub

'get Camera
Sub getCamera As Boolean
	Return bCamera
End Sub

'get Emojis
Sub getEmojis As Boolean
	Return bEmojis
End Sub

'get Voice
Sub getVoice As Boolean
	Return bVoice
End Sub

Sub PrepareEmojis				'ignoredeadcode
	If bEmojis = False Then Return
	EmojiPicker.Initialize(mCallBack, $"${mName}_emojis"$, $"${mName}_emojis"$)
	EmojiPicker.ParentID = $"${mName}_emojis"$
	EmojiPicker.SetOf = "apple"
	EmojiPicker.AddComponent
	BANano.Await(EmojiPicker.Refresh(mCallBack, $"${mName}_EmojiSelect"$, $"${mName}_EmojiClickOutside"$))
End Sub
'

'Sub CloseInternalModals
'	UI.CloseDropDownByID($"${mName}_attachments"$)
'	UI.CloseDropDownByID($"${mName}_emojis"$)
'End Sub


'private Sub ToggleEmoji(e As BANanoEvent)			'ignoredeadcode
'	e.PreventDefault
'	UI.ToggleClassByID($"${mName}_emojis"$, "dropdown-open")
'	'close attachments
'	UI.RemoveClassByID($"${mName}_attachments"$, "dropdown-open")
'End Sub
'
'private Sub ToggleAttachments(e As BANanoEvent)			'ignoredeadcode
'	e.PreventDefault
'	UI.ToggleClassByID($"${mName}_attachments"$, "dropdown-open")
'	'close emojis
'	UI.RemoveClassByID($"${mName}_emojis"$, "dropdown-open")
'End Sub

Sub setButtonSize(s As String)				'ignoredeadcode
	CustProps.Put("ButtonSize", s)
	sButtonSize = s
	If mElement = Null Then Return
	UI.SetSizeByID($"${mName}_emoji"$, "size", "btn", s)
	UI.SetSizeByID($"${mName}_attach"$, "size", "btn", s)
	UI.SetSizeByID($"${mName}_send"$, "size", "btn", s)
	UI.SetSizeByID($"${mName}_cancelreply"$, "size", "btn", s)
	UI.SetSizeByID($"${mName}_voice"$, "size", "btn", s)
	UI.SetSizeByID($"${mName}_back"$, "size", "btn", s)
	UI.SetSizeByID($"${mName}_rightstatus"$, "size", "btn", s)
	UI.SetSizeByID($"${mName}_refreshchats"$, "size", "btn", s)
	
	UI.ResizeIconByIDFromButtonSize($"${mName}_emojiicon"$, s)
	UI.ResizeIconByIDFromButtonSize($"${mName}_attachicon"$, s)
	UI.ResizeIconByIDFromButtonSize($"${mName}_voiceicon"$, s)
	UI.ResizeIconByIDFromButtonSize($"${mName}_sendicon"$, s)
	UI.ResizeIconByIDFromButtonSize($"${mName}_cancelreplyicon"$, S)
	UI.ResizeIconByIDFromButtonSize($"${mName}_backicon"$, s)
	UI.ResizeIconByIDFromButtonSize($"${mName}_refreshchatsicon"$, s)
End Sub

Sub ShowSend
	UI.SetVisibleByID($"${mName}_send"$, True)
End Sub

Sub HideSend			'ignoredeadcode
	UI.SetVisibleByID($"${mName}_send"$, False)
End Sub

Sub ShowCancelReply
	UI.Show($"${mName}_cancelreply"$)
End Sub

Sub HideCancelReply		'ignoredeadcode
	UI.Hide($"${mName}_cancelreply"$)
End Sub

Sub getButtonSize As String
	Return sButtonSize
End Sub

Sub AppendEmoji(emoji As Map)			'ignoredeadcode
	Dim sicon As String = emoji.GetDefault("native", "")
	sicon = sicon.Trim
	If sicon = "" Then Return
	Dim ct As String = getMessage
	ct = ct & sicon
	setMessage(ct)
End Sub

Sub setMessage(s As String)			'ignoredeadcode
	sMessage = s
	If mElement = Null Then Return
	UI.SetValueByID($"${mName}_message"$, s)
End Sub

Sub getMessage As String
	sMessage = UI.GetValueByID($"${mName}_message"$)
	Return sMessage
End Sub

'set Right Avatar
Sub setRightAvatar(s As String)			'ignoredeadcode
	sRightAvatar = s
	CustProps.put("RightAvatar", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetVisibleByID($"${mName}_rightavatar"$, True)
		UI.SetImageByID($"${mName}_rightavatar"$, s)
	Else
		UI.SetVisibleByID($"${mName}_rightavatar"$, False)
	End If
End Sub
'set Right Avatar Visible
Sub setRightAvatarVisible(b As Boolean)		'ignoredeadcode
	bRightAvatarVisible = b
	CustProps.put("RightAvatarVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_rightavatar"$, b)
End Sub
'set Right Header Visible
Sub setRightHeaderVisible(b As Boolean)		'ignoredeadcode
	bRightHeaderVisible = b
	CustProps.put("RightHeaderVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_rightheader"$, b)
End Sub
'set Right Name
Sub setRightName(s As String)					'ignoredeadcode
	sRightName = s
	CustProps.put("RightName", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_rightname"$, s)
End Sub
'set Right Status
Sub setRightStatus(s As String)				'ignoredeadcode
	sRightStatus = s
	CustProps.put("RightStatus", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_rightstatus"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_rightstatus"$, False)
	Else
		UI.SetVisibleByID($"${mName}_rightstatus"$, True)
	End If
End Sub
'set Side Avatar
Sub setSideAvatar(s As String)			'ignoredeadcode
	sSideAvatar = s
	CustProps.put("SideAvatar", s)
	If mElement = Null Then Return
	If s <> "" Then
		UI.SetVisibleByID($"${mName}_sideavatar"$, True)
		UI.SetImageByID($"${mName}_sideavatar"$, s)
	Else
		UI.SetVisibleByID($"${mName}_sideavatar"$, False)
	End If
End Sub
'set Side Avatar Visible
Sub setSideAvatarVisible(b As Boolean)		'ignoredeadcode
	bSideAvatarVisible = b
	CustProps.put("SideAvatarVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_sideavatar"$, b)
End Sub
'set Side Header Visible
Sub setSideHeaderVisible(b As Boolean)		'ignoredeadcode
	bSideHeaderVisible = b
	CustProps.put("SideHeaderVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_sideheader"$, b)
End Sub
'set Side Search Visible
Sub setSideSearchVisible(b As Boolean)		'ignoredeadcode
	bSideSearchVisible = b
	CustProps.put("SideSearchVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_sidesearch"$, b)
End Sub
'set Side Visible
Sub setSideVisible(b As Boolean)			'ignoredeadcode
	bSideVisible = b
	CustProps.put("SideVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_side"$, b)
End Sub
'get Right Avatar
Sub getRightAvatar As String
	Return sRightAvatar
End Sub
'get Right Avatar Visible
Sub getRightAvatarVisible As Boolean
	Return bRightAvatarVisible
End Sub
'get Right Header Visible
Sub getRightHeaderVisible As Boolean
	Return bRightHeaderVisible
End Sub
'get Right Name
Sub getRightName As String
	Return sRightName
End Sub
'get Right Status
Sub getRightStatus As String
	Return sRightStatus
End Sub
'get Side Avatar
Sub getSideAvatar As String
	Return sSideAvatar
End Sub
'get Side Avatar Visible
Sub getSideAvatarVisible As Boolean
	Return bSideAvatarVisible
End Sub
'get Side Header Visible
Sub getSideHeaderVisible As Boolean
	Return bSideHeaderVisible
End Sub
'get Side Search Visible
Sub getSideSearchVisible As Boolean
	Return bSideSearchVisible
End Sub
'get Side Visible
Sub getSideVisible As Boolean
	Return bSideVisible
End Sub

'clear the chats list
Sub ClearChats
	lastUp = ""
	chatRecords.Initialize 
	UI.ClearByID($"${mName}_chats"$)
	sActiveChatID = ""
	sActiveChatName =""
	sActiveImage = ""
	sLastUser = ""
End Sub

'clear the conversations
Sub ClearConversations
	messages.Initialize
	UI.ClearByID($"${mName}_messages"$)
	sLastMsgID = ""
	EnableEmoji(False)
	EnableAttach(False)
	EnableSend(False)
End Sub

'check if the message is blank
Sub IsMessageBlank As Boolean
	Dim mx As String = getMessage
	mx = mx.Trim
	If mx = "" Then Return True
	Return False
End Sub

'add a chat list
'Map Design-id;image;chatname;lastdate;unread;lastuser;lastmsg
'should call RefreshChats
Sub AddChatList(lst As List)
	For Each rec As Map In lst
		Dim sid As String = rec.Get("id")
		chatRecords.Put(sid, rec)
	Next	
End Sub

'will use RefreshChats
Sub AddChat(chatID As String, chatAvatar As String, chatName As String, chatDelivery As String, cMessage As String, chatUnread As String, chatUser As String)
	chatID = UI.CStr(chatID)
	chatAvatar = UI.CStr(chatAvatar)
	chatName = UI.CStr(chatName)
	chatDelivery = UI.CStr(chatDelivery)
	cMessage = UI.CStr(cMessage)
	chatUnread = UI.CStr(chatUnread)
	chatUser = UI.CStr(chatUser)
	If chatName = "" Then 
		chatName = UI.MvField(chatID,2,"-")
	End If
	If cMessage.Length <= 30 Then
	Else	
		cMessage = cMessage.SubString2(0, 30)
		cMessage = UI.ExtractFirstWords(cMessage, 3)
		If cMessage.EndsWith("...") = False Then cMessage = cMessage & "..."
	End If
	Dim c As Map = CreateMap()
	c.Put("id", chatID)
	c.Put("image", chatAvatar)
	c.Put("chatname", chatName)
	c.Put("lastdate", chatDelivery)
	c.Put("unread", chatUnread)
	c.Put("lastuser", chatUser)
	c.Put("lastmsg", cMessage)
	chatRecords.Put(chatID, c)
End Sub

private Sub GetChatPos(chatID As String) As Long
	If chatRecords.ContainsKey(chatID) = False Then Return -1
	Dim m As Map = chatRecords.Get(chatID)
	Dim pos As Long = m.Get("pos")
	pos = UI.CInt(pos)
	Return pos
End Sub

'add or edit an existing chat
Sub AddEditChat(chatID As String, chatAvatar As String, chatName As String, chatDelivery As String, cMessage As String, chatUnread As String, chatUser As String, bMoveUp As Boolean)
	chatID = UI.CStr(chatID)
	chatAvatar = UI.CStr(chatAvatar)
	chatName = UI.CStr(chatName)
	chatDelivery = UI.CStr(chatDelivery)
	cMessage = UI.CStr(cMessage)
	chatUnread = UI.CStr(chatUnread)
	chatUser = UI.CStr(chatUser)
	If chatName = "" Then
		chatName = UI.MvField(chatID,2,"-")
	End If
	If cMessage.Length <= 30 Then
	Else
		cMessage = cMessage.SubString2(0, 30)
		cMessage = UI.ExtractFirstWords(cMessage, 3)
		If cMessage.EndsWith("...") = False Then cMessage = cMessage & "..."
	End If
	'
	'this is a new chat that does not exist
	Dim Ret As Long
	Dim AllViews As Map
	Dim rec As Map = CreateMap()
	If chatRecords.ContainsKey(chatID) Then
		rec = chatRecords.Get(chatID)
	End If
	rec.Put("id", chatID)
	rec.Put("unread", chatUnread)
	rec.Put("image", chatAvatar)
	rec.Put("chatname", chatName)
	rec.Put("lastdate", chatDelivery)
	rec.Put("unread", chatUnread)
	rec.Put("lastuser", chatUser)
	rec.Put("lastmsg", cMessage)
	'
	If chatRecords.ContainsKey(chatID) = False Then 
		'add the view
		Ret = BANano.LoadLayoutArray($"#${mName}_chats"$, "chatitemview", False)
	Else
		Ret = GetChatPos(chatID)
	End If
	If Ret <= 0 Then Return	
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "chatitemview", Ret)
	rec.Put("pos", Ret)
	chatRecords.Put(chatID, rec)
	'we only have 1 item
	Dim achatitem As SDUI5ChatItem = AllViews.get("achatitem")
	achatitem.FromAvatar = chatAvatar
	achatitem.FromName = chatName
	achatitem.Message = cMessage
	achatitem.Unread = chatUnread
	achatitem.HelpAvatar = chatUser
	achatitem.DeliveryTime = chatDelivery
	If chatUser = "" Then
		achatitem.HelpVisible = False
	Else
		achatitem.HelpVisible = True
	End If
	achatitem.RoundedBox = False
	'are we processing the active chat
	'update last user
	If sActiveChatID = chatID Then
		achatitem.Unread = "0"
		setLastUser(chatUser)
		If chatUser = "" Then
			SetRightHelpAvatarVisible(False)
		Else
			SetRightHelpAvatar(chatUser)
			SetRightHelpAvatarVisible(True)
		End If
	End If
	UI.OnEventByID($"achatitem_${Ret}"$, "click", Me, "ChatClick")
	If bMoveUp Then BANano.Await(MoveUp(chatID))
End Sub


Sub SetUnread(chatID As String, chatUnread As String)
	If chatRecords.ContainsKey(chatID) = False Then Return
	'this has been found
	Dim Ret As Long = GetChatPos(chatID)
	If Ret = -1 Then Return	
	Dim AllViews As Map = BANano.GetAllViewsFromLayoutArray(Me, "chatitemview", Ret)
	'we only have 1 item
	Dim achatitem As SDUI5ChatItem = AllViews.get("achatitem")
	achatitem.Unread = chatUnread
	Dim rec As Map = chatRecords.Get(chatID)
	rec.Put("unread", chatUnread)
	chatRecords.Put(chatID, rec)
End Sub

Sub SetLastMessage(chatID As String, chatMessage As String, chatDelivery As String)
	If chatRecords.ContainsKey(chatID) = False Then Return
	If chatMessage.Length <= 30 Then
	Else
		chatMessage = chatMessage.SubString2(0, 30)
		chatMessage = UI.ExtractFirstWords(chatMessage, 3)
		If chatMessage.EndsWith("...") = False Then chatMessage = chatMessage & "..."
	End If
	'this has been found
	Dim Ret As Long = GetChatPos(chatID)
	If Ret = -1 Then Return
	Dim AllViews As Map = BANano.GetAllViewsFromLayoutArray(Me, "chatitemview", Ret)
	'we only have 1 item
	Dim achatitem As SDUI5ChatItem = AllViews.get("achatitem")
	achatitem.Message = chatMessage
	achatitem.DeliveryTime = chatDelivery
	Dim rec As Map = chatRecords.Get(chatID)
	rec.Put("lastmsg", chatMessage)
	rec.Put("lastdate", chatDelivery)
	chatRecords.Put(chatID, rec)
End Sub

Sub RemoveChat(chatID As String)
	If chatRecords.ContainsKey(chatID) = False Then Return
	Dim Ret As Long = GetChatPos(chatID)
	If Ret = -1 Then Return
	UI.RemoveElementByID($"achatitem_${Ret}"$)
End Sub

'move an item down
Sub MoveDown(chatID As String)
	If chatRecords.ContainsKey(chatID) = False Then Return
	Dim m As Map = chatRecords.Get(chatID)
	Dim xpos As String = m.Get("pos")
	'delete the item from the list
	UI.RemoveElementByID($"achatitem_${xpos}"$)
	'
	Dim Ret As Long
	Dim AllViews As Map
 
	'add the view
	Ret = BANano.LoadLayoutArray($"#${mName}_chats"$, "chatitemview", False)
	'store references to id and positions
	m.Put("pos", Ret)
	chatRecords.Put(chatID, m)
	' ret returns a unique number you can use to get all views
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "chatitemview", Ret)
	'we only have 1 item
	Dim achatitem As SDUI5ChatItem = AllViews.get("achatitem")
	achatitem.FromAvatar = m.Get("image")
	achatitem.FromName = m.Get("chatname")
	achatitem.Message = m.Get("lastmsg")
	achatitem.Unread = m.Get("unread")
	achatitem.HelpAvatar = m.Get("lastuser")
	achatitem.DeliveryTime = m.Get("lastdate")
	If m.Get("lastuser") = "" Then
		achatitem.HelpVisible = False
	Else
		achatitem.HelpVisible = True
	End If
	achatitem.RoundedBox = False
	lastUp = ""
	UI.OnEventByID($"achatitem_${Ret}"$, "click", Me, "ChatClick")
End Sub

Sub MoveUp(chatID As String)
	'do we have an item there
	If lastUp <> "" Then MoveDown(lastUp)
	'
	lastUp = chatID
	UI.ClearByID($"${mName}_unreadchats"$)
	UI.SetVisibleByID($"${mName}_unreadchats"$, True)
	'
	Dim m As Map = chatRecords.Get(chatID)
	Dim xpos As String = m.Get("pos")
	'delete the item from the list
	UI.RemoveElementByID($"achatitem_${xpos}"$)
	'
	Dim Ret As Long
	Dim AllViews As Map
 
	'add the view
	Ret = BANano.LoadLayoutArray($"#${mName}_unreadchats"$, "chatitemview", False)
	'store references to id and positions
	m.Put("pos", Ret)
	chatRecords.Put(chatID, m)
	' ret returns a unique number you can use to get all views
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "chatitemview", Ret)
	'we only have 1 item
	Dim achatitem As SDUI5ChatItem = AllViews.get("achatitem")
	achatitem.FromAvatar = m.Get("image")
	achatitem.FromName = m.Get("chatname")
	achatitem.Message = m.Get("lastmsg")
	achatitem.Unread = m.Get("unread")
	achatitem.HelpAvatar = m.Get("lastuser")
	achatitem.DeliveryTime = m.Get("lastdate")
	If m.Get("lastuser") = "" Then
		achatitem.HelpVisible = False
	Else
		achatitem.HelpVisible = True
	End If
	achatitem.RoundedBox = False
	UI.OnEventByID($"achatitem_${Ret}"$, "click", Me, "ChatClick")
End Sub

'Type - T-ext|V-ideo|D-ocument|I-mage|A-udio
Sub AddMessage(cID As String, cIncoming As Boolean, cType As String, cSenderImage As String, cSenderName As String, cSenderTime As String, cMessage As String, cFileName As String, cFileURL As String, cFileMimeType As String, cFilePreview As String, cFileSize As String, cQuotedMessage As String, cQuotedID As String, cFooter As String, cReAction As String)
	cID = UI.CStr(cID)
	cIncoming = UI.CBool(cIncoming)
	cType = UI.CStr(cType)
	cSenderImage = UI.CStr(cSenderImage)
	cSenderName = UI.CStr(cSenderName)
	cSenderTime = UI.CStr(cSenderTime)
	cMessage = UI.CStr(cMessage)
	cFileName = UI.CStr(cFileName)
	cFileURL = UI.CStr(cFileURL)
	cFileMimeType = UI.CStr(cFileMimeType)
	cFileSize = UI.CStr(cFileSize)
	cQuotedMessage = UI.CStr(cQuotedMessage)
	cQuotedID = UI.CStr(cQuotedID)
	cFooter = UI.CStr(cFooter)
	cReAction = UI.CStr(cReAction)
	'
	Dim m As Map = CreateMap()
	m.Put("id", cID)
	m.Put("chatid", cID)
	m.Put("type", cType)
	m.Put("incoming", cIncoming)
	m.Put("senderimage", cSenderImage)
	m.Put("sendername", cSenderName)
	m.Put("sendertime", cSenderTime)
	m.Put("footer", cFooter)
	m.Put("message", cMessage)
	m.Put("reaction", cReAction)
	m.Put("replyid", cQuotedID)
	m.Put("replymessage", cQuotedMessage)
	m.Put("filename", cFileName)
	m.Put("filemimetype", cFileMimeType)
	m.Put("filepreview", cFilePreview)
	m.Put("fileurl", cFileURL)
	m.Put("fontsize", sFontSize)
	m.Put("imagesize", sImageSize)
	m.Put("imageshape", sImageShape)
	m.Put("filesize", cFileSize)
	If cIncoming Then
		m.Put("textcolor", sIncomingTextColor)
		m.Put("bgcolor", sIncomingBackgroundColor)
	Else
		m.Put("textcolor", sOutgoingTextColor)
		m.Put("bgcolor", sOutgoingBackgroundColor)
	End If
	messages.Put(cID, m)
End Sub

Sub AddTextMessage(cID As String, cIncoming As Boolean, cSenderImage As String, cSenderName As String, cSenderTime As String, cMessage As String, cQuotedMessage As String, cQuotedID As String, cFooter As String, cReaction As String)
	AddMessage(cID, cIncoming, "T", cSenderImage, cSenderName, cSenderTime, cMessage, "", "", "", "", "", cQuotedMessage, cQuotedID, cFooter, cReaction)
End Sub

Sub AddVideoMessage(cID As String, cIncoming As Boolean, cSenderImage As String, cSenderName As String, cSenderTime As String, cMessage As String, cFileName As String, cFileURL As String, cFileMimeType As String, cFilePreview As String, cFileSize As String, cQuotedMessage As String, cQuotedID As String, cFooter As String, cReaction As String)
	AddMessage(cID, cIncoming, "V", cSenderImage, cSenderName, cSenderTime, cMessage, cFileName, cFileURL, cFileMimeType, cFilePreview, cFileSize, cQuotedMessage, cQuotedID, cFooter, cReaction)
End Sub

Sub AddPDFMessage(cID As String, cIncoming As Boolean, cSenderImage As String, cSenderName As String, cSenderTime As String, cMessage As String, cFileName As String, cFileURL As String, cFileMimeType As String, cFilePreview As String, cFileSize As String, cQuotedMessage As String, cQuotedID As String, cFooter As String, cReaction As String)
	AddMessage(cID, cIncoming, "D", cSenderImage, cSenderName, cSenderTime, cMessage, cFileName, cFileURL, cFileMimeType, cFilePreview, cFileSize, cQuotedMessage, cQuotedID, cFooter, cReaction)
End Sub

Sub AddImageMessage(cID As String, cIncoming As Boolean, cSenderImage As String, cSenderName As String, cSenderTime As String, cMessage As String, cFileName As String, cFileURL As String, cFileSize As String, cQuotedMessage As String, cQuotedID As String, cFooter As String, cReaction As String)
	AddMessage(cID, cIncoming, "I", cSenderImage, cSenderName, cSenderTime, cMessage, cFileName, cFileURL, "", "", cFileSize, cQuotedMessage, cQuotedID, cFooter, cReaction)
End Sub

Sub RefreshConversations
	'we have not selected any message
	MessageID = ""
	MessageType = "T"
	SetTextPlaceholder("Type a message here.")
	If bEmojis Then EnableEmoji(True)
	If bAllowAttachments Then EnableAttach(True)
	EnableSend(True)
	UI.SetValueByID($"${mName}_filepick"$, Null)
	'clear the existing messages
	UI.ClearByID($"${mName}_messages"$)
	'loop through current conversations
	For Each k As String In messages.keys
		Dim m As Map = messages.Get(k)
		Dim cID As String = m.Get("id")
		sLastMsgID = cID
		Dim Ret As Long
		Dim AllViews As Map
 
		'add the view
		Ret = BANano.LoadLayoutArray($"#${mName}_messages"$, "conversationitemview", False)
		'store references to id and positions
		m.Put("pos", Ret)
		messages.Put(cID, m)
		' ret returns a unique number you can use to get all views
		AllViews = BANano.GetAllViewsFromLayoutArray(Me, "conversationitemview", Ret)
		'we only have 1 item
		Dim aconversation As SDUI5Conversation = AllViews.get("aconversation")
		aconversation.ChatId = m.Get("chatid")
		aconversation.ConversationType = m.Get("type")
		aconversation.TextColor = m.Get("textcolor")
		aconversation.BackgroundColor = m.Get("bgcolor")
		aconversation.FontSize = m.Get("fontsize")
		aconversation.Incoming = m.Get("incoming")
		aconversation.SenderImage = m.Get("senderimage")
		aconversation.ImageShape = m.Get("imageshape")
		aconversation.ImageSize = m.Get("imagesize")
		aconversation.SenderName = m.Get("sendername")
		aconversation.SenderTime = m.Get("sendertime")
		aconversation.Footer = m.Get("footer")
		aconversation.Message = m.Get("message")
		aconversation.ReAction = m.Get("reaction")
		aconversation.ReplyId = m.Get("replyid")
		aconversation.ReplyMessage = m.Get("replymessage")
		aconversation.FileMimeType = m.Get("filemimetype")
		aconversation.FileName = m.Get("filename")
		aconversation.FilePreview = m.Get("filepreview")
		aconversation.FileSize = m.Get("filesize")
		aconversation.FileUrl = m.Get("fileurl")
		UI.OnEventByID($"aconversation_${Ret}_reply"$, "click", Me, "ReplyClick")
		UI.OnEventByID($"aconversation_${Ret}"$, "click", Me, "OpenFileOnTab")
	Next
	ScrollToLastMessage
End Sub

Sub AddEditTextMessage(cID As String, cIncoming As Boolean, cSenderImage As String, cSenderName As String, cSenderTime As String, cMessage As String, cReplyMessage As String, cReplyID As String, cReAction As String)
	AddEditConversation(cID, cIncoming, "T", cSenderImage, cSenderName, cSenderTime, cMessage, "", "", "", "", "", cReplyMessage, cReplyID, "", cReAction)
End Sub

'add or edit an existing chat
'Type - T-ext|V-ideo|D-ocument|I-mage|A-udio
Sub AddEditConversation(cID As String, cIncoming As Boolean, cType As String, cSenderImage As String, cSenderName As String, cSenderTime As String, cMessage As String, cFileName As String, cFileURL As String, cFileMimeType As String, cFilePreview As String, cFileSize As String, cReplyMessage As String, cReplyID As String, cFooter As String, cReAction As String)
	cID = UI.CStr(cID)
	cIncoming = UI.CBool(cIncoming)
	cType = UI.CStr(cType)
	cSenderImage = UI.CStr(cSenderImage)
	cSenderName = UI.CStr(cSenderName)
	cSenderTime = UI.CStr(cSenderTime)
	cMessage = UI.CStr(cMessage)
	cFileName = UI.CStr(cFileName)
	cFileURL = UI.CStr(cFileURL)
	cFileMimeType = UI.CStr(cFileMimeType)
	cFileSize = UI.CStr(cFileSize)
	cReplyMessage = UI.CStr(cReplyMessage)
	cReplyID = UI.CStr(cReplyID)
	cFooter = UI.CStr(cFooter)
	cReAction = UI.CStr(cReAction)
	'
	'this is a new chat that does not exist
	Dim Ret As Long
	Dim AllViews As Map
	Dim m As Map = CreateMap()
	If messages.ContainsKey(cID) Then
		m = messages.Get(cID)
	End If
	sLastMsgID = cID
	'
	m.Put("id", cID)
	m.Put("chatid", cID)
	m.Put("type", cType)
	m.Put("incoming", cIncoming)
	m.Put("senderimage", cSenderImage)
	m.Put("sendername", cSenderName)
	m.Put("sendertime", cSenderTime)
	m.Put("footer", cFooter)
	m.Put("message", cMessage)
	m.Put("reaction", cReAction)
	m.Put("replyid", cReplyID)
	m.Put("replymessage", cReplyMessage)
	m.Put("filename", cFileName)
	m.Put("filemimetype", cFileMimeType)
	m.Put("filepreview", cFilePreview)
	m.Put("fileurl", cFileURL)
	m.Put("fontsize", sFontSize)
	m.Put("imagesize", sImageSize)
	m.Put("imageshape", sImageShape)
	m.Put("filesize", cFileSize)
	If cIncoming Then
		m.Put("textcolor", sIncomingTextColor)
		m.Put("bgcolor", sIncomingBackgroundColor)
	Else
		m.Put("textcolor", sOutgoingTextColor)
		m.Put("bgcolor", sOutgoingBackgroundColor)
	End If
	'
	If messages.ContainsKey(cID) = False Then 
		'add the view
		Ret = BANano.LoadLayoutArray($"#${mName}_messages"$, "conversationitemview", False)
	Else
		Ret = GetConversationPos(cID)
	End If
	If Ret <= 0 Then Return
	'store references to id and positions
	m.Put("pos", Ret)
	messages.Put(cID, m)
	' ret returns a unique number you can use to get all views
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "conversationitemview", Ret)
	'we only have 1 item
	Dim aconversation As SDUI5Conversation = AllViews.get("aconversation")
	aconversation.ChatId = m.Get("chatid")
	aconversation.ConversationType = m.Get("type")
	aconversation.TextColor = m.Get("textcolor")
	aconversation.BackgroundColor = m.Get("bgcolor")
	aconversation.FontSize = m.Get("fontsize")
	aconversation.Incoming = m.Get("incoming")
	aconversation.SenderImage = m.Get("senderimage")
	aconversation.ImageShape = m.Get("imageshape")
	aconversation.ImageSize = m.Get("imagesize")
	aconversation.SenderName = m.Get("sendername")
	aconversation.SenderTime = m.Get("sendertime")
	aconversation.Footer = m.Get("footer")
	aconversation.Message = m.Get("message")
	aconversation.ReAction = m.Get("reaction")
	aconversation.ReplyId = m.Get("replyid")
	aconversation.ReplyMessage = m.Get("replymessage")
	aconversation.FileMimeType = m.Get("filemimetype")
	aconversation.FileName = m.Get("filename")
	aconversation.FilePreview = m.Get("filepreview")
	aconversation.FileSize = m.Get("filesize")
	aconversation.FileUrl = m.Get("fileurl")
	UI.OnEventByID($"aconversation_${Ret}_reply"$, "click", Me, "ReplyClick")
	UI.OnEventByID($"aconversation_${Ret}"$, "click", Me, "OpenFileOnTab")
	ScrollToLastMessage
End Sub

private Sub OpenFileOnTab(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault
	e.StopPropagation
	Dim spos As String = UI.MvField(e.ID,2,"_")
	Dim url As String = UI.GetAttrByID($"aconversation_${spos}"$, "data-url")
	If url = "" Then Return
	UI.OpenURLTab(url)
End Sub

Sub getLastMsgID As String
	Return sLastMsgID
End Sub

Sub setLastMsgID(s As String)
	sLastMsgID = s
End Sub

private Sub ReplyClick(e As BANanoEvent)				'ignoredeadcode
	e.PreventDefault
	e.StopPropagation
	Dim pos As String = UI.MvField(e.ID, 2, "_")
	Dim convID As String = GetConversationIDByPos(pos)
	Dim msgID As String = UI.MvField(convID, 2, "-")
	If messages.ContainsKey(convID) = False Then Return
	'show cancel reply
	MessageID = msgID
	MessageType = "T"
	SetTextPlaceholder("Type a message here.")
	UI.SetValueByID($"${mName}_filepick"$, Null)
	ShowCancelReply
	MessageFocus
	BANano.CallSub(mCallBack, $"${mName}_Reply"$, Array(MessageID))
End Sub

Sub RefreshChats
	ClearRightHeader
	EnableEmoji(False)
	EnableAttach(False)
	EnableSend(False)
	UI.SetValueByID($"${mName}_filepick"$, Null)
	lastUp = ""
	UI.ClearByID($"${mName}_unreadchats"$)
	UI.SetVisibleByID($"${mName}_unreadchats"$, False)
	
	'load the same layout
	For Each k As String In chatRecords.keys
		Dim m As Map = chatRecords.Get(k)
		Dim chatID As String = m.Get("id")
		'
		Dim Ret As Long
		Dim AllViews As Map
 
		'add the view
		Ret = BANano.LoadLayoutArray($"#${mName}_chats"$, "chatitemview", False)
		'store references to id and positions
		m.Put("pos", Ret)
		chatRecords.Put(chatID, m)
		' ret returns a unique number you can use to get all views
		AllViews = BANano.GetAllViewsFromLayoutArray(Me, "chatitemview", Ret)
		'we only have 1 item
		Dim achatitem As SDUI5ChatItem = AllViews.get("achatitem")
		achatitem.FromAvatar = m.Get("image")
		achatitem.FromName = m.Get("chatname")
		achatitem.Message = m.Get("lastmsg")
		achatitem.Unread = m.Get("unread")
		achatitem.HelpAvatar = m.Get("lastuser")
		achatitem.DeliveryTime = m.Get("lastdate")
		If m.Get("lastuser") = "" Then
			achatitem.HelpVisible = False
		Else
			achatitem.HelpVisible = True
		End If
		achatitem.RoundedBox = False
		UI.OnEventByID($"achatitem_${Ret}"$, "click", Me, "ChatClick")
	Next
End Sub

private Sub ChatClick(e As BANanoEvent)				'ignoredeadcode
	e.PreventDefault
	MessageID = ""
	MessageType = "T"
	SetTextPlaceholder("Type a message here.")
	If bEmojis Then EnableEmoji(True)
	If bAllowAttachments Then EnableAttach(True)
	EnableSend(True)
'	CloseInternalModals
	ClearRightHeader
	ClearConversations
	HideCancelReply
	HideSend
	setMessage("")
	sActiveChatID = ""
	sActiveImage = ""
	sLastUser = ""
	sActiveChatName = ""
	Dim pos As String = UI.MvField(e.ID, 2, "_")
	Dim chatID As String = GetChatIDByPos(pos)
	Dim chatNumber As String = UI.MvField(chatID,2,"-")
	'update the right menu
	If chatRecords.ContainsKey(chatID) = False Then Return
	Dim m As Map = chatRecords.Get(chatID)
	Dim sname As String = m.Get("chatname")
	Dim shelp As String = m.Get("lastuser")
	Dim savatar As String = m.Get("image")
	setRightAvatar(savatar)
	setRightName(sname)
	setRightStatus(chatNumber)
	setActiveChatID(chatID)
	setActiveImage(savatar)
	setActiveChatName(sname)
	setLastUser(shelp)
	If shelp = "" Then
		SetRightHelpAvatarVisible(False)
	Else	
		SetRightHelpAvatar(shelp)
		SetRightHelpAvatarVisible(True)
	End If
	BANano.CallSub(mCallBack, $"${mName}_ChatClick"$, Array(chatID))
End Sub

Sub setLastUser(s As String)
	sLastUser = s
End Sub

Sub getLastUser As String
	Return sLastUser
End Sub

Sub setActiveImage(s As String)
	sActiveImage = s
End Sub

Sub getActiveImage As String
	Return sActiveImage
End Sub

'clear the right header avatar, name and telephone
Sub ClearRightHeader
	SetRightHelpAvatarVisible(False)
	setRightAvatarVisible(False)
	setRightName("")
	setRightStatus("")
End Sub

Sub SetRightHelpAvatar(s As String)
	UI.SetImageByID($"${mName}_righthelpavatar"$, s)
End Sub

Sub SetRightHelpAvatarVisible(b As Boolean)
	UI.SetVisibleByID($"${mName}_righthelpavatar"$, b)
End Sub

private Sub GetChatIDByPos(pos As String) As String		'ignoredeadcode
	For Each k As String In chatRecords.Keys
		Dim m As Map = chatRecords.Get(k)
		Dim mpos As Int = m.Get("pos")
		mpos = UI.CInt(mpos)
		If mpos = UI.CInt(pos) Then Return k
	Next
	Return ""
End Sub

private Sub GetConversationIDByPos(pos As String) As String		'ignoredeadcode
	For Each k As String In messages.Keys
		Dim m As Map = messages.Get(k)
		Dim mpos As Int = m.Get("pos")
		mpos = UI.CInt(mpos)
		If mpos = UI.CInt(pos) Then Return k
	Next
	Return ""
End Sub

private Sub GetConversationPos(msgid As String) As Long
	If messages.ContainsKey(msgid) = False Then Return -1
	Dim m As Map = messages.Get(msgid)
	Dim pos As Long = m.Get("pos")
	pos = UI.CInt(pos)
	Return pos
End Sub

Sub setActiveChatID(s As String)
	sActiveChatID = s
End Sub

Sub getActiveChatID As String
	Return sActiveChatID
End Sub

Sub setActiveChatName(s As String)
	sActiveChatName = s
End Sub

Sub getActiveChatName As String
	Return sActiveChatName
End Sub

'set Font Size
'options: xs|none|sm|md|lg|xl
Sub setFontSize(s As String)
	sFontSize = s
	CustProps.put("FontSize", s)
	If mElement = Null Then Return
End Sub

'set Image Shape
Sub setImageShape(s As String)
	sImageShape = s
	CustProps.put("ImageShape", s)
End Sub
'set Image Size
Sub setImageSize(s As String)
	sImageSize = s
	CustProps.put("ImageSize", s)
End Sub
'set Incoming Background Color
Sub setIncomingBackgroundColor(s As String)
	sIncomingBackgroundColor = s
	CustProps.put("IncomingBackgroundColor", s)
End Sub
'set Incoming Text Color
Sub setIncomingTextColor(s As String)
	sIncomingTextColor = s
	CustProps.put("IncomingTextColor", s)
End Sub
'set Outgoing Background Color
Sub setOutgoingBackgroundColor(s As String)
	sOutgoingBackgroundColor = s
	CustProps.put("OutgoingBackgroundColor", s)
End Sub
'set Outgoing Text Color
Sub setOutgoingTextColor(s As String)
	sOutgoingTextColor = s
	CustProps.put("OutgoingTextColor", s)
End Sub
'get Font Size
Sub getFontSize As String
	Return sFontSize
End Sub
'get Image Shape
Sub getImageShape As String
	Return sImageShape
End Sub
'get Image Size
Sub getImageSize As String
	Return sImageSize
End Sub
'get Incoming Background Color
Sub getIncomingBackgroundColor As String
	Return sIncomingBackgroundColor
End Sub
'get Incoming Text Color
Sub getIncomingTextColor As String
	Return sIncomingTextColor
End Sub
'get Outgoing Background Color
Sub getOutgoingBackgroundColor As String
	Return sOutgoingBackgroundColor
End Sub
'get Outgoing Text Color
Sub getOutgoingTextColor As String
	Return sOutgoingTextColor
End Sub

Sub ScrollToLastMessage
	If sLastMsgID = "" Then Return
	Try
		Dim chatPos As Int = GetConversationPos(sLastMsgID)
		Dim cKey As String = $"aconversation_${chatPos}"$
		If BANano.Exists($"#${cKey}"$) Then
			ScrollMessageIntoView(cKey)
		End If
	Catch
	End Try			'ignore	
End Sub


Sub ScrollMessageIntoView(cID As String)
	cID = UI.CleanID(cID)
	Dim opt As Map = CreateMap("behavior": "smooth")
	BANano.GetElement($"#${cID}"$).RunMethod("scrollIntoView", opt)
End Sub

Sub MessageSent
	HideCancelReply
	HideSend
	MessageID = ""
	MessageType = "T"
	SetTextPlaceholder("Type a message here.")
	setMessage("")
	UI.FocusByID($"${mName}_message"$)
End Sub

Sub FileChooserAudio
	UI.SetAttrByID($"${mName}_filepick"$, "accept", "audio/*;capture=microphone")
	ShowCancelReply
	MessageTypeAudio
'	CloseInternalModals
	SetTextPlaceholder("Type the caption for the audio file here.")
	MessageFocus
	Dim fe As BANanoElement = BANano.GetElement($"#${mName}_filepick"$)
	fe.SetValue(Null)
	fe.RunMethod("click", Null)
End Sub

Sub PrepareForEmoji
	BANano.Await(ShowCancelReply)
	BANano.Await(MessageTypeEmoji)
'	BANano.Await(CloseInternalModals)
	SetTextPlaceholder("Choose an emoji.")
	MessageFocus
End Sub

Sub PrepareForURL
	BANano.Await(ShowCancelReply)
	BANano.Await(MessageTypeURL)
'	BANano.Await(CloseInternalModals)
	SetTextPlaceholder("Paste the URL here.")
	MessageFocus
End Sub

Sub FileChooserPDF
	BANano.Await(UI.SetAttrByID($"${mName}_filepick"$, "accept", "application/pdf"))
	BANano.Await(ShowCancelReply)
	BANano.Await(MessageTypePDF)
'	BANano.Await(CloseInternalModals)
	SetTextPlaceholder("Type the caption for the PDF file here.")
	MessageFocus
	Dim fe As BANanoElement = BANano.GetElement($"#${mName}_filepick"$)
	fe.SetValue(Null)
	fe.RunMethod("click", Null)
End Sub

Sub FileChooserImage
	BANano.Await(UI.SetAttrByID($"${mName}_filepick"$, "accept", "image/*"))
	BANano.Await(ShowCancelReply)
	BANano.Await(MessageTypeImage)
'	BANano.Await(CloseInternalModals)
	SetTextPlaceholder("Type the caption for the image file here.")
	MessageFocus
	Dim fe As BANanoElement = BANano.GetElement($"#${mName}_filepick"$)
	fe.SetValue(Null)
	fe.RunMethod("click", Null)
End Sub

Sub FileChooserVideo
	BANano.Await(UI.SetAttrByID($"${mName}_filepick"$, "accept", "video/*"))
	BANano.Await(ShowCancelReply)
	BANano.Await(MessageTypeVideo)
'	BANano.Await(CloseInternalModals)
	SetTextPlaceholder("Type the caption for the video file here.")
	MessageFocus
	Dim fe As BANanoElement = BANano.GetElement($"#${mName}_filepick"$)
	fe.SetValue(Null)
	fe.RunMethod("click", Null)
End Sub
