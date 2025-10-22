B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Save (Data As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: Signature, Description: Caption
#DesignerProperty: Key: CaptionColor, DisplayName: Caption Color, FieldType: String, DefaultValue: none, Description: Caption Color
#DesignerProperty: Key: ButtonCaption, DisplayName: Button Caption, FieldType: String, DefaultValue: Clear Signature, Description: Button Caption
#DesignerProperty: Key: ButtonColor, DisplayName: Button Color, FieldType: String, DefaultValue: neutral, Description: Button Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: ButtonDisabled, DisplayName: Button Disabled, FieldType: Boolean, DefaultValue: False, Description: Button Disabled
#DesignerProperty: Key: ButtonTextColor, DisplayName: Button Text Color, FieldType: String, DefaultValue: none, Description: Button Text Color
#DesignerProperty: Key: SaveColor, DisplayName: Save Color, FieldType: String, DefaultValue: success, Description: Save Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: SaveTextColor, DisplayName: Save Text Color, FieldType: String, DefaultValue: none, Description: Save Text Color
#DesignerProperty: Key: ErrorMessage, DisplayName: Error Message, FieldType: String, DefaultValue: The signature is required, Description: Error Message
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: Please sign within the box area, Description: Hint
#DesignerProperty: Key: DotSize, DisplayName: Dot Size, FieldType: String, DefaultValue: 0, Description: Dot Size
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 200, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 400, Description: Width
#DesignerProperty: Key: ImageType, DisplayName: Image Type, FieldType: String, DefaultValue: jpeg, Description: Image Type, List: jpeg|png|svg
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: white, Description: Background Color
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: 2.5, Description: Max Width
#DesignerProperty: Key: MinDistance, DisplayName: Min Distance, FieldType: String, DefaultValue: 5, Description: Min Distance
#DesignerProperty: Key: MinWidth, DisplayName: Min Width, FieldType: String, DefaultValue: 0.5 , Description: Min Width
#DesignerProperty: Key: PenColor, DisplayName: Pen Color, FieldType: String, DefaultValue: black, Description: Pen Color
#DesignerProperty: Key: Throttle, DisplayName: Throttle, FieldType: String, DefaultValue: 16, Description: Throttle
#DesignerProperty: Key: VelocityFilterWeight, DisplayName: Velocity Filter Weight, FieldType: String, DefaultValue: 0.7, Description: Velocity Filter Weight
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
	Private sButtonCaption As String = "Clear Signature"
	Private sButtonColor As String = "neutral"
	Private bButtonDisabled As Boolean = False
	Private sButtonTextColor As String = "none"
	Private sCaption As String = "Signature"
	Private sCaptionColor As String = "none"
	Private dDotSize As Double = "0"
	Private sErrorMessage As String = "The signature is required"
	Private sHeight As String = "200"
	Private sHint As String = "Please sign within the box area"
	Private sImageType As String = "jpeg"
	Private dMaxWidth As Double = 2.5
	Private iMinDistance As Int = 5
	Private dMinWidth As Double = 0.5
	Private sPenColor As String = "black"
	Private iThrottle As Int = 16
	Private dVelocityFilterWeight As Double = 0.7
	Private sWidth As String = "400"
	Public CONST IMAGETYPE_JPEG As String = "jpeg"
	Public CONST IMAGETYPE_PNG As String = "png"
	Public CONST IMAGETYPE_SVG As String = "svg"
	Private sBackgroundColor As String = "white"
	Private SignaturePad As BANanoObject
	Private sSaveColor As String = "success"
	Private sSaveTextColor As String = "none"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("SignaturePad") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesSignaturePad)' should be added!"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	BANano.DependsOnAsset("signature_pad.umd.min.js")
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Caption", "Signature")
	CustProps.Put("CaptionColor", "none")
	CustProps.Put("ButtonCaption", "Clear Signature")
	CustProps.Put("ButtonColor", "neutral")
	CustProps.Put("ButtonDisabled", False)
	CustProps.Put("ButtonTextColor", "none")
	CustProps.Put("SaveColor", "success")
	CustProps.Put("SaveTextColor", "none")
	CustProps.Put("ErrorMessage", "The signature is required")
	CustProps.Put("Hint", "Please sign within the box area")
	CustProps.Put("DotSize", "0")
	CustProps.Put("Height", "200")
	CustProps.Put("Width", "400")
	CustProps.Put("ImageType", "jpeg")
	CustProps.Put("BackgroundColor", "white")
	CustProps.Put("MaxWidth", "2.5")
	CustProps.Put("MinDistance", "5")
	CustProps.Put("MinWidth", "0.5")
	CustProps.Put("PenColor", "black")
	CustProps.Put("Throttle", "16")
	CustProps.Put("VelocityFilterWeight", "0.7")
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
	UI.SetVisibleByID($"${mName}_formcontrol"$, b)
End Sub
'get Visible
Sub getVisible As Boolean
'	bVisible = UI.GetVisibleByID($"${mName}_formcontrol"$)
	Return bVisible
End Sub
'set Enabled
Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement = Null Then Return
	UI.SetEnabledByID($"${mName}_wrapper"$, b)
	UI.SetEnabledByID($"${mName}_clear"$, b)
	'
	Select Case bEnabled
	Case True	
		UI.AddStyle(mElement, "pointer-events",  "initial")
	Case Else
		UI.AddStyle(mElement, "pointer-events",  "none")
	End Select	
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
		UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sButtonCaption = Props.GetDefault("ButtonCaption", "Clear Signature")
		sButtonCaption = UI.CStr(sButtonCaption)
		sButtonColor = Props.GetDefault("ButtonColor", "neutral")
		sButtonColor = UI.CStr(sButtonColor)
		bButtonDisabled = Props.GetDefault("ButtonDisabled", False)
		bButtonDisabled = UI.CBool(bButtonDisabled)
		sButtonTextColor = Props.GetDefault("ButtonTextColor", "none")
		sButtonTextColor = UI.CStr(sButtonTextColor)
		sCaption = Props.GetDefault("Caption", "Signature")
		sCaption = UI.CStr(sCaption)
		sCaptionColor = Props.GetDefault("CaptionColor", "none")
		sCaptionColor = UI.CStr(sCaptionColor)
		dDotSize = Props.GetDefault("DotSize", 0)
		dDotSize = UI.CDbl(dDotSize)
		sErrorMessage = Props.GetDefault("ErrorMessage", "The signature is required")
		sErrorMessage = UI.CStr(sErrorMessage)
		sHeight = Props.GetDefault("Height", "200")
		sHeight = UI.CStr(sHeight)
		sHint = Props.GetDefault("Hint", "Please sign within the box area")
		sHint = UI.CStr(sHint)
		sImageType = Props.GetDefault("ImageType", "jpeg")
		sImageType = UI.CStr(sImageType)
		dMaxWidth = Props.GetDefault("MaxWidth", 2.5)
		dMaxWidth = UI.cdbl(dMaxWidth)
		iMinDistance = Props.GetDefault("MinDistance", 5)
		iMinDistance = UI.cint(iMinDistance)
		dMinWidth = Props.GetDefault("MinWidth", 0.5)
		dMinWidth = UI.cdbl(dMinWidth)
		sPenColor = Props.GetDefault("PenColor", "black")
		sPenColor = UI.CStr(sPenColor)
		iThrottle = Props.GetDefault("Throttle", 16)
		iThrottle = UI.cint(iThrottle)
		dVelocityFilterWeight = Props.GetDefault("VelocityFilterWeight", 0.7)
		dVelocityFilterWeight = UI.cdbl(dVelocityFilterWeight)
		sWidth = Props.GetDefault("Width", "400")
		sWidth = UI.CStr(sWidth)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "white")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		sSaveColor = Props.GetDefault("SaveColor", "success")
		sSaveColor = UI.CStr(sSaveColor)
		sSaveTextColor = Props.GetDefault("SaveTextColor", "none")
		sSaveTextColor = UI.CStr(sSaveTextColor)
	End If
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
	
	Dim sCode As String = $"[BANCLEAN]
		<div id="${mName}_formcontrol" class="form-control ${xclasses}" ${xattrs} style="${xstyles}">
        	<label id="${mName}_label" class="mb-1 label">
        		<span id="${mName}_text" class="label-text">${sCaption}</span>
        		<span id="${mName}_required" class="label-text-alt hidden"></span>
        	</label>
        	<label id="${mName}_inputgroup" class="input-group">        		
        		<div id="${mName}_wrapper"><canvas id="${mName}" class="border-2 border-gray rounded-lg"></canvas></div>
        	</label>
        	<label id="${mName}_hints" class="mt-1 label">
        		<span id="${mName}_hint" class="label-text-alt">${sHint}</span>
        	</label>
			<div class="grid grid-cols-2 mt-2 gap-2">
				<button id="${mName}_clear" class="btn">Clear</button>
        		<button id="${mName}_save" class="btn">Save</button>
        	</div>
		</div>"$
	mElement = mTarget.Append(sCode).Get($"#${mName}"$)
	setButtonColor(sButtonColor)
	setButtonDisabled(bButtonDisabled)
	setButtonTextColor(sButtonTextColor)
	setCaptionColor(sCaptionColor)
	setSaveColor(sSaveColor)
	setSaveTextColor(sSaveTextColor)
	'
	Options.Initialize 
	Options.put("backgroundColor", sBackgroundColor)
	Options.put("dotSize", dDotSize)
	Options.put("maxWidth", dMaxWidth)
	Options.put("minDistance", iMinDistance)
	Options.put("minWidth", dMinWidth)
	Options.put("penColor", sPenColor)
	Options.put("throttle", iThrottle)
	Options.put("velocityFilterWeight", dVelocityFilterWeight)
	setHeight(sHeight)
	setWidth(sWidth)
	UI.AddStyleBYID($"${mName}_wrapper"$, "position", "relative")
	UI.AddStyleBYID($"${mName}_wrapper"$, "-moz-user-select", "none")
	UI.AddStyleBYID($"${mName}_wrapper"$, "-webkit-user-select", "none")
	UI.AddStyleBYID($"${mName}_wrapper"$, "-ms-user-select", "none")
	UI.AddStyleBYID($"${mName}_wrapper"$, "user-select", "none")
	UI.AddStyle(mElement, "position", "absolute")
	UI.AddStyle(mElement, "left", "0")
	UI.AddStyle(mElement, "top", "0")
	UI.OnEventByID($"${mName}_clear"$, "click", Me, "ClearSignature")
	UI.OnEventByID($"${mName}_save"$, "click", Me, "SaveSignature")
	Refresh
End Sub

'set Save Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setSaveColor(s As String)				'ignoredeadcode
	sSaveColor = s
	CustProps.put("SaveColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColorByID($"${mName}_save"$, "color", "btn", s)
End Sub
'set Save Text Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setSaveTextColor(s As String)				'ignoredeadcode
	sSaveTextColor = s
	CustProps.put("SaveTextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_save"$,s)
End Sub
'get Save Color
Sub getSaveColor As String
	Return sSaveColor
End Sub
'get Save Text Color
Sub getSaveTextColor As String
	Return sSaveTextColor
End Sub

private Sub SaveSignature(e As BANanoEvent)		'ignoredeadcode
	e.PreventDefault
	ResetValidation
	Dim b As Boolean = IsBlank
	If b Then Return
	Dim dat As String = toDataURL
	CallSub2(mCallBack, $"${mName}_save"$, Array(dat))
End Sub

private Sub ClearSignature(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault
	ResetValidation
	Clear
End Sub

'generate the signature usually on mounted
Sub Refresh				'ignoredeadcode
	Dim canvas As BANanoObject = BANano.GetElement($"#${mName}"$).ToObject
	SignaturePad.Initialize2("SignaturePad", Array(canvas, Options))
	Clear
	'BANano.RunJavascriptMethod("resizeCanvas", Array(canvas,SignaturePad))
End Sub

'Clears the canvas
Sub Clear
	Try
		SignaturePad.RunMethod("clear", Null)
	Catch
	End Try		'ignore
End Sub

'run validation
Sub IsBlank As Boolean
	Dim res As Boolean = isEmpty
	If res Then
		setErrorMessage(sErrorMessage)
		UI.AddClass(mElement, "border-red-500")
		UI.RemoveClass(mElement, "border-green-500")
		UI.RemoveClass(mElement, "border-gray")
	Else
		setHint(sHint)
		UI.RemoveClass(mElement, "border-red-500")
		UI.AddClass(mElement, "border-green-500")
		UI.RemoveClass(mElement, "border-gray")
	End If
	Return res
End Sub

Sub ResetValidation
	Try
		UI.RemoveClass(mElement, "border-red-500")
		UI.RemoveClass(mElement, "border-green-500")
		UI.AddClass(mElement, "border-gray")
		setHint(sHint)
	Catch
		
	End Try		'ignore
End Sub

'set Button Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setButtonColor(s As String)			'ignoredeadcode
	sButtonColor = s
	CustProps.put("ButtonColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColorByID($"${mName}_clear"$, "color", "btn", s)
End Sub
'set Button Disabled
Sub setButtonDisabled(b As Boolean)			'ignoredeadcode
	bButtonDisabled = b
	CustProps.put("ButtonDisabled", b)
	If mElement = Null Then Return
	UI.SetEnabledByID($"${mName}_clear"$, Not(b))
End Sub
'set Button Text Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setButtonTextColor(s As String)				'ignoredeadcode
	sButtonTextColor = s
	CustProps.put("ButtonTextColor", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetTextColorbyid($"${mName}_clear"$, s)
End Sub
'set Caption
Sub setCaption(s As String)
	sCaption = s
	CustProps.put("Caption", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextByID($"${mName}_text"$, s)
End Sub
'set Caption Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setCaptionColor(s As String)			'ignoredeadcode
	sCaptionColor = s
	CustProps.put("CaptionColor", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.SetTextColorByID($"${mName}_text"$, s)
End Sub
'set Dot Size
'options: xs|none|sm|md|lg|xl
Sub setDotSize(s As Double)
	dDotSize = s
	CustProps.put("DotSize", s)
	Options.Put("dotSize", s)
End Sub
'set Error Message
Sub setErrorMessage(s As String)
	sErrorMessage = s
	CustProps.put("ErrorMessage", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_hint"$, s)
	UI.SetTextColorByID($"${mName}_hint"$, $"#ff0000"$)
End Sub
'set Height
Sub setHeight(s As String)				'ignoredeadcode
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetAttr(mElement, "height", sHeight)
		UI.SetStyle(mElement, "height", $"${sHeight}px"$)
		UI.SetStyleByID($"${mName}_wrapper"$, "height", $"${sHeight}px"$)
	End If
End Sub
'set Hint
Sub setHint(s As String)
	sHint = s
	CustProps.put("Hint", s)
	If mElement = Null Then Return
	UI.SetHTMLByID($"${mName}_hint"$, s)
	UI.SetTextColorByID($"${mName}_hint"$, $"gray-500"$)
End Sub

'set Hint
Sub HintError(s As String)			'ignoredeadcode
	If mElement = Null Then Return
	UI.SetHTMLByID($"${mName}_hint"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_hint"$, False)
		UI.SetTextColorByID($"${mName}_hint"$, "base-content")
	Else
		UI.SetVisibleByID($"${mName}_hint"$, True)
		UI.SetTextColorByID($"${mName}_hint"$, "error")
	End If
End Sub

'set Image Type
'options: jpeg|png|svg
Sub setImageType(s As String)
	sImageType = s
	CustProps.put("ImageType", s)
End Sub
'set Max Width
Sub setMaxWidth(s As Double)
	dMaxWidth = s
	CustProps.put("MaxWidth", s)
	Options.Put("maxWidth", s)
End Sub
'set Min Distance
Sub setMinDistance(s As Int)
	iMinDistance = s
	CustProps.put("MinDistance", s)
	Options.put("minDistance", s)
End Sub
'set Min Width
Sub setMinWidth(s As Double)
	dMinWidth = s
	CustProps.put("MinWidth", s)
	Options.Put("minWidth", s)
End Sub
'set Pen Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setPenColor(s As String)
	sPenColor = s
	CustProps.put("PenColor", s)
	Options.Put("penColor", s)
End Sub
'set Required

'set Throttle
Sub setThrottle(s As Int)
	iThrottle = s
	CustProps.put("Throttle", s)
	Options.put("throttle", s)
End Sub
'set Velocity Filter Weight
Sub setVelocityFilterWeight(s As Double)
	dVelocityFilterWeight = s
	CustProps.put("VelocityFilterWeight", s)
	Options.put("velocityFilterWeight", s)
End Sub
'set Width
Sub setWidth(s As String)			'ignoredeadcode
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetAttr(mElement, "width", sWidth)
		UI.SetStyle(mElement, "width", $"${sWidth}px"$)
		UI.SetStyleByID($"${mName}_wrapper"$, "width", $"${sWidth}px"$)
		UI.SetStyleByID($"${mName}_formcontrol"$, "width", $"${sWidth}px"$)
	End If
End Sub
'get Button Color
Sub getButtonColor As String
	Return sButtonColor
End Sub
'get Button Disabled
Sub getButtonDisabled As Boolean
	Return bButtonDisabled
End Sub
'get Button Text Color
Sub getButtonTextColor As String
	Return sButtonTextColor
End Sub
'get Caption
Sub getCaption As String
	Return sCaption
End Sub
'get Caption Color
Sub getCaptionColor As String
	Return sCaptionColor
End Sub
'get Dot Size
Sub getDotSize As Double
	Return dDotSize
End Sub
'get Error Message
Sub getErrorMessage As String
	Return sErrorMessage
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Hint
Sub getHint As String
	Return sHint
End Sub
'get Image Type
Sub getImageType As String
	Return sImageType
End Sub
'get Max Width
Sub getMaxWidth As Double
	Return dMaxWidth
End Sub
'get Min Distance
Sub getMinDistance As Int
	Return iMinDistance
End Sub
'get Min Width
Sub getMinWidth As Double
	Return dMinWidth
End Sub
'get Pen Color
Sub getPenColor As String
	Return sPenColor
End Sub
'get Throttle
Sub getThrottle As Int
	Return iThrottle
End Sub
'get Velocity Filter Weight
Sub getVelocityFilterWeight As Double
	Return dVelocityFilterWeight
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

Sub download
	'get the signature content
	Dim dataURL As String = toDataURL
	Dim dFileName As String = $"${mName}.${sImageType}"$
	Dim blob As Object = UI.dataURLToBlob(dataURL)
	BANano.RunJavascriptMethod("saveAs",Array(blob,dFileName))
End Sub

'Draws signature image from an array of point groups
Sub fromData(data As Object)
	SignaturePad.RunMethod("fromData", data)
End Sub

'Draws signature image from data URL
Sub fromDataURL(dataURL As String)
	SignaturePad.RunMethod("fromDataURL", dataURL)
End Sub

'Draws signature image from data URL
Sub setValue(dataURL As String)
	If dataURL = "" Then
		Clear
		Return
	End If
	fromDataURL(dataURL)
End Sub

'make to drawing context, usually after erase
Sub draw
	Dim canvas As BANanoObject = BANano.GetElement($"#${mName}"$).ToObject
	Dim ctx As BANanoObject = canvas.RunMethod("getContext", "2d")
	ctx.SetField("globalCompositeOperation", "source-over")
End Sub

'make to erase context
Sub erase
	Dim canvas As BANanoObject = BANano.GetElement($"#${mName}"$).ToObject
	Dim ctx As BANanoObject = canvas.RunMethod("getContext", "2d")
	ctx.SetField("globalCompositeOperation", "destination-out")
End Sub

'convert canvas to array
Sub toData As Object
	Dim data As Object = SignaturePad.RunMethod("toData", Null)
	Return data
End Sub

'undo
Sub undo
	'get array data
	Dim data As BANanoObject = SignaturePad.RunMethod("toData", Null)
	If BANano.IsNull(data) = False Then
		data.RunMethod("pop", Null)
		SignaturePad.RunMethod("fromData", data)
	End If
End Sub

Sub toBlob As Object
	Dim res As Object = SignaturePad.RunMethod("toBlob", Null).Result
	Return res
End Sub

'convert the signature to a file
Sub toFile(mFileName As String) As BANanoObject
	Dim blob As BANanoObject = SignaturePad.RunMethod("toBlob", Null).Result
	' make a new File object
	Dim f As BANanoObject
	f.Initialize2("File",Array(Array(blob), mFileName, CreateMap("type": blob.getfield("type"))))
	Return f
End Sub

'Returns signature image as data URL
Sub toDataURL As String
	Dim res As String = ""
	Select Case sImageType
		Case "jpeg"
			res = SignaturePad.RunMethod("toDataURL", "image/jpeg").Result
		Case "png"
			res = SignaturePad.RunMethod("toDataURL", "image/png").Result
		Case "svg"
			res = SignaturePad.RunMethod("toDataURL", "image/svg+xml").Result
	End Select
	Return res
End Sub

Sub getValue As String
	If mElement = Null Then Return ""
	If isEmpty Then
		Return ""
	End If
	Dim s As String = toDataURL
	Return s
End Sub

' Returns true if canvas is empty, otherwise returns false
Sub isEmpty As Boolean
	Dim res As Boolean = SignaturePad.RunMethod("isEmpty", Null).Result
	Return res
End Sub

'Unbinds all event handlers
Sub off
	SignaturePad.RunMethod("off", Null)
End Sub

'Rebinds all event handlers
Sub on
	SignaturePad.RunMethod("on", Null)
End Sub

Sub ClearEnabled(b As Boolean)
	UI.SetEnabledByID($"${mName}_clear"$, b)
End Sub

Sub SaveEnabled(b As Boolean)
	UI.SetEnabledByID($"${mName}_save"$, b)
End Sub