B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: InforType, DisplayName: Type, FieldType: String, DefaultValue: 1, Description: Infor Type, List: 1|2|3|4|5
#DesignerProperty: Key: Effect, DisplayName: Effect, FieldType: String, DefaultValue: none, Description: Effect, List: hover-expand-effect|hover-zoom-effect|none
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: fa-solid fa-user, Description: Icon
#DesignerProperty: Key: IconColor, DisplayName: Icon Color, FieldType: String, DefaultValue: #264348, Description: Icon Color
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Employees, Description: Title
#DesignerProperty: Key: StartFrom, DisplayName: Start From, FieldType: String, DefaultValue: 0, Description: Start From
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 1000, Description: Value
#DesignerProperty: Key: Prefix, DisplayName: Prefix, FieldType: String, DefaultValue: , Description: Prefix
#DesignerProperty: Key: Separator, DisplayName: Separator, FieldType: String, DefaultValue: , Description: Separator
#DesignerProperty: Key: Suffix, DisplayName: Suffix, FieldType: String, DefaultValue: , Description: Suffix
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: AnimateCounter, DisplayName: Animate Counter, FieldType: Boolean, DefaultValue: True, Description: Animate Counter
#DesignerProperty: Key: Decimal, DisplayName: Decimal, FieldType: String, DefaultValue: ., Description: Decimal
#DesignerProperty: Key: Duration, DisplayName: Duration, FieldType: String, DefaultValue: 2, Description: Duration
#DesignerProperty: Key: DecimalPlaces, DisplayName: Decimal Places, FieldType: String, DefaultValue: 0, Description: Decimal Places
#DesignerProperty: Key: UseGrouping, DisplayName: Use Grouping, FieldType: Boolean, DefaultValue: True, Description: Use Grouping
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
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
	Public mElement As BANanoElement 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mName As String 'ignore
	Private BANano As BANano   'ignore
	Private sPosition As String = "t=?; b=?; r=?; l=?"
	Private sPositionStyle As String = "none"
	Private sRawClasses As String
	Private sRawStyles As String
	Private sRawAttributes As String
	Private sMarginAXYTBLR As String
	Private sPaddingAXYTBLR As String
	Private sParentID As String
	Private bVisible As Boolean = True
	Public Tag As Object
	Private Options As Map
	Private bAnimateCounter As Boolean = True
	Private sBackgroundColor As String = ""
	Private sDecimal As String = "."
	Private sDuration As String = "2"
	Private sIcon As String = "fa-solid fa-user"
	Private sIconColor As String = "#264348"
	Private sInforType As String = "1"
	Private sPrefix As String = ""
	Private sSeparator As String = ""
	Private sStartFrom As String = "0"
	Private sSuffix As String = ""
	Private sTextColor As String = ""
	Private sTitle As String = "Employees"
	Private sValue As String = "1000"
	Public CONST INFORTYPE_1 As String = "1"
	Public CONST INFORTYPE_2 As String = "2"
	Public CONST INFORTYPE_3 As String = "3"
	Public CONST INFORTYPE_4 As String = "4"
	Public CONST INFORTYPE_5 As String = "5"
	Private CountUp As BANanoObject		'ignore
	Private sDecimalPlaces As String = "0"
	Private sEffect As String = "none"
	Private bUseGrouping As Boolean = True
	Public CONST EFFECT_HOVER_EXPAND_EFFECT As String = "hover-expand-effect"
	Public CONST EFFECT_HOVER_ZOOM_EFFECT As String = "hover-zoom-effect"
	Public CONST EFFECT_NONE As String = "none"
	Private bEnabled As Boolean = True
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	UI.Initialize(Me)
End Sub
' returns the BANanoElement
Public Sub getElement() As BANanoElement
	Return mElement
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
End Sub

'add this element to an existing parent element using current properties
Public Sub AddComponent
	If sParentID = "" Then Return
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
'return the #ID of the element
Public Sub getHere() As String
	Return $"#${mName}"$
End Sub
'set Visible
Sub setVisible(b As Boolean)
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	UI.SetVisible(mElement, bVisible)
End Sub
'get Visible
Sub getVisible As Boolean
	Return UI.GetVisible(mElement)
End Sub
'set Enabled
Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement = Null Then Return
	UI.SetEnabled(mElement, bEnabled)
End Sub
'get Enabled
Sub getEnabled As Boolean
	Return UI.GetEnabled(mElement)
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

'set value
Sub setValue(text As String)
	sValue = text
	CustProps.Put("Value", text)
	UI.SetTextByID($"${mName}_value"$, text)
End Sub

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		UI.ExcludeBackgroundColor = True
		UI.ExcludeEnabled = True
		UI.ExcludeTextColor = True
		UI.ExcludePosition = False
		UI.ExcludeEnabled = False
		UI.ExcludeVisible = False
		bAnimateCounter = Props.GetDefault("AnimateCounter", True)
		bAnimateCounter = modSD5.CBool(bAnimateCounter)
		sDecimal = Props.GetDefault("Decimal", ".")
		sDecimal = modSD5.CStr(sDecimal)
		sDuration = Props.GetDefault("Duration", "2")
		sDuration = modSD5.CStr(sDuration)
		sIcon = Props.GetDefault("Icon", "fa-solid fa-user")
		sIcon = modSD5.CStr(sIcon)
		sIconColor = Props.GetDefault("IconColor", "#264348")
		sIconColor = modSD5.CStr(sIconColor)
		sInforType = Props.GetDefault("InforType", "1")
		sInforType = modSD5.CStr(sInforType)
		sPrefix = Props.GetDefault("Prefix", "")
		sPrefix = modSD5.CStr(sPrefix)
		sSeparator = Props.GetDefault("Separator", "")
		sSeparator = modSD5.CStr(sSeparator)
		sStartFrom = Props.GetDefault("StartFrom", "0")
		sStartFrom = modSD5.CStr(sStartFrom)
		sSuffix = Props.GetDefault("Suffix", "")
		sSuffix = modSD5.CStr(sSuffix)
		sTextColor = Props.GetDefault("TextColor", "")
		sTextColor = modSD5.CStr(sTextColor)
		sTitle = Props.GetDefault("Title", "Employees")
		sTitle = modSD5.CStr(sTitle)
		sValue = Props.GetDefault("Value", "1000")
		sValue = modSD5.CStr(sValue)
		sDecimalPlaces = Props.GetDefault("DecimalPlaces", "0")
		sDecimalPlaces = modSD5.CStr(sDecimalPlaces)
		sEffect = Props.GetDefault("Effect", "none")
		sEffect = modSD5.CStr(sEffect)
		If sEffect = "none" Then sEffect = ""
		bUseGrouping = Props.GetDefault("UseGrouping", True)
		bUseGrouping = modSD5.CBool(bUseGrouping)
	End If
	'
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	'
	UI.AddClassDT("cursor-pointer pl-0 rounded-box")
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<div id="${mName}_iconbox" class="icon">
    		<i id="${mName}_icon" class="${sIcon}"></i>
    	</div>
    	<div id="${mName}_content" class="content">
    		<div id="${mName}_title" class="text font-semibold">${sTitle}</div>
    		<div id="${mName}_value" class="number mt-[5px]">${sValue}</div>
    	</div>
    </div>"$).Get("#" & mName)
	UI.OnEvent(mElement, "click", mCallBack, $"${mEventName}_click"$)
	'
	Options.put("decimal", sDecimal)
	Options.put("duration", modSD5.CInt(sDuration))
	Options.put("prefix", sPrefix)
	Options.put("separator", sSeparator)
	Options.put("suffix", sSuffix)
	Options.Put("startVal", modSD5.CInt(sStartFrom))
	Options.Put("useEasing", True)
	Options.put("decimalPlaces", modSD5.CInt(sDecimalPlaces))
	Options.put("useGrouping", bUseGrouping)
	
	setInforType(sInforType)
	setEffect(sEffect)
	setIcon(sIcon)
	setIconColor(sIconColor)
	setTextColor(sTextColor)
	setBackgroundColor(sBackgroundColor)
	'setVisible(bVisible)
	Refresh
End Sub

'executes the countUp ONLY
Sub Refresh						'ignoredeadcode
	If bAnimateCounter = False Then Return
	Dim eKey As String = $"${mName}_value"$
	sValue = modSD5.CInt(sValue)
	CountUp.Initialize2("countUp.CountUp", Array(eKey, sValue, Options))
	CountUp.RunMethod("start", Null)
End Sub

'set Decimal Places
Sub setDecimalPlaces(s As String)
	sDecimalPlaces = s
	CustProps.put("DecimalPlaces", s)
	Options.put("decimalPlaces", modSD5.CInt(s))
End Sub

'set Effect
'options: none|hover-expand-effect|hover-zoom-effect
Sub setEffect(s As String)				'ignoredeadcode
	sEffect = s
	CustProps.put("Effect", s)
	If mElement = Null Then Return
	UI.UpdateClass(mElement, "effect", sEffect)
End Sub
'set Use Grouping
Sub setUseGrouping(b As Boolean)
	bUseGrouping = b
	CustProps.put("UseGrouping", b)
	Options.put("useGrouping", b)
End Sub
'get Decimal Places
Sub getDecimalPlaces As String
	Return sDecimalPlaces
End Sub
'get Effect
Sub getEffect As String
	Return sEffect
End Sub
'get Use Grouping
Sub getUseGrouping As Boolean
	Return bUseGrouping
End Sub
'set Animate Counter
Sub setAnimateCounter(b As Boolean)
	bAnimateCounter = b
	CustProps.put("AnimateCounter", b)
End Sub
'set Color
Sub setBackgroundColor(s As String)		'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyle(mElement, "background-color", s)
End Sub

'set Decimal
Sub setDecimal(s As String)
	sDecimal = s
	CustProps.put("Decimal", s)
	Options.put("decimal", s)
End Sub
'set Duration
Sub setDuration(s As String)
	sDuration = s
	CustProps.put("Duration", s)
	Options.put("duration", modSD5.CInt(s))
End Sub
'set Icon
Sub setIcon(s As String)				'ignoredeadcode
	sIcon = s
	CustProps.put("Icon", s)
	If mElement = Null Then Return
	If s <> "" Then UI.UpdateClassByID($"${mName}_icon"$, "icon", s)
End Sub
'set Icon Color
Sub setIconColor(s As String)				'ignoredeadcode
	sIconColor = s
	CustProps.put("IconColor", s)
	If mElement = Null Then Return
	If sIconColor <> "" Then
		Select Case sInforType
		Case "1","2","3"
			UI.SetStyleByID($"${mName}_iconbox"$, "background-color", sIconColor)
		Case "4", "5"
			UI.SetStyleByID($"${mName}_icon"$, "color", sIconColor)
			UI.SetStyleByID($"${mName}_iconbox"$, "top", "10px")
		End Select
	End If
End Sub
'set Infor Type
'options: 1|2|3|4|5
Sub setInforType(s As String)			'ignoredeadcode
	sInforType = s
	CustProps.put("InforType", s)
	If mElement = Null Then Return
	Select Case sInforType
	Case "1"
		UI.UpdateClass(mElement, "type", "info-box")
	Case "2"
		UI.UpdateClass(mElement, "type", "info-box")
	Case "3"
		UI.UpdateClass(mElement, "type", "info-box-2")
	Case "4"
		UI.UpdateClass(mElement, "type", "info-box-3")
	Case "5"
		UI.UpdateClass(mElement, "type", "info-box-4")
	End Select
End Sub

'set Prefix
Sub setPrefix(s As String)
	sPrefix = s
	CustProps.put("Prefix", s)
	Options.put("prefix", s)
End Sub
'set Separator
Sub setSeparator(s As String)
	sSeparator = s
	CustProps.put("Separator", s)
	Options.put("separator", s)
End Sub
'set Start From
Sub setStartFrom(s As String)
	sStartFrom = s
	CustProps.put("StartFrom", s)
	Options.put("startVal", modSD5.CInt(s))
End Sub
'set Suffix
Sub setSuffix(s As String)
	sSuffix = s
	CustProps.put("Suffix", s)
	Options.put("suffix", s)
End Sub
'set Text Color
Sub setTextColor(s As String)			'ignoredeadcode
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If sTextColor <> "" Then
		UI.SetStyleByID($"${mName}_value"$, "color", s)
		UI.SetStyleByID($"${mName}_title"$, "color", s)
	End If
End Sub
'
'set Title
Sub setTitle(s As String)
	sTitle = s
	CustProps.put("Title", s)
	If mElement = Null Then Return
	BANano.GetElement($"#${mName}_title"$).SetText(s)
End Sub
'get Animate Counter
Sub getAnimateCounter As Boolean
	Return bAnimateCounter
End Sub
'get Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Decimal
Sub getDecimal As String
	Return sDecimal
End Sub
'get Duration
Sub getDuration As String
	Return sDuration
End Sub
'get Icon
Sub getIcon As String
	Return sIcon
End Sub
'get Icon Color
Sub getIconColor As String
	Return sIconColor
End Sub
'get Infor Type
Sub getInforType As String
	Return sInforType
End Sub
'get Prefix
Sub getPrefix As String
	Return sPrefix
End Sub
'get Separator
Sub getSeparator As String
	Return sSeparator
End Sub
'get Start From
Sub getStartFrom As String
	Return sStartFrom
End Sub
'get Suffix
Sub getSuffix As String
	Return sSuffix
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Title
Sub getTitle As String
	Return sTitle
End Sub
'
'get ParentID
Sub getParentID As String
	Return sParentID
End Sub
'
'get Value
Sub getValue As String
	Return sValue
End Sub