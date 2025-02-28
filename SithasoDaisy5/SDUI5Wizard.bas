B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.1
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Change (Value as String)

#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _1_content, Description: Child Item _1_content
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Subscription, Description: Title
#DesignerProperty: Key: TitleVisible, DisplayName: Title Visible, FieldType: Boolean, DefaultValue: True, Description: Title Visible
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 96, Description: Width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: RawSteps, DisplayName: Steps, FieldType: String, DefaultValue: Register;Choose Plan;Purchase;Receive Product, Description: Steps
#DesignerProperty: Key: ActiveStep, DisplayName: Active Step, FieldType: String, DefaultValue: 1, Description: Active Step
#DesignerProperty: Key: StepsColor, DisplayName: Steps Color, FieldType: String, DefaultValue: primary, Description: Steps Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: StepsTextSize, DisplayName: Steps Text Size, FieldType: String, DefaultValue: sm, Description: Steps Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-100, Description: Background Color
#DesignerProperty: Key: PreviousText, DisplayName: Previous Text, FieldType: String, DefaultValue: Previous, Description: Previous Text
#DesignerProperty: Key: PreviousColor, DisplayName: Previous Color, FieldType: String, DefaultValue: , Description: Previous Color
#DesignerProperty: Key: PreviousTextColor, DisplayName: Previous Text Color, FieldType: String, DefaultValue: , Description: Previous Text Color
#DesignerProperty: Key: NextColor, DisplayName: Next Color, FieldType: String, DefaultValue: , Description: Next Color
#DesignerProperty: Key: NextText, DisplayName: Next Text, FieldType: String, DefaultValue: Next, Description: Next Text
#DesignerProperty: Key: NextTextColor, DisplayName: Next Text Color, FieldType: String, DefaultValue: , Description: Next Text Color
#DesignerProperty: Key: ButtonsShadow, DisplayName: Buttons Shadow, FieldType: String, DefaultValue: md, Description: Buttons Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: ButtonsWidth, DisplayName: Buttons Width, FieldType: String, DefaultValue: 22, Description: Buttons Width
#DesignerProperty: Key: ButtonsRounded, DisplayName: Buttons Rounded, FieldType: String, DefaultValue: md, Description: Buttons Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: sm, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private sActiveStep As String = "1"
	Private sBackgroundColor As String = "base-100"
	Private sButtonsShadow As String = "md"
	Private sButtonsWidth As String = "22"
	Private sHeight As String = "12"
	Private sNextColor As String = "none"
	Private sNextText As String = "Next"
	Private sNextTextColor As String = "none"
	Private sPreviousColor As String = ""
	Private sPreviousText As String = "Previous"
	Private sPreviousTextColor As String = ""
	Private sRawSteps As String = "Register;Choose Plan;Purchase;Receive Product"
	Private sShadow As String = "sm"
	Private sStepsColor As String = "none"
	Private sStepsTextSize As String = "sm"
	Private sTitle As String = "Subscription"
	Private bTitleVisible As Boolean = True
	Private sWidth As String = "96"
	Private items As List
	Public Loaded As Boolean = False
	Private sButtonsRounded As String = "md"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Loaded = False
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
		sActiveStep = Props.GetDefault("ActiveStep", "1")
		sActiveStep = UI.CStr(sActiveStep)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-100")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		sButtonsShadow = Props.GetDefault("ButtonsShadow", "md")
		sButtonsShadow = UI.CStr(sButtonsShadow)
		sButtonsWidth = Props.GetDefault("ButtonsWidth", "22")
		sButtonsWidth = UI.CStr(sButtonsWidth)
		sHeight = Props.GetDefault("Height", "12")
		sHeight = UI.CStr(sHeight)
		sNextColor = Props.GetDefault("NextColor", "none")
		sNextColor = UI.CStr(sNextColor)
		sNextText = Props.GetDefault("NextText", "Next")
		sNextText = UI.CStr(sNextText)
		sNextTextColor = Props.GetDefault("NextTextColor", "none")
		sNextTextColor = UI.CStr(sNextTextColor)
		sPreviousColor = Props.GetDefault("PreviousColor", "")
		sPreviousColor = UI.CStr(sPreviousColor)
		sPreviousText = Props.GetDefault("PreviousText", "Previous")
		sPreviousText = UI.CStr(sPreviousText)
		sPreviousTextColor = Props.GetDefault("PreviousTextColor", "")
		sPreviousTextColor = UI.CStr(sPreviousTextColor)
		sRawSteps = Props.GetDefault("RawSteps", "Register;Choose Plan;Purchase;Receive Product")
		sRawSteps = UI.CStr(sRawSteps)
		sShadow = Props.GetDefault("Shadow", "sm")
		sShadow = UI.CStr(sShadow)
		sStepsColor = Props.GetDefault("StepsColor", "primary")
		sStepsColor = UI.CStr(sStepsColor)
		sStepsTextSize = Props.GetDefault("StepsTextSize", "sm")
		sStepsTextSize = UI.CStr(sStepsTextSize)
		sTitle = Props.GetDefault("Title", "Subscription")
		sTitle = UI.CStr(sTitle)
		bTitleVisible = Props.GetDefault("TitleVisible", True)
		bTitleVisible = UI.CBool(bTitleVisible)
		sWidth = Props.GetDefault("Width", "96")
		sWidth = UI.CStr(sWidth)
		sButtonsRounded = Props.GetDefault("ButtonsRounded", "md")
		sButtonsRounded = UI.CStr(sButtonsRounded)
	End If
	'
	UI.AddClassDT("card")
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
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
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}" data-cs="${sActiveStep}">    
    <div id="${mName}_body" class="card-body p-5">
      <h2 id="${mName}_title" class="card-title">${sTitle}</h2>
      <ul id="${mName}_steps" class="steps w-full"></ul>
      <div class="divider h-1 mt-0 mb-0"></div>
      <div class="flex flex-col">
        <div id="${mName}_content"></div>
      <div>
      <div class="divider h-1 mt-2 mb-2"></div>
      <div class="card-actions flex flex-row items-center justify-between">
        <button id="${mName}_previous" class="btn">${sPreviousText}</button>
        <button id="${mName}_next" class="btn">${sNextText}</button>
      </div>    
    </div>
  </div>"$).Get("#" & mName)
	setHeight(sHeight)
	setWidth(sWidth)
	setShadow(sShadow)
	setTitleVisible(bTitleVisible)
	setStepsTextSize(sStepsTextSize)
	
	setPreviousColor(sPreviousColor)
	setPreviousText(sPreviousText)
	setPreviousTextColor(sPreviousTextColor)
	'
	setNextColor(sNextColor)
	setNextTextColor(sNextTextColor)
	'
	setButtonsWidth(sButtonsWidth)
	setButtonsShadow(sButtonsShadow)
	setButtonsRounded(sButtonsRounded)
	setSteps(sRawSteps)
	setActiveStep(sActiveStep)
	UI.OnEventByID($"${mName}_next"$, "click", Me, "MoveNext")
	UI.OnEventByID($"${mName}_previous"$, "click", Me, "MovePrevious")
	Loaded = True
End Sub

Sub ContentHere As String
	Return $"#${mName}_content"$
End Sub

'get a step from the wizard
Sub ContentAt(stepNumber As String) As String
	Return $"#${mName}_${stepNumber}_content"$
End Sub

private Sub MoveNext(e As BANanoEvent)				'ignoredeadcode
	e.PreventDefault
	Dim cs As String = UI.GetData(mElement, "cs")
	cs = UI.CStr(cs)
	If cs = "" Then cs = "1"
	'how many items do we have
	Dim nstep As Int = UI.CInt(cs) + 1
	If nstep >= items.Size Then 
		nstep = items.size
	End If
	BANano.Await(setActiveStep(nstep))
End Sub

private Sub MovePrevious(e As BANanoEvent)				'ignoredeadcode
	e.PreventDefault
	Dim cs As String = UI.GetData(mElement, "cs")
	cs = UI.CStr(cs)
	If cs = "" Then cs = "1"
	'how many items do we have
	Dim nstep As Int = UI.CInt(cs) - 1
	If nstep <= 0 Then
		nstep = 1
	End If
	BANano.Await(setActiveStep(nstep))
End Sub


'clear steps and content
Sub Clear
	UI.ClearByID($"${mName}_steps"$)
	UI.ClearByID($"${mName}_content"$)
	items.Initialize 
End Sub

'set Active Step
Sub setActiveStep(s As String)			'ignoredeadcode
	sActiveStep = s
	CustProps.put("ActiveStep", s)
	If mElement = Null Then Return
	If s = "" Then Return
	'save the current step
	UI.SetData(mElement, "cs", s)
	Dim stepCnt As Int = 0
	Dim actualStep As Int = UI.CInt(s)
	'
	'hide all contents and remove step colors
	For stepCnt = 0 To items.Size - 1
		Dim k As String = items.Get(stepCnt)
		'remove the color of the step
		UI.RemoveClassByID(k, $"step-${sStepsColor}"$)
		'hide the content
		UI.SetVisibleByID($"${k}_content"$, False)
	Next
	'
	'show the content for the page
	UI.SetVisibleByID($"${mName}_${s}_content"$, True)
	For stepCnt = 1 To actualStep
		UI.AddClassByID($"${mName}_${stepCnt}"$, $"step-${sStepsColor}"$)
	Next
	'
	Dim stepTot As Int = items.Size
	Select Case actualStep
	Case 1
		'first step
		UI.SetButtonEnabledByID($"${mName}_previous"$, False)
		UI.SetButtonEnabledByID($"${mName}_next"$, True)
	Case stepTot	
		UI.SetButtonEnabledByID($"${mName}_previous"$, True)
		UI.SetButtonEnabledByID($"${mName}_next"$, False)
	Case Else
		UI.SetButtonEnabledByID($"${mName}_previous"$, True)
		UI.SetButtonEnabledByID($"${mName}_next"$, True)
	End Select
End Sub

Sub getActiveStep As String
	Return sActiveStep
End Sub

'set Background Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub

'set Buttons Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setButtonsRounded(s As String)			'ignoredeadcode
	sButtonsRounded = s
	CustProps.put("ButtonsRounded", s)
	If mElement = Null Then Return
	If s <> "" Then
		UI.SetRoundedByID($"${mName}_next"$, s)
		UI.SetRoundedByID($"${mName}_previous"$, s)
	End If
End Sub

'get Buttons Rounded
Sub getButtonsRounded As String
	Return sButtonsRounded
End Sub


'set Buttons Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setButtonsShadow(s As String)				'ignoredeadcode
	sButtonsShadow = s
	CustProps.put("ButtonsShadow", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetShadowByID($"${mName}_next"$, s)
		UI.SetShadowByID($"${mName}_previous"$, s)
	End If
End Sub
'set Buttons Width
Sub setButtonsWidth(s As String)			'ignoredeadcode
	sButtonsWidth = s
	CustProps.put("ButtonsWidth", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetWidthByID($"${mName}_next"$, s)
		UI.SetWidthByID($"${mName}_previous"$, s)
	End If
End Sub
'set Height
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setHeight(s As String)			'ignoredeadcode
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Next Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setNextColor(s As String)			'ignoredeadcode
	sNextColor = s
	CustProps.put("NextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_next"$, s)
End Sub
'set Next Text
Sub setNextText(s As String)
	sNextText = s
	CustProps.put("NextText", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextByID($"${mName}_text"$, s)
End Sub
'set Next Text Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setNextTextColor(s As String)				'ignoredeadcode
	sNextTextColor = s
	CustProps.put("NextTextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_next"$, s)
End Sub
'set Previous Color
Sub setPreviousColor(s As String)			'ignoredeadcode
	sPreviousColor = s
	CustProps.put("PreviousColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_previous"$, s)
End Sub
'set Previous Text
Sub setPreviousText(s As String)			'ignoredeadcode
	sPreviousText = s
	CustProps.put("PreviousText", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_previous"$, s)
End Sub
'set Previous Text Color
Sub setPreviousTextColor(s As String)			'ignoredeadcode
	sPreviousTextColor = s
	CustProps.put("PreviousTextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_previous"$, s)
End Sub


Sub getSteps As String
	Return sRawSteps
End Sub


'set Raw Steps
Sub setSteps(s As String)				'ignoredeadcode
	sRawSteps = s
	CustProps.put("RawSteps", s)
	If mElement = Null Then Return
	Clear
	If s = "" Then Return
	
	Dim nitems As List = UI.StrParse(";", s)
	nitems = UI.ListTrimItems(nitems)
	Dim stepCnt As Int = 0
	Dim stepTot As Int = 0
	'
	Dim sb As StringBuilder
	sb.Initialize 
	Dim sbContent As StringBuilder
	sbContent.Initialize 
	
	For stepCnt = 0 To nitems.Size - 1
		Dim stepName As String = nitems.Get(stepCnt)
		stepTot = BANano.parseInt(stepCnt) + 1
		sb.Append($"<li id="${mName}_${stepTot}" class="step cursor-pointer"><span id="${mName}_${stepTot}_text">${stepName}</span></li>"$)
		sbContent.Append($"<div id="${mName}_${stepTot}_content" class="hidden hide"></div>"$)
		items.add($"${mName}_${stepTot}"$)
	Next
	UI.AppendByID($"${mName}_steps"$, sb.ToString)
	UI.AppendByID($"${mName}_content"$, sbContent.ToString)
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
	Dim sbContent As StringBuilder
	sbContent.Initialize
	'
	sb.Append($"<li id="${k}" class="step cursor-pointer"><span id="${k}_text">${stepName}</span></li>"$)
	sbContent.Append($"<div id="${k}_content" class="hidden hide"></div>"$)
	items.add(k)
	UI.AppendByID($"${mName}_steps"$, sb.ToString)
	UI.AppendByID($"${mName}_content"$, sbContent.ToString)
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

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)			'ignoredeadcode
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Steps Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setStepsColor(s As String)
	sStepsColor = s
	CustProps.put("StepsColor", s)
End Sub
'set Steps Text Size
'options: xs|none|sm|md|lg|xl|base|2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl
Sub setStepsTextSize(s As String)				'ignoredeadcode
	sStepsTextSize = s
	CustProps.put("StepsTextSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextSizeByID($"${mName}_steps"$, s)
End Sub
'set Title
Sub setTitle(s As String)
	sTitle = s
	CustProps.put("Title", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_title"$, s)
End Sub
'set Title Visible
Sub setTitleVisible(b As Boolean)			'ignoredeadcode
	bTitleVisible = b
	CustProps.put("TitleVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_title"$, b)
End Sub
'set Width
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setWidth(s As String)			'ignoredeadcode
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Buttons Shadow
Sub getButtonsShadow As String
	Return sButtonsShadow
End Sub
'get Buttons Width
Sub getButtonsWidth As String
	Return sButtonsWidth
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Next Color
Sub getNextColor As String
	Return sNextColor
End Sub
'get Next Text
Sub getNextText As String
	Return sNextText
End Sub
'get Next Text Color
Sub getNextTextColor As String
	Return sNextTextColor
End Sub
'get Previous Color
Sub getPreviousColor As String
	Return sPreviousColor
End Sub
'get Previous Text
Sub getPreviousText As String
	Return sPreviousText
End Sub
'get Previous Text Color
Sub getPreviousTextColor As String
	Return sPreviousTextColor
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Steps Color
Sub getStepsColor As String
	Return sStepsColor
End Sub
'get Steps Text Size
Sub getStepsTextSize As String
	Return sStepsTextSize
End Sub
'get Title
Sub getTitle As String
	Return sTitle
End Sub
'get Title Visible
Sub getTitleVisible As Boolean
	Return bTitleVisible
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub


Sub ListToSelectOptionsSort(lst As List) As Map
	lst.Sort(True)
	Dim m As Map = CreateMap()
	For Each item As String In lst
		m.Put(item, item)
	Next
	Return m
End Sub