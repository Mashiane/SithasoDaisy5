B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 10, Description: Value
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: , Description: Border Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: BorderWidth, DisplayName: Border Width, FieldType: String, DefaultValue: , Description: Border Width
#DesignerProperty: Key: ProgressSize, DisplayName: Size, FieldType: String, DefaultValue: , Description: Progress Size
#DesignerProperty: Key: ProgressThickness, DisplayName: Thickness, FieldType: String, DefaultValue: , Description: Progress Thickness
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
	'Public Root As SDUIElement
	Private sBackgroundColor As String = ""
	Private sBorderColor As String = ""
	Private sBorderWidth As String = ""
	Private sColor As String = "none"
	Private sProgressSize As String = ""
	Private sProgressThickness As String = ""
	Private sTextColor As String = ""
	Private sValue As String = "10"
	Private sText As String = ""
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
'set value
Sub setValue(text As String)
	sValue = text
	sText = $"${sValue}%"$
	CustProps.Put("Value", text)
	If mElement = Null Then Return
	UI.AddAttr(mElement, "aria-valuenow", sValue)
	UI.AddStyleComputed(mElement, "--value", sValue)
	UI.SetText(mElement, sText)
End Sub
'get value
Sub getValue As String
	Return UI.GetValue(mElement)
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		sBorderColor = Props.GetDefault("BorderColor", "")
		sBorderColor = modSD5.CStr(sBorderColor)
		sBorderWidth = Props.GetDefault("BorderWidth", "")
		sBorderWidth = modSD5.CStr(sBorderWidth)
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sProgressSize = Props.GetDefault("ProgressSize", "")
		sProgressSize = modSD5.CStr(sProgressSize)
		sProgressThickness = Props.GetDefault("ProgressThickness", "")
		sProgressThickness = modSD5.CStr(sProgressThickness)
		sValue = Props.GetDefault("Value", "")
		sValue = modSD5.CStr(sValue)
	End If
	'
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	UI.AddClassDT("radial-progress")
	UI.AddAttrDT("role", "progressbar")
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sBorderColor <> "" Then UI.AddColorDT("border", sBorderColor)
	If sBorderWidth <> "" Then UI.AddSizeDT("border", sBorderWidth)
	If sColor <> "" Then UI.AddTextColorDT(sColor)
	If sProgressSize <> "" Then UI.AddStyleDT("--size", sProgressSize)
	If sProgressThickness <> "" Then UI.AddStyleDT("--thickness", sProgressThickness)
	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sValue <> "" Then
		UI.AddAttrDT("aria-valuenow", sValue)
		UI.AddStyleDT("--value", sValue)
		sText = $"${sValue}%"$
	End If
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}</div>"$).Get("#" & mName)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, s)
End Sub
'set Border Color
Sub setBorderColor(s As String)
    sBorderColor = s
    CustProps.put("BorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "bordercolor", "border", s)
End Sub
'set Border Width
Sub setBorderWidth(s As String)
   sBorderWidth = s
    CustProps.put("BorderWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "borderwidth", "border", s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
    sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, s)
End Sub
'set Progress Size
Sub setProgressSize(s As String)
    sProgressSize = s
    CustProps.put("ProgressSize", s)
	If mElement = Null Then Return
	If sProgressSize <> "" Then 
		UI.AddStyleComputed(mElement, "--size", sProgressSize)
	End If
End Sub
'set Progress Thickness
Sub setProgressThickness(s As String)
    sProgressThickness = s
	CustProps.put("ProgressThickness", s)
	If mElement = Null Then Return
	If sProgressThickness <> "" Then 
		UI.AddStyleComputed(mElement, "--thickness", sProgressThickness)
	End If
End Sub
'set Text Color
Sub setTextColor(s As String)
     sTextColor = s
    CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, s)
End Sub
'get Background Color
Sub getBackgroundColor As String
        Return sBackgroundColor
End Sub
'get Border Color
Sub getBorderColor As String
        Return sBorderColor
End Sub
'get Border Width
Sub getBorderWidth As String
        Return sBorderWidth
End Sub
'get Color
Sub getColor As String
        Return sColor
End Sub
'get Progress Size
Sub getProgressSize As String
        Return sProgressSize
End Sub
'get Progress Thickness
Sub getProgressThickness As String
        Return sProgressThickness
End Sub
'get Text Color
Sub getTextColor As String
        Return sTextColor
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub