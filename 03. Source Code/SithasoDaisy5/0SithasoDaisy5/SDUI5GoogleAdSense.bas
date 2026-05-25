B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: AdClient, DisplayName: Ad Client, FieldType: String, DefaultValue: , Description: Google AdSense publisher ID (ca-pub-XXXXXXX)
#DesignerProperty: Key: AdSlot, DisplayName: Ad Slot, FieldType: String, DefaultValue: , Description: Google AdSense ad slot ID
#DesignerProperty: Key: AdFormat, DisplayName: Ad Format, FieldType: String, DefaultValue: auto, Description: Ad format, List: auto|horizontal|vertical|rectangle
#DesignerProperty: Key: AdLayout, DisplayName: Ad Layout, FieldType: String, DefaultValue: , Description: Ad layout (e.g. in-article)
#DesignerProperty: Key: AdLayoutKey, DisplayName: Ad Layout Key, FieldType: String, DefaultValue: , Description: Ad layout key
#DesignerProperty: Key: FullWidthResponsive, DisplayName: Full Width Responsive, FieldType: Boolean, DefaultValue: True, Description: Full width responsive ad
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
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
	Private sAdClient As String = ""
	Private sAdSlot As String = ""
	Private sAdFormat As String = "auto"
	Private sAdLayout As String = ""
	Private sAdLayoutKey As String = ""
	Private bFullWidthResponsive As Boolean = True
	Private sHeight As String = ""
	Private sWidth As String = ""
	Public CONST ADFORMAT_AUTO As String = "auto"
	Public CONST ADFORMAT_HORIZONTAL As String = "horizontal"
	Public CONST ADFORMAT_VERTICAL As String = "vertical"
	Public CONST ADFORMAT_RECTANGLE As String = "rectangle"
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
	CustProps.Put("AdClient", "")
	CustProps.Put("AdSlot", "")
	CustProps.Put("AdFormat", "auto")
	CustProps.Put("AdLayout", "")
	CustProps.Put("AdLayoutKey", "")
	CustProps.Put("FullWidthResponsive", True)
	CustProps.Put("Height", "")
	CustProps.Put("Width", "")
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
		sAdClient = Props.GetDefault("AdClient", "")
		sAdClient = UI.CStr(sAdClient)
		sAdSlot = Props.GetDefault("AdSlot", "")
		sAdSlot = UI.CStr(sAdSlot)
		sAdFormat = Props.GetDefault("AdFormat", "auto")
		sAdFormat = UI.CStr(sAdFormat)
		If sAdFormat = "none" Then sAdFormat = ""
		sAdLayout = Props.GetDefault("AdLayout", "")
		sAdLayout = UI.CStr(sAdLayout)
		If sAdLayout = "none" Then sAdLayout = ""
		sAdLayoutKey = Props.GetDefault("AdLayoutKey", "")
		sAdLayoutKey = UI.CStr(sAdLayoutKey)
		bFullWidthResponsive = Props.GetDefault("FullWidthResponsive", True)
		bFullWidthResponsive = UI.CBool(bFullWidthResponsive)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "")
		sWidth = UI.CStr(sWidth)
	End If
	'
	UI.AddClassDT("adsbygoogle")
	UI.AddAttrDT("data-ad-client", sAdClient)
	UI.AddAttrDT("data-ad-slot", sAdSlot)
	If sAdFormat <> "" Then UI.AddAttrDT("data-ad-format", sAdFormat)
	If sAdLayout <> "" Then UI.AddAttrDT("data-ad-layout", sAdLayout)
	If sAdLayoutKey <> "" Then UI.AddAttrDT("data-ad-layout-key", sAdLayoutKey)
	Dim sFWR As String = IIf(bFullWidthResponsive, "true", "false")
	UI.AddAttrDT("data-full-width-responsive", sFWR)
	If sHeight <> "" Then UI.AddStyleDT("height", sHeight)
	If sWidth <> "" Then UI.AddStyleDT("width", sWidth)
	UI.AddStyleDT("display", "block")
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
	mElement = mTarget.Append($"[BANCLEAN]<ins id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></ins>"$).Get("#" & mName)
	#if javascript
		(adsbygoogle = window.adsbygoogle || []).push({});
	#End If
	'Activate the ad unit
	'ActivateAd
'	setVisible(bVisible)
End Sub

'activate the ad unit by pushing to adsbygoogle
Sub ActivateAd			'ignoredeadcode
	If mElement = Null Then Return
	If sAdClient = "" Then Return
	If sAdSlot = "" Then Return
	Dim adPush As BANanoObject = BANano.Window.GetField("adsbygoogle")
	adPush.RunMethod("push", Array(CreateMap()))
End Sub

'set Ad Client
Sub setAdClient(s As String)			'ignoredeadcode
	sAdClient = s
	CustProps.put("AdClient", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "data-ad-client", s)
End Sub
'get Ad Client
Sub getAdClient As String
	Return sAdClient
End Sub

'set Ad Slot
Sub setAdSlot(s As String)				'ignoredeadcode
	sAdSlot = s
	CustProps.put("AdSlot", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "data-ad-slot", s)
End Sub
'get Ad Slot
Sub getAdSlot As String
	Return sAdSlot
End Sub

'set Ad Format
'options: auto|horizontal|vertical|rectangle
Sub setAdFormat(s As String)			'ignoredeadcode
	sAdFormat = s
	CustProps.put("AdFormat", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "data-ad-format", s)
End Sub
'get Ad Format
Sub getAdFormat As String
	Return sAdFormat
End Sub

'set Ad Layout
Sub setAdLayout(s As String)			'ignoredeadcode
	sAdLayout = s
	CustProps.put("AdLayout", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "data-ad-layout", s)
End Sub
'get Ad Layout
Sub getAdLayout As String
	Return sAdLayout
End Sub

'set Ad Layout Key
Sub setAdLayoutKey(s As String)			'ignoredeadcode
	sAdLayoutKey = s
	CustProps.put("AdLayoutKey", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "data-ad-layout-key", s)
End Sub
'get Ad Layout Key
Sub getAdLayoutKey As String
	Return sAdLayoutKey
End Sub

'set Full Width Responsive
Sub setFullWidthResponsive(b As Boolean)			'ignoredeadcode
	bFullWidthResponsive = b
	CustProps.put("FullWidthResponsive", b)
	If mElement = Null Then Return
	Dim sFWR As String = IIf(b, "true", "false")
	UI.AddAttr(mElement, "data-full-width-responsive", sFWR)
End Sub
'get Full Width Responsive
Sub getFullWidthResponsive As Boolean
	Return bFullWidthResponsive
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyle(mElement, "height", s)
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyle(mElement, "width", s)
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub