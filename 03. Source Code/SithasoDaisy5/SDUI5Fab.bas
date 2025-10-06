B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: OnIcon, DisplayName: On Icon, FieldType: String, DefaultValue: fas fa-times, Description: On Icon
#DesignerProperty: Key: OnTextColor, DisplayName: On Text Color, FieldType: String, DefaultValue: none, Description: On Text Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: OffIcon, DisplayName: Off Icon, FieldType: String, DefaultValue: fas fa-plus, Description: Off Icon
#DesignerProperty: Key: OffTextColor, DisplayName: Off Text Color, FieldType: String, DefaultValue: none, Description: Off Text Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: ToastPlacement, DisplayName: Toast Placement, FieldType: String, DefaultValue: bottom-end, Description: Toast Placement, List: bottom-center|bottom-end|bottom-start|middle-center|middle-end|middle-start|top-center|top-end|top-start
#DesignerProperty: Key: DropdownPlacement, DisplayName: Dropdown Placement, FieldType: String, DefaultValue: , Description: Dropdown Placement, List: bottom|bottom-center|bottom-end|center|end|left|left-center|left-end|right|right-center|right-end|start|top|top-center|top-end
#DesignerProperty: Key: IconSize, DisplayName: Icon Size, FieldType: String, DefaultValue: 2xl, Description: Icon Size
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: lg, Description: Size, List: lg|md|none|sm|xl|xs
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
	Private sColor As String = "none"
	Private sDropdownPlacement As String = ""
	Private sIconSize As String = "2xl"
	Private sOffIcon As String = "fas fa-plus"
	Private sOffTextColor As String = "none"
	Private sOnIcon As String = "fas fa-times"
	Private sOnTextColor As String = "none"
	Private sSize As String = "lg"
	Private sToastPlacement As String = ""
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("SVGRenderer.min.js")
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
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sDropdownPlacement = Props.GetDefault("DropdownPlacement", "")
		sDropdownPlacement = UI.CStr(sDropdownPlacement)
		sIconSize = Props.GetDefault("IconSize", "2xl")
		sIconSize = UI.CStr(sIconSize)
		sOffIcon = Props.GetDefault("OffIcon", "fas fa-plus")
		sOffIcon = UI.CStr(sOffIcon)
		sOffTextColor = Props.GetDefault("OffTextColor", "none")
		sOffTextColor = UI.CStr(sOffTextColor)
		If sOffTextColor = "none" Then sOffTextColor = ""
		sOnIcon = Props.GetDefault("OnIcon", "fas fa-times")
		sOnIcon = UI.CStr(sOnIcon)
		sOnTextColor = Props.GetDefault("OnTextColor", "none")
		sOnTextColor = UI.CStr(sOnTextColor)
		If sOnTextColor = "none" Then sOnTextColor = ""
		sSize = Props.GetDefault("Size", "lg")
		sSize = UI.CStr(sSize)
		sToastPlacement = Props.GetDefault("ToastPlacement", "")
		sToastPlacement = UI.CStr(sToastPlacement)
	End If
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
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="toast">
    	<div id="${mName}_dropdown" class="dropdown ${xclasses}" ${xattrs} style="${xstyles}">
      		<label id="${mName}_button" tabindex="0" role="button" class="swap swap-rotate btn btn-circle shadow-xl m-1">
        		<input id="${mName}_checkbox" type="checkbox"></input>
        		<svg-renderer id="${mName}_off" fill="currentColor" data-js="enabled" class="swap-off"></svg-renderer>
        		<svg-renderer id="${mName}_on" fill="currentColor" data-js="enabled" class="swap-on"></svg-renderer>
      		</label>
      		<label id="${mName}_content" tabindex="0" class="dropdown-content z-1 flex flex-col"></label>
    	</div>
  	</div>"$).Get("#" & mName)
	setColor(sColor)
	setDropdownPlacement(sDropdownPlacement)
	setIconSize(sIconSize)
	setOffIcon(sOffIcon)
	setOffTextColor(sOffTextColor)
	setOnIcon(sOnIcon)
	setOnTextColor(sOnTextColor)
	setSize(sSize)
	setToastPlacement(sToastPlacement)
End Sub

Sub Clear		'ignoredeadcode
	If mElement = Null Then Return
	UI.ClearByID($"${mName}_content"$)
End Sub

'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)			'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_button"$, sColor)
End Sub
'set Dropdown Placement
'options: bottom|bottom-center|bottom-end|center|end|left|left-center|left-end|right|right-center|right-end|start|top|top-center|top-end
Sub setDropdownPlacement(s As String)			'ignoredeadcode
	sDropdownPlacement = s
	CustProps.put("DropdownPlacement", s)
	If mElement = Null Then Return
	UI.SetPlacementByID($"${mName}_dropdown"$, "dropdown", s)
End Sub
'set Icon Size
'options: xs|none|sm|md|lg|xl
Sub setIconSize(s As String)				'ignoredeadcode
	sIconSize = s
	CustProps.put("IconSize", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetTextSizeByID($"${mName}_off"$, s)
		UI.SetTextSizeByID($"${mName}_on"$, s)
	End If
End Sub
'set Off Icon
Sub setOffIcon(s As String)				'ignoredeadcode
	sOffIcon = s
	CustProps.put("OffIcon", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetIconNameByID($"${mName}_off"$, s)
End Sub
'set Off Text Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setOffTextColor(s As String)				'ignoredeadcode
	sOffTextColor = s
	CustProps.put("OffTextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetIconColorByID($"${mName}_off"$, s)
End Sub
'set On Icon
Sub setOnIcon(s As String)				'ignoredeadcode
	sOnIcon = s
	CustProps.put("OnIcon", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetIconNameByID($"${mName}_on"$, s)
End Sub
'set On Text Color
'options: accent|error|info|neutral|none|primary|secondary|success|warning
Sub setOnTextColor(s As String)			'ignoredeadcode
	sOnTextColor = s
	CustProps.put("OnTextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetIconColorByID($"${mName}_on"$, s)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)			'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSizeByID($"${mName}_button"$, "size", "btn", sSize)
End Sub
'set Toast Placement
'options: bottom-center|bottom-end|bottom-start|middle-center|middle-end|middle-start|top-center|top-end|top-start
Sub setToastPlacement(s As String)			'ignoredeadcode
	sToastPlacement = s
	CustProps.put("ToastPlacement", s)
	If mElement = Null Then Return
	UI.SetPlacement(mElement, "toast", s)
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Dropdown Placement
Sub getDropdownPlacement As String
	Return sDropdownPlacement
End Sub
'get Icon Size
Sub getIconSize As String
	Return sIconSize
End Sub
'get Off Icon
Sub getOffIcon As String
	Return sOffIcon
End Sub
'get Off Text Color
Sub getOffTextColor As String
	Return sOffTextColor
End Sub
'get On Icon
Sub getOnIcon As String
	Return sOnIcon
End Sub
'get On Text Color
Sub getOnTextColor As String
	Return sOnTextColor
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Toast Placement
Sub getToastPlacement As String
	Return sToastPlacement
End Sub