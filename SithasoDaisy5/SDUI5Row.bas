B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: RowCols, DisplayName: Row Cols, FieldType: String, DefaultValue: , Description: Row Cols
#DesignerProperty: Key: RowColsMd, DisplayName: Row Cols MD, FieldType: String, DefaultValue: , Description: Row Cols Md
#DesignerProperty: Key: RowColsSm, DisplayName: Row Cols SM, FieldType: String, DefaultValue: , Description: Row Cols Sm
#DesignerProperty: Key: RowColsLg, DisplayName: Row Cols LG, FieldType: String, DefaultValue: , Description: Row Cols Lg
#DesignerProperty: Key: RowColsXl, DisplayName: Row Cols XL, FieldType: String, DefaultValue: , Description: Row Cols Xl
#DesignerProperty: Key: RowColsXxl, DisplayName: Row Cols XXL, FieldType: String, DefaultValue: , Description: Row Cols Xxl
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: , Description: Text
#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue: none, Description: Text Align, List: center|end|justify|left|none|right|start
#DesignerProperty: Key: AlignItems, DisplayName: Align Items, FieldType: String, DefaultValue: none, Description: Align Items, List: normal|stretch|center|flex-start|flex-end|start|end|baseline|initial|inherit|none
#DesignerProperty: Key: JustifyContent, DisplayName: Justify Content, FieldType: String, DefaultValue: none, Description: Justify Content, List: center|flex-end|flex-start|inherit|initial|none|space-around|space-between|space-evenly
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Gutter, DisplayName: Gutter, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=?, Description: Gutter
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
	Private sText As String = ""
	Public Tag As Object
	Private sAlignItems As String = "none"
	Private sBackgroundColor As String = ""
	Private sGutter As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sHeight As String = ""
	Private sJustifyContent As String = "none"
	Private sRowCols As String = ""
	Private sRowColsLg As String = ""
	Private sRowColsMd As String = ""
	Private sRowColsSm As String = ""
	Private sRowColsXl As String = ""
	Private sRowColsXxl As String = ""
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
'set text
Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	UI.SetText(mElement, text)
End Sub
'get text
Sub getText As String
	sText = UI.GetText(mElement)
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
		sAlignItems = Props.GetDefault("AlignItems", "none")
		sAlignItems = modSD5.CStr(sAlignItems)
		If sAlignItems = "none" Then sAlignItems = ""
		sGutter = Props.GetDefault("Gutter", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		sGutter = modSD5.CStr(sGutter)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sJustifyContent = Props.GetDefault("JustifyContent", "none")
		sJustifyContent = modSD5.CStr(sJustifyContent)
		If sJustifyContent = "none" Then sJustifyContent = ""
		sRowCols = Props.GetDefault("RowCols", "")
		sRowCols = modSD5.CStr(sRowCols)
		sRowColsLg = Props.GetDefault("RowColsLg", "")
		sRowColsLg = modSD5.CStr(sRowColsLg)
		sRowColsMd = Props.GetDefault("RowColsMd", "")
		sRowColsMd = modSD5.CStr(sRowColsMd)
		sRowColsSm = Props.GetDefault("RowColsSm", "")
		sRowColsSm = modSD5.CStr(sRowColsSm)
		sRowColsXl = Props.GetDefault("RowColsXl", "")
		sRowColsXl = modSD5.CStr(sRowColsXl)
		sRowColsXxl = Props.GetDefault("RowColsXxl", "")
		sRowColsXxl = modSD5.CStr(sRowColsXxl)
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
	If bCenterChildren Then UI.AddCenterChildrenDT
	If sTextAlign <> "" Then UI.AddStyleDT("text-align", sTextAlign)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sGutter <> "" Then UI.AddGuttersDT(sGutter)
	If sAlignItems <> "" Then UI.AddStyleDT("align-items", sAlignItems)
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sJustifyContent <> "" Then UI.AddStyleDT("justify-content", sJustifyContent)
	UI.AddClassDT("row")
	If sRowCols <> "" Then UI.AddClassDT("row-cols-" & sRowCols)
	If sRowColsLg <> "" Then UI.AddClassDT("row-cols-lg-" & sRowColsLg)
	If sRowColsMd <> "" Then UI.AddClassDT("row-cols-md-" & sRowColsMd)
	If sRowColsSm <> "" Then UI.AddClassDT("row-cols-sm-" & sRowColsSm)
	If sRowColsXl <> "" Then UI.AddClassDT("row-cols-xl-" & sRowColsXl)
	If sRowColsXxl <> "" Then UI.AddClassDT("row-cols-xxl-" & sRowColsXxl)
'	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
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
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}</div>"$).Get("#" & mName)
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

'set Align Items
'options: baseline|center|end|flex-end|flex-start|inherit|initial|none|normal|start|stretch
Sub setAlignItems(s As String)
	sAlignItems = s
	CustProps.put("AlignItems", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "align-items", s)
End Sub
'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Gutter
Sub setGutter(s As String)
	sGutter = s
	CustProps.put("Gutter", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetGutter(mElement, s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Justify Content
'options: flex-start|flex-end|center|space-between|space-around|space-evenly|initial|inherit|none
Sub setJustifyContent(s As String)
	sJustifyContent = s
	CustProps.put("JustifyContent", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "justify-content", s)
End Sub
'set Row Cols
Sub setRowCols(s As String)
	sRowCols = s
	CustProps.put("RowCols", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "row-cols-" & s)
End Sub
'set Row Cols Lg
Sub setRowColsLg(s As String)
	sRowColsLg = s
	CustProps.put("RowColsLg", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "row-cols-lg-" & s)
End Sub
'set Row Cols Md
Sub setRowColsMd(s As String)
	sRowColsMd = s
	CustProps.put("RowColsMd", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "row-cols-md-" & s)
End Sub
'set Row Cols Sm
Sub setRowColsSm(s As String)
	sRowColsSm = s
	CustProps.put("RowColsSm", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "row-cols-sm-" & s)
End Sub
'set Row Cols Xl
Sub setRowColsXl(s As String)
	sRowColsXl = s
	CustProps.put("RowColsXl", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "row-cols-xl-" & s)
End Sub
'set Row Cols Xxl
Sub setRowColsXxl(s As String)
	sRowColsXxl = s
	CustProps.put("RowColsXxl", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "row-cols-xxl-" & s)
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
'get Align Items
Sub getAlignItems As String
	Return sAlignItems
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Gutter
Sub getGutter As String
	Return sGutter
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Justify Content
Sub getJustifyContent As String
	Return sJustifyContent
End Sub
'get Row Cols
Sub getRowCols As String
	Return sRowCols
End Sub
'get Row Cols Lg
Sub getRowColsLg As String
	Return sRowColsLg
End Sub
'get Row Cols Md
Sub getRowColsMd As String
	Return sRowColsMd
End Sub
'get Row Cols Sm
Sub getRowColsSm As String
	Return sRowColsSm
End Sub
'get Row Cols Xl
Sub getRowColsXl As String
	Return sRowColsXl
End Sub
'get Row Cols Xxl
Sub getRowColsXxl As String
	Return sRowColsXxl
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
	If s <> "" Then UI.AddStyle(mElement, "text-align", s)
End Sub
'get Text Align
Sub getTextAlign As String
	Return sTextAlign
End Sub