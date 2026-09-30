B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: ParentID, DisplayName: Parent ID, FieldType: String, DefaultValue: , Description: Parent ID
#DesignerProperty: Key: DataType, DisplayName: Data Type, FieldType: String, DefaultValue: numbers, Description: Data type (numbers or percentages), List: numbers|percentages
#DesignerProperty: Key: FemaleLabel, DisplayName: Female Label, FieldType: String, DefaultValue: Female, Description: Female label
#DesignerProperty: Key: FemaleValue, DisplayName: Female Value, FieldType: String, DefaultValue: 0, Description: Female initial value
#DesignerProperty: Key: FemaleTarget, DisplayName: Female Target, FieldType: String, DefaultValue: 0, Description: Female target value
#DesignerProperty: Key: FemaleColor, DisplayName: Female Color, FieldType: Color, DefaultValue: #FF1493, Description: Female water color (CSS color)
#DesignerProperty: Key: MaleLabel, DisplayName: Male Label, FieldType: String, DefaultValue: Male, Description: Male label
#DesignerProperty: Key: MaleValue, DisplayName: Male Value, FieldType: String, DefaultValue: 0, Description: Male initial value
#DesignerProperty: Key: MaleTarget, DisplayName: Male Target, FieldType: String, DefaultValue: 0, Description: Male target value
#DesignerProperty: Key: MaleColor, DisplayName: Male Color, FieldType: Color, DefaultValue: #0000FF, Description: Male water color (CSS color)
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Chart width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 400px, Description: Chart height
#DesignerProperty: Key: Duration, DisplayName: Animation Duration (ms), FieldType: String, DefaultValue: 5000, Description: Fill animation duration in milliseconds
#DesignerProperty: Key: Waves, DisplayName: Enable Waves, FieldType: Boolean, DefaultValue: True, Description: Enable wave animation after fill
#DesignerProperty: Key: WaveSpeed, DisplayName: Wave Speed, FieldType: String, DefaultValue: 0.09, Description: Wave flow speed factor
#DesignerProperty: Key: Autoplay, DisplayName: Autoplay, FieldType: Boolean, DefaultValue: True, Description: Automatically play animation on load
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
	Private bVisible As Boolean = True'ignore
	Private bEnabled As Boolean = True'ignore
	Private sDataType As String = "numbers"
	Private sFemaleLabel As String = "Female"
	Private sMaleLabel As String = "Male"
	Private sFemaleValue As String = "0"
	Private sMaleValue As String = "0"
	Private sFemaleTarget As String = "0"
	Private sMaleTarget As String = "0"
	Private sFemaleColor As String = "#FF1493"
	Private sMaleColor As String = "#0000FF"
	Private sFemalesvg As String = "./assets/female.svg"
	Private sMalesvg As String = "./assets/male.svg"
	Private sHeight As String = "400px"
	Private sWidth As String = "100%"
	Private sDuration As String = "5000"
	Private bWaves As Boolean = True
	Private sWaveSpeed As String = "0.09"
	Private bAutoplay As Boolean = True
	Public Tag As Object
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("GenderChart") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesGenderChart)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
    BANano.DependsOnAsset("SithasoGenderChart.min.js")
	SetDefaults
End Sub

'set default values
Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("DataType", "numbers")
	CustProps.Put("FemaleLabel", "Female")
	CustProps.Put("MaleLabel", "Male")
	CustProps.Put("FemaleValue", "0")
	CustProps.Put("MaleValue", "0")
	CustProps.Put("FemaleTarget", "0")
	CustProps.Put("MaleTarget", "0")
	CustProps.Put("FemaleColor", "#FF1493")
	CustProps.Put("MaleColor", "#0000FF")
	CustProps.Put("Width", "100%")
	CustProps.Put("Height", "400px")
	CustProps.Put("Duration", "5000")
	CustProps.Put("Waves", True)
	CustProps.Put("WaveSpeed", "0.09")
	CustProps.Put("Autoplay", True)
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
End Sub

Sub OnEvent(event As String, MethodName As String)
	UI.OnEvent(mElement, event, mCallBack, MethodName)
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

'add this element to an existing parent element using current properties
Public Sub AddComponent
	If sParentID = "" Then Return
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

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		UI.ExcludeTextColor = True
		sParentID = Props.GetDefault("ParentID", "")
		sParentID = UI.CStr(sParentID)
		sDataType = Props.GetDefault("DataType", "numbers")
		sDataType = UI.CStr(sDataType)
		sFemaleLabel = Props.GetDefault("FemaleLabel", "Female")
		sFemaleLabel = UI.CStr(sFemaleLabel)
		sMaleLabel = Props.GetDefault("MaleLabel", "Male")
		sMaleLabel = UI.CStr(sMaleLabel)
		sFemaleValue = Props.GetDefault("FemaleValue", "0")
		sFemaleValue = UI.CStr(sFemaleValue)
		sMaleValue = Props.GetDefault("MaleValue", "0")
		sMaleValue = UI.CStr(sMaleValue)
		sFemaleTarget = Props.GetDefault("FemaleTarget", "0")
		sFemaleTarget = UI.CStr(sFemaleTarget)
		sMaleTarget = Props.GetDefault("MaleTarget", "0")
		sMaleTarget = UI.CStr(sMaleTarget)
		sFemaleColor = Props.GetDefault("FemaleColor", "#FF1493")
		sFemaleColor = UI.CStr(sFemaleColor)
		sFemaleColor = UI.rgbaToHexAuto(sFemaleColor)
		sMaleColor = Props.GetDefault("MaleColor", "#0000FF")
		sMaleColor = UI.CStr(sMaleColor)
		sMaleColor = UI.rgbaToHexAuto(sMaleColor)
		sHeight = Props.GetDefault("Height", "400px")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "100%")
		sWidth = UI.CStr(sWidth)
		sDuration = Props.GetDefault("Duration", "5000")
		sDuration = UI.CStr(sDuration)
		bWaves = Props.GetDefault("Waves", True)
		bWaves = UI.CBool(bWaves)
		sWaveSpeed = Props.GetDefault("WaveSpeed", "0.09")
		sWaveSpeed = UI.CStr(sWaveSpeed)
		bAutoplay = Props.GetDefault("Autoplay", True)
		bAutoplay = UI.CBool(bAutoplay)
		bVisible = Props.GetDefault("Visible", True)
		bVisible = UI.CBool(bVisible)
		bEnabled = Props.GetDefault("Enabled", True)
		bEnabled = UI.CBool(bEnabled)
		sPositionStyle = Props.GetDefault("PositionStyle", "none")
		sPositionStyle = UI.CStr(sPositionStyle)
		If sPositionStyle = "none" Then sPositionStyle = ""
		sPosition = Props.GetDefault("Position", "t=?; b=?; r=?; l=?")
		sPosition = UI.CStr(sPosition)
		sMarginAXYTBLR = Props.GetDefault("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		sMarginAXYTBLR = UI.CStr(sMarginAXYTBLR)
		sPaddingAXYTBLR = Props.GetDefault("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		sPaddingAXYTBLR = UI.CStr(sPaddingAXYTBLR)
		sRawClasses = Props.GetDefault("RawClasses", "")
		sRawClasses = UI.CStr(sRawClasses)
		sRawStyles = Props.GetDefault("RawStyles", "")
		sRawStyles = UI.CStr(sRawStyles)
		sRawAttributes = Props.GetDefault("RawAttributes", "")
		sRawAttributes = UI.CStr(sRawAttributes)
	End If
	
	UI.AddAttrDT("type", sDataType)
	UI.AddAttrDT("female-label", sFemaleLabel)
	UI.AddAttrDT("male-label", sMaleLabel)
	UI.AddAttrDT("female-value", sFemaleValue)
	UI.AddAttrDT("male-value", sMaleValue)
	UI.AddAttrDT("female-target", sFemaleTarget)
	UI.AddAttrDT("male-target", sMaleTarget)
	UI.AddAttrDT("female-color", sFemaleColor)
	UI.AddAttrDT("male-color", sMaleColor)
	UI.AddAttrDT("female-svg", sFemalesvg)
	UI.AddAttrDT("male-svg", sMalesvg)
	UI.AddAttrDT("height", sHeight)
	UI.AddAttrDT("width", sWidth)
	UI.AddAttrDT("duration", sDuration)
	UI.AddAttrDT("waves", bWaves)
	UI.AddAttrDT("wave-speed", sWaveSpeed)
	UI.AddAttrDT("autoplay", bAutoplay)
	
	'
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	'
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If

	mElement = mTarget.Append($"[BANCLEAN]<sithaso-gender-chart id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></sithaso-gender-chart>"$).Get("#" & mName)
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
	Return UI.GetVisible(mElement)
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
	Return UI.GetEnabled(mElement)
End Sub

'set Position Style
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

Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub

Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub

Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub

Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub

Sub AddClass(className As String)
	If mElement = Null Then Return
	UI.AddClass(mElement, className)
End Sub

Sub getAttributes As String
	Return sRawAttributes
End Sub

Sub getStyles As String
	Return sRawStyles
End Sub

Sub getClasses As String
	Return sRawClasses
End Sub

Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub

Sub getMarginAXYTBLR As String
	Return sMarginAXYTBLR
End Sub

'set DataType
Sub setDataType(s As String)
	sDataType = s
	CustProps.Put("DataType", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "type", s)
End Sub

'get DataType
Sub getDataType As String
	Return sDataType
End Sub

'set FemaleLabel
Sub setFemaleLabel(s As String)
	sFemaleLabel = s
	CustProps.Put("FemaleLabel", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "female-label", s)
End Sub

'get FemaleLabel
Sub getFemaleLabel As String
	Return sFemaleLabel
End Sub

'set MaleLabel
Sub setMaleLabel(s As String)
	sMaleLabel = s
	CustProps.Put("MaleLabel", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "male-label", s)
End Sub

'get MaleLabel
Sub getMaleLabel As String
	Return sMaleLabel
End Sub

'set FemaleValue
Sub setFemaleValue(s As String)
	sFemaleValue = s
	CustProps.Put("FemaleValue", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "female-value", s)
End Sub

'get FemaleValue
Sub getFemaleValue As String
	Return sFemaleValue
End Sub

'set MaleValue
Sub setMaleValue(s As String)
	sMaleValue = s
	CustProps.Put("MaleValue", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "male-value", s)
End Sub

'get MaleValue
Sub getMaleValue As String
	Return sMaleValue
End Sub

'set FemaleTarget
Sub setFemaleTarget(s As String)
	sFemaleTarget = s
	CustProps.Put("FemaleTarget", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "female-target", s)
End Sub

'get FemaleTarget
Sub getFemaleTarget As String
	Return sFemaleTarget
End Sub

'set MaleTarget
Sub setMaleTarget(s As String)
	sMaleTarget = s
	CustProps.Put("MaleTarget", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "male-target", s)
End Sub

'get MaleTarget
Sub getMaleTarget As String
	Return sMaleTarget
End Sub

'set FemaleColor
Sub setFemaleColor(s As String)
	sFemaleColor = s
	CustProps.Put("FemaleColor", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "female-color", s)
End Sub

'get FemaleColor
Sub getFemaleColor As String
	Return sFemaleColor
End Sub

'set MaleColor
Sub setMaleColor(s As String)
	sMaleColor = s
	CustProps.Put("MaleColor", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "male-color", s)
End Sub

'get MaleColor
Sub getMaleColor As String
	Return sMaleColor
End Sub

'set FemaleSvg
Sub setFemaleSvg(s As String)
	sFemalesvg = s
	CustProps.Put("FemaleSvg", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "female-svg", s)
End Sub

'get FemaleSvg
Sub getFemaleSvg As String
	Return sFemalesvg
End Sub

'set MaleSvg
Sub setMaleSvg(s As String)
	sMalesvg = s
	CustProps.Put("MaleSvg", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "male-svg", s)
End Sub

'get MaleSvg
Sub getMaleSvg As String
	Return sMalesvg
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.Put("Height", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "height", s)
End Sub

'get Height
Sub getHeight As String
	Return sHeight
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.Put("Width", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "width", s)
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Duration
Sub setDuration(s As String)
	sDuration = s
	CustProps.Put("Duration", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "duration", s)
End Sub

'get Duration
Sub getDuration As String
	Return sDuration
End Sub

'set Waves
Sub setWaves(b As Boolean)
	bWaves = b
	CustProps.Put("Waves", b)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "waves", b)
End Sub

'get Waves
Sub getWaves As Boolean
	Return bWaves
End Sub

'set WaveSpeed
Sub setWaveSpeed(s As String)
	sWaveSpeed = s
	CustProps.Put("WaveSpeed", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "wave-speed", s)
End Sub

'get WaveSpeed
Sub getWaveSpeed As String
	Return sWaveSpeed
End Sub

'set Autoplay
Sub setAutoplay(b As Boolean)
	bAutoplay = b
	CustProps.Put("Autoplay", b)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "autoplay", b)
End Sub

'get Autoplay
Sub getAutoplay As Boolean
	Return bAutoplay
End Sub

'API methods for chart control
Public Sub Start
	If mElement = Null Then Return
	mElement.RunMethod("start", Null)
End Sub

Public Sub Stop
	If mElement = Null Then Return
	mElement.RunMethod("stop", Null)
End Sub
