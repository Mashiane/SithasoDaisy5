B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: ItemClick (item As String)
'
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-200, Description: Background Color
#DesignerProperty: Key: Direction, DisplayName: Direction, FieldType: String, DefaultValue: vertical, Description: Direction, List: horizontal|vertical
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 56, Description: Width
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: True, Description: Rounded Box
#DesignerProperty: Key: RoundedItems, DisplayName: Rounded Items, FieldType: Boolean, DefaultValue: True, Description: Rounded Items
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue: , Description: Max Height
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: , Description: Max Width
#DesignerProperty: Key: MinHeight, DisplayName: Min Height, FieldType: String, DefaultValue: full, Description: Min Height
#DesignerProperty: Key: MinWidth, DisplayName: Min Width, FieldType: String, DefaultValue: , Description: Min Width
#DesignerProperty: Key: SmDirection, DisplayName: SM Direction, FieldType: String, DefaultValue: none, Description: Sm Direction, List: horizontal|none|vertical
#DesignerProperty: Key: MdDirection, DisplayName: MD Direction, FieldType: String, DefaultValue: none, Description: Md Direction, List: horizontal|none|vertical
#DesignerProperty: Key: LgDirection, DisplayName: LG Direction, FieldType: String, DefaultValue: none, Description: Lg Direction, List: horizontal|none|vertical
#DesignerProperty: Key: XlDirection, DisplayName: XL Direction, FieldType: String, DefaultValue: none, Description: Xl Direction, List: horizontal|none|vertical
#DesignerProperty: Key: Dropdown, DisplayName: Dropdown, FieldType: Boolean, DefaultValue: False, Description: Dropdown
#DesignerProperty: Key: DropdownContent, DisplayName: Dropdown Content, FieldType: Boolean, DefaultValue: False, Description: Dropdown Content
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
	Private sBackgroundColor As String = "base-200"
	Private sDirection As String = "vertical"
	Private sHeight As String = ""
	Private sLgDirection As String = "none"
	Private sMaxHeight As String = ""
	Private sMaxWidth As String = ""
	Private sMdDirection As String = "none"
	Private sMinHeight As String = "full"
	Private sMinWidth As String = ""
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = True
	Private sShadow As String = "none"
	Private sSize As String = "none"
	Private sSmDirection As String = "none"
	Private sTextColor As String = ""
	Private sWidth As String = "56"
	Private sXlDirection As String = "none"
	Public CONST DIRECTION_HORIZONTAL As String = "horizontal"
	Public CONST DIRECTION_VERTICAL As String = "vertical"
	Public CONST ROUNDED_NONE As String = "none"
	Public CONST ROUNDED_ROUNDED As String = "rounded"
	Public CONST ROUNDED_ROUNDED_2XL As String = "rounded-2xl"
	Public CONST ROUNDED_ROUNDED_3XL As String = "rounded-3xl"
	Public CONST ROUNDED_ROUNDED_FULL As String = "rounded-full"
	Public CONST ROUNDED_ROUNDED_LG As String = "rounded-lg"
	Public CONST ROUNDED_ROUNDED_MD As String = "rounded-md"
	Public CONST ROUNDED_ROUNDED_SM As String = "rounded-sm"
	Public CONST ROUNDED_ROUNDED_XL As String = "rounded-xl"
	Public CONST SHADOW_2XL As String = "2xl"
	Public CONST SHADOW_INNER As String = "inner"
	Public CONST SHADOW_LG As String = "lg"
	Public CONST SHADOW_MD As String = "md"
	Public CONST SHADOW_NONE As String = "none"
	Public CONST SHADOW_SHADOW As String = "shadow"
	Public CONST SHADOW_SM As String = "sm"
	Public CONST SHADOW_XL As String = "xl"
	Public CONST SIZE_LG As String = "lg"
	Public CONST SIZE_MD As String = "md"
	Public CONST SIZE_NONE As String = "none"
	Public CONST SIZE_SM As String = "sm"
	Public CONST SIZE_XL As String = "xl"
	Public CONST SIZE_XS As String = "xs"
	Private bRoundedItems As Boolean = True
	Private bDropdown As Boolean = False
	Private bDropdownContent As Boolean = False
	Private Items As Map
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	
	Items.Initialize
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
		'sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
		'sBackgroundColor = UI.CStr(sBackgroundColor)
		sDirection = Props.GetDefault("Direction", "vertical")
		sDirection = UI.CStr(sDirection)
		If sDirection = "" Then sDirection = ""
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sLgDirection = Props.GetDefault("LgDirection", "none")
		sLgDirection = UI.CStr(sLgDirection)
		If sLgDirection = "none" Then sLgDirection = ""
		sMaxHeight = Props.GetDefault("MaxHeight", "")
		sMaxHeight = UI.CStr(sMaxHeight)
		sMaxWidth = Props.GetDefault("MaxWidth", "")
		sMaxWidth = UI.CStr(sMaxWidth)
		sMdDirection = Props.GetDefault("MdDirection", "none")
		sMdDirection = UI.CStr(sMdDirection)
		If sMdDirection = "none" Then sMdDirection = ""
		sMinHeight = Props.GetDefault("MinHeight", "full")
		sMinHeight = UI.CStr(sMinHeight)
		sMinWidth = Props.GetDefault("MinWidth", "")
		sMinWidth = UI.CStr(sMinWidth)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", True)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sSmDirection = Props.GetDefault("SmDirection", "none")
		sSmDirection = UI.CStr(sSmDirection)
		If sSmDirection = "none" Then sSmDirection = ""
		'sTextColor = Props.GetDefault("TextColor", "")
		'sTextColor = UI.CStr(sTextColor)
		sWidth = Props.GetDefault("Width", "56")
		sWidth = UI.CStr(sWidth)
		sXlDirection = Props.GetDefault("XlDirection", "none")
		sXlDirection = UI.CStr(sXlDirection)
		If sXlDirection = "none" Then sXlDirection = ""
		bRoundedItems = Props.GetDefault("RoundedItems", True)
		bRoundedItems = UI.CBool(bRoundedItems)
		bDropdown = Props.GetDefault("Dropdown", False)
		bDropdown = UI.CBool(bDropdown)
		bDropdownContent = Props.GetDefault("DropdownContent", False)
		bDropdownContent = UI.CBool(bDropdownContent)    
	End If
	'
	UI.AddClassDT("menu flex-nowrap overflow-y-auto")
	If bDropdown = True Then 
		UI.AddClassDT("dropdown")
	End If
	If bDropdownContent = True Then 
		UI.AddClassDT("dropdown-content")
		UI.AddClassDT("z-1")
		UI.AddAttrDT("tabindex", "0")
		sDirection = ""
		sLgDirection = ""
		sMdDirection = ""
		sSmDirection = ""
		sXlDirection = ""
	End If
	If bRoundedItems = False Then UI.AddClassDT("[&_li>*]:rounded-none")
	'If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sDirection <> "" Then UI.AddClassDT("menu-" & sDirection)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sLgDirection <> "" Then UI.AddClassDT("lg:menu-" & sLgDirection)
	If sMaxHeight <> "" Then UI.AddMaxHeightDT(sMaxHeight)
	If sMaxWidth <> "" Then UI.AddMaxWidthDT(sMaxWidth)
	If sMdDirection <> "" Then UI.AddClassDT("md:menu-" & sMdDirection)
	If sMinHeight <> "" Then UI.AddMinHeightDT(sMinHeight)
	If sMinWidth <> "" Then UI.AddMinWidthDT(sMinWidth)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sSize <> "" Then UI.AddSizeDT("menu", sSize)
	If sSmDirection <> "" Then UI.AddClassDT("sm:menu-" & sSmDirection)
	'If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
	If sXlDirection <> "" Then UI.AddClassDT("xl:menu-" & sXlDirection)
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
	mElement = mTarget.Append($"[BANCLEAN]<ul id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></ul>"$).Get("#" & mName)
'	setVisible(bVisible)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, s)
End Sub
'set Direction
'options: horizontal|vertical
Sub setDirection(s As String)
	sDirection = s
	CustProps.put("Direction", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "menu-" & s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Lg Direction
'options: horizontal|none|vertical
Sub setLgDirection(s As String)
	sLgDirection = s
	CustProps.put("LgDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "lg:menu-" & s)
End Sub
'set Max Height
Sub setMaxHeight(s As String)
	sMaxHeight = s
	CustProps.put("MaxHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxHeight(mElement, s)
End Sub
'set Max Width
Sub setMaxWidth(s As String)
	sMaxWidth = s
	CustProps.put("MaxWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxWidth(mElement, s)
End Sub
'set Md Direction
'options: horizontal|none|vertical
Sub setMdDirection(s As String)
	sMdDirection = s
	CustProps.put("MdDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "md:menu-" & s)
End Sub
'set Min Height
Sub setMinHeight(s As String)
	sMinHeight = s
	CustProps.put("MinHeight", s)
	If mElement = Null Then Return
	If s <> "full" Then UI.SetMinHeight(mElement, s)
End Sub
'set Min Width
Sub setMinWidth(s As String)
	sMinWidth = s
	CustProps.put("MinWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMinWidth(mElement, s)
End Sub
'set Rounded
'options: rounded-full|none|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
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
	If b Then
		UI.AddClass(mElement, "rounded-box")
	Else
		UI.RemoveClass(mElement, "rounded-box")
	End If
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Size
'options: lg|md|none|sm|xl|xs
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "menu", sSize)
End Sub
'set Sm Direction
'options: horizontal|none|vertical
Sub setSmDirection(s As String)
	sSmDirection = s
	CustProps.put("SmDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "sm:menu-" & s)
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'set Xl Direction
'options: horizontal|none|vertical
Sub setXlDirection(s As String)
	sXlDirection = s
	CustProps.put("XlDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "xl:menu-" & s)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Direction
Sub getDirection As String
	Return sDirection
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Lg Direction
Sub getLgDirection As String
	Return sLgDirection
End Sub
'get Max Height
Sub getMaxHeight As String
	Return sMaxHeight
End Sub
'get Max Width
Sub getMaxWidth As String
	Return sMaxWidth
End Sub
'get Md Direction
Sub getMdDirection As String
	Return sMdDirection
End Sub
'get Min Height
Sub getMinHeight As String
	Return sMinHeight
End Sub
'get Min Width
Sub getMinWidth As String
	Return sMinWidth
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Sm Direction
Sub getSmDirection As String
	Return sSmDirection
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub
'get Xl Direction
Sub getXlDirection As String
	Return sXlDirection
End Sub

'set Rounded Items
Sub setRoundedItems(b As Boolean)
	bRoundedItems = b
	CustProps.put("RoundedItems", b)
	If mElement = Null Then Return
	If b Then
		UI.RemoveClass(mElement, "[&_li>*]:rounded-none")
	Else
		UI.AddClass(mElement, "[&_li>*]:rounded-none")
	End If
End Sub
'get Rounded Items
Sub getRoundedItems As Boolean
	Return bRoundedItems
End Sub

'add a title
Sub AddMenuItemTitle(itemKey As String, itemText As String) As SDUI5MenuItem
	itemKey = UI.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.ParentID = mName
	item.ItemType = "title"
	item.Text = itemText
	item.MenuName = mName
	item.AddComponent
	Return item
End Sub

'add a normal item
Sub AddMenuItem(itemKey As String, itemText As String, itemParent As Boolean) As SDUI5MenuItem
	itemKey = UI.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.ParentID = mName
	item.ItemType = "normal"
	item.Text = itemText
	item.Parent = itemParent
	item.MenuName = mName
	item.AddComponent
	Return item
End Sub

'add an icon
Sub AddMenuItemIcon(itemKey As String, itemIcon As String, iconSize As String) As SDUI5MenuItem
	itemKey = UI.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.Icon = itemIcon
	item.IconSize = iconSize
	item.ParentID = mName
	item.ItemType = "icon"
	item.MenuName = mName
	item.AddComponent
	Return item
End Sub

'add a icon text
Sub AddMenuItemIconText(itemKey As String, itemIcon As String, itemText As String, itemParent As Boolean) As SDUI5MenuItem
	itemKey = UI.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.Icon = itemIcon
	item.ParentID = mName
	item.Text = itemText
	item.Parent = itemParent
	item.ItemType = "icon-text"
	item.MenuName = mName
	item.AddComponent
	Return item
End Sub

Sub AddMenuItemChild(itemKey As String, itemIcon As String, itemText As String) As SDUI5MenuItem
	itemKey = UI.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.Icon = itemIcon
	item.ParentID = mName
	item.Text = itemText
	item.Parent = False
	item.ItemType = "icon-text"
	item.MenuName = mName
	item.AddComponent
	Return item
End Sub

'add an item to the menu that will be a parent
'this can have child items
Sub AddItemParent(parentID As String, itemKey As String, itemIcon As String, itemText As String) As SDUI5MenuItem
	itemKey = UI.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	parentID = UI.CleanID(parentID)
	itemKey = UI.CleanID(itemKey)
	Dim item As SDUI5MenuItem
	If parentID <> "" Then
		item.Initialize(mCallBack, itemKey, itemKey)
		item.Icon = itemIcon
		item.ParentID = parentID & "_items"
		item.Text = itemText
		item.ItemType = "collapse-item"
		item.Parent = True
		item.MenuName = mName
		item.AddComponent
		Return item
	End If
	'there is no parent specified, add here
	item = AddMenuItemParent(itemKey, itemIcon, itemText)
	Return item
End Sub

'add an item to the menu that will be a child
'this cannot have child items
'leaving the parent id will add to the root of the menu
Sub AddItemChild(parentID As String, itemKey As String, itemIcon As String, itemText As String) As SDUI5MenuItem
	itemKey = UI.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	parentID = UI.CleanID(parentID)
	itemKey = UI.CleanID(itemKey)
	Dim item As SDUI5MenuItem
	If parentID <> "" Then
		item.Initialize(mCallBack, itemKey, itemKey)
		item.Icon = itemIcon
		item.ParentID = parentID & "_items"
		item.Text = itemText
		item.ItemType = "item-text"
		item.Parent = False
		item.MenuName = mName
		item.AddComponent
		Return item
	End If
	'there is no parent specified, add here
	item = AddMenuItemChild(itemKey, itemIcon, itemText)
	Return item
End Sub


Sub AddMenuItemParent(itemKey As String, itemIcon As String, itemText As String) As SDUI5MenuItem
	itemKey = UI.CleanID(itemKey)
	Items.Put(itemKey, itemKey)
	Dim item As SDUI5MenuItem
	item.Initialize(mCallBack, itemKey, itemKey)
	item.Icon = itemIcon
	item.ParentID = mName
	item.Text = itemText
	item.ItemType = "collapse-item"
	item.Parent = True
	item.MenuName = mName
	item.AddComponent
	Return item
End Sub

Sub SetItemOpen(item As String, b As Boolean)
	If b Then
		UI.SetAttrByID($"${item}_details"$, "open", "open") 
	Else
		UI.RemoveAttrByID($"${item}_details"$, "open")
	End If
End Sub

'set Badge
Sub SetItemBadge(item As String, sText As String, sColor As String)
	UI.SetTextByID($"${item}_badge"$, sText)
	UI.SetColorByID($"${item}_badge"$, "color", "badge", sColor)
	UI.SetVisibleByID($"${item}_badge"$, True)
End Sub

Sub SetItemBadgeVisible(item As String, b As Boolean)
	UI.SetVisibleByID($"${item}_badge"$, b)
End Sub

Sub SetItemVisible(item As String, b As Boolean)
	UI.SetVisibleByID(item, b)
End Sub

'clear menu & child items
Sub Clear			'ignoredeadcode
	Items.Initialize
	If mElement = Null Then Return
	mElement.empty
End Sub

'set a single item
Sub SetItemActive(itemKey As String)
	itemKey = UI.CleanID(itemKey)
	If Items.ContainsKey(itemKey) = False Then Return
	For Each k As String In Items.Keys
		If k = itemKey Then
			UI.AddClassByID($"${k}_anchor"$, "menu-active")
		Else
			UI.RemoveClassByID($"${k}_anchor"$, "menu-active")
		End If
	Next
End Sub

'set Dropdown
Sub setDropdown(b As Boolean)
	bDropdown = b
	CustProps.put("Dropdown", b)
End Sub
'set Dropdown Content
Sub setDropdownContent(b As Boolean)
	bDropdownContent = b
	CustProps.put("DropdownContent", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "dropdown-content z-1")
		UI.SetAttr(mElement, "tabindex", "0")
	Else
		UI.RemoveClass(mElement, "dropdown-content z-1")
		UI.RemoveAttr(mElement, "tabindex")
	End If
End Sub
'get Dropdown
Sub getDropdown As Boolean
	Return bDropdown
End Sub
'get Dropdown Content
Sub getDropdownContent As Boolean
	Return bDropdownContent
End Sub