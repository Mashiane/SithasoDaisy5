B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Selected As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Group Select, Description: Label
#DesignerProperty: Key: GroupName, DisplayName: Group Name, FieldType: String, DefaultValue: group1, Description: Group Name
#DesignerProperty: Key: RawOptions, DisplayName: Options, FieldType: String, DefaultValue: b4a=b4a; b4i=b4i; b4j=b4j; b4r=b4r, Description: Options
#DesignerProperty: Key: Selected, DisplayName: Selected, FieldType: String, DefaultValue: , Description: Selected
#DesignerProperty: Key: SingleSelect, DisplayName: Single Select, FieldType: Boolean, DefaultValue: False, Description: Single Select
#DesignerProperty: Key: ActiveColor, DisplayName: Active Color, FieldType: String, DefaultValue: #22c55e, Description: Active Color
#DesignerProperty: Key: ChipColor, DisplayName: Chip Color, FieldType: String, DefaultValue: neutral, Description: Chip Color
#DesignerProperty: Key: ChipOutlined, DisplayName: Chip Outlined, FieldType: Boolean, DefaultValue: False, Description: Chip Outlined
#DesignerProperty: Key: Size, DisplayName: Chip Size, FieldType: String, DefaultValue: xs, Description: Button Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-200, Description: Background Color
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: Boolean, DefaultValue: True, Description: Border
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: base-300, Description: Border Color
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: True, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private sActiveColor As String = "#22c55e"
	Private sBackgroundColor As String = "base-200"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private sGroupName As String = ""
	Private sHeight As String = ""
	Private sLabel As String = "Group Select"
	Private sRawOptions As String = "b4a=b4a; b4i=b4i; b4j=b4j; b4r=b4r"
	Private bRoundedBox As Boolean = True
	Private sSelected As String = ""
	Private sShadow As String = "none"
	Private bSingleSelect As Boolean = False
	Private sSize As String = "xs"
	Private sWidth As String = "full"
	Private items As Map
	Private sChipColor As String = "neutral"
	Private bChipOutlined As Boolean = False
	Public CONST CHIPCOLOR_ACCENT As String = "accent"
	Public CONST CHIPCOLOR_ERROR As String = "error"
	Public CONST CHIPCOLOR_GHOST As String = "ghost"
	Public CONST CHIPCOLOR_INFO As String = "info"
	Public CONST CHIPCOLOR_NONE As String = "none"
	Public CONST CHIPCOLOR_NUETRAL As String = "nuetral"
	Public CONST CHIPCOLOR_PRIMARY As String = "primary"
	Public CONST CHIPCOLOR_SECONDARY As String = "secondary"
	Public CONST CHIPCOLOR_SUCCESS As String = "success"
	Public CONST CHIPCOLOR_WARNING As String = "warning"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	UI.Initialize(Me)
	items.Initialize 
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
		sActiveColor = Props.GetDefault("ActiveColor", "#22c55e")
		sActiveColor = modSD5.CStr(sActiveColor)
'		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
'		sBackgroundColor = modSD5.CStr(sBackgroundColor)
		bBorder = Props.GetDefault("Border", True)
		bBorder = modSD5.CBool(bBorder)
		sBorderColor = Props.GetDefault("BorderColor", "base-300")
		sBorderColor = modSD5.CStr(sBorderColor)
		sGroupName = Props.GetDefault("GroupName", "")
		sGroupName = modSD5.CStr(sGroupName)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sLabel = Props.GetDefault("Label", "Group Select")
		sLabel = modSD5.CStr(sLabel)
		sRawOptions = Props.GetDefault("RawOptions", "b4a=b4a; b4i=b4i; b4j=b4j; b4r=b4r")
		sRawOptions = modSD5.CStr(sRawOptions)
		bRoundedBox = Props.GetDefault("RoundedBox", True)
		bRoundedBox = modSD5.CBool(bRoundedBox)
		sSelected = Props.GetDefault("Selected", "")
		sSelected = modSD5.CStr(sSelected)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		bSingleSelect = Props.GetDefault("SingleSelect", False)
		bSingleSelect = modSD5.CBool(bSingleSelect)
		sSize = Props.GetDefault("Size", "xs")
		sSize = modSD5.CStr(sSize)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = modSD5.CStr(sWidth)
		sChipColor = Props.GetDefault("ChipColor", "neutral")
		sChipColor = modSD5.CStr(sChipColor)
		bChipOutlined = Props.GetDefault("ChipOutlined", False)
		bChipOutlined = modSD5.CBool(bChipOutlined)
	End If
	'
	UI.AddClassDT("fieldset")
	If bBorder = True Then UI.AddClassDT("border")
	If sBorderColor <> "" Then UI.AddBorderColorDT(sBorderColor)
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
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
	mElement = mTarget.Append($"[BANCLEAN]
		<fieldset id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
  			<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
  			<div id="${mName}_content" class="flex gap-2 flex-wrap"></div>
		</fieldset>"$).Get("#" & mName)
	BANano.Await(setOptions(sRawOptions))
	BANano.Await(setSelected(sSelected))
End Sub

Sub Clear			'ignoredeadcode
	If mElement = Null Then Return
	UI.ClearByID($"${mName}_content"$)
	items.Initialize 
End Sub

'set Active Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setActiveColor(s As String)
	sActiveColor = s
	CustProps.put("ActiveColor", s)
End Sub
'set Background Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Border
Sub setBorder(b As Boolean)
	bBorder = b
	CustProps.put("Border", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "border")
	Else
		UI.RemoveClass(mElement, "border")
	End If
End Sub
'set Border Color
Sub setBorderColor(s As String)
	sBorderColor = s
	CustProps.put("BorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "bordercolor", "border", s)
End Sub
'set Group Name
Sub setGroupName(s As String)
	sGroupName = s
	CustProps.put("GroupName", s)
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
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
	Dim sout As String = modSD5.remdelim(sb.ToString, ";")
	BANano.Await(setOptions(sout))
End Sub

'set Raw Options
Sub setOptions(s As String)				'ignoredeadcode
	sRawOptions = s
	CustProps.put("RawOptions", s)
	If mElement = Null Then Return
	items.Initialize 
	UI.ClearByID($"${mName}_content"$)
	If s = "" Then Return
	Dim mItems As Map = UI.GetKeyValues(sRawOptions, False)
	Dim sb As StringBuilder
	sb.Initialize
	Dim itemSize As String = modSD5.FixSize("btn", sSize) 
	Dim iType As String = "checkbox"
	If bSingleSelect Then iType = "radio"
	Dim itemColor As String = modSD5.FixColor("btn", sChipColor)
	Dim soutline As String = ""
	If bChipOutlined Then soutline = "btn-outline"
	Dim checkedColor As String = ""
	Dim borderColor As String = ""
	If sActiveColor <> "" Then
		Dim abg As String = modSD5.FixColor("bg", sActiveColor)
		checkedColor = $"checked:${abg}"$
		Dim bbg As String = modSD5.FixColor("border", sActiveColor)
		borderColor = $"checked:${bbg}"$
	End If
	
	For Each k As String In mItems.Keys
		Dim v As String = mItems.Get(k)
		k = modSD5.CleanID(k)
		Dim nk As String = $"${k}_${mName}"$
		sb.Append($"<input id="${k}_${mName}" class="btn ${itemSize} ${itemColor} ${soutline} ${checkedColor} ${borderColor} rounded-full font-normal" name="${sGroupName}" type="${iType}" aria-label="${v}">"$)
		items.Put(nk, nk)
	Next
	UI.AppendByID($"${mName}_content"$, sb.ToString)
	For Each k As String In items.Keys
		UI.OnEventByID(k, "change", Me, "changed")
	Next
End Sub

Sub AddItem(k As String, v As String)
	If mElement = Null Then Return
	k = modSD5.CleanID(k)
	Dim nk As String = $"${k}_${mName}"$
	Dim itemSize As String = modSD5.FixSize("btn", sSize)
	Dim iType As String = "checkbox"
	If bSingleSelect Then iType = "radio"
	Dim itemColor As String = modSD5.FixColor("btn", sChipColor)
	Dim soutline As String = ""
	If bChipOutlined Then soutline = "btn-outline"
	Dim checkedColor As String = ""
	Dim borderColor As String = ""
	If sActiveColor <> "" Then
		Dim abg As String = modSD5.FixColor("bg", sActiveColor)
		checkedColor = $"checked:${abg}"$
		Dim bbg As String = modSD5.FixColor("border", sActiveColor)
		borderColor = $"checked:${bbg}"$
	End If
	
	UI.AppendByID($"${mName}_content"$, $"<input id="${nk}" class="btn ${itemSize} ${itemColor} ${soutline} ${checkedColor} ${borderColor} rounded-full font-normal" name="${sGroupName}" type="${iType}" aria-label="${v}">"$)
	items.Put(nk, nk)
	UI.OnEventByID(nk, "change", Me, "changed")
End Sub

private Sub changed(e As BANanoEvent)		'ignoredeadcode
	Dim nselected As String = getSelected
	BANano.CallSub(mCallBack, $"${mName}_change"$, Array(nselected))
End Sub

'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "rounded-box")
	Else
		UI.RemoveClass(mElement, "rounded-box")
	End If
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

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub

'set Single Select
Sub setSingleSelect(b As Boolean)
	bSingleSelect = b
	CustProps.put("SingleSelect", b)
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
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
'get Group Name
Sub getGroupName As String
	Return sGroupName
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Label
Sub getLabel As String
	Return sLabel
End Sub
'get Raw Options
Sub getOptions As String
	Return sRawOptions
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get Selected
Sub getSelected As String
	Dim selectedItems As List
	selectedItems.Initialize 
	For Each item As String In items.keys
		Dim b As Boolean = UI.GetCheckedByID(item)
		If b Then 
			Dim ok As String = modSD5.MvField(item, 1, "_")
			selectedItems.Add(ok)
		End If
	Next
	sSelected = modSD5.Join(";", selectedItems)
	Return sSelected
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Single Select
Sub getSingleSelect As Boolean
	Return bSingleSelect
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Chip Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setChipColor(s As String)
	sChipColor = s
	CustProps.put("ChipColor", s)
End Sub

'set Chip Outlined
Sub setChipOutlined(b As Boolean)
	bChipOutlined = b
	CustProps.put("ChipOutlined", b)
End Sub

'get Chip Color
Sub getChipColor As String
	Return sChipColor
End Sub

'get Chip Outlined
Sub getChipOutlined As Boolean
	Return bChipOutlined
End Sub

'run validation
Sub IsBlank As Boolean
	Dim v As String = getSelected
	v = modSD5.cstr(v)
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
	sSelected = getSelected
	Return sSelected
End Sub

'set selected
Sub setValue(s As String)
	sSelected = s
	setSelected(s)
End Sub