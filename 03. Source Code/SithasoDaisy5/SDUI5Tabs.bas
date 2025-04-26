B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Item As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Placement, DisplayName: Placement, FieldType: String, DefaultValue: top, Description: Placement, List: bottom|top
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: lift, Description: Style, List: border|box|lift
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: RawOptions, DisplayName: Options (JSON), FieldType: String, DefaultValue: btn1=Button 1; btn2=Button 2; btn3=Button 3, Description: Key Values
#DesignerProperty: Key: Active, DisplayName: Active Item, FieldType: String, DefaultValue: btn1, Description: Active Item
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
	Private sHeight As String = ""
	Private sPlacement As String = "top"
	Private sSize As String = "none"
	Private sStyle As String = "lift"
	Private sWidth As String = ""
	Public CONST PLACEMENT_BOTTOM As String = "bottom"
	Public CONST PLACEMENT_TOP As String = "top"
	Public CONST SIZE_LG As String = "lg"
	Public CONST SIZE_MD As String = "md"
	Public CONST SIZE_NONE As String = "none"
	Public CONST SIZE_SM As String = "sm"
	Public CONST SIZE_XL As String = "xl"
	Public CONST SIZE_XS As String = "xs"
	Public CONST STYLE_BORDER As String = "border"
	Public CONST STYLE_BOX As String = "box"
	Public CONST STYLE_LIFT As String = "lift"
	Private sRawOptions As String = "btn1=Button 1; btn2=Button 2; btn3=Button 3"
	Private items As Map
	Private sActive As String = ""
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	
	items.Initialize 
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
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sPlacement = Props.GetDefault("Placement", "top")
		sPlacement = UI.CStr(sPlacement)
		sPlacement = sPlacement.ToLowerCase
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sStyle = Props.GetDefault("Style", "lift")
		sStyle = UI.CStr(sStyle)
		sWidth = Props.GetDefault("Width", "")
		sWidth = UI.CStr(sWidth)
		sRawOptions = Props.GetDefault("RawOptions", "btn1=Button 1; btn2=Button 2; btn3=Button 3")
		sRawOptions = UI.CStr(sRawOptions)
		sActive = Props.GetDefault("Active", "btn1")
		sActive = UI.CStr(sActive)
	End If
	'
	UI.AddClassDT("tabs whitespace-nowrap")
	UI.AddAttrDT("role", "tablist")
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sPlacement <> "" Then UI.AddClassDT("tabs-" & sPlacement)
	If sStyle <> "" Then UI.AddClassDT("tabs-" & sStyle)	
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
	If sSize <> "" Then UI.AddSizeDT("tabs", sSize)
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
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
'	setVisible(bVisible)
	setOptions(sRawOptions)
	setActive(sActive)
End Sub

Sub setOptions(s As String)			'ignoredeadcode
	sRawOptions = s
	CustProps.Put("RawOptions", s)
	If mElement = Null Then Return
	Clear
	If s = "" Then Return
	Dim m As Map = UI.GetKeyValues(s, False)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		AddOption(k, v)
	Next
End Sub

'get a step from the wizard
Sub ContentAt(key As String) As String
	Return $"#${key}_${mName}_content"$
End Sub

'get Raw Options
Sub getOptions As String
	Return sRawOptions
End Sub

Sub AddOption(sKey As String, sText As String)
	sKey = UI.CleanID(sKey)
	Dim nKey As String = $"${sKey}_${mName}"$
	Dim ni As SDUI5TabsItem
	ni.Initialize(mCallBack, sKey, sKey)
	ni.ParentID = mName
	ni.Text = sText
	ni.Visible = True
	ni.AddComponent
	items.Put(nKey, nKey)
End Sub

'set Active
Sub setActive(item As String)			'ignoredeadcode
	sActive = item
	item = UI.CleanID(item)
	CustProps.put("Active", item)
	If mElement = Null Then Return
	If item <> "" Then
		UI.SetCheckedByID($"${item}_${mName}"$, True)
	End If
End Sub

'get Active
Sub getActive As String
	Return sActive
End Sub

Sub Clear			'ignoredeadcode
	If mElement = Null Then Return
	mElement.empty
	items.Initialize 
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Placement
'options: bottom|top
Sub setPlacement(s As String)
	s = s.ToLowerCase
	sPlacement = s
	CustProps.put("Placement", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "tabs-" & s)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	s = s.ToLowerCase
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "tabs", s)
End Sub
'set Style
'options: border|box|lift
Sub setStyle(s As String)
	s = s.ToLowerCase
	sStyle = s
	CustProps.put("Style", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "tabs-" & s)
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
'get Placement
Sub getPlacement As String
	Return sPlacement
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Style
Sub getStyle As String
	Return sStyle
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set button text
Sub SetTabItemText(btnID As String, text As String)
	btnID = UI.CleanID(btnID)
	UI.SetAttrByID($"${btnID}_${mName}"$, "aria-label", text)
End Sub

'set a button active
Sub SetTabItemActive(btnID As String, b As Boolean)
	btnID = UI.CleanID(btnID)
	UI.SetCheckedByID($"${btnID}_${mName}"$, b)
End Sub