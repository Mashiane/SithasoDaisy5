B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TypeOf, DisplayName: Type Of, FieldType: String, DefaultValue: image, Description: Type Of, List: custom|image
#DesignerProperty: Key: Image, DisplayName: Image, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Image
#DesignerProperty: Key: Refresh, DisplayName: Refresh, FieldType: Boolean, DefaultValue: False, Description: Refresh Carousel
#DesignerProperty: Key: Relative, DisplayName: Relative, FieldType: Boolean, DefaultValue: False, Description: Relative
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 80, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 80, Description: Width
#DesignerProperty: Key: ImageHeight, DisplayName: Image Height, FieldType: String, DefaultValue: 80, Description: Image Height
#DesignerProperty: Key: ImageWidth, DisplayName: Image Width, FieldType: String, DefaultValue: 80, Description: Image Width
#DesignerProperty: Key: ImageRounded, DisplayName: Image Rounded, FieldType: String, DefaultValue: none, Description: Image Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: ImageRoundedBox, DisplayName: Image Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Image Rounded Box
#DesignerProperty: Key: ImageShadow, DisplayName: Image Shadow, FieldType: String, DefaultValue: none, Description: Image Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: NavigationButtons, DisplayName: Navigation Buttons, FieldType: Boolean, DefaultValue: False, Description: Navigation Buttons
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
	Private sHeight As String = "80"
	Private sImage As String = "./assets/mashy.jpg"
	Private bNavigationButtons As Boolean = False
	Private bRelative As Boolean = False
	Private sTypeOf As String = "image"
	Private sWidth As String = "80"
	Public CONST TYPEOF_CUSTOM As String = "custom"
	Public CONST TYPEOF_IMAGE As String = "image"
	Private sImageHeight As String = "80"
	Private sImageWidth As String = "80"
	Private sImageRounded As String = "none"
	Private bImageRoundedBox As Boolean = False
	Private sImageShadow As String = "none"       
	Private bRefresh As Boolean = False
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
	CustProps.Put("TypeOf", "image")
	CustProps.Put("Image", "./assets/mashy.jpg")
	CustProps.Put("Relative", False)
	CustProps.Put("Height", "80")
	CustProps.Put("Width", "80")
	CustProps.Put("ImageHeight", "80")
	CustProps.Put("ImageWidth", "80")
	CustProps.Put("ImageRounded", "none")
	CustProps.Put("ImageRoundedBox", False)
	CustProps.Put("ImageShadow", "none")
	CustProps.Put("NavigationButtons", False)
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
	CustProps.Put("Refresh", False)
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
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sHeight = Props.GetDefault("Height", "80")
		sHeight = UI.CStr(sHeight)
		sImage = Props.GetDefault("Image", "./assets/mashy.jpg")
		sImage = UI.CStr(sImage)
		bNavigationButtons = Props.GetDefault("NavigationButtons", False)
		bNavigationButtons = UI.CBool(bNavigationButtons)
		bRelative = Props.GetDefault("Relative", False)
		bRelative = UI.CBool(bRelative)
		sTypeOf = Props.GetDefault("TypeOf", "image")
		sTypeOf = UI.CStr(sTypeOf)
		sWidth = Props.GetDefault("Width", "80")
		sWidth = UI.CStr(sWidth)
		sImageHeight = Props.GetDefault("ImageHeight", "80")
		sImageHeight = UI.CStr(sImageHeight)
		sImageWidth = Props.GetDefault("ImageWidth", "80")
		sImageWidth = UI.CStr(sImageWidth)
		sImageRounded = Props.GetDefault("ImageRounded", "none")
		sImageRounded = UI.CStr(sImageRounded)
		If sImageRounded = "none" Then sImageRounded = ""
		bImageRoundedBox = Props.GetDefault("ImageRoundedBox", False)
		bImageRoundedBox = UI.CBool(bImageRoundedBox)
		sImageShadow = Props.GetDefault("ImageShadow", "none")
		sImageShadow = UI.CStr(sImageShadow)
		If sImageShadow = "none" Then sImageShadow = ""
		bRefresh = Props.GetDefault("Refresh", False)
		bRefresh = UI.CBool(bRefresh)
	End If
	'
	If bNavigationButtons Then bRelative = True
	If sTypeOf = "custom" Then sImage = ""
	UI.AddClassDT("carousel-item")
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If bRelative = True Then UI.AddClassDT("relative")
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
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
		<img id="${mName}_image" src="${sImage}" alt="" class="bg-cover bg-center bg-no-repeat"></img>
		<div id="${mName}_navigation" class="absolute left-5 right-5 top-1/2 flex -translate-y-1/2 transform justify-between">
      		<a id="${mName}_prev" class="btn btn-circle bg-base-100/70 hover:bg-base-100">❮</a>
      		<a id="${mName}_next" class="btn btn-circle bg-base-100/70 hover:bg-base-100">❯</a>
    	</div>
	</div>"$).Get("#" & mName)
	'
	Select Case sTypeOf
	Case "custom"
		UI.RemoveElementByID($"${mName}_image"$)
	Case "image"
		setImage(sImage)
		setImageWidth(sImageWidth)
		setImageHeight(sImageHeight)
		setImageRounded(sImageRounded)
		setImageRoundedBox(bImageRoundedBox)
		setImageShadow(sImageShadow)
	End Select
	
	setWidth(sWidth)
	setHeight(sHeight)

	'
	If bNavigationButtons = False Then
		UI.RemoveElementByID($"${mName}_navigation"$)
	End If
	If bRefresh Then
		BANano.RunJavascriptMethod("updateCarouselAnchors", Array($"#${sParentID}"$))
	End If
End Sub

Sub setRefresh(b As Boolean)
	bRefresh = b
	CustProps.Put("Refresh", bRefresh)
End Sub

Sub getRefresh As Boolean
	Return bRefresh
End Sub

'set Image Rounded
'options: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
Sub setImageRounded(s As String)				'ignoredeadcode
	sImageRounded = s
	CustProps.put("ImageRounded", s)
	If mElement = Null Then Return
	If sImage = "" Then Return
	If s <> "" Then UI.SetRoundedByID($"${mName}_image"$, s)
End Sub
'set Image Rounded Box
Sub setImageRoundedBox(b As Boolean)				'ignoredeadcode
	bImageRoundedBox = b
	CustProps.put("ImageRoundedBox", b)
	If mElement = Null Then Return
	If sImage = "" Then Return
	If b = True Then
		UI.AddClassByID($"${mName}_image"$, "rounded-box")
	Else
		UI.RemoveClassByID($"${mName}_image"$, "rounded-box")
	End If
End Sub
'set Image Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setImageShadow(s As String)			'ignoredeadcode
	sImageShadow = s
	CustProps.put("ImageShadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "image-shadow-" & s)
End Sub
'get Image Rounded
Sub getImageRounded As String
	Return sImageRounded
End Sub
'get Image Rounded Box
Sub getImageRoundedBox As Boolean
	Return bImageRoundedBox
End Sub
'get Image Shadow
Sub getImageShadow As String
	Return sImageShadow
End Sub

'set Image Height
Sub setImageHeight(s As String)			'ignoredeadcode
	sImageHeight = s
	CustProps.put("ImageHeight", s)
	If mElement = Null Then Return
	If sImage = "" Then Return
	If s <> "" Then UI.SetHeightByID($"${mName}_image"$, s)
End Sub
'set Image Width
Sub setImageWidth(s As String)			'ignoredeadcode
	sImageWidth = s
	CustProps.put("ImageWidth", s)
	If mElement = Null Then Return
	If sImage = "" Then Return
	If s <> "" Then UI.SetWidthByID($"${mName}_image"$, s)
End Sub
'get Image Height
Sub getImageHeight As String
	Return sImageHeight
End Sub
'get Image Width
Sub getImageWidth As String
	Return sImageWidth
End Sub

'set Height
Sub setHeight(s As String)					'ignoredeadcode
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Image
Sub setImage(s As String)			'ignoredeadcode
	sImage = s
	CustProps.put("Image", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.SetImageByID($"${mName}_image"$, s)
	Else
		UI.RemoveElementByID($"${mName}_image"$)	
	End If
End Sub

'set Navigation Buttons
Sub setNavigationButtons(b As Boolean)
	bNavigationButtons = b
	CustProps.put("NavigationButtons", b)
End Sub

'set Relative
Sub setRelative(b As Boolean)
        bRelative = b
        CustProps.put("Relative", b)
        If mElement = Null Then Return
        If b = True Then
            UI.AddClass(mElement, "relative")
        Else
            UI.RemoveClass(mElement, "relative")
        End If
End Sub
'set Type Of
'options: custom|image
Sub setTypeOf(s As String)
        sTypeOf = s
        CustProps.put("TypeOf", s)
End Sub
'set Width
Sub setWidth(s As String)			'ignoredeadcode
        sWidth = s
        CustProps.put("Width", s)
        If mElement = Null Then Return
        If s = "" Then Return
		UI.SetWidth(mElement, sWidth)
End Sub
'get Height
Sub getHeight As String
        Return sHeight
End Sub
'get Image
Sub getImage As String
        Return sImage
End Sub

'get Navigation Buttons
Sub getNavigationButtons As Boolean
        Return bNavigationButtons
End Sub

'get Relative
Sub getRelative As Boolean
        Return bRelative
End Sub
'get Type Of
Sub getTypeOf As String
        Return sTypeOf
End Sub
'get Width
Sub getWidth As String
        Return sWidth
End Sub