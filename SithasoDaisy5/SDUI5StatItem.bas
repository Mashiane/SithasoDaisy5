B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _figure|_actions, Description: Child Item _figure|_actions
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Total Page Views, Description: Title
#DesignerProperty: Key: TitleTextColor, DisplayName: Title Text Color, FieldType: String, DefaultValue: , Description: Title Text Color
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 89 400, Description: Value
#DesignerProperty: Key: ValueTextColor, DisplayName: Value Text Color, FieldType: String, DefaultValue: , Description: Value Text Color
#DesignerProperty: Key: FigureColor, DisplayName: Figure Color, FieldType: String, DefaultValue: , Description: Figure Color
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: IconHeight, DisplayName: Icon Height, FieldType: String, DefaultValue: 12, Description: Icon Height
#DesignerProperty: Key: IconWidth, DisplayName: Icon Width, FieldType: String, DefaultValue: 12, Description: Icon Width
#DesignerProperty: Key: IconVisible, DisplayName: Icon Visible, FieldType: Boolean, DefaultValue: False, Description: Icon Visible
#DesignerProperty: Key: Desc, DisplayName: Desc, FieldType: String, DefaultValue: 21% more than last month, Description: Desc
#DesignerProperty: Key: DescTextColor, DisplayName: Desc Text Color, FieldType: String, DefaultValue: , Description: Desc Text Color
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: ActionsVisible, DisplayName: Actions Visible, FieldType: Boolean, DefaultValue: False, Description: Actions Visible
#DesignerProperty: Key: PlaceItemsCenter, DisplayName: Place Items Center, FieldType: Boolean, DefaultValue: False, Description: Place Items Center
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
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
	Private bActionsVisible As Boolean = False
	Private sDesc As String = "21% more than last month"
	Private sDescTextColor As String = ""
	Private sFigureColor As String = ""
	Private sIcon As String = ""
	Private sIconHeight As String = "12"
	Private bIconVisible As Boolean = False
	Private sIconWidth As String = "12"
	Private bPlaceItemsCenter As Boolean = False
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"
	Private sTitle As String = "Total Page Views"
	Private sTitleTextColor As String = ""
	Private sValue As String = "89 400"
	Private sValueTextColor As String = ""
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
	if s <> "" then UI.SetPosition(mElement, sPosition)
End Sub
Sub getPosition As String
	Return sPosition
End Sub
Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	if s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub
'
Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	if s <> "" Then UI.SetStyles(mElement, sRawStyles)
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
	if s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
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
		bActionsVisible = Props.GetDefault("ActionsVisible", False)
		bActionsVisible = UI.CBool(bActionsVisible)
		sDesc = Props.GetDefault("Desc", "21% more than last month")
		sDesc = UI.CStr(sDesc)
		sDescTextColor = Props.GetDefault("DescTextColor", "")
		sDescTextColor = UI.CStr(sDescTextColor)
		sFigureColor = Props.GetDefault("FigureColor", "")
		sFigureColor = UI.CStr(sFigureColor)
		sIcon = Props.GetDefault("Icon", "")
		sIcon = UI.CStr(sIcon)
		sIconHeight = Props.GetDefault("IconHeight", "12")
		sIconHeight = UI.CStr(sIconHeight)
		bIconVisible = Props.GetDefault("IconVisible", False)
		bIconVisible = UI.CBool(bIconVisible)
		sIconWidth = Props.GetDefault("IconWidth", "12")
		sIconWidth = UI.CStr(sIconWidth)
		bPlaceItemsCenter = Props.GetDefault("PlaceItemsCenter", False)
		bPlaceItemsCenter = UI.CBool(bPlaceItemsCenter)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sTitle = Props.GetDefault("Title", "Total Page Views")
		sTitle = UI.CStr(sTitle)
		sTitleTextColor = Props.GetDefault("TitleTextColor", "")
		sTitleTextColor = UI.CStr(sTitleTextColor)
		sValue = Props.GetDefault("Value", "89 400")
		sValue = UI.CStr(sValue)
		sValueTextColor = Props.GetDefault("ValueTextColor", "")
		sValueTextColor = UI.CStr(sValueTextColor)
	End If
	'
	UI.AddClassDT("stat")
	If bPlaceItemsCenter = True Then UI.AddClassDT("place-items-center")
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
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
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<div id="${mName}_figure" class="stat-figure hidden">
      		<img id="${mName}_image" src="${sIcon}" alt="" class="hidden"></img>
	  	</div>
		<div id="${mName}_title" class="stat-title hidden">${sTitle}</div>
    	<div id="${mName}_value" class="stat-value hidden">${sValue}</div>
    	<div id="${mName}_desc" class="stat-desc hidden">${sDesc}</div>
		<div id="${mName}_actions" class="stat-actions hidden"></div>
	</div>"$).Get("#" & mName)
	'
	setFigureColor(sFigureColor)
	setIcon(sIcon)
	setIconHeight(sIconHeight)
	setIconWidth(sIconWidth)
	setIconVisible(bIconVisible)
	setTitle(sTitle)
	setTitleTextColor(sTitleTextColor)
	setValue(sValue)
	setValueTextColor(sValueTextColor)
	setDesc(sDesc)
	setDescTextColor(sDescTextColor)
	setActionsVisible(bActionsVisible)
'	setVisible(bVisible)
End Sub

'set value
Sub setValue(text As String)				'ignoredeadcode
	sValue = text
	CustProps.Put("Value", text)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_value"$, text)
	If text = "" Then
		UI.SetVisibleByID($"${mName}_value"$, False)
	Else
		UI.SetVisibleByID($"${mName}_value"$, True)
	End If
End Sub

'set Value Text Color
Sub setValueTextColor(s As String)			'ignoredeadcode
	sValueTextColor = s
	CustProps.put("ValueTextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorbyid($"${mName}_value"$, s)
End Sub

'get value
Sub getValue As String
	sValue = UI.GetTextByID($"${mName}_value"$)
	Return sValue
End Sub

'set Actions Visible
Sub setActionsVisible(b As Boolean)			'ignoredeadcode
	bActionsVisible = b
	CustProps.put("ActionsVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_actions"$, b)
End Sub
'set Desc
Sub setDesc(s As String)			'ignoredeadcode
	sDesc = s
	CustProps.put("Desc", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_desc"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_desc"$, False)
	Else
		UI.SetVisibleByID($"${mName}_desc"$, True)
	End If
End Sub
'set Desc Text Color
Sub setDescTextColor(s As String)			'ignoredeadcode
	sDescTextColor = s
	CustProps.put("DescTextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorbyid($"${mName}_desc"$, s)
End Sub
'set Figure Color
Sub setFigureColor(s As String)				'ignoredeadcode
	sFigureColor = s
	CustProps.put("FigureColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorbyid($"${mName}_figure"$, s)
End Sub
'set Icon
Sub setIcon(s As String)				'ignoredeadcode
	sIcon = s
	CustProps.put("Icon", s)
	If mElement = Null Then Return
	If s = "" Then
		UI.SetVisibleByID($"${mName}_figure"$, False)
		UI.SetVisibleByID($"${mName}_image"$, False)
		Return
	End If
	UI.SetImageByID($"${mName}_image"$, s)
	UI.SetVisibleByID($"${mName}_figure"$, True)
	UI.SetVisibleByID($"${mName}_image"$, True)
End Sub
'set Icon Height
Sub setIconHeight(s As String)				'ignoredeadcode
	sIconHeight = s
	CustProps.put("IconHeight", s)
	If mElement = Null Then Return
	If sIcon = "" Then Return
	If s <> "" Then UI.SetHeightByID($"${mName}_image"$, s)
End Sub
'set Icon Visible
Sub setIconVisible(b As Boolean)				'ignoredeadcode
	bIconVisible = b
	CustProps.put("IconVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_icon"$, b)
End Sub
'set Icon Width
Sub setIconWidth(s As String)				'ignoredeadcode
	sIconWidth = s
	CustProps.put("IconWidth", s)
	If mElement = Null Then Return
	If sIcon = "" Then Return
	If s <> "" Then UI.SetWidthByID($"${mName}_image"$, s)
End Sub
'set Place Items Center
Sub setPlaceItemsCenter(b As Boolean)
	bPlaceItemsCenter = b
	CustProps.put("PlaceItemsCenter", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "place-items-center")
	Else
		UI.RemoveClass(mElement, "place-items-center")
	End If
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
	If b = True Then
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
'set Title
Sub setTitle(s As String)				'ignoredeadcode
	sTitle = s
	CustProps.put("Title", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_title"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_title"$, False)
	Else
		UI.SetVisibleByID($"${mName}_title"$, True)
	End If
End Sub
'set Title Text Color
Sub setTitleTextColor(s As String)				'ignoredeadcode
	sTitleTextColor = s
	CustProps.put("TitleTextColor", s)
	If mElement = Null Then Return
	If sTitle = "" Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_title"$, s)
End Sub
'get Actions Visible
Sub getActionsVisible As Boolean
	Return bActionsVisible
End Sub
'get Desc
Sub getDesc As String
	Return sDesc
End Sub
'get Desc Text Color
Sub getDescTextColor As String
	Return sDescTextColor
End Sub
'get Figure Color
Sub getFigureColor As String
	Return sFigureColor
End Sub
'get Icon
Sub getIcon As String
	Return sIcon
End Sub
'get Icon Height
Sub getIconHeight As String
	Return sIconHeight
End Sub
'get Icon Visible
Sub getIconVisible As Boolean
	Return bIconVisible
End Sub
'get Icon Width
Sub getIconWidth As String
	Return sIconWidth
End Sub
'get Place Items Center
Sub getPlaceItemsCenter As Boolean
	Return bPlaceItemsCenter
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
'get Title
Sub getTitle As String
	Return sTitle
End Sub
'get Title Text Color
Sub getTitleTextColor As String
	Return sTitleTextColor
End Sub