B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)
#Event: ImageClick (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component, enter swiperID
#DesignerProperty: Key: SwiperId, DisplayName: Swiper Id, FieldType: String, DefaultValue: , Description: Swiper Id
#DesignerProperty: Key: RefreshSwiper, DisplayName: Refresh Swiper, FieldType: Boolean, DefaultValue: False, Description: Refresh Swiper after this
#DesignerProperty: Key: Image, DisplayName: Image Src, FieldType: String, DefaultValue: ./assets/600by600.jpg, Description: Image Src
#DesignerProperty: Key: ImageAlt, DisplayName: Image Alt, FieldType: String, DefaultValue: , Description: Image Alt
#DesignerProperty: Key: ImageCenter, DisplayName: Image Center, FieldType: Boolean, DefaultValue: False, Description: Image Center
#DesignerProperty: Key: ImageCover, DisplayName: Image Cover, FieldType: Boolean, DefaultValue: True, Description: Image Cover
#DesignerProperty: Key: ImageLazyLoad, DisplayName: Image Lazy Load, FieldType: Boolean, DefaultValue: False, Description: Image Lazy Load
#DesignerProperty: Key: ImageNoRepeat, DisplayName: Image No Repeat, FieldType: Boolean, DefaultValue: False, Description: Image No Repeat
#DesignerProperty: Key: RawImageAttributes, DisplayName: Image Attributes, FieldType: String, DefaultValue: , Description: Image Attributes
#DesignerProperty: Key: RawImageClasses, DisplayName: Image Classes, FieldType: String, DefaultValue: , Description: Image Classes
#DesignerProperty: Key: RawImageStyles, DisplayName: Image Styles, FieldType: String, DefaultValue: , Description: Image Styles
#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue: none, Description: Text Align, List: center|end|justify|left|none|right|start
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
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
    Public mElement As BANanoElement 'ignore
    Private mTarget As BANanoElement 'ignore
    Private mName As String 'ignore
    Private BANano As BANano   'ignore
    Private sRawClasses As String
    Private sRawStyles As String
    Private sRawAttributes As String
    Private sMarginAXYTBLR As String
    Private sPaddingAXYTBLR As String
    Private sParentID As String
    Private bVisible As Boolean = True
    Public Tag As Object
    Private bRefreshSwiper As Boolean = False
    Private sSwiperId As String = ""
    Private sTextAlign As String = "none"
	Public CONST TEXTALIGN_CENTER As String = "center"
	Public CONST TEXTALIGN_END As String = "end"
	Public CONST TEXTALIGN_JUSTIFY As String = "justify"
	Public CONST TEXTALIGN_LEFT As String = "left"
	Public CONST TEXTALIGN_NONE As String = "none"
	Public CONST TEXTALIGN_RIGHT As String = "right"
	Public CONST TEXTALIGN_START As String = "start"
	Private sImage As String = "./assets/600by600.jpg"
	Private sImageAlt As String = ""
	Private bImageCenter As Boolean = False
	Private bImageCover As Boolean = True
	Private bImageLazyLoad As Boolean = False
	Private bImageNoRepeat As Boolean = False
	Private sImageAttributes As String = ""
	Private sImageClasses As String = ""
	Private sImageStyles As String = ""
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
    mEventName = UI.CleanID(EventName)
    mName = UI.CleanID(Name)
    mCallBack = Callback
	CustProps.Initialize
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Image", "./assets/600by600.jpg")
	CustProps.Put("SwiperId", "")
	CustProps.Put("RefreshSwiper", False)
	CustProps.Put("TextAlign", "none")
	CustProps.Put("Visible", True)
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
	CustProps.Put("ImageAlt", "")
	CustProps.Put("ImageCenter", False)
	CustProps.Put("ImageCover", True)
	CustProps.Put("ImageLazyLoad", False)
	CustProps.Put("ImageNoRepeat", False)
	CustProps.Put("RawImageAttributes", "")
	CustProps.Put("RawImageClasses", "")
	CustProps.Put("RawImageStyles", "")
End Sub


'set properties from an outside source
Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.Get("ParentID")
End Sub

Sub GetProperties As Map
	Return CustProps
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

' returns the BANanoElement
Public Sub getElement() As BANanoElement
    Return mElement
End Sub

' returns the element id
Public Sub getID() As String
    Return mName
End Sub


'load a component from a json file
Sub LoadComponentJson(designName As String)
	CustProps = BANano.Await(BANano.GetFileAsJSON($"./assets/${designName}.json?${DateTime.Now}"$, Null))
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
'assign another element to this element
Sub setElement(e As BANanoElement)
    mElement = e
End Sub
'empty the element and remove all children
Sub Clear
	If mElement = Null Then Return
	mElement.Empty
End Sub

'execute getElementByID on the existing element
Sub LinkExisting
    mElement.Initialize($"#${mName}"$)
End Sub

'trigger an event on the element
Public Sub TriggerEvent(event As String, params() As String)
    If mElement <> Null Then
        mElement.Trigger(event, params)
    End If
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

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
    mTarget = Target
    If Props <> Null Then
        CustProps = Props
		sTextAlign = Props.GetDefault("TextAlign", "none")
		sTextAlign = UI.CStr(sTextAlign)
		If sTextAlign = "none" Then sTextAlign = ""
        sParentID = Props.GetDefault("ParentID", "")
        sParentID = UI.CleanID(sParentID)
        sRawClasses = Props.GetDefault("RawClasses", "")
        sRawClasses = UI.CStr(sRawClasses)
        sRawStyles = Props.GetDefault("RawStyles", "")
        sRawStyles = UI.CStr(sRawStyles)
        sRawAttributes = Props.GetDefault("RawAttributes", "")
        sRawAttributes = UI.CStr(sRawAttributes)
        sMarginAXYTBLR = Props.GetDefault("MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
        sMarginAXYTBLR = UI.CStr(sMarginAXYTBLR)
        sPaddingAXYTBLR = Props.GetDefault("PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
        sPaddingAXYTBLR = UI.CStr(sPaddingAXYTBLR)
        bVisible = Props.GetDefault("Visible", True)
        bVisible = UI.CBool(bVisible)
        bRefreshSwiper = Props.GetDefault("RefreshSwiper", False)
        bRefreshSwiper = UI.CBool(bRefreshSwiper)
        sSwiperId = Props.GetDefault("SwiperId", "")
        sSwiperId = UI.cleanid(sSwiperId)
		sImage = Props.GetDefault("Image", "./assets/600by600.jpg")
		sImage = UI.CStr(sImage)
		sImageAlt = Props.GetDefault("ImageAlt", "")
		sImageAlt = UI.CStr(sImageAlt)
		bImageCenter = Props.GetDefault("ImageCenter", False)
		bImageCenter = UI.CBool(bImageCenter)
		bImageCover = Props.GetDefault("ImageCover", True)
		bImageCover = UI.CBool(bImageCover)
		bImageLazyLoad = Props.GetDefault("ImageLazyLoad", False)
		bImageLazyLoad = UI.CBool(bImageLazyLoad)
		bImageNoRepeat = Props.GetDefault("ImageNoRepeat", False)
		bImageNoRepeat = UI.CBool(bImageNoRepeat)
		sImageAttributes = Props.GetDefault("RawImageAttributes", "")
		sImageAttributes = UI.CStr(sImageAttributes)
		sImageClasses = Props.GetDefault("RawImageClasses", "")
		sImageClasses = UI.CStr(sImageClasses)
		sImageStyles = Props.GetDefault("RawImageStyles", "")
		sImageStyles = UI.CStr(sImageStyles)
 	End If
	'
	UI.AddClassDT("swiper-slide")
	UI.AddClassDT($"${sSwiperId}slide"$)
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	'
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
	setTextAlign(sTextAlign)
	If sImage <> "" Then
		mElement.Append($"<img id="${mName}_image" alt="${sImageAlt}" src="${sImage}"></img>"$)
		setImageAlt(sImageAlt)
		setImageCenter(bImageCenter)
		setImageCover(bImageCover)
		setImageLazyLoad(bImageLazyLoad)
		setImageNoRepeat(bImageNoRepeat)
		setImageAttributes(sImageAttributes)
		setImageStyles(sImageStyles)
		setImageClasses(sImageClasses)
		UI.OnEventByID($"${mName}_image"$, "click", mCallBack, $"${sSwiperId}_imageclick"$)
	End If
	
	If sSwiperId = "" Then Return	
	If bRefreshSwiper = False Then Return
    'refresh the swiper: this is for design time
    Dim swiperJSON As String = BANano.GetLocalStorage2(sSwiperId)
    Dim options As Map = BANano.FromJson(swiperJSON)
    '
    Dim swiper As BANanoObject
    Dim el As BANanoElement
	el.Initialize($"#${sSwiperId}"$)
	swiper.Initialize2("Swiper", Array(el.ToObject, options))
End Sub

'get the image id
Sub getImageID As String 
	Dim s As String = $"${mName}_image"$
	Return s
End Sub

'get Image Alt
Sub getImageAlt As String
	Return sImageAlt
End Sub

'get Image Center
Sub getImageCenter As Boolean
	Return bImageCenter
End Sub

'get Image Cover
Sub getImageCover As Boolean
	Return bImageCover
End Sub
'get Image Lazy Load
Sub getImageLazyLoad As Boolean
	Return bImageLazyLoad
End Sub
'get Image No Repeat
Sub getImageNoRepeat As Boolean
	Return bImageNoRepeat
End Sub
'get Raw Image Attributes
Sub getImageAttributes As String
	Return sImageAttributes
End Sub
'get Raw Image Classes
Sub getImageClasses As String
	Return sImageClasses
End Sub
'get Raw Image Styles
Sub getImageStyles As String
	Return sImageStyles
End Sub

Sub RemoveImageClasses(s As String)
	If mElement = Null Then Return
	If s <> "" Then UI.RemoveClassByID($"${mName}_image"$, s)
End Sub

'set Raw Image Classes
Sub setImageClasses(s As String)				'ignoredeadcode
	sImageClasses = s
	CustProps.put("RawImageClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_image"$, s)
End Sub

'set Raw Image Styles
Sub setImageStyles(s As String)				'ignoredeadcode
	sImageStyles = s
	CustProps.put("RawImageStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStylesByID($"${mName}_image"$, s)
End Sub


'set Raw Image Attributes
Sub setImageAttributes(s As String)				'ignoredeadcode
	sImageAttributes = s
	CustProps.put("RawImageAttributes", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttributesByID($"${mName}_image"$, s)
End Sub

'set Image No Repeat
Sub setImageNoRepeat(b As Boolean)					'ignoredeadcode
	bImageNoRepeat = b
	CustProps.put("ImageNoRepeat", b)
	If mElement = Null Then Return
	If bImageNoRepeat Then
		UI.AddClassByID($"${mName}_image"$, "bg-no-repeat")
	Else
		UI.RemoveClassBYID($"${mName}_image"$, "bg-no-repeat")
	End If
End Sub

'set Image Lazy Load
Sub setImageLazyLoad(b As Boolean)				'ignoredeadcode
	bImageLazyLoad = b
	CustProps.put("ImageLazyLoad", b)
	If mElement = Null Then Return
	If b Then
		UI.AddAttrByID($"${mName}_image"$, "loading", "lazy")
	Else
		UI.RemoveAttrByID($"${mName}_image"$, "loading")
	End If
End Sub

'set Image Alt
Sub setImageAlt(s As String)				'ignoredeadcode
	sImageAlt = s
	CustProps.put("ImageAlt", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttrByid($"${mName}_image"$, "alt", s)
End Sub

'set Image Center
Sub setImageCenter(b As Boolean)			'ignoredeadcode
	bImageCenter = b
	CustProps.put("ImageCenter", b)
	If mElement = Null Then Return
	If bImageCenter Then
		UI.AddClassByID($"${mName}_image"$, "bg-center")
	Else
		UI.RemoveClassByID($"${mName}_image"$, "bg-center")
	End If
End Sub



'set Image Cover
Sub setImageCover(b As Boolean)				'ignoredeadcode
	bImageCover = b
	CustProps.put("ImageCover", b)
	If mElement = Null Then Return
	If bImageCover Then
		UI.AddClassById($"${mName}_image"$, "bg-cover")
	Else
		UI.RemoveClassByID($"${mName}_image"$, "bg-cover")
	End If
End Sub


Sub setImage(s As String)
	sImage = s
	CustProps.Put("Image", s)
	If mElement = "" Then Return
	UI.SetImageByid($"${mName}_image"$, s)
End Sub

Sub getImage As String
	Return sImage
End Sub

'set Text Align
'options: center|end|justify|left|none|right|start
Sub setTextAlign(s As String)					'ignoredeadcode
	sTextAlign = s
	CustProps.put("TextAlign", s)
	If s <> "none" Then UI.addclass(mElement, $"text-${sTextAlign}"$)
End Sub
'get Text Align
Sub getTextAlign As String
	Return sTextAlign
End Sub

'set Refresh Swiper
Sub setRefreshSwiper(b As Boolean)
    bRefreshSwiper = b
    CustProps.put("RefreshSwiper", b)
End Sub
'set Swiper Id
Sub setSwiperId(s As String)
    sSwiperId = s
    CustProps.put("SwiperId", s)
End Sub
'get Refresh Swiper
Sub getRefreshSwiper As Boolean
    Return bRefreshSwiper
End Sub
'get Swiper Id
Sub getSwiperId As String
    Return sSwiperId
End Sub

Sub setParentID(xParentID As String)
    sParentID = xParentID
    CustProps.Put("ParentID", sParentID)
End Sub
'
'get ParentID
Sub getParentID As String
    Return sParentID
End Sub
