B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Image, DisplayName: Image, FieldType: String, DefaultValue: , Description: Image
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100, Description: Width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: 2xl, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: 2xl, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
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
	Private sImage As String = ""
	Private sWidth As String = "100"
	Private sHeight As String = ""
	Private sRounded As String = "2xl"
	Private sShadow As String = "2xl"
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

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("Image", "")
	CustProps.Put("Width", "100")
	CustProps.Put("Height", "")
	CustProps.Put("Rounded", "2xl")
	CustProps.Put("Shadow", "2xl")
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

Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub

Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub

Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub

Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub

Sub getAttributes As String
	Return sRawAttributes
End Sub

Sub getStyles As String
	Return sRawStyles
End Sub

Sub getClasses As String
	Return sRawClasses
End Sub

Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub

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
		sImage = Props.GetDefault("Image", "")
		sImage = UI.CStr(sImage)
		sWidth = Props.GetDefault("Width", "100")
		sWidth = UI.CStr(sWidth)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sRounded = Props.GetDefault("Rounded", "2xl")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "2xl")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
	End If
	
	'build classes
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
		<div id="${mName}" class="hover-3d cursor-pointer">
  			<figure id="${mName}_figure" class="${xclasses}" ${xattrs} style="${xstyles}">
    			<img id="${mName}_image" src="${sImage}" alt="3D card"></img>
  			</figure>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
		</div>"$).Get("#" & mName)
	UI.OnEvent(mElement, "click", mCallBack, $"${mEventName}_click"$)
	setWidth(sWidth)
	setHeight(sHeight)
	setRounded(sRounded)
	setShadow(sShadow)
End Sub

'set Image
Sub setImage(s As String)
	sImage = s
	CustProps.Put("Image", s)
	If mElement = Null Then Return
	UI.SetImageByID($"${mName}_image"$, sImage)
End Sub

Sub getImage As String
	Return sImage
End Sub

'set Width
Sub setWidth(s As String)			'ignoredeadcode
	sWidth = s
	CustProps.Put("Width", s)
	If mElement = Null Then Return
	If sWidth <> "" Then 
		UI.SetWidthByID($"${mName}_figure"$, sWidth)
		UI.SetMaxWidthByID($"${mName}_figure"$, sWidth)
	End If
End Sub

Sub getWidth As String
	Return sWidth
End Sub

'set Height
Sub setHeight(s As String)				'ignoredeadcode
	sHeight = s
	CustProps.Put("Height", s)
	If mElement = Null Then Return
	If sHeight <> "" Then 
		UI.SetMaxHeightByID($"${mName}_figure"$, sHeight)
		UI.SetMaxHeightByID($"${mName}_figure"$, sHeight)
	End If
End Sub

Sub getHeight As String
	Return sHeight
End Sub

'set Rounded
Sub setRounded(s As String)				'ignoredeadcode
	sRounded = s
	CustProps.Put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRoundedByID($"${mName}_figure"$, sRounded)
End Sub

Sub getRounded As String
	Return sRounded
End Sub

'set Shadow
Sub setShadow(s As String)				'ignoredeadcode
	sShadow = s
	CustProps.Put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadowByID($"${mName}_figure"$, sShadow)
End Sub

Sub getShadow As String
	Return sShadow
End Sub