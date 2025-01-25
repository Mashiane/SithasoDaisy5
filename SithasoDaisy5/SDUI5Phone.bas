B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Artboard, DisplayName: Artboard, FieldType: Int, DefaultValue: 0, MinRange: 0, MaxRange: 6, Description: Artboard
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: , Description: Border Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Horizontal, DisplayName: Horizontal, FieldType: Boolean, DefaultValue: False, Description: Horizontal
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
	Private iArtboard As Int = 0
	Private sBorderColor As String = ""
	Private sHeight As String = ""
	Private bHorizontal As Boolean = False
	Private sShadow As String = "none"
	Private sWidth As String = ""
	Public CONST BORDERCOLOR_ACCENT As String = "accent"
	Public CONST BORDERCOLOR_ERROR As String = "error"
	Public CONST BORDERCOLOR_INFO As String = "info"
	Public CONST BORDERCOLOR_NEUTRAL As String = "neutral"
	Public CONST BORDERCOLOR_NONE As String = "none"
	Public CONST BORDERCOLOR_PRIMARY As String = "primary"
	Public CONST BORDERCOLOR_SECONDARY As String = "secondary"
	Public CONST BORDERCOLOR_SUCCESS As String = "success"
	Public CONST BORDERCOLOR_WARNING As String = "warning"
	Public CONST SHADOW_2XL As String = "2xl"
	Public CONST SHADOW_INNER As String = "inner"
	Public CONST SHADOW_LG As String = "lg"
	Public CONST SHADOW_MD As String = "md"
	Public CONST SHADOW_NONE As String = "none"
	Public CONST SHADOW_SHADOW As String = "shadow"
	Public CONST SHADOW_SM As String = "sm"
	Public CONST SHADOW_XL As String = "xl"
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
	sParentID = modSD5.CleanID(sParentID)
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
		iArtboard = Props.GetDefault("Artboard", 0)
		iArtboard = modSD5.CInt(iArtboard)
		sBorderColor = Props.GetDefault("BorderColor", "")
		sBorderColor = modSD5.CStr(sBorderColor)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		bHorizontal = Props.GetDefault("Horizontal", False)
		bHorizontal = modSD5.CBool(bHorizontal)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sWidth = Props.GetDefault("Width", "")
		sWidth = modSD5.CStr(sWidth)
	End If
	'
	If sBorderColor <> "" Then UI.AddColorDT("border", sBorderColor)
	UI.AddClassDT("mockup-phone")
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
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
  			<div id="${mName}_camera" class="mockup-phone-camera"></div>
  			<div id="${mName}_display" class="mockup-phone-display w-full h-full">
				<div id="${mName}_content" class="flex flex-col w-full h-full"></div>
			</div>
		</div>"$).Get("#" & mName)
	setArtboard(iArtboard)	
'	setVisible(bVisible)
End Sub

'set Artboard
Sub setArtboard(i As Int)
	iArtboard = i
	CustProps.put("Artboard", i)
	If mElement = Null Then Return
	Select Case bHorizontal
	Case False
		Select Case i
		Case 1
			setWidth("320px")
			setHeight("568px")
		Case 2
			setWidth("375px")
			setHeight("667px")
		Case 3
			setWidth("414px")
			setHeight("736px")
		Case 4
			setWidth("375px")
			setHeight("812px")
		Case 5
			setWidth("414px")
			setHeight("896px")
		Case 6
			setWidth("320px")
			setHeight("1024px")
		End Select
	Case Else
		Select Case i
		Case 1
			setWidth("568px")
			setHeight("320px")
		Case 2
			setWidth("667px")
			setHeight("375px")
		Case 3
			setWidth("736px")
			setHeight("414px")
		Case 4
			setWidth("812px")
			setHeight("375px")
		Case 5
			setWidth("896px")
			setHeight("414px")
		Case 6
			setWidth("1024px")
			setHeight("320px")
		End Select
	End Select
End Sub
'set Border Color
'options: accent|error|info|neutral|none|primary|secondary|success|warning
Sub setBorderColor(s As String)
	sBorderColor = s
	CustProps.put("BorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "bordercolor", "border", s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetHeight(mElement, sHeight)
End Sub
'set Horizontal
Sub setHorizontal(b As Boolean)
	bHorizontal = b
	CustProps.put("Horizontal", b)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetWidth(mElement, sWidth)
End Sub
'get Artboard
Sub getArtboard As Int
	Return iArtboard
End Sub
'get Border Color
Sub getBorderColor As String
	Return sBorderColor
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Horizontal
Sub getHorizontal As Boolean
	Return bHorizontal
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub