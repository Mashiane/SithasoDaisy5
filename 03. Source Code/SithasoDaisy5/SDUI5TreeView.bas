B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#Event: nodeDrop (e As BANanoEvent)
#Event: nodeDragStart (e As BANanoEvent)
#Event: nodeExpanded (e As BANanoEvent)
#Event: nodeCollapsed (e As BANanoEvent)
#Event: nodeEdited (e As BANanoEvent)
#Event: nodeSelected (e As BANanoEvent)
#Event: nodesSelected (e As BANanoEvent)
#Event: nodesChecked (e As BANanoEvent)
#Event: nodeClick (e As BANanoEvent)
#Event: nodeEditCancelled (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: ItemColor, DisplayName: Item Color, FieldType: String, DefaultValue: primary, Description: Item Color
#DesignerProperty: Key: ItemActiveColor, DisplayName: Item Active Color, FieldType: String, DefaultValue: , Description: Item Active Color
#DesignerProperty: Key: ItemFocusColor, DisplayName: Item Focus Color, FieldType: String, DefaultValue: , Description: Item Focus Color
#DesignerProperty: Key: ItemHoverColor, DisplayName: Item Hover Color, FieldType: String, DefaultValue: , Description: Item Hover Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: full, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 200px, Description: Width
#DesignerProperty: Key: CollapseIconUrl, DisplayName: Collapse Icon Url, FieldType: String, DefaultValue: ./assets/chevron-right-solid.svg, Description: Collapse Icon Url
#DesignerProperty: Key: ExpandIconUrl, DisplayName: Expand Icon Url, FieldType: String, DefaultValue: ./assets/chevron-down-solid.svg, Description: Expand Icon Url
#DesignerProperty: Key: DragNDrop, DisplayName: Drag N Drop, FieldType: Boolean, DefaultValue: True, Description: Drag N Drop
#DesignerProperty: Key: HasCheckbox, DisplayName: Has Checkbox, FieldType: Boolean, DefaultValue: False, Description: Has Checkbox
#DesignerProperty: Key: IconHeight, DisplayName: Icon Height, FieldType: String, DefaultValue: 16px, Description: Icon Height
#DesignerProperty: Key: IconWidth, DisplayName: Icon Width, FieldType: String, DefaultValue: 16px, Description: Icon Width
#DesignerProperty: Key: InlineEdit, DisplayName: Inline Edit, FieldType: Boolean, DefaultValue: False, Description: Inline Edit
#DesignerProperty: Key: MultipleCheck, DisplayName: Multiple Check, FieldType: Boolean, DefaultValue: False, Description: Multiple Check
#DesignerProperty: Key: MultipleSelect, DisplayName: Multiple Select, FieldType: Boolean, DefaultValue: False, Description: Multiple Select
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: CheckBoxSize, DisplayName: Check Box Size, FieldType: String, DefaultValue: md, Description: Check Box Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: TextBoxSize, DisplayName: Text Box Size, FieldType: String, DefaultValue: sm, Description: Text Box Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: CheckBoxActiveColor, DisplayName: Check Box Active Color, FieldType: String, DefaultValue: , Description: Check Box Active Color
#DesignerProperty: Key: CheckBoxActiveBorderColor, DisplayName: Check Box Active Border Color, FieldType: String, DefaultValue: , Description: Check Box Active Border Color
#DesignerProperty: Key: Replace, DisplayName: Replace, FieldType: Boolean, DefaultValue: False, Description: Replace
#DesignerProperty: Key: UseLocalstorage, DisplayName: Use Localstorage, FieldType: Boolean, DefaultValue: True, Description: Use Localstorage
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: , Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
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
	Private Options As Map
	Private sCollapseIconUrl As String = "./assets/chevron-right-solid.svg"
	Private bDragNDrop As Boolean = True
	Private sExpandIconUrl As String = "./assets/chevron-down-solid.svg"
	Private bHasCheckbox As Boolean = False
	Private sIconHeight As String = "16px"
	Private sIconWidth As String = "16px"
	Private bInlineEdit As Boolean = False
	Private bMultipleCheck As Boolean = False
	Private bMultipleSelect As Boolean = False
	Private sBackgroundColor As String = ""
	Private sRounded As String = ""
	Private bRoundedBox As Boolean = False
	Private sShadow As String = ""
	Private sSize As String = "md"
	Private sHeight As String = "full"
	Private sWidth As String = "200px"
	Private tv As BANanoObject
	Private bBuilt As Boolean
	Private sItemActiveColor As String = ""
	Private sItemColor As String = "primary"
	Private sItemFocusColor As String = ""
	Private sItemHoverColor As String = ""
	Private sCheckBoxActiveBorderColor As String = ""
	Private sCheckBoxActiveColor As String = ""
	Private sCheckBoxSize As String = ""
	Private bReplace As Boolean = False
	Private sTextBoxSize As String = ""
	Private bUseLocalstorage As Boolean = True
	Type TreeNode (nodeId As String, parentId As String, iconUrl As String, text As String, href As String, hasCheckbox As Boolean, expanded As Boolean)
End Sub

#if css
.drag-over {
  border: 2px dashed #007bff;
}
#End If

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("TreeView") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesTreeView)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	BANano.DependsOnAsset("daisyuitreeview.umd.js")
	bBuilt = False
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("ItemColor", "primary")
	CustProps.Put("ItemActiveColor", "")
	CustProps.Put("ItemFocusColor", "")
	CustProps.Put("ItemHoverColor", "")
	CustProps.Put("Height", "full")
	CustProps.Put("Width", "200px")
	CustProps.Put("CollapseIconUrl", "./assets/chevron-right-solid.svg")
	CustProps.Put("ExpandIconUrl", "./assets/chevron-down-solid.svg")
	CustProps.Put("DragNDrop", True)
	CustProps.Put("HasCheckbox", False)
	CustProps.Put("IconHeight", "16px")
	CustProps.Put("IconWidth", "16px")
	CustProps.Put("InlineEdit", False)
	CustProps.Put("MultipleCheck", False)
	CustProps.Put("MultipleSelect", False)
	CustProps.Put("Size", "md")
	CustProps.Put("CheckBoxSize", "md")
	CustProps.Put("TextBoxSize", "sm")
	CustProps.Put("CheckBoxActiveColor", "")
	CustProps.Put("CheckBoxActiveBorderColor", "")
	CustProps.Put("Replace", False)
	CustProps.Put("UseLocalstorage", True)
	CustProps.Put("BackgroundColor", "")
	CustProps.Put("Rounded", "")
	CustProps.Put("RoundedBox", False)
	CustProps.Put("Shadow", "none")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=? ")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=? ")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
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
'use to add an event to the element
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
		UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sCollapseIconUrl = Props.GetDefault("CollapseIconUrl", "./assets/chevron-right-solid.svg")
		sCollapseIconUrl = UI.CStr(sCollapseIconUrl)
		bDragNDrop = Props.GetDefault("DragNDrop", True)
		bDragNDrop = UI.CBool(bDragNDrop)
		sExpandIconUrl = Props.GetDefault("ExpandIconUrl", "./assets/chevron-down-solid.svg")
		sExpandIconUrl = UI.CStr(sExpandIconUrl)
		bHasCheckbox = Props.GetDefault("HasCheckbox", False)
		bHasCheckbox = UI.CBool(bHasCheckbox)
		sIconHeight = Props.GetDefault("IconHeight", "16px")
		sIconHeight = UI.CStr(sIconHeight)
		sIconWidth = Props.GetDefault("IconWidth", "16px")
		sIconWidth = UI.CStr(sIconWidth)
		bInlineEdit = Props.GetDefault("InlineEdit", False)
		bInlineEdit = UI.CBool(bInlineEdit)
		bMultipleCheck = Props.GetDefault("MultipleCheck", False)
		bMultipleCheck = UI.CBool(bMultipleCheck)
		bMultipleSelect = Props.GetDefault("MultipleSelect", False)
		bMultipleSelect = UI.CBool(bMultipleSelect)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		sRounded = Props.GetDefault("Rounded", "")
		sRounded = UI.CStr(sRounded)
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "")
		sShadow = UI.CStr(sShadow)
		sSize = Props.GetDefault("Size", "md")
		sSize = UI.CStr(sSize)
		sHeight = Props.GetDefault("Height", "full")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "200px")
		sWidth = UI.CStr(sWidth)
		sItemActiveColor = Props.GetDefault("ItemActiveColor", "")
		sItemActiveColor = UI.CStr(sItemActiveColor)
		sItemColor = Props.GetDefault("ItemColor", "primary")
		sItemColor = UI.CStr(sItemColor)
		sItemFocusColor = Props.GetDefault("ItemFocusColor", "")
		sItemFocusColor = UI.CStr(sItemFocusColor)
		sItemHoverColor = Props.GetDefault("ItemHoverColor", "")
		sItemHoverColor = UI.CStr(sItemHoverColor)
		sCheckBoxActiveBorderColor = Props.GetDefault("CheckBoxActiveBorderColor", "")
		sCheckBoxActiveBorderColor = UI.CStr(sCheckBoxActiveBorderColor)
		sCheckBoxActiveColor = Props.GetDefault("CheckBoxActiveColor", "")
		sCheckBoxActiveColor = UI.CStr(sCheckBoxActiveColor)
		sCheckBoxSize = Props.GetDefault("CheckBoxSize", "")
		sCheckBoxSize = UI.CStr(sCheckBoxSize)
		bReplace = Props.GetDefault("Replace", False)
		bReplace = UI.CBool(bReplace)
		sTextBoxSize = Props.GetDefault("TextBoxSize", "")
		sTextBoxSize = UI.CStr(sTextBoxSize)
		bUseLocalstorage = Props.GetDefault("UseLocalstorage", True)
		bUseLocalstorage = UI.CBool(bUseLocalstorage)
	End If
	'
	If sItemActiveColor <> "" Then
		If sItemActiveColor.StartsWith("active:") = False Then sItemActiveColor = UI.FixColor("active:bg", sItemActiveColor)
	End If
	If sItemFocusColor <> "" Then
		If sItemFocusColor.StartsWith("focus:") = False Then sItemFocusColor = UI.FixColor("focus:bg", sItemFocusColor)
	End If
	If sItemHoverColor <> "" Then
		If sItemHoverColor.StartsWith("hover:") = False Then sItemHoverColor = UI.FixColor("hover:bg", sItemHoverColor)
	End If
	
	Options.Initialize 
	Options.put("collapseIconUrl", sCollapseIconUrl)
	Options.put("dragNDrop", bDragNDrop)
	Options.put("expandIconUrl", sExpandIconUrl)
	Options.put("hasCheckbox", bHasCheckbox)
	Options.put("iconHeight", sIconHeight)
	Options.put("iconWidth", sIconWidth)
	Options.put("inlineEdit", bInlineEdit)
	Options.put("multipleCheck", bMultipleCheck)
	Options.put("multipleSelect", bMultipleSelect)
	Options.Put("itemColor", sItemColor)
	Options.Put("itemActiveColor", sItemActiveColor)
	Options.Put("itemFocusColor", sItemFocusColor)
	Options.Put("itemHoverColor", sItemHoverColor)
	Options.put("treeName", mName)
	Options.put("checkBoxActiveBorderColor", sCheckBoxActiveBorderColor)
	Options.put("checkBoxActiveColor", sCheckBoxActiveColor)
	Options.put("checkBoxSize", sCheckBoxSize)
	Options.put("replace", bReplace)
	Options.put("textBoxSize", sTextBoxSize)
	Options.put("useLocalstorage", bUseLocalstorage)
	'
	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sSize <> "" Then UI.AddSizeDT("menu", sSize)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox Then UI.AddRoundedBoxDT
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	UI.AddClassDT("menu")
	UI.AddClassDT("overflow-y-auto")
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
	Dim e As BANanoEvent
	mElement.AddEventListener("nodeDrop", BANano.CallBack(mCallBack, $"${mName}_nodeDrop"$, Array(e)), True)
	mElement.AddEventListener("nodeDragStart", BANano.CallBack(mCallBack, $"${mName}_nodeDragStart"$, Array(e)), True)
	mElement.AddEventListener("nodeExpanded", BANano.CallBack(mCallBack, $"${mName}_nodeExpanded"$, Array(e)), True)
	mElement.AddEventListener("nodeCollapsed", BANano.CallBack(mCallBack, $"${mName}_nodeCollapsed"$, Array(e)), True)
	mElement.AddEventListener("nodeSelected", BANano.CallBack(mCallBack, $"${mName}_nodeSelected"$, Array(e)), True)
	mElement.AddEventListener("nodesSelected", BANano.CallBack(mCallBack, $"${mName}_nodesSelected"$, Array(e)), True)
	mElement.AddEventListener("nodeEdited", BANano.CallBack(mCallBack, $"${mName}_nodeEdited"$, Array(e)), True)
	mElement.AddEventListener("nodeChecked", BANano.CallBack(mCallBack, $"${mName}_nodeChecked"$, Array(e)), True)
	mElement.AddEventListener("nodeClick", BANano.CallBack(mCallBack, $"${mName}_nodeClick"$, Array(e)), True)
	mElement.AddEventListener("nodeEditCancelled", BANano.CallBack(mCallBack, $"${mName}_nodeEditCancelled"$, Array(e)), True)
	BuildTree
End Sub

private Sub BuildTree
	bBuilt = True
	Dim skey As String = $"#${mName}"$
	Dim el As BANanoElement = BANano.GetElement(skey).ToObject
	tv.Initialize2("DaisyUITreeView", Array(el, Options))
End Sub

'get the tree structure as a map
Sub GetTreeMap As Map
	Dim res As Map = tv.RunMethod("getTree", Null).Result
	Return res
End Sub

'get the tree data as a list
Sub GetTreeList As List
	Dim res As List = tv.RunMethod("flattenTree", Null).Result
	Return res
End Sub

'ONLY CALL when absolutely necessary.
Sub Refresh
	tv.RunMethod("refresh", Null)
End Sub

Sub collapseAll
	tv.RunMethod("collapseAll", Null)
End Sub

Sub expandAll
	tv.RunMethod("expandAll", Null)
End Sub

Sub nodeMoveRight(nodeId As String)
	tv.RunMethod("nodeMoveRight", nodeId)
End Sub

Sub nodeMoveLeft(nodeId As String)
	tv.RunMethod("nodeMoveLeft", nodeId)
End Sub

Sub nodeMoveUp(nodeId As String)
	tv.RunMethod("nodeMoveUp", nodeId)
End Sub

Sub nodeMoveDown(nodeId As String)
	tv.RunMethod("nodeMoveDown", nodeId)
End Sub

Sub enableInlineEditing(nodeId As String)
	tv.RunMethod("enableInlineEditing", nodeId)
End Sub

Sub nodeExists(nodeID As String) As Boolean
	Dim b As Boolean = tv.RunMethod("nodeExists", Array(nodeID)).Result
	Return b
End Sub

Sub findNode(nodeID As String) As Map
	Dim n As Object = tv.RunMethod("findNode", Array(nodeID)).Result
	Return n
End Sub

Sub addNode(parentId As String, nodeId As String, iconUrl As String, text As String, href As String)
	tv.RunMethod("addNode", Array(parentId, nodeId, iconUrl, text, href))
End Sub

Sub addNodeBefore(targetId As String, nodeId As String, iconUrl As String, text As String, href As String)
	tv.RunMethod("addNodeBefore", Array(targetId, nodeId, iconUrl, text, href))
End Sub

Sub addNodeAfter(targetId As String, nodeId As String, iconUrl As String, text As String, href As String)
	tv.RunMethod("addNodeAfter", Array(targetId, nodeId, iconUrl, text, href))
End Sub

Sub checkNode(nodeId As String, b As Boolean)
	tv.RunMethod("checkNode", Array(nodeId, b))
End Sub

Sub removeNode(nodeId As String)
	tv.RunMethod("removeNodeRecursive", Array(nodeId))
End Sub

Sub expandNode(nodeId As String, state As Boolean)
	tv.RunMethod("expandNode", Array(nodeId, state))
End Sub

Sub enableNode(nodeId As String, state As Boolean)
	tv.RunMethod("enableNode", Array(nodeId, state))
End Sub

Sub Clear
	tv.RunMethod("clear", Null)
	If mElement <> Null Then mElement.empty
End Sub

Sub clearSelected
	tv.RunMethod("clearSelected", Null)
End Sub

Sub clearChecked
	tv.RunMethod("clearChecked", Null)
End Sub

Sub getChildren(nodeId As String) As List
	Dim l As Object = tv.RunMethod("getChildrenRecursive", Array(nodeId)).Result
	Return l
End Sub

Sub removeChildren(nodeId As String)
	tv.RunMethod("removeChildren", Array(nodeId))
End Sub

Sub showNode(nodeId As String)
	tv.RunMethod("showNode", Array(nodeId))
End Sub

Sub hideNode(nodeId As String)
	tv.RunMethod("hideNode", Array(nodeId))
End Sub

Sub updateNode(nodeId As String, iconUrl As String, text As String, href As String)
	tv.RunMethod("updateNode", Array(nodeId, iconUrl, text, href))
End Sub

Sub selectNode(nodeId As String, state As Boolean)
	tv.RunMethod("selectNode", Array(nodeId, state))
End Sub

Sub selectNodes(nodes As List)
	tv.RunMethod("selectNodes", nodes)
End Sub

Sub getSelectedNode(includeChildren As Boolean) As Object
	Dim l As Object = tv.RunMethod("getSelectedNode", includeChildren).result
	Return l
End Sub

Sub getSelectedNodes As Object
	Dim l As Object = tv.RunMethod("getSelectedNodes", Null).Result
	Return l
End Sub

Sub getCheckedNodes As Object
	Dim l As Object = tv.RunMethod("getCheckedNodes", Null)
	Return l
End Sub

Sub checkNodes(nodes As List)
	tv.RunMethod("checkedNodes", nodes)
End Sub

'set Check Box Active Border Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setCheckBoxActiveBorderColor(s As String)
	sCheckBoxActiveBorderColor = s
	CustProps.put("CheckBoxActiveBorderColor", s)
	Options.Put("checkBoxActiveBorderColor", s)
	tv.GetField("settings").SetField("checkBoxActiveBorderColor", s)
End Sub
'set Check Box Active Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setCheckBoxActiveColor(s As String)
	sCheckBoxActiveColor = s
	CustProps.put("CheckBoxActiveColor", s)
	Options.Put("checkBoxActiveColor", s)
	tv.GetField("settings").SetField("checkBoxActiveColor", s)
End Sub
'set Check Box Size
'options: xs|none|sm|md|lg|xl
Sub setCheckBoxSize(s As String)
	sCheckBoxSize = s
	CustProps.put("CheckBoxSize", s)
	Options.Put("checkBoxSize", s)
	tv.GetField("settings").SetField("checkBoxSize", s)
End Sub
'set Replace
Sub setReplace(b As Boolean)
	bReplace = b
	CustProps.put("Replace", b)
	Options.put("replace", b)
	tv.GetField("settings").SetField("replace", b)
End Sub
'set Text Box Size
'options: xs|none|sm|md|lg|xl
Sub setTextBoxSize(s As String)
	sTextBoxSize = s
	CustProps.put("TextBoxSize", s)
	Options.Put("textBoxSize", s)
	tv.GetField("settings").SetField("textBoxSize", S)
End Sub
'set Use Localstorage
Sub setUseLocalstorage(b As Boolean)
	bUseLocalstorage = b
	CustProps.put("UseLocalstorage", b)
	Options.Put("useLocalstorage", b)
	tv.GetField("settings").SetField("useLocalstorage", b)
End Sub
'get Check Box Active Border Color
Sub getCheckBoxActiveBorderColor As String
	Return sCheckBoxActiveBorderColor
End Sub
'get Check Box Active Color
Sub getCheckBoxActiveColor As String
	Return sCheckBoxActiveColor
End Sub
'get Check Box Size
Sub getCheckBoxSize As String
	Return sCheckBoxSize
End Sub
'get Replace
Sub getReplace As Boolean
	Return bReplace
End Sub
'get Text Box Size
Sub getTextBoxSize As String
	Return sTextBoxSize
End Sub
'get Use Localstorage
Sub getUseLocalstorage As Boolean
	Return bUseLocalstorage
End Sub

'set Collapse Icon Url
Sub setCollapseIconUrl(s As String)
	sCollapseIconUrl = s
	CustProps.put("CollapseIconUrl", s)
	Options.put("collapseIconUrl", s)
	If bBuilt = False Then Return
	tv.GetField("settings").SetField("collapseIconUrl", s)
End Sub
'set Drag N Drop
Sub setDragNDrop(b As Boolean)
	bDragNDrop = b
	CustProps.put("DragNDrop", b)
	Options.put("dragNDrop", b)
	If bBuilt = False Then Return
	tv.GetField("settings").SetField("dragNDrop", b)
End Sub
'set Expand Icon Url
Sub setExpandIconUrl(s As String)
	sExpandIconUrl = s
	CustProps.put("ExpandIconUrl", s)
	Options.put("expandIconUrl", s)
	If bBuilt = False Then Return
	tv.GetField("settings").SetField("expandIconUrl", s)
End Sub
'set Has Checkbox
Sub setHasCheckbox(b As Boolean)
	bHasCheckbox = b
	CustProps.put("HasCheckbox", b)
	Options.put("hasCheckbox", b)
	If bBuilt = False Then Return
	tv.GetField("settings").SetField("hasCheckbox", b)
End Sub
'set Icon Height
Sub setIconHeight(s As String)
	sIconHeight = s
	CustProps.put("IconHeight", s)
	Options.put("iconHeight", s)
	If bBuilt = False Then Return
	tv.GetField("settings").SetField("iconHeight", s)
End Sub
'set Icon Width
Sub setIconWidth(s As String)
	sIconWidth = s
	CustProps.put("IconWidth", s)
	Options.put("iconWidth", s)
	If bBuilt = False Then Return
	tv.GetField("settings").SetField("iconWidth", s)
End Sub
'set Inline Edit
Sub setInlineEdit(b As Boolean)
	bInlineEdit = b
	CustProps.put("InlineEdit", b)
	Options.put("inlineEdit", b)
	If bBuilt = False Then Return
	tv.GetField("settings").SetField("inlineEdit", b)
End Sub
'set Multiple Check
Sub setMultipleCheck(b As Boolean)
	bMultipleCheck = b
	CustProps.put("MultipleCheck", b)
	Options.put("multipleCheck", b)
	If bBuilt = False Then Return
	tv.GetField("settings").SetField("multipleCheck", b)
End Sub
'set Multiple Select
Sub setMultipleSelect(b As Boolean)
	bMultipleSelect = b
	CustProps.put("MultipleSelect", b)
	Options.put("multipleSelect", b)
	If bBuilt = False Then Return
	tv.GetField("settings").SetField("multipleSelect", b)
End Sub
'get Collapse Icon Url
Sub getCollapseIconUrl As String
	Return sCollapseIconUrl
End Sub
'get Drag N Drop
Sub getDragNDrop As Boolean
	Return bDragNDrop
End Sub
'get Expand Icon Url
Sub getExpandIconUrl As String
	Return sExpandIconUrl
End Sub
'get Has Checkbox
Sub getHasCheckbox As Boolean
	Return bHasCheckbox
End Sub
'get Icon Height
Sub getIconHeight As String
	Return sIconHeight
End Sub
'get Icon Width
Sub getIconWidth As String
	Return sIconWidth
End Sub
'get Inline Edit
Sub getInlineEdit As Boolean
	Return bInlineEdit
End Sub
'get Multiple Check
Sub getMultipleCheck As Boolean
	Return bMultipleCheck
End Sub
'get Multiple Select
Sub getMultipleSelect As Boolean
	Return bMultipleSelect
End Sub

Sub GetNodeFromEvent(e As BANanoEvent) As TreeNode
	Dim det As Object = e.Detail
	Dim detx As Map = det
	Dim det1 As Map = detx.Get("node")
	Dim tn As TreeNode
	tn.Initialize 
	tn.nodeId = det1.Get("nodeId")
	tn.parentId = det1.Get("parentId")
	tn.iconUrl = det1.Get("iconUrl")
	tn.text = det1.Get("text")
	tn.href = det1.Get("href")
	tn.hasCheckbox = det1.Get("hasCheckbox")
	tn.expanded = det1.Get("expanded")
	Return tn
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
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
	UI.SetRoundedBox(mElement, bRoundedBox)
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
	If s <> "" Then UI.SetSize(mElement, "size", "menu", sSize)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Height
Sub getHeight As String
	Return sHeight
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
'get Width
Sub getWidth As String
	Return sWidth
End Sub
