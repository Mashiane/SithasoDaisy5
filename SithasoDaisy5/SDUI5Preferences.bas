B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (item As Map)
#Event: SearchClick (e As BANanoEvent)
#Event: SearchKeyUp (e As BANanoEvent)
#Event: SearchClear (e As BANanoEvent)
#Event: Property_Toggle (Status As Boolean)
#Event: Property_AppendClick (e As BANanoEvent)
#Event: Property_PrependClick (e As BANanoEvent)
#Event: Property_FileChange (e As BANanoEvent)
#Event: Property_Click (e As BANanoEvent)
#Event: Button_Click (e As BANanoEvent)
#Event: Button_FileChange (e As BANanoEvent)
'
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Property Bag, Description: Title
#DesignerProperty: Key: SearchVisible, DisplayName: Search Visible, FieldType: Boolean, DefaultValue: True, Description: Search Visible
#DesignerProperty: Key: SearchSize, DisplayName: Search Size, FieldType: String, DefaultValue: sm, Description: Search Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: SearchWidth, DisplayName: Search Width, FieldType: String, DefaultValue: 300px, Description: Search Width
#DesignerProperty: Key: ButtonSize, DisplayName: Button Size, FieldType: String, DefaultValue: sm, Description: Button Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: ButtonsOutlined, DisplayName: Buttons Outlined, FieldType: Boolean, DefaultValue: False, Description: Buttons Outlined
#DesignerProperty: Key: ComponentSize, DisplayName: Component Size, FieldType: String, DefaultValue: sm, Description: Component Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: IncludeProjectName, DisplayName: Include Project Name, FieldType: Boolean, DefaultValue: False, Description: Include Project Name
#DesignerProperty: Key: IncludeViewName, DisplayName: Include View Name, FieldType: Boolean, DefaultValue: False, Description: Include View Name
#DesignerProperty: Key: IsZebra, DisplayName: Is Zebra, FieldType: Boolean, DefaultValue: False, Description: Is Zebra
#DesignerProperty: Key: PropertyPadding, DisplayName: Property Padding, FieldType: String, DefaultValue: py-1, Description: Property Padding
#DesignerProperty: Key: TooltipColor, DisplayName: Tooltip Color, FieldType: String, DefaultValue: none, Description: Tooltip Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: TooltipPosition, DisplayName: Tooltip Position, FieldType: String, DefaultValue: right, Description: Position, List: bottom|left|right|top
#DesignerProperty: Key: WrapActions, DisplayName: Wrap Actions, FieldType: Boolean, DefaultValue: True, Description: Wrap Actions
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

Private Sub Class_Globals
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
	Private sButtonSize As String = "sm"
	Private bButtonsOutlined As Boolean = False
	Private sComponentSize As String = "sm"
	Private bIncludeProjectName As Boolean = False
	Private bIncludeViewName As Boolean = False
	Private bIsZebra As Boolean = False
	Private sPropertyPadding As String = "py-2"
	Private sSearchSize As String = "sm"
	Private bSearchVisible As Boolean = True
	Private sSearchWidth As String = "300px"
	Private sTitle As String = "Property Bag"
	Private sTooltipColor As String = "none"
	Private bWrapActions As Boolean = True
	
	Private propBagKeys As Map
	Private propBagValues As Map
	Public Designs As Map
	Private Types As Map
	Private ComponentType As Map
	Private Overwrites As Map
	'
	Private validations As Map
	Private LastColors As Map
	Private RGOptions As Map
	Private Compulsory As Map
	Private datesFP As Map
	Private signatures As Map
	Private rolldate As Map
	Private propList As List
	Public PropertyBuilder As StringBuilder
	Private DPValue As Map
	Private datepickers As Map
	Private sSearchWidth As String = "300px"
	Public IsLive As Boolean = True
	Private sShadow As String = "none"
	Private sTooltipPosition As String = "right"
End Sub

Sub Initialize (CallBack As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = CallBack
	CustProps.Initialize
	
	propBagKeys.Initialize
	propBagValues.Initialize
	Types.Initialize
	ComponentType.Initialize
	LastColors.Initialize
	RGOptions.Initialize
	Compulsory.Initialize
	datesFP.Initialize
	signatures.Initialize
	rolldate.Initialize
	Overwrites.Initialize
	propList.Initialize
	PropertyBuilder.Initialize
	CustProps.Initialize
	validations.Initialize
	DPValue.Initialize
	datepickers.Initialize
	BANano.DependsOnAsset("flatpickr.min.css")
	BANano.DependsOnAsset("material_blue.css")
	BANano.DependsOnAsset("flatpickr.min.js")
	BANano.DependsOnAsset("fplocale.min.js")
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

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	CustProps = Props
	mTarget = Target
	If Props <> Null Then
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sButtonSize = Props.GetDefault("ButtonSize", "sm")
		sButtonSize = UI.CStr(sButtonSize)
		bButtonsOutlined = Props.GetDefault("ButtonsOutlined", False)
		bButtonsOutlined = UI.CBool(bButtonsOutlined)
		sComponentSize = Props.GetDefault("ComponentSize", "sm")
		sComponentSize = UI.CStr(sComponentSize)
		bIncludeProjectName = Props.GetDefault("IncludeProjectName", False)
		bIncludeProjectName = UI.CBool(bIncludeProjectName)
		bIncludeViewName = Props.GetDefault("IncludeViewName", False)
		bIncludeViewName = UI.CBool(bIncludeViewName)
		bIsZebra = Props.GetDefault("IsZebra", False)
		bIsZebra = UI.CBool(bIsZebra)
		sPropertyPadding = Props.GetDefault("PropertyPadding", "py-1")
		sPropertyPadding = UI.CStr(sPropertyPadding)
		sSearchSize = Props.GetDefault("SearchSize", "sm")
		sSearchSize = UI.CStr(sSearchSize)
		bSearchVisible = Props.GetDefault("SearchVisible", True)
		bSearchVisible = UI.CBool(bSearchVisible)
		sSearchWidth = Props.GetDefault("SearchWidth", "300px")
		sSearchWidth = UI.CStr(sSearchWidth)
		sTitle = Props.GetDefault("Title", "Property Bag")
		sTitle = UI.CStr(sTitle)
		sTooltipColor = Props.GetDefault("TooltipColor", "none")
		sTooltipColor = UI.CStr(sTooltipColor)
		If sTooltipColor = "none" Then sTooltipColor = ""
		bWrapActions = Props.GetDefault("WrapActions", True)
		bWrapActions = UI.CBool(bWrapActions)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sTooltipPosition = Props.GetDefault("TooltipPosition", "right")
		sTooltipPosition = UI.CStr(sTooltipPosition)
	End If
	'
	UI.AddClassDT("card-border card w-full bg-base-100")
	If sShadow <> "" Then UI.AddClassDT("shadow-" & sShadow)
	'If sBackgroundColor <> "base-100" Then UI.AddBackgroundColorDT(sBackgroundColor)
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
        	<div id="${mName}_toolbar" class="m-3 -mb-3 flex">
        		<h2 id="${mName}_title" class="ml-1 card-title w-full">${sTitle}</h2>
        		<div id="${mName}_searchbox" class="join hide justify-end py-4 mx-2">
  					<div id="${mName}_searchboxgroup" class="hide w-full">
    					<label id="${mName}_searchboxlabel" class="m-0 p-0 input join-item w-full">
      						<input id="${mName}_search" autocomplete="off" type="search" placeholder="Search…" class="input hide"></input>
    					</label>
  					</div>
  					<button id="${mName}_searchbtn" class="btn btn-square hide join-item">
    					<i id="${mName}_searchbtnicon" class="fa-solid fa-magnifying-glass hide"></i>
  					</button>
				</div>
				<div id="${mName}_actions" class="hide flex flex-1 mr-0 justify-end gap-1"></div>
        	</div>
			<div id="${mName}_divider" class="m-0 divider"></div>
        	<div id="${mName}_card" class="overflow-x-auto">
        		<form id="${mName}_form" name="${mName}" novalidate="novalidate">
        			<table id="${mName}_table" class="table w-full ${mName}table [&_tr>*]:border-none">
        				<tbody id="${mName}_body"></tbody>
        			</table>
        		</form>
        		<div id="${mName}_bottomdivider" class="divider hide"></div>
        		<div id="${mName}_bottomactions" class="card-actions hide justify-end"></div>
        	</div>
        </div>"$).Get($"#${mName}"$)
	setTitle(sTitle)	
	setIsZebra(bIsZebra)
	setWrapActions(bWrapActions)
	If bSearchVisible Then
		setSearchWidth(sSearchWidth)
		setSearchSize(sSearchSize)
		BANano.GetElement($"#${mName}_searchbtn"$).On("click", mCallBack, $"${mName}_SearchClick"$)
		Dim txtsearch As BANanoElement = BANano.GetElement($"#${mName}_search"$)
		txtsearch.On("keyup", mCallBack, $"${mName}_SearchKeyUp"$)
		txtsearch.On("search", mCallBack, $"${mName}_SearchClear"$)
	End If
	setSearchVisible(bSearchVisible)
End Sub

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "shadow-" & s)
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub


'set Button Size
'options: xs|none|sm|md|lg|xl
Sub setButtonSize(s As String)
	sButtonSize = s
	CustProps.put("ButtonSize", s)
End Sub

'set Buttons Outlined
Sub setButtonsOutlined(b As Boolean)
	bButtonsOutlined = b
	CustProps.put("ButtonsOutlined", b)
End Sub

'set Component Size
'options: xs|none|sm|md|lg|xl
Sub setComponentSize(s As String)
	sComponentSize = s
	CustProps.put("ComponentSize", s)
End Sub
'set Include Project Name
Sub setIncludeProjectName(b As Boolean)
	bIncludeProjectName = b
	CustProps.put("IncludeProjectName", b)
End Sub
'set Include View Name
Sub setIncludeViewName(b As Boolean)
	bIncludeViewName = b
	CustProps.put("IncludeViewName", b)
End Sub
'set Is Zebra
Sub setIsZebra(b As Boolean)			'ignoredeadcode
	bIsZebra = b
	CustProps.put("IsZebra", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_table"$, "table-zebra")
	Else
		UI.RemoveClassByID($"${mName}_table"$, "table-zebra")
	End If
End Sub
'set Property Padding
Sub setPropertyPadding(s As String)
	sPropertyPadding = s
	CustProps.put("PropertyPadding", s)
End Sub
'set Search Size
'options: xs|none|sm|md|lg|xl
'size constants
Sub setSearchSize(s As String)			'ignoredeadcode
	sSearchSize = s
	CustProps.put("SearchSize", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetSizeByID($"${mName}_search"$, "size", "input", s)
	UI.SetSizeByID($"${mName}_searchbtn"$, "size", "btn", s)
	UI.SetSizeByID($"${mName}_searchboxlabel"$, "size", "input", s)
End Sub
'set Search Visible
Sub setSearchVisible(b As Boolean)		'ignoredeadcode
	bSearchVisible = b
	CustProps.put("SearchVisible", b)
	If mElement = Null Then Return
	If b Then
		'search is visible leave at zero
		UI.SetVisibleByID($"#${mName}_searchbox"$, b)
		UI.SetVisibleByID($"#${mName}_search"$, b)
		UI.SetVisibleByID($"#${mName}_searchboxgroup"$, b)
		UI.SetVisibleByID($"#${mName}_searchbtn"$, b)
		UI.SetVisibleByID($"#${mName}_searchbtnicon"$, b)
		UI.SetVisibleByID($"#${mName}_searchboxlabel"$, b)
	Else
		UI.RemoveClassByID($"${mName}_divider"$, "m-0")
	End If
End Sub
'set Search Width
Sub setSearchWidth(s As String)		'ignoredeadcode
	sSearchWidth = s
	CustProps.put("SearchWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidthByID($"${mName}_search"$, s)
End Sub
'set Title
Sub setTitle(s As String)				'ignoredeadcode
	sTitle = s
	CustProps.put("Title", s)
	If mElement = Null Then Return
	If s = "" Then
		UI.SetVisibleByID($"${mName}_title"$, False)
	Else
		UI.SetVisibleByID($"${mName}_title"$, True)
		UI.SetTextByID($"${mName}_title"$, s)
	End If
End Sub
'set Tooltip Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setTooltipColor(s As String)
	sTooltipColor = s
	CustProps.put("TooltipColor", s)
End Sub
'set Wrap Actions
Sub setWrapActions(b As Boolean)			'ignoredeadcode
	bWrapActions = b
	CustProps.put("WrapActions", b)
	If mElement = Null Then Return
	If b Then
		BANano.GetElement($"#${mName}_actions"$).AddClass("flex-wrap")
	Else
		BANano.GetElement($"#${mName}_actions"$).RemoveClass("flex-wrap")
	End If
End Sub
'get Button Size
Sub getButtonSize As String
	Return sButtonSize
End Sub
'get Buttons Outlined
Sub getButtonsOutlined As Boolean
	Return bButtonsOutlined
End Sub
'get Component Size
Sub getComponentSize As String
	Return sComponentSize
End Sub
'get Include Project Name
Sub getIncludeProjectName As Boolean
	Return bIncludeProjectName
End Sub
'get Include View Name
Sub getIncludeViewName As Boolean
	Return bIncludeViewName
End Sub
'get Is Zebra
Sub getIsZebra As Boolean
	Return bIsZebra
End Sub
'get Property Padding
Sub getPropertyPadding As String
	Return sPropertyPadding
End Sub
'get Search Size
Sub getSearchSize As String
	Return sSearchSize
End Sub
'get Search Visible
Sub getSearchVisible As Boolean
	Return bSearchVisible
End Sub
'get Search Width
Sub getSearchWidth As String
	Return sSearchWidth
End Sub
'get Title
Sub getTitle As String
	Return sTitle
End Sub
'get Tooltip Color
Sub getTooltipColor As String
	Return sTooltipColor
End Sub
'get Wrap Actions
Sub getWrapActions As Boolean
	Return bWrapActions
End Sub

'Sub PropertyConfig
'	ClearPropertyBag
'	AddPropertyTextBox("id", "#", "", "", True, "left")
'	AddPropertySelect("collectionid", "Collection", "", "", True, "left", CreateMap())
'	AddPropertySelect("proptype", "Type", "TextBox", "", True, "left", CreateMap())
'	SetPropertyItemsListSort("proptype", Array("Dialer", "TextBox", "TextBoxGroup", "SelectGroup", "PasswordGroup", "DatePicker", "DateTimePicker", "TimePicker", "Password","Color","Number","Telephone", "Email", "Label", "Link", "TextArea", "Select", "FileInput", "FileInputProgress", "CamCorder", "Camera", "Microphone", "Avatar", "AvatarPlaceholder", "AvatarGroup", "Image", "Progress", "Range", "CheckBox", "Toggle", "RadialProgress", "Rating", "RadioGroup", "PlaceHolder", "Signature", "RollDate","TextAreaChipGroup"))
'	AddPropertyTextBox("proppos", "Position", "01", "", True, "left")
'	AddPropertyTextBox("propname", "Name", "", "", True, "left")
'	AddPropertyTextBox("proptitle", "Title", "", "", True, "left")
'	AddPropertyTextBox("propvalue", "Default Value", "", "", False, "")
'	AddPropertyTextBox("propplaceholder", "Place Holder", "", "", False, "")
'	AddPropertyTextBox("prophinttext", "Hint Text", "", "", False, "")
'	AddPropertyTextBox("properrortext", "Error Text", "", "", False, "")
'	AddPropertySelect("propalign", "Alignment", "left", "", False, "left", CreateMap("left":"Left","center":"Center", "right":"Right"))
'	AddPropertySelect("propdatatype", "Data Type", "String", "", True, "left", CreateMap())
'	SetPropertyItemsListSort("propdatatype", Array("String","Int","Double","Blob","Bool","Date"))
'	AddPropertySelect("propcolumntype", "Column Type", "Normal", "", False, "left", CreateMap())
'	SetPropertyItemsListSort("propcolumntype", Array("Normal","FileSize", "Money", "Date", "DateTime", "Thousand", "Link", "ClickLink", "Email", "Website", "Icon", "IconTitle", "TitleIcon", "Badge", "Rating", "RadialProgress", "Progress", "Range", "CheckBox", "Select", "SelectFromList", "RadioGroupFromList", "RadioGroup", "TextBox", "TextBoxGroup", "SelectGroup", "PasswordGroup", "Dialer", "Password", "Number", "FileInput", "FileInputProgressCamCorder", "FileInputProgressCamera", "FileInputProgressMicrophone", "FileInputProgress","DatePicker", "DatePicker1", "DateTimePicker", "TimePicker", "TextArea", "Toggle","Color", "Avatar", "PlaceHolder", "AvatarPlaceholder","Image", "AvatarTitle", "BadgeAvatarTitle", "AvatarTitleSubTitle", "TitleSubTitle", "AvatarGroup", "BadgeGroup", "None","Telephone"))
'	AddPropertyTextBox("propsubtitle1", "Sub Title", "", "", False, "")
'	AddPropertyTextBox("propsubtitle2", "Sub Title 1", "", "", False, "")
'	AddPropertyToggle("propactive", "Active", True, "success", "")
'	AddPropertyToggle("proprequired", "Required", False, "success", "")
'	AddPropertyToggle("propreadonly", "Read Only", False, "success", "")
'	AddPropertyToggle("propenabled", "Enabled", True, "success", "")
'	AddPropertyToggle("propvisible", "Visible", True, "success", "")
'	AddPropertyToggle("propcolumnvisible", "Column Visible", True, "success", "")
'	AddPropertyToggle("propmerge", "Merge Column", False, "success", "")
'	AddPropertyToggle("propsortby", "Sort By", False, "success", "")
'	AddPropertyToggle("proptotal", "Total (Footer)", False, "success", "")
'	AddPropertyDialer("proprow", "Grid Row Pos", "1", "", False, "left", 1, 1, 100)
'	AddPropertyDialer("propcol", "Grid Col Pos", "1", "", False, "left", 1, 1, 100)
'	AddPropertyTextBox("propsizeondevice", "Size on Device (xs=?; sm=?; md=?; lg=?; xl=?)", "xs=?; sm=?; md=?; lg=?; xl=?", "", False, "")
'	AddPropertyTextBox("propmargin", "Margin (a=?; x=?; y=?; t=?; b=?; l=?; r=?)", "a=?; x=?; y=?; t=?; b=?; l=?; r=?", "", False, "")
'	AddPropertyTextBox("proppadding", "Padding (a=?; x=?; y=?; t=?; b=?; l=?; r=?)", "a=?; x=?; y=?; t=?; b=?; l=?; r=?", "", False, "")
'	AddPropertyToggle("propcenterchildren", "Center Children", False, "success", "")
'	AddPropertySelect("proponchange", "On Change Event", "nothing", "", False, "", CreateMap("upload":"Upload File","update":"Update Image","excel":"Upload Excel","other":"Other Event","nothing":"Do Nothing"))
'	AddPropertyTextBox("propupdate", "Update Src Field", "", "", False, "left")
'	AddPropertyTextArea("propoptions", "Options List (;)", "", "", False, "left")  'select/RadioGroup
'	AddPropertySelectGroup("propforeigntable", "Foreign Table", "", "", False, "left", CreateMap())
'	SetPropertyAppendIcon("propforeigntable", "fa-solid fa-magnifying-glass")
'	AddPropertySelect("propforeignfield", "Foreign Key", "", "", False, "left", CreateMap())
'	AddPropertySelect("propforeigndisplayfield", "Foreign Display", "", "", False, "left", CreateMap())
'	AddPropertySelect("propforeigndisplayfield1", "Foreign Display 1", "", "", False, "left", CreateMap())
'	AddPropertySelect("propforeigndisplayfield2", "Foreign Display 2", "", "", False, "left", CreateMap())
'	AddPropertyTextBox("propsize", "Size", "", "", False, "left")
'	AddPropertyTextBox("propicon", "Icon", "", "", False, "left")
'	AddPropertyTextBox("propmaxlen", "Max Length", "", "", False, "left")
'	AddPropertyTextBox("proprows", "TextArea Rows", "", "", False, "left")
'	AddPropertyTextBox("propwidth", "Width", "", "", False, "left")
'	AddPropertyTextBox("propheight", "Height", "", "", False, "left")					  'avatar
'	AddPropertySelect("propshape", "Shape", "rounded", "", False, "left", CreateMap())	  'avatar
'	SetPropertyItemsOptions("propshape", "|", True, False, "none|circle|rounded|squircle|heart|hexagon|hexagon-2|decagon|pentagon|diamond|square|parallelogram|parallelogram-2|parallelogram-3|parallelogram-4|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2")
'	AddPropertyTextBox("propurl", "URL", "", "", False, "left")					  'avatar
'	AddPropertyTextBox("propcolor", "Color", "", "", False, "left")					  'progress/range/checkbox/RadialProgress/Rating/RadioGroup
'	AddPropertyTextBox("proptextcolor", "Text Color", "", "", False, "left")
'	AddPropertyTextBox("propbgcolor", "BG Color", "", "", False, "left")
'	AddPropertyTextBox("propstart", "Start Value", "0", "", False, "left")					  'progress/range
'	AddPropertyTextBox("propstep", "Step Value", "1", "", False, "left")					  'progress/range
'	AddPropertyTextBox("propmax", "Max Value", "100", "", False, "left")					  'progress/range
'	AddPropertyTextBox("propprefix", "Prefix", "", "", False, "left")					  'progress/range
'	AddPropertyTextBox("propsuffix", "Suffix", "", "", False, "left")					  'progress/range
'	AddPropertyTextBox("propprepend", "Prepend Icon", "", "", False, "left")					  'progress/range
'	AddPropertyTextBox("propappend", "Append Icon", "", "", False, "left")					  'progress/range
'	AddPropertyTextBox("propdateformat", "Date Format", "Y-m-d H:i", "", False, "left")					  'progress/range
'	AddPropertyTextBox("propdisplayformat", "Date Display Format", "D, d M Y H:i", "", False, "left")					  'progress/range
'	AddPropertyToggle("proptime24", "24 Hour Time", False, "success", "")
'	AddPropertyTextBox("proplocale", "Locale", "en", "", False, "left")
'	AddPropertyTextArea("propdesc", "Description", "", "", False, "left")
'	AddPropertySelect("proptooltippos", "ToolTip Pos", "left", "", False, "", CreateMap())
'	SetPropertyItemsList("proptooltippos", Array("left","bottom", "none", "right", "top"))
'	AddPropertyToggle("propcomputevalue", "Compute Value", False, "success", "")
'	AddPropertyToggle("propcomputering", "Compute Ring", False, "success", "")
'	AddPropertyToggle("propcomputecolor", "Compute Color", False, "success", "")
'	AddPropertyToggle("propcomputebgcolor", "Compute BG Color", False, "success", "")
'	AddPropertyToggle("propcomputetextcolor", "Compute Text Color", False, "success", "")
'	AddPropertyToggle("propcomputeclass", "Compute Class", False, "success", "")
'	ShowPropOnCondition
'End Sub

Sub PropertyBagFromAsset(fileURL As String)
	Dim fContents As String = BANano.Await(BANano.GetFileAsText($"${fileURL}?${DateTime.now}"$, Null, "utf-8"))
	Dim pl As List = BANano.FromJson(fContents)
'	PropertyBagFromList(pl)
End Sub

Sub PropertyBagFromJSON(fContents As String)
	Dim pl As List = BANano.FromJson(fContents)
'	PropertyBagFromList(pl)
End Sub

'refresh the internal property bag
Sub Refresh
'	PropertyBagFromList(propList)
End Sub

'load prop bag from records from a database
'Sub PropertyBagFromList(fContents As List)
'	ClearPropertyBag
'	PropertyBuilder.Initialize
'	For Each record As Map In fContents
'		Dim sproptype As String = record.get("proptype")
'		Dim spropname As String = record.get("propname")
'		Dim sproptitle As String = record.get("proptitle")
'		Dim spropvalue As String = record.get("propvalue")
'		Dim sproprequired As Boolean = record.get("proprequired")
'		sproprequired = UI.CBool(sproprequired)
'		Dim spropreadonly As Boolean = record.get("propreadonly")
'		spropreadonly = UI.CBool(spropreadonly)
'		Dim spropenabled As String = record.get("propenabled")
'		spropenabled = UI.CBool(spropenabled)
'		Dim spropvisible As String = record.get("propvisible")
'		spropvisible = UI.CBool(spropvisible)
'		Dim spropoptions As String = record.get("propoptions")
'		Dim spropsize As String = record.get("propsize")
'		Dim spropwidth As String = record.get("propwidth")
'		Dim spropheight As String = record.get("propheight")
'		Dim spropshape As String = record.get("propshape")
'		Dim spropurl As String = record.get("propurl")
'		Dim spropcolor As String = record.get("propcolor")
'		Dim spropstart As String = record.get("propstart")
'		Dim spropstep As String = record.get("propstep")
'		Dim spropmax As String = record.get("propmax")
'		Dim spropdesc As String = record.get("propdesc")
'		Dim sproptooltippos As String = record.get("proptooltippos")
'		Dim spropdateformat As String = record.Get("propdateformat")
'		Dim spropdisplayformat As String = record.Get("propdisplayformat")
'		Dim sproptime24 As String = record.Get("proptime24")
'		Dim sproplocale As String = record.Get("proplocale")
'		Dim spropprefix As String = record.get("propprefix")
'		Dim spropicon As String = record.get("propicon")
'		spropicon = UI.CStr(spropicon)
'		Dim sPropBadgeTextColor As String = record.GetDefault("propbadgetextcolor", "")
'		sPropBadgeTextColor = UI.CStr(sPropBadgeTextColor)
'		'
'		Dim bPropBadgeRound As Boolean = record.GetDefault("propbadgeround", False)
'		bPropBadgeRound = UI.CBool(bPropBadgeRound)
'		Dim sPropBadgeValue As String = record.GetDefault("propbadgevalue", "")
'		sPropBadgeValue = UI.CStr(sPropBadgeValue)
'		Dim sPropHintId As String = record.getDefault("prophintid", "")
'		sPropHintId = UI.CStr(sPropHintId)
'		Dim bPropMultiple As Boolean = record.GetDefault("propmultiple", False)
'		bPropMultiple = UI.CBool(bPropMultiple)
'		Dim bPropSetHint As Boolean = record.getdefault("propsethint", False)
'		bPropSetHint = UI.CBool(bPropSetHint)
'		Dim bPropSetTooltip As Boolean = record.GetDefault("propsettooltip", False)
'		bPropSetTooltip = UI.CBool(bPropSetTooltip)
'		Dim sPropTextColor As String = record.GetDefault("proptextcolor", "")
'		sPropTextColor = UI.CStr(sPropTextColor)
'		Dim sPropBadgeColor As String = record.GetDefault("propbadgecolor", "")
'		sPropBadgeColor = UI.CStr(sPropBadgeColor)
'		Dim bPropSetBadge As Boolean = record.getdefault("propsetbadge", False)
'		bPropSetBadge = UI.CBool(bPropSetBadge)
'		'
'		spropprefix = UI.CStr(spropprefix)
'		Dim spropsuffix As String = record.get("propsuffix")
'		spropsuffix = UI.CStr(spropsuffix)
'		Dim spropprepend As String = record.get("propprepend")
'		spropprepend = UI.CStr(spropprepend)
'		Dim spropappend As String = record.get("propappend")
'		spropappend = UI.CStr(spropappend)
'		sproplocale = UI.CStr(sproplocale)
'		If sproplocale = "" Then sproplocale = "en"
'		'
'		Dim spropmaxlen As String = record.getdefault("propmaxlen","")
'		spropmaxlen = UI.CStr(spropmaxlen)
'		Dim sproprows As String = record.getdefault("proprows","")
'		sproprows = UI.CStr(sproprows)
'		Dim spropalign As String = record.GetDefault("propalign", "left")
'		spropalign = UI.CStr(spropalign)
'		'
'		Select Case sproptype
'			Case "ToolbarActionButton"
'				AddToolbarActionButton(spropname, sproptitle, spropcolor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarActionButton("${spropname}", "${sproptitle}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarFileUpload"
'				AddToolbarFileUpload(spropname, spropicon, spropcolor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarFileUpload("${spropname}", "${spropicon}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarActionButtonIcon"
'				AddToolbarActionButtonIcon(spropname, spropicon, spropcolor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarActionButtonIcon("${spropname}", "${spropicon}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarDropDown"
'				AddToolbarDropDown(spropname, spropcolor, sproptitle)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarDropDown("${spropname}", "${spropcolor}", "${sproptitle}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarSelect"
'				Dim optm As Map = OptionsToMap(spropoptions)
'				AddToolbarSelect(spropname, spropprepend, spropappend, optm)
'				If IsLive = False Then
'					PropertyBuilderMap(PropertyBuilder, spropname, optm)
'					PropertyBuilder.Append($"${mName}.AddToolbarSelect("${spropname}", "${spropprepend}", "${spropappend}", ${spropname}options)"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarTextBox"
'				AddToolbarTextBox(spropname, spropprepend, spropappend)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarTextBox("${spropname}", "${spropprepend}", "${spropappend}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarFileUpload1"
'				AddToolbarFileUpload1(spropname, spropicon, spropcolor, bPropMultiple)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarFileUpload1("${spropname}", "${spropicon}", "${spropcolor}", ${bPropMultiple})"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarActionButtonIconTextColor"
'				AddToolbarActionButtonIconTextColor(spropname, spropicon, spropcolor, sPropTextColor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarActionButtonIconTextColor("${spropname}", "${spropicon}", "${spropcolor}", "${sPropTextColor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarDropDownIconTextColor"
'				AddToolbarDropDownIconTextColor(spropname, spropicon, spropcolor, sPropTextColor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarDropDownIconTextColor("${spropname}", "${spropicon}", "${spropcolor}", "${sPropTextColor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarDropDownIcon"
'				AddToolbarDropDownIcon(spropname, spropicon, spropcolor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarDropDownIcon("${spropname}", "${spropicon}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarDropDownAvatar"
'				AddToolbarDropDownAvatar(spropname, spropsize, spropurl)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarDropDownAvatar("${spropname}", "${spropsize}", "${spropurl}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarSelectNormal"
'				Dim optm As Map = OptionsToMap(spropoptions)
'				AddToolbarSelectNormal(spropname, optm)
'				If IsLive = False Then
'					PropertyBuilderMap(PropertyBuilder, spropname, optm)
'					PropertyBuilder.Append($"${mName}.AddToolbarSelectNormal("${spropname}", ${spropname}options)"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ToolbarTextBoxNormal"
'				AddToolbarTextBoxNormal(spropname)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddToolbarTextBoxNormal("${spropname}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "Button"
'				AddPropertyActionButton(spropname, sproptitle, spropcolor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyActionButton("${spropname}", "${sproptitle}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "ButtonIcon"
'				AddPropertyActionButtonIcon(spropname, spropicon, spropcolor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyActionButtonIcon("${spropname}", "${spropicon}", "${spropcolor}")"$).Append(CRLF)
'					If sPropTextColor <> "" Then
'						SetToolbarButtonTextColor(spropname, sPropTextColor)
'						PropertyBuilder.Append($"${mName}.SetToolbarButtonTextColor("${spropname}", "${sPropTextColor}")"$).Append(CRLF)
'					End If
'				End If
'			Case "Placeholder"
'				AddPropertyPlaceHolder(spropname, sproptitle, spropvalue)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyPlaceHolder("${spropname}", "${sproptitle}", "${spropvalue}")"$).Append(CRLF)
'				End If
'			Case "Label"
'				AddPropertyLabel(spropname,sproptitle,spropvalue,spropcolor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyLabel("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}")"$).Append(CRLF)
'				End If
'			Case "Email"
'				AddPropertyEmail(spropname,sproptitle,spropvalue,spropcolor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyEmail("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}")"$).Append(CRLF)
'				End If
'			Case "Link"
'				AddPropertyLink(spropname,sproptitle,spropvalue,spropcolor)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyLink("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}")"$).Append(CRLF)
'				End If
'			Case "DateTimePicker"
'				sproptime24 = UI.CBool(sproptime24)
'				AddPropertyDateTimePicker(spropname, sproptitle,spropvalue,spropdesc,sproprequired,sproptooltippos,spropdateformat,spropdisplayformat,sproptime24)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyDateTimePicker("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired}, "${sproptooltippos}", "${spropdateformat}", "${spropdisplayformat}", ${sproptime24})"$).Append(CRLF)
'				End If
'			Case "DatePicker"
'				AddPropertyDatePicker1(spropname, sproptitle,spropvalue,spropdesc,sproprequired,sproptooltippos,spropdateformat,spropdisplayformat, sproplocale)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyDatePicker1("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired}, "${sproptooltippos}", "${spropdateformat}", "${spropdisplayformat}", "${sproplocale}")"$).Append(CRLF)
'				End If
'			Case "TimePicker"
'				sproptime24 = UI.CBool(sproptime24)
'				AddPropertyTimePicker(spropname, sproptitle,spropvalue,spropdesc,sproprequired,sproptooltippos,sproptime24)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyTimePicker("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}", ${sproptime24})"$).Append(CRLF)
'				End If
'			Case "TextBox"
'				AddPropertyTextBox(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyTextBox("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}")"$).Append(CRLF)
'				End If
'				If spropmaxlen <> "" Then
'					SetPropertyMaxLength(spropname, spropmaxlen)
'					If IsLive = False Then
'						PropertyBuilder.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
'					End If
'				End If
'			Case "TextBoxGroup"
'				AddPropertyTextBoxGroup(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyTextBoxGroup("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}")"$).Append(CRLF)
'				End If
'				If spropprefix <> "" Then
'					SetPropertyPrefix(spropname, spropprefix)
'					If IsLive = False Then
'						PropertyBuilder.Append($"${mName}.SetPropertyPrefix("${spropname}", "${spropprefix}")"$).Append(CRLF)
'					End If
'				End If
'				If spropsuffix <> "" Then
'					SetPropertySuffix(spropname, spropsuffix)
'					If IsLive = False Then
'						PropertyBuilder.Append($"${mName}.SetPropertySuffix("${spropname}", "${spropsuffix}")"$).Append(CRLF)
'					End If
'				End If
'				If spropprepend <> "" Then
'					SetPropertyPrependIcon(spropname, spropprepend)
'					If IsLive = False Then
'						PropertyBuilder.Append($"${mName}.SetPropertyPrependIcon("${spropname}", "${spropprepend}")"$).Append(CRLF)
'					End If
'				End If
'				If spropappend <> "" Then
'					SetPropertyAppendIcon(spropname, spropappend)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyAppendIcon("${spropname}", "${spropappend}")"$).Append(CRLF)
'				End If
'				If spropmaxlen <> "" Then
'					SetPropertyMaxLength(spropname, spropmaxlen)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
'				End If
'			Case "PasswordGroup"
'				AddPropertyPasswordGroup(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos)
'				If IsLive = False Then
'					PropertyBuilder.Append($"${mName}.AddPropertyPasswordGroup("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}")"$).Append(CRLF)
'				End If
'				If spropprefix <> "" Then
'					SetPropertyPrefix(spropname, spropprefix)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyPrefix("${spropname}", "${spropprefix}")"$).Append(CRLF)
'				End If
'				If spropsuffix <> "" Then
'					SetPropertySuffix(spropname, spropsuffix)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertySuffix("${spropname}", "${spropsuffix}")"$).Append(CRLF)
'				End If
'				If spropprepend <> "" Then
'					SetPropertyPrependIcon(spropname, spropprepend)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyPrependIcon("${spropname}", "${spropprepend}")"$).Append(CRLF)
'				End If
'				If spropappend <> "" Then
'					SetPropertyAppendIcon(spropname, spropappend)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyAppendIcon("${spropname}", "${spropappend}")"$).Append(CRLF)
'				End If
'				If spropmaxlen <> "" Then
'					SetPropertyMaxLength(spropname, spropmaxlen)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
'				End If
'			Case "SelectGroup"
'				Dim optm As Map = OptionsToMap(spropoptions)
'				AddPropertySelectGroup(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos, optm)
'				If IsLive = False Then
'					PropertyBuilderMap(PropertyBuilder, spropname, optm)
'					PropertyBuilder.Append($"${mName}.AddPropertySelectGroup("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}", ${spropname}options)"$).Append(CRLF)
'				End If
'				If spropprefix <> "" Then
'					SetPropertyPrefix(spropname, spropprefix)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyPrefix("${spropname}", "${spropprefix}")"$).Append(CRLF)
'				End If
'				If spropsuffix <> "" Then
'					SetPropertySuffix(spropname, spropsuffix)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertySuffix("${spropname}", "${spropsuffix}")"$).Append(CRLF)
'				End If
'				If spropprepend <> "" Then
'					SetPropertyPrependIcon(spropname, spropprepend)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyPrependIcon("${spropname}", "${spropprepend}")"$).Append(CRLF)
'				End If
'				If spropappend <> "" Then
'					SetPropertyAppendIcon(spropname, spropappend)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyAppendIcon("${spropname}", "${spropappend}")"$).Append(CRLF)
'				End If
'			Case "Password"
'				AddPropertyPassword(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyPassword("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}")"$).Append(CRLF)
'				If spropmaxlen <> "" Then
'					SetPropertyMaxLength(spropname, spropmaxlen)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
'				End If
'			Case "Color"
'				AddPropertyColor(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyColor("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}")"$).Append(CRLF)
'			Case "Number"
'				spropvalue = UI.Val(spropvalue)
'				spropstart = UI.CInt(spropstart)
'				spropstep = UI.CInt(spropstep)
'				spropmax = UI.CInt(spropmax)
'				AddPropertyNumber(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyNumber("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}")"$).Append(CRLF)
'				If BANano.parseInt(spropmax) > 0 Then
'					SetPropertyMinValue(spropname, spropstart)
'					SetPropertyMaxValue(spropname, spropmax)
'					SetPropertyStepValue(spropname, spropstep)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyMinValue("${spropname}", ${spropstart})"$).Append(CRLF)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyMaxValue("${spropname}", ${spropmax})"$).Append(CRLF)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyStepValue("${spropname}", ${spropstep})"$).Append(CRLF)
'				End If
'			Case "Telephone"
'				AddPropertyTelephone(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyTelephone("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}")"$).Append(CRLF)
'			Case "TextArea"
'				AddPropertyTextArea(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyTextArea("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}")"$).Append(CRLF)
'				If spropmaxlen <> "" Then
'					SetPropertyMaxLength(spropname, spropmaxlen)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyMaxLength("${spropname}", "${spropmaxlen}")"$).Append(CRLF)
'				End If
'				If sproprows <> "" Then
'					SetPropertyRows(spropname, sproprows)
'					If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyRows("${spropname}", "${sproprows}")"$).Append(CRLF)
'				End If
'			Case "Select"
'				Dim optm As Map = OptionsToMap(spropoptions)
'				AddPropertySelect(spropname, sproptitle, spropvalue,spropdesc,sproprequired,sproptooltippos, optm)
'				If IsLive = False Then PropertyBuilderMap(PropertyBuilder, spropname, optm)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertySelect("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", ${sproprequired},"${sproptooltippos}", ${spropname}options)"$).Append(CRLF)
'			Case "FileInput"
'				AddPropertyFileInput(spropname, sproptitle, spropdesc,sproptooltippos)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyFileInput("${spropname}", "${sproptitle}", "${spropdesc}", "${sproptooltippos}")"$).Append(CRLF)
'			Case "FileInputProgress"
'				AddPropertyFileInputProgress(spropname, sproptitle, spropdesc, sproptooltippos, spropsize, spropicon , spropcolor)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyFileInputProgress("${spropname}", "${sproptitle}", "${spropdesc}", "${sproptooltippos}", "${spropsize}", "${spropicon}", "${spropcolor}")"$).Append(CRLF)
'			Case "CamCorder"
'				AddPropertyCamCorder(spropname, sproptitle, spropdesc, sproptooltippos, spropsize, spropcolor)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyCamCorder("${spropname}", "${sproptitle}", "${spropdesc}", "${sproptooltippos}", "${spropsize}", "${spropcolor}")"$).Append(CRLF)
'			Case "Camera"
'				AddPropertyCamera(spropname, sproptitle, spropdesc, sproptooltippos, spropsize, spropcolor)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyCamera("${spropname}", "${sproptitle}", "${spropdesc}", "${sproptooltippos}", "${spropsize}", "${spropcolor}")"$).Append(CRLF)
'			Case "Microphone"
'				AddPropertyMicrophone(spropname, sproptitle, spropdesc, sproptooltippos, spropsize, spropcolor)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyMicrophone("${spropname}", "${sproptitle}", "${spropdesc}", "${sproptooltippos}", "${spropsize}", "${spropcolor}")"$).Append(CRLF)
'			Case "Avatar"
'				AddPropertyAvatar(spropname, sproptitle, spropdesc, spropsize, spropshape, spropurl)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyAvatar("${spropname}", "${sproptitle}", "${spropdesc}", "${spropsize}", "${spropshape}", "${spropurl}")"$).Append(CRLF)
'			Case "AvatarPlaceholder"
'				AddPropertyAvatarPlaceholder(spropname, sproptitle, spropvalue, spropdesc, spropsize, spropshape, spropcolor)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyAvatarPlaceholder("${spropname}", "${sproptitle}", "${spropvalue}", "${spropdesc}", "${spropsize}", "${spropshape}", "${spropcolor}")"$).Append(CRLF)
'			Case "AvatarGroup"
'				Dim imags As List = UI.StrParse(";", spropoptions)
'				Dim simgs As String = UI.JoinQuote(";", imags)
'				AddPropertyAvatarGroup(spropname, sproptitle, spropdesc, spropsize, spropshape, imags)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyAvatarGroup("${spropname}", "${sproptitle}", "${spropdesc}", "${spropsize}", "${spropshape}", Array(${simgs}))"$).Append(CRLF)
'			Case "Signature"
'				AddPropertySignaturePad(spropname, sproptitle, spropdesc, sproprequired, sproptooltippos, spropwidth, spropheight, "jpeg")
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertySignaturePad("${spropname}", "${sproptitle}", "${spropdesc}", ${sproprequired}, "${sproptooltippos}", "${spropwidth}", "${spropheight}", "jpeg")"$).Append(CRLF)
'			Case "RollDate"
'				spropstart = UI.CInt(spropstart)
'				spropstep = UI.CInt(spropstep)
'				spropmax = UI.CInt(spropmax)
'				'
'				Dim d1Options As RollDateOptions
'				d1Options.Initialize
'				If spropstart <> 0 Then d1Options.beginYear = spropstart
'				If spropmax <> 0 Then d1Options.endYear = spropmax
'				If spropstep <> 0 Then d1Options.MinStep = spropstep
'				If spropvalue <> "" Then d1Options.Value = spropvalue
'				If spropdateformat <> "" Then d1Options.DateTimeFormat = spropdateformat
'				AddPropertyRollDateTime(spropname, sproptitle, spropdesc, sproprequired, sproptooltippos, d1Options)
'				If IsLive = False Then
'					PropertyBuilder.Append($"Dim ${spropname}options As RollDateOptions"$).append(CRLF)
'					PropertyBuilder.Append($"${spropname}options.Initialize"$).append(CRLF)
'					If spropstart <> 0 Then PropertyBuilder.Append($"${spropname}options.beginYear = ${spropstart}"$).append(CRLF)
'					If spropmax <> 0 Then PropertyBuilder.Append($"${spropname}options.endYear = ${spropmax}"$).append(CRLF)
'					If spropstep <> 0 Then PropertyBuilder.Append($"${spropname}options.MinStep = ${spropstep}"$).append(CRLF)
'					If spropvalue <> "" Then PropertyBuilder.Append($"${spropname}options.Value = ${spropvalue}"$).append(CRLF)
'					If spropdateformat <> "" Then PropertyBuilder.Append($"${spropname}options.DateTimeFormat = "${spropdateformat}""$).append(CRLF)
'					PropertyBuilder.Append($"${mName}.AddPropertyRollDateTime("${spropname}", "${sproptitle}", "${spropdesc}", ${sproprequired}, "${sproptooltippos}", ${spropname}options)"$).Append(CRLF)
'				End If
'			Case "Image"
'				AddPropertyImage(spropname, sproptitle, spropdesc, spropwidth, spropheight, spropshape, spropurl)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyImage("${spropname}", "${sproptitle}", "${spropdesc}", "${spropwidth}", "${spropheight}", "${spropshape}", "${spropurl}")"$).Append(CRLF)
'			Case "Progress"
'				spropvalue = UI.cint(spropvalue)
'				AddPropertyProgress(spropname, sproptitle, spropvalue, spropcolor, spropstart, spropstep, spropmax,spropdesc, sproptooltippos)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyProgress("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropstart}", "${spropstep}", "${spropmax}", "${spropdesc}", "${sproptooltippos}")"$).Append(CRLF)
'			Case "Range"
'				spropvalue = UI.CInt(spropvalue)
'				AddPropertyRange(spropname,sproptitle, spropvalue,spropcolor, spropstart, spropstep, spropmax, spropdesc, sproptooltippos)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyRange("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropstart}", "${spropstep}", "${spropmax}", "${spropdesc}", "${sproptooltippos}")"$).Append(CRLF)
'			Case "Dialer"
'				spropvalue = UI.CInt(spropvalue)
'				spropstart = UI.CInt(spropstart)
'				spropstep = UI.CInt(spropstep)
'				spropmax = UI.CInt(spropmax)
'				AddPropertyDialer(spropname,sproptitle, spropvalue,spropdesc, sproprequired, sproptooltippos, spropstart, spropstep, spropmax)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyDialer("${spropname}", "${sproptitle}", ${spropvalue}, "${spropdesc}", ${sproprequired}, "${sproptooltippos}", ${spropstart}, ${spropstep}, ${spropmax})"$).Append(CRLF)
'			Case "CheckBox"
'				spropvalue = UI.CBool(spropvalue)
'				AddPropertyCheckBox(spropname, sproptitle, spropvalue, spropcolor, spropdesc)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyCheckBox("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropdesc}")"$).Append(CRLF)
'				SetPropertyChecked(spropname, spropvalue)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyChecked("${spropname}", ${spropvalue})"$).Append(CRLF)
'			Case "Toggle"
'				spropvalue = UI.CBool(spropvalue)
'				AddPropertyToggle(spropname, sproptitle, spropvalue, spropcolor, spropdesc)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyToggle("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropdesc}")"$).Append(CRLF)
'				SetPropertyChecked(spropname, spropvalue)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyChecked("${spropname}", ${spropvalue})"$).Append(CRLF)
'			Case "RadialProgress"
'				AddPropertyRadialProgress(spropname,sproptitle, spropvalue, spropcolor, spropdesc)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyRadialProgress("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropdesc}")"$).Append(CRLF)
'			Case "Rating"
'				AddPropertyRating(spropname,sproptitle, spropvalue, spropcolor, spropdesc)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyRating("${spropname}", "${sproptitle}", ${spropvalue}, "${spropcolor}", "${spropdesc}")"$).Append(CRLF)
'			Case "RadioGroup"
'				Dim optm As Map = OptionsToMap(spropoptions)
'				AddPropertyRadioGroup(spropname, sproptitle, spropvalue, spropcolor, spropdesc, sproptooltippos, optm)
'				If IsLive = False Then PropertyBuilderMap(PropertyBuilder, spropname, optm)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.AddPropertyRadioGroup("${spropname}", "${sproptitle}", "${spropvalue}", "${spropcolor}", "${spropdesc}", "${sproptooltippos}", ${spropname}options)"$).Append(CRLF)
'		End Select
'		SetPropertyRequired(spropname, sproprequired)
'		SetPropertyAlignment(spropname, spropalign)
'		If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyRequired("${spropname}", ${sproprequired})"$).Append(CRLF)
'		If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyAlignment("${spropname}", "${spropalign}")"$).Append(CRLF)
'		If spropreadonly Then
'			SetPropertyReadOnly(spropname, True)
'			If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyReadOnly("${spropname}", True)"$).Append(CRLF)
'		End If
'		If spropenabled = False Then
'			SetPropertyEnabled(spropname, False)
'			If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyEnabled("${spropname}", False)"$).Append(CRLF)
'		End If
'		If spropvisible = False Then
'			SetPropertyVisible(spropname, False)
'			If IsLive = False Then PropertyBuilder.Append($"${mName}.SetPropertyVisible("${spropname}", False)"$).Append(CRLF)
'		End If
'		If spropenabled = False Then
'			SetToolbarButtonEnable(spropname, False)
'			If IsLive = False Then PropertyBuilder.Append($"${mName}.SetToolbarButtonEnable("${spropname}", False)"$).Append(CRLF)
'		End If
'		If bPropSetTooltip Then
'			SetToolbarButtonToolTip(spropname, spropdesc, sTooltipColor, "left", True)
'			If IsLive = False Then PropertyBuilder.Append($"${mName}.SetToolbarButtonToolTip("${spropname}", "${spropdesc}", "${sTooltipColor}", "left", true)"$).Append(CRLF)
'		End If
'		If bPropSetBadge Then
'			If sPropBadgeValue <> "" Then
'				SetToolbarButtonBadge(spropname, sPropBadgeValue)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.SetToolbarButtonBadge("${spropname}", "${sPropBadgeValue}")"$).Append(CRLF)
'			End If
'			If bPropBadgeRound Then
'				SetToolbarButtonBadgeRound(spropname)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.SetToolbarButtonBadgeRound("${spropname}")"$).Append(CRLF)
'			End If
'			If sPropBadgeColor <> "" Then
'				SetToolbarButtonBadgeColor(spropname, sPropBadgeColor)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.SetToolbarButtonBadgeColor("${spropname}", "${sPropBadgeColor}")"$).Append(CRLF)
'			End If
'			If sPropBadgeTextColor <> "" Then
'				SetToolbarButtonBadgeTextColor(spropname, sPropBadgeTextColor)
'				If IsLive = False Then PropertyBuilder.Append($"${mName}.SetToolbarButtonBadgeTextColor("${spropname}", "${sPropBadgeTextColor}")"$).Append(CRLF)
'			End If
'		End If
'	Next
'	If IsLive = False Then
'		If sPropertyPadding <> "" Then
'			UpdatePropertyPadding(sPropertyPadding)
'			PropertyBuilder.Append($"${mName}.UpdatePropertyPadding("${sPropertyPadding}")"$).Append(CRLF)
'		End If
'	End If
'End Sub

'for each property update the padding
Sub UpdatePropertyPadding(pClass As String)
	For Each k As String In propBagKeys.Keys
		BANano.GetElement($"#${mName}_${k}_th"$).AddClass(pClass)
		BANano.GetElement($"#${mName}_${k}_td"$).AddClass(pClass)
	Next
End Sub

Sub PropertyBuilderMap(sb As StringBuilder, spropName As String, m As Map)
	sb.Append($"Dim ${spropName}options As Map"$).append(CRLF)
	sb.Append($"${spropName}options.Initialize"$).append(CRLF)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		sb.Append($"${spropName}options.put("${k}", "${v}")"$).append(CRLF)
	Next
End Sub

'convert multi value string to options
private Sub OptionsToMap(opt As String) As Map
	opt = opt.replace("|", ";")
	Dim litems As List = UI.StrParse(";", opt)
	litems = UI.ListTrimItems(litems)
	Dim m As Map = CreateMap()
	For Each item As String In litems
		item = item.Trim
		If item = "" Then Continue
		Dim hascolon As Int = item.IndexOf(":")
		If hascolon = -1 Then
			m.Put(item, item)
		Else
			Dim fpart As String = UI.MvField(item, 1, ":")
			fpart = fpart.Trim
			Dim spart As String = UI.MvField(item, 2, ":")
			spart = spart.Trim
			m.Put(fpart, spart)
		End If
	Next
	Return m
End Sub

'set a property as required or not
Sub SetPropertyRequired(Key As String, status As Boolean)
	If status Then
		Compulsory.Put(Key,Key)
		If BANano.Exists($"#${mName}_${Key}badge"$) Then
			BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
		End If
	Else
		Compulsory.Remove(Key)
		If BANano.Exists($"#${mName}_${Key}badge"$) Then
			BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
		End If
	End If
End Sub

'show props based on type
'Sub ShowPropOnCondition
'	Dim sproptype As String = GetPropertyValue("proptype")
'	BANano.Await(HideMostProperties)
'	SetPropertyVisible("propvalue", True)
'	SetPropertyVisible("proprequired", True)
'	SetPropertyVisible("proptooltippos", True)
'	SetPropertyVisible("propdatatype", True)
'	SetPropertyVisible("propprepend", True)
'	SetPropertyVisible("propappend", True)
'	SetPropertyVisible("prophinttext", True)
'	SetPropertyVisible("properrortext", True)
'	Select Case sproptype
'		Case "DatePicker"
'			SetPropertyVisible("propdateformat", True)
'			SetPropertyVisible("propdisplayformat", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "DateTimePicker"
'			SetPropertyVisible("propdateformat", True)
'			SetPropertyVisible("propdisplayformat", True)
'			SetPropertyVisible("proptime24", True)
'			SetPropertyVisible("proplocale", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "TimePicker"
'			SetPropertyVisible("proptime24", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "TextBox"
'			SetPropertyVisible("propmaxlen", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Password"
'			SetPropertyVisible("propmaxlen", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Color"
'			SetPropertyVisible("propplaceholder", True)
'		Case "RollDate"
'			SetPropertyVisible("propdateformat", True)
'			SetPropertyVisible("propdisplayformat", True)
'			SetPropertyVisible("propstart", True)
'			SetPropertyVisible("propstep", True)
'			SetPropertyVisible("propmax", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Number"
'			SetPropertyVisible("propstart", True)
'			SetPropertyVisible("propstep", True)
'			SetPropertyVisible("propmax", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Telephone"
'			SetPropertyVisible("propplaceholder", True)
'		Case "TextArea"
'			SetPropertyVisible("propmaxlen", True)
'			SetPropertyVisible("proprows",True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "PasswordGroup"
'			SetPropertyVisible("propmaxlen", True)
'			SetPropertyVisible("propprefix", True)
'			SetPropertyVisible("propsuffix", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "TextBoxGroup"
'			SetPropertyVisible("propmaxlen", True)
'			SetPropertyVisible("propprefix", True)
'			SetPropertyVisible("propsuffix", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "SelectGroup",  "TextAreaChipGroup"
'			SetPropertyVisible("propcolor", True)
'			SetPropertyVisible("propheight", True)
'			SetPropertyVisible("propoptions", True)
'			SetPropertyVisible("propforeigntable", True)
'			SetPropertyVisible("propforeignfield", True)
'			SetPropertyVisible("propforeigndisplayfield", True)
'			SetPropertyVisible("propforeigndisplayfield1", True)
'			SetPropertyVisible("propforeigndisplayfield2", True)
'			SetPropertyVisible("propprefix", True)
'			SetPropertyVisible("propsuffix", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Select"
'			SetPropertyVisible("propoptions", True)
'			SetPropertyVisible("propforeigntable", True)
'			SetPropertyVisible("propforeignfield", True)
'			SetPropertyVisible("propforeigndisplayfield", True)
'			SetPropertyVisible("propforeigndisplayfield1", True)
'			SetPropertyVisible("propforeigndisplayfield2", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "FileInput"
'			SetPropertyVisible("propvalue", False)
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propupdate", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "FileInputProgress"
'			SetPropertyVisible("propvalue", False)
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propsize", True)
'			SetPropertyVisible("propicon", True)
'			SetPropertyVisible("propcolor", True)
'			SetPropertyVisible("propupdate", True)
'		Case "CamCorder", "Camera", "Microphone"
'			SetPropertyVisible("propvalue", False)
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propsize", True)
'			SetPropertyVisible("propcolor", True)
'			SetPropertyVisible("propupdate", True)
'		Case "AvatarPlaceholder"
'			SetPropertyVisible("propenabled", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propvalue", True)
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propsize", True)
'			SetPropertyVisible("propshape", True)
'			SetPropertyVisible("propcolor", True)
'		Case "Avatar"
'			SetPropertyVisible("propenabled", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propvalue", False)
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propsize", True)
'			SetPropertyVisible("propshape", True)
'			SetPropertyVisible("propurl", True)
'		Case "AvatarGroup"
'			SetPropertyVisible("propoptions", True)
'			SetPropertyVisible("propenabled", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propvalue", False)
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propsize", True)
'			SetPropertyVisible("propshape", True)
'			SetPropertyVisible("propurl", False)
'		Case "Progress"
'			SetPropertyVisible("propenabled", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propcolor", True)
'			SetPropertyVisible("propstart", True)
'			SetPropertyVisible("propstep", True)
'			SetPropertyVisible("propmax", True)
'			SetPropertyRequired("propstart",True)
'			SetPropertyRequired("propstep",True)
'			SetPropertyRequired("propmax",True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Dialer"
'			SetPropertyVisible("propstart", True)
'			SetPropertyVisible("propstep", True)
'			SetPropertyVisible("propmax", True)
'			SetPropertyRequired("propstart",True)
'			SetPropertyRequired("propstep",True)
'			SetPropertyRequired("propmax",True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Range"
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propcolor", True)
'			SetPropertyVisible("propstart", True)
'			SetPropertyVisible("propstep", True)
'			SetPropertyVisible("propmax", True)
'			SetPropertyRequired("propstart",True)
'			SetPropertyRequired("propstep",True)
'			SetPropertyRequired("propmax",True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Email", "Link"
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propcolor", True)
'			SetPropertyVisible("propenabled", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propsize", False)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Label"
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propcolor", True)
'			SetPropertyVisible("propenabled", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propsize", False)
'		Case "CheckBox"
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propcolor", True)
'		Case "Toggle"
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propcolor", True)
'		Case "RadialProgress"
'			SetPropertyVisible("propenabled", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propcolor", True)
'		Case "Rating"
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propcolor", True)
'			SetPropertyVisible("propplaceholder", True)
'		Case "Signature"
'			SetPropertyVisible("propwidth", True)
'			SetPropertyVisible("propheight", True)
'			SetPropertyRequired("propwidth", True)
'			SetPropertyRequired("propheight", True)
'		Case "RadioGroup"
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propcolor", True)
'			SetPropertyVisible("propoptions", True)
'		Case "Image"
'			SetPropertyVisible("propenabled", False)
'			SetPropertyVisible("propreadonly", False)
'			SetPropertyVisible("propvalue", False)
'			SetPropertyVisible("proprequired", False)
'			SetPropertyVisible("propsize", False)
'			SetPropertyVisible("propshape", True)
'			SetPropertyVisible("propurl", True)
'			SetPropertyVisible("propwidth", True)
'			SetPropertyVisible("propheight", True)
'			SetPropertyRequired("propwidth",True)
'			SetPropertyRequired("propheight",True)
'	End Select
'End Sub
'private Sub HideMostProperties
'	SetPropertyVisible("id", False)
'	SetPropertyVisible("propvalue", True)
'	SetPropertyVisible("propreadonly", True)
'	SetPropertyVisible("propenabled", True)
'	SetPropertyVisible("propvisible", True)
'	SetPropertyVisible("proprequired", True)
'	SetPropertyVisible("propoptions", False)
'	SetPropertyVisible("propsize", False)
'	SetPropertyVisible("propshape", False)
'	SetPropertyVisible("propurl", False)
'	SetPropertyVisible("propcolor", False)
'	SetPropertyVisible("propstart", False)
'	SetPropertyVisible("propstep", False)
'	SetPropertyVisible("propmax", False)
'	SetPropertyVisible("proptooltippos", True)
'	SetPropertyVisible("propwidth", False)
'	SetPropertyVisible("propheight", False)
'	SetPropertyVisible("propdateformat", False)
'	SetPropertyVisible("propdisplayformat", False)
'	SetPropertyVisible("proptime24", False)
'	SetPropertyVisible("proplocale", False)
'	SetPropertyVisible("propprefix", False)
'	SetPropertyVisible("propsuffix", False)
'	SetPropertyVisible("propprepend", False)
'	SetPropertyVisible("propappend", False)
'	SetPropertyVisible("propforeigntable", False)
'	SetPropertyVisible("propforeignfield", False)
'	SetPropertyVisible("propforeigndisplayfield", False)
'	SetPropertyVisible("propforeigndisplayfield1", False)
'	SetPropertyVisible("propforeigndisplayfield2", False)
'	SetPropertyVisible("propmaxlen", False)
'	SetPropertyVisible("proprows",False)
'	SetPropertyVisible("propicon", False)
'	SetPropertyVisible("propupdate", False)
'	SetPropertyVisible("propplaceholder", False)
'	SetPropertyVisible("prophinttext", False)
'	SetPropertyVisible("properrortext", False)
'	'SetPropertyVisible("propsubtitle1", False)
'	'SetPropertyVisible("propsubtitle2", False)
'End Sub

'add a property
Sub AddProperty(options As Map)
	propList.Add(options)
End Sub

Sub getHeadingID As String
	Return $"${mName}_thead"$
End Sub

Sub getBodyID As String
	Return $"${mName}_body"$
End Sub

Sub getFooterID As String
	Return $"${mName}_foot"$
End Sub

Sub getSearchValue As String
	Dim s As String = BANano.GetElement($"#${mName}_search"$).GetValue
	Return s
End Sub

Sub setSearchValue(s As String)
	BANano.GetElement($"#${mName}_search"$).SetValue(s)
End Sub

Sub setActionsVisible(b As Boolean)
	If b = True Then
		BANano.GetElement($"#${mName}_actions"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_actions"$).AddClass("hide")
	End If
End Sub

'change the search placeholder
'<code>
'tbl.SetSearchPlaceholder("Buscar")
'</code>
Sub SetSearchPlaceholder(s As String)
	BANano.GetElement($"#${mName}_search"$).SetAttr("placeholder", s)
End Sub

Sub getSearchID As String
	Return $"${mName}_search"$
End Sub

'add an action button
'<code>
'AddActionButton("btnSave", "Save", "primary")
'Sub tblname_btnSave (e As BANanoEvent)
'e.PreventDefault
'End Sub
'</code>
Sub AddActionButton(btnID As String, btnCaption As String, btnColor As String) As SDUI5Button
	UI.Show($"${mName}_bottomdivider"$)
	UI.Show($"${mName}_bottomactions"$)
	btnID = UI.CleanID(btnID)
'	Dim btn As SDUIButton
'	btn.AddButton(mback, $"${mName}_bottomactions"$, $"${mName}_${btnID}"$, btnCaption, "button")
'	btn.On("click", mback, $"${mName}_${btnID}"$)
'	btn.Color = btnColor
'	btn.Size = sButtonSize
'	btn.Root.mx("1")
'	Return btn
End Sub

'set the button to loading state
Sub SetActionButtonLoading(btnID As String, bLoading As Boolean)
	btnID = UI.CleanID(btnID)
'	Dim btn As SDUIButton			'ignore
'	btn.AssignElement(mback, $"${mName}_${btnID}"$)
'	btn.Loading = bLoading
End Sub

Sub getToolBarButtonID(btnID As String) As String
	btnID = UI.CleanID(btnID)
	Return $"${mName}_${btnID}"$
End Sub

'add an action button
'<code>
'Sub tblname_btnid (e As BANanoEven)
'End Sub
'</code>
Sub AddActionButtonIcon(btnID As String, sIcon As String, btnColor As String) As SDUI5Button
	UI.Show($"${mName}_bottomactions"$)
	UI.Show($"${mName}_bottomdivider"$)
	btnID = UI.CleanID(btnID)
'	Dim btn As SDUIButton
'	btn.AddButtonIcon(mback, $"${mName}_bottomactions"$, $"${mName}_${btnID}"$, "", sIcon)
'	btn.On("click", mback, $"${mName}_${btnID}"$)
'	btn.Color = btnColor
'	btn.Outline = bButtonsOutlined
'	btn.Size = sButtonSize
'	btn.Circle
'	btn.Root.mx("1")
'	Return btn
End Sub
'add an action button
'<code>
'Sub tblname_btnid (e As BANanoEven)
'End Sub
'</code>
Sub AddActionButtonIconTextColor(btnID As String, sIcon As String, btnColor As String, btnTextColor As String) As SDUI5Button
'	Dim btn As SDUIButton = AddActionButtonIcon(btnID, sIcon, btnColor)
'	btn.TextColor = btnTextColor
'	Return btn
End Sub

'clear the property bag settings
Sub Clear
	BANano.GetElement($"#${mName}_body"$).Empty
	BANano.GetElement($"#${mName}_bottomactions"$).Empty
	propBagKeys.Initialize
	propBagValues.Initialize
	Types.Initialize
	ComponentType.Initialize
	LastColors.Initialize
	RGOptions.Initialize
	Compulsory.Initialize
	datesFP.Initialize
	signatures.Initialize
	rolldate.Initialize
	Overwrites.Initialize
	propList.Initialize
	PropertyBuilder.Initialize
	CustProps.Initialize
	validations.Initialize
	DPValue.Initialize
	datepickers.Initialize
End Sub

Sub ClearOverwrites
	Overwrites.Initialize
End Sub

Sub ClearDesigns
	Designs.Initialize
End Sub

'get the id of the component
Sub getName As String
	Return $"${mName}"$
End Sub

Sub AddPropertyDialer(Key As String, Title As String, DefaultValue As String, Required As Boolean, iMinValue As Int, iStepValue As Int, iMaxValue As Int)
	AddPropertyTextBoxGroup(Key, Title, DefaultValue, Required)
	SetPropertyType(Key, "number")
	ComponentType.Put(Key, "Dialer")
	SetPropertyAddClass(Key, "text-center tabular-nums")
	SetPropertyMaxValue(Key, iMaxValue)
	SetPropertyMinValue(Key, iMinValue)
	SetPropertyStepValue(Key, iStepValue)
	SetPropertyPrependIcon(Key, "fa-solid fa-minus")
	SetPropertyAppendIcon(Key, "fa-solid fa-plus")
	UI.OnEventByID($"${mName}_${Key}_prepend"$, "click", Me, "PropertyDecrement")
	UI.OnEventByID($"${mName}_${Key}_append"$, "click", Me, "PropertyIncrement")
	SetPropertyNoArrows(Key)
End Sub
'
private Sub PropertyDecrement(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim action As String = UI.MvField(src,2, "_")
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${action}"$)
	Dim minvalue As Int = UI.CInt(el.GetAttr("min"))
	Dim stpvalue As Int = UI.CInt(el.GetAttr("step"))
	Dim curvalue As Int = UI.CInt(el.GetValue)
	Dim nxtvalue As Int = BANano.parseInt(curvalue) - BANano.parseInt(stpvalue)
	If nxtvalue < minvalue Then
		nxtvalue = minvalue
		el.SetValue(minvalue)
	Else
		el.SetValue(nxtvalue)
	End If
	'
	If SubExists(mCallBack, $"${mName}_Change"$) Then
		Dim data As Map = BANano.Await(getPropertyBag)
		CallSub2(mCallBack, $"${mName}_Change"$, data)		'ignore
	End If
End Sub

private Sub PropertyIncrement(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim action As String = UI.MvField(src,2, "_")
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${action}"$)
	Dim maxvalue As Int = UI.CInt(el.GetAttr("max"))
	Dim stpvalue As Int = UI.CInt(el.GetAttr("step"))
	Dim curvalue As Int = UI.CInt(el.GetValue)
	Dim nxtvalue As Int = BANano.parseInt(curvalue) + BANano.parseInt(stpvalue)
	If nxtvalue > maxvalue Then
		nxtvalue = maxvalue
		el.SetValue(maxvalue)
	Else
		el.SetValue(nxtvalue)
	End If
	'
	If SubExists(mCallBack, $"${mName}_Change"$) Then
		Dim data As Map = BANano.Await(getPropertyBag)
		CallSub2(mCallBack, $"${mName}_Change"$, data)		'ignore
	End If
End Sub

Sub SetPropertyDialerIncrement(Key As String)
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${Key}"$)
	Dim maxvalue As Int = UI.CInt(el.GetAttr("max"))
	Dim stpvalue As Int = UI.CInt(el.GetAttr("step"))
	Dim curvalue As Int = UI.CInt(el.GetValue)
	Dim nxtvalue As Int = BANano.parseInt(curvalue) + BANano.parseInt(stpvalue)
	If nxtvalue > maxvalue Then
		el.SetValue(maxvalue)
	Else
		el.SetValue(nxtvalue)
	End If
End Sub

Sub SetPropertyDialerDecrement(Key As String)
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${Key}"$)
	Dim minvalue As Int = UI.CInt(el.GetAttr("min"))
	Dim stpvalue As Int = UI.CInt(el.GetAttr("step"))
	Dim curvalue As Int = UI.CInt(el.GetValue)
	Dim nxtvalue As Int = BANano.parseInt(curvalue) - BANano.parseInt(stpvalue)
	If nxtvalue < minvalue Then
		el.SetValue(minvalue)
	Else
		el.SetValue(nxtvalue)
	End If
End Sub

'Sub PropertyAppendButton(key As String) As SDUIButton
'	Dim AppendButton As SDUIButton		'ignore
'	AppendButton.AssignElement(mback, $"${mName}_${key}_append"$)
'	Return AppendButton
'End Sub
'
'Sub PropertyPrependButton(key As String) As SDUIButton
'	Dim AppendButton As SDUIButton		'ignore
'	AppendButton.AssignElement(mback, $"${mName}_${key}_prepend"$)
'	Return AppendButton
'End Sub

Sub AddPropertyTextBox(Key As String, Title As String, DefaultValue As String, Required As Boolean)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "TextBox")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}"><div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <input id="${mName}_${Key}" name="${mName}_${Key}" type="text" placeholder="${Title}" class="input input-${sComponentSize} input-bordered w-full"></input></div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
End Sub
Sub AddPropertyTextBoxGroup(Key As String, Title As String, DefaultValue As String, Required As Boolean)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "TextBoxGroup")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    	<td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    	<td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    		<div class="indicator w-full">
    			<span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    			<div id="${mName}_${Key}_formcontrol" class="form-control w-full">
    				<label id="${mName}_${Key}_inputgroup" class="input-group">
    					<span id="${mName}_${Key}_prefix" class="hide"></span>
    					<btn id="${mName}_${Key}_prepend" class="btn hide btn-${sComponentSize}"><i id="${mName}_${Key}_prepend_icon"></i></btn>
    					<input id="${mName}_${Key}" type="text" placeholder="${Title}" name="${mName}_${Key}" class="input input-${sComponentSize} input-bordered w-full tlradius blradius trradius brradius"></input>
    					<span id="${mName}_${Key}_suffix" class="hide"></span>
    					<btn id="${mName}_${Key}_append" class="btn hide btn-${sComponentSize}"><i id="${mName}_${Key}_append_icon"></i></btn>
    				</label>
    			</div>
    		</div>
    	</td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
	BANano.GetElement($"#${mName}_${Key}_append"$).On("click", mCallBack, $"${mName}_${Key}_AppendClick"$)
	BANano.GetElement($"#${mName}_${Key}_prepend"$).On("click", mCallBack, $"${mName}_${Key}_PrependClick"$)
End Sub

Sub AddPropertySelectGroup(Key As String, Title As String, DefaultValue As String, Required As Boolean, Options As Map)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "SelectGroup")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <div id="${mName}_${Key}_formcontrol" class="form-control w-full">
    <label id="${mName}_${Key}_inputgroup" class="input-group">
    <span id="${mName}_${Key}_prefix" class="hide"></span>
    <btn id="${mName}_${Key}_prepend" class="btn hide btn-${sComponentSize}"><i id="${mName}_${Key}_prepend_icon"></i></btn>
    <select id="${mName}_${Key}" name="${mName}_${Key}" class="select select-${sComponentSize} select-bordered grow tlradius blradius trradius brradius grow">
    </select>
    <span id="${mName}_${Key}_suffix" class="hide"></span>
    <btn id="${mName}_${Key}_append" class="btn hide btn-${sComponentSize}"><i id="${mName}_${Key}_append_icon"></i></btn>
    </label>
    </div>
    </div>
    </td>
    </tr>"$
	'
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	sbOptions.Append($"<option name="${mName}_${Key}" disabled selected>Select ${Title}</option>""$)
	For Each k As String In Options.Keys
		If k = "" Then Continue
		Dim v As String = Options.Get(k)
		Dim sItem As String = $"<option name="${mName}_${Key}" value="${k}">${v}</option>"$
		sbOptions.Append(sItem)
	Next
	BANano.GetElement($"#${mName}_${Key}"$).Append(sbOptions.ToString)
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
	BANano.GetElement($"#${mName}_${Key}_append"$).On("click", mCallBack, $"${mName}_${Key}_AppendClick"$)
	BANano.GetElement($"#${mName}_${Key}_prepend"$).On("click", mCallBack, $"${mName}_${Key}_PrependClick"$)
	sbOptions.Initialize
End Sub

Sub AddPropertyPasswordGroup(Key As String, Title As String, DefaultValue As String, Required As Boolean)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "PasswordGroup")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <div id="${mName}_${Key}_formcontrol" class="form-control w-full">
    <label id="${mName}_${Key}_inputgroup" class="input-group">
    <span id="${mName}_${Key}_prefix" class="hide"></span>
    <btn id="${mName}_${Key}_prepend" class="btn hide btn-${sComponentSize}"><i id="${mName}_${Key}_prepend_icon"></i></btn>
    <input id="${mName}_${Key}" type="password" placeholder="${Title}" name="${mName}_${Key}" class="input input-${sComponentSize} input-bordered w-full tlradius blradius trradius brradius"></input>
    <span id="${mName}_${Key}_suffix" class="hide"></span>
    <btn id="${mName}_${Key}_append" class="btn hide btn-${sComponentSize}"><i id="${mName}_${Key}_append_icon"></i></btn>
    </label>
    </div>
    </div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	SetPropertyShowEyes(Key, True)
	
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
	BANano.GetElement($"#${mName}_${Key}_prepend"$).On("click", mCallBack, $"${mName}_${Key}_PrependClick"$)
	UI.OnEventByID($"${mName}_${Key}_append"$, "click", Me, "TogglePassword")
End Sub

private Sub TogglePassword(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim action As String = UI.MvField(src,2, "_")
	SetPropertyToggleEyes(action)
	'
	Dim e As BANanoEvent
	CallSub2(mCallBack, $"${mName}_${action}_AppendClick"$, Array(e))		'ignore
End Sub

'set a prepend button icon
Sub SetPropertyPrependIcon(Key As String, picon As String)
	If picon = "" Then Return
	BANano.GetElement($"#${mName}_${Key}_prefix"$).Remove
	UI.SetIconNameByID($"${mName}_${Key}_prepend_icon"$, picon)	'
	UI.SetSizeByID($"${mName}_${Key}_prepend"$, "size", "btn", sComponentSize)
	UI.Show($"${mName}_${Key}_prepend"$)
	UI.RemoveClassByID($"#${mName}_${Key}"$, "tlradius blradius")
	SetPropertyTopLeftRadius(Key, "0px")
	SetPropertyBottomLeftRadius(Key, "0px")
End Sub
'
Sub SetPropertyTopLeftRadius(Key As String, v As String)
	UI.SetStyleByID($"${mName}_${Key}"$, "border-top-left-radius", v)
End Sub

Sub SetPropertyTopRightRadius(Key As String, v As String)
	UI.SetStyleByID($"${mName}_${Key}"$, "border-top-right-radius", v)
End Sub

Sub SetPropertyBottomLeftRadius(Key As String, v As String)
	UI.SetStyleByID($"${mName}_${Key}"$, "border-bottom-left-radius", v)
End Sub


Sub SetPropertyBottomRightRadius(Key As String, v As String)
	UI.SetStyleByID($"${mName}_${Key}"$, "border-bottom-right-radius", v)
End Sub

Sub SetPropertyPrependIconLoading(Key As String, bLoading As Boolean)
	If bLoading Then
		BANano.GetElement($"#${mName}_${Key}_prepend_icon"$).AddClass("hide")
		BANano.GetElement($"#${mName}_${Key}_prepend"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_${Key}_prepend_icon"$).RemoveClass("hide")
		BANano.GetElement($"#${mName}_${Key}_prepend"$).RemoveClass("loading")
	End If
End Sub

Sub SetPropertyAppendIconLoading(Key As String, bLoading As Boolean)
	If bLoading Then
		BANano.GetElement($"#${mName}_${Key}_append_icon"$).AddClass("hide")
		BANano.GetElement($"#${mName}_${Key}_append"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_${Key}_append_icon"$).RemoveClass("hide")
		BANano.GetElement($"#${mName}_${Key}_append"$).RemoveClass("loading")
	End If
End Sub

Sub SetPropertyAppendIcon(Key As String, picon As String)
	If picon = "" Then Return
	BANano.GetElement($"#${mName}_${Key}_suffix"$).Remove
	UI.UpdateClassByID($"${mName}_${Key}_append_icon"$, "icon", picon)
	'
	UI.UpdateClassByID($"${mName}_${Key}_append"$, "size", sComponentSize)
	UI.Show($"${mName}_${Key}_append"$)
	UI.RemoveClassByID($"#${mName}_${Key}"$, "trradius brradius")
	SetPropertyTopRightRadius(Key, "0px")
	SetPropertyBottomRightRadius(Key, "0px")
End Sub
Sub SetPropertyPrefix(Key As String,l As String)
	If l = "" Then Return
	BANano.GetElement($"#${mName}_${Key}_prefix"$).RemoveClass("hide")
	BANano.GetElement($"#${mName}_${Key}_prefix"$).SetText(l)
	'BANano.GetElement($"#${mName}_${Key}"$).SetStyle(BANano.ToJson(CreateMap("border-top-left-radius": "0px")))
	'BANano.GetElement($"#${mName}_${Key}"$).SetStyle(BANano.ToJson(CreateMap("border-bottom-left-radius": "0px")))
	BANano.GetElement($"#${mName}_${Key}"$).RemoveClass("tlradius")
	BANano.GetElement($"#${mName}_${Key}"$).RemoveClass("blradius")
End Sub
Sub SetPropertySuffix(Key As String,l As String)
	If l = "" Then Return
	BANano.GetElement($"#${mName}_${Key}_suffix"$).RemoveClass("hide")
	BANano.GetElement($"#${mName}_${Key}_suffix"$).SetText(l)
	'BANano.GetElement($"#${mName}_${Key}"$).SetStyle(BANano.ToJson(CreateMap("border-top-right-radius": "0px")))
	'BANano.GetElement($"#${mName}_${Key}"$).SetStyle(BANano.ToJson(CreateMap("border-bottom-right-radius": "0px")))
	BANano.GetElement($"#${mName}_${Key}"$).RemoveClass("trradius")
	BANano.GetElement($"#${mName}_${Key}"$).RemoveClass("brradius")
End Sub
Sub SetPropertyShowEyes(Key As String, b As Boolean)
	If b Then
		SetPropertyTypePassword(Key, True)
		BANano.GetElement($"#${mName}_${Key}_append_icon"$).RemoveClass("fa-solid fa-eye-slash")
		SetPropertyAppendIcon(Key, "fa-solid fa-eye")
	Else
		BANano.GetElement($"#${mName}_${Key}_append"$).AddClass("hide")
	End If
End Sub
Sub SetPropertyToggleEyes(Key As String)
	Dim cicon As String = BANano.GetElement($"#${mName}_${Key}_append_icon"$).GetData("icon")
	cicon = UI.CStr(cicon)
	Select Case cicon
	Case "fa-solid fa-eye"
		SetPropertyAppendIcon(Key, "fa-solid fa-eye-slash")
		SetPropertyTypePassword(Key, False)
		If SubExists(mCallBack, $"${mName}_${Key}_toggle"$) Then
			CallSub2(mCallBack, $"${mName}_${Key}_toggle"$, False)
		End If
	Case "fa-solid fa-eye-slash"
		SetPropertyAppendIcon(Key, "fa-solid fa-eye")
		SetPropertyTypePassword(Key, True)
		If SubExists(mCallBack, $"${mName}_${Key}_toggle"$) Then
			CallSub2(mCallBack, $"${mName}_${Key}_toggle"$, False)
		End If
	End Select
End Sub
'DateFormat: "Y-m-d"
'DisplayDateFormat: "F j, Y"
'https://flatpickr.js.org/formatting/
Sub AddPropertyDatePicker(Key As String, Title As String, DefaultValue As String, Required As Boolean, DateFormat As String, DisplayDateFormat As String, locale As String)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "DatePicker")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}"><div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <input id="${mName}_${Key}" name="${mName}_${Key}" type="text" placeholder="${Title}" class="input input-${sComponentSize} input-bordered w-full"></input></div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
	'
	Dim dopt As Map = CreateMap()
	dopt.Put("allowInput", True)
	dopt.Put("altInput", False)
	dopt.Put("weekNumbers", False)
	dopt.Put("enableTime", False)
	If DateFormat <> "" Then dopt.Put("dateFormat", DateFormat)
	If DisplayDateFormat <> "" Then
		dopt.Put("altFormat", DisplayDateFormat)
		dopt.Put("altInput", True)
	End If
	dopt.Put("noCalendar", False)
	dopt.Put("locale", locale)
	dopt.put("disableMobile", True)
	'dopt.Put("allowInvalidPreload", True)
	If DefaultValue <> "" Then
		dopt.put("defaultDate", DefaultValue)
	End If
	'
	Dim xkey As String = $"#${mName}_${Key}"$
	Dim fp As BANanoObject = BANano.RunJavascriptMethod("flatpickr", Array(xkey, dopt))
	datesFP.Put($"${mName}_${Key}"$, fp)
End Sub
'<code>
'Dim dt1Options As RollDateOptions = app.InitRollDateTime
'dt1Options.beginYear = 2000
'dt1Options.endYear = 2100
'dt1Options.DateTimeFormat = "YYYY-MM-DD"
'AddPropertyRollDateTime("dt1", "Date of Birth", "", False, "left", dt1Options)
'</code>
'Sub AddPropertyRollDateTime(Key As String, Title As String, Description As String, Required As Boolean, TooltipPos As String, doptions As RollDateOptions)
'	propBagKeys.Put(Key, Required)
'	propBagValues.Put(Key, "")
'	Types.Put(Key, "String")
'	ComponentType.Put(Key, "RollDate")
'	If Required Then Compulsory.Put(Key, Key)
'	Dim scode As String = $"[BANCLEAN]
'    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
'<td id="${mName}_${Key}_th" >
'			<span id="${mName}_${Key}_tooltip">
'				<span id="${mName}_${Key}_title">${Title}</span>
'			</span>
'		</td>		
'    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
'    <div class="indicator w-full">
'    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
'    <div id="${mName}_${Key}_tooltip" class="tooltip ${ttColor} w-full tooltip-${TooltipPos}" data-tip="${Description}"></div>
'    </div>
'    </td>
'    </tr>"$
'	BANano.GetElement($"#${mName}_body"$).Append(scode)
'	SetPropertyDescription(Key, Description)
'	If Required Then
'		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
'	Else
'		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
'	End If
'	'
'	Dim cname As String = $"${mName}_${Key}"$
'	Dim sig As SDUITextBox
'	sig.AddRollDateTime(mback, $"${mName}_${Key}_tooltip"$, cname, Title, Description, "", "", doptions)
'	sig.RemoveLabel
'	sig.RemoveHint
'	rolldate.Put(cname, sig)
'End Sub
Sub AddPropertySignaturePad(Key As String, Title As String, Required As Boolean, Width As String, Height As String, ImageType As String)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, "")
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Signature")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <div id="${mName}_${Key}" class="w-full"></div>
    </div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	'
	Dim cname As String = $"${mName}_${Key}"$
'	Dim sig As SDUISignaturePad
'	sig.Initialize(mback, cname, cname)
'	Dim opt As Map = CreateMap()
'	opt.Put("Height", Height)
'	opt.Put("Width", Width)
'	opt.Put("ImageType", ImageType)
'	sig.AddToParent($"${mName}_${Key}_tooltip"$, opt)
'	signatures.Put(cname, sig)
End Sub

'DateFormat: "Y-m-d H:i"
'DisplayDateFormat: "F j, Y H:i"
'https://flatpickr.js.org/formatting/
Sub AddPropertyDateTimePicker(Key As String, Title As String, DefaultValue As String, Required As Boolean, DateFormat As String, DisplayDateFormat As String, Time24Hours As Boolean, locale As String)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "DateTimePicker")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}"><div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <input id="${mName}_${Key}" name="${mName}_${Key}" type="text" placeholder="${Title}" class="input input-${sComponentSize} input-bordered w-full"></input></div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
	'
	Dim dopt As Map = CreateMap()
	dopt.Put("allowInput", True)
	dopt.Put("altInput", False)
	dopt.Put("enableTime", True)
	If DateFormat <> "" Then dopt.Put("dateFormat", DateFormat)
	If DisplayDateFormat <> "" Then
		dopt.Put("altFormat", DisplayDateFormat)
		dopt.Put("altInput", True)
	End If
	dopt.Put("noCalendar", False)
	dopt.Put("time_24hr", Time24Hours)
	dopt.Put("locale", locale)
	dopt.put("disableMobile", True)
	'dopt.Put("allowInvalidPreload", True)
	If DefaultValue <> "" Then
		dopt.put("defaultDate", DefaultValue)
	End If
	'
	Dim xkey As String = $"#${mName}_${Key}"$
	Dim fp As BANanoObject = BANano.RunJavascriptMethod("flatpickr", Array(xkey, dopt))
	datesFP.Put($"${mName}_${Key}"$, fp)
End Sub
'DateFormat: "H:i" or "G:i K"
'https://flatpickr.js.org/formatting/
'locale = 'en
Sub AddPropertyTimePicker(Key As String, Title As String, DefaultValue As String, Required As Boolean, TimeFormat As String, DisplayFormat As String, Time24Hours As Boolean, locale As String)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "TimePicker")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}"><div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <input id="${mName}_${Key}" name="${mName}_${Key}" type="text" placeholder="${Title}" class="input input-${sComponentSize} input-bordered w-full"></input></div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
	'
	Dim dopt As Map = CreateMap()
	dopt.Put("allowInput", True)
	dopt.Put("altInput", False)
	dopt.Put("enableTime", True)
	If TimeFormat <> "" Then dopt.Put("dateFormat", TimeFormat)
	If DisplayFormat <> "" Then
		dopt.Put("altFormat", DisplayFormat)
		dopt.Put("altInput", True)
	End If
	dopt.Put("noCalendar", True)
	dopt.Put("time_24hr", Time24Hours)
	dopt.Put("locale", locale)
	dopt.put("disableMobile", True)
	'dopt.Put("allowInvalidPreload", True)
	If DefaultValue <> "" Then
		dopt.put("defaultDate", DefaultValue)
	End If
	'
	Dim xkey As String = $"#${mName}_${Key}"$
	Dim fp As BANanoObject = BANano.RunJavascriptMethod("flatpickr", Array(xkey, dopt))
	datesFP.Put($"${mName}_${Key}"$, fp)
End Sub


Sub AddPropertyPassword(Key As String, Title As String, DefaultValue As String, Required As Boolean)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Password")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}"><div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <input id="${mName}_${Key}" name="${mName}_${Key}" type="password" placeholder="${Title}" class="input input-${sComponentSize} input-bordered w-full"></input></div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
End Sub
'Sub AddPropertyColor(Key As String, Title As String, DefaultValue As String, Description As String, Required As Boolean, TooltipPos As String)
'	propBagKeys.Put(Key, Required)
'	propBagValues.Put(Key, DefaultValue)
'	Types.Put(Key, "String")
'	ComponentType.Put(Key, "Color")
'	If Required Then Compulsory.Put(Key, Key)
'	Dim scode As String = $"[BANCLEAN]
'    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
'<td id="${mName}_${Key}_th" >
'			<span id="${mName}_${Key}_tooltip">
'				<span id="${mName}_${Key}_title">${Title}</span>
'			</span>
'		</td>		
'    <td id="${mName}_${Key}_td" class="${sPropertyPadding}"><div class="indicator w-full">
'    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
'    <div id="${mName}_${Key}_tooltip" class="tooltip w-full ${ttColor} tooltip-${TooltipPos}" data-tip="${Description}">
'    <input id="${mName}_${Key}" name="${mName}_${Key}" type="color" placeholder="${Title}" class="input input-${sComponentSize} input-bordered w-full"></input></div>
'    </div></td>
'    </tr>"$
'	BANano.GetElement($"#${mName}_body"$).Append(scode)
'	SetPropertyDescription(Key, Description)
'	If Required Then
'		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
'	Else
'		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
'	End If
'	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
'	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
'End Sub
Sub AddPropertyNumber(Key As String, Title As String, DefaultValue As String, Required As Boolean)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Number")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}"><div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <input id="${mName}_${Key}" name="${mName}_${Key}" type="number" inputmode="numeric" placeholder="${Title}" class="input input-${sComponentSize} input-bordered w-full"></input></div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
End Sub
Sub AddPropertyTelephone(Key As String, Title As String, DefaultValue As String, Required As Boolean)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Telephone")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}"><div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <input id="${mName}_${Key}" name="${mName}_${Key}" type="tel" inputmode="tel" placeholder="${Title}" class="input input-${sComponentSize} input-bordered w-full"></input></div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
End Sub
Sub AddPropertyEmail(Key As String, Title As String, DefaultValue As String, Color As String)
	Dim xcolor As String = UI.FixColor("link", Color)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Email")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <a id="${mName}_${Key}" href="mailto:${DefaultValue}" class="link ${xcolor}">${DefaultValue}</a>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}"$).SetText(BANano.SF(DefaultValue))
End Sub
Sub AddPropertyLabel(Key As String, Title As String, DefaultValue As String, Color As String)
	Dim xcolor As String = UI.FixColor("text", Color)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Label")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <label id="${mName}_${Key}" class="${xcolor}">${DefaultValue}</label>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}"$).SetText(BANano.SF(DefaultValue))
End Sub
Sub AddPropertyLink(Key As String, Title As String, DefaultValue As String, Color As String)
	Dim xcolor As String = UI.FixColor("link", Color)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Link")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <a id="${mName}_${Key}" href="${DefaultValue}" target="_blank" class="link ${xcolor}">${DefaultValue}</a>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}"$).SetText(BANano.SF(DefaultValue))
End Sub
'empty div to place other controls
Sub AddPropertyPlaceHolder(Key As String, Title As String, DefaultValue As String)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "PlaceHolder")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div id="${mName}_${Key}">${DefaultValue}</div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}"$).SetText(BANano.SF(DefaultValue))
End Sub
'replace placeholder proverty with this content
Sub SetPropertyHTML(Key As String, value As String)
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${Key}"$)
	el.Empty
	el.SetHTML(value)
End Sub
Sub SetPropertyTypePassword(Key As String, b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_${Key}"$).SetAttr("type", "password")
	Else
		BANano.GetElement($"#${mName}_${Key}"$).SetAttr("type", "text")
	End If
End Sub
Sub SetPropertyType(Key As String, typeOf As String)
	BANano.GetElement($"#${mName}_${Key}"$).SetAttr("type", typeOf)
End Sub
Sub SetPropertyNoArrows(Key As String)
	UI.AddClassBYID($"#${mName}_${Key}"$, "[appearance:textfield] [&::-webkit-outer-spin-button]:appearance-none [&::-webkit-inner-spin-button]:appearance-none")
End Sub
Sub SetPropertyEnabled(Key As String, xEnabled As Boolean)
	If xEnabled Then
		BANano.GetElement($"#${mName}_${Key}"$).RemoveAttr("disabled")
	Else
		BANano.GetElement($"#${mName}_${Key}"$).SetAttr("disabled", "disabled")
	End If
End Sub
Sub SetPropertyAutoFocus(Key As String, p As Boolean)
	If p Then
		BANano.GetElement($"#${mName}_${Key}"$).SetAttr("autofocus", "autofocus")
	Else
		BANano.GetElement($"#${mName}_${Key}"$).RemoveAttr("autofocus")
	End If
End Sub
Sub SetPropertyFocus(Key As String)
	BANano.GetElement($"#${mName}_${Key}"$).RunMethod("focus", Null)
End Sub

'check only some properties
Sub PropertiesAreValid(props As List) As Boolean
	'get the pbag values
	Dim values As Map = BANano.Await(getPropertyBag)
	Dim iValid As Int = 0
	'loop through each key
	For Each k As String In props
		'get the value
		Dim cv As String = values.GetDefault(k, "")
		cv = UI.CStr(cv)
		cv = cv.Trim
		'if blank, we have an issue
		If cv = "" Then
			iValid = BANano.parseint(iValid) + 1
			SetPropertyColor(K, "error")
		Else
			SetPropertyColor(K, "success")
		End If
	Next
	If iValid = 0 Then
		Return True
	Else
		Return False
	End If
End Sub
'is the property bag valid
Sub PropertyBagIsValid As Boolean
	'get the pbag values
	Dim values As Map = BANano.Await(getPropertyBag)
	Dim iValid As Int = 0
	'loop through each key
	For Each k As String In propBagKeys.Keys
		'is the key required
		Dim b As Boolean = propBagKeys.Get(k)
		'if the key is required
		If b Then
			'get the value
			Dim cv As String = values.GetDefault(k, "")
			cv = UI.CStr(cv)
			cv = cv.Trim
			'if blank, we have an issue
			If cv = "" Then
				iValid = BANano.parseint(iValid) + 1
			End If
		End If
	Next
	If iValid = 0 Then
		Return True
	Else
		Return False
	End If
End Sub
'check if propertues match
Sub PropertyIsMatch(fld1 As String, fld2 As String) As Boolean
	Dim v1 As String = GetPropertyValue(fld1)
	Dim v2 As String = GetPropertyValue(fld2)
	v1 = UI.CStr(v1)
	v1 = v1.Trim
	v2 = UI.CStr(v2)
	v2 = v2.Trim
	If v1 = v2 Then
		SetPropertyColor(fld1, "success")
		SetPropertyColor(fld2, "success")
		Return True
	Else
		SetPropertyColor(fld1, "error")
		SetPropertyColor(fld2, "error")
		Return False
	End If
End Sub
Sub AddPropertyTextArea(Key As String, Title As String, DefaultValue As String, Required As Boolean)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "TextArea")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <div id="${mName}_${Key}_formcontrol" class="form-control w-full">
    <label id="${mName}_${Key}_inputgroup" class="input-group">
    <span id="${mName}_${Key}_prefix" class="hide"></span>
    <btn id="${mName}_${Key}_prepend" class="btn hide btn-${sComponentSize}"><i id="${mName}_${Key}_prepend_icon"></i></btn>
    <textarea id="${mName}_${Key}" placeholder="${Title}" name="${mName}_${Key}" class="textarea break-normal textarea-bordered textarea-${sComponentSize} w-full tlradius blradius trradius brradius resize-y"></textarea>
    <span id="${mName}_${Key}_suffix" class="hide"></span>
    <btn id="${mName}_${Key}_append" class="btn hide btn-${sComponentSize}"><i id="${mName}_${Key}_append_icon"></i></btn>
    </label>
    </div>
    </div>
    </td>
    </tr>"$
		
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
	BANano.GetElement($"#${mName}_${Key}_append"$).On("click", mCallBack, $"${mName}_${Key}_AppendClick"$)
	BANano.GetElement($"#${mName}_${Key}_prepend"$).On("click", mCallBack, $"${mName}_${Key}_PrependClick"$)
End Sub
Sub SetPropertyRangeText(Key As String, value As String)
	BANano.GetElement($"#${mName}_${Key}_text"$).SetText(value)
End Sub
Sub SetPropertyProgressText(Key As String, value As String)
	BANano.GetElement($"#${mName}_${Key}_text"$).SetText(value)
End Sub

Sub SetPropertyCaption(Key As String, value As String)
	BANano.GetElement($"#${mName}_${Key}_title"$).SetHTML(BANano.SF(value))
End Sub

Sub SetPropertyToolTip(Key As String, value As String)
	Dim tColor As String = UI.FixColor("tooltip", sTooltipColor)
	Dim tPos As String = $"tooltip-${sTooltipPosition}"$
	If value = "" Then
		UI.RemoveClassByID($"${mName}_${Key}_tooltip"$, $"tooltip ${tColor} ${tPos}"$)
		BANano.GetElement($"#${mName}_${Key}_tooltip"$).RemoveAttr("data-tip")
	Else
		UI.AddClassByID($"${mName}_${Key}_tooltip"$, $"tooltip ${tColor} ${tPos}"$)
		BANano.GetElement($"#${mName}_${Key}_tooltip"$).SetData("tip", value)
	End If
End Sub

'left, center, right
Sub SetPropertyAlignment(Key As String, value As String)
	Dim malign As String = ""
	Select Case value
		Case "l", "left"
			malign = "text-left"
		Case "r", "right"
			malign = "text-right"
		Case "c", "center"
			malign = "text-center"
		Case Else
			Return
	End Select
	'
	BANano.GetElement($"#${mName}_${Key}_td"$).AddClass(malign)
	If BANano.Exists($"#${mName}_${Key}"$) Then
		BANano.GetElement($"#${mName}_${Key}"$).AddClass(malign)
	End If
End Sub

Sub SetPropertyValue(Key As String, value As String)
	Dim sComponentType As String = ComponentType.Get(Key)
	Select Case sComponentType
		Case "Avatar", "Image"
			value = UI.CStr(value)
			If value.StartsWith("data:image") Then
				Dim ni As String = value
			Else
				Dim ni As String = $"${value}?${DateTime.Now}"$
			End If
			BANano.GetElement($"#${mName}_${Key}_src"$).SetAttr("src", ni)
			BANano.GetElement($"#${mName}_${Key}_src"$).SetAttr("data-src", value)
		Case "FileInput", "FileInputProgress", "CamCorder", "Camera", "Microphone"
			BANano.GetElement($"#${mName}_${Key}"$).SetValue(Null)
		Case "TextBox", "TextBoxGroup", "PasswordGroup", "DatePicker", "DateTimePicker", "TimePicker", "Password", "Color", "Number", _
        "Telephone", "TextArea", "Select", "SelectGroup", "Dialer"
			value = UI.CStr(value)
			If value.Contains("</br>") Then
				value = value.replace("</br>", CRLF)
			End If
			If value.Contains("<br/>") Then
				value = value.replace("<br/>", CRLF)
			End If
			BANano.GetElement($"#${mName}_${Key}"$).SetValue(value)
			If datesFP.ContainsKey($"${mName}_${Key}"$) Then
				Dim fp As BANanoObject = datesFP.Get($"${mName}_${Key}"$)
				Try
					fp.RunMethod("setDate", Array(value))
				Catch
				End Try			'ignore
			End If
		Case "RollDate"
			value = UI.CStr(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetValue(value)
		Case "Signature"
			'Dim sig As SDUISignaturePad = signatures.Get($"${mName}_${Key}"$)
			'sig.clear
			'If value <> "" Then
			'	sig.fromDataURL(value)
			'End If
		Case "RadialProgress"
			value = UI.CStr(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetText($"${value}%"$)
			BANano.GetElement($"#${mName}_${Key}"$).SetData("value", value)
			UI.SetStyleByID($"#${mName}_${Key}"$,"--value", value)
		Case "Rating"
			BANano.GetElement($"#${mName}_${Key}_${value}"$).SetChecked(True)
		Case "CheckBox", "Toggle"
			value = UI.CBool(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetChecked(value)
		Case "Progress"
			value = UI.CStr(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetValue(value)
			BANano.GetElement($"#${mName}_${Key}_text"$).SetText($"${value}%"$)
		Case "Range"
			value = UI.CStr(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetValue(value)
			BANano.GetElement($"#${mName}_${Key}_text"$).SetText(value)
		Case "Email"
			value = UI.CStr(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetText(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetAttr("href", $"mailto:${value}"$)
		Case "Link"
			value = UI.CStr(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetText(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetAttr("href", value)
		Case "Label"
			value = UI.CStr(value)
			BANano.GetElement($"#${mName}_${Key}"$).SetText(value)
		Case "AvatarPlaceholder"
			value = UI.CStr(value)
			BANano.GetElement($"#${mName}_${Key}_span"$).SetText(value)
		Case "AvatarGroup"
			Dim bo As Object = value
			SetPropertyAvatarGroupItems(Key, bo)		'ignore
		Case "GroupSelect", "CheckBoxGroup", "ToggleGroup", "RadioGroup"
			value = UI.CStr(value)
			Dim lvalues As List = UI.StrParse(";", value)
			lvalues = UI.ListTrimItems(lvalues)
			'get all items in the group select
			'uncheck everything
			Dim allitems As Map = RGOptions.Get(Key)
			For Each k As String In allitems.Keys
				k = UI.CleanID(k)
				Dim nk As String = $"${mName}_${Key}_${k}"$
				BANano.Await(UI.SetCheckedByID(nk, False))
			Next
			'check the ones we have specified
			For Each k As String In lvalues
				k = UI.CleanID(k)
				Dim nk As String = $"${mName}_${Key}_${k}"$
				BANano.Await(UI.SetCheckedByID(nk, True))
			Next
	End Select
End Sub
Sub GetPropertyHintID(Key As String) As String
	Return $"${mName}_${Key}row"$
End Sub
Sub GetPropertyValue(Key As String) As String
	Dim sComponentType As String = ComponentType.Get(Key)
	Dim v As String = ""
	Select Case sComponentType
		Case "Avatar", "Image"
			v = BANano.GetElement($"#${mName}_${Key}_src"$).GetAttr("data-src")
			v = UI.CStr(v)
			If v.StartsWith("data:image") Then
			Else
				v = UI.MvField(v, 1, "?")
			End If
		Case "TextArea"
			Dim v1 As String = BANano.GetElement($"#${mName}_${Key}"$).GetValue
			v1 = UI.CStr(v1)
			If v1.Contains(CRLF) Then
				v = v1.replace(CRLF, "<br/>")
			Else
				v = v1
			End If
		Case "AvatarPlaceholder"
			v = BANano.GetElement($"#${mName}_${Key}_span"$).GetText
			v = UI.CStr(v)
		Case "RadialProgress"
			v = UI.GetDataAttrByID($"#${mName}_${Key}"$, "value")
			'v = UI.GetStyleByID(Key, "--value")
			v = UI.CStr(v)
		Case "Rating"
			Dim Itemx As BANanoElement
			Itemx.Initialize($"input[name=${mName}_${Key}]:checked"$)
			v = Itemx.GetValue
			v = UI.CInt(v)
		'Case "RadioGroup"
		'	Dim Itemx As BANanoElement
		'	Itemx.Initialize($"input[name=${mName}_${Key}]:checked"$)
		'	v = Itemx.GetValue
		'	v = UI.CStr(v)
		Case "CheckBox", "Toggle"
			v = BANano.GetElement($"#${mName}_${Key}"$).GetChecked
			v = UI.CBool(v)
		Case "Email","Link", "Label"
			v = BANano.GetElement($"#${mName}_${Key}"$).GetText
			v = UI.CStr(v)
		Case "FileInput", "FileInputProgress", "CamCorder", "Camera", "Microphone"
			v = GetPropertyFile(Key)		'ignore
		Case "AvatarGroup"
			v = BANano.GetElement($"#${mName}_${Key}_group"$).GetData("items")
			v = UI.CStr(v)
		Case "Signature"
			'Dim sig As SDUISignaturePad = signatures.Get($"${mName}_${Key}"$)
			'v = sig.toDataURL
		Case "GroupSelect", "CheckBoxGroup", "ToggleGroup", "RadioGroup"
			'get all items in the group select
			Dim allitems As Map = RGOptions.Get(Key)
			Dim sItems As List
			sItems.Initialize 
			For Each k As String In allitems.Keys
				Dim nk As String = $"${mName}_${Key}_${k}"$
				Dim b As Boolean = BANano.Await(UI.GetCheckedByID(nk))
				If b Then
					sItems.Add(k)
				End If
			Next
			v = UI.Join(";", sItems)
		Case Else
			v = BANano.GetElement($"#${mName}_${Key}"$).GetValue
			v = UI.CStr(v)
			If v = "--Nothing Selected--" Then v = ""
	End Select
	Return v
End Sub
Sub GetPropertyFiles(Key As String) As List
	'get the selected files, if any
	Dim files As Object = BANano.GetElement($"#${mName}_${Key}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Return res
End Sub
Sub GetPropertyFile(Key As String) As Map
	If BANano.GetElement($"#${mName}_${Key}"$).GetField("files").GetField("length").Result = 0 Then 'ignore
		Return Null
	Else
		Dim obj() As BANanoObject = BANano.GetElement($"#${mName}_${Key}"$).GetField("files").Result
		Return obj(0)
	End If
End Sub
Sub GetPropertyImage(Key As String) As String
	Dim imgLink As String = BANano.GetElement($"#${mName}_${Key}_src"$).GetData("src")
	Return imgLink
End Sub
Sub SetPropertyBadge(Key As String, value As Object)
	BANano.GetElement($"#${mName}_${Key}badge"$).SetText(value)
End Sub
Sub AddPropertySelect(Key As String, Title As String, DefaultValue As String, Required As Boolean, Options As Map)
	propBagKeys.Put(Key, Required)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Select")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}"><div class="indicator w-full">
    <span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    <select id="${mName}_${Key}" name="${mName}_${Key}" class="select grow select-${sComponentSize} select-bordered w-full">
    </select></div></td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If Required Then
		BANano.GetElement($"#${mName}_${Key}badge"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}badge"$).AddClass("hide")
	End If
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	sbOptions.Append($"<option name="${mName}_${Key}" disabled selected>Select ${Title}</option>""$)
	For Each k As String In Options.Keys
		If k = "" Then Continue
		Dim v As String = Options.Get(k)
		Dim sItem As String = $"<option name="${mName}_${Key}" value="${k}">${v}</option>"$
		sbOptions.Append(sItem)
	Next
	BANano.GetElement($"#${mName}_${Key}"$).Append(sbOptions.ToString)
	BANano.GetElement($"#${mName}_${Key}"$).SetValue(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
	sbOptions.Initialize
End Sub

'set select items from a map
Sub SetPropertySelectMap(Key As String, Options As Map)
	BANano.GetElement($"#${mName}_${Key}"$).Empty
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	sbOptions.Append($"<option name="${mName}_${Key}" disabled selected>--Nothing Selected--</option>""$)
	For Each k As String In Options.Keys
		Dim v As String = Options.Get(k)
		Dim sItem As String = $"<option name="${mName}_${Key}" value="${k}">${v}</option>"$
		sbOptions.Append(sItem)
	Next
	BANano.GetElement($"#${mName}_${Key}"$).Append(sbOptions.ToString)
	sbOptions.Initialize
End Sub
Sub SetPropertySelectClear(Key As String)
	BANano.GetElement($"#${mName}_${Key}"$).Empty
End Sub
Sub SetPropertySelectAddItem(Key As String, itemValue As String, itemText As String)
	Try
		Dim sItem As String = $"<option name="${mName}_${Key}" value="${itemValue}">${itemText}</option>"$
		BANano.GetElement($"#${mName}_${Key}"$).Append(sItem)
	Catch
	End Try		'ignore
End Sub

'set select items from a list
Sub SetPropertySelectItemsList(Key As String, Options As List)
	BANano.GetElement($"#${mName}_${Key}"$).Empty
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	sbOptions.Append($"<option name="${mName}_${Key}" disabled selected>--Nothing Selected--</option>""$)
	For Each k As String In Options
		Dim sItem As String = $"<option name="${mName}_${Key}" value="${k}">${k}</option>"$
		sbOptions.Append(sItem)
	Next
	BANano.GetElement($"#${mName}_${Key}"$).Append(sbOptions.ToString)
	sbOptions.Initialize
End Sub

Sub SetPropertyAvatarGroupItems(Key As String, Images As List)
	Dim xitems As String = UI.Join(";", Images)
	Dim sSize As String = BANano.GetElement($"#${mName}_${Key}_group"$).GetData("size")
	Dim Shape As String = BANano.GetElement($"#${mName}_${Key}_group"$).GetData("shape")
	Dim smask As String = UI.FixMask(Shape)
	Dim imgCnt As Int = 0
	Dim sbItems As StringBuilder
	sbItems.Initialize
	For Each k As String In Images
		If k = "" Then Continue
		imgCnt = BANano.parseInt(imgCnt) + 1
		Dim sItem As String = $"<div id="${mName}_${Key}_avatar_${imgCnt}" class="avatar">
        <div id="${mName}_${Key}_host_${imgCnt}" class="border-2 ${smask} ${UI.FixSize("w",sSize)}">
        <img id="${mName}_${Key}_src_${imgCnt}" src="${k}" alt=""></img>
        </div>
        </div>"$
		sbItems.Append(sItem)
	Next
	BANano.GetElement($"#${mName}_${Key}_group"$).Empty
	BANano.GetElement($"#${mName}_${Key}_group"$).SetData("items", xitems)
	BANano.GetElement($"#${mName}_${Key}_group"$).Append(sbItems.ToString)
	sbItems.Initialize
End Sub

Sub SetPropertySelectItemsListSort(Key As String, Options As List)
	Options.Sort(True)
	BANano.GetElement($"#${mName}_${Key}"$).Empty
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	sbOptions.Append($"<option name="${mName}_${Key}" disabled selected>--Nothing Selected--</option>""$)
	For Each k As String In Options
		Dim sItem As String = $"<option name="${mName}_${Key}" value="${k}">${k}</option>"$
		sbOptions.Append(sItem)
	Next
	BANano.GetElement($"#${mName}_${Key}"$).Append(sbOptions.ToString)
	sbOptions.Initialize
End Sub

Sub SetPropertySelectItemsOptions(Key As String, delim As String, bSort As Boolean, bAddNothingSelected As Boolean, sOptions As String)
	Dim options As List = UI.StrParse(delim, sOptions)
	If bSort Then options.Sort(True)
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	BANano.GetElement($"#${mName}_${Key}"$).Empty
	If bAddNothingSelected Then
		sbOptions.Append($"<option name="${mName}_${Key}" disabled selected>--Nothing Selected--</option>""$)
	End If
	For Each k As String In options
		Dim sItem As String = $"<option name="${mName}_${Key}" value="${k}">${k}</option>"$
		sbOptions.Append(sItem)
	Next
	BANano.GetElement($"#${mName}_${Key}"$).Append(sbOptions.ToString)
	sbOptions.Initialize
End Sub

Sub SetPropertySelectItemsList1(Key As String, bAddNothingSelected As Boolean, Options As List)
	BANano.GetElement($"#${mName}_${Key}"$).Empty
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	If bAddNothingSelected Then
		sbOptions.Append($"<option name="${mName}_${Key}" disabled selected>--Nothing Selected--</option>""$)
	End If
	For Each k As String In Options
		Dim sItem As String = $"<option name="${mName}_${Key}" value="${k}">${k}</option>"$
		sbOptions.Append(sItem)
	Next
	BANano.GetElement($"#${mName}_${Key}"$).Append(sbOptions.ToString)
	sbOptions.Initialize
End Sub
'this us used for the camera content without uploading
'<code>
'Sub table_key(e As BANanoEvent)
'e.PreventDefault
''has the file been specified
'Dim fileObj As Map = table.GetFileFromEvent(e)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = UI.GetFileDetails(fileObj)
''get the file name
'Dim fn As String = fileDet.FileName
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = UI.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''Dim fText As String = BANano.Await(UI.readAsDataURLWait(fileObj))
''Dim fJSON As Map = BANano.Await(UI.readAsJsonWait(fileObj))
''Dim fBuffer As Object = BANano.Await(UI.readAsArrayBufferWait(fileObj))
''Dim fText As String = BANano.Await(UI.readAsTextWait(fileObj))
''start uploading the file to assets folder
''fileDet = UI.UploadFileWait(fileObj)
''fileDet = UI.UploadFileOptionsWait(fileObj, "../assets", "n")
'img.Src = fText
'img.Tag = fText
'End Sub
'</code>
Sub AddPropertyFileInput(Key As String, Title As String, Required As Boolean)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, Null)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "FileInput")
	If Required Then Compulsory.Put(Key, Key)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    	<td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    	<td id="${mName}_${Key}_td" class="${sPropertyPadding}">
			<div class="indicator w-full">
				<span id="${mName}_${Key}badge" class="indicator-item badge size-2 p-0 badge-error"></span>
    			<input id="${mName}_${Key}" name="${mName}_${Key}" type="file" class="file-input file-input-${sComponentSize} file-input-bordered w-full"></input>
			<div>
		</td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If SubExists(mCallBack, $"${mName}_${Key}_FileChange"$) Then
		BANano.GetElement($"#${mName}_${Key}"$).On("change", mCallBack, $"${mName}_${Key}_FileChange"$)
	Else
		BANano.Console.Warn($"AddPropertyFileInput.${Key}, missing '${mName}_${Key}_FileChange' change event, please add."$)
	End If
End Sub
'this us used for the camera content without uploading
'<code>
''when button is clicked
'private Sub table_key_click(e As BANanoEvent)
'	e.PreventDefault
'	e.StopPropagation
'	'click the file input to fire change event
'	BANano.GetElement($"#${table_key}"$).RunMethod("click", Null)
'End Sub
''change event for file
'Sub table_key(e As BANanoEvent)
'e.PreventDefault
''has the file been specified
'Dim fileObj As Map = table.GetFileFromEvent(e)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = UI.GetFileDetails(fileObj)
''get the file name
'Dim fn As String = fileDet.FileName
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = UI.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''Dim fText As String = BANano.Await(UI.readAsDataURLWait(fileObj))
''Dim fJSON As Map = BANano.Await(UI.readAsJsonWait(fileObj))
''Dim fBuffer As Object = BANano.Await(UI.readAsArrayBufferWait(fileObj))
''Dim fText As String = BANano.Await(UI.readAsTextWait(fileObj))
''start uploading the file to assets folder
''fileDet = UI.UploadFileWait(fileObj)
''fileDet = UI.UploadFileOptionsWait(fileObj, "../assets", "n")
'img.Src = fText
'img.Tag = fText
'End Sub
'</code>
Sub AddPropertyFileInputProgress(Key As String, Title As String, xSize As String, xIcon As String, xColor As String)
	If xIcon = "" Then xIcon = "fa-solid fa-arrow-up-from-bracket"
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, Null)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "FileInputProgress")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    	<td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    	<td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    		<div id="${mName}_${Key}_formcontrol" class="flex items-center w-full">
    			<button id="${mName}_${Key}_button" class="btn btn-circle btn-${xColor} w-[${xSize}] h-[${xSize}]">
    				<i id="${mName}_${Key}_icon" data-icon="${xIcon}" class="${xIcon} fa-2xl"></i>
    				<div id="${mName}_${Key}_progress" role="progressbar" class="radial-progress text-white bg-${xColor}" style="--size:${xSize}; --thickness: 1px;"></div>
    			</button>
    			<input id="${mName}_${Key}" name="${mName}_${Key}" type="file" class="hide"/>
    		</div>
    	</td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}_button"$).RemoveClass("hide")
	BANano.GetElement($"#${mName}_${Key}_progress"$).AddClass("hide")
	BANano.GetElement($"#${mName}_${Key}_icon"$).RemoveClass("hide")
	UI.OnEventByID($"${mName}_${Key}_button"$, "click", Me, "FileButtonClick")
	'
	If SubExists(mCallBack, $"${mName}_${Key}_FileChange"$) Then
		BANano.GetElement($"#${mName}_${Key}"$).On("change", mCallBack, $"${mName}_${Key}_FileChange"$)
	Else
		BANano.Console.Warn($"AddPropertyFileInputProgress.${Key}, missing '${mName}_${Key}_FileChange' change event, please add."$)
	End If
End Sub

private Sub FileButtonClick(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim action As String = UI.MvField(src,2, "_")
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${action}"$)
	el.SetValue(Null)
	el.RunMethod("click", Null)
End Sub


'this us used for the camera content without uploading
'<code>
''when button is clicked
'private Sub table_key_click(e As BANanoEvent)
'	e.PreventDefault
'	e.StopPropagation
'	'click the file input to fire change event
'	BANano.GetElement($"#${key}"$).RunMethod("click", Null)
'End Sub
''change event for file
'Sub table_key(e As BANanoEvent)
'e.PreventDefault
''has the file been specified
'Dim fileObj As Map = table.GetFileFromEvent(e)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = UI.GetFileDetails(fileObj)
''get the file name
'Dim fn As String = fileDet.FileName
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = UI.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''Dim fText As String = BANano.Await(UI.readAsDataURLWait(fileObj))
''Dim fJSON As Map = BANano.Await(UI.readAsJsonWait(fileObj))
''Dim fBuffer As Object = BANano.Await(UI.readAsArrayBufferWait(fileObj))
''Dim fText As String = BANano.Await(UI.readAsTextWait(fileObj))
''start uploading the file to assets folder
''fileDet = UI.UploadFileWait(fileObj)
''fileDet = UI.UploadFileOptionsWait(fileObj, "../assets", "n")
'img.Src = fText
'img.Tag = fText
'End Sub
'</code>
Sub AddPropertyCamCorder(Key As String, Title As String, xSize As String, xColor As String)
	AddPropertyFileInputProgress(Key, Title, xSize, "", xColor)
	SetPropertyFileInputProgressCamCorder(Key)
	ComponentType.Put(Key, "CamCorder")
End Sub
'this us used for the camera content without uploading
'<code>
''when button is clicked
'private Sub table_key_click(e As BANanoEvent)
'	e.PreventDefault
'	e.StopPropagation
'	'click the file input to fire change event
'	BANano.GetElement($"#${key}"$).RunMethod("click", Null)
'End Sub
''change event for file
'Sub table_key(e As BANanoEvent)
'e.PreventDefault
''has the file been specified
'Dim fileObj As Map = table.GetFileFromEvent(e)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = UI.GetFileDetails(fileObj)
''get the file name
'Dim fn As String = fileDet.FileName
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = UI.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''Dim fText As String = BANano.Await(UI.readAsDataURLWait(fileObj))
''Dim fJSON As Map = BANano.Await(UI.readAsJsonWait(fileObj))
''Dim fBuffer As Object = BANano.Await(UI.readAsArrayBufferWait(fileObj))
''Dim fText As String = BANano.Await(UI.readAsTextWait(fileObj))
''start uploading the file to assets folder
''fileDet = UI.UploadFileWait(fileObj)
''fileDet = UI.UploadFileOptionsWait(fileObj, "../assets", "n")
'img.Src = fText
'img.Tag = fText
'End Sub
'</code>
Sub AddPropertyCamera(Key As String, Title As String, xSize As String, xColor As String)
	AddPropertyFileInputProgress(Key, Title, xSize, "", xColor)
	SetPropertyFileInputProgressCamera(Key)
	ComponentType.Put(Key, "Camera")
End Sub
'this us used for the camera content without uploading
'<code>
''when button is clicked
'private Sub table_key_click(e As BANanoEvent)
'	e.PreventDefault
'	e.StopPropagation
'	'click the file input to fire change event
'	BANano.GetElement($"#${key}"$).RunMethod("click", Null)
'End Sub
''change event for file
'Sub table_key(e As BANanoEvent)
'e.PreventDefault
''has the file been specified
'Dim fileObj As Map = table.GetFileFromEvent(e)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = UI.GetFileDetails(fileObj)
''get the file name
'Dim fn As String = fileDet.FileName
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = UI.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''Dim fText As String = BANano.Await(UI.readAsDataURLWait(fileObj))
''Dim fJSON As Map = BANano.Await(UI.readAsJsonWait(fileObj))
''Dim fBuffer As Object = BANano.Await(UI.readAsArrayBufferWait(fileObj))
''Dim fText As String = BANano.Await(UI.readAsTextWait(fileObj))
''start uploading the file to assets folder
''fileDet = UI.UploadFileWait(fileObj)
''fileDet = UI.UploadFileOptionsWait(fileObj, "../assets", "n")
'img.Src = fText
'img.Tag = fText
'End Sub
'</code>
Sub AddPropertyMicrophone(Key As String, Title As String, xSize As String, xColor As String)
	AddPropertyFileInputProgress(Key, Title, xSize, "", xColor)
	SetPropertyFileInputProgressMicrophone(Key)
	ComponentType.Put(Key, "Microphone")
End Sub
private Sub SetPropertyFileInputProgressCamCorder(key As String)
	UI.SetIconNameByID($"${mName}_${key}_icon"$, "fa-solid fa-video")
	UI.SetAttrByID($"${mName}_${key}"$, "accept", "video/*;capture=camcorder")
End Sub
private Sub SetPropertyFileInputProgressCamera(key As String)
	UI.SetIconNameByID($"${mName}_${key}_icon"$, "fa-solid fa-camera")
	UI.SetAttrByID($"${mName}_${key}"$, "accept", "image/*;capture=camera")
	UI.SetAttrByID($"${mName}_${key}"$, "capture", "environment")
End Sub
Sub SetPropertyFileInputAccept(key As String, saccept As String)
	UI.SetAttrByID($"${mName}_${key}"$, "accept", saccept)
End Sub
Sub SetPropertyFileInputProgressMicrophone(key As String)
	UI.SetIconNameByID($"${mName}_${key}_icon"$, "fa-solid fa-microphone")
	UI.SetAttrByID($"${mName}_${key}"$, "accept", "audio/*;capture=microphone")
End Sub
Sub SetPropertyFileInputMultiple(key As String, b As Boolean)
	If b Then
		UI.SetAttrByID($"${mName}_${key}"$, "multiple", "multiple")
	Else
		UI.RemoveAttrByID($"${mName}_${key}"$, "multiple")
	End If
End Sub
Sub SetPropertyFileInputProgressLoading(key As String, Value As Int, Status As Boolean)
	If Status = False Then
		'hide the progress
		UI.Hide($"${mName}_${key}_progress"$)
		'show icon
		UI.Show($"${mName}_${key}_icon"$)
	Else
		'hide the icon
		UI.Hide($"${mName}_${key}_icon"$)
		UI.Show($"${mName}_${key}_progress"$)
		UI.SetTextByID($"${mName}_${key}_progress"$, $"${Value}%"$)
		UI.SetStyleByID($"${mName}_${key}_progress"$, "--value", Value)
	End If
End Sub

Sub AddPropertyAvatar(Key As String, Title As String, sSize As String, Shape As String, Url As String)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, Url)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Avatar")
	Dim smask As String = UI.FixMask(Shape)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div id="${mName}_${Key}_avatar" class="avatar">
    <div id="${mName}_${Key}_host" class="${smask} ${UI.FixSize("w",sSize)}">
    <img id="${mName}_${Key}_src" name="${mName}_${Key}" src="${Url}" alt=""></img>
    </div>
    </div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
End Sub

Sub AddPropertyAvatarPlaceholder(Key As String, Title As String, DefaultValue As String, sSize As String, Shape As String, Color As String, textSize As String)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "AvatarPlaceholder")
	Dim smask As String = UI.FixMask(Shape)
	Dim acolor As String = UI.FixColor("bg", Color) & " " & UI.FixColorIntensity("text", Color, "content")
	Dim tsize As String = UI.FixSize("text", textSize)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div id="${mName}_${Key}_avatar" class="avatar avatar-placeholder">
    <div id="${mName}_${Key}_host" class="${acolor} ${smask} ${UI.FixSize("w",sSize)}">
    <span id="${mName}_${Key}_span" class="${tsize}" name="${mName}_${Key}">${DefaultValue}</img>
    </div>
    </div>
    </td>
    </tr>"$
	'
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}_span"$).SetText(BANano.SF(DefaultValue))
End Sub

Sub AddPropertyAvatarGroup(Key As String, Title As String, sSize As String, Shape As String, Images As List)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, "")
	Types.Put(Key, "String")
	ComponentType.Put(Key, "AvatarGroup")
	Dim smask As String = UI.FixMask(Shape)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div id="${mName}_${Key}_group" class="avatar-group -space-x-3" data-size="${sSize}" data-shape="${Shape}">
    </div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	Dim sbItems As StringBuilder
	sbItems.Initialize
	Dim imgCnt As Int = 0
	Dim xitems As String = UI.Join(";", Images)
	For Each k As String In Images
		If k = "" Then Continue
		imgCnt = BANano.parseInt(imgCnt) + 1
		Dim sItem As String = $"<div id="${mName}_${Key}_avatar_${imgCnt}" class="avatar">
        <div id="${mName}_${Key}_host_${imgCnt}" class="border-2 ${smask} ${UI.FixSize("w",sSize)}">
        <img id="${mName}_${Key}_src_${imgCnt}" src="${k}" alt=""></img>
        </div>
        </div>"$
		sbItems.Append(sItem)
	Next
	BANano.GetElement($"#${mName}_${Key}_group"$).Append(sbItems.ToString)
	BANano.GetElement($"#${mName}_${Key}_group"$).SetData("items", xitems)
	sbItems.Initialize
End Sub
Sub SetPropertyAvatarOnline(Key As String, Status As Boolean, IsVisible As Boolean)
	BANano.GetElement($"#${mName}_${Key}_avatar"$).RemoveClass("offline")
	BANano.GetElement($"#${mName}_${Key}_avatar"$).RemoveClass("online")
	If IsVisible = False Then Return
	If Status Then
		BANano.GetElement($"#${mName}_${Key}_avatar"$).AddClass("online")
	Else
		BANano.GetElement($"#${mName}_${Key}_avatar"$).AddClass("offline")
	End If
End Sub
Sub SetPropertyAvatarRing(Key As String, Status As Boolean, Color As String)
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${Key}_host"$)
	Dim slastringcolor As String = el.GetData("ring")
	slastringcolor = UI.CStr(slastringcolor)
	'
	Dim lst As List
	lst.Initialize
	lst.AddAll(Array("ring", "ring-offset-base-100", "ring-offset-1"))
	'
	For Each c As String In lst
		el.RemoveClass(c)
	Next
	If slastringcolor <> "" Then el.RemoveClass(slastringcolor)
	If Status = False Then Return
	slastringcolor = UI.FixColor("ring", Color)
	el.SetData("ring", slastringcolor)
	For Each c As String In lst
		el.AddClass(c)
	Next
	el.AddClass(slastringcolor)
End Sub
Sub SetPropertyAvatarMask(Key As String, Shape As String)
	Dim smask As String = UI.FixMask(Shape)
	Dim smasks As String = "circle|rounded|squircle|heart|hexagon|hexagon-2|decagon|pentagon|diamond|square|parallelogram|parallelogram-2|parallelogram-3|parallelogram-4|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2|rounded-full|rounded"
	Dim spItems As List = UI.strparse("|", smasks)
	For Each className As String In spItems
		If BANano.GetElement($"#${mName}_${Key}_host"$).HasClass(className) Then
			BANano.GetElement($"#${mName}_${Key}_host"$).RemoveClass(className)
		End If
	Next
	BANano.GetElement($"#${mName}_${Key}_host"$).AddClass(smask)
End Sub
Sub SetPropertyImageMask(Key As String, Shape As String)
	Dim smask As String = UI.FixMask(Shape)
	Dim smasks As String = "circle|rounded|squircle|heart|hexagon|hexagon-2|decagon|pentagon|diamond|square|parallelogram|parallelogram-2|parallelogram-3|parallelogram-4|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2|rounded-full|rounded"
	Dim spItems As List = UI.strparse("|", smasks)
	For Each className As String In spItems
		If BANano.GetElement($"#${mName}_${Key}_src"$).HasClass(className) Then
			BANano.GetElement($"#${mName}_${Key}_src"$).RemoveClass(className)
		End If
	Next
	BANano.GetElement($"#${mName}_${Key}_src"$).AddClass(smask)
End Sub

Sub AddPropertyImage(Key As String, Title As String, Width As String, Height As String, Shape As String, Url As String)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, Url)
	Types.Put(Key, "Image")
	ComponentType.Put(Key, "Image")
	Dim smask As String = UI.FixMask(Shape)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <img id="${mName}_${Key}_src" class="${smask}" name="${mName}_${Key}" src="${Url}" alt=""></img>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	UI.SetWidthByID($"#${mName}_${Key}_src"$, Width)
	UI.SetHeightByID($"#${mName}_${Key}_src"$, Height)
End Sub
Sub SetPropertyImage(Key As String, imgUrl As String)
	Dim value As String = ""
	If imgUrl.StartsWith("data:image") Then
		value = imgUrl
	Else
		value = $"${imgUrl}?${DateTime.Now}"$
	End If
	BANano.GetElement($"#${mName}_${Key}_src"$).SetAttr("src", value)
	BANano.GetElement($"#${mName}_${Key}_src"$).SetAttr("data-src", imgUrl)
End Sub
Sub AddPropertyProgress(Key As String, Title As String, DefaultValue As String, Color As String, StartValue As String, StepValue As String, MaxValue As String)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Progress")
	'
	Dim psize As String = "24px"
	Select Case sComponentSize
	Case "xs"
		psize = "8px"
	Case "sm"
		psize = "16px"
	Case "md"
		psize = "24px"
	Case "lg"
		psize = "32px"
	Case "xl"
		psize = "40px"	
	End Select
	Dim psize1 As String = UI.FixSize("h", psize)
	
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div class="flex items-center w-full">
    <span id="${mName}_${Key}_text" class="text-${sComponentSize} mx-2">${DefaultValue}%</span>
    <progress id="${mName}_${Key}" name="${mName}_${Key}" class="rounded-full progress progress-${Color} w-full ${psize1}" value="${DefaultValue}" min="${StartValue}" step="${StepValue}" max="${MaxValue}"></progress>
    </div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
End Sub

Sub AddPropertyRange(Key As String, Title As String, DefaultValue As String, Color As String, StartValue As String, StepValue As String, MaxValue As String)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "String")
	ComponentType.Put(Key, "Range")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div class="flex items-center">
    <span id="${mName}_${Key}_text" class="text-${sComponentSize} mx-2">${DefaultValue}</span>
    <input type="range" id="${mName}_${Key}" name="${mName}_${Key}" class="range range-${sComponentSize} range-${Color} w-full" value="${DefaultValue}" min="${StartValue}" step="${StepValue}" max="${MaxValue}"></input>
    </div>
    </td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
End Sub
Sub AddPropertyCheckBox(Key As String, Title As String, DefaultValue As Boolean, Color As String)
	DefaultValue = UI.CBool(DefaultValue)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "Boolean")
	ComponentType.Put(Key, "CheckBox")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <input name="${mName}_${Key}" id="${mName}_${Key}" type="checkbox" class="checkbox checkbox-${Color} checkbox-${sComponentSize}"></input></td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}"$).SetChecked(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
End Sub
'run validation
Sub IsPropertyBlank(Key As String) As Boolean
	Dim v As String = GetPropertyValue(Key)
	v = UI.CStr(v)
	v = v.Trim
	If v = "" Then
		SetPropertyColor(Key, "error")
		Return True
	End If
	SetPropertyColor(Key, "success")
	Return False
End Sub
'return 1 if blank else zero
Sub PropertyOneIfBlankElseZero(Key As String) As Int
	Dim v As String = GetPropertyValue(Key)
	v = UI.CStr(v)
	v = v.Trim
	If v = "" Then
		Return 1
	Else
		Return 0
	End If
End Sub
Sub SetPropertyColor(Key As String, s As String)
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${Key}"$)
	Dim pType As String = ComponentType.get(Key)
	Dim lcolor As String = LastColors.GetDefault(Key, "")
	Select Case pType
		Case "TextBox", "TextBoxGroup", "SelectGroup", "PasswordGroup", "Password", "Color", "Number", "Telephone", "DatePicker", "TimePicker", "DateTimePicker", "Dialer"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("input", lcolor)
				el.RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("input", s)
			el.AddClass(tcolor)
			LastColors.Put(Key, s)
		Case "TextArea"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("textarea", lcolor)
				el.RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("textarea", s)
			el.AddClass(tcolor)
			LastColors.Put(Key, s)
		Case "Select", "SelectGroup"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("select", lcolor)
				el.RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("select", s)
			el.AddClass(tcolor)
			LastColors.Put(Key, s)
		Case "FileInput"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("file-input", lcolor)
				el.RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("file-input", s)
			el.AddClass(tcolor)
			LastColors.Put(Key, s)
		Case "Progress"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("progress", lcolor)
				el.RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("progress", s)
			el.AddClass(tcolor)
			LastColors.Put(Key, s)
		Case "Range"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("range", lcolor)
				el.RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("range", s)
			el.AddClass(tcolor)
			LastColors.Put(Key, s)
		Case "CheckBox"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("checkbox", lcolor)
				el.RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("checkbox", s)
			el.AddClass(tcolor)
			LastColors.Put(Key, s)
		Case "Toggle"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("toggle", lcolor)
				el.RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("toggle", s)
			el.AddClass(tcolor)
			LastColors.Put(Key, s)
		Case "RadialProgress"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("text", lcolor)
				el.RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("text", s)
			el.AddClass(tcolor)
			LastColors.Put(Key, s)
		Case "Rating"
			If lcolor <> "" Then
				Dim llcolor As String = UI.FixColor("radio", lcolor)
				BANano.GetElement($"#${mName}_${Key}_1"$).RemoveClass(llcolor)
				BANano.GetElement($"#${mName}_${Key}_2"$).RemoveClass(llcolor)
				BANano.GetElement($"#${mName}_${Key}_3"$).RemoveClass(llcolor)
				BANano.GetElement($"#${mName}_${Key}_4"$).RemoveClass(llcolor)
				BANano.GetElement($"#${mName}_${Key}_5"$).RemoveClass(llcolor)
			End If
			Dim tcolor As String = UI.FixColor("radio", s)
			BANano.GetElement($"#${mName}_${Key}_1"$).AddClass(tcolor)
			BANano.GetElement($"#${mName}_${Key}_2"$).AddClass(tcolor)
			BANano.GetElement($"#${mName}_${Key}_3"$).AddClass(tcolor)
			BANano.GetElement($"#${mName}_${Key}_4"$).AddClass(tcolor)
			BANano.GetElement($"#${mName}_${Key}_5"$).AddClass(tcolor)
			LastColors.Put(Key, s)
'		Case "RadioGroup"
'			Dim opt As Map = RGOptions.Get(Key)
'			If lcolor <> "" Then
'				Dim llcolor As String = UI.FixColor("radio", lcolor)
'				For Each k As String In opt.Keys
'					BANano.GetElement($"#${mName}_${Key}_${k}"$).RemoveClass(llcolor)
'				Next
'			End If
'			Dim tcolor As String = UI.FixColor("radio", s)
'			For Each k As String In opt.Keys
'				BANano.GetElement($"#${mName}_${Key}_${k}"$).AddClass(tcolor)
'			Next
'			LastColors.Put(Key, s)
	End Select
End Sub
Sub SetPropertyChecked(Key As String, b As Boolean)
	b = UI.CBool(b)
	BANano.GetElement($"#${mName}_${Key}"$).SetChecked(b)
End Sub
Sub SetPropertyReadOnly(Key As String, b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_${Key}"$).SetAttr("readonly", "readonly")
	Else
		BANano.GetElement($"#${mName}_${Key}"$).RemoveAttr("readonly")
	End If
End Sub
Sub SetPropertyAddClass(Key As String, className As String)
	If className = "" Then Return
	UI.AddClassByID($"#${mName}_${Key}"$, className)
End Sub
Sub SetPropertyRemoveClass(Key As String, className As String)
	If className = "" Then Return
	UI.RemoveClassByID($"#${mName}_${Key}"$, className)
End Sub
Sub SetPropertyStepValue(Key As String, v As Object)
	BANano.GetElement($"#${mName}_${Key}"$).SetAttr("step", v)
End Sub
Sub SetPropertyMinValue(Key As String, v As Object)
	BANano.GetElement($"#${mName}_${Key}"$).SetAttr("min", v)
End Sub
Sub SetPropertyMaxValue(Key As String, v As Object)
	BANano.GetElement($"#${mName}_${Key}"$).SetAttr("max", v)
End Sub
Sub SetPropertyMaxLength(Key As String, v As String)
	BANano.GetElement($"#${mName}_${Key}"$).SetAttr("maxlength", v)
End Sub
Sub SetPropertyRows(Key As String, v As String)
	BANano.GetElement($"#${mName}_${Key}"$).SetAttr("rows", v)
End Sub
Sub AddPropertyToggle(Key As String, Title As String, DefaultValue As Boolean, Color As String)
	DefaultValue = UI.CBool(DefaultValue)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "Boolean")
	ComponentType.Put(Key, "Toggle")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <input name="${mName}_${Key}" id="${mName}_${Key}" type="checkbox" class="toggle toggle-${Color} toggle-${sComponentSize}"></input></td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}"$).SetChecked(DefaultValue)
	BANano.GetElement($"#${mName}_${Key}"$).On("change", Me, "OnPropChangeInternal")
End Sub
Sub AddPropertyRadialProgress(Key As String, Title As String, DefaultValue As Boolean, Color As String, sSize As String, sThickNess As String)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "RadialProgress")
	ComponentType.Put(Key, "RadialProgress")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div name="${mName}_${Key}" id="${mName}_${Key}" role="progressbar" class="radial-progress text-${Color}"></div></td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.GetElement($"#${mName}_${Key}"$).SetText($"${DefaultValue}%"$)
	BANano.GetElement($"#${mName}_${Key}"$).SetData("value", DefaultValue)
	UI.SetStyleByID($"#${mName}_${Key}"$, "--value", DefaultValue)
	If sSize <> "" Then UI.SetStyleByID($"#${mName}_${Key}"$, "--size", sSize)
	If sThickNess <> "" Then UI.SetStyleByID($"#${mName}_${Key}"$, "--thickness", sThickNess)
End Sub
Sub SetPropertyRadialProgress(Key As String, Value As Object)
	BANano.GetElement($"#${mName}_${Key}"$).SetText($"${Value}%"$)
	UI.SetStyleByID($"#${mName}_${Key}"$,"--value", Value)
End Sub
Sub AddPropertyRating(Key As String, Title As String, DefaultValue As String, Color As String, mask As String)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "Rating")
	ComponentType.Put(Key, "Rating")
	Dim rColor As String = UI.FixColor("bg", Color)
	Dim rSize As String = UI.FixSize("rating", sComponentSize)
	Dim rmask As String = UI.FixMask(mask)
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    <td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    <td id="${mName}_${Key}_td" class="${sPropertyPadding}">
    <div id="${mName}_${Key}" class="rating gap-1 ${rSize}">
	<input id="${mName}_${Key}_0" type="radio" name="${mName}_${Key}" value="0" class="rating-hidden hide ${rmask} ${rColor}" aria-label="0 star"/>
    <input id="${mName}_${Key}_1" type="radio" name="${mName}_${Key}" value="1" class="${rmask} ${rColor}" aria-label="1 star"/>
    <input id="${mName}_${Key}_2" type="radio" name="${mName}_${Key}" value="2" class="${rmask} ${rColor}" aria-label="2 star"/>
    <input id="${mName}_${Key}_3" type="radio" name="${mName}_${Key}" value="3" class="${rmask} ${rColor}" aria-label="3 star"/>
    <input id="${mName}_${Key}_4 "type="radio" name="${mName}_${Key}" value="4" class="${rmask} ${rColor}" aria-label="4 star"/>
    <input id="${mName}_${Key}_5" type="radio" name="${mName}_${Key}" value="5" class="${rmask} ${rColor}" aria-label="5 star"/>
    </div></td>
    </tr>"$
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	If DefaultValue <> "" Then
		'BANano.GetElement($"input[name='${Key}']"$).SetValue(DefaultValue)
		BANano.GetElement($"#${mName}_${Key}_${DefaultValue}"$).SetChecked(True)
	End If
	BANano.GetElement($"#${mName}_${Key}_1"$).On("change", Me, "OnPropChangeInternal")
	BANano.GetElement($"#${mName}_${Key}_2"$).On("change", Me, "OnPropChangeInternal")
	BANano.GetElement($"#${mName}_${Key}_3"$).On("change", Me, "OnPropChangeInternal")
	BANano.GetElement($"#${mName}_${Key}_4"$).On("change", Me, "OnPropChangeInternal")
	BANano.GetElement($"#${mName}_${Key}_5"$).On("change", Me, "OnPropChangeInternal")
End Sub
Sub SetPropertyRating(Key As String, Value As Object)
	BANano.GetElement($"#${mName}_${Key}_${Value}"$).SetChecked(True)
End Sub
Sub SetPropertyRadioGroup(Key As String, Value As Object)
	BANano.GetElement($"#${mName}_${Key}_${Value}"$).SetChecked(True)
End Sub

Sub SetPropertyOneColumn(Key As String)
	BANano.GetElement($"#${mName}_${Key}row"$).RemoveClass("sm:grid-cols-2")
End Sub

Sub SetPropertyTwoColumn(Key As String)
	BANano.GetElement($"#${mName}_${Key}row"$).AddClass("sm:grid-cols-2")
End Sub

'hide some properties
Sub HideProperty(Keys As List)
	For Each k As String In Keys
		SetPropertyVisible(k, False)
	Next
End Sub
'show some properties
Sub ShowProperty(Keys As List)
	For Each k As String In Keys
		SetPropertyVisible(k, True)
	Next
End Sub
Sub SetPropertyVisible(Key As String, bStatus As Boolean)
	If bStatus Then
		BANano.GetElement($"#${mName}_${Key}row"$).RemoveClass("hide")
	Else
		BANano.GetElement($"#${mName}_${Key}row"$).AddClass("hide")
	End If
	If bStatus = False Then
		SetPropertyRequired(Key, False)
	End If
End Sub


Sub AddPropertyGroupSelect(Key As String, Title As String, DefaultValue As String, Color As String, bSingleSelect As Boolean, ActiveColor As String, Options As Map)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "GroupSelect")
	ComponentType.Put(Key, "GroupSelect")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    	<td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    	<td id="${mName}_${Key}_td" class="${sPropertyPadding}">
			<div id="${mName}_${Key}_content" class="flex gap-2 flex-wrap w-full"></div>
    	</td>
    </tr>"$	
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.Await(SetPropertyGroupSelectItems(Key, Color, ActiveColor, bSingleSelect, Options))
	'
	If DefaultValue <> "" Then
		Dim litems As List = UI.StrParse(";", DefaultValue)
		litems = UI.ListTrimItems(litems)
		For Each k As String In litems
			k = UI.CleanID(k)
			Dim nk As String = $"${mName}_${Key}_${k}"$
			BANano.Await(UI.SetCheckedByID(nk, True))
		Next
	End If
End Sub

Sub AddPropertyCheckBoxGroup(Key As String, Title As String, DefaultValue As String, Color As String, ActiveColor As String, Options As Map)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "CheckBoxGroup")
	ComponentType.Put(Key, "CheckBoxGroup")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    	<td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    	<td id="${mName}_${Key}_td" class="${sPropertyPadding}">
			<div id="${mName}_${Key}_content"></div>
    	</td>
    </tr>"$	
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.Await(SetPropertyCheckBoxGroupItems(Key, Color, ActiveColor, Options))
	'
	If DefaultValue <> "" Then
		Dim litems As List = UI.StrParse(";", DefaultValue)
		litems = UI.ListTrimItems(litems)
		For Each k As String In litems
			k = UI.CleanID(k)
			Dim nk As String = $"${mName}_${Key}_${k}"$
			BANano.Await(UI.SetCheckedByID(nk, True))
		Next
	End If
End Sub

Sub AddPropertyToggleGroup(Key As String, Title As String, DefaultValue As String, Color As String, ActiveColor As String, Options As Map)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "ToggleGroup")
	ComponentType.Put(Key, "ToggleGroup")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    	<td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    	<td id="${mName}_${Key}_td" class="${sPropertyPadding}">
			<div id="${mName}_${Key}_content"></div>
    	</td>
    </tr>"$	
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.Await(SetPropertyToggleGroupItems(Key, Color, ActiveColor, Options))
	'
	If DefaultValue <> "" Then
		Dim litems As List = UI.StrParse(";", DefaultValue)
		litems = UI.ListTrimItems(litems)
		For Each k As String In litems
			k = UI.CleanID(k)
			Dim nk As String = $"${mName}_${Key}_${k}"$
			BANano.Await(UI.SetCheckedByID(nk, True))
		Next
	End If
End Sub

Sub AddPropertyRadioGroup(Key As String, Title As String, DefaultValue As String, Color As String, ActiveColor As String, Options As Map)
	propBagKeys.Put(Key, False)
	propBagValues.Put(Key, DefaultValue)
	Types.Put(Key, "RadioGroup")
	ComponentType.Put(Key, "RadioGroup")
	Dim scode As String = $"[BANCLEAN]
    <tr id="${mName}_${Key}row" class="grid grid-cols-1 sm:grid-cols-2">
    	<td id="${mName}_${Key}_th" >
			<span id="${mName}_${Key}_tooltip">
				<span id="${mName}_${Key}_title">${Title}</span>
			</span>
		</td>		
    	<td id="${mName}_${Key}_td" class="${sPropertyPadding}">
			<div id="${mName}_${Key}_content"></div>
    	</td>
    </tr>"$	
	BANano.GetElement($"#${mName}_body"$).Append(scode)
	BANano.Await(SetPropertyRadioGroupItems(Key, Color, ActiveColor, Options))
	'
	If DefaultValue <> "" Then
		DefaultValue = UI.CleanID(DefaultValue)
		Dim nk As String = $"${mName}_${Key}_${DefaultValue}"$
		BANano.Await(UI.SetCheckedByID(nk, True))
	End If
End Sub

Sub SetPropertyRadioGroupItems(Key As String, sColor As String, sActiveColor As String, items As Map)
	Dim xitems As Map = BANano.DeepClone(items)
	RGOptions.Put(Key, xitems)
	'
	Dim sb As StringBuilder
	sb.Initialize
	Dim itemSize As String = UI.FixSize("radio", sComponentSize)
	Dim itemColor As String = UI.FixColor("radio", sColor)
	Dim checkedColor As String = ""
	Dim checkedBorder As String = ""
	Dim checkedText As String = ""
	If sActiveColor <> "" Then
		checkedColor = UI.FixColor("checked:text", sActiveColor)
'		checkedColor = UI.FixColor("checked:bg", sActiveColor)
'		checkedBorder = UI.FixColor("checked:border", sActiveColor)
	End If
	
	For Each k As String In xitems.Keys
		Dim v As String = xitems.Get(k)
		k = UI.CleanID(k)
		Dim nk As String = $"${mName}_${Key}_${k}"$
		'
		sb.Append($"<label id="${mName}_${Key}_${k}_host" class="flex gap-2 items-center cursor-pointer mb-2">
      				<input id="${mName}_${Key}_${k}" type="radio" name="${Key}" value="${k}" class="radio ${itemColor} ${itemSize} ${checkedColor} ${checkedText} ${checkedBorder}"/>
      					<span id="${mName}_${Key}_${k}_label" class="whitespace-nowrap">${v}</span>
    				</label>"$)
	Next
	UI.ClearByID($"${mName}_${Key}_content"$)
	UI.AppendByID($"${mName}_${Key}_content"$, sb.ToString)
	For Each k As String In xitems.Keys
		k = UI.CleanID(k)
		Dim nk As String = $"${mName}_${Key}_${k}"$
		UI.OnEventByID(nk, "change", Me, "OnPropChangeInternal")
	Next
End Sub

Sub SetPropertyToggleGroupItems(Key As String, sColor As String, sActiveColor As String, items As Map)
	Dim xitems As Map = BANano.DeepClone(items)
	RGOptions.Put(Key, xitems)
	'
	Dim sb As StringBuilder
	sb.Initialize
	Dim itemSize As String = UI.FixSize("toggle", sComponentSize)
	Dim itemColor As String = UI.FixColor("toggle", sColor)
	Dim checkedColor As String = ""
	Dim checkedBorder As String = ""
	Dim checkedText As String = ""
	If sActiveColor <> "" Then
		checkedColor = UI.FixColor("checked:text", sActiveColor)
'		checkedColor = UI.FixColor("checked:bg", sActiveColor)
'		checkedBorder = UI.FixColor("checked:border", sActiveColor)
	End If
	
	For Each k As String In xitems.Keys
		Dim v As String = xitems.Get(k)
		k = UI.CleanID(k)
		Dim nk As String = $"${mName}_${Key}_${k}"$
		'
		sb.Append($"<label id="${mName}_${Key}_${k}_host" class="flex gap-2 items-center cursor-pointer mb-2">
      				<input id="${mName}_${Key}_${k}" type="checkbox" name="${Key}[]" value="${k}" class="toggle ${itemColor} ${itemSize} ${checkedColor} ${checkedText} ${checkedBorder}"/>
      					<span id="${mName}_${Key}_${k}_label" class="whitespace-nowrap">${v}</span>
    				</label>"$)
	Next
	UI.ClearByID($"${mName}_${Key}_content"$)
	UI.AppendByID($"${mName}_${Key}_content"$, sb.ToString)
	For Each k As String In xitems.Keys
		k = UI.CleanID(k)
		Dim nk As String = $"${mName}_${Key}_${k}"$
		UI.OnEventByID(nk, "change", Me, "OnPropChangeInternal")
	Next
End Sub



Sub SetPropertyCheckBoxGroupItems(Key As String, sColor As String, sActiveColor As String, items As Map)
	Dim xitems As Map = BANano.DeepClone(items)
	RGOptions.Put(Key, xitems)
	'
	Dim sb As StringBuilder
	sb.Initialize
	Dim itemSize As String = UI.FixSize("checkbox", sComponentSize)
	Dim itemColor As String = UI.FixColor("checkbox", sColor)
	Dim checkedColor As String = ""
	Dim checkedBorder As String = ""
	Dim checkedText As String = ""
	If sActiveColor <> "" Then
'		checkedText = UI.FixColor("checked:text", sActiveColor)
		checkedColor = UI.FixColor("checked:bg", sActiveColor)
		checkedBorder = UI.FixColor("checked:border", sActiveColor)
	End If
	
	For Each k As String In xitems.Keys
		Dim v As String = xitems.Get(k)
		k = UI.CleanID(k)
		Dim nk As String = $"${mName}_${Key}_${k}"$
		'
		sb.Append($"<label id="${mName}_${Key}_${k}_host" class="flex gap-2 items-center cursor-pointer mb-2">
      				<input id="${mName}_${Key}_${k}" type="checkbox" name="${Key}[]" value="${k}" class="checkbox ${itemColor} ${itemSize} ${checkedColor} ${checkedText} ${checkedBorder}"/>
      					<span id="${mName}_${Key}_${k}_label" class="whitespace-nowrap">${v}</span>
    				</label>"$)
	Next
	UI.ClearByID($"${mName}_${Key}_content"$)
	UI.AppendByID($"${mName}_${Key}_content"$, sb.ToString)
	For Each k As String In xitems.Keys
		k = UI.CleanID(k)
		Dim nk As String = $"${mName}_${Key}_${k}"$
		UI.OnEventByID(nk, "change", Me, "OnPropChangeInternal")
	Next
End Sub


Sub SetPropertyGroupSelectItems(Key As String, sColor As String, sActiveColor As String, bSingleSelect As Boolean, items As Map)
	Dim xitems As Map = BANano.DeepClone(items)
	RGOptions.Put(Key, xitems)
	Dim sb As StringBuilder
	sb.Initialize
	Dim itemSize As String = UI.FixSize("btn", sComponentSize)
	Dim iType As String = "checkbox"
	If bSingleSelect Then iType = "radio"
	Dim itemColor As String = UI.FixColor("btn", sColor)
	Dim soutline As String = ""
	If bButtonsOutlined Then soutline = "btn-outline"
	Dim checkedColor As String = ""
	Dim borderColor As String = ""
	If sActiveColor <> "" Then
		Dim abg As String = UI.FixColor("bg", sActiveColor)
		checkedColor = $"checked:${abg}"$
		Dim bbg As String = UI.FixColor("border", sActiveColor)
		borderColor = $"checked:${bbg}"$
	End If
	
	For Each k As String In xitems.Keys
		Dim v As String = xitems.Get(k)
		k = UI.CleanID(k)
		Dim nk As String = $"${mName}_${Key}_${k}"$
		sb.Append($"<input id="${nk}" value="${k}" class="btn ${itemSize} ${itemColor} ${soutline} ${checkedColor} ${borderColor} rounded-full font-normal" name="${Key}" type="${iType}" aria-label="${v}">"$)
	Next
	UI.ClearByID($"${mName}_${Key}_content"$)
	UI.AppendByID($"${mName}_${Key}_content"$, sb.ToString)
	For Each k As String In xitems.Keys
		k = UI.CleanID(k)
		Dim nk As String = $"${mName}_${Key}_${k}"$
		UI.OnEventByID(nk, "change", Me, "OnPropChangeInternal")
	Next
End Sub

Sub GetPropertyFileInput (e As BANanoEvent) As Map
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = BANano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Dim filex As Map = res.Get(0)
	Return filex
End Sub

Sub GetPropertyFilesInput (e As BANanoEvent) As List
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = BANano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Return res
End Sub

Sub GetFileFromEvent (e As BANanoEvent) As Map
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = BANano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Dim filex As Map = res.Get(0)
	Return filex
End Sub

Sub GetFilesFromEvent (e As BANanoEvent) As List
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = BANano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Return res
End Sub

'set values to be defaults
Sub SetPropertyBagDefaults
	setPropertyBag(propBagValues)
End Sub

Sub SetPropetyBag(item As Map)
	setPropertyBag(item)
End Sub

Sub ResetPropetyBag
	setPropertyBag(propBagValues)
End Sub

Sub setPropertyBag(values As Map)
	For Each k As String In values.Keys
		Dim v As Object = values.Get(k)
		SetPropertyValue(k, v)
	Next
End Sub

Sub getPropertyBag As Map
	Dim values As Map = CreateMap()
	For Each k As String In ComponentType.Keys
		Dim v As String = BANano.Await(GetPropertyValue(k))
		values.put(k, v)
	Next
	Return values
End Sub

Private Sub OnPropChangeInternal(e As BANanoEvent)
	e.PreventDefault
	e.StopPropagation
	If SubExists(mCallBack, $"${mName}_Change"$) Then
		Dim data As Map = BANano.Await(getPropertyBag)
		CallSub2(mCallBack, $"${mName}_Change"$, data)		'ignore
	End If
End Sub

'load and save design for later use
Sub LoadDesignWait(designName As String) As Boolean
	Dim jsonFile As Map = BANano.Await(BANano.GetFileAsJSON($"./assets/${designName}.json?${DateTime.Now}"$, Null))
	Dim properties As List = jsonFile.Get("properties")
	Designs.Put(designName, properties)
	Return True
End Sub
'<code>
'LoadPropertyBagFromJSON("./assets/abc.json")
'SetPropertyPadding("py-1")
'</code>
Sub LoadPropertyBagFromJSON(fileURL As String)
	Dim fContents As String = BANano.Await(BANano.GetFileAsText($"${fileURL}?${DateTime.now}"$, Null, "utf-8"))
	Dim pl As List = BANano.FromJson(fContents)
'	PropertyBagFromList(pl)
End Sub
'add a property overwrite for type
Sub SetPropertyOverwrite(Key As String, NewType As String)
	Overwrites.Put(Key, NewType)
End Sub

'get design properties
Sub GetDesign(designName As String, compName As String) As Map
	Dim prop As Map = CreateMap()
	prop.Put("ComponentType", designName)
	prop.Put("ComponentName", compName)
	If bIncludeProjectName Then prop.Put("ProjectName", compName)
	If bIncludeViewName Then prop.Put("ViewName", compName)
	'
	Dim properties As List
	properties.initialize
	If Designs.ContainsKey(designName) Then
		properties = Designs.Get(designName)
		'
		For Each rec As Map In  properties
			Dim skey As String = rec.Getdefault("Key","")
			Dim sdefaultvalue As String = rec.getdefault("DefaultValue","")
			'ignore all readmes
			If skey.StartsWith("ReadMe") Then Continue
			If skey = "" Then Continue
			prop.Put(skey, sdefaultvalue)
		Next
	End If
	Return prop
End Sub

'show the design in the property bag
Sub ShowDesign(designName As String, compName As String)
	BANano.Await(Clear)
	'this is not a dropdown
	AddPropertyTextBox("ComponentType", "Custom Type", designName, False)
	SetPropertyEnabled("ComponentType", False)
	'
	'component name
	AddPropertyTextBox("ComponentName", "Item Name", compName, False)
	SetPropertyAutoFocus("ComponentName", True)
	If bIncludeProjectName Then
		AddPropertyTextBox("ProjectName", "Project Name", compName, False)
	End If
	'
	If bIncludeViewName Then
		AddPropertyTextBox("ViewName", "View Name", compName, False)
	End If
	'
	Dim properties As List
	properties.initialize
	If Designs.ContainsKey(designName) Then
		properties = Designs.Get(designName)
		'
		For Each rec As Map In  properties
			Dim skey As String = rec.Getdefault("Key","")
			Dim sdisplayname As String = rec.Getdefault("DisplayName","")
			Dim sdefaultvalue As String = rec.getdefault("DefaultValue","")
			Dim sfieldtype As String = rec.getdefault("FieldType","")
			'Dim sMinRange As String = rec.GetDefault("minrange", "0")
			'Dim sMaxRange As String = rec.GetDefault("maxrange", "0")
			Dim sList As String = rec.GetDefault("List", "")
			'ignore all readmes
			If skey.StartsWith("ReadMe") Then Continue
			If skey = "" Then Continue
			'
			If Overwrites.ContainsKey(skey) = True Then
				'we have an overwrite of a type
				Dim nType As String = Overwrites.Get(skey)
				Select Case nType
					Case "DatePicker"
						AddPropertyDatePicker(skey, sdisplayname, sdefaultvalue,False, "Y-m-d", "F j, Y", "en")
					Case "DateTimePicker"
						AddPropertyDateTimePicker(skey, sdisplayname, sdefaultvalue,False, "Y-m-d H:i", "F j, Y  H:i", True, "en")
					Case "TimePicker"
						AddPropertyTimePicker(skey, sdisplayname, sdefaultvalue, False, "H:i", "H:i", True, "en")
					Case "TextBox"
						AddPropertyTextBox(skey, sdisplayname, sdefaultvalue,False)
					Case "Dialer"
						sdefaultvalue = UI.CInt(sdefaultvalue)
						AddPropertyDialer(skey,sdisplayname, sdefaultvalue, False, 0, 1, 100)
					Case "TextBoxGroup"
						AddPropertyTextBoxGroup(skey, sdisplayname, sdefaultvalue,False)
					Case "PasswordGroup"
						AddPropertyPasswordGroup(skey, sdisplayname, sdefaultvalue,False)
					Case "Password"
						AddPropertyPassword(skey, sdisplayname, sdefaultvalue,False)
					Case "Color"
'						AddPropertyColor(skey, sdisplayname, sdefaultvalue,sdescription,False,"left")
					Case "Number"
						sdefaultvalue = UI.Val(sdefaultvalue)
						AddPropertyNumber(skey, sdisplayname, sdefaultvalue,False)
					Case "Telephone"
						AddPropertyTelephone(skey, sdisplayname, sdefaultvalue,False)
					Case "TextArea"
						AddPropertyTextArea(skey, sdisplayname, sdefaultvalue,False)
						'AddPropertyTextArea(skey, sdisplayname, "","", False, "left")
						'SetPropertyValue(skey, sdefaultvalue)
						SetPropertyPrependIcon(skey, "fa-regular fa-paste")
						BANano.GetElement($"#${mName}_${skey}"$).AddClass("blradius")
						SetPropertyOneColumn(skey)
					Case "Select"
						AddPropertySelect(skey, sdisplayname, sdefaultvalue,False,CreateMap())
					Case "SelectGroup"
						AddPropertySelectGroup(skey, sdisplayname, sdefaultvalue,False,CreateMap())
					Case "FileInput"
						AddPropertyFileInput(skey, sdisplayname,False)
					Case "FileInputProgress"
						AddPropertyFileInputProgress(skey, sdisplayname, "80px" , "fa-solid fa-arrow-up-from-bracket", "success")
					Case "CamCorder"
						AddPropertyCamCorder(skey, sdisplayname, "80px", "success")
					Case "Camera"
						AddPropertyCamera(skey, sdisplayname, "80px", "success")
					Case "Microphone"
						AddPropertyMicrophone(skey, sdisplayname, "80px", "success")
					Case "Avatar"
						AddPropertyAvatar(skey, sdisplayname, "12", "rounded", sdefaultvalue)
					Case "AvatarPlaceholder"
						sdefaultvalue = UI.Val(sdefaultvalue)
						AddPropertyAvatarPlaceholder(skey, sdisplayname, sdefaultvalue, "12", "rounded", "success", "8xl")
					Case "AvatarGroup"
						Dim imags As List
						imags.Initialize
						AddPropertyAvatarGroup(skey, sdisplayname, "12", "rounded", imags)
					Case "Image"
						AddPropertyImage(skey, sdisplayname, "100px", "100px", "rounded", sdefaultvalue)
					Case "Signature"
						AddPropertySignaturePad(skey, sdisplayname, False, "400", "200", "jpeg")
					Case "Progress"
						sdefaultvalue = UI.cint(sdefaultvalue)
						AddPropertyProgress(skey, sdisplayname, sdefaultvalue, "success", "1", "1", "100")
					Case "Range"
						sdefaultvalue = UI.CInt(sdefaultvalue)
						AddPropertyRange(skey,sdisplayname, sdefaultvalue,"success", "1", "1", "100")
					Case "CheckBox"
						sdefaultvalue = UI.CBool(sdefaultvalue)
						AddPropertyCheckBox(skey, sdisplayname, sdefaultvalue, "success")
					Case "Toggle"
						sdefaultvalue = UI.CBool(sdefaultvalue)
						AddPropertyToggle(skey, sdisplayname, sdefaultvalue, "success")
					Case "RadialProgress"
						AddPropertyRadialProgress(skey,sdisplayname, sdefaultvalue, "success", "", "")
					Case "Rating"
						AddPropertyRating(skey,sdisplayname, sdefaultvalue, "success", "mask-star-2")
					Case "RadioGroup"
						AddPropertyRadioGroup(skey, sdisplayname, sdefaultvalue, "", "success", CreateMap())
				End Select
			Else
				Select Case sfieldtype
					Case "String"
						sdefaultvalue = UI.CStr(sdefaultvalue)
						Select Case sList
							Case ""
								'this is not a dropdown
								If skey.StartsWith("Raw") Then
									AddPropertyTextArea(skey, sdisplayname, sdefaultvalue, False)
									SetPropertyPrependIcon(skey, "fa-regular fa-paste")
									BANano.GetElement($"#${mName}_${skey}"$).AddClass("blradius")
									SetPropertyOneColumn(skey)
								Else	
									AddPropertyTextBox(skey, sdisplayname, sdefaultvalue, False)
								End If
							Case Else
								'this is a drop down
								AddPropertySelect(skey, sdisplayname, sdefaultvalue, False, CreateMap())
								Dim lstItems As List = UI.StrParse("|", sList)
								SetPropertySelectItemsListSort(skey, lstItems)
						End Select
					Case "Boolean"
						sdefaultvalue = UI.CBool(sdefaultvalue)
						AddPropertyCheckBox(skey, sdisplayname, sdefaultvalue, "success")
					Case "Int"
						sdefaultvalue = UI.CInt(sdefaultvalue)
						'sMinRange = UI.CInt(sMinRange)
						'sMaxRange = UI.CInt(sMaxRange)
						'If sMaxRange = 0 Then sMaxRange = 100
						AddPropertyNumber(skey, sdisplayname, sdefaultvalue, False)
					Case "Color"
						sdefaultvalue = UI.CStr(sdefaultvalue)
'						AddPropertyColor(skey, sdisplayname, sdefaultvalue, sdescription, False, "left")
				End Select
			End If
		Next
	End If
End Sub


'load a component from a json file
Sub LoadComponentJson(designName As String)
	CustProps = BANano.Await(BANano.GetFileAsJSON($"./assets/${designName}.json?${DateTime.Now}"$, Null))
End Sub

'get the validation
Sub IsPropertyBagValid As Boolean
	validations.Initialize
	For Each k As String In Compulsory.Keys
		Dim v As Boolean = IsPropertyBlank(k)
		validations.Put(v, v)
	Next
	Dim hastrue As Boolean = validations.ContainsKey(True)
	If hastrue Then Return False
	Return True
End Sub

Sub setBodyFontSize(s As String)
	Dim rKey As String = $"#${mName}_body tr td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-size": s)))
End Sub

Sub setHeaderFontSize(s As String)
	Dim rKey As String = $"#${mName}_thead tr th"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-size": s)))
End Sub

Sub setFooterFontSize(s As String)
	Dim rKey As String = $"#${mName}_tfoot tr td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-size": s)))
End Sub

Sub setBodyFontFamily(s As String)
	Dim rKey As String = $"#${mName}_body tr td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-family": s)))
End Sub

Sub setHeaderFontFamily(s As String)
	Dim rKey As String = $"#${mName}_thead tr th"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-family": s)))
End Sub

Sub setFooterFontFamily(s As String)
	Dim rKey As String = $"#${mName}_tfoot tr td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-family": s)))
End Sub

Sub SetPropertiesDefaultValues(props As List)
	For Each rec As Map In  props
		Dim skey As String = rec.Getdefault("Key","")
		Dim sdefaultvalue As String = rec.getdefault("DefaultValue","")
		Dim sfieldtype As String = rec.getdefault("FieldType","")
		'ignore all readmes
		If skey.StartsWith("ReadMe") Then Continue
		If skey = "" Then Continue
		'
		Select Case sfieldtype
			Case "Boolean"
				sdefaultvalue = UI.CBool(sdefaultvalue)
				SetPropertyValue(skey, sdefaultvalue)
			Case "Int"
				sdefaultvalue = UI.CInt(sdefaultvalue)
				SetPropertyValue(skey, sdefaultvalue)
			Case "Color"
				sdefaultvalue = UI.CStr(sdefaultvalue)
				SetPropertyValue(skey, sdefaultvalue)
			Case Else
				sdefaultvalue = UI.CStr(sdefaultvalue)
				SetPropertyValue(skey, sdefaultvalue)
		End Select
	Next
End Sub

'get Key and Default value from properies list
Sub ExtractProperties(props As List) As Map
	Dim nm As Map = CreateMap()
	For Each rec As Map In  props
		Dim skey As String = rec.Getdefault("Key","")
		skey = UI.CStr(skey)
		Dim sdefaultvalue As String = rec.getdefault("DefaultValue","")
		sdefaultvalue = UI.CStr(sdefaultvalue)
		Dim sfieldtype As String = rec.getdefault("FieldType","")
		sfieldtype = UI.CStr(sfieldtype)
		'ignore all readmes
		If skey.StartsWith("ReadMe") Then Continue
		If skey = "" Then Continue
		'
		Select Case sfieldtype
			Case "Boolean"
				sdefaultvalue = UI.CBool(sdefaultvalue)
			Case "Int"
				sdefaultvalue = UI.CInt(sdefaultvalue)
			Case Else
				sdefaultvalue = UI.CStr(sdefaultvalue)
		End Select
		rec.Put("DefaultValue",sdefaultvalue)
		nm.Put(skey, rec)
	Next
	Return nm
End Sub
'
Sub ExtractEvents(props As List) As Map
	Dim nm As Map = CreateMap()
	For Each rec As Map In  props
		Dim skey As String = rec.Getdefault("name","")
		skey = UI.CStr(skey)
		Dim eveName As String = GetEventName(skey)
		nm.put(eveName, eveName)
	Next
	Return nm
End Sub

'get a clean sub-routine name
private Sub GetEventName(strDeclaration As String) As String
	Dim fBracket As Int
	Dim sResult As String
	strDeclaration = strDeclaration.trim
	fBracket = UI.InStr1(strDeclaration, "(")
	If fBracket > 0 Then
		sResult = UI.Left1(strDeclaration, fBracket - 1)
	Else
		sResult = strDeclaration
	End If
	sResult = sResult.trim
	sResult = UI.MvField(sResult,1," ")
	Return sResult
End Sub

'get Key and Default value from properies list
Sub ExtractPropertyBag(props As List) As Map
	Dim nm As Map = CreateMap()
	For Each rec As Map In  props
		Dim skey As String = rec.Getdefault("Key","")
		skey = UI.CStr(skey)
		Dim sdefaultvalue As String = rec.getdefault("DefaultValue","")
		sdefaultvalue = UI.CStr(sdefaultvalue)
		Dim sfieldtype As String = rec.getdefault("FieldType","")
		sfieldtype = UI.CStr(sfieldtype)
		'ignore all readmes
		If skey.StartsWith("ReadMe") Then Continue
		If skey = "" Then Continue
		'
		Select Case sfieldtype
			Case "Boolean"
				sdefaultvalue = UI.CBool(sdefaultvalue)
			Case "Int"
				sdefaultvalue = UI.CInt(sdefaultvalue)
			Case Else
				sdefaultvalue = UI.CStr(sdefaultvalue)
		End Select
		nm.Put(skey, sdefaultvalue)
	Next
	Return nm
End Sub
Sub SetPropertyComponentName(value As String)
	SetPropertyValue("ComponentName", value)
End Sub
Sub SetPropertyComponentType(value As String)
	SetPropertyValue("ComponentType", value)
End Sub
Sub SetPropertyComponentID(value As String)
	SetPropertyValue("ComponentID", value)
End Sub
Sub SetPropertyParentComponent(value As String)
	SetPropertyValue("ComponentParentID", value)
End Sub
Sub SetPropertyParentDevice(value As Boolean)
	SetPropertyValue("ParentDevice", value)
End Sub
Sub SetPropertyComponentActive(b As Boolean)
	SetPropertyValue("ComponentActive", b)
End Sub
Sub SetPropertyComponentIndex(b As Boolean)
	SetPropertyValue("ComponentIndex", b)
End Sub
Sub SetPropertyComponentTemplate(b As Boolean)
	SetPropertyValue("ComponentTemplate", b)
End Sub
Sub SetPropertyCreateB4xLayout(b As Boolean)
	SetPropertyValue("CreateB4xLayout", b)
End Sub

Sub HideComponentProperties
	SetPropertyVisible("ComponentActive", False)
	SetPropertyVisible("ComponentIndex", False)
	SetPropertyVisible("ComponentTemplate", False)
	SetPropertyVisible("CreateB4xLayout", False)
	SetPropertyVisible("ComponentType", False)
	SetPropertyVisible("ParentDevice", False)
	SetPropertyVisible("ComponentTableName", False)
	SetPropertyVisible("ComponentFieldName", False)
	SetPropertyVisible("ComponentFieldType", False)
	SetPropertyVisible("ComponentNavigateTo", True)
End Sub

Sub ShowComponentProperties
	SetPropertyVisible("ComponentActive", True)
	SetPropertyVisible("ComponentIndex", True)
	SetPropertyVisible("ComponentTemplate", True)
	SetPropertyVisible("CreateB4xLayout", True)
	SetPropertyVisible("ComponentType", True)
	SetPropertyVisible("ParentDevice", True)
	SetPropertyVisible("ComponentTableName", True)
	SetPropertyVisible("ComponentFieldName", True)
	SetPropertyVisible("ComponentFieldType", True)
	SetPropertyVisible("ComponentNavigateTo", True)
End Sub

'show the design in the property bag
Sub ShowCustomView(compID As String, compName As String, compType As String, props As List, isComponent As Boolean)
	'clear the property bag
	BANano.Await(Clear)
	If isComponent Then
		AddPropertyTextBox("ComponentID", "Component ID","",False)
		SetPropertyVisible("ComponentID", False)
		SetPropertyValue("ComponentID", compID)
		AddPropertyTextBox("ComponentName", "Component Name","",False)
		SetPropertyValue("ComponentName", compName)
		AddPropertyCheckBox("ComponentActive", "Component Active",False,"success")
		SetPropertyValue("ComponentActive", True)
		AddPropertyCheckBox("ComponentIndex", "Component On Index",False,"success")
		SetPropertyValue("ComponentIndex", False)
		AddPropertyCheckBox("ComponentTemplate", "Component Template",False,"success")
		SetPropertyValue("ComponentTemplate", False)
		AddPropertyCheckBox("CreateB4xLayout", "Create B4x JSON Layout",False,"success")
		SetPropertyValue("CreateB4xLayout", False)
		AddPropertyTextBox("ComponentType", "Component Type","",False)
		SetPropertyEnabled("ComponentType", False)
		SetPropertyValue("ComponentType", compType)
		AddPropertySelect("ComponentParentID", "Parent Component", "", False, CreateMap())
		AddPropertyCheckBox("ParentDevice", "Parent Device",False,"success")
		AddPropertySelect("ComponentNavigateTo", "Navigate To", "String", False, CreateMap())
		AddPropertyTextBox("ComponentTableName", "Table Name","",False)
		AddPropertyTextBox("ComponentFieldName", "Field Name","",False)
		AddPropertySelect("ComponentFieldType", "Field Type", "String", False, CreateMap("Blob":"Blob","Bool":"Bool", _
		"Date":"Date","Double":"Double","Int":"Int", "String":"String","File":"File"))
		AddPropertyCheckBox("ComponentPrimaryID", "Primary Key",False,"success")
		AddPropertyTextBox("ComponentForeignTable", "Foreign Table","",False)
		AddPropertyTextBox("ComponentForeignKey", "Foreign Key","",False)
		AddPropertyTextBox("ComponentForeignValue", "Field Value","",False)
	End If
	'
	For Each rec As Map In  props
		Dim skey As String = rec.Getdefault("Key","")
		Dim sdisplayname As String = rec.Getdefault("DisplayName","")
		Dim sdefaultvalue As String = rec.getdefault("DefaultValue","")
		Dim sdescription As String = rec.getdefault("Description","")
		Dim sfieldtype As String = rec.getdefault("FieldType","")
		Dim sList As String = rec.GetDefault("List", "")
		'ignore all readmes
		If skey.StartsWith("ReadMe") Then Continue
		If skey = "" Then Continue
		If sdescription = "" Then sdescription = sdisplayname
		'is a tooltip
		sdescription = ""
		'
		Select Case sfieldtype
			Case "Boolean"
				sdefaultvalue = UI.CBool(sdefaultvalue)
				AddPropertyCheckBox(skey, sdisplayname,sdefaultvalue, "succes")
			Case "Int"
				sdefaultvalue = UI.CInt(sdefaultvalue)
				AddPropertyNumber(skey, sdisplayname, sdefaultvalue,False)
			Case "Color"
				sdefaultvalue = UI.CStr(sdefaultvalue)
'				AddPropertyColor(skey, sdisplayname,sdefaultvalue,"",False,"left")
			Case Else
				sdefaultvalue = UI.CStr(sdefaultvalue)
				Select Case sList
					Case ""
						'does the key start with raw, make multi-line
						If skey.tolowercase.StartsWith("raw") Then
							AddPropertyTextArea(skey, sdisplayname, sdefaultvalue, False)
							SetPropertyPrependIcon(skey, "fa-regular fa-paste")
							BANano.GetElement($"#${mName}_${skey}"$).AddClass("blradius")
							SetPropertyOneColumn(skey)
						Else
							'this is not a dropdown
							AddPropertyTextBox(skey, sdisplayname, sdefaultvalue, False)
						End If
					Case Else
						AddPropertySelect(skey, sdisplayname, "", False, CreateMap())
						Dim lstItems As List = UI.StrParse("|", sList)
						lstItems.Sort(True)
						SetPropertySelectItemsList(skey, lstItems)
						SetPropertyValue(skey, sdefaultvalue)
				End Select
		End Select
	Next
	'UpdatePropertyPadding(sPropertyPadding)
End Sub

'add an action button
'<code>
'Sub tblname_btnid_click (e As BANanoEvent)
'End Sub
'</code>
Sub AddToolbarActionButtonIcon(btnID As String, sIcon As String, btnColor As String) As SDUI5Button			'ignoredeadcode
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	btnID = UI.CleanID(btnID)
	'
	Dim btn As SDUI5Button
	btn.Initialize(mCallBack, $"${mName}_${btnID}"$, $"${mName}_${btnID}"$)
	btn.ParentID = $"${mName}_actions"$
	btn.Text = ""
	btn.BackgroundColor = btnColor
	btn.Shape = "circle"
	btn.Outline = bButtonsOutlined
	btn.LeftIcon = sIcon
	btn.Size = sButtonSize
	btn.AddComponent
	btn.AddClass("mx-1")
	btn.UI.OnEventByID($"${mName}_${btnID}"$, "click", mCallBack, $"${mName}_${btnID}_Click"$)
	Return btn
End Sub

'add an action button
'<code>
'Sub tblname_btnid_click (e As BANanoEvent)
'End Sub
'</code>
Sub AddToolbarActionButton(btnID As String, btnCaption As String, btnColor As String) As SDUI5Button		'ignoredeadcode
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	btnID = UI.CleanID(btnID)
	Dim btn As SDUI5Button
	btn.Initialize(mCallBack, $"${mName}_${btnID}"$, $"${mName}_${btnID}"$)
	btn.ParentID = $"${mName}_actions"$
	btn.Text = btnCaption
	btn.BackgroundColor = btnColor
	btn.Outline = bButtonsOutlined
	btn.Size = sButtonSize
	btn.AddComponent
	btn.AddClass("mx-1")
	btn.UI.OnEventByID($"${mName}_${btnID}"$, "click", mCallBack, $"${mName}_${btnID}_click"$)
	Return btn
End Sub

Sub SetToolbarButtonToolTip(btnID As String, tooltip As String, color As String, position As String)			'ignoredeadcode
	btnID = UI.CleanID(btnID)
	Dim col As String = UI.FixColor("tooltip", color)
	Dim pos As String = UI.FixSize("tooltip", position)
	UI.AddClassByID($"${mName}_${btnID}"$, $"tooltip ${pos} ${col}"$)
	UI.SetAttrByID($"${mName}_${btnID}"$, "data-tip", tooltip)
End Sub

'add a file upload button with table event
'<code>
'Sub tblName_btnid_filechange (e As BANAnoEvent)
'tblName.FileChangeEvent
'End Sub
'</code>
Sub AddToolbarFileUpload(btnID As String, sIcon As String, btnColor As String, bMultiple As Boolean) As SDUI5Button		'ignoredeadcode
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	btnID = UI.CleanID(btnID)
	Dim btn As SDUI5Button = AddToolbarActionButtonIcon(btnID, sIcon, btnColor)
	BANano.GetElement($"#${mName}_actions"$).Append($"<input id="${mName}_${btnID}_file" type="file" class="hide"/>"$)
	BANano.GetElement($"#${mName}_${btnID}"$).off("click")
	BANano.GetElement($"#${mName}_${btnID}"$).On("click", Me, "FileUploadHandler")
	BANano.GetElement($"#${mName}_${btnID}_file"$).On("change", mCallBack, $"${mName}_${btnID}_FileChange"$)
	If bMultiple Then BANano.GetElement($"#${mName}_${btnID}_file"$).SetAttr("multiple", "multiple")
	Return btn
End Sub

private Sub FileUploadHandler(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault
	e.StopPropagation
	Dim src As String = e.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim p2 As String = UI.MvField(src, 2, "_")
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${p2}_file"$)
	'click the file input to fire change event
	el.SetValue(Null)
	el.RunMethod("click", Null)
End Sub

Sub AddToolbarActionButtonIconTextColor(btnID As String, sIcon As String, btnColor As String, btnTextColor As String) As SDUI5Button
	Dim btn As SDUI5Button = AddToolbarActionButtonIcon(btnID, sIcon, btnColor)
	SetToolbarButtonTextColor(btnID, btnTextColor)
	Return btn
End Sub

Sub AddToolbarButtonTextColor(btnID As String, btnCaption As String, btnColor As String, btnTextColor As String) As SDUI5Button
	Dim btn As SDUI5Button = AddToolbarActionButton(btnID, btnCaption, btnColor)
	SetToolbarButtonTextColor(btnID, btnTextColor)
	Return btn
End Sub

'change a toolbar button color
Sub SetToolbarButtonColor(btn As String, value As String)
	UI.SetColorByID($"#${mName}_${btn}"$, "color", "btn", value)
End Sub

Sub SetToolbarButtonTextColor(btn As String, value As String)		'ignoredeadcode
	UI.SetTextColorByID($"#${mName}_${btn}"$, value)
End Sub

'change the visibility of a button
Sub SetToolbarButtonVisible(btn As String, value As Boolean)
	UI.SetVisibleByID($"#${mName}_${btn}"$, value)
End Sub

Sub SetToolbarButtonEnable(btn As String, b As Boolean)
	btn = UI.CleanID(btn)
	If b Then
		BANano.GetElement($"#${mName}_${btn}"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).RemoveAttr("disabled")
	Else
		BANano.GetElement($"#${mName}_${btn}"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).SetAttr("disabled", "disabled")
	End If
End Sub

Sub SetToolbarButtonLoading(btn As String, b As Boolean)
	btn = UI.CleanID(btn)
	If b Then
		BANano.GetElement($"#${mName}_${btn}_icon"$).AddClass("hide")
		BANano.GetElement($"#${mName}_${btn}"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_${btn}"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_${btn}_icon"$).RemoveClass("hide")
	End If
End Sub