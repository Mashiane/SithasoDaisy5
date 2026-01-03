B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change (Value As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 600px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Width
#DesignerProperty: Key: MaxStack, DisplayName: Max Stack, FieldType: Int, DefaultValue: 1000, Description: Max Stack
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue: Start typing..., Description: Placeholder
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
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
	Public Tag As Object
	Private sHeight As String = "600px"
	Private iMaxStack As Int = 1000
	Private sPlaceholder As String = "Start typing..."
	Private sWidth As String = "100%"
	Private options As Map
	Private qe As BANanoObject
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	If BANano.AssetsIsDefined("Quill") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesQuill)' should be added for '${Name}'"$)
		Return
	End If
	BANano.DependsOnAsset("quill.snow.css")
	BANano.DependsOnAsset("highlight.min.css")
	BANano.DependsOnAsset("quill-custom.min.css")
	BANano.DependsOnAsset("highlight.min.js")
	BANano.DependsOnAsset("quill.min.js")
	BANano.DependsOnAsset("purify.min.js")
	BANano.DependsOnAsset("quill-custom.min.js")
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	options.Initialize 
	SetDefaults
End Sub
Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Height", "600px")
	CustProps.Put("MaxStack", 1000)
	CustProps.Put("Placeholder", "Start typing...")
	CustProps.Put("Width", "100%")
	CustProps.Put("Visible", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
End Sub
'set properties from an outside source
Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.Get("ParentID")
End Sub
Sub GetProperties As Map
	Return CustProps
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
		UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		UI.ExcludeEnabled = True
		sHeight = Props.GetDefault("Height", "600px")
		sHeight = UI.CStr(sHeight)
		iMaxStack = Props.GetDefault("MaxStack", 1000)
		iMaxStack = UI.CInt(iMaxStack)
		sPlaceholder = Props.GetDefault("Placeholder", "Start typing...")
		sPlaceholder = UI.CStr(sPlaceholder)
		sWidth = Props.GetDefault("Width", "100%")
		sWidth = UI.CStr(sWidth)
	End If
	'
	If sHeight <> "" Then UI.AddStyleDT("height", sHeight)
	If sWidth <> "" Then UI.AddStyleDT("width", sWidth)
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
		<div id="${mName}_toolbar" class="ql-toolbar ql-snow !w-full">
      		<span class="ql-formats">
        		<select class="ql-header">
          			<option selected>Paragraph</option>
          			<option value="1">Heading 1</option>
          			<option value="2">Heading 2</option>
          			<option value="3">Heading 3</option>
          			<option value="4">Heading 4</option>
          			<option value="5">Heading 5</option>
          			<option value="6">Heading 6</option>
        		</select>
        		<select class="ql-font">
          			<option value="arial">Arial</option>
          			<option value="calibri">Calibri</option>
          			<option value="consolas">Consolas</option>
          			<option value="courier-new">Courier New</option>
          			<option value="georgia">Georgia</option>
          			<option value="inter">Inter</option>
          			<option value="monospace">Monospace</option>
          			<option value="roboto">Roboto</option>
          			<option selected>Sans Serif</option>
          			<option value="segoe-ui">Segoe UI</option>
         	 		<option value="serif">Serif</option>
          			<option value="system-ui">System UI</option>
          			<option value="tahoma">Tahoma</option>
          			<option value="times-new-roman">Times New Roman</option>
          			<option value="trebuchet">Trebuchet MS</option>
          			<option value="verdana">Verdana</option>
        		</select>
        		<select class="ql-size">
          			<option value="8px">8px</option>
          			<option value="10px">10px</option>
          			<option value="12px">12px</option>
          			<option value="14px">14px</option>
          			<option value="16px" selected>16px</option>
          			<option value="18px">18px</option>
          			<option value="20px">20px</option>
          			<option value="24px">24px</option>
          			<option value="32px">32px</option>
          			<option value="48px">48px</option>
          			<option value="64px">64px</option>
        		</select>
      		</span>
      		<span class="ql-formats">
        		<button class="ql-bold"></button>
        		<button class="ql-italic"></button>
        		<button class="ql-underline"></button>
        		<button class="ql-strike"></button>
        		<button class="ql-blockquote"></button>
        		<button class="ql-code-block"></button>
      		</span>
	        <span class="ql-formats">
        		<select class="ql-color"></select>
        		<select class="ql-background"></select>
        		<button class="ql-script" value="sub"></button>
        		<button class="ql-script" value="super"></button>
      		</span>
      		<span class="ql-formats">
        		<button class="ql-list" value="ordered"></button>
        		<button class="ql-list" value="bullet"></button>
        		<button class="ql-indent" value="-1"></button>
        		<button class="ql-indent" value="+1"></button>
        		<button class="ql-direction" value="rtl"></button>
        		<select class="ql-align"></select>
      		</span>
      		<span class="ql-formats">
        		<button class="ql-link"></button>
        		<button class="ql-image"></button>
        		<button class="ql-video"></button>
      		</span>
      		<!-- New: undo/redo -->
      		<span class="ql-formats">
        		<button class="ql-undo" title="Undo"></button>
        		<button class="ql-redo" title="Redo"></button>
      		</span>
      		<span class="ql-formats">
        		<button class="ql-clean"></button>
      		</span>
    	</div>
    	<!-- Create editor container -->
    	<div id="${mName}_editor" class="ql-container ql-snow !w-full !h-full">
      		<p>${sPlaceholder}</p>
    	</div>
	</div>"$).Get("#" & mName)
	'
	options.put("maxStack", iMaxStack)
	options.put("placeholder", sPlaceholder)
	options.Put("container", $"#${mName}_editor"$)
	options.Put("toolbar", $"#${mName}_toolbar"$)
	'
	Dim xvalue As Object
	Dim cbChange As BANanoObject = BANano.CallBack(mCallBack, $"${mName}_change"$, Array(xvalue))
	options.Put("onChange", cbChange)
	qe = BANano.RunJavascriptMethod("initializeQuill", Array(options))
End Sub

Sub GetHTML As String
	Dim str As String = qe.RunMethod("getHTML", Null).Result
	Return str
End Sub

Sub SetHTML(str As String)
	qe.RunMethod("setHTML", str)
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "height", s)
End Sub
'set Max Stack
Sub setMaxStack(i As Int)
	iMaxStack = i
	CustProps.put("MaxStack", i)
	If mElement = Null Then Return
	options.put("maxStack", i)
End Sub
'set Placeholder
Sub setPlaceholder(s As String)
	sPlaceholder = s
	CustProps.put("Placeholder", s)
	If mElement = Null Then Return
	options.put("placeholder", s)
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
'get Max Stack
Sub getMaxStack As Int
	Return iMaxStack
End Sub
'get Placeholder
Sub getPlaceholder As String
	Return sPlaceholder
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub