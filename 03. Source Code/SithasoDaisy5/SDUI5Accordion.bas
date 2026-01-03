B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Change (Item As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: RawOptions, DisplayName: Options (JSON), FieldType: String, DefaultValue: btn1=Button 1; btn2=Button 2; btn3=Button 3, Description: Key Values
#DesignerProperty: Key: Active, DisplayName: Active Item, FieldType: String, DefaultValue: btn1, Description: Active Item
#DesignerProperty: Key: ClearContents, DisplayName: Clear Contents, FieldType: Boolean, DefaultValue: False, Clear Contents
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-100, Description: Background Color
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private sBackgroundColor As String = "base-100"
	Private sRounded As String = "none"
	Private sShadow As String = "none"
	Private sRawOptions As String = "btn1=Button 1; btn2=Button 2; btn3=Button 3"
	Private items As Map
	Private sActive As String = ""
	Public Children As Map
	Private bClearContents As Boolean = False
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
	items.Initialize 
	Children.Initialize
	SetDefaults
End Sub


private Sub SetDefaults
	CustProps.Initialize
	CustProps.Put("ParentID",          "")                     'String (empty by default)
	CustProps.Put("Width",            "full")                 'String
	CustProps.Put("RawOptions",       "btn1=Button 1; btn2=Button 2; btn3=Button 3")   'String
	CustProps.Put("Active",           "btn1")                 'String
	CustProps.Put("ClearContents",   False)                  'Boolean
	CustProps.Put("BackgroundColor", "base-100")             'String
	CustProps.Put("Rounded",          "none")                 'String
	CustProps.Put("Shadow",           "none")                 'String
	CustProps.Put("Visible",          True)                   'Boolean
	CustProps.Put("Enabled",          True)                   'Boolean
	CustProps.Put("PositionStyle",    "none")                 'String
	CustProps.Put("Position",         "t=?; b=?; r=?; l=?")   'String
	CustProps.Put("MarginAXYTBLR",    "a=?; x=?; y=?; t=?; b=?; l=?; r=?")   'String
	CustProps.Put("PaddingAXYTBLR",   "a=?; x=?; y=?; t=?; b=?; l=?; r=?")   'String
	CustProps.Put("RawClasses",       "")                     'String (empty)
	CustProps.Put("RawStyles",        "")                     'String (empty)
	CustProps.Put("RawAttributes",    "")                     'String (empty)
End Sub

'set properties from an outside source
Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.Get("ParentID")
End Sub

Sub GetProperties As Map
	Return CustProps
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
		'sBackgroundColor = Props.GetDefault("BackgroundColor", "base-100")
		'sBackgroundColor = UI.CStr(sBackgroundColor)
		'If sBackgroundColor = "base-100" Then sBackgroundColor = ""
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sRawOptions = Props.GetDefault("RawOptions", "btn1=Button 1; btn2=Button 2; btn3=Button 3")
		sRawOptions = UI.CStr(sRawOptions)
		sActive = Props.GetDefault("Active", "btn1")
		sActive = UI.CStr(sActive)
		sWidth = Props.GetDefault("Width", "")
		sWidth = UI.CStr(sWidth)
		bClearContents = Props.GetDefault("ClearContents", False)
		bClearContents = UI.CBool(bClearContents)
	End If
	'
	'If sBackgroundColor <> "base-100" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	UI.AddClassDT("join join-vertical")
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
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

Sub setClearContents(b As Boolean)
	bClearContents = b
	CustProps.Put("ClearContents", b)
End Sub

Sub getClearContents As Boolean
	Return bClearContents
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
	Dim ni As SDUI5Collapse
	ni.Initialize(mCallBack, nKey, nKey)
	ni.GroupName = mName
	ni.ParentID = mName
	ni.Title = sText
	ni.Visible = True
	ni.RightIcon = "arrow"
	ni.JoinItem = True
	ni.AddComponent
	items.Put(nKey, nKey)
	If bClearContents Then
		ni.ClearContent
	End If
	Children.Put($"${nKey}_content"$, "SDUI5Text")
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

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'get a tab item
Sub CollapseItem(skey As String) As SDUI5Collapse
	skey = UI.CleanID(skey)
	Dim ni As SDUI5Collapse
	ni.Initialize(mCallBack, skey, skey)
	ni.ParentID = mName
	ni.LinkExisting
	Return ni
End Sub

'set button text
Sub SetCollapseItemText(btnID As String, text As String)
	btnID = UI.CleanID(btnID)
	UI.SetAttrByID($"${btnID}_${mName}_titletext"$, "aria-label", text)
	UI.SetTextByID($"${btnID}_${mName}_titletext"$, text)
End Sub

'set button icon
Sub SetCollapseItemIcon(btnID As String, text As String)
	btnID = UI.CleanID(btnID)
	UI.SetIconNameByID($"${btnID}_${mName}_titleicon"$, text)
	If text = "" Then
		UI.SetVisibleByID($"${btnID}_${mName}_titleicon"$, False)
	Else
		UI.SetVisibleByID($"${btnID}_${mName}_titleicon"$, True)
	End If
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub