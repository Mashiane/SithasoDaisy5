B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: ./assets/mashy.jpg, Description: Src
#DesignerProperty: Key: Alt, DisplayName: Alt, FieldType: String, DefaultValue: Image, Description: Alt
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 12, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 12, Description: Width
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
		sAlt = Props.GetDefault("Alt", "Image")
		sAlt = UI.CStr(sAlt)
		sHeight = Props.GetDefault("Height", "12")
		sHeight = UI.CStr(sHeight)
		sMask = Props.GetDefault("Mask", "rounded")
		sMask = UI.CStr(sMask)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
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
	End If
	'
	UI.AddClassDT("bg-cover bg-center bg-no-repeat")
	If sMaxHeight <> "" Then UI.AddMaxHeightDT(sMaxHeight)
	If sMaxWidth <> "" Then UI.AddMaxWidthDT(sMaxWidth)
	If sMinHeight <> "" Then UI.AddMinHeightDT(sMinHeight)
	If sMinWidth <> "" Then UI.AddMinWidthDT(sMinWidth)
	If bRoundedBox = True Then UI.AddClassDT("rounded-box")
	If sAlt <> "" Then UI.AddAttrDT("alt", sAlt)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sMask <> "" Then UI.AddMaskDT(sMask)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sSrc <> "" Then UI.AddAttrDT("src", sSrc)
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
	mElement = mTarget.Append($"[BANCLEAN]<img id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></img>"$).Get("#" & mName)
'	setVisible(bVisible)
	setPopOverTarget(sPopOverTarget)
	UI.OnEvent(mElement, "click", mCallBack, $"${mName}_click"$)
	If SubExists(mCallBack, $"${mName}_click"$) Then
		UI.SetCursorPointer(mElement)
	End If
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
'get Rounded Box
Sub getRoundedBox As Boolean
	Return bRoundedBox
End Sub

'set Alt
Sub setAlt(s As String)
	sAlt = s
	CustProps.put("Alt", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "alt", s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub
'set Mask
'options: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|rounded|rounded-2xl|rounded-3xl|rounded-lg|rounded-md|rounded-sm|rounded-xl|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4
Sub setMask(s As String)
	sMask = s
	CustProps.put("Mask", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMask(mElement, sMask)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'set Src
Sub setSrc(s As String)
	sSrc = s
	CustProps.put("Src", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "src", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then Ui.SetWidth(mElement, sWidth)
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
Sub setMaxHeight(s As String)
	sMaxHeight = s
	CustProps.put("MaxHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxHeight(mElement, s)
End Sub
'set Max Width
Sub setMaxWidth(s As String)
	sMaxWidth = s
	CustProps.put("MaxWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMaxWidth(mElement, s)
End Sub
'set Min Height
Sub setMinHeight(s As String)
	sMinHeight = s
	CustProps.put("MinHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMinHeight(mElement, s)
End Sub
'set Min Width
Sub setMinWidth(s As String)
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