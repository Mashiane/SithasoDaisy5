B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: DeviceType, DisplayName: Device Type, FieldType: String, DefaultValue: iphone, Description: Device Type, List: android-phone|android-tablet|imac|ipad|iphone|iphonex
#DesignerProperty: Key: Orientation, DisplayName: Orientation, FieldType: String, DefaultValue: portrait, Description: Orientation, List: landscape|portrait
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: black, Description: Color, List: white|black
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 400px, Description: Height
#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue: 500px, Description: Max Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 50%, Description: Width
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: 500px, Description: Max Width
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
	Private sText As String = ""
	Public Tag As Object
	Private sColor As String = "none"
	Private sDeviceType As String = "iphone"
	Private sHeight As String = "400px"
	Private sMaxHeight As String = ""
	Private sMaxWidth As String = "500px"
	Private sOrientation As String = "portrait"
	Private sWidth As String = "50%"
	Public CONST DEVICETYPE_ANDROID_PHONE As String = "android-phone"
	Public CONST DEVICETYPE_ANDROID_TABLET As String = "android-tablet"
	Public CONST DEVICETYPE_IMAC As String = "imac"
	Public CONST DEVICETYPE_IPAD As String = "ipad"
	Public CONST DEVICETYPE_IPHONE As String = "iphone"
	Public CONST DEVICETYPE_IPHONEX As String = "iphonex"
	Public CONST ORIENTATION_LANDSCAPE As String = "landscape"
	Public CONST ORIENTATION_PORTRAIT As String = "portrait"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("Devices") = False Then 
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesDevices)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("devices.min.css")
	BANano.DependsOnAsset("html-to-image.js")
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
'set text
Sub setText(s As String)					'ignore
	sText = s
	CustProps.Put("Text", s)
	If mElement = Null Then Return
	UI.SetHTMLByID($"${mName}_content"$, s)
End Sub
'get text
Sub getText As String
	If mElement = Null Then Return ""
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
		sColor = Props.GetDefault("Color", "black")
		sColor = UI.CStr(sColor)
		sDeviceType = Props.GetDefault("DeviceType", "iphone")
		sDeviceType = UI.CStr(sDeviceType)
		sHeight = Props.GetDefault("Height", "400px")
		sHeight = UI.CStr(sHeight)
		sMaxHeight = Props.GetDefault("MaxHeight", "")
		sMaxHeight = UI.CStr(sMaxHeight)
		sMaxWidth = Props.GetDefault("MaxWidth", "500px")
		sMaxWidth = UI.CStr(sMaxWidth)
		sOrientation = Props.GetDefault("Orientation", "portrait")
		sOrientation = UI.CStr(sOrientation)
		sWidth = Props.GetDefault("Width", "50%")
		sWidth = UI.CStr(sWidth)
	End If
	
	UI.AddWidthDT(sWidth)
	UI.AddMaxWidthDT(sMaxWidth)
	UI.AddHeightDT(sHeight)
	UI.AddMaxHeightDT(sMaxHeight)
	UI.AddClassDT("deviceContainer")
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
	    <div id="${mName}_device">
	        <div id="${mName}_caseborder" class="caseBorder"></div>
	        <div id="${mName}_case" class="case"></div>
	        <div id="${mName}_reflection" class="reflection"></div>
	        <div id="${mName}_screen" class="screen"></div>
			<div id="${mName}_stand" class="stand"></div>
			<div id="${mName}_base" class="base"></div>
			<div id="${mName}_camera" class="camera"></div>
	        <div id="${mName}_speaker" class="speaker"></div>
	        <div id="${mName}_homebuttonborder" class="homeButtonBorder"></div>
	        <div id="${mName}_homebutton" class="homeButton"></div>
	        <div id="${mName}_content" class="content"></div>
	    </div>
	</div>"$).Get("#" & mName)
	setDeviceType(sDeviceType)
	setColor(sColor)
	setOrientation(sOrientation)
	setText(sText)
	UI.SetBackgroundColorStyleByID($"${mName}_content"$, "white")
End Sub

'set Color
Sub setColor(s As String)					'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	UI.AddClassByID($"${mName}_device"$, sColor)
End Sub
'set Device Type
'options: android-phone|android-tablet|imac|ipad|iphone|iphonex
Sub setDeviceType(s As String)						'ignoredeadcode
	sDeviceType = s
	CustProps.put("DeviceType", s)
	If mElement = Null Then Return
	Dim allparts As List
	allparts.Initialize 
	allparts.AddAll(Array("caseborder", "case", "reflection", "screen", "stand", "base", "camera", "speaker", "homebuttonborder", "homebutton", "content"))
	For Each k As String In allparts
		UI.SetVisibleByID($"${mName}_${k}"$, False)
	Next
	Dim parts As List
	parts.Initialize 
	Select Case s
	Case "android-phone"
		UI.AddClassByID($"${mName}_device"$, "androidPhone")
		parts.AddAll(Array("caseborder", "case", "reflection", "screen", "camera", "speaker", "homebuttonborder", "homebutton", "content"))
		Select Case sOrientation
		Case "portrait"
			UI.SetWidth(mElement, "414px")
			UI.SetHeight(mElement, "736px")
		Case "landscape"
			UI.SetHeight(mElement, "414px")
			UI.SetWidth(mElement, "736px")
		End Select
	Case "android-tablet"
		UI.AddClassByID($"${mName}_device"$, "androidTablet")
		parts.AddAll(Array("caseborder", "case", "reflection", "screen", "camera", "homebuttonborder", "homebutton", "content"))
		Select Case sOrientation
		Case "portrait"
			UI.SetWidth(mElement, "576px")
			UI.SetHeight(mElement, "768px")
		Case "landscape"
			UI.SetHeight(mElement, "576px")
			UI.SetWidth(mElement, "768px")
		End Select
	Case "imac"
		UI.AddClassByID($"${mName}_device"$, "imac")
		parts.AddAll(Array("caseborder", "case", "reflection", "screen",  "stand", "base", "content"))
		UI.SetWidth(mElement, "960px")
		UI.SetHeight(mElement, "600px")
	Case "ipad"
		UI.AddClassByID($"${mName}_device"$, "ipad")
		parts.AddAll(Array("caseborder", "case", "reflection", "screen", "camera", "homebuttonborder", "homebutton", "content"))
		Select Case sOrientation
		Case "portrait"
			UI.SetWidth(mElement, "576px")
			UI.SetHeight(mElement, "768px")
		Case "landscape"
			UI.SetHeight(mElement, "576px")
			UI.SetWidth(mElement, "768px")
		End Select
	Case "iphone"
		UI.AddClassByID($"${mName}_device"$, "iphone")
		parts.AddAll(Array("caseborder", "case", "reflection", "screen", "camera", "speaker", "homebuttonborder", "homebutton", "content"))
		Select Case sOrientation
		Case "portrait"
			UI.SetWidth(mElement, "414px")
			UI.SetHeight(mElement, "736px")
		Case "landscape"
			UI.SetHeight(mElement, "414px")
			UI.SetWidth(mElement, "736px")
		End Select
	Case "iphonex"
		UI.AddClassByID($"${mName}_device"$, "iphonex")
		parts.AddAll(Array("caseborder", "case", "reflection", "screen", "speaker", "homebuttonborder", "homebutton", "content"))
		Select Case sOrientation
		Case "portrait"
			UI.SetWidth(mElement, "375px")
			UI.SetHeight(mElement, "812px")
		Case "landscape"
			UI.SetHeight(mElement, "375px")
			UI.SetWidth(mElement, "812px")
		End Select
	End Select
	For Each k As String In parts
		UI.SetVisibleByID($"${mName}_${k}"$, True)
	Next
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Max Height
Sub setMaxHeight(s As String)
	sMaxHeight = s
	CustProps.put("MaxHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxHeight(mElement, sMaxHeight)
End Sub
'set Max Width
Sub setMaxWidth(s As String)
	sMaxWidth = s
	CustProps.put("MaxWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxWidth(mElement, sMaxWidth)
End Sub
'set Orientation
'options: landscape|portrait
Sub setOrientation(s As String)					'ignoredeadcode
	sOrientation = s
	CustProps.put("Orientation", s)
	If mElement = Null Then Return
	UI.AddClassByID($"${mName}_device"$, s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Device Type
Sub getDeviceType As String
	Return sDeviceType
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Max Height
Sub getMaxHeight As String
	Return sMaxHeight
End Sub
'get Max Width
Sub getMaxWidth As String
	Return sMaxWidth
End Sub
'get Orientation
Sub getOrientation As String
	Return sOrientation
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub