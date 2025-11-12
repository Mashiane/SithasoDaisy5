B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _content, Description: Child Item _content
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: RawOptions, DisplayName: Options, FieldType: String, DefaultValue: b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r, Description: Options
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: , Description: Max Width
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: none, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
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
	Private sMaxWidth As String = ""
	Private sTextSize As String = "none"
	Private sRawOptions As String = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	Public Children As Map
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Children.Initialize
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")                            'String (empty by default)
	CustProps.Put("RawOptions", "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r") 'String
	CustProps.Put("MaxWidth", "")                            'String (empty)
	CustProps.Put("TextSize", "none")                        'String
	CustProps.Put("Visible", True)                           'Boolean
	CustProps.Put("Enabled", True)                           'Boolean
	CustProps.Put("PositionStyle", "none")                   'String
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")          'String
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")   'String
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")  'String
	CustProps.Put("RawClasses", "")                          'String (empty)
	CustProps.Put("RawStyles", "")                           'String (empty)
	CustProps.Put("RawAttributes", "")                       'String (empty)
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
		sMaxWidth = Props.GetDefault("MaxWidth", "")
		sMaxWidth = UI.CStr(sMaxWidth)
		sTextSize = Props.GetDefault("TextSize", "none")
		sTextSize = UI.CStr(sTextSize)
		If sTextSize = "none" Then sTextSize = ""
		sRawOptions = Props.GetDefault("RawOptions", "b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r")
		sRawOptions = UI.CStr(sRawOptions)
	End If
	'
	UI.AddClassDT("breadcrumbs")
	If sMaxWidth <> "" Then UI.AddMaxWidthDT(sMaxWidth)
	If sTextSize <> "" Then UI.AddTextSizeDT(sTextSize)
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
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
	<ul id="${mName}_content" class="flex-nowrap"></ul>
	</div>"$).Get("#" & mName)
	setOptions(sRawOptions)
	Children.Put($"${mName}_content"$, "SDUI5Text")
'	setVisible(bVisible)
End Sub

'set Options from a MV field
'b4j:b4j; b4i:b4i; b4r:b4r
Sub setOptions(s As String)			'ignoredeadcode
	sRawOptions = s
	CustProps.put("RawOptions", s)
	If mElement = Null Then Return
	Dim m As Map = UI.GetKeyValues(s, False)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		AddOption(k, v)
	Next
End Sub

Sub AddOption(k As String, v As String)			'ignore
	If mElement = Null Then Return
	k = UI.CleanID(k)
	Dim sItem As String = $"<li id="${mName}_${k}"><a id="${mName}_${k}_a">${v}</a></li>"$
	UI.AppendByID($"${mName}_content"$, sItem)
End Sub

Sub getOptions As String
	Return sRawOptions
End Sub

Sub Clear			'ignoredeadcode
	If mElement = Null Then Return
	UI.ClearByID($"${mName}_content"$)
End Sub

'set Max Width
'options: xs|none|sm|md|lg|xl|base|2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl
Sub setMaxWidth(s As String)
	sMaxWidth = s
	CustProps.put("MaxWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxWidth(mElement, s)
End Sub
'set Text Size
'options: xs|none|sm|md|lg|xl|base|2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl
Sub setTextSize(s As String)
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextSize(mElement, sTextSize)
End Sub
'get Max Width
Sub getMaxWidth As String
	Return sMaxWidth
End Sub
'get Text Size
Sub getTextSize As String
	Return sTextSize
End Sub