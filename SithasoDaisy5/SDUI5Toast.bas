B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: HorizontalPosition, DisplayName: Horizontal Position, FieldType: String, DefaultValue: end, Description: Horizontal Position, List: center|end|start
#DesignerProperty: Key: VerticalPosition, DisplayName: Vertical Position, FieldType: String, DefaultValue: bottom, Description: Vertical Position, List: bottom|middle|top
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
	Private sHorizontalPosition As String = "end"
	Private sVerticalPosition As String = "bottom"
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
		sHorizontalPosition = Props.GetDefault("HorizontalPosition", "end")
		sHorizontalPosition = UI.CStr(sHorizontalPosition)
		sVerticalPosition = Props.GetDefault("VerticalPosition", "bottom")
		sVerticalPosition = UI.CStr(sVerticalPosition)
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
	UI.AddClassDT("toast")
	If sHorizontalPosition <> "" Then UI.AddClassDT("toast-" & sHorizontalPosition)
	If sVerticalPosition <> "" Then UI.AddClassDT("toast-" & sVerticalPosition)
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
	UI.RemoveAttr(mElement, "style")
End Sub

'set Horizontal Position
'options: center|end|start
Sub setHorizontalPosition(s As String)
	sHorizontalPosition = s
	CustProps.put("HorizontalPosition", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "toast-" & s)
End Sub
'set Vertical Position
'options: bottom|middle|top
Sub setVerticalPosition(s As String)
	sVerticalPosition = s
	CustProps.put("VerticalPosition", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "toast-" & s)
End Sub
'get Horizontal Position
Sub getHorizontalPosition As String
	Return sHorizontalPosition
End Sub
'get Vertical Position
Sub getVerticalPosition As String
	Return sVerticalPosition
End Sub

public Sub getParentID() As String
	Return sParentID
End Sub