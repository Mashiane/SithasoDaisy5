﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private menuComponents As SDUI5Menu
	Type MenuItemX (key As String, title As String, tooltip As String)
	Private items As Map
	Private compToAdd As SDUI5Preferences
	Private titles As Map
	Private UI As UIShared
	Private types As Map
	Private compPreview As SDUI5Preferences
	Private compCode As SDUI5Code
	Private tblDesign As SDUI5Table
	Private Mode As String
	Private compTypes As List
	Private dataTypes As List
	Private colTypes As List
	Private lsDB As SDUILocalStorage
	Private dbTables As SDUILocalStorage
End Sub


Sub Show(MainApp As SDUI5App)
	UI.Initialize(Me)
	app = MainApp
	pgIndex.HideNavBar
	BANano.LoadLayout(app.PageView, "prefbuilderview")
	pgIndex.UpdateTitle("Preference Dialog Builder")
	'
	Dim stablename As String = BANano.GetLocalStorage2("table")
	stablename = UI.CStr(stablename)
	'initialize the tables
	dbTables.Initialize("tables", "id")
	dbTables.SchemaAddText(Array("id", "tablename", "singular", "plural", "displayvalue", "primarykey", "autoincrement"))
	
	'initialize the columns
	lsDB.Initialize(stablename, "id")
	lsDB.SchemaAddBoolean(Array("proprequired", "propvisible", "propenabled"))
	lsDB.SchemaAddText(Array("id", "proppos", "propname", "proptitle", "propdatatype", "proptype", "propvalue", "props"))
	'define the menu items to show
	items.Initialize
	titles.Initialize
	types.Initialize 
	compTypes.Initialize 
	colTypes.Initialize
	 
	compTypes.AddAll(Array("Dialer", "TextBox", "TextBoxGroup", "SelectGroup", "PasswordGroup", "DatePicker", "DateTimePicker", "TimePicker", "Password","Number","Telephone", "Email", "Label", "Link", "TextArea", "Select", "FileInput", "FileInputProgress", "CamCorder", "Camera", "Microphone", "Avatar", "AvatarPlaceholder", "AvatarGroup", "Image", "Progress", "ColorWheel", "Range", "CheckBox", "Toggle", "RadialProgress", "Rating", "RadioGroup", "Placeholder", "GroupSelect", "PlusMinus", "CheckBoxGroup", "ToggleGroup", "Filter"))
	'
	dataTypes.Initialize 
	dataTypes.AddAll(Array("String","Int","Double","Blob","Bool","Date", "LongText", "None"))
	'
	colTypes.AddAll(Array("Normal","FileSize", "Money", "Date", "DateTime", "Thousand", "Link", "ClickLink", "Email", "Website", "Icon", "IconTitle", "TitleIcon", "Badge", "Rating", "RadialProgress", "Progress", "Range", "CheckBox", "Select", "SelectFromList", "RadioGroupFromList", "RadioGroup", "TextBox", "TextBoxGroup", "SelectGroup", "PasswordGroup", "Dialer", "Password", "Number", "FileInput", "FileInputProgressCamCorder", "FileInputProgressCamera", "FileInputProgressMicrophone", "FileInputProgress","DatePicker", "DatePicker1", "DateTimePicker", "TimePicker", "TextArea", "Toggle","Color", "Avatar", "PlaceHolder", "AvatarPlaceholder","Image", "AvatarTitle", "BadgeAvatarTitle", "AvatarTitleSubTitle", "TitleSubTitle", "AvatarGroup", "BadgeGroup", "None","Telephone"))
	
	'
	tblDesign.AddToolbarActionButtonIcon("code", "./assets/code-solid.svg", "#53209d", "#ffffff")
	tblDesign.MoveBackButton
	
	tblDesign.Title = $"${stablename} Fields"$
	tblDesign.AddColumn("id", "#")
	tblDesign.SetColumnVisible("id", False)
	tblDesign.AddColumnTextBox("proppos", "Position",False)
	tblDesign.AddColumnTextBox("propname", "Field", False)
	tblDesign.AddColumnTextBox("proptitle", "Title", False)
	tblDesign.AddColumnSelect("propdatatype", "Data Type", False, True, UI.ListToSelectOptionsSort(dataTypes))
	tblDesign.AddColumnSelect("proptype", "Component", False, True, UI.ListToSelectOptionsSort(compTypes))
	tblDesign.AddColumnTextBox("propvalue", "Default Value", False)
	tblDesign.AddColumnCheckBox("proprequired", "Required", "success", False)
	tblDesign.AddColumnCheckBox("propvisible", "Visible", "success", False)
	tblDesign.AddColumnCheckBox("propenabled", "Enabled", "success", False)
	tblDesign.AddColumnCheckBox("propactive", "Active", "success", False)
	tblDesign.AddColumnCheckBox("propsort", "Order By", "success", False)
	tblDesign.AddColumnCheckBox("propfocus", "Focus On", "success", False)
	'
	tblDesign.AddColumnSelect("propcolumntype", "Column Type", False, False, UI.ListToSelectOptionsSort(colTypes))
	tblDesign.AddColumnCheckBox("propcolumnvisible", "Column Visible", "success", False)
	tblDesign.AddColumnCheckBox("propcomputevalue", "ComputeValue", app.COLOR_GREEN, False)
	tblDesign.AddColumnCheckBox("propcomputering", "ComputeRing", app.COLOR_GREEN, False)
	tblDesign.AddColumnCheckBox("propcomputecolor", "ComputeColor", app.COLOR_GREEN, False)
	tblDesign.AddColumnCheckBox("propcomputetextcolor", "ComputeTextColor", app.COLOR_GREEN, False)
	tblDesign.AddColumnCheckBox("propcomputebgcolor", "ComputeBGColor", app.COLOR_GREEN, False)
	tblDesign.AddColumnCheckBox("propcomputeclass", "ComputeClass", app.COLOR_GREEN, False)
	tblDesign.SetColumnVisible("propcomputevalue", False)
	tblDesign.SetColumnVisible("propcomputering", False)
	tblDesign.SetColumnVisible("propcomputecolor", False)
	tblDesign.SetColumnVisible("propcomputebgcolor", False)
	tblDesign.SetColumnVisible("propcomputetextcolor", False)
	tblDesign.SetColumnVisible("propcomputeclass", False)	'
	tblDesign.AddDesignerColums
	'
	tblDesign.AddColumnAction("down", "Move Down", "./assets/chevron-down-solid.svg", "#ff0000", "#ffffff")
	tblDesign.AddColumnAction("up", "Move Up", "./assets/chevron-up-solid.svg", "#00ff00", "#ffffff")
	tblDesign.SetHeaderVerticalLR("proprequired")
	tblDesign.SetHeaderVerticalLR("propvisible")
	tblDesign.SetHeaderVerticalLR("propenabled")
	tblDesign.SetHeaderVerticalLR("edit")
	tblDesign.SetHeaderVerticalLR("delete")
	tblDesign.SetHeaderVerticalLR("clone")
	tblDesign.SetHeaderVerticalLR("up")
	tblDesign.SetHeaderVerticalLR("down")
	tblDesign.SetHeaderVerticalLR("propsort")
	tblDesign.SetHeaderVerticalLR("propfocus")
	tblDesign.SetHeaderVerticalLR("propcolumnvisible")
	tblDesign.SetHeaderVerticalLR("propactive")
	tblDesign.SetHeaderVerticalLR("propcomputevalue")
	tblDesign.SetHeaderVerticalLR("propcomputering")
	tblDesign.SetHeaderVerticalLR("propcomputecolor")
	tblDesign.SetHeaderVerticalLR("propcomputebgcolor")
	tblDesign.SetHeaderVerticalLR("propcomputetextcolor")
	tblDesign.SetHeaderVerticalLR("propcomputeclass")
	
	'add the components to have
	AddMenuItem("Dialer", "Dialer", "Dialer allows users to increase or decrease a numeric value using increment (+) and decrement (-) buttons.")
	AddMenuItem("TextBox", "Text Box", "Text Input is a simple input field.")
	AddMenuItem("PlusMinus", "Plus Minus", "Plus Minus is a simple input field with minus and plus append icons for number picking")
	AddMenuItem("TextBoxGroup", "TextBox Group","Text Box Group is a simple input field that can have prepend and append icons.")
	AddMenuItem("SelectGroup", "Select Group","Select is used to pick a value from a list of options and can have prepend and append icons.")
	AddMenuItem("PasswordGroup", "Password Group","Password Group is a simple password type input field with append icon")
	AddMenuItem("DatePicker", "Date Picker","Date Picker is an input field that shows a date picker.")
	AddMenuItem("DateTimePicker", "Date Time Picker","Date Time Picker is an input field that shows a date time picker.")
	AddMenuItem("TimePicker", "Time Picker","Time Picker is an input field that shows a time picker.")
	AddMenuItem("Password", "Password","Password is an input field with password type.")
	AddMenuItem("Number", "Number","Number is an input field with number type.")
	AddMenuItem("ColorWheel", "Color Wheel","The color wheel is used to pick a color from a palette.")
	AddMenuItem("Telephone", "Telephone","Telephone is an input field with telephone type.")
	AddMenuItem("Email", "Email","Emails shows a link to an email address.")
	AddMenuItem("Label", "Label","Label shows a text label.")
	AddMenuItem("Link", "Link","Link shows a link you have provided")
	AddMenuItem("Placeholder", "Placeholder","Placeholder can be used to add any other component")
	AddMenuItem("TextArea", "Text Area","Textarea allows users to enter text in multiple lines.")
	AddMenuItem("Select", "Select","Select is used to pick a value from a list of options.")
	AddMenuItem("FileInput", "File Input","File Input is a an input field for uploading files.")
	AddMenuItem("FileInputProgress", "File Input Progress","File Input is a an input field for uploading files.")
	AddMenuItem("CamCorder", "CamCorder","File Input is a an input field for uploading files.")
	AddMenuItem("Camera", "Camera","File Input is a an input field for uploading files.")
	AddMenuItem("Microphone", "Microphone","File Input is a an input field for uploading files.")
	AddMenuItem("Avatar", "Avatar","Avatars are used to show a thumbnail representation of an individual or business in the interface.")
	AddMenuItem("AvatarPlaceholder", "Avatar Placeholder","Avatar Placeholder is used to show text inside an avatar")
	AddMenuItem("AvatarGroup", "Avatar Group","Avatar Groups are used to show a collection of thumbnails representation of an individual or business in the interface.")
	AddMenuItem("Image", "Image","Image is used to show an image that can be have a cropped content of the element to common shapes")
	AddMenuItem("Progress", "Progress","Progress bar can be used to show the progress of a task or to show the passing of time.")
	AddMenuItem("Range", "Range","Range slider is used to select a value by sliding a handle.")
	AddMenuItem("CheckBox", "CheckBox","Checkboxes are used to select or deselect a value.")
	AddMenuItem("Toggle", "Toggle","Toggle is a checkbox that is styled to look like a switch button.")
	AddMenuItem("RadialProgress", "Radial Progress","Radial progress can be used to show the progress of a task or to show the passing of time.")
	AddMenuItem("Rating", "Rating","Rating is a set of radio buttons that allow the user to rate something.")
	AddMenuItem("GroupSelect", "Group Select","Group Select allows users to select multiple options or a single option from items that are categorized.")
	AddMenuItem("CheckBoxGroup", "CheckBox Group","Check Box Group allows users to select one or more options from a list using checkboxes.")
	AddMenuItem("ToggleGroup", "Toggle Group","Radio buttons allow the user to select one option from a set.")
	AddMenuItem("RadioGroup", "Radio Group","Radio buttons allow the user to select one option from a set.")
	AddMenuItem("Filter", "Filter","Filter is a group of radio buttons. Choosing one of the options will hide the others and shows a reset button next to the chosen option.")
	'sort the menu items
	items = SortMenuItemsByKey
	'clear the menu
	menuComponents.Clear
	For Each k As String In items.keys
		Dim mi As MenuItemX = items.get(k)
		Dim ami As SDUI5MenuItem = menuComponents.AddItemChild("", mi.key, "", mi.title)
'		If mi.tooltip <> "" Then
'			ami.Tooltip = mi.tooltip
'			ami.TooltipPosition = ami.TOOLTIPPOSITION_RIGHT
'		End If
	Next
	BANano.Await(MountPreferences)
End Sub

'get all the table names for foreign key related content
Sub GetTableNames As Map
	'get existing tables
	BANano.Await(dbTables.Records)
	'
	Dim kv As Map = CreateMap()
	Dim jsonQ As SDUIJSONQuery
	jsonQ.Initialize(dbTables.result)
	jsonQ.OrderAsc("tablename")
	Dim result As List = BANano.Await(jsonQ.Exec)
	For Each m As Map In result
		Dim stablename As String = m.Get("tablename")
		kv.Put(stablename, stablename)
	Next
	Return kv
End Sub

Sub GetFieldNames(tblName As String) As Map
	Dim dbFields As SDUILocalStorage
	dbFields.Initialize(tblName, "id")
	dbFields.SchemaAddBoolean(Array("proprequired", "propvisible", "propenabled"))
	dbFields.SchemaAddText(Array("id", "proppos", "propname", "proptitle", "propdatatype", "proptype", "propvalue", "props"))
	BANano.Await(dbFields.Records)
	'
	Dim kv As Map = CreateMap()
	Dim jsonQ As SDUIJSONQuery
	jsonQ.Initialize(dbFields.result)
	jsonQ.OrderAsc("propname")
	Dim result As List = BANano.Await(jsonQ.Exec)
	For Each m As Map In result
		Dim stablename As String = m.Get("propname")
		kv.Put(stablename, stablename)
	Next
	Return kv
End Sub

Sub tblDesign_code(e As BANanoEvent)
	e.PreventDefault
	Dim thisTable As String = BANano.GetLocalStorage2("thistable")
	thisTable = app.UI.CStr(thisTable)
	If thisTable = "" Then Return
	Dim item As Map = BANano.FromJson(thisTable)
	Dim clsTC As clsTableCode
	BANano.Await(clsTC.Initialize(app, item))
	clsTC.BuildPage
End Sub

Sub MountPreferences
	BANano.Await(lsDB.Records)
	'
	Dim jsonQ As SDUIJSONQuery
	jsonQ.Initialize(lsDB.result)
	jsonQ.OrderAsc("proppos")
	Dim result As List = BANano.Await(jsonQ.Exec)
	tblDesign.SetItemsPaginate(result)
	'
	compPreview.Title = "Form Preview"
	BANano.Await(compPreview.PropertyBagFromList(result))
	'show the code for this component
	compCode.Content = compPreview.ToString
End Sub

private Sub AddProperties
	BANano.Await(compToAdd.Clear)
	BANano.Await(compPreview.Clear)
	compCode.Content = ""
	compPreview.IsLive = False
	compToAdd.AddPropertyTextBox("id", "ID", "", True)
	compToAdd.AddPropertyPlusMinus("proppos", "Position", "1", True, 1, 1, 100)
	compToAdd.AddPropertySelect("proptype", "Type", "TextBox", True, CreateMap())
	compToAdd.SetPropertySelectItemsListSort("proptype", compTypes)
	compToAdd.AddPropertyTextBox("propname", "Name", "", True)
	compToAdd.AddPropertyTextBox("proptitle", "Title", "", True)
	compToAdd.AddPropertySelect("propdatatype", "Data Type", "String", True, UI.ListToSelectOptionsSort(dataTypes))
	compToAdd.AddPropertyTextBox("propplaceholder", "Place Holder", "", False)
	compToAdd.AddPropertyTextBox("propvalue", "Default Value", "", False)
	compToAdd.AddPropertyCheckBox("proprequired", "Required", False, "success")
	compToAdd.AddPropertyPlusMinus("propstart", "Min Value", "0", False, 0, 1, 100)
	compToAdd.AddPropertyPlusMinus("propstep", "Step Value", "1", False, 0, 1, 100)
	compToAdd.AddPropertyPlusMinus("propmax", "Max Value", "100", False, 0, 1, 100)
	compToAdd.AddPropertyTextArea("propoptions", "Options List (JSON)", "", False, "")
	compToAdd.AddPropertyTextBox("propprepend", "Prepend Icon", "", False)					  
	compToAdd.AddPropertyTextBox("propappend", "Append Icon", "", False)					  
	compToAdd.AddPropertyTextBox("propdateformat", "Date Format", "Y-m-d H:i", False)
	compToAdd.AddPropertyLink("propformats", "Date Time Picker Formats", "https://flatpickr.js.org/formatting/", app.COLOR_SUCCESS)
	compToAdd.AddPropertyTextBox("propdisplayformat", "Date Display Format", "D, d M Y H:i", False)					 
	compToAdd.AddPropertyCheckBox("proptime24", "24 Hour Time", False, "success")
	compToAdd.AddPropertyTextBox("proplocale", "Locale", "en", False)
	compToAdd.AddPropertyCheckBox("propsingleselect", "Single Select", False, "success")
	compToAdd.AddPropertyTextBox("propcolor", "Color", "", False)
	compToAdd.AddPropertyTextBox("propactivecolor", "Active Color", "", False)
	compToAdd.AddPropertyTextBox("propsize", "Size", "", False)
	compToAdd.AddPropertyTextBox("propthickness", "Thickness", "", False)
	compToAdd.AddPropertyTextBox("propicon", "Icon", "", False)
	compToAdd.AddPropertyTextBox("propiconsize", "Icon Size", "42px", False)
	compToAdd.AddPropertyTextBox("propmaxlen", "Max Length", "", False)
	compToAdd.AddPropertyPlusMinus("proprows", "TextArea Rows", "", False, 0, 1, 20)
	compToAdd.AddPropertyTextBox("prophandlediameter", "Handle Diameter", "16", True)
	compToAdd.AddPropertyTextBox("propwheeldiameter", "Wheel Diameter", "200", True)
	compToAdd.AddPropertyTextBox("propwheelthickness", "Wheel Thickness", "20", True)
	compToAdd.AddPropertySelect("propwheelposition", "Wheel Position", "top-end", True, _
	UI.ListToSelectOptionsSort(Array("bottom", "bottom-center", "bottom-end", "center", "end", "left", "left-center", "left-end", _
	"right", "right-center", "right-end", "start", "top", "top-center", "top-end")))	
	compToAdd.AddPropertyTextBox("propwidth", "Width", "", False)
	compToAdd.AddPropertyTextBox("propheight", "Height", "", False)					  
	compToAdd.AddPropertySelect("propshape", "Shape", "rounded", False, CreateMap())	  
	compToAdd.SetPropertySelectItemsOptions("propshape", "|", True, False, "none|circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|rounded-none|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4")
	compToAdd.AddPropertyTextBox("propurl", "URL", "", False)
	compToAdd.AddPropertyCheckBox("propring", "Ring", False, "success")
	compToAdd.AddPropertyTextBox("propringcolor", "Ring Color", "primary", False)
	compToAdd.AddPropertyTextBox("propringoffset", "Ring Offset", "2", False)
	compToAdd.AddPropertyTextBox("propringoffsetcolor", "Ring Offset Color", "base-100", False)
	compToAdd.AddPropertyCheckBox("proponlinestatus", "Online Status", False, "success")
	compToAdd.AddPropertyCheckBox("proponline", "Online", False, "success")
	compToAdd.AddPropertyTextBox("proptextcolor", "Text Color", "", False)
	compToAdd.AddPropertyTextBox("proptextsize", "Text Size", "", False)
	compToAdd.AddPropertyTextBox("propaccept", "File Accept", "", False)
	compToAdd.AddPropertyCheckBox("propmultiple", "File Multiple", False, "success")
	compToAdd.AddPropertySelect("propalign", "Alignment", "left", False, CreateMap("left":"Left","center":"Center", "right":"Right"))
	compToAdd.AddPropertyCheckBox("propvisible", "Visible", True, "success")
	compToAdd.AddPropertyCheckBox("propenabled", "Enabled", True, "success")
	compToAdd.AddPropertyCheckBox("propreadonly", "Read Only", False, "success")
	compToAdd.AddPropertyCheckBox("propactive", "Active", True, "success")
	compToAdd.AddPropertyCheckBox("propsort", "Order By", False, "success")
	compToAdd.AddPropertyCheckBox("propfocus", "Focus", False, "success")
	compToAdd.AddPropertyTextBox("propupdate", "Update Property", "", False)
	'
	compToAdd.AddPropertySelect("propcolumntype", "Column Type", "Normal", False, UI.ListToSelectOptionsSort(colTypes))
	compToAdd.AddPropertyCheckBox("propcolumnvisible", "Column Visible", True, "success")
	compToAdd.AddPropertySelect("propsubtitle1", "Sub Title Field", "", False, CreateMap())
	compToAdd.AddPropertySelect("propsubtitle2", "Sub Title 1 Field", "", False, CreateMap())
	compToAdd.AddPropertyCheckBox("proptotal", "Total (Footer)", False, "success")
	compToAdd.AddPropertySelectGroup("propforeigntable", "Foreign Table", "", False, CreateMap())
	compToAdd.SetPropertyAppendIcon("propforeigntable", "./assets/magnifying-glass-solid.svg")
	compToAdd.AddPropertySelect("propforeignfield", "Foreign Key", "id", False, CreateMap())
	compToAdd.AddPropertySelect("propforeigndisplayfield", "Foreign Display", "", False, CreateMap())
	compToAdd.AddPropertySelect("propforeigndisplayfield1", "Foreign Display 1", "", False, CreateMap())
	compToAdd.AddPropertySelect("propforeigndisplayfield2", "Foreign Display 2", "", False, CreateMap())
	compToAdd.AddPropertyCheckBox("propcomputevalue", "Compute Value", False, "success")
	compToAdd.AddPropertyCheckBox("propcomputering", "Compute Ring", False, "success")
	compToAdd.AddPropertyCheckBox("propcomputecolor", "Compute Color", False, "success")
	compToAdd.AddPropertyCheckBox("propcomputebgcolor", "Compute BG Color", False, "success")
	compToAdd.AddPropertyCheckBox("propcomputetextcolor", "Compute Text Color", False, "success")
	compToAdd.AddPropertyCheckBox("propcomputeclass", "Compute Class", False, "success")
	
	'hide irrelevant details
	compToAdd.SetPropertyVisible("id", False)
End Sub

private Sub AddMenuItem(key As String, title As String, tooltip As String)
	Dim mi As MenuItemX
	mi.Initialize
	mi.key = key
	mi.title = title
	mi.tooltip = tooltip
	items.Put(key, mi)
	titles.Put(key.ToLowerCase, title)
	types.Put(key.ToLowerCase, key)
End Sub

private Sub GetComponentType(k As String) As String
	Return types.Get(k)
End Sub

private Sub GetTitle(k As String) As String
	Return titles.Get(k)
End Sub

private Sub SortMenuItemsByKey As Map
	Dim sl As List
	sl.Initialize 
	For Each k As String In items.Keys
		sl.Add(k)
	Next
	sl.Sort(True)
	Dim nl As Map
	nl.Initialize 
	For Each k As String In sl
		Dim mi As MenuItemX = items.Get(k)
		nl.put(k, mi)
	Next
	Return nl
End Sub

Private Sub menuComponents_ItemClick (item As String)
	Mode = "C"
	'set the active item in the menu
	BANano.Await(menuComponents.SetItemActive(item))
	'update the pref bag title
	compToAdd.Title = GetTitle(item) & " Properties"
	compPreview.Title = GetTitle(item) & " Preview"
	'add all properties needed
	BANano.Await(AddProperties)
	Dim tbls As Map = BANano.Await(GetTableNames)
	BANano.Await(compToAdd.SetPropertySelectMap("propforeigntable", tbls))
	'set the component type we will add
	compToAdd.SetPropertyValue("proptype", GetComponentType(item))
	'show properties depending on type we have chosen
	BANano.Await(ShowPropertiesByType(item))
End Sub

Sub ShowPropertiesByType(item As String)
	BANano.Await(compToAdd.HideAllProperties)
	compToAdd.SetPropertyCaption("propoptions", "Options List (JSON)")
	'show necessary ones
	BANano.Await(compToAdd.ShowProperty(Array("proppos", "propname", "propdatatype", "proptitle", "propvalue", "proprequired", "propenabled", "propvisible", "propsort", "propfocus", "proptype")))
	BANano.Await(compToAdd.ShowProperty(Array("propactive", "propupdate", "propcolumntype", "propsubtitle1", "propsubtitle2", "propcolumnvisible", "proptotal")))
	BANano.Await(compToAdd.ShowProperty(Array("propforeigntable","propforeignfield","propforeigndisplayfield","propforeigndisplayfield1","propforeigndisplayfield2"))) 
	BANano.Await(compToAdd.ShowProperty(Array("propcomputevalue","propcomputering","propcomputecolor","propcomputebgcolor","propcomputetextcolor","propcomputeclass")))
	'
	'set required properties
	compToAdd.RequireProperty(True, Array("id", "proppos", "propname", "proptitle", "propdatatype"))
	compToAdd.SetPropertyValue("propalign", "left")
	'show component specific
	Select Case item
	Case "dialer"
		compToAdd.ShowProperty(Array("propstart", "propstep", "propmax", "propalign"))
		compToAdd.RequireProperty(True, Array("propstart", "propstep", "propmax", "propvalue"))
		'propbagx.AddPropertyDialer("dialer1", "Dialer", "10", True, 0, 5, 100)
		compToAdd.SetPropertyValues(CreateMap("propname": "dialer1", "proptitle": "Dialer", "propvalue": "10", "proprequired": True, "propstart": "0", "propstep": "5", "propmax": "100", "propalign": "center"))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	Case "textbox"
		compToAdd.ShowProperty(Array("propreadonly", "propmaxlen", "propalign"))
		'propbagx.AddPropertyTextBox("textbox1", "TextBox", "Mashy", True)
		compToAdd.SetPropertyValues(CreateMap("propname": "textbox1", "proptitle": "TextBox", "propvalue": "Mashy", "proprequired": True))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	Case "plusminus"
		compToAdd.ShowProperty(Array("propstart", "propstep", "propmax", "propalign"))
		compToAdd.RequireProperty(True, Array("propstart", "propstep", "propmax", "propvalue"))
		'propbagx.AddPropertyPlusMinus("plusminus1", "Plus Minus", "3", False, "0", "1", "12")
		compToAdd.SetPropertyValues(CreateMap("propname": "plusminus1", "proptitle": "Plus Minus", "propvalue": "3", "proprequired": False, "propstart": "0", "propstep": "1", "propmax": "12", _
		 "propalign": "center", "propappend":"./assets/fan-solid.svg"))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	Case "textboxgroup"
		compToAdd.ShowProperty(Array("propprepend", "propappend", "propmaxlen"))
		'propbagx.AddPropertyTextBoxGroup("textboxgroup1", "TextBoxGroup", "TextBoxGroup", True)
		'propbagx.SetPropertyAppendIcon("textboxgroup1", "./assets/fan-solid.svg")
		compToAdd.SetPropertyValues(CreateMap("propname": "textboxgroup1", "proptitle": "TextBoxGroup", "propvalue": "TextBoxGroup", "proprequired": True, "propappend": "./assets/fan-solid.svg"))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	Case "selectgroup"
		'propbagx.AddPropertySelectGroup("selectgroup1", "SelectGroup", "b4a", True, CreateMap("b4a": "Basic 4 Android", "b4i": "Basic 4 iPhone", "b4j": "Basic 4 Java", "b4r": "Basic 4 Arduino"))
		'propbagx.SetPropertyAppendIcon("selectgroup1", "./assets/plus-solid.svg")
		compToAdd.ShowProperty(Array("propprepend", "propappend", "propoptions"))
		compToAdd.SetPropertyValues(CreateMap("propname": "selectgroup1", "proptitle": "SelectGroup", "propvalue": "b4a", "proprequired": True, _
			"propoptions": "b4a:Basic 4 Android; b4i:Basic 4 iPhone; b4j:Basic 4 Java; b4r:Basic 4 Arduino", "propappend": "./assets/plus-solid.svg"))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/select/", app.COLOR_INFO)
	Case "passwordgroup"
		compToAdd.ShowProperty(Array("propprepend", "propmaxlen"))
		'propbagx.AddPropertyPasswordGroup("password1", "Password Group", "anythingcanhappen", True)
		compToAdd.SetPropertyValues(CreateMap("propname": "password1", "proptitle": "Password Group", "propvalue": "anythingcanhappen", "proprequired": True))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	Case "datepicker"
		compToAdd.ShowProperty(Array("propdateformat", "propdisplayformat", "proplocale", "propformats"))
		compToAdd.SetPropertyValue("propdateformat", "Y-m-d")
		compToAdd.SetPropertyValue("propdisplayformat", "D, d M J")
		compToAdd.SetPropertyValue("proplocale", "en")
		compToAdd.SetPropertyValue("propvalue", UI.DateNow)
		'propbagx.AddPropertyDatePicker("datepicker1", "Date Picker", "", True, "Y-m-d", "F j, Y", "en")
		compToAdd.SetPropertyValues(CreateMap("propname": "datepicker1", "proptitle": "Date Picker", "proprequired": True, "propdateformat":"Y-m-d", "propdisplayformat": "F j, Y", "proplocale":"en"))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/calendar/", app.COLOR_INFO)
	Case "datetimepicker"
		compToAdd.ShowProperty(Array("propdateformat", "propdisplayformat", "proplocale", "proptime24", "propformats"))
		compToAdd.SetPropertyValue("propdateformat", "Y-m-d H:i")
		compToAdd.SetPropertyValue("propdisplayformat", "D, d M J H:i")
		compToAdd.SetPropertyValue("proplocale", "en")
		compToAdd.SetPropertyValue("propvalue", UI.DateTimeNow)
		'propbagx.AddPropertyDateTimePicker("datepicker3", "Date Picker 3", "", True, "Y-m-d H:i", "j F, Y H:i", True, "en")
		compToAdd.SetPropertyValues(CreateMap("propname": "datepicker3", "proptitle": "Date Time Picker", "proprequired": True, "propdateformat":"Y-m-d H:i", "propdisplayformat": "j F, Y H:i", "proplocale":"en", "proptime24":True))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/calendar/", app.COLOR_INFO)
	Case "timepicker"
			compToAdd.ShowProperty(Array("propdateformat", "propdisplayformat", "proplocale", "proptime24", "propformats"))
		compToAdd.SetPropertyValue("propdateformat", "H:i")
			compToAdd.SetPropertyValue("propdisplayformat", "H:i")
		compToAdd.SetPropertyValue("proplocale", "en")
		compToAdd.SetPropertyValue("propvalue", UI.TimeNow)
		'propbagx.AddPropertyTimePicker("timepicker1", "Time Picker", "", True, "H:i", "H:i", True, "en")
		compToAdd.SetPropertyValues(CreateMap("propname": "timepicker1", "proptitle": "Time Picker", "proprequired": True, "propdateformat":"H:i", "propdisplayformat": "H:i", "proplocale":"en", "proptime24":True))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/calendar/", app.COLOR_INFO)
	Case "password"
		compToAdd.ShowProperty(Array("propmaxlen"))
		'propbagx.AddPropertyPassword("password0", "Password", "anythingcanhappen", True)
		compToAdd.SetPropertyValues(CreateMap("propname": "password0", "proptitle": "Password", "propvalue": "anythingcanhappen", "proprequired": True))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	Case "number"
		compToAdd.ShowProperty(Array("propstart", "propstep", "propmax"))
		compToAdd.RequireProperty(True, Array("propstart", "propstep", "propmax", "propvalue"))
		'propbagx.AddPropertyNumber("number1", "Number", "5", True)
		compToAdd.SetPropertyValues(CreateMap("propname": "number1", "proptitle": "Number", "propvalue": "5", "proprequired": True))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	Case "telephone"
		compToAdd.ShowProperty(Array("propmaxlen"))
		'' propbagx.AddPropertyTelephone("telephone1", "Telephone", "123456789", True)
		compToAdd.SetPropertyValues(CreateMap("propname": "telephone1", "proptitle": "Telephone", "propvalue": "123456789", "proprequired": True))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	Case "email"
		compToAdd.HideProperty(Array("proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propcolor"))
		'propdisplay.AddPropertyEmail("email1", "Email", "anele@sithasoholdings.co.za", app.COLOR_PRIMARY)
		compToAdd.SetPropertyValues(CreateMap("propname": "email1", "proptitle": "Email", "propvalue": "anele@sithasoholdings.co.za", "propcolor": "primary"))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	Case "label"
		compToAdd.HideProperty(Array("proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propcolor"))
		'propdisplay.AddPropertyLabel("label1", "Label", "This is a label", app.COLOR_AMBER)
		compToAdd.SetPropertyValues(CreateMap("propname": "label1", "proptitle": "Label", "propvalue": "This is a label", "propcolor": app.COLOR_AMBER))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/docs/layout-and-typography/", app.COLOR_INFO)
	Case "link"
		compToAdd.HideProperty(Array("proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propcolor"))
		'propdisplay.AddPropertyLink("link1", "Link", "http://www.b4x.com", app.COLOR_FUCHSIA)
		compToAdd.SetPropertyValues(CreateMap("propname": "link1", "proptitle": "Link", "propvalue": "http://www.b4x.com", "propcolor": app.COLOR_FUCHSIA))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/link/", app.COLOR_INFO)
	Case "placeholder"
		compToAdd.HideProperty(Array("proprequired", "propenabled", "propreadonly"))
		compToAdd.SetPropertyValues(CreateMap("propname": "placeholder1", "proptitle": "Placeholder", "propvalue": "This is a placeholder"))
	Case "textarea"
		compToAdd.ShowProperty(Array("proprows"))
		compToAdd.ShowProperty(Array("propmaxlen", "proprows"))
		'propbagx.AddPropertyTextArea("textarea1", "Text Area", "", True)
			compToAdd.SetPropertyValues(CreateMap("propname": "textarea1", "proptitle": "Text Area", "propvalue": "I love coding SithasoDaisy5", "proprequired": True, "proprows":"4"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/textarea/", app.COLOR_INFO)
	Case "select"
		compToAdd.ShowProperty(Array("propoptions"))
		'propbagx.AddPropertySelect("select1", "Select", "b4j", True, CreateMap("b4a": "Basic 4 Android", "b4i": "Basic 4 iPhone", "b4j": "Basic 4 Java", "b4r": "Basic 4 Arduino"))
		compToAdd.SetPropertyValues(CreateMap("propname": "select1", "proptitle": "Select", "propvalue": "b4j", "proprequired": True, _
			"propoptions": "b4a:Basic 4 Android; b4i:Basic 4 iPhone; b4j:Basic 4 Java; b4r:Basic 4 Arduino"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/select/", app.COLOR_INFO)
	Case "fileinput"
		compToAdd.HideProperty(Array("propvalue", "propenabled"))
		compToAdd.ShowProperty(Array("propaccept", "propmultiple", "propupdate"))
		'propbagx.AddPropertyFileInput("fileinput1", "File Input 1", True)
		compToAdd.SetPropertyValues(CreateMap("propname": "fileinput1", "proptitle": "File Input", "propvalue": "", "proprequired": True))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/file-input/", app.COLOR_INFO)
	Case "fileinputprogress"
		compToAdd.HideProperty(Array("propvalue", "proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propaccept", "propmultiple", "propcolor", "propsize", "propicon", "proptextcolor", "propiconsize", "propupdate"))
		'propbagx.AddPropertyFileInputProgress("fileinputprogress1", "File Input Progress", "80px", "./assets/headphones-solid.svg", app.COLOR_BROWN)
		compToAdd.SetPropertyValues(CreateMap("propname": "fileinputprogress1", "proptitle": "File Input Progress", "propsize":"80px", "propicon":"./assets/headphones-solid.svg", _
			"propcolor": "#a52a2a", "proptextcolor":"#ffffff", "propiconsize":"42px"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/file-input/", app.COLOR_INFO)
	Case "camcorder"
		compToAdd.HideProperty(Array("propvalue", "proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propcolor", "propsize", "proptextcolor", "propiconsize", "propupdate"))
		'propbagx.AddPropertyCamCorder("camcoder1", "Camcoder", "80px", app.COLOR_PRIMARY)
		compToAdd.SetPropertyValues(CreateMap("propname": "camcoder1", "propiconsize":"42px", "proptitle": "CamCorder", "propsize":"80px", "propcolor": "primary", "proptextcolor":"#ffffff"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/file-input/", app.COLOR_INFO)
	Case "camera"
		compToAdd.HideProperty(Array("propvalue", "proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propcolor", "propsize", "proptextcolor", "propiconsize", "propupdate"))
		'propbagx.AddPropertyCamera("camera1", "Camera", "80px", app.COLOR_ERROR)
		compToAdd.SetPropertyValues(CreateMap("propname": "camera1", "propiconsize":"42px", "proptitle": "Camera", "propsize":"80px", "propcolor": "error", "proptextcolor":"#ffffff"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/file-input/", app.COLOR_INFO)
	Case "microphone"
		compToAdd.HideProperty(Array("propvalue", "proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propcolor", "propsize", "proptextcolor", "propiconsize", "propupdate"))
		'propbagx.AddPropertyMicrophone("microphone1", "Microphone", "80px", app.COLOR_ACCENT)
		compToAdd.SetPropertyValues(CreateMap("propname": "microphone1", "propiconsize":"42px", "proptitle": "Microphone", "propsize":"80px", "propcolor": "accent", "proptextcolor":"#ffffff"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/file-input/", app.COLOR_INFO)
	Case "avatar"
		compToAdd.HideProperty(Array("propvalue", "proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propsize", "propshape", "propurl", "propring", "propringcolor", "propringoffset", "propringoffsetcolor", "proponlinestatus", "proponline"))
		'propdisplay.AddPropertyAvatar("avatar1", "Avatar", "80px", app.MASK_SQUIRCLE, "./assets/mashy.jpg")
		compToAdd.SetPropertyValues(CreateMap("propname": "avatar1", "proptitle": "Avatar", "propsize":"80px", "propshape": app.MASK_SQUIRCLE, "propurl":"./assets/mashy.jpg"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/avatar/", app.COLOR_INFO)
	Case "avatarplaceholder"
		compToAdd.HideProperty(Array("proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propsize", "propshape", "propcolor", "proptextcolor", "proptextsize"))
		'propdisplay.AddPropertyAvatarPlaceholder("avatarplaceholder", "Avatar Placeholder", "AM", "80px", app.MASK_CIRCLE, app.COLOR_NEUTRAL, "white", app.TEXTSIZE_4XL)
		compToAdd.SetPropertyValues(CreateMap("propname": "avatarplaceholder1", "propvalue": "AM", "proptitle": "Avatar Placeholder", _
		"propsize":"80px", "propshape": app.MASK_SQUIRCLE, "propcolor":"neutral", "proptextcolor":"white", "proptextsize":"4xl"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/avatar/", app.COLOR_INFO)
	Case "avatargroup"
		compToAdd.SetPropertyCaption("propoptions", "Paths to Image URLs (;)")
		compToAdd.HideProperty(Array("proprequired", "propenabled", "propvalue"))
		compToAdd.ShowProperty(Array("propsize", "propshape", "propoptions"))
		'propdisplay.AddPropertyAvatarGroup("avatargroup", "Avatar Group", "12", app.MASK_CIRCLE, Array("./assets/1.jpg", "./assets/2.jpg", "./assets/3.jpg", "./assets/4.jpg", "./assets/5.jpg"))
		compToAdd.SetPropertyValues(CreateMap("propname": "avatargroup1", "propvalue": "AM", "proptitle": "Avatar Group", _
		"propsize":"12", "propshape": app.MASK_CIRCLE, "propoptions": "./assets/1.jpg; ./assets/2.jpg; ./assets/3.jpg; ./assets/4.jpg; ./assets/5.jpg"))
		compToAdd.SetPropertyEnabled("propshape", False)
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/avatar/", app.COLOR_INFO)
	Case "image"
		compToAdd.HideProperty(Array("proprequired", "propenabled", "propvalue"))
		compToAdd.ShowProperty(Array("propwidth", "propheight", "propshape", "propurl"))
		'propdisplay.AddPropertyImage("image1", "Image", "80px", "80px", app.MASK_HEART, "./assets/10.jpg")
		compToAdd.SetPropertyValues(CreateMap("propname": "image1", "proptitle": "Image", "propwidth":"80px", "propheight":"80px", "propshape": app.MASK_HEART, "propurl":"./assets/10.jpg"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/mask/", app.COLOR_INFO)
	Case "progress"
		compToAdd.HideProperty(Array("proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propstart", "propstep", "propmax", "propcolor"))
		compToAdd.RequireProperty(True, Array("propstart", "propstep", "propmax", "propvalue"))
		'propdisplay.AddPropertyProgress("progress1", "Progress", "20", app.COLOR_PRIMARY, "0", "2", "100")
		compToAdd.SetPropertyValues(CreateMap("propname": "progress1", "proptitle": "Progress", "propvalue": "20", "propstart": "0", "propstep": "2", "propmax": "100", "propcolor": "primary"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/progress/", app.COLOR_INFO)
	Case "range"
		compToAdd.HideProperty(Array("proprequired"))
		compToAdd.ShowProperty(Array("propstart", "propstep", "propmax", "propcolor"))
		compToAdd.RequireProperty(True, Array("propstart", "propstep", "propmax", "propvalue"))
		'propbagx.AddPropertyRange("range1", "Range", "30", app.COLOR_SECONDARY, "0", "1", "100")
		compToAdd.SetPropertyValues(CreateMap("propname": "range1", "proptitle": "Range", "propvalue": "30", "proprequired": False, "propstart": "0", "propstep": "1", "propmax": "100", _
		 "propcolor": "secondary"))	
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/range/", app.COLOR_INFO)
	Case "checkbox"
		compToAdd.ShowProperty(Array("propcolor"))
		'propbagx.AddPropertyCheckBox("checkbox1", "CheckBox", False, app.COLOR_PRIMARY)
		compToAdd.SetPropertyValues(CreateMap("propname": "checkbox1", "proptitle": "CheckBox", "proprequired": False, "propcolor": "primary"))	
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/checkbox/", app.COLOR_INFO)
	Case "toggle"
		compToAdd.ShowProperty(Array("propcolor"))
		'propbagx.AddPropertyToggle("toggle1", "Toggle", True, "success")
		compToAdd.SetPropertyValues(CreateMap("propname": "toggle1", "proptitle": "Toggle", "proprequired": True, "propcolor": "success"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/toggle/", app.COLOR_INFO)
	Case "radialprogress"
		compToAdd.HideProperty(Array("proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propcolor", "propsize", "propthickness"))
		'propdisplay.AddPropertyRadialProgress("radialprogress", "Radial Progress", "80", "success", "5rem", "4px")
		compToAdd.SetPropertyValues(CreateMap("propname": "radialprogress1", "proptitle": "Radial Progress", "propvalue":"80", "propcolor": "success", "propsize":"5rem", "propthickness":"4px"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/radial-progress/", app.COLOR_INFO)
	Case "rating"
		compToAdd.HideProperty(Array("proprequired", "propenabled"))
		compToAdd.ShowProperty(Array("propcolor", "propshape"))
		'propbagx.AddPropertyRating("rating1", "Rating 1", "2", "primary", app.MASK_STAR_2)
		compToAdd.SetPropertyValues(CreateMap("propname": "rating1", "proptitle": "Rating", "propvalue":"2", "propshape": app.MASK_STAR_2, "propcolor": "primary"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/rating/", app.COLOR_INFO)
	Case "groupselect"
		compToAdd.ShowProperty(Array("propcolor", "propoptions", "propactivecolor", "propsingleselect"))
		'Dim gsOptions As Map = UI.GetKeyValues("spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", False)
		'BANano.Await(propbagx.AddPropertyGroupSelect("groupselect1", "Group Select", "spar;quadbike", "neutral", False, "#22c55e", gsOptions))
		compToAdd.SetPropertyValues(CreateMap("propname": "groupselect1", "proptitle": "Group Select", "propvalue": "spar;quadbike", "proprequired": False, _
		"propoptions": "spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", "propcolor": "neutral", "propsingleselect":False, "propactivecolor":"#22c55e"))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/checkbox/", app.COLOR_INFO)
	Case "checkboxgroup"
		compToAdd.ShowProperty(Array("propcolor", "propoptions", "propactivecolor"))
		'Dim gsOptions As Map = UI.GetKeyValues("spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", False)
		'BANano.Await(propbagx.AddPropertyCheckBoxGroup("checkboxgroup", "CheckBox Group", "spar;quadbike", "neutral", False, "#22c55e", gsOptions))
		compToAdd.SetPropertyValues(CreateMap("propname": "checkboxgroup", "proptitle": "CheckBox Group", "propvalue": "spar;quadbike", "proprequired": False, _
		"propoptions": "spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", "propcolor": "neutral", "propactivecolor":"#22c55e"))
		compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/checkbox/", app.COLOR_INFO)
	Case "togglegroup"
		compToAdd.ShowProperty(Array("propcolor", "propoptions", "propactivecolor"))
		'Dim gsOptions As Map = UI.GetKeyValues("spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", False)
		'BANano.Await(propbagx.AddPropertyToggleGroup("togglegroup1", "Toggle Group", "spar;quadbike", "neutral", False, "#22c55e", gsOptions))
		compToAdd.SetPropertyValues(CreateMap("propname": "togglegroup1", "proptitle": "Toggle Group", "propvalue": "spar;quadbike", "proprequired": False, _
		"propoptions": "spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", "propcolor": "neutral", "propactivecolor":"#22c55e"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/toggle/", app.COLOR_INFO)
	Case "radiogroup"
		compToAdd.ShowProperty(Array("propcolor", "propoptions", "propactivecolor"))
		'Dim gsOptions As Map = UI.GetKeyValues("spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", False)
		'BANano.Await(propbagx.AddPropertyRadioGroup("groupselect1", "Group Select", "spar;quadbike", "neutral", False, "#22c55e", gsOptions))
		compToAdd.SetPropertyValues(CreateMap("propname": "radiogroup", "proptitle": "Radio Group", "propvalue": "spar", "proprequired": False, _
		"propoptions": "spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", "propcolor": "neutral", "propactivecolor":"#22c55e"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/radio/", app.COLOR_INFO)
	Case "filter"
		compToAdd.ShowProperty(Array("propcolor", "propoptions", "propactivecolor"))
		'Dim gsOptions As Map = UI.GetKeyValues("spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", False)
		'BANano.Await(propbagx.AddPropertyFilter("groupselect1", "Group Select", "spar;quadbike", "neutral", False, "#22c55e", gsOptions))
		compToAdd.SetPropertyValues(CreateMap("propname": "filter1", "proptitle": "Filter", "propvalue": "quadbike", "proprequired": False, _
		"propoptions": "spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", "propcolor": "neutral", "propactivecolor":"#22c55e"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Docs", "https://daisyui.com/components/filter/", app.COLOR_INFO)
	Case "colorwheel"
		compToAdd.ShowProperty(Array("prophandlediameter", "propwheeldiameter", "propwheelthickness", "propwheelposition"))
		'propbagx.AddPropertyColorWheel("color1", "Color Wheel", "#f5375f", True, 16, 200, 20, "top-end")
		compToAdd.SetPropertyValues(CreateMap("propname": "color1", "proptitle": "Color Wheel", "propvalue":"#f5375f","prophandlediameter":"16", "propwheeldiameter": "200", _
			"propwheelthickness":"20", "propwheelposition":"bottom-end"))
			compToAdd.AddPropertyLink("daisyuidocs", "DaisyUI Related Docs", "https://daisyui.com/components/input/", app.COLOR_INFO)
	End Select	
	'
	BANano.Await(GeneratePreview)
End Sub

private Sub GeneratePreview
	'get the current property bag
	Dim bag As Map = BANano.Await(compToAdd.propertybag)
	Dim nl As List
	nl.Initialize 
	nl.Add(bag)
	BANano.Await(compPreview.PropertyBagFromList(nl))
	'show the code for this component
	compCode.Content = compPreview.ToString
End Sub

'if happy with the preview, save preference to db
Private Sub compPreview_Yes_Click (e As BANanoEvent)
'	'check if the property bag is valid
'	Dim bIsValid As Boolean = BANano.Await(compToAdd.IsPropertyBagValid)
'	If bIsValid = False Then
'		BANano.Await(app.ShowSwalErrorWait("Preferences", "The specified preferences are not valid, please fix the issues!", "Ok"))
'		Return
'	End If
	'the bag is valid, execute a preview
	Dim bag As Map = BANano.Await(compToAdd.PropertyBag)
	'check the foreign details
	Dim spropforeigntable As String = bag.Get("propforeigntable")
	spropforeigntable = app.UI.CStr(spropforeigntable)
	Dim spropforeignfield As String = bag.Get("propforeignfield")
	spropforeignfield = app.UI.CStr(spropforeignfield)
	Dim spropforeigndisplayfield As String = bag.Get("propforeigndisplayfield")
	spropforeigndisplayfield = app.UI.CStr(spropforeigndisplayfield)
	Dim spropforeigndisplayfield1 As String = bag.Get("propforeigndisplayfield1")
	spropforeigndisplayfield1 = app.UI.CStr(spropforeigndisplayfield1)
	Dim spropforeigndisplayfield2 As String = bag.Get("propforeigndisplayfield2")
	spropforeigndisplayfield2 = app.UI.CStr(spropforeigndisplayfield2)
	If spropforeigntable <> "" Then
		If spropforeignfield <> "" Then
			If spropforeigndisplayfield <> "" Then
				bag.Put("propcomputevalue", True)
			End If
		End If
	End If
	'
	Dim sproppos As String = bag.Get("proppos")
	sproppos = UI.CInt(sproppos)
	sproppos = app.UI.PadRight(sproppos, 2, "0")
	bag.Put("proppos", sproppos)
	Dim sid As String = bag.Get("id")
	Select Case Mode
	Case "C", ""
		sid = lsDB.NextID
		bag.Put("id", sid)
		lsDB.SetRecord(bag)
		BANano.Await(lsDB.create)
	Case "U"
		lsDB.SetRecord(bag)
		BANano.Await(lsDB.Update) 
	End Select
	BANano.Await(MountPreferences)
End Sub

Private Sub compPreview_No_Click (e As BANanoEvent)
	
End Sub

Private Sub compToAdd_Change (item As Map)
	BANano.Await(GeneratePreview)
End Sub

Private Sub tblDesign_EditRow (Row As Int, item As Map)
	Mode = "U"
	Dim sproptype As String = item.Get("proptype")
	'update the pref bag title
	compToAdd.Title = GetTitle(sproptype.ToLowerCase) & " Properties"
	compPreview.Title = GetTitle(sproptype.ToLowerCase) & " Preview"
	'add all properties needed
	BANano.Await(AddProperties)
	Dim tbls As Map = BANano.Await(GetTableNames)
	BANano.Await(compToAdd.SetPropertySelectMap("propforeigntable", tbls))
	'get the value for foreign table
	Dim spropforeigntable As String = item.Get("propforeigntable")
	spropforeigntable = app.UI.CStr(spropforeigntable)
	If spropforeigntable <> "" Then
		'get fields for foreign table
		Dim flds As Map = BANano.Await(GetFieldNames(spropforeigntable))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeignfield", flds))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeigndisplayfield", flds))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeigndisplayfield1", flds))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeigndisplayfield2", flds))
	End If
	'set the component type we will add
	compToAdd.SetPropertyValue("proptype", GetComponentType(sproptype))
	'show properties depending on type we have chosen
	BANano.Await(ShowPropertiesByType(sproptype.tolowercase))
	compToAdd.PropertyBag = item
	
	BANano.Await(GeneratePreview)
	app.UI.EnsureVisible(compToAdd.Name)
End Sub

Private Sub tblDesign_DeleteRow (Row As Int, item As Map)
	Dim toDeleteID As String = item.Get("id")
	Dim toDeleteName As String = item.Get("propname")
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">${toDeleteName}</h2><br>Are you sure that you want to delete this record?"$
	Dim bConfirm As Boolean = BANano.Await(app.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	If bConfirm = False Then Return
	BANano.Await(lsDB.Delete(toDeleteID))
	BANano.Await(MountPreferences)
End Sub

Private Sub tblDesign_Add (e As BANanoEvent)
	Mode = "C"
End Sub

Private Sub tblDesign_Refresh (e As BANanoEvent)
	BANano.Await(MountPreferences)
End Sub

Private Sub tblDesign_CloneRow (Row As Int, item As Map)
	Mode = "C"
	item.Put("id", lsDB.NextID)
	Dim sproptype As String = item.Get("proptype")
	'update the pref bag title
	compToAdd.Title = GetTitle(sproptype.ToLowerCase) & " Properties"
	compPreview.Title = GetTitle(sproptype.ToLowerCase) & " Preview"
	'add all properties needed
	BANano.Await(AddProperties)
	Dim tbls As Map = BANano.Await(GetTableNames)
	BANano.Await(compToAdd.SetPropertySelectMap("propforeigntable", tbls))
	'get the value for foreign table
	Dim spropforeigntable As String = item.Get("propforeigntable")
	spropforeigntable = app.UI.CStr(spropforeigntable)
	If spropforeigntable <> "" Then
		'get fields for foreign table
		Dim flds As Map = BANano.Await(GetFieldNames(spropforeigntable))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeignfield", flds))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeigndisplayfield", flds))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeigndisplayfield1", flds))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeigndisplayfield2", flds))
	End If
	'set the component type we will add
	compToAdd.SetPropertyValue("proptype", GetComponentType(sproptype))
	'show properties depending on type we have chosen
	BANano.Await(ShowPropertiesByType(sproptype.tolowercase))
	compToAdd.PropertyBag = item
	BANano.Await(GeneratePreview)
	app.ShowToastInfo("Save the record after update")
End Sub

Private Sub tblDesign_Back (e As BANanoEvent)
	pgIndex.ShowNavBar
	pgTableBuilder.Show(app)
End Sub

Private Sub tblDesign_UpRow (Row As Int, item As Map)
	Dim sproppos As String = item.Get("proppos")
	sproppos = UI.CInt(sproppos) - 1
	If sproppos <= 0 Then
		sproppos = 1
	End If
	sproppos = app.UI.PadRight(sproppos, 2, "0")
	item.Put("proppos", sproppos)
	lsDB.SetRecord(item)
	BANano.Await(lsDB.update)
	BANano.Await(MountPreferences)
End Sub

Private Sub tblDesign_DownRow (Row As Int, item As Map)
	Dim sproppos As String = item.Get("proppos")
	sproppos = UI.CInt(sproppos) + 1
	sproppos = app.UI.PadRight(sproppos, 2, "0")
	item.Put("proppos", sproppos)
	lsDB.SetRecord(item)
	BANano.Await(lsDB.update)
	BANano.Await(MountPreferences)
End Sub

Private Sub tblDesign_ChangeRow (Row As Int, Value As Object, Column As String, item As Map)
	item.Put(Column, Value)
	Dim sproppos As String = item.Get("proppos")
	sproppos = UI.CInt(sproppos)
	sproppos = app.UI.PadRight(sproppos, 2, "0")
	item.Put("proppos", sproppos)	
	lsDB.SetRecord(item)
	BANano.Await(lsDB.update)
	BANano.Await(MountPreferences)
	tblDesign.SetRowEnsureVisible(Row)
End Sub

Private Sub tblDesign_DeleteAll (e As BANanoEvent)
	Dim sMsg As String = $"<h2 class="text-2xl font-bold mt-2">Preferences</h2><br>Are you sure that you want to delete all the preferences?"$
	Dim bConfirm As Boolean = BANano.Await(app.ShowSwalConfirmWait("Confirm Delete", sMsg, "Yes", "No"))
	If bConfirm = False Then Return
	BANano.Await(lsDB.Clear)
	BANano.Await(MountPreferences)
End Sub

Private Sub tblDesign_Download (e As BANanoEvent)
	Dim thisTable As String = BANano.GetLocalStorage2("thistable")
	thisTable = app.UI.CStr(thisTable)
	If thisTable = "" Then Return
	Dim item As Map = BANano.FromJson(thisTable)
	Dim stablename As String = item.Get("tablename")
	Dim result As List = BANano.Await(lsDB.Records)
	Dim sjson As String = BANano.ToJson(result)
	app.DownloadTextFile(sjson, $"${stablename}.json"$)
End Sub

Private Sub tblDesign_FileChange (e As BANanoEvent)
	'has the file been specified
	Dim fileObj As Map = app.GetFileFromEvent(e)
	If BANano.IsNull(fileObj) Or BANano.IsUndefined(fileObj) Then Return
	Dim fields As List = BANano.Await(app.readAsJsonWait(fileObj))
	lsDB.Records = fields
	BANano.Await(MountPreferences)
End Sub

Private Sub compToAdd_propforeigntable_AppendClick (e As BANanoEvent)
	e.PreventDefault
	Dim spropforeigntable As String = BANano.Await(compToAdd.GetPropertyValue("propforeigntable"))
	spropforeigntable = app.UI.CStr(spropforeigntable)
	If spropforeigntable <> "" Then
		'get fields for foreign table
		Dim flds As Map = BANano.Await(GetFieldNames(spropforeigntable))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeignfield", flds))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeigndisplayfield", flds))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeigndisplayfield1", flds))
		BANano.Await(compToAdd.SetPropertySelectMap("propforeigndisplayfield2", flds))
	End If
End Sub