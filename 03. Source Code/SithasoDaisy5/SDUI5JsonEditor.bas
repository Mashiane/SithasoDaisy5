B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12
#Event: OnError (err As Object)
#Event: OnChange (err As Object)
#Event: Save (e As BANanoEvent)
#Event: Download (e As BANanoEvent)
#Event: Refresh (e As BANanoEvent)
#Event: Back (e As BANanoEvent)
#Event: CustomButton (e As BANanoEvent)
#Event: FileChange (e As BANanoEvent


#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: , Description: The title of the JSON editor
#DesignerProperty: Key: Mode, DisplayName: Mode, FieldType: String, DefaultValue: view, Description: Mode, List: code|form|preview|text|tree|view
#DesignerProperty: Key: Path, DisplayName: Path, FieldType: String, DefaultValue: , Description: Path
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 500px, Description: Width
#DesignerProperty: Key: ButtonSize, DisplayName: Button Size, FieldType: String, DefaultValue: md, Description: Button Size, List: lg|md|sm|xs|none
#DesignerProperty: Key: ButtonsOutlined, DisplayName: Buttons Outlined, FieldType: Boolean, DefaultValue: False, Description: Buttons Outlined
#DesignerProperty: Key: HasUpload, DisplayName: Has Upload, FieldType: Boolean, DefaultValue: True, Description: Has Upload
#DesignerProperty: Key: HasSave, DisplayName: Has Save, FieldType: Boolean, DefaultValue: True, Description: Has Save
#DesignerProperty: Key: HasDownload, DisplayName: Has Download, FieldType: Boolean, DefaultValue: True, Description: Has Download
#DesignerProperty: Key: HasRefresh, DisplayName: Has Refresh, FieldType: Boolean, DefaultValue: False, Description: Has Refresh
#DesignerProperty: Key: HasBack, DisplayName: Has Back, FieldType: Boolean, DefaultValue: True, Description: Has Back
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: lg, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: lg, Description: Shape/Rounded, List: square|circle|none|rounded|2xl|3xl|full|lg|md|sm|xl|0
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
	Private sHeight As String = "500px"
	Private sMode As String = "view"
	Private sWidth As String = "500px"
	Private jEditor As BANanoObject
	Private sJson As Object
	Private sJsonString As String
	Private sTitle As String = ""
	Private sShadow As String = "lg"
	Private sRounded As String = "lg"
	Private bHasBack As Boolean = True
	Private bHasDownload As Boolean = True
	Private bHasRefresh As Boolean = False
	Private sButtonSize As String = "md"
	Private bButtonsOutlined As Boolean
	Private sPath As String = ""
	Private bHasUpload As Boolean = True
	Private bHasSave As Boolean = True
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("JSONEditor") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesJSONEditor)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Options.Initialize
	BANano.DependsOnAsset("jsoneditor.min.css")
	BANano.DependsOnAsset("jsoneditor.min.js")
	BANano.DependsOnAsset("SVGRenderer.min.js")
	BANano.DependsOnAsset("pako.min.js")
	BANano.DependsOnAsset("bjl-converter.js")
	BANano.DependsOnAsset("bjl-renamer.js")
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Title", "")
	CustProps.Put("Mode", "view")
	CustProps.Put("Height", "500px")
	CustProps.Put("Width", "500px")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
	CustProps.Put("ButtonSize", "md")
	CustProps.Put("ButtonsOutlined", False)
	CustProps.Put("HasDownload", True)
	CustProps.Put("HasRefresh", False)
	CustProps.Put("HasBack", True)
	CustProps.Put("Shadow", "none")
	CustProps.Put("Rounded", "none")
	CustProps.Put("Path", "")
	CustProps.Put("HasUpload", True)
	CustProps.Put("HasSave", True)
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

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub

'get Rounded
Sub getRounded As String
	Return sRounded
End Sub

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub

'set Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
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
		sHeight = Props.GetDefault("Height", "500px")
		sHeight = UI.CStr(sHeight)
		sMode = Props.GetDefault("Mode", "view")
		sMode = UI.CStr(sMode)
		sWidth = Props.GetDefault("Width", "500px")
		sWidth = UI.CStr(sWidth)
		sTitle = Props.GetDefault("Title", "")
		sTitle = UI.CStr(sTitle)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bHasBack = Props.GetDefault("HasBack", False)
		bHasBack = UI.CBool(bHasBack)
		bHasDownload = Props.GetDefault("HasDownload", False)
		bHasDownload = UI.CBool(bHasDownload)
		bHasRefresh = Props.GetDefault("HasRefresh", False)
		bHasRefresh = UI.CBool(bHasRefresh)
		sButtonSize = Props.GetDefault("ButtonSize", "md")
		sButtonSize = UI.CStr(sButtonSize)
		bButtonsOutlined = Props.GetDefault("ButtonsOutlined", False)
		bButtonsOutlined = UI.CBool(bButtonsOutlined)
		sPath = Props.GetDefault("Path", "")
		sPath = UI.CStr(sPath)
		bHasUpload = Props.GetDefault("HasUpload", False)
		bHasUpload = UI.CBool(bHasUpload)
		bHasSave = Props.GetDefault("HasSave", True)
		bHasSave = UI.CBool(bHasSave)
	End If
	'
	' Apply additional styling
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	
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
	<div id="${mName}" class="card bg-base-100 flex flex-col ${xclasses}" ${xattrs} style="${xstyles}">
		<div id="${mName}_card_actions" class="card-actions justify-between">
			<h2 id="${mName}_card_title" class="p-4 card-title">${sTitle}</h2>
    		<div id="${mName}_buttons" class="flex items-center mt-3 mr-3 justify-end gap-2"></div>
    	</div>
    	<div id="${mName}_card_content" class="card-content p-4 flex-1 overflow-hidden">
			<div id="${mName}_content" class="w-full h-full"></div>
    	</div>
		<input id="${mName}_file" type="file" class="hidden"></input>
    </div>"$).Get($"#${mName}"$)
	BANano.GetElement($"#${mName}_file"$).On("change", mCallBack, $"${mName}_filechange"$)
	setHasUpload(bHasUpload)
	setHasSave(bHasSave)
	setHasDownload(bHasDownload)
	setHasRefresh(bHasRefresh)
	setHasBack(bHasBack)
	Refresh
End Sub

Sub setPath(s As String)
	sPath = s
	CustProps.Put("Path", sPath)
	If mElement = Null Then Return
	If sPath <> "" Then
		sJson = BANano.Await(BANano.GetFileAsJSON($"${sPath}?${DateTime.Now}"$, Null))
		setJson(sJson)
	End If
End Sub

Sub getPath As String
	Return sPath
End Sub

' Property getters and setters
Sub setTitle(s As String)
	sTitle = s
	CustProps.Put("Title", sTitle)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_card_title"$, sTitle)
End Sub

Sub getTitle As String
	Return sTitle
End Sub

Sub Refresh
	Dim err As Object
	Dim cbError As BANanoObject = BANano.CallSub(mCallBack, mName & "_onerror", Array(err))
	Dim cbonChange As BANanoObject = BANano.CallSub(mCallBack, mName & "_onchange", Array(err))
	'
	If sPath <> "" Then
		sJson = BANano.Await(BANano.GetFileAsJSON($"${sPath}?${DateTime.Now}"$, Null))
	End If
	'
	Dim jsonObj As Object = sJson
	If sJson Is String Then
		jsonObj = BANano.FromJson(sJson)
	End If
	Dim mContent As BANanoElement = BANano.GetElement($"#${mName}_content"$)
	Dim mObject As BANanoObject = mContent.ToObject
	
	Options.Initialize 
	Options.put("mode", sMode)
	Options.Put("modes", Array("code", "form", "preview", "text", "tree", "view"))
	Options.put("onError", cbError)
	Options.Put("onChange", cbonChange)
	jEditor.Initialize2("JSONEditor", Array(mObject, Options))
	jEditor.RunMethod("set", jsonObj)
End Sub


Sub setJsonString(s As String)
	sJsonString = s
	Dim x As Map = BANano.FromJson(s)
	setJson(x)
End Sub

Sub getJsonString As String
	Return sJsonString
End Sub

'set Json
Sub setJson(s As Object)
	sJson = s
	If mElement = Null Then Return
	Dim jsonObj As Object = sJson
	If sJson Is String Then
		jsonObj = BANano.FromJson(sJson)
	End If
	jEditor.RunMethod("set", jsonObj)
End Sub

'get Json
Sub getJson As Object
	Return sJson
End Sub

'get the json content of the editor
public Sub ToJson() As Object
	If jEditor = Null Then Return Null
	Dim xJson As Object = jEditor.RunMethod("get", Null).Result
	Return xJson
End Sub

'get the text content of the editor
public Sub ToString() As String
	If jEditor = Null Then Return ""
	Dim stext As String = jEditor.RunMethod("getText", Null).Result
	Return stext
End Sub

public Sub ExpandAll()
	If jEditor = Null Then Return
	jEditor.RunMethod("expandAll", Null)
End Sub

public Sub CollapseAll()
	If jEditor = Null Then Return
	jEditor.RunMethod("collapseAll", Null)
End Sub

public Sub Focus()
	If jEditor = Null Then Return
	jEditor.RunMethod("focus", Null)
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "height", s)
End Sub
'set Mode
'options: code|form|preview|text|tree|view
Sub setMode(s As String)
	sMode = s
	CustProps.put("Mode", s)
	Options.put("mode", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "width", s)
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Mode
Sub getMode As String
	Return sMode
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

Sub SetToolbarButtonBadge(btn As String, value As String)
	btn = UI.CleanID(btn)
	If value = "" Or value = "0" Then
		UI.Hide($"#${mName}_${btn}_indicator"$)
	Else
		UI.Show($"#${mName}_${btn}_indicator"$)
		UI.SetTextByID($"${mName}_${btn}_indicator"$, BANano.SF(value))
	End If
End Sub

Sub SetToolbarButtonBadgeColor(btn As String, value As String)
	UI.SetColorByID($"${mName}_${btn}_indicator"$, "color", "badge", value)
End Sub

'make the badge round
Sub SetToolbarButtonBadgeSize(btn As String, value As String)
	UI.SetWidthByID($"${mName}_${btn}_indicator"$, value)
	UI.SetHeightByID($"${mName}_${btn}_indicator"$, value)
End Sub

Sub SetToolbarButtonBadgeRound(btn As String)
	UI.AddClassByID($"${mName}_${btn}_indicator"$, "rounded-full")
	UI.AddClassByID($"${mName}_${btn}_indicator"$, "aspect-square")
End Sub

Sub SetToolbarButtonBadgeTextColor(btn As String, value As String)
	UI.SetTextColorByID($"${mName}_${btn}_indicator"$, value)
End Sub

Sub SetToolbarButtonTextColor(btn As String, value As String)		'ignoredeadcode
	UI.SetTextColorByID($"${mName}_${btn}"$, value)
End Sub

'change the visibility of a button
Sub SetToolbarButtonVisible(btn As String, value As Boolean)
	If value Then
		UI.Show($"#${mName}_${btn}"$)
		UI.Show($"#${mName}_${btn}_indicator"$)
	Else
		UI.Hide($"#${mName}_${btn}"$)
		UI.Hide($"#${mName}_${btn}_indicator"$)
	End If
End Sub

'change a toolbar button color
Sub SetToolbarButtonColor(btn As String, value As String)
	UI.SetColorByID($"${mName}_${btn}"$, "color", "btn", value)
End Sub

Sub SetToolbarButtonDisabled(btn As String, b As Boolean)
	btn = UI.CleanID(btn)
	If b Then
		BANano.GetElement($"#${mName}_${btn}"$).AddClass("!btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).SetAttr("disabled", "disabled")
		BANano.GetElement($"#${mName}_${btn}"$).SetAttr("aria-disabled", "true")
	Else
		BANano.GetElement($"#${mName}_${btn}"$).RemoveClass("!btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).RemoveAttr("disabled")
		BANano.GetElement($"#${mName}_${btn}"$).RemoveAttr("aria-disabled")
	End If
End Sub
Sub SetToolbarButtonEnable(btn As String, b As Boolean)
	btn = UI.CleanID(btn)
	If b Then
		BANano.GetElement($"#${mName}_${btn}"$).RemoveClass("!btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).RemoveAttr("disabled")
		BANano.GetElement($"#${mName}_${btn}"$).RemoveAttr("aria-disabled")
	Else
		BANano.GetElement($"#${mName}_${btn}"$).AddClass("!btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).SetAttr("disabled", "disabled")
		BANano.GetElement($"#${mName}_${btn}"$).SetAttr("aria-disabled", "true")
	End If
End Sub

Sub SetToolbarButtonLoading(btn As String, b As Boolean)
	btn = UI.CleanID(btn)
	If b Then
		BANano.GetElement($"#${mName}_${btn}_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_${btn}"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_${btn}"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_${btn}_icon"$).RemoveClass("hidden")
	End If
End Sub

Sub setHasRefresh(b As Boolean)			'ignoredeadcode
	CustProps.put("HasRefresh", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("refresh", "./assets/arrows-rotate-solid.svg", "#2196f3", "#ffffff")
End Sub

Sub getHasRefresh As Boolean
	Return bHasRefresh
End Sub


Sub setHasBack(b As Boolean)				'ignoredeadcode
	bHasBack = b
	CustProps.put("HasBack", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("back", "./assets/arrow-right-from-bracket-solid.svg", "#3f51b5", "#ffffff")
End Sub

Sub getHasBack As Boolean
	Return bHasBack
End Sub

Sub setHasDownload(b As Boolean)				'ignoredeadcode
	bHasDownload = b
	CustProps.Put("HasDownload", b)
	If bHasDownload = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("download", "./assets/download-solid.svg", "#FFFF99", "#000000")
End Sub

Sub FileNullify
	BANano.GetElement($"#${mName}_file"$).SetValue(Null)
End Sub

'<code>
'Sub tblName_savesingle (e As BANanoEvent)
'End Sub
'</code>
Sub setHasSave(b As Boolean)				'ignoredeadcode
	CustProps.put("HasSave", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("save", "./assets/floppy-disk-solid.svg", "#7289da", "#ffffff")
End Sub

Sub getHasSave As Boolean
	Return bHasSave
End Sub

'<code>
'Sub tbl_FileChange (e As BANanoEvent)
'End Sub
'</code>
Sub setHasUpload(b As Boolean)				'ignoredeadcode
	CustProps.put("HasUpload", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("upload", "./assets/upload-solid.svg", "#2196f3", "#ffffff")
	BANano.GetElement($"#${mName}_upload"$).off("click")
	BANano.GetElement($"#${mName}_upload"$).On("click", Me, "UploadToolbarHandler")
End Sub

private Sub UploadToolbarHandler(e As BANanoEvent)
	e.PreventDefault
	e.StopPropagation
	'click the file input to fire change event
	BANano.GetElement($"#${mName}_file"$).SetValue(Null)
	BANano.GetElement($"#${mName}_file"$).RunMethod("click", Null)
End Sub

Sub getHasUpload As Boolean
	Return bHasUpload
End Sub

'move the back button to the end
Sub MoveBackButton							'ignoredeadcode
	If bHasBack = False Then Return
	Dim backKey As String = $"#${mName}_back"$
	If BANano.Exists(backKey) Then
		Dim bBtn As BANanoElement = BANano.GetElement(backKey)
		bBtn.Remove
		setHasBack(True)
	End If
End Sub

Sub getHasDownload As Boolean
	Return bHasDownload
End Sub

Sub getToolBarButtonID(btnID As String) As String
	btnID = UI.CleanID(btnID)
	Return $"${mName}_${btnID}"$
End Sub

Sub AddToolbarButton(btnID As String, btnCaption As String, btnColor As String) As SDUI5Button
	Dim btn As SDUI5Button = AddToolbarActionButton(btnID, btnCaption, btnColor)
	Return btn
End Sub
'add an action button
'<code>
'Sub tblname_btnid (e As BANanoEvent)
'End Sub
'</code>
Sub AddToolbarActionButton(btnID As String, btnCaption As String, btnColor As String) As SDUI5Button		'ignoredeadcode
	If BANano.Exists($"#${mName}_buttons"$) = False Then Return Null
	UI.Show($"${mName}_buttons"$)
	btnID = UI.CleanID(btnID)
	Dim btn As SDUI5Button
	btn.Initialize(mCallBack, $"${mName}_${btnID}"$, $"${mName}_${btnID}"$)
	btn.ParentID = $"${mName}_buttons"$
	btn.Text = btnCaption
	btn.BackgroundColor = btnColor
	btn.Outline = bButtonsOutlined
	btn.Size = sButtonSize
	btn.AddComponent
	btn.AddClass("mx-1")
	btn.UI.OnEventByID($"${mName}_${btnID}"$, "click", mCallBack, $"${mName}_${btnID}"$)
	Return btn
End Sub

Sub SetToolbarButtonToolTip(btnID As String, tooltip As String, color As String, position As String)			'ignoredeadcode
	btnID = UI.CleanID(btnID)
	Dim col As String = UI.FixColor("tooltip", color)
	Dim pos As String = UI.FixSize("tooltip", position)
	UI.AddClassByID($"${mName}_${btnID}"$, $"tooltip ${pos} ${col}"$)
	UI.SetAttrByID($"${mName}_${btnID}"$, "data-tip", tooltip)
End Sub

Sub AddToolbarButtonIcon(btnID As String, sIcon As String, btnColor As String, iconColor As String) As SDUI5Button			'ignoredeadcode
	Dim btn As SDUI5Button = AddToolbarActionButtonIcon(btnID, sIcon, btnColor, iconColor)
	Return btn
End Sub



Sub SetToolbarButtonTextColorWhite(id As String)
	SetToolbarButtonTextColor(id, "#ffffff")
End Sub

'add an action button
'<code>
'Sub tblname_btnid (e As BANanoEvent)
'End Sub
'</code>
Sub AddToolbarActionButtonIcon(btnID As String, sIcon As String, btnColor As String, iconColor As String) As SDUI5Button			'ignoredeadcode
	If BANano.Exists($"#${mName}_buttons"$) = False Then Return Null
	UI.Show($"${mName}_buttons"$)
	btnID = UI.CleanID(btnID)
	'
	Dim btn As SDUI5Button
	btn.Initialize(mCallBack, $"${mName}_${btnID}"$, $"${mName}_${btnID}"$)
	btn.ParentID = $"${mName}_buttons"$
	btn.Text = ""
	btn.BackgroundColor = btnColor
	btn.Shape = "circle"
	btn.Outline = bButtonsOutlined
	btn.LeftIcon = sIcon
	btn.Size = sButtonSize
	btn.IconSize = sButtonSize
	btn.LeftIconColor = iconColor
	btn.TextVisible = False
	btn.IndicatorSize = "sm"
	btn.AddComponent
	UI.ResizeIconByIDFromButtonSize($"${mName}_${btnID}_lefticon"$, sButtonSize)
	btn.UI.OnEventByID($"${mName}_${btnID}"$, "click", mCallBack, $"${mName}_${btnID}"$)
	btn.AddClass("mx-1 flex justify-center items-center aspect-square indicator")
	btn.RemoveBadge
	btn.RemoveRightImage
	btn.RemoveRightIcon
	btn.RemoveText
	btn.RemoveLeftImage
	SetToolbarButtonBadge(btnID, "0")
	SetToolbarButtonBadgeRound(btnID)
	SetToolbarButtonBadgeColor(btnID, "primary")
	SetToolbarButtonBadgeSize(btnID, "6")
	Return btn
End Sub

'add a file upload button with table event
'<code>
'Sub tblName_{btnid}_filechange (e As BANAnoEvent)
'tblName.FileChangeEvent
'End Sub
'</code>
Sub AddToolbarFileUpload(btnID As String, sIcon As String, btnColor As String, bMultiple As Boolean) As SDUI5Button		'ignoredeadcode
	If BANano.Exists($"#${mName}_buttons"$) = False Then Return Null
	UI.Show($"${mName}_buttons"$)
	btnID = UI.CleanID(btnID)
	Dim btn As SDUI5Button = AddToolbarActionButtonIcon(btnID, sIcon, btnColor, "")
	BANano.GetElement($"#${mName}_buttons"$).Append($"<input id="${mName}_${btnID}_file" type="file" class="hidden"/>"$)
	BANano.GetElement($"#${mName}_${btnID}"$).off("click")
	BANano.GetElement($"#${mName}_${btnID}"$).On("click", Me, "FileUploadHandler")
	BANano.GetElement($"#${mName}_${btnID}_file"$).On("change", mCallBack, $"${mName}_${btnID}_filechange"$)
	If bMultiple Then BANano.GetElement($"#${mName}_${btnID}_file"$).SetAttr("multiple", "multiple")
	Return btn
End Sub