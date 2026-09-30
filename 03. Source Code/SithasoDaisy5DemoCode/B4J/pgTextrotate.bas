B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private SDUI5Container1 As SDUI5Container	'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column	'ignore
	Private SDUI5Textrotate1 As SDUI5TextRotate	'ignore
	Private SDUI5Textrotate2 As SDUI5TextRotate	'ignore
	Private SDUI5Textrotate3 As SDUI5TextRotate	'ignore
	Private SDUI5Textrotate4 As SDUI5TextRotate	'ignore
	Private SDUI5Textrotate5 As SDUI5TextRotate	'ignore
	Private SDUI5Textrotate6 As SDUI5TextRotate	'ignore
	Private SDUI5Label1 As SDUI5Text		'ignore
	Private SDUI5Label2 As SDUI5Text		'ignore
	Private SDUI5Label3 As SDUI5Text		'ignore
	Private SDUI5Label4 As SDUI5Text		'ignore
	Private SDUI5Label5 As SDUI5Text		'ignore
	Private SDUI5Label6 As SDUI5Text		'ignore
	Private SDUI5Label7 As SDUI5Text		'ignore
	Private SDUI5Label8 As SDUI5Text		'ignore
	Private SDUI5Label9 As SDUI5Text		'ignore
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)

	'Main container
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.Classes = "mx-auto py-8"
	BANano.Await(SDUI5Container1.AddComponent)

	'Main row
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.GridCols = "1"
	SDUI5Row1.GridColsMd = "1"
	BANano.Await(SDUI5Row1.AddComponent)

	'Title
	SDUI5Label1.Initialize(Me, "SDUI5Label1", "SDUI5Label1")
	SDUI5Label1.ParentID = "SDUI5Row1"
	SDUI5Label1.Text = "SDUI5 TextRotate Component Demo"
	SDUI5Label1.TextSize = "lg"
	SDUI5Label1.TextColor = "base-content"
	SDUI5Label1.TextAlign = "center"
	BANano.Await(SDUI5Label1.AddComponent)

	'Description
	SDUI5Label2.Initialize(Me, "SDUI5Label2", "SDUI5Label2")
	SDUI5Label2.ParentID = "SDUI5Row1"
	SDUI5Label2.Text = "DaisyUI TextRotate component wrapped for B4J - Shows rotating text with CSS animations"
	SDUI5Label2.TextSize = "sm"
	SDUI5Label2.TextColor = "base-content"
	SDUI5Label2.TextAlign = "center"
	BANano.Await(SDUI5Label2.AddComponent)

	'Example 1: Basic rotation (2 items)
	SDUI5Label3.Initialize(Me, "SDUI5Label3", "SDUI5Label3")
	SDUI5Label3.ParentID = "SDUI5Row1"
	SDUI5Label3.Text = "Example 1: Basic rotation (3 items)"
	SDUI5Label3.TextSize = "md"
	SDUI5Label3.TextColor = "base-content"
	SDUI5Label3.TextAlign = "left"
	SDUI5Label3.MarginAXYTBLR = "t=4; b=0; l=0; r=0"
	BANano.Await(SDUI5Label3.AddComponent)

	SDUI5Textrotate1.Initialize(Me, "SDUI5Textrotate1", "SDUI5Textrotate1")
	SDUI5Textrotate1.ParentID = "SDUI5Row1"
	SDUI5Textrotate1.Text = "ONE,TWO,THREE" ' Comma-separated list for rotation
	SDUI5Textrotate1.Duration = "5000"
	SDUI5Textrotate1.MarginAXYTBLR = "t=1; b=4; l=0; r=0"
	BANano.Await(SDUI5Textrotate1.AddComponent)

	'Example 2: Three items
	SDUI5Label4.Initialize(Me, "SDUI5Label4", "SDUI5Label4")
	SDUI5Label4.ParentID = "SDUI5Row1"
	SDUI5Label4.Text = "Example 2: Three items"
	SDUI5Label4.TextSize = "md"
	SDUI5Label4.TextColor = "base-content"
	SDUI5Label4.TextAlign = "left"
	SDUI5Label4.MarginAXYTBLR = "t=4; b=0; l=0; r=0"
	BANano.Await(SDUI5Label4.AddComponent)

	SDUI5Textrotate2.Initialize(Me, "SDUI5Textrotate2", "SDUI5Textrotate2")
	SDUI5Textrotate2.ParentID = "SDUI5Row1"
	SDUI5Textrotate2.Text = "Item A,Item B,Item C" ' Comma-separated list for rotation
	SDUI5Textrotate2.MarginAXYTBLR = "t=1; b=4; l=0; r=0"
	SDUI5Textrotate2.Duration = "5000"
	BANano.Await(SDUI5Textrotate2.AddComponent)

	'Example 3: Four items with color
	SDUI5Label5.Initialize(Me, "SDUI5Label5", "SDUI5Label5")
	SDUI5Label5.ParentID = "SDUI5Row1"
	SDUI5Label5.Text = "Example 3: Four items with text color"
	SDUI5Label5.TextSize = "md"
	SDUI5Label5.TextColor = "base-content"
	SDUI5Label5.TextAlign = "left"
	SDUI5Label5.MarginAXYTBLR = "t=4; b=0; l=0; r=0"
	BANano.Await(SDUI5Label5.AddComponent)

	SDUI5Textrotate3.Initialize(Me, "SDUI5Textrotate3", "SDUI5Textrotate3")
	SDUI5Textrotate3.ParentID = "SDUI5Row1"
	SDUI5Textrotate3.Text = "Red,Green,Blue,Yellow" ' Comma-separated list for rotation
	SDUI5Textrotate3.MarginAXYTBLR = "t=1; b=4; l=0; r=0"
	BANano.Await(SDUI5Textrotate3.AddComponent)
	SDUI5Textrotate3.SetItemTextColor(1, "primary")
	SDUI5Textrotate3.SetItemTextColor(2, "warning")
	SDUI5Textrotate3.SetItemTextColor(3, "error")
	SDUI5Textrotate3.SetItemTextColor(4, "success")

	'Example 4: Two items with size
	SDUI5Label6.Initialize(Me, "SDUI5Label6", "SDUI5Label6")
	SDUI5Label6.ParentID = "SDUI5Row1"
	SDUI5Label6.Text = "Example 4: Two items with size"
	SDUI5Label6.TextSize = "lg"
	SDUI5Label6.TextColor = "base-content"
	SDUI5Label6.TextAlign = "left"
	SDUI5Label6.MarginAXYTBLR = "t=4; b=0; l=0; r=0"
	BANano.Await(SDUI5Label6.AddComponent)

	SDUI5Textrotate4.Initialize(Me, "SDUI5Textrotate4", "SDUI5Textrotate4")
	SDUI5Textrotate4.ParentID = "SDUI5Row1"
	SDUI5Textrotate4.Text = "Large,Text" ' Comma-separated list for rotation
	SDUI5Textrotate4.Size = "lg" ' Applies textrotate-lg class
	SDUI5Textrotate4.MarginAXYTBLR = "t=1; b=4; l=0; r=0"
	BANano.Await(SDUI5Textrotate4.AddComponent)

	'Example 5: Single item (no rotation)
	SDUI5Label7.Initialize(Me, "SDUI5Label7", "SDUI5Label7")
	SDUI5Label7.ParentID = "SDUI5Row1"
	SDUI5Label7.Text = "Example 5: Single item (no rotation)"
	SDUI5Label7.TextSize = "md"
	SDUI5Label7.TextColor = "base-content"
	SDUI5Label7.TextAlign = "left"
	SDUI5Label7.MarginAXYTBLR = "t=4; b=0; l=0; r=0"
	BANano.Await(SDUI5Label7.AddComponent)

	SDUI5Textrotate5.Initialize(Me, "SDUI5Textrotate5", "SDUI5Textrotate5")
	SDUI5Textrotate5.ParentID = "SDUI5Row1"
	SDUI5Textrotate5.Text = "Single Item" ' Single item - no rotation
	SDUI5Textrotate5.MarginAXYTBLR = "t=1; b=4; l=0; r=0"
	BANano.Await(SDUI5Textrotate5.AddComponent)

	'Info about usage
	SDUI5Label8.Initialize(Me, "SDUI5Label8", "SDUI5Label8")
	SDUI5Label8.ParentID = "SDUI5Row1"
	SDUI5Label8.Text = $"Usage: Set Text property to comma-separated values (e.g., "Item1,Item2,Item3")"$
	SDUI5Label8.TextSize = "sm"
	SDUI5Label8.TextColor = "base-content"
	SDUI5Label8.TextAlign = "center"
	SDUI5Label8.MarginAXYTBLR = "t=6; b=2; l=0; r=0"
	BANano.Await(SDUI5Label8.AddComponent)

	'
	SDUI5Textrotate6.Initialize(Me, "SDUI5Textrotate6", "SDUI5Textrotate6")
	SDUI5Textrotate6.ParentID = "SDUI5Row1"
	SDUI5Textrotate6.Size = "6xl"
	SDUI5Textrotate6.MarginAXYTBLR = "t=1; b=4; l=0; r=0"
	BANano.Await(SDUI5Textrotate6.AddComponent)
'
	SDUI5Textrotate6.SetItemsClass("justify-items-center")
	SDUI5Textrotate6.Clear
	SDUI5Textrotate6.AddItem("📐 DESIGN")
	SDUI5Textrotate6.AddItem("⌨️ DEVELOP")
	SDUI5Textrotate6.AddItem("🌎 DEPLOY")
	SDUI5Textrotate6.AddItem("🌱 SCALE")
	SDUI5Textrotate6.AddItem("🔧 MAINTAIN")
	SDUI5Textrotate6.AddItem("♻️ REPEAT")

End Sub