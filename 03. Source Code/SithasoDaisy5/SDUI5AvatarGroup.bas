B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: RawImages, DisplayName: Images (JSON), FieldType: String, DefaultValue: "one=./assets/1.jpg; two=./assets/2.jpg; three=./assets/3.jpg; four=./assets/4.jpg; five=./assets/5.jpg", Description: Images (JSON)
#DesignerProperty: Key: Mask, DisplayName: Mask, FieldType: String, DefaultValue: circle, Description: Mask, List: circle|decagon|diamond|heart|hexagon|hexagon-2|none|pentagon|square|squircle|star|star-2|triangle|triangle-2|triangle-3|triangle-4|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: 6, Description: Width & Height
#DesignerProperty: Key: Space, DisplayName: Space, FieldType: String, DefaultValue: 6, Description: Space
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
	'Public Root As SDUIElement
	Private sSpace As String = "6"
	Private sRawImages As String = "one=./assets/1.jpg; two=./assets/2.jpg; three=./assets/3.jpg; four=./assets/4.jpg; five=./assets/5.jpg"
	Private sMask As String = "circle"
	Private sSize As String = "12"
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
	CustProps.Put("ParentID", "")                            'String (empty by default)
	CustProps.Put("RawImages", "one=./assets/1.jpg; two=./assets/2.jpg; three=./assets/3.jpg; four=./assets/4.jpg; five=./assets/5.jpg") 'String
	CustProps.Put("Mask", "circle")                          'String
	CustProps.Put("Size", "6")                               'String
	CustProps.Put("Space", "6")                              'String
	CustProps.Put("Visible", True)                           'Boolean
	CustProps.Put("Enabled", True)                           'Boolean
	CustProps.Put("PositionStyle", "none")                   'String
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")          'String
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")   'String
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")  'String
	CustProps.Put("RawClasses", "")                          'String (empty)
	CustProps.Put("RawStyles", "")                           'String (empty)
	CustProps.Put("RawAttributes", "")                       'String (empty)
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
	Return UI.GetVisible(mElement)
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
	Return UI.GetEnabled(mElement)
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
		sSpace = Props.GetDefault("Space", "6")
		sSpace = UI.CStr(sSpace)
		sRawImages = Props.GetDefault("RawImages", "one=./assets/1.jpg; two=./assets/2.jpg; three=./assets/3.jpg; four=./assets/4.jpg; five=./assets/5.jpg")
		sRawImages = UI.CStr(sRawImages)
		sMask = Props.GetDefault("Mask", "circle")
		sMask = UI.CStr(sMask)
		If sMask = "none" Then sMask = ""
	End If
	'
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	UI.AddClassDT($"avatar-group h-fit"$)
	UI.UpdateClassDT("space", $"-space-x-${sSpace}"$)
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
'	setVisible(bVisible)
	setImages(sRawImages)
End Sub

Sub setMask(s As String)
	sMask = s
	CustProps.Put("Mask", s)
End Sub

Sub getMask As String
	Return sMask
End Sub

Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
End Sub

Sub getSize As String
	Return sSize
End Sub

'set Images from a MV field
'one=./assets/1.jpg; two=./assets/2.jpg; three=./assets/3.jpg; four=./assets/4.jpg; five=./assets/5.jpg
Sub setImages(s As String)		'ignoredeadcode
	sRawImages = s
	CustProps.put("RawOptions", s)
	If mElement = Null Then Return
	mElement.empty
	Dim m As Map = UI.GetKeyValues(s, False)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		Dim skey As String = $"${mName}${k}"$
		skey = UI.CleanID(skey)
		Dim avt As SDUI5Avatar
		avt.Initialize(Me, skey, skey)
		avt.AvatarType = avt.AVATARTYPE_IMAGE
		avt.Mask = sMask
		avt.Size = sSize
		avt.ParentID = mName
		avt.HasBadge = False
		avt.Image = v
		avt.addcomponent
	Next
End Sub

Sub getImages As String
	Return sRawImages
End Sub

Sub Clear
	If mElement = Null Then Return
	mElement.empty
End Sub

'set Space
Sub setSpace(s As String)
	sSpace = s
	CustProps.put("Space", s)
	If mElement = Null Then Return
	If s <> "" Then UI.UpdateClass(mElement, "space", $"-space-x-${s}"$)
End Sub

'get Space
Sub getSpace As String
	Return sSpace
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub