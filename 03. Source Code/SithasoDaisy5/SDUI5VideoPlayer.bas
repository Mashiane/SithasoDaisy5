B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TypeOf, DisplayName: Type Of, FieldType: String, DefaultValue: video, Description: Type Of, List: audio|video
#DesignerProperty: Key: Provider, DisplayName: Provider, FieldType: String, DefaultValue: youtube, Description: Provider, List: vimeo|youtube|none
#DesignerProperty: Key: Embed, DisplayName: Embed, FieldType: Boolean, DefaultValue: False, Description: Embed
#DesignerProperty: Key: EmbedId, DisplayName: Embed Id, FieldType: String, DefaultValue: , Description: Embed Id
#DesignerProperty: Key: Mp4Url, DisplayName: Mp4 Url, FieldType: String, DefaultValue: , Description: Mp4 Url
#DesignerProperty: Key: Mp3Url, DisplayName: Mp3 Url, FieldType: String, DefaultValue: , Description: Mp3 Url
#DesignerProperty: Key: Poster, DisplayName: Poster, FieldType: String, DefaultValue: , Description: Poster
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: , Description: Title
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 500px, Description: Width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: Autoplay, DisplayName: Autoplay, FieldType: Boolean, DefaultValue: False, Description: Autoplay
#DesignerProperty: Key: Controls, DisplayName: Controls, FieldType: Boolean, DefaultValue: True, Description: Controls
#DesignerProperty: Key: Crossorigin, DisplayName: Crossorigin, FieldType: Boolean, DefaultValue: True, Description: Crossorigin
#DesignerProperty: Key: IconUrl, DisplayName: Icon Url, FieldType: String, DefaultValue: ./assets/plyr.svg, Description: Icon Url
#DesignerProperty: Key: Playsinline, DisplayName: Playsinline, FieldType: Boolean, DefaultValue: True, Description: Playsinline
#DesignerProperty: Key: Captions, DisplayName: Captions, FieldType: Boolean, DefaultValue: True, Description: Captions
#DesignerProperty: Key: Keyboard, DisplayName: Keyboard, FieldType: Boolean, DefaultValue: True, Description: Keyboard
#DesignerProperty: Key: Tooltips, DisplayName: Tooltips, FieldType: Boolean, DefaultValue: True, Description: Tooltips
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private Options As Map
	Private bAutoplay As Boolean = False
	Private bControls As Boolean = True
	Private bCrossorigin As Boolean = True
	Private sEmbedId As String = ""
	Private sHeight As String = "500px"
	Private sIconUrl As String = "./assets/plyr.svg"
	Private bPlaysinline As Boolean = True
	Private sPoster As String = ""
	Private sProvider As String = "youtube"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"
	Private sTitle As String = ""
	Private sWidth As String = "500px"
	Private PlayerObj As BANanoObject
	Private sMp4Url As String = ""
	Private bEmbed As Boolean = False
	Private bCaptions As Boolean = True
	Private bKeyboard As Boolean = True
	Private sRounded As String = "none"
	Private bTooltips As Boolean = True
	Private sMp3Url As String = ""
	Private sTypeOf As String = "video"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("VideoAudio") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesVideoAudioPlayer)' should be added!"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	BANano.DependsOnAsset("plyr.css")
	BANano.DependsOnAsset("plyr.js")
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("TypeOf", "video")
	CustProps.Put("Provider", "youtube")
	CustProps.Put("Embed", False)
	CustProps.Put("EmbedId", "")
	CustProps.Put("Mp4Url", "")
	CustProps.Put("Mp3Url", "")
	CustProps.Put("Poster", "")
	CustProps.Put("Title", "")
	CustProps.Put("Width", "500px")
	CustProps.Put("Height", "500px")
	CustProps.Put("Autoplay", False)
	CustProps.Put("Controls", True)
	CustProps.Put("Crossorigin", True)
	CustProps.Put("IconUrl", "./assets/plyr.svg")
	CustProps.Put("Playsinline", True)
	CustProps.Put("Captions", True)
	CustProps.Put("Keyboard", True)
	CustProps.Put("Tooltips", True)
	CustProps.Put("Rounded", "none")
	CustProps.Put("RoundedBox", False)
	CustProps.Put("Shadow", "none")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=? ")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=? ")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
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
		bAutoplay = Props.GetDefault("Autoplay", False)
		bAutoplay = UI.CBool(bAutoplay)
		bControls = Props.GetDefault("Controls", True)
		bControls = UI.CBool(bControls)
		bCrossorigin = Props.GetDefault("Crossorigin", True)
		bCrossorigin = UI.CBool(bCrossorigin)
		sEmbedId = Props.GetDefault("EmbedId", "")
		sEmbedId = UI.CStr(sEmbedId)
		sHeight = Props.GetDefault("Height", "500px")
		sHeight = UI.CStr(sHeight)
		sIconUrl = Props.GetDefault("IconUrl", "./assets/plyr.svg")
		sIconUrl = UI.CStr(sIconUrl)
		bPlaysinline = Props.GetDefault("Playsinline", True)
		bPlaysinline = UI.CBool(bPlaysinline)
		sPoster = Props.GetDefault("Poster", "")
		sPoster = UI.CStr(sPoster)
		sProvider = Props.GetDefault("Provider", "youtube")
		sProvider = UI.CStr(sProvider)
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		sTitle = Props.GetDefault("Title", "")
		sTitle = UI.CStr(sTitle)
		sWidth = Props.GetDefault("Width", "500px")
		sWidth = UI.CStr(sWidth)
		sMp4Url = Props.GetDefault("Mp4Url", "")
		sMp4Url = UI.CStr(sMp4Url)
		bEmbed = Props.GetDefault("Embed", False)
		bEmbed = UI.CBool(bEmbed)
		bCaptions = Props.GetDefault("Captions", True)
		bCaptions = UI.CBool(bCaptions)
		bKeyboard = Props.GetDefault("Keyboard", True)
		bKeyboard = UI.CBool(bKeyboard)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bTooltips = Props.GetDefault("Tooltips", True)
		bTooltips = UI.CBool(bTooltips)
		sMp3Url = Props.GetDefault("Mp3Url", "")
		sMp3Url = UI.CStr(sMp3Url)
		sTypeOf = Props.GetDefault("TypeOf", "video")
		sTypeOf = UI.CStr(sTypeOf)
	End If
	'
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
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
	
	Select Case bEmbed
	Case True
		mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
				<div id="${mName}_video" data-plyr-provider="${sProvider}" data-plyr-embed-id="${sEmbedId}"></div>
			</div>"$).Get("#" & mName)
	Case Else
		mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
				<${sTypeOf} id="${mName}_video">
					<source id="${mName}_source" src="${sMp4Url}" type="video/mp4"/>
				</${sTypeOf}>
			</div>"$).Get("#" & mName)
	End Select
	'
	setControls(bControls)
	setCrossOrigin(bCrossorigin)
	setPlaysInline(bPlaysinline)
	setTypeOf(sTypeOf)
	Select Case sTypeOf
	Case "video"
		setPoster(sPoster)
		If bEmbed = False Then setMp4Url(sMp4Url)
	Case "audio"
		If bEmbed = False Then setMp3Url(sMp3Url)
	End Select
	
	Options.Initialize
	Options.put("autoplay", bAutoplay)
	Options.put("iconUrl", sIconUrl)
	Options.put("title", sTitle)
	UI.PutRecursive(Options, "tooltips.controls", bTooltips)
	UI.PutRecursive(Options, "keyboard.global", bKeyboard)
	UI.PutRecursive(Options, "captions.active", bCaptions)
	Refresh
End Sub

'set Mp3 Url
Sub setMp3Url(s As String)				'ignoredeadcode
	sMp3Url = s
	CustProps.put("Mp3Url", s)
	If mElement = Null Then Return
	If s <> "" Then
		UI.SetAttrByID($"${mName}_source"$, "src", s)
	Else
		UI.RemoveAttrByID($"${mName}_source"$, "src")
	End If
End Sub

'set Type Of
'options: audio|video
Sub setTypeOf(s As String)				'ignoredeadcode
	sTypeOf = s
	CustProps.put("TypeOf", s)
	If mElement = Null Then Return
	Select Case s
	Case "video"
		UI.SetAttrByID($"${mName}_source"$, "type", "video/mp4")
	Case "audio"
		UI.SetAttrByID($"${mName}_source"$, "type", "audio/mp3")
	End Select
End Sub
'get Mp3 Url
Sub getMp3Url As String
	Return sMp3Url
End Sub
'get Type Of
Sub getTypeOf As String
	Return sTypeOf
End Sub


'set Captions
Sub setCaptions(b As Boolean)
	bCaptions = b
	CustProps.put("Captions", b)
	UI.PutRecursive(Options, "captions.active", bCaptions)
End Sub

'set Keyboard
Sub setKeyboard(b As Boolean)
	bKeyboard = b
	CustProps.put("Keyboard", b)
	UI.PutRecursive(Options, "keyboard.global", bKeyboard)
End Sub

'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub

'set Tooltips
Sub setTooltips(b As Boolean)
	bTooltips = b
	CustProps.put("Tooltips", b)
	UI.PutRecursive(Options, "tooltips.controls", bTooltips)
End Sub

'get Captions
Sub getCaptions As Boolean
	Return bCaptions
End Sub
'get Keyboard
Sub getKeyboard As Boolean
	Return bKeyboard
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Tooltips
Sub getTooltips As Boolean
	Return bTooltips
End Sub

Sub setEmbed(b As Boolean)
	bEmbed = b
	CustProps.Put("Embed", b)
End Sub

Sub getEmbed As Boolean
	Return bEmbed
End Sub

'set Mp4 Url
Sub setMp4Url(s As String)				'ignoredeadcode
	sMp4Url = s
	CustProps.put("Mp4Url", s)
	If mElement = Null Then Return
	If s <> "" Then
		UI.SetAttrByID($"${mName}_source"$, "src", s)
	Else
		UI.RemoveAttrByID($"${mName}_source"$, "src")
	End If
End Sub

'get Mp4 Url
Sub getMp4Url As String
	Return sMp4Url
End Sub

Sub Refresh
	Dim sKey As String = $"#${mName}_video"$
	PlayerObj.Initialize2("Plyr", Array(sKey, Options))
End Sub

'set Autoplay
Sub setAutoplay(b As Boolean)
	bAutoplay = b
	CustProps.put("Autoplay", b)
	Options.put("autoplay", b)
End Sub
'set Controls
Sub setControls(b As Boolean)				'ignoredeadcode
	bControls = b
	CustProps.put("Controls", b)
	If mElement = Null Then Return
	If b = True Then
		UI.SetAttrByID($"${mName}_video"$, "controls", "controls")
	Else
		UI.RemoveAttrByID($"${mName}_video"$, "controls")
	End If
End Sub
'set Crossorigin
Sub setCrossOrigin(b As Boolean)				'ignoredeadcode
	bCrossorigin = b
	CustProps.put("Crossorigin", b)
	If mElement = Null Then Return
	If b = True Then
		UI.SetAttrByID($"${mName}_video"$, "crossorigin", "crossorigin")
	Else
		UI.RemoveAttrByID($"${mName}_video"$, "crossorigin")
	End If
End Sub
'set Embed Id
Sub setEmbedId(s As String)
	sEmbedId = s
	CustProps.put("EmbedId", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetAttrByID($"${mName}_video"$, "data-plyr-embed-id", s)
	End If
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "height", s)
End Sub
'set Icon Url
Sub setIconUrl(s As String)
	sIconUrl = s
	CustProps.put("IconUrl", s)
	Options.put("iconUrl", s)
End Sub
'set Playsinline
Sub setPlaysInline(b As Boolean)			'ignoredeadcode
	bPlaysinline = b
	CustProps.put("Playsinline", b)
	If mElement = Null Then Return
	If b = True Then
		UI.SetAttrByID($"${mName}_video"$, "playsinline", "playsinline")
	Else
		UI.RemoveAttrByID($"${mName}_video"$, "playsinline")
	End If
End Sub
'set Poster
Sub setPoster(s As String)						'ignoredeadcode
	sPoster = s
	CustProps.put("Poster", s)
	If mElement = Null Then Return
	If s <> "" Then
		UI.SetAttrByID($"${mName}_video"$, "data-poster", S)
	Else
		UI.RemoveAttrByID($"${mName}_video"$, "data-poster")
	End If	
End Sub
'set Provider
'options: vimeo|youtube
Sub setProvider(s As String)
	sProvider = s
	CustProps.put("Provider", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetAttrByID($"${mName}_video"$, "data-plyr-provider", sProvider)
	End If
End Sub
'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	UI.SetRoundedBox(mElement, b)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Title
Sub setTitle(s As String)
	sTitle = s
	CustProps.put("Title", s)
	Options.put("title", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "width", s)
End Sub
'get Autoplay
Sub getAutoplay As Boolean
	Return bAutoplay
End Sub
'get Controls
Sub getControls As Boolean
	Return bControls
End Sub
'get Crossorigin
Sub getCrossorigin As Boolean
	Return bCrossorigin
End Sub
'get Embed Id
Sub getEmbedId As String
	Return sEmbedId
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Icon Url
Sub getIconUrl As String
	Return sIconUrl
End Sub
'get Playsinline
Sub getPlaysinline As Boolean
	Return bPlaysinline
End Sub
'get Poster
Sub getPoster As String
	Return sPoster
End Sub
'get Provider
Sub getProvider As String
	Return sProvider
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Title
Sub getTitle As String
	Return sTitle
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub