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
	Private propbagx As SDUI5Preferences
	Private propdisplay As SDUI5Preferences
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "preferenceview")
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
	propbagx.AddPropertyTextArea("textarea1", "Text Area", "", True)
	propbagx.SetPropertyOneColumn("textarea1")
	propbagx.AddPropertyFileInput("fileinput1", "File Input 1", True)
	propbagx.AddPropertyFileInputProgress("fileinputprogress1", "File Input Progress", "80px", "./assets/headphones-solid.svg", app.COLOR_BROWN)
	propbagx.AddPropertyCamCorder("camcoder1", "Camcoder", "80px", app.COLOR_PRIMARY)
	propbagx.AddPropertyCamera("camera1", "Camera", "80px", app.COLOR_ERROR)
	propbagx.AddPropertyMicrophone("microphone1", "Microphone", "80px", app.COLOR_ACCENT)	
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
	
	'
	'display stuff
	propdisplay.AddPropertyAvatar("avatar1", "Avatar", "80px", app.MASK_SQUIRCLE, "./assets/mashy.jpg")
	propdisplay.AddPropertyAvatarPlaceholder("avatarplaceholder", "Avatar Placeholder", "AM", "80px", app.MASK_CIRCLE, app.COLOR_NEUTRAL, app.TEXTSIZE_4XL)
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