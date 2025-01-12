B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ReadMe, DisplayName: ReadMe, FieldType: String, DefaultValue: Child Item _content, Description: Child Item _content
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Tip, DisplayName: Tip, FieldType: String, DefaultValue: Tooltip, Description: Tip
#DesignerProperty: Key: HasContent, DisplayName: Has Content, FieldType: Boolean, DefaultValue: False, Description: Has Content
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: none, Description: Color, List: accent|error|info|neutral|none|primary|secondary|success|warning
#DesignerProperty: Key: Open, DisplayName: Open, FieldType: Boolean, DefaultValue: False, Description: Open
#DesignerProperty: Key: TooltipPosition, DisplayName: Position, FieldType: String, DefaultValue: top, Description: Position, List: bottom|left|right|top
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
	Public Tag As Object
	Private sColor As String = "none"
	Private bOpen As Boolean = False
	Private sTooltipPosition As String = "top"
	Private sTip As String = "Tooltip"
	Public CONST POSITION_BOTTOM As String = "bottom"
	Public CONST POSITION_LEFT As String = "left"
	Public CONST POSITION_RIGHT As String = "right"
	Public CONST POSITION_TOP As String = "top"
	Private bHasContent As Boolean = False
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
	s = modSD5.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub
'return the #ID of the element
Public Sub getHere() As String
	Return $"#${mName}"$
End Sub
'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		UI.ExcludeVisible = True
		UI.ExcludeEnabled = True
		sColor = Props.GetDefault("Color", "none")
		sColor = modSD5.CStr(sColor)
		If sColor = "none" Then sColor = ""
		bOpen = Props.GetDefault("Open", False)
		bOpen = modSD5.CBool(bOpen)
		sTooltipPosition = Props.GetDefault("TooltipPosition", "top")
		sTooltipPosition = modSD5.CStr(sTooltipPosition)
		sTip = Props.GetDefault("Tip", "Tooltip")
		sTip = modSD5.CStr(sTip)
		bHasContent = Props.GetDefault("HasContent", False)
		bHasContent = modSD5.CBool(bHasContent)   
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
	If sColor <> "" Then UI.AddColorDT("tooltip", sColor)
	If bOpen Then UI.AddClassDT("tooltip-open")
	UI.AddClassDT("tooltip-" & sTooltipPosition)
	If sTip <> "" Then UI.AddAttrDT("data-tip", sTip)
	UI.AddClassDT("tooltip")
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]
	<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
		<div id="${mName}_content" class="tooltip-content">
		</div>
	</div>"$).Get("#" & mName)
	UI.RemoveAttr(mElement, "style")
	setHasContent(bHasContent)
End Sub

'set Has Content
Sub setHasContent(b As Boolean)
	bHasContent = b
	CustProps.put("HasContent", b)
	If mElement = Null Then Return
	If b Then
		UI.SetVisibleByID($"${mName}_content"$, True)
	Else
		UI.SetVisibleByID($"${mName}_content"$, False)
	End If
End Sub

'get Has Content
Sub getHasContent As Boolean
	Return bHasContent
End Sub

'set Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	UI.SetColor(mElement, "tooltip", s)
End Sub
'set Open
Sub setOpen(b As Boolean)
	bOpen = b
	CustProps.put("Open", b)
	If mElement = Null Then Return
	If b <> False Then
		UI.AddClass(mElement, "tooltip-open")
	Else
		UI.RemoveClass(mElement, "tooltip-open")
	End If
End Sub
'set Position
'options: bottom|left|right|top
Sub setPosition(s As String)
	sTooltipPosition = s
	CustProps.put("TooltipPosition", s)
	If mElement = Null Then Return
    If s <> "" Then UI.AddClass(mElement, "tooltip-" & s)
End Sub
'set Tip
Sub setTip(s As String)
    sTip = s
    CustProps.put("Tip", s)
	If mElement = Null Then Return
    If s <> "" Then UI.AddAttr(mElement, "data-tip", s)
End Sub
'get Color
Sub getColor As String
        Return sColor
End Sub
'get Open
Sub getOpen As Boolean
        Return bOpen
End Sub
'get Position
Sub getPosition As String
	Return sTooltipPosition
End Sub
'get Tip
Sub getTip As String
        Return sTip
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub