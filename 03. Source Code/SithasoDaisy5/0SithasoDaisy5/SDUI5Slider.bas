B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
#Event: PageChanged (index As Int)
#Event: ItemClicked (id As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Orientation, DisplayName: Orientation, FieldType: String, DefaultValue: horizontal, Description: Orientation, List: horizontal|vertical
#DesignerProperty: Key: ShowButtons, DisplayName: Show Buttons, FieldType: Boolean, DefaultValue: False, Description: Show Navigation Buttons
#DesignerProperty: Key: ShowIndicators, DisplayName: Show Indicators, FieldType: Boolean, DefaultValue: True, Description: Show Page Indicators
#DesignerProperty: Key: Loop, DisplayName: Loop, FieldType: Boolean, DefaultValue: False, Description: Enable Looping
#DesignerProperty: Key: Autoplay, DisplayName: Autoplay, FieldType: Boolean, DefaultValue: True, Description: Enable Autoplay
#DesignerProperty: Key: AutoplayInterval, DisplayName: Autoplay Interval, FieldType: Int, DefaultValue: 3000, Description: Autoplay interval in milliseconds
#DesignerProperty: Key: AllowNext, DisplayName: Allow Next, FieldType: Boolean, DefaultValue: True, Description: Allow next navigation
#DesignerProperty: Key: AllowBack, DisplayName: Allow Back, FieldType: Boolean, DefaultValue: True, Description: Allow back navigation
#DesignerProperty: Key: LazyLoading, DisplayName: Lazy Loading, FieldType: Boolean, DefaultValue: False, Description: Enable lazy loading
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 900px, Description: Width
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: DaisyUI shadow class, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: DaisyUI rounded class, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
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
	Private sOrientation As String = "horizontal"
	Private bShowButtons As Boolean = False
	Private bShowIndicators As Boolean = True
	Private bLoop As Boolean = False
	Private bAutoplay As Boolean = True
	Private iAutoplayInterval As Int = 3000
	Private bAllowNext As Boolean = True
	Private bAllowBack As Boolean = True
	Private bLazyLoading As Boolean = False
	Private sHeight As String = "500px"
	Private sWidth As String = "900px"
	Private sShadow As String = "none"
	Private sRounded As String = "none"
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	BANano.DependsOnAsset("SithasoSlider.min.js")
	If BANano.AssetsIsDefined("Slider") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesSlider)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Orientation", "horizontal")
	CustProps.Put("ShowButtons", False)
	CustProps.Put("ShowIndicators", True)
	CustProps.Put("Loop", False)
	CustProps.Put("Autoplay", True)
	CustProps.Put("AutoplayInterval", 3000)
	CustProps.Put("AllowNext", True)
	CustProps.Put("AllowBack", True)
	CustProps.Put("LazyLoading", False)
	CustProps.Put("Height", "500px")
	CustProps.Put("Width", "900px")
	CustProps.Put("Shadow", "none")
	CustProps.Put("Rounded", "none")
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

'set Position Style
'options: static|relative|fixed|absolute|sticky|none
Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.put("PositionStyle", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyle(mElement, "position", s)
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

Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub

Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub

Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub

Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub

Sub getAttributes As String
	Return sRawAttributes
End Sub

Sub getStyles As String
	Return sRawStyles
End Sub

Sub getClasses As String
	Return sRawClasses
End Sub

Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub

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
		sOrientation = Props.GetDefault("Orientation", "horizontal")
		sOrientation = UI.CStr(sOrientation)
		bShowButtons = Props.GetDefault("ShowButtons", False)
		bShowButtons = UI.CBool(bShowButtons)
		bShowIndicators = Props.GetDefault("ShowIndicators", True)
		bShowIndicators = UI.CBool(bShowIndicators)
		bLoop = Props.GetDefault("Loop", False)
		bLoop = UI.CBool(bLoop)
		bAutoplay = Props.GetDefault("Autoplay", True)
		bAutoplay = UI.CBool(bAutoplay)
		iAutoplayInterval = Props.GetDefault("AutoplayInterval", 3000)
		iAutoplayInterval = UI.CInt(iAutoplayInterval)
		bAllowNext = Props.GetDefault("AllowNext", True)
		bAllowNext = UI.CBool(bAllowNext)
		bAllowBack = Props.GetDefault("AllowBack", True)
		bAllowBack = UI.CBool(bAllowBack)
		bLazyLoading = Props.GetDefault("LazyLoading", False)
		bLazyLoading = UI.CBool(bLazyLoading)
		sHeight = Props.GetDefault("Height", "500px")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "900px")
		sWidth = UI.CStr(sWidth)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
	End If
	'
	' Add attributes using AddAttrDT
	UI.AddAttrDT("orientation", sOrientation)
	UI.AddAttrDT("show-buttons", bShowButtons)
	UI.AddAttrDT("show-indicators", bShowIndicators)
	UI.AddAttrDT("loop", bLoop)
	UI.AddAttrDT("autoplay", bAutoplay)
	UI.AddAttrDT("autoplay-interval", iAutoplayInterval)
	UI.AddAttrDT("allownext", bAllowNext)
	UI.AddAttrDT("allowback", bAllowBack)
	UI.AddAttrDT("lazyloading", bLazyLoading)
	UI.AddWidthDT(sWidth)
	UI.AddHeightDT(sHeight)
	UI.AddAttrDT("tabindex", "0")  ' Make focusable for keyboard events
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
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
	mElement = mTarget.Append($"[BANCLEAN]<sithaso-slider id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></sithaso-slider>"$).Get("#" & mName)
	' Add event listeners
	mElement.On("pagechanged", Me, "PageChanged")
	mElement.On("itemclicked", Me, "itemclicked")
End Sub

'set Orientation
Sub setOrientation(s As String)
	sOrientation = s
	CustProps.put("Orientation", s)
	If mElement = Null Then Return
	mElement.SetAttr("orientation", s)
End Sub

'set Show Buttons
Sub setShowButtons(b As Boolean)
	bShowButtons = b
	CustProps.put("ShowButtons", b)
	If mElement = Null Then Return
	mElement.SetAttr("show-buttons", b)
End Sub

'set Show Indicators
Sub setShowIndicators(b As Boolean)
	bShowIndicators = b
	CustProps.put("ShowIndicators", b)
	If mElement = Null Then Return
	mElement.SetAttr("show-indicators", b)
End Sub

'set Loop
Sub setLoop(b As Boolean)
	bLoop = b
	CustProps.put("Loop", b)
	If mElement = Null Then Return
	mElement.SetAttr("loop", b)
End Sub

'set Autoplay
Sub setAutoplay(b As Boolean)
	bAutoplay = b
	CustProps.put("Autoplay", b)
	If mElement = Null Then Return
	mElement.SetAttr("autoplay", b)
End Sub

'set Autoplay Interval
Sub setAutoplayInterval(i As Int)
	iAutoplayInterval = i
	CustProps.put("AutoplayInterval", i)
	If mElement = Null Then Return
	mElement.SetAttr("autoplay-interval", i)
End Sub

'set Allow Next
Sub setAllowNext(b As Boolean)
	bAllowNext = b
	CustProps.put("AllowNext", b)
	If mElement = Null Then Return
	mElement.SetAttr("allownext", b)
End Sub

'set Allow Back
Sub setAllowBack(b As Boolean)
	bAllowBack = b
	CustProps.put("AllowBack", b)
	If mElement = Null Then Return
	mElement.SetAttr("allowback", b)
End Sub

'set Lazy Loading
Sub setLazyLoading(b As Boolean)
	bLazyLoading = b
	CustProps.put("LazyLoading", b)
	If mElement = Null Then Return
	mElement.SetAttr("lazyloading", b)
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	UI.SetHeight(mElement, sHeight)
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	UI.SetWidth(mElement, sWidth)
End Sub

'set Shadow
Sub setShadow(value As String)
	sShadow = value
	CustProps.put("Shadow", value)
	If value <> "" Then UI.SetShadow(mElement, sShadow)
End Sub

'set Rounded
Sub setRounded(value As String)
	sRounded = value
	CustProps.put("Rounded", value)
	If mElement = Null Then Return
	If value <> "" Then UI.SetRounded(mElement, sRounded)
End Sub

'get Orientation
Sub getOrientation As String
	Return sOrientation
End Sub

'get Show Buttons
Sub getShowButtons As Boolean
	Return bShowButtons
End Sub

'get Show Indicators
Sub getShowIndicators As Boolean
	Return bShowIndicators
End Sub

'get Loop
Sub getLoop As Boolean
	Return bLoop
End Sub

'get Autoplay
Sub getAutoplay As Boolean
	Return bAutoplay
End Sub

'get Autoplay Interval
Sub getAutoplayInterval As Int
	Return iAutoplayInterval
End Sub

'get Allow Next
Sub getAllowNext As Boolean
	Return bAllowNext
End Sub

'get Allow Back
Sub getAllowBack As Boolean
	Return bAllowBack
End Sub

'get Lazy Loading
Sub getLazyLoading As Boolean
	Return bLazyLoading
End Sub

'get Height
Sub getHeight As String
	Return sHeight
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'get Rounded
Sub getRounded As String
	Return sRounded
End Sub

'Add an item to the carousel
Public Sub AddItem(ItemID As String, Src As String)
	If mElement = Null Then Return
	mElement.RunMethod("addItem", Array(ItemID, Src))
End Sub

'Add a page to the carousel
Public Sub AddPage(PageElement As BANanoElement, Value As String)
	If mElement = Null Then Return
	mElement.RunMethod("AddPage", Array(PageElement, Value))
End Sub

'Add a page at specific index
Public Sub AddPageAt(PageElement As BANanoElement, Index As Int, Value As String)
	If mElement = Null Then Return
	mElement.RunMethod("AddPageAt", Array(PageElement, Index, Value))
End Sub

'Get panel at index
Public Sub GetPanel(Index As Int) As BANanoObject
	If mElement = Null Then Return Null
	Return mElement.RunMethod("GetPanel", Array(Index)).Result
End Sub

'Get value at index
Public Sub GetValue(Index As Int) As String
	If mElement = Null Then Return ""
	Return mElement.RunMethod("GetValue", Array(Index)).Result
End Sub

'Remove page at index
Public Sub RemovePageAt(Index As Int)
	If mElement = Null Then Return
	mElement.RunMethod("RemovePageAt", Array(Index))
End Sub

'Set lazy loading extra size
Public Sub SetLazyLoadingExtraSize(Size As Int)
	If mElement = Null Then Return
	mElement.RunMethod("setLazyLoadingExtraSize", Array(Size))
End Sub

'Set lazy loading add content handler
Public Sub SetLazyLoadingAddContent(Handler As Object)
	If mElement = Null Then Return
	mElement.RunMethod("setLazyLoadingAddContent", Array(Handler))
End Sub

'Get the current index
Public Sub GetIndex As Int
	If mElement = Null Then Return 0
	Return mElement.RunMethod("getIndex", Null).Result
End Sub

'Set the current index
Public Sub SetIndex(index As Int)
	If mElement = Null Then Return
	mElement.RunMethod("setIndex", Array(index))
End Sub

'Next page
Public Sub NextPage
	If mElement = Null Then Return
	mElement.RunMethod("nextPage", Null)
End Sub

'Previous page
Public Sub PreviousPage
	If mElement = Null Then Return
	mElement.RunMethod("previousPage", Null)
End Sub

'Get size
Public Sub GetSize As Int
	If mElement = Null Then Return 0
	Return mElement.RunMethod("getSize", Null).Result
End Sub

'Clear all items
Public Sub Clear
	If mElement = Null Then Return
	mElement.RunMethod("clear", Null)
End Sub

'Start autoplay
Public Sub StartAutoplay
	If mElement = Null Then Return
	mElement.RunMethod("startAutoplay", Null)
End Sub

'Stop autoplay
Public Sub StopAutoplay
	If mElement = Null Then Return
	mElement.RunMethod("stopAutoplay", Null)
End Sub

'Event handlers
Private Sub PageChanged (e As BANanoEvent)
	Dim d As Object = e.Detail
	Dim m As Map = d
	Dim index As Int = m.Get("index")
	If SubExists(mCallBack, mEventName & "_pagechanged") Then
		CallSub2(mCallBack, mEventName & "_pagechanged", index)
	End If
End Sub

Private Sub ItemClicked_Event (e As BANanoEvent)
	Dim d As Object = e.Detail
	Dim m As Map = d
	Dim id As String = m.Get("id")
	If SubExists(mCallBack, mEventName & "_itemclicked") Then
		CallSub2(mCallBack, mEventName & "_itemclicked", id)
	End If
End Sub

Private Sub MouseEnter_Event (e As BANanoEvent)
	If mElement = Null Then Return
	mElement.RunMethod("stopAutoplay", Null)
End Sub

Private Sub MouseLeave_Event (e As BANanoEvent)
	If mElement = Null Then Return
	If bAutoplay Then mElement.RunMethod("startAutoplay", Null)
End Sub
