B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (value As String)

#DesignerProperty: Key: ParentID, DisplayName: Parent ID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: ModelValue, DisplayName: Model Value, FieldType: String, DefaultValue: , Description: The selected tab ID (can be alphanumeric)
#DesignerProperty: Key: ForegroundColor, DisplayName: Foreground Color, FieldType: String, DefaultValue: #42A5F5, Description: Foreground bar background color hex
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: #FFFFFF, Description: Active tab sweep overlay and text base hex
#DesignerProperty: Key: BadgeColor, DisplayName: Badge Color, FieldType: String, DefaultValue: #FBC02D, Description: Notification bubble color hex
#DesignerProperty: Key: IconColor, DisplayName: Icon Color, FieldType: String, DefaultValue: #0000008A, Description: Primary icon glyph color hex
#DesignerProperty: Key: ReplaceRoute, DisplayName: Replace Route, FieldType: Boolean, DefaultValue: False, Description: If true, uses replaceState instead of pushState
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
	Private sModelValue As String = ""
	Private sForegroundColor As String = "#42A5F5"
	Private sBackgroundColor As String = "#FFFFFF"
	Private sBadgeColor As String = "#FBC02D"
	Private sIconColor As String = "#0000008A"
	Private bReplaceRoute As Boolean = False
	Public Tag As Object
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("bottom-navigation.min.js")
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("ModelValue", "")
	CustProps.Put("ForegroundColor", "#42A5F5")
	CustProps.Put("BackgroundColor", "#FFFFFF")
	CustProps.Put("BadgeColor", "#FBC02D")
	CustProps.Put("IconColor", "#0000008A")
	CustProps.Put("ReplaceRoute", False)
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
	mTarget = BANano.GetElement("#" & sParentID)
	DesignerCreateView(mTarget, CustProps)
End Sub

'remove this element from the dom
Public Sub Remove()
	If mElement <> Null Then mElement.Remove
	BANano.SetMeToNull
End Sub

'set the parent id
Sub setParentID(s As String)
	s = UI.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub

Public Sub getParentID() As String
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

Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub

Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub

Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub

Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub

Sub getAttributes As String
	Return sRawAttributes
End Sub

Sub getStyles As String
	Return sRawStyles
End Sub

Sub getClasses As String
	Return sRawClasses
End Sub

Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub

Sub getMarginAXYTBLR As String
	Return sMarginAXYTBLR
End Sub

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		sModelValue = Props.GetDefault("ModelValue", "")
		sModelValue = UI.CStr(sModelValue)
		sForegroundColor = Props.GetDefault("ForegroundColor", "#42A5F5")
		sForegroundColor = UI.CStr(sForegroundColor)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "#FFFFFF")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		sBadgeColor = Props.GetDefault("BadgeColor", "#FBC02D")
		sBadgeColor = UI.CStr(sBadgeColor)
		sIconColor = Props.GetDefault("IconColor", "#0000008A")
		sIconColor = UI.CStr(sIconColor)
		bReplaceRoute = Props.GetDefault("ReplaceRoute", False)
		bReplaceRoute = UI.CBool(bReplaceRoute)
	End If
	
	If sParentID <> "" Then
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	
	If sModelValue <> "" Then UI.AddAttrDT("model-value", sModelValue)
	If sForegroundColor <> "" Then UI.AddAttrDT("foreground-color", sForegroundColor)
	If sBackgroundColor <> "" Then UI.AddAttrDT("background-color", sBackgroundColor)
	If sBadgeColor <> "" Then UI.AddAttrDT("badge-color", sBadgeColor)
	If sIconColor <> "" Then UI.AddAttrDT("icon-color", sIconColor)
	If bReplaceRoute = True Then UI.AddAttrDT("replace-route", "true")
	
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	
	mElement = mTarget.Append($"[BANCLEAN]
	<curved-bottom-navigation id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></curved-bottom-navigation>"$).Get("#" & mName)
	
	UI.OnEvent(mElement, "change", Me, "InternalChange")
End Sub

private Sub InternalChange(e As BANanoEvent)
	e.PreventDefault
	Dim obj As Object = e.Detail
	setModelValue(obj)
	BANano.CallSub(mCallBack, $"${mEventName}_change"$, Array(obj)) 
End Sub

'set Model Value
Sub setModelValue(v As String)
	sModelValue = v
	CustProps.Put("ModelValue", v)
	If mElement = Null Then Return
	mElement.SetAttr("model-value", v)
End Sub

'get Model Value
Sub getModelValue As String
	If mElement = Null Then Return sModelValue
	Return mElement.GetAttr("model-value")
End Sub

'set Foreground Color
Sub setForegroundColor(c As String)
	sForegroundColor = c
	CustProps.Put("ForegroundColor", c)
	If mElement = Null Then Return
	mElement.SetAttr("foreground-color", c)
End Sub

'get Foreground Color
Sub getForegroundColor As String
	If mElement = Null Then Return sForegroundColor
	Return mElement.GetAttr("foreground-color")
End Sub

'set Background Color
Sub setBackgroundColor(c As String)
	sBackgroundColor = c
	CustProps.Put("BackgroundColor", c)
	If mElement = Null Then Return
	mElement.SetAttr("background-color", c)
End Sub

'get Background Color
Sub getBackgroundColor As String
	If mElement = Null Then Return sBackgroundColor
	Return mElement.GetAttr("background-color")
End Sub

'set Badge Color
Sub setBadgeColor(c As String)
	sBadgeColor = c
	CustProps.Put("BadgeColor", c)
	If mElement = Null Then Return
	mElement.SetAttr("badge-color", c)
End Sub

'get Badge Color
Sub getBadgeColor As String
	If mElement = Null Then Return sBadgeColor
	Return mElement.GetAttr("badge-color")
End Sub

'set Icon Color
Sub setIconColor(c As String)
	sIconColor = c
	CustProps.Put("IconColor", c)
	If mElement = Null Then Return
	mElement.SetAttr("icon-color", c)
End Sub

'get Icon Color
Sub getIconColor As String
	If mElement = Null Then Return sIconColor
	Return mElement.GetAttr("icon-color")
End Sub

'set Replace Route
Sub setReplaceRoute(b As Boolean)
	bReplaceRoute = b
	CustProps.Put("ReplaceRoute", b)
	If mElement = Null Then Return
	If b = True Then
		mElement.SetAttr("replace-route", "true")
	Else
		mElement.RemoveAttr("replace-route")
	End If
End Sub

'get Replace Route
Sub getReplaceRoute As Boolean
	If mElement = Null Then Return bReplaceRoute
	Return mElement.GetAttr("replace-route") = "true"
End Sub

'set Options List at runtime
Public Sub SetOptions(OptionsList As List)
	If mElement = Null Then Return
	mElement.SetAttr("options", BANano.ToJson(OptionsList))
End Sub

'Add a parent button programmatically at runtime
Public Sub AddButton(id As String, icon As String, title As String, badge As String)
	If mElement = Null Then Return
	Dim button As Map = CreateMap("id": id, "icon": icon, "title": title, "badge": badge)
	mElement.RunMethod("addButton", Array(button))
End Sub

'Add a nested child option to a parent button
Public Sub AddButtonItem(parentId As String, id As String, icon As String, title As String, badge As String)
	If mElement = Null Then Return
	Dim childItem As Map = CreateMap("id": id, "icon": icon, "title": title, "badge": badge)
	mElement.RunMethod("addButtonItem", Array(parentId, childItem))
End Sub

'Remove a parent button programmatically at runtime
Public Sub RemoveButton(buttonId As String) As Boolean
	If mElement = Null Then Return False
	Return mElement.RunMethod("removeButton", Array(buttonId)).Result
End Sub

'Remove a child option from a parent sub-menu
Public Sub RemoveButtonItem(parentId As String, childId As String) As Boolean
	If mElement = Null Then Return False
	Return mElement.RunMethod("removeButtonItem", Array(parentId, childId)).Result
End Sub

'Update the notification badge count or label bubble dynamically
Public Sub UpdateBadge(id As String, badgeValue As Object) As Boolean
	If mElement = Null Then Return False
	Return mElement.RunMethod("updateBadge", Array(id, badgeValue)).Result
End Sub

'Get the currently active selected option ID
Public Sub GetActive() As String
	If mElement = Null Then Return ""
	Return mElement.RunMethod("getActive", Null).Result
End Sub

'Select and focus an option programmatically at runtime
Public Sub SetActive(id As String)
	If mElement = Null Then Return
	mElement.RunMethod("setActive", Array(id))
End Sub

'Wipe all buttons and selections
Public Sub Clear()
	If mElement = Null Then Return
	mElement.RunMethod("clear", Null)
End Sub

'Rebuild the component dynamically
Public Sub Refresh()
	If mElement = Null Then Return
	mElement.RunMethod("refresh", Null)
End Sub

'Set the enabled/disabled state of a button or child button programmatically
Public Sub SetButtonDisabled(id As String, disabled As Boolean)
	If mElement = Null Then Return
	mElement.RunMethod("setDisabled", Array(id, disabled))
End Sub

'Set the visibility state (show/hide) of a button or child button programmatically
Public Sub SetButtonHidden(id As String, hidden As Boolean)
	If mElement = Null Then Return
	mElement.RunMethod("setHidden", Array(id, hidden))
End Sub

'Return the rendered height of the bottom navigation bar in pixels
Public Sub GetHeight As Int
	If mElement = Null Then Return 60
	Dim res As Object = mElement.RunMethod("getHeight", Null)
	If res = Null Then Return 60
	Return res
End Sub
