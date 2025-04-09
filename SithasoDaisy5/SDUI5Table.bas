B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: AlphaClick (item As String)
#Event: RowClick (Row As Int, item As Map)
#Event: HeaderClick (HeaderName As String, Status As Boolean)
#Event: ExportToCsv (e As BANanoEvent)
#Event: ExportToPdf (e As BANanoEvent)
#Event: ExportToXls (e As BANanoEvent)
#Event: FileChange (e As BANanoEvent)
#Event: Download (e As BANanoEvent)
#Event: Custom_FileChange (e As BANanoEvent)
#Event: CustomColumn (item As Map)
#Event: CustomColumnRow (Row As Int, item As Map)
#Event: CustomButton (e As BANanoEvent)
#Event: SelectAll (Checked As Boolean)
#Event: EditRow (Row As Int, item As Map)
#Event: CloneRow (Row As Int, item As Map)
#Event: MenuRow (Row As Int, item As Map)
#Event: DownloadRow (Row As Int, item As Map)
#Event: UploadRow (Row As Int, item As Map)
#Event: DeleteRow (Row As Int, item As Map)
#Event: ChangeRow (Row As Int, Value As Object, Column As String, item As Map)
#Event: SelectRow (Status as boolean, Row As Int, item As Map)
#Event: MenuItemRow (Row As Int, Action As String, item As Map)
#Event: Add (e As BANanoEvent)
#Event: SaveSingle (e As BANanoEvent)
#Event: DeleteSingle (e As BANanoEvent)
#Event: Refresh (e As BANanoEvent)
#Event: Back (e As BANanoEvent)
#Event: DeleteAll (e As BANanoEvent)
#Event: PrevPage (e As BANanoEvent)
#Event: NextPage (e As BANanoEvent)
#Event: GridView (e As BANanoEvent)
#Event: Filter (e As BANanoEvent)
#Event: Custom_Prepend_Click (event As BANanoEvent)
#Event: Custom_Append_Click (event As BANanoEvent)
#Event: Custom_Toggle (b As Boolean)
#Event: PrependClick (Row As Int, Column As String, item As Map)
#Event: AppendClick (Row As Int, Column As String, item As Map)
#Event: Decrement (Row As Int, Column As String, item As Map)
#Event: Increment (Row As Int, Column As String, item As Map)
#Event: PasswordPrependClick (Row As Int, Column As String, item As Map)
#Event: PasswordAppendClick (Row As Int, Column As String, item As Map)
#Event: Select_Change (item As String)
#Event: Select_Prepend_Click (event As BANanoEvent)
#Event: Select_Append_Click (event As BANanoEvent)
#Event: DDown_Click (item As String)
#Event: SearchClick (e As BANanoEvent)
#Event: SearchKeyUp (e As BANanoEvent)
#Event: SearchClear (e As BANanoEvent)
'
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this div
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Table, Description: Title
#DesignerProperty: Key: TitleVisible, DisplayName: Title Visible, FieldType: Boolean, DefaultValue: True, Description: Title Visible
#DesignerProperty: Key: ExcelTitle, DisplayName: Export Title , FieldType: String, DefaultValue:  Table, Description: Title for Excel Reports
#DesignerProperty: Key: PageSize, DisplayName: PDF Page Size, FieldType: String, DefaultValue: a4, Description: Page Size for pdf printing, List: a0|a1|a10|a10|a2|a3|a4|a5|a6|a7|a8|a9|b0|b1|b10|b10|b2|b3|b4|b5|b6|b7|b8|b9|c0|c1|c10|c10|c2|c3|c4|c5|c6|c7|c8|c9|credit-card|dl|government-letter|junior-legal|ledger|legal|letter|tabloid
#DesignerProperty: Key: FontSize, DisplayName: PDF Font Size, FieldType: String, DefaultValue: 11, Description: Font Size for pdf printing
#DesignerProperty: Key: Unit, DisplayName: PDF Unit, FieldType: String, DefaultValue: pt, Description: Unit for pdf reporting, List: cm|in|m|mm|pt|px
#DesignerProperty: Key: Orientation, DisplayName: PDF Orientation, FieldType: String, DefaultValue: landscape, Description: Orientation for pdf reporting, List: landscape|potrait
#DesignerProperty: Key: PageBreakRepeat, DisplayName: PDF PageBreakRepeat, FieldType: String, DefaultValue: , Description: Field For Page Break Repeat
#DesignerProperty: Key: PdfTheme, DisplayName: PDF Theme, FieldType: String, DefaultValue: striped, Description: Pdf theme, List: css|grid|none|plain|striped
#DesignerProperty: Key: ItemsPerPage, DisplayName: Items Per Page, FieldType: String, DefaultValue: 5, Description: Items Per Page
#DesignerProperty: Key: HasFilter, DisplayName: Has Filter, FieldType: Boolean, DefaultValue: False, Description: Has Filter
#DesignerProperty: Key: IsCompact, DisplayName: Is Compact, FieldType: Boolean, DefaultValue: False, Description: Is Compact
#DesignerProperty: Key: NormalCase, DisplayName: Normal Case Titles, FieldType: Boolean, DefaultValue: False, Description: Columns Titles Is Normal Case
#DesignerProperty: Key: WrapHeadings, DisplayName: Wrap Headings, FieldType: Boolean, DefaultValue: False, Description: Wrap Headings
#DesignerProperty: Key: LowerCase, DisplayName: Lower Case Keys, FieldType: Boolean, DefaultValue: False, Description: Lower Case Keys
#DesignerProperty: Key: IsNormal, DisplayName: Is Normal, FieldType: Boolean, DefaultValue: False, Description: Is Normal
#DesignerProperty: Key: IsZebra, DisplayName: Is Zebra, FieldType: Boolean, DefaultValue: False, Description: Is Zebra
#DesignerProperty: Key: Pagination, DisplayName: Pagination, FieldType: Boolean, DefaultValue: True, Description: Pagination
#DesignerProperty: Key: BadgesOutlined, DisplayName: Badges Outlined, FieldType: Boolean, DefaultValue: False, Description: Badges Outlined
#DesignerProperty: Key: BadgesSize, DisplayName: Badges Size, FieldType: String, DefaultValue: md, Description: Badges Size, List: lg|md|sm|xs|none
#DesignerProperty: Key: ButtonSize, DisplayName: Button Size, FieldType: String, DefaultValue: md, Description: Button Size, List: lg|md|sm|xs|none
#DesignerProperty: Key: ComponentSize, DisplayName: Component Size, FieldType: String, DefaultValue: sm, Description: Button Size, List: lg|md|sm|xs|none
#DesignerProperty: Key: ButtonsOutlined, DisplayName: Buttons Outlined, FieldType: Boolean, DefaultValue: False, Description: Buttons Outlined
#DesignerProperty: Key: TooltipColor, DisplayName: Tooltip Color, FieldType: String, DefaultValue: primary, Description: Tooltip Color
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: False, Description: Hover
#DesignerProperty: Key: SelectAll, DisplayName: Select All, FieldType: Boolean, DefaultValue: False, Description: Select All
#DesignerProperty: Key: HasSearch, DisplayName: Has Search, FieldType: Boolean, DefaultValue: False, Description: Has Search
#DesignerProperty: Key: SearchSize, DisplayName: Search Size, FieldType: String, DefaultValue: md, Description: Search Size, List: lg|md|sm|xs|none
#DesignerProperty: Key: SearchWidth, DisplayName: Search Width, FieldType: String, DefaultValue: 300px, Description: Search Width
#DesignerProperty: Key: HasAddnew, DisplayName: Has AddNew, FieldType: Boolean, DefaultValue: True, Description: Has Addnew
#DesignerProperty: Key: AddNewTooltip, DisplayName: AddNew Tooltip, FieldType: String, DefaultValue: , Description: Add New Tooltip
#DesignerProperty: Key: HasSaveSingle, DisplayName: Has Save Single, FieldType: Boolean, DefaultValue: False, Description: Has Save on ToolBar
#DesignerProperty: Key: SaveSingleTooltip, DisplayName: Save Single Tooltip, FieldType: String, DefaultValue: , Description: Save Single Tooltip
#DesignerProperty: Key: HasDeleteSingle, DisplayName: Has Delete Single, FieldType: Boolean, DefaultValue: False, Description: Has Delete on ToolBar
#DesignerProperty: Key: DeleteSingleTooltip, DisplayName: Delete Single Tooltip, FieldType: String, DefaultValue: , Description: Delete Single Tooltip
#DesignerProperty: Key: HasRefresh, DisplayName: Has Refresh, FieldType: Boolean, DefaultValue: True, Description: Has Refresh
#DesignerProperty: Key: RefreshTooltip, DisplayName: Refresh Tooltip, FieldType: String, DefaultValue: , Description: Refresh Tooltip
#DesignerProperty: Key: HasDeleteAll, DisplayName: Has Delete All, FieldType: Boolean, DefaultValue: False, Description: Has Delete All
#DesignerProperty: Key: DeleteAllTooltip, DisplayName: Delete All Tooltip, FieldType: String, DefaultValue: , Description: Delete All Tooltip
#DesignerProperty: Key: HasToolbarUpload, DisplayName: Has Toolbar Upload, FieldType: Boolean, DefaultValue: False, Description: Has Toolbar Upload
#DesignerProperty: Key: UploadToolbarTooltip, DisplayName: Upload Toolbar Tooltip, FieldType: String, DefaultValue: , Description: Upload Toolbar Tooltip
#DesignerProperty: Key: HasToolbarDownload, DisplayName: Has Toolbar Download, FieldType: Boolean, DefaultValue: False, Description: Has Toolbar Download
#DesignerProperty: Key: DownloadToolbarTooltip, DisplayName: Download Toolbar Tooltip, FieldType: String, DefaultValue: , Description: Download Toolbar Tooltip
#DesignerProperty: Key: MultipleFiles, DisplayName: Allow Multiple Files, FieldType: Boolean, DefaultValue: False, Description: Allow Multiple Files to be Uploaded
#DesignerProperty: Key: HasExportMenu, DisplayName: Has Export Menu, FieldType: Boolean, DefaultValue: False, Description: Has Export Menu
#DesignerProperty: Key: ExportToCsv, DisplayName: Export To Csv, FieldType: Boolean, DefaultValue: False, Description: Has Export To Csv
#DesignerProperty: Key: ExportToCsvTooltip, DisplayName: Export To Csv Tooltip, FieldType: String, DefaultValue: , Description: Export To Csv Tooltip
#DesignerProperty: Key: ExportToPdf, DisplayName: Export To Pdf, FieldType: Boolean, DefaultValue: False, Description: Has Export To Pdf
#DesignerProperty: Key: ExportToPdfTooltip, DisplayName: Export To Pdf Tooltip, FieldType: String, DefaultValue: , Description: Export To Pdf Tooltip
#DesignerProperty: Key: ExportToXls, DisplayName: Export To Xls, FieldType: Boolean, DefaultValue: False, Description: Has Export To Xls
#DesignerProperty: Key: ExportToXlsTooltip, DisplayName: Export To Xls Tooltip, FieldType: String, DefaultValue: , Description: Export To Xls Tooltip
#DesignerProperty: Key: HasBack, DisplayName: Has Back, FieldType: Boolean, DefaultValue: True, Description: Has Back
#DesignerProperty: Key: BackTooltip, DisplayName: Back Tooltip, FieldType: String, DefaultValue: , Description: Back Tooltip
#DesignerProperty: Key: HasGrid, DisplayName: Has Grid, FieldType: Boolean, DefaultValue: False, Description: Has Grid
#DesignerProperty: Key: GridTooltip, DisplayName: Grid Tooltip, FieldType: String, DefaultValue: , Description: Grid Tooltip
#DesignerProperty: Key: HasAlphaChooser, DisplayName: Has Alpha Chooser, FieldType: Boolean, DefaultValue: True, Description: Has Alpha Chooser
#DesignerProperty: Key: AlphaChooserTextColor, DisplayName: Alpha Chooser Text Color, FieldType: String, DefaultValue: #ffffff, Description: Alpha Chooser Text Color
#DesignerProperty: Key: AlphaChooserColumn, DisplayName: Alpha Chooser Column, FieldType: String, DefaultValue: name, Description: Alpha Chooser Column
#DesignerProperty: Key: AlphaChooserHeight, DisplayName: Alpha Chooser Height, FieldType: String, DefaultValue: 8, Description: Alpha Chooser Height
#DesignerProperty: Key: HasColumnChooser, DisplayName: Has Column Chooser, FieldType: Boolean, DefaultValue: True, Description: Has Column Chooser
#DesignerProperty: Key: ColumnChooserTextColor, DisplayName: Column Chooser Text Color, FieldType: String, DefaultValue: #ffffff, Description: Column Chooser Text Color
#DesignerProperty: Key: ColumnChooserHeight, DisplayName: Column Chooser Height, FieldType: String, DefaultValue: 8, Description: Column Chooser Height
#DesignerProperty: Key: ColumnChooserColor, DisplayName: Column Chooser Color, FieldType: String, DefaultValue: primary, Description: Column Chooser Color
#DesignerProperty: Key: ShowTotalRecords, DisplayName: Show Total Records, FieldType: Boolean, DefaultValue: True, Description: Show Total Records
#DesignerProperty: Key: HasEdit, DisplayName: Has Edit, FieldType: Boolean, DefaultValue: False, Description: Has Edit
#DesignerProperty: Key: EditTooltip, DisplayName: Edit Tooltip, FieldType: String, DefaultValue: , Description: Edit Tooltip
#DesignerProperty: Key: HasClone, DisplayName: Has Clone, FieldType: Boolean, DefaultValue: False, Description: Has Clone
#DesignerProperty: Key: CloneTooltip, DisplayName: Clone Tooltip, FieldType: String, DefaultValue: , Description: Clone Tooltip
#DesignerProperty: Key: HasDelete, DisplayName: Has Delete, FieldType: Boolean, DefaultValue: False, Description: Has Delete
#DesignerProperty: Key: DeleteTooltip, DisplayName: Delete Tooltip, FieldType: String, DefaultValue: , Description: Delete Tooltip
#DesignerProperty: Key: HasUpload, DisplayName: Has Upload, FieldType: Boolean, DefaultValue: False, Description: Has Upload
#DesignerProperty: Key: UploadTooltip, DisplayName: Upload Tooltip, FieldType: String, DefaultValue: , Description: Upload Tooltip
#DesignerProperty: Key: HasDownload, DisplayName: Has Download, FieldType: Boolean, DefaultValue: False, Description: Has Download
#DesignerProperty: Key: DownloadTooltip, DisplayName: Download Tooltip, FieldType: String, DefaultValue: , Description: Download Tooltip
#DesignerProperty: Key: HasMenu, DisplayName: Has Menu, FieldType: Boolean, DefaultValue: False, Description: Has Menu
#DesignerProperty: Key: MenuTooltip, DisplayName: Menu Tooltip, FieldType: String, DefaultValue: , Description: Menu Tooltip
#DesignerProperty: Key: FlexWrapActions, DisplayName: Wrap Actions, FieldType: Boolean, DefaultValue: False, Description: Wrap Actions
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: none, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A-X-Y-T-B-L-R
#DesignerProperty: Key: RawClasses, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: RawStyles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String- use =
#DesignerProperty: Key: RawAttributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String- use =

Private Sub Class_Globals
	Public UI As UIShared 'ignore
	Public CONST BUTTON_EXPORTTOCSV As String = "exporttocsv"
	Public CONST BUTTON_EXPORTTOPDF As String = "exporttopdf"
	Public CONST BUTTON_EXPORTTOXLS As String = "exporttoxls"
	Public CONST BUTTON_ADD As String = "add"
	Public CONST BUTTON_SAVESINGLE As String = "savesingle"
	Public CONST BUTTON_DELETESINGLE As String = "deletesingle"
	Public CONST BUTTON_DELETEALL As String = "deleteall"
	Public CONST BUTTON_UPLOADTOOLBAR As String = "uploadtoolbar"
	Public CONST BUTTON_BACK As String = "back"
	Public CONST BUTTON_REFRESH As String = "refresh"
	Public CONST BUTTON_SEARCH As String = "search"
	'
	Private bNormalCase As Boolean
	Public CustProps As Map
	Private mCallBack As Object
	Public mElement As BANanoElement
	Private mName As String
	Private mTarget As BANanoElement
	Private BANano As BANano			'ignore
	Private bHasSaveSingle As Boolean
	Private bHasDeleteSingle As Boolean
	Public Rows As List
	Public Columns As Map
	Type TableColumn(name As String, title As String,typeof As String,Size As String, subtitle As String, subtitle1 As String, icon As String, color As String, width As String, readonly As Boolean, maxvalue As Int, height As String, mask As String, suffix As String, alignment As String, minwidth As String, maxwidth As String, Classes As List, options As Map, NothingSelected As Boolean, Rows As Int, dateFormat As String, altFormat As String, range As Boolean, multiple As Boolean, noCalendar As Boolean, ComputeValue As String, ComputeColor As String, Locale As String, ComputeClass As String, Prefix As String, PrependIcon As String, AppendIcon As String, MinValue As Int, StepValue As Int, HasRing As Boolean, RingColor As String, OnlineField As String, visible As Boolean, accept As String, capture As String, TextColor As String, colWidth As String, colHeight As String, MaxLength As String, ComputeBackgroundColor As String, OptionIcons As Map, ComputeRing As String, ComputeTextColor As String, BGColor As String,Delimiter As String, SumValues As Boolean)
	Private bHover As Boolean
	Private bSelectAll As Boolean
	Private sSearchSize As String = "md"
	Public Tag As Object
	Private iItemsPerPage As Int = 5
	Private bHasDeleteAll As Boolean
	Private bHasToolbarUpload As Boolean
	Private sRawClasses As String
	Private sRawStyles As String
	Private sRawAttributes As String
	Private sMarginAXYTBLR As String
	Private sPaddingAXYTBLR As String
	Private sParentID As String
	Private bVisible As Boolean
	Private bHasAddnew As Boolean
	Private bHasBack As Boolean
	Private bHasClone As Boolean
	Private bHasDelete As Boolean
	Private bHasDownload As Boolean
	Private bHasUpload As Boolean
	Private bHasEdit As Boolean
	Private bHasMenu As Boolean
	Private bHasRefresh As Boolean
	Private bHasSearch As Boolean
	Private bIsCompact As Boolean
	Private bIsNormal As Boolean
	Private bIsZebra As Boolean
	Private sTitle As String
	Private bBadgesOutlined As Boolean
	Private sBadgesSize As String = "md"
	Private sButtonSize As String = "md"
	Private bButtonsOutlined As Boolean
	Public Originals As List
	Private iCurrentPage As Int
	Private iTotalPages As Int
	Private sItemsPerPage As String = "5"
	Private lastPage As Int
	Private sComponentSize As String = "md"
	Private rowclick As Map
	Private bFlexWrapActions As Boolean = False
	Private bHasFilter As Boolean = False
	Private bWrapHeadings As Boolean = False
	Private bLowerCase As Boolean
	Private bTitleVisible As Boolean
	Private itemColor1 As String
	Private itemColor2 As String
	Private itemColor3 As String = "active:text-current"
	Private itemColor4 As String = ""
	Private sExcelTitle As String
	Private sFontSize As String
	Private sPageSize As String
	Private sUnit As String
	Private sOrientation As String
	Private sPageBreakRepeat As String
	Private sPdfTheme As String
	Private bExportToCsv As Boolean
	Private bExportToPdf As Boolean
	Private bExportToXls As Boolean
	Public Alphas As Map
	Private bHasExportMenu As Boolean = False
	Private bMultipleFiles As Boolean = False
	Private sAddNewTooltip As String = ""
	Private sBackTooltip As String = ""
	Private sCloneTooltip As String = ""
	Private sDeleteAllTooltip As String = ""
	Private sDeleteSingleTooltip As String = ""
	Private sDeleteTooltip As String = ""
	Private sDownloadTooltip As String = ""
	Private sEditTooltip As String = ""
	Private sExportToCsvTooltip As String = ""
	Private sExportToPdfTooltip As String = ""
	Private sExportToXlsTooltip As String = ""
	Private sMenuTooltip As String = ""
	Private sRefreshTooltip As String = ""
	Private sSaveSingleTooltip As String = ""
	Private sTooltipColor As String = "primary"
	Private sUploadToolbarTooltip As String = ""
	Private sUploadTooltip As String = ""
	Private DPValue As Map
	Private tblComputeRowColor As String = ""
	Private tblComputeBackgroundColor As String = ""
	Private sGridTooltip As String = ""
	Private bHasGrid As Boolean = False
	Private filterNames As Map
	Private datepickers As Map
	Private sSearchWidth As String = "300px"
	Private bPagination As Boolean = True
	Private mEventName As String = ""
	Private sShadow As String = "none"
	Private sAlphaChooserColumn As String = "name"
	Private sAlphaChooserHeight As String = "8"
	Private bHasAlphaChooser As Boolean = True
	Private sColumnChooserColor As String = "primary"
	Private sColumnChooserHeight As String = "8"
	Private bHasColumnChooser As Boolean = True
	Private bShowTotalRecords As Boolean = True
	Private sRowCount As String
	Private sAlphaChooserTextColor As String = "#ffffff"
	Private sColumnChooserTextColor As String = "#ffffff"
	Private bHasToolbarDownload As Boolean = False
	Private sDownloadToolbarTooltip As String = ""
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

Sub Initialize (CallBack As Object, Name As String, EventName As String)
	BANano.DependsOnAsset("math.min.js")
	UI.Initialize(Me)
	mName = UI.CleanID(Name)
	mEventName = UI.CleanID(EventName)
	mCallBack = CallBack
	CustProps.Initialize
	filterNames.Initialize
	Columns.Initialize
	Rows.Initialize 
	DPValue.Initialize 
	Originals.Initialize 
	
	BANano.DependsOnAsset("flatpickr.min.css")
	BANano.DependsOnAsset("material_blue.css")
	BANano.DependsOnAsset("flatpickr.min.js")
	BANano.DependsOnAsset("fplocale.min.js")
	BANano.DependsOnAsset("numeral.min.js")
	BANano.DependsOnAsset("dayjs.min.js")
	BANano.DependsOnAsset("relativeTime.min.js")
	BANano.DependsOnAsset("svg-loader.min.js")
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	CustProps = Props
	mTarget = Target
	If Props <> Null Then
		UI.SetProps(Props)
		'UI.ExcludeBackgroundColor = True
		'UI.ExcludeTextColor = True
		'UI.ExcludeVisible = True
		'UI.ExcludeEnabled = True
		sItemsPerPage = Props.GetDefault("ItemsPerPage", "5")
		sItemsPerPage = UI.CStr(sItemsPerPage)
		iItemsPerPage = UI.CInt(sItemsPerPage)
		bVisible = Props.GetDefault("Visible", True)
		bVisible = UI.CBool(bVisible)
		bHasAddnew = Props.GetDefault("HasAddnew", True)
		bHasAddnew = UI.CBool(bHasAddnew)
		bHasBack = Props.GetDefault("HasBack", True)
		bHasBack = UI.CBool(bHasBack)
		bHasClone = Props.GetDefault("HasClone", False)
		bHasClone = UI.CBool(bHasClone)
		bHasDelete = Props.GetDefault("HasDelete", False)
		bHasDelete = UI.CBool(bHasDelete)
		bHasDownload = Props.GetDefault("HasDownload", False)
		bHasDownload = UI.CBool(bHasDownload)
		bHasUpload = Props.GetDefault("HasUpload", False)
		bHasUpload = UI.CBool(bHasUpload)
		bHasEdit = Props.GetDefault("HasEdit", False)
		bHasEdit = UI.CBool(bHasEdit)
		bHasMenu = Props.GetDefault("HasMenu", False)
		bHasMenu = UI.CBool(bHasMenu)
		bHasRefresh = Props.GetDefault("HasRefresh", True)
		bHasRefresh = UI.CBool(bHasRefresh)
		bHasSearch = Props.GetDefault("HasSearch", False)
		bHasSearch = UI.CBool(bHasSearch)
		bIsCompact = Props.GetDefault("IsCompact", False)
		bIsCompact = UI.CBool(bIsCompact)
		bIsNormal = Props.GetDefault("IsNormal", False)
		bIsNormal = UI.CBool(bIsNormal)
		bIsZebra = Props.GetDefault("IsZebra", False)
		bIsZebra = UI.CBool(bIsZebra)
		sTitle = Props.GetDefault("Title", "")
		sTitle = UI.CStr(sTitle)
		bBadgesOutlined = Props.GetDefault("BadgesOutlined", False)
		bBadgesOutlined = UI.CBool(bBadgesOutlined)
		sBadgesSize = Props.GetDefault("BadgesSize", "md")
		sBadgesSize = UI.CStr(sBadgesSize)
		sButtonSize = Props.GetDefault("ButtonSize", "md")
		sButtonSize = UI.CStr(sButtonSize)
		bButtonsOutlined = Props.GetDefault("ButtonsOutlined", False)
		bButtonsOutlined = UI.CBool(bButtonsOutlined)
		bHover = Props.GetDefault("Hover", False)
		bHover = UI.CBool(bHover)
		bSelectAll = Props.GetDefault("SelectAll", False)
		bSelectAll = UI.CBool(bSelectAll)
		bHasDeleteAll = Props.GetDefault("HasDeleteAll", False)
		bHasDeleteAll = UI.CBool(bHasDeleteAll)
		bHasToolbarUpload = Props.GetDefault("HasToolbarUpload", False)
		bHasToolbarUpload = UI.CBool(bHasToolbarUpload)
		sComponentSize = Props.GetDefault("ComponentSize", "md")
		sComponentSize = UI.CStr(sComponentSize)
		sComponentSize = sComponentSize.Replace("none", "")
		sSearchSize = Props.GetDefault("SearchSize", "md")
		sSearchSize = UI.CStr(sSearchSize)
		If sSearchSize = "none" Then sSearchSize = "md"
		bNormalCase = Props.GetDefault("NormalCase", False)
		bNormalCase = UI.CBool(bNormalCase)
		bHasSaveSingle = Props.GetDefault("HasSaveSingle", False)
		bHasSaveSingle = UI.CBool(bHasSaveSingle)
		bHasDeleteSingle = Props.GetDefault("HasDeleteSingle", False)
		bHasDeleteSingle = UI.CBool(bHasDeleteSingle)
		bLowerCase = Props.GetDefault("LowerCase", False)
		bLowerCase = UI.CBool(bLowerCase)
		bTitleVisible = Props.GetDefault("TitleVisible", True)
		bTitleVisible = UI.CBool(bTitleVisible)
		sExcelTitle = Props.GetDefault("ExcelTitle", "Table")
		sExcelTitle = UI.cstr(sExcelTitle)
		sFontSize = Props.GetDefault("FontSize", "11")
		sFontSize = UI.CStr(sFontSize)
		sPageSize = Props.GetDefault("PageSize", "a4")
		sPageSize = UI.CStr(sPageSize)
		sUnit = Props.GetDefault("Unit", "pt")
		sUnit = UI.CStr(sUnit)
		sOrientation = Props.GetDefault("Orientation", "landscape")
		sOrientation = UI.CStr(sOrientation)
		sPageBreakRepeat = Props.GetDefault("PageBreakRepeat", "")
		sPageBreakRepeat = UI.CStr(sPageBreakRepeat)
		sPdfTheme = Props.GetDefault("PdfTheme", "striped")
		sPdfTheme = UI.CStr(sPdfTheme)
		bExportToCsv = Props.GetDefault("ExportToCsv", False)
		bExportToCsv = UI.CBool(bExportToCsv)
		bExportToPdf = Props.GetDefault("ExportToPdf", False)
		bExportToPdf = UI.CBool(bExportToPdf)
		bExportToXls = Props.GetDefault("ExportToXls", False)
		bExportToXls = UI.CBool(bExportToXls)
		bHasExportMenu = Props.getdefault("HasExportMenu", False)
		bHasExportMenu = UI.cbool(bHasExportMenu)
		bMultipleFiles = Props.GetDefault("MultipleFiles", False)
		bMultipleFiles = UI.CBool(bMultipleFiles)
		sAddNewTooltip = Props.GetDefault("AddNewTooltip", "")
		sAddNewTooltip = UI.CStr(sAddNewTooltip)
		sBackTooltip = Props.GetDefault("BackTooltip", "")
		sBackTooltip = UI.CStr(sBackTooltip)
		sCloneTooltip = Props.GetDefault("CloneTooltip", "")
		sCloneTooltip = UI.CStr(sCloneTooltip)
		sDeleteAllTooltip = Props.GetDefault("DeleteAllTooltip", "")
		sDeleteAllTooltip = UI.CStr(sDeleteAllTooltip)
		sDeleteSingleTooltip = Props.GetDefault("DeleteSingleTooltip", "")
		sDeleteSingleTooltip = UI.CStr(sDeleteSingleTooltip)
		sDeleteTooltip = Props.GetDefault("DeleteTooltip", "")
		sDeleteTooltip = UI.CStr(sDeleteTooltip)
		sDownloadTooltip = Props.GetDefault("DownloadTooltip", "")
		sDownloadTooltip = UI.CStr(sDownloadTooltip)
		sEditTooltip = Props.GetDefault("EditTooltip", "")
		sEditTooltip = UI.CStr(sEditTooltip)
		sExportToCsvTooltip = Props.GetDefault("ExportToCsvTooltip", "")
		sExportToCsvTooltip = UI.CStr(sExportToCsvTooltip)
		sExportToPdfTooltip = Props.GetDefault("ExportToPdfTooltip", "")
		sExportToPdfTooltip = UI.CStr(sExportToPdfTooltip)
		sExportToXlsTooltip = Props.GetDefault("ExportToXlsTooltip", "")
		sExportToXlsTooltip = UI.CStr(sExportToXlsTooltip)
		sMenuTooltip = Props.GetDefault("MenuTooltip", "")
		sMenuTooltip = UI.CStr(sMenuTooltip)
		sRefreshTooltip = Props.GetDefault("RefreshTooltip", "")
		sRefreshTooltip = UI.CStr(sRefreshTooltip)
		sSaveSingleTooltip = Props.GetDefault("SaveSingleTooltip", "")
		sSaveSingleTooltip = UI.CStr(sSaveSingleTooltip)
		sTooltipColor = Props.GetDefault("TooltipColor", "primary")
		sTooltipColor = UI.CStr(sTooltipColor)
		sUploadToolbarTooltip = Props.GetDefault("UploadToolbarTooltip", "")
		sUploadToolbarTooltip = UI.CStr(sUploadToolbarTooltip)
		sUploadTooltip = Props.GetDefault("UploadTooltip", "")
		sUploadTooltip = UI.CStr(sUploadTooltip)
		sGridTooltip = Props.GetDefault("GridTooltip", "")
		sGridTooltip = UI.CStr(sGridTooltip)
		bHasGrid = Props.GetDefault("HasGrid", False)
		bHasGrid = UI.CBool(bHasGrid)
		bHasFilter = Props.GetDefault("HasFilter", False)
		bHasFilter = UI.CBool(bHasFilter)
		bFlexWrapActions = Props.GetDefault("FlexWrapActions", False)
		bFlexWrapActions = UI.CBool(bFlexWrapActions)
		sSearchWidth = Props.GetDefault("SearchWidth", "300px")
		sSearchWidth= UI.CStr(sSearchWidth)
		bWrapHeadings = Props.GetDefault("WrapHeadings", False)
		bWrapHeadings = UI.CBool(bWrapHeadings)
		bPagination = Props.GetDefault("Pagination", True)
		bPagination = UI.CBool(bPagination)
		sShadow = Props.GetDefault("Shadow", "none")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		sAlphaChooserColumn = Props.GetDefault("AlphaChooserColumn", "name")
		sAlphaChooserColumn = UI.CStr(sAlphaChooserColumn)
		sAlphaChooserHeight = Props.GetDefault("AlphaChooserHeight", "8")
		sAlphaChooserHeight = UI.CStr(sAlphaChooserHeight)
		bHasAlphaChooser = Props.GetDefault("HasAlphaChooser", True)
		bHasAlphaChooser = UI.CBool(bHasAlphaChooser)
		sColumnChooserColor = Props.GetDefault("ColumnChooserColor", "primary")
		sColumnChooserColor = UI.CStr(sColumnChooserColor)
		sColumnChooserHeight = Props.GetDefault("ColumnChooserHeight", "8")
		sColumnChooserHeight = UI.CStr(sColumnChooserHeight)
		bHasColumnChooser = Props.GetDefault("HasColumnChooser", True)
		bHasColumnChooser = UI.CBool(bHasColumnChooser)
		bShowTotalRecords = Props.GetDefault("ShowTotalRecords", True)
		bShowTotalRecords = UI.CBool(bShowTotalRecords)
		sAlphaChooserTextColor = Props.GetDefault("AlphaChooserTextColor", "#ffffff")
		sAlphaChooserTextColor = UI.CStr(sAlphaChooserTextColor)
		sColumnChooserTextColor = Props.GetDefault("ColumnChooserTextColor", "#ffffff")
		sColumnChooserTextColor = UI.CStr(sColumnChooserTextColor)
		bHasToolbarDownload = Props.GetDefault("HasToolbarDownload", False)
		bHasToolbarDownload = UI.CBool(bHasToolbarDownload)
		sDownloadToolbarTooltip = Props.GetDefault("DownloadToolbarTooltip", "")
		sDownloadToolbarTooltip = UI.CStr(sDownloadToolbarTooltip)
	End If
	'
	UI.AddClassDT("card card-border w-full bg-base-100")
	If sShadow <> "" Then UI.AddClassDT("shadow-" & sShadow)
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
    <div id="${mName}" class="${xclasses}" ${xattrs} style="${xstyles}">
        <div id="${mName}_toolbar" class="m-3 -mb-3 flex">
        	<h2 id="${mName}_title" class="ml-3 card-title w-full">${sTitle}</h2>
        	<div id="${mName}_searchbox" class="join hidden justify-end py-4 mx-2">
	          	<input id="${mName}_search" autocomplete="off" type="search" placeholder="Search…" class="input join-item tlradius blradius"/>
	          	<button id="${mName}_searchbtn" class="btn join-item hidden ">
					<svg id="${mName}_searchbtnicon" style="pointer-events:none;" data-unique-ids="disabled" fill="currentColor" data-js="enabled" data-src="./assets/magnifying-glass-solid.svg" class="hidden"></svg>
				</button>
			</div>
			<div id="${mName}_actions" class="hidden flex flex-1 m-4 mr-0 justify-end gap-1"></div>
        </div>
		<div id="${mName}_divider1" class="m-0 divider"></div>
        <div id="${mName}_aphabets" class="mt-4 mx-4 card bg-base-100 hidden">
        	<div id="${mName}_alphanumeric" class="flex flex-wrap break-words relative"></div>
        </div>
		<div id="${mName}_columnchooser" class="mt-4 mx-4 card bg-base-100 hidden">
        	<div id="${mName}_columnnames" class="flex flex-wrap break-words relative"></div>
        </div>
		<div id="${mName}_divider2" class="m-0 divider"></div>
        <div id="${mName}_tablebox" class="m-1 overflow-x-auto">
        	<table id="${mName}_table" class="table w-full ${mName}table">
        		<thead id="${mName}_thead">
        			<tr id="${mName}_theadtr" class="tblheading"></tr>
        		</thead>
        		<tbody id="${mName}_body"></tbody>
        		<tfoot id="${mName}_foot" class="hidden">
        			<tr id="${mName}_footr" class="tblfoot"></tr>
        		</tfoot>
        	</table>
        	<input id="${mName}_file" type="file" class="hidden"></input>
        </div>
    </div>"$).Get($"#${mName}"$)
	
	'add a file to import files
	BANano.GetElement($"#${mName}_file"$).On("change", mCallBack, $"${mName}_filechange"$)
	If bHasSearch Then
		setHasSearch(bHasSearch)
		setSearchWidth(sSearchWidth)
		Dim txtsearch As BANanoElement = BANano.GetElement($"#${mName}_search"$)
		txtsearch.On("keyup", Me, "SearchInternal")
		txtsearch.On("search", Me, "SearchClear")
		setSearchSize(sSearchSize)
		BANano.GetElement($"#${mName}_searchbtn"$).On("click", Me, "SearchClick")
	End If
	setFlexWrapActions(bFlexWrapActions)
	'
	If bHasFilter Then AddHeaderRow("filters")
	setPagination(bPagination)
	setHasAddNew(bHasAddnew)
	setHasSaveSingle(bHasSaveSingle)
	setHasDeleteSingle(bHasDeleteSingle)
	setHasToolbarUpload(bHasToolbarUpload)
	setHasToolbarDownload(bHasToolbarDownload)
	setHasDeleteAll(bHasDeleteAll)
	setHasExportToCsv(bExportToCsv)
	setHasExportToPdf(bExportToPdf)
	setHasExportToXls(bExportToXls)
	setHasGrid(bHasGrid)
	setHasFilter(bHasFilter)
	setHasRefresh(bHasRefresh)
	setHasBack(bHasBack)
	setTitleVisible(bTitleVisible)
	If bSelectAll Then AddColumnSelectAll
	setIsNormal(bIsNormal)
	setIsCompact(bIsCompact)
	setIsZebra(bIsZebra)
	If bHasExportMenu Then
'		'***Add code to export to pdf, xls, csv
'		Dim ddown As SDUIDropDown = AddToolbarDropDownIcon("ddown", "fa-solid fa-bars", "orange")
'		ddown.AtEnd
'		ddown.RoundedBox
'		ddown.shadow("")
'		'set the colors of the menu
'		ddown.ItemHoverColorIntensity("blue", "100")
'		ddown.ItemFocusColorIntensity("blue", "100")
'		ddown.ItemActiveColorIntensity("blue", "100")
'		'add the menu items
'		ddown.AddItemIcon("export2pdf", "fa-regular fa-file-pdf", "Export to PDF")
'		ddown.AddItemIcon("export2xls", "fa-regular fa-file-excel", "Export to XLS")
'		ddown.AddItemIcon("export2csv", "fa-solid fa-file-csv", "Export to CSV")
		'***End code to export to pdf, xls, csv
	End If
	'
	If sAddNewTooltip <> "" Then SetToolbarButtonToolTip("add", sAddNewTooltip, sTooltipColor, "left")
	If sSaveSingleTooltip <> "" Then SetToolbarButtonToolTip("savesingle", sSaveSingleTooltip, sTooltipColor, "left")
	If sDeleteSingleTooltip <> "" Then SetToolbarButtonToolTip("deletesingle", sDeleteSingleTooltip, sTooltipColor, "left")
	If sUploadToolbarTooltip <> "" Then SetToolbarButtonToolTip("uploadtoolbar", sUploadToolbarTooltip, sTooltipColor, "left")
	If sDeleteAllTooltip <> "" Then SetToolbarButtonToolTip("deleteall", sDeleteAllTooltip, sTooltipColor, "left")
	If sExportToCsvTooltip <> "" Then SetToolbarButtonToolTip("exporttocsv", sExportToCsvTooltip, sTooltipColor, "left")
	If sExportToPdfTooltip <> "" Then SetToolbarButtonToolTip("exporttopdf", sExportToPdfTooltip, sTooltipColor, "left")
	If sExportToXlsTooltip <> "" Then SetToolbarButtonToolTip("exporttoxls", sExportToXlsTooltip, sTooltipColor, "left")
	If sRefreshTooltip <> "" Then SetToolbarButtonToolTip("refresh", sRefreshTooltip, sTooltipColor, "left")
	If sBackTooltip <> "" Then SetToolbarButtonToolTip("back", sBackTooltip, sTooltipColor, "left")
	If sGridTooltip <> "" Then SetToolbarButtonToolTip("grid", sGridTooltip, sTooltipColor, "left")
End Sub

'set Alpha Chooser Text Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setAlphaChooserTextColor(s As String)
	sAlphaChooserTextColor = s
	CustProps.put("AlphaChooserTextColor", s)
End Sub

'set Column Chooser Text Color
'options: primary|secondary|accent|neutral|info|success|warning|error|none
Sub setColumnChooserTextColor(s As String)
	sColumnChooserTextColor = s
	CustProps.put("ColumnChooserTextColor", s)
End Sub

'get Alpha Chooser Text Color
Sub getAlphaChooserTextColor As String
	Return sAlphaChooserTextColor
End Sub
'get Column Chooser Text Color
Sub getColumnChooserTextColor As String
	Return sColumnChooserTextColor
End Sub

'set Show Total Records
Sub setShowTotalRecords(b As Boolean)
	bShowTotalRecords = b
	CustProps.put("ShowTotalRecords", b)
End Sub

'get Show Total Records
Sub getShowTotalRecords As Boolean
	Return bShowTotalRecords
End Sub

'set Column Chooser Color
Sub setColumnChooserColor(s As String)
	sColumnChooserColor = s
	CustProps.put("ColumnChooserColor", s)
End Sub
'set Column Chooser Height
Sub setColumnChooserHeight(s As String)
	sColumnChooserHeight = s
	CustProps.put("ColumnChooserHeight", s)
End Sub
'set Has Column Chooser
Sub setHasColumnChooser(b As Boolean)
	bHasColumnChooser = b
	CustProps.put("HasColumnChooser", b)
End Sub
'get Column Chooser Color
Sub getColumnChooserColor As String
	Return sColumnChooserColor
End Sub
'get Column Chooser Height
Sub getColumnChooserHeight As String
	Return sColumnChooserHeight
End Sub
'get Has Column Chooser
Sub getHasColumnChooser As Boolean
	Return bHasColumnChooser
End Sub

'set Shadow
'options: shadow|sm|md|lg|xl|2xl|inner|none
Sub setShadow(s As String)
	sShadow = s
	CustProps.put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddClass(mElement, "shadow-" & s)
End Sub

'get Shadow
Sub getShadow As String
	Return sShadow
End Sub


'get the list of selected files
Sub GetFiles As List
	'get the selected files, if any
	Dim xFile As BANanoElement = BANano.GetElement($"#${mName}_file"$)
	If xFile.GetField("files").GetField("length").Result = 0 Then 'ignore
		Return Null
	Else
		Dim files As Object = xFile.GetField("files").Result
		Dim res As List = files.As(List)
		Return res
	End If
End Sub

'get selected file
Sub GetFile As Map
	Dim xFile As BANanoElement = BANano.GetElement($"#${mName}_file"$)
	If xFile.GetField("files").GetField("length").Result = 0 Then 'ignore
		Return Null
	Else
		Dim obj() As BANanoObject = xFile.GetField("files").Result
		Return obj(0)
	End If
End Sub

'ensure we can select the same file again
Sub Nullify
	Dim xFile As BANanoElement = BANano.GetElement($"#${mName}_file"$)
	xFile.SetValue(Null)
End Sub


Sub setSearchWidth(s As String)			'ignoredeadcode
	sSearchWidth = s
	CustProps.Put("SearchWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetWidthByID($"${mName}_search"$, s)
End Sub

Sub getSearchWidth As String
	Return sSearchWidth
End Sub

'set Add New Tooltip
Sub setAddNewTooltip(s As String)
	sAddNewTooltip = s
	CustProps.put("AddNewTooltip", s)
End Sub
'set Back Tooltip
Sub setBackTooltip(s As String)
	sBackTooltip = s
	CustProps.put("BackTooltip", s)
End Sub
'set Clone Tooltip
Sub setCloneTooltip(s As String)
	sCloneTooltip = s
	CustProps.put("CloneTooltip", s)
End Sub
'set Delete All Tooltip
Sub setDeleteAllTooltip(s As String)
	sDeleteAllTooltip = s
	CustProps.put("DeleteAllTooltip", s)
End Sub
'set Delete Single Tooltip
Sub setDeleteSingleTooltip(s As String)
	sDeleteSingleTooltip = s
	CustProps.put("DeleteSingleTooltip", s)
End Sub
'set Delete Tooltip
Sub setDeleteTooltip(s As String)
	sDeleteTooltip = s
	CustProps.put("DeleteTooltip", s)
End Sub
'set Download Tooltip
Sub setDownloadTooltip(s As String)
	sDownloadTooltip = s
	CustProps.put("DownloadTooltip", s)
End Sub
'set Edit Tooltip
Sub setEditTooltip(s As String)
	sEditTooltip = s
	CustProps.put("EditTooltip", s)
End Sub
'set Export To Csv Tooltip
Sub setExportToCsvTooltip(s As String)
	sExportToCsvTooltip = s
	CustProps.put("ExportToCsvTooltip", s)
End Sub
'set Export To Pdf Tooltip
Sub setExportToPdfTooltip(s As String)
	sExportToPdfTooltip = s
	CustProps.put("ExportToPdfTooltip", s)
End Sub
'set Export To Xls Tooltip
Sub setExportToXlsTooltip(s As String)
	sExportToXlsTooltip = s
	CustProps.put("ExportToXlsTooltip", s)
End Sub
'set Menu Tooltip
Sub setMenuTooltip(s As String)
	sMenuTooltip = s
	CustProps.put("MenuTooltip", s)
End Sub
'set Refresh Tooltip
Sub setRefreshTooltip(s As String)
	sRefreshTooltip = s
	CustProps.put("RefreshTooltip", s)
End Sub
'set Save Single Tooltip
Sub setSaveSingleTooltip(s As String)
	sSaveSingleTooltip = s
	CustProps.put("SaveSingleTooltip", s)
End Sub
'set Tooltip Color
Sub setTooltipColor(s As String)
	sTooltipColor = s
	CustProps.put("TooltipColor", s)
End Sub
'set Upload Toolbar Tooltip
Sub setUploadToolbarTooltip(s As String)
	sUploadToolbarTooltip = s
	CustProps.put("UploadToolbarTooltip", s)
End Sub
'set Upload Tooltip
Sub setUploadTooltip(s As String)
	sUploadTooltip = s
	CustProps.put("UploadTooltip", s)
End Sub
'get Add New Tooltip
Sub getAddNewTooltip As String
	Return sAddNewTooltip
End Sub
'get Back Tooltip
Sub getBackTooltip As String
	Return sBackTooltip
End Sub
'get Clone Tooltip
Sub getCloneTooltip As String
	Return sCloneTooltip
End Sub
'get Delete All Tooltip
Sub getDeleteAllTooltip As String
	Return sDeleteAllTooltip
End Sub
'get Delete Single Tooltip
Sub getDeleteSingleTooltip As String
	Return sDeleteSingleTooltip
End Sub
'get Delete Tooltip
Sub getDeleteTooltip As String
	Return sDeleteTooltip
End Sub
'get Download Tooltip
Sub getDownloadTooltip As String
	Return sDownloadTooltip
End Sub
'get Edit Tooltip
Sub getEditTooltip As String
	Return sEditTooltip
End Sub
'get Export To Csv Tooltip
Sub getExportToCsvTooltip As String
	Return sExportToCsvTooltip
End Sub
'get Export To Pdf Tooltip
Sub getExportToPdfTooltip As String
	Return sExportToPdfTooltip
End Sub
'get Export To Xls Tooltip
Sub getExportToXlsTooltip As String
	Return sExportToXlsTooltip
End Sub
'get Menu Tooltip
Sub getMenuTooltip As String
	Return sMenuTooltip
End Sub
'get Refresh Tooltip
Sub getRefreshTooltip As String
	Return sRefreshTooltip
End Sub
'get Save Single Tooltip
Sub getSaveSingleTooltip As String
	Return sSaveSingleTooltip
End Sub
'get Tooltip Color
Sub getTooltipColor As String
	Return sTooltipColor
End Sub
'get Upload Toolbar Tooltip
Sub getUploadToolbarTooltip As String
	Return sUploadToolbarTooltip
End Sub
'get Upload Tooltip
Sub getUploadTooltip As String
	Return sUploadTooltip
End Sub
Sub getPageBreakRepeat As String
	Return sPageBreakRepeat
End Sub
Sub getExcelTitle As String
	Return sExcelTitle
End Sub
Sub getPdfTheme As String
	Return sPdfTheme
End Sub
Sub getFontSize As String
	Return sFontSize
End Sub
Sub getUnit As String
	Return sUnit
End Sub
Sub getPageSize As String
	Return sPageSize
End Sub
Sub getOrientation As String
	Return sOrientation
End Sub

Sub setWrapHeadings(b As Boolean)
	CustProps.Put("WrapHeadings", b)
	bWrapHeadings = b
End Sub

Sub getWrapHeadings As Boolean
	Return bWrapHeadings
End Sub

Sub setExcelTitle(s As String)
	CustProps.put("ExcelTitle", s)
	sExcelTitle = s
End Sub
Sub setButtonsOutlined(b As Boolean)
	CustProps.put("ButtonsOutlined", b)
	bButtonsOutlined = b
End Sub
Sub getButtonsOutlined As Boolean
	Return bButtonsOutlined
End Sub
Sub setBadgesOutlined(b As Boolean)
	CustProps.put("BadgesOutlined", b)
	bBadgesOutlined = b
End Sub
Sub getBadgesOutlined As Boolean
	Return bBadgesOutlined
End Sub
'set Title Visible
Sub setTitleVisible(b As Boolean)				'ignoredeadcode
	CustProps.put("TitleVisible", b)
	bTitleVisible = b
	If mElement = Null Then Return
	UI.SetVisiblebyid($"${mName}_title"$, b)
End Sub

'set the hover and focus color of elements
Sub SetMenuItemColor(c As String)
	If c = "" Then Return
	itemColor1 = $"hover:${UI.FixColor("bg", c)}"$
	itemColor2 = $"focus:${UI.FixColor("bg", c)}"$
	itemColor4 = $"active:${UI.FixColor("bg", c)}"$
End Sub
Sub SetMenuItemHoverColor(c As String)
	If c = "" Then Return
	itemColor1 = $"hover:${UI.FixColor("bg", c)}"$
End Sub
Sub SetMenuItemFocusColor(c As String)
	If c = "" Then Return
	itemColor2 = $"focus:${UI.FixColor("bg", c)}"$
End Sub
Sub SetMenuItemActiveColor(c As String)
	If c = "" Then Return
	itemColor4 = $"active:${UI.FixColor("bg", c)}"$
End Sub
Sub setNormalCase(b As Boolean)
	CustProps.put("NormalCase", b)
	bNormalCase = b
End Sub
'add edit, delete, clone, upload, download and menu buttons on table
Sub AddDesignerColums					'ignoredeadcode
	If mElement = Null Then Return
	If bHasEdit Then AddColumnEdit("#418448")
	If bHasDelete Then AddColumnDelete("#db3835")
	If bHasClone Then AddColumnClone("#ffc107")
	If bHasUpload Then AddColumnUpload("#00bcd4")
	If bHasDownload Then AddColumnDownload("#2196f3")
	If bHasMenu Then AddColumnMenu("#3f51b5")
End Sub

Sub getHeadingID As String
	Return $"${mName}_thead"$
End Sub

Sub getBodyID As String
	Return $"${mName}_body"$
End Sub

Sub getFooterID As String
	Return $"${mName}_foot"$
End Sub

'add a row to the table header
Sub AddHeaderRow(rowNumber As String)			'ignoredeadcode
	Dim rkey As String = $"${mName}_theadtr_${rowNumber}"$
	Dim tHeader As BANanoElement = BANano.GetElement($"#${mName}_thead"$)
	tHeader.append($"<tr id="${rkey}" class="tblheading"></tr>"$)
End Sub

'add a heading to the row
Sub AddHeaderRowTitle(rowNumber As String, name As String, title As String)
	'parent heading
	Dim rkey As String = $"${mName}_theadtr_${rowNumber}"$
	Dim rkey1 As String = $"${mName}_theadtr_${rowNumber}_${name}"$
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${rkey1}"  class="cursor-pointer  ${hclass}">${title}</th>"$
	Dim tHeader As BANanoElement = BANano.GetElement($"#${rkey}"$)
	tHeader.append(hr)
End Sub
'
private Sub AddHeaderRowSelect(rowNumber As String, name As String)
	'parent heading
	Dim rkey As String = $"${mName}_theadtr_${rowNumber}"$
	Dim rkey1 As String = $"${mName}_theadtr_${rowNumber}_${name}"$
	Dim rkey2 As String = $"${mName}_theadtr_${rowNumber}_${name}_select"$
	'
	Dim sSize As String = UI.FixSize("select", sComponentSize)
	Dim hr As String = $"<th id="${rkey1}">
	<select id="${rkey2}" class="select select-bordered w-full ${sSize}"></select>
	</th>"$
	Dim tHeader As BANanoElement = BANano.GetElement($"#${rkey}"$)
	tHeader.append(hr)
	filterNames.Put(name, rkey2)
End Sub

'clear all filters
Sub ClearFilters			'ignoredeadcode
	For Each k As String In filterNames.Keys
		Dim v As String = filterNames.Get(k)
		If BANano.Exists($"#${v}"$) Then
			BANano.GetElement($"#${v}"$).empty
		End If
	Next
End Sub

'clear filter
private Sub ClearHeaderRowSelect(rowNumber As String, name As String)
	Dim rkey As String = $"${mName}_theadtr_${rowNumber}_${name}"$
	If BANano.Exists($"#${rkey}"$) Then
		BANano.GetElement($"#${rkey}"$).empty
	End If
End Sub

'clear a filter using a name
Sub ClearFilter(name As String)
	ClearHeaderRowSelect("filters", name)
End Sub

private Sub AddHeaderRowPlaceHolder(rowNumber As String, name As String)
	'parent heading
	Dim rkey As String = $"${mName}_theadtr_${rowNumber}"$
	Dim rkey1 As String = $"${mName}_theadtr_${rowNumber}_${name}"$
	'
	Dim hr As String = $"<th id="${rkey1}"></th>"$
	Dim tHeader As BANanoElement = BANano.GetElement($"#${rkey}"$)
	tHeader.append(hr)
End Sub

Sub setRoundedBox(Status As Boolean)
	If mElement = Null Then Return
	If Status Then
		UI.AddClassByID($"${mName}"$, "rounded-box")
	Else
		UI.RemoveClassByID($"${mName}"$, "rounded-box")
	End If
End Sub
Sub setBorder(Status As Boolean)
	If mElement = Null Then Return
	If Status Then
		UI.AddClassByID($"${mName}"$, "border")
	Else
		UI.RemoveClassByID($"${mName}"$, "border")
	End If
End Sub
Sub setBottomBorder(Status As Boolean)
	If mElement = Null Then Return
	If Status Then
		UI.AddClassByID($"${mName}_table"$, "border-b")
	Else
		UI.RemoveClassByID($"${mName}_table"$, "border-b")
	End If
End Sub

Sub getColumnChooserID As String
	Return $"${mName}_columnchooser"$
End Sub

Sub getAlphabetsID As String
	Return $"${mName}_aphabets"$
End Sub
'<code>
'tbl.SetColumnChooser(True, "8", app.COLOR_PRIMARY)
'</code>
private Sub SetColumnChooser(Status As Boolean, Height As String, Color As String)
	If Status = False Then
		UI.Hide($"${mName}_columnchooser"$)
		UI.Hide($"${mName}_divider2"$)
		Return
	End If
	Dim clicks1 As List
	clicks1.Initialize
	'
	Dim boutline As String = ""
	If bBadgesOutlined Then boutline = "badge-outline"
	Dim sh As String = UI.FixSize("h", Height)
	Dim btnColor As String = UI.FixColor("badge", Color)
	Dim iconsize As String = UI.FixIconSize("sm")
	Dim iconColor As String = UI.FixColor("text", sColumnChooserTextColor)
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	'show column chooser
	Dim el As BANanoElement = BANano.getelement($"#${mName}_columnnames"$)
	el.Empty
	For Each col As String In Columns.Keys
		Dim tc As TableColumn = Columns.Get(col)
		'
		If tc.typeof = "action" Then Continue
		If tc.typeof = "menu" Then Continue
		If tc.typeof = "fileaction" Then Continue
		Dim bcolor As String = btnColor
		Dim shidden As String = ""
		If tc.visible = False Then
			shidden = "hidden"
			bcolor = "badge-neutral"
		End If
		'
		Dim sItem As String = $"<div id="${mName}_${tc.name}_column" data-visible="${tc.visible}" class="unselectable rounded-full mr-2 mb-2 py-2 px-4 badge badge-sm text-sm ${sh} ${boutline} ${bcolor} ${iconColor} cursor-pointer">
        <svg id="${mName}_${tc.name}_icon" data-js="enabled" fill="currentColor" style="${BuildIconColor(iconColor)};pointer-events:none;" width="${iconsize}" height="${iconsize}" data-visible="${tc.visible}" data-unique-ids="disabled" data-src="./assets/check-solid.svg" class="mr-2 ${shidden}">
		</svg>${tc.title}</div>"$
		sbOptions.Append(sItem)
		clicks1.Add($"${mName}_${tc.name}_column"$)
		clicks1.Add($"${mName}_${tc.name}_icon"$)
	Next
	el.Append(sbOptions.ToString)
	sbOptions.Initialize
	UI.Show($"${mName}_columnchooser"$)
	UI.Show($"${mName}_divider2"$)
	UI.SetDataAttrByID($"${mName}_columnchooser"$, "color", btnColor)
	For Each clickevent As String In clicks1
		Dim rowEL As BANanoElement
		rowEL.Initialize($"#${clickevent}"$)
		rowEL.Off("click")
		rowEL.on("click", Me, "HandleColumnClick")
	Next
End Sub
private Sub HandleAlphaClick(event As BANanoEvent)     ''ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	UI.ShowLoader
	Dim src As String = event.ID
	If src = "" Then Return
	'get the column name
	Dim colName As String = UI.MvField(src, 2, "_")
	UI.Hide($"${mName}_other_icon"$)
	For Each a As String In Alphas.keys
		UI.Hide($"${mName}_${a}_icon"$)
	Next
	UI.Hide($"${mName}_all_icon"$)
	UI.Show($"${mName}_${colName}_icon"$)
	'perform the search
	Dim alphaSearch As List = SearchByAlphabet(colName, sAlphaChooserColumn)
	Select Case colName.tolowercase
	Case "all"
		'Show all items filtered by alpha chooser
		BANano.Await(SetItemsPaginate(alphaSearch))
	Case Else
		'Show all items filtered by alpha chooser
		BANano.Await(SetItems(alphaSearch))
		BANano.Await(SetColumnChooser(bHasColumnChooser, sColumnChooserHeight, sColumnChooserColor))
		BANano.Await(SetAlphaChooser(bHasAlphaChooser, sAlphaChooserHeight, sAlphaChooserColumn, alphaSearch))
		BANano.Await(ShowTotals(alphaSearch))
	End Select
	
	UI.hideloader
	BANano.CallSub(mCallBack, $"${mName}_AlphaClick"$, Array(colName))
End Sub
private Sub HandleColumnClick(event As BANanoEvent)     ''ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${src}"$)
	Dim dvisible As Boolean = UI.CBool(el.GetData("visible"))
	'get the column name
	Dim colName As String = UI.MvField(src, 2, "_")
	Dim lcolor As String = UI.GetDataAttrByID($"${mName}_columnchooser"$, "color")
	Select Case dvisible
		Case True
			'hide icon
			UI.Hide($"${mName}_${colName}_icon"$)
			UI.SetDataAttrByID($"${mName}_${colName}_icon"$, "visible","false")
			UI.SetDataAttrByID($"${mName}_${colName}_column"$, "visible","false")
			UI.RemoveClassByID($"${mName}_${colName}_column"$, lcolor)
			UI.AddClassByID($"${mName}_${colName}_column"$, "badge-neutral")
			BANano.Await(SetColumnVisible(colName, False))
		Case Else
			'show icon
			UI.Show($"${mName}_${colName}_icon"$)
			UI.SetDataAttrByID($"${mName}_${colName}_icon"$, "visible","true")
			UI.SetDataAttrByID($"${mName}_${colName}_column"$, "visible","true")
			UI.AddClassByID($"${mName}_${colName}_column"$, lcolor)
			UI.RemoveClassByID($"${mName}_${colName}_column"$, "badge-neutral")
			BANano.Await(SetColumnVisible(colName, True))
	End Select
End Sub

Sub SetColumnVisibleOnColumnChooser(colName As String, colVisible As Boolean)
	Dim lcolor As String = UI.GetDataAttrByID($"${mName}_columnchooser"$, "color")
	Select Case colVisible
		Case True
			'show
			UI.Show($"${mName}_${colName}_icon"$)
			UI.SetDataAttrByID($"${mName}_${colName}_icon"$, "visible","true")
			UI.SetDataAttrByID($"${mName}_${colName}_column"$, "visible","true")
			UI.AddClassByID($"${mName}_${colName}_column"$, lcolor)
			UI.RemoveClassByID($"${mName}_${colName}_column"$, "badge-neutral")
		Case False
			'hide
			UI.Hide($"${mName}_${colName}_icon"$)
			UI.SetDataAttrByID($"${mName}_${colName}_icon"$, "visible","false")
			UI.SetDataAttrByID($"${mName}_${colName}_column"$, "visible","false")
			UI.RemoveClassByID($"${mName}_${colName}_column"$, lcolor)
			UI.AddClassByID($"${mName}_${colName}_column"$, "badge-neutral")
	End Select
End Sub

'<code>
'tbl.SetAlphaChooser(True, "8", "column")
'</code>
private Sub SetAlphaChooser(Status As Boolean, Height As String, ColumnName As String, DataSet As List)
	If Status = False Then
		UI.Hide($"${mName}_aphabets"$)
		Return
	End If
	ColumnName = ColumnName.ToLowerCase
	Dim clicks As List
	clicks.Initialize
	'
	Dim boutline As String = ""
	If bBadgesOutlined Then boutline = "badge-outline"
	Dim sh As String = UI.FixSize("h", Height)
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	'show column chooser
	Dim el As BANanoElement = BANano.getelement($"#${mName}_alphanumeric"$)
	el.Empty
	Alphas.Initialize
	For Each row As Map In DataSet
		Dim cdata As String = row.GetDefault(ColumnName, "")
		cdata = UI.CStr(cdata)
		cdata = UI.Alpha(cdata)
		cdata = cdata.Trim
		If cdata = "" Then Continue
		Dim slet As String = UI.Left(cdata,1)
		slet = slet.ToLowerCase
		Alphas.Put(slet, "")
	Next
	Dim iconsize As String = UI.FixIconSize("sm")
	Dim iconColor As String = UI.FixColor("text", sAlphaChooserTextColor)
	Dim xsort As List
	xsort.Initialize
	For Each col As String In Alphas.Keys
		xsort.Add(col)
	Next
	xsort.Sort(True)
	xsort.Add("Other")
	xsort.Add("All")
	For Each col As String In xsort
		Select Case col.tolowercase
		Case "other", "all"
			Dim initx As String = col
			Dim initl As String = initx.ToLowerCase
			Dim acolor As String = UI.GetAlphaColor(initx)
			Dim bcolor As String = UI.FixColor("badge", acolor)
		Case Else	
			Dim initx As String = UI.Initials(col)
			Dim initl As String = initx.ToLowerCase
			Dim acolor As String = UI.GetAlphaColor(initx)
			Dim bcolor As String = UI.FixColor("badge", acolor)
		End Select
		'
		Dim sItem As String = $"<div id="${mName}_${initl}_column" class="unselectable badge rounded-full badge-sm text-sm ${sh} ${boutline} ${bcolor} ${iconColor} cursor-pointer mr-2 mb-2 py-2 px-4">
        <svg id="${mName}_${initl}_icon" data-js="enabled" fill="currentColor" style="${BuildIconColor(iconColor)};pointer-events:none;" width="${iconsize}" height="${iconsize}" data-unique-ids="disabled" data-src="./assets/check-solid.svg" class="mr-2 hidden">
		</svg>${initx}</div>"$
		sbOptions.Append(sItem)
		clicks.Add($"${mName}_${initl}_column"$)
		clicks.Add($"${mName}_${initl}_icon"$)
	Next
	el.Append(sbOptions.ToString)
	sbOptions.Initialize
	UI.Show($"${mName}_aphabets"$)
	For Each clickevent As String In clicks
		Dim rowEL As BANanoElement
		rowEL.Initialize($"#${clickevent}"$)
		rowEL.Off("click")
		rowEL.on("click", Me, "HandleAlphaClick")
	Next
End Sub
Sub RemoveSearch
	BANano.getelement($"#${mName}_searchbox"$).Remove
End Sub
Sub RemoveToolBar
	BANano.getelement($"#${mName}_actions"$).Remove
End Sub
Sub RemoveColumnChooser
	BANano.getelement($"#${mName}_columnchooser"$).Remove
End Sub
Sub RemoveHeadings
	BANano.getelement($"#${mName}_thead"$).Remove
End Sub
Sub RemoveFooter
	BANano.getelement($"#${mName}_foot"$).Remove
End Sub
Sub RemoveFooterPagination
	BANano.getelement($"#${mName}_pagination"$).Remove
End Sub

Sub setBodyVisible(Status As Boolean)
	If mElement = Null Then Return
	If Status Then
		UI.Show($"${mName}_body"$)
	Else
		UI.Hide($"${mName}_body"$)
	End If
End Sub
Sub setHeaderVisible(Status As Boolean)
	If mElement = Null Then Return
	If Status Then
		UI.Show($"${mName}_thead"$)
	Else
		UI.Hide($"${mName}_thead"$)
	End If
End Sub
Sub setFooterVisible(Status As Boolean)
	If mElement = Null Then Return
	If Status Then
		UI.Show($"${mName}_foot"$)
	Else
		UI.Hide($"${mName}_foot"$)
	End If
End Sub

Sub setHasSearch(b As Boolean)			'ignoredeadcode
	CustProps.Put("HasSearch", b)
	bHasSearch = b
	If mElement = Null Then Return
	UI.SetVisibleByID($"#${mName}_searchbox"$, b)
	UI.SetVisibleByID($"#${mName}_search"$, b)
	'UI.SetVisibleByID($"#${mName}_searchboxgroup"$, b)
	UI.SetVisibleByID($"#${mName}_searchbtn"$, b)
	UI.SetVisibleByID($"#${mName}_searchbtnicon"$, b)
	'UI.SetVisibleByID($"#${mName}_searchboxlabel"$, b)
End Sub

Sub getHasSearch As Boolean
	Return bHasSearch
End Sub

Sub getSearchValue As String
	Dim s As String = BANano.GetElement($"#${mName}_search"$).GetValue
	Return s
End Sub

Sub setSearchValue(s As String)
	If mElement = Null Then Return
	BANano.GetElement($"#${mName}_search"$).SetValue(s)
End Sub

Sub setActionsVisible(b As Boolean)
	If mElement = Null Then Return
	If b = True Then
		BANano.GetElement($"#${mName}_actions"$).RemoveClass("hidden")
	Else
		BANano.GetElement($"#${mName}_actions"$).AddClass("hidden")
	End If
End Sub
'set Title Visible
Sub setToolbarVisible(b As Boolean)
	If mElement = Null Then Return
	UI.SetVisibleByID($"#${mName}_toolbar"$, b)
	UI.SetVisibleByID($"#${mName}_title"$, b)
	UI.SetVisibleByID($"#${mName}_searchbox"$, b)
	UI.SetVisibleByID($"#${mName}_search"$, b)
	UI.SetVisibleByID($"#${mName}_actions"$, b)
	'UI.SetVisibleByID($"#${mName}_searchboxgroup"$, b)
	UI.SetVisibleByID($"#${mName}_searchbtn"$, b)
	UI.SetVisibleByID($"#${mName}_searchbtnicon"$, b)
	'UI.SetVisibleByID($"#${mName}_searchboxlabel"$, b)
End Sub
'change the search placeholder
'<code>
'tbl.SetSearchPlaceholder("Buscar")
'</code>
Sub SetSearchPlaceholder(s As String)
	BANano.GetElement($"#${mName}_search"$).SetAttr("placeholder", s)
End Sub
Sub getSearchID As String
	Return $"${mName}_search"$
End Sub

Sub getToolBarButtonID(btnID As String) As String
	btnID = UI.CleanID(btnID)
	Return $"${mName}_${btnID}"$
End Sub

Sub AddToolbarButton(btnID As String, btnCaption As String, btnColor As String) As SDUI5Button
	Dim btn As SDUI5Button = AddToolbarActionButton(btnID, btnCaption, btnColor)
	Return btn
End Sub
'add an action button
'<code>
'Sub tblname_btnid (e As BANanoEvent)
'End Sub
'</code>
Sub AddToolbarActionButton(btnID As String, btnCaption As String, btnColor As String) As SDUI5Button		'ignoredeadcode
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	btnID = UI.CleanID(btnID)
	Dim btn As SDUI5Button
	btn.Initialize(mCallBack, $"${mName}_${btnID}"$, $"${mName}_${btnID}"$)
	btn.ParentID = $"${mName}_actions"$
	btn.Text = btnCaption
	btn.BackgroundColor = btnColor
	btn.Outline = bButtonsOutlined
	btn.Size = sButtonSize
	btn.AddComponent
	btn.AddClass("mx-1")
	btn.UI.OnEventByID($"${mName}_${btnID}"$, "click", mCallBack, $"${mName}_${btnID}"$)
	Return btn
End Sub
Sub SetToolbarButtonToolTip(btnID As String, tooltip As String, color As String, position As String)			'ignoredeadcode
	btnID = UI.CleanID(btnID)
	Dim col As String = UI.FixColor("tooltip", color)
	Dim pos As String = UI.FixSize("tooltip", position)
	UI.AddClassByID($"${mName}_${btnID}"$, $"tooltip ${pos} ${col}"$)
	UI.SetAttrByID($"${mName}_${btnID}"$, "data-tip", tooltip)
End Sub

Sub AddToolbarButtonIcon(btnID As String, sIcon As String, btnColor As String, iconColor As String) As SDUI5Button			'ignoredeadcode
	Dim btn As SDUI5Button = AddToolbarActionButtonIcon(btnID, sIcon, btnColor, iconColor)
	Return btn
End Sub

'add a file upload button with table event
'<code>
'Sub tblName_filechange (e As BANAnoEvent)
'tblName.FileChangeEvent
'tblName.FileChangeMultiple
'End Sub
'</code>
Sub AddToolbarFileUpload(btnID As String, sIcon As String, btnColor As String, bMultiple As Boolean) As SDUI5Button		'ignoredeadcode
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	btnID = UI.CleanID(btnID)
	Dim btn As SDUI5Button = AddToolbarActionButtonIcon(btnID, sIcon, btnColor, "")
	BANano.GetElement($"#${mName}_actions"$).Append($"<input id="${mName}_${btnID}_file" type="file" class="hidden"/>"$)
	BANano.GetElement($"#${mName}_${btnID}"$).off("click")
	BANano.GetElement($"#${mName}_${btnID}"$).On("click", Me, "FileUploadHandler")
	BANano.GetElement($"#${mName}_${btnID}_file"$).On("change", mCallBack, $"${mName}_filechange"$)
	If bMultiple Then BANano.GetElement($"#${mName}_${btnID}_file"$).SetAttr("multiple", "multiple")
	Return btn
End Sub

private Sub FileUploadHandler(e As BANanoEvent)			'ignoredeadcode
	e.PreventDefault
	e.StopPropagation
	Dim src As String = e.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim p2 As String = UI.MvField(src, 2, "_")
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${p2}_file"$)
	'click the file input to fire change event
	el.SetValue(Null)
	el.RunMethod("click", Null)
End Sub

'add an action button
'<code>
'Sub tblname_btnid (e As BANanoEvent)
'End Sub
'</code>
Sub AddToolbarActionButtonIcon(btnID As String, sIcon As String, btnColor As String, iconColor As String) As SDUI5Button			'ignoredeadcode
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	btnID = UI.CleanID(btnID)
	'
	Dim btn As SDUI5Button
	btn.Initialize(mCallBack, $"${mName}_${btnID}"$, $"${mName}_${btnID}"$)
	btn.ParentID = $"${mName}_actions"$
	btn.Text = ""
	btn.BackgroundColor = btnColor
	btn.Shape = "circle"
	btn.Outline = bButtonsOutlined
	btn.LeftIcon = sIcon
	btn.Size = sButtonSize
	btn.IconSize = sButtonSize
	btn.LeftIconColor = iconColor
	btn.AddComponent
	btn.AddClass("mx-1")
	UI.ResizeIconByID($"${mName}_${btnID}_lefticon"$, "50")
	btn.UI.OnEventByID($"${mName}_${btnID}"$, "click", mCallBack, $"${mName}_${btnID}"$)
	Return btn
End Sub

Sub AddToolbarDropDownIcon(btnID As String, sIcon As String, btnColor As String, textColor As String) As SDUI5DropDown
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	btnID = UI.CleanID(btnID)
'	Dim btn As SDUIDropDown
'	btn.AddDropDownIcon(mCallBack, $"${mName}_actions"$, $"${mName}_${btnID}"$, sButtonSize, sIcon)
'	btn.MainButton.NoGhost
'	btn.MainButton.Color = btnColor
'	btn.Menu.mt(1)
'	btn.Menu.border1
'	btn.MainButton.Outline = bButtonsOutlined
'	btn.MainButton.Size = sButtonSize
'	btn.MainButton.Circle
'	btn.Root.mx("1")
'	Return btn
End Sub
Sub AddToolbarDropDown(btnID As String, btnColor As String, btnLabel As String, textColor As String) As SDUI5DropDown
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	btnID = UI.CleanID(btnID)
'	Dim btn As SDUIDropDown
'	btn.AddDropDown(mCallBack, $"${mName}_actions"$, $"${mName}_${btnID}"$, btnLabel)
'	btn.MainButton.Color = btnColor
'	btn.Menu.mt(1)
'	btn.Menu.border1
'	btn.MainButton.Outline = bButtonsOutlined
'	btn.MainButton.Size = sButtonSize
'	btn.Root.mx("1")
'	Return btn
End Sub
Sub AddToolbarDropDownAvatar(btnID As Object, sSize As String, ImgURL As String) As SDUI5DropDown
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	btnID = UI.CleanID(btnID)
'	Dim btn As SDUIDropDown
'	btn.AddDropDownAvatar(mCallBack, $"${mName}_actions"$, $"${mName}_${btnID}"$, sSize, ImgURL)
'	btn.Menu.mt(1)
'	btn.Menu.border1
'	btn.Root.mx("1")
'	Return btn
End Sub
Sub AddToolbarSelect(id As String, prependIcon As String, appendIcon As String, options As Map) As SDUI5Select
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	id = UI.CleanID(id)
'	Dim el As SDUISelect
'	el.AddSelect(mCallBack, $"${mName}_actions"$, $"${mName}_${id}"$, "", "", "", "")
'	el.RemoveHint
'	el.RemoveLabel
'	el.Size = sComponentSize
'	el.Root.mx("1")
'	el.PrependIcon = prependIcon
'	el.AppendIcon = appendIcon
'	el.SetItems(options)
'	Return el
End Sub
Sub AddToolbarSelectNormal(id As String, options As Map) As SDUI5Select
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	id = UI.CleanID(id)
'	Dim el As SDUISelect
'	el.AddSelectNormal(mCallBack, $"${mName}_actions"$, $"${mName}_${id}"$, False)
'	el.Size = sComponentSize
'	el.Root.mx("1")
'	el.SetItems(options)
'	Return el
End Sub
Sub AddToolbarTextBox(id As String, prependIcon As String, appendIcon As String) As SDUI5TextBox
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	id = UI.CleanID(id)
'	Dim el As SDUITextBox
'	el.AddTextBoxGroup(mCallBack, $"${mName}_actions"$, $"${mName}_${id}"$, "", "", "", "")
'	el.RemoveHint
'	el.RemoveLabel
'	el.Size = sComponentSize
'	el.Root.mx("1")
'	el.PrependIcon = prependIcon
'	el.AppendIcon = appendIcon
'	Return el
End Sub
Sub AddToolbarTextBoxNormal(id As String) As SDUI5TextBox
	If BANano.Exists($"#${mName}_actions"$) = False Then Return Null
	UI.Show($"${mName}_actions"$)
	id = UI.CleanID(id)
'	Dim el As SDUITextBox
'	el.AddTextBox(mCallBack, $"${mName}_actions"$, $"${mName}_${id}"$)
'	el.Size = sComponentSize
'	el.Root.mx("1")
'	Return el
End Sub
Sub SetExportToCSVTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("ExportToCsvTooltip", tooltip)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("exporttocsv", tooltip, color, position)
End Sub
'set Has Export To Csv	
Sub setHasExportToCsv(b As Boolean)			'ignoredeadcode
	bExportToCsv = UI.CBool(b)
	CustProps.put("ExportToCsv", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("exporttocsv", "./assets/csv.svg", "#4e3188", "#ffffff")
End Sub
Sub SetExportToPDFTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("ExportToPdfTooltip", tooltip)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("exporttopdf", tooltip, color, position)
End Sub
'set Has Export To Pdf
Sub setHasExportToPdf(b As Boolean)			'ignoredeadcode
	bExportToPdf = b
	CustProps.Put("ExportToPdf", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("exporttopdf", "./assets/pdf.svg", "#24babc", "#ffffff")
End Sub
Sub SetExportToXLSTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("ExportToXlsTooltip", tooltip)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("exporttoxls", tooltip, color, position)
End Sub
'set Has Export To Xls
Sub setHasExportToXls(b As Boolean)				'ignoredeadcode
	CustProps.Put("ExportToXls", b)
	bExportToXls = b
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("exporttoxls", "./assets/xls.svg", "#9a3d64", "#ffffff")
End Sub
Sub SetAddNewTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("AddNewTooltip", tooltip)
	if tooltip = "" then return
	SetToolbarButtonToolTip("add", tooltip, color, position)
End Sub
Sub setHasAddNew(b As Boolean)			'ignoredeadcode
	CustProps.put("HasAddnew", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("add", "./assets/plus-solid.svg", "#418448", "#ffffff")
End Sub


Sub SetToolbarButtonIconColor(btn As String, value As String)		'ignoredeadcode
	UI.SetIconColorByID($"#${mName}_${btn}_lefticon"$, value)
End Sub

'set Grid Tooltip
Sub setGridTooltip(s As String)
	sGridTooltip = s
	CustProps.put("GridTooltip", s)
End Sub
'set Has Grid
Sub setHasGrid(b As Boolean)		'ignoredeadcode
	bHasGrid = b
	CustProps.put("HasGrid", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("gridview", "./assets/windows-brands.svg", "#ffa500", "#ffffff")
	If sGridTooltip <> "" Then
		SetToolbarButtonToolTip("gridview", sGridTooltip, "primary", "left")
	End If
End Sub
'get Grid Tooltip
Sub getGridTooltip As String
	Return sGridTooltip
End Sub
'get Has Grid
Sub getHasGrid As Boolean
	Return bHasGrid
End Sub
Sub SetSaveSingleTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("SaveSingleTooltip", tooltip)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("savesingle", tooltip, color, position)
End Sub
Sub setHasSaveSingle(b As Boolean)				'ignoredeadcode
	CustProps.put("HasSaveSingle", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("savesingle", "./assets/floppy-disk-solid.svg", "#7289da", "#ffffff")
End Sub
Sub SetDeleteSingleTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("DeleteSingleTooltip", tooltip)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("deletesingle", tooltip, color, position)
End Sub
Sub setHasDeleteSingle(b As Boolean)				'ignoredeadcode
	CustProps.put("HasDeleteSingle", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("deletesingle", "./assets/trash-solid.svg", "#ff9900", "#ffffff")
End Sub
Sub SetDeleteAllTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("DeleteAllTooltip", tooltip)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("deleteall", tooltip, color, position)
End Sub
Sub setHasDeleteAll(b As Boolean)				'ignoredeadcode
	CustProps.put("HasDeleteAll", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("deleteall", "./assets/trash-can-solid.svg", "#FF0000", "white")
	SetToolbarButtonBadge("deleteall", "0")
	SetToolbarButtonBadgeRound("deleteall")
	SetToolbarButtonToolTip("deleteall", sDeleteAllTooltip, "primary", "left")
End Sub
Sub SetUploadToolBarTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("UploadToolbarTooltip", tooltip)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("uploadtoolbar", tooltip, color, position)
End Sub

Sub setHasToolbarDownload(b As Boolean)
	bHasToolbarDownload = b
	CustProps.Put("HasToolbarDownload", b)
	If bHasToolbarDownload = False Then Return
	If mElement = Null Then Return	
	AddToolbarActionButtonIcon("downloadtoolbar", "./assets/download-solid.svg", "#FFFF99", "#000000")
	BANano.GetElement($"#${mName}_downloadtoolbar"$).On("click", mCallBack, $"${mName}_Download"$)
	If sDownloadToolbarTooltip <> "" Then 
		SetToolbarButtonToolTip("downloadtoolbar", sDownloadToolbarTooltip, "primary", "left")
	End If
End Sub

Sub getHasToolbarDownload As Boolean
	Return bHasToolbarDownload
End Sub

Sub setHasToolbarUpload(b As Boolean)				'ignoredeadcode
	CustProps.put("HasToolbarUpload", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("uploadtoolbar", "./assets/upload-solid.svg", "#2196f3", "#ffffff")
	BANano.GetElement($"#${mName}_uploadtoolbar"$).off("click")
	BANano.GetElement($"#${mName}_uploadtoolbar"$).On("click", Me, "UploadToolbarHandler")
	If bMultipleFiles Then
		BANano.GetElement($"#${mName}_file"$).SetAttr("multiple", "multiple")
	End If
End Sub
private Sub UploadToolbarHandler(e As BANanoEvent)
	e.PreventDefault
	e.StopPropagation
	'click the file input to fire change event
	BANano.GetElement($"#${mName}_file"$).SetValue(Null)
	BANano.GetElement($"#${mName}_file"$).RunMethod("click", Null)
End Sub
Sub SetBackTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("BackTooltip", tooltip)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("back", tooltip, color, position)
End Sub
Sub setHasBack(b As Boolean)				'ignoredeadcode
	bHasBack = b
	CustProps.put("HasBack", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("back", "./assets/arrow-right-from-bracket-solid.svg", "#3f51b5", "#ffffff")
End Sub

'move the back button to the end
Sub MoveBackButton
	If bHasBack = False Then Return
	Dim backKey As String = $"#${mName}_back_indicator"$
	If BANano.Exists(backKey) Then
		Dim bBtn As BANanoElement = BANano.GetElement(backKey)
		bBtn.Remove
		setHasBack(True)
	End If
End Sub

Sub SetRefreshTooltip1(tooltip As String, color As String, position As String)
	CustProps.put("RefreshTooltip", tooltip)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("refresh", tooltip, color, position)
End Sub
Sub setHasRefresh(b As Boolean)			'ignoredeadcode
	CustProps.put("HasRefresh", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("refresh", "./assets/arrows-rotate-solid.svg", "#2196f3", "#ffffff")
End Sub
Sub setExportToCsvLoading(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_exporttocsv_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_exporttocsv"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_exporttocsv"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_exporttocsv_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub setExportToPdfLoading(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_exporttopdf_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_exporttopdf"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_exporttopdf"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_exporttopdf_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub setExportToXlsLoading(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_exporttoxls_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_exporttoxls"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_exporttoxls"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_exporttoxls_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub setRefreshLoading(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_refresh_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_refresh"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_refresh"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_refresh_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub setRefreshDisabled(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_refresh"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_refresh"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_refresh"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_refresh"$).RemoveAttr("disabled")
	End If
End Sub
Sub setExportToCsvDisabled(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_exporttocsv"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_exporttocsv"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_exporttocsv"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_exporttocsv"$).RemoveAttr("disabled")
	End If
End Sub
Sub setExportToPdfDisabled(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_exporttopdf"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_exporttopdf"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_exporttopdf"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_exporttopdf"$).RemoveAttr("disabled")
	End If
End Sub
Sub setExportToXlsDisabled(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_exporttoxls"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_exporttoxls"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_exporttoxls"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_exporttoxls"$).RemoveAttr("disabled")
	End If
End Sub
Sub setPrevPageDisabled(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_prevpage"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_prevpage"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_prevpage"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_prevpage"$).RemoveAttr("disabled")
	End If
End Sub
Sub setNextPageDisabled(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_nextpage"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_nextpage"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_nextpage"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_nextpage"$).RemoveAttr("disabled")
	End If
End Sub
Sub SetToolbarButtonDisabled(btn As String, b As Boolean)
	btn = UI.CleanID(btn)
	If b Then
		BANano.GetElement($"#${mName}_${btn}"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_${btn}"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).RemoveAttr("disabled")
	End If
End Sub
Sub SetToolbarButtonEnable(btn As String, b As Boolean)
	btn = UI.CleanID(btn)
	If b Then
		BANano.GetElement($"#${mName}_${btn}"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).RemoveAttr("disabled")
	Else
		BANano.GetElement($"#${mName}_${btn}"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_${btn}"$).SetAttr("disabled", "disabled")
	End If
End Sub
Sub SetToolbarButtonLoading(btn As String, b As Boolean)
	btn = UI.CleanID(btn)
	If b Then
		BANano.GetElement($"#${mName}_${btn}_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_${btn}"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_${btn}"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_${btn}_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub ToolbarButtonLoading(btn As String, b As Boolean)
	btn = UI.CleanID(btn)
	If b Then
		BANano.GetElement($"#${mName}_${btn}_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_${btn}"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_${btn}"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_${btn}_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub SetToolbarSelectAllChecked(value As Boolean)
	If BANano.Exists($"#${mName}_selectall"$) = False Then Return
	BANano.GetElement($"#${mName}_selectall"$).SetChecked(value)
	Dim rTot As Int = Rows.Size - 1
	Dim rCnt As Int
	For rCnt = 0 To rTot
		Dim rCnt1 As Int = BANano.parseInt(rCnt) + 1
		Dim ck As String = $"${mName}_${rCnt1}_selectall"$
		UI.SetCheckedByID(ck, value)
	Next
End Sub
'check a row, 0 based
Sub SetRowSelectChecked(rowPos As Int, value As Boolean)
	Dim rowPos As Int = BANano.parseInt(rowPos) + 1
	UI.SetCheckedByID($"#${mName}_${rowPos}_selectall"$, value)
End Sub
Sub SetToolbarButtonBadge(btn As String, value As String)
	btn = UI.CleanID(btn)
	If value = "" Or value = "0" Then
		UI.Hide($"#${mName}_${btn}_badge"$)
	Else
		UI.Show($"#${mName}_${btn}_badge"$)
		UI.SetTextByID($"#${mName}_${btn}_badge_text"$, BANano.SF(value))
	End If
End Sub
Sub SetToolbarButtonBadgeColor(btn As String, value As String)
	UI.SetColorByID($"#${mName}_${btn}_badge"$, "color", "badge", value)
End Sub
'make the badge round
Sub SetToolbarButtonBadgeSize(btn As String, value As String)
	UI.SetWidthByID($"#${mName}_${btn}_badge"$, value)
	UI.SetHeightByID($"#${mName}_${btn}_badge"$, value)
End Sub
Sub SetToolbarButtonBadgeRound(btn As String)
	UI.AddClassByID($"#${mName}_${btn}_badge"$, "rounded-full")
	UI.AddClassByID($"#${mName}_${btn}_badge"$, "aspect-square")
End Sub
Sub SetToolbarButtonBadgeTextColor(btn As String, value As String)
	UI.SetTextColorByID($"#${mName}_${btn}_badge"$, value)
End Sub
Sub SetToolbarButtonTextColor(btn As String, value As String)		'ignoredeadcode
	UI.SetTextColorByID($"#${mName}_${btn}"$, value)
End Sub
'change the visibility of a button
Sub SetToolbarButtonVisible(btn As String, value As Boolean)
	If value Then
		UI.Show($"#${mName}_${btn}"$)
		UI.Show($"#${mName}_${btn}_indicator"$)
	Else
		UI.Hide($"#${mName}_${btn}"$)
		UI.Hide($"#${mName}_${btn}_indicator"$)
	End If
End Sub
'change a toolbar button color
Sub SetToolbarButtonColor(btn As String, value As String)
	UI.SetColorByID($"#${mName}_${btn}"$, "color", "btn", value)
End Sub
Sub setAddDisabled(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_add"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_add"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_add"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_add"$).RemoveAttr("disabled")
	End If
End Sub
Sub setAddLoading(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_add_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_add"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_add"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_add_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub setDeleteAllLoading(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_deleteall_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_deleteall"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_deleteall"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_deleteall_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub setSaveSingleLoading(b As Boolean)
	If b Then
		BANano.GetElement($"#${mName}_savesingle_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_savesingle"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_savesingle"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_savesingle_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub setToolbarUploadLoading(b As Boolean)
	If mElement = Null Then Return
	If b Then
		BANano.GetElement($"#${mName}_uploadtoolbar_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_uploadtoolbar"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_uploadtoolbar"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_uploadtoolbar_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub setToolbarUploadDisabled(b As Boolean)
	If mElement = Null Then Return
	If b Then
		BANano.GetElement($"#${mName}_uploadtoolbar"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_uploadtoolbar"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_uploadtoolbar"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_uploadtoolbar"$).RemoveAttr("disabled")
	End If
End Sub
Sub setDeleteSingleLoading(b As Boolean)
	If mElement = Null Then Return
	If b Then
		BANano.GetElement($"#${mName}_deletesingle_icon"$).AddClass("hidden")
		BANano.GetElement($"#${mName}_deletesingle"$).AddClass("loading")
	Else
		BANano.GetElement($"#${mName}_deletesingle"$).RemoveClass("loading")
		BANano.GetElement($"#${mName}_deletesingle_icon"$).RemoveClass("hidden")
	End If
End Sub
Sub setDeleteAllDisabled(b As Boolean)
	If mElement = Null Then Return
	If b Then
		BANano.GetElement($"#${mName}_deleteall"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_deleteall"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_deleteall"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_deleteall"$).RemoveAttr("disabled")
	End If
End Sub
Sub setSaveSingleDisabled(b As Boolean)
	If mElement = Null Then Return
	If b Then
		BANano.GetElement($"#${mName}_savesingle"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_savesingle"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_savesingle"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_savesingle"$).RemoveAttr("disabled")
	End If
End Sub
Sub setDeleteSingleDisabled(b As Boolean)
	If mElement = Null Then Return
	If b Then
		BANano.GetElement($"#${mName}_deletesingle"$).AddClass("btn-disabled")
		BANano.GetElement($"#${mName}_deletesingle"$).SetAttr("disabled", "disabled")
	Else
		BANano.GetElement($"#${mName}_deletesingle"$).RemoveClass("btn-disabled")
		BANano.GetElement($"#${mName}_deletesingle"$).RemoveAttr("disabled")
	End If
End Sub

Sub setToolbarActions(b As Boolean)
	If mElement = Null Then Return
	If BANano.Exists($"#${mName}_actions"$) = False Then Return
	If b = True Then
		BANano.GetElement($"#${mName}_actions"$).RemoveClass("hidden")
	Else
		BANano.GetElement($"#${mName}_actions"$).AddClass("hidden")
	End If
End Sub
Sub ClearToolbarActions
	If BANano.Exists($"#${mName}_actions"$) = False Then Return
	BANano.GetElement($"#${mName}_actions"$).Empty
End Sub
Sub setItemsPerPage(i As String)
	CustProps.put("ItemsPerPage", i)
	iItemsPerPage = UI.CInt(i)
End Sub
'change the title of the table
Sub setTitle(t As String)
	sTitle = t
	CustProps.put("Title", t)
	If mElement = Null Then Return
	BANano.GetElement($"#${mName}_title"$).SetText(BANano.SF(t))
End Sub

Sub SetPrevPageTooltip(tooltip As String, color As String, position As String)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("prevpage", tooltip, color, position)
End Sub

Sub SetNextPageTooltip(tooltip As String, color As String, position As String)
	If tooltip = "" Then Return
	SetToolbarButtonToolTip("nextpage", tooltip, color, position)
End Sub

'the table has pagination
Sub setPagination(b As Boolean)				'ignoredeadcode
	CustProps.put("Pagination", b)
	If b = False Then Return
	If mElement = Null Then Return
	AddToolbarActionButtonIcon("prevpage", "./assets/chevron-left-solid.svg", "primary", "#ffffff")
	AddToolbarActionButtonIcon("nextpage", "./assets/chevron-right-solid.svg", "primary", "#ffffff")
	UI.OnEventByID($"${mName}_prevpage"$, "click", Me, "ShowPreviousPage")
	UI.OnEventByID($"${mName}_nextpage"$, "click", Me, "ShowNextPage")
End Sub
Sub getToolBarNextPageID As String
	Return $"${mName}_nextpage"$
End Sub
Sub getToolBarPrevPageID As String
	Return $"${mName}_prevpage"$
End Sub

private Sub SearchClear(e As BANanoEvent)
	e.PreventDefault
	PagePause
	BANano.await(ClearRows)
	BANano.await(SetItemsPaginate(Originals))
	PageResume
End Sub

private Sub SearchClick(e As BANanoEvent)
	e.PreventDefault
	Dim sfind As String = BANano.getelement($"#${mName}_search"$).GetValue
	BANano.Await(Find(sfind))
End Sub

Sub PagePause
	UI.ShowLoader
End Sub

Sub PageResume
	UI.HideLoader
End Sub

private Sub SearchInternal(e As BANanoEvent)		'ignore
	Dim sfind As String = BANano.getelement($"#${mName}_search"$).GetValue
	BANano.Await(Find(sfind))
End Sub

'clear the headings
Sub ClearHeadings
	UI.ClearByID($"${mName}_theadtr"$)
	Columns.Initialize
End Sub

Sub ClearFooter			'ignoredeadcode
	UI.ClearByID($"${mName}_footr"$)
End Sub

'clear the visible rows
Sub ClearRows			'ignoredeadcode
	Rows.Initialize
	DPValue.Initialize
	datepickers.Initialize
	BANano.GetElement($"#${mName}_body"$).Empty
	'clear footer
	For Each k As String In Columns.Keys
		If BANano.Exists($"#${mName}_${k}_tf"$) Then BANano.GetElement($"#${mName}_${k}_tf"$).SetText("")
	Next
End Sub

'add the select all column
Sub AddColumnSelectAll			'ignoredeadcode
	bSelectAll = True
	Dim name As String = "selectall"
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = ""
	'
	Dim hr As String = $"<th id="${mName}_th"  class=" w-[5rem]"><label id="${mName}_selectalllabel"><input id="${mName}_selectall" type="checkbox" class="checkbox"></check></label></th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_tf_${name}"></td>"$)
	Dim el As BANanoElement
	el.Initialize($"#${mName}_selectall"$)
	el.HandleEvents("change", Me, "HandleSelectAll")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", "selectall")
End Sub
Sub getSelectAllID As String
	Return $"${mName}_selectalllabel"$
End Sub
Sub setSingleRowSelect(b As Boolean)
	If b Then
		UI.Hide($"${mName}_selectalllabel"$)
	Else
		UI.Show($"${mName}_selectalllabel"$)
	End If
End Sub
'we use this to get the id of the clicked item
private Sub HandleSelectAll(event As BANanoEvent)		'ignoredeadcode
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src <> "" Then
		Dim b As Boolean = BANano.GetElement($"#${src}"$).GetChecked
		Dim rTot As Int = Rows.Size - 1
		Dim rCnt As Int
		For rCnt = 0 To rTot
			Dim rCnt1 As Int = BANano.parseInt(rCnt) + 1
			Dim ck As String = $"${mName}_${rCnt1}_selectall"$
			UI.SetCheckedByID(ck, b)
		Next
		BANano.CallSub(mCallBack, mName & "_selectall", Array(b))
	End If
End Sub
'get all checked records
Sub GetAllChecked(Status As Boolean) As List
	Dim nl As List
	nl.Initialize
	Dim rTot As Int = Rows.Size - 1
	Dim rCnt As Int
	For rCnt = 0 To rTot
		Dim rCnt1 As Int = BANano.parseInt(rCnt) + 1
		Dim ck As String = $"${mName}_${rCnt1}_selectall"$
		Dim b As Boolean = UI.GetCheckedByID(ck)
		If b = Status Then
			Dim r As Map = GetRow(rCnt)
			nl.Add(r)
		End If
	Next
	Return nl
End Sub
Sub GetColumnPosition(colName As String) As Int
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return -1
	Dim colTot As Int = Columns.Size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim xcolName As String = Columns.GetKeyAt(colCnt)
		If xcolName = colName Then
			Return colCnt
		End If
	Next
	Return -1
End Sub
'set colun alignment for multiple columns
Sub SetColumnAlignMultiple(salign As String, colNames As List)
	For Each col As String In colNames
		SetColumnAlign(col, salign)
	Next
End Sub
Sub SetColumnAlign(colName As String, salign As String)
	colName = UI.CleanID(colName)
	salign = salign.ToLowerCase
	If Columns.ContainsKey(colName) = False Then Return
	Dim nc As TableColumn = Columns.Get(colName)
	Dim colPos As Int = GetColumnPosition(colName)
	colPos = BANano.parseInt(colPos) + 1
	'if we have columns already
	Dim rKey As String = $"#${mName}_body tr > :nth-child(${colPos})"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	Select Case salign
		Case "left", "l"
			BANano.GetElement($"#${mName}_${colName}_th"$).AddClass("text-left")
			BANano.GetElement($"#${mName}_${colName}_tf"$).AddClass("text-left")
			nc.alignment = "left"
			Columns.Put(colName, nc)
			rowElement.AddClass("text-left")
		Case "center", "c"
			BANano.GetElement($"#${mName}_${colName}_th"$).AddClass("text-center")
			BANano.GetElement($"#${mName}_${colName}_tf"$).AddClass("text-center")
			nc.alignment = "center"
			Columns.Put(colName, nc)
			rowElement.AddClass("text-center")
		Case "right", "r"
			BANano.GetElement($"#${mName}_${colName}_th"$).AddClass("text-right")
			BANano.GetElement($"#${mName}_${colName}_tf"$).AddClass("text-right")
			nc.alignment = "right"
			Columns.Put(colName, nc)
			rowElement.AddClass("text-right")
	End Select
End Sub
Sub getColumnID(colName As String) As String
	colName = UI.cleanid(colName)
	Dim xColName As String = $"${mName}_${colName}_th"$
	If BANano.Exists($"#${xColName}"$) Then
		Return xColName
	Else
		Return ""
	End If
End Sub
Sub getFooterColumnID(colName As String) As String
	colName = UI.cleanid(colName)
	Dim xColName As String = $"${mName}_${colName}_tf"$
	If BANano.Exists($"#${xColName}"$) Then
		Return xColName
	Else
		Return ""
	End If
End Sub
Sub getTitleID As String
	Return $"${mName}title"$
End Sub
'right align these columns
Sub RightAlignColumns(colNames As List)
	For Each col As String In colNames
		col = UI.CleanID(col)
		If Columns.ContainsKey(col) = False Then Continue
		'Dim mstyle As Map = CreateMap()
		'mstyle.Put("text-align", "right")
		'BANano.GetElement($"#${mName}_${col}_th"$).SetStyle(BANano.ToJson(mstyle))
		'BANano.GetElement($"#${mName}_${col}_tf"$).SetStyle(BANano.ToJson(mstyle))
		BANano.GetElement($"#${mName}_${col}_th"$).AddClass("text-right")
		BANano.GetElement($"#${mName}_${col}_tf"$).AddClass("text-right")
		Dim nc As TableColumn = Columns.Get(col)
		nc.alignment = "right"
		Columns.Put(col, nc)
	Next
End Sub
'center align these columns
Sub CenterAlignColumns(colNames As List)
	For Each col As String In colNames
		col = UI.CleanID(col)
		If Columns.ContainsKey(col) = False Then Continue
		'Dim mstyle As Map = CreateMap()
		'mstyle.Put("text-align", "center")
		'BANano.GetElement($"#${mName}_${col}_th"$).SetStyle(BANano.ToJson(mstyle))
		'BANano.GetElement($"#${mName}_${col}_tf"$).SetStyle(BANano.ToJson(mstyle))
		BANano.GetElement($"#${mName}_${col}_th"$).AddClass("text-center")
		BANano.GetElement($"#${mName}_${col}_tf"$).AddClass("text-center")
		Dim nc As TableColumn = Columns.Get(col)
		nc.alignment = "center"
		Columns.Put(col, nc)
	Next
End Sub
'add a normal column
'<code>
'tbl.AddColumn("attrname", "Name")
'</code>
Sub AddColumn(name As String, title As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	Columns.Put(name, nc)
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub

'get the first visible column of the table
Sub FirstColumnName As String
	If Columns.Size = 0 Then Return ""
	Dim fColName As String = ""
	Dim colTot As Int = Columns.Size - 1
	Dim colCnt As Int = 0
	For colCnt = 0 To colTot
		Dim nc As TableColumn = Columns.GetValueAt(colCnt)
		If nc.visible Then
			fColName = nc.name
			Exit
		End If
	Next
	Return fColName
End Sub
'add a normal column
'<code>
'tbl.AddColumnPlaceHolder("attrname", "Name")
'</code>
Sub AddColumnPlaceHolder(name As String, title As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "placeholder"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	Columns.Put(name, nc)
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub
private Sub HandleHeaderClick(event As BANanoEvent)     'ignoredeadcode
	'#Event: HeaderClick (HeaderName As String, Asc As Boolean)
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'id="${mName}_${name}_th"
	Dim colName As String = UI.MvField(src, 2, "_")
	Dim sasc As String = BANano.GetElement($"#${src}"$).GetData("order")
	sasc = UI.CStr(sasc)
	Dim r As Boolean = False
	Select Case sasc
		Case "", "a"
			r = False
			BANano.GetElement($"#${src}"$).SetData("order", "d")
		Case "d"
			r = True
			BANano.GetElement($"#${src}"$).SetData("order", "a")
	End Select
	If SubExists(mCallBack, $"${mName}_HeaderClick"$) Then
		BANano.CallSub(mCallBack, mName & "_HeaderClick", Array(colName, r))
	End If
End Sub
'set column visibility for multiple columns
Sub SetColumnVisibleMultiple(Status As Boolean, colNames As List)
	For Each col As String In colNames
		SetColumnVisible(col, Status)
	Next
End Sub
'show / hide columns at runtime
Sub SetColumnVisible(colName As String, Status As Boolean)
	If Columns.ContainsKey(colName) = False Then Return
	Dim nc As TableColumn = Columns.Get(colName)
	nc.visible = Status
	Columns.Put(colName, nc)
	If Status Then
		UI.Show($"${mName}_${colName}_th"$)
		UI.Show($"${mName}_${colName}_tf"$)
	Else
		UI.Hide($"${mName}_${colName}_th"$)
		UI.Hide($"${mName}_${colName}_tf"$)
	End If
	If bHasFilter Then SetColumnVisibleHeaderRow("filters", colName, Status)
	'hide rows
	Dim rTot As Int = Rows.Size - 1
	Dim rCnt As Int
	For rCnt = 0 To rTot
		Dim rCnt1 As Int = BANano.parseInt(rCnt) + 1
		Dim ck As String = $"${mName}_${rCnt1}_${colName}"$
		If Status Then
			UI.Show($"${ck}"$)
		Else
			UI.Hide($"${ck}"$)
		End If
	Next
End Sub

Sub setHasFilter(b As Boolean)			'ignoredeadcode
	bHasFilter = b
	CustProps.Put("HasFilter", b)
	If b = False Then Return
	AddToolbarActionButtonIcon("filter", "./assets/filter-solid.svg", "#ad7279", "#ffffff")
End Sub

Sub getHasFilter As Boolean
	Return bHasFilter
End Sub

private Sub SetColumnVisibleHeaderRow(rowNumber As String, name As String, b As Boolean)
	'parent heading
	Dim rkey As String = $"${mName}_theadtr_${rowNumber}_${name}"$
	If b Then
		UI.Show($"${rkey}"$)
	Else
		UI.Hide($"${rkey}"$)
	End If
End Sub

Sub SetColumnTitle(colName As String, title As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.title = title
		Columns.Put(colName, nc)
		If BANano.Exists($"#${mName}_${colName}_th"$) Then
			BANano.GetElement($"#${mName}_${colName}_th"$).SetText(BANano.SF(title))
		End If
	End If
End Sub

Sub SetColumnFileSize(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "filesize"
		nc.alignment = "right"
		Columns.Put(colName, nc)
	End If
End Sub

Sub AddColumnFileSize(name As String, title As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "filesize"
	nc.alignment = "right"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnMoney(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "money"
		nc.alignment = "right"
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnMoney("gross", "Gross")
'</code>
Sub AddColumnMoney(name As String, title As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "money"
	nc.alignment = "right"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnDate(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "date"
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnDate("trandate", "Date")
'</code>
Sub AddColumnDate(name As String, title As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "date"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tbl.AddColumnDateTime("trandate", "Date")
'</code>
Sub AddColumnDateTime(name As String, title As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "datetime"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnDateTime(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "datetime"
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnThousand(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "thousand"
		nc.alignment = "right"
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnThousand("population", "Population")
'</code>
Sub AddColumnThousand(name As String, title As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "thousand"
	nc.alignment = "right"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnAction(colName As String, iconName As String, iconColor As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "action"
		nc.width = "5rem"
		nc.alignment = "center"
		nc.icon = iconName
		nc.color = iconColor
		Columns.Put(colName, nc)
	End If
End Sub

Sub SetColumnFileAction(colName As String, iconName As String, iconColor As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "fileaction"
		nc.width = "5rem"
		nc.alignment = "center"
		nc.icon = iconName
		nc.color = iconColor
		Columns.Put(colName, nc)
	End If
End Sub

Sub SetColumnMenu(colName As String, iconName As String, iconColor As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "menu"
		nc.width = "5rem"
		nc.alignment = "center"
		nc.icon = iconName
		nc.color = iconColor
		Columns.Put(colName, nc)
	End If
End Sub
'add a action column
'<code>
'tbl.AddColumnAction("btnstart", "Start/Stop", "fa-solid fa-play", app.COLOR_FUCHSIA)
'</code>
Sub AddColumnAction(name As String, title As String, icon As String, color As String, textColor As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "action"
	nc.icon = icon
	nc.color = color
	nc.width = "5rem"
	nc.alignment = "center"
	nc.TextColor = textColor
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub

'add a action column
'<code>
'tbl.AddColumnFileAction("btnstart", "Start/Stop", "fa-solid fa-play", app.COLOR_FUCHSIA)
'</code>
Sub AddColumnFileAction(name As String, title As String, icon As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "fileaction"
	nc.icon = icon
	nc.color = color
	nc.width = "5rem"
	nc.alignment = "center"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub

'<code>
'tbl.AddColumnDropDown("menu", "Menu", "fa-solid fa-ellipsis-vertical", "#3f51b5", CreateMap("edit":"Edit","delete":"Delete","clone":"Clone","print":"Print"))
'</code>
Sub AddColumnDropDown(name As String, title As String, icon As String, color As String, options As Map)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "menu"
	nc.icon = icon
	nc.color = color
	nc.width = "5rem"
	nc.alignment = "center"
	nc.options = options
	nc.OptionIcons = CreateMap()
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub
'<code>
'tbl.AddColumnDropDownIcon("menu", "Menu", "fa-solid fa-ellipsis-vertical", "#3f51b5", CreateMap("edit":"Edit","delete":"Delete","clone":"Clone","print":"Print"), CreateMap("edit":"fa-solid fa-pencil","delete":"fa-solid fa-trash","clone":"fa-solid fa-clone","print":"fa-solid fa-print"))
'</code>
Sub AddColumnDropDownIcon(name As String, title As String, icon As String, color As String, options As Map, OptionIcons As Map)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "menu"
	nc.icon = icon
	nc.color = color
	nc.width = "5rem"
	nc.alignment = "center"
	nc.options = options
	nc.OptionIcons = OptionIcons
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub
Sub SetColumnMinMaxWidth(colName As String, minwidth As String, maxwidth As String)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		nc.minwidth = minwidth
		nc.maxwidth = maxwidth
		Columns.Put(colName, nc)
	End If
End Sub
'
'the default column delimiter is ; for avatar group, set it to whatever you want
Sub SetColumnDelimiter(colName As String, delimiter As String)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		nc.Delimiter = delimiter
		Columns.Put(colName, nc)
	End If
End Sub
'
'When ever you are adding a row on the table, first "compute the value" of the "colName" column by calling the "subName" sub routine.
'<code>
'tbl.SetColumnComputeValue("agroup", "ComputeAgroupValue")
'Sub ComputeAgroupValue(item As Map) As String
''get the amount for this row
'dim samount As String = item.get("amount")
'dim sqta as String = item.get("qta")
''convert to double
'Dim totalx As Double = UI.CDbl(samount) * UI.CInt(sqta)
'totalx = UI.CDbl(totalx)
'return totalx
'End Sub
'</code>
Sub SetColumnComputeValue(colName As String, subName As String)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		nc.ComputeValue = subName
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.SetColumnComputeRing("avatar1", "ComputeAvatarRing")
'Sub ComputeAvatarRing(item As Map) As Boolean
''set ring color - compulsory
'item.put("ringcolor", "#3333cc")
''return if row has ring
'return True
'End Sub
'</code>
Sub SetColumnComputeRing(colName As String, subName As String)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		nc.ComputeRing = subName
		Columns.Put(colName, nc)
	End If
End Sub
'When ever you are adding a row on the table, first "compute the color" of the "colName" column by calling the "subName" sub routine.
'The color here affects the component being displayed
'<code>
'tbl.SetColumnComputeBackgroundColor("agroup", "ComputeStatus")
'Sub ComputeStatus(item As Map) As String			'ignore
'	Dim sstatus As String = item.Get("status")
'	Select Case sstatus
'	Case "Tentative"
'		Return "#FF9900"
'	Case "Confirmed"
'		Return "#1D6295"
'	Case "Scheduled"
'		Return "#1D6295"
'	Case "In Process"
'		Return "#4A9B82"
'	Case "Completed"
'		Return "#316857"
'	Case "Closed"
'		Return "#253848"
'	End Select
'End Sub
'</code>
Sub SetColumnComputeBackgroundColor(colName As String, subName As String)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		nc.ComputeBackgroundColor = subName
		Columns.Put(colName, nc)
	End If
End Sub
'When ever you are adding a row on the table, first "compute the color" of the "colName" column by calling the "subName" sub routine.
'The color here affects the component being displayed
'<code>
'tbl.SetColumnComputeColor("agroup", "ComputeStatus")
'Sub ComputeStatus(item As Map) As String			'ignore
'	Dim sstatus As String = item.Get("status")
'	Select Case sstatus
'	Case "Tentative"
'		Return "#FF9900"
'	Case "Confirmed"
'		Return "#1D6295"
'	Case "Scheduled"
'		Return "#1D6295"
'	Case "In Process"
'		Return "#4A9B82"
'	Case "Completed"
'		Return "#316857"
'	Case "Closed"
'		Return "#253848"
'	End Select
'End Sub
'</code>
Sub SetColumnComputeColor(colName As String, subName As String)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		nc.ComputeColor = subName
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnComputeTextColor(colName As String, subName As String)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		nc.ComputeTextColor = subName
		Columns.Put(colName, nc)
	End If
End Sub
'When ever you are adding a row on a table, first "compute the class" of the "colName" column by calling the "subName" sub routine.
'This can be used to change the text color of that column depending on some value
'<code>
'tbl.SetColumnComputeClass("agroup", "ComputeAgroupClass")
'Sub ComputeAgroupClass(item As Map) As String
''get the amount for this row
'dim samount As String = item.get("amount")
''convert to double
'dim iamount As Int = UI.CDbl(samount)
'if iamount < 0 then
'the text color should be red if amount < 0
'return "text-red"
'else
'the text color should be green if amount > 0
'return "text-green"
'end if
'End Sub
'</code>
Sub SetColumnComputeClass(colName As String, subName As String)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		nc.ComputeClass = subName
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnClass(colName As String, className As String)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		Dim cclasses As List = nc.classes
		If cclasses.IndexOf(className) = -1 Then
			cclasses.Add(className)
		End If
		nc.classes = cclasses
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnWrap(colName As String)
	SetColumnClass(colName, "whitespace-normal")
	SetColumnClass(colName, "break-all")
End Sub
'the text in the column should be wrapped
Sub SetColumnWrapText(cols As List)
	For Each col As String In cols
		AddColumnClass(col, Array("whitespace-normal", "break-all"))
	Next
End Sub
'<code>
'tbl.AddColumnClass("defaultvalue", Array("whitespace-normal"))
'</code>
Sub AddColumnClass(colName As String, classes As List)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn
		nc = Columns.Get(colName)
		Dim cclasses As List = nc.classes
		For Each c As String In classes
			If cclasses.IndexOf(c) = -1 Then
				cclasses.Add(c)
			End If
		Next
		nc.classes = cclasses
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnLink(colName As String, subtitle As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "link"
		nc.subtitle = subtitle
		nc.color = color
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnLink("link", "Link", "link", app.color_primary)
'</code>
Sub AddColumnLink(name As String, title As String, subtitle As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "link"
	nc.subtitle = subtitle
	nc.color = color
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnClickLink(colName As String, subtitle As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "clicklink"
		nc.subtitle = subtitle
		nc.color = color
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnClickLink("clicklink", "Aisle", "clicklink", app.color_neutral)
'</code>
Sub AddColumnClickLink(name As String, title As String, subtitle As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "clicklink"
	nc.subtitle = subtitle
	nc.color = color
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnEmail(colName As String, subtitle As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "email"
		nc.color = color
		nc.subtitle = subtitle
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnWebsite(colName As String, subtitle As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "website"
		nc.color = color
		nc.subtitle = subtitle
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnEmail("email", "Email", "name", app.color_accent)
'</code>
Sub AddColumnEmail(name As String, title As String, subtitle As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "email"
	nc.color = color
	nc.subtitle = subtitle
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'
'<code>
'tbl.AddColumnWebsite("website", "Website", "name", app.color_accent)
'</code>
Sub AddColumnWebsite(name As String, title As String, subtitle As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "website"
	nc.color = color
	nc.subtitle = subtitle
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnIcon(colName As String, ssize As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "icon"
		nc.color = color
		nc.size = ssize
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnIcon("sm", "Social Media", app.SIZE_LG, "item.color")
'</code>
Sub AddColumnIcon(name As String, title As String, ssize As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "icon"
	nc.color = color
	nc.size = ssize
	nc.icon = $"item.${name}"$
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub

Sub SetColumnButton(colName As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "button"
		nc.alignment = "center"
		nc.color = color
		Columns.Put(colName, nc)
	End If
End Sub

'set Alpha Chooser Column
Sub setAlphaChooserColumn(s As String)
	sAlphaChooserColumn = s
	CustProps.put("AlphaChooserColumn", s)
End Sub

'set Alpha Chooser Height
Sub setAlphaChooserHeight(s As String)
	sAlphaChooserHeight = s
	CustProps.put("AlphaChooserHeight", s)
End Sub
'set Has Alpha Chooser
Sub setHasAlphaChooser(b As Boolean)
	bHasAlphaChooser = b
	CustProps.put("HasAlphaChooser", b)
End Sub
'get Alpha Chooser Column
Sub getAlphaChooserColumn As String
	Return sAlphaChooserColumn
End Sub
'get Alpha Chooser Height
Sub getAlphaChooserHeight As String
	Return sAlphaChooserHeight
End Sub
'get Has Alpha Chooser
Sub getHasAlphaChooser As Boolean
	Return bHasAlphaChooser
End Sub

'set a number of columns to be summed etc
Sub SetColumnsSumValues(b As Boolean, cols As List)
	For Each k As String In cols
		SetColumnSumValues(k, b)
	Next
End Sub

'mark this column to be summed up
Sub SetColumnSumValues(colName As String, b As Boolean)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.SumValues = b
		Columns.Put(colName, nc)
	End If
End Sub

'add a button column
'<code>
'tb4.AddColumnButton("btnload", "Process", app.COLOR_INDIGO)
'</code>
Sub AddColumnButton(name As String, title As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "button"
	nc.color = color
	nc.alignment = "center"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub
Sub SetColumnBadge(colName As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "badge"
		nc.color = color
		nc.height = "8"
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnBackgroundColor(colName As String, color As String)
	colName = UI.CleanID(colName)
	Dim tcolor As String = UI.FixColor("bg", color)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.BGColor = tcolor
		Columns.Put(colName, nc)
	End If
End Sub
'add a badge column
'<code>
'tbl.AddColumnBadge("name", "Category", "item.color")
'</code>
Sub AddColumnBadge(name As String, title As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "badge"
	nc.color = color
	nc.height = "8"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnRating(colName As String, ssize As Int, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "rating"
		nc.color = color
		nc.size = ssize
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnRating("rate", "Satisfaction", 3, "item.color")
'</code>
Sub AddColumnRating(name As String, title As String, ssize As Int, color As String, mask As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "rating"
	nc.color = color
	nc.size = ssize
	nc.mask = UI.FixMask(mask)
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnRadialProgress(colName As String, ssize As String, color As String, suffix As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "radial"
		nc.color = color
		nc.size = ssize
		nc.suffix = suffix
		Columns.Put(colName, nc)
	End If
End Sub
'add a radial progess
'<code>
'tb4.AddColumnRadialProgress("progress", "Progress", "3.5rem", "item.color", "%")
'</code>
Sub AddColumnRadialProgress(name As String, title As String, ssize As String, color As String, suffix As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "radial"
	nc.color = color
	nc.size = ssize
	nc.suffix = suffix
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnProgress(colName As String, width As Int, maxvalue As Int, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "progress"
		nc.color = color
		nc.width = width
		nc.maxvalue = maxvalue
		Columns.Put(colName, nc)
	End If
End Sub
'add a progess bar
'<code>
'tb2.AddColumnProgress("progress", "Completed", 40, 100, "item.color")
'</code>
Sub AddColumnProgress(name As String, title As String, width As Int, maxvalue As Int, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "progress"
	nc.color = color
	nc.width = width
	nc.maxvalue = maxvalue
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnRange(colName As String, maxvalue As Int, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "range"
		nc.color = color
		nc.maxvalue = maxvalue
		Columns.Put(colName, nc)
	End If
End Sub
'add a range bar
'<code>
'tb4.AddColumnRange("hours", "Hours", 8, app.COLOR_ACCENT)
'</code>
Sub AddColumnRange(name As String, title As String, maxvalue As Int, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "range"
	nc.color = color
	nc.maxvalue = maxvalue
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnCheckBox(colName As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "checkbox"
		nc.width = "5rem"
		nc.color = color
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnSelect(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "select"
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnOptions(colname As String, options As Map)
	colname = UI.CleanID(colname)
	If Columns.ContainsKey(colname) Then
		Dim nc As TableColumn = Columns.Get(colname)
		nc.options = options
		Columns.Put(colname, nc)
	End If
End Sub
Sub SetColumnRadioGroup(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "radiogroup"
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnReadOnly(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.readonly = True
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnCheckBox("active", "Active", app.COLOR_PRIMARY, False)
'</code>
Sub AddColumnCheckBox(name As String, title As String, color As String, readOnly As Boolean)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "checkbox"
	nc.color = color
	nc.readonly = readOnly
	nc.width = "5rem"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="text-center cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'Dim countries As List
'countries.Initialize
'countries.Add("South Africa")
'countries.Add("USA")
'countries.Add("Nigeria")
'Dim options As Map = UI.ListToSelectOptions(countries)
'tbl.AddColumnSelect("country", "Country", False, True, options)
'</code>
Sub AddColumnSelect(name As String, title As String, readOnly As Boolean, bAddNothingSelected As Boolean, options As Map)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "select"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	nc.NothingSelected = bAddNothingSelected
	nc.options = options
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tbl.AddColumnSelectFromList("country", "Country", False, True, Array("South Africa","USA","Nigeria"))
'</code>
Sub AddColumnSelectFromList(name As String, title As String, readOnly As Boolean, bAddNothingSelected As Boolean, options As List)
	Dim optionsM As Map = UI.ListToSelectOptions(options)
	AddColumnSelect(name, title, readOnly, bAddNothingSelected, optionsM)
End Sub
Sub SetColumnOptionsFromList(colname As String, options As List)
	Dim optionsM As Map = UI.ListToSelectOptions(options)
	SetColumnOptions(colname, optionsM)
End Sub
Sub SetColumnOptionsFromListSort(colname As String, options As List)
	Dim optionsM As Map = UI.ListToSelectOptionsSort(options)
	SetColumnOptions(colname, optionsM)
End Sub
Sub AddColumnSelectFromListSort(name As String, title As String, readOnly As Boolean, bAddNothingSelected As Boolean, options As List)
	Dim optionsM As Map = UI.ListToSelectOptionsSort(options)
	AddColumnSelect(name, title, readOnly, bAddNothingSelected, optionsM)
End Sub
Sub AddColumnRadioGroupFromList(name As String, title As String, readOnly As Boolean, color As String, options As List)
	Dim optionsM As Map = UI.ListToSelectOptions(options)
	AddColumnRadioGroup(name, title, readOnly, color, optionsM)
End Sub
'<code>
'tb4.AddColumnRadioGroup("gender", "Gender", False, app.COLOR_PRIMARY, CreateMap("male":"Male","female":"Female"))
'</code>
Sub AddColumnRadioGroup(name As String, title As String, readOnly As Boolean, color As String, options As Map)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "radiogroup"
	nc.color = color
	nc.readonly = readOnly
	nc.width = ""
	nc.options = options
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnTextColor(colName As String, color As String)
	Dim tcolor As String = UI.FixColor("text", color)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.TextColor = tcolor
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnTextBox(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "textbox"
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnTelephone(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "telephone"
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnTextBox("email", "Email", False)
'</code>
Sub AddColumnTextBox(name As String, title As String, readOnly As Boolean)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "textbox"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tbl.AddColumnTelephone("tel", "Telephone", False)
'</code>
Sub AddColumnTelephone(name As String, title As String, readOnly As Boolean)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "telephone"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnTextBoxGroup(colName As String, Prefix As String, PrependIcon As String, Suffix As String, AppendIcon As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "textboxgroup"
		nc.Prefix = Prefix
		nc.PrependIcon = PrependIcon
		nc.suffix = Suffix
		nc.AppendIcon = AppendIcon
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnSelectGroup(colName As String, Prefix As String, PrependIcon As String, Suffix As String, AppendIcon As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "selectgroup"
		nc.Prefix = Prefix
		nc.PrependIcon = PrependIcon
		nc.suffix = Suffix
		nc.AppendIcon = AppendIcon
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnPasswordGroup(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "passwordgroup"
		nc.AppendIcon = "./assets/eye-solid.svg"
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tb4.AddColumnTextBoxGroup("id", "Price", True, "$", "", "00", "")
'tb4.SetColumnAlign("id", "r")
'</code>
Sub AddColumnTextBoxGroup(name As String, title As String, readOnly As Boolean, Prefix As String, PrependIcon As String, Suffix As String, AppendIcon As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "textboxgroup"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	nc.Prefix = Prefix
	nc.PrependIcon = PrependIcon
	nc.suffix = Suffix
	nc.AppendIcon = AppendIcon
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tb4.AddColumnSelectGroup("country", "County", False, True, CreateMap(), "", "fa-brands fa-linkedin", "", "fa-regular fa-flag")
'banano.Await(tb4.SetColumnItemsFromList("country", Array("Afghanistan", "Albania", "Australia", "USA", "Brazil", "Chile", "Guinea", "South Africa", "Nigeria")))
'</code>
Sub AddColumnSelectGroup(name As String, title As String, readOnly As Boolean, bAddNothingSelected As Boolean, options As Map, Prefix As String, PrependIcon As String, Suffix As String, AppendIcon As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "selectgroup"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	nc.Prefix = Prefix
	nc.PrependIcon = PrependIcon
	nc.suffix = Suffix
	nc.AppendIcon = AppendIcon
	nc.NothingSelected = bAddNothingSelected
	nc.options = options
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tb4.AddColumnPasswordGroup("name", "Password", False)
'Private Sub tb4_PasswordPrependClick (Row As Int, Column As String, item As Map)
'End Sub
'Private Sub tb4_PasswordAppendClick (Row As Int, Column As String, item As Map)
'End Sub
'</code>
Sub AddColumnPasswordGroup(name As String, title As String, readOnly As Boolean)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "passwordgroup"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	nc.AppendIcon = "./assets/eye-solid.svg"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tb4.AddColumnDialer("clicklink", "Qty", False, 0, 1, 100)
'</code>
Sub AddColumnDialer(name As String, title As String, readOnly As Boolean, minValue As Int, stepValue As Int, maxValue As Int)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "dialer"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	nc.maxvalue = maxValue
	nc.StepValue = stepValue
	nc.MinValue = minValue
	nc.PrependIcon = "./assets/minus-solid.svg"
	nc.AppendIcon = "./assets/plus-solid.svg"
	nc.alignment = "center"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnTextDialer(colName As String, minValue As Int, stepValue As Int, maxValue As Int)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "dialer"
		nc.PrependIcon = "./assets/minus-solid.svg"
		nc.AppendIcon = "./assets/plus-solid.svg"
		nc.alignment = "center"
		nc.maxvalue = maxValue
		nc.StepValue = stepValue
		nc.MinValue = minValue
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnPassword("email", "Email", False)
'</code>
Sub AddColumnPassword(name As String, title As String, readOnly As Boolean)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "password"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnPassword(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "password"
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnNumber(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "number"
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnNumber("email", "Email", False)
'</code>
Sub AddColumnNumber(name As String, title As String, readOnly As Boolean)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "number"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnFileInput(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "file"
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnFileInput("product", "Choose Product")
'</code>
Sub AddColumnFileInput(name As String, title As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "file"
	nc.color = ""
	nc.width = ""
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub
'<code>
'tbl.AddColumnFileInputProgressCamCorder("pfile", "File Progress", "lg", "40px", "secondary")
'</code>
Sub AddColumnFileInputProgressCamCorder(name As String, title As String, xButtonSize As String, xProgressSize As String, xColor As String)
	name = name.ToLowerCase
	AddColumnFileInputProgress(name, title, xButtonSize, xProgressSize, "fa-solid fa-video", xColor)
	Dim nc As TableColumn = Columns.Get(name)
	nc.accept = "video/*;capture=camcorder"
	nc.capture = "environment"
	Columns.Put(name, nc)
End Sub
'<code>
'tbl.AddColumnFileInputProgressCamera("pfile", "File Progress", "lg", "40px", "secondary")
'</code>
Sub AddColumnFileInputProgressCamera(name As String, title As String, xButtonSize As String, xProgressSize As String, xColor As String)
	name = name.ToLowerCase
	AddColumnFileInputProgress(name, title, xButtonSize, xProgressSize, "fa-solid fa-camera", xColor)
	Dim nc As TableColumn = Columns.Get(name)
	nc.accept = "image/*;capture=camera"
	nc.capture = "environment"
	Columns.Put(name, nc)
End Sub
'<code>
'tbl.AddColumnFileInputProgressMicrophone("pfile", "File Progress", "lg", "40px", "secondary")
'</code>
Sub AddColumnFileInputProgressMicrophone(name As String, title As String, xButtonSize As String, xProgressSize As String, xColor As String)
	name = name.ToLowerCase
	AddColumnFileInputProgress(name, title, xButtonSize, xProgressSize, "fa-solid fa-microphone", xColor)
	Dim nc As TableColumn = Columns.Get(name)
	nc.accept = "audio/*;capture=microphone"
	Columns.Put(name, nc)
End Sub
'<code>
'tbl.AddColumnFileInputProgress("pfile", "File Progress", "lg", "40px", "fa-solid fa-arrow-up-from-bracket", "secondary")
'</code>
Sub AddColumnFileInputProgress(name As String, title As String, xButtonSize As String, xProgressSize As String, xIcon As String, xColor As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "fileinputprogress"
	nc.color = xColor
	nc.width = xProgressSize
	nc.Size = xButtonSize
	nc.icon = xIcon
	nc.alignment = "center"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub
Sub SetColumnDatePicker(colName As String, dateFormat As String, altFormat As String, brange As Boolean, bmultiple As Boolean, bNoCalendar As Boolean)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "datepicker"
		nc.dateFormat = dateFormat
		nc.altFormat = altFormat
		nc.range = brange
		nc.multiple = bmultiple
		nc.noCalendar = bNoCalendar
		nc.Locale = "en"
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnDateTimePicker(colName As String, dateFormat As String, altFormat As String, slocale As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "datetimepicker"
		nc.dateFormat = dateFormat
		nc.altFormat = altFormat
		nc.Locale = slocale
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tb4.AddColumnDatePicker("dob", "Date of Birth", False, "Y-m-d H:i", "F j, Y H:i", False, False, False)
'</code>
Sub AddColumnDatePicker(name As String, title As String, readOnly As Boolean, dateFormat As String, altFormat As String, brange As Boolean, bmultiple As Boolean, bNoCalendar As Boolean, locale As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "datepicker"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	nc.dateFormat = dateFormat
	nc.altFormat = altFormat
	nc.range = brange
	nc.multiple = bmultiple
	nc.noCalendar = bNoCalendar
	nc.Locale = locale
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub

Sub SetColumnTimePicker(colName As String, dateFormat As String, bNoCalendar As Boolean)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "timepicker"
		nc.dateFormat = dateFormat
		nc.noCalendar = bNoCalendar
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnDateTimePicker("dod", "Date of Death", False, "d/m/Y H:i", "d/m/Y H:i", "es")
'</code>
Sub AddColumnDateTimePicker(name As String, title As String, readOnly As Boolean, dateFormat As String, altFormat As String, brange As Boolean, bmultiple As Boolean, bNoCalendar As Boolean, locale As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "datetimepicker"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	nc.dateFormat = dateFormat
	nc.altFormat = altFormat
	nc.Locale = locale
	nc.altFormat = altFormat
	nc.range = brange
	nc.multiple = bmultiple
	nc.noCalendar = bNoCalendar
	nc.Locale = locale
	
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tbl.AddColumnTimePicker("tob", "Time of Birth", False, "H:i", True)
'</code>
Sub AddColumnTimePicker(name As String, title As String, readOnly As Boolean, dateFormat As String, bNoCalendar As Boolean)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "timepicker"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	nc.dateFormat = dateFormat
	nc.noCalendar = bNoCalendar
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnTextArea(colName As String, tRows As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "textarea"
		nc.rows = tRows
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.AddColumnTextARea("job", "Job Title", False, 5)
'</code>
Sub AddColumnTextArea(name As String, title As String, readOnly As Boolean, tRows As Int)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "textarea"
	nc.color = ""
	nc.readonly = readOnly
	nc.width = ""
	nc.rows = tRows
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tbl.AddColumnToggle("attrdesigner", "Designer", app.COLOR_ACCENT, False)
'</code>
Sub AddColumnToggle(name As String, title As String, color As String, readOnly As Boolean)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "toggle"
	nc.color = color
	nc.readonly = readOnly
	nc.width = "5rem"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="text-center cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnToggle(colName As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "toggle"
		nc.color = color
		nc.width = "5rem"
		Columns.Put(colName, nc)
	End If
End Sub
'<code>
'tbl.SetColumnEditTitle("Editar")
'</code>
Sub SetColumnEditTitle(s As String)
	SetColumnTitle("edit", s)
End Sub
'<code>
'tbl.SetColumnCloneTitle("Clon")
'</code>
Sub SetColumnCloneTitle(s As String)
	SetColumnTitle("clone", s)
End Sub
'<code>
'tbl.SetColumnMenuTitle("Menú")
'</code>
Sub SetColumnMenuTitle(s As String)
	SetColumnTitle("menu", s)
End Sub
Sub SetColumnDownloadTitle(s As String)
	SetColumnTitle("download", s)
End Sub
'<code>
'tbl.SetColumnUploadTitle("Subir")
'</code>
Sub SetColumnUploadTitle(s As String)
	SetColumnTitle("upload", s)
End Sub
'<code>
'tbl.SetColumnDeleteTitle("Borrar")
'</code>
Sub SetColumnDeleteTitle(s As String)
	SetColumnTitle("delete", s)
End Sub
'SetRowColumnButtonEnabled
Sub SetRowEditEnabled(rowPos As Int, b As Boolean)
	SetRowColumnButtonEnabled("edit", rowPos, b)
End Sub
Sub SetRowCloneEnabled(rowPos As Int, b As Boolean)
	SetRowColumnButtonEnabled("clone", rowPos, b)
End Sub
Sub SetRowMenuEnabled(rowPos As Int, b As Boolean)
	SetRowColumnButtonEnabled("menu", rowPos, b)
End Sub
Sub SetRowDownloadEnabled(rowPos As Int, b As Boolean)
	SetRowColumnButtonEnabled("download", rowPos, b)
End Sub
Sub SetRowUploadEnabled(rowPos As Int, b As Boolean)
	SetRowColumnButtonEnabled("upload", rowPos, b)
End Sub
Sub SetRowDeleteEnabled(rowPos As Int, b As Boolean)
	SetRowColumnButtonEnabled("delete", rowPos, b)
End Sub
Sub SetRowEditLoading(rowPos As Int, b As Boolean)
	SetRowColumnButtonLoading("edit", rowPos, b)
End Sub
Sub SetRowCloneLoading(rowPos As Int, b As Boolean)
	SetRowColumnButtonLoading("clone", rowPos, b)
End Sub
Sub SetRowMenuLoading(rowPos As Int, b As Boolean)
	SetRowColumnButtonLoading("menu", rowPos, b)
End Sub
Sub SetRowDownloadLoading(rowPos As Int, b As Boolean)
	SetRowColumnButtonLoading("download", rowPos, b)
End Sub
Sub SetRowUploadLoading(rowPos As Int, b As Boolean)
	SetRowColumnButtonLoading("upload", rowPos, b)
End Sub
Sub SetRowDeleteLoading(rowPos As Int, b As Boolean)
	SetRowColumnButtonLoading("delete", rowPos, b)
End Sub
'add edit action
'<code>
'tb4.AddColumnEdit(app.COLOR_PRIMARY)
'</code>
Sub AddColumnEdit(color As String)
	AddColumnAction("edit", "Edit", "./assets/pencil-solid.svg", color, "#ffffff")
End Sub
'<code>
'tb4.AddColumnClone(app.COLOR_PRIMARY)
'</code>
Sub AddColumnClone(color As String)
	AddColumnAction("clone", "Clone", "./assets/copy-solid.svg", color, "#ffffff")
End Sub
'<code>
'tb4.AddColumnMenu(app.COLOR_PRIMARY)
'</code>
Sub AddColumnMenu(color As String)
	AddColumnAction("menu", "Menu", "./assets/ellipsis-vertical-solid.svg", color, "#ffffff")
End Sub
'<code>
'tb4.AddColumnDownload(app.COLOR_PRIMARY)
'</code>
Sub AddColumnDownload(color As String)
	AddColumnAction("download", "Download", "./assets/download-solid.svg", color, "#ffffff")
End Sub
'<code>
'tb4.AddColumnUpload(app.COLOR_PRIMARY)
'</code>
Sub AddColumnUpload(color As String)
	AddColumnAction("upload", "Upload", "./assets/upload-solid.svg", color, "#ffffff")
End Sub
'add delete action
'<code>
'tb4.AddColumnDelete(app.COLOR_SECONDARY)
'</code>
Sub AddColumnDelete(color As String)
	AddColumnAction("delete", "Delete", "./assets/trash-can-solid.svg", color, "#ffffff")
End Sub
'set a column as a color and also the subtitle field to get the color name from
Sub SetColumnColor(colName As String, subtitle As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "color"
		nc.subtitle = subtitle
		nc.color = colName
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnLocale(colName As String, slocale As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.Locale = slocale
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnMaxLength(colName As String, smaxlen As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.MaxLength = smaxlen
		Columns.Put(colName, nc)
	End If
End Sub
'add a color column
'<code>
'tblCategories.AddColumnColor("color", "Category", "name")
'</code>
Sub AddColumnColor(name As String, title As String, subtitle As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "color"
	nc.subtitle = subtitle
	nc.color = name
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnAvatar(colName As String, ssize As String, mask As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "avatar"
		nc.size = ssize
		nc.mask = UI.FixMask(mask)
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnAvatarPlaceholder(colName As String, ssize As String, mask As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "avatarplaceholder"
		nc.size = ssize
		nc.mask = UI.FixMask(mask)
		nc.color = color
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnAvatarGroup(colName As String, ssize As String, mask As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "avatargroup"
		nc.size = ssize
		nc.mask = UI.FixMask(mask)
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnBadgeGroup(colName As String, sheight As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "badgegroup"
		nc.height = sheight
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnAvatarRing(colName As String, HasRing As Boolean, Color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "avatar"
		nc.HasRing = HasRing
		nc.RingColor = Color
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnAvatarOnline(colName As String, OnlineField As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "avatar"
		nc.OnlineField = OnlineField
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnImage(colName As String, width As Int, height As Int, mask As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "image"
		nc.width = width
		nc.height = height
		nc.mask = UI.FixMask(mask)
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnHeightMultiple(height As String, colNames As List)
	For Each col As String In colNames
		SetColumnHeight(col, height)
	Next
End Sub
Sub SetColumnHeight(colName As String, height As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.height = height
		Columns.Put(colName, nc)
		UI.SetHeightByID($"${mName}_${colName}_th"$, height)
	End If
End Sub
Sub SetColumnWidthMultiple(width As String, colNames As List)
	For Each col As String In colNames
		SetColumnWidth(col, width)
	Next
End Sub
Sub SetColumnWidth(colName As String, width As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.width = width
		Columns.Put(colName, nc)
		'adjust on the header
		UI.SetWidthByID($"${mName}_${colName}_th"$, width)
	End If
End Sub
'set the actual table height
Sub SetTableColumnHeight(colName As String, height As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.colHeight = height
		Columns.Put(colName, nc)
		Dim mstyle As Map = CreateMap()
		mstyle.Put("height", height)
		BANano.GetElement($"#${mName}_${colName}_th"$).SetStyle(BANano.ToJson(mstyle))
	End If
End Sub
'set the actual table width
Sub SetTableColumnWidth(colName As String, width As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.colWidth = width
		Dim mstyle As Map = CreateMap()
		mstyle.Put("width", width)
		BANano.GetElement($"#${mName}_${colName}_th"$).SetStyle(BANano.ToJson(mstyle))
		BANano.GetElement($"#${mName}_${colName}_tf"$).SetStyle(BANano.ToJson(mstyle))
		Columns.Put(colName, nc)
	End If
End Sub
'add an avatar column
'<code>
'tbl.AddColumnAvatar("avatar", "Employee", "4rem", app.MASK_CIRCLE)
'</code>
Sub AddColumnAvatar(name As String, title As String, ssize As String, mask As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "avatar"
	nc.size = ssize
	nc.mask = UI.FixMask(mask)
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowPlaceHolder("filters", name)
End Sub
'
'<code>
'tbl.AddColumnAvatarPlaceholder("hours", "Hours", "3rem", app.MASK_CIRCLE, "primary")
'</code>
Sub AddColumnAvatarPlaceholder(name As String, title As String, ssize As String, mask As String, Color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "avatarplaceholder"
	nc.size = ssize
	nc.mask = UI.FixMask(mask)
	nc.color = Color
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'add an image column
'<code>
'tbl.AddColumnImage("image", "Image", "40px", "40px", app.MASK_SQUIRCLE)
'</code>
Sub AddColumnImage(name As String, title As String, width As Int, height As Int, mask As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "image"
	nc.width = width
	nc.height = height
	nc.mask = UI.FixMask(mask)
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnAvatarTitle(colName As String, ssize As String, subtitle As String, mask As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "avatartitle"
		nc.size = ssize
		nc.subtitle = subtitle
		nc.mask = UI.FixMask(mask)
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnIconTitle(colName As String, ssize As String, subtitle As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "icontitle"
		nc.size = ssize
		nc.subtitle = subtitle
		nc.color = color
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnTitleIcon(colName As String, ssize As String, subtitle As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "titleicon"
		nc.size = ssize
		nc.subtitle = subtitle
		nc.color = color
		Columns.Put(colName, nc)
	End If
End Sub
'add an avatar title column
'<code>
'tb2.AddColumnAvatarTitle("avatar", "Employee", "4rem", "name", app.MASK_CIRCLE)
'</code>
Sub AddColumnAvatarTitle(name As String, title As String, ssize As String, subtitle As String, mask As String)
	name = name.tolowercase
	subtitle = subtitle.ToLowerCase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "avatartitle"
	nc.size = ssize
	nc.subtitle = subtitle
	nc.mask = UI.FixMask(mask)
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tbl.AddColumnIconTitle("sm", "Social Media", app.SIZE_LG, "name", "item.color")
'</code>
Sub AddColumnIconTitle(name As String, title As String, ssize As String, subtitle As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "icontitle"
	nc.color = color
	nc.size = ssize
	nc.subtitle = subtitle
	nc.icon = $"item.${name}"$
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tbl.AddColumnTitleIcon("name", "Social Media", app.SIZE_LG, "sm", "item.color")
'</code>
Sub AddColumnTitleIcon(name As String, title As String, ssize As String, subtitle As String, color As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "titleicon"
	nc.color = color
	nc.size = ssize
	nc.subtitle = subtitle
	nc.icon = $"item.${subtitle}"$
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'<code>
'tbl.AddColumnBadgeAvatarTitle("avatar", "Resource", "10", "name", "")
'</code>
Sub AddColumnBadgeAvatarTitle(name As String, title As String, ssize As String, subtitle As String, color As String)
	name = name.tolowercase
	subtitle = subtitle.ToLowerCase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "badgeavatartitle"
	nc.size = ssize
	nc.subtitle = subtitle
	nc.color = color
	nc.height = "8"
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnBadgeAvatarTitle(colName As String, ssize As String, subtitle As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "badgeavatartitle"
		nc.size = ssize
		nc.subtitle = subtitle
		nc.color = color
		Columns.Put(colName, nc)
	End If
End Sub
Sub SetColumnAvatarTitleSubTitle(colName As String, ssize As String, subtitle As String, subtitle1 As String, mask As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "avatartitlesubtitle"
		nc.size = ssize
		nc.subtitle = subtitle.tolowercase
		nc.subtitle1 = subtitle1.tolowercase
		nc.mask = UI.FixMask(mask)
		Columns.Put(colName, nc)
	End If
End Sub
'add an avatar title sub title column
'<code>
'tb3.AddColumnAvatarTitleSubTitle("avatar", "Employee", "4rem", "name", "country", app.MASK_HEXAGON)
'</code>
Sub AddColumnAvatarTitleSubTitle(name As String, title As String, ssize As String, subtitle As String, subtitle1 As String, mask As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "avatartitlesubtitle"
	nc.size = ssize
	nc.subtitle = subtitle.tolowercase
	nc.subtitle1 = subtitle1.tolowercase
	nc.mask = UI.FixMask(mask)
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
Sub SetColumnTitleSubTitle(colName As String, subtitle As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) Then
		Dim nc As TableColumn = Columns.Get(colName)
		nc.typeof = "titlesubtitle"
		nc.subtitle = subtitle.tolowercase
		Columns.Put(colName, nc)
	End If
End Sub
'add a column that will show a title & sub-title
'<code>
'tbl.AddColumnTitleSubTitle("job", "Job", "country")
'</code>
Sub AddColumnTitleSubTitle(name As String, title As String, subtitle As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "titlesubtitle"
	nc.subtitle = subtitle.tolowercase
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	'
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'calls setitems
'<code>
'banano.Await(tb4.SetItemsPaginate(Items))
'</code>
Sub SetItemsPaginate(xItems As List)
	Try
		iCurrentPage = 1
		'lastPage = 1
		Originals = xItems
		If bHasFilter Then ClearFilters
		Dim paginater As Paginate = BANano.Await(UI.ListPaginate(xItems, iItemsPerPage, iCurrentPage))
		Dim yItems As List = paginater.items
		iTotalPages = paginater.totalPages
		If iCurrentPage = 1 Then
			setPrevPageDisabled(True)
		Else
			setPrevPageDisabled(False)
		End If
		If iTotalPages = iCurrentPage Then
			setNextPageDisabled(True)
		Else
			setNextPageDisabled(False)
		End If
		'If paginater.nextPage <= paginater.totalPages Then setNextPageDisabled(False)
		'If paginater.previousPage > 0 Then setPrevPageDisabled(False)
		'If paginater.nextPage = 0 Then setNextPageDisabled(True)
		BANano.Await(SetItems(yItems))
		'update the visible colums
		BANano.Await(SetColumnChooser(bHasColumnChooser, sColumnChooserHeight, sColumnChooserColor))
			'Allow filtering records by an alphabet from column
		BANano.Await(SetAlphaChooser(bHasAlphaChooser, sAlphaChooserHeight, sAlphaChooserColumn, Originals))
		If bShowTotalRecords Then
			BANano.Await(ShowTotals(Originals))
		Else
			setFooterVisible(False)	
		End If
	Catch
		Log($"SetItemsPaginate: "$ & LastException)
	End Try
End Sub

Sub ShowTotals(DataSet As List)	
	If bShowTotalRecords = False Then Return
	'sum the totals of each of these columns
	Dim colTots As List
	colTots.Initialize
	'get the first column name
	Dim fCol As String = FirstColumnName
	colTots.Add(fCol)
	'get all columns to be summed
	For Each k As String In Columns.Keys
		Dim nc As TableColumn = Columns.Get(k)
		'skip the first column
		If nc.name = fCol Then Continue
		'this has sum values, do it
		If nc.SumValues Then colTots.Add(k)
	Next
	Dim summary As Map = SetFooterTotalSumCountColumns(DataSet, colTots)
	'get the total number of processed rows
	sRowCount = summary.Get("rowcount")
	'format the value to be a thousand
	sRowCount = UI.Thousands(sRowCount)
	'set the first column to show the total
	SetFooterColumn(fCol, $"Total (${sRowCount})"$)
	setFooterVisible(True)
End Sub

Sub Find(sfind As String)
	sfind = sfind.trim
	If sfind = "" Then
		PagePause
		BANano.Await(SetItemsPaginate(Originals))
		PageResume
		Return
	End If
	If sfind.Length < 3 Then Return
	PagePause
	sfind = sfind.tolowercase
	'define fields to search on
	Dim searchOn As List
	searchOn.Initialize
	'
	For Each rec As Map In Originals
		Dim srec As String = BANano.ToJson(rec)
		srec = srec.tolowercase
		Dim itemPos As Int = srec.IndexOf(sfind)
		If itemPos >= 0 Then
			searchOn.Add(rec)
		End If
	Next
	BANano.Await(SetItems(searchOn))
	'update the visible colums
	BANano.Await(SetColumnChooser(bHasColumnChooser, sColumnChooserHeight, sColumnChooserColor))
	'Allow filtering records by an alphabet from column
	BANano.Await(SetAlphaChooser(bHasAlphaChooser, sAlphaChooserHeight, sAlphaChooserColumn, searchOn))
	If bShowTotalRecords Then
		BANano.Await(ShowTotals(searchOn))
	Else
		setFooterVisible(False)
	End If
	PageResume
End Sub

private Sub ShowPreviousPage(event As BANanoEvent)			'ignoredeadcode
	event.PreventDefault
	Try
		'setNextPageDisabled(True)
		'setPrevPageDisabled(True)
		iCurrentPage = BANano.parseInt(iCurrentPage) - 1
		If iCurrentPage <= 0 Then iCurrentPage = 1
		Dim paginater As Paginate = BANano.Await(UI.ListPaginate(Originals, iItemsPerPage, iCurrentPage))
		Dim xItems As List = paginater.items
		If iCurrentPage = 1 Then
			setPrevPageDisabled(True)
		Else
			setPrevPageDisabled(False)
		End If
		If iTotalPages = iCurrentPage Then
			setNextPageDisabled(True)
		Else
			setNextPageDisabled(False)
		End If
		'If paginater.nextPage <= paginater.totalPages Then setNextPageDisabled(False)
		'If paginater.previousPage > 0 Then setPrevPageDisabled(False)
		'If paginater.nextPage = 0 Then setNextPageDisabled(True)
		'lastPage = iCurrentPage
		BANano.Await(SetItems(xItems))
		'update the visible colums
		BANano.Await(SetColumnChooser(bHasColumnChooser, sColumnChooserHeight, sColumnChooserColor))
		'Allow filtering records by an alphabet from column
		BANano.Await(SetAlphaChooser(bHasAlphaChooser, sAlphaChooserHeight, sAlphaChooserColumn, Originals))
		If bShowTotalRecords Then
			BANano.Await(ShowTotals(Originals))
		Else
			setFooterVisible(False)
		End If
		
		BANano.CallSub(mCallBack, $"${mName}_NextPage"$, Array(event))
	Catch
		Log($"ShowPreviousPage: "$ &  LastException)
	End Try
End Sub
private Sub ShowNextPage(event As BANanoEvent)			'ignoredeadcode
	event.PreventDefault
	Try
		'setNextPageDisabled(True)
		'setPrevPageDisabled(True)
		iCurrentPage = BANano.parseInt(iCurrentPage) + 1
		If iCurrentPage >= iTotalPages Then iCurrentPage = iTotalPages
		Dim paginater As Paginate = BANano.Await(UI.ListPaginate(Originals, iItemsPerPage, iCurrentPage))
		Dim xitems As List = paginater.items
		If iCurrentPage = 1 Then
			setPrevPageDisabled(True)
		Else
			setPrevPageDisabled(False)
		End If
		If iTotalPages = iCurrentPage Then
			setNextPageDisabled(True)
		Else
			setNextPageDisabled(False)
		End If
		'If paginater.nextPage <= paginater.totalPages Then setNextPageDisabled(False)
		'If paginater.previousPage > 0 Then setPrevPageDisabled(False)
		'If paginater.nextPage = 0 Then setNextPageDisabled(True)
		'lastPage = iCurrentPage
		BANano.Await(SetItems(xitems))
		'update the visible colums
		BANano.Await(SetColumnChooser(bHasColumnChooser, sColumnChooserHeight, sColumnChooserColor))
		'Allow filtering records by an alphabet from column
		BANano.Await(SetAlphaChooser(bHasAlphaChooser, sAlphaChooserHeight, sAlphaChooserColumn, Originals))
		If bShowTotalRecords Then
			BANano.Await(ShowTotals(Originals))
		Else
			setFooterVisible(False)
		End If
		BANano.CallSub(mCallBack, $"${mName}_NextPage"$, Array(event))
	Catch
		Log($"ShowNextPage: "$ & LastException)
	End Try
End Sub
Sub getCurrentPage As Int
	Return iCurrentPage
End Sub
Sub ShowPage(pgNumber As Int)
	Try
		'setNextPageDisabled(True)
		'setPrevPageDisabled(True)
		iCurrentPage = pgNumber
		If iCurrentPage >= iTotalPages Then iCurrentPage = iTotalPages
		If iCurrentPage <= 0 Then iCurrentPage = 1
		Dim paginater As Paginate = BANano.Await(UI.ListPaginate(Originals, iItemsPerPage, iCurrentPage))
		Dim xitems As List = paginater.items
		If iCurrentPage = 1 Then
			setPrevPageDisabled(True)
		Else
			setPrevPageDisabled(False)
		End If
		If iTotalPages = iCurrentPage Then
			setNextPageDisabled(True)
		Else
			setNextPageDisabled(False)
		End If
		'If paginater.nextPage <= paginater.totalPages Then setNextPageDisabled(False)
		'If paginater.previousPage > 0 Then setPrevPageDisabled(False)
		'If paginater.nextPage = 0 Then setNextPageDisabled(True)
		BANano.Await(SetItems(xitems))
		'update the visible colums
		BANano.Await(SetColumnChooser(bHasColumnChooser, sColumnChooserHeight, sColumnChooserColor))
		'Allow filtering records by an alphabet from column
		BANano.Await(SetAlphaChooser(bHasAlphaChooser, sAlphaChooserHeight, sAlphaChooserColumn, Originals))
		If bShowTotalRecords Then
			BANano.Await(ShowTotals(Originals))
		Else
			setFooterVisible(False)
		End If
	Catch
		Log($"ShowPage: "$ & LastException)
	End Try
End Sub

'set Lower Case
Sub setLowerCase(b As Boolean)
	CustProps.put("LowerCase", b)
	bLowerCase = b
End Sub
'set the items for the table without pagination
Sub SetItems(xitems As List)			'ignoreDeadCode
	If bLowerCase Then
		BANano.Await(UI.ListOfMapsKeysToLowerCase(xitems))
	End If
	Dim obj As BANanoObject
	obj.Initialize("Object")
	obj.RunMethod("freeze", xitems)
	BANano.Await(ClearRows)
	For Each rec As Map In xitems
		BANano.Await(AddRow(rec))
	Next
End Sub
private Sub BuildClasses(nc As TableColumn) As String
	Dim sbx As StringBuilder
	sbx.Initialize
	If nc.minwidth <> "" Then
		Dim minw As String = UI.FixSize("min-w", nc.minwidth)
		sbx.Append($" ${minw} "$)
	End If
	If nc.maxwidth <> "" Then
		Dim maxw As String = UI.FixSize("max-w", nc.maxwidth)
		sbx.Append($" ${maxw} "$)
	End If
	Dim classes As List = nc.classes
	For Each c As String In classes
		sbx.Append($" ${c} "$)
	Next
	If nc.width <> "" Then
		Dim ww As String = UI.FixSize("w", nc.width)
		sbx.Append($" ${ww} "$)
	End If
	If nc.visible = False Then sbx.Append(" hidden ")
	'
	Select Case nc.alignment
		Case "center", "right"
			sbx.Append($" text-${nc.alignment} "$)
	End Select
	Dim sout As String = sbx.ToString
	sbx.Initialize
	sout = sout.trim
	Return sout
End Sub
Private Sub BuildRowIcon(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String						'ignore
	Dim bColor As String = tc.color
	'is icon from records
	Dim sicon As String = tc.icon
	Dim theicon As String = ""
	If sicon.indexof(".") = -1 Then
		theicon = tc.icon
	Else
		Dim fld2 As String = UI.MvField(sicon, 2, ".")
		Dim scolor As String = rowdata.GetDefault(fld2, "")
		scolor = UI.CStr(scolor)
		theicon = scolor
	End If
	'
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		theicon = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim iconsize As String = UI.FixIconSize(tc.Size)
	Dim btnColor As String = GetColorFromField("text", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
'	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
'	If tc.ComputeTextColor <> "" Then
'		Dim subName As String = tc.ComputeTextColor
'		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
'		tcolor = UI.FixColor("text", tcolor)
'	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}" class="${BuildClasses(tc)} ${btnColor} ${bgColor}" style="${BuildStyle(tc)}">
    <svg id="${mName}_${RowCnt}_${fldName}_icon" data-unique-ids="disabled" data-js="enabled" style="${BuildIconColor(btnColor)};pointer-events:none;width:${iconsize};height:${iconsize}" data-src="${theicon}" preserveAspectRatio="xMidYMid meet" fill="currentColor" class="${cClass}"></svg>
    </td>"$
	Return act
End Sub
Private Sub BuildRowIconTitle(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String						'ignore
	Dim bColor As String = tc.color
	'is icon from records
	Dim sicon As String = tc.icon
	Dim theicon As String = ""
	If sicon.indexof(".") = -1 Then
		theicon = tc.icon
	Else
		Dim fld2 As String = UI.MvField(sicon, 2, ".")
		Dim scolor As String = rowdata.GetDefault(fld2, "")
		scolor = UI.CStr(scolor)
		theicon = scolor
	End If
	'
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		theicon = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim iconsize As String = UI.FixIconSize(tc.size)
	Dim btnColor As String = GetColorFromField("text", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
'	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
'	If tc.ComputeTextColor <> "" Then
'		Dim subName As String = tc.ComputeTextColor
'		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
'		tcolor = UI.FixColor("text", tcolor)
'	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}" class="${BuildClasses(tc)} ${btnColor}  ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_flex" class="flex items-center">
    <div><svg id="${mName}_${RowCnt}_${fldName}_icon" data-unique-ids="disabled"  fill="currentColor" data-src="${theicon}" width="${iconsize}" height="${iconsize}" preserveAspectRatio="xMidYMid meet" style="${BuildIconColor(btnColor)};pointer-events:none;" data-js="enabled" class="${cClass}"></svg></div>
    <div id="${mName}_${RowCnt}_${fldName}_subtitle" class="pl-1 pr-2 text-gray-700 text-base">${subtitle}</div>
    </div>
    </td>"$
	Return act
End Sub
Private Sub BuildRowTitleIcon(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String						'ignore
	Dim bColor As String = tc.color
	'is icon from records
	Dim sicon As String = tc.icon
	Dim theicon As String = ""
	If sicon.indexof(".") = -1 Then
		theicon = tc.icon
	Else
		Dim fld2 As String = UI.MvField(sicon, 2, ".")
		Dim scolor As String = rowdata.GetDefault(fld2, "")
		scolor = UI.CStr(scolor)
		theicon = scolor
	End If
	'
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		theicon = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim iconsize As String = UI.FixIconSize(tc.size)
	Dim btnColor As String = GetColorFromField("text", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
'	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
'	If tc.ComputeTextColor <> "" Then
'		Dim subName As String = tc.ComputeTextColor
'		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
'		tcolor = UI.FixColor("text", tcolor)
'	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}" class="${BuildClasses(tc)} ${btnColor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_flex" class="flex items-center">
    <div id="${mName}_${RowCnt}_${fldName}_subtitle" class="pl-1 pr-2 text-gray-700 text-base">${subtitle}</div>
    <div><svg id="${mName}_${RowCnt}_${fldName}_icon" data-unique-ids="disabled" data-js="enabled" fill="currentColor" data-src="${theicon}" height="${iconsize}" width="${iconsize}" preserveAspectRatio="xMidYMid meet" style="${BuildIconColor(btnColor)};pointer-events:none;" class="${cClass}"></svg></div>
    </div>
    </td>"$
	Return act
End Sub
Private Sub BuildRowClickLink(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String				'ignore
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("link", bColor, rowdata)
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}" class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <a id="${mName}_${RowCnt}_${fldName}_clicklink" class="${tcolor} link ${btnColor} ${cClass}">${subtitle}</a>
    </td>"$
	Return act
End Sub
Private Sub BuildRowLink(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("link", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}" class="${BuildClasses(tc)} ${tcolor}  ${bgColor}" style="${BuildStyle(tc)}">
    <a id="${mName}_${RowCnt}_${fldName}_link" href="${fldValu}" target="_blank" class="${tcolor} link ${btnColor} ${cClass}">${subtitle}</a>
    </td>"$
	Return act
End Sub
Private Sub BuildRowColor(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String					'ignore
	'get the value of the color field
	Dim scolor As String = rowdata.GetDefault(fldName, "")
	scolor = UI.CStr(scolor)
	'
	Dim btnColor As String = ""
	If scolor.StartsWith("#") Then
		btnColor = $"bg-[${scolor}]"$
	Else
		btnColor = UI.FixColor("bg", scolor)
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		btnColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	'
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		subtitle = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	'
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}" class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_flex" class="flex inline-flex items-center">
    	<div id="${mName}_${RowCnt}_${fldName}_color" class="ml-2 mr-1 rounded-full w-4 h-4 ${btnColor} ${cClass}"></div>
    	<div id="${mName}_${RowCnt}_${fldName}_subtitle" class="pl-1 pr-2 text-gray-700 text-base">${subtitle}</div>
    </div>
    </td>"$
	Return act
End Sub
Private Sub BuildRowWebsite(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("link", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}" class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <a id="${mName}_${RowCnt}_${fldName}_email" href="${fldValu}" class="${tcolor} link ${btnColor} ${cClass}">${subtitle}</a>
    </td>"$
	Return act
End Sub
Private Sub BuildRowEmail(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("link", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <a id="${mName}_${RowCnt}_${fldName}_email" href="mailto:${fldValu}" class="${tcolor} link ${btnColor} ${cClass}">${subtitle}</a>
    </td>"$
	Return act
End Sub
Private Sub BuildRowToggle(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("toggle", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	Dim bchecked As Boolean = UI.CBool(fldValu)
	Dim cchecked As String = ""
	'Dim tsize As String = UI.FixSize("toggle", sComponentSize)
	If bchecked Then cchecked = $"checked="checked""$
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="text-center ${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <input type="checkbox" id="${mName}_${RowCnt}_${fldName}_toggle" ${creadonly} ${cchecked} class="toggle ${btnColor} ${cClass}}"></input>
    </td>"$
	Return act
End Sub
Private Sub BuildRowCheckBox(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("checkbox", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	Dim bchecked As Boolean = UI.CBool(fldValu)
	Dim cchecked As String = ""
	If bchecked Then cchecked = $"checked="checked""$
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	'Dim tsize As String = UI.FixSize("checkbox", sComponentSize)
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="text-center ${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <input type="checkbox" id="${mName}_${RowCnt}_${fldName}_checkbox" ${creadonly} ${cchecked} class="checkbox ${btnColor} ${cClass}"></input>
    </td>"$
	Return act
End Sub
Private Sub BuildRowRange(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("range", bColor, rowdata)
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim tsize As String = UI.FixSize("range", sComponentSize)
	Dim txsize As String = UI.FixSize("text", sComponentSize)
	
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <label class="flex items-center w-full gap-2">
    <span id="${mName}_${RowCnt}_${fldName}_range_text" class="${txsize} bg-transparent ${tcolor}">${fldValu}</span>
    <input type="range" id="${mName}_${RowCnt}_${fldName}_range" max="${tc.maxvalue}" value="${fldValu}" class="range ${tsize} ${btnColor} ${cClass}"></input>
    </label></td>"$
	Return act
End Sub
Private Sub BuildRowProgress(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("progress", bColor, rowdata)
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	'
	Dim psize As String = "24px"
	Select Case sComponentSize
	Case "xs"
		psize = "8px"
	Case "sm"
		psize = "16px"
	Case "md"
		psize = "24px"
	Case "lg"
		psize = "32px"
	Case "xl"
		psize = "40px"
	End Select
	Dim psize1 As String = UI.FixSize("h", psize)
	Dim tsize As String = UI.FixSize("text", sComponentSize)
	
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
	<label class="flex items-center w-full gap-2">
    <span id="${mName}_${RowCnt}_${fldName}_progress_text" class="${tsize} justify-start ${tcolor}">${fldValu}%</span>
    <progress id="${mName}_${RowCnt}_${fldName}_progress" max="${tc.maxvalue}" value="${fldValu}" class="rounded-full ${psize1} progress ${UI.FixSize("w", tc.width)} ${btnColor} ${cClass}">${fldValu}</progress>
	</label>
    </td>"$
	Return act
End Sub
Private Sub BuildRowRadial(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("text", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If	
	'
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_radial" role="progressbar" style="--value:${fldValu};--size:${tc.size};" class="${tcolor} radial-progress ${btnColor} ${cClass}">${fldValu}${tc.suffix}</div>
    </td>"$
	Return act
End Sub
Private Sub BuildRowRadioGroup(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	Dim btnColor As String = GetColorFromField("radio", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	'Dim tsize As String = UI.FixSize("radio", sComponentSize)
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	'Dim rCnt As Int = 0
	Dim options As Map = tc.options
	For Each k As String In options.Keys
		Dim v As String = options.Get(k)
		Dim sbChecked As String = ""
		If UI.CStr(fldValu) = UI.CStr(k) Then
			sbChecked = $"checked="checked""$
		End If
		Dim sItem As String = $"<div class="form-control">
        <label class="label cursor-pointer p-2">
        <input id="${mName}_${RowCnt}_${fldName}_${k}_radio" ${sbChecked} "value="${k}" name="${mName}_${RowCnt}_${fldName}_radio" type="radio" ${creadonly} class="radio ${btnColor}">
        <span class="label-text px-2 flex-no-shrink ${tcolor}">${v}</span>
        </label>
        </div>"$
		sbOptions.Append(sItem)
	Next
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	
	'
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_radiogroup" class="form-input gap-1 items-center flex w-full ${cClass}">
    ${sbOptions.ToString}
    </div>
    </td>"$
	sbOptions.Initialize
	Return act
End Sub
Private Sub BuildRowSelect(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("select", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	'
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	'
	If tc.NothingSelected Then
		Dim sItem As String = $"<option name="${mName}_0_${fldName}" value="">--Nothing Selected--</option>"$
		sbOptions.Append(sItem)
	End If
	'	Dim rCnt As Int = 0
	Dim options As Map = tc.options
	For Each k As String In options.Keys
		Dim v As String = options.Get(k)
		Dim xSelected As String = ""
		If fldValu.EqualsIgnoreCase(k) Then xSelected = " selected"
		Dim sItem As String = $"<option name="${mName}_${RowCnt}_${fldName}" ${xSelected} value="${k}">${v}</option>"$
		sbOptions.Append(sItem)
	Next
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <select id="${mName}_${RowCnt}_${fldName}_select" name="${mName}_${RowCnt}_${fldName}" ${creadonly} class="select ${btnColor} ${cClass} select-bordered grow select-${sComponentSize}">
    ${sbOptions.ToString}
    </select>
    </td>"$
	sbOptions.Initialize
	Return act
End Sub
Private Sub BuildRowPasswordGroup(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	'
	Dim smaxlen As String = ""
	If tc.MaxLength <> "" Then smaxlen = $"maxlength="${tc.MaxLength}""$
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim iconsize As String = UI.FixIconSize(sComponentSize)
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_formcontrol" class="form-control">
    <label id="${mName}_${RowCnt}_${fldName}_inputgroup" class="input-group">
    <span id="${mName}_${RowCnt}_${fldName}_prefix" class="hidden"></span>
    <btn id="${mName}_${RowCnt}_${fldName}_prepend" class="btn hidden  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_prepend_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    <input id="${mName}_${RowCnt}_${fldName}_input" ${smaxlen} value="${fldValu}" type="password" name="${mName}_${RowCnt}_${fldName}" class="input input-${sComponentSize} ${btnColor}  w-full ${cClass} rounded-lg ${tAlign} tlradius blradius trradius brradius" ${creadonly}></input>
    <span id="${mName}_${RowCnt}_${fldName}_suffix" class="hidden"></span>
    <btn id="${mName}_${RowCnt}_${fldName}_append" class="btn hidden  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_append_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    </label>
    </div>
    </td>"$
	Return act
End Sub
Private Sub BuildRowSelectGroup(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("select", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	'
	If tc.NothingSelected Then
		Dim sItem As String = $"<option name="${mName}_0_${fldName}" value="">--Nothing Selected--</option>"$
		sbOptions.Append(sItem)
	End If
	'	Dim rCnt As Int = 0
	Dim options As Map = tc.options
	For Each k As String In options.Keys
		Dim v As String = options.Get(k)
		Dim xSelected As String = ""
		If fldValu.EqualsIgnoreCase(k) Then xSelected = " selected"
		Dim sItem As String = $"<option name="${mName}_${RowCnt}_${fldName}" ${xSelected} value="${k}">${v}</option>"$
		sbOptions.Append(sItem)
	Next
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim iconsize As String = UI.FixIconSize(sComponentSize)
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_formcontrol" class="form-control">
    <label id="${mName}_${RowCnt}_${fldName}_inputgroup" class="input-group">
    <span id="${mName}_${RowCnt}_${fldName}_prefix" class="hidden"></span>
    <btn id="${mName}_${RowCnt}_${fldName}_prepend" class="btn hidden  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_prepend_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    <select id="${mName}_${RowCnt}_${fldName}_select" value="${fldValu}" name="${mName}_${RowCnt}_${fldName}" class="select select-${sComponentSize} ${btnColor} select-bordered grow ${cClass} rounded-lg tlradius blradius trradius brradius" ${creadonly}>${sbOptions.ToString}
    </select>
    <span id="${mName}_${RowCnt}_${fldName}_suffix" class="hidden"></span>
    <btn id="${mName}_${RowCnt}_${fldName}_append" class="btn hidden  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_append_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    </label>
    </div>
    </td>"$
	sbOptions.Initialize
	'********
	Return act
End Sub
Private Sub BuildRowTextBoxGroup(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	'
	Dim smaxlen As String = ""
	If tc.MaxLength <> "" Then smaxlen = $"maxlength="${tc.MaxLength}""$
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim iconsize As String = UI.FixIconSize(sComponentSize)
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_formcontrol" class="form-control">
    <label id="${mName}_${RowCnt}_${fldName}_inputgroup" class="input-group">
    <span id="${mName}_${RowCnt}_${fldName}_prefix" class="hidden"></span>
    <btn id="${mName}_${RowCnt}_${fldName}_prepend" class="btn hidden  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_prepend_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    <input id="${mName}_${RowCnt}_${fldName}_input" ${smaxlen} value="${fldValu}" type="text" name="${mName}_${RowCnt}_${fldName}" class="input input-${sComponentSize} ${btnColor}  w-full ${cClass} rounded-lg ${tAlign} tlradius blradius trradius brradius" ${creadonly}></input>
    <span id="${mName}_${RowCnt}_${fldName}_suffix" class="hidden"></span>
    <btn id="${mName}_${RowCnt}_${fldName}_append" class="btn hidden  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_append_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    </label>
    </div>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowTelephone(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	Dim smaxlen As String = ""
	If tc.MaxLength <> "" Then smaxlen = $"maxlength="${tc.MaxLength}""$
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim iconsize As String = UI.FixIconSize(sComponentSize)
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_formcontrol" class="form-control">
    <label id="${mName}_${RowCnt}_${fldName}_inputgroup" class="input-group">
    <span id="${mName}_${RowCnt}_${fldName}_prefix" class="hidden"></span>
    <btn id="${mName}_${RowCnt}_${fldName}_prepend" class="btn hidden  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_prepend_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    <input id="${mName}_${RowCnt}_${fldName}_input" ${smaxlen} value="${fldValu}" type="tel" name="${mName}_${RowCnt}_${fldName}" class="input input-${sComponentSize} ${btnColor}  w-full ${cClass} rounded-lg ${tAlign} tlradius blradius trradius brradius" ${creadonly}></input>
    <span id="${mName}_${RowCnt}_${fldName}_suffix" class="hidden"></span>
    <btn id="${mName}_${RowCnt}_${fldName}_append" class="btn hidden  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_append_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    </label>
    </div>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowDialer(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	'
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim iconsize As String = UI.FixIconSize(sComponentSize)
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_formcontrol" class="form-control">
    <label id="${mName}_${RowCnt}_${fldName}_inputgroup" class="input-group">
    <btn id="${mName}_${RowCnt}_${fldName}_prepend" class="btn  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_prepend_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    <input id="${mName}_${RowCnt}_${fldName}_input" inputmode="numeric" value="${fldValu}" type="number" name="${mName}_${RowCnt}_${fldName}" class="input input-${sComponentSize} ${btnColor}  w-full ${cClass} [appearance:textfield] [&::-webkit-outer-spin-button]:appearance-none [&::-webkit-inner-spin-button]:appearance-none ${tAlign}" ${creadonly}></input>
    <btn id="${mName}_${RowCnt}_${fldName}_append" class="btn  btn-${sComponentSize}">
		<svg id="${mName}_${RowCnt}_${fldName}_append_icon" data-js="enabled" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
	</btn>
    </label>
    </div>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowTextBox(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	'
	Dim smaxlen As String = ""
	If tc.MaxLength <> "" Then smaxlen = $"maxlength="${tc.MaxLength}""$
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <input id="${mName}_${RowCnt}_${fldName}_input" ${smaxlen} type="text" value="${fldValu}" name="${mName}_${RowCnt}_${fldName}" ${creadonly} class="input ${btnColor}  w-full input-${sComponentSize} ${cClass} ${tAlign}">
    </input>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowFileInputProgress(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String					'ignore
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim btnColor As String = GetColorFromField("btn", bColor, rowdata)
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim btnsize As String = UI.FixSize("btn", tc.Size)
	Dim btnOutlined As String = ""
	If bButtonsOutlined Then btnOutlined = "btn-outline"
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim iconsize As String = UI.FixIconSize(tc.size)
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <button id="${mName}_${RowCnt}_${fldName}_button" class="btn  btn-circle ${btnColor} ${btnsize} ${btnOutlined} ${cClass}">
    	<svg id="${mName}_${RowCnt}_${fldName}_icon" data-unique-ids="disabled" data-js="enabled" style="${BuildIconColor(tcolor)};pointer-events:none;" data-src="${tc.icon}" fill="currentColor" width="${iconsize}" height="${iconsize}"></svg>
    </button>
    <div id="${mName}_${RowCnt}_${fldName}_progress" role="progressbar" class="hidden radial-progress text-white bg-${tc.color}" style="--size:${tc.width}; --thickness: 1px;"></div>
    <input id="${mName}_${RowCnt}_${fldName}_input" accept="${tc.accept}" capture="${tc.capture}" name="${mName}_${RowCnt}_${fldName}" type="file" class="hidden"/>
    </td>"$
	'********
	Return act
End Sub

'
Private Sub BuildRowFileAction(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String			'ignore
	'Dim originalValue As String = fldValu
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim btnColor As String = GetColorFromField("btn", bColor, rowdata)
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	
	Dim btnsize As String = UI.FixSize("btn", sButtonSize)
	Dim iconSize As String = UI.FixIconSize(sButtonSize)
	Dim btnOutlined As String = ""
	If bButtonsOutlined Then btnOutlined = "btn-outline"
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <button id="${mName}_${RowCnt}_${fldName}_button" class="${tcolor} btn  btn-circle ${btnColor} ${btnsize} ${btnOutlined} ${cClass}">
    <svg id="${mName}_${RowCnt}_${fldName}_icon" data-unique-ids="disabled" data-js="enabled" style="${BuildIconColor(tcolor)};pointer-events:none;" fill="currentColor" data-src="${tc.icon}" width="${iconSize}" height="${iconSize}"></svg></button>
	<input id="${mName}_${RowCnt}_${fldName}_input" name="${mName}_${RowCnt}_${fldName}" type="file" class="hidden"/>
    </td>"$
	'********
	Return act
End Sub


Private Sub BuildRowFile(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String				'ignore
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'the color is sources from the item
	Dim btnColor As String = ""
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	If bColor.IndexOf(".") = -1 Then
		btnColor = UI.FixColor("file-input", bColor)
	Else
		Dim fld2 As String = UI.MvField(bColor, 2, ".")
		Dim scolor As String = rowdata.GetDefault(fld2, "")
		scolor = UI.CStr(scolor)
		scolor = scolor.ToLowerCase
		btnColor = UI.FixColor("file-input", scolor)
	End If
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <input id="${mName}_${RowCnt}_${fldName}_input" type="file" name="${mName}_${RowCnt}_${fldName}" ${creadonly} class="file-input ${btnColor} ${cClass} file- w-full file-input-${sComponentSize}">
    </input>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowPassword(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	'
	Dim smaxlen As String = ""
	If tc.MaxLength <> "" Then smaxlen = $"maxlength="${tc.MaxLength}""$
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <input id="${mName}_${RowCnt}_${fldName}_input" ${smaxlen} type="password" value="${fldValu}" name="${mName}_${RowCnt}_${fldName}" ${creadonly} class="input ${btnColor}  w-full input-${sComponentSize} ${cClass} ${tAlign}">
    </input>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowNumber(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <input id="${mName}_${RowCnt}_${fldName}_input" type="number" inputmode="numeric" value="${fldValu}" name="${mName}_${RowCnt}_${fldName}" ${creadonly} class="input ${btnColor}  w-full input-${sComponentSize} ${cClass} ${tAlign}">
    </input>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowDatePicker(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	'
	Dim smaxlen As String = ""
	If tc.MaxLength <> "" Then smaxlen = $"maxlength="${tc.MaxLength}""$
	'
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <input id="${mName}_${RowCnt}_${fldName}_input" ${smaxlen} type="text" value="${fldValu}" name="${mName}_${RowCnt}_${fldName}" ${creadonly} class="input ${btnColor}  w-full input-${sComponentSize} ${cClass} ${tAlign}">
    </input>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowDateTimePicker(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	Dim smaxlen As String = ""
	If tc.MaxLength <> "" Then smaxlen = $"maxlength="${tc.MaxLength}""$
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	'
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <input id="${mName}_${RowCnt}_${fldName}_input" ${smaxlen} type="text" value="${fldValu}" name="${mName}_${RowCnt}_${fldName}" ${creadonly} class="input ${btnColor}  w-full input-${sComponentSize} ${cClass} ${tAlign}">
    </div>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowTimePicker(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("input", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	'
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <input id="${mName}_${RowCnt}_${fldName}_input" type="text" value="${fldValu}" name="${mName}_${RowCnt}_${fldName}" ${creadonly} class="input ${btnColor}  w-full input-${sComponentSize} ${cClass} ${tAlign}">
    </div>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowMenu(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String		'ignore
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim btnColor As String = GetColorFromField("btn", bColor, rowdata)
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim btnsize As String = UI.FixSize("btn", sButtonSize)
	Dim iconSize As String = UI.FixIconSize(sButtonSize)
	Dim btnOutlined As String = ""
	If bButtonsOutlined Then btnOutlined = "btn-outline"
	'
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	'
	'Dim rCnt As Int = 0
	Dim options As Map = tc.options
	Dim OptionIcons As Map = tc.OptionIcons
	For Each k As String In options.Keys
		Dim v As String = options.Get(k)
		Dim i As String = OptionIcons.GetDefault(k, "")
		Select Case i
			Case ""
				Dim sItem As String = $"<li id="${mName}_${RowCnt}_${fldName}_${k}_li"><a id="${mName}_${RowCnt}_${fldName}_${k}_a" class="${itemColor1} ${itemColor2} ${itemColor3} ${itemColor4}">${v}</a></li>"$
				sbOptions.Append(sItem)
			Case Else
				Dim sItem As String = $"[BANCLEAN]
            <li id="${mName}_${RowCnt}_${fldName}_${k}_li">
            <a id="${mName}_${RowCnt}_${fldName}_${k}_a" class="${itemColor1} ${itemColor2} ${itemColor3} ${itemColor4}">
            <span class="flex-none">
				<svg id="${mName}_${RowCnt}_${fldName}_${k}_i" style="pointer-events:none;width:70%;height:70%" data-unique-ids="disabled" data-js="enabled" fill="currentColor" data-src="${i}" width="${iconSize}" height="${iconSize}"></svg></span>
            <span id="${mName}_${RowCnt}_${fldName}_${k}_text" class="flex-1">${v}</span>
            </a>
            </li>"$
				sbOptions.Append(sItem)
		End Select
	Next
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim iconSize As String = UI.FixIconSize(sButtonSize)
	'
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_menu" class="dropdown dropdown-left">
    <label id="${mName}_${RowCnt}_${fldName}_button" tabindex="0" class="${tcolor} btn btn-ghost btn-circle ${btnColor} ${btnsize} ${btnOutlined} ${cClass}">
    <svg id="${mName}_${RowCnt}_${fldName}_icon" data-unique-ids="disabled" data-js="enabled" preserveAspectRatio="xMidYMid meet" style="${BuildIconColor(tcolor)};pointer-events:none;width:${iconSize};height:${iconSize}" data-src="${tc.icon}" fill="currentColor" width="${iconSize}" height="${iconSize}"></svg>
    </label>
    <ul id="${mName}_${RowCnt}_${fldName}_items" tabindex="0" class="text-black border menu-horizontal dropdown-content menu p-2 shadow bg-base-100 rounded-box">
    ${sbOptions.ToString}
    </ul>
    </div>
    </td>"$
	sbOptions.Initialize
	'********
	Return act
End Sub
Private Sub BuildRowButton(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String			'ignore
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	Else
		fldValu = tc.title
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim btnColor As String = GetColorFromField("btn", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim btnsize As String = UI.FixSize("btn", sButtonSize)
	Dim btnOutlined As String = ""
	If bButtonsOutlined Then btnOutlined = "btn-outline"
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <button id="${mName}_${RowCnt}_${fldName}_button" class="${tcolor} btn ${btnColor} ${btnsize} ${btnOutlined} ${cClass}">${fldValu}</button>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowBadge(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	'Dim originalValue As String = fldValu
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim boutline As String = ""
	If bBadgesOutlined Then boutline = "badge-outline"
	Dim btnsize As String = UI.FixSize("badge", sBadgesSize)
	Dim btnColor As String = ""
	If bColor.IndexOf(".") = -1 Then
		If bColor.StartsWith("#") Then
			btnColor = UI.FixColor("bg", bColor)
		Else
			btnColor = UI.FixColor("badge", bColor)
		End If
	Else
		Dim fld2 As String = UI.MvField(bColor, 2, ".")
		Dim scolor As String = rowdata.GetDefault(fld2, "")
		scolor = UI.CStr(scolor)
		If scolor.StartsWith("#") Then
			btnColor = UI.FixColor("bg", scolor)
		Else
			scolor = scolor.ToLowerCase
			btnColor = UI.FixColor("badge", scolor)
		End If
	End If
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim sh As String = UI.FixSize("h", tc.height)
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_flex" class="flex flex-wrap break-words relative">
    <div id="${mName}_${RowCnt}_${fldName}_badge" class="badge rounded-full py-2 px-2 ${sh} ${btnColor} ${btnsize} ${boutline} ${cClass}">
    <span id="${mName}_${RowCnt}_${fldName}_badge_text" class="${tcolor}">${fldValu}</span>
    </div>
    </div>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowRating(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("bg", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim sbRating As StringBuilder
	sbRating.Initialize
	Dim rCnt As Int = 0
	For rCnt = 1 To tc.size
		Dim sbChecked As String = ""
		If UI.CStr(fldValu) = UI.CStr(rCnt) Then
			sbChecked = $"checked="checked""$
		End If
		sbRating.Append($"<input id="${mName}_${RowCnt}_${fldName}_${rCnt}_rating" ${sbChecked} value="${rCnt}" type="radio" name="${mName}_${RowCnt}_${fldName}_rating" class="${tc.mask} ${btnColor} ${cClass} radio-${sComponentSize}"></input>"$)
	Next
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div class="flex rating gap-2">
    ${sbRating.tostring}
    </div>
    </td>"$
	sbRating.Initialize
	'********
	Return act
End Sub
Private Sub BuildRowTextArea(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	'Dim originalValue As String = fldValu
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("textarea", bColor, rowdata)
	Dim creadonly As String = ""
	If tc.readonly Then creadonly = $"disabled="disabled""$
	'
	Dim smaxlen As String = ""
	If tc.MaxLength <> "" Then smaxlen = $"maxlength="${tc.MaxLength}""$
	Dim tAlign As String = ""
	Select Case tc.alignment
		Case "center", "right"
			tAlign = $"text-${tc.alignment}"$
	End Select
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <textarea id="${mName}_${RowCnt}_${fldName}_textarea" ${smaxlen} rows="${tc.Rows}" name="${mName}_${RowCnt}_${fldName}" ${creadonly} class="textarea break-normal ${btnColor} textarea-bordered w-full textarea-${sComponentSize} ${cClass} ${tAlign}">${fldValu}
    </textarea>
    </td>"$
	'********
	Return act
End Sub
'
Private Sub BuildRowAvatar(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	'Dim originalValue As String = fldValu
	Dim bColor As String = tc.color
	Dim sRingColor As String = tc.RingColor
	Dim bHasRing As Boolean = tc.HasRing
	'
	If tc.ComputeRing <> "" Then
		Dim subName As String = tc.ComputeRing
		bHasRing = BANano.CallSub(Module, subName, Array(rowdata))
		sRingColor = rowdata.GetDefault("ringcolor", "")
		bHasRing = UI.CBool(bHasRing)
	End If
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim acolor As String = ""
	If bHasRing Then
		If sRingColor.IndexOf(".") = -1 Then
			acolor = UI.FixColor("ring", sRingColor)
		Else
			Dim fld2 As String = UI.MvField(sRingColor, 2, ".")
			Dim scolor As String = rowdata.GetDefault(fld2, "")
			scolor = UI.CStr(scolor)
			scolor = scolor.ToLowerCase
			acolor = UI.FixColor("ring", scolor)
		End If
		acolor = acolor & " ring ring-offset-base-100 ring-offset-2"
	End If
	'
	Dim btnColor As String = GetColorFromField("bg", bColor, rowdata)
	Dim xonline As String = ""
	xonline = rowdata.GetDefault(tc.OnlineField, "")
	xonline = UI.CStr(xonline)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	If bHasRing = False Then
		cClass = cClass & " border-1"
	End If
	
	Dim act As String =  $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_avatar1" class="avatar ${xonline}">
    <div id="${mName}_${RowCnt}_${fldName}_host" class="${tc.mask} ${cClass} ${btnColor} ${UI.FixSize("w",tc.Size)} ${acolor}">
    <img id="${mName}_${RowCnt}_${fldName}_avatar" src="${fldValu}" alt="" class="bg-cover bg-center bg-no-repeat"></img>
    </div>
    </div>
    </td>"$
	Return act
End Sub
Private Sub BuildRowAvatarPlaceholder(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	'Dim originalValue As String = fldValu
	Dim bColor As String = tc.color
	Dim sRingColor As String = tc.RingColor
	Dim bHasRing As Boolean = tc.HasRing
	'
	If tc.ComputeRing <> "" Then
		Dim subName As String = tc.ComputeRing
		bHasRing = BANano.CallSub(Module, subName, Array(rowdata))
		sRingColor = rowdata.GetDefault("ringcolor", "")
		bHasRing = UI.CBool(bHasRing)
	End If
	'
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim btnColor As String = GetColorFromField("bg", bColor, rowdata)
	'
	Dim acolor As String = ""
	If bHasRing Then
		If sRingColor.IndexOf(".") = -1 Then
			acolor = UI.FixColor("ring", sRingColor)
		Else
			Dim fld2 As String = UI.MvField(sRingColor, 2, ".")
			Dim scolor As String = rowdata.GetDefault(fld2, "")
			scolor = UI.CStr(scolor)
			scolor = scolor.ToLowerCase
			acolor = UI.FixColor("ring", scolor)
		End If
		acolor = acolor & " ring ring-offset-base-100 ring-offset-2"
	End If
	'
	Dim xonline As String = ""
	xonline = rowdata.GetDefault(tc.OnlineField, "")
	xonline = UI.CStr(xonline)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	If bHasRing = False Then
		cClass = cClass & " border-1"
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_avatar1" class="avatar ${xonline} placeholder ${tcolor}">
    <div id="${mName}_${RowCnt}_${fldName}_host" class="${tc.mask} ${cClass} ${UI.FixSize("w",tc.Size)} ${btnColor} ${acolor}">
    <span id="${mName}_${RowCnt}_${fldName}_span">${fldValu}</span>
    </div>
    </div>
    </td>"$
	'*****************
	Return act
End Sub
Private Sub BuildRowAvatarGroup(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	Dim imgCnt As Int = 0
	Dim images As List = UI.StrParse(tc.Delimiter, fldValu)
	Dim timages As Int = images.size
	For Each k As String In images
		If k = "" Then Continue
		imgCnt = BANano.parseInt(imgCnt) + 1
		Dim sItem As String = $"<div id="${mName}_${RowCnt}_${fldName}_avatar1_${imgCnt}" class="avatar">
        <div id="${mName}_${RowCnt}_${fldName}_host_${imgCnt}" class="border-1 ${tc.mask} ${UI.FixSize("w",tc.Size)}">
        <img id="${mName}_${RowCnt}_${fldName}_image_${imgCnt}" src="${k}" alt="" class="bg-cover bg-center bg-no-repeat"></img>
        </div>
        </div>"$
		sbOptions.Append(sItem)
		'only show 5 avatars
		If imgCnt = 5 Then Exit
	Next
	'we have more than 5 images, so add a placeholder
	If timages > 5 Then
		Dim tOthers As Int = BANano.parseInt(timages) - 5
		Dim sItem As String = $"<div id="${mName}_${RowCnt}_${fldName}_avatar1_6" class="avatar avatar-placeholder">
        <div id="${mName}_${RowCnt}_${fldName}_host_${6}" class="border-1 ${tc.mask} bg-neutral text-neutral-content ${UI.FixSize("w",tc.Size)}">
        <span id="${mName}_${RowCnt}_${fldName}_span_6">+${tOthers}</span>
        </div>
        </div>"$
		sbOptions.Append(sItem)
	End If
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_group" class="avatar-group -space-x-3">
    ${sbOptions.ToString}
    </div>
    </td>"$
	sbOptions.Initialize
	'********
	Return act
End Sub
Private Sub BuildRowBadgeGroup(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim boutline As String = ""
	If bBadgesOutlined Then boutline = "badge-outline"
	Dim sh As String = UI.FixSize("h", tc.height)
	Dim bs As String = UI.FixSize("badge", sBadgesSize)
	Dim sbOptions As StringBuilder
	sbOptions.Initialize
	Dim imgCnt As Int = 0
	Dim images As List = UI.StrParse(";", fldValu)
	For Each k As String In images
		k = k.Trim
		If k = "" Then Continue
		imgCnt = BANano.parseInt(imgCnt) + 1
		Dim badgeText As String = UI.MvField(k, 1, ":")
		badgeText = badgeText.Trim
		Dim badgeColor As String = UI.MvField(k, 2, ":")
		badgeColor = badgeColor.Trim
		If badgeColor = badgeText Then badgeColor = ""
		If bColor <> "" Then badgeColor = bColor
		Dim btnColor As String = UI.FixColor("badge", badgeColor)
		'
		Dim sItem As String = $"<div id="${mName}_${RowCnt}_${fldName}_${imgCnt}_badge" class="mr-2 mb-2 py-2 px-4 badge ${sh} ${btnColor} ${boutline} ${cClass} ${bs}">${badgeText}</div>"$
		sbOptions.Append(sItem)
	Next
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_badgegroup" class="flex flex-wrap break-words relative">
    ${sbOptions.ToString}
    </div>
    </td>"$
	sbOptions.Initialize
	'********
	Return act
End Sub
Private Sub BuildRowOther(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim originalValue As String = fldValu
	Dim bColor As String = tc.color
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	If tc.ComputeTextColor <> "" Then
		Dim subName1 As String = tc.ComputeTextColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	Select Case tc.typeof
		Case "filesize"
			fldValu = UI.FormatFileSize(originalValue)
		Case "date"
			fldValu = UI.FormatDisplayDate(originalValue, "ddd, DD MMM YYYY")
		Case "datetime"
			fldValu = UI.FormatDisplayDate(originalValue, "ddd, DD MMM YYYY @ HH:mm:ss")
		Case "money"
			fldValu = UI.FormatDisplayNumber(originalValue, "0,0.00")
		Case "thousand"
			fldValu = UI.FormatDisplayNumber(originalValue, "0,0")
	End Select
	'********
	'the color is sources from the item
	Dim btnColor As String = GetColorFromField("text", bColor, rowdata)
	Dim act As String = $"<td id="${mName}_${RowCnt}_${fldName}"  class="${btnColor} ${BuildClasses(tc)} ${btnColor} ${bgColor} ${cClass}" style="${BuildStyle(tc)}">${fldValu}</td>"$
	'********
	Return act
End Sub
Sub GetColorFromField(prefix As String, bColor As String, rowData As Map) As String
	Dim btnColor As String = ""
	If bColor.IndexOf(".") = -1 Then
		btnColor = UI.FixColor(prefix, bColor)
	Else
		Dim fld2 As String = UI.MvField(bColor, 2, ".")
		Dim scolor As String = rowData.GetDefault(fld2, "")
		scolor = UI.CStr(scolor)
		scolor = scolor.ToLowerCase
		btnColor = UI.FixColor(prefix, scolor)
	End If
	Return btnColor
End Sub
Private Sub BuildRowAction(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String			'ignore
	'Dim originalValue As String = fldValu
	Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim btnColor As String = GetColorFromField("btn", bColor, rowdata)
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", $"${bgColor}-500"$)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	
	'
	Dim btnsize As String = UI.FixSize("btn", sButtonSize)
	Dim iconSize As String = UI.FixIconSize(sButtonSize)
	Dim btnOutlined As String = ""
	If bButtonsOutlined Then btnOutlined = "btn-outline"
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${tcolor} ${bgColor}" style="${BuildStyle(tc)}">
    <button id="${mName}_${RowCnt}_${fldName}_button" class="${tcolor} btn  btn-circle ${btnColor} ${btnsize} ${btnOutlined} ${cClass}">
    <svg id="${mName}_${RowCnt}_${fldName}_icon" data-unique-ids="disabled" data-js="enabled" preserveAspectRatio="xMidYMid meet" fill="currentColor" style="${BuildIconColor(tcolor)};pointer-events:none;width:50%;height:50%" data-src="${tc.icon}"></svg></button>
    </td>"$
	'********
	Return act
End Sub

private Sub BuildIconColor(nc As String) As String
	If nc = "" Then Return ""
	'
	Dim ac As String = nc
	If nc.Contains("-") Then ac = UI.MvField(nc, 2, "-")
	ac = ac.Replace("[", "")
	ac = ac.Replace("]", "")
	Dim sout As String = $"color:${ac}"$
	Return sout
End Sub

private Sub BuildStyle(nc As TableColumn) As String
	Dim colStyle As StringBuilder
	colStyle.Initialize
	'
	Select Case nc.alignment
		Case "center", "right"
			colStyle.Append($"text-align:${nc.alignment}"$)
	End Select
	'
	If nc.colHeight <> "" Then colStyle.Append($";height:${nc.colHeight}"$)
	If nc.colWidth <> "" Then colStyle.Append($";width:${nc.colWidth}"$)
	'
	Dim sout As String = colStyle.ToString
	colStyle.Initialize
	sout = sout.trim
	Return sout
End Sub
'add a row using a map
'affects visible ones only
Sub AddRow(rowdata As Map)
	'clicks for this row
	Dim clicks As Map = CreateMap()
	Dim menus As Map = CreateMap()
	'changes for this row
	Dim changes As Map = CreateMap()
	Dim selection As Map = CreateMap()
	Dim vchanges As Map = CreateMap()
	Dim rchanges As Map = CreateMap()
	Dim schanges As Map = CreateMap()
	Dim fchanges As Map = CreateMap()
	Dim groups As Map = CreateMap()
	Dim dialers As Map = CreateMap()
	Dim groups_sel As Map = CreateMap()
	Dim passwords As Map = CreateMap()
	Dim fclicks As Map = CreateMap()
	rowclick.Initialize
	'
	Dim sbClass As StringBuilder
	sbClass.Initialize
	If bHover Then sbClass.Append("hover")
	Dim sbRow As StringBuilder
	sbRow.Initialize
	Dim RowCnt As Int = BANano.parseInt(Rows.Size) + 1
	Dim colCnt As Int = 0
	'
	If bLowerCase Then
		For Each k As String In rowdata.Keys
			Dim v As String = rowdata.Get(k)
			k = UI.cstr(k)
			v = UI.cstr(v)
			Dim nk As String = k.ToLowerCase
			If k <> nk Then
				rowdata.Put(nk, v)
				rowdata.Remove(k)
			End If
		Next
	End If
	'
	'add the row data
	sbRow.append($"<tr id="${mName}_${RowCnt}" class="${mName}tblrow ${sbClass.tostring}">"$)
	sbClass.Initialize
	'has select all
	If bSelectAll Then
		Dim sa As String = $"<th id="${mName}_${RowCnt}_th" class="w-[5rem]"><label><input id="${mName}_${RowCnt}_selectall" type="checkbox" class="checkbox"></input></label></th>"$
		sbRow.Append(sa)
		selection.Put($"${mName}_${RowCnt}_selectall"$, "")
	End If
	'get the columns
	Dim colTot As Int = Columns.size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim fldName As String = Columns.GetKeyAt(colCnt)
		Dim tc As TableColumn = Columns.Get(fldName)
		Dim fldValu As String = rowdata.GetDefault(fldName, "")
		fldValu = UI.CStr(fldValu)
		'
		Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
		subtitle = UI.CStr(subtitle)
		Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
		subtitle1 = UI.CStr(subtitle1)
		'
		Select Case tc.typeof
			Case "titleicon"
				Dim act As String = BuildRowTitleIcon(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_icon"$, "")
				clicks.put($"${mName}_${RowCnt}_${fldName}_subtitle"$, "")
			Case "icontitle"
				Dim act As String = BuildRowIconTitle(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_icon"$, "")
				clicks.put($"${mName}_${RowCnt}_${fldName}_subtitle"$, "")
			Case "icon"
				Dim act As String = BuildRowIcon(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				'is icon from records
				Dim sicon As String = tc.icon
				Dim theicon As String = ""
				If sicon.indexof(".") = -1 Then
					theicon = tc.icon
				Else
					Dim fld2 As String = UI.MvField(sicon, 2, ".")
					Dim fld1 As String = rowdata.GetDefault(fld2, "")
					fld1 = UI.CStr(fld1)
					theicon = fld1
				End If
				If rowdata.ContainsKey(fldName) Then rowdata.Put(fldName, theicon)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_icon"$, "")
			Case "clicklink"
				Dim act As String = BuildRowClickLink(mCallBack,fldName, fldValu, rowdata, RowCnt, tc)
				If rowdata.ContainsKey(fldName) Then rowdata.Put(fldName, subtitle)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_clicklink"$, "")
			Case "link"
				Dim act As String = BuildRowLink(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
			Case "color"
				Dim act As String = BuildRowColor(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
			Case "website"
				Dim act As String = BuildRowWebsite(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
			Case "email"
				Dim act As String = BuildRowEmail(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
			Case "toggle"
				Dim act As String = BuildRowToggle(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				Dim bchecked As Boolean = UI.CBool(fldValu)
				If rowdata.ContainsKey(fldName) Then rowdata.Put(fldName, bchecked)
				sbRow.Append(act)
				changes.Put($"${mName}_${RowCnt}_${fldName}_toggle"$, "")
			Case "checkbox"
				Dim act As String = BuildRowCheckBox(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				Dim bchecked As Boolean = UI.CBool(fldValu)
				If rowdata.ContainsKey(fldName) Then rowdata.Put(fldName, bchecked)
				sbRow.Append(act)
				changes.Put($"${mName}_${RowCnt}_${fldName}_checkbox"$, "")
			Case "range"
				Dim act As String = BuildRowRange(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_range"$, "")
			Case "progress"
				Dim act As String = BuildRowProgress(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_progress"$, "")
			Case "radial"
				Dim act As String = BuildRowRadial(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_radial"$, "")
			Case "radiogroup"
				Dim act As String = BuildRowRadioGroup(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				Dim options As Map = tc.options
				For Each k As String In options.Keys
					rchanges.Put($"${mName}_${RowCnt}_${fldName}_${k}_radio"$, "")
				Next
				sbRow.Append(act)
			Case "select"
				Dim act As String = BuildRowSelect(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				schanges.Put($"${mName}_${RowCnt}_${fldName}_select"$, "")
			Case "passwordgroup"
				Dim act As String = BuildRowPasswordGroup(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
				passwords.Put(fldName, fldName)
			Case "selectgroup"
				Dim act As String = BuildRowSelectGroup(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				schanges.Put($"${mName}_${RowCnt}_${fldName}_select"$, "")
				groups_sel.Put(fldName, fldName)
			Case "textboxgroup"
				Dim act As String = BuildRowTextBoxGroup(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
				groups.Put(fldName, fldName)
			Case "dialer"
				Dim act As String = BuildRowDialer(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
				dialers.Put(fldName, fldName)
			Case "telephone"
				Dim act As String = BuildRowTelephone(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
			Case "textbox"
				Dim act As String = BuildRowTextBox(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
			Case "fileinputprogress"
				Dim act As String = BuildRowFileInputProgress(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				fclicks.Put($"${mName}_${RowCnt}_${fldName}_button"$, "")
				fchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
			Case "file"
				Dim act As String = BuildRowFile(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				fchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
			Case "password"
				Dim act As String = BuildRowPassword(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
			Case "number"
				Dim act As String = BuildRowNumber(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
			Case "datepicker"
				Dim act As String = BuildRowDatePicker(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
				'
				Dim dp1 As Map = CreateMap()
				dp1.Put("altInput", False)
				dp1.Put("allowInput", True)
				If tc.altFormat <> "" Then
					dp1.Put("altFormat", tc.altFormat)
					dp1.Put("altInput", True)
				End If
				If tc.Locale <> "" Then dp1.Put("locale", tc.Locale)
				dp1.Put("closeOnSelect",True)
				If tc.range Then
					dp1.Put("mode", "range")
					dp1.Put("showMonths", 2)
					dp1.Remove("closeOnSelect")
				End If
				If tc.multiple Then
					dp1.Put("mode", "multiple")
					dp1.Put("showMonths", 2)
					dp1.Remove("closeOnSelect")
				End If
				dp1.Put("weekNumbers", False)
				dp1.Put("enableTime", False)
				If tc.DateFormat <> "" Then dp1.Put("dateFormat", tc.dateFormat)
				dp1.Put("noCalendar", False)
				dp1.put("disableMobile", True)
				'dp1.Put("allowInvalidPreload", True)
				datepickers.Put($"${mName}_${RowCnt}_${fldName}_input"$, dp1)
				DPValue.Put($"${mName}_${RowCnt}_${fldName}_input"$, fldValu)
			Case "datetimepicker"
				Dim act As String = BuildRowDateTimePicker(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
				'
				Dim dp1 As Map = CreateMap()
				dp1.Put("closeOnSelect",True)
				dp1.Put("allowInput", True)
				If tc.range Then
					dp1.Put("mode", "range")
					dp1.Put("showMonths", 2)
					dp1.Remove("closeOnSelect")
				End If
				If tc.multiple Then
					dp1.Put("mode", "multiple")
					dp1.Put("showMonths", 2)
					dp1.Remove("closeOnSelect")
				End If
				dp1.Put("altInput", False)
				If tc.altFormat <> "" Then
					dp1.Put("altFormat", tc.altFormat)
					dp1.Put("altInput", True)
				End If
				dp1.Put("weekNumbers", False)
				dp1.Put("enableTime", True)
				If tc.DateFormat <> "" Then dp1.Put("dateFormat", tc.dateFormat)
				dp1.Put("noCalendar", False)
				'dp1.Put("allowInvalidPreload", True)
				If tc.Locale <> "" Then dp1.Put("locale", tc.Locale)
				dp1.Put("time_24hr", True)
				dp1.put("disableMobile", True)
				datepickers.Put($"${mName}_${RowCnt}_${fldName}_input"$, dp1)
				DPValue.Put($"${mName}_${RowCnt}_${fldName}_input"$, fldValu)
			Case "timepicker"
				Dim act As String = BuildRowTimePicker(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
				'
				Dim dp1 As Map = CreateMap()
				dp1.Put("closeOnSelect",True)
				dp1.Put("allowInput", True)
				dp1.Put("altInput", False)
				dp1.Put("altFormat", "")
				dp1.Put("weekNumbers", False)
				dp1.Put("enableTime", True)
				If tc.DateFormat <> "" Then dp1.Put("dateFormat", tc.dateFormat)
				dp1.Put("noCalendar", tc.noCalendar)
				dp1.put("disableMobile", True)
				'dp1.Put("allowInvalidPreload", True)
				If tc.Locale <> "" Then dp1.Put("locale", tc.Locale)
				dp1.Put("time_24hr", True)
				datepickers.Put($"${mName}_${RowCnt}_${fldName}_input"$, dp1)
				DPValue.Put($"${mName}_${RowCnt}_${fldName}_input"$, fldValu)
			Case "textarea"
				Dim act As String = BuildRowTextArea(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				vchanges.Put($"${mName}_${RowCnt}_${fldName}_textarea"$, "")
			Case "rating"
				Dim act As String = BuildRowRating(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				Dim rCnt As Int = 0
				For rCnt = 1 To tc.size
					rchanges.put($"${mName}_${RowCnt}_${fldName}_${rCnt}_rating"$, "")
				Next
				sbRow.Append(act)
			Case "badge"
				Dim act As String = BuildRowBadge(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_badge"$, "")
			Case "button"
				Dim act As String = BuildRowButton(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_button"$, "")
			Case "menu", "menuicon"
				Dim act As String = BuildRowMenu(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				Dim options As Map = tc.options
				For Each k As String In options.Keys
					menus.Put($"${mName}_${RowCnt}_${fldName}_${k}_li"$, "")
					menus.Put($"${mName}_${RowCnt}_${fldName}_${k}_a"$, "")
				Next
				sbRow.Append(act)
			Case "action"
				Dim act As String = BuildRowAction(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_button"$, "")
				clicks.put($"${mName}_${RowCnt}_${fldName}_icon"$, "")
			Case "fileaction"
				Dim act As String = BuildRowFileAction(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				fclicks.Put($"${mName}_${RowCnt}_${fldName}_button"$, "")
				fchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
			Case "normal", "filesize", "date", "datetime", "money", "thousand"
				Dim act As String = BuildRowOther(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
			Case "image"
				Dim act As String = BuildRowImage(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_image"$, "")
			Case "badgegroup"
				Dim act As String = BuildRowBadgeGroup(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
			Case "avatargroup"
				Dim act As String = BuildRowAvatarGroup(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
			Case "avatarplaceholder"
				Dim act As String = BuildRowAvatarPlaceholder(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
			Case "avatar"
				Dim act As String = BuildRowAvatar(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_avatar"$, "")
			Case "titlesubtitle"
				Dim act As String = BuildRowTitleSubtitle(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
			Case "badgeavatartitle"
				Dim act As String = BuildRowBadgeAvatarTitle(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_avatar"$, "")
				clicks.put($"${mName}_${RowCnt}_${fldName}_title"$, "")
			Case "avatartitle"
				Dim act As String = BuildRowAvatarTitle(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_avatar"$, "")
				clicks.put($"${mName}_${RowCnt}_${fldName}_title"$, "")
			Case "avatartitlesubtitle"
				Dim act As String = BuildRowAvatarTitleSubtitle(mCallBack, fldName, fldValu, rowdata, RowCnt, tc)
				sbRow.Append(act)
				clicks.put($"${mName}_${RowCnt}_${fldName}_avatar"$, "")
				clicks.put($"${mName}_${RowCnt}_${fldName}_title"$, "")
				clicks.put($"${mName}_${RowCnt}_${fldName}_subtitle"$, "")
		End Select
	Next
	sbRow.Append("</tr>")
	Dim strRow As String = sbRow.tostring
	sbRow.Initialize
	BANano.Await(UI.AppendByID($"${mName}_body"$, strRow))
	'do we have computed row stuff
	If tblComputeRowColor <> "" Then
		Dim rtColor As String = BANano.CallSub(mCallBack, tblComputeRowColor, Array(rowdata))
		If rtColor <> "" Then
			Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}"$)
			Dim xclass As String = UI.FixColor("text", rtColor)
			rowElement.AddClass(xclass)
		End If
	End If
	'
	If tblComputeBackgroundColor <> "" Then
		Dim rbgColor As String = BANano.CallSub(mCallBack, tblComputeBackgroundColor, Array(rowdata))
		If rbgColor <> "" Then
			Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}"$)
			Dim xcol As String = UI.FixColor("bg", $"${rbgColor}-500"$)
			Dim xclass As String = $"[&>*]:${xcol}"$
			rowElement.AddClass(xclass)
		End If
	End If
	Rows.Add(rowdata)
	'passwords
	For Each fldName As String In passwords.Keys
		Dim tc As TableColumn = Columns.Get(fldName)
		Dim elPrepend As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prepend"$)
		Dim elPrependIcon As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prepend_icon"$)
		Dim elAppend As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_append"$)
		Dim elAppendIcon As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_append_icon"$)
		Dim elInput As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_input"$)
		'
		If tc.PrependIcon = "" Then
			elPrepend.Remove
		Else
			elPrepend.RemoveClass("hidden")
			elPrepend.SetData("icon", tc.PrependIcon)
			elPrependIcon.AddClass(tc.PrependIcon)
			elPrependIcon.SetData("icon", tc.PrependIcon)
			elInput.RemoveClass("tlradius")
			elInput.RemoveClass("blradius")
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-top-left-radius": "0px")))
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-bottom-left-radius": "0px")))
			elPrepend.on("click", Me, "PasswordPrepend")
		End If
		'
		If tc.AppendIcon = "" Then
			elAppend.Remove
		Else
			elAppend.RemoveClass("hidden")
			elAppend.SetData("icon", tc.AppendIcon)
			elAppendIcon.AddClass(tc.AppendIcon)
			elAppendIcon.SetData("icon", tc.AppendIcon)
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-top-right-radius": "0px")))
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-bottom-right-radius": "0px")))
			elInput.RemoveClass("trradius")
			elInput.RemoveClass("brradius")
			elAppend.on("click", Me, "PasswordAppend")
		End If
	Next
	'dialers
	For Each fldName As String In dialers.Keys
		Dim tc As TableColumn = Columns.Get(fldName)
		Dim elPrepend As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prepend"$)
		Dim elPrependIcon As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prepend_icon"$)
		Dim elAppend As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_append"$)
		Dim elAppendIcon As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_append_icon"$)
		Dim elInput As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_input"$)
		'
		Dim bsm As Map = CreateMap("border-top-left-radius": "0px", _
        "border-bottom-left-radius": "0px", "border-top-right-radius": "0px", "border-bottom-right-radius": "0px")
		elInput.SetStyle(BANano.ToJson(bsm))
		'
		elInput.AddClass("text-center")
		elInput.SetAttr("min", tc.MinValue)
		elInput.SetAttr("max", tc.maxvalue)
		elInput.SetAttr("step", tc.StepValue)
		'
		elPrependIcon.AddClass(tc.PrependIcon)
		elPrepend.AddClass("text-current bg-base-100 hover:bg-transparent")
		elPrepend.SetData("icon", tc.PrependIcon)
		elAppend.SetData("icon", tc.AppendIcon)
		elPrependIcon.SetData("icon", tc.PrependIcon)
		elAppendIcon.SetData("icon", tc.AppendIcon)
		elPrepend.on("click", Me, "Decrement")
		elAppendIcon.AddClass(tc.AppendIcon)
		elAppend.AddClass("text-current bg-base-100 hover:bg-transparent")
		elAppend.on("click", Me, "Increment")
	Next
	'
	For Each fldName As String In groups_sel.Keys
		Dim tc As TableColumn = Columns.Get(fldName)
		Dim elPrefix As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prefix"$)
		Dim elPrepend As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prepend"$)
		Dim elPrependIcon As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prepend_icon"$)
		Dim elSuffix As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_suffix"$)
		Dim elAppend As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_append"$)
		Dim elAppendIcon As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_append_icon"$)
		Dim elSelect As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_select"$)
		'
		If tc.Prefix = "" Then
			elPrefix.Remove
		Else
			elPrefix.RemoveClass("hidden")
			elPrefix.SetText(BANano.SF(tc.Prefix))
			elPrefix.RemoveClass("tlradius")
			elPrefix.RemoveClass("blradius")
			'elSelect.SetStyle(BANano.ToJson(CreateMap("border-top-left-radius": "0px")))
			'elSelect.SetStyle(BANano.ToJson(CreateMap("border-bottom-left-radius": "0px")))
		End If
		'
		If tc.suffix = "" Then
			elSuffix.Remove
		Else
			elSuffix.RemoveClass("hidden")
			elSuffix.SetText(BANano.SF(tc.suffix))
			'elSelect.SetStyle(BANano.ToJson(CreateMap("border-top-right-radius": "0px")))
			'elSelect.SetStyle(BANano.ToJson(CreateMap("border-bottom-right-radius": "0px")))
			elSelect.RemoveClass("trradius")
			elSelect.RemoveClass("brradius")
		End If
		'
		If tc.PrependIcon = "" Then
			elPrepend.Remove
		Else
			elPrepend.RemoveClass("hidden")
			elPrependIcon.AddClass(tc.PrependIcon)
			elPrepend.SetData("icon", tc.PrependIcon)
			elPrependIcon.SetData("icon", tc.PrependIcon)
			elSelect.RemoveClass("tlradius")
			elSelect.RemoveClass("blradius")
			'elSelect.SetStyle(BANano.ToJson(CreateMap("border-top-left-radius": "0px")))
			'elSelect.SetStyle(BANano.ToJson(CreateMap("border-bottom-left-radius": "0px")))
			elPrepend.on("click", Me, "PrependClick")
		End If
		'
		If tc.AppendIcon = "" Then
			elAppend.Remove
		Else
			elAppend.RemoveClass("hidden")
			elAppendIcon.AddClass(tc.AppendIcon)
			elAppend.SetData("icon", tc.AppendIcon)
			elAppendIcon.SetData("icon", tc.AppendIcon)
			'elSelect.SetStyle(BANano.ToJson(CreateMap("border-top-right-radius": "0px")))
			'elSelect.SetStyle(BANano.ToJson(CreateMap("border-bottom-right-radius": "0px")))
			elSelect.RemoveClass("trradius")
			elSelect.RemoveClass("brradius")
			elAppend.on("click", Me, "AppendClick")
		End If
	Next
	'goups
	For Each fldName As String In groups.Keys
		Dim tc As TableColumn = Columns.Get(fldName)
		Dim elPrefix As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prefix"$)
		Dim elPrepend As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prepend"$)
		Dim elPrependIcon As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_prepend_icon"$)
		Dim elSuffix As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_suffix"$)
		Dim elAppend As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_append"$)
		Dim elAppendIcon As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_append_icon"$)
		Dim elInput As BANanoElement = BANano.GetElement($"#${mName}_${RowCnt}_${fldName}_input"$)
		'
		If tc.Prefix = "" Then
			elPrefix.Remove
		Else
			elPrefix.RemoveClass("hidden")
			elPrefix.SetText(BANano.SF(tc.Prefix))
			elPrefix.RemoveClass("tlradius")
			elPrefix.RemoveClass("blradius")
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-top-left-radius": "0px")))
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-bottom-left-radius": "0px")))
		End If
		'
		If tc.suffix = "" Then
			elSuffix.Remove
		Else
			elSuffix.RemoveClass("hidden")
			elSuffix.SetText(BANano.SF(tc.suffix))
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-top-right-radius": "0px")))
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-bottom-right-radius": "0px")))
			elInput.RemoveClass("trradius")
			elInput.RemoveClass("brradius")
		End If
		'
		If tc.PrependIcon = "" Then
			elPrepend.Remove
		Else
			elPrepend.RemoveClass("hidden")
			elPrependIcon.AddClass(tc.PrependIcon)
			elPrepend.SetData("icon", tc.PrependIcon)
			elPrependIcon.SetData("icon", tc.PrependIcon)
			elInput.RemoveClass("tlradius")
			elInput.RemoveClass("blradius")
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-top-left-radius": "0px")))
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-bottom-left-radius": "0px")))
			elPrepend.on("click", Me, "PrependClick")
		End If
		'
		If tc.AppendIcon = "" Then
			elAppend.Remove
		Else
			elAppend.RemoveClass("hidden")
			elAppendIcon.AddClass(tc.AppendIcon)
			elAppend.SetData("icon", tc.AppendIcon)
			elAppendIcon.SetData("icon", tc.AppendIcon)
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-top-right-radius": "0px")))
			'elInput.SetStyle(BANano.ToJson(CreateMap("border-bottom-right-radius": "0px")))
			elInput.RemoveClass("trradius")
			elInput.RemoveClass("brradius")
			elAppend.on("click", Me, "AppendClick")
		End If
	Next
	'
	For Each clickevent As String In menus.keys
		Dim rowEL1 As BANanoElement
		rowEL1.Initialize($"#${clickevent}"$)
		rowEL1.Off("click")
		rowEL1.on("click", Me, "HandleMenuRow")
	Next
	'
	For Each clickevent As String In rowclick.keys
		Dim rowEL1 As BANanoElement
		rowEL1.Initialize($"#${clickevent}"$)
		rowEL1.Off("click")
		rowEL1.on("click", Me, "HandleRowClick")
	Next
	'button click per column
	For Each clickevent As String In clicks.keys
		Dim rowEL As BANanoElement
		rowEL.Initialize($"#${clickevent}"$)
		rowEL.Off("click")
		rowEL.on("click", Me, "HandleClick")
	Next
	For Each clickevent As String In fclicks.keys
		Dim rowEL As BANanoElement
		rowEL.Initialize($"#${clickevent}"$)
		rowEL.Off("click")
		rowEL.on("click", Me, "HandleFileClick")
	Next
	For Each checkevent As String In selection.Keys
		Dim rowCH As BANanoElement
		rowCH.Initialize($"#${checkevent}"$)
		rowCH.HandleEvents("change", Me, "HandleSelection")
	Next
	For Each checkevent As String In changes.Keys
		Dim rowCH As BANanoElement
		rowCH.Initialize($"#${checkevent}"$)
		rowCH.HandleEvents("change", Me, "HandleChange")
	Next
	For Each vcheckevent As String In vchanges.Keys
		Dim rowCH As BANanoElement
		rowCH.Initialize($"#${vcheckevent}"$)
		rowCH.HandleEvents("change", Me, "HandleChangeV")
	Next
	For Each fevent As String In fchanges.Keys
		Dim rowCH As BANanoElement
		rowCH.Initialize($"#${fevent}"$)
		rowCH.HandleEvents("change", Me, "HandleChangeF")
	Next
	For Each ratevent As String In rchanges.Keys
		Dim rowCH As BANanoElement
		rowCH.Initialize($"#${ratevent}"$)
		rowCH.HandleEvents("change", Me, "HandleChangeR")
	Next
	For Each selevent As String In schanges.Keys
		Dim rowCH As BANanoElement
		rowCH.Initialize($"#${selevent}"$)
		rowCH.HandleEvents("change", Me, "HandleChangeS")
	Next
	For Each dpx As String In datepickers.Keys
		Dim fv As String = DPValue.Get(dpx)
		Dim opt As Map = datepickers.Get(dpx)
		Dim xkey As String = $"#${dpx}"$
		Dim fp As BANanoObject = BANano.RunJavascriptMethod("flatpickr", Array(xkey, opt))
		UI.SetValueByID(dpx, fv)
		fp.RunMethod("setDate", Array(fv))
	Next
End Sub
'
Private Sub BuildRowAvatarTitleSubtitle(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	Dim sRingColor As String = tc.RingColor
	Dim bHasRing As Boolean = tc.HasRing
	'
	If tc.ComputeRing <> "" Then
		Dim subName As String = tc.ComputeRing
		bHasRing = BANano.CallSub(Module, subName, Array(rowdata))
		sRingColor = rowdata.GetDefault("ringcolor", "")
		bHasRing = UI.CBool(bHasRing)
	End If
	'
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim acolor As String = ""
	If bHasRing Then
		If sRingColor.IndexOf(".") = -1 Then
			acolor = UI.FixColor("ring", sRingColor)
		Else
			Dim fld2 As String = UI.MvField(sRingColor, 2, ".")
			Dim scolor As String = rowdata.GetDefault(fld2, "")
			scolor = UI.CStr(scolor)
			scolor = scolor.ToLowerCase
			acolor = UI.FixColor("ring", scolor)
		End If
		acolor = acolor & " ring ring-offset-base-100 ring-offset-2"
	End If
	'
	Dim xonline As String = ""
	xonline = rowdata.GetDefault(tc.OnlineField, "")
	xonline = UI.CStr(xonline)
	'
	Dim subcontent As String = rowdata.GetDefault(tc.subtitle, "")
	subcontent = UI.CStr(subcontent)
	'
	Dim btnColor As String = GetColorFromField("text", bColor, rowdata)
	'
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	If bHasRing = False Then
		cClass = cClass & " border-1"
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_flex" class="flex items-center space-x-3">
    <div id="${mName}_${RowCnt}_${fldName}_avatar1" class="avatar ${xonline}">
    <div id="${mName}_${RowCnt}_${fldName}_host" class="${tc.mask} ${UI.FixSize("w",tc.Size)} ${acolor} ${cClass}">
    <img id="${mName}_${RowCnt}_${fldName}_avatar" alt="" src="${fldValu}" alt="${subcontent}" class="bg-cover bg-center bg-no-repeat"></img>
    </div>
    </div>
    <div id="${mName}_${RowCnt}_${fldName}_text">
    <div id="${mName}_${RowCnt}_${fldName}_title" class="${tcolor} ${btnColor}">${subtitle}</div>
    <div id="${mName}_${RowCnt}_${fldName}_subtitle" class="${tcolor} ${btnColor} text-sm">${subtitle1}</div>
    </div>
    </div>
    </td>"$
	'*****************
	Return act
End Sub
'
Private Sub BuildRowAvatarTitle(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	'Dim originalValue As String = fldValu
	Dim bColor As String = tc.color
	Dim sRingColor As String = tc.RingColor
	Dim bHasRing As Boolean = tc.HasRing
	'
	If tc.ComputeRing <> "" Then
		Dim subName As String = tc.ComputeRing
		bHasRing = BANano.CallSub(Module, subName, Array(rowdata))
		sRingColor = rowdata.GetDefault("ringcolor", "")
		bHasRing = UI.CBool(bHasRing)
	End If
	'
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	Dim acolor As String = ""
	If bHasRing Then
		If sRingColor.IndexOf(".") = -1 Then
			acolor = UI.FixColor("ring", sRingColor)
		Else
			Dim fld2 As String = UI.MvField(sRingColor, 2, ".")
			Dim scolor As String = rowdata.GetDefault(fld2, "")
			scolor = UI.CStr(scolor)
			scolor = scolor.ToLowerCase
			acolor = UI.FixColor("ring", scolor)
		End If
		acolor = acolor & " ring ring-offset-base-100 ring-offset-2"
	End If
	'
	Dim xonline As String = ""
	xonline = rowdata.GetDefault(tc.OnlineField, "")
	xonline = UI.CStr(xonline)
	'
	Dim btnColor As String = GetColorFromField("text", bColor, rowdata)
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim subcontent As String = rowdata.GetDefault(tc.subtitle, "")
	subcontent = UI.CStr(subcontent)
	If bHasRing = False Then
		cClass = cClass & " border-1"
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${bgColor}" style="${BuildStyle(tc)}">
    <div class="flex items-center space-x-3">
    <div id="${mName}_${RowCnt}_${fldName}_avatar1" class="avatar ${xonline}">
    <div id="${mName}_${RowCnt}_${fldName}_host" class="${tc.mask} ${UI.FixSize("w",tc.Size)} ${acolor} ${cClass}">
    <img id="${mName}_${RowCnt}_${fldName}_avatar" alt="" src="${fldValu}" alt="${subcontent}" class="bg-cover bg-center bg-no-repeat"></img>
    </div>
    </div>
    <div>
    <div id="${mName}_${RowCnt}_${fldName}_title" class="${tcolor} ${btnColor}">${subtitle}</div>
    </div>
    </div>
    </td>"$
	'*****************
	Return act
End Sub
Private Sub BuildRowBadgeAvatarTitle(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.color
	Dim sRingColor As String = tc.RingColor
	Dim bHasRing As Boolean = tc.HasRing
	'
	If tc.ComputeRing <> "" Then
		Dim subName As String = tc.ComputeRing
		bHasRing = BANano.CallSub(Module, subName, Array(rowdata))
		sRingColor = rowdata.GetDefault("ringcolor", "")
		bHasRing = UI.CBool(bHasRing)
	End If
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'
	Dim acolor As String = ""
	If bHasRing Then
		If sRingColor.IndexOf(".") = -1 Then
			acolor = UI.FixColor("ring", sRingColor)
		Else
			Dim fld2 As String = UI.MvField(sRingColor, 2, ".")
			Dim scolor As String = rowdata.GetDefault(fld2, "")
			scolor = UI.CStr(scolor)
			scolor = scolor.ToLowerCase
			acolor = UI.FixColor("ring", scolor)
		End If
		acolor = acolor & " ring ring-offset-base-100 ring-offset-2"
	End If
	'
	Dim xonline As String = ""
	xonline = rowdata.GetDefault(tc.OnlineField, "")
	xonline = UI.CStr(xonline)
	'********
	Dim boutline As String = ""
	If bBadgesOutlined Then boutline = "badge-outline"
	Dim btnColor As String = ""
	If bColor.IndexOf(".") = -1 Then
		If bColor.StartsWith("#") Then
			btnColor = $"bg-[${bColor}]"$
		Else
			btnColor = UI.FixColor("badge", bColor)
		End If
	Else
		Dim fld2 As String = UI.MvField(bColor, 2, ".")
		Dim scolor As String = rowdata.GetDefault(fld2, "")
		scolor = UI.CStr(scolor)
		If scolor.StartsWith("#") Then
			btnColor = $"bg-[${scolor}]"$
		Else
			scolor = scolor.ToLowerCase
			btnColor = UI.FixColor("badge", scolor)
		End If
	End If
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	'
	Dim tcolor As String = UI.FixColor("text", tc.TextColor)
	If tc.ComputeTextColor <> "" Then
		Dim subName As String = tc.ComputeTextColor
		tcolor = BANano.CallSub(Module, subName, Array(rowdata))
		tcolor = UI.FixColor("text", tcolor)
	End If
	
	Dim subcontent As String = rowdata.GetDefault(tc.subtitle, "")
	subcontent = UI.CStr(subcontent)
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}" class="${BuildClasses(tc)} ${bgColor}" style="${BuildStyle(tc)}">
    <div id="${mName}_${RowCnt}_${fldName}_badge" class="badge rounded-full ${UI.FixSize("h",tc.size)} ${btnColor} ${cClass} ${boutline}">
    <div id="${mName}_${RowCnt}_${fldName}_avatar1" class="avatar ${xonline} -ml-3">
    <div id="${mName}_${RowCnt}_${fldName}_host" class="rounded-full ${tc.mask} ${acolor} ${UI.FixSize("w",tc.Size)}">
    <img id="${mName}_${RowCnt}_${fldName}_avatar" src="${fldValu}" alt="${subcontent}" class="bg-cover bg-center bg-no-repeat">
    </div>
    </div>
    <span id="${mName}_${RowCnt}_${fldName}_title" class="${tcolor} ml-2">${subcontent}</span>
    </div>
    </td>"$
	'*****************
	Return act
End Sub
private Sub HandleRowClick(event As BANanoEvent)     'ignoredeadcode
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	If SubExists(mCallBack, $"${mName}_rowclick"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(rowx)
		'#Event: RowClick (Row As Int, item As Map)
		BANano.CallSub(mCallBack, mName & "_rowclick", Array(rowpos, rowc))
	End If
End Sub
private Sub HandleMenuRow(event As BANanoEvent)     'ignoredeadcode
	'menus.Put($"${mName}_${RowCnt}_${fldName}_${k}_li"$, "")
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src, 4, "_")
	If SubExists(mCallBack, $"${mName}_menuitemrow"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(rowx)
		'#Event: MenuRow (Row As Int, Action As String, item As Map)
		BANano.CallSub(mCallBack, mName & "_menuitemrow", Array(rowpos, action, rowc))
	End If
End Sub
private Sub HandleSelection(event As BANanoEvent)     'ignoredeadcode
	'#Event: SelectRow (Status as boolean, Row As Int, item As Map)
	'selection.Put($"${mName}_${RowCnt}_selectall"$, "")
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	If SubExists(mCallBack, $"${mName}_SelectRow"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(rowx)
		Dim b As Boolean = BANano.GetElement($"#${src}"$).GetChecked
		BANano.CallSub(mCallBack, mName & "_SelectRow", Array(b, rowpos, rowc))
	End If
End Sub
'we use this to get the id of the clicked item
private Sub HandleChange(event As BANanoEvent)     'ignoredeadcode
	'#Event: Checked (Checked As Boolean, Column As String, item As Map)
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'Dim tblname As String = UI.MvField(src, 1, "_")
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src,3, "_")
	If SubExists(mCallBack, $"${mName}_change"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(rowx)
		Dim b As Boolean = BANano.GetElement($"#${src}"$).GetChecked
		BANano.CallSub(mCallBack, mName & "_change", Array(b, action, rowc))
	else If SubExists(mCallBack, $"${mName}_changerow"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(rowx)
		Dim b As Boolean = BANano.GetElement($"#${src}"$).GetChecked
		BANano.CallSub(mCallBack, mName & "_changerow", Array(rowpos, b, action, rowc))
	End If
End Sub
private Sub HandleChangeS(event As BANanoEvent)     'ignoredeadcode
	'#Event: Checked (Checked As Boolean, Column As String, item As Map)
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src, 3, "_")
	Dim value As String = BANano.GetElement($"#${src}"$).GetValue
	If SubExists(mCallBack, $"${mName}_change"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim Rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(Rowx)
		BANano.CallSub(mCallBack, mName & "_change", Array(value, action, rowc))
	else If SubExists(mCallBack, $"${mName}_changerow"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim Rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(Rowx)
		BANano.CallSub(mCallBack, mName & "_changerow", Array(rowpos, value, action, rowc))
	End If
End Sub
private Sub HandleChangeR(event As BANanoEvent)     'ignoredeadcode
	'#Event: Checked (Checked As Boolean, Column As String, item As Map)
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'Dim tblname As String = UI.MvField(src, 1, "_")
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src, 3, "_")
	Dim value As String = UI.MvField(src, 4, "_")
	If SubExists(mCallBack, $"${mName}_change"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim Rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(Rowx)
		BANano.CallSub(mCallBack, mName & "_change", Array(value, action, rowc))
	else If SubExists(mCallBack, $"${mName}_changerow"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim Rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(Rowx)
		BANano.CallSub(mCallBack, mName & "_changerow", Array(rowpos, value, action, rowc))
	End If
End Sub
private Sub HandleChangeV(event As BANanoEvent)     'ignoredeadcode
	'#Event: Checked (Checked As Boolean, Column As String, item As Map)
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'Dim tblname As String = UI.MvField(src, 1, "_")
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src,3, "_")
	If SubExists(mCallBack, $"${mName}_change"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(rowx)
		Dim b As Object = BANano.GetElement($"#${src}"$).GetValue
		UpdateRangeText(rowpos + 1, action, b)
		BANano.CallSub(mCallBack, mName & "_change", Array(b, action, rowc))
	else If SubExists(mCallBack, $"${mName}_changerow"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(rowx)
		Dim b As Object = BANano.GetElement($"#${src}"$).GetValue
		UpdateRangeText(rowpos + 1, action, b)
		BANano.CallSub(mCallBack, mName & "_changerow", Array(rowpos, b, action, rowc))
	End If
End Sub
private Sub HandleChangeF(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'Dim tblname As String = UI.MvField(src, 1, "_")
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src,3, "_")
	If SubExists(mCallBack, $"${mName}_change"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(rowx)
		Dim b As Object = BANano.GetElement($"#${src}"$).GetField("files").Result
		Dim res As List = b.As(List)
		Dim filex As Map = res.Get(0)
		BANano.CallSub(mCallBack, mName & "_change", Array(filex, action, rowc))
	else If SubExists(mCallBack, $"${mName}_changerow"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(rowx)
		Dim b As Object = BANano.GetElement($"#${src}"$).GetField("files").Result
		Dim res As List = b.As(List)
		Dim filex As Map = res.Get(0)
		BANano.CallSub(mCallBack, mName & "_changerow", Array(rowpos, filex, action, rowc))
	End If
End Sub
private Sub Decrement(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src,3, "_")
	'
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${rowpos}_${action}_input"$)
	Dim minvalue As Int = UI.CInt(el.GetAttr("min"))
	Dim stpvalue As Int = UI.CInt(el.GetAttr("step"))
	Dim curvalue As Int = UI.CInt(el.GetValue)
	Dim nxtvalue As Int = BANano.parseInt(curvalue) - BANano.parseInt(stpvalue)
	If nxtvalue < minvalue Then
		nxtvalue = minvalue
		el.SetValue(minvalue)
	Else
		el.SetValue(nxtvalue)
	End If
	'
	rowpos = BANano.parseInt(rowpos) - 1
	Dim Rowx As Map = GetRow(rowpos)
	Dim rowc As Map = BANano.DeepClone(Rowx)
	rowc.Put(action, nxtvalue)
	'
	If SubExists(mCallBack, $"${mName}_Decrement"$) Then
		BANano.CallSub(mCallBack, mName & "_Decrement", Array(rowpos, action, rowc))
	else If SubExists(mCallBack, $"${mName}_change"$) Then
		BANano.CallSub(mCallBack, mName & "_change", Array(nxtvalue, action, rowc))
	else If SubExists(mCallBack, $"${mName}_changerow"$) Then
		BANano.CallSub(mCallBack, mName & "_changerow", Array(rowpos, nxtvalue, action, rowc))
	End If
End Sub
private Sub Increment(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src,3, "_")
	'
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${rowpos}_${action}_input"$)
	Dim maxvalue As Int = UI.CInt(el.GetAttr("max"))
	Dim stpvalue As Int = UI.CInt(el.GetAttr("step"))
	Dim curvalue As Int = UI.CInt(el.GetValue)
	Dim nxtvalue As Int = BANano.parseInt(curvalue) + BANano.parseInt(stpvalue)
	If nxtvalue > maxvalue Then
		nxtvalue = maxvalue
		el.SetValue(maxvalue)
	Else
		el.SetValue(nxtvalue)
	End If
	'
	rowpos = BANano.parseInt(rowpos) - 1
	Dim Rowx As Map = GetRow(rowpos)
	Dim rowc As Map = BANano.DeepClone(Rowx)
	rowc.Put(action, nxtvalue)
	If SubExists(mCallBack, $"${mName}_Increment"$) Then
		BANano.CallSub(mCallBack, mName & "_Increment", Array(rowpos, action, rowc))
	else If SubExists(mCallBack, $"${mName}_change"$) Then
		BANano.CallSub(mCallBack, mName & "_change", Array(nxtvalue, action, rowc))
	else If SubExists(mCallBack, $"${mName}_changerow"$) Then
		BANano.CallSub(mCallBack, mName & "_changerow", Array(rowpos, nxtvalue, action, rowc))
	End If
End Sub
private Sub PrependClick(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'Dim tblname As String = UI.MvField(src, 1, "_")
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src,3, "_")
	If SubExists(mCallBack, $"${mName}_PrependClick"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim Rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(Rowx)
		BANano.CallSub(mCallBack, mName & "_PrependClick", Array(rowpos, action, rowc))
	End If
End Sub
private Sub AppendClick(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'Dim tblname As String = UI.MvField(src, 1, "_")
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src,3, "_")
	If SubExists(mCallBack, $"${mName}_AppendClick"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim Rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(Rowx)
		BANano.CallSub(mCallBack, mName & "_AppendClick", Array(rowpos, action, rowc))
	End If
End Sub
private Sub PasswordPrepend(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'Dim tblname As String = UI.MvField(src, 1, "_")
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src,3, "_")
	If SubExists(mCallBack, $"${mName}_PasswordPrependClick"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim Rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(Rowx)
		BANano.CallSub(mCallBack, mName & "_PasswordPrependClick", Array(rowpos, action, rowc))
	End If
End Sub
Sub SetRowColumnAppendIcon(colName As String, rowCnt As Int, iconName As String)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
'	Dim AppendButton As SDUI5Button		'ignore
'	AppendButton.AssignElement(mCallBack, $"#${mName}_${rowCnt1}_${colName}_append"$)
'	AppendButton.IconName = iconName
End Sub
Sub SetRowColumnPrependIcon(colName As String, rowCnt As Int, iconName As String)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
'	Dim AppendButton As SDUI5Button		'ignore
'	AppendButton.AssignElement(mCallBack, $"#${mName}_${rowCnt1}_${colName}_prepend"$)
'	AppendButton.IconName = iconName
End Sub
Sub SetRowColumnAppendLoading(colName As String, rowCnt As Int, b As Boolean)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	'
	Dim abutton As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_append"$)
	Dim bicon As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_append_icon"$)
	'
	If b Then
		'hide the icon
		bicon.AddClass("hidden")
		abutton.AddClass("loading")
	Else
		'show the icon
		bicon.RemoveClass("hidden")
		abutton.removeClass("loading")
	End If
End Sub
Sub SetRowColumnPrependLoading(colName As String, rowCnt As Int, b As Boolean)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	'
	Dim abutton As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_prepend"$)
	Dim bicon As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_prepend_icon"$)
	'
	If b Then
		'hide the icon
		bicon.AddClass("hidden")
		abutton.AddClass("loading")
	Else
		'show the icon
		bicon.RemoveClass("hidden")
		abutton.removeClass("loading")
	End If
End Sub
Sub SetRowColumnBadgeAvatarTitle(fldName As String, rowCnt As Int, avatar As String, subtitle As String, badgeSize As String, badgeColor As String)
	fldName = UI.CleanID(fldName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(fldName) = False Then Return
	Dim bColor As String = badgeColor
	'********
	Dim boutline As String = ""
	If bBadgesOutlined Then boutline = "badge-outline"
	Dim btnColor As String = ""
	If bColor.StartsWith("#") Then
		btnColor = $"bg-[${bColor}]"$
	Else
		btnColor = UI.FixColor("badge", bColor)
	End If
	'
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}"$)
	el.Empty
	Dim act As String = $"[BANCLEAN]
    <div id="${mName}_${rowCnt1}_${fldName}_badge" class="badge rounded-full w-full ${UI.FixSize("h",badgeSize)} ${btnColor} ${boutline} relative">
    <div id="${mName}_${rowCnt1}_${fldName}_avatar1" class="avatar -ml-3 absolute left-3">
    <div id="${mName}_${rowCnt1}_${fldName}_host" class="rounded-full ${UI.FixSize("w",badgeSize)}">
    <img id="${mName}_${rowCnt1}_${fldName}_avatar" src="${avatar}" alt="" class="bg-cover bg-center bg-no-repeat">
    </div>
    </div>
    <span id="${mName}_${rowCnt1}_${fldName}_title" class="ml-2">${subtitle}</span>
    </div>"$
	el.Append(act)
End Sub
private Sub PasswordAppend(event As BANanoEvent)     'ignore
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'Dim tblname As String = UI.MvField(src, 1, "_")
	Dim rowpos As Int = UI.MvField(src,2, "_")
	rowpos = UI.CInt(rowpos)
	Dim action As String = UI.MvField(src,3, "_")
	'
'	Dim AppendButton As SDUI5Button		'ignore
'	AppendButton.AssignElement(mCallBack, $"${mName}_${rowpos}_${action}_append"$)
'	Dim cicon As String = AppendButton.GetData("eyes")
'	'
'	Select Case cicon
'		Case "fa-solid fa-eye"
'			AppendButton.Icon.RemoveClass("fa-solid fa-eye")
'			AppendButton.SetData("eyes", "fa-solid fa-eye-slash")
'			AppendButton.IconName = "fa-solid fa-eye-slash"
'			BANano.GetElement($"#${mName}_${rowpos}_${action}_input"$).SetAttr("type", "text")
'		Case "fa-solid fa-eye-slash"
'			AppendButton.Icon.RemoveClass("fa-solid fa-eye-slash")
'			AppendButton.SetData("eyes", "fa-solid fa-eye")
'			AppendButton.IconName = "fa-solid fa-eye"
'			BANano.GetElement($"#${mName}_${rowpos}_${action}_input"$).SetAttr("type", "password")
'	End Select
'	If SubExists(mCallBack, $"${mName}_PasswordAppendClick"$) Then
'		rowpos = BANano.parseInt(rowpos) - 1
'		Dim Rowx As Map = GetRow(rowpos)
'		Dim rowc As Map = BANano.DeepClone(Rowx)
'		BANano.CallSub(mCallBack, mName & "_PasswordAppendClick", Array(rowpos, action, rowc))
'	End If
End Sub
'we use this to get the id of the clicked item
private Sub HandleClick(event As BANanoEvent)     'ignoredeadcode
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	'Dim tblname As String = UI.MvField(src, 1, "_")
	Dim rowpos As Int = UI.MvField(src,2, "_")
	Dim action As String = UI.MvField(src,3, "_")
	rowpos = UI.CInt(rowpos)
	Dim ename As String = $"${mName}_${action}Row"$
	If SubExists(mCallBack, $"${mName}_${action}"$) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim Rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(Rowx)
		BANano.CallSub(mCallBack, mName & "_" & action, Array(rowc))
	else If SubExists(mCallBack, ename) Then
		rowpos = BANano.parseInt(rowpos) - 1
		Dim Rowx As Map = GetRow(rowpos)
		Dim rowc As Map = BANano.DeepClone(Rowx)
		BANano.CallSub(mCallBack, ename, Array(rowpos, rowc))
	End If
End Sub
private Sub HandleFileClick(event As BANanoEvent)     'ignoredeadcode
	'fchanges.Put($"${mName}_${RowCnt}_${fldName}_input"$, "")
	event.StopPropagation
	event.PreventDefault
	Dim src As String = event.OtherField("srcElement").GetField("id").Result
	If src = "" Then Return
	Dim rowpos As Int = UI.MvField(src,2, "_")
	Dim action As String = UI.MvField(src,3, "_")
	rowpos = UI.CInt(rowpos)
	'get the file element
	Dim el As BANanoElement = BANano.GetElement($"#${mName}_${rowpos}_${action}_input"$)
	'clear the value
	el.SetValue(Null)
	'click for change event
	el.RunMethod("click", Null)
End Sub
private Sub NewColumn As TableColumn
	Dim nc As TableColumn
	nc.Initialize
	nc.name = ""
	nc.SumValues = False
	nc.colWidth = ""
	nc.colHeight = ""
	nc.TextColor = ""
	nc.BGColor = ""
	nc.color = ""
	nc.title = ""
	nc.typeof = "normal"
	nc.alignment = ""
	nc.classes.Initialize
	nc.minwidth = ""
	nc.maxwidth = ""
	nc.width = ""
	nc.height = ""
	nc.options.Initialize
	nc.NothingSelected = False
	nc.ComputeValue = ""
	nc.ComputeColor = ""
	nc.ComputeRing = ""
	nc.ComputeClass = ""
	nc.ComputeBackgroundColor = ""
	nc.ComputeTextColor = ""
	nc.Prefix = ""
	nc.suffix = ""
	nc.PrependIcon = ""
	nc.AppendIcon = ""
	nc.HasRing = False
	nc.RingColor = ""
	nc.OnlineField = ""
	nc.visible = True
	nc.accept = ""
	nc.capture = ""
	nc.MaxLength = ""
	nc.Delimiter = ";"
	Return nc
End Sub

'get the id of the component
Sub getName As String
	Return $"${mName}"$
End Sub
'add internal click event
Private Sub OnChangeInternal(el As BANanoElement)
	Dim MethodName As String = $"${mName}_change"$
	If SubExists(mCallBack, MethodName) Then
		el.On("change", Me, "HandleChange")
	End If
End Sub
'show component
Sub Show
	UI.Show(mName)
End Sub
'hide component
Sub Hide
	UI.Hide(mName)
End Sub

'highlight rows on hover
Sub setHover(b As Boolean)
	CustProps.put("Hover", b)
	bHover = b
	If mElement = Null Then Return
End Sub
'delete row on visible only
Sub DeleteRow(rowPos As Int)
	Rows.RemoveAt(rowPos)
	BANano.GetElement($"#${mName}_table"$).RunMethod("deleteRow", rowPos)
End Sub
'Sub NormalResponsive(xs As Boolean, sm As Boolean, md As Boolean, lg As Boolean)
'	Root.ResponsiveClass("table-normal", xs, sm, md, lg)
'End Sub
'Sub CompactResponsive(xs As Boolean, sm As Boolean, md As Boolean, lg As Boolean)
'	Root.ResponsiveClass("table-compact", xs, sm, md, lg)
'End Sub
'save this page
Sub SaveLastAccessedPage
	lastPage = iCurrentPage
End Sub
'save this page
Sub setComponentSize(s As String)
	CustProps.put("ComponentSize", s)
	sComponentSize = UI.CStr(s)
End Sub
Sub setButtonSize(s As String)
	CustProps.put("ButtonSize", s)
	sButtonSize = UI.CStr(s)
	If mElement = Null Then Return
End Sub
Sub getButtonSize As String
	Return sButtonSize
End Sub
Sub setBadgesSize(s As String)
	CustProps.put("BadgesSize", s)
	sBadgesSize = UI.CStr(s)
	If mElement = Null Then Return
End Sub
Sub getBadgesSize As String
	Return sBadgesSize
End Sub
'show last accessed page
Sub ShowLastAccessedPage
	ShowPage(lastPage)
End Sub

'add an avatar group column
'<code>
'tbl.AddColumnAvatarGroup("agroup", "Resources", "2rem", app.MASK_CIRCLE)
'tbl.SetRowColumn("agroup", 2, $"./assets/team-1.jpg;./assets/team-2.jpg;./assets/team-3.jpg;./assets/team-4.jpg;./assets/team-5.jpg"$)
'</code>
Sub AddColumnAvatarGroup(name As String, title As String, ssize As String, mask As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "avatargroup"
	nc.size = ssize
	nc.mask = UI.FixMask(mask)
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'</code>
'tbl.AddColumnBadgeGroup("tags", "Tags", "10")
'tbl.SetRowColumn("tags", 1, $"a:success; n:warning; e:primary; l:neutral; e:error"$)
'</code>
Sub AddColumnBadgeGroup(name As String, title As String, sheight As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "badgegroup"
	nc.height = sheight
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub
'</code>
'tbl.AddColumnBadgeGroup("tags", "Tags", "10", "success")
'tbl.SetRowColumn("tags", 1, $"a:success; n:warning; e:primary; l:neutral; e:error"$)
'</code>
Sub AddColumnBadgeGroupColor(name As String, title As String, sheight As String, scolor As String)
	name = name.tolowercase
	Dim nc As TableColumn = NewColumn
	nc.name = name
	nc.title = title
	nc.typeof = "badgegroup"
	nc.height = sheight
	nc.color = scolor
	Dim hclass As String = ""
	If bNormalCase Then hclass = "normal-case"
	If bWrapHeadings Then hclass = hclass & " text-wrap"
	Dim hr As String = $"<th id="${mName}_${name}_th"   style="${BuildStyle(nc)}" class="cursor-pointer  ${hclass}">${title}</th>"$
	UI.AppendByID($"${mName}_theadtr"$, hr)
	UI.AppendByID($"${mName}_footr"$, $"<td id="${mName}_${name}_tf"   style="${BuildStyle(nc)}" ></td>"$)
	'
	Columns.Put(name, nc)
	UI.OnEventByID($"${mName}_${name}_th"$, "click", Me, "HandleHeaderClick")
	If bHasFilter Then AddHeaderRowSelect("filters", name)
End Sub

Sub GetFileFromEvent (e As BANanoEvent) As Map
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = BANano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Dim filex As Map = res.Get(0)
	Return filex
End Sub
Sub GetFilesFromEvent (e As BANanoEvent) As List
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = BANano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Return res
End Sub

Sub LoadJSON(jsonFile As String)
	'get all records from the file
	Dim records As List = BANano.Await(BANano.GetFileAsJSON($"${jsonFile}?${DateTime.now}"$, Null))
	'get the first record in the list
	Dim r1 As Map = records.Get(0)
	'create the columns from the keys of the map
	For Each k As String In r1.Keys
		Dim v As String = UI.ProperSubName(k, False)
		AddColumn(k, v)
	Next
	AddDesignerColums
	BANano.Await(SetItemsPaginate(records))
End Sub

'only works with SetItemsPaginate
Sub Size As Int
	Return Originals.size
End Sub

'load a component from a json file
Sub LoadComponentJson(designName As String)
	CustProps = BANano.Await(BANano.GetFileAsJSON($"./assets/${designName}.json?${DateTime.Now}"$, Null))
End Sub

'size constants
Sub setSearchSize(s As String)			'ignoredeadcode
	sSearchSize = s
	CustProps.put("SearchSize", s)
	If mElement = Null Then Return
	If s = "none" Then s = ""
	If s = "" Then Return
	UI.SetSizeByID($"${mName}_search"$, "size", "input", s)
	UI.SetSizeByID($"${mName}_searchbtn"$, "size", "btn", s)
	'UI.SetSizeByID($"${mName}_searchboxlabel"$, "size", "input", s)
	UI.ResizeIconByID($"${mName}_searchbtnicon"$, "70")
End Sub
Sub SetSelectListItems(colName As String, options As List)
	Dim options1 As Map = UI.ListToSelectOptions(options)
	SetSelectMapItems(colName, options1)
End Sub
Sub SetColumnItemsFromList(colName As String, options As List)
	Dim options1 As Map = UI.ListToSelectOptions(options)
	SetSelectMapItems(colName, options1)
End Sub
'total counted
Sub RowCount As Int
	Return Originals.Size
End Sub
'get all row data
Sub RowsData As List
	Return Originals
End Sub
'visible only
Sub SetDropDownMapItems(colName As String, options As Map)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) = False Then Return
	Dim tc As TableColumn = Columns.Get(colName)
	Dim menus As Map = CreateMap()
	Select Case tc.typeof
		Case "menu"
			tc.options = options
			'loop through each row
			Dim rCnt As Int = 0
			Dim rTot As Int = Rows.Size - 1
			For rCnt = 0 To rTot
				Dim rCnt1 As Int = BANano.parseint(rCnt) + 1
				Dim sKey As String = $"${mName}_${rCnt1}_${colName}_items"$
				'if the select exists, clear it
				If BANano.Exists($"#${sKey}"$) Then
					BANano.GetElement($"#${sKey}"$).Empty
					Dim sbOptions As StringBuilder
					sbOptions.Initialize
					For Each k As String In options.Keys
						Dim v As String = options.Get(k)
						Dim sItem As String = $"<li id="${mName}_${rCnt1}_${colName}_${k}_li"><a id="${mName}_${rCnt1}_${colName}_${k}_a" class="${itemColor1} ${itemColor2} ${itemColor3} ${itemColor4}">${v}</a></li>"$
						sbOptions.Append(sItem)
						menus.Put($"${mName}_${rCnt1}_${colName}_${k}_li"$, "")
						menus.Put($"${mName}_${rCnt1}_${colName}_${k}_a"$, "")
					Next
					BANano.GetElement($"#${sKey}"$).Append(sbOptions.ToString)
					sbOptions.Initialize
				End If
			Next
			For Each clickevent As String In menus.keys
				Dim rowEL As BANanoElement
				rowEL.Initialize($"#${clickevent}"$)
				rowEL.Off("click")
				rowEL.on("click", Me, "HandleMenuRow")
			Next
	End Select
End Sub
'set select items of all ows
Sub SetColumnItems(colName As String, options As Map)
	SetSelectMapItems(colName, options)
End Sub
'visible only
Sub SetSelectMapItems(colName As String, options As Map)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) = False Then Return
	Dim tc As TableColumn = Columns.Get(colName)
	Select Case tc.typeof
		Case "select", "selectgroup"
			tc.options = options
			'loop through each row
			Dim rCnt As Int = 0
			Dim rTot As Int = Rows.Size - 1
			For rCnt = 0 To rTot
				Dim rCnt1 As Int = BANano.parseint(rCnt) + 1
				Dim sKey As String = $"${mName}_${rCnt1}_${colName}_select"$
				'if the select exists, clear it
				If BANano.Exists($"#${sKey}"$) Then
					BANano.GetElement($"#${sKey}"$).Empty
					Dim sbOptions As StringBuilder
					sbOptions.Initialize
					If tc.NothingSelected Then
						Dim sItem As String = $"<option name="${mName}_0_${colName}" value="">--Nothing Selected--</option>"$
						sbOptions.Append(sItem)
					End If
					For Each k As String In options.Keys
						Dim v As String = options.Get(k)
						Dim sItem As String = $"<option name="${mName}_${rCnt1}_${colName}" value="${k}">${v}</option>"$
						sbOptions.Append(sItem)
					Next
					BANano.GetElement($"#${sKey}"$).Append(sbOptions.ToString)
					sbOptions.Initialize
					Dim rowData As Map = Rows.Get(rCnt)
					Dim fldVal As String = 	rowData.Get(colName)
					BANano.GetElement($"#${sKey}"$).SetValue(fldVal)
				End If
			Next
	End Select
End Sub
Sub SetSelectListItemsOfRow(colName As String, rowPos As Int, options As List)
	Dim options1 As Map = UI.ListToSelectOptions(options)
	SetSelectMapItemsOfRow(colName, rowPos, options1)
End Sub
Sub SetSelectListItemsOfRowSort(colName As String, rowPos As Int, options As List)
	Dim options1 As Map = UI.ListToSelectOptionsSort(options)
	SetSelectMapItemsOfRow(colName, rowPos, options1)
End Sub
'visible
Sub SetSelectMapItemsOfRow(colName As String, rowPos As Int, options As Map)
	colName = colName.ToLowerCase
	If Columns.ContainsKey(colName) = False Then Return
	Dim tc As TableColumn = Columns.Get(colName)
	Select Case tc.typeof
		Case "select", "selectgroup"
			Dim rCnt1 As Int = BANano.parseint(rowPos) + 1
			Dim sKey As String = $"${mName}_${rCnt1}_${colName}_select"$
			'if the select exists, clear it
			If BANano.Exists($"#${sKey}"$) Then
				BANano.GetElement($"#${sKey}"$).Empty
				Dim sbOptions As StringBuilder
				sbOptions.Initialize
				If tc.NothingSelected Then
					Dim sItem As String = $"<option name="${mName}_0_${colName}" value="">--Nothing Selected--</option>"$
					sbOptions.Append(sItem)
				End If
				For Each k As String In options.Keys
					Dim v As String = options.Get(k)
					Dim sItem As String = $"<option name="${mName}_${rCnt1}_${colName}" value="${k}">${v}</option>"$
					sbOptions.Append(sItem)
				Next
				BANano.GetElement($"#${sKey}"$).Append(sbOptions.ToString)
				sbOptions.Initialize
				Dim rowData As Map = Rows.Get(rowPos)
				Dim fldVal As String = 	rowData.Get(colName)
				BANano.GetElement($"#${sKey}"$).SetValue(fldVal)
			End If
	End Select
End Sub
'get the row at the position visible only
Sub GetRow(rowCnt As Int) As Map
	'get data of row
	Dim rowdata As Map = Rows.get(rowCnt)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	'get the columns
	Dim colTot As Int = Columns.size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim fldName As String = Columns.GetKeyAt(colCnt)
		Dim tc As TableColumn = Columns.Get(fldName)
		'
		Select Case tc.typeof
			Case "action", "menu"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_icon"$).GetData("icon")
				rowdata.put(fldName, rowvalue)
			Case "icon"
			Case "icontitle"
			Case "titleicon"
			Case "clicklink"
			Case "link"
			Case "color"
			Case "email"
			Case "website"
			Case "toggle"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_toggle"$).GetChecked
				rowdata.put(fldName, rowvalue)
			Case "checkbox"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_checkbox"$).GetChecked
				rowdata.put(fldName, rowvalue)
			Case "range"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_range"$).GetValue
				rowdata.put(fldName, rowvalue)
			Case "progress"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_progress"$).GetValue
				rowdata.put(fldName, rowvalue)
			Case "radial"
			Case "select", "selectgroup"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_select"$).GetValue
				rowdata.put(fldName, rowvalue)
			Case "textbox", "datepicker", "datetimepicker", "timepicker", "password", "number", "textboxgroup", "dialer","passwordgroup","telephone"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_input"$).GetValue
				rowdata.put(fldName, rowvalue)
			Case "textarea"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_textarea"$).GetValue
				rowdata.put(fldName, rowvalue)
			Case "rating"
				Dim rname As String = $"${mName}_${rowCnt1}_${fldName}_rating"$
				Dim Itemx As BANanoElement
				Itemx.Initialize($"input[name=${rname}]:checked"$)
				Dim rowvalue As Object = Itemx.GetValue
				rowvalue = UI.CInt(rowvalue)
				rowdata.put(fldName, rowvalue)
			Case "button"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_button"$).GetText
				rowdata.put(fldName, rowvalue)
			Case "badge"
			Case "normal"
			Case "avatar"
			Case "avatarplaceholder"
				Dim rowvalue As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${fldName}_span"$).GetText
				rowdata.put(fldName, rowvalue)
			Case "titlesubtitle"
			Case "avatartitle"
			Case "avatartitlesubtitle"
			Case "badgeavatartitle"
		End Select
	Next
	Return rowdata
End Sub
Sub SetRowColumnButtonLoading(colName As String, rowCnt As Int, b As Boolean)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	Dim tc As TableColumn = Columns.Get(colName)
	Select Case tc.typeof
		Case "fileinputprogress"
			If b Then
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).AddClass("loading")
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_progress"$).AddClass("hidden")
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_icon"$).AddClass("hidden")
			Else
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).removeClass("loading")
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_progress"$).AddClass("hidden")
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_icon"$).removeClass("hidden")
			End If
		Case "button"
			If b Then
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).AddClass("loading")
			Else
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).removeClass("loading")
			End If
		Case "action", "menu"
			If b Then
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).AddClass("loading")
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_icon"$).AddClass("hidden")
			Else
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).removeClass("loading")
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_icon"$).removeClass("hidden")
			End If
	End Select
End Sub
Sub SetRowColumnButtonEnabled(colName As String, rowCnt As Int, b As Boolean)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	Dim tc As TableColumn = Columns.Get(colName)
	Select Case tc.typeof
		Case "button"
			If b Then
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).RemoveClass("btn-disabled")
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).RemoveAttr("disabled")
			Else
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).AddClass("btn-disabled")
				BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).SetAttr("disabled", "disabled")
			End If
	End Select
End Sub
'add a class to a row/column at runtime
Sub AddRowColumnClass(colName As String, rowCnt As Int, className As String)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	UI.AddClassByID($"#${mName}_${rowCnt1}_${colName}"$, className)
End Sub
'add a class to a row at runtime
Sub AddRowClass(rowCnt As Int, className As String)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	UI.AddClassByID($"#${mName}_${rowCnt1}"$, className)
End Sub
'add a class to the heading at runtime
Sub AddHeaderClass(colName As String, className As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	UI.AddClassByID($"#${mName}_${colName}_th"$, className)
End Sub

Sub SetColumnHeaderVerticalLR(cols As List)
	For Each col As String In cols
		SetHeaderVerticalLR(col)
	Next
End Sub
Sub SetColumnHeaderVerticalRL(cols As List)
	For Each col As String In cols
		SetHeaderVerticalRL(col)
	Next
End Sub
Sub SetColumnHeaderSideWaysLR(cols As List)
	For Each col As String In cols
		SetHeaderSideWaysLR(col)
	Next
End Sub
Sub SetColumnHeaderSideWaysRL(cols As List)
	For Each col As String In cols
		SetHeaderSideWaysRL(col)
	Next
End Sub
Sub SetHeaderSideWaysLR(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	BANano.GetElement($"#${mName}_${colName}_th"$).AddClass("[writing-mode:sideways-lr]")
End Sub
Sub SetHeaderSideWaysRL(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	BANano.GetElement($"#${mName}_${colName}_th"$).AddClass("[writing-mode:sideways-rl]")
End Sub
Sub SetHeaderVerticalLR(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	BANano.GetElement($"#${mName}_${colName}_th"$).AddClass("[writing-mode:vertical-lr]")
End Sub
Sub SetHeaderVerticalRL(colName As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	BANano.GetElement($"#${mName}_${colName}_th"$).AddClass("[writing-mode:vertical-rl]")
End Sub
'visible
'update select of Row
Sub SetRowColumnItems(colName As String, rowCnt As Int, options As Map)
	SetSelectMapItemsOfRow(colName, rowCnt, options)
End Sub
Sub SetRowColumnItemsFromList(colName As String, rowPos As Int, options As List)
	Dim options1 As Map = UI.ListToSelectOptions(options)
	SetSelectMapItemsOfRow(colName, rowPos, options1)
End Sub
'visible
Sub SetRowColumnBy(rowKey As String, rowID As String, colName As String, fldVal As Object)
	Dim rowPos As Int = FindRowByColumn(rowKey, rowID)
	If rowPos >= 0 Then
		SetRowColumn(colName, rowPos, fldVal)
	End If
End Sub
'visible
Sub SetRowBy(rowKey As String, rowID As String,rowData As Map)
	Dim rowPos As Int = FindRowByColumn(rowKey, rowID)
	If rowPos >= 0 Then
		SetRow(rowPos, rowData)
	End If
End Sub
Sub SetRowColumnFileInput(colName As String, rowCnt As Int, fldVal As Object)
	colName = UI.CleanID(colName)
	Dim rowdata As Map =  Rows.Get(rowCnt)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	Dim tc As TableColumn = Columns.Get(colName)
	rowdata.Put(colName, fldVal)
	Select Case tc.typeof
		Case "file"
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_input"$).SetValue(fldVal)
	End Select
End Sub
'get the field value of a file input in a table
Sub GetRowColumnFileInput(colName As String, rowCnt As Int) As Object
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return Null
	Dim tc As TableColumn = Columns.Get(colName)
	Select Case tc.typeof
		Case "file"
			Dim fldVal As Object = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_input"$).GetValue
			Return fldVal
		Case Else
			Return Null
	End Select
End Sub

'show the row selected
Sub SetRowEnsureVisible(rowPos As Int)
	Dim rowCnt1 As Int = BANano.parseInt(rowPos) + 1
	Dim rowName As String = $"${mName}_${rowCnt1}"$
	If BANano.Exists($"#${rowName}"$) Then
		Dim el As BANanoElement = BANano.GetElement($"#${rowName}"$)
		Dim opt As Map = CreateMap("behavior": "smooth")
		el.RunMethod("scrollIntoView", opt)
	End If
End Sub

'visible
'<code>
'tb4.SetRowColumn("btnload", pos, "Loading")
'</code>
Sub SetRowColumn(colName As String, rowCnt As Int, fldVal As Object)
	colName = UI.CleanID(colName)
	Dim rowdata As Map =  Rows.Get(rowCnt)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	Dim tc As TableColumn = Columns.Get(colName)
	rowdata.Put(colName, fldVal)
	Select Case tc.typeof
		Case "filesize"
			fldVal = UI.FormatFileSize(fldVal)
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$).SetText(fldVal)
		Case "date"
			fldVal = UI.FormatDisplayDate(fldVal, "ddd, DD MMM YYYY")
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$).SetText(fldVal)
		Case "datetime"
			fldVal = UI.FormatDisplayDate(fldVal, "ddd, DD MMM YYYY @ HH:mm:ss")
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$).SetText(fldVal)
		Case "money"
			fldVal = UI.FormatDisplayNumber(fldVal, "0,0.00")
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$).SetText(fldVal)
		Case "thousand"
			fldVal = UI.FormatDisplayNumber(fldVal, "0,0")
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$).SetText(fldVal)
		Case "icon"
		Case "icontitle"
		Case "titleicon"
		Case "clicklink"
		Case "link"
		Case "color"
		Case "email"
		Case "website"
		Case "button"
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_button"$).SetText(fldVal)
		Case "toggle"
			fldVal = UI.CBool(fldVal)
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_toggle"$).SetChecked(fldVal)
		Case "checkbox"
			fldVal = UI.CBool(fldVal)
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_checkbox"$).SetChecked(fldVal)
		Case "range"
			fldVal = UI.CInt(fldVal)
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_range"$).SetValue(fldVal)
			UpdateRangeText(rowCnt1, colName, fldVal)
		Case "progress"
			fldVal = UI.CInt(fldVal)
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_progress"$).SetValue(fldVal)
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_progress_text"$).SetText($"${fldVal}%"$)
		Case "radial"
			fldVal = UI.CInt(fldVal)
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_radial"$).SetText($"${fldVal}%"$)
			UI.SetStyleByID($"#${mName}_${rowCnt1}_${colName}_radial"$, "--value", fldVal)
		Case "select", "selectgroup"
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_select"$).SetValue(fldVal)
		Case "textbox",  "password", "number",  "passwordgroup", "textboxgroup", "dialer","telephone"
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_input"$).SetValue(fldVal)
		Case "datepicker", "timepicker", "datetimepicker"
			Dim xkey As String = $"${mName}_${rowCnt1}_${colName}_input"$
			BANano.GetElement($"#${xkey}"$).SetValue(fldVal)
			DPValue.Put(xkey, fldVal)
			Dim dp As Map = datepickers.get(xkey)
			Dim fp As BANanoObject = BANano.RunJavascriptMethod("flatpickr", Array($"#${xkey}"$, dp))
			fp.RunMethod("setDate", Array(fldVal))
		Case "textarea"
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_textarea"$).SetValue(fldVal)
		Case "rating"
			fldVal = UI.CBool(fldVal)
			Dim rname As String = $"${mName}_${rowCnt1}_${colName}_rating"$
			Dim Itemx As BANanoElement
			Itemx.Initialize($"input[name=${rname}][value=${fldVal}]"$)
			Itemx.SetChecked(True)
		Case "badge"
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_badge_text"$).SetText(fldVal)
		Case "normal"
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$).SetText(fldVal)
		Case "avatar"
			Dim value As String = ""
			If UI.CStr(fldVal).StartsWith("data:image") Then
				value = fldVal
			Else
				value = $"${fldVal}?${DateTime.Now}"$
			End If
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_avatar"$).SetAttr("src", value)
		Case "avatarplaceholder"
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_span"$).SetText(fldVal)
		Case "image"
			Dim value As String = ""
			If UI.CStr(fldVal).StartsWith("data:image") Then
				value = fldVal
			Else
				value = $"${fldVal}?${DateTime.Now}"$
			End If
			BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_image"$).SetAttr("src", value)
		Case "titlesubtitle"
		Case "avatartitle"
		Case "badgeavatartitle"
		Case "avatartitlesubtitle"
		Case "action", "menu"
			Dim el As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_icon"$)
			Dim ticon As String = el.GetData("icon")
			el.RemoveClass(ticon)
			el.AddClass(fldVal)
			el.setdata("icon", fldVal)
		Case "avatargroup"
			Dim el As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_group"$)
			el.Empty
			Dim sbOptions As StringBuilder
			sbOptions.Initialize
			Dim imgCnt As Int = 0
			Dim images As List = UI.StrParse(tc.Delimiter, fldVal)
			For Each k As String In images
				If k = "" Then Continue
				imgCnt = BANano.parseInt(imgCnt) + 1
				Dim sItem As String = $"<div id="${mName}_${rowCnt}_${colName}_avatar1_${imgCnt}" class="avatar">
            <div id="${mName}_${rowCnt}_${colName}_host_${imgCnt}" class="border-1 ${tc.mask} ${UI.FixSize("w",tc.Size)}">
            <img id="${mName}_${rowCnt}_${colName}_image_${imgCnt}" src="${k}" alt="" class="bg-cover bg-center bg-no-repeat"></img>
            </div>
            </div>"$
				sbOptions.Append(sItem)
				If imgCnt > 5 Then Exit
			Next
			'
			'we have more than 5 images, so add a placeholder
			If imgCnt > 5 Then
				Dim tOthers As Int = BANano.parseInt(imgCnt) - 5
				Dim sItem As String = $"<div id="${mName}_${rowCnt}_${colName}_avatar1_6" class="avatar avatar-placeholder">
        <div id="${mName}_${rowCnt}_${colName}_host_${6}" class="border-1 ${tc.mask} bg-neutral text-neutral-content ${UI.FixSize("w",tc.Size)}">
        <span id="${mName}_${rowCnt}_${colName}_span_6">+${tOthers}</span>
        </div>
        </div>"$
				sbOptions.Append(sItem)
			End If
			
			el.Append(sbOptions.ToString)
			sbOptions.Initialize
		Case "badgegroup"
			Dim el As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}_badgegroup"$)
			el.Empty
			Dim boutline As String = ""
			If bBadgesOutlined Then boutline = "badge-outline"
			Dim btnsize As String = UI.FixSize("badge", sBadgesSize)
			Dim sh As String = UI.FixSize("h", tc.height)
			Dim sbOptions As StringBuilder
			sbOptions.Initialize
			Dim imgCnt As Int = 0
			Dim images As List = UI.StrParse(";", fldVal)
			For Each k As String In images
				k = k.Trim
				If k = "" Then Continue
				imgCnt = BANano.parseInt(imgCnt) + 1
				Dim badgeText As String = UI.MvField(k, 1, ":")
				badgeText = badgeText.Trim
				Dim badgeColor As String = UI.MvField(k, 2, ":")
				badgeColor = badgeColor.Trim
				If badgeColor = badgeText Then badgeColor = ""
				Dim btnColor As String = UI.FixColor("badge", badgeColor)
				'
				Dim sItem As String = $"<div id="${mName}_${rowCnt}_${colName}_${imgCnt}_badge" class="mr-2 mb-2 py-2 px-4 rounded-full badge ${btnColor} ${btnsize} ${boutline} ${sh}">${badgeText}</div>"$
				sbOptions.Append(sItem)
			Next
			el.Append(sbOptions.ToString)
			sbOptions.Initialize
	End Select
End Sub
Sub GetRowColumn(colName As String, rowCnt As Int) As String
	colName = UI.CleanID(colName)
	Dim rowdata As Map =  GetRow(rowCnt)
	If Columns.ContainsKey(colName) = False Then Return ""
	Dim fldVal As Object = rowdata.Get(colName)
	Return fldVal
End Sub
'search rows and return position
Sub FindRowByColumn(colName As String, value As String) As Int
	Dim idx As Int = UI.ListIndexOf(Rows, colName, value)
	Return idx
End Sub
'update Row (list) and table content at that position
'visible
Sub SetRow(rowCnt As Int, rowdata As Map)
	Rows.Set(rowCnt, rowdata)
	'get the columns
	Dim colTot As Int = rowdata.size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim fldName As String = rowdata.GetKeyAt(colCnt)
		Dim fldVal As Object = rowdata.GetValueAt(colCnt)
		SetRowColumn(fldName, rowCnt, fldVal)
	Next
End Sub
'<code>
'Dim content As String = BANano.Await(SDUITable1.ExportToCSV(True, ",", True))
'app.Download(content, "table2csv.csv")
'</code>
Sub ExportToCSV(quotes As Boolean, delimiter As String, hasHeader As Boolean) As String
	Dim res As String = UI.ListOfMapsToCSV(Originals, quotes, delimiter, hasHeader)
	Return res
End Sub
'get field names of columns
Sub GetFieldNames As List
	Dim nl As List
	nl.Initialize
	For Each k As String In Columns.Keys
		Dim hdr As TableColumn = Columns.Get(k)
		Select Case hdr.typeof
			Case "action", "menu", "button"	,"file", "fileaction"
			Case Else
				nl.Add(hdr.name)
		End Select
	Next
	Return nl
End Sub
'get title names of column
Sub GetTitleNames As List
	Dim nl As List
	nl.Initialize
	For Each k As String In Columns.Keys
		Dim hdr As TableColumn = Columns.Get(k)
		Select Case hdr.typeof
			Case "action", "menu", "button","file", "fileaction"
			Case Else
				nl.Add(hdr.title)
		End Select
	Next
	Return nl
End Sub
'update Row (list) at that position
'visible
Sub UpdateRow(rowCnt As Int, rowdata As Map)
	Rows.Set(rowCnt, rowdata)
End Sub

'update row including originals
Sub UpdateRowOriginal(rowCnt As Int, rowdata As Map)
	Rows.Set(rowCnt, rowdata)
	Originals.Set(rowCnt, rowdata)
End Sub

Private Sub UpdateRangeText(r As Int, fldName As String, fldVal As Object)
	Dim k As String = $"${mName}_${R}_${fldName}_range_text"$
	If BANano.Exists($"#${k}"$) Then
		BANano.GetElement($"#${k}"$).SetText(fldVal)
	End If
End Sub
Sub PositionOf(prop As String, value As String) As Int
	Dim pos As Int = UI.ListIndexOf(Rows, prop, value)
	Return pos
End Sub
'<code>
'tb2.SetRowBackgroundColor(0, "red")
'</code>
Sub SetRowBackgroundColor(rowCnt As Int, color As String)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}"$)
	Dim xcol As String = UI.FixColor("bg", color)
	Dim xclass As String = $"[&>*]:${xcol}"$
	'rowElement.AddClass("[&>*]:bg-transparent")
	rowElement.AddClass(xclass)
End Sub
Sub SetHeaderBackgroundColor(color As String)
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_theadtr"$)
	Dim xcol As String = UI.FixColor("bg", color)
	Dim xclass As String = $"[&>*]:${xcol}"$
	'rowElement.AddClass("[&>*]:bg-transparent")
	rowElement.AddClass(xclass)
End Sub
Sub SetHeaderAddClass(className As String)
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_thead tr th"$)
	rowElement.AddClass(className)
End Sub
Sub SetHeaderStyle(styles As Map)
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_thead tr th"$)
	rowElement.SetStyle(BANano.ToJson(styles))
End Sub
Sub SetHeaderTextColor(color As String)
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_theadtr"$)
	Dim xclass As String = UI.FixColor("text", color)
	rowElement.AddClass(xclass)
End Sub
Sub SetHeaderColumnAddClass(colName As String, className As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${colName}_th"$)
	rowElement.AddClass(className)
End Sub
'
Sub SetHeaderColumnStyle(colName As String, styles As Map)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${colName}_th"$)
	rowElement.SetStyle(BANano.ToJson(styles))
End Sub
Sub SetHeaderColumnTextColor(colName As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${colName}_th"$)
	Dim xclass As String = UI.FixColor("text", color)
	rowElement.AddClass(xclass)
End Sub
Sub SetHeaderColumnBackgroundColor(colName As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${colName}_th"$)
	Dim xclass As String = UI.FixColor("bg", color)
	'rowElement.AddClass("[&>*]:bg-transparent")
	rowElement.AddClass(xclass)
End Sub
'<code>
'tb2.SetRowAddClass(0, "")
'</code>
Sub SetRowAddClass(rowCnt As Int, className As String)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}"$)
	rowElement.AddClass(className)
End Sub
'<code>
'tb2.SetRowColumnAddClass("color", 1, "")
'</code>
Sub SetRowColumnAddClass(colName As String, rowCnt As Int, className As String)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$)
	rowElement.AddClass(className)
End Sub
'<code>
'tb2.SetRowStyle(0, createmap())
'</code>
Sub SetRowStyle(rowCnt As Int, styles As Map)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1} td"$)
	rowElement.SetStyle(BANano.ToJson(styles))
End Sub
Sub SetEvenRowStyle(styles As Map)
	Dim rKey As String = $"#${mName}_body tr > :nth-child(even) td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(styles))
End Sub
Sub SetOddRowStyle(styles As Map)
	Dim rKey As String = $"#${mName}_body tr > :nth-child(odd) td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(styles))
End Sub
'<code>
'tb.SetColumnStyle("id", createmap())
'</code>
Sub SetColumnStyle(colName As String, styles As Map)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim colPos As Int = GetColumnPosition(colName)
	colPos = BANano.parseInt(colPos) + 1
	'if we have columns already
	Dim rKey As String = $"#${mName}_body tr > :nth-child(${colPos})"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(styles))
End Sub
Sub SetColumnAddClass(colName As String, className As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim colPos As Int = GetColumnPosition(colName)
	colPos = BANano.parseInt(colPos) + 1
	'if we have columns already
	Dim rKey As String = $"#${mName}_body tr > :nth-child(${colPos})"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.AddClass(className)
End Sub
'<code>
'tb2.SetRowColumnStyle("color", 1, createmap())
'</code>
Sub SetRowColumnStyle(colName As String, rowCnt As Int, styles As Map)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$)
	rowElement.SetStyle(BANano.ToJson(styles))
End Sub
'<code>
'tb2.SetRowTextColor(0, "white")
'</code>
Sub SetRowTextColor(rowCnt As Int, color As String)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}"$)
	Dim xclass As String = UI.FixColor("text", color)
	rowElement.AddClass(xclass)
End Sub
'<code>
'tb2.SetRowColumnTextColor("color", 1, "white")
'</code>
Sub SetRowColumnTextColor(colName As String, rowCnt As Int, color As String)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$)
	Dim xclass As String = UI.FixColor("text", color)
	rowElement.AddClass(xclass)
End Sub
'<code>
'tb2.SetRowColumnBackgroundColor("color", 1, "red")
'</code>
Sub SetRowColumnBackgroundColor(colName As String, rowCnt As Int, color As String)
	colName = UI.CleanID(colName)
	Dim rowCnt1 As Int = BANano.parseInt(rowCnt) + 1
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${rowCnt1}_${colName}"$)
	Dim xclass As String = UI.FixColor("bg", color)
	'rowElement.AddClass("[&>*]:bg-transparent")
	rowElement.AddClass(xclass)
End Sub
'update the value of a footer column
'<code>
'tblcountries.SetFooterColumn("name", $"Total (${srowcount})"$)
'</code>
Sub SetFooterColumn(colName As String, value As Object)
	If Columns.ContainsKey(colName) = False Then Return
	Dim nc As TableColumn = Columns.Get(colName)
	'
	Select Case nc.typeof
		Case "filesize"
			Dim nv As String = UI.FormatFileSize(value)
			BANano.GetElement($"#${mName}_${colName}_tf"$).SetText(nv)
		Case "money"
			Dim nv As String = UI.FormatDisplayNumber(value, "0,0.00")
			BANano.GetElement($"#${mName}_${colName}_tf"$).SetText(nv)
		Case "thousand"
			Dim nv As String = UI.FormatDisplayNumber(value, "0,0")
			BANano.GetElement($"#${mName}_${colName}_tf"$).SetText(nv)
		Case Else
			BANano.GetElement($"#${mName}_${colName}_tf"$).SetText(value)
	End Select
	UI.Show($"${mName}_foot"$)
End Sub
'merge some footer columns to the first specified column on the list
'<code>
'tblcountries.SetFooterColumnsMerge(Array("name","flag"))
'</code>
Sub SetFooterColumnsMerge(cols As List)
	Dim colSpan As Int = cols.Size
	Dim c As String = cols.Get(0)
	BANano.GetElement($"#${mName}_${c}_tf"$).SetAttr("colspan", colSpan)
	Dim cTot As Int = cols.Size - 1
	Dim cCnt As Int
	For cCnt = 1 To cTot
		Dim c As String = cols.get(cCnt)
		If BANano.Exists($"#${mName}_${c}_tf"$) Then
			BANano.GetElement($"#${mName}_${c}_tf"$).Remove
		End If
	Next
End Sub
'Remove some footer columns
'<code>
'tblcountries.SetFooterRemoveColumns(Array("population"))
'</code>
Sub SetFooterRemoveColumns(cols As List)
	For Each c As String In cols
		If BANano.Exists($"#${mName}_${c}_tf"$) Then
			BANano.GetElement($"#${mName}_${c}_tf"$).Remove
		End If
	Next
End Sub
'sum the values of the columns and set them on foote
'<code>
'Dim summary As Map = tbl.SetFooterTotalSumCountColumns(Array("population"))
'Dim srowcount As String = summary.Get("rowcount")
'srowcount = UI.Thousands(srowcount)
'tbl.SetFooterColumn("country", $"Total (${srowcount})"$)
'</code>
Sub SetFooterTotalSumCountColumns(DataSet As List, cols As List) As Map
	cols = UI.ListTrimItems(cols)
	Dim recs As List = DataSet
	Dim nm As Map = CreateMap()
	nm.Put("rowcount", recs.Size)
	'set everything to 0
	For Each c As String In cols
		If c = "" Then Continue
		nm.Put(c, 0)
	Next
	For Each r As Map In recs
		For Each c As String In cols
			If c = "" Then Continue
			Dim v As String = r.GetDefault(c, 0)
			v = UI.CDbl(v)
			Dim lv As Int = nm.GetDefault(c, 0)
			lv = BANano.parsefloat(lv) + BANano.parsefloat(v)
			nm.Put(c, lv)
		Next
	Next
	'
	For Each c As String In cols
		If c = "" Then Continue
		If Columns.ContainsKey(c) = False Then Continue
		Dim nc As TableColumn = Columns.Get(c)
		Dim ov As String = nm.Get(c)
		Dim nv As String = "0.00"
		'
		Select Case nc.typeof
			Case "filesize"
				nv = UI.FormatFileSize(ov)
			Case "money"
				nv = UI.FormatDisplayNumber(ov, "0,0.00")
			Case "thousand"
				nv = UI.FormatDisplayNumber(ov, "0,0")
			Case Else
				nv = ov
		End Select
		BANano.GetElement($"#${mName}_${c}_tf"$).SetText(nv)
	Next
	UI.Show($"${mName}_foot"$)
	Return nm
End Sub

'this us used for the camera content without uploading
'<code>
'Sub table_FileChange(e As BANanoEvent)
'e.PreventDefault
'Dim sourceID As String = UI.GetIDFromEvent(e)
'Select Case sourceID
'Case "?"
'Dim fileObj As Map = tblcollectionnames.GetFileFromEvent(e)
'If BANano.IsNull(fileObj) Or BANano.IsUndefined(fileObj) Then Return
'tbl.ToolbarButtonLoading("?", True)
'Dim props As Map = BANano.Await(UI.readAsJsonWait(fileObj))
'tbl.ToolbarButtonLoading("?", False)
'Return
'End Select
''has the file been specified
'Dim fileObj As Map = table.GetFileFromEvent(e)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = UI.GetFileDetails(fileObj)
''get the file name
'Dim fn As String = fileDet.FileName
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = UI.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''Dim fText As String = BANano.Await(UI.readAsDataURLWait(fileObj))
''Dim fJSON As Map = BANano.Await(UI.readAsJsonWait(fileObj))
''Dim fBuffer As Object = BANano.Await(UI.readAsArrayBufferWait(fileObj))
''Dim fText As String = BANano.Await(UI.readAsTextWait(fileObj))
''start uploading the file to assets folder
''fileDet = UI.UploadFileWait(fileObj)
''fileDet = UI.UploadFileOptionsWait(fileObj, "../assets", "n")
'img.Src = fText
'img.Tag = fText
'End Sub
'</code>
Sub FileChangeEvent
End Sub
Sub ShowColumns(cols As List)
	Dim lcolor As String = UI.GetDataAttrByID($"${mName}_columnchooser"$, "color")
	For Each col As String In cols
		BANano.Await(SetColumnVisible(col, True))
		UI.Show($"${mName}_${col}_icon"$)
		UI.SetDataAttrByID($"${mName}_${col}_icon"$, "visible","true")
		UI.SetDataAttrByID($"${mName}_${col}_column"$, "visible","true")
		UI.AddClassByID($"${mName}_${col}_column"$, lcolor)
		UI.RemoveClassByID($"${mName}_${col}_column"$, "badge-neutral")
	Next
End Sub
Sub HideColumns(cols As List)
	Dim lcolor As String = UI.GetDataAttrByID($"${mName}_columnchooser"$, "color")
	For Each col As String In cols
		BANano.Await(SetColumnVisible(col, False))
		UI.Hide($"${mName}_${col}_icon"$)
		UI.SetDataAttrByID($"${mName}_${col}_icon"$, "visible","false")
		UI.SetDataAttrByID($"${mName}_${col}_column"$, "visible","false")
		UI.RemoveClassByID($"${mName}_${col}_column"$, lcolor)
		UI.AddClassByID($"${mName}_${col}_column"$, "badge-neutral")
	Next
End Sub
Private Sub BuildRowImage(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	'Dim bColor As String = tc.color
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	'If tc.ComputeColor <> "" Then
	'	Dim subName1 As String = tc.ComputeColor
	'	bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	'End If
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${BuildClasses(tc)} ${bgColor}" style="${BuildStyle(tc)}">
    <img id="${mName}_${RowCnt}_${fldName}_image" class="bg-cover bg-center bg-no-repeat border-1 ${tc.mask} ${UI.FixSize("w", tc.width)} ${UI.FixSize("h", tc.height)} ${cClass}" src="${fldValu}" alt=""></img>
    </td>"$
	'********
	Return act
End Sub
Private Sub BuildRowTitleSubtitle(Module As Object, fldName As String, fldValu As String, rowdata As Map, RowCnt As Int, tc As TableColumn) As String
	Dim bColor As String = tc.TextColor
	Dim bgColor As String = tc.BGColor
	If tc.ComputeBackgroundColor <> "" Then
		Dim subName As String = tc.ComputeBackgroundColor
		bgColor = BANano.CallSub(Module, subName, Array(rowdata))
		bgColor = UI.FixColor("bg", bgColor)
	End If
	If tc.ComputeValue <> "" Then
		Dim subName As String = tc.ComputeValue
		fldValu = BANano.CallSub(Module, subName, Array(rowdata))
	End If
	'
	If tc.ComputeColor <> "" Then
		Dim subName1 As String = tc.ComputeColor
		bColor = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	'
	Dim btnColor As String = GetColorFromField("text", bColor, rowdata)
	'
	Dim cClass As String = ""
	If tc.ComputeClass <> "" Then
		Dim subName1 As String = tc.ComputeClass
		cClass = BANano.CallSub(Module, subName1, Array(rowdata))
	End If
	Dim subtitle As String = rowdata.GetDefault(tc.subtitle, "")
	subtitle = UI.CStr(subtitle)
	Dim subtitle1 As String = rowdata.GetDefault(tc.subtitle1, "")
	subtitle1 = UI.CStr(subtitle1)
	'********
	'get the sub-title content
	Dim act As String = $"[BANCLEAN]
    <td id="${mName}_${RowCnt}_${fldName}"  class="${btnColor} ${bgColor} ${BuildClasses(tc)} ${cClass}" style="${BuildStyle(tc)}">
    <div class="flex items-center">
    <div>
    <div id="${mName}_${RowCnt}_${fldName}_title">${fldValu}</div>
    <div id="${mName}_${RowCnt}_${fldName}_subtitle" class="text-sm">${subtitle}</div>
    </div>
    </div>
    </td>"$
	'********
	Return act
End Sub
Sub SetRowColumnsMerge(rowPos As Int, cols As List)
	If cols.Size = 1 Then Return
	Dim RowCnt As Int = rowPos + 1
	Dim colSpan As Int = cols.Size
	Dim c As String = cols.Get(0)
	'set the colspan of the first column
	BANano.GetElement($"#${mName}_${RowCnt}_${c}"$).SetAttr("colspan", colSpan)
	Dim cTot As Int = cols.Size - 1
	Dim cCnt As Int
	For cCnt = 1 To cTot
		Dim c As String = cols.get(cCnt)
		If BANano.Exists($"#${mName}_${RowCnt}_${c}"$) Then
			BANano.GetElement($"#${mName}_${RowCnt}_${c}"$).Remove
		End If
	Next
End Sub
Sub HideOnSmall
	UI.AddClass(mElement, "max-md:hidden")
End Sub
Sub HideOnMedium
	UI.AddClass(mElement, "max-lg:hidden")
End Sub
Sub HideOnLarge
	UI.AddClass(mElement, "max-xl:hidden")
End Sub
'set the visibility of the grid lines
Sub setGridLines(b As Boolean)
	If b = False Then Return
	Dim rKey2 As String = $"#${mName} table"$
	UI.InsertCSSRule(rKey2, CreateMap("border-collapse": "collapse"))
	Dim rKey As String = $"#${mName} th"$
	UI.InsertCSSRule(rKey, CreateMap("border": "solid 1px black"))
	Dim rKey1 As String = $"#${mName} td"$
	UI.InsertCSSRule(rKey1, CreateMap("border": "solid 1px black"))
	setNoHeaderRadius(b)
	setNoFooterRadius(b)
End Sub
Sub setNoHeaderRadius(b As Boolean)
	If b = False Then Return
	Dim rKey2 As String = $"#${mName} table *:first-child :where(th, td):first-child"$
	UI.InsertCSSRule(rKey2, CreateMap("border-top-left-radius": "0px"))
	'
	Dim rKey As String = $"#${mName} table *:last-child :where(th, td):last-child"$
	UI.InsertCSSRule(rKey, CreateMap("border-top-right-radius": "0px"))
End Sub
Sub setNoFooterRadius(b As Boolean)
	If b = False Then Return
	Dim rKey2 As String = $"#${mName} table *:first-child :where(th, td):first-child"$
	UI.InsertCSSRule(rKey2, CreateMap("border-bottom-left-radius": "0px"))
	'
	Dim rKey As String = $"#${mName} table *:last-child :where(th, td):last-child"$
	UI.InsertCSSRule(rKey, CreateMap("border-bottom-right-radius": "0px"))
End Sub
'set the top, right, bottom and left padding of each cell in the table
Sub SetCellPadding(T As String, R As String, B As String, L As String)
	Dim m As Map = CreateMap()
	If T <> "" Then m.put("padding-top", $"${t} !important"$)
	If R <> "" Then m.put("padding-right", $"${r} !important"$)
	If B <> "" Then m.put("padding-bottom", $"${b} !important"$)
	If L <> "" Then m.put("padding-left", $"${l} !important"$)
	'
	If m.Size <> 0 Then
		Dim rKey1 As String = $"#${mName} td"$
		UI.InsertCSSRule(rKey1, m)
	End If
End Sub
Sub SetFooterBackgroundColor(color As String)
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_footr"$)
	Dim xcol As String = UI.FixColor("bg", color)
	Dim xclass As String = $"[&>*]:${xcol}"$
	'rowElement.AddClass("[&>*]:bg-transparent")
	rowElement.AddClass(xclass)
End Sub
Sub SetFooterAddClass(className As String)
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_footr td"$)
	rowElement.AddClass(className)
End Sub
Sub SetFooterStyle(styles As Map)
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_footr td"$)
	rowElement.SetStyle(BANano.ToJson(styles))
End Sub
Sub SetFooterTextColor(color As String)
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_footr"$)
	Dim xclass As String = UI.FixColor("text", color)
	rowElement.AddClass(xclass)
End Sub
Sub SetFooterColumnAddClass(colName As String, className As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${colName}_tf"$)
	rowElement.AddClass(className)
End Sub
'
Sub SetFooterColumnStyle(colName As String, styles As Map)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${colName}_tf"$)
	rowElement.SetStyle(BANano.ToJson(styles))
End Sub
Sub SetFooterColumnTextColor(colName As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${colName}_tf"$)
	Dim xclass As String = UI.FixColor("text", color)
	rowElement.AddClass(xclass)
End Sub
Sub SetFooterColumnBackgroundColor(colName As String, color As String)
	colName = UI.CleanID(colName)
	If Columns.ContainsKey(colName) = False Then Return
	Dim rowElement As BANanoElement = BANano.GetElement($"#${mName}_${colName}_tf"$)
	Dim xclass As String = UI.FixColor("bg", color)
	'rowElement.AddClass("[&>*]:bg-transparent")
	rowElement.AddClass(xclass)
End Sub
Sub setBodyFontSize(s As String)
	Dim rKey As String = $"#${mName}_body tr td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-size": s)))
End Sub
Sub setHeaderFontSize(s As String)
	Dim rKey As String = $"#${mName}_thead tr th"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-size": s)))
End Sub
Sub setFooterFontSize(s As String)
	Dim rKey As String = $"#${mName}_tfoot tr td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-size": s)))
End Sub
Sub setBodyFontFamily(s As String)
	Dim rKey As String = $"#${mName}_body tr td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-family": s)))
End Sub
Sub setHeaderFontFamily(s As String)
	Dim rKey As String = $"#${mName}_thead tr th"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-family": s)))
End Sub
Sub setFooterFontFamily(s As String)
	Dim rKey As String = $"#${mName}_tfoot tr td"$
	Dim rowElement As BANanoElement = BANano.GetElement(rKey)
	rowElement.SetStyle(BANano.ToJson(CreateMap("font-family": s)))
End Sub

'the name of the sub to compute text color when a row is added
Sub SetComputeRowTextColor(s As String)
	tblComputeRowColor = s
End Sub
'the name of the sub to compute background color when a row is added
Sub SetComputeRowBackgroundColor(s As String)
	tblComputeBackgroundColor = s
End Sub
'
'set PDF Page Size
'options: a0|a1|a10|a10|a2|a3|a4|a5|a6|a7|a8|a9|b0|b1|b10|b10|b2|b3|b4|b5|b6|b7|b8|b9|c0|c1|c10|c10|c2|c3|c4|c5|c6|c7|c8|c9|credit-card|dl|government-letter|junior-legal|ledger|legal|letter|tabloid
Sub setPageSize(s As String)
	sPageSize = UI.CStr(s)
	CustProps.put("PageSize", s)
End Sub
'
'set PDF Font Size
Sub setFontSize(s As String)
	sFontSize = UI.CStr(s)
	CustProps.put("FontSize", s)
End Sub
'
'set PDF Unit
'options: cm|in|m|mm|pt|px
Sub setUnit(s As String)
	sUnit = UI.CStr(s)
	CustProps.put("Unit", s)
End Sub
'
'set PDF Orientation
'options: landscape|potrait
Sub setOrientation(s As String)
	sOrientation = UI.CStr(s)
	CustProps.put("Orientation", s)
End Sub
'
'set PDF PageBreakRepeat
Sub setPageBreakRepeat(s As String)
	sPageBreakRepeat = UI.CStr(s)
	CustProps.put("PageBreakRepeat", s)
End Sub
'
'set PDF Theme
'options: css|grid|none|plain|striped
Sub setPdfTheme(s As String)
	sPdfTheme = UI.CStr(s)
	CustProps.put("PdfTheme", s)
End Sub
'
'set Is Compact
Sub setIsCompact(b As Boolean)			'ignoredeadcode
	bIsCompact = UI.CBool(b)
	CustProps.put("IsCompact", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClassByID($"${mName}_table"$, "table-compact")
	Else
		UI.RemoveClassByID($"${mName}_table"$, "table-compact")
	End If
End Sub
'
'set Is Normal
Sub setIsNormal(b As Boolean)			'ignoredeadcode
	bIsNormal = UI.CBool(b)
	CustProps.put("IsNormal", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClassByID($"${mName}_table"$, "table-normal")
	Else
		UI.RemoveClassByID($"${mName}_table"$, "table-normal")
	End If
End Sub

'set Is Zebra
Sub setIsZebra(b As Boolean)				'ignoredeadcode
	bIsZebra = UI.CBool(b)
	CustProps.put("IsZebra", b)
	If mElement = Null Then Return
	If b Then
		UI.AddClassByID($"${mName}_table"$, "table-zebra")
	Else
		UI.RemoveClassByID($"${mName}_table"$, "table-zebra")
	End If	
End Sub
'
'set Select All
Sub setSelectAll(b As Boolean)
	bSelectAll = UI.CBool(b)
	CustProps.put("SelectAll", b)
End Sub

'set Allow Multiple Files
Sub setMultipleFiles(b As Boolean)
	bMultipleFiles = UI.CBool(b)
	CustProps.put("MultipleFiles", b)
End Sub
'
'set Has Export Menu
Sub setHasExportMenu(b As Boolean)
	bHasExportMenu = UI.CBool(b)
	CustProps.put("HasExportMenu", b)
End Sub
'
'set Export To Xls
Sub setExportToXls(b As Boolean)
	bExportToXls = UI.CBool(b)
	CustProps.put("ExportToXls", b)
End Sub
'
'set Has Edit
Sub setHasEdit(b As Boolean)
	bHasEdit = UI.CBool(b)
	CustProps.put("HasEdit", b)
End Sub
'
'set Has Clone
Sub setHasClone(b As Boolean)
	bHasClone = UI.CBool(b)
	CustProps.put("HasClone", b)
End Sub
'
'set Has Delete
Sub setHasDelete(b As Boolean)
	bHasDelete = UI.CBool(b)
	CustProps.put("HasDelete", b)
End Sub
'
'set Has Upload
Sub setHasUpload(b As Boolean)
	bHasUpload = UI.CBool(b)
	CustProps.put("HasUpload", b)
End Sub
'
'set Has Download
Sub setHasDownload(b As Boolean)
	bHasDownload = UI.CBool(b)
	CustProps.put("HasDownload", b)
End Sub
'
'set Has Menu
Sub setHasMenu(b As Boolean)
	bHasMenu = UI.CBool(b)
	CustProps.put("HasMenu", b)
End Sub

'get ParentID
Sub getParentID As String
	Return sParentID
End Sub

'get Title
Sub getTitle As String
	Return sTitle
End Sub
'
'get Title Visible
Sub getTitleVisible As Boolean
	Return bTitleVisible
End Sub
'
'get Pagination
Sub getPagination As Boolean
	Return bPagination
End Sub
'
'get Items Per Page
Sub getItemsPerPage As String
	Return sItemsPerPage
End Sub
'
'get Is Compact
Sub getIsCompact As Boolean
	Return bIsCompact
End Sub
'
'get Normal Case Titles
Sub getNormalCase As Boolean
	Return bNormalCase
End Sub
'
'get Lower Case Keys
Sub getLowerCase As Boolean
	Return bLowerCase
End Sub
'
'get Is Normal
Sub getIsNormal As Boolean
	Return bIsNormal
End Sub
'
'get Is Zebra
Sub getIsZebra As Boolean
	Return bIsZebra
End Sub
'
'get Component Size
'options: lg|md|sm|xs|none
Sub getComponentSize As String
	Return sComponentSize
End Sub
'
'get Hover
Sub getHover As Boolean
	Return bHover
End Sub
'
'get Select All
Sub getSelectAll As Boolean
	Return bSelectAll
End Sub
'
'get Search Size
'options: lg|md|sm|xs|none
Sub getSearchSize As String
	Return sSearchSize
End Sub
'
'get Has AddNew
Sub getHasAddnew As Boolean
	Return bHasAddnew
End Sub
'
'get Has Save Single
Sub getHasSaveSingle As Boolean
	Return bHasSaveSingle
End Sub
'
'get Has Delete Single
Sub getHasDeleteSingle As Boolean
	Return bHasDeleteSingle
End Sub
'
'get Has Refresh
Sub getHasRefresh As Boolean
	Return bHasRefresh
End Sub
'
'get Has Delete All
Sub getHasDeleteAll As Boolean
	Return bHasDeleteAll
End Sub
'
'get Has Toolbar Upload
Sub getHasToolbarUpload As Boolean
	Return bHasToolbarUpload
End Sub
'
'get Allow Multiple Files
Sub getMultipleFiles As Boolean
	Return bMultipleFiles
End Sub
'
'get Has Export Menu
Sub getHasExportMenu As Boolean
	Return bHasExportMenu
End Sub
'
'get Export To Pdf
Sub getExportToPdf As Boolean
	Return bExportToPdf
End Sub
'
'get Export To Xls
Sub getExportToXls As Boolean
	Return bExportToXls
End Sub
'
'get Has Back
Sub getHasBack As Boolean
	Return bHasBack
End Sub
'
'get Has Edit
Sub getHasEdit As Boolean
	Return bHasEdit
End Sub
'
'get Has Clone
Sub getHasClone As Boolean
	Return bHasClone
End Sub
'
'get Has Delete
Sub getHasDelete As Boolean
	Return bHasDelete
End Sub
'
'get Has Upload
Sub getHasUpload As Boolean
	Return bHasUpload
End Sub
'
'get Has Download
Sub getHasDownload As Boolean
	Return bHasDownload
End Sub
'
'get Has Menu
Sub getHasMenu As Boolean
	Return bHasMenu
End Sub
'
Sub SearchByAlphabet(item As String, columnName As String) As List
	columnName = columnName.tolowercase
	If item = "all" Then
		Return Originals
	Else
		Dim alphaSearch As List
		alphaSearch.Initialize
		For Each rec As Map In Originals
			Dim sname As String = rec.GetDefault(columnName, "")
			sname = UI.CStr(sname)
			sname = sname.Trim
			If sname = "" Then Continue
			sname = sname.ToLowerCase
			Select Case item
			Case "other"
				Dim fpart As String = UI.Left(sname, 1)
				If "abcdefghijklmnopqrstuvwxyz".IndexOf(fpart) = -1 Then alphaSearch.add(rec)
			Case Else
				If sname.StartsWith(item) Then alphaSearch.add(rec)
			End Select
		Next
		Return alphaSearch
	End If
End Sub

'set Export To Pdf
Sub setExportToPdf(b As Boolean)
	bExportToPdf = UI.CBool(b)
	CustProps.put("ExportToPdf", b)
End Sub

Sub setFlexWrapActions(b As Boolean)			'ignoredeadcode
	bFlexWrapActions = b
	CustProps.put("FlexWrapActions", b)
	If mElement = Null Then Return
	If b Then
		BANano.GetElement($"#${mName}_actions"$).AddClass("flex-wrap")
	Else
		BANano.GetElement($"#${mName}_actions"$).RemoveClass("flex-wrap")
	End If
End Sub

Sub getFlexWrapActions As Boolean
	Return bFlexWrapActions
End Sub

'<code>
'Sub fi1_change(e As BANanoEvent)
''has the file been specified
'Dim fileObj As Map = = UI.GetFileFromEvent(e)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = UI.GetFileDetails(fileObj)
''get the file name
'Dim fn As String = fileDet.FileName
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = UI.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''**** UPLOAD
''fileDet = UI.UploadFileWait(fileObj)
''fileDet = UI.UploadFileOptionsWait(fileObj, "../assets", "n")
''get the file name
''Dim fn As String = fileDet.FileName
''get the status of the upload
''Dim sstatus As String = fileDet.Status
''Select Case sstatus
''Case "error"
''Case "success"
''End Select
''the the full upload path of the file
''Dim fp As String = fileDet.FullPath
''**** UPLOAD
''Dim fJSON As Map = BANano.Await(UI.readAsJsonWait(fileObj))
''Dim fBuffer As Object = BANano.Await(UI.readAsArrayBufferWait(fileObj))
''Dim fText As String = BANano.Await(UI.readAsTextWait(fileObj))
''Dim fText As String = BANano.Await(UI.readAsDataURLWait(fileObj))
''update state of some element like an image
''for vfield use SetValue
''vimage.src = fText
''clear the file input
''fil1.Value = ""
'End Sub
'</code>
Sub FileChangeSingle
End Sub
'<code>
''****for multiple files
'Sub fi1_change(e As BANanoEvent)
''has the files been selected
'Dim fileList As List = UI.GetFilesFromEvent(e)
'If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return
''will store list of uploaded file
'Dim uploads As List
'uploads.Initialize
''loop through each selected file
'for each fileObj As Map in fileList
''get file details
'Dim fileDet As FileObject
'fileDet = UI.GetFileDetails(fileObj)
''you can check the size here
'Dim fs As Long = fileDet.FileSize
'Dim maxSize As Int = UI.ToKiloBytes(500)
'If fs > maxSize Then
'	app.ShowToastError("File is limited to 500KB!")
'	Return
'End If
''start uploading the file
'fileDet = UI.UploadFileWait(fileObj)
''fileDet = UI.UploadFileOptionsWait(fileObj, "../assets", "n")
''get the file name
'Dim fn As String = fileDet.FileName
''get the status of the upload
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'Case "success"
'End Select
''the the full upload path of the file
'Dim fp As String = fileDet.FullPath
''update the lists of uploaded file with the path
''uploads.Add(fp)
'next
''clear the file input
'fil1.Value = ""
'End Sub
'</code>
Sub FileChangeMultiple
End Sub

