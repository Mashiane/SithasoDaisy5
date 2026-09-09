B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|primary|secondary|success|warning|none
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Variant, DisplayName: Variant, FieldType: String, DefaultValue: none, Description: Variant, List: none|active|wide|full|vertical|xs|sm|md|lg|xl
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
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
	Private sText As String = "Megamenu"
	Public Tag As Object
	Private sColor As String = "none"
	Private sSize As String = "none"
	Private sVariant As String = "none"
	Private sRounded As String = "none"
	Private sShadow As String = "none"
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Text", "Megamenu")
	CustProps.Put("Color", "none")
	CustProps.Put("Size", "none")
	CustProps.Put("Variant", "none")
	CustProps.Put("Rounded", "none")
	CustProps.Put("Shadow", "none")
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

Public Sub getID() As String
	Return mName
End Sub

Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.Get("ParentID")
End Sub

Sub GetProperties As Map
	Return CustProps
End Sub

Public Sub AddComponent
	If sParentID = "" Then Return
	sParentID = UI.CleanID(sParentID)
	mTarget = BANano.GetElement("#" & sParentID)
	DesignerCreateView(mTarget, CustProps)
End Sub

Public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub setParentID(s As String)
	s = UI.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub

Sub getParentID As String
	Return sParentID
End Sub

Public Sub getHere() As String
	Return $"#${mName}"$
End Sub

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sVariant = Props.GetDefault("Variant", "none")
		sVariant = UI.CStr(sVariant)
		If sVariant = "none" Then sVariant = ""
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
	End If
	'
	UI.AddClassDT("megamenu")
	If sColor <> "" Then UI.AddColorDT("megamenu", sColor)
	If sSize <> "" Then UI.AddSizeDT("megamenu", sSize)
	If sVariant <> "" Then UI.AddClassDT("megamenu-" & sVariant)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	If sParentID <> "" Then
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}</div>"$).Get("#" & mName)
End Sub

Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	UI.SetText(mElement, text)
End Sub

Sub getText As String
	sText = UI.GetText(mElement)
	Return sText
End Sub

Sub setColor(s As String)
	sColor = s
	CustProps.Put("Color", s)
	If mElement = Null Then Return
	If s = "" Then s = "none"
	UI.SetColor(mElement, "color", "megamenu", s)
End Sub

Sub getColor As String
	Return sColor
End Sub

Sub setSize(s As String)
	sSize = s
	CustProps.Put("Size", s)
	If mElement = Null Then Return
	If s = "" Then s = "none"
	UI.SetSize(mElement, "size", "megamenu", s)
End Sub

Sub getSize As String
	Return sSize
End Sub

Sub setVariant(s As String)
	sVariant = s
	CustProps.Put("Variant", s)
	If mElement = Null Then Return
	If s <> "" And s <> "none" Then
		UI.AddClass(mElement, "megamenu-" & s)
	End If
End Sub

Sub getVariant As String
	Return sVariant
End Sub

Sub setVisible(b As Boolean)
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	UI.SetVisible(mElement, b)
End Sub

Sub getVisible As Boolean
	bVisible = UI.GetVisible(mElement)
	Return bVisible
End Sub

Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement = Null Then Return
	UI.SetEnabled(mElement, b)
End Sub

Sub getEnabled As Boolean
	bEnabled = UI.GetEnabled(mElement)
	Return bEnabled
End Sub

'set Rounded
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub

Sub getRounded As String
	Return sRounded
End Sub

'set Shadow
Sub setShadow(s As String)
	sShadow = s
	CustProps.Put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub

Sub getShadow As String
	Return sShadow
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
