B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#Event: Click (e As BANanoEvent)
#Event: ScanFailure (error As Object)
#Event: ScanSuccess (decodedText As String, decodedResult As Map)
'
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Camera, DisplayName: Camera, FieldType: String, DefaultValue: environment, Description: Camera Being Used, List: environment|user
#DesignerProperty: Key: Fps, DisplayName: Fps, FieldType: Int, DefaultValue: 5, Description: Frames Per Second
#DesignerProperty: Key: Torch, DisplayName: Torch, FieldType: Boolean, DefaultValue: False, Description: Torch On Or Off
#DesignerProperty: Key: RememberLastUsedCamera, DisplayName: Remember Last Used Camera, FieldType: Boolean, DefaultValue: False, Description: Remember Last Used Camera
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 500px, Description: Width
#DesignerProperty: Key: QrboxHeight, DisplayName: Qrbox Height, FieldType: Int, DefaultValue: 250, Description: Qrbox Height
#DesignerProperty: Key: QrboxWidth, DisplayName: Qrbox Width, FieldType: Int, DefaultValue: 250, Description: Qrbox Width
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: True, Description: Rounded Box
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
	Public Tag As Object
	Private Options As Map
	Private sCamera As String = "environment"
	Private iFps As Int = 5
	Private sHeight As String = "500px"
	Private iQrboxHeight As Int = 250
	Private iQrboxWidth As Int = 250
	Private bRememberLastUsedCamera As Boolean = False
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = True
	Private sShadow As String = "none"
	Private bTorch As Boolean = False
	Private sWidth As String = "500px"
	Public CONST CAMERA_ENVIRONMENT As String = "environment"
	Public CONST CAMERA_USER As String = "user"
	Private Scanner As BANanoObject
	Private LastError As String 
	Private LastResult As String
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("BarCode") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesBarCodeReader)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	BANano.DependsOnAsset("html5-qrcode.min.js")
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")                            'String (empty by default)
	CustProps.Put("Camera", "environment")                   'String
	CustProps.Put("Fps", 5)                                  'Int
	CustProps.Put("Torch", False)                            'Boolean
	CustProps.Put("RememberLastUsedCamera", False)           'Boolean
	CustProps.Put("Height", "500px")                         'String
	CustProps.Put("Width", "500px")                          'String
	CustProps.Put("QrboxHeight", 250)                        'Int
	CustProps.Put("QrboxWidth", 250)                         'Int
	CustProps.Put("Rounded", "none")                         'String
	CustProps.Put("RoundedBox", True)                        'Boolean
	CustProps.Put("Shadow", "none")                          'String
	CustProps.Put("Visible", True)                           'Boolean
	CustProps.Put("Enabled", True)                           'Boolean
	CustProps.Put("PositionStyle", "none")                   'String
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")          'String
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")   'String
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")  'String
	CustProps.Put("RawClasses", "")                          'String (empty)
	CustProps.Put("RawStyles", "")                           'String (empty)
	CustProps.Put("RawAttributes", "")                       'String (empty)
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
		sCamera = Props.GetDefault("Camera", "environment")
		sCamera = UI.CStr(sCamera)
		iFps = Props.GetDefault("Fps", 5)
		iFps = UI.CInt(iFps)
		sHeight = Props.GetDefault("Height", "500px")
		sHeight = UI.CStr(sHeight)
		iQrboxHeight = Props.GetDefault("QrboxHeight", 250)
		iQrboxHeight = UI.CInt(iQrboxHeight)
		iQrboxWidth = Props.GetDefault("QrboxWidth", 250)
		iQrboxWidth = UI.CInt(iQrboxWidth)
		bRememberLastUsedCamera = Props.GetDefault("RememberLastUsedCamera", False)
		bRememberLastUsedCamera = UI.CBool(bRememberLastUsedCamera)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", True)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		bTorch = Props.GetDefault("Torch", False)
		bTorch = UI.CBool(bTorch)
		sWidth = Props.GetDefault("Width", "500px")
		sWidth = UI.CStr(sWidth)
	End If
		
	If sHeight <> "" Then 
		UI.AddAttrDT("height", sHeight)
		UI.AddStyleDT("height", sHeight)
		UI.AddStyleDT("max-height", sHeight)
		UI.AddStyleDT("min-height", sHeight)
	End If
	If sWidth <> "" Then
		UI.AddAttrDT("width", sWidth)
		UI.AddStyleDT("width", sWidth)
		UI.AddStyleDT("max-width", sWidth)
		UI.AddStyleDT("min-width", sWidth)
	End If	
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox = True Then UI.AddRoundedBoxDT
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	'
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
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses} bg-base-100" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
	UI.OnEvent(mElement, "click", mCallBack, $"${mName}_click"$)
End Sub

'restart the process
Sub Restart
	LastError = ""
	LastResult = ""
End Sub

'<code>
'BANano.Await(br1.StopScanWait)
''when done
'Private Sub bcreader1_ScanSuccess (decodedText As String, decodedResult As Map)
'Log(decodedText)
'br1.StopScanWait
'End Sub
'</code>
Sub StopScanWait As Boolean
	Try
		'this returns a promise
		BANano.Await(Scanner.RunMethod("stop", Null))
		'clear the scannr memory
		Scanner.RunMethod("clear", Null)
		'mElement.Empty
	Catch
	End Try		'ignore
	Restart
	Return True
End Sub


Sub Pause(shouldPauseVideo As Boolean)
	Scanner.RunMethod("pause", shouldPauseVideo)
	Restart
End Sub

Sub Resume
	Scanner.RunMethod("resume", Null)
	Restart
End Sub


'<code>
'BANano.Await(br1.StartScanWait)
''when done
'Private Sub bcreader1_ScanSuccess (decodedText As String, decodedResult As Map)
'Log(decodedText)
'br1.StopScanWait
'End Sub
'</code>
Sub StartScanWait As Boolean
	LastResult = ""
	Dim opt As Map = CreateMap()
	opt.Put("width", iQrboxWidth)
	opt.Put("height", iQrboxHeight)
	Options.Initialize 
	Options.put("fps", iFps)
	Options.Put("qrbox", opt)
	Options.put("rememberLastUsedCamera", bRememberLastUsedCamera)
	Options.Put("showTorchButtonIfSupported", True)
	Options.Put("disableFlip", False)
	Options.Put("useBarCodeDetectorIfSupported", True)
	'Dim videoConstraints As Map = CreateMap()
'	'Dim ciQrboxWidth As Int = BANano.parseInt(iQrboxWidth) + 10
'	Dim ciQrboxHeight As Int = BANano.parseInt(iQrboxHeight) + 10
'	'videoConstraints.Put("width", CreateMap("exact":  ciQrboxWidth))
'	videoConstraints.Put("height", CreateMap("exact":  ciQrboxHeight))
'	videoConstraints.Put("resizeMode", "crop-and-scale")
'	Options.Put("videoConstraints", videoConstraints)
	'define the camera option
	Dim mcamera As Map = CreateMap()
	mcamera.Put("facingMode", sCamera)
	Dim ScanSuccessCB As BANanoObject
	ScanSuccessCB.Initialize(Me)
	Dim ScanFailureCB As BANanoObject
	ScanFailureCB.Initialize(Me)
	Dim onsuccess As Object = ScanSuccessCB.GetFunction("onscansuccess")
	Dim onfailure As Object = ScanFailureCB.GetFunction("onscanfailure")
	'
	Scanner.Initialize2("Html5Qrcode", mName)
	BANano.Await(Scanner.RunMethod("start", Array(mcamera, Options, onsuccess, onfailure)))
	Try
		Scanner.RunMethod("applyVideoConstraints", Array(CreateMap("torch": bTorch)))
	Catch
	End Try	'ignore
	Return True
End Sub

'each time a scan happens - continuously
private Sub onScanSuccess(decodedText As String, decodedResult As Map)
	If decodedText <> LastResult Then
		LastResult = decodedText
		BANano.Await(UI.PlayAudio("./assets/beep.mp3"))
		BANano.Await(Scanner.RunMethod("stop", Null))
		'stop scanning and clear video area
		Scanner.RunMethod("clear", Null)
		BANano.CallSub(mCallBack, $"${mName}_ScanSuccess"$, Array(decodedText, decodedResult))
	End If
End Sub

private Sub onScanFailure(errorName As Object)
	If LastError <> errorName Then
		LastError = errorName
		LastResult = ""
		BANano.CallSub(mCallBack, $"${mName}_ScanFailure"$, Array(errorName))
	End If
End Sub

'set Camera Being Used
'options: environment|user
Sub setCamera(s As String)
	sCamera = s
	CustProps.put("Camera", s)
End Sub
'set Frames Per Second
Sub setFps(i As Int)
	iFps = i
	CustProps.put("Fps", i)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetAttr(mElement, "height", sHeight)
	UI.SetStyle(mElement, "height", sHeight)
	UI.SetStyle(mElement, "max-height", sHeight)
End Sub
'set Qrbox Height
Sub setQrboxHeight(i As Int)
	iQrboxHeight = i
	CustProps.put("QrboxHeight", i)
End Sub
'set Qrbox Width
Sub setQrboxWidth(i As Int)
	iQrboxWidth = i
	CustProps.put("QrboxWidth", i)
End Sub
'set Remember Last Used Camera
Sub setRememberLastUsedCamera(b As Boolean)
	bRememberLastUsedCamera = b
	CustProps.put("RememberLastUsedCamera", b)
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
'set Torch On Or Off
Sub setTorch(b As Boolean)
	bTorch = b
	CustProps.put("Torch", b)
	If mElement = Null Then Return
	Try
		Select Case bTorch
		Case True
			Scanner.RunMethod("applyVideoConstraints", Array(CreateMap("torch": True)))
		Case False		
			Scanner.RunMethod("applyVideoConstraints", Array(CreateMap("torch": False)))
		End Select
	Catch
	End Try			'ignore
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetAttr(mElement, "width", sWidth)
	UI.SetStyle(mElement, "width", sWidth)
	UI.SetStyle(mElement, "max-width", sWidth)
End Sub
'get Camera Being Used
Sub getCamera As String
	Return sCamera
End Sub
'get Frames Per Second
Sub getFps As Int
	Return iFps
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Qrbox Height
Sub getQrboxHeight As Int
	Return iQrboxHeight
End Sub
'get Qrbox Width
Sub getQrboxWidth As Int
	Return iQrboxWidth
End Sub
'get Remember Last Used Camera
Sub getRememberLastUsedCamera As Boolean
	Return bRememberLastUsedCamera
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
'get Torch On Or Off
Sub getTorch As Boolean
	Return bTorch
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub
