B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Opened (Status As Boolean)

#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Items _content|_side|_sidecontent|actions, Description: Child Item _content|_side|_sidecontent|_actions
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Open, DisplayName: Open, FieldType: Boolean, DefaultValue: False, Description: Open
#DesignerProperty: Key: SmOpen, DisplayName: SM Open, FieldType: Boolean, DefaultValue: False, Description: Sm Open
#DesignerProperty: Key: MdOpen, DisplayName: MD Open, FieldType: Boolean, DefaultValue: False, Description: Md Open
#DesignerProperty: Key: LgOpen, DisplayName: LG Open, FieldType: Boolean, DefaultValue: False, Description: Lg Open
#DesignerProperty: Key: XlOpen, DisplayName: XL Open, FieldType: Boolean, DefaultValue: False, Description: Xl Open
#DesignerProperty: Key: Overlay, DisplayName: Overlay, FieldType: Boolean, DefaultValue: True, Description: Overlay
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-100, Description: Background Color
#DesignerProperty: Key: Height, DisplayName: Side Height, FieldType: String, DefaultValue: , Description: Side Height
#DesignerProperty: Key: MinHeight, DisplayName: Side Min Height, FieldType: String, DefaultValue: screen, Description: Side Min Height
#DesignerProperty: Key: Width, DisplayName: Side Width, FieldType: String, DefaultValue: 80, Description: Side Content Width
#DesignerProperty: Key: MinWidth, DisplayName: Side Content Min Width, FieldType: String, DefaultValue: , Description: Side Content Min Width
#DesignerProperty: Key: RightSide, DisplayName: Right Side, FieldType: Boolean, DefaultValue: False, Description: Right Side
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: RoundedTopLeft, DisplayName: Rounded Top Left, FieldType: String, DefaultValue: , Description: Rounded Top Left, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedTopRight, DisplayName: Rounded Top Right, FieldType: String, DefaultValue: , Description: Rounded Top Right, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedBottomLeft, DisplayName: Rounded Bottom Left, FieldType: String, DefaultValue: , Description: Rounded Bottom Left, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedBottomRight, DisplayName: Rounded Bottom Right, FieldType: String, DefaultValue: , Description: Rounded Bottom Right, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: RawClasses, DisplayName: Classes (;), FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: RawStyles, DisplayName: Styles (JSON), FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String use = and ;
#DesignerProperty: Key: RawAttributes, DisplayName: Attributes (JSON), FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String use = and ;
'global variables in this module
Sub Class_Globals
	Private sRounded As String = "none"
	Private sShadow As String = "none"
	Private sHeight As String
	Private sMinHeight As String
	Private sMinWidth As String
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
	Private bLgOpen As Boolean = False
	Private bMdOpen As Boolean = False
	Private bOpen As Boolean = False
	Private bOverlay As Boolean = True
	Private bRightSide As Boolean = False
	Private bSmOpen As Boolean = False
	Private bXlOpen As Boolean = False
	Private sBackgroundColor As String = "base-100"
	Private sWidth As String = "80"
	Private sRoundedBottomLeft As String = ""
	Private sRoundedBottomRight As String = ""
	Private sRoundedTopLeft As String = ""
	Private sRoundedTopRight As String = ""	
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize	
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
		UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		bLgOpen = Props.GetDefault("LgOpen", False)
		bLgOpen = UI.CBool(bLgOpen)
		bMdOpen = Props.GetDefault("MdOpen", False)
		bMdOpen = UI.CBool(bMdOpen)
		bOpen = Props.GetDefault("Open", False)
		bOpen = UI.CBool(bOpen)
		bOverlay = Props.GetDefault("Overlay", True)
		bOverlay = UI.CBool(bOverlay)
		bRightSide = Props.GetDefault("RightSide", False)
		bRightSide = UI.CBool(bRightSide)
		bSmOpen = Props.GetDefault("SmOpen", False)
		bSmOpen = UI.CBool(bSmOpen)
		bXlOpen = Props.GetDefault("XlOpen", False)
		bXlOpen = UI.CBool(bXlOpen)
		sWidth = Props.GetDefault("Width", "80")
		sWidth = UI.CStr(sWidth)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sMinHeight = Props.GetDefault("MinHeight", "screen")
		sMinWidth = Props.GetDefault("MinWidth", "")
		sMinWidth = UI.CStr(sMinWidth)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sRoundedBottomLeft = Props.GetDefault("RoundedBottomLeft", "")
		sRoundedBottomLeft = UI.CStr(sRoundedBottomLeft)
		If sRoundedBottomLeft = "none" Then sRoundedBottomLeft = ""
		sRoundedBottomRight = Props.GetDefault("RoundedBottomRight", "")
		sRoundedBottomRight = UI.CStr(sRoundedBottomRight)
		If sRoundedBottomRight = "none" Then sRoundedBottomRight = ""
		sRoundedTopLeft = Props.GetDefault("RoundedTopLeft", "")
		sRoundedTopLeft = UI.CStr(sRoundedTopLeft)
		If sRoundedTopLeft = "none" Then sRoundedTopLeft = ""
		sRoundedTopRight = Props.GetDefault("RoundedTopRight", "")
		sRoundedTopRight = UI.CStr(sRoundedTopRight)
		If sRoundedTopRight = "none" Then sRoundedTopRight = ""
	End If
	'
	UI.AddClassDT("drawer")
	If bLgOpen Then UI.AddClassDT("lg:drawer-open")
	If bMdOpen Then UI.AddClassDT("md:drawer-open")
	If bOpen Then UI.AddClassDT("drawer-open")
	If bRightSide Then UI.AddClassDT("drawer-end")
	If bSmOpen Then UI.AddClassDT("sm:drawer-open")
	If bXlOpen Then UI.AddClassDT("xl:drawer-open")
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
	'the drawer sits on the body of the page
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<input id="${mName}_toggle" type="checkbox" class="drawer-toggle"></input>
		<div id="${mName}_content" class="drawer-content"></div>
		<div id="${mName}_side" class="drawer-side z-50" style="scroll-behavior: smooth; scroll-padding-top: 5rem;">
			<label id="${mName}_overlay" for="${mName}_toggle" aria-label="close sidebar" class="drawer-overlay"></label>
			<aside id="${mName}_sidecontent" class="sticky top-0 h-full flex flex-col overflow-y-auto"></aside>
			<div id="${mName}_actions" class="mt-auto flex hidden"></div>
		</div>
	</div>"$).Get("#" & mName)
	setOverlay(bOverlay)
	setBackgroundColor(sBackgroundColor)
	setWidth(sWidth)
	setHeight(sHeight)
	setMinHeight(sMinHeight)
	setMinWidth(sMinWidth)
	setRounded(sRounded)
	setRoundedBottomLeft(sRoundedBottomLeft)
	setRoundedBottomRight(sRoundedBottomRight)
	setRoundedTopLeft(sRoundedTopLeft)
	setRoundedTopRight(sRoundedTopRight)
	setShadow(sShadow)
	UI.OnEventByID($"${mName}_toggle"$, "change", Me, "DrawerToggle")
End Sub

'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)				'ignoredeadcode
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRoundedByID($"${mName}_sidecontent"$, sRounded)
End Sub
'set Rounded Bottom Left
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRoundedBottomLeft(s As String)				'ignoredeadcode
	sRoundedBottomLeft = s
	CustProps.put("RoundedBottomLeft", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRoundedBLByID($"${mName}_sidecontent"$, sRoundedBottomLeft)
End Sub
'set Rounded Bottom Right
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRoundedBottomRight(s As String)			'ignoredeadcode
	sRoundedBottomRight = s
	CustProps.put("RoundedBottomRight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRoundedBRByID($"${mName}_sidecontent"$, sRoundedBottomRight)
End Sub
'set Rounded Top Left
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRoundedTopLeft(s As String)					'ignoredeadcode
	sRoundedTopLeft = s
	CustProps.put("RoundedTopLeft", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRoundedTLByID($"${mName}_sidecontent"$, sRoundedTopLeft)
End Sub
'set Rounded Top Right
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRoundedTopRight(s As String)						'ignoredeadcode
	sRoundedTopRight = s
	CustProps.put("RoundedTopRight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRoundedTRByID($"${mName}_sidecontent"$, sRoundedTopRight)
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Rounded Bottom Left
Sub getRoundedBottomLeft As String
	Return sRoundedBottomLeft
End Sub
'get Rounded Bottom Right
Sub getRoundedBottomRight As String
	Return sRoundedBottomRight
End Sub
'get Rounded Top Left
Sub getRoundedTopLeft As String
	Return sRoundedTopLeft
End Sub
'get Rounded Top Right
Sub getRoundedTopRight As String
	Return sRoundedTopRight
End Sub

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)			'ignoredeadcode
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadowByID($"${mName}_side"$, sShadow)
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'set Min Height
Sub setMinHeight(s As String)		'ignoredeadcode
	sMinHeight = s
	CustProps.put("MinHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMinHeightByID($"${mName}_side"$, s)
End Sub

'set Min Width
Sub setMinWidth(s As String)		'ignoredeadcode
	sMinWidth = s
	CustProps.put("MinWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMinWidthByID($"${mName}_sidecontent"$, s)
End Sub

'get Min Height
Sub getMinHeight As String
	Return sMinHeight
End Sub

'get Min Width
Sub getMinWidth As String
	Return sMinWidth
End Sub

'clear the content area of the drawer
Sub ClearMainContent
	If mElement = Null Then Return
	UI.ClearByID($"${mName}_content"$)
End Sub

Sub ClearSideContent
	If mElement = Null Then Return
	UI.ClearByID($"${mName}_sidecontent"$)
End Sub

Sub ClearActions
	If mElement = Null Then Return
	UI.ClearByID($"${mName}_actions"$)
End Sub

'remove all open classes from the drawer
Sub ForceClose
	If mElement = Null Then Return
	UI.RemoveClass(mElement, "lg:drawer-open md:drawer-open drawer-open sm:drawer-open")
End Sub

'set Background Color
Sub setBackgroundColor(s As String)			'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetBackgroundColor(mElement, sBackgroundColor)
		UI.SetBackgroundColorByID($"${mName}_sidecontent"$, sBackgroundColor)
	End If
End Sub

'set Width
Sub setWidth(s As String)			'ignoredeadcode
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidthByID($"${mName}_sidecontent"$, sWidth)
End Sub

'set Height
Sub setHeight(s As String)			'ignoredeadcode
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeightByID($"${mName}_side"$, sHeight)
End Sub

Sub getWidth As String
	Return sWidth
End Sub

Sub getHeight As String
	Return sHeight
End Sub

Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub

private Sub DrawerToggle(e As BANanoEvent)			'ignoredeadcode
	Dim bChecked As Boolean = UI.GetCheckedByID($"${mName}_toggle"$)
	BANano.CallSub(mCallBack, $"${mName}_Opened"$, Array(bChecked))
End Sub

'set Lg Open
Sub setLgOpen(b As Boolean)
	bLgOpen = b
	CustProps.put("LgOpen", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "lg:drawer-open")
	Else
		UI.RemoveClass(mElement, "lg:drawer-open")
	End If
End Sub

'set Md Open
Sub setMdOpen(b As Boolean)
	bMdOpen = b
	CustProps.put("MdOpen", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "md:drawer-open")
	Else
		UI.RemoveClass(mElement, "md:drawer-open")
	End If
End Sub
'set Open
Sub setOpen(b As Boolean)
	bOpen = b
	CustProps.put("Open", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "drawer-open")
	Else
		UI.RemoveClass(mElement, "drawer-open")
	End If
End Sub
'set Overlay
Sub setOverlay(b As Boolean)		'ignoredeadcode
	bOverlay = b
	CustProps.put("Overlay", b)
	If mElement = Null Then Return
	If b = False Then UI.RemoveElementByID($"${mName}_overlay"$)
End Sub
'set Right Side
Sub setRightSide(b As Boolean)
	bRightSide = b
	CustProps.put("RightSide", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "drawer-end")
	Else
		UI.RemoveClass(mElement, "drawer-end")
	End If
End Sub
'set Sm Open
Sub setSmOpen(b As Boolean)
	bSmOpen = b
	CustProps.put("SmOpen", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "sm:drawer-open")
	Else
		UI.RemoveClass(mElement, "sm:drawer-open")
	End If
End Sub
'set Xl Open
Sub setXlOpen(b As Boolean)
	bXlOpen = b
	CustProps.put("XlOpen", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "xl:drawer-open")
	Else
		UI.RemoveClass(mElement, "xl:drawer-open")
	End If
End Sub
'get Lg Open
Sub getLgOpen As Boolean
	Return bLgOpen
End Sub
'get Md Open
Sub getMdOpen As Boolean
	Return bMdOpen
End Sub
'get Open
Sub getOpen As Boolean
	Return bOpen
End Sub
'get Overlay
Sub getOverlay As Boolean
	Return bOverlay
End Sub
'get Right Side
Sub getRightSide As Boolean
	Return bRightSide
End Sub
'get Sm Open
Sub getSmOpen As Boolean
	Return bSmOpen
End Sub
'get Xl Open
Sub getXlOpen As Boolean
	Return bXlOpen
End Sub

Sub OpenDrawer(b As Boolean)
	UI.SetCheckedByID($"${mName}_toggle"$, b)
End Sub

Sub ToggleDrawer
	Dim bChecked As Boolean = UI.GetCheckedByID($"${mName}_toggle"$)
	UI.SetCheckedByID($"${mName}_toggle"$, Not(bChecked))
End Sub
