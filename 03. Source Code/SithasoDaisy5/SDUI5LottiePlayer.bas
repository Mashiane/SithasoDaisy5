B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: , Description: Src
#DesignerProperty: Key: AutoPlay, DisplayName: Auto Play, FieldType: Boolean, DefaultValue: True, Description: Auto Play
#DesignerProperty: Key: Background, DisplayName: Background, FieldType: String, DefaultValue: , Description: Background
#DesignerProperty: Key: Controls, DisplayName: Controls, FieldType: Boolean, DefaultValue: False, Description: Controls
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 300px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 300px, Description: Width
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: False, Description: Hover
#DesignerProperty: Key: Intermission, DisplayName: Intermission, FieldType: String, DefaultValue: , Description: Intermission
#DesignerProperty: Key: Mode, DisplayName: Mode, FieldType: String, DefaultValue: normal, Description: Mode, List: bounce|normal|bounce-reverse|reverse
#DesignerProperty: Key: ShouldLoop, DisplayName: Should Loop, FieldType: Boolean, DefaultValue: False, Description: Should Loop
#DesignerProperty: Key: Speed, DisplayName: Speed, FieldType: String, DefaultValue: 1, Description: Speed
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
	Private bAutoPlay As Boolean = True
	Private sBackground As String = ""
	Private bControls As Boolean = False
	Private sHeight As String = "300px"
	Private bHover As Boolean = False
	Private sIntermission As String = ""
	Private sMode As String = "normal"
	Private bShouldLoop As Boolean = False
	Private sSpeed As String = "1"
	Private sSrc As String = ""
	Private sWidth As String = "300px"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("LottiePlayer") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesLottiePlayer)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("lottie-player.js")
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
		bAutoPlay = Props.GetDefault("AutoPlay", True)
		bAutoPlay = UI.CBool(bAutoPlay)
		sBackground = Props.GetDefault("Background", "")
		sBackground = UI.CStr(sBackground)
		bControls = Props.GetDefault("Controls", False)
		bControls = UI.CBool(bControls)
		sHeight = Props.GetDefault("Height", "300px")
		sHeight = UI.CStr(sHeight)
		bHover = Props.GetDefault("Hover", False)
		bHover = UI.CBool(bHover)
		sIntermission = Props.GetDefault("Intermission", "")
		sIntermission = UI.CStr(sIntermission)
		sMode = Props.GetDefault("Mode", "normal")
		sMode = UI.CStr(sMode)
		bShouldLoop = Props.GetDefault("ShouldLoop", False)
		bShouldLoop = UI.CBool(bShouldLoop)
		sSpeed = Props.GetDefault("Speed", "1")
		sSpeed = UI.CStr(sSpeed)
		sSrc = Props.GetDefault("Src", "")
		sSrc = UI.CStr(sSrc)
		sWidth = Props.GetDefault("Width", "300px")
		sWidth = UI.CStr(sWidth)
	End If
	'
	If bAutoPlay = True Then UI.AddAttrDT("autoplay", bAutoPlay)
	If sBackground <> "" Then UI.AddAttrDT("background", sBackground)
	If bControls = True Then UI.AddAttrDT("controls", bControls)
	If sHeight <> "" Then UI.AddStyleDT("height", sHeight)
	If bHover = True Then UI.AddAttrDT("hover", bHover)
	If sIntermission <> "" Then UI.AddAttrDT("intermission", sIntermission)
	If sMode <> "" Then UI.AddAttrDT("mode", sMode)
	If bShouldLoop = True Then UI.AddAttrDT("loop", bShouldLoop)
	If sSpeed <> "" Then UI.AddAttrDT("speed", sSpeed)
	If sSrc <> "" Then UI.AddAttrDT("src", sSrc)
	If sWidth <> "" Then UI.AddStyleDT("width", sWidth)
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
	mElement = mTarget.Append($"[BANCLEAN]<lottie-player id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></lottie-player>"$).Get("#" & mName)
End Sub

'Sub freeze() As BANanoPromise
'	If mElement <> Null Then
'		Dim bp As BANanoPromise = mElement.RunMethod("freeze", Array())
'		Return bp
'	Else
'		Return Null
'	End If
'End Sub
'Sub pause() As BANanoPromise
'	If mElement <> Null Then
'		Dim bp As BANanoPromise = mElement.RunMethod("pause", Array())
'		Return bp
'	Else
'		Return Null
'	End If
'End Sub
'Sub play() As BANanoPromise
'	If mElement <> Null Then
'		Dim bp As BANanoPromise = mElement.RunMethod("play", Array())
'		Return bp
'	Else
'		Return Null
'	End If
'End Sub
'Sub stop() As BANanoPromise
'	If mElement <> Null Then
'		Dim bp As BANanoPromise = mElement.RunMethod("stop", Array())
'		Return bp
'	Else
'		Return Null
'	End If
'End Sub
'Sub unfreeze() As BANanoPromise
'	If mElement <> Null Then
'		Dim bp As BANanoPromise = mElement.RunMethod("unfreeze", Array())
'		Return bp
'	Else
'		Return Null
'	End If
'End Sub
'set Auto Play
Sub setAutoPlay(b As Boolean)
	bAutoPlay = b
	CustProps.put("AutoPlay", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "autoplay", b)
	Else
		UI.RemoveAttr(mElement, "autoplay")
	End If
End Sub
'set Background
Sub setBackground(s As String)
	sBackground = s
	CustProps.put("Background", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "background", s)
End Sub
'set Controls
Sub setControls(b As Boolean)
	bControls = b
	CustProps.put("Controls", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "controls", b)
	Else
		UI.RemoveAttr(mElement, "controls")
	End If
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "height", s)
End Sub
'set Hover
Sub setHover(b As Boolean)
	bHover = b
	CustProps.put("Hover", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "hover", b)
	Else
		UI.RemoveAttr(mElement, "hover")
	End If
End Sub
'set Intermission
Sub setIntermission(s As String)
	sIntermission = s
	CustProps.put("Intermission", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "intermission", s)
End Sub
'set Mode
'options: bounce|normal
Sub setMode(s As String)
	sMode = s
	CustProps.put("Mode", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "mode", s)
End Sub
'set Should Loop
Sub setShouldLoop(b As Boolean)
	bShouldLoop = b
	CustProps.put("ShouldLoop", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "loop", b)
	Else
		UI.RemoveAttr(mElement, "loop")
	End If
End Sub
'set Speed
Sub setSpeed(s As String)
	sSpeed = s
	CustProps.put("Speed", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "speed", s)
End Sub
'set Src
Sub setSrc(s As String)
	sSrc = s
	CustProps.put("Src", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "src", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "width", s)
End Sub
'get Auto Play
Sub getAutoPlay As Boolean
	Return bAutoPlay
End Sub
'get Background
Sub getBackground As String
	Return sBackground
End Sub
'get Controls
Sub getControls As Boolean
	Return bControls
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Hover
Sub getHover As Boolean
	Return bHover
End Sub
'get Intermission
Sub getIntermission As String
	Return sIntermission
End Sub
'get Mode
Sub getMode As String
	Return sMode
End Sub
'get Should Loop
Sub getShouldLoop As Boolean
	Return bShouldLoop
End Sub
'get Speed
Sub getSpeed As String
	Return sSpeed
End Sub
'get Src
Sub getSrc As String
	Return sSrc
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub