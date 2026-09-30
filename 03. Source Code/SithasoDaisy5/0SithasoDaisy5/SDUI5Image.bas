B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TypeOf, DisplayName: Type Of, FieldType: String, DefaultValue: normal, Description: Type Of, List: legend|normal
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: , Description: Label
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Src
#DesignerProperty: Key: Alt, DisplayName: Alt, FieldType: String, DefaultValue: Image, Description: Alt
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 12, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 12, Description: Width
#DesignerProperty: Key: CenterFieldSet, DisplayName: Center in FieldSet, FieldType: Boolean, DefaultValue: True, Description: Centered in FieldSet
#DesignerProperty: Key: Lazy, DisplayName: Lazy, FieldType: Boolean, DefaultValue: False, Description: Lazy
#DesignerProperty: Key: Gif, DisplayName: Gif, FieldType: Boolean, DefaultValue: False, Description: Gif
#DesignerProperty: Key: GifPoster, DisplayName: Gif Poster, FieldType: String, DefaultValue: , Description: Gif Poster
#DesignerProperty: Key: Cover, DisplayName: Cover, FieldType: Boolean, DefaultValue: True, Description: Cover
#DesignerProperty: Key: Center, DisplayName: Center, FieldType: Boolean, DefaultValue: True, Description: Center
#DesignerProperty: Key: NoRepeat, DisplayName: NoRepeat, FieldType: Boolean, DefaultValue: True, Description: No Repeat
#DesignerProperty: Key: MinHeight, DisplayName: Min Height, FieldType: String, DefaultValue: , Description: Min Height
#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue: , Description: Max Height
#DesignerProperty: Key: MinWidth, DisplayName: Min Width, FieldType: String, DefaultValue: , Description: Min Width
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: , Description: Max Width
#DesignerProperty: Key: Mask, DisplayName: Mask, FieldType: String, DefaultValue: rounded, Description: Mask, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: RoundedBox, DisplayName: Rounded Box, FieldType: Boolean, DefaultValue: False, Description: Rounded Box
#DesignerProperty: Key: PopOverTarget, DisplayName: Pop Over Target, FieldType: String, DefaultValue: , Description: Pop Over Target
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
	Private sAlt As String = "Image"
	Private sHeight As String = "12"
	Private sMask As String = "rounded"
	Private sShadow As String = "none"
	Private sSrc As String = "./assets/mashy.jpg"
	Private sWidth As String = "12"
	Private bRoundedBox As Boolean = False
	Private sMaxHeight As String = ""
	Private sMaxWidth As String = ""
	Private sMinHeight As String = ""
	Private sMinWidth As String = ""
	Private sPopOverTarget As String = ""
	Private bCover As Boolean = True
	Private bCenter As Boolean = True
	Private bNoRepeat As Boolean = True
	Private bLazy As Boolean = False
	Private bGif As Boolean = False
	Private sGifPoster As String = ""
	Private sLabel As String = ""
	Private sTypeOf As String = "normal"
	Public CONST TYPEOF_LEGEND As String = "legend"
	Public CONST TYPEOF_NORMAL As String = "normal"
	Private bCenterFieldSet As Boolean = True
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	BANano.DependsOnAsset("gifsee.min.js")
	BANano.DependsOnAsset("gifsee.min.css")
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
	CustProps.Put("Label", "")
	CustProps.Put("CenterFieldSet", True)
	CustProps.Put("TypeOf", "normal")
	CustProps.Put("Src", "./assets/mashy.jpg")
	CustProps.Put("Alt", "Image")
	CustProps.Put("Height", "12")
	CustProps.Put("Width", "12")
	CustProps.Put("Cover", True)
	CustProps.Put("Center", True)
	CustProps.Put("NoRepeat", True)
	CustProps.Put("MinHeight", "")
	CustProps.Put("MaxHeight", "")
	CustProps.Put("MinWidth", "")
	CustProps.Put("MaxWidth", "")
	CustProps.Put("Mask", "rounded")
	CustProps.Put("Shadow", "none")
	CustProps.Put("RoundedBox", False)
	CustProps.Put("PopOverTarget", "")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
	CustProps.Put("Lazy", False)
	CustProps.Put("Gif", False)
	CustProps.Put("GifPoster", "")
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
Sub setVisible(b As Boolean)				'ignoredeadcode
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	Select Case sTypeOf
	Case "normal"
		UI.SetVisible(mElement, b)
	Case "legend"
		UI.SetVisibleByID($"${mName}_control"$, b)
	End Select
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
		UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sAlt = Props.GetDefault("Alt", "Image")
		sAlt = UI.CStr(sAlt)
		sHeight = Props.GetDefault("Height", "12")
		sHeight = UI.CStr(sHeight)
		sMask = Props.GetDefault("Mask", "rounded")
		sMask = UI.CStr(sMask)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sSrc = Props.GetDefault("Src", "./assets/mashy.jpg")
		sSrc = UI.CStr(sSrc)
		sWidth = Props.GetDefault("Width", "12")
		sWidth = UI.CStr(sWidth)
		bRoundedBox = Props.GetDefault("RoundedBox", False)
		bRoundedBox = UI.CBool(bRoundedBox)
		sMaxHeight = Props.GetDefault("MaxHeight", "")
		sMaxHeight = UI.CStr(sMaxHeight)
		sMaxWidth = Props.GetDefault("MaxWidth", "")
		sMaxWidth = UI.CStr(sMaxWidth)
		sMinHeight = Props.GetDefault("MinHeight", "")
		sMinHeight = UI.CStr(sMinHeight)
		sMinWidth = Props.GetDefault("MinWidth", "")
		sMinWidth = UI.CStr(sMinWidth)
		sPopOverTarget = Props.GetDefault("PopOverTarget", "")
		sPopOverTarget = UI.CleanID(sPopOverTarget)
		bCover = Props.GetDefault("Cover", True)
		bCover = UI.CBool(bCover)
		bCenter = Props.GetDefault("Center", True)
		bCenter = UI.CBool(bCenter)
		bNoRepeat = Props.GetDefault("NoRepeat", True)
		bNoRepeat = UI.CBool(bNoRepeat)
		bLazy = Props.GetDefault("Lazy", False)
		bLazy = UI.CBool(bLazy)
		bGif = Props.GetDefault("Gif", False)
		bGif = UI.CBool(bGif)
		sGifPoster = Props.GetDefault("GifPoster", "")
		sGifPoster = UI.CStr(sGifPoster)
		sLabel = Props.GetDefault("Label", "")
		sLabel = UI.CStr(sLabel)
		sTypeOf = Props.GetDefault("TypeOf", "normal")
		sTypeOf = UI.CStr(sTypeOf)
		bCenterFieldSet = Props.GetDefault("CenterFieldSet", True)
		bCenterFieldSet = UI.CBool(bCenterFieldSet)
	End If
	'
	'If bLazy Then UI.AddAttrDT("loading", "lazy")
	'If bCover Then UI.AddClassDT("bg-cover")
	'If bCenter Then UI.AddClassDT("bg-center")
	'If bNoRepeat Then UI.AddClassDT("bg-no-repeat")
	'If sMaxHeight <> "" Then UI.AddMaxHeightDT(sMaxHeight)
	'If sMaxWidth <> "" Then UI.AddMaxWidthDT(sMaxWidth)
	'If sMinHeight <> "" Then UI.AddMinHeightDT(sMinHeight)
	'If sMinWidth <> "" Then UI.AddMinWidthDT(sMinWidth)
	'If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	'If sAlt <> "" Then UI.AddAttrDT("alt", sAlt)
	'If sHeight <> "" Then UI.AddHeightDT( sHeight)
	'If sMask <> "" Then UI.AddMaskDT(sMask)
	'If sShadow <> "" Then UI.AddShadowDT(sShadow)
	'If sSrc <> "" Then UI.AddAttrDT("src", sSrc)
	'If bGif Then 
	'	UI.AddAttrDT("data-gifsee", sSrc) 
	'End If
	'If sGifPoster <> "" Then
	'	UI.AddAttrDT("src", sGifPoster)
	'End If
	'If sWidth <> "" Then UI.AddWidthDT(sWidth)
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
	Select Case sTypeOf
	Case "normal"
		mElement = mTarget.Append($"[BANCLEAN]<img id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></img>"$).Get("#" & mName)
	Case "legend"
		mElement = mTarget.Append($"[BANCLEAN]
			<fieldset id="${mName}_control" class="${xclasses} fieldset rounded-sm" ${xattrs} style="${xstyles}">
				<legend id="${mName}_legend" class="fieldset-legend">${sLabel}</legend>
				<img id="${mName}" class="m-2"></img>
			</fieldset>"$).Get("#" & mName)
	End Select
	setMask(sMask)
	setWidth(sWidth)
	setHeight(sHeight)
	setLazy(bLazy)
	setCover(bCover)
	setCenter(bCenter)
	setNoRepeat(bNoRepeat)
	setMaxHeight(sMaxHeight)
	setMaxWidth(sMaxWidth)
	setMinHeight(sMinHeight)
	setMinWidth(sMinWidth)
	setAlt(sAlt)
	setShadow(sShadow)
	setSrc(sSrc)
	setRoundedBox(bRoundedBox)	
	setVisible(bVisible)
	setGif(bGif)
	setGifPoster(sGifPoster)
	setCenterFieldSet(bCenterFieldSet)
	setPopOverTarget(sPopOverTarget)
	UI.OnEvent(mElement, "click", mCallBack, $"${mName}_click"$)
	If SubExists(mCallBack, $"${mName}_click"$) Then
		UI.SetCursorPointer(mElement)
	End If
	If bGif Then
		Dim bo As BANanoObject
		bo.Initialize2("gifsee", mElement.ToObject)
	End If
End Sub

Sub setCenterFieldSet(b As Boolean)				'ignoredeadcode
	bCenterFieldSet = b
	CustProps.Put("CenterFieldSet", b)
	If mElement = Null Then Return
	If sTypeOf = "normal" Then Return
	UI.AddClassByID($"${mName}_control"$, "flex text-center align-center justify-center")
End Sub

Sub getCenterFieldSet As Boolean
	Return bCenterFieldSet
End Sub

Sub setLabel(s As String)
	sLabel = s
	CustProps.Put("LabeL", s)
	If mElement = Null Then Return
	If sTypeOf <> "legend" Then Return
	UI.SetTextByID($"${mName}_legend"$, s)
End Sub

Sub getLabel As String
	Return sLabel
End Sub

'set Type Of
'options: legend|normal
Sub setTypeOf(s As String)
	sTypeOf = s
	CustProps.put("TypeOf", s)
End Sub

'get Type Of
Sub getTypeOf As String
	Return sTypeOf
End Sub


Sub setGifPoster(s As String)				'ignoredeadcode
	sGifPoster = s
	CustProps.Put("GifPoster", sGifPoster)
	If mElement = Null Then Return
	If bGif = False Then Return
	If s <> "" Then UI.SetImage(mElement, sGifPoster)
End Sub

Sub getGifPoster As String
	Return sGifPoster
End Sub

Sub setGif(b As Boolean)						'ignoredeadcode
	bGif = b
	CustProps.Put("Gif", bGif)
	If mElement = Null Then Return
	If b Then UI.SetAttr(mElement, "data-gifsee", sSrc)
End Sub

Sub getGif As Boolean
	Return bGif
End Sub

Sub setLazy(b As Boolean)				'ignoredeadcode
	CustProps.Put("Lazy", b)
	bLazy = b
	If mElement = Null Then Return
	If b Then
		UI.AddAttr(mElement, "loading", "lazy")
	Else
		UI.RemoveAttr(mElement, "loading")	
	End If
End Sub

Sub getLazy As Boolean
	Return bLazy
End Sub

Sub setCover(b As Boolean)					'ignoredeadcode
	bCover = b
	CustProps.Put("Cover", bCover)
	If bCover Then 
		UI.AddClass(mElement, "bg-cover")
	Else
		UI.RemoveClass(mElement, "bg-cover")	
	End If
End Sub

Sub getCover As Boolean
	Return bCover
End Sub
'
Sub setCenter(b As Boolean)				'ignoredeadcode
	bCenter = b
	CustProps.Put("Center", bCover)
	If bCenter Then 
		UI.AddClass(mElement, "bg-center")
	Else
		UI.RemoveClass(mElement, "bg-center")	
	End If
End Sub

Sub getCenter As Boolean
	Return bCenter
End Sub

Sub setNoRepeat(b As Boolean)					'ignoredeadcode
	bNoRepeat = b
	CustProps.Put("NoRepeat", bNoRepeat)
	If bNoRepeat Then
		UI.AddClass(mElement, "bg-no-repeat")
	Else
		UI.RemoveClass(mElement, "bg-no-repeat")
	End If
End Sub

Sub getNoRepeat As Boolean
	Return bNoRepeat
End Sub

'set Pop Over Target
Sub setPopOverTarget(s As String)				'ignoredeadcode
	s = UI.CleanID(s)
	sPopOverTarget = s
	CustProps.put("PopOverTarget", s)
	If mElement = Null Then Return
	If s = "" Then Return
	UI.AddAttr(mElement, "popovertarget", sPopOverTarget)
	UI.AddStyle(mElement, "anchor-name", $"--${sPopOverTarget}_anchor"$)
End Sub

'get Pop Over Target
Sub getPopOverTarget As String					'ignoredeadcode
	Return sPopOverTarget
End Sub


'set Rounded Box
Sub setRoundedBox(b As Boolean)					'ignoredeadcode
	bRoundedBox = b
	CustProps.put("RoundedBox", b)
	If mElement = Null Then Return
	UI.SetRoundedBox(mElement, b)
End Sub
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub

'set Alt
Sub setAlt(s As String)							'ignoredeadcode
	sAlt = s
	CustProps.put("Alt", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "alt", s)
End Sub
'set Height
Sub setHeight(s As String)					'ignoredeadcode
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Mask
'options: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
Sub setMask(s As String)						'ignoredeadcode
	sMask = s
	CustProps.put("Mask", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMask(mElement, sMask)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)					'ignoredeadcode
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Src
Sub setSrc(s As String)						'ignoredeadcode
	sSrc = s
	CustProps.put("Src", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "src", s)
End Sub
'set Width
Sub setWidth(s As String)					'ignoredeadcode
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub
'get Alt
Sub getAlt As String
	Return sAlt
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Mask
Sub getMask As String
	Return sMask
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub
'get Src
Sub getSrc As String
	Return sSrc
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub


'set Max Height
Sub setMaxHeight(s As String)				'ignoredeadcode
	sMaxHeight = s
	CustProps.put("MaxHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxHeight(mElement, s)
End Sub
'set Max Width
Sub setMaxWidth(s As String)				'ignoredeadcode
	sMaxWidth = s
	CustProps.put("MaxWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxWidth(mElement, s)
End Sub
'set Min Height
Sub setMinHeight(s As String)				'ignoredeadcode
	sMinHeight = s
	CustProps.put("MinHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMinHeight(mElement, s)
End Sub
'set Min Width
Sub setMinWidth(s As String)				'ignoredeadcode
	sMinWidth = s
	CustProps.put("MinWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMinWidth(mElement, s)
End Sub
'get Max Height
Sub getMaxHeight As String
	Return sMaxHeight
End Sub
'get Max Width
Sub getMaxWidth As String
	Return sMaxWidth
End Sub
'get Min Height
Sub getMinHeight As String
	Return sMinHeight
End Sub
'get Min Width
Sub getMinWidth As String
	Return sMinWidth
End Sub

Sub AddClass(className As String)
	If mElement = Null Then Return
	UI.AddClass(mElement, className)
End Sub

Sub RemoveClass(className As String)
	If mElement = Null Then Return
	UI.RemoveClass(mElement, className)
End Sub

Sub AddAttr(k As String, v As String)
	If mElement = Null Then Return
	UI.AddAttr(mElement, k, v)
End Sub
