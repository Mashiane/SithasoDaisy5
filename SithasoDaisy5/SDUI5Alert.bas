B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _actions, Description: Child Item _actions
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Alert Title, Description: Title Text
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Alert Text, Description: Text
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: Alignment, DisplayName: Alignment, FieldType: String, DefaultValue: none, Description: Alignment, List: horizontal|none|vertical
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Dash, DisplayName: Dash, FieldType: Boolean, DefaultValue: False, Description: Dash
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: IconSize, DisplayName: Icon Size, FieldType: String, DefaultValue: 16px, Description: Icon Size
#DesignerProperty: Key: IconColor, DisplayName: Icon Color, FieldType: String, DefaultValue: , Description: Icon Color
#DesignerProperty: Key: Outline, DisplayName: Outline, FieldType: Boolean, DefaultValue: False, Description: Outline
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 96, Description: Width
#DesignerProperty: Key: Soft, DisplayName: Soft, FieldType: Boolean, DefaultValue: False, Description: Soft
#DesignerProperty: Key: HasActions, DisplayName: HasActions, FieldType: Boolean, DefaultValue: False, Description: Has Actions.
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
	Private sText As String = "Alert"
	Public Tag As Object
	'Public Root As SDUIElement
	Private sAlignment As String = "none"
	Private sBackgroundColor As String = ""
	Private sColor As String = "none"
	Private bDash As Boolean = False
	Private sIcon As String = ""
	Private sIconColor As String = ""
	Private bOutline As Boolean = False
	Private sSize As String = "none"
	Private bSoft As Boolean = False
	Private sTextColor As String = ""
	Public CONST ALIGNMENT_HORIZONTAL As String = "horizontal"
	Public CONST ALIGNMENT_NONE As String = "none"
	Public CONST ALIGNMENT_VERTICAL As String = "vertical"
	Private sTitle As String = "Alert Title"
	Private sIconSize As String = "16px"
	Private bHasActions As Boolean = False
	Private sHeight As String = ""
	Private sWidth As String = "96"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize	
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
End Sub
'add this element to an existing parent element using current props
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
	s = UI.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub

public Sub getParentID() As String
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
	Return UI.GetVisible(mElement)
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

'set text
Sub setText(text As String)			'ignoredeadcode
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_text"$, text)
	If sText = "" Then
		UI.SetVisibleByID($"${mName}_text"$, False)
	Else
		UI.SetVisibleByID($"${mName}_text"$, True)
	End If
End Sub
'get text
Sub getText As String
	Return UI.GetText(mElement)
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		sAlignment = Props.GetDefault("Alignment", "")
		sAlignment = UI.CStr(sAlignment)
		If sAlignment = "none" Then sAlignment = ""
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bDash = Props.GetDefault("Dash", False)
		bDash = UI.CBool(bDash)
		sIcon = Props.GetDefault("Icon", "")
		sIcon = UI.CStr(sIcon)
		sIconColor = Props.GetDefault("IconColor", "")
		sIconColor = UI.CStr(sIconColor)
		bOutline = Props.GetDefault("Outline", False)
		bOutline = UI.CBool(bOutline)
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		bSoft = Props.GetDefault("Soft", False)
		bSoft = UI.CBool(bSoft)
		sTitle = Props.GetDefault("Title", "")
		sTitle = UI.CStr(sTitle)
		sIconSize = Props.GetDefault("IconSize", "16px")
		sIconSize = UI.CStr(sIconSize)
		bHasActions = Props.GetDefault("HasActions", False)
		bHasActions = UI.CBool(bHasActions)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "96")
		sWidth = UI.CStr(sWidth)
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
	UI.AddClassDT("alert")
	UI.AddAttrDT("role", "alert")
	If sAlignment <> "" Then UI.AddClassDT("alert-" & sAlignment)
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sColor <> "" Then UI.AddColorDT("alert", sColor)
	If bDash = True Then UI.AddClassDT("alert-dash")
	If bOutline = True Then UI.AddClassDT("alert-outline")
	If sSize <> "" Then UI.AddSizeDT("alert", sSize)
	If bSoft = True Then UI.AddClassDT("alert-soft")
'	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
	UI.AddAttrDT("aria-label", "status")
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<svg id="${mName}_icon" style="pointer-events:none;" data-unique-ids="disabled" fill="currentColor" data-src="${sIcon}" class="hidden" data-js="enabled"></svg>
		<div id="${mName}_content" class="flex flex-col">
			<h3 id="${mName}_title" class="font-bold hidden">${sTitle}</h3>
			<div id="${mName}_text">${sText}</div>
		</div>
		<div id="${mName}_actions" class="hidden"></div>
	</div>"$).Get("#" & mName)
	setIcon(sIcon)
	setIconColor(sIconColor)
	setIconSize(sIconSize)
	setTitle(sTitle)
	setText(sText)
	setHasActions(bHasActions)
'	setVisible(bVisible)
	UI.OnEvent(mElement, "click", mCallBack, $"${mEventName}_click"$)
End Sub


'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, s)
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

Sub setHasActions(b As Boolean)			'ignoredeadcode
	bHasActions = b
	CustProps.Put("HasActions", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_actions"$, b)
End Sub

Sub getHasActions As Boolean
	Return bHasActions
End Sub

'set Icon Size
Sub setIconSize(s As String)			'ignoredeadcode
	sIconSize = s
	CustProps.put("IconSize", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetHeightByID($"#${mName}_icon"$, s)
	UI.SetWidthByID($"#${mName}_icon"$, s)
End Sub
'get Icon Size
Sub getIconSize As String
	Return sIconSize
End Sub

'set text
Sub setTitle(text As String)				'ignoredeadcode
	sTitle = text
	CustProps.Put("Title", text)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_title"$, text)
	If sTitle = "" Then
		UI.SetVisibleByID($"${mName}_title"$, False)
	Else	
		UI.SetVisibleByID($"${mName}_title"$, True)
	End If
End Sub
'get title
Sub getTitle As String
	Return sTitle
End Sub

'set Alignment
'options: horizontal|none|vertical
Sub setAlignment(s As String)
	sAlignment = s
	CustProps.put("Alignment", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "alert-" & s)
End Sub
'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "alert", s)
End Sub
'set Dash
Sub setDash(b As Boolean)
	bDash = b
	CustProps.put("Dash", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "alert-dash")
	Else
		UI.RemoveClass(mElement, "alert-dash")
	End If
End Sub
'set Icon
Sub setIcon(s As String)			'ignoredeadcode
	sIcon = s
	CustProps.put("Icon", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetIconNameByID($"${mName}_icon"$, s)
	If sIcon = "" Then
		UI.SetVisibleByID($"${mName}_icon"$, False)
	Else
		UI.SetVisibleByID($"${mName}_icon"$, True)
	End If
End Sub
'set Icon Color
Sub setIconColor(s As String)			'ignoredeadcode
	sIconColor = s
	CustProps.put("IconColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetIconColorByID($"${mName}_icon"$, s)
End Sub
'set Outline
Sub setOutline(b As Boolean)
	bOutline = b
	CustProps.put("Outline", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "alert-outline")
	Else
		UI.RemoveClass(mElement, "alert-outline")
	End If
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "alert", s)
End Sub
'set Soft
Sub setSoft(b As Boolean)
	bSoft = b
	CustProps.put("Soft", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "alert-soft")
	Else
		UI.RemoveClass(mElement, "alert-soft")
	End If
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, s)
End Sub
'get Alignment
Sub getAlignment As String
	Return sAlignment
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Dash
Sub getDash As Boolean
	Return bDash
End Sub
'get Icon
Sub getIcon As String
	Return sIcon
End Sub
'get Icon Color
Sub getIconColor As String
	Return sIconColor
End Sub
'get Outline
Sub getOutline As Boolean
	Return bOutline
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Soft
Sub getSoft As Boolean
	Return bSoft
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub