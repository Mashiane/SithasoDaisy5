B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: 12, Description: Size
#DesignerProperty: Key: SizeSm, DisplayName: Size SM, FieldType: String, DefaultValue: , Description: Size Sm
#DesignerProperty: Key: SizeMd, DisplayName: Size MD, FieldType: String, DefaultValue: , Description: Size Md
#DesignerProperty: Key: SizeLg, DisplayName: Size LG, FieldType: String, DefaultValue: , Description: Size Lg
#DesignerProperty: Key: SizeXl, DisplayName: Size XL, FieldType: String, DefaultValue: , Description: Size Xl
#DesignerProperty: Key: SizeXxl, DisplayName: Size XXL, FieldType: String, DefaultValue: , Description: Size Xxl
#DesignerProperty: Key: OffsetSm, DisplayName: Offset SM, FieldType: String, DefaultValue: , Description: Offset Sm
#DesignerProperty: Key: OffsetMd, DisplayName: Offset MD, FieldType: String, DefaultValue: , Description: Offset Md
#DesignerProperty: Key: OffsetLg, DisplayName: Offset LG, FieldType: String, DefaultValue: , Description: Offset Lg
#DesignerProperty: Key: OffsetXl, DisplayName: Offset XL, FieldType: String, DefaultValue: , Description: Offset Xl
#DesignerProperty: Key: OffsetXxl, DisplayName: Offset XXL, FieldType: String, DefaultValue: , Description: Offset Xl
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: , Description: Text
#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue: none, Description: Text Align, List: center|end|justify|left|none|right|start
#DesignerProperty: Key: AlignSelf, DisplayName: Align Self, FieldType: String, DefaultValue: , Description: Align Self, List: auto|baseline|center|flex-end|flex-start|inherit|initial|none|stretch
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: CenterChildren, DisplayName: Center Children, FieldType: Boolean, DefaultValue: False, Description: Center Children
#DesignerProperty: Key: Order, DisplayName: Order, FieldType: String, DefaultValue: , Description: Order
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
	Private sOffsetXxl As String 
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
	Private sAlignSelf As String = ""
	Private sBackgroundColor As String = ""
	Private sHeight As String = ""
	Private sOffsetLg As String = ""
	Private sOffsetMd As String = ""
	Private sOffsetSm As String = ""
	Private sOffsetXl As String = ""
	Private sOrder As String = ""
	Private sSize As String = ""
	Private sSizeLg As String = ""
	Private sSizeMd As String = ""
	Private sSizeSm As String = ""
	Private sSizeXl As String = ""
	Private sSizeXxl As String = ""
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
		sAlignSelf = Props.GetDefault("AlignSelf", "")
		sAlignSelf = modSD5.CStr(sAlignSelf)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sOffsetLg = Props.GetDefault("OffsetLg", "")
		sOffsetLg = modSD5.CStr(sOffsetLg)
		sOffsetMd = Props.GetDefault("OffsetMd", "")
		sOffsetMd = modSD5.CStr(sOffsetMd)
		sOffsetSm = Props.GetDefault("OffsetSm", "")
		sOffsetSm = modSD5.CStr(sOffsetSm)
		sOffsetXl = Props.GetDefault("OffsetXl", "")
		sOffsetXl = modSD5.CStr(sOffsetXl)
		sOrder = Props.GetDefault("Order", "")
		sOrder = modSD5.CStr(sOrder)
		sSize = Props.GetDefault("Size", "none")
		sSize = modSD5.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sSizeLg = Props.GetDefault("SizeLg", "")
		sSizeLg = modSD5.CStr(sSizeLg)
		sSizeMd = Props.GetDefault("SizeMd", "")
		sSizeMd = modSD5.CStr(sSizeMd)
		sSizeSm = Props.GetDefault("SizeSm", "")
		sSizeSm = modSD5.CStr(sSizeSm)
		sSizeXl = Props.GetDefault("SizeXl", "")
		sSizeXl = modSD5.CStr(sSizeXl)
		sSizeXxl = Props.GetDefault("SizeXxl", "")
		sSizeXxl = modSD5.CStr(sSizeXxl)
		sWidth = Props.GetDefault("Width", "")
		sWidth = modSD5.CStr(sWidth)
		sOffsetXxl = Props.GetDefault("OffsetXxl", "")
		sOffsetXxl = modSD5.CStr(sOffsetXxl)
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
	If sAlignSelf <> "" Then UI.AddStyleDT("align-self", sAlignSelf)
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	UI.AddClassDT("col")
	If sSize <> "" Then UI.AddSizeDT("col", sSize)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sOffsetLg <> "" Then UI.AddClassDT("offset-lg-" & sOffsetLg)
	If sOffsetMd <> "" Then UI.AddClassDT("offset-md-" & sOffsetMd)
	If sOffsetSm <> "" Then UI.AddClassDT("offset-sm-" & sOffsetSm)
	If sOffsetXl <> "" Then UI.AddClassDT("offset-xl-" & sOffsetXl)
	If sOrder <> "" Then UI.AddClassDT("order-" & sOrder)
	If sSizeLg <> "" Then UI.AddClassDT("col-lg-" & sSizeLg)
	If sSizeMd <> "" Then UI.AddClassDT("col-md-" & sSizeMd)
	If sSizeSm <> "" Then UI.AddClassDT("col-sm-" & sSizeSm)
	If sSizeXl <> "" Then UI.AddClassDT("col-xl-" & sSizeXl)
	If sSizeXxl <> "" Then UI.AddClassDT("col-xxl-" & sSizeXxl)
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

'set Align Self
'options: auto|baseline|center|flex-end|flex-start|inherit|initial|none|stretch
Sub setAlignSelf(s As String)
	sAlignSelf = s
	CustProps.put("AlignSelf", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "align-self", s)
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
'set Offset Lg
Sub setOffsetLg(s As String)
	sOffsetLg = s
	CustProps.put("OffsetLg", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "offset-lg-" & s)
End Sub
'set Offset Md
Sub setOffsetMd(s As String)
	sOffsetMd = s
	CustProps.put("OffsetMd", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "offset-md-" & s)
End Sub
'set Offset Sm
Sub setOffsetSm(s As String)
	sOffsetSm = s
	CustProps.put("OffsetSm", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "offset-sm-" & s)
End Sub
'set Offset Xl
Sub setOffsetXl(s As String)
	sOffsetXl = s
	CustProps.put("OffsetXl", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "offset-xl-" & s)
End Sub
'set Order
Sub setOrder(s As String)
	sOrder = s
	CustProps.put("Order", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "order-" & s)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "size", "col", sSize)
End Sub
'set Size Lg
Sub setSizeLg(s As String)
	sSizeLg = s
	CustProps.put("SizeLg", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "col-lg-" & s)
End Sub
'set Size Md
Sub setSizeMd(s As String)
	sSizeMd = s
	CustProps.put("SizeMd", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "col-md-" & s)
End Sub
'set Size Sm
Sub setSizeSm(s As String)
	sSizeSm = s
	CustProps.put("SizeSm", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "col-sm-" & s)
End Sub
'set Size Xl
Sub setSizeXl(s As String)
	sSizeXl = s
	CustProps.put("SizeXl", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "col-xl-" & s)
End Sub
'set Size Xxl
Sub setSizeXxl(s As String)
	sSizeXxl = s
	CustProps.put("SizeXxl", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "col-xxl-" & s)
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
'get Align Self
Sub getAlignSelf As String
	Return sAlignSelf
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Offset Lg
Sub getOffsetLg As String
	Return sOffsetLg
End Sub
'get Offset Md
Sub getOffsetMd As String
	Return sOffsetMd
End Sub
'get Offset Sm
Sub getOffsetSm As String
	Return sOffsetSm
End Sub
'get Offset Xl
Sub getOffsetXl As String
	Return sOffsetXl
End Sub
'get Order
Sub getOrder As String
	Return sOrder
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Size Lg
Sub getSizeLg As String
	Return sSizeLg
End Sub
'get Size Md
Sub getSizeMd As String
	Return sSizeMd
End Sub
'get Size Sm
Sub getSizeSm As String
	Return sSizeSm
End Sub
'get Size Xl
Sub getSizeXl As String
	Return sSizeXl
End Sub
'get Size Xxl
Sub getSizeXxl As String
	Return sSizeXxl
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