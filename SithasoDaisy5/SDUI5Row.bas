B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: GridCols, DisplayName: Grid Cols, FieldType: String, DefaultValue: 12, Description: Grid Cols
#DesignerProperty: Key: GridColsSm, DisplayName: SM Grid Cols, FieldType: String, DefaultValue: , Description: SM Grid Cols
#DesignerProperty: Key: GridColsMd, DisplayName: MD Grid Cols, FieldType: String, DefaultValue: , Description: MD Grid Cols
#DesignerProperty: Key: GridColsLg, DisplayName: LG Grid Cols, FieldType: String, DefaultValue: , Description: LG Grid Cols
#DesignerProperty: Key: GridColsXl, DisplayName: XL Grid Cols, FieldType: String, DefaultValue: , Description: XL Grid Cols
#DesignerProperty: Key: GridColsXxl, DisplayName: XXL Grid Cols, FieldType: String, DefaultValue: , Description: XXL Grid Cols
#DesignerProperty: Key: Gap, DisplayName: Gap, FieldType: String, DefaultValue: 2, Description: Gap
#DesignerProperty: Key: AlignContent, DisplayName: Align Content, FieldType: String, DefaultValue: none, Description: Align Content, List: around|baseline|between|center|end|evenly|none|normal|start|stretch
#DesignerProperty: Key: AlignItems, DisplayName: Align Items, FieldType: String, DefaultValue: none, Description: Align Items, List: baseline|center|end|none|start|stretch
#DesignerProperty: Key: AlignSelf, DisplayName: Align Self, FieldType: String, DefaultValue: none, Description: Align Self, List: auto|baseline|center|end|none|start|stretch
#DesignerProperty: Key: JustifyContent, DisplayName: Justify Content, FieldType: String, DefaultValue: none, Description: Justify Content, List: around|baseline|between|center|end|evenly|none|normal|start|stretch
#DesignerProperty: Key: JustifyItems, DisplayName: Justify Items, FieldType: String, DefaultValue: none, Description: Justify Items, List: center|end|none|normal|start|stretch
#DesignerProperty: Key: JustifySelf, DisplayName: Justify Self, FieldType: String, DefaultValue: none, Description: Justify Self, List: auto|center|end|none|start|stretch
#DesignerProperty: Key: PlaceContent, DisplayName: Place Content, FieldType: String, DefaultValue: none, Description: Place Content, List: around|baseline|between|center|end|evenly|none|start|stretch
#DesignerProperty: Key: PlaceItems, DisplayName: Place Items, FieldType: String, DefaultValue: none, Description: Place Items, List: baseline|center|end|none|start|stretch
#DesignerProperty: Key: PlaceSelf, DisplayName: Place Self, FieldType: String, DefaultValue: none, Description: Place Self, List: auto|center|end|none|start|stretch
#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue: none, Description: Text Align, List: center|end|justify|left|none|right|start
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: CenterChildren, DisplayName: Center Children, FieldType: Boolean, DefaultValue: False, Description: Center Children
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
#DesignerProperty: Key: RawBorderColor, DisplayName: Border Colors, FieldType: String, DefaultValue: a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?, Description: Border Colors
#DesignerProperty: Key: RawBorderStyle, DisplayName: Border Styles, FieldType: String, DefaultValue: a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?, Description: Border Styles
#DesignerProperty: Key: RawBorderWidth, DisplayName: Border Widths, FieldType: String, DefaultValue: a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?, Description: Border Widths
#DesignerProperty: Key: RawBorderRadius, DisplayName: Border Radius, FieldType: String, DefaultValue: a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?, Description: Border Radius
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
	Private sAlignItems As String = "none"
	Private sBackgroundColor As String = ""
	Private sHeight As String = ""
	Private sJustifyContent As String = "none"
	Private sGridCols As String = "12"
	Private sGridColsLg As String = ""
	Private sGridColsMd As String = ""
	Private sGridColsSm As String = ""
	Private sGridColsXl As String = ""
	Private sGridColsXxl As String = ""
	Private sTextColor As String = ""
	Private sWidth As String = ""
	Private sRawBorderColor As String = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	Private sRawBorderStyle As String = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	Private sRawBorderWidth As String = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	Private sRawBorderRadius As String = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"	
	Private sRounded As String = "none"
	Private sShadow As String = "none"
	Private sTextAlign As String = "none"	
	Private bCenterChildren As Boolean
	Private sGap As String = "2"
	Private sJustifyItems As String = "none"
	Private sAlignContent As String = "none"
	Private sAlignSelf As String = "none"
	Private sJustifySelf As String = "none"
	Private sPlaceContent As String = "none"
	Private sPlaceItems As String = "none"
	Private sPlaceSelf As String = "none"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	UI.Initialize(Me)
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
		sAlignContent = Props.GetDefault("AlignContent", "none")
		sAlignContent = modSD5.CStr(sAlignContent)
		If sAlignContent = "none" Then sAlignContent = ""
		sAlignItems = Props.GetDefault("AlignItems", "none")
		sAlignItems = modSD5.CStr(sAlignItems)
		If sAlignItems = "none" Then sAlignItems = ""
		sAlignSelf = Props.GetDefault("AlignSelf", "none")
		sAlignSelf = modSD5.CStr(sAlignSelf)
		If sAlignSelf = "none" Then sAlignSelf = ""
		sJustifyContent = Props.GetDefault("JustifyContent", "none")
		sJustifyContent = modSD5.CStr(sJustifyContent)
		If sJustifyContent = "none" Then sJustifyContent = ""
		sJustifyItems = Props.GetDefault("JustifyItems", "none")
		sJustifyItems = modSD5.CStr(sJustifyItems)
		If sJustifyItems = "none" Then sJustifyItems = ""
		sJustifySelf = Props.GetDefault("JustifySelf", "none")
		sJustifySelf = modSD5.CStr(sJustifySelf)
		If sJustifySelf = "none" Then sJustifySelf = ""
		sPlaceContent = Props.GetDefault("PlaceContent", "none")
		sPlaceContent = modSD5.CStr(sPlaceContent)
		If sPlaceContent = "none" Then sPlaceContent = ""
		sPlaceItems = Props.GetDefault("PlaceItems", "none")
		sPlaceItems = modSD5.CStr(sPlaceItems)
		If sPlaceItems = "none" Then sPlaceItems = ""
		sPlaceSelf = Props.GetDefault("PlaceSelf", "none")
		sPlaceSelf = modSD5.CStr(sPlaceSelf)
		If sPlaceSelf = "none" Then sPlaceSelf = ""
		sGap = Props.GetDefault("Gap", "2")
		sGap = modSD5.CStr(sGap)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sGridCols = Props.GetDefault("GridCols", "")
		sGridCols = modSD5.CStr(sGridCols)
		sGridColsLg = Props.GetDefault("GridColsLg", "")
		sGridColsLg = modSD5.CStr(sGridColsLg)
		sGridColsMd = Props.GetDefault("GridColsMd", "")
		sGridColsMd = modSD5.CStr(sGridColsMd)
		sGridColsSm = Props.GetDefault("GridColsSm", "")
		sGridColsSm = modSD5.CStr(sGridColsSm)
		sGridColsXl = Props.GetDefault("GridColsXl", "")
		sGridColsXl = modSD5.CStr(sGridColsXl)
		sGridColsXxl = Props.GetDefault("GridColsXxl", "")
		sGridColsXxl = modSD5.CStr(sGridColsXxl)
		sWidth = Props.GetDefault("Width", "")
		sWidth = modSD5.CStr(sWidth)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = modSD5.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sTextAlign = Props.GetDefault("TextAlign", "none")
		sTextAlign = modSD5.CStr(sTextAlign)
		If sTextAlign = "none" Then sTextAlign = ""
		bCenterChildren = Props.GetDefault("CenterChildren", False)
		bCenterChildren = modSD5.CBool(bCenterChildren)
	End If
	'
	UI.AddClassDT("grid")
	If sAlignContent <> "" Then UI.AddClassDT("content-" & sAlignContent)
	If sAlignItems <> "" Then UI.AddClassDT("items-" & sAlignItems)
	If sAlignSelf <> "" Then UI.AddClassDT("self-" & sAlignSelf)
	If sJustifyContent <> "" Then UI.AddClassDT("justify-" & sJustifyContent)
	If sJustifyItems <> "" Then UI.AddClassDT("justify-items-" & sJustifyItems)
	If sJustifySelf <> "" Then UI.AddClassDT("justify-self-" & sJustifySelf)
	If sPlaceContent <> "" Then UI.AddClassDT("place-content-" & sPlaceContent)
	If sPlaceItems <> "" Then UI.AddClassDT("place-items-" & sPlaceItems)
	If sPlaceSelf <> "" Then UI.AddClassDT("place-self-" & sPlaceSelf)
	If bCenterChildren Then UI.AddCenterChildrenDT
	If sTextAlign <> "" Then UI.AddStyleDT("text-align", sTextAlign)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sGap <> "" Then UI.UpdateClassDT("gap", "gap-" & sGap)
	If sGridCols <> "" Then UI.AddClassDT("grid-cols-" & sGridCols)
	If sGridColsLg <> "" Then UI.AddClassDT("lg:grid-cols-" & sGridColsLg)
	If sGridColsMd <> "" Then UI.AddClassDT("md:grid-cols-" & sGridColsMd)
	If sGridColsSm <> "" Then UI.AddClassDT("sm:grid-cols-" & sGridColsSm)
	If sGridColsXl <> "" Then UI.AddClassDT("xl:grid-cols-" & sGridColsXl)
	If sGridColsXxl <> "" Then UI.AddClassDT("xxl:grid-cols-" & sGridColsXxl)
	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
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
'	setVisible(bVisible)
End Sub

'set Align Content
'options: none|normal|center|start|end|between|around|evenly|baseline|stretch
Sub setAlignContent(s As String)
	sAlignContent = s
	CustProps.put("AlignContent", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "content-" & s)
End Sub
'set Align Items
'options: none|start|end|center|baseline|stretch
Sub setAlignItems(s As String)
	sAlignItems = s
	CustProps.put("AlignItems", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "items-" & s)
End Sub
'set Align Self
'options: none|auto|start|end|center|stretch|baseline
Sub setAlignSelf(s As String)
	sAlignSelf = s
	CustProps.put("AlignSelf", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "self-" & s)
End Sub
'set Justify Content
'options: none|start|end|center|between|around|evenly|stretch|baseline|normal
Sub setJustifyContent(s As String)
	sJustifyContent = s
	CustProps.put("JustifyContent", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "justify-" & s)
End Sub
'set Justify Items
'options: none|start|end|center|stretch|normal
Sub setJustifyItems(s As String)
	sJustifyItems = s
	CustProps.put("JustifyItems", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "justify-items-" & s)
End Sub
'set Justify Self
'options: none|auto|start|end|center|stretch
Sub setJustifySelf(s As String)
	sJustifySelf = s
	CustProps.put("JustifySelf", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "justify-self-" & s)
End Sub
'set Place Content
'options: none|center|start|end|between|around|evenly|baseline|stretch
Sub setPlaceContent(s As String)
	sPlaceContent = s
	CustProps.put("PlaceContent", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "place-content-" & s)
End Sub
'set Place Items
'options: none|start|end|center|baseline|stretch
Sub setPlaceItems(s As String)
	sPlaceItems = s
	CustProps.put("PlaceItems", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "place-items-" & s)
End Sub
'set Place Self
'options: none|auto|start|end|center|stretch
Sub setPlaceSelf(s As String)
	sPlaceSelf = s
	CustProps.put("PlaceSelf", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "place-self-" & s)
End Sub
'get Align Content
Sub getAlignContent As String
	Return sAlignContent
End Sub
'get Align Items
Sub getAlignItems As String
	Return sAlignItems
End Sub
'get Align Self
Sub getAlignSelf As String
	Return sAlignSelf
End Sub
'get Justify Content
Sub getJustifyContent As String
	Return sJustifyContent
End Sub
'get Justify Items
Sub getJustifyItems As String
	Return sJustifyItems
End Sub
'get Justify Self
Sub getJustifySelf As String
	Return sJustifySelf
End Sub
'get Place Content
Sub getPlaceContent As String
	Return sPlaceContent
End Sub
'get Place Items
Sub getPlaceItems As String
	Return sPlaceItems
End Sub
'get Place Self
Sub getPlaceSelf As String
	Return sPlaceSelf
End Sub

Sub setCenterChildren(b As Boolean)
	bCenterChildren = b
	CustProps.Put("CenterChildren", b)
	If mElement = Null Then Return
	If b Then UI.SetCenterChildren(mElement, True)
End Sub

Sub getCenterChildren As Boolean
	Return bCenterChildren
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Gap
Sub setGap(s As String)
	sGap = s
	CustProps.put("Gap", s)
	If mElement = Null Then Return
	If s <> "" Then UI.UpdateClass(mElement, "gap", "gap-" & s)
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Row Cols
Sub setGridCols(s As String)
	sGridCols = s
	CustProps.put("GridCols", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "grid-cols-" & s)
End Sub
'set Row Cols Lg
Sub setGridColsLg(s As String)
	sGridColsLg = s
	CustProps.put("GridColsLg", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "lg:grid-cols-" & s)
End Sub
'set Row Cols Md
Sub setGridColsMd(s As String)
	sGridColsMd = s
	CustProps.put("GridColsMd", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "md:grid-cols-" & s)
End Sub
'set Row Cols Sm
Sub setGridColsSm(s As String)
	sGridColsSm = s
	CustProps.put("GridColsSm", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "sm:grid-cols-" & s)
End Sub
'set Row Cols Xl
Sub setGridColsXl(s As String)
	sGridColsXl = s
	CustProps.put("GridColsXl", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "xl:grid-cols-" & s)
End Sub
'set Row Cols Xxl
Sub setGridColsXxl(s As String)
	sGridColsXxl = s
	CustProps.put("GridColsXxl", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "xxl:grid-cols-" & s)
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
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Gap
Sub getGap As String
	Return sGap
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Row Cols
Sub getGridCols As String
	Return sGridCols
End Sub
'get Row Cols Lg
Sub getGridColsLg As String
	Return sGridColsLg
End Sub
'get Row Cols Md
Sub getGridColsMd As String
	Return sGridColsMd
End Sub
'get Row Cols Sm
Sub getGridColsSm As String
	Return sGridColsSm
End Sub
'get Row Cols Xl
Sub getGridColsXl As String
	Return sGridColsXl
End Sub
'get Row Cols Xxl
Sub getGridColsXxl As String
	Return sGridColsXxl
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

'a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?
Sub setBorderColor(s As String)
	sRawBorderColor = s
	CustProps.Put("RawBorderColor", s)
	If mElement = Null Then Return
	UI.SetBorderColor(mElement, sRawBorderColor)
End Sub
Sub getBorderColor As String
	Return sRawBorderColor
End Sub
'a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?
Sub setBorderStyle(s As String)
	sRawBorderStyle = s
	CustProps.Put("RawBorderStyle", s)
	If mElement = Null Then Return
	UI.SetBorderStyle(mElement, sRawBorderStyle)
End Sub
Sub getBorderStyle As String
	Return sRawBorderStyle
End Sub
'a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?
Sub setBorderWidth(s As String)
	sRawBorderWidth = s
	CustProps.Put("RawBorderWidth", s)
	If mElement = Null Then Return
	UI.SetBorderWidth(mElement, sRawBorderWidth)
End Sub
Sub getBorderWidth As String
	Return sRawBorderWidth
End Sub
'a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?
Sub setBorderRadius(s As String)
	sRawBorderRadius = s
	CustProps.Put("RawBorderRadius", s)
	If mElement = Null Then Return
	UI.SetBorderRadius(mElement, sRawBorderRadius)
End Sub
Sub getBorderRadius As String
	Return sRawBorderRadius
End Sub


'set Rounded
'options: rounded-full|none|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'set Text Align
'options: left|right|center|justify|start|end|none
Sub setTextAlign(s As String)
	sTextAlign = s
	CustProps.put("TextAlign", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyle(mElement, "text-align", s)
End Sub
'get Text Align
Sub getTextAlign As String
	Return sTextAlign
End Sub