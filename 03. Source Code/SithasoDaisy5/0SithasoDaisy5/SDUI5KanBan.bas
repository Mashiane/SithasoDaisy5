B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
#Event: ButtonClick (el As Map, boardId As String)
#Event: Click (el As Map)
#Event: Context (el As Map, event As BANAnoEvent)
#Event: DragBoard (el As Map, source As Map)
#Event: DragEl (el As Map, source As Map)
#Event: DragEndBoard (el As Map)
#Event: DragEndEl (el As Map)
#Event: DropEl (el As Map, target As Map, source As Map, sibling As Map)
#Event: DragItem (el As Map, source As Map)
#Event: DragItemEnd (el As Map)
#Event: DropItem (el As Map)
#Event: ClickItem (el As Map)
#Event: ContextItem (el As Map, event As BANAnoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this div
#DesignerProperty: Key: DragBoards, DisplayName: Drag Boards, FieldType: Boolean, DefaultValue: true, Description: The boards are draggable - if false only item can be dragged
#DesignerProperty: Key: DragItems, DisplayName: Drag Items, FieldType: Boolean, DefaultValue: true, Description: If false - all items are not draggable
#DesignerProperty: Key: Gutter, DisplayName: Gutter, FieldType: String, DefaultValue: 15px, Description: Gutter of the board
#DesignerProperty: Key: WidthBoard, DisplayName: Board Width, FieldType: String, DefaultValue: 250px, Description: Width of the board
#DesignerProperty: Key: ResponsivePercentage, DisplayName: Responsive Percentage, FieldType: Boolean, DefaultValue: true, Description: Responsive Percentage
#DesignerProperty: Key: ItemAddOptionsEnabled, DisplayName: Item Add Options Enabled, FieldType: Boolean, DefaultValue: False, Description: Add a button to board for easy item creation
#DesignerProperty: Key: ItemAddOptionsClass, DisplayName: Item Add Options Class, FieldType: String, DefaultValue: , Description: Default class of the button
#DesignerProperty: Key: ItemAddOptionsContent, DisplayName: Item Add Options Content, FieldType: String, DefaultValue: , Description: Text or html content of the board button
#DesignerProperty: Key: ItemAddOptionsFooter, DisplayName: Item Add Options Footer, FieldType: Boolean, DefaultValue: False, Description: Position the button on footer
#DesignerProperty: Key: ItemHandleOptionsEnabled, DisplayName: Item Handle Options Enabled, FieldType: Boolean, DefaultValue: False, Description: If board item handle is enabled or not
#DesignerProperty: Key: ItemHandleOptionsCustomCssIconHandler, DisplayName: Item Handle Options Custom Css Icon Handler, FieldType: String, DefaultValue: , Description: Item Handle Options Custom Css Icon Handler
#DesignerProperty: Key: ItemHandleOptionsCustomHandler, DisplayName: Item Handle Options Custom Handler, FieldType: String, DefaultValue: , Description: Item Handle Options Custom Handler
#DesignerProperty: Key: ItemHandleOptionsCustomCssHandler, DisplayName: Item Handle Options Custom Css Handler, FieldType: String, DefaultValue: , Description: Item Handle Options Custom Css Handler
#DesignerProperty: Key: ItemHandleOptionsHandleClass, DisplayName: Item Handle Options Handle Class, FieldType: String, DefaultValue: , Description: Item Handle Options Handle Class
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A-X-Y-T-B-L-R
#DesignerProperty: Key: RawClasses, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: RawStyles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String- use =
#DesignerProperty: Key: RawAttributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String- use =

Sub Class_Globals
	Public UI As UIShared 'ignore
	Public CustProps As Map
	Private mback As Object
	Public mElement As BANanoElement
	Private mParent As BANanoElement
	Private mName As String
	Private BANano As BANano   'ignore
	Private mClasses As String
	Private mStyles As String
	Private mAttributes As String
	Private sMarginAXYTBLR As String
	Private sPaddingAXYTBLR As String
	Private mParentID As String
	Private bVisible As Boolean
	Private bDragBoards As Boolean
	Private bDragItems As Boolean
	Private sGutter As String
	Private bItemAddOptionsEnabled As Boolean
	Private bItemHandleOptionsEnabled As Boolean
	Private sWidthBoard As String
	Private Options As Map
	Private kanban As BANanoObject
	Private boardsm As Map
	Private sItemAddOptionsClass As String
	Private sItemAddOptionsContent As String
	Private bItemAddOptionsFooter As Boolean
	Private sItemHandleOptionsCustomCssIconHandler As String
	Private sItemHandleOptionsCustomHandler As String
	Private sItemHandleOptionsCustomCssHandler As String
	Private sItemHandleOptionsHandleClass As String
	Private bResponsivePercentage As Boolean
	Public Tag As Object
End Sub

Sub Initialize (CallBack As Object, cName As String, EventName As String)
	If BANano.AssetsIsDefined("KanBan") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesKanBan)' should be added for '${cName}'"$)
		Return
	End If
	BANano.DependsOnAsset("jkanban.min.js")
	BANano.DependsOnAsset("jkanban.min.css")
	UI.Initialize(Me)
	mName = UI.CleanID(cName)
	mback = CallBack
	Options.Initialize
	boardsm.Initialize
	CustProps.Initialize
	SetDefaults
End Sub

private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("DragBoards", True)
	CustProps.Put("DragItems", True)
	CustProps.Put("Gutter", "15px")
	CustProps.Put("WidthBoard", "250px")
	CustProps.Put("ResponsivePercentage", True)
	CustProps.Put("ItemAddOptionsEnabled", False)
	CustProps.Put("ItemAddOptionsClass", "")
	CustProps.Put("ItemAddOptionsContent", "")
	CustProps.Put("ItemAddOptionsFooter", False)
	CustProps.Put("ItemHandleOptionsEnabled", False)
	CustProps.Put("ItemHandleOptionsCustomCssIconHandler", "")
	CustProps.Put("ItemHandleOptionsCustomHandler", "")
	CustProps.Put("ItemHandleOptionsCustomCssHandler", "")
	CustProps.Put("ItemHandleOptionsHandleClass", "")
	CustProps.Put("Visible", True)
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	CustProps = Props
	mParent = Target
	If Props <> Null Then
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		mParentID = Props.GetDefault("ParentID", "")
		mParentID = UI.CStr(mParentID)
		mClasses = Props.GetDefault("RawClasses", "")
		mStyles = Props.GetDefault("RawStyles", "")
		mAttributes = Props.GetDefault("RawAttributes", "")
		sMarginAXYTBLR = Props.GetDefault("MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		sPaddingAXYTBLR = Props.GetDefault("PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		bVisible = Props.GetDefault("Visible", True)
		bVisible = UI.CBool(bVisible)
		bDragBoards = Props.GetDefault("DragBoards", True)
		bDragBoards = UI.CBool(bDragBoards)
		bDragItems = Props.GetDefault("DragItems", True)
		bDragItems = UI.CBool(bDragItems)
		sGutter = Props.GetDefault("Gutter", "15px")
		sGutter = UI.CStr(sGutter)
		bItemAddOptionsEnabled = Props.GetDefault("ItemAddOptionsEnabled", False)
		bItemAddOptionsEnabled = UI.CBool(bItemAddOptionsEnabled)
		bItemHandleOptionsEnabled = Props.GetDefault("ItemHandleOptionsEnabled", False)
		bItemHandleOptionsEnabled = UI.CBool(bItemHandleOptionsEnabled)
		sWidthBoard = Props.GetDefault("WidthBoard", "250px")
		sWidthBoard = UI.CStr(sWidthBoard)
		sItemAddOptionsClass = Props.GetDefault("ItemAddOptionsClass", "")
		sItemAddOptionsClass = UI.CStr(sItemAddOptionsClass)
		sItemAddOptionsContent = Props.GetDefault("ItemAddOptionsContent", "")
		sItemAddOptionsContent = UI.CStr(sItemAddOptionsContent)
		bItemAddOptionsFooter = Props.GetDefault("ItemAddOptionsFooter", False)
		bItemAddOptionsFooter = UI.CBool(bItemAddOptionsFooter)
		sItemHandleOptionsCustomCssIconHandler = Props.GetDefault("ItemHandleOptionsCustomCssIconHandler", "")
		sItemHandleOptionsCustomCssIconHandler = UI.CStr(sItemHandleOptionsCustomCssIconHandler)
		sItemHandleOptionsCustomHandler = Props.GetDefault("ItemHandleOptionsCustomHandler", "")
		sItemHandleOptionsCustomHandler = UI.CStr(sItemHandleOptionsCustomHandler)
		sItemHandleOptionsCustomCssHandler = Props.GetDefault("ItemHandleOptionsCustomCssHandler", "")
		sItemHandleOptionsCustomCssHandler = UI.CStr(sItemHandleOptionsCustomCssHandler)
		sItemHandleOptionsHandleClass = Props.GetDefault("ItemHandleOptionsHandleClass", "")
		sItemHandleOptionsHandleClass = UI.CStr(sItemHandleOptionsHandleClass)
		bResponsivePercentage = Props.GetDefault("ResponsivePercentage", True)
		bResponsivePercentage = UI.CBool(bResponsivePercentage)
	End If
	
	'
	UI.AddStyleDT("overflow-x", "auto")
	UI.AddStyleDT("padding", "20px 0")
	'
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	If mParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${mParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${mParentID}' parent does not exist!"$)
			Return
		End If
		mParent.Initialize($"#${mParentID}"$)
	End If
	mElement = mParent.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}"></div>"$).Get("#" & mName)
	Options.Initialize
	boardsm.Initialize
	setDragBoards(bDragBoards)
	setDragItems(bDragItems)
	setGutter(sGutter)
	setItemAddOptionsEnabled(bItemAddOptionsEnabled)
	setItemHandleOptionsEnabled(bItemHandleOptionsEnabled)
	setWidthBoard(sWidthBoard)
	setItemAddOptionsClass(sItemAddOptionsClass)
	setItemAddOptionsContent(sItemAddOptionsContent)
	setItemAddOptionsFooter(bItemAddOptionsFooter)
	setItemHandleOptionsCustomCssIconHandler(sItemHandleOptionsCustomCssIconHandler)
	setItemHandleOptionsCustomHandler(sItemHandleOptionsCustomHandler)
	setItemHandleOptionsCustomCssHandler(sItemHandleOptionsCustomCssHandler)
	setItemHandleOptionsHandleClass(sItemHandleOptionsHandleClass)
	setResponsivePercentage(bResponsivePercentage)
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

Sub setAttributes(s As String)
	mAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttributes(mElement, mAttributes)
End Sub
'
Sub setStyles(s As String)
	mStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, mStyles)
End Sub
'
Sub setClasses(s As String)
	mClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, mClasses)
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
	Return mAttributes
End Sub
'
Sub getStyles As String
	Return mStyles
End Sub
'
Sub getClasses As String
	Return mClasses
End Sub
'
Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub
'
Sub getMarginAXYTBLR As String
	Return sMarginAXYTBLR
End Sub
'
'set Item Add Options Class
Sub setItemAddOptionsClass(s As String)		'ignoredeadcode
	CustProps.put("ItemAddOptionsClass", s)
	s = UI.CStr(s)
	sItemAddOptionsClass = s
	If s = "" Then Return
	UI.Putrecursive(Options, "itemAddOptions.class", s)
End Sub
'set Item Add Options Content
Sub setItemAddOptionsContent(s As String)					'ignoredeadcode
	CustProps.put("ItemAddOptionsContent", s)
	s = UI.CStr(s)
	sItemAddOptionsContent = s
	If s = "" Then Return
	UI.Putrecursive(Options, "itemAddOptions.content", s)
End Sub
'set Item Add Options Footer
Sub setItemAddOptionsFooter(b As Boolean)				'ignoredeadcode
	CustProps.put("ItemAddOptionsFooter", b)
	bItemAddOptionsFooter = b
	UI.Putrecursive(Options, "itemAddOptions.footer", b)
	Return
End Sub
'set Item Handle Options Custom Css Icon Handler
Sub setItemHandleOptionsCustomCssIconHandler(s As String)				'ignoredeadcode
	CustProps.put("ItemHandleOptionsCustomCssIconHandler", s)
	s = UI.CStr(s)
	sItemHandleOptionsCustomCssIconHandler = s
	If s = "" Then Return
	UI.Putrecursive(Options, "itemHandleOptions.customCssIconHandler", s)
End Sub
'set Item Handle Options Custom Handler
Sub setItemHandleOptionsCustomHandler(s As String)					'ignoredeadcode
	CustProps.put("ItemHandleOptionsCustomHandler", s)
	s = UI.CStr(s)
	sItemHandleOptionsCustomHandler = s
	If s = "" Then Return
	UI.Putrecursive(Options, "itemHandleOptions.customHandler", s)
End Sub
'set Item Handle Options Custom Css Handler
Sub setItemHandleOptionsCustomCssHandler(s As String)					'ignoredeadcode
	CustProps.put("ItemHandleOptionsCustomCssHandler", s)
	s = UI.CStr(s)
	sItemHandleOptionsCustomCssHandler = s
	If s = "" Then Return
	UI.Putrecursive(Options, "itemHandleOptions.customCssHandler", s)
End Sub
'set Item Handle Options Handle Class
Sub setItemHandleOptionsHandleClass(s As String)					'ignoredeadcode
	CustProps.put("ItemHandleOptionsHandleClass", s)
	s = UI.CStr(s)
	sItemHandleOptionsHandleClass = s
	If s = "" Then Return
	UI.Putrecursive(Options, "itemHandleOptions.handleClass", s)
End Sub
'set Responsive Percentage
Sub setResponsivePercentage(b As Boolean)							'ignoredeadcode
	CustProps.put("ResponsivePercentage", b)
	bResponsivePercentage = b
	Options.put("responsivePercentage", b)
	Return
End Sub

Sub Clear
	boardsm.Initialize
End Sub

Sub AddBoard(id As String, title As String, className As String, props As Map)
	id = UI.CleanID(id)
	Dim items As List
	items.Initialize
	Dim nb As Map = CreateMap()
	nb.Put("id", id)
	nb.Put("title", title)
	nb.Put("item", items)
	nb.Put("class", className)
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			nb.Put(k, v)
		Next
	End If
	boardsm.Put(id, nb)
End Sub

Sub AddBoardItem(boardid As String, id As String, title As String, className As String, props As Map)
	id = UI.CleanID(id)
	boardid = UI.CleanID(boardid)
	If boardsm.ContainsKey(boardid) Then
		If BANano.IsNull(props) = False Then
			For Each k As String In props.keys
				Dim v1 As String = props.Get(k)
				Dim kf As String = "{" & k & "}"
				title = title.Replace(kf, v1)
			Next
		End If
		
		Dim bm As Map = boardsm.Get(boardid)
		Dim items As List = bm.Get("item")
		Dim nb As Map = CreateMap()
		nb.Put("id", id)
		nb.Put("title", title)
		nb.Put("class", className)
		If BANano.IsNull(props) = False Then
			For Each k As String In props.Keys
				Dim v As Object = props.Get(k)
				nb.Put(k, v)
			Next
		End If
		Dim a As Object
		Dim b As Object
		Dim dragCB As BANanoObject = BANano.CallBack(mback, $"${mName}_DragItem"$, Array(a, b))
		nb.Put("drag",  dragCB)
		Dim dragendCB As BANanoObject = BANano.CallBack(mback, $"${mName}_DragItemEnd"$, Array(a))
		nb.Put("dragend",  dragendCB)
		Dim dropCB As BANanoObject = BANano.CallBack(mback, $"${mName}_DropItem"$, Array(a))
		nb.Put("drop",  dropCB)
		Dim clickCB As BANanoObject = BANano.CallBack(mback, $"${mName}_ClickItem"$, Array(a))
		nb.Put("drop",  clickCB)
		Dim contextCB As BANanoObject = BANano.CallBack(mback, $"${mName}_ContextItem"$, Array(a, b))
		nb.Put("context",  contextCB)
		'
		items.Add(nb)
		bm.Put("item", items)
		boardsm.Put(boardid, bm)
	End If
End Sub

Sub Refresh
	Dim boards As List
	boards.Initialize
	For Each bk As String In boardsm.Keys
		Dim board As Map = boardsm.Get(bk)
		Dim item As List = board.Get("item")
		If item.Size = 0 Then board.Remove("item")
		boards.Add(board)
	Next
	Options.Put("element", $"#${mName}"$)
	Options.Put("boards", boards)
	kanban.Initialize2("jKanban", Options)
End Sub

'set Drag Boards
Sub setDragBoards(b As Boolean)				'ignoredeadcode
	CustProps.put("DragBoards", b)
	bDragBoards = b
	Options.put("dragBoards", b)
End Sub

'set Drag Items
Sub setDragItems(b As Boolean)					'ignoredeadcode
	CustProps.put("DragItems", b)
	bDragItems = b
	Options.put("dragItems", b)
End Sub

'set Gutter
Sub setGutter(s As String)						'ignoredeadcode
	CustProps.put("Gutter", s)
	s = UI.CStr(s)
	sGutter = s
	Options.put("gutter", s)
End Sub

'set Item Add Options Enabled
Sub setItemAddOptionsEnabled(b As Boolean)		'ignoredeadcode
	CustProps.put("ItemAddOptionsEnabled", b)
	UI.Putrecursive(Options, "itemAddOptions.enabled", b)
	Return
End Sub

'set Item Handle Options Enabled
Sub setItemHandleOptionsEnabled(b As Boolean)				'ignoredeadcode
	CustProps.put("ItemHandleOptionsEnabled", b)
	UI.Putrecursive(Options, "itemHandleOptions.enabled", b)
	Return
End Sub

'set Width Board
Sub setWidthBoard(s As String)							'ignoredeadcode
	CustProps.put("WidthBoard", s)
	s = UI.CStr(s)
	sWidthBoard = s
	Options.put("widthBoard", s)
End Sub

Sub getID As String
	Return $"${mName}"$
End Sub

'get the id of the component
Sub getHere As String
	Return $"#${mName}"$
End Sub

'load a component from a json file
Sub LoadComponentJson(designName As String)
	CustProps = BANano.Await(BANano.GetFileAsJSON($"./assets/${designName}.json?${DateTime.Now}"$, Null))
End Sub

'add this element to an existing parent element using current props
Public Sub AddComponent
	If mParentID = "" Then Return
	mParentID = UI.CleanID(mParentID)
	mParent = BANano.GetElement("#" & mParentID)
	DesignerCreateView(mParent, CustProps)
End Sub

'
'set ParentID
Sub setParentID(s As String)
	mParentID = UI.CStr(s)
	CustProps.put("ParentID", s)
End Sub
'
'get ParentID
Sub getParentID As String
	Return mParentID
End Sub
'
'get Drag Boards
Sub getDragBoards As Boolean
	Return bDragBoards
End Sub
'
'get Drag Items
Sub getDragItems As Boolean
	Return bDragItems
End Sub
'
'get Gutter
Sub getGutter As String
	Return sGutter
End Sub
'
'get Board Width
Sub getWidthBoard As String
	Return sWidthBoard
End Sub
'
'get Responsive Percentage
Sub getResponsivePercentage As Boolean
	Return bResponsivePercentage
End Sub
'
'get Item Add Options Enabled
Sub getItemAddOptionsEnabled As Boolean
	Return bItemAddOptionsEnabled
End Sub
'
'get Item Add Options Class
Sub getItemAddOptionsClass As String
	Return sItemAddOptionsClass
End Sub
'
'get Item Add Options Content
Sub getItemAddOptionsContent As String
	Return sItemAddOptionsContent
End Sub
'
'get Item Add Options Footer
Sub getItemAddOptionsFooter As Boolean
	Return bItemAddOptionsFooter
End Sub
'
'get Item Handle Options Enabled
Sub getItemHandleOptionsEnabled As Boolean
	Return bItemHandleOptionsEnabled
End Sub
'
'get Item Handle Options Custom Css Icon Handler
Sub getItemHandleOptionsCustomCssIconHandler As String
	Return sItemHandleOptionsCustomCssIconHandler
End Sub
'
'get Item Handle Options Custom Handler
Sub getItemHandleOptionsCustomHandler As String
	Return sItemHandleOptionsCustomHandler
End Sub
'
'get Item Handle Options Custom Css Handler
Sub getItemHandleOptionsCustomCssHandler As String
	Return sItemHandleOptionsCustomCssHandler
End Sub
'
'get Item Handle Options Handle Class
Sub getItemHandleOptionsHandleClass As String
	Return sItemHandleOptionsHandleClass
End Sub
