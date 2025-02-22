B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.1
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: AllowInput, DisplayName: Allow Input, FieldType: Boolean, DefaultValue: False, Description: Allow Input
#DesignerProperty: Key: AllowInvalidPreload, DisplayName: Allow Invalid Preload, FieldType: Boolean, DefaultValue: False, Description: Allow Invalid Preload
#DesignerProperty: Key: AltFormat, DisplayName: Alt Format, FieldType: String, DefaultValue: Y-m-d H:i, Description: Alt Format
#DesignerProperty: Key: AltInput, DisplayName: Alt Input, FieldType: Boolean, DefaultValue: True, Description: Alt Input
#DesignerProperty: Key: AltInputClass, DisplayName: Alt Input Class, FieldType: String, DefaultValue: , Description: Alt Input Class
#DesignerProperty: Key: AppendTo, DisplayName: Append To, FieldType: String, DefaultValue: , Description: Append To
#DesignerProperty: Key: AriaDateFormat, DisplayName: Aria Date Format, FieldType: String, DefaultValue: F j, Y, Description: Aria Date Format
#DesignerProperty: Key: ClickOpens, DisplayName: Click Opens, FieldType: Boolean, DefaultValue: True, Description: Click Opens
#DesignerProperty: Key: CloseOnSelect, DisplayName: Close On Select, FieldType: Boolean, DefaultValue: True, Description: Close On Select
#DesignerProperty: Key: Conjunction, DisplayName: Conjunction, FieldType: String, DefaultValue: , Description: Conjunction
#DesignerProperty: Key: DateFormat, DisplayName: Date Format, FieldType: String, DefaultValue: Y-m-d H:i, Description: Date Format
#DesignerProperty: Key: DefaultDate, DisplayName: Default Date, FieldType: String, DefaultValue: , Description: Default Date
#DesignerProperty: Key: DefaultHour, DisplayName: Default Hour, FieldType: String, DefaultValue: 12, Description: Default Hour
#DesignerProperty: Key: DefaultMinute, DisplayName: Default Minute, FieldType: String, DefaultValue: 0, Description: Default Minute
#DesignerProperty: Key: DisabledDates, DisplayName: Disabled Dates (;), FieldType: String, DefaultValue: , Description: Disabled Dates (;)
#DesignerProperty: Key: DisableMobile, DisplayName: Disable Mobile, FieldType: Boolean, DefaultValue: False, Description: Disabled Mobile
#DesignerProperty: Key: EnabledDates, DisplayName: Enabled Dates (;), FieldType: String, DefaultValue: , Description: Enabled Dates (;)
#DesignerProperty: Key: EnableSeconds, DisplayName: Enable Seconds, FieldType: Boolean, DefaultValue: False, Description: Enable Seconds
#DesignerProperty: Key: EnableTime, DisplayName: Enable Time, FieldType: Boolean, DefaultValue: False, Description: Enable Time
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: auto, Description: Position, List: auto|above|below|auto left|auto center|auto right|above left|above center|above right|below left|below center|below right
#DesignerProperty: Key: HourIncrement, DisplayName: Hour Increment, FieldType: String, DefaultValue: 1, Description: Hour Increment
#DesignerProperty: Key: Inline, DisplayName: Inline, FieldType: Boolean, DefaultValue: False, Description: Inline
#DesignerProperty: Key: Locale, DisplayName: Locale, FieldType: String, DefaultValue: en, Description: Locale
#DesignerProperty: Key: MaxDate, DisplayName: Max Date, FieldType: String, DefaultValue: , Description: Max Date
#DesignerProperty: Key: MaxTime, DisplayName: Max Time, FieldType: String, DefaultValue: , Description: Max Time
#DesignerProperty: Key: MinDate, DisplayName: Min Date, FieldType: String, DefaultValue: , Description: Min Date
#DesignerProperty: Key: MinTime, DisplayName: Min Time, FieldType: String, DefaultValue: , Description: Min Time
#DesignerProperty: Key: MinuteIncrement, DisplayName: Minute Increment, FieldType: Int, DefaultValue: 5, Description: Minute Increment
#DesignerProperty: Key: Mode, DisplayName: Mode, FieldType: String, DefaultValue: single, Description: Mode, List: multiple|range|single|time
#DesignerProperty: Key: MonthSelectorType, DisplayName: Month Selector Type, FieldType: String, DefaultValue: dropdown, Description: Month Selector Type, List: dropdown|static
#DesignerProperty: Key: NextArrow, DisplayName: Next Arrow, FieldType: String, DefaultValue: >, Description: Next Arrow
#DesignerProperty: Key: NoCalendar, DisplayName: No Calendar, FieldType: Boolean, DefaultValue: False, Description: No Calendar
#DesignerProperty: Key: PositionElement, DisplayName: Position Element, FieldType: String, DefaultValue: , Description: Position Element
#DesignerProperty: Key: PrevArrow, DisplayName: Prev Arrow, FieldType: String, DefaultValue: <, Description: Prev Arrow
#DesignerProperty: Key: ShorthandCurrentMonth, DisplayName: Shorthand Current Month, FieldType: Boolean, DefaultValue: False, Description: Shorthand Current Month
#DesignerProperty: Key: ShowMonths, DisplayName: Show Months, FieldType: Int, DefaultValue: 1, Description: Show Months
#DesignerProperty: Key: Static, DisplayName: Static, FieldType: Boolean, DefaultValue: False, Description: Static
#DesignerProperty: Key: TextBox, DisplayName: Text Box, FieldType: String, DefaultValue: , Description: Text Box
#DesignerProperty: Key: Time24hr, DisplayName: Time24hr, FieldType: Boolean, DefaultValue: False, Description: Time24hr
#DesignerProperty: Key: WeekNumbers, DisplayName: Week Numbers, FieldType: Boolean, DefaultValue: False, Description: Week Numbers
#DesignerProperty: Key: Wrap, DisplayName: Wrap, FieldType: Boolean, DefaultValue: False, Description: Wrap
'global variables in this module
Sub Class_Globals
	Public CustProps As Map 'ignore
	Private mCallBack As Object 'ignore
	Private mEventName As String 'ignore
	Private mElement As BANanoElement 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mName As String 'ignore
	Private BANano As BANano   'ignore
	Private sParentID As String = ""
	Public Tag As Object
	Private bAllowInput As Boolean = False
	Private bAllowInvalidPreload As Boolean = False
	Private sAltFormat As String = "Y-m-d H:i"
	Private bAltInput As Boolean = True
	Private sAltInputClass As String = ""
	Private sAppendTo As String = ""
	Private sAriaDateFormat As String = "F j, Y"
	Private bClickOpens As Boolean = True
	Private sConjunction As String = ""
	Private sDateFormat As String = "Y-m-d H:i"
	Private sDefaultDate As String = ""
	Private sDefaultHour As String = "12"
	Private sDefaultMinute As String = "0"
	Private sDisabledDates As String = ""
	Private bDisableMobile As Boolean = False
	Private sEnabledDates As String = ""
	Private bEnableSeconds As Boolean = False
	Private bEnableTime As Boolean = False
	Private sPosition As String = "auto"
	Private sHourIncrement As String = "1"
	Private bInline As Boolean = False
	Private sLocale As String = "en"
	Private sMaxDate As String = ""
	Private sMaxTime As String = ""
	Private sMinDate As String = ""
	Private sMinTime As String = ""
	Private iMinuteIncrement As Int = 5
	Private sMode As String = "single"
	Private sMonthSelectorType As String = "dropdown"
	Private sNextArrow As String = ">"
	Private bNoCalendar As Boolean = False
	Private sPositionElement As String = ""
	Private sPrevArrow As String = "<"
	Private bShorthandCurrentMonth As Boolean = False
	Private iShowMonths As Int = 1
	Private bStatic As Boolean = False
	Private sTextBox As String = ""
	Private bTime24hr As Boolean = False
	Private sTypeOf As String = "date-picker"
	Private bWeekNumbers As Boolean = False
	Private bWrap As Boolean = False
	Private options As Map
	Private FP As BANanoObject			'ignore
	Private UI As UIShared
	Private bCloseOnSelect As Boolean = True
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	options.Initialize 
	UI.Initialize(Me)
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

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		bAllowInput = Props.GetDefault("AllowInput", False)
		bAllowInput = modSD5.CBool(bAllowInput)
		bAllowInvalidPreload = Props.GetDefault("AllowInvalidPreload", False)
		bAllowInvalidPreload = modSD5.CBool(bAllowInvalidPreload)
		sAltFormat = Props.GetDefault("AltFormat", "Y-m-d H:i")
		sAltFormat = modSD5.CStr(sAltFormat)
		bAltInput = Props.GetDefault("AltInput", True)
		bAltInput = modSD5.CBool(bAltInput)
		sAltInputClass = Props.GetDefault("AltInputClass", "")
		sAltInputClass = modSD5.CStr(sAltInputClass)
		sAppendTo = Props.GetDefault("AppendTo", "")
		sAppendTo = modSD5.CStr(sAppendTo)
		sAriaDateFormat = Props.GetDefault("AriaDateFormat", "F j, Y")
		sAriaDateFormat = modSD5.CStr(sAriaDateFormat)
		bClickOpens = Props.GetDefault("ClickOpens", True)
		bClickOpens = modSD5.CBool(bClickOpens)
		sConjunction = Props.GetDefault("Conjunction", "")
		sConjunction = modSD5.CStr(sConjunction)
		sDateFormat = Props.GetDefault("DateFormat", "Y-m-d H:i")
		sDateFormat = modSD5.CStr(sDateFormat)
		sDefaultDate = Props.GetDefault("DefaultDate", "")
		sDefaultDate = modSD5.CStr(sDefaultDate)
		sDefaultHour = Props.GetDefault("DefaultHour", "12")
		sDefaultHour = modSD5.CStr(sDefaultHour)
		sDefaultMinute = Props.GetDefault("DefaultMinute", "0")
		sDefaultMinute = modSD5.CStr(sDefaultMinute)
		sDisabledDates = Props.GetDefault("DisabledDates", "")
		sDisabledDates = modSD5.CStr(sDisabledDates)
		bDisableMobile = Props.GetDefault("DisableMobile", False)
		bDisableMobile = modSD5.CBool(bDisableMobile)
		sEnabledDates = Props.GetDefault("EnableDates", "")
		sEnabledDates = modSD5.CStr(sEnabledDates)
		bEnableSeconds = Props.GetDefault("EnableSeconds", False)
		bEnableSeconds = modSD5.CBool(bEnableSeconds)
		bEnableTime = Props.GetDefault("EnableTime", False)
		bEnableTime = modSD5.CBool(bEnableTime)
		sPosition = Props.GetDefault("Position", "auto")
		sPosition = modSD5.CStr(sPosition)
		sHourIncrement = Props.GetDefault("HourIncrement", "1")
		sHourIncrement = modSD5.CStr(sHourIncrement)
		bInline = Props.GetDefault("Inline", False)
		bInline = modSD5.CBool(bInline)
		sLocale = Props.GetDefault("Locale", "en")
		sLocale = modSD5.CStr(sLocale)
		sMaxDate = Props.GetDefault("MaxDate", "")
		sMaxDate = modSD5.CStr(sMaxDate)
		sMaxTime = Props.GetDefault("MaxTime", "")
		sMaxTime = modSD5.CStr(sMaxTime)
		sMinDate = Props.GetDefault("MinDate", "")
		sMinDate = modSD5.CStr(sMinDate)
		sMinTime = Props.GetDefault("MinTime", "")
		sMinTime = modSD5.CStr(sMinTime)
		iMinuteIncrement = Props.GetDefault("MinuteIncrement", 5)
		iMinuteIncrement = modSD5.CInt(iMinuteIncrement)
		sMode = Props.GetDefault("Mode", "single")
		sMode = modSD5.CStr(sMode)
		sMonthSelectorType = Props.GetDefault("MonthSelectorType", "dropdown")
		sMonthSelectorType = modSD5.CStr(sMonthSelectorType)
		sNextArrow = Props.GetDefault("NextArrow", ">")
		sNextArrow = modSD5.CStr(sNextArrow)
		bNoCalendar = Props.GetDefault("NoCalendar", False)
		bNoCalendar = modSD5.CBool(bNoCalendar)
		sPositionElement = Props.GetDefault("PositionElement", "")
		sPositionElement = modSD5.CStr(sPositionElement)
		sPrevArrow = Props.GetDefault("PrevArrow", "<")
		sPrevArrow = modSD5.CStr(sPrevArrow)
		bShorthandCurrentMonth = Props.GetDefault("ShorthandCurrentMonth", False)
		bShorthandCurrentMonth = modSD5.CBool(bShorthandCurrentMonth)
		iShowMonths = Props.GetDefault("ShowMonths", 1)
		iShowMonths = modSD5.CInt(iShowMonths)
		bStatic = Props.GetDefault("Static", False)
		bStatic = modSD5.CBool(bStatic)
		sTextBox = Props.GetDefault("TextBox", "")
		sTextBox = modSD5.CStr(sTextBox)
		bTime24hr = Props.GetDefault("Time24hr", False)
		bTime24hr = modSD5.CBool(bTime24hr)
		sTypeOf = Props.GetDefault("TypeOf", "date-picker")
		sTypeOf = modSD5.CStr(sTypeOf)
		bWeekNumbers = Props.GetDefault("WeekNumbers", False)
		bWeekNumbers = modSD5.CBool(bWeekNumbers)
		bWrap = Props.GetDefault("Wrap", False)
		bWrap = modSD5.CBool(bWrap)
		bCloseOnSelect = Props.GetDefault("CloseOnSelect", False)
		bCloseOnSelect = modSD5.CBool(bCloseOnSelect)
	End If
	'refresh the date picker
	BANano.Await(Refresh)
End Sub

Sub Refresh				'ignoredeadcode
	options.Initialize
	If sAltFormat <> "" Then
		bAltInput = True
		CustProps.Put("AltInput", bAltInput)
	End If
	options.put("closeOnSelect", bCloseOnSelect)
	options.put("altFormat", sAltFormat)
	options.put("altInput", bAltInput)
	options.put("allowInput", bAllowInput)
	options.put("allowInvalidPreload", bAllowInvalidPreload)
	If sAltInputClass <> "" Then options.put("altInputClass", sAltInputClass)
	If sAppendTo <> "" Then options.put("appendTo", sAppendTo)
	If sAriaDateFormat <> "" Then options.put("ariaDateFormat", sAriaDateFormat)
	options.put("clickOpens", bClickOpens)
	If sConjunction <> "" Then options.put("conjunction", sConjunction)
	If sDateFormat <> "" Then options.put("dateFormat", sDateFormat)
	If sDefaultDate <> "" Then options.put("defaultDate", sDefaultDate)
	If sDefaultHour <> "" Then options.put("defaultHour", modSD5.CInt(sDefaultHour))
	If sDefaultMinute <> "" Then options.put("defaultMinute", modSD5.CInt(sDefaultMinute))
	If sDisabledDates <> "" Then
		Dim ddates As List = modSD5.StrParse(";", sDisabledDates)
		ddates = modSD5.ListTrimItems(ddates)
		options.put("disable", ddates)
	End If
	options.put("disableMobile", bDisableMobile)
	If sEnabledDates <> "" Then
		Dim edates As List = modSD5.StrParse(";", sEnabledDates)
		edates = modSD5.ListTrimItems(edates)
		options.put("enableDates", edates)
	End If
	options.put("enableSeconds", bEnableSeconds)
	options.put("enableTime", bEnableTime)
	options.put("position", sPosition)
	options.put("hourIncrement", modSD5.CInt(sHourIncrement))
	options.put("inline", bInline)
	options.put("locale", sLocale)
	If sMaxDate <> "" Then options.put("maxDate", sMaxDate)
	If sMaxTime <> "" Then options.put("maxTime", sMaxTime)
	If sMinDate <> "" Then options.put("minDate", sMinDate)
	If sMinTime <> "" Then options.put("minTime", sMinTime)
	options.put("minuteIncrement", modSD5.CInt(iMinuteIncrement))
	options.put("mode", sMode)
	options.put("monthSelectorType", sMonthSelectorType)
	options.put("nextArrow", sNextArrow)
	options.put("noCalendar", bNoCalendar)
	If sPositionElement <> "" Then options.put("positionElement", sPositionElement)
	options.put("prevArrow", sPrevArrow)
	options.put("shorthandCurrentMonth", bShorthandCurrentMonth)
	options.put("showMonths", modSD5.CInt(iShowMonths))
	options.put("static", bStatic)
	options.put("time_24hr", bTime24hr)
	options.put("weekNumbers", bWeekNumbers)
	options.put("wrap", bWrap)
	
	'set properties and update the textbox
	Dim selectedDates As Object
	Dim dateStr As Object
	Dim instance As Object
	Dim cbDateChange As BANanoObject = BANano.CallBack(Me, "DateChange", Array(selectedDates, dateStr, instance))
	options.Put("onChange", cbDateChange)
	'
	'does the parent exist
	sTextBox = modSD5.CleanID(sTextBox)
	If BANano.Exists($"#${sTextBox}"$) = False Then
		BANano.Throw($"${mName}.DesignerCreateView: '${sTextBox}' target element does not exist!"$)
		Return
	End If
	'
	UI.AddClassByID(sTextBox, "flatpickr")
	Dim typeOf As String = UI.GetFieldByID(sTextBox, "data-typeof")
	If typeOf <> "" Then UI.AddClassByID(typeOf, "flatpickr")
	'
	Dim xkey As String = $"#${mName}"$
	FP = BANano.RunJavascriptMethod("flatpickr", Array(xkey, options))
End Sub

private Sub DateChange(selectedDates As Object, dateStr As Object, instance As Object)	'ignoredeadcode
	UI.SetValueByID(sTextBox, dateStr)
End Sub

'set Close On Select
Sub setCloseOnSelect(b As Boolean)
	bCloseOnSelect = b
	CustProps.put("CloseOnSelect", b)
End Sub

'get Close On Select
Sub getCloseOnSelect As Boolean
	Return bCloseOnSelect
End Sub

'set Allow Input
Sub setAllowInput(b As Boolean)
	bAllowInput = b
	CustProps.put("AllowInput", b)
End Sub
'set Allow Invalid Preload
Sub setAllowInvalidPreload(b As Boolean)
	bAllowInvalidPreload = b
	CustProps.put("AllowInvalidPreload", b)
End Sub
'set Alt Format
Sub setAltFormat(s As String)
	sAltFormat = s
	CustProps.put("AltFormat", s)
End Sub
'set Alt Input
Sub setAltInput(b As Boolean)
	bAltInput = b
	CustProps.put("AltInput", b)
End Sub
'set Alt Input Class
Sub setAltInputClass(s As String)
	sAltInputClass = s
	CustProps.put("AltInputClass", s)
End Sub
'set Append To
Sub setAppendTo(s As String)
	sAppendTo = s
	CustProps.put("AppendTo", s)
End Sub
'set Aria Date Format
Sub setAriaDateFormat(s As String)
	sAriaDateFormat = s
	CustProps.put("AriaDateFormat", s)
End Sub
'set Click Opens
Sub setClickOpens(b As Boolean)
	bClickOpens = b
	CustProps.put("ClickOpens", b)
End Sub
'set Conjunction
Sub setConjunction(s As String)
	sConjunction = s
	CustProps.put("Conjunction", s)
End Sub
'set Date Format
Sub setDateFormat(s As String)
	sDateFormat = s
	CustProps.put("DateFormat", s)
End Sub
'set Default Date
Sub setDefaultDate(s As String)
	sDefaultDate = s
	CustProps.put("DefaultDate", s)
End Sub
'set Default Hour
Sub setDefaultHour(s As String)
	sDefaultHour = s
	CustProps.put("DefaultHour", s)
End Sub
'set Default Minute
Sub setDefaultMinute(s As String)
	sDefaultMinute = s
	CustProps.put("DefaultMinute", s)
End Sub
'set Disabled Dates (json)
Sub setDisablesDates(s As String)
	sDisabledDates = s
	CustProps.put("DisabledDates", s)
End Sub
'set Disable Mobile
Sub setDisableMobile(b As Boolean)
	bDisableMobile = b
	CustProps.put("DisableMobile", b)
End Sub
'set Enable Dates
Sub setEnabledDates(s As String)
	sEnabledDates = s
	CustProps.put("EnabledDates", s)
End Sub
'set Enable Seconds
Sub setEnableSeconds(b As Boolean)
	bEnableSeconds = b
	CustProps.put("EnableSeconds", b)
End Sub
'set Enable Time
Sub setEnableTime(b As Boolean)
	bEnableTime = b
	CustProps.put("EnableTime", b)
End Sub
'set Horizontal Position
'options: auto|above|below|auto left|auto center|auto right|above left|above center|above right|below left|below center|below right
Sub setPosition(s As String)
	sPosition = s
	CustProps.put("Position", s)
End Sub
'set Hour Increment
Sub setHourIncrement(s As String)
	sHourIncrement = s
	CustProps.put("HourIncrement", s)
End Sub
'set Inline
Sub setInline(b As Boolean)
	bInline = b
	CustProps.put("Inline", b)
End Sub
'set Locale
'set Date Picker Locale
'<code>
''ar: Arabic,
''at: Austria,
''az: Azerbaijan,
''be: Belarusian,
''bg: Bulgarian,
''bn: Bangla,
''bs: Bosnian,
''ca: Catalan,
''ckb: Kurdish,
''cat: Catalan,
''cs: Czech,
''cy: Welsh,
''da: Danish,
''de: German,
''en: english,
''eo: Esperanto,
''es: Spanish,
''et: Estonian,
''fa: Persian,
''fi: Finnish,
''fo: Faroese,
''fr: French,
''gr: Greek,
''he: Hebrew,
''hi: Hindi,
''hr: Croatian,
''hu: Hungarian,
''hy: Armenian,
''id: Indonesian,
''is: Icelandic,
''it: Italian,
''ja: Japanese,
''ka: Georgian,
''ko: Korean,
''km: Khmer,
''kz: Kazakh,
''lt: Lithuanian,
''lv: Latvian,
''mk: Macedonian,
''mn: Mongolian,
''ms: Malaysian,
''my: Burmese,
''nl: Dutch,
''nn: NorwegianNynorsk,
''no: Norwegian,
''pa: Punjabi,
''pl: Polish,
''pt: Portuguese,
''ro: Romanian,
''ru: Russian,
''si: Sinhala,
''sk: Slovak,
''sl: Slovenian,
''sq: Albanian,
''sr: Serbian,
''sv: Swedish,
''th: Thai,
''tr: Turkish,
''uk: Ukrainian,
''vn: Vietnamese,
''zh: Mandarin,
''zh_tw: MandarinTraditional,
''uz: Uzbek,
''uz_latn: UzbekLatin
'</code>
Sub setLocale(s As String)
	sLocale = s
	CustProps.put("Locale", s)
End Sub
'set Max Date
Sub setMaxDate(s As String)
	sMaxDate = s
	CustProps.put("MaxDate", s)
End Sub
'set Max Time
Sub setMaxTime(s As String)
	sMaxTime = s
	CustProps.put("MaxTime", s)
End Sub
'set Min Date
Sub setMinDate(s As String)
	sMinDate = s
	CustProps.put("MinDate", s)
End Sub
'set Min Time
Sub setMinTime(s As String)
	sMinTime = s
	CustProps.put("MinTime", s)
End Sub
'set Minute Increment
Sub setMinuteIncrement(i As Int)
	iMinuteIncrement = i
	CustProps.put("MinuteIncrement", i)
End Sub
'set Mode
'options: multiple|range|single
Sub setMode(s As String)
	sMode = s
	CustProps.put("Mode", s)
End Sub
'set Month Selector Type
'options: dropdown|static
Sub setMonthSelectorType(s As String)
	sMonthSelectorType = s
	CustProps.put("MonthSelectorType", s)
End Sub
'set Next Arrow
Sub setNextArrow(s As String)
	sNextArrow = s
	CustProps.put("NextArrow", s)
End Sub
'set No Calendar
Sub setNoCalendar(b As Boolean)
	bNoCalendar = b
	CustProps.put("NoCalendar", b)
End Sub
'set Position Element
Sub setPositionElement(s As String)
	sPositionElement = s
	CustProps.put("PositionElement", s)
End Sub
'set Prev Arrow
Sub setPrevArrow(s As String)
	sPrevArrow = s
	CustProps.put("PrevArrow", s)
End Sub
'set Shorthand Current Month
Sub setShorthandCurrentMonth(b As Boolean)
	bShorthandCurrentMonth = b
	CustProps.put("ShorthandCurrentMonth", b)
End Sub
'set Show Months
Sub setShowMonths(i As Int)
	iShowMonths = i
	CustProps.put("ShowMonths", i)
End Sub
'set Static
Sub setStatic(b As Boolean)
	bStatic = b
	CustProps.put("Static", b)
End Sub
'set Text Box
Sub setTextBox(s As String)
	sTextBox = s
	CustProps.put("TextBox", s)
End Sub
'set Time24hr
Sub setTime24hr(b As Boolean)
	bTime24hr = b
	CustProps.put("Time24hr", b)
End Sub
'set Week Numbers
Sub setWeekNumbers(b As Boolean)
	bWeekNumbers = b
	CustProps.put("WeekNumbers", b)
End Sub
'set Wrap
Sub setWrap(b As Boolean)
	bWrap = b
	CustProps.put("Wrap", b)
End Sub
'get Allow Input
Sub getAllowInput As Boolean
	Return bAllowInput
End Sub
'get Allow Invalid Preload
Sub getAllowInvalidPreload As Boolean
	Return bAllowInvalidPreload
End Sub
'get Alt Format
Sub getAltFormat As String
	Return sAltFormat
End Sub
'get Alt Input
Sub getAltInput As Boolean
	Return bAltInput
End Sub
'get Alt Input Class
Sub getAltInputClass As String
	Return sAltInputClass
End Sub
'get Append To
Sub getAppendTo As String
	Return sAppendTo
End Sub
'get Aria Date Format
Sub getAriaDateFormat As String
	Return sAriaDateFormat
End Sub
'get Click Opens
Sub getClickOpens As Boolean
	Return bClickOpens
End Sub
'get Conjunction
Sub getConjunction As String
	Return sConjunction
End Sub
'get Date Format
Sub getDateFormat As String
	Return sDateFormat
End Sub
'get Default Date
Sub getDefaultDate As String
	Return sDefaultDate
End Sub
'get Default Hour
Sub getDefaultHour As String
	Return sDefaultHour
End Sub
'get Default Minute
Sub getDefaultMinute As String
	Return sDefaultMinute
End Sub
'get Disabled Dates (json)
Sub getDisabledDates As String
	Return sDisabledDates
End Sub
'get Disable Mobile
Sub getDisableMobile As Boolean
	Return bDisableMobile
End Sub
'get Enable Dates
Sub getEnabledDates As String
	Return sEnabledDates
End Sub
'get Enable Seconds
Sub getEnableSeconds As Boolean
	Return bEnableSeconds
End Sub
'get Enable Time
Sub getEnableTime As Boolean
	Return bEnableTime
End Sub
'get Position
Sub getPosition As String
	Return sPosition
End Sub
'get Hour Increment
Sub getHourIncrement As String
	Return sHourIncrement
End Sub
'get Inline
Sub getInline As Boolean
	Return bInline
End Sub
'get Locale
Sub getLocale As String
	Return sLocale
End Sub
'get Max Date
Sub getMaxDate As String
	Return sMaxDate
End Sub
'get Max Time
Sub getMaxTime As String
	Return sMaxTime
End Sub
'get Min Date
Sub getMinDate As String
	Return sMinDate
End Sub
'get Min Time
Sub getMinTime As String
	Return sMinTime
End Sub
'get Minute Increment
Sub getMinuteIncrement As Int
	Return iMinuteIncrement
End Sub
'get Mode
Sub getMode As String
	Return sMode
End Sub
'get Month Selector Type
Sub getMonthSelectorType As String
	Return sMonthSelectorType
End Sub
'get Next Arrow
Sub getNextArrow As String
	Return sNextArrow
End Sub
'get No Calendar
Sub getNoCalendar As Boolean
	Return bNoCalendar
End Sub
'get Position Element
Sub getPositionElement As String
	Return sPositionElement
End Sub
'get Prev Arrow
Sub getPrevArrow As String
	Return sPrevArrow
End Sub
'get Shorthand Current Month
Sub getShorthandCurrentMonth As Boolean
	Return bShorthandCurrentMonth
End Sub
'get Show Months
Sub getShowMonths As Int
	Return iShowMonths
End Sub
'get Static
Sub getStatic As Boolean
	Return bStatic
End Sub
'get Text Box
Sub getTextBox As String
	Return sTextBox
End Sub
'get Time24hr
Sub getTime24hr As Boolean
	Return bTime24hr
End Sub
'get Type Of
Sub getTypeOf As String
	Return sTypeOf
End Sub
'get Week Numbers
Sub getWeekNumbers As Boolean
	Return bWeekNumbers
End Sub
'get Wrap
Sub getWrap As Boolean
	Return bWrap
End Sub