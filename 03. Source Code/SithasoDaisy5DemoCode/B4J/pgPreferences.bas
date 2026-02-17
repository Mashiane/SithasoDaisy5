B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private propbagx As SDUI5Preferences		'ignore
	Private propdisplay As SDUI5Preferences		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.SizeMd = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	propbagx.Initialize(Me, "propbagx", "propbagx")
	propbagx.ParentID = "SDUI5Column1"
	'propbagx.ActionType = "yes-no"
	propbagx.ButtonSize = "md"
	propbagx.CancelColor = "neutral"
	propbagx.CancelTextColor = ""
	propbagx.CancelVisible = False
	propbagx.NoCaption = "Cancel"
	propbagx.SearchWidth = "250px"
	propbagx.Shadow = "lg"
	propbagx.Title = "Input"
	'propbagx.TooltipPosition = "right"
	propbagx.YesCaption = "Apply"
	BANano.Await(propbagx.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	propdisplay.Initialize(Me, "propdisplay", "propdisplay")
	propdisplay.ParentID = "SDUI5Column2"
	'propdisplay.ActionType = "yes-no-cancel"
	propdisplay.ButtonSize = "md"
	propdisplay.CancelColor = "primary"
	propdisplay.CancelTextColor = ""
	propdisplay.SearchSize = "md"
	propdisplay.SearchVisible = False
	propdisplay.SearchWidth = "250px"
	propdisplay.Shadow = "lg"
	propdisplay.Title = "Display"
	'propdisplay.TooltipPosition = "right"
	BANano.Await(propdisplay.AddComponent)
	pgIndex.UpdateTitle("SDUI5Preferences")
	propbagx.Clear
	propbagx.AddPropertyDialer("dialer1", "Dialer", "10", True, 0, 5, 100)
	propbagx.AddPropertyPlusMinus("plusminus", "Plus Minus", "3", False, "0", "1", "12")
	propbagx.AddPropertyTextBox("textbox1", "TextBox", "Mashy", True)
	propbagx.AddPropertyTextBoxGroup("textboxgroup1", "TextBoxGroup", "TextBoxGroup", True)
	propbagx.SetPropertyAppendIcon("textboxgroup1", "./assets/fan-solid.svg")
	propbagx.AddPropertySelect("select1", "Select", "b4j", True, CreateMap("b4a": "Basic 4 Android", "b4i": "Basic 4 iPhone", "b4j": "Basic 4 Java", "b4r": "Basic 4 Arduino"))
	propbagx.AddPropertySelectGroup("selectgroup1", "SelectGroup", "b4a", True, _
	CreateMap("b4a": "Basic 4 Android", "b4i": "Basic 4 iPhone", "b4j": "Basic 4 Java", "b4r": "Basic 4 Arduino"))
	propbagx.SetPropertyAppendIcon("selectgroup1", "./assets/plus-solid.svg")
	propbagx.AddPropertyPassword("password0", "Password", "anythingcanhappen", True)
	propbagx.AddPropertyPasswordGroup("password1", "Password Group", "anythingcanhappen", True)
	propbagx.AddPropertyDatePicker("datepicker1", "Date Picker", "", True, "Y-m-d", "F j, Y", "en")
	propbagx.AddPropertyDatePicker("datepicker2", "Date Picker 2", "", True, "Y-m-d", "j F, Y", "ru")
	propbagx.AddPropertyDateTimePicker("datepicker3", "Date Picker 3", "", True, "Y-m-d H:i", "j F, Y H:i", True, "en")
	propbagx.AddPropertyTimePicker("timepicker1", "Time Picker", "", True, "H:i", "H:i", True, "en")
	propbagx.AddPropertyNumber("number1", "Number", "5", True)
	propbagx.AddPropertyTelephone("telephone1", "Telephone", "123456789", True)
	propbagx.AddPropertyTextArea("textarea1", "Text Area", "", True, "")
	propbagx.AddPropertyFileInput("fileinput1", "File Input 1", True, "", False)
	propbagx.AddPropertyFileInputProgress("fileinputprogress1", "File Input Progress", "80px", "./assets/headphones-solid.svg", "42px", app.COLOR_BROWN, "#ffffff")
	propbagx.AddPropertyCamCorder("camcoder1", "Camcoder", "80px", "42px", app.COLOR_PRIMARY, "#ffffff")
	propbagx.AddPropertyCamera("camera1", "Camera", "80px", "42px", app.COLOR_ERROR, "#ffffff")
	propbagx.AddPropertyMicrophone("microphone1", "Microphone", "80px", "42px", app.COLOR_ACCENT, "#ffffff")
	propbagx.AddPropertyRange("range1", "Range", "30", app.COLOR_SECONDARY, "0", "1", "100")
	propbagx.AddPropertyCheckBox("checkbox1", "CheckBox", False, app.COLOR_PRIMARY)
	propbagx.AddPropertyToggle("toggle1", "Toggle", True, "success")
	propbagx.AddPropertyRating("rating1", "Rating 1", "2", "primary", app.MASK_STAR_2)
	'
	Dim gsOptions As Map = app.UI.GetKeyValues("spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", False)
	BANano.Await(propbagx.AddPropertyGroupSelect("groupselect1", "Group Select", "spar;quadbike", "neutral", False, "#22c55e", gsOptions))
	BANano.Await(propbagx.SetPropertyValue("groupselect1", "horseride"))
	BANano.Await(propbagx.AddPropertyCheckBoxGroup("checkboxgroup1", "CheckBox Group", "spar;quadbike", "neutral", "#22c55e", gsOptions))
	BANano.Await(propbagx.AddPropertyToggleGroup("togglegroup1", "Toggle Group", "spar;quadbike", "neutral", "#22c55e", gsOptions))
	BANano.Await(propbagx.AddPropertyRadioGroup("radiogroup1", "Radio Group", "spar", "neutral", "#22c55e", gsOptions))
	BANano.Await(propbagx.AddPropertyFilter("filter1", "Filter", "horseride", "neutral", "#22c55e", gsOptions))
	propbagx.AddPropertyColorWheel("color1", "Color Wheel", "#f5375f", True, 16, 200, 20, "top-end")
	'
	'display stuff
	propdisplay.AddPropertyAvatar("avatar1", "Avatar", "80px", app.MASK_SQUIRCLE, "./assets/mashy.jpg")
	propdisplay.AddPropertyAvatarPlaceholder("avatarplaceholder", "Avatar Placeholder", "AM", "80px", app.MASK_CIRCLE, app.COLOR_NEUTRAL, "white", app.TEXTSIZE_4XL)
	propdisplay.AddPropertyAvatarGroup("avatargroup", "Avatar Group", "12", app.MASK_CIRCLE, _
	Array("./assets/1.jpg", "./assets/2.jpg", "./assets/3.jpg", "./assets/4.jpg", "./assets/5.jpg"))
	propdisplay.AddPropertyImage("image1", "Image", "80px", "80px", app.MASK_HEART, "./assets/10.jpg")
	propdisplay.AddPropertyProgress("progress1", "Progress", "20", app.COLOR_PRIMARY, "0", "2", "100")
	propdisplay.AddPropertyEmail("email1", "Email", "anele@sithasoholdings.co.za", app.COLOR_PRIMARY)
	propdisplay.AddPropertyLabel("label1", "Label", "This is a label", app.COLOR_AMBER)
	propdisplay.AddPropertyLink("link1", "Link", "http://www.b4x.com", app.COLOR_FUCHSIA)
	propdisplay.AddPropertyRadialProgress("radialprogress", "Radial Progress", "80", "success", "5rem", "4px")
	
	
End Sub

Private Sub propbagx_textboxgroup1_AppendClick (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("propbag_textboxgroup1_AppendClick")
End Sub

Private Sub propbagx_selectgroup1_AppendClick (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("propbag_selectgroup1_AppendClick")
End Sub

Private Sub propbagx_Change (item As Map)
	Log("propbag_Change")
	Log(item)
'	Dim sfilter1 As String = item.Get("filter1")
'	app.ShowSwalInfo(sfilter1)
End Sub

Private Sub propbagx_SearchClick (e As BANanoEvent)
	app.ShowToastSuccess("propbag_SearchClick")
End Sub

Private Sub propbagx_SearchKeyUp (e As BANanoEvent)
	Log(propbagx.SearchValue)
End Sub

Private Sub propbagx_SearchClear (e As BANanoEvent)
	app.ShowToastSuccess("propbag_SearchClear")
End Sub

Private Sub propdisplay_Change (item As Map)
	
End Sub

