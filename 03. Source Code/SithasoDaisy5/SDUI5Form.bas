B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#Event: Submit (e As BaNanoEvent)

#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Name, DisplayName: Name, FieldType: String, DefaultValue: , Description: Name
#DesignerProperty: Key: AcceptCharset, DisplayName: Accept Charset, FieldType: String, DefaultValue: utf-8, Description: Accept Charset
#DesignerProperty: Key: Action, DisplayName: Action, FieldType: String, DefaultValue: , Description: Action
#DesignerProperty: Key: Autocomplete, DisplayName: Autocomplete, FieldType: String, DefaultValue: off, Description: Autocomplete, List: off|on
#DesignerProperty: Key: Enctype, DisplayName: Enctype, FieldType: String, DefaultValue: application/x-www-form-urlencoded, Description: Enctype, List: application/x-www-form-urlencoded|multipart/form-data|text/plain
#DesignerProperty: Key: Method, DisplayName: Method, FieldType: String, DefaultValue: none, Description: Method, List: get|none|post
#DesignerProperty: Key: Novalidate, DisplayName: Novalidate, FieldType: Boolean, DefaultValue: False, Description: Novalidate
#DesignerProperty: Key: Rel, DisplayName: Rel, FieldType: String, DefaultValue: none, Description: Rel, List: external|help|license|next|nofollow|none|noopener|noreferrer|opener|prev|search
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: none, Description: Target, List: _blank|_parent|_self|_top|none
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
	Private sAcceptCharset As String = "utf-8"
	Private sAction As String = ""
	Private sAutocomplete As String = "off"
	Private sEnctype As String = "application/x-www-form-urlencoded"
	Private sMethod As String = "none"
	Private sName As String = ""
	Private bNovalidate As Boolean = False
	Private sRel As String = "none"
	Private sTarget As String = "none"
	Public CONST AUTOCOMPLETE_OFF As String = "off"
	Public CONST AUTOCOMPLETE_ON As String = "on"
	Public CONST ENCTYPE_APPLICATION_X_WWW_FORM_URLENCODED As String = "application/x-www-form-urlencoded"
	Public CONST ENCTYPE_MULTIPART_FORM_DATA As String = "multipart/form-data"
	Public CONST ENCTYPE_TEXT_PLAIN As String = "text/plain"
	Public CONST METHOD_GET As String = "get"
	Public CONST METHOD_NONE As String = "none"
	Public CONST METHOD_POST As String = "post"
	Public CONST REL_EXTERNAL As String = "external"
	Public CONST REL_HELP As String = "help"
	Public CONST REL_LICENSE As String = "license"
	Public CONST REL_NEXT As String = "next"
	Public CONST REL_NOFOLLOW As String = "nofollow"
	Public CONST REL_NONE As String = "none"
	Public CONST REL_NOOPENER As String = "noopener"
	Public CONST REL_NOREFERRER As String = "noreferrer"
	Public CONST REL_OPENER As String = "opener"
	Public CONST REL_PREV As String = "prev"
	Public CONST REL_SEARCH As String = "search"
	Private validations As Map
	Private TheMatrix As Map
	Private RCSizes As Map
	Private RCMargins As Map
	Private RCPaddings As Map
	Private RCCenterOnParent As Map
	Private formmatrix As List
	Private matrixMap As Map
	Private OffsetsM As Map
	Private SizesM As Map
	Private GridRowsM As Map
	Private LastRow As Int
	Private ntxRow As Int
	Public ShowGridDesign As Boolean = False
	Public IsLive As Boolean = False
	Public MdlName As String
	Private IntGrid As StringBuilder
	Public GridCode As String
	Private centerMap As Map
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	validations.Initialize
	RCSizes.Initialize
	RCMargins.Initialize
	RCPaddings.Initialize
	RCCenterOnParent.Initialize
	formmatrix.Initialize
	matrixMap.Initialize
	centerMap.Initialize 
	OffsetsM.Initialize
	SizesM.Initialize
	GridRowsM.Initialize
	TheMatrix.Initialize
	LastRow = 0
	ntxRow = 0
	IsLive = False
	MdlName = ""
	IntGrid.Initialize 
End Sub
'
'empty the contents of the container
Sub Clear
	RCSizes.Initialize
	RCMargins.Initialize
	RCPaddings.Initialize
	RCCenterOnParent.Initialize
	formmatrix.Initialize
	matrixMap.Initialize
	centerMap.Initialize 
	OffsetsM.Initialize
	SizesM.Initialize
	GridRowsM.Initialize
	validations.Initialize
	LastRow = 0
	ntxRow = 0
	mElement.Empty
	IsLive = False
	MdlName = ""
	IntGrid.Initialize 
End Sub

'add an RC to prepare the grid
Sub AddRC(r As Int, c As Int)
	r = UI.CInt(r)
	c = UI.CInt(c)
	If r >= 1 And c >= 1 Then
		Dim scol As String = UI.PadRight(c, 2, "0")
		Dim srow As String = UI.PadRight(r, 2, "0")
		Dim skey As String = $"${srow}.${scol}"$
		If formmatrix.IndexOf(skey) = -1 Then
			formmatrix.Add(skey)
		End If
	End If
End Sub

Sub CenterRC(r As Int, c As Int)
	r = UI.CInt(r)
	c = UI.CInt(c)
	If r >= 1 And c >= 1 Then
		Dim scol As String = UI.PadRight(c, 2, "0")
		Dim srow As String = UI.PadRight(r, 2, "0")
		Dim skey As String = $"${srow}.${scol}"$
		If centerMap.ContainsKey(skey) = False Then
			centerMap.put(skey, skey)
		End If
	End If
End Sub

'prepare the rc for the form
Sub PrepareRC
	GridCode = ""
	'sort the matrix
	formmatrix.Sort(True)
	'get fist item & last item
	Dim litem As String = formmatrix.Get(formmatrix.Size - 1)
	litem = UI.CStr(litem)
	'
	Dim er As String = ""
	If litem <> "" Then
		er = UI.MvField(litem, 1, ".")
	End If
	'we want the grid to start at row 1
	Dim ifinish As Int = UI.CInt(er)
	Dim iCnt As Int
	For iCnt = 1 To ifinish
		Dim rn As String = UI.PadRight(iCnt, 2, "0")
		Dim cn As String = "01"
		Dim xKey As String = $"${rn}.${cn}"$
		If formmatrix.IndexOf(xKey) = -1 Then
			formmatrix.Add(xKey)
		End If
	Next
	'
	For Each entryx As String In formmatrix
		Dim srow As String = UI.MvField(entryx, 1, ".")
		Dim scol As String = UI.MvField(entryx, 2, ".")
		'convert to integers
		srow = UI.CInt(srow)
		scol = UI.CInt(scol)
		If matrixMap.ContainsKey(srow) Then
			Dim lastCol As Int = matrixMap.Get(srow)
			lastCol = BANano.ParseInt(lastCol)
			If scol > lastCol Then
				matrixMap.Put(srow, scol)
			End If
		Else
			matrixMap.Put(srow, scol)
		End If
	Next
End Sub

Sub BuildGridFromRC
	If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.Clear"$)
	For Each k As String In matrixMap.Keys
		Dim v As Int = matrixMap.Get(k)
		v = UI.CInt(v)
		AddRows1
		If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddRows1"$)
		Select Case v
			Case 1
				'add columns12
				AddColumns12
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns12"$)
			Case 2
				AddColumns2x6
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns2x6"$)
			Case 3
				AddColumns3x4
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns3x4"$)
			Case 4
				AddColumns4x3
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns4x3"$)
			Case 5
				AddColumns5x2
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns5x2"$)
			Case 6
				AddColumns6x2
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns6x2"$)
			Case 7
				AddColumns7x1
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns7x1"$)
			Case 8
				AddColumns8x1
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns8x1"$)
			Case 9
				AddColumns9x1
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns9x1"$)
			Case 10
				AddColumns10x1
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns10x1"$)
			Case 11
				AddColumns11x1
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns11x1"$)
			Case 12
				AddColumns12x1
				If IsLive = False Then UI.AddCode(IntGrid, $"${MdlName}.Form.AddColumns12x1"$)
		End Select
	Next
	If IsLive = False Then UI.AddCode(IntGrid, $"BANano.Await(${MdlName}.Form.BuildGrid)"$)
	'do we have centered items
	Dim centerSort As List
	centerSort.Initialize
	For Each k As String In centerMap.Keys
		centerSort.Add(k)
	Next
	centerSort.Sort(True)
	For Each k As String In centerSort
		Dim sr As String = UI.MvField(k,1,".")
		Dim sc As String = UI.MvField(k,2,".")
		sr = UI.CInt(sr)
		sc = UI.CInt(sc)
		If IsLive = False Then UI.AddCode(IntGrid, $"BANano.Await(${MdlName}.Form.CenterRC(${sr}, ${sc}))"$)
	Next
	GridCode = IntGrid.tostring
	BANano.Await(BuildGrid)
	'
	For Each k As String In centerSort
		Dim sr As String = UI.MvField(k,1,".")
		Dim sc As String = UI.MvField(k,2,".")
		sr = UI.CInt(sr)
		sc = UI.CInt(sc)
		BANano.Await(CenterRC(sr, sc))
	Next
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
'use to add an event to the element
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, methodName)
End Sub
'set Position Style
'options: static|relative|fixed|absolute|sticky|none
Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.put("PositionStyle", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "position", s)
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
		sAcceptCharset = Props.GetDefault("AcceptCharset", "utf-8")
		sAcceptCharset = UI.CStr(sAcceptCharset)
		sAction = Props.GetDefault("Action", "")
		sAction = UI.CStr(sAction)
		sAutocomplete = Props.GetDefault("Autocomplete", "off")
		sAutocomplete = UI.CStr(sAutocomplete)
		sEnctype = Props.GetDefault("Enctype", "application/x-www-form-urlencoded")
		sEnctype = UI.CStr(sEnctype)
		sMethod = Props.GetDefault("Method", "none")
		sMethod = UI.CStr(sMethod)
		sName = Props.GetDefault("Name", "")
		sName = UI.CStr(sName)
		bNovalidate = Props.GetDefault("Novalidate", False)
		bNovalidate = UI.CBool(bNovalidate)
		sRel = Props.GetDefault("Rel", "none")
		sRel = UI.CStr(sRel)
		sTarget = Props.GetDefault("Target", "none")
		sTarget = UI.CStr(sTarget)
	End If
	'
	If sAcceptCharset <> "" Then UI.AddAttrDT("accept-charset", sAcceptCharset)
	If sAction <> "" Then UI.AddAttrDT("action", sAction)
	If sAutocomplete <> "" Then UI.AddAttrDT("autocomplete", sAutocomplete)
	If sEnctype <> "" Then UI.AddAttrDT("enctype", sEnctype)
	If sMethod <> "" Then UI.AddAttrDT("method", sMethod)
	If sName <> "" Then UI.AddAttrDT("name", sName)
	If bNovalidate = True Then UI.AddAttrDT("novalidate", "novalidate")
	If sRel <> "none" Then UI.AddAttrDT("rel", sRel)
	If sTarget <> "none" Then UI.AddStyleDT("target", sTarget)
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
	mElement = mTarget.Append($"[BANCLEAN]<form id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></form>"$).Get("#" & mName)
	UI.OnEvent(mElement, "submit", mCallBack, $"${mName}_submit"$)
End Sub

'set Accept Charset
Sub setAcceptCharset(s As String)
	sAcceptCharset = s
	CustProps.put("AcceptCharset", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "accept-charset", s)
End Sub
'set Action
Sub setAction(s As String)
	sAction = s
	CustProps.put("Action", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "action", s)
End Sub
'set Autocomplete
'options: off|on
Sub setAutocomplete(s As String)
	sAutocomplete = s
	CustProps.put("Autocomplete", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "autocomplete", s)
End Sub
'set Enctype
'options: application/x-www-form-urlencoded|multipart/form-data|text/plain
Sub setEnctype(s As String)
	sEnctype = s
	CustProps.put("Enctype", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "enctype", s)
End Sub
'set Method
'options: get|none|post
Sub setMethod(s As String)
	sMethod = s
	CustProps.put("Method", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "method", s)
End Sub
'set Name
Sub setName(s As String)
	sName = s
	CustProps.put("Name", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "name", s)
End Sub
'set Novalidate
Sub setNovalidate(b As Boolean)
	bNovalidate = b
	CustProps.put("Novalidate", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "novalidate", "novalidate")
	Else
		UI.RemoveAttr(mElement, "novalidate")
	End If
End Sub
'set Rel
'options: external|help|license|next|nofollow|none|noopener|noreferrer|opener|prev|search
Sub setRel(s As String)
	sRel = s
	CustProps.put("Rel", s)
	If mElement = Null Then Return
	If s <> "none" Then UI.AddAttr(mElement, "rel", s)
End Sub
'set Target
'options: _blank|_self|_parent|_top|none
Sub setTarget(s As String)
	sTarget = s
	CustProps.put("Target", s)
	If mElement = Null Then Return
	If s <> "none" Then UI.AddStyle(mElement, "target", s)
End Sub
'get Accept Charset
Sub getAcceptCharset As String
	Return sAcceptCharset
End Sub
'get Action
Sub getAction As String
	Return sAction
End Sub
'get Autocomplete
Sub getAutocomplete As String
	Return sAutocomplete
End Sub
'get Enctype
Sub getEnctype As String
	Return sEnctype
End Sub
'get Method
Sub getMethod As String
	Return sMethod
End Sub
'get Name
Sub getName As String
	Return sName
End Sub
'get Novalidate
Sub getNovalidate As Boolean
	Return bNovalidate
End Sub
'get Rel
Sub getRel As String
	Return sRel
End Sub
'get Target
Sub getTarget As String
	Return sTarget
End Sub

'get the row id
Sub RowID(r As Int) As String
	Dim RID As String = $"${mName}r${r}c"$
	Return RID
End Sub

'get the cell id
Sub CellID(r As Int, c As Int) As String
	Dim rid As String
	If c <> 0 Then
		rid = $"${mName}r${r}c${c}"$
	Else
		rid = $"${mName}r${r}"$
	End If
	Return rid
End Sub

Sub CellCenter(r As Int, c As Int)
	Dim cid As String = CellID(r, c)
	UI.SetCenterChildrenByID(cid, True)
End Sub

Sub LinkExisting()
	mElement.Initialize($"#${mName}"$)
	mTarget = BANano.ToElement(mElement.GetField("parentNode"))
End Sub

'get the row/column div
Sub Cell(r As Int, c As Int) As SDUI5Form
	Dim sid As String
	If c <> 0 Then
		sid = $"${mName}r${r}c${c}"$
	Else
		sid = $"${mName}r${r}"$
	End If
	'
	Dim el As SDUI5Form
	el.Initialize(mCallBack, sid, sid)
	el.LinkExisting
	Return el
End Sub

'add 1 row
Sub AddRows1 As SDUI5Form
	AddRows(1)
	Return Me
End Sub
'add 2 rows
Sub AddRows2 As SDUI5Form
	AddRows(2)
	Return Me
End Sub
'add 3 rows
Sub AddRows3 As SDUI5Form
	AddRows(3)
	Return Me
End Sub
'add 4 rows
Sub AddRows4 As SDUI5Form
	AddRows(4)
	Return Me
End Sub
'add 5 rows
Sub AddRows5 As SDUI5Form
	AddRows(5)
	Return Me
End Sub
'add 6 rows
Sub AddRows6 As SDUI5Form
	AddRows(6)
	Return Me
End Sub
'add 7 rows
Sub AddRows7 As SDUI5Form
	AddRows(7)
	Return Me
End Sub
'add 8 rows
Sub AddRows8 As SDUI5Form
	AddRows(8)
	Return Me
End Sub
'add 9 rows
Sub AddRows9 As SDUI5Form
	AddRows(9)
	Return Me
End Sub
'add 10 rows
Sub AddRows10 As SDUI5Form
	AddRows(10)
	Return Me
End Sub
'add 11 rows
Sub AddRows11 As SDUI5Form
	AddRows(11)
	Return Me
End Sub
'add 12 rows
Sub AddRows12 As SDUI5Form
	AddRows(12)
	Return Me
End Sub

'add a number of rows
Sub AddRows(iRows As Int) As SDUI5Form
	'if there is no existing row, then initialize the map
	If GridRowsM.IsInitialized = False Then GridRowsM.Initialize
	'lets store the last row
	LastRow = GridRowsM.size
	'create a new row
	Dim nRow As GridRow
	nRow.Initialize
	nRow.Rows = iRows
	nRow.Columns.Initialize
	nRow.gmt = ""
	nRow.gmb = ""
	nRow.gmr = ""
	nRow.gml = ""
	nRow.gpt = ""
	nRow.gpb = ""
	nRow.gpr = ""
	nRow.gpl = ""
	'
	'lets store this new row in rows
	Dim rowKey As String = $"r${LastRow}"$
	'lets save the row on the map
	GridRowsM.Put(rowKey, nRow)
	Return Me
End Sub
'add a number of columns
Sub AddColumns(iColumns As Int, gxs As Int, gsm As Int, gmd As Int, glg As Int, gxl As Int) As SDUI5Form
	AddColumnsOS(iColumns, 0, 0, 0, 0, 0, gxs, gsm, gmd, glg, gxl)
	Return Me
End Sub
'add columns - offsets and sizes
Sub AddColumnsOS(iColumns As Int, osxs As Int, osm As Int, omd As Int, olg As Int, oxl As Int, gxs As Int, gsm As Int, gmd As Int, glg As Int, gxl As Int) As SDUI5Form
	Dim nCol As GridColumn
	nCol.Initialize
	nCol.Columns = iColumns
	nCol.glg = glg
	nCol.gmd = gmd
	nCol.gsm = gsm
	nCol.gxl = gxl
	nCol.gxs = gxs
	nCol.ofxs = osxs
	nCol.oflg = olg
	nCol.ofmd = omd
	nCol.ofsm = osm
	nCol.ofxl = oxl
	nCol.gmt = ""
	nCol.gmb = ""
	nCol.gmr = ""
	nCol.gml = ""
	nCol.gma = ""
	nCol.gmx = ""
	nCol.gmy = ""
	'
	nCol.gpt = ""
	nCol.gpb = ""
	nCol.gpr = ""
	nCol.gpl = ""
	nCol.gpa = ""
	nCol.gpx = ""
	nCol.gpy = ""
	'
	'get the existing columns for this row
	Dim rowkey As String = $"r${LastRow}"$
	'get the row from existing rows
	If GridRowsM.ContainsKey(rowkey) Then
		'get the row from existing rows
		Dim oldRow As GridRow = GridRowsM.Get(rowkey)
		'get the existing columns from the row
		oldRow.Columns.Add(nCol)
		'save it back
		GridRowsM.Put(rowkey,oldRow)
	End If
	Return Me
End Sub
'add columns - offsets and sizes
Sub AddColumnsOSMP(iColumns As Int, osm As Int, omd As Int, olg As Int, oxl As Int, gsm As Int, gmd As Int, glg As Int, gxl As Int, gpa As Int, gpx As Int, gpy As Int, gpt As Int, gpb As Int, gpl As Int, gpr As Int, _
    gma As Int, gmx As Int, gmy As Int, gmt As Int, gmb As Int, gml As Int, gmr As Int) As SDUI5Form
	Dim nCol As GridColumn
	nCol.Initialize
	nCol.Columns = iColumns
	nCol.glg = glg
	nCol.gmd = gmd
	nCol.gsm = gsm
	nCol.gxl = gxl
	nCol.oflg = olg
	nCol.ofmd = omd
	nCol.ofsm = osm
	nCol.ofxl = oxl
	'
	nCol.gma = gma
	nCol.gmx = gmx
	nCol.gmy = gmy
	nCol.gmt = gmt
	nCol.gmb = gmb
	nCol.gmr = gmr
	nCol.gml = gml
	'
	nCol.gpa = gpa
	nCol.gpx = gpx
	nCol.gpy = gpy
	nCol.gpt = gpt
	nCol.gpb = gpb
	nCol.gpr = gpr
	nCol.gpl = gpl
	'
	'get the existing columns for this row
	Dim rowkey As String = $"r${LastRow}"$
	'get the row from existing rows
	If GridRowsM.ContainsKey(rowkey) Then
		'get the row from existing rows
		Dim oldRow As GridRow = GridRowsM.Get(rowkey)
		'get the existing columns from the row
		oldRow.Columns.Add(nCol)
		'save it back
		GridRowsM.Put(rowkey,oldRow)
	End If
	Return Me
End Sub
'add 3 columns spanning 4 each
Sub AddColumns3x4 As SDUI5Form
	AddColumns(3,"12","12","4","4","4")
	Return Me
End Sub
'add 4 columns spanning 3 each
Sub AddColumns4x3 As SDUI5Form
	AddColumns(4,"12", "12","3","3","3")
	Return Me
End Sub
'add 2 columns spanning 6 each
Sub AddColumns2x6 As SDUI5Form
	AddColumns(2,"12","12","6","6","6")
	Return Me
End Sub
'add 6 columns spanning 2 each
Sub AddColumns6x2 As SDUI5Form
	AddColumns(6,"12", "12","2","2","2")
	Return Me
End Sub
'add 5 columns spanning 2 each
Sub AddColumns5x2 As SDUI5Form
	AddColumns(5,"12", "12","2","2","2")
	Return Me
End Sub
'add 3 colums spanning 2 each
Sub AddColumns3x2 As SDUI5Form
	AddColumns(3,"12", "12","2","2","2")
	Return Me
End Sub
'ad 11 columns spanning 1 each
Sub AddColumns11x1 As SDUI5Form
	AddColumns(11,"12", "12","1","1","1")
	Return Me
End Sub
'add 10 columns spanning 1 each
Sub AddColumns10x1 As SDUI5Form
	AddColumns(10,"12", "12","1","1","1")
	Return Me
End Sub
'add 9 columns spanning 1 each
Sub AddColumns9x1 As SDUI5Form
	AddColumns(9,"12", "12","1","1","1")
	Return Me
End Sub
'add 8 columns spanning 1 each
Sub AddColumns8x1 As SDUI5Form
	AddColumns(8,"12", "12","1","1","1")
	Return Me
End Sub
'add 7 columns spanning 1 each
Sub AddColumns7x1 As SDUI5Form
	AddColumns(7,"12", "12","1","1","1")
	Return Me
End Sub
'add 12 columns spanning 1 each
Sub AddColumns12x1 As SDUI5Form
	AddColumns(12,"12", "12","1","1","1")
	Return Me
End Sub
'add 2 columns, 8 + 4
Sub AddColumns8p4 As SDUI5Form
	AddColumns(1,"12", "12","8","8","8").AddColumns(1,"12", "12","4","4","4")
	Return Me
End Sub
'add 2 columns, 4 + 8
Sub AddColumns4p8 As SDUI5Form
	AddColumns(1,"12", "12","4","4","4").AddColumns(1,"12", "12","8","8","8")
	Return Me
End Sub
'add 2 columns, 1 + 11
Sub AddColumns1p11 As SDUI5Form
	AddColumns(1,"12", "12","1","1","1").AddColumns(1,"12", "12","11","11","11")
	Return Me
End Sub
'add 2 columns, 11 + 1
Sub AddColumns11p1 As SDUI5Form
	AddColumns(1,"12", "12","11","11","11").AddColumns(1,"12", "12","1","1","1")
	Return Me
End Sub
'add 2 columns, 2 + 10
Sub AddColumns2p10 As SDUI5Form
	AddColumns(1,"12", "12","2","2","2").AddColumns(1,"12", "12","10","10","10")
	Return Me
End Sub
'add 2 columns, 10 + 2
Sub AddColumns10p2 As SDUI5Form
	AddColumns(1,"12", "12","10","10","10").AddColumns(1,"12", "12","2","2","2")
	Return Me
End Sub
'add 2 columns, 3 + 9
Sub AddColumns3p9 As SDUI5Form
	AddColumns(1,"12", "12","3","3","3").AddColumns(1,"12", "12","9","9","9")
	Return Me
End Sub
'add 2 columns 9 + 3
Sub AddColumns9p3 As SDUI5Form
	AddColumns(1,"12", "12","9","9","9").AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub
'add 3 columns, 3 + 6 + 3
Sub AddColumns3p6p3 As SDUI5Form
	AddColumns(1,"12", "12","3","3","3").AddColumns(1,"12", "12","6","6","6").AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub
'add 3 columns, 6 + 3 + 3
Sub AddColumns6p3p3 As SDUI5Form
	AddColumns(1,"12", "12","6","6","6").AddColumns(1,"12", "12","3","3","3").AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub
'add 2 columns, 7 + 5
Sub AddColumns7p5 As SDUI5Form
	AddColumns(1,"12", "12","7","7","7").AddColumns(1,"12", "12","5","5","5")
	Return Me
End Sub
'add 2 columns, 5 + 7
Sub AddColumns5p7 As SDUI5Form
	AddColumns(1,"12", "12","5","5","5").AddColumns(1,"12", "12","7","7","7")
	Return Me
End Sub
'add 1 columns, spanning12
Sub AddColumns12 As SDUI5Form
	AddColumns(1,"12", "12","12","12","12")
	Return Me
End Sub
'add 1 column, spanning 6
Sub AddColumns6 As SDUI5Form
	AddColumns(1,"12", "12","6","6","6")
	Return Me
End Sub
'add 2 column, spanning 2
Sub AddColumns2 As SDUI5Form
	AddColumns(1,"12", "12","2","2","2")
	Return Me
End Sub
'add 1 column, spanning 1
Sub AddColumns1 As SDUI5Form
	AddColumns(1,"12", "12","1","1","1")
	Return Me
End Sub
'add 1 column, spannng 3
Sub AddColumns3 As SDUI5Form
	AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub
'add 1 column, spanning 4
Sub AddColumns4 As SDUI5Form
	AddColumns(1,"12", "12","4","4","4")
	Return Me
End Sub
'add 1 column, spanning 5
Sub AddColumns5 As SDUI5Form
	AddColumns(1,"12", "12","5","5","5")
	Return Me
End Sub
'add 1 column, spanning 7
Sub AddColumns7 As SDUI5Form
	AddColumns(1,"12", "12","7","7","7")
	Return Me
End Sub
'add 1 column, spanning 8
Sub AddColumns8 As SDUI5Form
	AddColumns(1,"12", "12","8","8","8")
	Return Me
End Sub
'add 1 column, spanning 9
Sub AddColumns9 As SDUI5Form
	AddColumns(1,"12", "12","9","9","9")
	Return Me
End Sub
'add 1 column, spanning 10
Sub AddColumns10 As SDUI5Form
	AddColumns(1,"12", "12","10","10","10")
	Return Me
End Sub
'add 1 column, spanning 11
Sub AddColumns11 As SDUI5Form
	AddColumns(1,"12", "12","11","11","11")
	Return Me
End Sub

Sub SubmitForm
	If mElement = Null Then Return
	mElement.RunMethod("submit", Null)
End Sub

Sub DontSubmitForm
	mElement.On("submit", Me, "dontsubmit")
End Sub

private Sub dontsubmit(e As BANanoEvent)
	e.PreventDefault
	BANano.History.Back
End Sub

'reset the validations
'validate an element
'<code>
''reset the validations
'mdl.ResetValidation
''validate each of the elements
'mdl.Validate(txtFirstName.IsBlank)
'mdl.Validate(txtLastName.IsBlank)
'mdl.Validate(txtEmail.IsBlank)
'mdl.Validate(txtTelephone.IsBlank)
'mdl.Validate(txtAddress.IsBlank)
'mdl.Validate(radGender.IsBlank)
''check the form status
'If mdl.IsValid = False Then Return
'</code>
Sub ResetValidation
	validations.Initialize
End Sub
'<code>
'If txtEmail.IsBlank Then Return
'If txtpassword.IsBlank Then Return
'Dim record As Map = CreateMap()
'record.Put("email", txtEmail.Value)
'record.Put("password", txtpassword.Value)
'Log(record)
'</code>
Sub ValidateEach
End Sub
'validate an element
'<code>
''reset the validations
'mdl.ResetValidation
''validate each of the elements
'mdl.Validate(txtFirstName.IsBlank)
'mdl.Validate(txtLastName.IsBlank)
'mdl.Validate(txtEmail.IsBlank)
'mdl.Validate(txtTelephone.IsBlank)
'mdl.Validate(txtAddress.IsBlank)
'mdl.Validate(radGender.IsBlank)
''check the form status
'If mdl.IsValid = False Then Return
'</code>
Sub ValidateAll
End Sub
'validate an element
'<code>
''reset the validations
'mdl.ResetValidation
''validate each of the elements
'mdl.Validate(txtFirstName.IsBlank)
'mdl.Validate(txtLastName.IsBlank)
'mdl.Validate(txtEmail.IsBlank)
'mdl.Validate(txtTelephone.IsBlank)
'mdl.Validate(txtAddress.IsBlank)
'mdl.Validate(radGender.IsBlank)
''check the form status
'If mdl.IsValid = False Then Return
'</code>
Sub Validate(response As Boolean)
	'add responses that are true
	validations.Put(response, response)
End Sub
'get the validation
'validate an element
'<code>
''reset the validations
'mdl.ResetValidation
''validate each of the elements
'mdl.Validate(txtFirstName.IsBlank)
'mdl.Validate(txtLastName.IsBlank)
'mdl.Validate(txtEmail.IsBlank)
'mdl.Validate(txtTelephone.IsBlank)
'mdl.Validate(txtAddress.IsBlank)
'mdl.Validate(radGender.IsBlank)
''check the form status
'If mdl.IsValid = False Then Return
'</code>
Sub IsValid As Boolean
	Dim hastrue As Boolean = validations.ContainsKey(True)
	If hastrue Then Return False
	Return True
End Sub

'build the grid
Sub BuildGrid
	TheMatrix.Initialize
	LastRow = 0
	Dim sb As StringBuilder
	sb.Initialize
	'for each defined row, for each defined column
	Dim rowCnt As Int = 0
	Dim rowTot As Int = GridRowsM.Size - 1
	For rowCnt = 0 To rowTot
		'get this row
		Dim currentRow As GridRow = GridRowsM.GetValueAt(rowCnt)
		Dim strRow As String = BuildRow(currentRow)
		sb.Append(strRow)
	Next
	Dim sout As String = sb.tostring
	sb.Initialize
	mElement.Append(sout)
End Sub

'build a single row
Private Sub BuildRow(xRow As GridRow) As String
	'how many rows do we have to render
	Dim rowTot As Int = xRow.Rows
	Dim rowCnt As Int
	Dim sb As StringBuilder
	sb.Initialize
	'for each row
	For rowCnt = 1 To rowTot
		LastRow = LastRow + 1
		Dim rowKey As String = $"${mName}r${LastRow}"$
		sb.Append($"<div id="${rowKey}" class="grid grid-cols-12 ${BuildRowClass(xRow)}">"$)
		'get the columns to add
		Dim cols As List = xRow.Columns
		'how many columns to add here
		Dim colCnt As Int = 0
		Dim colTot As Int = cols.Size - 1
		'this will store the column count
		Dim LastColumn As Int = 0
		For colCnt = 0 To colTot
			'get this column
			Dim Column As GridColumn = cols.Get(colCnt)
			Dim colCnt1 As Int = 0
			Dim colTot1 As Int = Column.Columns
			For colCnt1 = 1 To colTot1
				'increment the column to add for this row
				LastColumn = LastColumn + 1
				Dim cellKey As String = $"${rowKey}c${LastColumn}"$
				Dim mKey As String = $"${LastRow}.${LastColumn}"$
				TheMatrix.Put(mKey, mKey)
				'if showid
				Dim strShow As String = ""
				Dim sbStyle As StringBuilder
				sbStyle.Initialize
				If ShowGridDesign Then
					strShow = cellKey
					strShow = strShow.replace(mName, "")
					strShow = strShow.ToUpperCase
					sbStyle.append($"style="border-width:2px;border-style:dotted;border-color:grey;""$)
				End If
				'define the column structure
				Dim sbCol As StringBuilder
				sbCol.Initialize
				sbCol.Append($"<div id="${cellKey}" ${sbStyle.tostring}"$)
				sbCol.Append($"class="p-2 "$)
				sbCol.Append(BuildColumnClass(Column))
				sbCol.Append(" ")
				sbCol.Append(BuildSpans(Column))
				sbCol.append(" ")
				sbCol.Append(BuildOffsets(Column))
				sbCol.Append($"">${strShow}</div>"$)
				sb.Append(sbCol.tostring)
				sbCol.Initialize
				sbStyle.Initialize
			Next
		Next
		sb.Append("</div>")
	Next
	Dim sout As String = sb.ToString
	sb.Initialize
	Return sout
End Sub

private Sub BuildOffsets(col As GridColumn) As String
	Dim sb As StringBuilder
	sb.Initialize
	'If col.ofxs <> "" And col.gxs <> "0" Then sb.Append($"offset-xs-${col.ofxs} "$)
	If col.ofsm <> "" And col.gsm <> "0" Then sb.Append($"sm:${UI.FixOffset(col.ofsm)} "$)
	If col.ofmd <> "" And col.gmd <> "0" Then sb.Append($"md:${UI.FixOffset(col.ofmd)} "$)
	If col.oflg <> "" And col.glg <> "0" Then sb.Append($"lg:${UI.FixOffset(col.oflg)} "$)
	If col.ofxl <> "" And col.gxl <> "0" Then sb.Append($"xl:${UI.FixOffset(col.ofxl)} "$)
	Dim sout As String = sb.ToString
	sb.Initialize
	sout = sout.trim
	Return sout
End Sub

private Sub BuildSpans(col As GridColumn) As String
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"col-span-12 "$)
	If col.gsm <> "" And col.gsm <> "0" Then sb.Append($"sm:col-span-${col.gsm} "$)
	If col.gmd <> "" And col.gmd <> "0" Then sb.Append($"md:col-span-${col.gmd} "$)
	If col.glg <> "" And col.glg <> "0" Then sb.Append($"lg:col-span-${col.glg} "$)
	If col.gxl <> "" And col.gxl <> "0" Then sb.Append($"xl:col-span-${col.gxl} "$)
	Dim sout As String = sb.ToString
	sb.Initialize
	sout = sout.trim
	Return sout
End Sub

private Sub BuildColumnClass(col As GridColumn) As String
	Dim sb As StringBuilder
	sb.Initialize
	'add the margins
	sb.Append(BuildMarginPadding("m", col.gma, col.gmx, col.gmy, col.gmt, col.gmb, col.gml, col.gmr))
	'add the padding
	sb.Append(BuildMarginPadding("p", col.gpa, col.gpx, col.gpy, col.gpt, col.gpb, col.gpl, col.gpr))
	Dim sout As String = sb.ToString
	sout = sout.trim
	sb.Initialize
	Return sout
End Sub

Private Sub BuildRowClass(xrow As GridRow) As String
	Dim sb As StringBuilder
	sb.Initialize
	'add the margins
	sb.Append(BuildMarginPadding("m", xrow.gma, xrow.gmx, xrow.gmy, xrow.gmt, xrow.gmb, xrow.gml, xrow.gmr))
	'add the padding
	sb.Append(BuildMarginPadding("p", xrow.gpa, xrow.gpx, xrow.gpy, xrow.gpt, xrow.gpb, xrow.gpl, xrow.gpr))
	Dim sout As String = sb.ToString.Trim
	sb.Initialize
	Return sout
End Sub

private Sub BuildMarginPadding(sprefix As String, gma As String, gmx As String, gmy As String, gmt As String, gmb As String, gml As String, gmr As String) As String
	gmt = gmt.Trim
	gmb = gmb.Trim
	gml = gml.Trim
	gmr = gmr.Trim
	gma = gma.Trim
	gmx = gmx.trim
	gmy = gmy.trim
	'
	Dim sb As StringBuilder
	sb.Initialize
	If gma <> "" Then sb.Append($"${sprefix}-${gma} "$)
	If gmx <> "" Then sb.Append($"${sprefix}x-${gmx} "$)
	If gmy <> "" Then sb.Append($"${sprefix}y-${gmy} "$)
	If gmt <> "" Then sb.Append($"${sprefix}t-${gmt} "$)
	If gmb <> "" Then sb.Append($"${sprefix}b-${gmb} "$)
	If gml <> "" Then sb.Append($"${sprefix}l-${gml} "$)
	If gmr <> "" Then sb.Append($"${sprefix}r-${gmr} "$)
	Dim sout As String = sb.ToString
	sb.Initialize
	sout = sout.trim
	Return sout
End Sub

'generate the next row
Sub NextRow As Int
	ntxRow = ntxRow + 1
	Return ntxRow
End Sub

'get the current row
Sub ThisRow As Int
	Return ntxRow
End Sub

'get the row div
Sub Row(r As Int) As SDUI5Form
	Dim sid As String = $"${mName}r${r}"$
	Dim el As SDUI5Form
	el.Initialize(mCallBack, sid, sid)
	el.LinkExisting
	Return el
End Sub
