﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#Event: ColorChange (value As String)
#Event: ComboChange (id As String, value As String, text as string)
#Event: CheckBoxChange (id As String, checked As Boolean)
#Event: ButtonID (args As Map)
#Event: TabSelected (args As Map)
#Event: LauncherIconClick (args As Map)
#Event: FileMenu (args As Map)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: FileMenuText, DisplayName: File Menu Text, FieldType: String, DefaultValue: File, Description: File Menu Text
#DesignerProperty: Key: FileMenuVisible, DisplayName: File Menu Visible, FieldType: Boolean, DefaultValue: True, Description: File Menu Visible
#DesignerProperty: Key: ShowItemOnClick, DisplayName: Show Item On Click, FieldType: Boolean, DefaultValue: False, Description: Show Item On Click
#DesignerProperty: Key: ActiveLayout, DisplayName: Active Layout, FieldType: String, DefaultValue: Simplified, Description: Active Layout, List: Classic|Simplified
#DesignerProperty: Key: CssClass, DisplayName: Css Class, FieldType: String, DefaultValue: , Description: Css Class
#DesignerProperty: Key: EnableKeyTips, DisplayName: Enable Key Tips, FieldType: Boolean, DefaultValue: False, Description: Enable Key Tips
#DesignerProperty: Key: EnablePersistence, DisplayName: Enable Persistence, FieldType: Boolean, DefaultValue: False, Description: Enable Persistence
#DesignerProperty: Key: EnableRtl, DisplayName: Enable Rtl, FieldType: Boolean, DefaultValue: False, Description: Enable Rtl
#DesignerProperty: Key: HideLayoutSwitcher, DisplayName: Hide Layout Switcher, FieldType: Boolean, DefaultValue: False, Description: Hide Layout Switcher
#DesignerProperty: Key: IsMinimized, DisplayName: Is Minimized, FieldType: Boolean, DefaultValue: False, Description: Is Minimized
#DesignerProperty: Key: LauncherIconCss, DisplayName: Launcher Icon Css, FieldType: String, DefaultValue: , Description: Launcher Icon Css
#DesignerProperty: Key: LayoutSwitcherKeyTip, DisplayName: Layout Switcher Key Tip, FieldType: String, DefaultValue: , Description: Layout Switcher Key Tip
#DesignerProperty: Key: Locale, DisplayName: Locale, FieldType: String, DefaultValue: , Description: Locale
#DesignerProperty: Key: SelectedTab, DisplayName: Selected Tab, FieldType: Int, DefaultValue: 0, Description: Selected Tab
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Width
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
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
	Private sRawClasses As String = ""
	Private sRawStyles As String = ""
	Private sRawAttributes As String = ""
	Private sMarginAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sPaddingAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private bEnabled As Boolean = True	'ignore
	Public Tag As Object
	Private Options As Map
	Private sActiveLayout As String = "Simplified"
	Private sCssClass As String = ""
	Private bEnableKeyTips As Boolean = False
	Private bEnablePersistence As Boolean = False
	Private bEnableRtl As Boolean = False
	Private bHideLayoutSwitcher As Boolean = False
	Private bIsMinimized As Boolean = False
	Private sLauncherIconCss As String = ""
	Private sLayoutSwitcherKeyTip As String = ""
	Private sLocale As String = ""
	Private iSelectedTab As Int = 0
	Private sWidth As String = "100%"
	Public CONST ACTIVELAYOUT_CLASSIC As String = "Classic"
	Public CONST ACTIVELAYOUT_SIMPLIFIED As String = "Simplified"
	Private tabsm As Map
	Private ribbon As BANanoObject
	Private menuItems As List
	Private bFileMenuVisible As Boolean
	Private bshowItemOnClick As Boolean
	Private sFileMenuText As String
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	tabsm.Initialize 
	menuItems.Initialize 
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
		sActiveLayout = Props.GetDefault("ActiveLayout", "Simplified")
		sActiveLayout = UI.CStr(sActiveLayout)
		If sActiveLayout = "Simplified" Then sActiveLayout = ""
		sCssClass = Props.GetDefault("CssClass", "")
		sCssClass = UI.CStr(sCssClass)
		bEnableKeyTips = Props.GetDefault("EnableKeyTips", False)
		bEnableKeyTips = UI.CBool(bEnableKeyTips)
		bEnablePersistence = Props.GetDefault("EnablePersistence", False)
		bEnablePersistence = UI.CBool(bEnablePersistence)
		bEnableRtl = Props.GetDefault("EnableRtl", False)
		bEnableRtl = UI.CBool(bEnableRtl)
		bHideLayoutSwitcher = Props.GetDefault("HideLayoutSwitcher", False)
		bHideLayoutSwitcher = UI.CBool(bHideLayoutSwitcher)
		bIsMinimized = Props.GetDefault("IsMinimized", False)
		bIsMinimized = UI.CBool(bIsMinimized)
		sLauncherIconCss = Props.GetDefault("LauncherIconCss", "")
		sLauncherIconCss = UI.CStr(sLauncherIconCss)
		sLayoutSwitcherKeyTip = Props.GetDefault("LayoutSwitcherKeyTip", "")
		sLayoutSwitcherKeyTip = UI.CStr(sLayoutSwitcherKeyTip)
		sLocale = Props.GetDefault("Locale", "")
		sLocale = UI.CStr(sLocale)
		iSelectedTab = Props.GetDefault("SelectedTab", 0)
		iSelectedTab = UI.CInt(iSelectedTab)
		sWidth = Props.GetDefault("Width", "100%")
		sWidth = UI.CStr(sWidth)
		bFileMenuVisible = Props.GetDefault("FileMenuVisible", True)
		bFileMenuVisible = UI.CBool(bFileMenuVisible)
		bshowItemOnClick = Props.GetDefault("ShowItemOnClick", False)
		bshowItemOnClick = UI.CBool(bshowItemOnClick)
		sFileMenuText = Props.GetDefault("FileMenuText", "File")
		sFileMenuText = UI.CStr(sFileMenuText)
	End If
	'
	Options.put("activeLayout", sActiveLayout)
	Options.put("cssClass", sCssClass)
	Options.put("enableKeyTips", bEnableKeyTips)
	Options.put("enablePersistence", bEnablePersistence)
	Options.put("enableRtl", bEnableRtl)
	Options.put("hideLayoutSwitcher", bHideLayoutSwitcher)
	Options.put("isMinimized", bIsMinimized)
	Options.put("launcherIconCss", sLauncherIconCss)
	Options.put("layoutSwitcherKeyTip", sLayoutSwitcherKeyTip)
	Options.put("locale", sLocale)
	Options.put("selectedTab", iSelectedTab)
	Options.put("width", sWidth)
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
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
End Sub

Sub setShowItemOnClick(b As Boolean)
	bshowItemOnClick = b
	CustProps.Put("ShowItemOnClick", bshowItemOnClick)
End Sub

Sub getShowItemOnClick As Boolean
	Return bshowItemOnClick
End Sub

Sub setFileMenuVisible(b As Boolean)
	bFileMenuVisible = b
	CustProps.Put("FileMenuVisible", bFileMenuVisible)
End Sub

Sub getFileMenuVisible As Boolean
	Return bFileMenuVisible
End Sub

Sub Clear
	tabsm.Initialize 
	menuItems.Initialize
End Sub

Sub ClearFileItems
	menuItems.Initialize 
End Sub

Sub AddFileMenuItem(id As String, text As String, iconCss As String)
	Dim item As Map = CreateMap()
	item.put("id", id)
	item.Put("text", text)
	item.Put("iconCss", iconCss)
	menuItems.Add(item)
End Sub

Sub AddFileMenuSeparator
	Dim item As Map = CreateMap()
	item.put("separator", True)
	menuItems.Add(item)
End Sub

Sub AddTab(tabID As String, tabCaption As String, cssClass As String, keyTip As String)
	Dim groups As List
	groups.Initialize 
	'
	Dim tabmx As Map = CreateMap()
	tabmx.Put("id", tabID)
	tabmx.Put("header", tabCaption)
	tabmx.Put("cssClass", cssClass)
	tabmx.Put("groups", groups)
	tabmx.Put("keyTip", keyTip)
	'
	tabsm.Put(tabID, tabmx)
End Sub

'enableGroupOverflow - Defines whether to add a separate popup for the overflow items in the group. 
'isCollapsed - Defines whether the group is in collapsed state or not during classic mode.
'isCollapsible - Defines whether the group can be collapsed on resize during classic mode.
'keyTip - Specifies the keytip content
'launcherIconKeyTip - Specifies the keytip content for launcher icon
'orientation - Defines the alignment of the items in the ribbon group. Column/Row

Sub AddGroup(groupName As String, groupID As String, groupHeader As String, groupIconCss As String, showLauncherIcon As Boolean) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(groupName, 1, ".")
	If tabsm.ContainsKey(tabID) = False Then Return Me
	
	Dim collections As List
	collections.Initialize
	'
	Dim grp As Map = CreateMap()
	grp.Put("id", groupID)
	grp.Put("header", groupHeader)
	grp.put("showLauncherIcon", showLauncherIcon)
	grp.Put("groupIconCss", groupIconCss)
	grp.put("collections", collections)
	
	GetGroups(tabID).Add(grp)
	Return Me
End Sub 

Sub AddCollection(colName As String, colID As String, cssClass As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(colName, 1, ".")
	Dim groupID As String = UI.MvField(colName,2, ".")
	'
	Dim items As List
	items.Initialize
	Dim collect As Map = CreateMap()
	collect.Put("id", colID)
	collect.Put("cssClass", cssClass)
	collect.Put("items", items)

	GetCollections(tabID, groupID).Add(collect)
	Return Me
End Sub

private Sub GetItems(tabID As String, groupID As String, collectionID As String) As List
	Dim collections As List = GetCollections(tabID, groupID)
	Dim colPos As Int = SearchList(collections, "id", collectionID)
	Dim collection As Map = collections.Get(colPos)
	Dim items As List = collection.Get("items").As(List)
	Return items
End Sub

'get groups inside a tab
private Sub GetGroups(tabID As String) As List
	Dim groups As List = tabsm.Get(tabID).As(Map).Get("groups").As(List)
	Return groups
End Sub

private Sub GetCollections(tabID As String, groupID As String) As List
	Dim groups As List = GetGroups(tabID)
	Dim grpPos As Int = SearchList(groups, "id", groupID)
	Dim grp As Map = groups.Get(grpPos)
	Dim collections As List = grp.Get("collections").As(List)
	Return collections
End Sub

private Sub SearchList(lst As List, key As String, value As String) As Int
	Dim colTot As Int = lst.Size - 1
	Dim colCnt As Int = 0
	For colCnt = 0 To colTot
		Dim col As Map = lst.Get(colCnt)
		Dim colIDx As String = col.Get(key)
		If colIDx.EqualsIgnoreCase(value) Then Return colCnt
	Next
	Return -1
End Sub

Sub AddSplitButton(itemName As String, itemID As String, iconCss As String, itemText As String) As Map
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim children As List
	children.Initialize
	
	Dim args As Map
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_${itemID}"$, Array(args))
	Dim cbSelect As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_${itemID}_Action"$, Array(args))
	'
	Dim item As Map = CreateMap()
	item.Put("id", itemID)
	item.Put("type", "SplitButton")
	item.Put("simplifiedMode", "Group")
	UI.PutRecursive(item, "splitButtonSettings.iconCss", iconCss)
	UI.PutRecursive(item, "splitButtonSettings.content", itemText)
	UI.PutRecursive(item, "splitButtonSettings.items", children)
	UI.PutRecursive(item, "splitButtonSettings.click", cb)
	UI.PutRecursive(item, "splitButtonSettings.select", cbSelect)
	items.Add(item)
	Return item
End Sub

Sub AddSplitButtonItem(gb As Map, itemID As String, itemText As String)
	Dim items As List = gb.Get("splitButtonSettings").As(Map).Get("items").As(List)
	Dim item As Map = CreateMap()
	item.Put("id", itemID)
	item.Put("text", itemText)
	items.Add(item)
End Sub

Sub AddButton(itemName As String, itemID As String, iconCss As String, itemText As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim args As Map
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_${itemID}"$, Array(args))
	'
	Dim item As Map = CreateMap()
	item.Put("id", itemID)
	item.Put("type", "Button")
	UI.PutRecursive(item, "buttonSettings.iconCss", iconCss)
	UI.PutRecursive(item, "buttonSettings.content", itemText)
	UI.PutRecursive(item, "buttonSettings.clicked", cb)
	items.Add(item)
	Return Me
End Sub

Sub AddButtonMedium(itemName As String, itemID As String, iconCss As String, itemText As String) As SDUI5OfficeRibbon
	AddButton(itemName, itemID, iconCss, itemText)
	SetItemSizeMedium(itemName, itemID)
	Return Me
End Sub

Sub AddButtonSmall(itemName As String, itemID As String, iconCss As String, itemText As String) As SDUI5OfficeRibbon
	AddButton(itemName, itemID, iconCss, itemText)
	SetItemSizeSmall(itemName, itemID)
	Return Me
End Sub

Sub AddButtonLarge(itemName As String, itemID As String, iconCss As String, itemText As String) As SDUI5OfficeRibbon
	AddButton(itemName, itemID, iconCss, itemText)
	SetItemSizeLarge(itemName, itemID)
	Return Me
End Sub

'selection - Single (0), Multiple (1), None (2)
Sub AddGroupButton(itemName As String, itemID As String, selection As Int) As Map
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim btnitems As List
	btnitems.Initialize 
	'
	Dim item As Map = CreateMap()
	item.Put("id", itemID)
	item.Put("type", "GroupButton")
	UI.PutRecursive(item, "groupButtonSettings.selection", UI.CInt(selection))
	UI.PutRecursive(item, "groupButtonSettings.items", btnitems)
	items.Add(item)
	Return item
End Sub

Sub AddGroupButtonItem(gb As Map, itemID As String, iconCss As String, bSelected As Boolean) As SDUI5OfficeRibbon
	Dim items As List = gb.Get("groupButtonSettings").As(Map).Get("items").As(List)
	Dim item As Map = CreateMap()
	item.Put("id", itemID)
	item.Put("iconCss", iconCss)
	item.Put("selected", bSelected)
	Dim args As Map
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_${itemID}"$, Array(args))
	item.Put("click", cb)
	items.Add(item)
	Return Me
End Sub

Sub AddColorPicker(itemName As String, itemID As String, itemValue As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	'
	Dim args As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_${itemID}"$, Array(args))
	
	Dim item As Map = CreateMap()
	item.Put("id", itemID)
	item.Put("type", "ColorPicker")
	UI.PutRecursive(item, "colorPickerSettings.value", itemValue)
	UI.PutRecursive(item, "colorPickerSettings.change", cb)
	items.Add(item)
	Return Me
End Sub

Sub GetActionID(args As Map) As String
	Dim sID As String = args.Get("element").As(Map).get("id")
	Return sID
End Sub

Sub GetColor(args As Map) As String
	Dim hex As String = args.Get("currentValue").As(Map).Get("hex")
	Return hex
End Sub

Sub GetChecked(args As Map) As Boolean
	Dim bchecked As Boolean = args.Get("checked")
	Return bchecked
End Sub

Sub SetButtonIsToggle(itemName As String, itemID As String, isToggle As Boolean) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim itemPos As Int = SearchList(items, "id", itemID)
	Dim item As Map = items.Get(itemPos)
	item.Put("isToggle", isToggle)
	Return Me
End Sub

Sub SetItemToolTip(itemName As String, itemID As String, title As String, cssClass As String, iconCss As String, content As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim itemPos As Int = SearchList(items, "id", itemID)
	Dim item As Map = items.Get(itemPos)
	'
	Dim ts As Map = CreateMap()
	ts.Put("title", title)
	ts.Put("cssClass", cssClass)
	ts.Put("iconCss", iconCss)
	ts.put("content", content)
	item.Put("ribbonTooltipSettings", ts)
	Return Me
End Sub

Sub SetItemSizeLarge(itemName As String, itemID As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim itemPos As Int = SearchList(items, "id", itemID)
	Dim item As Map = items.Get(itemPos)
	item.Put("allowedSizes", 4)
	Return Me
End Sub

Sub SetItemCssClass(itemName As String, itemID As String, cssClass As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim itemPos As Int = SearchList(items, "id", itemID)
	Dim item As Map = items.Get(itemPos)
	item.Put("cssClass", cssClass)
	Return Me
End Sub

Sub SetItemSizeSmall(itemName As String, itemID As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim itemPos As Int = SearchList(items, "id", itemID)
	Dim item As Map = items.Get(itemPos)
	item.Put("allowedSizes", 1)
	Return Me
End Sub

Sub SetItemSizeMedium(itemName As String, itemID As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim itemPos As Int = SearchList(items, "id", itemID)
	Dim item As Map = items.Get(itemPos)
	item.Put("allowedSizes", 2)
	Return Me
End Sub

Sub AddCheckBox(itemName As String, itemID As String, itemLabel As String, checked As Boolean) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	'
	Dim args As Map
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_${itemID}"$, Array(args))
	'
	Dim item As Map = CreateMap()
	item.Put("id", itemID)
	item.Put("type", "CheckBox")
	UI.PutRecursive(item, "checkBoxSettings.checked", checked)
	UI.PutRecursive(item, "checkBoxSettings.label", itemLabel)
	UI.PutRecursive(item, "checkBoxSettings.change", cb)
	items.Add(item)
	Return Me
End Sub

Sub AddButtonIcon(itemName As String, itemID As String, iconCss As String, itemText As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	Dim args As Map
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_${itemID}"$, Array(args))
	'
	Dim item As Map = CreateMap()
	item.Put("id", itemID)
	item.Put("type", "Button")
	item.Put("allowedSizes", 1)
	UI.PutRecursive(item, "buttonSettings.iconCss", iconCss)
	UI.PutRecursive(item, "buttonSettings.content", itemText)
	UI.PutRecursive(item, "buttonSettings.clicked", cb)
	items.Add(item)
	Return Me
End Sub

Sub AddComboBox(itemName As String, itemID As String, dataSource As Object, selectedIndex As Int, allowFiltering As Boolean, width As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(itemName, 1, ".")
	Dim groupID As String = UI.MvField(itemName,2, ".")
	Dim colID As String = UI.MvField(itemName,3,".")
	
	Dim items As List = GetItems(tabID, groupID, colID)
	
	Dim args As Object
	Dim cb As BANanoObject = BANano.CallBack(Me, "ComboChange", Array(args))
	'
	Dim item As Map = CreateMap()
	item.Put("id", itemID)
	item.Put("type", "ComboBox")
	item.Put("simplifiedMode", "Group")
	UI.PutRecursive(item, "comboBoxSettings.dataSource", dataSource)
	UI.PutRecursive(item, "comboBoxSettings.index", selectedIndex)
	UI.PutRecursive(item, "comboBoxSettings.allowFiltering", allowFiltering)
	UI.PutRecursive(item, "comboBoxSettings.width", width)
	UI.PutRecursive(item, "comboBoxSettings.change", cb)
	items.Add(item)
	Return Me
End Sub

private Sub ComboChange(args As Map)
	Dim id As String = args.Get("element").As(Map).Get("id")
	Dim value As String = args.Get("itemData").As(Map).Get("value")
	Dim text As String = args.Get("itemData").As(Map).Get("text")
	BANano.CallSub(mCallBack, $"${mName}_combochange"$, Array(id, value, text))
End Sub


Sub SetGroupKeyTip(groupName As String, keyTip As String, launcherIconKeyTip As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(groupName, 1, ".")
	Dim groupID As String = UI.MvField(groupName,2, ".")
	'
	Dim groups As List = GetGroups(tabID)
	Dim grpPos As Int = SearchList(groups, "id", groupID)
	Dim grp As Map = groups.Get(grpPos)
	grp.Put("keyTip", keyTip)
	grp.Put("launcherIconKeyTip", launcherIconKeyTip)
	Return Me
End Sub

Sub SetGroupOverflowHeader(groupName As String, overflowHeader As Boolean) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(groupName, 1, ".")
	Dim groupID As String = UI.MvField(groupName,2, ".")
	'
	Dim groups As List = GetGroups(tabID)
	Dim grpPos As Int = SearchList(groups, "id", groupID)
	Dim grp As Map = groups.Get(grpPos)
	grp.Put("overflowHeader", overflowHeader)
	Return Me
End Sub

Sub SetGroupShowLauncherIcon(groupName As String, showLauncherIcon As Boolean) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(groupName, 1, ".")
	Dim groupID As String = UI.MvField(groupName,2, ".")
	'
	Dim groups As List = GetGroups(tabID)
	Dim grpPos As Int = SearchList(groups, "id", groupID)
	Dim grp As Map = groups.Get(grpPos)
	grp.Put("showLauncherIcon", showLauncherIcon)
	Return Me
End Sub

Sub SetGroupCssClass(groupName As String, cssClass As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(groupName, 1, ".")
	Dim groupID As String = UI.MvField(groupName,2, ".")
	'
	Dim groups As List = GetGroups(tabID)
	Dim grpPos As Int = SearchList(groups, "id", groupID)
	Dim grp As Map = groups.Get(grpPos)
	grp.Put("cssClass", cssClass)
	Return Me
End Sub

Sub SetGroupOrientationRow(groupName As String) As SDUI5OfficeRibbon
	SetGroupOrientation(groupName, "Row")
	Return Me
End Sub

Sub SetGroupOrientation(groupName As String, orientation As String) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(groupName, 1, ".")
	Dim groupID As String = UI.MvField(groupName,2, ".")
	'
	Dim groups As List = GetGroups(tabID)
	Dim grpPos As Int = SearchList(groups, "id", groupID)
	Dim grp As Map = groups.Get(grpPos)
	grp.Put("orientation", orientation)
	Return Me
End Sub

Sub SetGroupEnableGroupOverflow(groupName As String, enableGroupOverflow As Boolean) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(groupName, 1, ".")
	Dim groupID As String = UI.MvField(groupName,2, ".")
	'
	Dim groups As List = GetGroups(tabID)
	Dim grpPos As Int = SearchList(groups, "id", groupID)
	Dim grp As Map = groups.Get(grpPos)
	grp.Put("enableGroupOverflow", enableGroupOverflow)
	Return Me
End Sub

Sub SetGroupCollapsed(groupName As String, isCollapsed As Boolean) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(groupName, 1, ".")
	Dim groupID As String = UI.MvField(groupName,2, ".")
	'
	Dim groups As List = GetGroups(tabID)
	Dim grpPos As Int = SearchList(groups, "id", groupID)
	Dim grp As Map = groups.Get(grpPos)
	grp.Put("isCollapsed", isCollapsed)
	Return Me
End Sub

Sub SetGroupCollapsible(groupName As String, isCollapsible As Boolean) As SDUI5OfficeRibbon
	Dim tabID As String = UI.MvField(groupName, 1, ".")
	Dim groupID As String = UI.MvField(groupName,2, ".")
	'
	Dim groups As List = GetGroups(tabID)
	Dim grpPos As Int = SearchList(groups, "id", groupID)
	Dim grp As Map = groups.Get(grpPos)
	grp.Put("isCollapsible", isCollapsible)
	Return Me
End Sub

Sub setFileMenuText(s As String)
	sFileMenuText = s
	CustProps.Put("FileMenuText", sFileMenuText)
End Sub

Sub getFileMenuText As String
	Return sFileMenuText
End Sub

Sub Refresh
	Dim tabs As List
	tabs.Initialize
	For Each k As String In tabsm.Keys
		Dim rec As Map = tabsm.Get(k)
		tabs.Add(rec) 
	Next
	'
	Dim args As Object
	Dim cbfilemenu As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_filemenu"$, Array(args))
	Dim fileMenu As Map = CreateMap()
	fileMenu.Put("text", sFileMenuText)
	fileMenu.Put("menuItems", menuItems)
	fileMenu.put("visible", bFileMenuVisible)
	fileMenu.Put("showItemOnClick", bshowItemOnClick)
	fileMenu.Put("select", cbfilemenu)
	'
	Dim cbtabSelected As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_tabselected"$, Array(args))
	Dim cblauncherIconClick As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_launcherIconClick"$, Array(args))
	
	Dim opt As Map = CreateMap()
	opt.Put("tabs", tabs)
	opt.Put("tabSelected", cbtabSelected)
	opt.Put("launcherIconClick", cblauncherIconClick)
	If menuItems.Size > 0 Then
		opt.Put("fileMenu", fileMenu)
	End If
	'
	ribbon.Initialize2("ej.ribbon.Ribbon", opt)
	ribbon.RunMethod("appendTo", $"#${mName}"$)
End Sub


'set Active Layout
'options: Classic|Simplified
Sub setActiveLayout(s As String)
	sActiveLayout = s
	CustProps.put("ActiveLayout", s)
	Options.put("activeLayout", s)
End Sub

'set Css Class
Sub setCssClass(s As String)
	sCssClass = s
	CustProps.put("CssClass", s)
	Options.put("cssClass", s)
End Sub

'set Enable Key Tips
Sub setEnableKeyTips(b As Boolean)
	bEnableKeyTips = b
	CustProps.put("EnableKeyTips", b)
	Options.put("enableKeyTips", b)
End Sub

'set Enable Persistence
Sub setEnablePersistence(b As Boolean)
	bEnablePersistence = b
	CustProps.put("EnablePersistence", b)
	Options.put("enablePersistence", b)
End Sub

'set Enable Rtl
Sub setEnableRtl(b As Boolean)
	bEnableRtl = b
	CustProps.put("EnableRtl", b)
	Options.put("enableRtl", b)
End Sub
'set Hide Layout Switcher
Sub setHideLayoutSwitcher(b As Boolean)
	bHideLayoutSwitcher = b
	CustProps.put("HideLayoutSwitcher", b)
	Options.put("hideLayoutSwitcher", b)
End Sub
'set Is Minimized
Sub setIsMinimized(b As Boolean)
	bIsMinimized = b
	CustProps.put("IsMinimized", b)
	Options.put("isMinimized", b)
End Sub
'set Launcher Icon Css
Sub setLauncherIconCss(s As String)
	sLauncherIconCss = s
	CustProps.put("LauncherIconCss", s)
	Options.put("launcherIconCss", s)
End Sub
'set Layout Switcher Key Tip
Sub setLayoutSwitcherKeyTip(s As String)
	sLayoutSwitcherKeyTip = s
	CustProps.put("LayoutSwitcherKeyTip", s)
	Options.put("layoutSwitcherKeyTip", s)
End Sub
'set Locale
Sub setLocale(s As String)
	sLocale = s
	CustProps.put("Locale", s)
	Options.put("locale", s)
End Sub
'set Selected Tab
Sub setSelectedTab(i As Int)
	iSelectedTab = i
	CustProps.put("SelectedTab", i)
	Options.put("selectedTab", i)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'get Active Layout
Sub getActiveLayout As String
	Return sActiveLayout
End Sub
'get Css Class
Sub getCssClass As String
	Return sCssClass
End Sub
'get Enable Key Tips
Sub getEnableKeyTips As Boolean
	Return bEnableKeyTips
End Sub
'get Enable Persistence
Sub getEnablePersistence As Boolean
	Return bEnablePersistence
End Sub
'get Enable Rtl
Sub getEnableRtl As Boolean
	Return bEnableRtl
End Sub
'get Hide Layout Switcher
Sub getHideLayoutSwitcher As Boolean
	Return bHideLayoutSwitcher
End Sub
'get Is Minimized
Sub getIsMinimized As Boolean
	Return bIsMinimized
End Sub
'get Launcher Icon Css
Sub getLauncherIconCss As String
	Return sLauncherIconCss
End Sub
'get Layout Switcher Key Tip
Sub getLayoutSwitcherKeyTip As String
	Return sLayoutSwitcherKeyTip
End Sub
'get Locale
Sub getLocale As String
	Return sLocale
End Sub
'get Selected Tab
Sub getSelectedTab As Int
	Return iSelectedTab
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub