B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#Event: Complete (fileObj As Object)

#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Url, DisplayName: Url, FieldType: String, DefaultValue: ./assets/upload.php, Description: Url
#DesignerProperty: Key: ParamName, DisplayName: Param Name, FieldType: String, DefaultValue: upload, Description: Param Name
#DesignerProperty: Key: AutoProcessQueue, DisplayName: Auto Process Queue, FieldType: Boolean, DefaultValue: True, Description: Auto Process Queue
#DesignerProperty: Key: UploadMultiple, DisplayName: Upload Multiple, FieldType: Boolean, DefaultValue: False, Description: Upload Multiple
#DesignerProperty: Key: AcceptedFiles, DisplayName: Accepted Files, FieldType: String, DefaultValue: , Description: Accepted Files (image/*,application/pdf)
#DesignerProperty: Key: AddRemoveLinks, DisplayName: Add Remove Links, FieldType: Boolean, DefaultValue: True, Description: Add Remove Links
#DesignerProperty: Key: Capture, DisplayName: Capture, FieldType: String, DefaultValue: , Description: Capture (image/* or audio/* or video/*), List: camcorder|camera|microphone
#DesignerProperty: Key: DisablePreviews, DisplayName: Disable Previews, FieldType: Boolean, DefaultValue: False, Description: Disable Previews
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 500px, Description: Width
#DesignerProperty: Key: MaxFilesize, DisplayName: Max Filesize, FieldType: Int, DefaultValue: 2, Description: Max Filesize
#DesignerProperty: Key: ParallelUploads, DisplayName: Parallel Uploads, FieldType: Int, DefaultValue: 2, Description: Parallel Uploads
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
	Public Tag As Object
	Private Options As Map
	Private sAcceptedFiles As String = ""
	Private bAddRemoveLinks As Boolean = True
	Private sCapture As String = ""
	Private bDisablePreviews As Boolean = False
	Private sHeight As String = "500px"
	Private iMaxFilesize As Int = 2
	Private iParallelUploads As Int = 2
	Private sParamName As String = "upload"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"
	Private bUploadMultiple As Boolean = False
	Private sUrl As String = "./assets/upload.php"
	Private sWidth As String = "500px"
	Public CONST CAPTURE_CAMCORDER As String = "camcorder"
	Public CONST CAPTURE_CAMERA As String = "camera"
	Public CONST CAPTURE_MICROPHONE As String = "microphone"
	Private dZone As BANanoObject
	Private bAutoProcessQueue As Boolean = True
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	BANano.DependsOnAsset("dropzone.min.js")
	BANano.DependsOnAsset("dropzone.min.css")
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
		sAcceptedFiles = Props.GetDefault("AcceptedFiles", "")
		sAcceptedFiles = UI.CStr(sAcceptedFiles)
		bAddRemoveLinks = Props.GetDefault("AddRemoveLinks", True)
		bAddRemoveLinks = UI.CBool(bAddRemoveLinks)
		sCapture = Props.GetDefault("Capture", "")
		sCapture = UI.CStr(sCapture)
		bDisablePreviews = Props.GetDefault("DisablePreviews", False)
		bDisablePreviews = UI.CBool(bDisablePreviews)
		sHeight = Props.GetDefault("Height", "500px")
		sHeight = UI.CStr(sHeight)
		iMaxFilesize = Props.GetDefault("MaxFilesize", 2)
		iMaxFilesize = UI.CInt(iMaxFilesize)
		iParallelUploads = Props.GetDefault("ParallelUploads", 2)
		iParallelUploads = UI.CInt(iParallelUploads)
		sParamName = Props.GetDefault("ParamName", "upload")
		sParamName = UI.CStr(sParamName)
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		bUploadMultiple = Props.GetDefault("UploadMultiple", False)
		bUploadMultiple = UI.CBool(bUploadMultiple)
		sUrl = Props.GetDefault("Url", "./assets/upload.php")
		sUrl = UI.CStr(sUrl)
		sWidth = Props.GetDefault("Width", "500px")
		sWidth = UI.CStr(sWidth)
		bAutoProcessQueue = Props.GetDefault("AutoProcessQueue", True)
		bAutoProcessQueue = UI.CBool(bAutoProcessQueue)
	End If
	'
	Options.Initialize 
	Options.Put("autoProcessQueue", bAutoProcessQueue)
	Options.put("acceptedFiles", sAcceptedFiles)
	Options.put("addRemoveLinks", bAddRemoveLinks)
	Options.put("capture", sCapture)
	Options.put("disablePreviews", bDisablePreviews)
	If sHeight <> "" Then UI.AddStyleDT("height", sHeight)
	Options.put("parallelUploads", iParallelUploads)
	Options.put("paramName", sParamName)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	Options.put("uploadMultiple", bUploadMultiple)
	Options.put("url", sUrl)
	
	If sWidth <> "" Then UI.AddStyleDT("width", sWidth)
	UI.AddClassDT("dropzone flex flex-wrap justify-center items-center")
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
	Refresh
End Sub

'use if autoprocess is set to false
Sub ProcessQueue
	dZone.RunMethod("processQueue", Null)
End Sub

'remove a file after completion
Sub RemoveFile(fileObj As Object)
	dZone.RunMethod("removeFile", Array(fileObj))
End Sub

'remove all files
Sub RemoveAllFiles
	dZone.RunMethod("removeAllFiles", Null)
End Sub

'cancel all uploads
Sub CancelUploads
	dZone.RunMethod("removeAllFiles", Array(True))
End Sub

Sub GetFiles As List
	Dim lst As List = dZone.GetField("files")
	Return lst
End Sub

Sub Refresh
	Dim skey As String = $"#${mName}"$
	dZone.Initialize2("Dropzone", Array(skey, Options))
	'events
	Dim fileObj As Object
	Dim cbAF As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_Complete"$, Array(fileObj))
	dZone.RunMethod("on", Array("complete", cbAF))
End Sub

Sub setAutoProcessQueue(b As Boolean)
	bAutoProcessQueue = b
	Options.Put("autoProcessQueue", b)
End Sub

Sub getAutoProcessQueue As Boolean
	Return bAutoProcessQueue
End Sub

'set Accepted Files
Sub setAcceptedFiles(s As String)
	sAcceptedFiles = s
	CustProps.put("AcceptedFiles", s)
	Options.put("acceptedFiles", s)
End Sub
'set Add Remove Links
Sub setAddRemoveLinks(b As Boolean)
	bAddRemoveLinks = b
	CustProps.put("AddRemoveLinks", b)
	Options.put("addRemoveLinks", b)
End Sub
'set Capture
'options: camcorder|camera|microphone
Sub setCapture(s As String)
	sCapture = s
	CustProps.put("Capture", s)
	Options.put("capture", s)
End Sub
'set Disable Previews
Sub setDisablePreviews(b As Boolean)
	bDisablePreviews = b
	CustProps.put("DisablePreviews", b)
	Options.put("disablePreviews", b)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "height", s)
End Sub
'set Max Filesize
Sub setMaxFilesize(i As Int)
	iMaxFilesize = i
	CustProps.put("MaxFilesize", i)
	Options.put("maxFilesize", i)
End Sub
'set Parallel Uploads
Sub setParallelUploads(i As Int)
	iParallelUploads = i
	CustProps.put("ParallelUploads", i)
	Options.put("parallelUploads", i)
End Sub
'set Param Name
Sub setParamName(s As String)
	sParamName = s
	CustProps.put("ParamName", s)
	Options.put("paramName", s)
End Sub
'set Rounded Box
Sub setRoundedBox(b As Boolean)
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "rounded-box")
	Else
		UI.RemoveClass(mElement, "rounded-box")
	End If
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Upload Multiple
Sub setUploadMultiple(b As Boolean)
	bUploadMultiple = b
	CustProps.put("UploadMultiple", b)
	Options.put("uploadMultiple", b)
End Sub
'set Url
Sub setUrl(s As String)
	sUrl = s
	CustProps.put("Url", s)
	Options.put("url", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "width", s)
End Sub
'get Accepted Files
Sub getAcceptedFiles As String
	Return sAcceptedFiles
End Sub
'get Add Remove Links
Sub getAddRemoveLinks As Boolean
	Return bAddRemoveLinks
End Sub
'get Capture
Sub getCapture As String
	Return sCapture
End Sub
'get Disable Previews
Sub getDisablePreviews As Boolean
	Return bDisablePreviews
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Max Filesize
Sub getMaxFilesize As Int
	Return iMaxFilesize
End Sub
'get Parallel Uploads
Sub getParallelUploads As Int
	Return iParallelUploads
End Sub
'get Param Name
Sub getParamName As String
	Return sParamName
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Upload Multiple
Sub getUploadMultiple As Boolean
	Return bUploadMultiple
End Sub
'get Url
Sub getUrl As String
	Return sUrl
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub