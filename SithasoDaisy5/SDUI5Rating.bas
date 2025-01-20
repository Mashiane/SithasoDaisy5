B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: HasLabel, DisplayName: Has Label, FieldType: Boolean, DefaultValue: False, Description: Has Label
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Rating, Description: Label
#DesignerProperty: Key: Mask, DisplayName: Mask, FieldType: String, DefaultValue: star, Description: Mask, List: circle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color, List: accent|error|info|neutral|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|sm|xl|xs
#DesignerProperty: Key: Count, DisplayName: Count, FieldType: String, DefaultValue: 5, Description: Count
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 2, Description: Value
#DesignerProperty: Key: FirstHidden, DisplayName: First Hidden, FieldType: Boolean, DefaultValue: False, Description: First Hidden
#DesignerProperty: Key: Gap, DisplayName: Gap, FieldType: String, DefaultValue: 2, Description: Gap
#DesignerProperty: Key: Half, DisplayName: Half, FieldType: Boolean, DefaultValue: False, Description: Half
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: ReadOnly, DisplayName: Read Only, FieldType: Boolean, DefaultValue: False, Description: Read Only
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
	Private sColor As String = "primary"
	Private sCount As String = "5"
	Private bFirstHidden As Boolean = False
	Private sGap As String = "2"
	Private bHalf As Boolean = False
	Private bHasLabel As Boolean = False
	Private sHint As String = ""
	Private sLabel As String = "Rating"
	Private sMask As String = "star"
	Private bReadOnly As Boolean = False
	Private sSize As String = "md"
	Private sValue As String = "2"
	Private bRequired As Boolean = False
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
		sColor = Props.GetDefault("Color", "primary")
		sColor = modSD5.CStr(sColor)
		sCount = Props.GetDefault("Count", "5")
		sCount = modSD5.CStr(sCount)
		bFirstHidden = Props.GetDefault("FirstHidden", False)
		bFirstHidden = modSD5.CBool(bFirstHidden)
		sGap = Props.GetDefault("Gap", "2")
		sGap = modSD5.CStr(sGap)
		bHalf = Props.GetDefault("Half", False)
		bHalf = modSD5.CBool(bHalf)
		bHasLabel = Props.GetDefault("HasLabel", False)
		bHasLabel = modSD5.CBool(bHasLabel)
		sHint = Props.GetDefault("Hint", "")
		sHint = modSD5.CStr(sHint)
		sLabel = Props.GetDefault("Label", "Rating")
		sLabel = modSD5.CStr(sLabel)
		sMask = Props.GetDefault("Mask", "star")
		sMask = modSD5.CStr(sMask)
		bReadOnly = Props.GetDefault("ReadOnly", False)
		bReadOnly = modSD5.CBool(bReadOnly)
		sSize = Props.GetDefault("Size", "md")
		sSize = modSD5.CStr(sSize)
		sValue = Props.GetDefault("Value", "2")
		sValue = modSD5.CStr(sValue)
		bRequired = Props.GetDefault("Required", False)
		bRequired = modSD5.CBool(bRequired)
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
	If bHasLabel Then
		mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
  				<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
				<div id="${mName}"></div>
				<div id="${mName}_hint" class="fieldset-label">${sHint}</div>
			</fieldset>"$).Get("#" & mName)
	Else
		mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
	End If
	If bHasLabel Then UI.AddClassByID($"${mName}_control"$, "fieldset")
	UI.AddClass(mElement, "rating")
	setSize(sSize)
	setGap(sGap)
	setHalf(bHalf)
	BANano.Await(Refresh)
	setValue(sValue)
End Sub

'set Required, needs Refresh
Sub setRequired(b As Boolean)
	bRequired = b
	CustProps.put("Required", b)
End Sub

'get Required
Sub getRequired As Boolean
	Return bRequired
End Sub

Sub Clear
	If mElement = Null Then Return
	mElement.empty
End Sub

'set Color, needs Refresh
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
End Sub
'set Count
Sub setCount(s As String)
	sCount = s
	CustProps.put("Count", s)
End Sub


Sub Refresh
	If mElement = Null Then Return
	Clear
	Dim tCount As Int = modSD5.CInt(sCount)
	Dim fCount As Int = 0
	Select Case bReadOnly
	Case True
		Dim maskName As String = modSD5.FixMask(sMask)
		Dim colorName As String = modSD5.FixColor("bg", sColor)
		Dim sb As StringBuilder
		sb.Initialize 
		For fCount = 1 To tCount
			sb.Append($"<div id="${mName}_${fCount}" class="${maskName} ${colorName}" aria-label="${fCount} star"></div>"$)
		Next
		mElement.Append(sb.ToString)
	Case False		
		For fCount = 1 To tCount
			Dim rKey As String = $"${mName}_${fCount}"$
			Dim nradio As SDUI5Radio
			nradio.Initialize(mCallBack, rKey, rKey)
			nradio.GroupName = mName
			nradio.Mask = sMask
			nradio.AriaLabel = $"${fCount} star"$
			nradio.BackgroundColor = sColor
			nradio.ParentID = mName
			nradio.Size = sSize
			If fCount = 1 Then
				If bFirstHidden Then 
					nradio.UI.AddClassDT("rating-hidden")
					nradio.AriaLabel = "Clear"
				End If
			End If
			If bHalf Then nradio.UI.AddClassDT("mask-half-1")
			nradio.AddComponent
		Next
	End Select
End Sub

'set First Hidden, needs Refresh
Sub setFirstHidden(b As Boolean)
	bFirstHidden = b
	CustProps.put("FirstHidden", b)
End Sub

'set Gap
Sub setGap(s As String)
	sGap = s
	CustProps.put("Gap", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "gap-" & s)
End Sub

'set Half, needs refresh
Sub setHalf(b As Boolean)
	bHalf = b
	CustProps.put("Half", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "rating-half")
	Else
		UI.RemoveClass(mElement, "rating-half")
	End If
End Sub
'set Has Label
Sub setHasLabel(b As Boolean)
	bHasLabel = b
	CustProps.put("HasLabel", b)
End Sub
'set Hint
Sub setHint(s As String)
	sHint = s
	CustProps.put("Hint", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_hint"$, s)
End Sub
'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub
'set Mask
'options: squircle|heart|hexagon|hexagon-2|decagon|pentagon|diamond|square|circle|star|star-2|triangle|triangle-2|triangle-3|triangle-4|none|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
Sub setMask(s As String)
	sMask = s
	CustProps.put("Mask", s)
End Sub
'set Read Only
Sub setReadOnly(b As Boolean)
	bReadOnly = b
	CustProps.put("ReadOnly", b)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "size", "rating", s)
End Sub
'set Value
Sub setValue(s As String)
	sValue = s
	CustProps.put("Value", s)
	If mElement = Null Then Return
	If bReadOnly = True Then
		UI.SetAttrByID($"${mName}_${s}"$, "aria-current", "true")
	Else	
		UI.SetCheckedByID($"${mName}_${s}"$, True)
	End If
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Count
Sub getCount As String
	Return sCount
End Sub
'get First Hidden
Sub getFirstHidden As Boolean
	Return bFirstHidden
End Sub
'get Gap
Sub getGap As String
	Return sGap
End Sub
'get Half
Sub getHalf As Boolean
	Return bHalf
End Sub
'get Has Label
Sub getHasLabel As Boolean
	Return bHasLabel
End Sub
'get Hint
Sub getHint As String
	Return sHint
End Sub
'get Label
Sub getLabel As String
	Return sLabel
End Sub
'get Mask
Sub getMask As String
	Return sMask
End Sub
'get Read Only
Sub getReadOnly As Boolean
	Return bReadOnly
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Value
Sub getValue As String
	sValue = mElement.GetChecked
	Return sValue
End Sub