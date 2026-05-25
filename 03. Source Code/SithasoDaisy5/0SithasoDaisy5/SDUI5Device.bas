B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: DeviceType, DisplayName: Device Type, FieldType: String, DefaultValue: iphone-8, Description: Device Type, List: apple-watch-s8|apple-watch-ultra|galaxy-s8|google-pixel|google-pixel-2-xl|google-pixel-6-pro|homepod|imac|imac-pro|ipad-pro|ipad-pro-2017|iphone-14|iphone-14-pro|iphone-8|iphone-x|macbook|macbook-pro|macbook-pro-2018|pro-display-xdr|surface-book|surface-pro-2017|surface-studio|the-iphone
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
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
	Private sDeviceType As String = "iphone-8"
	Private sHeight As String = ""
	Private sWidth As String = ""
	Public CONST DEVICETYPE_APPLE_WATCH_S8 As String = "apple-watch-s8"
	Public CONST DEVICETYPE_APPLE_WATCH_ULTRA As String = "apple-watch-ultra"
	Public CONST DEVICETYPE_GALAXY_S8 As String = "galaxy-s8"
	Public CONST DEVICETYPE_GOOGLE_PIXEL As String = "google-pixel"
	Public CONST DEVICETYPE_GOOGLE_PIXEL_2_XL As String = "google-pixel-2-xl"
	Public CONST DEVICETYPE_GOOGLE_PIXEL_6_PRO As String = "google-pixel-6-pro"
	Public CONST DEVICETYPE_HOMEPOD As String = "homepod"
	Public CONST DEVICETYPE_IMAC As String = "imac"
	Public CONST DEVICETYPE_IMAC_PRO As String = "imac-pro"
	Public CONST DEVICETYPE_IPAD_PRO As String = "ipad-pro"
	Public CONST DEVICETYPE_IPAD_PRO_2017 As String = "ipad-pro-2017"
	Public CONST DEVICETYPE_IPHONE_14 As String = "iphone-14"
	Public CONST DEVICETYPE_IPHONE_14_PRO As String = "iphone-14-pro"
	Public CONST DEVICETYPE_IPHONE_8 As String = "iphone-8"
	Public CONST DEVICETYPE_IPHONE_X As String = "iphone-x"
	Public CONST DEVICETYPE_MACBOOK As String = "macbook"
	Public CONST DEVICETYPE_MACBOOK_PRO As String = "macbook-pro"
	Public CONST DEVICETYPE_MACBOOK_PRO_2018 As String = "macbook-pro-2018"
	Public CONST DEVICETYPE_PRO_DISPLAY_XDR As String = "pro-display-xdr"
	Public CONST DEVICETYPE_SURFACE_BOOK As String = "surface-book"
	Public CONST DEVICETYPE_SURFACE_PRO_2017 As String = "surface-pro-2017"
	Public CONST DEVICETYPE_SURFACE_STUDIO As String = "surface-studio"
	Public CONST DEVICETYPE_THE_IPHONE As String = "the-iphone"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("Device") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesDevices)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("device.min.css")
	BANano.DependsOnAsset("html-to-image.js")
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("DeviceType", "iphone-8")
	CustProps.Put("Text", "Text")
	CustProps.Put("Height", "")
	CustProps.Put("Width", "")
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
Sub setText(s As String)					'ignore
	sText = s
	CustProps.Put("Text", s)
	If mElement = Null Then Return
	UI.SetHTMLByID($"${mName}_content"$, s)
End Sub

Sub Clear
	If mElement = Null Then Return
	UI.ClearByID($"${mName}_content"$)
End Sub

Sub getContentID As String
	Return $"${mName}_content"$
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
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		UI.ExcludeVisible = True
		UI.ExcludeEnabled = True
		sDeviceType = Props.GetDefault("DeviceType", "iphone-8")
		sDeviceType = UI.CStr(sDeviceType)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "")
		sWidth = UI.CStr(sWidth)
	End If
	
	UI.AddClassDT("device")
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
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
    	<div class="device-frame">
			<div id="${mName}_content" class="device-screen"></div>
		</div>
      	<div class="device-stripe"></div>
      	<div class="device-header"></div>
      	<div class="device-sensors"></div>
      	<div class="device-btns"></div>
      	<div class="device-power"></div>
      	<div class="device-home"></div>
    </div>"$).Get("#" & mName)
	setDeviceType(sDeviceType)
	setText(sText)
End Sub

'set Device Type
'options: apple-watch-s8|apple-watch-ultra|galaxy-s8|google-pixel|google-pixel-2-xl|google-pixel-6-pro|homepod|imac|imac-pro|ipad-pro|ipad-pro-2017|iphone-14|iphone-14-pro|iphone-8|iphone-x|macbook|macbook-pro|macbook-pro-2018|pro-display-xdr|surface-book|surface-pro-2017|surface-studio|the-iphone
Sub setDeviceType(s As String)						'ignoredeadcode
	sDeviceType = s
	CustProps.put("DeviceType", s)
	If mElement = Null Then Return
	Dim newclass As String = $"device-${sDeviceType}"$
	Dim devices As List
	devices.Initialize
	devices.AddAll(Array As String("apple-watch-s8", "apple-watch-ultra", "galaxy-s8", "google-pixel", "google-pixel-2-xl", "google-pixel-6-pro", "homepod", "imac", "imac-pro", "ipad-pro", "ipad-pro-2017", "iphone-14", "iphone-14-pro", "iphone-8", "iphone-x", "macbook", "macbook-pro", "macbook-pro-2018", "pro-display-xdr", "surface-book", "surface-pro-2017", "surface-studio", "the-iphone"))
	Dim remClasses As List
	remClasses.Initialize
	For Each k As String In devices
		remClasses.Add($"device-${k}"$)
	Next
	Dim sremclasses As String = UI.Join(";", remClasses)
	'remove classes specific to the phone
	UI.RemoveClass(mElement, sremclasses)
	'add the current class to show device we want
	UI.AddClass(mElement, newclass)
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'get Device Type
Sub getDeviceType As String
	Return sDeviceType
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub
