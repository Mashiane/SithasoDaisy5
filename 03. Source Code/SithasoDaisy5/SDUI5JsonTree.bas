B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: ArrowColor, DisplayName: Arrow Color, FieldType: String, DefaultValue: #475872, Description: Arrow Color
#DesignerProperty: Key: FontSize, DisplayName: Font Size, FieldType: Int, DefaultValue: 12, Description: Font Size
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: KeyColor, DisplayName: Key Color, FieldType: String, DefaultValue: #b16b2a, Description: Key Color
#DesignerProperty: Key: LineHeight, DisplayName: Line Height, FieldType: Int, DefaultValue: 18, Description: Line Height
#DesignerProperty: Key: NodeBackgroundColor, DisplayName: Node Background Color, FieldType: String, DefaultValue: #f6f8fa, Description: Node Background Color
#DesignerProperty: Key: NodeBorderColor, DisplayName: Node Border Color, FieldType: String, DefaultValue: #475872, Description: Node Border Color
#DesignerProperty: Key: Padding, DisplayName: Padding, FieldType: Int, DefaultValue: 10, Description: Padding
#DesignerProperty: Key: ValueColor, DisplayName: Value Color, FieldType: String, DefaultValue: #008000, Description: Value Color
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 500px, Description: Width
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
	Private Options As Map
	Private sArrowColor As String = "#475872"
	Private iFontSize As Int = 12
	Private sHeight As String = "500px"
	Private sKeyColor As String = "#b16b2a"
	Private iLineHeight As Int = 18
	Private sNodeBackgroundColor As String = "#f6f8fa"
	Private sNodeBorderColor As String = "#475872"
	Private iPadding As Int = 10
	Private sValueColor As String = "#008000"
	Private sWidth As String = "500px"
	Private mJSON As Map
	Private sJsonString As String
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("JSONTree") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesJSONTree)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	BANano.DependsOnAsset("jsontr.ee.js")
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
'use to add an event to the element
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
		sArrowColor = Props.GetDefault("ArrowColor", "#475872")
		sArrowColor = UI.CStr(sArrowColor)
		iFontSize = Props.GetDefault("FontSize", 12)
		iFontSize = UI.CInt(iFontSize)
		sHeight = Props.GetDefault("Height", "500px")
		sHeight = UI.CStr(sHeight)
		sKeyColor = Props.GetDefault("KeyColor", "#b16b2a")
		sKeyColor = UI.CStr(sKeyColor)
		iLineHeight = Props.GetDefault("LineHeight", 18)
		iLineHeight = UI.CInt(iLineHeight)
		sNodeBackgroundColor = Props.GetDefault("NodeBackgroundColor", "#f6f8fa")
		sNodeBackgroundColor = UI.CStr(sNodeBackgroundColor)
		sNodeBorderColor = Props.GetDefault("NodeBorderColor", "#475872")
		sNodeBorderColor = UI.CStr(sNodeBorderColor)
		iPadding = Props.GetDefault("Padding", 10)
		iPadding = UI.CInt(iPadding)
		sValueColor = Props.GetDefault("ValueColor", "#008000")
		sValueColor = UI.CStr(sValueColor)
		sWidth = Props.GetDefault("Width", "500px")
		sWidth = UI.CStr(sWidth)
	End If
	'
	If sHeight <> "" Then UI.AddStyleDT("height", sHeight)
	If sWidth <> "" Then UI.AddStyleDT("width", sWidth)
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
End Sub

Sub Clear
	mJSON.Initialize 
End Sub

Sub setJsonString(s As String)
	sJsonString = s
	Dim x As Map = BANano.FromJson(s)
	setJSON(x)
End Sub

Sub getJsonString As String
	Return sJsonString
End Sub


Sub setJSON(m As Map)
	mJSON = BANano.DeepClone(m)
End Sub

Sub getJSON As Map
	Return mJSON
End Sub

Sub Refresh
	Options.put("arrowColor", sArrowColor)
	Options.put("fontSize", iFontSize)
	Options.put("keyColor", sKeyColor)
	Options.put("lineHeight", iLineHeight)
	Options.put("nodeBackgroundColor", sNodeBackgroundColor)
	Options.put("nodeBorderColor", sNodeBorderColor)
	Options.put("padding", iPadding)
	Options.put("valueColor", sValueColor)
	'
	Dim rec As Object = BANano.RunJavascriptMethod("generateJSONTree", Array(mJSON, Options))
	mElement.SetField("innerHTML", rec)
End Sub

'set Arrow Color
Sub setArrowColor(s As String)
	sArrowColor = s
	CustProps.put("ArrowColor", s)
	Options.put("arrowColor", s)
End Sub
'set Font Size
Sub setFontSize(i As Int)
	iFontSize = i
	CustProps.put("FontSize", i)
	Options.put("fontSize", i)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "height", s)
End Sub
'set Key Color
Sub setKeyColor(s As String)
	sKeyColor = s
	CustProps.put("KeyColor", s)
	Options.put("keyColor", s)
End Sub
'set Line Height
Sub setLineHeight(i As Int)
	iLineHeight = i
	CustProps.put("LineHeight", i)
	Options.put("lineHeight", i)
End Sub
'set Node Background Color
Sub setNodeBackgroundColor(s As String)
	sNodeBackgroundColor = s
	CustProps.put("NodeBackgroundColor", s)
	Options.put("nodeBackgroundColor", s)
End Sub
'set Node Border Color
Sub setNodeBorderColor(s As String)
	sNodeBorderColor = s
	CustProps.put("NodeBorderColor", s)
	Options.put("nodeBorderColor", s)
End Sub
'set Padding Br
Sub setPadding(i As Int)
	iPadding = i
	CustProps.put("Padding", i)
	Options.put("padding", i)
End Sub
'set Value Color
Sub setValueColor(s As String)
	sValueColor = s
	CustProps.put("ValueColor", s)
	Options.put("valueColor", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "width", s)
End Sub
'get Arrow Color
Sub getArrowColor As String
	Return sArrowColor
End Sub
'get Font Size
Sub getFontSize As Int
	Return iFontSize
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Key Color
Sub getKeyColor As String
	Return sKeyColor
End Sub
'get Line Height
Sub getLineHeight As Int
	Return iLineHeight
End Sub
'get Node Background Color
Sub getNodeBackgroundColor As String
	Return sNodeBackgroundColor
End Sub
'get Node Border Color
Sub getNodeBorderColor As String
	Return sNodeBorderColor
End Sub
'get Padding Br
Sub getPadding As Int
	Return iPadding
End Sub
'get Value Color
Sub getValueColor As String
	Return sValueColor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub