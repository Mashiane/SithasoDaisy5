B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Duration, DisplayName: Duration (ms), FieldType: Int, DefaultValue: 800, Description: Duration in milliseconds (50 - 3000)
#DesignerProperty: Key: Delay, DisplayName: Delay (ms), FieldType: Int, DefaultValue: 0, Description: Delay in milliseconds (0 - 3000)
#DesignerProperty: Key: Offset, DisplayName: Offset (px), FieldType: Int, DefaultValue: 120, Description: Offset from original trigger point (in px)
#DesignerProperty: Key: Easing, DisplayName: Easing, FieldType: String, DefaultValue: ease, Description: Easing function, List: ease|ease-in|ease-out|ease-in-out|ease-in-back|ease-out-back|ease-in-out-back|ease-in-sine|ease-out-sine|ease-in-out-sine|ease-in-quad|ease-out-quad|ease-in-out-quad|ease-in-cubic|ease-out-cubic|ease-in-out-cubic|ease-in-quart|ease-out-quart|ease-in-out-quart|linear
#DesignerProperty: Key: Once, DisplayName: Once, FieldType: Boolean, DefaultValue: False, Description: Whether animation should happen only once while scrolling down
#DesignerProperty: Key: Mirror, DisplayName: Mirror, FieldType: Boolean, DefaultValue: False, Description: Whether elements should animate out while scrolling past them
#DesignerProperty: Key: AnchorPlacement, DisplayName: Anchor Placement, FieldType: String, DefaultValue: top-bottom, Description: Defines which position of element regarding to window should trigger the animation, List: top-bottom|top-center|top-top|center-bottom|center-center|center-top|bottom-bottom|bottom-center|bottom-top
#DesignerProperty: Key: Disable, DisplayName: Disable, FieldType: String, DefaultValue: none, Description: Disable on device types, List: none|phone|tablet|mobile|true|false
#DesignerProperty: Key: StartEvent, DisplayName: Start Event, FieldType: String, DefaultValue: DOMContentLoaded, Description: DOM event that AOS should initialize on
#DesignerProperty: Key: ThrottleDelay, DisplayName: Throttle Delay (ms), FieldType: Int, DefaultValue: 99, Description: Delay on throttle used while resizing window (in ms)
#DesignerProperty: Key: DebounceDelay, DisplayName: Debounce Delay (ms), FieldType: Int, DefaultValue: 50, Description: Delay on debounce used while scrolling page (in ms)
#DesignerProperty: Key: DisableMutationObserver, DisplayName: Disable Mutation Observer, FieldType: Boolean, DefaultValue: False, Description: Disables automatic mutations detection

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

	Private bAOS As BANanoObject
	Private iDuration As Int = 800
	Private iDelay As Int = 0
	Private iOffset As Int = 120
	Private sEasing As String = "ease"
	Private bOnce As Boolean = False
	Private bMirror As Boolean = False
	Private sAnchorPlacement As String = "top-bottom"
	Private sDisable As String = "none"
	Private sStartEvent As String = "DOMContentLoaded"
	Private iThrottleDelay As Int = 99
	Private iDebounceDelay As Int = 50
	Private bDisableMutationObserver As Boolean = False

	' Animation constants
	Public CONST ANIM_FADE As String = "fade"
	Public CONST ANIM_FADE_UP As String = "fade-up"
	Public CONST ANIM_FADE_DOWN As String = "fade-down"
	Public CONST ANIM_FADE_LEFT As String = "fade-left"
	Public CONST ANIM_FADE_RIGHT As String = "fade-right"
	Public CONST ANIM_FADE_UP_RIGHT As String = "fade-up-right"
	Public CONST ANIM_FADE_UP_LEFT As String = "fade-up-left"
	Public CONST ANIM_FADE_DOWN_RIGHT As String = "fade-down-right"
	Public CONST ANIM_FADE_DOWN_LEFT As String = "fade-down-left"
	Public CONST ANIM_FLIP_UP As String = "flip-up"
	Public CONST ANIM_FLIP_DOWN As String = "flip-down"
	Public CONST ANIM_FLIP_LEFT As String = "flip-left"
	Public CONST ANIM_FLIP_RIGHT As String = "flip-right"
	Public CONST ANIM_SLIDE_UP As String = "slide-up"
	Public CONST ANIM_SLIDE_DOWN As String = "slide-down"
	Public CONST ANIM_SLIDE_LEFT As String = "slide-left"
	Public CONST ANIM_SLIDE_RIGHT As String = "slide-right"
	Public CONST ANIM_ZOOM_IN As String = "zoom-in"
	Public CONST ANIM_ZOOM_IN_UP As String = "zoom-in-up"
	Public CONST ANIM_ZOOM_IN_DOWN As String = "zoom-in-down"
	Public CONST ANIM_ZOOM_IN_LEFT As String = "zoom-in-left"
	Public CONST ANIM_ZOOM_IN_RIGHT As String = "zoom-in-right"
	Public CONST ANIM_ZOOM_OUT As String = "zoom-out"

	' Easing constants
	Public CONST EASING_LINEAR As String = "linear"
	Public CONST EASING_EASE As String = "ease"
	Public CONST EASING_EASE_IN As String = "ease-in"
	Public CONST EASING_EASE_OUT As String = "ease-out"
	Public CONST EASING_EASE_IN_OUT As String = "ease-in-out"
	Public CONST EASING_EASE_IN_BACK As String = "ease-in-back"
	Public CONST EASING_EASE_OUT_BACK As String = "ease-out-back"
	Public CONST EASING_EASE_IN_OUT_BACK As String = "ease-in-out-back"
	Public CONST EASING_EASE_IN_SINE As String = "ease-in-sine"
	Public CONST EASING_EASE_OUT_SINE As String = "ease-out-sine"
	Public CONST EASING_EASE_IN_OUT_SINE As String = "ease-in-out-sine"
	Public CONST EASING_EASE_IN_QUAD As String = "ease-in-quad"
	Public CONST EASING_EASE_OUT_QUAD As String = "ease-out-quad"
	Public CONST EASING_EASE_IN_OUT_QUAD As String = "ease-in-out-quad"
	Public CONST EASING_EASE_IN_CUBIC As String = "ease-in-cubic"
	Public CONST EASING_EASE_OUT_CUBIC As String = "ease-out-cubic"
	Public CONST EASING_EASE_IN_OUT_CUBIC As String = "ease-in-out-cubic"
	Public CONST EASING_EASE_IN_QUART As String = "ease-in-quart"
	Public CONST EASING_EASE_OUT_QUART As String = "ease-out-quart"
	Public CONST EASING_EASE_IN_OUT_QUART As String = "ease-in-out-quart"

	' Anchor placement constants
	Public CONST ANCHOR_TOP_BOTTOM As String = "top-bottom"
	Public CONST ANCHOR_TOP_CENTER As String = "top-center"
	Public CONST ANCHOR_TOP_TOP As String = "top-top"
	Public CONST ANCHOR_CENTER_BOTTOM As String = "center-bottom"
	Public CONST ANCHOR_CENTER_CENTER As String = "center-center"
	Public CONST ANCHOR_CENTER_TOP As String = "center-top"
	Public CONST ANCHOR_BOTTOM_BOTTOM As String = "bottom-bottom"
	Public CONST ANCHOR_BOTTOM_CENTER As String = "bottom-center"
	Public CONST ANCHOR_BOTTOM_TOP As String = "bottom-top"
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("AOS") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesAOS)' should be added for '${Name}'"$)
		Return
	End If
	BANano.DependsOnAsset("aos.css")
	BANano.DependsOnAsset("aos.js")
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Duration", 800)
	CustProps.Put("Delay", 0)
	CustProps.Put("Offset", 120)
	CustProps.Put("Easing", "ease")
	CustProps.Put("Once", False)
	CustProps.Put("Mirror", False)
	CustProps.Put("AnchorPlacement", "top-bottom")
	CustProps.Put("Disable", "none")
	CustProps.Put("StartEvent", "DOMContentLoaded")
	CustProps.Put("ThrottleDelay", 99)
	CustProps.Put("DebounceDelay", 50)
	CustProps.Put("DisableMutationObserver", False)
End Sub

'returns the element id
Public Sub getID() As String
	Return mName
End Sub

'set properties from an outside source
Public Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.Get("ParentID")
End Sub

Public Sub GetProperties As Map
	Return CustProps
End Sub

'add this component using current props (headless, initializes AOS)
Public Sub AddComponent
	Init
End Sub

'remove this element / cleanup
Public Sub Remove()
	BANano.SetMeToNull
End Sub

'set the parent id
Public Sub setParentID(s As String)
	s = UI.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub

'get the parent id
Public Sub getParentID As String
	Return sParentID
End Sub

'return the #ID of the element
Public Sub getHere() As String
	Return $"#${mName}"$
End Sub

'use to add an event
Public Sub OnEvent(event As String, methodName As String)
	' Headless component event registration
End Sub

'set Duration in milliseconds
Public Sub setDuration(i As Int)
	iDuration = UI.CInt(i)
	CustProps.Put("Duration", iDuration)
End Sub

Public Sub getDuration As Int
	Return iDuration
End Sub

'set Delay in milliseconds
Public Sub setDelay(i As Int)
	iDelay = UI.CInt(i)
	CustProps.Put("Delay", iDelay)
End Sub

Public Sub getDelay As Int
	Return iDelay
End Sub

'set Offset in px
Public Sub setOffset(i As Int)
	iOffset = UI.CInt(i)
	CustProps.Put("Offset", iOffset)
End Sub

Public Sub getOffset As Int
	Return iOffset
End Sub

'set Easing function
Public Sub setEasing(s As String)
	sEasing = s
	CustProps.Put("Easing", s)
End Sub

Public Sub getEasing As String
	Return sEasing
End Sub

'set Once
Public Sub setOnce(b As Boolean)
	bOnce = UI.CBool(b)
	CustProps.Put("Once", bOnce)
End Sub

Public Sub getOnce As Boolean
	Return bOnce
End Sub

'set Mirror
Public Sub setMirror(b As Boolean)
	bMirror = UI.CBool(b)
	CustProps.Put("Mirror", bMirror)
End Sub

Public Sub getMirror As Boolean
	Return bMirror
End Sub

'set Anchor Placement
Public Sub setAnchorPlacement(s As String)
	sAnchorPlacement = s
	CustProps.Put("AnchorPlacement", s)
End Sub

Public Sub getAnchorPlacement As String
	Return sAnchorPlacement
End Sub

'set Disable condition: none|phone|tablet|mobile|true|false
Public Sub setDisable(s As String)
	sDisable = s
	CustProps.Put("Disable", s)
End Sub

Public Sub getDisable As String
	Return sDisable
End Sub

'set Start Event name
Public Sub setStartEvent(s As String)
	sStartEvent = s
	CustProps.Put("StartEvent", s)
End Sub

Public Sub getStartEvent As String
	Return sStartEvent
End Sub

'set Throttle Delay in ms
Public Sub setThrottleDelay(i As Int)
	iThrottleDelay = UI.CInt(i)
	CustProps.Put("ThrottleDelay", iThrottleDelay)
End Sub

Public Sub getThrottleDelay As Int
	Return iThrottleDelay
End Sub

'set Debounce Delay in ms
Public Sub setDebounceDelay(i As Int)
	iDebounceDelay = UI.CInt(i)
	CustProps.Put("DebounceDelay", iDebounceDelay)
End Sub

Public Sub getDebounceDelay As Int
	Return iDebounceDelay
End Sub

'set Disable Mutation Observer
Public Sub setDisableMutationObserver(b As Boolean)
	bDisableMutationObserver = UI.CBool(b)
	CustProps.Put("DisableMutationObserver", bDisableMutationObserver)
End Sub

Public Sub getDisableMutationObserver As Boolean
	Return bDisableMutationObserver
End Sub

'build the options map for AOS.init
Public Sub BuildOptions As Map
	Dim opt As Map = CreateMap()
	opt.Put("duration", iDuration)
	opt.Put("delay", iDelay)
	opt.Put("offset", iOffset)
	opt.Put("easing", sEasing)
	opt.Put("once", bOnce)
	opt.Put("mirror", bMirror)
	opt.Put("anchorPlacement", sAnchorPlacement)
	If sDisable <> "none" And sDisable <> "" Then
		If sDisable = "true" Then
			opt.Put("disable", True)
		Else If sDisable = "false" Then
			opt.Put("disable", False)
		Else
			opt.Put("disable", sDisable)
		End If
	End If
	If sStartEvent <> "" Then opt.Put("startEvent", sStartEvent)
	opt.Put("throttleDelay", iThrottleDelay)
	opt.Put("debounceDelay", iDebounceDelay)
	opt.Put("disableMutationObserver", bDisableMutationObserver)
	Return opt
End Sub

'code to design the view (headless, initializes AOS without creating DOM element)
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		iDuration = Props.GetDefault("Duration", 800)
		iDuration = UI.CInt(iDuration)
		iDelay = Props.GetDefault("Delay", 0)
		iDelay = UI.CInt(iDelay)
		iOffset = Props.GetDefault("Offset", 120)
		iOffset = UI.CInt(iOffset)
		sEasing = Props.GetDefault("Easing", "ease")
		sEasing = UI.CStr(sEasing)
		bOnce = Props.GetDefault("Once", False)
		bOnce = UI.CBool(bOnce)
		bMirror = Props.GetDefault("Mirror", False)
		bMirror = UI.CBool(bMirror)
		sAnchorPlacement = Props.GetDefault("AnchorPlacement", "top-bottom")
		sAnchorPlacement = UI.CStr(sAnchorPlacement)
		sDisable = Props.GetDefault("Disable", "none")
		sDisable = UI.CStr(sDisable)
		sStartEvent = Props.GetDefault("StartEvent", "DOMContentLoaded")
		sStartEvent = UI.CStr(sStartEvent)
		iThrottleDelay = Props.GetDefault("ThrottleDelay", 99)
		iThrottleDelay = UI.CInt(iThrottleDelay)
		iDebounceDelay = Props.GetDefault("DebounceDelay", 50)
		iDebounceDelay = UI.CInt(iDebounceDelay)
		bDisableMutationObserver = Props.GetDefault("DisableMutationObserver", False)
		bDisableMutationObserver = UI.CBool(bDisableMutationObserver)
	End If
	Init
End Sub

'initialize AOS with current properties
Public Sub Init
	Dim opt As Map = BuildOptions
	bAOS.Initialize("AOS")
	bAOS.RunMethod("init", Array(opt))
End Sub

'initialize AOS with a custom options map
Public Sub InitWithOptions(options As Map)
	bAOS.Initialize("AOS")
	If options = Null Then
		bAOS.RunMethod("init", Null)
	Else
		bAOS.RunMethod("init", Array(options))
	End If
End Sub

'refresh AOS positions and offsets
Public Sub Refresh
	bAOS.Initialize("AOS")
	bAOS.RunMethod("refresh", Null)
End Sub

'hard refresh AOS (re-detects new DOM elements)
Public Sub RefreshHard
	bAOS.Initialize("AOS")
	bAOS.RunMethod("refreshHard", Null)
End Sub

'apply AOS animation to an element or selector
Public Sub Animate(selectorOrID As String, animation As String) As SDUI5AOS
	If selectorOrID.StartsWith("#") = False And selectorOrID.StartsWith(".") = False Then
		selectorOrID = "#" & selectorOrID
	End If
	Dim el As BANanoElement = BANano.GetElement(selectorOrID)
	el.SetAttr("data-aos", animation)
	Return Me
End Sub

'apply AOS animation with options to an element or selector
Public Sub AnimateAdvanced(selectorOrID As String, animation As String, duration As Int, delay As Int, once As Boolean, offset As Int, easing As String) As SDUI5AOS
	If selectorOrID.StartsWith("#") = False And selectorOrID.StartsWith(".") = False Then
		selectorOrID = "#" & selectorOrID
	End If
	Dim el As BANanoElement = BANano.GetElement(selectorOrID)
	el.SetAttr("data-aos", animation)
	If duration > 0 Then el.SetAttr("data-aos-duration", duration)
	If delay > 0 Then el.SetAttr("data-aos-delay", delay)
	If once Then el.SetAttr("data-aos-once", "true")
	If offset > 0 Then el.SetAttr("data-aos-offset", offset)
	If easing <> "" Then el.SetAttr("data-aos-easing", easing)
	Return Me
End Sub

'set animation type on target element
Public Sub SetAnimation(selectorOrID As String, animation As String) As SDUI5AOS
	Return Animate(selectorOrID, animation)
End Sub

'set animation duration on target element
Public Sub SetDurationOn(selectorOrID As String, duration As Int) As SDUI5AOS
	If selectorOrID.StartsWith("#") = False And selectorOrID.StartsWith(".") = False Then selectorOrID = "#" & selectorOrID
	BANano.GetElement(selectorOrID).SetAttr("data-aos-duration", duration)
	Return Me
End Sub

'set animation delay on target element
Public Sub SetDelayOn(selectorOrID As String, delay As Int) As SDUI5AOS
	If selectorOrID.StartsWith("#") = False And selectorOrID.StartsWith(".") = False Then selectorOrID = "#" & selectorOrID
	BANano.GetElement(selectorOrID).SetAttr("data-aos-delay", delay)
	Return Me
End Sub

'set animation easing on target element
Public Sub SetEasingOn(selectorOrID As String, easing As String) As SDUI5AOS
	If selectorOrID.StartsWith("#") = False And selectorOrID.StartsWith(".") = False Then selectorOrID = "#" & selectorOrID
	BANano.GetElement(selectorOrID).SetAttr("data-aos-easing", easing)
	Return Me
End Sub

'set anchor on target element
Public Sub SetAnchorOn(selectorOrID As String, anchorSelector As String) As SDUI5AOS
	If selectorOrID.StartsWith("#") = False And selectorOrID.StartsWith(".") = False Then selectorOrID = "#" & selectorOrID
	BANano.GetElement(selectorOrID).SetAttr("data-aos-anchor", anchorSelector)
	Return Me
End Sub

'set anchor placement on target element
Public Sub SetAnchorPlacementOn(selectorOrID As String, placement As String) As SDUI5AOS
	If selectorOrID.StartsWith("#") = False And selectorOrID.StartsWith(".") = False Then selectorOrID = "#" & selectorOrID
	BANano.GetElement(selectorOrID).SetAttr("data-aos-anchor-placement", placement)
	Return Me
End Sub

'set once on target element
Public Sub SetOnceOn(selectorOrID As String, once As Boolean) As SDUI5AOS
	If selectorOrID.StartsWith("#") = False And selectorOrID.StartsWith(".") = False Then selectorOrID = "#" & selectorOrID
	BANano.GetElement(selectorOrID).SetAttr("data-aos-once", once)
	Return Me
End Sub
