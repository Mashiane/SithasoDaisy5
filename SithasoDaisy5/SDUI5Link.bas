B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Link, Description: Text
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: False, Description: Hover
#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: #, Description: Href
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: IconColor, DisplayName: Icon Color, FieldType: String, DefaultValue: , Description: Icon Color
#DesignerProperty: Key: IconSize, DisplayName: Icon Size, FieldType: String, DefaultValue: 24px, Description: Icon Size
#DesignerProperty: Key: ListItem, DisplayName: List Item, FieldType: Boolean, DefaultValue: False, Description: List Item
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: none, Description: Target, List: _blank|_parent|_self|_top|none
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
	Private sText As String = "Link"
	Public Tag As Object
	Private sColor As String = "none"
	Private bHover As Boolean = False
	Private sHref As String = "#"
	Private sIcon As String = ""
	Private sIconColor As String = ""
	Private sIconSize As String = "24px"
	Private sTarget As String = "none"
	Private sTextColor As String = ""
	Private bListItem As Boolean = False
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
End Sub

'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, s)
End Sub

Sub getTextColor As String
	Return sTextColor
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
'return the #ID of the element
Public Sub getHere() As String
	Return $"#${mName}"$
End Sub
'set Visible
Sub setVisible(b As Boolean)
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	If bListItem Then
		UI.SetVisibleByID($"${mName}_li"$, b)
	Else
		UI.SetVisible(mElement, b)
	End If
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
Sub ResponsiveClass(className As String, xs As Boolean, sm As Boolean, md As Boolean, lg As Boolean)
	UI.ResponsiveClass(mElement, className, xs, sm, md, lg)
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
Sub setText(text As String)				'ignoredeadcode
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	If sText = "" Then
		UI.SetVisibleByID($"${mName}_text"$, False)
	Else	
		UI.SetTextByID($"${mName}_text"$, sText)
		UI.SetVisibleByID($"${mName}_text"$, True)
	End If
End Sub
'get text
Sub getText As String
	sText = UI.GetTextByID($"${mName}_text"$)
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
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bHover = Props.GetDefault("Hover", False)
		bHover = UI.CBool(bHover)
		sHref = Props.GetDefault("Href", "#")
		sHref = UI.CStr(sHref)
		sIcon = Props.GetDefault("Icon", "")
		sIcon = UI.CStr(sIcon)
		sIconColor = Props.GetDefault("IconColor", "")
		sIconColor = UI.CStr(sIconColor)
		sIconSize = Props.GetDefault("IconSize", "24px")
		sIconSize = UI.CStr(sIconSize)
		sTarget = Props.GetDefault("Target", "none")
		sTarget = UI.CStr(sTarget)
		bListItem = Props.GetDefault("ListItem", False)
		bListItem = UI.CBool(bListItem)
	End If
	'
	UI.AddClassDT("link")
	If sColor <> "" Then UI.AddColorDT("link", sColor)
	If bHover = True Then UI.AddClassDT("link-hover")
	If sHref <> "" Then UI.AddAttrDT("href", sHref)
	If sTarget <> "" Then UI.AddAttrDT("target", sTarget)
'	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
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
	'we dont have an icon
	If bListItem Then
		If sIcon = "" Then
			mElement = mTarget.Append($"[BANCLEAN]
			<li id="${mName}_li">
				<a id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
					<span id="${mName}_text"></span>
				</a>
			</li>"$).Get("#" & mName)
		Else	
			mElement = mTarget.Append($"[BANCLEAN]
			<li id="${mName}_li">
				<a id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
					<div id="${mName}_host" class="inline-flex items-center">
						<svg id="${mName}_icon" style="pointer-events:none;" data-unique-ids="disabled" fill="currentColor" data-js="enabled" data-src="${sIcon}" class="hidden mr-2"></svg>
						<span id="${mName}_text"></span>
					</div>	
				</a>
			</li>"$).Get("#" & mName)
			setIcon(sIcon)
			setIconColor(sIconColor)
			setIconSize(sIconSize)
		End If
	Else
		If sIcon = "" Then
			mElement = mTarget.Append($"[BANCLEAN]
				<a id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
					<span id="${mName}_text"></span>
				</a>"$).Get("#" & mName)
		Else	
			mElement = mTarget.Append($"[BANCLEAN]
				<a id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
					<div id="${mName}_host" class="inline-flex items-center">
						<svg id="${mName}_icon" style="pointer-events:none;" data-unique-ids="disabled" data-js="enabled" fill="currentColor" data-src="${sIcon}" class="hide mr-2 hidden"></svg>
						<span id="${mName}_text"></span>
					</div>	
				</a>"$).Get("#" & mName)
			setIcon(sIcon)
			setIconColor(sIconColor)
			setIconSize(sIconSize)
		End If	
	End If
	setText(sText)
'	setVisible(bVisible)
End Sub

'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "link", sColor)
End Sub
'set Hover
Sub setHover(b As Boolean)
	bHover = b
	CustProps.put("Hover", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "link-hover")
	Else
		UI.RemoveClass(mElement, "link-hover")
	End If
End Sub
'set Href
Sub setHref(s As String)
	sHref = s
	CustProps.put("Href", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "href", s)
End Sub
'set Icon
Sub setIcon(s As String)			'ignoredeadcode
	sIcon = s
	CustProps.put("Icon", s)
	If mElement = Null Then Return
	If s = "" Then
		UI.RemoveElementByID($"${mName}_icon"$)
	Else	
		UI.SetIconNameByID($"${mName}_icon"$, s)
		UI.SetVisibleByID($"${mName}_icon"$, True)
	End If
End Sub
'set Icon Color
Sub setIconColor(s As String)			'ignoredeadcode
	sIconColor = s
	CustProps.put("IconColor", s)
	If mElement = Null Then Return
	If sIcon = "" Then Return
	If s <> "" Then UI.SetIconColorByID($"${mName}_icon"$, s)
End Sub
'set Icon Size
Sub setIconSize(s As String)				'ignoredeadcode
	sIconSize = s
	CustProps.put("IconSize", s)
	If mElement = Null Then Return
	If sIcon = "" Then Return
	If s <> "" Then 
		UI.SetIconSizeByID($"${mName}_icon"$, s)
	End If
End Sub
'set Target
'options: _blank|_self|_parent|_top|none
Sub setTarget(s As String)
	sTarget = s
	CustProps.put("Target", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "target", s)
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Hover
Sub getHover As Boolean
	Return bHover
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
'get Icon Size
Sub getIconSize As String
	Return sIconSize
End Sub
'get Target
Sub getTarget As String
	Return sTarget
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub