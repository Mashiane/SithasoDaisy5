B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: TagName, DisplayName: Tag, FieldType: String, DefaultValue: div, Description: Tag Name
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: Component, Description: Text
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: TextSize, DisplayName: Text Size, FieldType: String, DefaultValue: , Description: Text Size, List: 2xl|3xl|4xl|5xl|6xl|7xl|8xl|9xl|base|lg|md|none|sm|xl|xs
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: BackgroundImage, DisplayName: Background Image, FieldType: String, DefaultValue: , Description: Background Image
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
	Private sTagName As String = "div"
	Private sText As String = "Component"
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
	Private sBackgroundColor As String = ""
	Private sHeight As String = ""
	Private sTextColor As String = ""
	Private sWidth As String = ""
	Private sTextSize As String = ""
	Private sBackgroundImage As String = ""
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
	CustProps.Put("TagName", "div")
	CustProps.Put("Text", "Component")
	CustProps.Put("TextColor", "")
	CustProps.Put("TextSize", "")
	CustProps.Put("BackgroundColor", "")
	CustProps.Put("BackgroundImage", "")
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
'empty the element and remove all children
Sub Clear
	If mElement = Null Then Return
	mElement.empty
End Sub
'append the specified html to the element
Sub Append(tmp As String)
	UI.Append(mElement,tmp)
End Sub
'clear and replace the html of this element
Sub SetHTML(sHTML As String)
	CustProps.Put("RawHTML", sHTML)
	If mElement = Null Then Return
	UI.SetHTML(mElement, sHTML)
End Sub
'execute getElementByID on the existing element
Sub LinkExisting
	mElement.Initialize($"#${mName}"$)
	mTarget = BANano.ToElement(mElement.GetField("parentNode"))
End Sub
'trigger an event on the element
Public Sub TriggerEvent(event As String, params() As String)
	UI.Trigger(mElement, event, params)
End Sub
'return the #ID of the element
Public Sub getHere() As String
	Return $"#${mName}"$
End Sub
'set an attribute to the element
Sub AddAttr(attr As String, text As String)
	UI.SetAttr(mElement, attr, text)
End Sub
'set a data attribute to the element
Sub AddDataAttr(attr As String, text As String)
	UI.AddDataAttr(mElement, attr, text)
End Sub
'get a data attribute of the element
Sub GetDataAttr(attr As String) As String
	Return UI.GetDataAttr(mElement, attr)
End Sub
Sub GetAttr(attr As String) As String
	Return UI.GetAttr(mElement, attr)
End Sub
'add a class to the element
Sub AddClass(text As String)
	UI.AddClass(mElement,text)
End Sub
'remove a class from the element
Sub RemoveClass(text As String)
	UI.RemoveClass(mElement,text)
End Sub
'add multiple attributes to the element
Sub AddAttrMap(ms As Map)
	UI.AddAttrMap(mElement, ms)
End Sub
'remove an attribute from the element
Sub RemoveAttr(attr As String)
	UI.RemoveAttr(mElement, attr)
End Sub
'add a collection of styles to the element
Sub AddStyleMap(ms As Map)
	UI.AddStyleMap(mElement, ms)
End Sub
'add a styles to the element
Sub AddStyle(k As String, v As String)
	UI.SetStyle(mElement, k,v)
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
Sub ResponsiveClass(className As String, xs As Boolean, sm As Boolean, md As Boolean, lg As Boolean)
	UI.ResponsiveClass(mElement, className, xs, sm, md, lg)
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
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		sTagName = Props.GetDefault("TagName", "div")
		sTagName = UI.CStr(sTagName)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "")
		sWidth = UI.CStr(sWidth)
		sTextSize = Props.GetDefault("TextSize", "")
		sTextSize = UI.CStr(sTextSize)
		sBackgroundImage = Props.GetDefault("BackgroundImage", "")
		sBackgroundImage = UI.CStr(sBackgroundImage)
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
	If sBackgroundImage <> "" Then UI.AddBackgroundImageDT(sBackgroundImage)
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
'	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sTextSize <> "" Then UI.AddTextSizeDT(sTextSize)
	'
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]<${sTagName} id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}</${sTagName}>"$).Get("#" & mName)
'	setVisible(bVisible)
End Sub


'set Background Image
Sub setBackgroundImage(s As String)
	sBackgroundImage = s
	CustProps.put("BackgroundImage", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundImage(mElement, s)
End Sub

'get Background Image
Sub getBackgroundImage As String
	Return sBackgroundImage
End Sub


Sub setTagName(s As String)
	sTagName = s
	CustProps.put("TagName", s)
End Sub

'get Text Size
Sub getTagName As String
	Return sTagName
End Sub

'set Text Size
Sub setTextSize(s As String)
	sTextSize = s
	CustProps.put("TextSize", s)
	If mElement = Null Then Return
	UI.SetTextSize(mElement, s)
End Sub

'get Text Size
Sub getTextSize As String
	Return sTextSize
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, s)
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, s)
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, s)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get Text Color
Sub getTextColor As String
	Return sTextColor
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub