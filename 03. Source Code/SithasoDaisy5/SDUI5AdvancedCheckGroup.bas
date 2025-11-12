B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TypeOf, DisplayName: Type Of, FieldType: String, DefaultValue: checkbox, Description: Type Of, List: radio|checkbox|toggle
#DesignerProperty: Key: LegendLabel, DisplayName: Legend Label, FieldType: String, DefaultValue: Checkbox Group, Description: Legend Label
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color
#DesignerProperty: Key: Columns, DisplayName: Columns, FieldType: String, DefaultValue: 3, Description: Columns
#DesignerProperty: Key: RawOptions, DisplayName: Options (JSON), FieldType: String, DefaultValue: b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r, Description: Options
#DesignerProperty: Key: Selected, DisplayName: Selected, FieldType: String, DefaultValue: , Description: Selected
#DesignerProperty: Key: ActiveBorderColor, DisplayName: Active Border Color, FieldType: String, DefaultValue: , Description: Active Border Color
#DesignerProperty: Key: ActiveColor, DisplayName: Active Color, FieldType: String, DefaultValue: , Description: Active Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-200, Description: Background Color
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: Boolean, DefaultValue: False, Description: Border
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: base-300, Description: Border Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: lg, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: , Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private sActiveBorderColor As String = ""
	Private sActiveColor As String = ""
	Private sBackgroundColor As String = "base-200"
	Private bBorder As Boolean = False
	Private sBorderColor As String = "base-300"
	Private sColor As String = ""
	Private sColumns As String = "3"
	Private sHeight As String = ""
	Private sLegendLabel As String = "Checkbox Group"
	Private sRawOptions As String = ""
	Private sRounded As String = "lg"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = ""
	Private sTypeOf As String = ""
	Private sWidth As String = ""
	Private sSelected As String = ""
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
' returns the element id
Public Sub getID() As String
	Return mName
End Sub

private Sub SetDefaults
	CustProps.Initialize
	CustProps.Put("ParentID", "")                            'String (empty by default)
	CustProps.Put("TypeOf", "checkbox")                      'String
	CustProps.Put("LegendLabel", "Checkbox Group")           'String
	CustProps.Put("Color", "")                               'String (empty)
	CustProps.Put("Columns", "3")                            'String
	CustProps.Put("RawOptions", "")                          'String (empty)
	CustProps.Put("Selected", "")                            'String (empty)
	CustProps.Put("ActiveBorderColor", "")                   'String (empty)
	CustProps.Put("ActiveColor", "")                         'String (empty)
	CustProps.Put("BackgroundColor", "base-200")             'String
	CustProps.Put("Border", False)                           'Boolean
	CustProps.Put("BorderColor", "base-300")                 'String
	CustProps.Put("Height", "")                              'String (empty)
	CustProps.Put("Width", "")                               'String (empty)
	CustProps.Put("Rounded", "lg")                           'String
	CustProps.Put("RoundedBox", False)                       'Boolean
	CustProps.Put("Shadow", "")                              'String (empty)
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
		UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sActiveBorderColor = Props.GetDefault("ActiveBorderColor", "")
		sActiveBorderColor = UI.CStr(sActiveBorderColor)
		sActiveColor = Props.GetDefault("ActiveColor", "")
		sActiveColor = UI.CStr(sActiveColor)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		bBorder = Props.GetDefault("Border", False)
		bBorder = UI.CBool(bBorder)
		sBorderColor = Props.GetDefault("BorderColor", "base-300")
		sBorderColor = UI.CStr(sBorderColor)
		sColor = Props.GetDefault("Color", "")
		sColor = UI.CStr(sColor)
		sColumns = Props.GetDefault("Columns", "3")
		sColumns = UI.CStr(sColumns)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sLegendLabel = Props.GetDefault("LegendLabel", "Checkbox Group")
		sLegendLabel = UI.CStr(sLegendLabel)
		sRawOptions = Props.GetDefault("RawOptions", "b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r")
		sRawOptions = UI.CStr(sRawOptions)
		sRounded = Props.GetDefault("Rounded", "lg")
		sRounded = UI.CStr(sRounded)
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "")
		sShadow = UI.CStr(sShadow)
		sTypeOf = Props.GetDefault("TypeOf", "")
		sTypeOf = UI.CStr(sTypeOf)
		sWidth = Props.GetDefault("Width", "")
		sWidth = UI.CStr(sWidth)
		sSelected = Props.GetDefault("Selected", "")
		sSelected = UI.CStr(sSelected)
	End If
	'
	UI.AddAttrDT("type-of", sTypeOf)
	If sActiveBorderColor <> "" Then UI.AddAttrDT("active-border-color", sActiveBorderColor)
	If sActiveColor <> "" Then UI.AddAttrDT("active-color", sActiveColor)
	If sBackgroundColor <> "" Then UI.AddAttrDT("background-color", sBackgroundColor)
	If bBorder = True Then UI.AddAttrDT("border", bBorder)
	If sBorderColor <> "" Then UI.AddAttrDT("border-color", sBorderColor)
	If sColor <> "" Then UI.AddAttrDT("color", sColor)
	If sColumns <> "" Then UI.AddAttrDT("columns", sColumns)
	If sHeight <> "" Then UI.AddAttrDT("height", sHeight)
	If sLegendLabel <> "" Then UI.AddAttrDT("legend-label", sLegendLabel)
	If sRounded <> "" Then UI.AddAttrDT("rounded", sRounded)
	If bRoundedBox = True Then UI.AddAttrDT("rounded-box", bRoundedBox)
	If sWidth <> "" Then UI.AddAttrDT("width", sWidth)
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
	mElement = mTarget.Append($"[BANCLEAN]<checkbox-group id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></checkbox-group>"$).Get("#" & mName)
	If sRawOptions <> "" Then
		setOptions(sRawOptions)
	End If
	If sSelected <> "" Then
		setSelected(sSelected)
	End If
	UI.OnEvent(mElement, "change", mCallBack, $"${mName}_change"$)
End Sub

'set Active Border Color
Sub setActiveBorderColor(s As String)
	sActiveBorderColor = s
	CustProps.put("ActiveBorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "active-border-color", s)
End Sub

'set Active Color
Sub setActiveColor(s As String)
	sActiveColor = s
	CustProps.put("ActiveColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "active-color", s)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "background-color", s)
End Sub

'set Border
Sub setBorder(b As Boolean)
	bBorder = b
	CustProps.put("Border", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "border", b)
	Else
		UI.RemoveAttr(mElement, "border")
	End If
End Sub

'set Border Color
Sub setBorderColor(s As String)
	sBorderColor = s
	CustProps.put("BorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "border-color", s)
End Sub

'set Color
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "color", s)
End Sub

'set Columns
Sub setColumns(s As String)
	sColumns = s
	CustProps.put("Columns", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "columns", s)
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	sHeight = UI.fixsize("w", sHeight)
	If s <> "" Then UI.AddAttr(mElement, "height", s)
End Sub
'set Legend Label
Sub setLegendLabel(s As String)
	sLegendLabel = s
	CustProps.put("LegendLabel", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "legend-label", s)
End Sub

'set Raw Options
Sub setOptions(s As String)			'ignoredeadcode
	sRawOptions = s
	CustProps.put("RawOptions", s)
	If mElement = Null Then Return
	mElement.RunMethod("setOptionsMV", s)
End Sub

'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "lg" Then UI.AddAttr(mElement, "rounded", s)
End Sub
'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "rounded-box", b)
	Else
		UI.RemoveAttr(mElement, "rounded-box")
	End If
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
End Sub
'set Type Of: checkbox|radio|toggle
Sub setTypeOf(s As String)
	sTypeOf = s
	CustProps.put("TypeOf", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	sWidth = UI.fixsize("w", sWidth)
	If s <> "" Then UI.SetAttr(mElement, "width", sWidth)
End Sub
'get Active Border Color
Sub getActiveBorderColor As String
	Return sActiveBorderColor
End Sub
'get Active Color
Sub getActiveColor As String
	Return sActiveColor
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Border
Sub getBorder As Boolean
	Return bBorder
End Sub
'get Border Color
Sub getBorderColor As String
	Return sBorderColor
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Columns
Sub getColumns As String
	Return sColumns
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Legend Label
Sub getLegendLabel As String
	Return sLegendLabel
End Sub
'get Raw Options
Sub getRawOptions As String
	Return sRawOptions
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
'get Type Of
Sub getTypeOf As String
	Return sTypeOf
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

Sub clear
	Dim l As Map
	l.Initialize 
	mElement.RunMethod("setOptions", l)
End Sub

Sub toggleCheckBox(key As String)
	mElement.RunMethod("toggleCheckBox", key)
End Sub

Sub toggleState(key As String, state As Boolean)
	mElement.RunMethod("toggleState", Array(key, state))
End Sub

Sub clearChecked
	mElement.RunMethod("clearChecked", Null)
End Sub

Sub SetOptionsMap(lst As Map)
	mElement.RunMethod("setOptions", lst)
End Sub

Sub getChecked As List
	Dim lst As List = mElement.RunMethod("getChecked", Null).Result
	Return lst
End Sub

Sub setChecked(lst As List)
	mElement.RunMethod("setChecked", lst)
End Sub

Sub setCheckedMV(s As String)				'ignoredeadcode
	mElement.RunMethod("setCheckedMV", s)
End Sub

Sub setSelected(s As String)			'ignoredeadcode
	sSelected = s
	CustProps.Put("Selected", s)
	If mElement = Null Then Return
	setCheckedMV(s)
End Sub

Sub getSelected As String
	Return sSelected
End Sub

Sub getCheckedMV As String
	Dim s As String = mElement.RunMethod("getCheckedMV", Null).Result
	Return s
End Sub

Sub areKeysChecked(k As List) As Boolean
	Dim b As Boolean = mElement.RunMethod("areKeysChecked", k).Result
	Return b
End Sub

Sub addOption(k As String, v As String)
	mElement.RunMethod("addOption", Array(k, v))
End Sub