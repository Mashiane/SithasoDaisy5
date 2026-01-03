B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
'https://github.com/davidshimjs/qrcodejs
#Event: CodeSuccess (dataURL As String)
'
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: SithasoDaisy5, Description: Text
#DesignerProperty: Key: ColorDark, DisplayName: Color Dark, FieldType: String, DefaultValue: #000000, Description: Color Dark
#DesignerProperty: Key: ColorLight, DisplayName: Color Light, FieldType: String, DefaultValue: #ffffff, Description: Color Light
#DesignerProperty: Key: CorrectLevel, DisplayName: Correct Level, FieldType: String, DefaultValue: H, Description: Correct Level, List: H|L|M|Q
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: 200, Description: Size, List: 100|200|300|400|500|600|700
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
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
	Private sText As String = "SithasoDaisy5"
	Public Tag As Object
	Private sColorDark As String = "#000000"
	Private sColorLight As String = "#ffffff"
	Private sCorrectLevel As String = "H"
	Private sSize As String = "200"
	Public CONST CORRECTLEVEL_H As String = "H"
	Public CONST CORRECTLEVEL_L As String = "L"
	Public CONST CORRECTLEVEL_M As String = "M"
	Public CONST CORRECTLEVEL_Q As String = "Q"
	Public CONST SIZE_100 As String = "100"
	Public CONST SIZE_200 As String = "200"
	Public CONST SIZE_300 As String = "300"
	Public CONST SIZE_400 As String = "400"
	Public CONST SIZE_500 As String = "500"
	Public CONST SIZE_600 As String = "600"
	Public CONST SIZE_700 As String = "700"
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"
	Private QRCode As BANanoObject
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("QRCode") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesQRCode)' should be added!"$)
		Return
	End If
	BANano.DependsOnAsset("qrcode.min.js")
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("toastui-chart.min.css")
	BANano.DependsOnAsset("toastui-chart.min.js")
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Text", "SithasoDaisy5")
	CustProps.Put("ColorDark", "#000000")
	CustProps.Put("ColorLight", "#ffffff")
	CustProps.Put("CorrectLevel", "H")
	CustProps.Put("Size", "200")
	CustProps.Put("Rounded", "none")
	CustProps.Put("RoundedBox", False)
	CustProps.Put("Shadow", "none")
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
'set text
Sub setText(s As String)
	sText = s
	CustProps.Put("Text", s)
End Sub
'get text
Sub getText As String
	Return sText
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
		sColorDark = Props.GetDefault("ColorDark", "#000000")
		sColorDark = UI.CStr(sColorDark)
		sColorLight = Props.GetDefault("ColorLight", "#ffffff")
		sColorLight = UI.CStr(sColorLight)
		sCorrectLevel = Props.GetDefault("CorrectLevel", "H")
		sCorrectLevel = UI.CStr(sCorrectLevel)
		sSize = Props.GetDefault("Size", "200")
		sSize = UI.CStr(sSize)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
	End If
	'
	UI.AddWidthDT($"${sSize}px"$)
	UI.AddHeightDT($"${sSize}px"$)
	If sRounded <> "" Then UI.AddAttrDT("rounded", sRounded)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	
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
	mElement = mTarget.Append($"<div id="${mName}" style="${xstyles}" ${xattrs} class="${xclasses} m-auto flex flex-col text-center align-center justify-center bg-base-100"></div>"$).Get("#" & mName)
	Refresh
End Sub

'make QR code
Sub Refresh
	mElement.Empty
	Dim cl As Int = 2
	Select Case sCorrectLevel
		Case "L"
			cl=1
		Case "M"
			cl=0
		Case "Q"
			cl=3
		Case "H"
			cl=2
	End Select
	'
	Dim opt As Map = CreateMap()
	opt.Put("text", sText)
	opt.Put("width", sSize)
	opt.Put("height", sSize)
	opt.Put("colorDark", sColorDark)
	opt.Put("colorLight", sColorLight)
	opt.Put("colorLight", sColorLight)
	opt.put("correctLevel", cl)
	QRCode.Initialize2("QRCode", Array(mName, opt))
	Dim canvasE As BANanoElement
	canvasE.Initialize($"#${mName} canvas"$)
	If SubExists(mCallBack, $"${mName}_CodeSuccess"$) Then
		Dim dataURL As Object = canvasE.RunMethod("toDataURL", Null).Result
		BANano.CallSub(mCallBack, $"${mName}_CodeSuccess"$, Array(dataURL))
	End If
End Sub

Sub Download(fileName As String)
	Dim canvasE As BANanoElement
	canvasE.Initialize($"#${mName} canvas"$)
	Dim dataURL As BANanoObject = canvasE.RunMethod("toDataURL", Null).result
	Dim blob As Object = BANano.await(UI.dataURLToBlob(dataURL))		'ignore
	BANano.RunJavascriptMethod("saveAs",Array(blob,fileName))
End Sub

Sub toBlob As Object
	Dim canvasE As BANanoElement
	canvasE.Initialize($"#${mName} canvas"$)
	Dim res As Object = canvasE.RunMethod("toBlob", Null).Result
	Return res
End Sub

'Returns signature image as data URL
Sub toDataURL As String
	Dim canvasE As BANanoElement
	canvasE.Initialize($"#${mName} canvas"$)
	Dim dataURL As Object = canvasE.RunMethod("toDataURL", Null).result
	Return dataURL
End Sub

'clear QR code
Sub Clear
	QRCode.RunMethod("clear", Null)
End Sub

'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub

'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	UI.SetRoundedBox(mElement, b)
End Sub

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub

'get Rounded
Sub getRounded As String
	Return sRounded
End Sub

'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'set Color Dark
Sub setColorDark(s As String)
	sColorDark = s
	CustProps.put("ColorDark", s)
End Sub
'set Color Light
Sub setColorLight(s As String)
	sColorLight = s
	CustProps.put("ColorLight", s)
End Sub
'set Correct Level
'options: H|L|M|Q
Sub setCorrectLevel(s As String)
	sCorrectLevel = s
	CustProps.put("CorrectLevel", s)
End Sub
'set Size
'options: 100|200|300|400|500|600|700
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
End Sub
'get Color Dark
Sub getColorDark As String
	Return sColorDark
End Sub
'get Color Light
Sub getColorLight As String
	Return sColorLight
End Sub
'get Correct Level
Sub getCorrectLevel As String
	Return sCorrectLevel
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub