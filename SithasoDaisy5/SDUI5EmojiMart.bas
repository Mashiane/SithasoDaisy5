B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.13
@EndOfDesignText@
#IgnoreWarnings:12
#Event: EmojiSelect (emoji As Map)
#Event: ClickOutside (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: AutoFocus, DisplayName: Auto Focus, FieldType: Boolean, DefaultValue: False, Description: Auto Focus
#DesignerProperty: Key: DynamicWidth, DisplayName: Dynamic Width, FieldType: Boolean, DefaultValue: False, Description: Dynamic Width
#DesignerProperty: Key: EmojiButtonSize, DisplayName: Emoji Button Size, FieldType: Int, DefaultValue: 36, Description: Emoji Button Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: EmojiButtonsRadius, DisplayName: Emoji Buttons Radius, FieldType: String, DefaultValue: 100%, Description: Emoji Buttons Radius
#DesignerProperty: Key: EmojiSize, DisplayName: Emoji Size, FieldType: Int, DefaultValue: 24, Description: Emoji Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: EmojiVersion, DisplayName: Emoji Version, FieldType: String, DefaultValue: 15, Description: Emoji Version
#DesignerProperty: Key: Icons, DisplayName: Icons, FieldType: String, DefaultValue: auto, Description: Icons, List: auto|outline|solid
#DesignerProperty: Key: Locale, DisplayName: Locale, FieldType: String, DefaultValue: en, Description: Locale
#DesignerProperty: Key: MaxFrequentRows, DisplayName: Max Frequent Rows, FieldType: Int, DefaultValue: 4, Description: Max Frequent Rows
#DesignerProperty: Key: NavPosition, DisplayName: Nav Position, FieldType: String, DefaultValue: top, Description: Nav Position, List: bottom|none|top
#DesignerProperty: Key: NoCountryFlags, DisplayName: No Country Flags, FieldType: Boolean, DefaultValue: False, Description: No Country Flags
#DesignerProperty: Key: NoResultsEmoji, DisplayName: No Results Emoji, FieldType: String, DefaultValue: cry, Description: No Results Emoji
#DesignerProperty: Key: PerLine, DisplayName: Per Line, FieldType: Int, DefaultValue: 9, Description: Per Line
#DesignerProperty: Key: PreviewEmoji, DisplayName: Preview Emoji, FieldType: String, DefaultValue: point_up, Description: Preview Emoji
#DesignerProperty: Key: PreviewPosition, DisplayName: Preview Position, FieldType: String, DefaultValue: bottom, Description: Preview Position, List: bottom|none|top
#DesignerProperty: Key: SearchPosition, DisplayName: Search Position, FieldType: String, DefaultValue: sticky, Description: Search Position, List: none|static|sticky
#DesignerProperty: Key: SetOf, DisplayName: Set Of, FieldType: String, DefaultValue: apple, Description: Set Of, List: apple|facebook|google|native|twitter
#DesignerProperty: Key: Skin, DisplayName: Skin, FieldType: Int, DefaultValue: 1, MinRange: 1, MaxRange: 6, Description: Skin
#DesignerProperty: Key: SkinTonePosition, DisplayName: Skin Tone Position, FieldType: String, DefaultValue: preview, Description: Skin Tone Position, List: none|preview|search
#DesignerProperty: Key: Theme, DisplayName: Theme, FieldType: String, DefaultValue: auto, Description: Theme, List: auto|dark|light

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
	Public Tag As Object
	Private Options As Map
	Private bAutoFocus As Boolean = False
	Private bDynamicWidth As Boolean = False
	Private iEmojiButtonSize As Int = 36
	Private sEmojiButtonsRadius As String = "100%"
	Private iEmojiSize As Int = 24
	Private sEmojiVersion As String = "15"
	Private sIcons As String = "auto"
	Private sLocale As String = "en"
	Private iMaxFrequentRows As Int = 4
	Private sNavPosition As String = "top"
	Private bNoCountryFlags As Boolean = False
	Private sNoResultsEmoji As String = "cry"
	Private iPerLine As Int = 9
	Private sPreviewEmoji As String = "point_up"
	Private sPreviewPosition As String = "bottom"
	Private sSearchPosition As String = "sticky"
	Private sSetOf As String = "apple"
	Private iSkin As Int = 1
	Private sSkinTonePosition As String = "preview"
	Private sTheme As String = "auto"
	Public CONST EMOJIBUTTONSIZE_LG As String = "lg"
	Public CONST EMOJIBUTTONSIZE_MD As String = "md"
	Public CONST EMOJIBUTTONSIZE_NONE As String = "none"
	Public CONST EMOJIBUTTONSIZE_SM As String = "sm"
	Public CONST EMOJIBUTTONSIZE_XL As String = "xl"
	Public CONST EMOJIBUTTONSIZE_XS As String = "xs"
	Public CONST EMOJISIZE_LG As String = "lg"
	Public CONST EMOJISIZE_MD As String = "md"
	Public CONST EMOJISIZE_NONE As String = "none"
	Public CONST EMOJISIZE_SM As String = "sm"
	Public CONST EMOJISIZE_XL As String = "xl"
	Public CONST EMOJISIZE_XS As String = "xs"
	Public CONST ICONS_AUTO As String = "auto"
	Public CONST ICONS_OUTLINE As String = "outline"
	Public CONST ICONS_SOLID As String = "solid"
	Public CONST NAVPOSITION_BOTTOM As String = "bottom"
	Public CONST NAVPOSITION_NONE As String = "none"
	Public CONST NAVPOSITION_TOP As String = "top"
	Public CONST PREVIEWPOSITION_BOTTOM As String = "bottom"
	Public CONST PREVIEWPOSITION_NONE As String = "none"
	Public CONST PREVIEWPOSITION_TOP As String = "top"
	Public CONST SEARCHPOSITION_NONE As String = "none"
	Public CONST SEARCHPOSITION_STATIC As String = "static"
	Public CONST SEARCHPOSITION_STICKY As String = "sticky"
	Public CONST SETOF_APPLE As String = "apple"
	Public CONST SETOF_FACEBOOK As String = "facebook"
	Public CONST SETOF_GOOGLE As String = "google"
	Public CONST SETOF_NATIVE As String = "native"
	Public CONST SETOF_TWITTER As String = "twitter"
	Public CONST SKINTONEPOSITION_NONE As String = "none"
	Public CONST SKINTONEPOSITION_PREVIEW As String = "preview"
	Public CONST SKINTONEPOSITION_SEARCH As String = "search"
	Public CONST THEME_AUTO As String = "auto"
	Public CONST THEME_DARK As String = "dark"
	Public CONST THEME_LIGHT As String = "light"
	Private EmojiData As Map
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
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
		bAutoFocus = Props.GetDefault("AutoFocus", False)
		bAutoFocus = UI.CBool(bAutoFocus)
		bDynamicWidth = Props.GetDefault("DynamicWidth", False)
		bDynamicWidth = UI.CBool(bDynamicWidth)
		iEmojiButtonSize = Props.GetDefault("EmojiButtonSize", 36)
		iEmojiButtonSize = UI.CInt(iEmojiButtonSize)
		sEmojiButtonsRadius = Props.GetDefault("EmojiButtonsRadius", "100%")
		sEmojiButtonsRadius = UI.CStr(sEmojiButtonsRadius)
		iEmojiSize = Props.GetDefault("EmojiSize", 24)
		iEmojiSize = UI.CInt(iEmojiSize)
		sEmojiVersion = Props.GetDefault("EmojiVersion", "15")
		sEmojiVersion = UI.CStr(sEmojiVersion)
		sIcons = Props.GetDefault("Icons", "auto")
		sIcons = UI.CStr(sIcons)
		sLocale = Props.GetDefault("Locale", "en")
		sLocale = UI.CStr(sLocale)
		iMaxFrequentRows = Props.GetDefault("MaxFrequentRows", 4)
		iMaxFrequentRows = UI.CInt(iMaxFrequentRows)
		sNavPosition = Props.GetDefault("NavPosition", "top")
		sNavPosition = UI.CStr(sNavPosition)
		bNoCountryFlags = Props.GetDefault("NoCountryFlags", False)
		bNoCountryFlags = UI.CBool(bNoCountryFlags)
		sNoResultsEmoji = Props.GetDefault("NoResultsEmoji", "cry")
		sNoResultsEmoji = UI.CStr(sNoResultsEmoji)
		iPerLine = Props.GetDefault("PerLine", 9)
		iPerLine = UI.CInt(iPerLine)
		sPreviewEmoji = Props.GetDefault("PreviewEmoji", "point_up")
		sPreviewEmoji = UI.CStr(sPreviewEmoji)
		sPreviewPosition = Props.GetDefault("PreviewPosition", "bottom")
		sPreviewPosition = UI.CStr(sPreviewPosition)
		sSearchPosition = Props.GetDefault("SearchPosition", "sticky")
		sSearchPosition = UI.CStr(sSearchPosition)
		sSetOf = Props.GetDefault("SetOf", "apple")
		sSetOf = UI.CStr(sSetOf)
		iSkin = Props.GetDefault("Skin", 1)
		iSkin = UI.CInt(iSkin)
		sSkinTonePosition = Props.GetDefault("SkinTonePosition", "preview")
		sSkinTonePosition = UI.CStr(sSkinTonePosition)
		sTheme = Props.GetDefault("Theme", "auto")
		sTheme = UI.CStr(sTheme)
	End If
	'
	If sParentID = "" Then
		BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' has not been specified for the Emoji Mart!"$)
		Return
	End If	
	'does the parent exist
	If BANano.Exists($"#${sParentID}"$) = False Then
		BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
		Return
	End If
	mElement.Initialize($"#${sParentID}"$)
End Sub

Sub Refresh	(Module As Object, SelectMethod As String, ClickOutSideMethod As String)		'ignoredeadcode
	EmojiData = BANano.Await(BANano.GetFileAsJSON("./assets/emojimart.json", Null))
	Dim categories As List
	categories.Initialize
	categories.AddAll(Array("frequent", "people", "nature", "foods", "activity", "places", "objects", "symbols", "flags"))
	Dim e1 As BANanoEvent
	Dim emoji As Map
	Dim cbonEmojiSelect As BANanoObject = BANano.CallBack(Module, SelectMethod, Array(emoji))
	Dim cbonClickOutside As BANanoObject = BANano.CallBack(Module, ClickOutSideMethod, Array(e1))
	'
	Options.Initialize
	Options.Put("data", EmojiData)
	Options.Put("parent", mElement.ToObject)
	Options.put("onEmojiSelect", cbonEmojiSelect)
	Options.Put("onClickOutside", cbonClickOutside)
	Options.put("autoFocus", bAutoFocus)
	Options.put("dynamicWidth", bDynamicWidth)
	Options.put("emojiButtonSize", iEmojiButtonSize)
	Options.put("emojiButtonsRadius", sEmojiButtonsRadius)
	Options.put("emojiSize", iEmojiSize)
	Options.put("emojiVersion", sEmojiVersion)
	Options.put("icons", sIcons)
	Options.put("locale", sLocale)
	Options.put("maxFrequentRows", iMaxFrequentRows)
	Options.put("navPosition", sNavPosition)
	Options.put("noCountryFlags", bNoCountryFlags)
	Options.put("noResultsEmoji", sNoResultsEmoji)
	Options.put("perLine", iPerLine)
	Options.put("previewEmoji", sPreviewEmoji)
	Options.put("previewPosition", sPreviewPosition)
	Options.put("searchPosition", sSearchPosition)
	Options.put("set", sSetOf)
	Options.put("skin", iSkin)
	Options.put("skinTonePosition", sSkinTonePosition)
	Options.put("theme", sTheme)
	Dim picker As BANanoObject
	picker.Initialize2("EmojiMart.Picker", Options)
End Sub

'link to an existing element
Sub LinkExisting			'ignoredeadcode
	mElement = BANano.GetElement($"#${mName}"$)
End Sub


'set Auto Focus
Sub setAutoFocus(b As Boolean)
	bAutoFocus = b
	CustProps.put("AutoFocus", b)
	Options.put("autoFocus", b)
End Sub
'set Dynamic Width
Sub setDynamicWidth(b As Boolean)
	bDynamicWidth = b
	CustProps.put("DynamicWidth", b)
	Options.put("dynamicWidth", b)
End Sub
'set Emoji Button Size
'options: xs|none|sm|md|lg|xl
Sub setEmojiButtonSize(i As Int)
	iEmojiButtonSize = i
	CustProps.put("EmojiButtonSize", i)
	Options.put("emojiButtonSize", i)
End Sub
'set Emoji Buttons Radius
Sub setEmojiButtonsRadius(s As String)
	sEmojiButtonsRadius = s
	CustProps.put("EmojiButtonsRadius", s)
	Options.put("emojiButtonsRadius", s)
End Sub
'set Emoji Size
'options: xs|none|sm|md|lg|xl
Sub setEmojiSize(i As Int)
	iEmojiSize = i
	CustProps.put("EmojiSize", i)
	Options.put("emojiSize", i)
End Sub
'set Emoji Version
Sub setEmojiVersion(s As String)
	sEmojiVersion = s
	CustProps.put("EmojiVersion", s)
	Options.put("emojiVersion", s)
End Sub
'set Icons
'options: auto|outline|solid
Sub setIcons(s As String)
	sIcons = s
	CustProps.put("Icons", s)
	Options.put("icons", s)
End Sub
'set Locale
Sub setLocale(s As String)
	sLocale = s
	CustProps.put("Locale", s)
	Options.put("locale", s)
End Sub
'set Max Frequent Rows
Sub setMaxFrequentRows(i As Int)
	iMaxFrequentRows = i
	CustProps.put("MaxFrequentRows", i)
	Options.put("maxFrequentRows", i)
End Sub
'set Nav Position
'options: bottom|none|top
Sub setNavPosition(s As String)
	sNavPosition = s
	CustProps.put("NavPosition", s)
	Options.put("navPosition", s)
End Sub
'set No Country Flags
Sub setNoCountryFlags(b As Boolean)
	bNoCountryFlags = b
	CustProps.put("NoCountryFlags", b)
	Options.put("noCountryFlags", b)
End Sub
'set No Results Emoji
Sub setNoResultsEmoji(s As String)
	sNoResultsEmoji = s
	CustProps.put("NoResultsEmoji", s)
	Options.put("noResultsEmoji", s)
End Sub
'set Per Line
Sub setPerLine(i As Int)
	iPerLine = i
	CustProps.put("PerLine", i)
	Options.put("perLine", i)
End Sub
'set Preview Emoji
Sub setPreviewEmoji(s As String)
	sPreviewEmoji = s
	CustProps.put("PreviewEmoji", s)
	Options.put("previewEmoji", s)
End Sub
'set Preview Position
'options: bottom|none|top
Sub setPreviewPosition(s As String)
	sPreviewPosition = s
	CustProps.put("PreviewPosition", s)
	Options.put("previewPosition", s)
End Sub
'set Search Position
'options: none|static|sticky
Sub setSearchPosition(s As String)
	sSearchPosition = s
	CustProps.put("SearchPosition", s)
	Options.put("searchPosition", s)
End Sub
'set Set Of
'options: apple|facebook|google|native|twitter
Sub setSetOf(s As String)
	sSetOf = s
	CustProps.put("SetOf", s)
	Options.put("set", s)
End Sub

'set Skin
Sub setSkin(i As Int)
	iSkin = i
	CustProps.put("Skin", i)
	Options.put("skin", i)
End Sub

'set Skin Tone Position
'options: none|preview|search
Sub setSkinTonePosition(s As String)
	sSkinTonePosition = s
	CustProps.put("SkinTonePosition", s)
	Options.put("skinTonePosition", s)
End Sub

'set Theme
'options: auto|dark|light
Sub setTheme(s As String)
	sTheme = s
	CustProps.put("Theme", s)
	Options.put("theme", s)
End Sub
'get Auto Focus
Sub getAutoFocus As Boolean
	Return bAutoFocus
End Sub
'get Dynamic Width
Sub getDynamicWidth As Boolean
	Return bDynamicWidth
End Sub
'get Emoji Button Size
Sub getEmojiButtonSize As Int
	Return iEmojiButtonSize
End Sub
'get Emoji Buttons Radius
Sub getEmojiButtonsRadius As String
	Return sEmojiButtonsRadius
End Sub
'get Emoji Size
Sub getEmojiSize As Int
	Return iEmojiSize
End Sub
'get Emoji Version
Sub getEmojiVersion As String
	Return sEmojiVersion
End Sub
'get Icons
Sub getIcons As String
	Return sIcons
End Sub
'get Locale
Sub getLocale As String
	Return sLocale
End Sub
'get Max Frequent Rows
Sub getMaxFrequentRows As Int
	Return iMaxFrequentRows
End Sub
'get Nav Position
Sub getNavPosition As String
	Return sNavPosition
End Sub
'get No Country Flags
Sub getNoCountryFlags As Boolean
	Return bNoCountryFlags
End Sub
'get No Results Emoji
Sub getNoResultsEmoji As String
	Return sNoResultsEmoji
End Sub
'get Per Line
Sub getPerLine As Int
	Return iPerLine
End Sub
'get Preview Emoji
Sub getPreviewEmoji As String
	Return sPreviewEmoji
End Sub
'get Preview Position
Sub getPreviewPosition As String
	Return sPreviewPosition
End Sub
'get Search Position
Sub getSearchPosition As String
	Return sSearchPosition
End Sub
'get Set Of
Sub getSetOf As String
	Return sSetOf
End Sub
'get Skin
Sub getSkin As Int
	Return iSkin
End Sub
'get Skin Tone Position
Sub getSkinTonePosition As String
	Return sSkinTonePosition
End Sub
'get Theme
Sub getTheme As String
	Return sTheme
End Sub