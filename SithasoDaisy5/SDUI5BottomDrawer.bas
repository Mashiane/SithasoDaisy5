B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: IndicatorColor, DisplayName: Indicator Color, FieldType: String, DefaultValue: white, Description: Indicator Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-200, Description: Background Color
#DesignerProperty: Key: Duration, DisplayName: Duration, FieldType: String, DefaultValue: 500, Description: Duration
#DesignerProperty: Key: Open, DisplayName: Open, FieldType: Boolean, DefaultValue: False, Description: Open
#DesignerProperty: Key: Offset, DisplayName: Offset, FieldType: Int, DefaultValue: 50, MinRange: 0, MaxRange: 80, Description: Offset
#DesignerProperty: Key: RawContent, DisplayName: Content, FieldType: String, DefaultValue: This is my bottom drawer content, Description: Content
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
	Private sBackgroundColor As String = "base-200"
	Private sDuration As String = "500"
	Private sIndicatorColor As String = "white"
	Private bOpen As Boolean = False
	Private iOffset As Int = 50
	Private sRawContent As String = "This is my bottom drawer content"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	
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
		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		sDuration = Props.GetDefault("Duration", "500")
		sDuration = UI.CStr(sDuration)
		sIndicatorColor = Props.GetDefault("IndicatorColor", "white")
		sIndicatorColor = UI.CStr(sIndicatorColor)
		bOpen = Props.GetDefault("Open", False)
		bOpen = UI.CBool(bOpen)
		iOffset = Props.GetDefault("Offset", 50)
		iOffset = UI.CInt(iOffset)
		sRawContent = Props.GetDefault("RawContent", "This is my bottom drawer content")
		sRawContent = UI.CStr(sRawContent)
	End If
	'
	UI.AddClassDT("fixed top-[calc(100vh-2rem)] rounded-box h-full w-full")
	UI.AddClassDT($"transition-[top] has-[input:checked]:top-[${iOffset}vh]"$)
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
  		<label id="${mName}_box" class="relative block rounded-box w-full pt-3 flex items-center justify-center">
    		<div id="${mName}_indicator" class="h-2 bg-white w-[200px] rounded-box mx-auto"></div>
    		<input id="${mName}_chooser" type="checkbox" class="border-none absolute inset-0 cursor-pointer appearance-none" />
  		</label>
  		<div id="${mName}_content" class="pt-5 pl-10 pr-10">${sRawContent}</div>
	</div>"$).Get("#" & mName)
	setOpen(bOpen)
	setBackgroundColor(sBackgroundColor)
	setDuration(sDuration)
	setIndicatorColor(sIndicatorColor)
End Sub

Sub setOpen(b As Boolean)				'ignoredeadcode
	bOpen = b
	CustProps.put("Open", b)
	If mElement = Null Then Return
	UI.SetCheckedByID($"${mName}_chooser"$, b)
End Sub

Sub getOpen As Boolean
	Return bOpen
End Sub

'set Background Color
Sub setBackgroundColor(s As String)			'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetBackgroundColor(mElement, sBackgroundColor)
		UI.SetBackgroundColorByID($"${mName}_box"$, sBackgroundColor)
	End If
End Sub
'set Duration
Sub setDuration(s As String)			'ignoredeadcode
	sDuration = s
	CustProps.put("Duration", s)
	If mElement = Null Then Return
	If s <> "" Then UI.UpdateClass(mElement, "duration", "duration-" & s)
End Sub
'set Indicator Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setIndicatorColor(s As String)					'ignoredeadcode
	sIndicatorColor = s
	CustProps.put("IndicatorColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_indicator"$, sIndicatorColor)
End Sub
'set Offset
Sub setOffset(i As Int)
    iOffset = i
    CustProps.put("Offset", i)
    If mElement = Null Then Return
	UI.UpdateClass(mElement, "offset", $"has-[input:checked]:top-[${iOffset}vh]"$)
End Sub
'set Content
Sub setContent(s As String)
	sRawContent = s
	CustProps.put("RawContent", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_content"$, sRawContent)
End Sub
'get Background Color
Sub getBackgroundColor As String
    Return sBackgroundColor
End Sub
'get Duration
Sub getDuration As String
        Return sDuration
End Sub
'get Indicator Color
Sub getIndicatorColor As String
        Return sIndicatorColor
End Sub
'get Offset
Sub getOffset As Int
        Return iOffset
End Sub
'get Raw Content
Sub getContent As String
        Return sRawContent
End Sub