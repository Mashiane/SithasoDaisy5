B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Value as String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Direction, DisplayName: Direction, FieldType: String, DefaultValue: horizontal, Description: Direction, List: horizontal|vertical
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: sm, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: RawSteps, DisplayName: Steps, FieldType: String, DefaultValue: Register;Choose Plan;Purchase;Receive Product, Description: Steps
#DesignerProperty: Key: ActiveStep, DisplayName: Active Step, FieldType: String, DefaultValue: 1, Description: Active Step
#DesignerProperty: Key: StepsColor, DisplayName: Steps Color, FieldType: String, DefaultValue: primary, Description: Steps Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: SMDirection, DisplayName: SM Direction, FieldType: String, DefaultValue: none, Description: S m Direction, List: horizontal|none|vertical
#DesignerProperty: Key: MDDirection, DisplayName: MD Direction, FieldType: String, DefaultValue: none, Description: M d Direction, List: horizontal|none|vertical
#DesignerProperty: Key: LGDirection, DisplayName: LG Direction, FieldType: String, DefaultValue: none, Description: L g Direction, List: horizontal|none|vertical
#DesignerProperty: Key: XLDirection, DisplayName: XL Direction, FieldType: String, DefaultValue: none, Description: X l Direction, List: horizontal|none|vertical
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 2xl|3xl|full|lg|md|none|rounded|sm|xl|0
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: OverflowXAuto, DisplayName: Overflow X Auto, FieldType: Boolean, DefaultValue: False, Description: Overflow X Auto
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
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
	Private sDirection As String = "horizontal"
	Private sLGDirection As String = "none"
	Private sMDDirection As String = "none"
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = False
	Private sSMDirection As String = "none"
	Private sShadow As String = "none"
	Private sXLDirection As String = "none"
	Public CONST DIRECTION_HORIZONTAL As String = "horizontal"
	Public CONST DIRECTION_VERTICAL As String = "vertical"
	Private bOverflowXAuto As Boolean = False
	Private sTextSize As String = "sm"
	Private sRawSteps As String = "Register;Choose Plan;Purchase;Receive Product"
	Private sStepsColor As String = "none"
	Private items As List
	Private sActiveStep As String = "1"
	Private sHeight As String = ""
	Private sWidth As String = "full"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
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
	CustProps.Put("Direction", "horizontal")
	CustProps.Put("TextSize", "sm")
	CustProps.Put("RawSteps", "Register;Choose Plan;Purchase;Receive Product")
	CustProps.Put("ActiveStep", "1")
	CustProps.Put("StepsColor", "primary")
	CustProps.Put("SMDirection", "none")
	CustProps.Put("MDDirection", "none")
	CustProps.Put("LGDirection", "none")
	CustProps.Put("XLDirection", "none")
	CustProps.Put("Rounded", "none")
	CustProps.Put("RoundedBox", False)
	CustProps.Put("Shadow", "none")
	CustProps.Put("OverflowXAuto", False)
	CustProps.Put("Height", "")
	CustProps.Put("Width", "full")
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
	If bOverflowXAuto Then
		UI.SetVisibleByID($"${mName}_host"$, b)
	Else	
		UI.SetVisible(mElement, b)
	End If
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
		sDirection = Props.GetDefault("Direction", "horizontal")
		sDirection = UI.CStr(sDirection)
		sLGDirection = Props.GetDefault("LGDirection", "none")
		sLGDirection = UI.CStr(sLGDirection)
		If sLGDirection = "none" Then sLGDirection = ""
		sMDDirection = Props.GetDefault("MDDirection", "none")
		sMDDirection = UI.CStr(sMDDirection)
		If sMDDirection = "none" Then sMDDirection = ""
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sSMDirection = Props.GetDefault("SMDirection", "none")
		sSMDirection = UI.CStr(sSMDirection)
		If sSMDirection = "none" Then sSMDirection = ""
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sXLDirection = Props.GetDefault("XLDirection", "none")
		sXLDirection = UI.CStr(sXLDirection)
		If sXLDirection = "none" Then sXLDirection = ""
		bOverflowXAuto = Props.GetDefault("OverflowXAuto", False)
		bOverflowXAuto = UI.CBool(bOverflowXAuto)   
		sTextSize = Props.GetDefault("TextSize", "sm")
		sTextSize = UI.CStr(sTextSize)
		If sTextSize = "none" Then sTextSize = ""
		sActiveStep = Props.GetDefault("ActiveStep", "")
		sActiveStep = UI.CStr(sActiveStep)
		sRawSteps = Props.GetDefault("RawSteps", "Register;Choose Plan;Purchase;Receive Product")
		sRawSteps = UI.CStr(sRawSteps)
		sStepsColor = Props.GetDefault("StepsColor", "primary")
		sStepsColor = UI.CStr(sStepsColor)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = UI.CStr(sWidth)
	End If
	'
	UI.addclassdt("steps")
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If sTextSize <> "" Then UI.AddSizeDT("text", sTextSize)
	If sDirection <> "" Then UI.AddClassDT("steps-" & sDirection)
	If sLGDirection <> "" Then UI.AddClassDT("lg:steps-" & sLGDirection)
	If sMDDirection <> "" Then UI.AddClassDT("md:steps-" & sMDDirection)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sSMDirection <> "" Then UI.AddClassDT("sm:steps-" & sSMDirection)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sXLDirection <> "" Then UI.AddClassDT("xl:steps-" & sXLDirection)
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
	If bOverflowXAuto Then
		mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}_host" class="overflow-x-auto">
			<ul id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></ul>
		</div>"$).Get("#" & mName)
	Else
		mElement = mTarget.Append($"[BANCLEAN]<ul id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></ul>"$).Get("#" & mName)
	End If
	'setVisible(bVisible)
	BANano.Await(setSteps(sRawSteps))
	BANano.Await(setActiveStep(sActiveStep))
End Sub


'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub

'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

'clear steps
Sub Clear
	If mElement = Null Then Return
	mElement.Empty
	items.Initialize
End Sub

'set Raw Steps
Sub setSteps(s As String)				'ignoredeadcode
	sRawSteps = s
	CustProps.put("RawSteps", s)
	If mElement = Null Then Return
	BANano.Await(Clear)
	If s = "" Then Return
	
	Dim nitems As List = UI.StrParse(";", s)
	nitems = UI.ListTrimItems(nitems)
	Dim stepCnt As Int = 0
	Dim stepTot As Int = 0
	'
	Dim sb As StringBuilder
	sb.Initialize
	
	For stepCnt = 0 To nitems.Size - 1
		Dim stepName As String = nitems.Get(stepCnt)
		stepTot = BANano.parseInt(stepCnt) + 1
		sb.Append($"<li id="${mName}_${stepTot}" class="step cursor-pointer"><span id="${mName}_${stepTot}_text">${stepName}</span></li>"$)
		items.add($"${mName}_${stepTot}"$)
	Next
	mElement.Append(sb.ToString)
	For Each k As String In items
		UI.OnEventByID(k, "click", Me, "ChangeStep")
	Next
End Sub

Sub AddStep(stepName As String)
	Dim stepTot As Int = items.Size
	Dim k As String = $"${mName}_${stepTot}"$
	'
	Dim sb As StringBuilder
	sb.Initialize
	'
	sb.Append($"<li id="${k}" class="step cursor-pointer"><span id="${k}_text">${stepName}</span></li>"$)
	items.add(k)
	mElement.Append(sb.ToString)
	UI.OnEventByID(k, "click", Me, "ChangeStep")
End Sub

private Sub ChangeStep(e As BANanoEvent)		'ignoredeadcode
	e.PreventDefault
	Dim stepID As String = e.ID
	Dim stepName As String = UI.MvField(stepID,2, "_")
	If stepName <> "" Then
		BANano.Await(setActiveStep(stepName))
		BANano.CallSub(Me, $"${mName}_change"$, Array(stepName))
	End If
End Sub

Sub getSteps As String
	Return sRawSteps
End Sub

'set Active Step
Sub setActiveStep(s As String)			'ignoredeadcode
	sActiveStep = s
	CustProps.put("ActiveStep", s)
	If mElement = Null Then Return
	If s = "" Then Return
	'
	Dim stepCnt As Int = 0
	Dim actualStep As Int = UI.CInt(s)
	'
	'hide all contents and remove step colors
	For stepCnt = 0 To items.Size - 1
		Dim k As String = items.Get(stepCnt)
		'remove the color of the step
		UI.RemoveClassByID(k, $"step-${sStepsColor}"$)
	Next
	'
	For stepCnt = 1 To actualStep
		UI.AddClassByID($"${mName}_${stepCnt}"$, $"step-${sStepsColor}"$)
	Next
End Sub

Sub getActiveStep As String
	Return sActiveStep
End Sub


'set Text Size
'options: xs|none|sm|md|lg|xl|base|2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl
Sub setTextSize(s As String)
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextSize(mElement, sTextSize)
End Sub

'get Text Size
Sub getTextSize As String
	Return sTextSize
End Sub

'set Direction
'options: horizontal|vertical
Sub setDirection(s As String)
	sDirection = s
	CustProps.put("Direction", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "steps-" & s)
End Sub
'set L g Direction
'options: horizontal|none|vertical
Sub setLGDirection(s As String)
	sLGDirection = s
	CustProps.put("LGDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "lg:steps-" & s)
End Sub
'set M d Direction
'options: horizontal|none|vertical
Sub setMDDirection(s As String)
	sMDDirection = s
	CustProps.put("MDDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "md:steps-" & s)
End Sub
'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub
'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	UI.SetRoundedBox(mElement, b)
End Sub
'set S m Direction
'options: horizontal|none|vertical
Sub setSMDirection(s As String)
	sSMDirection = s
	CustProps.put("SMDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "sm:steps-" & s)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set X l Direction
'options: horizontal|none|vertical
Sub setXLDirection(s As String)
	sXLDirection = s
	CustProps.put("XLDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "xl:steps-" & s)
End Sub
'get Direction
Sub getDirection As String
	Return sDirection
End Sub
'get L g Direction
Sub getLGDirection As String
	Return sLGDirection
End Sub
'get M d Direction
Sub getMDDirection As String
	Return sMDDirection
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get S m Direction
Sub getSMDirection As String
	Return sSMDirection
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get X l Direction
Sub getXLDirection As String
	Return sXLDirection
End Sub