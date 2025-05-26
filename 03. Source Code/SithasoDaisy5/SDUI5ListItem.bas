B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: CursorPointer, DisplayName: Cursor Pointer, FieldType: Boolean, DefaultValue: True, Description: Cursor Pointer
#DesignerProperty: Key: ListRow, DisplayName: List Row, FieldType: Boolean, DefaultValue: True, Description: List Row
#DesignerProperty: Key: Opacity, DisplayName: Opacity, FieldType: Int, DefaultValue: 100, MinRange: 0, MaxRange: 100, Description: Opacity
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: none, Description: Text Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: none, Description: Text Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Tracking, DisplayName: Tracking, FieldType: String, DefaultValue: none, Description: Tracking, List: none|normal|tight|tighter|wide|wider|widest
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
	Private sText As String = ""
	Public Tag As Object
	Private sBackgroundColor As String = ""
	Private bCursorPointer As Boolean = True
	Private bListRow As Boolean = True
	Private iOpacity As Int = 100
	Private sTextColor As String = "none"
	Private sTextSize As String = "none"
	Private sTracking As String = "none"
	Public CONST TRACKING_NONE As String = "none"
	Public CONST TRACKING_NORMAL As String = "normal"
	Public CONST TRACKING_TIGHT As String = "tight"
	Public CONST TRACKING_TIGHTER As String = "tighter"
	Public CONST TRACKING_WIDE As String = "wide"
	Public CONST TRACKING_WIDER As String = "wider"
	Public CONST TRACKING_WIDEST As String = "widest"
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
'
Sub OnEvent(event As String, MethodName As String)
	UI.OnEvent(mElement, event, mCallBack, MethodName)
End Sub

' returns the element id
Public Sub getID() As String
	Return mName
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
'set text
Sub setText(s As String)
	sText = s
	CustProps.Put("Text", s)
	If mElement = Null Then Return
	UI.SetText(mElement, s)
End Sub
'get text
Sub getText As String
	If mElement = Null Then Return ""
	sText = mElement.GetText
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
		sBackgroundColor = Props.GetDefault("BackgroundColor", "")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		bCursorPointer = Props.GetDefault("CursorPointer", True)
		bCursorPointer = UI.CBool(bCursorPointer)
		bListRow = Props.GetDefault("ListRow", True)
		bListRow = UI.CBool(bListRow)
		iOpacity = Props.GetDefault("Opacity", 100)
		iOpacity = UI.CInt(iOpacity)
		sTextColor = Props.GetDefault("TextColor", "none")
		sTextColor = UI.CStr(sTextColor)
		If sTextColor = "none" Then sTextColor = ""
		sTextSize = Props.GetDefault("TextSize", "none")
		sTextSize = UI.CStr(sTextSize)
		If sTextSize = "none" Then sTextSize = ""
		sTracking = Props.GetDefault("Tracking", "none")
		sTracking = UI.CStr(sTracking)
		If sTracking = "none" Then sTracking = ""
	End If
	'
	If bCursorPointer = True Then UI.AddClassDT("cursor-pointer")
	If bListRow = True Then UI.AddClassDT("list-row")
	UI.AddClassDT("opacity-" & iOpacity)
	'If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sTracking <> "" Then UI.AddClassDT("tracking-" & sTracking)
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
	mElement = mTarget.Append($"[BANCLEAN]<li id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}</li>"$).Get("#" & mName)
'	setVisible(bVisible)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Cursor Pointer
Sub setCursorPointer(b As Boolean)
	bCursorPointer = b
	CustProps.put("CursorPointer", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "cursor-pointer")
	Else
		UI.RemoveClass(mElement, "cursor-pointer")
	End If
End Sub
'set List Row
Sub setListRow(b As Boolean)
	bListRow = b
	CustProps.put("ListRow", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "list-row")
	Else
		UI.RemoveClass(mElement, "list-row")
	End If
End Sub
'set Opacity
Sub setOpacity(i As Int)
	iOpacity = i
	CustProps.put("Opacity", i)
	If mElement = Null Then Return
	UI.AddClass(mElement, "opacity-" & i)
End Sub
'set Text Color
'options: accent|error|info|neutral|none|primary|secondary|success|warning
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
End Sub
'set Text Size
'options: lg|md|none|sm|xl|xs
Sub setTextSize(s As String)
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextSize(mElement, sTextColor)
End Sub
'set Tracking
'options: none|normal|tight|tighter|wide|wider|widest
Sub setTracking(s As String)
	sTracking = s
	CustProps.put("Tracking", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "tracking-" & s)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Cursor Pointer
Sub getCursorPointer As Boolean
	Return bCursorPointer
End Sub
'get List Row
Sub getListRow As Boolean
	Return bListRow
End Sub
'get Opacity
Sub getOpacity As Int
	Return iOpacity
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Text Size
Sub getTextSize As String
	Return sTextSize
End Sub
'get Tracking
Sub getTracking As String
	Return sTracking
End Sub