B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: MenuName, DisplayName: Menu Name, FieldType: String, DefaultValue: menu1, Description: Menu Name
#DesignerProperty: Key: ItemType, DisplayName: Item Type, FieldType: String, DefaultValue: normal, Description: Item Type, List: icon|icon-text|normal|title|collapse-item
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: Open, DisplayName: Open, FieldType: Boolean, DefaultValue: False, Description: Open
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: IconSize, DisplayName: Icon Size, FieldType: String, DefaultValue: 5, Description: Icon Width & Height
#DesignerProperty: Key: IconColor, DisplayName: Icon Color, FieldType: String, DefaultValue: , Description: Icon Color
#DesignerProperty: Key: Parent, DisplayName: Parent, FieldType: Boolean, DefaultValue: False, Description: Parent
#DesignerProperty: Key: Active, DisplayName: Active, FieldType: Boolean, DefaultValue: False, Description: Active
#DesignerProperty: Key: Badge, DisplayName: Badge, FieldType: String, DefaultValue: , Description: Badge
#DesignerProperty: Key: BadgeColor, DisplayName: Badge Color, FieldType: String, DefaultValue: secondary, Description: Badge Color
#DesignerProperty: Key: BadgeSize, DisplayName: Badge Size, FieldType: String, DefaultValue: xs, Description: Badge Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: BadgeVisible, DisplayName: Badge Visible, FieldType: Boolean, DefaultValue: False, Description: Badge Visible
#DesignerProperty: Key: Focus, DisplayName: Focus, FieldType: Boolean, DefaultValue: False, Description: Focus
#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: , Description: Href
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: none, Description: Target, List: _blank|_parent|_self|_top|none
#DesignerProperty: Key: Tooltip, DisplayName: Tooltip, FieldType: String, DefaultValue: , Description: Tooltip
#DesignerProperty: Key: TooltipPosition, DisplayName: Tooltip Position, FieldType: String, DefaultValue: none, Description: Tooltip Position, List: bottom|left|none|right|top
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
	Private sText As String = ""
	Public Tag As Object
	Private bActive As Boolean = False
	Private sBadge As String = ""
	Private sBadgeColor As String = "secondary"
	Private sBadgeSize As String = "xs"
	Private bFocus As Boolean = False
	Private sHref As String = ""
	Private sIcon As String = ""
	Private sIconColor As String = ""
	Private sItemType As String = "normal"
	Private bParent As Boolean = False
	Private sTarget As String = "none"
	Private sTooltip As String = ""
	Private bBadgeVisible As Boolean = False
	Private sTooltipPosition As String = "none"
	Public CONST BADGESIZE_LG As String = "lg"
	Public CONST BADGESIZE_MD As String = "md"
	Public CONST BADGESIZE_NONE As String = "none"
	Public CONST BADGESIZE_SM As String = "sm"
	Public CONST BADGESIZE_XL As String = "xl"
	Public CONST BADGESIZE_XS As String = "xs"
	Public CONST ITEMTYPE_ICON As String = "icon"
	Public CONST ITEMTYPE_ICON_TEXT As String = "icon-text"
	Public CONST ITEMTYPE_NORMAL As String = "normal"
	Public CONST ITEMTYPE_TITLE As String = "title"
	Public CONST TOOLTIPPOSITION_BOTTOM As String = "bottom"
	Public CONST TOOLTIPPOSITION_LEFT As String = "left"
	Public CONST TOOLTIPPOSITION_NONE As String = "none"
	Public CONST TOOLTIPPOSITION_RIGHT As String = "right"
	Public CONST TOOLTIPPOSITION_TOP As String = "top"
	Private sMenuName As String = ""
	Private sIconSize As String = "5"
	Private bOpen As Boolean = False
	Private Items As Map
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	UI.Initialize(Me)
	Items.Initialize 
End Sub

Sub LinkExisting
	mElement.Initialize($"#${mName}"$)
	mTarget = BANano.ToElement(mElement.GetField("parentNode"))
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
	If b Then
		UI.RemoveClassByID($"${mName}_anchor"$, "menu-disabled")
	Else	
		UI.AddClassByID($"${mName}_anchor"$, "menu-disabled")
	End If
End Sub
'get Enabled
Sub getEnabled As Boolean
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
Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	If text = "" Then
		UI.SetVisibleByID($"${mName}_text"$, False)
	Else	
		UI.SetVisibleByID($"${mName}_text"$, True)
		UI.SetTextByID($"${mName}_text"$, sText)
	End If
End Sub
'get text
Sub getText As String
	sText = UI.GetText(mElement)
	Return sText
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
		bActive = Props.GetDefault("Active", False)
		bActive = modSD5.CBool(bActive)
		sBadge = Props.GetDefault("Badge", "")
		sBadge = modSD5.CStr(sBadge)
		sBadgeColor = Props.GetDefault("BadgeColor", "secondary")
		sBadgeColor = modSD5.CStr(sBadgeColor)
		If sBadgeColor = "none" Then sBadgeColor = ""
		sBadgeSize = Props.GetDefault("BadgeSize", "xs")
		sBadgeSize = modSD5.CStr(sBadgeSize)
		If sBadgeSize = "none" Then sBadgeSize = ""
		bFocus = Props.GetDefault("Focus", False)
		bFocus = modSD5.CBool(bFocus)
		sHref = Props.GetDefault("Href", "")
		sHref = modSD5.CStr(sHref)
		sIcon = Props.GetDefault("Icon", "")
		sIcon = modSD5.CStr(sIcon)
		sIconColor = Props.GetDefault("IconColor", "")
		sIconColor = modSD5.CStr(sIconColor)
		sItemType = Props.GetDefault("ItemType", "normal")
		sItemType = modSD5.CStr(sItemType)
		If sItemType = "" Then sItemType = ""
		bParent = Props.GetDefault("Parent", False)
		bParent = modSD5.CBool(bParent)
		sTarget = Props.GetDefault("Target", "none")
		sTarget = modSD5.CStr(sTarget)
		If sTarget = "none" Then sTarget = ""
		sTooltip = Props.GetDefault("Tooltip", "")
		sTooltip = modSD5.CStr(sTooltip)
		sTooltipPosition = Props.GetDefault("TooltipPosition", "none")
		sTooltipPosition = modSD5.CStr(sTooltipPosition)
		If sTooltipPosition = "none" Then sTooltipPosition = ""
		sMenuName = Props.GetDefault("MenuName", "")
		sMenuName = modSD5.CStr(sMenuName)
		sIconSize = Props.GetDefault("IconSize", "5")
		sIconSize = modSD5.CStr(sIconSize)
		bBadgeVisible = Props.GetDefault("BadgeVisible", False)
		bBadgeVisible = modSD5.CBool(bBadgeVisible)    
		bOpen = Props.GetDefault("Open", False)
		bOpen = modSD5.CBool(bOpen)            
	End If
	'
	If bActive = True Then UI.AddClassDT("menu-active")
	If bFocus = True Then UI.AddClassDT("menu-focus")
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
	'
	If sMenuName = "" Then
		BANano.Throw($"${mName}.DesignerCreateView: Menu Name is not specified!"$)
		Return
	End If	
	'
	Select Case sItemType
	Case "icon"
		sText = ""
		sBadge = ""
		sBadgeColor = ""
		sBadgeSize = ""
	Case "icon-text", "collapse-item"
	Case "normal"
		sIcon = ""
	Case "title"
		sIcon = ""
		sBadge = ""
		sBadgeColor = ""
		sBadgeSize = ""
	End Select
	'
	Select Case sItemType
	Case "title"
		mElement = mTarget.Append($"[BANCLEAN]
		<li id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
			<h2 id="${mName}_text">${sText}</h2>
			<ul id="${mName}_items" class="hidden"></ul>
		</li>"$).Get("#" & mName)
		UI.AddClassByID($"${mName}_text"$, "menu-title")
	Case "collapse-item"
		bParent = True
		mElement = mTarget.Append($"[BANCLEAN]
		<li id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
			<details id="${mName}_details">
				<summary id="${mName}_anchor">
					<img id="${mName}_icon" alt="" src="${sIcon}" class="hidden"></img>
					<span id="${mName}_text">${sText}</span>
					<span id="${mName}_badge" class="badge hidden">${sBadge}</span>
				</summary>	
				<ul id="${mName}_items" class="hidden"></ul>
			</details>
		</li>"$).Get("#" & mName)
		setOpen(bOpen)
	Case Else	
		mElement = mTarget.Append($"[BANCLEAN]
			<li id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
				<a id="${mName}_anchor">
					<img id="${mName}_icon" alt="" src="${sIcon}" class="hidden"></img>
					<span id="${mName}_text" class="hidden">${sText}</span>
					<span id="${mName}_badge" class="badge hidden">${sBadge}</span>
				</a>
				<ul id="${mName}_items" class="hidden"></ul>
		</li>"$).Get("#" & mName)
	End Select
	'
	Select Case sItemType
	Case "title"
	Case Else
		setIcon(sIcon)
		setHref(sHref)
		setTarget(sTarget)
		setActive(bActive)
		setEnabled(bEnabled)
		setFocus(bFocus)
		setTooltip(sTooltip)
		setTooltipPosition(sTooltipPosition)
		setBadge(sBadge)
		setBadgeColor(sBadgeColor)
		setBadgeSize(sBadgeSize)
		setIconSize(sIconSize)
		setBadgeVisible(bBadgeVisible)
	End Select
	setParent(bParent)
	setText(sText)
'	setVisible(bVisible)
	'
	If sItemType = "collapse-item" Then Return
	If sItemType = "title" Then Return
	'
	UI.OnEvent(mElement, "click", Me, "itemclick")
End Sub

'set Menu Name
Sub setMenuName(s As String)
	sMenuName = s
	CustProps.put("MenuName", s)
End Sub

'get Menu Name
Sub getMenuName As String
	Return sMenuName
End Sub

private Sub itemclick(e As BANanoEvent)
	e.PreventDefault
	Dim itemName As String = modSD5.MvField(e.ID, 1, "_")
	BANano.CallSub(mCallBack, $"${sMenuName}_itemclick"$, Array(itemName))
End Sub

'set Active
Sub setActive(b As Boolean)
	bActive = b
	CustProps.put("Active", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClassByID($"${mName}_anchor"$, "menu-active")
	Else
		UI.RemoveClassByID($"${mName}_anchor"$, "menu-active")
	End If
End Sub
'set Badge
Sub setBadge(s As String)
	sBadge = s
	CustProps.put("Badge", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_badge"$, sBadge)
End Sub
'set Badge Color
Sub setBadgeColor(s As String)
	sBadgeColor = s
	CustProps.put("BadgeColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColorByID($"${mName}_badge"$, "color", "badge", s)
End Sub
'set Badge Size
'options: xs|none|sm|md|lg|xl
Sub setBadgeSize(s As String)
	sBadgeSize = s
	CustProps.put("BadgeSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSizeByID($"${mName}_badge"$, "size", "badge", s)
End Sub
'set Focus
Sub setFocus(b As Boolean)
	bFocus = b
	CustProps.put("Focus", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClassByID($"${mName}_anchor"$, "menu-focus")
	Else
		UI.RemoveClassByID($"${mName}_anchor"$, "menu-focus")
	End If
End Sub
'set Href
Sub setHref(s As String)
	sHref = s
	CustProps.put("Href", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttrByID($"${mName}_anchor"$, "href", s)
End Sub
'set Icon
Sub setIcon(s As String)
	sIcon = s
	CustProps.put("Icon", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetVisibleByID($"${mName}_icon"$, True)
		UI.SetImageByID($"${mName}_icon"$, s)
	Else
		UI.SetVisibleByID($"${mName}_icon"$, False)
	End If
End Sub
'set Icon Color
Sub setIconColor(s As String)
	sIconColor = s
	CustProps.put("IconColor", s)
	If mElement = Null Then Return
	'If s <> "" Then UI.AddClass(mElement, "icon-color-" & s)
End Sub
'set Item Type
'options: icon|icon-text|normal|title
Sub setItemType(s As String)
	sItemType = s
	CustProps.put("ItemType", s)
End Sub
'set Parent
Sub setParent(b As Boolean)
	bParent = b
	CustProps.put("Parent", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_items"$, bParent)
	If b = False Then
		UI.RemoveElementByID($"${mName}_items"$)
	End If
End Sub
'set Target
'options: _blank|_self|_parent|_top|none
Sub setTarget(s As String)
	sTarget = s
	CustProps.put("Target", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttrByID($"${mName}_anchor"$, "target", s)
End Sub
'set Tooltip
Sub setTooltip(s As String)
	sTooltip = s
	CustProps.put("Tooltip", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.AddClassByID($"${mName}_anchor"$, "tooltip")
		UI.SetAttrByID($"${mName}_anchor"$, "data-tip", s)
	Else
		UI.RemoveClassByID($"${mName}_anchor"$, "tooltip")
		UI.RemoveAttrByID($"${mName}_anchor"$, "data-tip")
	End If
End Sub
'set Tooltip Position
'options: bottom|left|none|right|top
Sub setTooltipPosition(s As String)
	sTooltipPosition = s
	CustProps.put("TooltipPosition", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.AddClassByID($"${mName}_anchor"$, "tooltip-" & s)
	Else
		UI.RemoveClassByID($"${mName}_anchor"$, "tooltip-" & s)
	End If
End Sub
'get Active
Sub getActive As Boolean
	Return bActive
End Sub
'get Badge
Sub getBadge As String
	Return sBadge
End Sub
'get Badge Color
Sub getBadgeColor As String
	Return sBadgeColor
End Sub
'get Badge Size
Sub getBadgeSize As String
	Return sBadgeSize
End Sub
'get Focus
Sub getFocus As Boolean
	Return bFocus
End Sub
'get Href
Sub getHref As String
	Return sHref
End Sub
'get Icon
Sub getIcon As String
	Return sIcon
End Sub
'get Icon Color
Sub getIconColor As String
	Return sIconColor
End Sub
'get Item Type
Sub getItemType As String
	Return sItemType
End Sub
'get Parent
Sub getParent As Boolean
	Return bParent
End Sub
'get Target
Sub getTarget As String
	Return sTarget
End Sub
'get Tooltip
Sub getTooltip As String
	Return sTooltip
End Sub
'get Tooltip Position
Sub getTooltipPosition As String
	Return sTooltipPosition
End Sub

'set Icon Size
'options: xs|none|sm|md|lg|xl
Sub setIconSize(s As String)
	sIconSize = s
	CustProps.put("IconSize", s)
	If mElement = Null Then Return
	If sIconSize = "" Then Return
	UI.SetHeightByID($"${mName}_icon"$, s)
	UI.SetWidthByID($"${mName}_icon"$, s)
End Sub
'get Icon Size
Sub getIconSize As String
	Return sIconSize
End Sub

'set Badge Visible
Sub setBadgeVisible(b As Boolean)
	bBadgeVisible = b
	CustProps.put("BadgeVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_badge"$, b)
End Sub

'get Badge Visible
Sub getBadgeVisible As Boolean
	Return bBadgeVisible
End Sub


'set Open
Sub setOpen(b As Boolean)
	bOpen = b
	CustProps.put("Open", b)
	If mElement = Null Then Return
	If b Then
		UI.SetAttrByID($"${mName}_details"$, "open", "open")
	Else
		UI.RemoveAttrByID($"${mName}_details"$, "open")
	End If
End Sub

'get Open
Sub getOpen As Boolean
	Return bOpen
End Sub

'add a title
Sub AddMenuItemTitle(itemKey As String, itemText As String) As SDUI5MenuItem
	itemKey = modSD5.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.ParentID = mName & "_items"
	item.ItemType = ITEMTYPE_TITLE
	item.Text = itemText
	item.MenuName = sMenuName
	item.AddComponent
	Return item
End Sub

'add a normal item
Sub AddMenuItem(itemKey As String, itemText As String, itemParent As Boolean) As SDUI5MenuItem
	itemKey = modSD5.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.ParentID = mName  & "_items"
	item.ItemType = ITEMTYPE_NORMAL
	item.Text = itemText
	item.Parent = itemParent
	item.MenuName = sMenuName
	item.AddComponent
	Return item
End Sub

'add an icon
Sub AddMenuItemIcon(itemKey As String, itemIcon As String, iconSize As String) As SDUI5MenuItem
	itemKey = modSD5.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.Icon = itemIcon
	item.IconSize = iconSize
	item.ParentID = mName  & "_items"
	item.ItemType = ITEMTYPE_ICON
	item.MenuName = sMenuName
	item.AddComponent
	Return item
End Sub

'add a icon text
Sub AddMenuItemIconText(itemKey As String, itemIcon As String, itemText As String, itemParent As Boolean) As SDUI5MenuItem 
	itemKey = modSD5.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.Icon = itemIcon
	item.ParentID = mName  & "_items"
	item.Text = itemText
	item.Parent = itemParent
	item.ItemType = ITEMTYPE_ICON_TEXT
	item.MenuName = sMenuName
	item.AddComponent
	Return item
End Sub

Sub AddMenuItemChild(itemKey As String, itemIcon As String, itemText As String) As SDUI5MenuItem 
	itemKey = modSD5.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.Icon = itemIcon
	item.ParentID = mName  & "_items"
	item.Text = itemText
	item.Parent = False
	item.ItemType = ITEMTYPE_ICON_TEXT
	item.MenuName = sMenuName
	item.AddComponent
	Return item
End Sub

Sub AddMenuItemParent(itemKey As String, itemIcon As String, itemText As String) As SDUI5MenuItem
	itemKey = modSD5.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.Icon = itemIcon
	item.ParentID = mName & "_items"
	item.Text = itemText
	item.ItemType = "collapse-item"
	item.Parent = True
	item.MenuName = sMenuName
	item.AddComponent
	Return item
End Sub

'clear menu & child items
Sub Clear
	Items.Initialize 
	UI.ClearByID($"${mName}_items"$)
End Sub

'set a single item
Sub SetItemActive(itemKey As String)
	itemKey = modSD5.CleanID(itemKey)
	If Items.ContainsKey(itemKey) = False Then Return
	For Each k As String In Items.Keys
		If k = itemKey Then
			UI.AddClassByID($"${k}_anchor"$, "menu-active")
		Else
			UI.RemoveClassByID($"${k}_anchor"$, "menu-active")				
		End If
	Next
End Sub