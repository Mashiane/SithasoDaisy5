B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
'https://play.tailwindcss.com/ZiXUaQMFGW
#Event: Change (Value As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: InitialSelectedDate, DisplayName: Initial Selected Date, FieldType: String, DefaultValue: 2025-01-01, Description: Initial Selected Date
#DesignerProperty: Key: DaysCount, DisplayName: Days Count, FieldType: String, DefaultValue: 31, Description: Number Of Days To Show From Start Date
#DesignerProperty: Key: ItemWidth, DisplayName: Item Width, FieldType: String, DefaultValue: 80px, Description: Item Width
#DesignerProperty: Key: ItemHeight, DisplayName: Item Height, FieldType: String, DefaultValue: 80px, Description: Item Height
#DesignerProperty: Key: MonthColor, DisplayName: Month Color, FieldType: String, DefaultValue: #000000, Description: Month Color
#DesignerProperty: Key: MonthFontSize, DisplayName: Month Font Size, FieldType: String, DefaultValue: 11px, Description: Month Font Size
#DesignerProperty: Key: MonthFontWeight, DisplayName: Month Font Weight, FieldType: String, DefaultValue: medium, Description: Month Font Weight
#DesignerProperty: Key: DateColor, DisplayName: Date Color, FieldType: String, DefaultValue: #000000, Description: Date Color
#DesignerProperty: Key: DateFontSize, DisplayName: Date Font Size, FieldType: String, DefaultValue: 24px, Description: Date Font Size
#DesignerProperty: Key: DateFontWeight, DisplayName: Date Font Weight, FieldType: String, DefaultValue: medium, Description: Date Font Weight
#DesignerProperty: Key: DayColor, DisplayName: Day Color, FieldType: String, DefaultValue: #000000, Description: Day Color
#DesignerProperty: Key: DayFontSize, DisplayName: Day Font Size, FieldType: String, DefaultValue: 11px, Description: Day Font Size
#DesignerProperty: Key: DayFontWeight, DisplayName: Day Font Weight, FieldType: String, DefaultValue: medium, Description: Day Font Weight
#DesignerProperty: Key: SelectionColor, DisplayName: Selection Color, FieldType: String, DefaultValue: #30000000, Description: Selection Color
#DesignerProperty: Key: SelectedTextColor, DisplayName: Selected Text Color, FieldType: String, DefaultValue: , Description: Selected Text Color
#DesignerProperty: Key: ActiveDates, DisplayName: Active Dates, FieldType: String, DefaultValue: , Description: Active Dates
#DesignerProperty: Key: InActiveDates, DisplayName: In Active Dates, FieldType: String, DefaultValue: , Description: In Active Dates
#DesignerProperty: Key: DeActivatedColor, DisplayName: De Activated Color, FieldType: String, DefaultValue: #666666, Description: De Activated Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Direction, DisplayName: Direction, FieldType: String, DefaultValue: horizontal, Description: Direction, List: horizontal|vertical
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: content, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
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
	Private sActiveDates As String = ""
	Private sDateColor As String = "#000000"
	Private sDateFontSize As String = "24px"
	Private sDateFontWeight As String = "medium"
	Private sDayColor As String = "#000000"
	Private sDayFontSize As String = "11px"
	Private sDayFontWeight As String = "medium"
	Private sDaysCount As String = "31"
	Private sDeActivatedColor As String = "#666666"
	Private sDirection As String = "horizontal"
	Private sHeight As String = "content"
	Private sInActiveDates As String = ""
	Private sInitialSelectedDate As String = ""
	Private sItemWidth As String = "80px"
	Private sItemHeight As String = "80px"
	Private sMonthColor As String = "#000000"
	Private sMonthFontSize As String = "11px"
	Private sMonthFontWeight As String = "medium"
	Private sSelectedTextColor As String = "none"
	Private sSelectionColor As String = "#30000000"
	Private sWidth As String = "full"
	Private dates As Map
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	dates.Initialize 
	
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
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sActiveDates = Props.GetDefault("ActiveDates", "")
		sActiveDates = UI.CStr(sActiveDates)
		sDateColor = Props.GetDefault("DateColor", "#000000")
		sDateColor = UI.CStr(sDateColor)
		sDateFontSize = Props.GetDefault("DateFontSize", "24px")
		sDateFontSize = UI.CStr(sDateFontSize)
		sDateFontWeight = Props.GetDefault("DateFontWeight", "medium")
		sDateFontWeight = UI.CStr(sDateFontWeight)
		sDayColor = Props.GetDefault("DayColor", "#000000")
		sDayColor = UI.CStr(sDayColor)
		sDayFontSize = Props.GetDefault("DayFontSize", "11px")
		sDayFontSize = UI.CStr(sDayFontSize)
		sDayFontWeight = Props.GetDefault("DayFontWeight", "medium")
		sDayFontWeight = UI.CStr(sDayFontWeight)
		sDaysCount = Props.GetDefault("DaysCount", "31")
		sDaysCount = UI.CStr(sDaysCount)
		sDeActivatedColor = Props.GetDefault("DeActivatedColor", "#666666")
		sDeActivatedColor = UI.CStr(sDeActivatedColor)
		sDirection = Props.GetDefault("Direction", "horizontal")
		sDirection = UI.CStr(sDirection)
		sHeight = Props.GetDefault("Height", "content")
		sHeight = UI.CStr(sHeight)
		sInActiveDates = Props.GetDefault("InActiveDates", "")
		sInActiveDates = UI.CStr(sInActiveDates)
		sInitialSelectedDate = Props.GetDefault("InitialSelectedDate", "")
		sInitialSelectedDate = UI.CStr(sInitialSelectedDate)
		sItemWidth = Props.GetDefault("ItemWidth", "80px")
		sItemWidth = UI.CStr(sItemWidth)
		sItemHeight = Props.GetDefault("ItemHeight", "80px")
		sItemHeight = UI.CStr(sItemHeight)
		sMonthColor = Props.GetDefault("MonthColor", "#000000")
		sMonthColor = UI.CStr(sMonthColor)
		sMonthFontSize = Props.GetDefault("MonthFontSize", "11px")
		sMonthFontSize = UI.CStr(sMonthFontSize)
		sMonthFontWeight = Props.GetDefault("MonthFontWeight", "medium")
		sMonthFontWeight = UI.CStr(sMonthFontWeight)
		sSelectedTextColor = Props.GetDefault("SelectedTextColor", "none")
		sSelectedTextColor = UI.CStr(sSelectedTextColor)
		sSelectionColor = Props.GetDefault("SelectionColor", "#30000000")
		sSelectionColor = UI.CStr(sSelectionColor)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = UI.CStr(sWidth)
	End If
	'
	UI.AddClassDT("carousel rounded-box gap-1")
	UI.AddWidthDT(sWidth)
	UI.AddHeightDT(sHeight)
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
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
	setDirection(sDirection)
	setInitialSelectedDate(sInitialSelectedDate)
End Sub

Sub Clear
	If mElement = Null Then Return
	mElement.empty
End Sub

'set Active Dates
Sub setActiveDates(s As String)
	sActiveDates = s
	CustProps.put("ActiveDates", s)
	If mElement = Null Then Return
End Sub
'set Date Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setDateColor(s As String)
	sDateColor = s
	CustProps.put("DateColor", s)
End Sub
'set Date Font Size
'options: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
Sub setDateFontSize(s As String)
	sDateFontSize = s
	CustProps.put("DateFontSize", s)
End Sub
'set Date Font Weight
Sub setDateFontWeight(s As String)
	sDateFontWeight = s
	CustProps.put("DateFontWeight", s)
End Sub
'set Day Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setDayColor(s As String)
	sDayColor = s
	CustProps.put("DayColor", s)
End Sub
'set Day Font Size
'options: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
Sub setDayFontSize(s As String)
	sDayFontSize = s
	CustProps.put("DayFontSize", s)
End Sub
'set Day Font Weight
Sub setDayFontWeight(s As String)
	sDayFontWeight = s
	CustProps.put("DayFontWeight", s)
End Sub
'set Number Of Days To Show From Start Date
Sub setDaysCount(s As String)
	sDaysCount = s
	CustProps.put("DaysCount", s)
End Sub
'set De Activated Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setDeActivatedColor(s As String)
	sDeActivatedColor = s
	CustProps.put("DeActivatedColor", s)
End Sub
'set Direction
'options: horizontal|vertical
Sub setDirection(s As String)			'ignoredeadcode
	sDirection = s
	CustProps.put("Direction", s)
	If mElement = Null Then Return
	If s <> "" Then UI.UpdateClass(mElement, "direction", "carousel-" & s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set In Active Dates
Sub setInActiveDates(s As String)
	sInActiveDates = s
	CustProps.put("InActiveDates", s)
End Sub

'set Initial Selected Date
Sub setInitialSelectedDate(s As String)			'ignoredeadcode
	sInitialSelectedDate = s
	CustProps.put("InitialSelectedDate", s)
	If mElement = Null Then Return
	dates.Initialize 
	Dim iDaysCount As Int = UI.CInt(sDaysCount)
	Dim nDate As String = UI.DateAdd(s, iDaysCount)
	Dim aDates As List = UI.GetDatesBetween(s, nDate)
	Dim itemW As String = UI.FixSize("w", sItemWidth)
	Dim itemH As String = UI.FixSize("h", sItemHeight)
	Dim monColor As String = UI.FixColor("text", sMonthColor)
	Dim monSize As String = UI.FixSize("text", sMonthFontSize)
	Dim monFont As String = UI.FixSize("font", sMonthFontWeight)
	'
	Dim dateColor As String = UI.FixColor("text", sDateColor)
	Dim dateSize As String = UI.FixSize("text", sDateFontSize)
	Dim dateFont As String = UI.FixSize("font", sDateFontWeight)
	'
	Dim dayColor As String = UI.FixColor("text", sDayColor)
	Dim daySize As String = UI.FixSize("text", sDayFontSize)
	Dim dayFont As String = UI.FixSize("font", sDayFontWeight)
	'
	Dim hColor As String = UI.FixColor("bg", sSelectionColor)
	
	Dim sb As StringBuilder
	sb.Initialize 
	For Each sDate As String In aDates
		dates.Put(sDate, sDate)
		Dim monthName As String = UI.MvField(sDate,2,"-")
		monthName = UI.GetMonthName3(monthName)
		Dim dateName As String = UI.MvField(sDate,3,"-")
		Dim dayName As String = UI.FormatDisplayDate(sDate, "dddd")
		dayName = UI.Left(dayName, 3)
		Dim block As String = $"[BANCLEAN]
		<div id="item_${sDate}" class="carousel-item ${itemW} ${itemH} hover:${hColor} cursor-pointer rounded-box border items-center justify-center">
    		<div id="host_${sDate}" class="flex flex-col items-center justify-center gap-1">
      			<div id="month_${sDate}" class="select-none ${monColor} ${monSize} ${monFont}">${monthName}</div>
      			<div id="date_${sDate}" class="select-none ${dateColor} ${dateSize} ${dateFont}" font-semibold">${dateName}</div>
      			<div id="day_${sDate}" class="select-none ${dayColor} ${daySize} ${dayFont}">${dayName}</div>
    		</div>
  		</div>"$
		sb.Append(block)
	Next
	mElement.Empty
	mElement.Append(sb.tostring)
	For Each sDate As String In aDates
		Dim dKey As String = $"item_${sDate}"$
		UI.OnEventByID(dKey, "click", Me, "dateselected")		
	Next
End Sub

private Sub MarkSelected(selectedDate As String)			'ignoredeadcode
	For Each sdate As String In dates.Keys
		If sdate = selectedDate Then
			UI.SetBackgroundColorByID($"item_${sdate}"$, sSelectionColor)
		Else
			UI.RemoveBackgroundColorByID($"item_${sdate}"$)
		End If
	Next
End Sub

private Sub dateselected(e As BANanoEvent)					'ignoredeadcode
	e.PreventDefault
	Dim xitem As String = UI.MvField(e.ID, 2, "_")
	BANano.Await(UI.EnsureVisible($"item_${xitem}"$))
	BANano.Await(MarkSelected(xitem))
	BANano.CallSub(mCallBack, $"${mName}_change"$, Array(xitem))
End Sub

'set Item Width
Sub setItemWidth(s As String)
	sItemWidth = s
	CustProps.put("ItemWidth", s)
End Sub
'set Iten Height
Sub setItemHeight(s As String)
	sItemHeight = s
	CustProps.put("ItemHeight", s)
End Sub
'set Month Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setMonthColor(s As String)
	sMonthColor = s
	CustProps.put("MonthColor", s)
End Sub
'set Month Font Size
'options: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
Sub setMonthFontSize(s As String)
	sMonthFontSize = s
	CustProps.put("MonthFontSize", s)
End Sub
'set Month Font Weight
Sub setMonthFontWeight(s As String)
	sMonthFontWeight = s
	CustProps.put("MonthFontWeight", s)
End Sub
'set Selected Text Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setSelectedTextColor(s As String)
	sSelectedTextColor = s
	CustProps.put("SelectedTextColor", s)
End Sub
'set Selection Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setSelectionColor(s As String)
	sSelectionColor = s
	CustProps.put("SelectionColor", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'get Active Dates
Sub getActiveDates As String
	Return sActiveDates
End Sub
'get Date Color
Sub getDateColor As String
	Return sDateColor
End Sub
'get Date Font Size
Sub getDateFontSize As String
	Return sDateFontSize
End Sub
'get Date Font Weight
Sub getDateFontWeight As String
	Return sDateFontWeight
End Sub
'get Day Color
Sub getDayColor As String
	Return sDayColor
End Sub
'get Day Font Size
Sub getDayFontSize As String
	Return sDayFontSize
End Sub
'get Day Font Weight
Sub getDayFontWeight As String
	Return sDayFontWeight
End Sub
'get Number Of Days To Show From Start Date
Sub getDaysCount As String
	Return sDaysCount
End Sub
'get De Activated Color
Sub getDeActivatedColor As String
	Return sDeActivatedColor
End Sub
'get Direction
Sub getDirection As String
	Return sDirection
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get In Active Dates
Sub getInActiveDates As String
	Return sInActiveDates
End Sub
'get Initial Selected Date
Sub getInitialSelectedDate As String
	Return sInitialSelectedDate
End Sub
'get Item Width
Sub getItemWidth As String
	Return sItemWidth
End Sub
'get Iten Height
Sub getItemHeight As String
	Return sItemHeight
End Sub
'get Month Color
Sub getMonthColor As String
	Return sMonthColor
End Sub
'get Month Font Size
Sub getMonthFontSize As String
	Return sMonthFontSize
End Sub
'get Month Font Weight
Sub getMonthFontWeight As String
	Return sMonthFontWeight
End Sub
'get Selected Text Color
Sub getSelectedTextColor As String
	Return sSelectedTextColor
End Sub
'get Selection Color
Sub getSelectionColor As String
	Return sSelectionColor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub