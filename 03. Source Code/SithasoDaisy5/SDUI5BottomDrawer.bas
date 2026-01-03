B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Open, DisplayName: Open, FieldType: Boolean, DefaultValue: False, Description: Open
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: bg-base-200, Description: Background Color
#DesignerProperty: Key: Breakpoints, DisplayName: Breakpoints, FieldType: String, DefaultValue: 0;0.1;0.2;0.3;0.4;0.5;0.7;0.8;1, Description: Breakpoints
#DesignerProperty: Key: InitialBreakpoint, DisplayName: Initial Breakpoint, FieldType: String, DefaultValue: 0.5, Description: Initial Breakpoint
#DesignerProperty: Key: Duration, DisplayName: Duration, FieldType: Int, DefaultValue: 300, Description: Duration
#DesignerProperty: Key: ShowHandle, DisplayName: Show Handle, FieldType: Boolean, DefaultValue: True, Description: Show Handle
#DesignerProperty: Key: HandleBg, DisplayName: Handle Background, FieldType: String, DefaultValue: bg-base-300, Description: Handle Background
#DesignerProperty: Key: HandleShadow, DisplayName: Handle Shadow, FieldType: String, DefaultValue: md, Description: Handle Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: 100%, Description: Max Width
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Width
#DesignerProperty: Key: Showbackdrop, DisplayName: Showbackdrop, FieldType: Boolean, DefaultValue: True, Description: Show Backdrop
#DesignerProperty: Key: BackdropColor, DisplayName: Backdrop Color, FieldType: String, DefaultValue: #00000052, Description: Backdrop Color
#DesignerProperty: Key: Backdropdismiss, DisplayName: Backdropdismiss, FieldType: Boolean, DefaultValue: True, Description: Backdrop Dismiss

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
	Private sBackdropColor As String = "#00000052"
	Private bBackdropdismiss As Boolean = True
	Private sBackgroundColor As String = "bg-base-200"
	Private sBreakpoints As String = "0;0.1;0.2;0.3;0.4;0.5;0.7;0.8;1"
	Private iDuration As Int = 300
	Private sHandleBg As String = "bg-base-300"
	Private sHandleShadow As String = "md"
	Private sInitialBreakpoint As String = "0.5"
	Private sMaxWidth As String = "100%"
	Private bOpen As Boolean = False
	Private bShowHandle As Boolean = True
	Private bShowbackdrop As Boolean = True
	Private sWidth As String = "100%"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	BANano.DependsOnAsset("daisy-sheet.js")
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")                            'String (empty by default)
	CustProps.Put("Open", False)                             'Boolean
	CustProps.Put("BackgroundColor", "bg-base-200")          'String
	CustProps.Put("Breakpoints", "0;0.1;0.2;0.3;0.4;0.5;0.7;0.8;1") 'String
	CustProps.Put("InitialBreakpoint", "0.5")                'String
	CustProps.Put("Duration", 300)                           'Int
	CustProps.Put("ShowHandle", True)                        'Boolean
	CustProps.Put("HandleBg", "bg-base-300")                 'String
	CustProps.Put("HandleShadow", "md")                      'String
	CustProps.Put("MaxWidth", "100%")                        'String
	CustProps.Put("Width", "100%")                           'String
	CustProps.Put("Showbackdrop", True)                      'Boolean
	CustProps.Put("BackdropColor", "#00000052")              'String
	CustProps.Put("Backdropdismiss", True)                   'Boolean
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
		'UI.ExcludeTextColor = True
		UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sBackdropColor = Props.GetDefault("BackdropColor", "#00000052")
		sBackdropColor = UI.CStr(sBackdropColor)
		bBackdropdismiss = Props.GetDefault("Backdropdismiss", True)
		bBackdropdismiss = UI.CBool(bBackdropdismiss)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "bg-base-200")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		sBreakpoints = Props.GetDefault("Breakpoints", "0;0.1;0.2;0.3;0.4;0.5;0.7;0.8;1")
		sBreakpoints = UI.CStr(sBreakpoints)
		iDuration = Props.GetDefault("Duration", 300)
		iDuration = UI.CInt(iDuration)
		sHandleBg = Props.GetDefault("HandleBg", "bg-base-300")
		sHandleBg = UI.CStr(sHandleBg)
		sHandleShadow = Props.GetDefault("HandleShadow", "md")
		sHandleShadow = UI.CStr(sHandleShadow)
		sInitialBreakpoint = Props.GetDefault("InitialBreakpoint", "0.5")
		sInitialBreakpoint = UI.CStr(sInitialBreakpoint)
		sMaxWidth = Props.GetDefault("MaxWidth", "100%")
		sMaxWidth = UI.CStr(sMaxWidth)
		bOpen = Props.GetDefault("Open", False)
		bOpen = UI.CBool(bOpen)
		bShowHandle = Props.GetDefault("ShowHandle", True)
		bShowHandle = UI.CBool(bShowHandle)
		bShowbackdrop = Props.GetDefault("Showbackdrop", True)
		bShowbackdrop = UI.CBool(bShowbackdrop)
		sWidth = Props.GetDefault("Width", "100%")
		sWidth = UI.CStr(sWidth)
	End If
	'
	sBreakpoints = sBreakpoints.Replace(";",",")
	UI.AddClassDT("z-99")
	If bBackdropdismiss = True Then UI.AddAttrDT("backdropdismiss", bBackdropdismiss)
	If sBackgroundColor <> "" Then UI.AddAttrDT("background-color", sBackgroundColor)
	If sBreakpoints <> "" Then UI.AddAttrDT("breakpoints", sBreakpoints)
	UI.AddAttrDT("duration", iDuration)
	If sHandleBg <> "" Then UI.AddAttrDT("handle-bg", sHandleBg)
	If sHandleShadow <> "" Then UI.AddAttrDT("handle-shadow", sHandleShadow)
	If sInitialBreakpoint <> "" Then UI.AddAttrDT("initial-breakpoint", sInitialBreakpoint)
	If sMaxWidth <> "" Then UI.AddAttrDT("max-width", sMaxWidth)
	If bOpen = True Then UI.AddAttrDT("open", bOpen)
	If bShowbackdrop = True Then UI.AddAttrDT("showbackdrop", bShowbackdrop)
	If sWidth <> "" Then UI.AddAttrDT("width", sWidth)
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
	mElement = mTarget.Append($"[BANCLEAN]<daisy-sheet id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></daisy-sheet>"$).Get("#" & mName)
End Sub

'set Backdrop Color
Sub setBackdropColor(s As String)
	sBackdropColor = s
	CustProps.put("BackdropColor", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "backdrop-color", sBackdropColor)
End Sub

'set Backdropdismiss
Sub setBackdropdismiss(b As Boolean)
	bBackdropdismiss = b
	CustProps.put("Backdropdismiss", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "backdropdismiss", b)
	Else
		UI.RemoveAttr(mElement, "backdropdismiss")
	End If
End Sub

'set Background Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "background-color", s)
End Sub
'set Breakpoints
Sub setBreakpoints(s As String)
	sBreakpoints = s
	sBreakpoints = sBreakpoints.Replace(";",",")
	CustProps.put("Breakpoints", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "breakpoints", s)
End Sub
'set Duration
Sub setDuration(i As Int)
	iDuration = i
	CustProps.put("Duration", i)
	If mElement = Null Then Return
	UI.AddAttr(mElement, "duration", i)
End Sub
'set Handle Bg
Sub setHandleBg(s As String)
	sHandleBg = s
	CustProps.put("HandleBg", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "handle-bg", s)
End Sub
'set Handle Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setHandleShadow(s As String)
	sHandleShadow = s
	CustProps.put("HandleShadow", s)
	If mElement = Null Then Return
	Dim sShadow As String = UI.FixShadow(sHandleShadow)
	If s <> "" Then UI.AddAttr(mElement, "handle-shadow", sShadow)
End Sub
'set Initial Breakpoint
Sub setInitialBreakpoint(s As String)
	sInitialBreakpoint = s
	CustProps.put("InitialBreakpoint", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "initial-breakpoint", s)
End Sub
'set Max Width
Sub setMaxWidth(s As String)
	sMaxWidth = s
	CustProps.put("MaxWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "max-width", s)
End Sub

'set Open
Sub setOpen(b As Boolean)
	bOpen = b
	CustProps.put("Open", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "open", b)
	Else
		UI.RemoveAttr(mElement, "open")
	End If
End Sub

'set Show Handle
Sub setShowHandle(b As Boolean)
	bShowHandle = b
	CustProps.put("ShowHandle", b)
	If mElement = Null Then Return
	mElement.SetField("handleVisible", bShowHandle)
End Sub

'set Showbackdrop
Sub setShowbackdrop(b As Boolean)
	bShowbackdrop = b
	CustProps.put("Showbackdrop", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "showbackdrop", b)
	Else
		UI.RemoveAttr(mElement, "showbackdrop")
	End If
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "width", s)
End Sub

'show the bottom drawer
Sub Show
	If mElement = Null Then Return
	mElement.RunMethod("show", Null)
End Sub

Sub ShowOnBreakPoint(bp As Double)
	If mElement = Null Then Return
	mElement.RunMethod("show", Array(bp))
End Sub

Sub Hide
	If mElement = Null Then Return
	mElement.RunMethod("hide", Null)
End Sub

'get Backdrop Color
Sub getBackdropColor As String
	Return sBackdropColor
End Sub
'get Backdropdismiss
Sub getBackdropdismiss As Boolean
	Return bBackdropdismiss
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Breakpoints
Sub getBreakpoints As String
	Return sBreakpoints
End Sub
'get Duration
Sub getDuration As Int
	Return iDuration
End Sub
'get Handle Bg
Sub getHandleBg As String
	Return sHandleBg
End Sub
'get Handle Shadow
Sub getHandleShadow As String
	Return sHandleShadow
End Sub
'get Initial Breakpoint
Sub getInitialBreakpoint As String
	Return sInitialBreakpoint
End Sub
'get Max Width
Sub getMaxWidth As String
	Return sMaxWidth
End Sub
'get Open
Sub getOpen As Boolean
	Return bOpen
End Sub
'get Show Handle
Sub getShowHandle As Boolean
	Return bShowHandle
End Sub
'get Showbackdrop
Sub getShowbackdrop As Boolean
	Return bShowbackdrop
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub