﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Compact, DisplayName: Compact, FieldType: Boolean, DefaultValue: False, Description: Compact
#DesignerProperty: Key: Direction, DisplayName: Direction, FieldType: String, DefaultValue: vertical, Description: Direction, List: horizontal|vertical
#DesignerProperty: Key: SMDirection, DisplayName: SM Direction, FieldType: String, DefaultValue: none, Description: S m Direction, List: horizontal|none|vertical
#DesignerProperty: Key: MDDirection, DisplayName: MD Direction, FieldType: String, DefaultValue: none, Description: M d Direction, List: horizontal|none|vertical
#DesignerProperty: Key: LGDirection, DisplayName: LG Direction, FieldType: String, DefaultValue: none, Description: L g Direction, List: horizontal|none|vertical
#DesignerProperty: Key: XLDirection, DisplayName: XL Direction, FieldType: String, DefaultValue: none, Description: X l Direction, List: horizontal|none|vertical
#DesignerProperty: Key: SnapIcon, DisplayName: Snap Icon, FieldType: Boolean, DefaultValue: False, Description: Snap Icon
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
	Private bCompact As Boolean = False
	Private sDirection As String = "vertical"
	Private sLGDirection As String = "none"
	Private sMDDirection As String = "none"
	Private sSMDirection As String = "none"
	Private bSnapIcon As Boolean = False
	Private sXLDirection As String = "none"
	Public CONST DIRECTION_HORIZONTAL As String = "horizontal"
	Public CONST DIRECTION_VERTICAL As String = "vertical"
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
		bCompact = Props.GetDefault("Compact", False)
		bCompact = UI.CBool(bCompact)
		sDirection = Props.GetDefault("Direction", "vertical")
		sDirection = UI.CStr(sDirection)
		sLGDirection = Props.GetDefault("LGDirection", "none")
		sLGDirection = UI.CStr(sLGDirection)
		If sLGDirection = "none" Then sLGDirection = ""
		sMDDirection = Props.GetDefault("MDDirection", "none")
		sMDDirection = UI.CStr(sMDDirection)
		If sMDDirection = "none" Then sMDDirection = ""
		sSMDirection = Props.GetDefault("SMDirection", "none")
		sSMDirection = UI.CStr(sSMDirection)
		If sSMDirection = "none" Then sSMDirection = ""
		bSnapIcon = Props.GetDefault("SnapIcon", False)
		bSnapIcon = UI.CBool(bSnapIcon)
		sXLDirection = Props.GetDefault("XLDirection", "none")
		sXLDirection = UI.CStr(sXLDirection)
		If sXLDirection = "none" Then sXLDirection = ""
	End If
	'
	UI.AddClassDT("timeline")
	If bCompact = True Then UI.AddClassDT("timeline-compact")
	If sDirection <> "" Then UI.AddClassDT("timeline-" & sDirection)
	If sLGDirection <> "" Then UI.AddClassDT("lg:timeline-" & sLGDirection)
	If sMDDirection <> "" Then UI.AddClassDT("md:timeline-" & sMDDirection)
	If sSMDirection <> "" Then UI.AddClassDT("sm:timeline-" & sSMDirection)
	If sXLDirection <> "" Then UI.AddClassDT("xl:timeline-" & sXLDirection)
	If bSnapIcon = True Then UI.AddClassDT("timeline-snap-con")
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
	mElement = mTarget.Append($"[BANCLEAN]<ul id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></ul>"$).Get("#" & mName)
'	setVisible(bVisible)
End Sub

Sub Clear
	If mElement = Null Then Return
	mElement.Empty
End Sub


'set Compact
Sub setCompact(b As Boolean)
	bCompact = b
	CustProps.put("Compact", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "timeline-compact")
	Else
		UI.RemoveClass(mElement, "timeline-compact")
	End If
End Sub
'set Direction
'options: horizontal|vertical
Sub setDirection(s As String)
	sDirection = s
	CustProps.put("Direction", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "timeline-" & s)
End Sub
'set L g Direction
'options: horizontal|none|vertical
Sub setLGDirection(s As String)
	sLGDirection = s
	CustProps.put("LGDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "lg:timeline-" & s)
End Sub
'set M d Direction
'options: horizontal|none|vertical
Sub setMDDirection(s As String)
	sMDDirection = s
	CustProps.put("MDDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "md:timeline-" & s)
End Sub
'set S m Direction
'options: horizontal|none|vertical
Sub setSMDirection(s As String)
	sSMDirection = s
	CustProps.put("SMDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "sm:timeline-" & s)
End Sub
'set Snap Icon
Sub setSnapIcon(b As Boolean)
	bSnapIcon = b
	CustProps.put("SnapIcon", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "timeline-snap-icon")
	Else
		UI.RemoveClass(mElement, "timeline-snap-con")
	End If
End Sub
'set X l Direction
'options: horizontal|none|vertical
Sub setXLDirection(s As String)
	sXLDirection = s
	CustProps.put("XLDirection", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "xl:timeline-" & s)
End Sub
'get Compact
Sub getCompact As Boolean
	Return bCompact
End Sub
'get Direction
Sub getDirection As String
	Return sDirection
End Sub
'get L g Direction
Sub getLGDirection As String
	Return sLGDirection
End Sub
'get M d Direction
Sub getMDDirection As String
	Return sMDDirection
End Sub
'get S m Direction
Sub getSMDirection As String
	Return sSMDirection
End Sub
'get Snap Icon
Sub getSnapIcon As Boolean
	Return bSnapIcon
End Sub
'get X l Direction
Sub getXLDirection As String
	Return sXLDirection
End Sub