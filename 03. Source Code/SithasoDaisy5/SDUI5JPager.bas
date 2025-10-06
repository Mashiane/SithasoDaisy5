B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
#IgnoreWarnings:12
#Event: PageChanged (Index As Int)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 400px, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 600px, Description: Width
#DesignerProperty: Key: Orientation, DisplayName: Orientation, FieldType: String, DefaultValue: horizontal, Description: Carousel orientation, List: horizontal|vertical
#DesignerProperty: Key: ShowButtons, DisplayName: Show Buttons, FieldType: Boolean, DefaultValue: False, Description: Show navigation buttons
#DesignerProperty: Key: ShowIndicators, DisplayName: Show Indicators, FieldType: Boolean, DefaultValue: False, Description: Show indicators
#DesignerProperty: Key: Carousel, DisplayName: Carousel Mode, FieldType: Boolean, DefaultValue: False, Description: Loop carousel navigation
#DesignerProperty: Key: AllowNext, DisplayName: Allow Next Navigation, FieldType: Boolean, DefaultValue: True, Description: Allow next navigation
#DesignerProperty: Key: AllowBack, DisplayName: Allow Back Navigation, FieldType: Boolean, DefaultValue: True, Description: Allow back navigation
#DesignerProperty: Key: LazyLoading, DisplayName: Lazy Loading, FieldType: Boolean, DefaultValue: False, Description: Lazy load carousel pages
#DesignerProperty: Key: Autoplay, DisplayName: Autoplay, FieldType: Boolean, DefaultValue: False, Description: Enable autoplay
#DesignerProperty: Key: AutoplayInterval, DisplayName: Autoplay Interval, FieldType: Int, DefaultValue: 3000, Description: Autoplay interval in milliseconds
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: "", Description: DaisyUI shadow class, List: sm|md|lg|xl|2xl
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: "", Description: DaisyUI rounded class, List: none|sm|md|lg|xl|2xl|3xl|full
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: RawClasses, DisplayName: Classes (;), FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: RawStyles, DisplayName: Styles (JSON), FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String use = and ;
#DesignerProperty: Key: RawAttributes, DisplayName: Attributes (JSON), FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String use = and ;

Sub Class_Globals
	Public UI As UIShared
	Public CustProps As Map

	Private mCallBack As Object
	Private sEventName As String
	Private mElement As BANanoElement
	Private mTarget As BANanoElement
	Private sName As String
	Private BANano As BANano			'ignore

	Private sWidth As String = "600px"
	Private sHeight As String = "400px"
	Private sPosition As String = "t=?; b=?; r=?; l=?"
	Private sPositionStyle As String = "none"
	Private sRawClasses As String = ""
	Private sRawStyles As String = ""
	Private sRawAttributes As String = ""
	Private sMarginAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sPaddingAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sParentID As String = ""
	Private bVisible As Boolean = True
	Private bEnabled As Boolean = True

	Private sOrientation As String = "horizontal"
	Private bShowButtons As Boolean = False
	Private bCarousel As Boolean = False
	Private bAllowNext As Boolean = True
	Private bAllowBack As Boolean = True
	Private bLazyLoading As Boolean = False
	Private bAutoplay As Boolean = False
	Private iAutoplayInterval As Int = 3000
	Private sShadow As String = ""
	Private sRounded As String = ""
	Private bShowIndicators As Boolean = False

	Private iCurrentIndex As Int = 0
	Private iItemsCount As Int = 0

	Public Tag As Object
End Sub

Public Sub Initialize(CallBack As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	sEventName = UI.CleanID(EventName)
	sName = UI.CleanID(Name)
	mCallBack = CallBack
	CustProps.Initialize
	BANano.DependsOnAsset("jpager-carousel.min.js")
End Sub

Public Sub getID() As String
	Return sName
End Sub

'set properties from an outside source
Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.Get("ParentID")
End Sub

Sub GetProperties As Map
	Return CustProps
End Sub
Public Sub AddComponent
	If sParentID = "" Then Return
	mTarget = BANano.GetElement("#" & sParentID)
	DesignerCreateView(mTarget, CustProps)
End Sub

Public Sub Remove
	If mElement <> Null Then mElement.Remove
	BANano.SetMeToNull
End Sub

Public Sub setParentID(s As String)
	s = UI.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub
Public Sub getParentID() As String
	Return sParentID
End Sub

Public Sub getHere() As String
	Return $"#${sName}"$
End Sub

Public Sub setVisible(b As Boolean)
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	UI.SetVisible(mElement, b)
End Sub

Public Sub getVisible As Boolean
	Return bVisible
End Sub

Public Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement = Null Then Return
	UI.SetEnabled(mElement, b)
End Sub

Public Sub getEnabled As Boolean
	Return bEnabled
End Sub

Public Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.Put("PositionStyle", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyle(mElement, "position", s)
End Sub

Public Sub getPositionStyle As String
	Return sPositionStyle
End Sub

Public Sub setPosition(s As String)
	sPosition = s
	CustProps.Put("Position", sPosition)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPosition(mElement, sPosition)
End Sub

Public Sub getPosition As String
	Return sPosition
End Sub

Public Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub

Public Sub getAttributes As String
	Return sRawAttributes
End Sub

Public Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub

Public Sub getStyles As String
	Return sRawStyles
End Sub

Public Sub setClasses(s As String)
	sRawClasses = s
	CustProps.Put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub

Public Sub getClasses As String
	Return sRawClasses
End Sub

Public Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub
Public Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub

Public Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub
Public Sub getMarginAXYTBLR As String
	Return sMarginAXYTBLR
End Sub

Public Sub DesignerCreateView(Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)

		sParentID = Props.GetDefault("ParentID", "")
		sParentID = UI.CStr(sParentID)

		bVisible = Props.GetDefault("Visible", True)
		bVisible = UI.CBool(bVisible)

		bEnabled = Props.GetDefault("Enabled", True)
		bEnabled = UI.CBool(bEnabled)

		sPositionStyle = Props.GetDefault("PositionStyle", "none")
		sPositionStyle = UI.CStr(sPositionStyle)
		If sPositionStyle = "none" Then sPositionStyle = ""

		sPosition = Props.GetDefault("Position", "t=?; b=?; r=?; l=?")
		sPosition = UI.CStr(sPosition)

		sMarginAXYTBLR = Props.GetDefault("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		sMarginAXYTBLR = UI.CStr(sMarginAXYTBLR)

		sPaddingAXYTBLR = Props.GetDefault("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		sPaddingAXYTBLR = UI.CStr(sPaddingAXYTBLR)

		sRawClasses = Props.GetDefault("RawClasses", "")
		sRawClasses = UI.CStr(sRawClasses)

		sRawStyles = Props.GetDefault("RawStyles", "")
		sRawStyles = UI.CStr(sRawStyles)

		sRawAttributes = Props.GetDefault("RawAttributes", "")
		sRawAttributes = UI.CStr(sRawAttributes)

		sOrientation = Props.GetDefault("Orientation", "horizontal")
		sOrientation = UI.CStr(sOrientation)
		If sOrientation = "none" Then sOrientation = ""

		bShowButtons = Props.GetDefault("ShowButtons", False)
		bShowButtons = UI.CBool(bShowButtons)

		bCarousel = Props.GetDefault("Carousel", False)
		bCarousel = UI.CBool(bCarousel)

		bAllowNext = Props.GetDefault("AllowNext", True)
		bAllowNext = UI.CBool(bAllowNext)

		bAllowBack = Props.GetDefault("AllowBack", True)
		bAllowBack = UI.CBool(bAllowBack)

		bLazyLoading = Props.GetDefault("LazyLoading", False)
		bLazyLoading = UI.CBool(bLazyLoading)

		bAutoplay = Props.GetDefault("Autoplay", False)
		bAutoplay = UI.CBool(bAutoplay)

		iAutoplayInterval = Props.GetDefault("AutoplayInterval", 3000)
		iAutoplayInterval = UI.CInt(iAutoplayInterval)

		sShadow = Props.GetDefault("Shadow", "")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""

		sRounded = Props.GetDefault("Rounded", "")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		'
		bShowIndicators = Props.GetDefault("ShowIndicators", False)
		bShowIndicators = UI.CBool(bShowIndicators)
	End If

	If sParentID <> "" Then
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${sName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	'
	UI.AddClassDT("daisy-carousel")
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	UI.AddAttrDT("width", sWidth)
	UI.AddAttrDT("height", sHeight)
	UI.AddAttrDT("orientation", sOrientation)
	UI.AddAttrDT("carousel", bCarousel)
	UI.AddAttrDT("allowback", bAllowBack)
	UI.AddAttrDT("allownext", bAllowNext)
	UI.AddAttrDT("lazyloading", bLazyLoading)
	UI.AddAttrDT("show-buttons", bShowButtons)
	UI.AddAttrDT("show-indicators", bShowIndicators)
	UI.AddAttrDT("autoplay", bAutoplay)
	UI.AddAttrDT("autoplay-interval", iAutoplayInterval)
	
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass

	Dim appendHtml As String = $"<jpager-carousel id='${sName}' class='${xclasses}' style='${xstyles}' ${xattrs}></jpager-carousel>"$
	mElement = mTarget.Append(appendHtml).Get("#" & sName)
	UI.OnEvent(mElement, "pagechanged", Me, sEventName & "_pagechanged")
End Sub

Public Sub setOrientation(value As String)
	sOrientation = value
	CustProps.Put("Orientation", value)
	If mElement <> Null Then mElement.SetAttr("orientation", value)
End Sub

Public Sub getOrientation As String
	Return sOrientation
End Sub

Public Sub setWidth(value As String)
	sWidth = value
	CustProps.Put("Width", value)
	If mElement <> Null Then mElement.SetAttr("width", value)
End Sub

Public Sub getWidth As String
	Return sWidth
End Sub

Public Sub setHeight(value As String)
	sHeight = value
	CustProps.Put("Height", value)
	If mElement <> Null Then mElement.SetAttr("height", value)
End Sub

Public Sub getHeight As String
	Return sHeight
End Sub

Public Sub setShowButtons(value As Boolean)
	bShowButtons = value
	CustProps.Put("ShowButtons", value)
	If mElement <> Null Then
		If value Then mElement.SetAttr("show-buttons", "true") Else mElement.SetAttr("show-buttons", "false")
	End If
End Sub

Public Sub getShowButtons As Boolean
	Return bShowButtons
End Sub

Public Sub setCarousel(value As Boolean)
	bCarousel = value
	CustProps.Put("Carousel", value)
	If mElement <> Null Then
		If value Then mElement.SetAttr("carousel", "true") Else mElement.SetAttr("carousel", "false")
	End If
End Sub

Public Sub getCarousel As Boolean
	Return bCarousel
End Sub

Public Sub setAllowNext(value As Boolean)
	bAllowNext = value
	CustProps.Put("AllowNext", value)
	If mElement <> Null Then
		If value Then mElement.SetAttr("allownext", "true") Else mElement.SetAttr("allownext", "false")
	End If
End Sub

Public Sub getAllowNext As Boolean
	Return bAllowNext
End Sub

Public Sub setAllowBack(value As Boolean)
	bAllowBack = value
	CustProps.Put("AllowBack", value)
	If mElement <> Null Then
		If value Then mElement.SetAttr("allowback", "true") Else mElement.SetAttr("allowback", "false")
	End If
End Sub

Public Sub getAllowBack As Boolean
	Return bAllowBack
End Sub

Public Sub setLazyLoading(value As Boolean)
	bLazyLoading = value
	CustProps.Put("LazyLoading", value)
	If mElement <> Null Then
		If value Then mElement.SetAttr("lazyloading", "true") Else mElement.SetAttr("lazyloading", "false")
	End If
End Sub

Public Sub getLazyLoading As Boolean
	Return bLazyLoading
End Sub

Public Sub setAutoplay(value As Boolean)
	bAutoplay = value
	CustProps.Put("Autoplay", value)
	If mElement <> Null Then
		If value Then mElement.SetAttr("autoplay", "true") Else mElement.SetAttr("autoplay", "false")
	End If
End Sub

Public Sub getAutoplay As Boolean
	Return bAutoplay
End Sub

Public Sub setAutoplayInterval(value As Int)
	iAutoplayInterval = value
	CustProps.Put("AutoplayInterval", value)
	If mElement <> Null Then mElement.SetAttr("autoplay-interval", value)
End Sub

Public Sub getAutoplayInterval As Int
	Return iAutoplayInterval
End Sub

Public Sub setShadow(value As String)
	sShadow = value
	CustProps.Put("Shadow", value)
	If value <> "" Then UI.SetShadow(mElement, sShadow)
End Sub

Public Sub getShadow As String
	Return sShadow
End Sub

Public Sub setRounded(value As String)
	sRounded = value
	CustProps.Put("Rounded", value)
	If mElement = Null Then Return
	If value <> "" Then UI.SetRounded(mElement, sRounded)
End Sub

Public Sub getRounded As String
	Return sRounded
End Sub

Sub mElement_pagechanged(e As BANanoEvent)
	Dim iNewIndex As Int = e.OtherField("index")
	iCurrentIndex = iNewIndex
	CallSub2(mCallBack, sEventName & "_pagechanged", iNewIndex)
End Sub

Public Sub setIndex(i As Int)
	iCurrentIndex = i
	If mElement <> Null Then
		mElement.RunMethod("setIndex", Array As Object(i))
	End If
End Sub

Public Sub setItemsCount(i As Int)
	iItemsCount = i
End Sub

Public Sub getItemsCount As Int
	Return iItemsCount
End Sub

Public Sub NextPage
	If mElement <> Null Then mElement.RunMethod("NextPage", Null)
End Sub

Public Sub PreviousPage
	If mElement <> Null Then mElement.RunMethod("PreviousPage", Null)
End Sub

Public Sub AddPage(pageElement As Object, value As String)
	If mElement <> Null Then mElement.RunMethod("AddPage", Array(pageElement, value))
End Sub

Public Sub AddPageAt(pageElement As Object, index As Int, value As String)
	If mElement <> Null Then mElement.RunMethod("AddPageAt", Array(pageElement, index, value))
End Sub

Public Sub RemovePageAt(index As Int)
	If mElement <> Null Then mElement.RunMethod("RemovePageAt", Array As Object(index))
End Sub

Public Sub Clear
	If mElement <> Null Then mElement.RunMethod("Clear", Null)
End Sub

Public Sub getIndex() As Int
	If mElement <> Null Then
		iCurrentIndex = mElement.RunMethod("getIndex", Null)
		Return iCurrentIndex
	End If
	Return -1
End Sub

Public Sub getSize() As Int
	If mElement <> Null Then
		Return mElement.RunMethod("getSize", Null)
	End If
	Return 0
End Sub
