B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Placement, DisplayName: Placement, FieldType: String, DefaultValue: start, Description: Placement, List: end|start
#DesignerProperty: Key: MessageFrom, DisplayName: Message From, FieldType: String, DefaultValue: Mashy, Description: Message From
#DesignerProperty: Key: MessageTime, DisplayName: Message Time, FieldType: String, DefaultValue: 17:20, Description: Message Time
#DesignerProperty: Key: Image, DisplayName: Image, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Image
#DesignerProperty: Key: ImageSize, DisplayName: Image Size, FieldType: String, DefaultValue: 10, Description: Image Size
#DesignerProperty: Key: Message, DisplayName: Message, FieldType: String, DefaultValue: Welcome to SithasoDaisy5, Description: Message
#DesignerProperty: Key: Footer, DisplayName: Footer, FieldType: String, DefaultValue: Delivered, Description: Footer
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: HeaderVisible, DisplayName: Header Visible, FieldType: Boolean, DefaultValue: True, Description: Header Visible
#DesignerProperty: Key: ImageVisible, DisplayName: Image Visible, FieldType: Boolean, DefaultValue: True, Description: Image Visible
#DesignerProperty: Key: FooterVisible, DisplayName: Footer Visible, FieldType: Boolean, DefaultValue: True, Description: Footer Visible
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
	Private sBackgroundColor As String = ""
	Private sColor As String = "none"
	Private sFooter As String = "Delivered"
	Private bFooterVisible As Boolean = True
	Private bHeaderVisible As Boolean = True
	Private sImage As String = "./assets/mashy.jpg"
	Private sImageSize As String = "10"
	Private bImageVisible As Boolean = True
	Private sMessage As String = "Welcome to SithasoDaisy5"
	Private sMessageFrom As String = "Mashy"
	Private sMessageTime As String = "17:20"
	Private sPlacement As String = "start"
	Private sTextColor As String = ""
	Public CONST PLACEMENT_END As String = "end"
	Public CONST PLACEMENT_START As String = "start"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Placement", "start")
	CustProps.Put("MessageFrom", "Mashy")
	CustProps.Put("MessageTime", "17:20")
	CustProps.Put("Image", "./assets/mashy.jpg")
	CustProps.Put("ImageSize", "10")
	CustProps.Put("Message", "Welcome to SithasoDaisy5")
	CustProps.Put("Footer", "Delivered")
	CustProps.Put("Color", "none")
	CustProps.Put("TextColor", "")
	CustProps.Put("BackgroundColor", "")
	CustProps.Put("HeaderVisible", True)
	CustProps.Put("ImageVisible", True)
	CustProps.Put("FooterVisible", True)
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
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sBackgroundColor = Props.GetDefault("BackgroundColor", "")
		sBackgroundColor = UI.CStr(sBackgroundColor)
		sColor = Props.GetDefault("Color", "none")
		sColor = UI.CStr(sColor)
		If sColor = "none" Then sColor = ""
		sFooter = Props.GetDefault("Footer", "Delivered")
		sFooter = UI.CStr(sFooter)
		bFooterVisible = Props.GetDefault("FooterVisible", True)
		bFooterVisible = UI.CBool(bFooterVisible)
		bHeaderVisible = Props.GetDefault("HeaderVisible", True)
		bHeaderVisible = UI.CBool(bHeaderVisible)
		sImage = Props.GetDefault("Image", "./assets/mashy.jpg")
		sImage = UI.CStr(sImage)
		sImageSize = Props.GetDefault("ImageSize", "10")
		sImageSize = UI.CStr(sImageSize)
		bImageVisible = Props.GetDefault("ImageVisible", True)
		bImageVisible = UI.CBool(bImageVisible)
		sMessage = Props.GetDefault("Message", "Welcome to SithasoDaisy5")
		sMessage = UI.CStr(sMessage)
		sMessageFrom = Props.GetDefault("MessageFrom", "Mashy")
		sMessageFrom = UI.CStr(sMessageFrom)
		sMessageTime = Props.GetDefault("MessageTime", "17:20")
		sMessageTime = UI.CStr(sMessageTime)
		sPlacement = Props.GetDefault("Placement", "start")
		sPlacement = UI.CStr(sPlacement)
		sTextColor = Props.GetDefault("TextColor", "")
		sTextColor = UI.CStr(sTextColor)
	End If
	'
	UI.AddClassDT("chat")
	If sPlacement <> "" Then UI.UpdateClassDT("placement", "chat-" & sPlacement)
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
	Dim imgW As String = UI.FixSize("w", sImageSize)
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
  		<div id="${mName}_avatar" class="chat-image avatar">
			<div id="${mName}_avatar_host" class="${imgW} rounded-full">
    			<img id="${mName}_avatar_image" src="${sImage}" alt="" class="bg-cover bg-center bg-no-repeat"></img>
  			</div>
		</div>		
  		<div id="${mName}_header" class="chat-header">
			<span id="${mName}_sender">${sMessageFrom}</span>
    		<time id="${mName}_sendertime" class="text-xs opacity-50">${sMessageTime}</time>
  		</div>
  		<div id="${mName}_bubble" class="chat-bubble">
			<span id="${mName}_message">${sMessage}</span>
		</div>
  		<div id="${mName}_footer" class="chat-footer opacity-50">${sFooter}</div>
	</div>"$).Get("#" & mName)
	'
	setColor(sColor)
	setBackgroundColor(sBackgroundColor)
	setHeaderVisible(bHeaderVisible)
	setFooterVisible(bFooterVisible)
	setImageSize(sImageSize)
	setImageVisible(bImageVisible)
	setTextColor(sTextColor)
	setMessage(sMessage)
'	setVisible(bVisible)
End Sub

'set Background Color
Sub setBackgroundColor(s As String)			'ignoredeadcode
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColorByID($"${mName}_bubble"$, sBackgroundColor)
End Sub
'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)				'ignoredeadcode
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetColorByID($"${mName}_bubble"$, "color", "chat-bubble", sColor)
End Sub
'set Footer
Sub setFooter(s As String)
	sFooter = s
	CustProps.put("Footer", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_footer"$, s)
End Sub
'set Footer Visible
Sub setFooterVisible(b As Boolean)			'ignoredeadcode
	bFooterVisible = b
	CustProps.put("FooterVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_footer"$, b)
End Sub
'set Header Visible
Sub setHeaderVisible(b As Boolean)				'ignoredeadcode
	bHeaderVisible = b
	CustProps.put("HeaderVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_header"$, b)
End Sub
'set Image
Sub setImage(s As String)
	sImage = s
	CustProps.put("Image", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetImageByID($"${mName}_avatar_image"$, s)
End Sub
'set Image Size
Sub setImageSize(s As String)				'ignoredeadcode
	sImageSize = s
	CustProps.put("ImageSize", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidthByID($"${mName}_avatar_host"$, s)
End Sub
'set Image Visible
Sub setImageVisible(b As Boolean)				'ignoredeadcode
	bImageVisible = b
	CustProps.put("ImageVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_avatar"$, b)
End Sub
'set Message
Sub setMessage(s As String)				'ignoredeadcode
	sMessage = s
	CustProps.put("Message", s)
	If mElement = Null Then Return
	sMessage = BANano.RunJavascriptMethod("whatsappToHtml", Array(sMessage))
	UI.SetHTMLByID($"${mName}_message"$, sMessage)
End Sub
'set Message From
Sub setMessageFrom(s As String)
	sMessageFrom = s
	CustProps.put("MessageFrom", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_sender"$, s)
End Sub
'set Message Time
Sub setMessageTime(s As String)
	sMessageTime = s
	CustProps.put("MessageTime", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_sendertime"$, s)
End Sub
'set Placement
'options: end|start
Sub setPlacement(s As String)
	sPlacement = s
	CustProps.put("Placement", s)
	If mElement = Null Then Return
	If s <> "" Then UI.UpdateClass(mElement, "placement", s)
End Sub
'set Text Color
Sub setTextColor(s As String)				'ignoredeadcode
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_bubble"$, sTextColor)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Footer
Sub getFooter As String
	Return sFooter
End Sub
'get Footer Visible
Sub getFooterVisible As Boolean
	Return bFooterVisible
End Sub
'get Header Visible
Sub getHeaderVisible As Boolean
	Return bHeaderVisible
End Sub
'get Image
Sub getImage As String
	Return sImage
End Sub
'get Image Size
Sub getImageSize As String
	Return sImageSize
End Sub
'get Image Visible
Sub getImageVisible As Boolean
	Return bImageVisible
End Sub
'get Message
Sub getMessage As String
	Return sMessage
End Sub
'get Message From
Sub getMessageFrom As String
	Return sMessageFrom
End Sub
'get Message Time
Sub getMessageTime As String
	Return sMessageTime
End Sub
'get Placement
Sub getPlacement As String
	Return sPlacement
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub