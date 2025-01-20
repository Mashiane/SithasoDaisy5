B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: StartJoinPrefix, DisplayName: Begin Join, FieldType: Boolean, DefaultValue: False, Description: Begin Join
#DesignerProperty: Key: StartJoinPrefixColor, DisplayName: Begin Join Color, FieldType: String, DefaultValue: , Description: Begin Join Color
#DesignerProperty: Key: Start, DisplayName: Start, FieldType: Boolean, DefaultValue: True, Description: Start
#DesignerProperty: Key: StartText, DisplayName: Start Text, FieldType: String, DefaultValue: , Description: Start Text
#DesignerProperty: Key: StartBox, DisplayName: Start Box, FieldType: Boolean, DefaultValue: False, Description: Start Box
#DesignerProperty: Key: Middle, DisplayName: Middle, FieldType: Boolean, DefaultValue: True, Description: Middle
#DesignerProperty: Key: MiddleText, DisplayName: Middle Text, FieldType: String, DefaultValue: , Description: Middle Text
#DesignerProperty: Key: MiddleIcon, DisplayName: Middle Icon, FieldType: String, DefaultValue: ./assets/checkblack.svg, Description: Middle Icon
#DesignerProperty: Key: MiddleIconSize, DisplayName: Middle Icon Size, FieldType: String, DefaultValue: 16px, Description: Middle Icon Size
#DesignerProperty: Key: MiddleBox, DisplayName: Middle Box, FieldType: Boolean, DefaultValue: False, Description: Middle Box
#DesignerProperty: Key: End, DisplayName: End, FieldType: Boolean, DefaultValue: True, Description: End
#DesignerProperty: Key: EndText, DisplayName: End Text, FieldType: String, DefaultValue: , Description: End Text
#DesignerProperty: Key: EndBox, DisplayName: End Box, FieldType: Boolean, DefaultValue: False, Description: End Box
#DesignerProperty: Key: EndJoinSuffix, DisplayName: Finish Join, FieldType: Boolean, DefaultValue: False, Description: Finish Join
#DesignerProperty: Key: EndJoinSuffixColor, DisplayName: Finish Join Color, FieldType: String, DefaultValue: , Description: Finish Join Color
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
	Private bEnd As Boolean = True
	Private bEndBox As Boolean = False
	Private bEndJoinSuffix As Boolean = False
	Private sEndJoinSuffixColor As String = ""
	Private sEndText As String = ""
	Private bMiddle As Boolean = True
	Private bMiddleBox As Boolean = False
	Private sMiddleIcon As String = "./assets/checkblack.svg"
	Private sMiddleIconSize As String = "16px"
	Private sMiddleText As String = ""
	Private bStart As Boolean = True
	Private bStartBox As Boolean = False
	Private bStartJoinPrefix As Boolean = False
	Private sStartJoinPrefixColor As String = ""
	Private sStartText As String = ""
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	UI.Initialize(Me)
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
End Sub
'add this element to an existing parent element using current props
Public Sub AddComponent
	If sParentID = "" Then Return
	sParentID = modSD5.CleanID(sParentID)
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
	s = modSD5.CleanID(s)
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
	if s <> "" then UI.SetPosition(mElement, sPosition)
End Sub
Sub getPosition As String
	Return sPosition
End Sub
Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	if s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub
'
Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	if s <> "" Then UI.SetStyles(mElement, sRawStyles)
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
	if s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
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
		bEnd = Props.GetDefault("End", True)
		bEnd = modSD5.CBool(bEnd)
		bEndBox = Props.GetDefault("EndBox", False)
		bEndBox = modSD5.CBool(bEndBox)
		bEndJoinSuffix = Props.GetDefault("EndJoinSuffix", False)
		bEndJoinSuffix = modSD5.CBool(bEndJoinSuffix)
		sEndJoinSuffixColor = Props.GetDefault("EndJoinSuffixColor", "")
		sEndJoinSuffixColor = modSD5.CStr(sEndJoinSuffixColor)
		sEndText = Props.GetDefault("EndText", "")
		sEndText = modSD5.CStr(sEndText)
		bMiddle = Props.GetDefault("Middle", True)
		bMiddle = modSD5.CBool(bMiddle)
		bMiddleBox = Props.GetDefault("MiddleBox", False)
		bMiddleBox = modSD5.CBool(bMiddleBox)
		sMiddleIcon = Props.GetDefault("MiddleIcon", "./assets/checkblack.svg")
		sMiddleIcon = modSD5.CStr(sMiddleIcon)
		sMiddleIconSize = Props.GetDefault("MiddleIconSize", "16px")
		sMiddleIconSize = modSD5.CStr(sMiddleIconSize)
		sMiddleText = Props.GetDefault("MiddleText", "")
		sMiddleText = modSD5.CStr(sMiddleText)
		bStart = Props.GetDefault("Start", True)
		bStart = modSD5.CBool(bStart)
		bStartBox = Props.GetDefault("StartBox", False)
		bStartBox = modSD5.CBool(bStartBox)
		bStartJoinPrefix = Props.GetDefault("StartJoinPrefix", False)
		bStartJoinPrefix = modSD5.CBool(bStartJoinPrefix)
		sStartJoinPrefixColor = Props.GetDefault("StartJoinPrefixColor", "")
		sStartJoinPrefixColor = modSD5.CStr(sStartJoinPrefixColor)
		sStartText = Props.GetDefault("StartText", "")
		sStartText = modSD5.CStr(sStartText)
	End If
	'
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
	<li id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<hr id="${mName}_startprefix" class="hidden"/>
		<div id="${mName}_start" class="timeline-start hidden">${sStartText}</div>
		<div id="${mName}_middle" class="timeline-middle hidden">
			<img id="${mName}_middleicon" src="${sMiddleIcon}" alt="" class="hidden"></img>
		</div>
		<div id="${mName}_end" class="timeline-end hidden">${sEndText}</div>
		<hr id="${mName}_endsuffix" class="hidden"/>
	</li>"$).Get("#" & mName)
	'
	BANano.Await(setStartJoinPrefix(bStartJoinPrefix))
	BANano.Await(setStartJoinPrefixColor(sStartJoinPrefixColor))
	BANano.Await(setStart(bStart))
	BANano.Await(setStartBox(bStartBox))
	BANano.Await(setStartText(sStartText))
	BANano.Await(setMiddle(bMiddle))
	BANano.Await(setMiddleBox(bMiddleBox))
	BANano.Await(setMiddleIcon(sMiddleIcon))
	BANano.Await(setMiddleIconSize(sMiddleIconSize))
	'
	BANano.Await(setEnd(bEnd))
	BANano.Await(setEndBox(bEndBox))
	BANano.Await(setEndText(sEndText))
	BANano.Await(setEndJoinSuffix(bEndJoinSuffix))
	BANano.Await(setEndJoinSuffixColor(sEndJoinSuffixColor))
End Sub

'set End
Sub setEnd(b As Boolean)
	bEnd = b
	CustProps.put("End", b)
	If mElement = Null Then Return
	If b Then
		UI.SetVisibleByID($"${mName}_end"$, b)
	Else
		UI.RemoveElementByID($"${mName}_end"$)
	End If	
End Sub
'set End Box
Sub setEndBox(b As Boolean)
	bEndBox = b
	CustProps.put("EndBox", b)
	If mElement = Null Then Return
	If bEnd = False Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_end"$, "timeline-box")
	Else
		UI.RemoveClassByID($"${mName}_end"$, "timeline-box")
	End If
End Sub
'set End Join Suffix
Sub setEndJoinSuffix(b As Boolean)
	bEndJoinSuffix = b
	CustProps.put("EndJoinSuffix", b)
	If mElement = Null Then Return
	If b Then
		UI.SetVisibleByID($"${mName}_endsuffix"$, b)
	Else
		UI.RemoveElementByID($"${mName}_endsuffix"$)
	End If
End Sub
'set End Join Suffix Color
Sub setEndJoinSuffixColor(s As String)
	sEndJoinSuffixColor = s
	CustProps.put("EndJoinSuffixColor", s)
	If mElement = Null Then Return
	If bEndJoinSuffix = False Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_endsuffix"$, s)
End Sub
'set End Text
Sub setEndText(s As String)
	sEndText = s
	CustProps.put("EndText", s)
	If mElement = Null Then Return
	If bEnd = False Then Return
	UI.SetTextByID($"${mName}_end"$, s)
End Sub



'set Middle
Sub setMiddle(b As Boolean)
	bMiddle = b
	CustProps.put("Middle", b)
	If mElement = Null Then Return
	If b Then
		UI.SetVisibleByID($"${mName}_middle"$, b)
	Else
		UI.RemoveElementByID($"${mName}_middle"$)
	End If
End Sub
'set Middle Box
Sub setMiddleBox(b As Boolean)
	bMiddleBox = b
	CustProps.put("MiddleBox", b)
	If mElement = Null Then Return
	If bMiddle = False Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_middle"$, "timeline-box")
	Else
		UI.RemoveClassByID($"${mName}_middle"$, "timeline-box")
	End If
End Sub
'set Middle Icon
Sub setMiddleIcon(s As String)
	sMiddleIcon = s
	CustProps.put("MiddleIcon", s)
	If mElement = Null Then Return
	If bMiddle = False Then Return
	If s = "" Then
		UI.SetVisibleByID($"${mName}_middleicon"$, False)
	Else
		UI.SetVisibleByID($"${mName}_middleicon"$, True)
		UI.SetImageByID($"${mName}_middleicon"$, s)
	End If
End Sub
'set Middle Icon Size
Sub setMiddleIconSize(s As String)
	sMiddleIconSize = s
	CustProps.put("MiddleIconSize", s)
	If mElement = Null Then Return
	If bMiddle = False Then Return
	If s = "" Then Return
	UI.SetWidthByID($"${mName}_middleicon"$, s)
	UI.SetHeightByID($"${mName}_middleicon"$, s)
End Sub
'set Middle Text
Sub setMiddleText(s As String)
	sMiddleText = s
	CustProps.put("MiddleText", s)
	If mElement = Null Then Return
	If bMiddle = False Then Return
	If s <> "" Then UI.AddClass(mElement, "timeline-middle-" & s)
End Sub

'set Start
Sub setStart(b As Boolean)
	bStart = b
	CustProps.put("Start", b)
	If mElement = Null Then Return
	If b Then
		UI.SetVisibleByID($"${mName}_start"$, b)
	Else
		UI.RemoveElementByID($"${mName}_start"$)
	End If
End Sub
'set Start Box
Sub setStartBox(b As Boolean)
	bStartBox = b
	CustProps.put("StartBox", b)
	If mElement = Null Then Return
	If bStart = False Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_start"$, "timeline-box")
	Else
		UI.RemoveClassByID($"${mName}_start"$, "timeline-box")
	End If
End Sub
'set Start Join Prefix
Sub setStartJoinPrefix(b As Boolean)
	bStartJoinPrefix = b
	CustProps.put("StartJoinPrefix", b)
	If mElement = Null Then Return
	If b Then
		UI.SetVisibleByID($"${mName}_startprefix"$, b)
	Else
		UI.RemoveElementByID($"${mName}_startprefix"$)
	End If
End Sub
'set Start Join Prefix Color
Sub setStartJoinPrefixColor(s As String)
	sStartJoinPrefixColor = s
	CustProps.put("StartJoinPrefixColor", s)
	If mElement = Null Then Return
	If bStartJoinPrefix = False Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_startprefix"$, s)
End Sub
'set Start Text
Sub setStartText(s As String)
	sStartText = s
	CustProps.put("StartText", s)
	If mElement = Null Then Return
	If bStart = False Then Return
	UI.SetTextByID($"${mName}_start"$, s)
End Sub

'get End
Sub getEnd As Boolean
	Return bEnd
End Sub
'get End Box
Sub getEndBox As Boolean
	Return bEndBox
End Sub
'get End Join Suffix
Sub getEndJoinSuffix As Boolean
	Return bEndJoinSuffix
End Sub
'get End Join Suffix Color
Sub getEndJoinSuffixColor As String
	Return sEndJoinSuffixColor
End Sub
'get End Text
Sub getEndText As String
	Return sEndText
End Sub
'get Middle
Sub getMiddle As Boolean
	Return bMiddle
End Sub
'get Middle Box
Sub getMiddleBox As Boolean
	Return bMiddleBox
End Sub
'get Middle Icon
Sub getMiddleIcon As String
	Return sMiddleIcon
End Sub
'get Middle Icon Size
Sub getMiddleIconSize As String
	Return sMiddleIconSize
End Sub
'get Middle Text
Sub getMiddleText As String
	Return sMiddleText
End Sub
'get Start
Sub getStart As Boolean
	Return bStart
End Sub
'get Start Box
Sub getStartBox As Boolean
	Return bStartBox
End Sub
'get Start Join Prefix
Sub getStartJoinPrefix As Boolean
	Return bStartJoinPrefix
End Sub
'get Start Join Prefix Color
Sub getStartJoinPrefixColor As String
	Return sStartJoinPrefixColor
End Sub
'get Start Text
Sub getStartText As String
	Return sStartText
End Sub