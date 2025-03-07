B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: DiffType, DisplayName: Diff Type, FieldType: String, DefaultValue: image, Description: Diff Type, List: image|text
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 80, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 80, Description: Width
#DesignerProperty: Key: Image1, DisplayName: Image1, FieldType: String, DefaultValue: ./assets/13.jpg, Description: Image1
#DesignerProperty: Key: Image2, DisplayName: Image2, FieldType: String, DefaultValue: ./assets/13.jpg, Description: Image2
#DesignerProperty: Key: Text1, DisplayName: Text1, FieldType: String, DefaultValue: SITHASODAISY5, Description: Text1
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: 9xl, Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: Text1TextColor, DisplayName: Text1 Text Color, FieldType: String, DefaultValue: primary-content, Description: Text1 Text Color
#DesignerProperty: Key: Text1BackgroundColor, DisplayName: Text1 Background Color, FieldType: String, DefaultValue: primary, Description: Text1 Background Color
#DesignerProperty: Key: Text2, DisplayName: Text2, FieldType: String, DefaultValue: SITHASODAISY5, Description: Text2
#DesignerProperty: Key: Text2TextColor, DisplayName: Text2 Text Color, FieldType: String, DefaultValue: , Description: Text2 Text Color
#DesignerProperty: Key: Text2BackgroundColor, DisplayName: Text2 Background Color, FieldType: String, DefaultValue: base-200, Description: Text2 Background Color
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
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
	Private sDiffType As String = "image"
	Private sHeight As String = "80"
	Private sImage1 As String = "./assets/13.jpg"
	Private sImage2 As String = "./assets/13.jpg"
	Private sTextSize As String = "9xl"
	Private sText1 As String = "SITHASODAISY5"
	Private sText1BackgroundColor As String = "primary"
	Private sText1TextColor As String = "primary-content"
	Private sText2 As String = "SITHASODAISY5"
	Private sText2BackgroundColor As String = "base-200"
	Private sText2TextColor As String = ""
	Private sWidth As String = "80"
	Public CONST DIFFTYPE_IMAGE As String = "image"
	Public CONST DIFFTYPE_TEXT As String = "text"
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = False
	Private sShadow As String = "none"        
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	
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
	if s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub
'
Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	if s <> "" Then UI.SetStyles(mElement, sRawStyles)
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
	if s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
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
		sDiffType = Props.GetDefault("DiffType", "image")
		sDiffType = UI.CStr(sDiffType)
		sHeight = Props.GetDefault("Height", "80")
		sHeight = UI.CStr(sHeight)
		sImage1 = Props.GetDefault("Image1", "./assets/13.jpg")
		sImage1 = UI.CStr(sImage1)
		sImage2 = Props.GetDefault("Image2", "./assets/13.jpg")
		sImage2 = UI.CStr(sImage2)
		sTextSize = Props.GetDefault("TextSize", "9xl")
		sTextSize = UI.CStr(sTextSize)
		sText1 = Props.GetDefault("Text1", "SITHASODAISY5")
		sText1 = UI.CStr(sText1)
		sText1BackgroundColor = Props.GetDefault("Text1BackgroundColor", "primary")
		sText1BackgroundColor = UI.CStr(sText1BackgroundColor)
		sText1TextColor = Props.GetDefault("Text1TextColor", "primary-content")
		sText1TextColor = UI.CStr(sText1TextColor)
		sText2 = Props.GetDefault("Text2", "SITHASODAISY5")
		sText2 = UI.CStr(sText2)
		sText2BackgroundColor = Props.GetDefault("Text2BackgroundColor", "base-200")
		sText2BackgroundColor = UI.CStr(sText2BackgroundColor)
		sText2TextColor = Props.GetDefault("Text2TextColor", "")
		sText2TextColor = UI.CStr(sText2TextColor)
		sWidth = Props.GetDefault("Width", "80")
		sWidth = UI.CStr(sWidth)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
	End If
	'
	UI.AddClassDT("diff aspect-16/9")
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)        
	UI.AddAttrDT("tabindex", "0")
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
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
	'
	Select Case sDiffType
	Case "image"
		mElement = mTarget.Append($"[BANCLEAN]
		<figure id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
  			<div id="${mName}_item1" class="diff-item-1" role="img">
    			<img id="${mName}_image1" alt="" src="${sImage1}" class="bg-cover bg-center bg-no-repeat" />
  			</div>
  			<div id="${mName}_item2" class="diff-item-2" role="img" tabindex="0">
    			<img id="${mName}_image2" alt="" src="${sImage2}" class="bg-cover bg-center bg-no-repeat"/>
  			</div>
  			<div id="${mName}_diff" class="diff-resizer"></div>
		</figure>"$).Get("#" & mName)
	Case "text"
		mElement = mTarget.Append($"[BANCLEAN]
		<figure id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
  			<div id="${mName}_item1" class="diff-item-1" role="img">
    			<div id="${mName}_text1" class="grid place-content-center font-black">${sText1}</div>
  			</div>
  			<div id="${mName}_item2" class="diff-item-2" role="img" tabindex="0">
    			<div id="${mName}_text2" class="grid place-content-center font-black">${sText2}</div>
  			</div>
  			<div id="${mName}_diff" class="diff-resizer"></div>
		</figure>"$).Get("#" & mName)
		setTextSize(sTextSize)	
		setText1BackgroundColor(sText1BackgroundColor)
		setText1TextColor(sText1TextColor)
		setText2BackgroundColor(sText2BackgroundColor)
		setText2TextColor(sText2TextColor)	
	End Select
	setHeight(sHeight)
	setWidth(sWidth)
'	setVisible(bVisible)
End Sub

'set Diff Type
'options: image|text
Sub setDiffType(s As String)
	sDiffType = s
	CustProps.put("DiffType", s)
End Sub
'set Height
Sub setHeight(s As String)				'ignoredeadcode
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s ="" Then Return
	BANano.Await(UI.SetHeight(mElement, s))
	Select Case sDiffType
	Case "image"
		BANano.Await(UI.SetHeightByID($"${mName}_image1"$, s))
		BANano.Await(UI.SetHeightByID($"${mName}_image2"$, s))
	Case "text"		
		BANano.Await(UI.SetHeightByID($"${mName}_text1"$, s))
		BANano.Await(UI.SetHeightByID($"${mName}_text2"$, s))
	End Select
End Sub
'
'set Width
Sub setWidth(s As String)			'ignoredeadcode
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s ="" Then Return
	BANano.Await(UI.SetWidth(mElement, sWidth))
	Select Case sDiffType
	Case "image"
		BANano.Await(UI.SetWidthByID($"${mName}_image1"$, sWidth))
		BANano.Await(UI.SetWidthByID($"${mName}_image2"$, sWidth))
	Case "text"
		BANano.Await(UI.SetWidthByID($"${mName}_text1"$, sWidth))
		BANano.Await(UI.SetWidthByID($"${mName}_text2"$, sWidth))
	End Select
End Sub


'set Image1
Sub setImage1(s As String)
	sImage1 = s
	CustProps.put("Image1", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetImageByID($"${mName}_image1"$, s)
End Sub
'set Image2
Sub setImage2(s As String)
	sImage2 = s
	CustProps.put("Image2", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetImageByID($"${mName}_image2"$, s)
End Sub
'set Text Size
'options: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
Sub setTextSize(s As String)			'ignoredeadcode
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	If s <> "" Then
		UI.SetTextSizeByID($"${mName}_text1"$, s)
		UI.SetTextSizeByID($"${mName}_text2"$, s)
	End If
End Sub
'set Text1
Sub setText1(s As String)
	sText1 = s
	CustProps.put("Text1", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_text1"$, s)
End Sub
'set Text1 Background Color
Sub setText1BackgroundColor(s As String)			'ignoredeadcode
	sText1BackgroundColor = s
	CustProps.put("Text1BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_text1"$, s)
End Sub
'set Text1 Text Color
Sub setText1TextColor(s As String)			'ignoredeadcode
	sText1TextColor = s
	CustProps.put("Text1TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_text1"$, s)
End Sub
'set Text2
Sub setText2(s As String)
	sText2 = s
	CustProps.put("Text2", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_text2"$, s)
End Sub
'set Text2 Background Color
Sub setText2BackgroundColor(s As String)				'ignoredeadcode
	sText2BackgroundColor = s
	CustProps.put("Text2BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_text2"$, s)
End Sub
'set Text2 Text Color
Sub setText2TextColor(s As String)				'ignoredeadcode
	sText2TextColor = s
	CustProps.put("Text2TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_text2"$, s)
End Sub

'get Diff Type
Sub getDiffType As String
	Return sDiffType
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Image1
Sub getImage1 As String
	Return sImage1
End Sub
'get Image2
Sub getImage2 As String
	Return sImage2
End Sub
'get Text Size
Sub getTextSize As String
	Return sTextSize
End Sub
'get Text1
Sub getText1 As String
	Return sText1
End Sub
'get Text1 Background Color
Sub getText1BackgroundColor As String
	Return sText1BackgroundColor
End Sub
'get Text1 Text Color
Sub getText1TextColor As String
	Return sText1TextColor
End Sub
'get Text2
Sub getText2 As String
	Return sText2
End Sub
'get Text2 Background Color
Sub getText2BackgroundColor As String
	Return sText2BackgroundColor
End Sub
'get Text2 Text Color
Sub getText2TextColor As String
	Return sText2TextColor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub