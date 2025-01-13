B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: , Description: Text
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: , Description: Text Color
#DesignerProperty: Key: BackgroundColor, DisplayName: Background Color, FieldType: String, DefaultValue: , Description: Background Color
#DesignerProperty: Key: Container, DisplayName: Container, FieldType: Boolean, DefaultValue: True, Description: Container
#DesignerProperty: Key: ContainerFluid, DisplayName: Container Fluid, FieldType: Boolean, DefaultValue: False, Description: Container Fluid
#DesignerProperty: Key: ContainerLg, DisplayName: Container LG, FieldType: Boolean, DefaultValue: False, Description: Container Lg
#DesignerProperty: Key: ContainerMd, DisplayName: Container MF, FieldType: Boolean, DefaultValue: False, Description: Container Md
#DesignerProperty: Key: ContainerSm, DisplayName: Container SM, FieldType: Boolean, DefaultValue: False, Description: Container Sm
#DesignerProperty: Key: ContainerXl, DisplayName: Container XL, FieldType: Boolean, DefaultValue: False, Description: Container Xl
#DesignerProperty: Key: ContainerXxl, DisplayName: Container XXL, FieldType: Boolean, DefaultValue: False, Description: Container Xxl
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded|2xl|3xl|full|lg|md|sm|xl|0
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: CenterChildren, DisplayName: Center Children, FieldType: Boolean, DefaultValue: False, Description: Center Children
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue: , Description: Max Height
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: , Description: Max Width
#DesignerProperty: Key: MinHeight, DisplayName: Min Height, FieldType: String, DefaultValue: , Description: Min Height
#DesignerProperty: Key: MinWidth, DisplayName: Min Width, FieldType: String, DefaultValue: , Description: Min Width
#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue: none, Description: Text Align, List: center|end|justify|left|none|right|start
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
#DesignerProperty: Key: RawBorderColor, DisplayName: Border Colors, FieldType: String, DefaultValue: a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?, Description: Border Colors
#DesignerProperty: Key: RawBorderStyle, DisplayName: Border Styles, FieldType: String, DefaultValue: a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?, Description: Border Styles
#DesignerProperty: Key: RawBorderWidth, DisplayName: Border Widths, FieldType: String, DefaultValue: a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?, Description: Border Widths
#DesignerProperty: Key: RawBorderRadius, DisplayName: Border Radius, FieldType: String, DefaultValue: a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?, Description: Border Radius
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
	Private sText As String = ""
	Public Tag As Object
	Private sBackgroundColor As String = ""
	Private bContainerFluid As Boolean = False
	Private bContainerLg As Boolean = False
	Private bContainerMd As Boolean = False
	Private bContainerSm As Boolean = False
	Private bContainerXl As Boolean = False
	Private bContainerXxl As Boolean = False
	Private sHeight As String = ""
	Private sTextColor As String = ""
	Private sWidth As String = ""
	Private sRawBorderColor As String = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	Private sRawBorderStyle As String = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	Private sRawBorderWidth As String = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	Private sRawBorderRadius As String = "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?"
	Private sRounded As String = "none"
	Private sShadow As String = "none"
	Private sTextAlign As String = "none"
	Type GridRow(Rows As Int, columns As List, _
    gma As String, gmx As String, gmy As String, gmt As String, gmb As String, gmr As String, gml As String, _
    gpa As String, gpx As String, gpy As String, gpt As String, gpb As String, gpr As String, gpl As String)
	Type GridColumn(columns As Int, gxs As String, gsm As String, gmd As String, glg As String, gxl As String, _
    ofxs As String, ofsm As String, ofmd As String, oflg As String, ofxl As String, _
    gma As String, gmx As String, gmy As String, gmt As String, gmb As String, gmr As String, gml As String, _
    gpa As String, gpx As String, gpy As String, gpt As String, gpb As String, gpr As String, gpl As String)
	'this will hold all our rows
	Public GridRowsM As Map
	Public LastRow As Int
	Private ntxRow As Int
	Public TheMatrix As Map
	Public ShowGridDesign As Boolean = False
	Private bCenterChildren As Boolean = False
	Private bContainer As Boolean = False
	Private sMaxHeight As String = ""
	Private sMaxWidth As String = ""
	Private sMinHeight As String = ""
	Private sMinWidth As String = ""
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	mEventName = modSD5.CleanID(EventName)
	mName = modSD5.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	UI.Initialize(Me)
	GridRowsM.Initialize 
	LastRow = 0
	ntxRow = 0
	TheMatrix.Initialize 
	ShowGridDesign = False
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
Sub OnEvent(event As String, methodName As String)
	UI.OnEvent(mElement, event, mCallBack, $"${mEventName}_${methodName}"$)
End Sub
'set Position Style
'options: static|relative|fixed|absolute|sticky|none
Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.put("PositionStyle", s)
	If mElement = Null Then Return
	UI.AddStyle(mElement, "position", s)
End Sub
Sub getPositionStyle As String
	Return sPositionStyle
End Sub
'set raw positions
Sub setPosition(s As String)
	sPosition = s
	CustProps.Put("Position", sPosition)
	If mElement = Null Then Return
	UI.SetPosition(mElement, sPosition)
End Sub
Sub getPosition As String
	Return sPosition
End Sub
Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	UI.SetAttributes(mElement, sRawAttributes)
End Sub
'
Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	UI.SetStyles(mElement, sRawStyles)
End Sub
'
Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	UI.SetClasses(mElement, sRawStyles)
End Sub
'
Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub
'
Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
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
'set text
Sub setText(text As String)
	sText = text
	CustProps.Put("Text", text)
	If mElement = Null Then Return
	UI.SetText(mElement, text)
End Sub
'get text
Sub getText As String
	sText = UI.GetText(mElement)
	Return sText
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
		bContainerFluid = Props.GetDefault("ContainerFluid", False)
		bContainerFluid = modSD5.CBool(bContainerFluid)
		bContainerLg = Props.GetDefault("ContainerLg", False)
		bContainerLg = modSD5.CBool(bContainerLg)
		bContainerMd = Props.GetDefault("ContainerMd", False)
		bContainerMd = modSD5.CBool(bContainerMd)
		bContainerSm = Props.GetDefault("ContainerSm", False)
		bContainerSm = modSD5.CBool(bContainerSm)
		bContainerXl = Props.GetDefault("ContainerXl", False)
		bContainerXl = modSD5.CBool(bContainerXl)
		bContainerXxl = Props.GetDefault("ContainerXxl", False)
		bContainerXxl = modSD5.CBool(bContainerXxl)
		sHeight = Props.GetDefault("Height", "")
		sHeight = modSD5.CStr(sHeight)
		sWidth = Props.GetDefault("Width", "")
		sWidth = modSD5.CStr(sWidth)
		sRounded = Props.GetDefault("Rounded", "none")
		sRounded = modSD5.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = modSD5.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sTextAlign = Props.GetDefault("TextAlign", "none")
		sTextAlign = modSD5.CStr(sTextAlign)
		If sTextAlign = "none" Then sTextAlign = ""
		bCenterChildren = Props.GetDefault("CenterChildren", False)
		bCenterChildren = modSD5.CBool(bCenterChildren)
		bContainer = Props.GetDefault("Container", False)
		bContainer = modSD5.CBool(bContainer)
		sMaxHeight = Props.GetDefault("MaxHeight", "")
		sMaxHeight = modSD5.CStr(sMaxHeight)
		sMaxWidth = Props.GetDefault("MaxWidth", "")
		sMaxWidth = modSD5.CStr(sMaxWidth)
		sMinHeight = Props.GetDefault("MinHeight", "")
		sMinHeight = modSD5.CStr(sMinHeight)
		sMinWidth = Props.GetDefault("MinWidth", "")
		sMinWidth = modSD5.CStr(sMinWidth)
	End If
	'
	If sMaxHeight <> "" Then UI.AddSizeDT("max-h", sMaxHeight)
	If sMaxWidth <> "" Then UI.AddSizeDT("max-w", sMaxWidth)
	If sMinHeight <> "" Then UI.AddSizeDT("min-h", sMinHeight)
	If sMinWidth <> "" Then UI.AddSizeDT("min-w", sMinWidth)
	If bContainer Then UI.AddClassDT("container")
	If bCenterChildren Then UI.AddClassdt("flex justify-center items-center")
'	If sBackgroundColor <> "" Then UI.AddBackgroundColorDT(sBackgroundColor)
	If sTextAlign <> "" Then UI.AddStyleDT("text-align", sTextAlign)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If bContainerFluid = True Then UI.AddClassDT("container-fluid")
	If bContainerLg = True Then UI.AddClassDT("container-lg")
	If bContainerMd = True Then UI.AddClassDT("container-md")
	If bContainerSm = True Then UI.AddClassDT("container-sm")
	If bContainerXl = True Then UI.AddClassDT("container-xl")
	If bContainerXxl = True Then UI.AddClassDT("container-xxl")
	If sHeight <> "" Then UI.AddSizeDT("h", sHeight)
	'If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sWidth <> "" Then UI.AddSizeDT("w", sWidth)
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
	mElement = mTarget.Append($"[BANCLEAN]<div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">${sText}</div>"$).Get("#" & mName)
End Sub


Sub setCenterChildren(b As Boolean)
	bCenterChildren = b
	CustProps.Put("CenterChildren", b)
	If mElement = Null Then Return
	If b Then UI.AddClass(mElement, "flex justify-center items-center")
End Sub

Sub getCenterChildren As Boolean
	Return bCenterChildren
End Sub

'set Background Color
Sub setBackgroundColor(s As String)
	sBackgroundColor = s
	CustProps.put("BackgroundColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetBackgroundColor(mElement, sBackgroundColor)
End Sub
'set Container Fluid
Sub setContainerFluid(b As Boolean)
	bContainerFluid = b
	CustProps.put("ContainerFluid", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "container-fluid")
	Else
		UI.RemoveClass(mElement, "container-fluid")
	End If
End Sub
'set Container Lg
Sub setContainerLg(b As Boolean)
	bContainerLg = b
	CustProps.put("ContainerLg", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "container-lg")
	Else
		UI.RemoveClass(mElement, "container-lg")
	End If
End Sub
'set Container Md
Sub setContainerMd(b As Boolean)
	bContainerMd = b
	CustProps.put("ContainerMd", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "container-md")
	Else
		UI.RemoveClass(mElement, "container-md")
	End If
End Sub
'set Container Sm
Sub setContainerSm(b As Boolean)
	bContainerSm = b
	CustProps.put("ContainerSm", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "container-sm")
	Else
		UI.RemoveClass(mElement, "container-sm")
	End If
End Sub
'set Container Xl
Sub setContainerXl(b As Boolean)
	bContainerXl = b
	CustProps.put("ContainerXl", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "container-xl")
	Else
		UI.RemoveClass(mElement, "container-xl")
	End If
End Sub
'set Container Xxl
Sub setContainerXxl(b As Boolean)
	bContainerXxl = b
	CustProps.put("ContainerXxl", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddClass(mElement, "container-xxl")
	Else
		UI.RemoveClass(mElement, "container-xxl")
	End If
End Sub
'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "h", sHeight)
End Sub
'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColor(mElement, sTextColor)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "w", sWidth)
End Sub
'get Background Color
Sub getBackgroundColor As String
	Return sBackgroundColor
End Sub
'get Container Fluid
Sub getContainerFluid As Boolean
	Return bContainerFluid
End Sub
'get Container Lg
Sub getContainerLg As Boolean
	Return bContainerLg
End Sub
'get Container Md
Sub getContainerMd As Boolean
	Return bContainerMd
End Sub
'get Container Sm
Sub getContainerSm As Boolean
	Return bContainerSm
End Sub
'get Container Xl
Sub getContainerXl As Boolean
	Return bContainerXl
End Sub
'get Container Xxl
Sub getContainerXxl As Boolean
	Return bContainerXxl
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


'a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?
Sub setBorderColor(s As String)
	sRawBorderColor = s
	CustProps.Put("RawBorderColor", s)
	If mElement = Null Then Return
	UI.SetBorderColor(mElement, sRawBorderColor)
End Sub
Sub getBorderColor As String
	Return sRawBorderColor
End Sub
'a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?
Sub setBorderStyle(s As String)
	sRawBorderStyle = s
	CustProps.Put("RawBorderStyle", s)
	If mElement = Null Then Return
	UI.SetBorderStyle(mElement, sRawBorderStyle)
End Sub
Sub getBorderStyle As String
	Return sRawBorderStyle
End Sub
'a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?
Sub setBorderWidth(s As String)
	sRawBorderWidth = s
	CustProps.Put("RawBorderWidth", s)
	If mElement = Null Then Return
	UI.SetBorderWidth(mElement, sRawBorderWidth)
End Sub
Sub getBorderWidth As String
	Return sRawBorderWidth
End Sub
'a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?
Sub setBorderRadius(s As String)
	sRawBorderRadius = s
	CustProps.Put("RawBorderRadius", s)
	If mElement = Null Then Return
	UI.SetBorderRadius(mElement, sRawBorderRadius)
End Sub
Sub getBorderRadius As String
	Return sRawBorderRadius
End Sub

'set Rounded
'options: rounded-full|none|rounded-2xl|rounded-3xl|rounded|rounded-lg|rounded-md|rounded-sm|rounded-xl
Sub setRounded(s As String)
	sRounded = s
	CustProps.put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRounded(mElement, sRounded)
End Sub
'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadow(mElement, sShadow)
End Sub
'get Rounded
Sub getRounded As String
	Return sRounded
End Sub
'get Shadow
Sub getShadow As String
	Return sShadow
End Sub


'set Text Align
'options: left|right|center|justify|start|end|none
Sub setTextAlign(s As String)
	sTextAlign = s
	CustProps.put("TextAlign", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddStyle(mElement, "text-align", s)
End Sub
'get Text Align
Sub getTextAlign As String
	Return sTextAlign
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
		sb.Append($"<div id="${rowKey}" class="row ${BuildRowClass(xRow)}">"$)
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
				sbCol.Append($"class="col "$)
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

private Sub BuildSpans(col As GridColumn) As String
	Dim sb As StringBuilder
	sb.Initialize
	If col.gxs <> "" And col.gxs <> "0" Then sb.Append($"col-xs-${col.gxs} "$)
	If col.gsm <> "" And col.gsm <> "0" Then sb.Append($"col-sm-${col.gsm} "$)
	If col.gmd <> "" And col.gmd <> "0" Then sb.Append($"col-md-${col.gmd} "$)
	If col.glg <> "" And col.glg <> "0" Then sb.Append($"col-lg-${col.glg} "$)
	If col.gxl <> "" And col.gxl <> "0" Then sb.Append($"col-xl-${col.gxl} "$)
	Dim sout As String = sb.ToString
	sb.Initialize
	sout = sout.trim
	Return sout
End Sub

private Sub BuildOffsets(col As GridColumn) As String
	Dim sb As StringBuilder
	sb.Initialize
	If col.ofxs <> "" And col.gxs <> "0" Then sb.Append($"offset-xs-${col.ofxs} "$)
	If col.ofsm <> "" And col.gsm <> "0" Then sb.Append($"offset-sm-${col.ofsm} "$)
	If col.ofmd <> "" And col.gmd <> "0" Then sb.Append($"offset-md-${col.ofmd} "$)
	If col.oflg <> "" And col.glg <> "0" Then sb.Append($"offset-lg-${col.oflg} "$)
	If col.ofxl <> "" And col.gxl <> "0" Then sb.Append($"offset-xl-${col.ofxl} "$)
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
Sub Row(r As Int) As SDUI5Container
	Dim sid As String = $"${mName}r${r}"$
	Dim el As SDUI5Container
	el.Initialize(mCallBack, sid, sid)
	el.LinkExisting
	Return el
End Sub

Sub LinkExisting()
	mElement.Initialize($"#${mName}"$)
	mTarget = BANano.ToElement(mElement.GetField("parentNode"))
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
'get the row/column div
Sub Cell(r As Int, c As Int) As SDUI5Container
	Dim sid As String
	If c <> 0 Then
		sid = $"${mName}r${r}c${c}"$
	Else
		sid = $"${mName}r${r}"$
	End If
	'
	Dim el As SDUI5Container
	el.Initialize(mCallBack, sid, sid)
	el.LinkExisting 
	Return el
End Sub

'add 1 row
Sub AddRows1 As SDUI5Container
	AddRows(1)
	Return Me
End Sub
'add 2 rows
Sub AddRows2 As SDUI5Container
	AddRows(2)
	Return Me
End Sub
'add 3 rows
Sub AddRows3 As SDUI5Container
	AddRows(3)
	Return Me
End Sub
'add 4 rows
Sub AddRows4 As SDUI5Container
	AddRows(4)
	Return Me
End Sub
'add 5 rows
Sub AddRows5 As SDUI5Container
	AddRows(5)
	Return Me
End Sub
'add 6 rows
Sub AddRows6 As SDUI5Container
	AddRows(6)
	Return Me
End Sub
'add 7 rows
Sub AddRows7 As SDUI5Container
	AddRows(7)
	Return Me
End Sub
'add 8 rows
Sub AddRows8 As SDUI5Container
	AddRows(8)
	Return Me
End Sub
'add 9 rows
Sub AddRows9 As SDUI5Container
	AddRows(9)
	Return Me
End Sub
'add 10 rows
Sub AddRows10 As SDUI5Container
	AddRows(10)
	Return Me
End Sub
'add 11 rows
Sub AddRows11 As SDUI5Container
	AddRows(11)
	Return Me
End Sub
'add 12 rows
Sub AddRows12 As SDUI5Container
	AddRows(12)
	Return Me
End Sub
'add a number of rows
Sub AddRows(iRows As Int) As SDUI5Container
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
Sub AddColumns(iColumns As Int, gxs As Int, gsm As Int, gmd As Int, glg As Int, gxl As Int) As SDUI5Container
	AddColumnsOS(iColumns, 0, 0, 0, 0, 0, gxs, gsm, gmd, glg, gxl)
	Return Me
End Sub
'add columns - offsets and sizes
Sub AddColumnsOS(iColumns As Int, osxs As Int, osm As Int, omd As Int, olg As Int, oxl As Int, gxs As Int, gsm As Int, gmd As Int, glg As Int, gxl As Int) As SDUI5Container
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
    gma As Int, gmx As Int, gmy As Int, gmt As Int, gmb As Int, gml As Int, gmr As Int) As SDUI5Container
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
Sub AddColumns3x4 As SDUI5Container
	AddColumns(3,"12","12","4","4","4")
	Return Me
End Sub
'add 4 columns spanning 3 each
Sub AddColumns4x3 As SDUI5Container
	AddColumns(4,"12", "12","3","3","3")
	Return Me
End Sub
'add 2 columns spanning 6 each
Sub AddColumns2x6 As SDUI5Container
	AddColumns(2,"12","12","6","6","6")
	Return Me
End Sub
'add 6 columns spanning 2 each
Sub AddColumns6x2 As SDUI5Container
	AddColumns(6,"12", "12","2","2","2")
	Return Me
End Sub
'add 5 columns spanning 2 each
Sub AddColumns5x2 As SDUI5Container
	AddColumns(5,"12", "12","2","2","2")
	Return Me
End Sub
'add 3 colums spanning 2 each
Sub AddColumns3x2 As SDUI5Container
	AddColumns(3,"12", "12","2","2","2")
	Return Me
End Sub
'ad 11 columns spanning 1 each
Sub AddColumns11x1 As SDUI5Container
	AddColumns(11,"12", "12","1","1","1")
	Return Me
End Sub
'add 10 columns spanning 1 each
Sub AddColumns10x1 As SDUI5Container
	AddColumns(10,"12", "12","1","1","1")
	Return Me
End Sub
'add 9 columns spanning 1 each
Sub AddColumns9x1 As SDUI5Container
	AddColumns(9,"12", "12","1","1","1")
	Return Me
End Sub
'add 8 columns spanning 1 each
Sub AddColumns8x1 As SDUI5Container
	AddColumns(8,"12", "12","1","1","1")
	Return Me
End Sub
'add 7 columns spanning 1 each
Sub AddColumns7x1 As SDUI5Container
	AddColumns(7,"12", "12","1","1","1")
	Return Me
End Sub
'add 12 columns spanning 1 each
Sub AddColumns12x1 As SDUI5Container
	AddColumns(12,"12", "12","1","1","1")
	Return Me
End Sub
'add 2 columns, 8 + 4
Sub AddColumns8p4 As SDUI5Container
	AddColumns(1,"12", "12","8","8","8").AddColumns(1,"12", "12","4","4","4")
	Return Me
End Sub
'add 2 columns, 4 + 8
Sub AddColumns4p8 As SDUI5Container
	AddColumns(1,"12", "12","4","4","4").AddColumns(1,"12", "12","8","8","8")
	Return Me
End Sub
'add 2 columns, 1 + 11
Sub AddColumns1p11 As SDUI5Container
	AddColumns(1,"12", "12","1","1","1").AddColumns(1,"12", "12","11","11","11")
	Return Me
End Sub
'add 2 columns, 11 + 1
Sub AddColumns11p1 As SDUI5Container
	AddColumns(1,"12", "12","11","11","11").AddColumns(1,"12", "12","1","1","1")
	Return Me
End Sub
'add 2 columns, 2 + 10
Sub AddColumns2p10 As SDUI5Container
	AddColumns(1,"12", "12","2","2","2").AddColumns(1,"12", "12","10","10","10")
	Return Me
End Sub
'add 2 columns, 10 + 2
Sub AddColumns10p2 As SDUI5Container
	AddColumns(1,"12", "12","10","10","10").AddColumns(1,"12", "12","2","2","2")
	Return Me
End Sub
'add 2 columns, 3 + 9
Sub AddColumns3p9 As SDUI5Container
	AddColumns(1,"12", "12","3","3","3").AddColumns(1,"12", "12","9","9","9")
	Return Me
End Sub
'add 2 columns 9 + 3
Sub AddColumns9p3 As SDUI5Container
	AddColumns(1,"12", "12","9","9","9").AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub
'add 3 columns, 3 + 6 + 3
Sub AddColumns3p6p3 As SDUI5Container
	AddColumns(1,"12", "12","3","3","3").AddColumns(1,"12", "12","6","6","6").AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub
'add 3 columns, 6 + 3 + 3
Sub AddColumns6p3p3 As SDUI5Container
	AddColumns(1,"12", "12","6","6","6").AddColumns(1,"12", "12","3","3","3").AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub
'add 2 columns, 7 + 5
Sub AddColumns7p5 As SDUI5Container
	AddColumns(1,"12", "12","7","7","7").AddColumns(1,"12", "12","5","5","5")
	Return Me
End Sub
'add 2 columns, 5 + 7
Sub AddColumns5p7 As SDUI5Container
	AddColumns(1,"12", "12","5","5","5").AddColumns(1,"12", "12","7","7","7")
	Return Me
End Sub
'add 1 columns, spanning12
Sub AddColumns12 As SDUI5Container
	AddColumns(1,"12", "12","12","12","12")
	Return Me
End Sub
'add 1 column, spanning 6
Sub AddColumns6 As SDUI5Container
	AddColumns(1,"12", "12","6","6","6")
	Return Me
End Sub
'add 2 column, spanning 2
Sub AddColumns2 As SDUI5Container
	AddColumns(1,"12", "12","2","2","2")
	Return Me
End Sub
'add 1 column, spanning 1
Sub AddColumns1 As SDUI5Container
	AddColumns(1,"12", "12","1","1","1")
	Return Me
End Sub
'add 1 column, spannng 3
Sub AddColumns3 As SDUI5Container
	AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub
'add 1 column, spanning 4
Sub AddColumns4 As SDUI5Container
	AddColumns(1,"12", "12","4","4","4")
	Return Me
End Sub
'add 1 column, spanning 5
Sub AddColumns5 As SDUI5Container
	AddColumns(1,"12", "12","5","5","5")
	Return Me
End Sub
'add 1 column, spanning 7
Sub AddColumns7 As SDUI5Container
	AddColumns(1,"12", "12","7","7","7")
	Return Me
End Sub
'add 1 column, spanning 8
Sub AddColumns8 As SDUI5Container
	AddColumns(1,"12", "12","8","8","8")
	Return Me
End Sub
'add 1 column, spanning 9
Sub AddColumns9 As SDUI5Container
	AddColumns(1,"12", "12","9","9","9")
	Return Me
End Sub
'add 1 column, spanning 10
Sub AddColumns10 As SDUI5Container
	AddColumns(1,"12", "12","10","10","10")
	Return Me
End Sub
'add 1 column, spanning 11
Sub AddColumns11 As SDUI5Container
	AddColumns(1,"12", "12","11","11","11")
	Return Me
End Sub

'set Max Height
Sub setMaxHeight(s As String)
	sMaxHeight = s
	CustProps.put("MaxHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "max-h", s)
End Sub
'set Max Width
Sub setMaxWidth(s As String)
	sMaxWidth = s
	CustProps.put("MaxWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "max-w", s)
End Sub
'set Min Height
Sub setMinHeight(s As String)
	sMinHeight = s
	CustProps.put("MinHeight", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "min-h", s)
End Sub
'set Min Width
Sub setMinWidth(s As String)
	sMinWidth = s
	CustProps.put("MinWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetSize(mElement, "min-w", s)
End Sub
'get Max Height
Sub getMaxHeight As String
	Return sMaxHeight
End Sub
'get Max Width
Sub getMaxWidth As String
	Return sMaxWidth
End Sub
'get Min Height
Sub getMinHeight As String
	Return sMinHeight
End Sub
'get Min Width
Sub getMinWidth As String
	Return sMinWidth
End Sub

'set Container
Sub setContainer(b As Boolean)
	bContainer = b
	CustProps.put("Container", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClass(mElement, "container")
	Else
		UI.RemoveClass(mElement, "container")
	End If
End Sub

'get Container
Sub getContainer As Boolean
	Return bContainer
End Sub