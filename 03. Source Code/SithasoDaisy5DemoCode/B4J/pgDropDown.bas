B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano				'ignore
	Private app As SDUI5App					'ignore
	Private dd1menu As SDUI5Menu			'ignore
	Private dd2menu As SDUI5Menu			'ignore
	Private menuPopOver1 As SDUI5Menu		'ignore
	Private SDUI5Menu1 As SDUI5Menu		'ignore
	Private SDUI5Menu2 As SDUI5Menu		'ignore
	Private SDUI5Avatar2 As SDUI5Avatar		'ignore
	Private SDUI5Image1 As SDUI5Image		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private dd1 As SDUI5DropDown		'ignore
	Private dd1button As SDUI5Button		'ignore
	Private SDUI5MenuItem1 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem2 As SDUI5MenuItem		'ignore
	Private SDUI5DropDown1 As SDUI5DropDown		'ignore
	Private SDUI5Avatar1 As SDUI5Avatar		'ignore
	Private SDUI5MenuItem3 As SDUI5MenuItem		'ignore
	Private SDUI5MenuItem4 As SDUI5MenuItem		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private btnPopOver1 As SDUI5Button		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.GridCols = ""
	SDUI5Row1.GridColsMd = "2"
	SDUI5Row1.GridColsSm = "1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	dd1.Initialize(Me, "dd1", "dd1")
	dd1.ParentID = "SDUI5Row1"
	BANano.Await(dd1.AddComponent)
	'
	dd1button.Initialize(Me, "dd1button", "dd1button")
	dd1button.ParentID = "dd1"
	dd1button.Activator = True
	dd1button.IconSize = "none"
	'dd1button.Image = ""
	'dd1button.ImageHeight = "32px"
	'dd1button.ImageWidth = "32px"
	dd1button.IndicatorSize = "xs"
	dd1button.MarginAXYTBLR = "a=1; x=?; y=?; t=?; b=?; l=?; r=?"
	dd1button.Size = "none"
	dd1button.Text = "Menu"
	BANano.Await(dd1button.AddComponent)
	'
	dd1menu.Initialize(Me, "dd1menu", "dd1menu")
	dd1menu.ParentID = "dd1"
	dd1menu.DropdownContent = True
	dd1menu.DropdownPlacement = "none"
	dd1menu.CloseDropdownOnClick = True
	dd1menu.MinHeight = ""
	dd1menu.ItemClasses = ""
	dd1menu.ItemStyles = ""
	dd1menu.Shadow = "sm"
	BANano.Await(dd1menu.AddComponent)
	'
	SDUI5MenuItem1.Initialize(Me, "SDUI5MenuItem1", "SDUI5MenuItem1")
	SDUI5MenuItem1.ParentID = "dd1menu"
	SDUI5MenuItem1.IconSize = "5"
	SDUI5MenuItem1.CloseDropdownOnClick = True
	SDUI5MenuItem1.DropDownId = "dd1"
	SDUI5MenuItem1.MenuName = "dd1menu"
	SDUI5MenuItem1.ItemClasses = ""
	SDUI5MenuItem1.ItemStyles = ""
	SDUI5MenuItem1.Text = "Item 1"
	'SDUI5MenuItem1.Tooltip = ""
	'SDUI5MenuItem1.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem1.AddComponent)
	'
	SDUI5MenuItem2.Initialize(Me, "SDUI5MenuItem2", "SDUI5MenuItem2")
	SDUI5MenuItem2.ParentID = "dd1menu"
	SDUI5MenuItem2.IconSize = "5"
	SDUI5MenuItem2.CloseDropdownOnClick = True
	SDUI5MenuItem2.DropDownId = "dd1"
	SDUI5MenuItem2.MenuName = "dd1menu"
	SDUI5MenuItem2.ItemClasses = ""
	SDUI5MenuItem2.ItemStyles = ""
	SDUI5MenuItem2.Text = "Item 2"
	'SDUI5MenuItem2.Tooltip = ""
	'SDUI5MenuItem2.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem2.AddComponent)
	'
	SDUI5DropDown1.Initialize(Me, "SDUI5DropDown1", "SDUI5DropDown1")
	SDUI5DropDown1.ParentID = "SDUI5Row1"
	BANano.Await(SDUI5DropDown1.AddComponent)
	'
	SDUI5Avatar1.Initialize(Me, "SDUI5Avatar1", "SDUI5Avatar1")
	SDUI5Avatar1.ParentID = "SDUI5DropDown1"
	SDUI5Avatar1.Activator = True
	SDUI5Avatar1.Image = "./assets/daisywoman3.png"
	SDUI5Avatar1.MarginAXYTBLR = "a=1; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Avatar1.RoundedField = True
	BANano.Await(SDUI5Avatar1.AddComponent)
	'
	dd2menu.Initialize(Me, "dd2menu", "dd2menu")
	dd2menu.ParentID = "SDUI5DropDown1"
	dd2menu.DropdownContent = True
	dd2menu.DropdownPlacement = "none"
	dd2menu.CloseDropdownOnClick = True
	dd2menu.MinHeight = ""
	dd2menu.ItemClasses = ""
	dd2menu.ItemStyles = ""
	dd2menu.Shadow = "sm"
	BANano.Await(dd2menu.AddComponent)
	'
	SDUI5MenuItem3.Initialize(Me, "SDUI5MenuItem3", "SDUI5MenuItem3")
	SDUI5MenuItem3.ParentID = "dd2menu"
	SDUI5MenuItem3.IconSize = "5"
	SDUI5MenuItem3.CloseDropdownOnClick = True
	SDUI5MenuItem3.DropDownId = "SDUI5DropDown1"
	SDUI5MenuItem3.MenuName = "dd2menu"
	SDUI5MenuItem3.ItemClasses = ""
	SDUI5MenuItem3.ItemStyles = ""
	SDUI5MenuItem3.Text = "Item 2"
	'SDUI5MenuItem3.Tooltip = ""
	'SDUI5MenuItem3.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem3.AddComponent)
	'
	SDUI5MenuItem4.Initialize(Me, "SDUI5MenuItem4", "SDUI5MenuItem4")
	SDUI5MenuItem4.ParentID = "dd2menu"
	SDUI5MenuItem4.IconSize = "5"
	SDUI5MenuItem4.CloseDropdownOnClick = True
	SDUI5MenuItem4.DropDownId = "SDUI5DropDown1"
	SDUI5MenuItem4.MenuName = "dd2menu"
	SDUI5MenuItem4.ItemClasses = ""
	SDUI5MenuItem4.ItemStyles = ""
	SDUI5MenuItem4.Text = "Item 1"
	'SDUI5MenuItem4.Tooltip = ""
	'SDUI5MenuItem4.TooltipPosition = "none"
	BANano.Await(SDUI5MenuItem4.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = "4"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	btnPopOver1.Initialize(Me, "btnPopOver1", "btnPopOver1")
	btnPopOver1.ParentID = "SDUI5Column1"
	btnPopOver1.IconSize = "70"
	'btnPopOver1.Image = ""
	'btnPopOver1.ImageHeight = "32px"
	'btnPopOver1.ImageWidth = "32px"
	btnPopOver1.IndicatorSize = "xs"
	btnPopOver1.PopOverTarget = "menuPopOver1"
	btnPopOver1.Size = "none"
	btnPopOver1.Text = "Pop Over 1"
	BANano.Await(btnPopOver1.AddComponent)
	'
	menuPopOver1.Initialize(Me, "menuPopOver1", "menuPopOver1")
	menuPopOver1.ParentID = "SDUI5Column1"
	menuPopOver1.Card = True
	menuPopOver1.Dropdown = True
	menuPopOver1.MarginAXYTBLR = "a=?; x=?; y=?; t=2; b=?; l=?; r=?"
	menuPopOver1.MinHeight = ""
	menuPopOver1.PopOver = True
	menuPopOver1.ClosePopupOnClick = True
	menuPopOver1.ItemClasses = ""
	menuPopOver1.ItemStyles = ""
	menuPopOver1.Shadow = "lg"
	menuPopOver1.Size = "md"
	BANano.Await(menuPopOver1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "4"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Menu1.Initialize(Me, "SDUI5Menu1", "SDUI5Menu1")
	SDUI5Menu1.ParentID = "SDUI5Column2"
	SDUI5Menu1.Card = True
	SDUI5Menu1.Dropdown = True
	SDUI5Menu1.MarginAXYTBLR = "a=?; x=?; y=?; t=2; b=?; l=?; r=?"
	SDUI5Menu1.MinHeight = ""
	SDUI5Menu1.PopOver = True
	SDUI5Menu1.ClosePopupOnClick = True
	SDUI5Menu1.ItemClasses = ""
	SDUI5Menu1.ItemStyles = ""
	SDUI5Menu1.Shadow = "lg"
	SDUI5Menu1.Size = "md"
	BANano.Await(SDUI5Menu1.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "4"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Menu2.Initialize(Me, "SDUI5Menu2", "SDUI5Menu2")
	SDUI5Menu2.ParentID = "SDUI5Column3"
	SDUI5Menu2.Card = True
	SDUI5Menu2.Dropdown = True
	SDUI5Menu2.MarginAXYTBLR = "a=?; x=?; y=?; t=2; b=?; l=?; r=?"
	SDUI5Menu2.MinHeight = ""
	SDUI5Menu2.PopOver = True
	SDUI5Menu2.ClosePopupOnClick = True
	SDUI5Menu2.ItemClasses = ""
	SDUI5Menu2.ItemStyles = ""
	SDUI5Menu2.Shadow = "lg"
	SDUI5Menu2.Size = "md"
	BANano.Await(SDUI5Menu2.AddComponent)
	'
	SDUI5Avatar2.Initialize(Me, "SDUI5Avatar2", "SDUI5Avatar2")
	SDUI5Avatar2.ParentID = "SDUI5Column2"
	SDUI5Avatar2.PopOverTarget = "SDUI5Menu1"
	BANano.Await(SDUI5Avatar2.AddComponent)
	'Use manual toggle in click handler, avoid double-toggle from declarative popovertarget.
	BANano.GetElement("#sdui5avatar2").RemoveAttr("popovertarget")
	'
	SDUI5Image1.Initialize(Me, "SDUI5Image1", "SDUI5Image1")
	SDUI5Image1.ParentID = "SDUI5Column3"
	SDUI5Image1.PopOverTarget = "SDUI5Menu2"
	BANano.Await(SDUI5Image1.AddComponent)
	'Use manual toggle in click handler, avoid double-toggle from declarative popovertarget.
	BANano.GetElement("#sdui5image1").RemoveAttr("popovertarget")
	pgIndex.UpdateTitle("SDUI5DropDown")
	'
	menuPopOver1.AddMenuItem("itemx", "Item X", False)
	menuPopOver1.AddMenuItem("itemy", "Item Y", False)
	'
	SDUI5Menu1.AddMenuItem("itemx", "Item X", False)
	SDUI5Menu1.AddMenuItem("itemy", "Item Y", False)
	'
	SDUI5Menu2.AddMenuItem("itemx", "Item X", False)
	SDUI5Menu2.AddMenuItem("itemy", "Item Y", False)
End Sub

Private Sub dd2menu_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub dd1menu_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub menuPopOver1_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub SDUI5Menu2_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub SDUI5Menu1_ItemClick (item As String)
	app.ShowToastSuccess(item)
End Sub

Private Sub SDUI5Image1_Click (e As BANanoEvent)
	e.PreventDefault
	SDUI5Menu2.TogglePopover
End Sub

Private Sub SDUI5Avatar2_Click (e As BANanoEvent)
	e.PreventDefault
	SDUI5Menu1.TogglePopover
End Sub

