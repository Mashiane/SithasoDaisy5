B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Grid, DisplayName: Grid, FieldType: Boolean, DefaultValue: False, Description: Grid
#DesignerProperty: Key: GridCols, DisplayName: Grid Cols, FieldType: String, DefaultValue: , Description: Grid Cols
#DesignerProperty: Key: Direction, DisplayName: Direction, FieldType: String, DefaultValue: none, Description: Direction, List: horizontal|none|vertical
#DesignerProperty: Key: DirectionOnSm, DisplayName: Direction On Sm, FieldType: String, DefaultValue: none, Description: Direction On Sm, List: horizontal|none|vertical
#DesignerProperty: Key: DirectionOnLg, DisplayName: Direction On Lg, FieldType: String, DefaultValue: none, Description: Direction On Lg, List: horizontal|none|vertical
#DesignerProperty: Key: DirectionOnMd, DisplayName: Direction On Md, FieldType: String, DefaultValue: none, Description: Direction On Md, List: horizontal|none|vertical
#DesignerProperty: Key: DirectionOnXl, DisplayName: Direction On Xl, FieldType: String, DefaultValue: none, Description: Direction On Xl, List: horizontal|none|vertical
#DesignerProperty: Key: DirectionOnXxl, DisplayName: Direction On Xxl, FieldType: String, DefaultValue: none, Description: Direction On Xxl, List: horizontal|none|vertical
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
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
	Private sParentID As String = ""
	Public Tag As Object
	Private sDirection As String = "none"
	Private sDirectionOnLg As String = "none"
	Private sDirectionOnMd As String = "none"
	Private sDirectionOnSm As String = "none"
	Private sDirectionOnXl As String = "none"
	Private sDirectionOnXxl As String = "none"
	Public CONST DIRECTION_HORIZONTAL As String = "horizontal"
	Public CONST DIRECTION_NONE As String = "none"
	Public CONST DIRECTION_VERTICAL As String = "vertical"
	Private bGrid As Boolean = False
	Private sGridCols As String = ""
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
	CustProps.Put("Grid", False)
	CustProps.Put("GridCols", "")
	CustProps.Put("Direction", "none")
	CustProps.Put("DirectionOnSm", "none")
	CustProps.Put("DirectionOnLg", "none")
	CustProps.Put("DirectionOnMd", "none")
	CustProps.Put("DirectionOnXl", "none")
	CustProps.Put("DirectionOnXxl", "none")
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
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
		sDirection = Props.GetDefault("Direction", "none")
		sDirection = UI.CStr(sDirection)
		If sDirection = "none" Then sDirection = ""
		sDirectionOnLg = Props.GetDefault("DirectionOnLg", "none")
		sDirectionOnLg = UI.CStr(sDirectionOnLg)
		If sDirectionOnLg = "none" Then sDirectionOnLg = ""
		sDirectionOnMd = Props.GetDefault("DirectionOnMd", "none")
		sDirectionOnMd = UI.CStr(sDirectionOnMd)
		If sDirectionOnMd = "none" Then sDirectionOnMd = ""
		sDirectionOnSm = Props.GetDefault("DirectionOnSm", "none")
		sDirectionOnSm = UI.CStr(sDirectionOnSm)
		If sDirectionOnSm = "none" Then sDirectionOnSm = ""
		sDirectionOnXl = Props.GetDefault("DirectionOnXl", "none")
		sDirectionOnXl = UI.CStr(sDirectionOnXl)
		If sDirectionOnXl = "none" Then sDirectionOnXl = ""
		sDirectionOnXxl = Props.GetDefault("DirectionOnXxl", "none")
		sDirectionOnXxl = UI.CStr(sDirectionOnXxl)
		If sDirectionOnXxl = "none" Then sDirectionOnXxl = ""
		bGrid = Props.GetDefault("Grid", False)
		bGrid = UI.CBool(bGrid)
		sGridCols = Props.GetDefault("GridCols", "")
		sGridCols = UI.CStr(sGridCols)        
	End If
	'
	UI.AddClassDT("join")
	If bGrid = True Then UI.AddClassDT("grid")
	If sGridCols <> "" Then UI.AddClassDT("grid-cols-" & sGridCols)
	If sDirection <> "" Then UI.AddClassDT("join-" & sDirection)
	If sDirectionOnLg <> "" Then UI.AddClassDT("lg:join-" & sDirectionOnLg)
	If sDirectionOnMd <> "" Then UI.AddClassDT("md:join-" & sDirectionOnMd)
	If sDirectionOnSm <> "" Then UI.AddClassDT("sm:join-" & sDirectionOnSm)
	If sDirectionOnXl <> "" Then UI.AddClassDT("xl:join-" & sDirectionOnXl)
	If sDirectionOnXxl <> "" Then UI.AddClassDT("xxl:join-" & sDirectionOnXxl)
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
End Sub

'set Direction
'options: horizontal|none|vertical
Sub setDirection(s As String)
	sDirection = s
	CustProps.put("Direction", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "join-" & s)
End Sub
'set Direction On Lg
'options: horizontal|none|vertical
Sub setDirectionOnLg(s As String)
	sDirectionOnLg = s
	CustProps.put("DirectionOnLg", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "lg:join-" & s)
End Sub
'set Direction On Md
'options: horizontal|none|vertical
Sub setDirectionOnMd(s As String)
	sDirectionOnMd = s
	CustProps.put("DirectionOnMd", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "md:join-" & s)
End Sub
'set Direction On Sm
'options: horizontal|none|vertical
Sub setDirectionOnSm(s As String)
	sDirectionOnSm = s
	CustProps.put("DirectionOnSm", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "sm:join-" & s)
End Sub
'set Direction On Xl
'options: horizontal|none|vertical
Sub setDirectionOnXl(s As String)
	sDirectionOnXl = s
	CustProps.put("DirectionOnXl", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "xl:join-" & s)
End Sub
'set Direction On Xxl
'options: horizontal|none|vertical
Sub setDirectionOnXxl(s As String)
	sDirectionOnXxl = s
	CustProps.put("DirectionOnXxl", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "xxl:join-" & s)
End Sub
'get Direction
Sub getDirection As String
	Return sDirection
End Sub
'get Direction On Lg
Sub getDirectionOnLg As String
	Return sDirectionOnLg
End Sub
'get Direction On Md
Sub getDirectionOnMd As String
	Return sDirectionOnMd
End Sub
'get Direction On Sm
Sub getDirectionOnSm As String
	Return sDirectionOnSm
End Sub
'get Direction On Xl
Sub getDirectionOnXl As String
	Return sDirectionOnXl
End Sub
'get Direction On Xxl
Sub getDirectionOnXxl As String
	Return sDirectionOnXxl
End Sub


'set Grid
Sub setGrid(b As Boolean)
	bGrid = b
	CustProps.put("Grid", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClass(mElement, "grid")
	Else
		UI.RemoveClass(mElement, "grid")
	End If
End Sub
'set Grid Cols
Sub setGridCols(s As String)
	sGridCols = s
	CustProps.put("GridCols", s)
	If mElement = Null Then Return
	UI.RemoveLastClass(mElement, "gc")
	If s <> "0" Then UI.UpdateClassOnly(mElement, "gc", "grid-cols-" & s)
End Sub
'get Grid
Sub getGrid As Boolean
	Return bGrid
End Sub
'get Grid Cols
Sub getGridCols As String
	Return sGridCols
End Sub
