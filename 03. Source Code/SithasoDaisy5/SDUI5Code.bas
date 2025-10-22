B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Download (e As BANanoEvent)
#Event: Refresh (e As BANanoEvent)
#Event: Back (e As BANanoEvent)
#Event: CustomButton (e As BANanoEvent)

#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _buttons (card), Description: Child Item _buttons (card)
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: Source Code, Description: Caption
#DesignerProperty: Key: Language, DisplayName: Language, FieldType: String, DefaultValue: vb, Description: Language, List: css|html|js|vb|json
#DesignerProperty: Key: CodeType, DisplayName: Code Type, FieldType: String, DefaultValue: default, Description: Code Type, List: card|default
#DesignerProperty: Key: ButtonSize, DisplayName: Button Size, FieldType: String, DefaultValue: md, Description: Button Size, List: lg|md|sm|xs|none
#DesignerProperty: Key: ButtonsOutlined, DisplayName: Buttons Outlined, FieldType: Boolean, DefaultValue: False, Description: Buttons Outlined
#DesignerProperty: Key: HasDownload, DisplayName: Has Download, FieldType: Boolean, DefaultValue: False, Description: Has Download
#DesignerProperty: Key: HasRefresh, DisplayName: Has Refresh, FieldType: Boolean, DefaultValue: False, Description: Has Refresh
#DesignerProperty: Key: HasBack, DisplayName: Has Back, FieldType: Boolean, DefaultValue: False, Description: Has Back
#DesignerProperty: Key: FileName, DisplayName: File Name, FieldType: String, DefaultValue: code.bas, Description: File Name
#DesignerProperty: Key: RawContent, DisplayName: Content, FieldType: String, DefaultValue: , Description: Content
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: none, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 800px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: xl, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private sContent As String = ""
	Private sHeight As String = "800px"
	Private sWidth As String = "full"
	Private sTextSize As String = ""
	Private Lines As List
	Private Original As List
	Public CODE_CSS As String = "css"
	Public CODE_JS As String = "js"
	Public CODE_HTML As String = "html"
	Public CODE_VB As String = "vb"
	Public CODE_OTHER As String = ""
	Public CODE_JSON As String = "json"
	Private sFileName As String
	Private sCaption As String
	Private sFileName As String
	Private sLanguage As String = "vb"
	Private sCodeType As String = "default"
	Private bHasBack As Boolean = False
	Private bHasDownload As Boolean = False
	Private bHasRefresh As Boolean = False
	Private sButtonSize As String = "md"
	Private bButtonsOutlined As Boolean
	Public FormattedCode As String
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "xl"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("Code") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesCode)' should be added for '${Name}'"$)
		Return
	End If
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	Lines.Initialize 
	Original.Initialize
	BANano.DependsOnAsset("prism.min.css")
	BANano.DependsOnAsset("prism.min.js")
	BANano.DependsOnAsset("beautify.min.js")
	BANano.DependsOnAsset("beautify-css.min.js")
	BANano.DependsOnAsset("beautify-html.min.js")
	BANano.DependsOnAsset("prettier.min.js")
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Caption", "Source Code")
	CustProps.Put("Language", "vb")
	CustProps.Put("CodeType", "default")
	CustProps.Put("ButtonSize", "md")
	CustProps.Put("ButtonsOutlined", False)
	CustProps.Put("HasDownload", False)
	CustProps.Put("HasRefresh", False)
	CustProps.Put("HasBack", False)
	CustProps.Put("FileName", "code.bas")
	CustProps.Put("RawContent", "")
	CustProps.Put("TextSize", "none")
	CustProps.Put("Height", "800px")
	CustProps.Put("Width", "full")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("Rounded", "none")
	CustProps.Put("RoundedBox", False)
	CustProps.Put("Shadow", "xl")
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
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sContent = Props.GetDefault("RawContent", "")
		sContent = UI.CStr(sContent)
		sHeight = Props.GetDefault("Height", "800px")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "full")
		sWidth = UI.CStr(sWidth)
		sTextSize = Props.GetDefault("TextSize", "")
		sTextSize = UI.CStr(sTextSize)
		sCaption = Props.GetDefault("Caption", "Source Code")
		sCaption = UI.CStr(sCaption)
		sFileName = Props.GetDefault("FileName", "code.bas")
		sFileName = UI.CStr(sFileName)
		sLanguage = Props.GetDefault("Language", "vb")
		sLanguage = UI.CStr(sLanguage)
		sCodeType = Props.GetDefault("CodeType", "default")
		sCodeType = UI.CStr(sCodeType)
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
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "xl")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
	End If
	'
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
'	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
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
	Select Case sCodeType
	Case "card"
		mElement = mTarget.Append($"[BANCLEAN]
			<div id="${mName}" class="card bg-base-100 flex flex-col ${xclasses}" ${xattrs} style="${xstyles}">
	        	<div id="${mName}_card_actions" class="card-actions justify-between">
	        		<h2 id="${mName}_card_title" class="p-4 card-title">${sCaption}</h2>
	        		<div id="${mName}_buttons" class="flex items-center mt-3 mr-3 justify-end gap-2"></div>
	        	</div>
	        	<div id="${mName}_card_code" class="card-content p-4 flex-1 overflow-hidden">
	        		<pre id="${mName}_pre" class="h-full overflow-y-auto whitespace-pre-wrap break-words break-all">
	        			<code id="${mName}_code" class="col block w-full">${sContent}</code>
	        		</pre>
	        	</div>
	        </div>"$).Get($"#${mName}"$)
		Case Else
		mElement = mTarget.Append($"[BANCLEAN]
        <div id="${mName}" class="mockup-code ${xclasses} flex flex-col overflow-hidden" ${xattrs} style="${xstyles}">
        	<pre id="${mName}_pre" class="h-full overflow-y-auto whitespace-pre-wrap break-words break-all">
        		<code id="${mName}_code" class="col block w-full"></code>
        	</pre>
        </div>"$).Get($"#${mName}"$)
	End Select
	setTextSize(sTextSize)
	setHasRefresh(bHasRefresh)
	setHasDownload(bHasDownload)
	setHasBack(bHasBack)
	setHeight(sHeight)
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
	If b = True Then
		UI.AddClass(mElement, "rounded-box")
	Else
		UI.RemoveClass(mElement, "rounded-box")
	End If
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

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub

Sub setButtonSize(s As String)
	CustProps.put("ButtonSize", s)
	sButtonSize = UI.CStr(s)
End Sub

Sub getButtonSize As String
	Return sButtonSize
End Sub

Sub setButtonsOutlined(b As Boolean)
	CustProps.put("ButtonsOutlined", b)
	bButtonsOutlined = b
End Sub

Sub getButtonsOutlined As Boolean
	Return bButtonsOutlined
End Sub

Sub SetToolbarButtonBadge(btn As String, value As String)
	btn = UI.CleanID(btn)
	If value = "" Or value = "0" Then
		UI.Hide($"#${mName}_${btn}_indicator"$)
	Else
		UI.Show($"#${mName}_${btn}_indicator"$)
		UI.SetTextByID($"#${mName}_${btn}_indicator"$, BANano.SF(value))
	End If
End Sub

Sub SetToolbarButtonBadgeColor(btn As String, value As String)
	UI.SetColorByID($"#${mName}_${btn}_indicator"$, "color", "badge", value)
End Sub

'make the badge round
Sub SetToolbarButtonBadgeSize(btn As String, value As String)
	UI.SetWidthByID($"#${mName}_${btn}_indicator"$, value)
	UI.SetHeightByID($"#${mName}_${btn}_indicator"$, value)
End Sub

Sub SetToolbarButtonBadgeRound(btn As String)
	UI.AddClassByID($"#${mName}_${btn}_indicator"$, "rounded-full")
	UI.AddClassByID($"#${mName}_${btn}_indicator"$, "aspect-square")
End Sub

Sub SetToolbarButtonBadgeTextColor(btn As String, value As String)
	UI.SetTextColorByID($"#${mName}_${btn}_indicator"$, value)
End Sub

Sub SetToolbarButtonTextColor(btn As String, value As String)		'ignoredeadcode
	UI.SetTextColorByID($"#${mName}_${btn}"$, value)
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
	UI.SetColorByID($"#${mName}_${btn}"$, "color", "btn", value)
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
	BANano.GetElement($"#${mName}_download"$).On("click", mCallBack, $"${mName}_Download"$)
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

'set Code Type
'options: card|default
Sub setCodeType(s As String)
	sCodeType = UI.CStr(s)
	CustProps.put("CodeType", s)
End Sub

Sub getCodeType As String
	Return sCodeType
End Sub

Sub setCaption(l As String)
	CustProps.put("Caption", l)
	sCaption = l
	If mElement = "" Then Return
	UI.SetTextByID($"${mName}_card_title"$, l)
End Sub

Sub getCaption As String
	Return sCaption
End Sub

Sub setLanguage(l As String)
	CustProps.put("Language", l)
	sLanguage = l
End Sub

Sub getLanguage As String
	Return sLanguage
End Sub

Sub setFileName(l As String)
	CustProps.put("FileName", l)
	sFileName = l
End Sub

Sub getFileName As String
	Return sFileName
End Sub

'set Text Size
'options: xs|none|sm|md|lg|xl|base|2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl
Sub setTextSize(s As String)				'ignoredeadcode
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	UI.SetTextSizeByID($"${mName}_code"$, s)
End Sub

Sub getTextSize As String
	Return sTextSize
End Sub

'set Content, refresh is called internally
Sub setContent(s As String)
	sContent = s
	CustProps.put("RawContent", s)
	If mElement = Null Then Return
	sContent = sContent.Replace("<br/>", CRLF)
	Dim mLines As List = UI.StrParse(CRLF, sContent)
	mLines = UI.ListTrimItems(mLines)
	Clear
	For Each cLine As String In mLines
		AddCode(cLine)
	Next
	Refresh
End Sub

Sub getContent As String
	Return FormattedCode
End Sub

'run refresh after
Sub Clear
	Lines.Initialize
	Original.Initialize
End Sub

'execute refresh after
Sub AddCode(cl As String)
	'	cl = cl.Replace(" ", "&nbsp;")
	'	cl = cl.Replace(QUOTE,"&quot;")
	'	cl = cl.Replace("'","&apos;")
	'	cl = cl.Replace("<","&lt;")
	'	cl = cl.Replace(">","&gt;")
	Lines.Add(cl)
	Original.Add(cl)
End Sub

'copy code from clipboard
Sub PasteFromClipBoard
	Dim clipText As Object = BANano.Await(BANano.Navigator.GetField("clipboard").RunMethod("readText", Null))
	Lines = UI.StrParse(CRLF, clipText)
	RefreshRaw
End Sub
Sub CopyToClipboard(txt As String)
	BANano.Await(BANano.Navigator.GetField("clipboard").RunMethod("writeText", txt))
End Sub

'do not replace ~ with dollar sign
Sub RefreshRaw
	Dim allCode As String = UI.Join(CRLF, Lines)
	Dim nCode As String = BeautifySourceCode(allCode)
	FormattedCode = nCode
	'
	BANano.GetElement($"#${mName}_pre"$).AddClass("language-" & sLanguage)
	BANano.GetElement($"#${mName}_code"$).AddClass("language-" & sLanguage)
	BANano.GetElement($"#${mName}_code"$).Empty
	BANano.GetElement($"#${mName}_code"$).SetText(nCode)
	Dim codeE As BANanoElement = BANano.GetElement($"#${mName}_code"$)
	Dim Prism As BANanoObject
	Prism.Initialize("Prism")
	Prism.RunMethod("highlightElement", codeE.toobject)
End Sub

'update the code contents
Sub Refresh
	Dim allCode As String = UI.Join(CRLF, Lines)
	allCode = allCode.Replace("~","$")
	Dim nCode As String = BeautifySourceCode(allCode)
	FormattedCode = nCode
	'
	BANano.GetElement($"#${mName}_pre"$).AddClass("language-" & sLanguage)
	BANano.GetElement($"#${mName}_code"$).AddClass("language-" & sLanguage)
	BANano.GetElement($"#${mName}_code"$).Empty
	BANano.GetElement($"#${mName}_code"$).SetText(nCode)
	Dim codeE As BANanoElement = BANano.GetElement($"#${mName}_code"$)
	Dim Prism As BANanoObject
	Prism.Initialize("Prism")
	Prism.RunMethod("highlightElement", codeE.toobject)
End Sub

Sub Download(FileName As String)
	Dim allCode As String = UI.Join(CRLF, Original)
	allCode = allCode.Replace("~","$")
	Dim nCode As String = BeautifySourceCode(allCode)
	UI.DownloadTextFile(nCode, FileName)
End Sub

'set Height
Sub setHeight(s As String)			'ignoredeadcode
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxHeightByID($"${mName}_pre"$, sHeight)
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub

'get Height
Sub getHeight As String
	Return sHeight
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

private Sub BeautifySourceCode(sc As String) As String
	Try
		Select Case sLanguage
			Case "js"
				Dim res As String = BANano.RunJavascriptMethod("js_beautify", Array(sc))
			Case "css"
				Dim res As String = BANano.RunJavascriptMethod("css_beautify", Array(sc))
			Case "html"
				Dim res As String = BANano.RunJavascriptMethod("html_beautify", Array(sc))
			Case "php"
				Return ""
				'Dim res As String = SDUIShared.BeautifyPHP(sc)
			Case "vb"
				Dim res As String = UI.BeautifyB4X(sc)
			Case "json"
				Dim opt As Map = CreateMap()
				opt.Put("indent_size", 4)
				opt.Put("space_in_empty_paren", True)
				Dim res As String = BANano.RunJavascriptMethod("js_beautify", Array(sc, opt))
			Case Else
				Dim res As String = UI.PrettierCode(sc)
		End Select
	Catch
		Return sc
	End Try
	Return res
End Sub

private Sub FileUploadHandler(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault
	e.StopPropagation
	Dim src As String = e.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim p2 As String = UI.MvField(src, 2, "_")
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${p2}_file"$)
	'click the file input to fire change event
	el.SetValue(Null)
	el.RunMethod("click", Null)
End Sub

