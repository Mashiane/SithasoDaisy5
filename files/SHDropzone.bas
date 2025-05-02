#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Text, Description: Text
#DesignerProperty: Key: AcceptedFiles, DisplayName: Accepted Files, FieldType: String, DefaultValue: , Description: Accepted Files
#DesignerProperty: Key: AddRemoveLinks, DisplayName: Add Remove Links, FieldType: Boolean, DefaultValue: False, Description: Add Remove Links
#DesignerProperty: Key: Capture, DisplayName: Capture, FieldType: String, DefaultValue: , Description: Capture, List: camcorder|camera|microphone
#DesignerProperty: Key: DisablePreviews, DisplayName: Disable Previews, FieldType: Boolean, DefaultValue: False, Description: Disable Previews
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: MaxFilesize, DisplayName: Max Filesize, FieldType: String, DefaultValue: none, Description: Max Filesize, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: ParallelUploads, DisplayName: Parallel Uploads, FieldType: Int, DefaultValue: 2, Description: Parallel Uploads
#DesignerProperty: Key: ParamName, DisplayName: Param Name, FieldType: String, DefaultValue: file, Description: Param Name
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: UploadMultiple, DisplayName: Upload Multiple, FieldType: Boolean, DefaultValue: False, Description: Upload Multiple
#DesignerProperty: Key: Url, DisplayName: Url, FieldType: String, DefaultValue: , Description: Url
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 500px, Description: Width
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
    Private Options As Map
    Private sAcceptedFiles As String = ""
    Private bAddRemoveLinks As Boolean = False
    Private sCapture As String = ""
    Private bDisablePreviews As Boolean = False
    Private sHeight As String = "500px"
    Private sMaxFilesize As String = "none"
    Private iParallelUploads As Int = 2
    Private sParamName As String = "file"
    Private bRoundedBox As Boolean = False
    Private sShadow As String = "none"
    Private bUploadMultiple As Boolean = False
    Private sUrl As String = ""
    Private sWidth As String = "500px"
    Public CONST CAPTURE_CAMCORDER As String = "camcorder"
    Public CONST CAPTURE_CAMERA As String = "camera"
    Public CONST CAPTURE_MICROPHONE As String = "microphone"
    Public CONST MAXFILESIZE_LG As String = "lg"
    Public CONST MAXFILESIZE_MD As String = "md"
    Public CONST MAXFILESIZE_NONE As String = "none"
    Public CONST MAXFILESIZE_SM As String = "sm"
    Public CONST MAXFILESIZE_XL As String = "xl"
    Public CONST MAXFILESIZE_XS As String = "xs"
    Public CONST SHADOW_2XL As String = "2xl"
    Public CONST SHADOW_INNER As String = "inner"
    Public CONST SHADOW_LG As String = "lg"
    Public CONST SHADOW_MD As String = "md"
    Public CONST SHADOW_NONE As String = "none"
    Public CONST SHADOW_SHADOW As String = "shadow"
    Public CONST SHADOW_SM As String = "sm"
    Public CONST SHADOW_XL As String = "xl"
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
    return sParentID
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
Sub OnEvent(event As String, methodName as string)
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
    return sRawAttributes
End Sub
'
Sub getStyles As String
    return sRawStyles
End Sub
'
Sub getClasses As String
    return sRawClasses
End Sub
'
Sub getPaddingAXYTBLR As String
    return sPaddingAXYTBLR
End Sub
'
Sub getMarginAXYTBLR As String
    return sMarginAXYTBLR
End Sub
'set text
Sub setText(s As String)
    sText = s
    CustProps.Put("Text", s)
    If mElement = Null Then Return
    UI.SetText(mElement, s)
End Sub
'get text
Sub getText As String
    If mElement = Null Then Return ""
    sText = mElement.GetText
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
        sAcceptedFiles = Props.GetDefault("AcceptedFiles", "")
        sAcceptedFiles = UI.CStr(sAcceptedFiles)
        bAddRemoveLinks = Props.GetDefault("AddRemoveLinks", False)
        bAddRemoveLinks = UI.CBool(bAddRemoveLinks)
        sCapture = Props.GetDefault("Capture", "")
        sCapture = UI.CStr(sCapture)
        bDisablePreviews = Props.GetDefault("DisablePreviews", False)
        bDisablePreviews = UI.CBool(bDisablePreviews)
        sHeight = Props.GetDefault("Height", "500px")
        sHeight = UI.CStr(sHeight)
        if sHeight = "500px" Then sHeight = ""
        sMaxFilesize = Props.GetDefault("MaxFilesize", "none")
        sMaxFilesize = UI.CStr(sMaxFilesize)
        if sMaxFilesize = "none" Then sMaxFilesize = ""
        iParallelUploads = Props.GetDefault("ParallelUploads", 2)
        iParallelUploads = UI.CInt(iParallelUploads)
        sParamName = Props.GetDefault("ParamName", "file")
        sParamName = UI.CStr(sParamName)
        if sParamName = "file" Then sParamName = ""
        bRoundedBox = Props.GetDefault("RoundedBox", False)
        bRoundedBox = UI.CBool(bRoundedBox)
        sShadow = Props.GetDefault("Shadow", "none")
        sShadow = UI.CStr(sShadow)
        if sShadow = "none" Then sShadow = ""
        bUploadMultiple = Props.GetDefault("UploadMultiple", False)
        bUploadMultiple = UI.CBool(bUploadMultiple)
        sUrl = Props.GetDefault("Url", "")
        sUrl = UI.CStr(sUrl)
        sWidth = Props.GetDefault("Width", "500px")
        sWidth = UI.CStr(sWidth)
        if sWidth = "500px" Then sWidth = ""
    End If
    '
    Options.put("acceptedFiles", sAcceptedFiles)
    Options.put("addRemoveLinks", bAddRemoveLinks)
    Options.put("capture", sCapture)
    Options.put("disablePreviews", bDisablePreviews)
    If sHeight <> "500px" Then UI.AddStyleDT("height", sHeight)
    Options.put("parallelUploads", iParallelUploads)
    Options.put("paramName", sParamName)
    If bRoundedBox = True Then UI.AddClassDT("rounded-box-RoundedBox")
    If sShadow <> "" Then UI.AddShadowDT(sShadow)
    Options.put("uploadMultiple", bUploadMultiple)
    Options.put("url", sUrl)
    If sWidth <> "500px" Then UI.AddStyleDT("width", sWidth)
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
    mElement = mTarget.Append($"[BANCLEAN]<dropzone id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}</dropzone>"$).Get("#" & mName)
End Sub

'set Accepted Files
Sub setAcceptedFiles(s As String)
    sAcceptedFiles = s
    CustProps.put("AcceptedFiles", s)
    If mElement = Null Then Return
    Options.put("acceptedFiles", s)
End Sub
'set Add Remove Links
Sub setAddRemoveLinks(b As boolean)
    bAddRemoveLinks = b
    CustProps.put("AddRemoveLinks", b)
    If mElement = Null Then Return
    Options.put("addRemoveLinks", b)
End Sub
'set Capture
'options: camcorder|camera|microphone
Sub setCapture(s As String)
    sCapture = s
    CustProps.put("Capture", s)
    If mElement = Null Then Return
    Options.put("capture", s)
End Sub
'set Disable Previews
Sub setDisablePreviews(b As boolean)
    bDisablePreviews = b
    CustProps.put("DisablePreviews", b)
    If mElement = Null Then Return
    Options.put("disablePreviews", b)
End Sub
'set Height
Sub setHeight(s As String)
    sHeight = s
    CustProps.put("Height", s)
    If mElement = Null Then Return
    If s <> "500px" Then UI.AddStyle(mElement, "height", s)
End Sub
'set Max Filesize
'options: xs|none|sm|md|lg|xl
Sub setMaxFilesize(s As String)
    sMaxFilesize = s
    CustProps.put("MaxFilesize", s)
    If mElement = Null Then Return
End Sub
'set Parallel Uploads
Sub setParallelUploads(i As Int)
    iParallelUploads = i
    CustProps.put("ParallelUploads", i)
    If mElement = Null Then Return
    Options.put("parallelUploads", i)
End Sub
'set Param Name
Sub setParamName(s As String)
    sParamName = s
    CustProps.put("ParamName", s)
    If mElement = Null Then Return
    Options.put("paramName", s)
End Sub
'set Rounded Box
Sub setRoundedBox(b As boolean)
    bRoundedBox = b
    CustProps.put("RoundedBox", b)
    If mElement = Null Then Return
    If b = True Then
        UI.AddClass(mElement, "rounded-box-RoundedBox")
    Else
        UI.RemoveClass(mElement, "rounded-box-RoundedBox")
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
Sub setUploadMultiple(b As boolean)
    bUploadMultiple = b
    CustProps.put("UploadMultiple", b)
    If mElement = Null Then Return
    Options.put("uploadMultiple", b)
End Sub
'set Url
Sub setUrl(s As String)
    sUrl = s
    CustProps.put("Url", s)
    If mElement = Null Then Return
    Options.put("url", s)
End Sub
'set Width
Sub setWidth(s As String)
    sWidth = s
    CustProps.put("Width", s)
    If mElement = Null Then Return
    If s <> "500px" Then UI.AddStyle(mElement, "width", s)
End Sub
'get Accepted Files
Sub getAcceptedFiles As String
    return sAcceptedFiles
End Sub
'get Add Remove Links
Sub getAddRemoveLinks As Boolean
    return bAddRemoveLinks
End Sub
'get Capture
Sub getCapture As String
    return sCapture
End Sub
'get Disable Previews
Sub getDisablePreviews As Boolean
    return bDisablePreviews
End Sub
'get Height
Sub getHeight As String
    return sHeight
End Sub
'get Max Filesize
Sub getMaxFilesize As String
    return sMaxFilesize
End Sub
'get Parallel Uploads
Sub getParallelUploads As Int
    return iParallelUploads
End Sub
'get Param Name
Sub getParamName As String
    return sParamName
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
    return bRoundedBox
End Sub
'get Shadow
Sub getShadow As String
    return sShadow
End Sub
'get Upload Multiple
Sub getUploadMultiple As Boolean
    return bUploadMultiple
End Sub
'get Url
Sub getUrl As String
    return sUrl
End Sub
'get Width
Sub getWidth As String
    return sWidth
End Sub