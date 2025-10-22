B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Change (item As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: fit, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: fit , Description: Width
#DesignerProperty: Key: RawOptions, DisplayName: Options (JSON), FieldType: String, DefaultValue: btn1=Button 1; btn2=Button 2; btn3=Button 3, Description: Key Values
#DesignerProperty: Key: IconSize, DisplayName: Icon Size, FieldType: String, DefaultValue: 20px, Description: Icon Size
#DesignerProperty: Key: BadgeColor, DisplayName: Badge Color, FieldType: String, DefaultValue: , Description: Badge Color
#DesignerProperty: Key: BadgeSize, DisplayName: Badge Size, FieldType: String, DefaultValue: md, Description: Badge Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: ActiveColor, DisplayName: Active Color, FieldType: String, DefaultValue: #0000ff, Description: Active Color
#DesignerProperty: Key: ActiveTextColor, DisplayName: Active Text Color, FieldType: String, DefaultValue: #ffffff, Description: Active Text Color
#DesignerProperty: Key: OptionWidth, DisplayName: Option Width, FieldType: String, DefaultValue: 32, Description: Option Width
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
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private sRawOptions As String = "btn1=Button 1; btn2=Button 2; btn3=Button 3"
	Public Tag As Object
	Private sActive As String = ""
	Private sDisabled As String = ""
	Private sSize As String = "md"
	Private sPosition As String = "t=?; b=?; r=?; l=?"
	Private sPositionStyle As String = "none"
	Private sRawClasses As String = ""
	Private sRawStyles As String = ""
	Private sRawAttributes As String = ""
	Private sMarginAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sPaddingAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sHeight As String = "fit"
	Private sWidth As String = "fit"
	Private sActiveColor As String = "#0000ff"
	Private sActiveTextColor As String = "#ffffff"
	Private sOptionWidth As String = "32"
	Private items As Map
	Private sIconSize As String = "20px"
	Private sBadgeColor As String = ""
	Private sBadgeSize As String = "md"
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
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Size", "md")
	CustProps.Put("Height", "fit")
	CustProps.Put("Width", "fit")
	CustProps.Put("RawOptions", "btn1=Button 1; btn2=Button 2; btn3=Button 3")
	CustProps.Put("IconSize", "20px")
	CustProps.Put("BadgeColor", "")
	CustProps.Put("BadgeSize", "md")
	CustProps.Put("ActiveColor", "#0000ff")
	CustProps.Put("ActiveTextColor", "#ffffff")
	CustProps.Put("OptionWidth", "32")
	CustProps.Put("Active", "btn1")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
End Sub

' returns the element id
Public Sub getID() As String
	Return mName
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
	UI.SetVisible(mElement, b)
End Sub
'get Visible
Sub getVisible As Boolean
	bVisible = UI.GetVisible(mElement)
	Return bVisible
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
		sActive = Props.GetDefault("Active", "btn1")
		sActive = UI.Cstr(sActive)
		sRawOptions = Props.GetDefault("RawOptions", "btn1=Button 1; btn2=Button 2; btn3=Button 3")
		sRawOptions = UI.CStr(sRawOptions)
		sDisabled = Props.GetDefault("Disabled", "")
		sDisabled = UI.Cstr(sDisabled)
		sSize = Props.GetDefault("Size", "md")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sHeight = Props.GetDefault("Height", "fit")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "fit")
		sWidth = UI.CStr(sWidth)
		sActiveColor = Props.GetDefault("ActiveColor", "#0000ff")
		sActiveColor = UI.CStr(sActiveColor)
		sActiveTextColor = Props.GetDefault("ActiveTextColor", "#ffffff")
		sActiveTextColor = UI.CStr(sActiveTextColor)
		sOptionWidth = Props.GetDefault("OptionWidth", "32")
		sOptionWidth = UI.CStr(sOptionWidth)
		sBadgeColor = Props.GetDefault("BadgeColor", "")
		sBadgeColor = UI.CStr(sBadgeColor)
		sBadgeSize = Props.GetDefault("BadgeSize", "md")
		sBadgeSize = UI.CStr(sBadgeSize)
		If sBadgeSize = "none" Then sBadgeSize = ""
		sIconSize = Props.GetDefault("IconSize", "20px")
		sIconSize = UI.CStr(sIconSize)
	End If
	'
	
	UI.AddClassDT("tabs tabs-box inline-flex flex-nowrap whitespace-nowrap")
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
	UI.AddAttrDT("role", "tablist")
	If sSize <> "" Then UI.AddSizeDT("tabs", sSize)	'
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
	BANano.Await(setOptions(sRawOptions))
	setActive(sActive)
'	setVisible(bVisible)
End Sub

Sub setIconSize(s As String)
	sIconSize = s
	CustProps.Put("IconSize", s)
End Sub

Sub getIconSize As String
	Return sIconSize
End Sub

'set Badge Color
Sub setBadgeColor(s As String)					'ignoredeadcode
	sBadgeColor = s
	CustProps.put("BadgeColor", s)
End Sub

'set Badge Size
'options: xs|none|sm|md|lg|xl
Sub setBadgeSize(s As String)
	sBadgeSize = s
	CustProps.put("BadgeSize", s)
End Sub

'get Badge Color
Sub getBadgeColor As String
	Return sBadgeColor
End Sub
'get Badge Size
Sub getBadgeSize As String
	Return sBadgeSize
End Sub

'set Active Color
Sub setActiveColor(s As String)
	sActiveColor = s
	CustProps.put("ActiveColor", s)
End Sub
'set Active Text Color
Sub setActiveTextColor(s As String)
	sActiveTextColor = s
	CustProps.put("ActiveTextColor", s)
End Sub
'set Option Width
Sub setOptionWidth(s As String)
	sOptionWidth = s
	CustProps.put("OptionWidth", s)
End Sub
'get Active Color
Sub getActiveColor As String
	Return sActiveColor
End Sub
'get Active Text Color
Sub getActiveTextColor As String
	Return sActiveTextColor
End Sub
'get Option Width
Sub getOptionWidth As String
	Return sOptionWidth
End Sub

'get Width
Sub getWidth As String
	Return sWidth
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

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub

Sub Clear			'ignoredeadcode
	If mElement = Null Then Return
	mElement.empty
	items.Initialize 
End Sub

Sub setOptions(s As String)			'ignoredeadcode
	sRawOptions = s
	CustProps.Put("RawOptions", s)
	If mElement = Null Then Return
	BANano.Await(Clear)
	If s = "" Then Return
	Dim m As Map = UI.GetKeyValues(s, False)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		BANano.Await(AddButton(k, v))
	Next
End Sub

'Sub AddButton(sKey As String, sText As String)
'	sKey = UI.CleanID(sKey)
'	Dim oSize As String = UI.FixSize("w", sOptionWidth)
'	Dim sTag As String = $"<input id="${sKey}_${mName}" type="radio" name="${mName}" value="${sKey}" role="tab" class="tab ${oSize}" aria-label="${sText}"></input>"$
'	mElement.Append(sTag)
'	items.Put($"${sKey}_${mName}"$, $"${sKey}_${mName}"$)
'	UI.OnEventByID($"${sKey}_${mName}"$, "change", Me, "itemchange")
'End Sub

Sub AddButton(sKey As String, sText As String)
	sKey = UI.CleanID(sKey)
	Dim nKey As String = $"${sKey}_${mName}"$
	Dim ni As SDUI5TabsItem
	ni.Initialize(mCallBack, sKey, sKey)
	ni.ParentID = mName
	ni.width = sOptionWidth
	ni.Text = sText
	ni.Visible = True
	ni.BadgeSize = sBadgeSize
	ni.BadgeColor = sBadgeColor
	ni.IconSize = sIconSize
	ni.AddComponent
	ni.HideContent(sKey)
	items.Put(nKey, nKey)
	UI.OnEventByID($"${sKey}_${mName}"$, "change", Me, "itemchange")
End Sub
'
Sub AddTabItem(sKey As String, sText As String, sIcon As String, sBadge As String) As SDUI5TabsItem
	sKey = UI.CleanID(sKey)
	Dim nKey As String = $"${sKey}_${mName}"$
	Dim ni As SDUI5TabsItem
	ni.Initialize(mCallBack, sKey, sKey)
	ni.ParentID = mName
	ni.Text = sText
	ni.Visible = True
	ni.BadgeSize = sSize
	ni.Badge = sBadge
	ni.Icon = sIcon
	ni.BadgeSize = sBadgeSize
	ni.BadgeColor = sBadgeColor
	ni.IconSize = sIconSize
	ni.AddComponent
	ni.HideContent(sKey)
	items.Put(nKey, nKey)
	UI.OnEventByID($"${sKey}_${mName}"$, "change", Me, "itemchange")
	Return ni
End Sub

'get a tab item
Sub TabItem(skey As String) As SDUI5TabsItem
	skey = UI.CleanID(skey)
	Dim ni As SDUI5TabsItem
	ni.Initialize(mCallBack, skey, skey)
	ni.ParentID = mName
	ni.LinkExisting
	Return ni
End Sub


private Sub itemchange(e As BANanoEvent)			'ignoreDeadCode
	e.PreventDefault
	Dim sprefix As String = UI.MvField(e.ID, 1, "_")
	BANano.Await(SetActiveInternal(sprefix))
	BANano.CallSub(mCallBack, $"${mName}_change"$, Array(sprefix))
End Sub

private Sub SetActiveInternal(item As String)
	item = UI.CleanID(item)
	For Each k As String In items.Keys
		UI.SetBackgroundColorStyleByID($"${k}_label"$, "")
		UI.SetColorStyleByID($"${k}_label"$, "")
	Next
	If item <> "" Then
		UI.SetBackgroundColorStyleByID($"${item}_${mName}_label"$, sActiveColor)
		UI.SetColorStyleByID($"${item}_${mName}_label"$, sActiveTextColor)
	End If
End Sub

Sub getOptions As String
	Return sRawOptions
End Sub

'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "tabs", s)
End Sub

'get Size
Sub getSize As String
	Return sSize
End Sub

'set Active
Sub setActive(item As String)			'ignoredeadcode
	item = UI.CleanID(item)
	CustProps.put("Active", item)
	If mElement = Null Then Return
	For Each k As String In items.Keys
		UI.SetBackgroundColorStyleByID($"${k}_label"$, "")
		UI.SetColorStyleByID($"${k}_label"$, "")
	Next
	If item <> "" Then 
		UI.SetCheckedByID($"${item}_${mName}"$, True)
		UI.SetBackgroundColorStyleByID($"${item}_${mName}_label"$, sActiveColor)
		UI.SetColorStyleByID($"${item}_${mName}_label"$, sActiveTextColor)
	End If
End Sub

'set Disabled
Sub setDisabled(sitems As String)
	sDisabled = sitems
	CustProps.put("Disabled", items)
	If mElement = Null Then Return
	If sitems = "" Then Return
	Dim itemsM As Map = UI.GetKeyValues(sitems, False)
	For Each k As String In itemsM.Keys
		UI.SetEnabledByID($"${k}_${mName}_label"$, False)
		UI.SetEnabledByID($"${k}_${mName}"$, False)
	Next
End Sub
'get Active
Sub getActive As String
	Return sActive
End Sub
'get Disabled
Sub getDisabled As String
	Return sDisabled
End Sub