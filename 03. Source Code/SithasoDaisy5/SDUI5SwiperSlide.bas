B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component, enter swiperID
#DesignerProperty: Key: Image, DisplayName: Image, FieldType: String, DefaultValue: ./assets/600by600.jpg, Description: Image
#DesignerProperty: Key: SwiperId, DisplayName: Swiper Id, FieldType: String, DefaultValue: , Description: Swiper Id
#DesignerProperty: Key: RefreshSwiper, DisplayName: Refresh Swiper, FieldType: Boolean, DefaultValue: False, Description: Refresh Swiper after this
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
	Private sImage As String = ""
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
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=? ")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=? ")
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
	
    If bRefreshSwiper = False Then
        'do not add this slide
		mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
		setTextAlign(sTextAlign)
		If sImage <> "" Then
			mElement.Append($"<img id="${mName}_image" alt="${sImage}" src="${sImage}"></img>"$)
		End If
    Else
        'refresh the swiper
        If sSwiperId = "" Then Return
        Dim swiperJSON As String = BANano.GetLocalStorage2(sSwiperId)
        Dim options As Map = BANano.FromJson(swiperJSON)
        '
        Dim swiper As BANanoObject
        Dim el As BANanoElement
		el.Initialize($"#${sSwiperId}"$)
        swiper.Initialize2("Swiper", Array(el.ToObject, options))
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
