B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: InputType, DisplayName: Input Type, FieldType: String, DefaultValue: normal, Description: Input Type, List: normal|legend|buttons|label-input
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Please select a file, Description: Label
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Ghost, DisplayName: Ghost, FieldType: Boolean, DefaultValue: False, Description: Ghost
#DesignerProperty: Key: HideSelectorButton, DisplayName: Hide Selector Button, FieldType: Boolean, DefaultValue: False, Description: Hide Selector Button
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: Validator, DisplayName: Validator, FieldType: Boolean, DefaultValue: False, Description: Validator
#DesignerProperty: Key: ValidatorHint, DisplayName: Validator Hint, FieldType: String, DefaultValue: , Description: Validator Hint
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-200, Description: Background Color
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: Boolean, DefaultValue: True, Description: Border
#DesignerProperty: Key: BorderColor, DisplayName: Border Color, FieldType: String, DefaultValue: base-300, Description: Border Color
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
	Private sColor As String = "none"
	Private bGhost As Boolean = False
	Private sHint As String = ""
	Private sLabel As String = "Please select a file"
	Private bRequired As Boolean = False
	Private sSize As String = "none"
	Private bValidator As Boolean = False
	Private sValidatorHint As String = ""
	Private sInputType As String = "normal"
	Private sWidth As String = "full"
	Private bHideSelectorButton As Boolean = False
	Private sBackgroundColor As String = "base-200"
	Private bBorder As Boolean = True
	Private sBorderColor As String = "base-300"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	UI.Initialize(Me)
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
'set Visible
Sub setVisible(b As Boolean)
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	Select Case sInputType
	Case "normal"		
		UI.SetVisible(mElement, b)
	Case Else
		UI.SetVisibleByID($"${mName}_control"$, b)
	End Select
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
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, methodName)
End Sub
'set Position Style
'options: static|relative|fixed|absolute|sticky|none
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
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bGhost = Props.GetDefault("Ghost", False)
		bGhost = modSD5.CBool(bGhost)
		sHint = Props.GetDefault("Hint", "")
		sHint = modSD5.CStr(sHint)
		sLabel = Props.GetDefault("Label", "Please select a file")
		sLabel = modSD5.CStr(sLabel)
		bRequired = Props.GetDefault("Required", False)
		bRequired = modSD5.CBool(bRequired)
		sSize = Props.GetDefault("Size", "none")
		sSize = modSD5.CStr(sSize)
		If sSize = "none" Then sSize = ""
		bValidator = Props.GetDefault("Validator", False)
		bValidator = modSD5.CBool(bValidator)
		sValidatorHint = Props.GetDefault("ValidatorHint", "")
		sValidatorHint = modSD5.CStr(sValidatorHint)
		sInputType = Props.GetDefault("InputType", "normal")
		sInputType = modSD5.CStr(sInputType)
		bVisible = Props.GetDefault("Visible", True)
		bVisible = modSD5.CBool(bVisible)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = modSD5.CStr(sWidth)
		bHideSelectorButton = Props.GetDefault("HideSelectorButton", False)
		bHideSelectorButton = modSD5.CBool(bHideSelectorButton)
		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-200")
		sBackgroundColor = modSD5.CStr(sBackgroundColor)
		bBorder = Props.GetDefault("Border", True)
		bBorder = modSD5.CBool(bBorder)
		sBorderColor = Props.GetDefault("BorderColor", "base-300")
		sBorderColor = modSD5.CStr(sBorderColor)
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = modSD5.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
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
	Select Case sInputType
	Case "legend"
		mElement = mTarget.Append($"[BANCLEAN]
				<fieldset id="${mName}_control" class="fieldset ${xclasses}" ${xattrs} style="${xstyles}">
	        		<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
	        		<div id="${mName}_join" class="join">
	          			<input id="${mName}" type="file" class="file-input join-item tlradius trradius blradius brradius w-full"/>
	          			<div id="${mName}_required" class="indicator join-item hidden">
	            			<span id="${mName}_badge" class="indicator-item badge badge-error size-2 p-0 hidden"></span>
	          			</div>
	          		</div>          
	        		<p id="${mName}_hint" class="fieldset-label hide">${sHint}</p>
	      		</fieldset>"$).Get("#" & mName)
			setBackgroundColor(sBackgroundColor)
			setBorder(bBorder)
			setBorderColor(sBorderColor)
			setRoundedBox(bRoundedBox)
			setShadow(sShadow)
	Case "buttons"
		mElement = mTarget.Append($"[BANCLEAN]
				<div id="${mName}_control" class="join ${xclasses}" ${xattrs} style="${xstyles}">
          			<input id="${mName}" type="file" class="file-input join-item tlradius trradius blradius brradius w-full"></input>
          			<div id="${mName}_required" class="indicator join-item hidden">
            			<span id="${mName}_badge" class="indicator-item badge badge-error size-2 p-0 hidden"></span>
          			</div>
        		</div>"$).Get("#" & mName)
		Case "label-input"
			mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}_control" class="${xclasses}" ${xattrs} style="${xstyles}">
				<label id="${mName}_legend" class="fieldset-label">${sLabel}</label>
				<input id="${mName}" class="file-input w-full" type="file"></input>
			</div>"$).Get("#" & mName)
	Case "normal"
		mElement = mTarget.Append($"[BANCLEAN]<input id="${mName}" type="file" class="${xclasses} file-input" ${xattrs} style="${xstyles}"></input>"$).Get("#" & mName)
	End Select
	setColor(sColor)
	setGhost(bGhost)
	setRequired(bRequired)
	setSize(sSize)
	setWidth(sWidth)
	setHideSelectorButton(bHideSelectorButton)
	UI.OnEvent(mElement, "change", mCallBack, $"${mName}_change"$)
'	setVisible(bVisible)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)			'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If sInputType <> "legend" Then Return
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_control"$, sBackgroundColor)
End Sub

'set Border
Sub setBorder(b As Boolean)				'ignoredeadcode
	bBorder = b
	CustProps.put("Border", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_control"$, "border")
	Else
		UI.RemoveClassByID($"${mName}_control"$, "border")
	End If
End Sub

'set Border Color
Sub setBorderColor(s As String)			'ignoredeadcode
	sBorderColor = s
	CustProps.put("BorderColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBorderColorByID($"${mName}_control"$, s)
End Sub

'set Rounded Box
Sub setRoundedBox(b As Boolean)			'ignoredeadcode
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_control"$, "rounded-box")
	Else
		UI.RemoveClassByID($"${mName}_control"$, "rounded-box")
	End If
End Sub

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)					'ignoredeadcode
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadowByID($"${mName}_control"$, s)
End Sub

'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Border
Sub getBorder As Boolean
	Return bBorder
End Sub
'get Border Color
Sub getBorderColor As String
	Return sBorderColor
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub


'set Hide Selector Button
Sub setHideSelectorButton(b As Boolean)				'ignoredeadcode
	bHideSelectorButton = b
	CustProps.put("HideSelectorButton", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "[&::file-selector-button]:hidden")
	Else
		UI.RemoveClass(mElement, "[&::file-selector-button]:hidden")
	End If
End Sub

'get Hide Selector Button
Sub getHideSelectorButton As Boolean
	Return bHideSelectorButton
End Sub

'set Width
Sub setWidth(s As String)				'ignoredeadcode
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	Select Case sInputType
		Case "legend"
			UI.SetWidthByID($"${mName}_join"$, s)
		Case "buttons", "label-input"
			UI.SetWidthByID($"${mName}_control"$, s)
		Case "normal"
			If s <> "" Then UI.SetWidth(mElement, sWidth)
	End Select
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

'legend|normal
Sub setInputType(s As String)
	sInputType = s
	CustProps.Put("InputType", s)
End Sub

Sub getInputType As String
	Return sInputType
End Sub


'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)     'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColor(mElement, "color", "file-input", sColor)
End Sub
'set Ghost
Sub setGhost(b As Boolean)			'ignoredeadcode
	bGhost = b
	CustProps.put("Ghost", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "file-input-ghost")
	Else
		UI.RemoveClass(mElement, "file-input-ghost")
	End If
End Sub
'set Hint
Sub setHint(s As String)
	sHint = s
	CustProps.put("Hint", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_hint"$, s)
	If s = "" Then
		UI.SetVisibleByID($"${mName}_hint"$, False)
	Else
		UI.SetVisibleByID($"${mName}_hint"$, True)
	End If
End Sub
'set Label
Sub setLabel(s As String)
	sLabel = s
	CustProps.put("Label", s)
	If mElement = Null Then Return
	UI.SetAttr(mElement, "label", s)
End Sub
'set Required
Sub setRequired(b As Boolean)				'ignoredeadcode
	bRequired = b
	CustProps.put("Required", b)
	If mElement = Null Then Return
	If b = True Then
		UI.SetAttr(mElement, "required", b)
		UI.SetVisibleByID($"${mName}_required"$, True)
		UI.SetVisibleByID($"${mName}_badge"$, True)
	Else
		UI.RemoveAttr(mElement, "required")
		UI.SetVisibleByID($"${mName}_required"$, False)
		UI.SetVisibleByID($"${mName}_badge"$, False)
	End If
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)				'ignoredeadcode
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "file-input", sSize)
End Sub
'set Validator
Sub setValidator(b As Boolean)
	bValidator = b
	CustProps.put("Validator", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "validator")
	Else
		UI.RemoveClass(mElement, "validator")
	End If
End Sub
'set Validator Hint
Sub setValidatorHint(s As String)
	sValidatorHint = s
	CustProps.put("ValidatorHint", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "validator-hint", s)
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Ghost
Sub getGhost As Boolean
	Return bGhost
End Sub
'get Hint
Sub getHint As String
	Return sHint
End Sub
'get Label
Sub getLabel As String
	Return sLabel
End Sub
'get Required
Sub getRequired As Boolean
	Return bRequired
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Validator
Sub getValidator As Boolean
	Return bValidator
End Sub
'get Validator Hint
Sub getValidatorHint As String
	Return sValidatorHint
End Sub

'<code>
'Sub fi1_change(e As BANanoEvent)
''has the file been specified
'Dim fileObj As Map = fi1.GetFile
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = modSD5.GetFileDetails(fileObj)
''get the file name
'Dim fn As String = fileDet.FileName
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = modSD5.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''**** UPLOAD
''fileDet = modSD5.UploadFileWait(fileObj)
''fileDet = modSD5.UploadFileOptionsWait(fileObj, "../assets", "n")
''get the file name
''Dim fn As String = fileDet.FileName
''get the status of the upload
''Dim sstatus As String = fileDet.Status
''Select Case sstatus
''Case "error"
''Case "success"
''End Select
''the the full upload path of the file
''Dim fp As String = fileDet.FullPath
''**** UPLOAD
''Dim fJSON As Map = BANano.Await(modSD5.readAsJsonWait(fileObj))
''Dim fBuffer As Object = BANano.Await(modSD5.readAsArrayBufferWait(fileObj))
''Dim fText As String = BANano.Await(modSD5.readAsTextWait(fileObj))
''Dim fText As String = BANano.Await(modSD5.readAsDataURLWait(fileObj))
''update state of some element like an image
''for vfield use SetValue
''vimage.src = fText
''clear the file input
''fil1.Value = ""
'End Sub
'</code>
Sub ChangeSingle
End Sub
'<code>
''****for multiple files
'Sub fi1_change(e As BANanoEvent)
''has the files been selected
'Dim fileList As List = fi1.GetFiles
'If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return
''will store list of uploaded file
'Dim uploads As List
'uploads.Initialize
''loop through each selected file
'for each fileObj As Map in fileList
''get file details
'Dim fileDet As FileObject
'fileDet = modSD5.GetFileDetails(fileObj)
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = modSD5.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''start uploading the file
'fileDet = modSD5.UploadFileWait(fileObj)
''fileDet = modSD5.UploadFileOptionsWait(fileObj, "../assets", "n")
''get the file name
'Dim fn As String = fileDet.FileName
''get the status of the upload
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'Case "success"
'End Select
''the the full upload path of the file
'Dim fp As String = fileDet.FullPath
''update the lists of uploaded file with the path
''uploads.Add(fp)
'next
''clear the file input
'fil1.Value = ""
'End Sub
'</code>
Sub ChangeMultiple
End Sub

'get the list of selected files
Sub GetFiles As List
	'get the selected files, if any
	If mElement.GetField("files").GetField("length").Result = 0 Then 'ignore
		Return Null
	Else
		Dim files As Object = mElement.GetField("files").Result
		Dim res As List = files.As(List)
		Return res
	End If
End Sub

'get selected file
Sub GetFile As Map
	If mElement.GetField("files").GetField("length").Result = 0 Then 'ignore
		Return Null
	Else
		Dim obj() As BANanoObject = mElement.GetField("files").Result
		Return obj(0)
	End If
End Sub

'ensure we can select the same file again
Sub Nullify
	mElement.SetValue(Null)
End Sub

'run validation
Sub IsBlank As Boolean
	Dim v As Object = GetFile
	If BANano.IsNull(v) Then
		If sInputType = "legend" Then
			setBorderColor("error")
		Else
			setColor("error")
		End If
		Return True
	End If
	If sInputType = "legend" Then
		setBorderColor("success")
	Else
		setColor("success")
	End If
	Return False
End Sub

Sub ResetValidation
	Try
		If sInputType = "legend" Then
			setBorderColor("success")
		Else
			setColor("success")
		End If
	Catch
		
	End Try		'ignore
End Sub