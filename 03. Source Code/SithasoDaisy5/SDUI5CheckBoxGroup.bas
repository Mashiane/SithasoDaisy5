B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Value As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TypeOf, DisplayName: Type, FieldType: String, DefaultValue: checkbox, Description: Type Of, List: checkbox|toggle
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: CheckBox Group, Description: Label
#DesignerProperty: Key: LegendColor, DisplayName: Label Color, FieldType: String, DefaultValue: , Description: Label Color
#DesignerProperty: Key: RawOptions, DisplayName: Options, FieldType: String, DefaultValue: b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r, Description: Options
#DesignerProperty: Key: Selected, DisplayName: Selected, FieldType: String, DefaultValue: , Description: Selected
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: CheckedColor, DisplayName: Checked Color, FieldType: String, DefaultValue: , Description: Checked Color
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: GroupName, DisplayName: Group Name, FieldType: String, DefaultValue: , Description: Group Name
#DesignerProperty: Key: ColumnView, DisplayName: Column View, FieldType: Boolean, DefaultValue: False, Description: Column View
#DesignerProperty: Key: LabelPosition, DisplayName: Label Position, FieldType: String, DefaultValue: right, Description: Label Position, List: left|right
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-200, Description: Background Color
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: Boolean, DefaultValue: True, Description: Border
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: base-300, Description: Border Color
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: True, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=4; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A(all)-X(LR)-Y(TB)-T-B-L-R
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
	Private sPaddingAXYTBLR As String = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private bEnabled As Boolean = True	'ignore
	Public Tag As Object
	Private sBackgroundColor As String = "base-200"
	Private sCheckedColor As String = ""
	Private sColor As String = "none"
	Private sGroupName As String = ""
	Private sHint As String = ""
	Private sLabel As String = "CheckBox Group"
	Private sSize As String = "none"
	Private sRawOptions As String = "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r"
	Private bColumnView As Boolean = False
	Private sLabelPosition As String = "right"
	Public CONST LABELPOSITION_LEFT As String = "left"
	Public CONST LABELPOSITION_RIGHT As String = "right"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private bRoundedBox As Boolean = True
	Private sWidth As String = "full"
	Private sHeight As String = ""
	Private items As Map
	Private sSelected As String = ""
	Private sShadow As String = "none"
	Private sTypeOf As String = "checkbox"
	Private sLegendColor As String = ""
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	BANano.DependsOnAsset("checkbox-group.js")
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	items.Initialize
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("TypeOf", "checkbox")
	CustProps.Put("Label", "CheckBox Group")
	CustProps.Put("LegendColor", "")
	CustProps.Put("RawOptions", "b4a:b4a; b4i:b4i; b4j:b4j; b4r:b4r")
	CustProps.Put("Selected", "")
	CustProps.Put("Color", "none")
	CustProps.Put("CheckedColor", "")
	CustProps.Put("Size", "none")
	CustProps.Put("GroupName", "")
	CustProps.Put("ColumnView", False)
	CustProps.Put("LabelPosition", "right")
	CustProps.Put("BackgroundColor", "base-200")
	CustProps.Put("Border", True)
	CustProps.Put("BorderColor", "base-300")
	CustProps.Put("RoundedBox", True)
	CustProps.Put("Shadow", "none")
	CustProps.Put("Height", "")
	CustProps.Put("Width", "full")
	CustProps.Put("Hint", "")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=4; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
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
'		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
'		sBackgroundColor = UI.CStr(sBackgroundColor)
		bBorder = Props.GetDefault("Border", True)
		bBorder = UI.CBool(bBorder)
		sBorderColor = Props.GetDefault("BorderColor", "base-300")
		sBorderColor = UI.CStr(sBorderColor)
		sCheckedColor = Props.GetDefault("CheckedColor", "")
		sCheckedColor = UI.CStr(sCheckedColor)
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sGroupName = Props.GetDefault("GroupName", "")
		sGroupName = UI.CStr(sGroupName)
		sHint = Props.GetDefault("Hint", "")
		sHint = UI.CStr(sHint)
		sLabel = Props.GetDefault("Label", "Label")
		sLabel = UI.CStr(sLabel)
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sRawOptions = Props.GetDefault("RawOptions", "b4a=b4a; b4j=b4j; b4i=b4i; b4r=b4r")
		sRawOptions = UI.CStr(sRawOptions)
		bColumnView = Props.GetDefault("ColumnView", False)
		bColumnView = UI.CBool(bColumnView)
		sLabelPosition = Props.GetDefault("LabelPosition", "right")
		sLabelPosition = UI.CStr(sLabelPosition)
		bRoundedBox = Props.GetDefault("RoundedBox", True)
		bRoundedBox = UI.CBool(bRoundedBox)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = UI.CStr(sWidth)
		sSelected = Props.GetDefault("Selected", "")
		sSelected = UI.CStr(sSelected)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sTypeOf = Props.GetDefault("TypeOf", "checkbox")
		sTypeOf = UI.CStr(sTypeOf)
		sLegendColor = Props.GetDefault("LegendColor", "")
		sLegendColor = UI.CStr(sLegendColor)
	End If
	'
	UI.AddClassDT("fieldset")
	If bBorder Then UI.AddClassDT("border")
	If sBorderColor <> "" Then UI.AddBorderColorDT(sBorderColor)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddClassDT("shadow-" & sShadow)
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
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
			<fieldset id="${mName}_control" class="${xclasses} rounded-sm" ${xattrs} style="${xstyles}">
				<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
				<div id="${mName}_options"></div>
	      		<label id="${mName}_hint" class="fieldset-label hidden">${sHint}</label>
			</fieldset>"$).Get("#" & mName)
		Case Else
			'row view
			mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="${xclasses} rounded-sm" ${xattrs} style="${xstyles}">
				<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
				<div id="${mName}_options" class="grid grid-cols-3 gap-4 w-fit"></div>
	      		<label id="${mName}_hint" class="fieldset-label hidden">${sHint}</label>
			</fieldset>"$).Get("#" & mName)
			UI.UpdateClassByID($"${mName}_options"$, "cols", "grid-cols-3")
	End Select
	setOptions(sRawOptions)
	setSelected(sSelected)
	setLegendColor(sLegendColor)
'	setVisible(bVisible)
End Sub

Sub setLegendColor(s As String)			'ignoredeadcode
	sLegendColor = s
	CustProps.Put("LegendColor", s)
	UI.SetTextColorByID($"${mName}_legend"$, s)
End Sub

Sub getLegendColor As String
	Return sLegendColor
End Sub

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_control"$, "shadow-" & s)
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'set Selected
Sub setSelected(s As String)					'ignoredeadcode
	sSelected = s
	CustProps.put("Selected", s)
	If mElement = Null Then Return
	Dim selectedList As List = UI.GetOptions(s)
	'uncheck everything
	For Each item As String In items.keys
		UI.SetCheckedByID(item, False)
	Next
	'check what is available
	For Each item As String In selectedList
		Dim npart As String = $"${item}_${mName}"$
		UI.SetCheckedByID(npart, True)
	Next
End Sub

Sub AddOption(k As String, v As String)
	If mElement = Null Then Return
	k = UI.CleanID(k)
	Dim rSize As String = UI.FixSize(sTypeOf, sSize)
	Dim rColor As String = UI.FixColor(sTypeOf, sColor)
	
	Dim cColor As String = ""
	Dim checkedColor As String = ""
	Dim checkedBorder As String = ""
	
	If sCheckedColor <> "" Then
'		cColor  = UI.FixColor("checked:text", sCheckedColor)
		checkedColor  = UI.FixColor("checked:bg", sCheckedColor)
		checkedBorder = UI.FixColor("checked:border", sCheckedColor)
	End If
	
	Dim sb As StringBuilder
	sb.Initialize
	'
	If bColumnView Then
		Select Case sLabelPosition
			Case "left"
				sb.Append($"<div id="${k}_${mName}_host" class="flex items-center justify-between mb-2">
		      <label class="cursor-pointer select-none">
			  	<span id="${k}_${mName}_label">${v}</span>
			  </label>
		      <input id="${k}_${mName}" name="${sGroupName}[]" value="${k}" type="checkbox" class="${sTypeOf} ${rColor} ${rSize} ${cColor} ${checkedColor} ${checkedBorder}"/>
		  </div>"$)
				items.put($"${k}_${mName}"$, $"${k}_${mName}"$)
			Case "right"
				sb.Append($"<label id="${k}_${mName}_host" class="flex gap-2 items-center cursor-pointer mb-2">
			<input id="${k}_${mName}" type="checkbox" name="${sGroupName}[]" value="${k}" class="${sTypeOf} ${rColor} ${rSize} ${cColor} ${checkedColor} ${checkedBorder}"/>
			<span id="${k}_${mName}_label">${v}</span>
			</label>"$)
				items.put($"${k}_${mName}"$, $"${k}_${mName}"$)
		End Select
	Else
		sb.Append($"[BANCLEAN]
		<div id="${k}_${mName}_host" class="flex gap-3 items-center cursor-pointer">
            <input id="${k}_${mName}" name="${sGroupName}[]" type="checkbox" value="${k}" class="${sTypeOf} ${rColor} ${rSize} ${cColor} ${checkedColor} ${checkedBorder}"/>
            <span id="${k}_${mName}_label" class="text-start">${v}</span> 
        </div>"$)
		items.put($"${k}_${mName}"$, $"${k}_${mName}"$)
	End If
	UI.AppendByID($"${mName}_options"$, sb.ToString)
	UI.OnEventByID($"${k}_${mName}"$, "change", Me, "changed")
End Sub

'get Selected
Sub getSelected As String
	Dim selectedItems As List
	selectedItems.Initialize
	For Each item As String In items.keys
		Dim b As Boolean = UI.GetCheckedByID(item)
		If b Then
			Dim ok As String = UI.MvField(item, 1, "_")
			selectedItems.Add(ok)
		End If
	Next
	sSelected = UI.Join(";", selectedItems)
	Return sSelected
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

Sub Clear				'ignoredeadcode
	If mElement = Null Then Return
	UI.ClearByID($"${mName}_options"$)
	items.Initialize 
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
	Clear
	If bColumnView = False Then
		Dim iSize As Int = m.Size
		UI.UpdateClassByID($"${mName}_options"$, "cols", $"grid-cols-${iSize}"$)
	End If
	If m.Size = 0 Then Return
	'
	Dim rSize As String = UI.FixSize(sTypeOf, sSize)
	Dim rColor As String = UI.FixColor(sTypeOf, sColor)
	Dim cColor As String = ""
	Dim checkedColor As String = ""
	Dim checkedBorder As String = ""
	
	If sCheckedColor <> "" Then
'		cColor  = UI.FixColor("checked:text", sCheckedColor)
		checkedColor  = UI.FixColor("checked:bg", sCheckedColor)
		checkedBorder = UI.FixColor("checked:border", sCheckedColor)
	End If
	
	Dim sb As StringBuilder
	sb.Initialize
	items.Initialize
	If bColumnView Then
		Select Case sLabelPosition
			Case "left"
				For Each k As String In m.Keys
					Dim v As String = m.Get(k)
					k = UI.CleanID(k)
					sb.Append($"<div id="${k}_${mName}_host" class="flex items-center justify-between mb-2">
			      <label class="cursor-pointer select-none">
			        <span id="${k}_${mName}_label">${v}</span>
			      </label>
			      <input id="${k}_${mName}" name="${sGroupName}[]" value="${k}" type="checkbox" class="${sTypeOf} ${rColor} ${rSize} ${cColor} ${checkedColor} ${checkedBorder}"/>
			    </div>"$)
					items.put($"${k}_${mName}"$, $"${k}_${mName}"$)
				Next
			Case "right"
				For Each k As String In m.Keys
					Dim v As String = m.Get(k)
					k = UI.CleanID(k)
					sb.Append($"<label id="${k}_${mName}_host" class="flex gap-2 items-center cursor-pointer mb-2">
      					<input id="${k}_${mName}" type="checkbox" name="${sGroupName}[]" value="${k}" class="${sTypeOf} ${rColor} ${rSize} ${cColor} ${checkedColor} ${checkedBorder}"/>
      					<span id="${k}_${mName}_label">${v}</span>
    				</label>"$)
					items.put($"${k}_${mName}"$, $"${k}_${mName}"$)
				Next
		End Select
	Else
		For Each k As String In m.Keys
			Dim v As String = m.Get(k)
			k = UI.CleanID(k)
			sb.Append($"[BANCLEAN]
				<div id="${k}_${mName}_host" class="flex gap-3 items-center cursor-pointer">
              		<input id="${k}_${mName}" name="${sGroupName}[]" type="checkbox" value="${k}" class="${sTypeOf} ${rColor} ${rSize} ${cColor} ${checkedColor} ${checkedBorder}"/>
              		<span id="${k}_${mName}_label" class="text-start">${v}</span> 
            	</div>"$)
			items.put($"${k}_${mName}"$, $"${k}_${mName}"$)
		Next
	End If
	'
	UI.AppendByID($"${mName}_options"$, sb.ToString)
	For Each item As String In items.keys
		UI.OnEventByID(item, "change", Me, "changed")
	Next
End Sub

'set items chips that can be selected
'pass blank to
Sub SetItemsChips(titems As Map)
	Dim sb As StringBuilder
	sb.Initialize
	For Each k As String In titems.Keys
		Dim v As String = titems.Get(k)
		sb.Append(k)
		sb.Append(":")
		sb.Append(v)
		sb.Append(";")
	Next
	Dim sout As String = UI.remdelim(sb.ToString, ";")
	setOptions(sout)
End Sub

private Sub changed(e As BANanoEvent)			'ignoreDeadCode
	Dim nselected As String = getSelected
	BANano.CallSub(mCallBack, $"${mName}_change"$, Array(nselected))
End Sub


'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeightByID($"${mName}_control"$, sHeight)
End Sub

Sub getHeight As String
	Return sHeight
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidthByID($"${mName}_control"$, sWidth)
End Sub

Sub getWidth As String
	Return sWidth
End Sub

'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_control"$, "rounded-box")
	Else
		UI.RemoveClassByID($"${mName}_control"$, "rounded-box")
	End If
End Sub

Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub

'load the items from a list
Sub SetOptionsFromList(m As List)
	If mElement = Null Then Return
	Dim nm As Map = CreateMap()
	For Each k As String In m
		Dim sk As String = UI.CleanID(k)
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
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_control"$, sBackgroundColor)
End Sub

Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub

'set Border
Sub setBorder(b As Boolean)
	bBorder = b
	CustProps.put("Border", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_control"$, "border")
	Else
		UI.RemoveClassByID($"${mName}_control"$, "border")
	End If
End Sub

Sub getBorder As Boolean
	Return bBorder
End Sub

'set Border Color
Sub setBorderColor(s As String)
	sBorderColor = s
	CustProps.put("BorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColorByID($"${mName}_control"$, "bordercolor", "border", s)
End Sub

Sub getBorderColor As String
	Return sBorderColor
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
	UI.SetHTMLByID($"${mName}_hint"$, s)
	If s = "" Then 
		UI.SetVisibleByID($"${mName}_hint"$, False)
	Else
		UI.SetVisibleByID($"${mName}_hint"$, True)
	End If
	UI.SetTextColorByID($"${mName}_hint"$, $"base-content"$)
End Sub

'set Hint
Sub HintError(s As String)			'ignoredeadcode
	If mElement = Null Then Return
	UI.SetHTMLByID($"${mName}_hint"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_hint"$, False)
		UI.SetTextColorByID($"${mName}_hint"$, "base-content")
	Else
		UI.SetVisibleByID($"${mName}_hint"$, True)
		UI.SetTextColorByID($"${mName}_hint"$, "error")
	End If
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

'run validation
Sub IsBlank As Boolean
	Dim v As String = getSelected
	v = UI.CStr(v)
	v = v.Trim
	If v = "" Then
		setBorderColor("error")
		Return True
	End If
	setBorderColor("success")
	Return False
End Sub
Sub ResetValidation
	Try
		setBorderColor("success")
	Catch
	End Try		'ignore
End Sub

'get selected
Sub getValue As String
	If mElement = Null Then Return ""
	sSelected = getSelected
	Return sSelected
End Sub

'set selected
Sub setValue(s As String)
	sSelected = s
	setSelected(s)
End Sub

Sub setTypeOf(s As String)
	sTypeOf = s
	CustProps.Put("TypeOf", s)
End Sub

Sub getTypeOf As String
	Return sTypeOf
End Sub