B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Change (item As String)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: md, Description: Size, List: lg|md|none|sm|xl|xs
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: fit , Description: Width
#DesignerProperty: Key: RawKeyValues, DisplayName: Key Values (JSON), FieldType: String, DefaultValue: btn1:Button 1; btn2:Button 2; btn3:Button 3, Description: Key Values
#DesignerProperty: Key: Active, DisplayName: Active Item, FieldType: String, DefaultValue: btn1, Description: Active Item
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
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private sRawKeyValues As String = "btn1:Button 1; btn2:Button 2; btn3:Button 3"
	Public Tag As Object
	Private sActive As String = ""
	Private sDisabled As String = ""
	Private sSize As String = "md"
	Private sPosition As String = "t=?; b=?; r=?; l=?"
	Private sPositionStyle As String = "none"
	Private sRawClasses As String = ""
	Private sRawStyles As String = ""
	Private sRawAttributes As String = ""
	Private sMarginAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sPaddingAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sHeight As String = ""
	Private sWidth As String = "fit"
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	UI.Initialize(Me)
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
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

'add this element to an existing parent element using current props
Public Sub AddComponent
	If sParentID = "" Then Return
	sParentID = modSD5.CleanID(sParentID)
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
	s = modSD5.CleanID(s)
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
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, methodName)
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
		sActive = Props.GetDefault("Active", "btn1")
		sActive = modSD5.Cstr(sActive)
		sRawKeyValues = Props.GetDefault("RawKeyValues", "btn1:Button 1; btn2:Button 2; btn3:Button 3")
		sRawKeyValues = modSD5.CStr(sRawKeyValues)
		sDisabled = Props.GetDefault("Disabled", "")
		sDisabled = modSD5.Cstr(sDisabled)
		sSize = Props.GetDefault("Size", "md")
		sSize = modSD5.CStr(sSize)
		If sSize = "none" Then sSize = ""
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "fit")
		sWidth = modSD5.CStr(sWidth)
	End If
	'
	If sHeight <> "" Then UI.AddHeightDT( sHeight)
	If sWidth <> "" Then UI.AddWidthDT( sWidth)
	UI.AddAttrDT("role", "tablist")
	UI.AddClassDT("tabs")
	UI.AddClassDT("tabs-box inline-flex flex-nowrap")
	If sSize <> "" Then UI.AddSizeDT("tabs", sSize)
	'
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
		
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
	BANano.Await(setKeyValues(sRawKeyValues))
	setActive(sActive)
'	setVisible(bVisible)
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidth(mElement, sWidth)
End Sub

'get Height
Sub getHeight As String
	Return sHeight
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetHeight(mElement, sHeight)
End Sub

Sub Clear
	If mElement = Null Then Return
	UI.Clear(mElement)
End Sub

Sub setKeyValues(s As String)
	sRawKeyValues = s
	CustProps.Put("RawKeyValues", s)
	If mElement = Null Then Return
	Clear
	Dim m As Map = UI.GetKeyValues(s, False)
	Dim tItems As Int = m.size
	Dim cItems As Int = 0
	For Each k As String In m.Keys
		cItems = BANano.parseInt(cItems) + 1
		Dim v As String = m.Get(k)
		BANano.Await(AddButton(k, v))
		BANano.Await(UI.SetWidthByID($"${k}_${mName}"$, $"${cItems}/${tItems}"$))
	Next
End Sub

'set button text
Sub SetButtonText(btnID As String, text As String)
	btnID = modSD5.CleanID(btnID)
	UI.SetAttrByID($"${btnID}_${mName}"$, "aria-label", text)
End Sub

'set a button active
Sub SetButtonActive(btnID As String, b As Boolean)
	btnID = modSD5.CleanID(btnID)
	UI.SetCheckedByID($"${btnID}_${mName}"$, b)
End Sub

Sub AddButton(sKey As String, sText As String)
	sKey = SDUIShared.CleanID(sKey)
	Dim sTag As String = $"<input id="${sKey}_${mName}" type="radio" name="${mName}" value="${sKey}" role="tab" class="tab" aria-label="${sText}"></input>"$
	mElement.Append(sTag)
	UI.OnEventByID($"${sKey}_${mName}"$, "change", Me, "itemchange")
End Sub

private Sub itemchange(e As BANanoEvent)
	e.PreventDefault
	Dim sprefix As String = modSD5.MvField(e.ID, 1, "_")
	BANano.CallSub(mCallBack, $"${mName}_change"$, Array(sprefix))
End Sub

Sub getKeyValues As String
	Return sRawKeyValues
End Sub

'set Size
'options: xs|none|sm|md|lg|xl
Sub setSize(s As String)
	sSize = s
	CustProps.put("Size", s)
	If mElement = Null Then Return
	If s = "" Then sSize = "md"
	UI.SetSize(mElement, "size", "tabs", s)
End Sub

'get Size
Sub getSize As String
	Return sSize
End Sub

'set Active
Sub setActive(item As String)
	CustProps.put("Active", item)
	If mElement = Null Then Return
End Sub

'set Disabled
Sub setDisabled(items As String)
	sDisabled = items
	CustProps.put("Disabled", items)
	If mElement = Null Then Return
End Sub
'get Active
Sub getActive As String
	Return sActive
End Sub
'get Disabled
Sub getDisabled As String
	Return sDisabled
End Sub