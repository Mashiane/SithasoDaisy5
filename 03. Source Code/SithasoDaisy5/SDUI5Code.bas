B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: Source Code, Description: Caption
#DesignerProperty: Key: Language, DisplayName: Language, FieldType: String, DefaultValue: vb, Description: Language, List: css|html|js|vb
#DesignerProperty: Key: CodeType, DisplayName: Code Type, FieldType: String, DefaultValue: default, Description: Code Type, List: card|default
#DesignerProperty: Key: FileName, DisplayName: File Name, FieldType: String, DefaultValue: code.bas, Description: File Name
#DesignerProperty: Key: RawContent, DisplayName: Content, FieldType: String, DefaultValue: , Description: Content
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: none, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: full, Description: Width
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
	Private sContent As String = ""
	Private sHeight As String = ""
	Private sWidth As String = "full"
	Private sTextSize As String = ""
	Private Lines As List
	Private Original As List
	Public CODE_CSS As String = "css"
	Public CODE_JS As String = "js"
	Public CODE_HTML As String = "html"
	Public CODE_VB As String = "vb"
	Public CODE_OTHER As String = ""
	Private sFileName As String
	Private sCaption As String
	Private sFileName As String
	Private sLanguage As String = "vb"
	Private sCodeType As String = "default"
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
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
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
		sHeight = Props.GetDefault("Height", "")
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
	End If
	'
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
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
			<div id="${mName}" class="card bg-base-100 shadow-xl ${xclasses}" ${xattrs} style="${xstyles}">
	        	<div id="${mName}_card_actions" class="card-actions justify-between">
	        		<h2 id="${mName}_card_title" class="p-4 card-title">${sCaption}</h2>
	        		<div id="${mName}_buttons" class="mt-3 mr-3 justify-end gap-2"></div>
	        	</div>
	        	<div id="${mName}_card_code" class="m-2">
	        		<pre id="${mName}_pre">
	        			<code id="${mName}_code" class="col">${sContent}</code>
	        		</pre>
	        	</div>
	        </div>"$).Get($"#${mName}"$)
		Case Else
		mElement = mTarget.Append($"[BANCLEAN]
        <div id="${mName}" class="mockup-code ${xclasses}" ${xattrs} style="${xstyles}">
        	<pre id="${mName}_pre">
        		<code id="${mName}_code" class="col"></code>
        	</pre>
        </div>"$).Get($"#${mName}"$)
	End Select
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

'set Content
Sub setContent(s As String)
	sContent = s
	CustProps.put("Content", s)
	If mElement = Null Then Return
	sContent = sContent.Replace(CRLF, ";")
	sContent = sContent.Replace("<br/>", ";")
	Dim mLines As List = UI.StrParse(";", sContent)
	mLines = UI.ListTrimItems(mLines)
	Clear
	For Each cLine As String In mLines
		AddCode(cLine)
	Next
	Refresh
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

Sub RefreshRaw
	Dim allCode As String = UI.Join(CRLF, Lines)
	Dim nCode As String = BeautifySourceCode(allCode)
	'
	BANano.GetElement($"#${mName}_pre"$).AddClass("language-" & sLanguage)
	BANano.GetElement($"#${mName}_code"$).AddClass("language-" & sLanguage)
	BANano.GetElement($"#${mName}_code"$).Empty
	BANano.GetElement($"#${mName}_code"$).Append(nCode)
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
	'
	BANano.GetElement($"#${mName}_pre"$).AddClass("language-" & sLanguage)
	BANano.GetElement($"#${mName}_code"$).AddClass("language-" & sLanguage)
	BANano.GetElement($"#${mName}_code"$).Empty
	BANano.GetElement($"#${mName}_code"$).Append(nCode)
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

'get Content
Sub getContent As String
	Return sContent
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
			Case Else
				Dim res As String = UI.PrettierCode(sc)
		End Select
	Catch
		Return sc
	End Try
	Return res
End Sub