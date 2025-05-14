B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12

#Event: ItemClick (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 56, Description: Width
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-200, Description: Background Color
#DesignerProperty: Key: Horizontal, DisplayName: Horizontal, FieldType: Boolean, DefaultValue: False, Description: Horizontal
#DesignerProperty: Key: IconHeight, DisplayName: Icon Height, FieldType: String, DefaultValue: 16px, Description: Icon Height
#DesignerProperty: Key: IconWidth, DisplayName: Icon Width, FieldType: String, DefaultValue: 16px, Description: Icon Width
#DesignerProperty: Key: ItemActiveColor, DisplayName: Item Active Color, FieldType: String, DefaultValue: , Description: Item Active Color
#DesignerProperty: Key: ItemColor, DisplayName: Item Color, FieldType: String, DefaultValue: primary, Description: Item Color
#DesignerProperty: Key: ItemFocusColor, DisplayName: Item Focus Color, FieldType: String, DefaultValue: , Description: Item Focus Color
#DesignerProperty: Key: ItemHoverColor, DisplayName: Item Hover Color, FieldType: String, DefaultValue: , Description: Item Hover Color
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: True, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: lg, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
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
	Private bHorizontal As Boolean = False
	Private sIconHeight As String = "16px"
	Private sIconWidth As String = "16px"
	Private sItemActiveColor As String = ""
	Private sItemColor As String = "primary"
	Private sItemFocusColor As String = ""
	Private sItemHoverColor As String = ""
	Private bRoundedBox As Boolean = True
	Private sShadow As String = "lg"
	Private sSize As String = "md"
	Private sTarget As String = ""
	Private sWidth As String = "56"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("ContextMenu") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesContextMenu)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("ContextMenu.js")
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
'use to add an event to the element
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, methodName)
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
		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		bHorizontal = Props.GetDefault("Horizontal", False)
		bHorizontal = UI.CBool(bHorizontal)
		sIconHeight = Props.GetDefault("IconHeight", "16px")
		sIconHeight = UI.CStr(sIconHeight)
		sIconWidth = Props.GetDefault("IconWidth", "16px")
		sIconWidth = UI.CStr(sIconWidth)
		sItemActiveColor = Props.GetDefault("ItemActiveColor", "")
		sItemActiveColor = UI.CStr(sItemActiveColor)
		sItemColor = Props.GetDefault("ItemColor", "primary")
		sItemColor = UI.CStr(sItemColor)
		sItemFocusColor = Props.GetDefault("ItemFocusColor", "")
		sItemFocusColor = UI.CStr(sItemFocusColor)
		sItemHoverColor = Props.GetDefault("ItemHoverColor", "")
		sItemHoverColor = UI.CStr(sItemHoverColor)
		bRoundedBox = Props.GetDefault("RoundedBox", True)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "lg")
		sShadow = UI.CStr(sShadow)
		sSize = Props.GetDefault("Size", "md")
		sSize = UI.CStr(sSize)
		sTarget = Props.GetDefault("Target", "")
		sTarget = UI.CleanID(sTarget)
		sWidth = Props.GetDefault("Width", "56")
		sWidth = UI.CStr(sWidth)
	End If
	'
	If sTarget <> "" Then UI.AddAttrDT("target", $"#${sTarget}"$)
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
	mElement = mTarget.Append($"[BANCLEAN]<context-menu id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></context-menu>"$).Get("#" & mName)
	UI.OnEvent(mElement, "ItemClick", mCallBack, $"${mName}_ItemClick"$)
	UpdateSettings
End Sub

Sub UpdateSettings
	If sItemActiveColor <> "" Then
		If sItemActiveColor.StartsWith("active:") = False Then sItemActiveColor = UI.FixColor("active:bg", sItemActiveColor)
	End If
	If sItemFocusColor <> "" Then
		If sItemFocusColor.StartsWith("focus:") = False Then sItemFocusColor = UI.FixColor("focus:bg", sItemFocusColor)
	End If
	If sItemHoverColor <> "" Then
		If sItemHoverColor.StartsWith("hover:") = False Then sItemHoverColor = UI.FixColor("hover:bg", sItemHoverColor)
	End If
	mElement.SetField("menuSize", $"${UI.FixSize("menu", sSize)}"$)
	mElement.SetField("menuWidth", $"${UI.FixSize("w", sWidth)}"$)
	mElement.SetField("menuShadow", $"${UI.FixShadow(sShadow)}"$)
	mElement.SetField("menuBackground", $"${UI.FixColor("bg", sBackgroundColor)}"$)
	mElement.SetField("menuRoundedBox", bRoundedBox)
	mElement.SetField("menuHorizontal", bHorizontal)
	mElement.SetField("iconHeight", sIconHeight)
	mElement.SetField("iconWidth", sIconWidth)
	mElement.SetField("itemColor", sItemColor)
	mElement.SetField("itemActiveColor", sItemActiveColor)
	mElement.SetField("itemFocusColor", sItemFocusColor)
	mElement.SetField("itemHoverColor", sItemHoverColor)
End Sub

Sub AddItem(parentId As String, nodeId As String, iconUrl As String, label As String)
	mElement.RunMethod("addItem", Array(parentId, nodeId, iconUrl, label))
End Sub


Sub Refresh
	mElement.RunMethod("refresh", Null)
End Sub

Sub Clear
	mElement.RunMethod("clear", Null)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
End Sub
'set Horizontal
Sub setHorizontal(b As Boolean)
	bHorizontal = b
	CustProps.put("Horizontal", b)
End Sub
'set Icon Height
Sub setIconHeight(s As String)
	sIconHeight = s
	CustProps.put("IconHeight", s)
End Sub
'set Icon Width
Sub setIconWidth(s As String)
	sIconWidth = s
	CustProps.put("IconWidth", s)
End Sub
'set Item Active Color
Sub setItemActiveColor(s As String)
	sItemActiveColor = s
	CustProps.put("ItemActiveColor", s)
End Sub
'set Item Color
Sub setItemColor(s As String)
	sItemColor = s
	CustProps.put("ItemColor", s)
End Sub
'set Item Focus Color
Sub setItemFocusColor(s As String)
	sItemFocusColor = s
	CustProps.put("ItemFocusColor", s)
End Sub
'set Item Hover Color
Sub setItemHoverColor(s As String)
	sItemHoverColor = s
	CustProps.put("ItemHoverColor", s)
End Sub
'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
End Sub
'set Shadow
'options: 2xl|inner|lg|md|none|shadow|sm|xl
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
End Sub
'set Size
'options: lg|md|none|sm|xl|xs
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
End Sub
'set Target
'options: _blank|_self|_parent|_top|none
Sub setTarget(s As String)
	sTarget = s
	CustProps.put("Target", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "target", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
End Sub

'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Horizontal
Sub getHorizontal As Boolean
	Return bHorizontal
End Sub
'get Icon Height
Sub getIconHeight As String
	Return sIconHeight
End Sub
'get Icon Width
Sub getIconWidth As String
	Return sIconWidth
End Sub
'get Item Active Color
Sub getItemActiveColor As String
	Return sItemActiveColor
End Sub
'get Item Color
Sub getItemColor As String
	Return sItemColor
End Sub
'get Item Focus Color
Sub getItemFocusColor As String
	Return sItemFocusColor
End Sub
'get Item Hover Color
Sub getItemHoverColor As String
	Return sItemHoverColor
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
'get Target
Sub getTarget As String
	Return sTarget
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub