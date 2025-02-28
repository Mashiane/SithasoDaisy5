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
	Private propbag As SDUI5Preferences
	Private propdisplay As SDUI5Preferences
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "preferenceview")
	pgIndex.UpdateTitle("SDUI5Preferences")
	propbag.Clear
	propbag.AddPropertyDialer("dialer1", "Dialer", "10", True, 0, 5, 100)
	propbag.AddPropertyTextBox("textbox1", "TextBox", "Mashy", True)
	propbag.AddPropertyTextBoxGroup("textboxgroup1", "TextBoxGroup", "TextBoxGroup", True)
	propbag.SetPropertyAppendIcon("textboxgroup1", "fa-solid fa-fan")
	propbag.AddPropertySelect("select1", "Select", "b4j", True, CreateMap("b4a": "Basic 4 Android", "b4i": "Basic 4 iPhone", "b4j": "Basic 4 Java", "b4r": "Basic 4 Arduino"))
	propbag.AddPropertySelectGroup("selectgroup1", "SelectGroup", "b4a", True, _
	CreateMap("b4a": "Basic 4 Android", "b4i": "Basic 4 iPhone", "b4j": "Basic 4 Java", "b4r": "Basic 4 Arduino"))
	propbag.SetPropertyAppendIcon("selectgroup1", "fa-solid fa-plus")
	propbag.AddPropertyPassword("password0", "Password", "anythingcanhappen", True)
	propbag.AddPropertyPasswordGroup("password1", "Password Group", "anythingcanhappen", True)
	propbag.AddPropertyDatePicker("datepicker1", "Date Picker", "", True, "Y-m-d", "F j, Y", "en")
	propbag.AddPropertyDatePicker("datepicker2", "Date Picker 2", "", True, "Y-m-d", "j F, Y", "ru")
	propbag.AddPropertyDateTimePicker("datepicker3", "Date Picker 3", "", True, "Y-m-d H:i", "j F, Y H:i", True, "en")
	propbag.AddPropertyTimePicker("timepicker1", "Time Picker", "", True, "H:i", "H:i", True, "en")
	propbag.AddPropertyNumber("number1", "Number", "5", True)
	propbag.AddPropertyTelephone("telephone1", "Telephone", "123456789", True)
	propbag.AddPropertyTextArea("textarea1", "Text Area", "", True)
	propbag.SetPropertyOneColumn("textarea1")
	propbag.AddPropertyFileInput("fileinput1", "File Input 1", True)
	propbag.AddPropertyFileInputProgress("fileinputprogress1", "File Input Progress", "80px", "fa-solid fa-headphones", app.COLOR_BROWN)
	propbag.AddPropertyCamCorder("camcoder1", "Camcoder", "80px", app.COLOR_PRIMARY)
	propbag.AddPropertyCamera("camera1", "Camera", "80px", app.COLOR_ERROR)
	propbag.AddPropertyMicrophone("microphone1", "Microphone", "80px", app.COLOR_ACCENT)	
	propbag.AddPropertyRange("range1", "Range", "30", app.COLOR_SECONDARY, "0", "1", "100")
	propbag.AddPropertyCheckBox("checkbox1", "CheckBox", False, app.COLOR_PRIMARY)
	propbag.AddPropertyToggle("toggle1", "Toggle", True, "success")
	propbag.AddPropertyRating("rating1", "Rating 1", "2", "primary", app.MASK_STAR_2)
	'
	Dim gsOptions As Map = App.UI.GetKeyValues("spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter", False)
	BANano.Await(propbag.AddPropertyGroupSelect("groupselect1", "Group Select", "spar;quadbike", "neutral", False, "#22c55e", gsOptions))
	BANano.Await(propbag.SetPropertyValue("groupselect1", "horseride"))
	BANano.Await(propbag.AddPropertyCheckBoxGroup("checkboxgroup1", "CheckBox Group", "spar;quadbike", "neutral", "#22c55e", gsOptions))
	BANano.Await(propbag.AddPropertyToggleGroup("togglegroup1", "Toggle Group", "spar;quadbike", "neutral", "#22c55e", gsOptions))
	BANano.Await(propbag.AddPropertyRadioGroup("radiogroup1", "Radio Group", "spar", "neutral", "#22c55e", gsOptions))
	
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

Private Sub propbag_textboxgroup1_AppendClick (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("propbag_textboxgroup1_AppendClick")
End Sub

Private Sub propbag_selectgroup1_AppendClick (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("propbag_selectgroup1_AppendClick")
End Sub

Private Sub propbag_Change (item As Map)
	Log("propbag_Change")
	Log(item)
End Sub

Private Sub propbag_SearchClick (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("propbag_SearchClick")
End Sub

Private Sub propbag_SearchKeyUp (e As BANanoEvent)
	Log(propbag.SearchValue)
End Sub

Private Sub propbag_SearchClear (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastSuccess("propbag_SearchClear")
End Sub

Private Sub propdisplay_Change (item As Map)
	
End Sub