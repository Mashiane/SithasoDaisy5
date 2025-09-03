B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _figure|_image|_figure1|_image1|_content|_title|_actions, Description: Child Item _content|_title|_actions|_figure|_image|_figure1|_image1
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: HoverGallery, DisplayName: Hover Gallery, FieldType: Boolean, DefaultValue: False, Description: Hover Gallery
#DesignerProperty: Key: Image, DisplayName: Image, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Image
#DesignerProperty: Key: ImagePosition, DisplayName: Image Position, FieldType: String, DefaultValue: start, Description: Image Position, List: end|start
#DesignerProperty: Key: ImageFull, DisplayName: Image Full, FieldType: Boolean, DefaultValue: False, Description: Image Full
#DesignerProperty: Key: ImageHeight, DisplayName: Image Height, FieldType: String, DefaultValue: , Description: Image Height
#DesignerProperty: Key: ImageWidth, DisplayName: Image Width, FieldType: String, DefaultValue: , Description: Image Width
#DesignerProperty: Key: ImageRoundedBox, DisplayName: Image Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Image Rounded Box
#DesignerProperty: Key: ImageShadow, DisplayName: Image Shadow, FieldType: String, DefaultValue: none, Description: Image Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: ImageVisible, DisplayName: Image Visible, FieldType: Boolean, DefaultValue: False, Description: Image Visible
#DesignerProperty: Key: ImageClasses, DisplayName: Image Classes, FieldType: String, DefaultValue: , Description: Image Classes
#DesignerProperty: Key: Side, DisplayName: Image on Side, FieldType: Boolean, DefaultValue: False, Description: Image on Side
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Card Title, Description: Title
#DesignerProperty: Key: TitleVisible, DisplayName: Title Visible, FieldType: Boolean, DefaultValue: True, Description: Title Visible
#DesignerProperty: Key: TitleClasses, DisplayName: Title Classes, FieldType: String, DefaultValue: , Description: Title Classes
#DesignerProperty: Key: RawContent, DisplayName: Content, FieldType: String, DefaultValue: Card Content, Description: Content
#DesignerProperty: Key: BodyClasses, DisplayName: Body Classes, FieldType: String, DefaultValue: , Description: Body Classes
#DesignerProperty: Key: ContentClasses, DisplayName: Content Classes, FieldType: String, DefaultValue: , Description: Content Classes
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: String, DefaultValue: none, Description: Shrink, List: 0|1|none
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: none, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: base-100, Description: Background Color
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: Boolean, DefaultValue: True, Description: Border
#DesignerProperty: Key: Dash, DisplayName: Dash, FieldType: Boolean, DefaultValue: False, Description: Dash
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 96, Description: Width
#DesignerProperty: Key: SMSide, DisplayName: SM Side, FieldType: Boolean, DefaultValue: False, Description: SM Side
#DesignerProperty: Key: MDSide, DisplayName: MD Side, FieldType: Boolean, DefaultValue: False, Description: MD Side
#DesignerProperty: Key: LGSide, DisplayName: LG Side, FieldType: Boolean, DefaultValue: False, Description: LG Side
#DesignerProperty: Key: XLSide, DisplayName: XL Side, FieldType: Boolean, DefaultValue: False, Description: XL Side
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: sm, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: ActionsVisible, DisplayName: Actions Visible, FieldType: Boolean, DefaultValue: True, Description: Actions Visible
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
	Private bActionsVisible As Boolean = True
	Private sBackgroundColor As String = "base-100"
	Private bBorder As Boolean = True
	Private sContentClasses As String = ""
	Private bDash As Boolean = False
	Private sHeight As String = ""
	Private sImage As String = "./assets/mashy.jpg"
	Private bImageFull As Boolean = False
	Private sImageHeight As String = ""
	Private sImagePosition As String = "start"
	Private bImageRoundedBox As Boolean = False
	Private sImageShadow As String = "none"
	Private bImageVisible As Boolean = False
	Private sImageWidth As String = ""
	Private bLGSide As Boolean = False
	Private bMDSide As Boolean = False
	Private sRawContent As String = "Card Content"
	Private sRounded As String = "none"
	Private bRoundedBox As Boolean = False
	Private bSMSide As Boolean = False
	Private sShadow As String = "sm"
	Private bSide As Boolean = False
	Private sSize As String = "none"
	Private sTextColor As String = ""
	Private sTitle As String = "Card Title"
	Private bTitleVisible As Boolean = True
	Private sWidth As String = "96"
	Private bXLSide As Boolean = False
	Public CONST IMAGEPOSITION_END As String = "end"
	Public CONST IMAGEPOSITION_START As String = "start"
	Private sImageClasses As String = ""
	Private sBodyClasses As String = ""
	Private sShrink As String = "none"
	Private bHoverGallery As Boolean = False
	Private sTitleClasses As String
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
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
		bActionsVisible = Props.GetDefault("ActionsVisible", True)
		bActionsVisible = UI.CBool(bActionsVisible)
'		sBackgroundColor = Props.GetDefault("BackgroundColor", "base-100")
'		sBackgroundColor = UI.CStr(sBackgroundColor)
		bBorder = Props.GetDefault("Border", True)
		bBorder = UI.CBool(bBorder)
		sContentClasses = Props.GetDefault("ContentClasses", "")
		sContentClasses = UI.CStr(sContentClasses)
		bDash = Props.GetDefault("Dash", False)
		bDash = UI.CBool(bDash)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sImage = Props.GetDefault("Image", "./assets/mashy.jpg")
		sImage = UI.CStr(sImage)
		bImageFull = Props.GetDefault("ImageFull", False)
		bImageFull = UI.CBool(bImageFull)
		sImageHeight = Props.GetDefault("ImageHeight", "")
		sImageHeight = UI.CStr(sImageHeight)
		sImagePosition = Props.GetDefault("ImagePosition", "start")
		sImagePosition = UI.CStr(sImagePosition)
		bImageRoundedBox = Props.GetDefault("ImageRoundedBox", False)
		bImageRoundedBox = UI.CBool(bImageRoundedBox)
		sImageShadow = Props.GetDefault("ImageShadow", "none")
		sImageShadow = UI.CStr(sImageShadow)
		If sImageShadow = "none" Then sImageShadow = ""
		bImageVisible = Props.GetDefault("ImageVisible", False)
		bImageVisible = UI.CBool(bImageVisible)
		sImageWidth = Props.GetDefault("ImageWidth", "")
		sImageWidth = UI.CStr(sImageWidth)
		bLGSide = Props.GetDefault("LGSide", False)
		bLGSide = UI.CBool(bLGSide)
		bMDSide = Props.GetDefault("MDSide", False)
		bMDSide = UI.CBool(bMDSide)
		sRawContent = Props.GetDefault("RawContent", "Card Content")
		sRawContent = UI.CStr(sRawContent)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		bSMSide = Props.GetDefault("SMSide", False)
		bSMSide = UI.CBool(bSMSide)
		sShadow = Props.GetDefault("Shadow", "sm")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		bSide = Props.GetDefault("Side", False)
		bSide = UI.CBool(bSide)
		sSize = Props.GetDefault("Size", "none")
		sSize = UI.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sTextColor = Props.GetDefault("TextColor", "")
		sTextColor = UI.CStr(sTextColor)
		sTitle = Props.GetDefault("Title", "Card Title")
		sTitle = UI.CStr(sTitle)
		bTitleVisible = Props.GetDefault("TitleVisible", True)
		bTitleVisible = UI.CBool(bTitleVisible)
		sWidth = Props.GetDefault("Width", "96")
		sWidth = UI.CStr(sWidth)
		bXLSide = Props.GetDefault("XLSide", False)
		bXLSide = UI.CBool(bXLSide)
		sImageClasses = Props.GetDefault("ImageClasses", "")
		sImageClasses = UI.CStr(sImageClasses)
		sBodyClasses = Props.GetDefault("BodyClasses", "")
		sBodyClasses = UI.CStr(sBodyClasses)
		sShrink = Props.GetDefault("Shrink", "none")
		sShrink = UI.CStr(sShrink)
		If sShrink = "none" Then sShrink = ""
		bHoverGallery = Props.GetDefault("HoverGallery", False)
		bHoverGallery = UI.CBool(bHoverGallery)
		sTitleClasses = Props.GetDefault("TitleClasses", "")
		sTitleClasses = UI.CStr(sTitleClasses)
	End If
	'
	UI.AddClassDT("card")
	If bBorder = True Then UI.AddClassDT("card-border")
	If bDash = True Then UI.AddClassDT("card-dash")
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	If bImageFull = True Then UI.AddClassDT("image-full")
	If bLGSide = True Then UI.AddClassDT("lg:card-side")
	If bMDSide = True Then UI.AddClassDT("md:card-side")
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If bSMSide = True Then UI.AddClassDT("sm:card-side")
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If bSide = True Then UI.AddClassDT("card-side")
	If sSize <> "" Then UI.AddSizeDT("card", sSize)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	If bXLSide = True Then UI.AddClassDT("xl:card-side")
	If sShrink <> "" Then
		If sShrink = "1" Then
			UI.AddClassDT("shrink")
		Else
			UI.AddClassDT("shrink-" & sShrink)
		End If
	End If
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
		<figure id="${mName}_figure" class="hidden">
    		<img id="${mName}_image" src="${sImage}" alt="" class="hidden bg-cover bg-center bg-no-repeat"></img>
  		</figure>
  		<div id="${mName}_body" class="card-body">
			<h2 id="${mName}_title" class="card-title hidden">${sTitle}</h2>
    		<div id="${mName}_content"></div>
    		<div id="${mName}_actions" class="card-actions justify-end hidden"></div>
  		</div>
		<figure id="${mName}_figure1" class="hidden">
    		<img id="${mName}_image1" src="${sImage}" alt="" class="hidden bg-cover bg-center bg-no-repeat"></img>
  		</figure>
	</div>"$).Get("#" & mName)
	'
	setActionsVisible(bActionsVisible)
	setContentClasses(sContentClasses)
	setContent(sRawContent)
	setTitle(sTitle)
	setTitleVisible(bTitleVisible)
	setBodyClasses(sBodyClasses)
	If sImage <> "" Then
		setImage(sImage)
		setImageVisible(bImageVisible)
		setImageRoundedBox(bImageRoundedBox)
		setImageShadow(sImageShadow)
		setImageWidth(sImageWidth)
		setImageHeight(sImageHeight)
		setImageClasses(sImageClasses)
	End If	
	setHoverGallery(bHoverGallery)
'	setVisible(bVisible)
End Sub

Sub setTitleClasses(s As String)
	sTitleClasses = s
	CustProps.Put("TitleClasses", s)
	If mElement = Null Then Return
	UI.AddClassByID($"${mName}_title"$, sTitleClasses)
End Sub

Sub getTitleClasses As String
	Return sTitleClasses
End Sub

Sub setHoverGallery(b As Boolean)				'ignoredeadcode
	bHoverGallery = b
	CustProps.put("HoverGallery", b)
	If mElement = Null Then Return
	If b Then 
		Select Case sImagePosition
		Case "start"
			UI.AddClassByID($"${mName}_figure"$, "hover-gallery")
			UI.SetVisibleByID($"${mName}_figure"$, True)
		Case "end"
			UI.AddClassByID($"${mName}_figure1"$, "hover-gallery")
			UI.SetVisibleByID($"${mName}_figure1"$, True)
		End Select
	Else
		Select Case sImagePosition
		Case "start"
			UI.RemoveClassByID($"${mName}_figure"$, "hover-gallery")
		Case "end"
			UI.RemoveClassByID($"${mName}_figure1"$, "hover-gallery")
		End Select
	End If
End Sub


'set Shrink
'options: 0|1|none
Sub setShrink(s As String)
	sShrink = s
	CustProps.put("Shrink", s)
	If mElement = Null Then Return
	If s <> "" Then
		If s = "1" Then UI.AddClass(mElement, "shrink")
		If s <> "1" Then UI.AddClass(mElement, "shrink-" & sShrink)
	End If
End Sub

'get Shrink
Sub getShrink As String
	Return sShrink
End Sub

'get a step from the wizard
Sub ContentAt As String
	Return $"#${mName}_content"$
End Sub

'set Actions Visible
Sub setActionsVisible(b As Boolean)			'ignoredeadcode
	bActionsVisible = b
	CustProps.put("ActionsVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_actions"$, b)
End Sub
'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Border
Sub setBorder(b As Boolean)
	bBorder = b
	CustProps.put("Border", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "card-border")
	Else
		UI.RemoveClass(mElement, "card-border")
	End If
End Sub
'set Content Classes
Sub setContentClasses(s As String)			'ignoredeadcode
	sContentClasses = s
	CustProps.put("ContentClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_content"$, s)
End Sub

'set Body Classes
Sub setBodyClasses(s As String)			'ignoredeadcode
	sBodyClasses = s
	CustProps.put("BodyClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClassByID($"${mName}_body"$, s)
End Sub

Sub getBodyClasses As String
	Return sBodyClasses
End Sub

Sub setImageClasses(s As String)			'ignoredeadcode
	sImageClasses = s
	CustProps.put("ImageClasses", s)
	If mElement = Null Then Return
	Select Case sImagePosition
	Case "start"
		If s <> "" Then UI.AddClassByID($"${mName}_figure"$, s)
	Case "end"		
		If s <> "" Then UI.AddClassByID($"${mName}_figure1"$, s)
	End Select
End Sub

Sub getImageClasses As String
	Return sImageClasses
End Sub

'set Dash
Sub setDash(b As Boolean)
	bDash = b
	CustProps.put("Dash", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "card-dash")
	Else
		UI.RemoveClass(mElement, "card-dash")
	End If
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Image
Sub setImage(s As String)				'ignoredeadcode
	sImage = s
	CustProps.put("Image", s)
	If mElement = Null Then Return
	If s <> "" Then 
		Select Case sImagePosition
		Case "start"
			UI.SetImageByID($"${mName}_image"$, s)
		Case "end"
			UI.SetImageByID($"${mName}_image1"$, s)
		End Select	
	End If
End Sub
'set Image Full
Sub setImageFull(b As Boolean)
	bImageFull = b
	CustProps.put("ImageFull", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "image-full")
	Else
		UI.RemoveClass(mElement, "image-full")
	End If
End Sub
'set Image Height
Sub setImageHeight(s As String)			'ignoredeadcode
	sImageHeight = s
	CustProps.put("ImageHeight", s)
	If mElement = Null Then Return
	If s <> "" Then
		Select Case sImagePosition
		Case "start"
			UI.SetHeightByID($"${mName}_image"$, s)
		Case "end"
			UI.SetHeightByID($"${mName}_image1"$, s)
		End Select
	End If
End Sub
'set Image Position
'options: end|start
Sub setImagePosition(s As String)
	sImagePosition = s
	CustProps.put("ImagePosition", s)
End Sub
'set Image Rounded Box
Sub setImageRoundedBox(b As Boolean)				'ignoredeadcode
	bImageRoundedBox = b
	CustProps.put("ImageRoundedBox", b)
	If mElement = Null Then Return
	Select Case sImagePosition
	Case "start"
		If b Then 
			UI.AddClassByID($"${mName}_image"$, "rounded-box")
		Else
			UI.RemoveClassByID($"${mName}_image"$, "rounded-box")
		End If
	Case "end"
		If b Then 
			UI.AddClassByID($"${mName}_image1"$, "rounded-box")
		Else
			UI.RemoveClassByID($"${mName}_image1"$, "rounded-box")
		End If
	End Select
End Sub
'set Image Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setImageShadow(s As String)				'ignoredeadcode
	sImageShadow = s
	CustProps.put("ImageShadow", s)
	If mElement = Null Then Return
	If s <> "" Then
		Select Case sImagePosition
		Case "start"
			UI.SetShadowByID($"${mName}_image"$,s)
		Case "end"
			UI.SetShadowByID($"${mName}_image1"$, s)
		End Select
	End If
End Sub
'set Image Visible
Sub setImageVisible(b As Boolean)				'ignoredeadcode
	bImageVisible = b
	CustProps.put("ImageVisible", b)
	If mElement = Null Then Return
	Select Case sImagePosition
	Case "start"
		UI.SetVisibleByID($"${mName}_figure"$, b)
		UI.SetVisibleByID($"${mName}_image"$, b)
		UI.SetVisibleByID($"${mName}_figure1"$, False)
		UI.SetVisibleByID($"${mName}_image1"$, False)
	Case "end"
		UI.SetVisibleByID($"${mName}_figure1"$, b)
		UI.SetVisibleByID($"${mName}_image1"$, b)
		UI.SetVisibleByID($"${mName}_figure"$, False)
		UI.SetVisibleByID($"${mName}_image"$, False)
	End Select
End Sub
'set Image Width
Sub setImageWidth(s As String)			'ignoredeadcode
	sImageWidth = s
	CustProps.put("ImageWidth", s)
	If mElement = Null Then Return
	If s <> "" Then
		Select Case sImagePosition
		Case "start"
			UI.SetWidthByID($"${mName}_image"$, s)
		Case "end"
			UI.SetWidthByID($"${mName}_image1"$, s)
		End Select
	End If
End Sub
'set L g Side
Sub setLGSide(b As Boolean)
	bLGSide = b
	CustProps.put("LGSide", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "lg:card-side")
	Else
		UI.RemoveClass(mElement, "lg:card-side")
	End If
End Sub
'set M d Side
Sub setMDSide(b As Boolean)
	bMDSide = b
	CustProps.put("MDSide", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "md:card-side")
	Else
		UI.RemoveClass(mElement, "md:card-side")
	End If
End Sub
'set Raw Content
Sub setContent(s As String)			'ignoredeadcode
	sRawContent = s
	CustProps.put("RawContent", s)
	If mElement = Null Then Return
	UI.settextbyid($"${mName}_content"$, s)
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
'set S m Side
Sub setSMSide(b As Boolean)
	bSMSide = b
	CustProps.put("SMSide", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "sm:card-side")
	Else
		UI.RemoveClass(mElement, "sm:card-side")
	End If
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Side
Sub setSide(b As Boolean)
	bSide = b
	CustProps.put("Side", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "card-side")
	Else
		UI.RemoveClass(mElement, "card-side")
	End If
End Sub
'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "card", sSize)
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
End Sub
'set Title
Sub setTitle(s As String)			'ignoredeadcode
	sTitle = s
	CustProps.put("Title", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_title"$, s)
End Sub
'set Title Visible
Sub setTitleVisible(b As Boolean)			'ignoredeadcode
	bTitleVisible = b
	CustProps.put("TitleVisible", b)
	If mElement = Null Then Return
	UI.SetVisibleByID($"${mName}_title"$, b)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'set X l Side
Sub setXLSide(b As Boolean)
	bXLSide = b
	CustProps.put("XLSide", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "xl:card-side")
	Else
		UI.RemoveClass(mElement, "xl:card-side")
	End If
End Sub
'get Actions Visible
Sub getActionsVisible As Boolean
	Return bActionsVisible
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Border
Sub getBorder As Boolean
	Return bBorder
End Sub
'get Content Classes
Sub getContentClasses As String
	Return sContentClasses
End Sub
'get Dash
Sub getDash As Boolean
	Return bDash
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Image
Sub getImage As String
	Return sImage
End Sub
'get Image Full
Sub getImageFull As Boolean
	Return bImageFull
End Sub
'get Image Height
Sub getImageHeight As String
	Return sImageHeight
End Sub
'get Image Position
Sub getImagePosition As String
	Return sImagePosition
End Sub
'get Image Rounded Box
Sub getImageRoundedBox As Boolean
	Return bImageRoundedBox
End Sub
'get Image Shadow
Sub getImageShadow As String
	Return sImageShadow
End Sub
'get Image Visible
Sub getImageVisible As Boolean
	Return bImageVisible
End Sub
'get Image Width
Sub getImageWidth As String
	Return sImageWidth
End Sub
'get L g Side
Sub getLGSide As Boolean
	Return bLGSide
End Sub
'get M d Side
Sub getMDSide As Boolean
	Return bMDSide
End Sub
'get Raw Content
Sub getContent As String
	Return sRawContent
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub
'get S m Side
Sub getSMSide As Boolean
	Return bSMSide
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Side
Sub getSide As Boolean
	Return bSide
End Sub
'get Size
Sub getSize As String
	Return sSize
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Title
Sub getTitle As String
	Return sTitle
End Sub
'get Title Visible
Sub getTitleVisible As Boolean
	Return bTitleVisible
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub
'get X l Side
Sub getXLSide As Boolean
	Return bXLSide
End Sub