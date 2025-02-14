B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Value As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Radio Group, Description: Label
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: GroupName, DisplayName: Group Name, FieldType: String, DefaultValue: , Description: Group Name
#DesignerProperty: Key: RawOptions, DisplayName: Options, FieldType: String, DefaultValue: b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r, Description: Raw Options
#DesignerProperty: Key: FitContents, DisplayName: Fit Contents, FieldType: Boolean, DefaultValue: True, Description: Fit Contents
#DesignerProperty: Key: ColumnView, DisplayName: Column View, FieldType: Boolean, DefaultValue: False, Description: Column View
#DesignerProperty: Key: LabelPosition, DisplayName: Label Position, FieldType: String, DefaultValue: right, Description: Label Position, List: left|right
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: CheckedColor, DisplayName: Checked Color, FieldType: String, DefaultValue: , Description: Checked Color
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
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
	Private sBackgroundColor As String = ""
	Private sCheckedColor As String = ""
	Private sColor As String = "none"
	Private sGroupName As String = ""
	Private sHint As String = ""
	Private sLabel As String = "Radio Group"
	Private sSize As String = "none"
	Private sValue As String = ""
	Private sRawOptions As String = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	Private bFitContents As Boolean = True
	Private bColumnView As Boolean = False
	Private sLabelPosition As String = "right"
	Public CONST LABELPOSITION_LEFT As String = "left"
	Public CONST LABELPOSITION_RIGHT As String = "right"
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
		bFitContents = Props.GetDefault("FitContents", True)
		bFitContents = modSD5.CBool(bFitContents)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "")
		sBackgroundColor = modSD5.CStr(sBackgroundColor)
		sCheckedColor = Props.GetDefault("CheckedColor", "")
		sCheckedColor = modSD5.CStr(sCheckedColor)
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sGroupName = Props.GetDefault("GroupName", "")
		sGroupName = modSD5.CStr(sGroupName)
		sHint = Props.GetDefault("Hint", "")
		sHint = modSD5.CStr(sHint)
		sLabel = Props.GetDefault("Label", "Label")
		sLabel = modSD5.CStr(sLabel)
		sSize = Props.GetDefault("Size", "none")
		sSize = modSD5.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sValue = Props.GetDefault("Value", "")
		sValue = modSD5.CStr(sValue)
		sRawOptions = Props.GetDefault("RawOptions", "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r")
		sRawOptions = modSD5.CStr(sRawOptions)
		bColumnView = Props.GetDefault("ColumnView", False)
		bColumnView = modSD5.CBool(bColumnView)
		sLabelPosition = Props.GetDefault("LabelPosition", "right")
		sLabelPosition = modSD5.CStr(sLabelPosition)
	End If
	UI.AddClassDT("fieldset border border-base-300 p-4 rounded-box")
	If bFitContents Then UI.AddClassDT("w-fit")
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
	Select Case bColumnView
	Case True
		mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
				<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
				<div id="${mName}_options"></div>
	      		<label id="${mName}_hint" class="fieldset-label">${sHint}</label>
			</fieldset>"$).Get("#" & mName)
	Case Else		
		'row view
		mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
				<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
				<div id="${mName}_options" class="grid grid-cols-3 gap-4 w-fit"></div>
	      		<label id="${mName}_hint" class="fieldset-label">${sHint}</label>
			</fieldset>"$).Get("#" & mName)
		UI.UpdateClassByID($"${mName}_options"$, "cols", "grid-cols-3")
	End Select
	BANano.Await(setOptions(sRawOptions))
'	setVisible(bVisible)
End Sub


'set Column View
Sub setColumnView(b As Boolean)
	bColumnView = b
	CustProps.put("ColumnView", b)
End Sub
'set Label Position
'options: left|right
Sub setLabelPosition(s As String)
	sLabelPosition = s
	CustProps.put("LabelPosition", s)
End Sub

'get Column View
Sub getColumnView As Boolean
	Return bColumnView
End Sub

'get Label Position
Sub getLabelPosition As String
	Return sLabelPosition
End Sub

Sub setFitContents(b As Boolean)
	bFitContents = b
	CustProps.Put("FitContents", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClass(mElement, "w-fit")
	Else
		UI.RemoveClass(mElement, "w-fit")	
	End If
End Sub

Sub getFitContents As Boolean
	Return bFitContents
End Sub

Sub Clear				'ignoredeadcode
	If mElement = Null Then Return
	UI.ClearByID($"${mName}_options"$)
End Sub

'set Options from a MV field
'b4j:b4j; b4i:b4i; b4r:b4r
Sub setOptions(s As String)			'ignoredeadcode
	sRawOptions = s
	CustProps.put("RawOptions", s)
	If mElement = Null Then Return
	Dim m As Map = UI.GetKeyValues(s, False)
	SetOptionsFromMap(m)
End Sub

'load the items from a map
Sub SetOptionsFromMap(m As Map)			'ignoredeadcode
	If mElement = Null Then Return
	BANano.Await(Clear)
	If bColumnView = False Then
		Dim iSize As Int = m.Size
		UI.UpdateClassByID($"${mName}_options"$, "cols", $"grid-cols-${iSize}"$)
	End If
	If m.Size = 0 Then Return
	'
	Dim rSize As String = modSD5.FixSize("radio", sSize)
	Dim rColor As String = modSD5.FixColor("radio", sColor)
	Dim cColor As String = modSD5.FixColor("checked:text", sCheckedColor)
	Dim sb As StringBuilder
	sb.Initialize
	Dim items As List
	items.Initialize  
	If bColumnView Then
		Select Case sLabelPosition
		Case "left"
			For Each k As String In m.Keys
				Dim v As String = m.Get(k)
				Dim sk As String = modSD5.CleanID(k)
'				sb.Append($"[BANCLEAN]
'					<label id="${sk}_${mName}_host" class="flex cursor-pointer fieldset-label items-center place-content-between mb-2">
'						<span id="${sk}_${mName}_label">${v}</span>
'						<input type="radio" name="${sGroupName}" value="${sk}" class="radio ${rColor} ${rSize} ${cColor}"/>
'					</label>"$)
					
				sb.Append($"<div id="${sk}_${mName}_host" class="flex items-center justify-between mb-2">
			      <label class="cursor-pointer select-none">
			        <span id="${sk}_${mName}_label">${v}</span>
			      </label>
			      <input id="${sk}_${mName}" name="${sGroupName}" value="${sk}" type="radio" class="radio ${rColor} ${rSize} ${cColor}"/>
			    </div>"$)
				items.Add($"${sk}_${mName}"$)
			Next
		Case "right"
			For Each k As String In m.Keys
				Dim v As String = m.Get(k)
				Dim sk As String = modSD5.CleanID(k)
'				sb.Append($"[BANCLEAN]
'					<label id="${sk}_${mName}_host" class="flex cursor-pointer items-center fieldset-label mb-2">
'					<input type="radio" name="${sGroupName}" value="${sk}" class="radio ${rColor} ${rSize} ${cColor}"/>
'					<span id="${sk}_${mName}_label">${v}</span>
'				</label>"$)
				'
					sb.Append($"<label id="${sk}_${mName}_host" class="flex gap-2 items-center cursor-pointer mb-2">
      					<input id="${sk}_${mName}" type="radio" name="${sGroupName}" value="${sk}" class="radio ${rColor} ${rSize} ${cColor}"/>
      					<span id="${sk}_${mName}_label">${v}</span>
    				</label>"$)
					items.Add($"${sk}_${mName}"$)
			Next
		End Select
	Else	
		For Each k As String In m.Keys
			Dim v As String = m.Get(k)
			Dim sk As String = modSD5.CleanID(k)
			sb.Append($"[BANCLEAN]
				<div id="${sk}_${mName}_host" class="flex gap-3 items-center cursor-pointer">
              		<input id="${sk}_${mName}" name="${sGroupName}" type="radio" value="${sk}" class="radio ${rColor} ${rSize} ${cColor}"/>
              		<span id="${sk}_${mName}_label" class="text-start">${v}</span> 
            	</div>"$)
			items.Add($"${sk}_${mName}"$)
		Next
	End If	
	BANano.Await(UI.AppendByID($"${mName}_options"$, sb.ToString))
	For Each item As String In items
		UI.OnEventByID(item, "change", Me, "changed")
	Next
End Sub

private Sub changed(e As BANanoEvent)			'ignoreDeadCode
	e.PreventDefault
	Dim xChecked As String = UI.GetValueByID(e.ID)
	BANano.CallSub(mCallBack, $"${mEventName}_change"$, Array(xChecked))
End Sub


'load the items from a list
Sub SetOptionsFromList(m As List)
	If mElement = Null Then Return
	Dim nm As Map = CreateMap()
	For Each k As String In m
		Dim sk As String = modSD5.CleanID(k)
		nm.Put(sk, k)
	Next
	SetOptionsFromMap(nm)
End Sub

'get Raw Options
Sub getOptions As String
	Return sRawOptions
End Sub
'set Aria Label
'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	'If mElement = Null Then Return
	'If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Checked Color
Sub setCheckedColor(s As String)
	sCheckedColor = s
	CustProps.put("CheckedColor", s)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
End Sub
'set Group Name
Sub setGroupName(s As String)
	sGroupName = s
	CustProps.put("GroupName", s)
End Sub
'set Hint
Sub setHint(s As String)
	sHint = s
	CustProps.put("Hint", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_hint"$, s)
End Sub
'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
End Sub
'set Value
Sub setValue(s As String)
	sValue = s
	CustProps.put("Value", s)
	'If mElement = Null Then Return
	'mElement.SetValue(s)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Btn
'get Checked Color
Sub getCheckedColor As String
	Return sCheckedColor
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Group Name
Sub getGroupName As String
	Return sGroupName
End Sub
'get Hint
Sub getHint As String
	Return sHint
End Sub
'get Label
Sub getLabel As String
	Return sLabel
End Sub
'get Value
Sub getValue As String
	'sValue = mElement.getvalue
	Return sValue
End Sub