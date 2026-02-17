B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.3
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Public name As String = ""
	Public title As String = ""
	Public icon As String = "./assets/page.svg"
	Public color As String = "#000000"
	Private fabpage As SDUI5Page						'ignore
	Private SDUI5SpeedDial1 As SDUI5SpeedDial		'ignore
End Sub

Sub Show	'ignore
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	fabpage.Initialize(Me, "fabpage", "fabpage")
	fabpage.ParentID = app.PageView
	fabpage.Active = False
	fabpage.BackgroundColor = ""
	fabpage.Container = False
	fabpage.Flex = False
	fabpage.FlexWrap = False
	'fabpage.Gradient = "bl_tr"
	'fabpage.GradientActive = False
	fabpage.MxAuto = False
	fabpage.Description = "My SDUIPage"
	fabpage.Keywords = "page"
	fabpage.ResizePageView = False
	fabpage.Title = "FAB Page"
	BANano.Await(fabpage.AddComponent)
	'
	SDUI5SpeedDial1.Initialize(Me, "SDUI5SpeedDial1", "SDUI5SpeedDial1")
	SDUI5SpeedDial1.ParentID = "fabpage"
	SDUI5SpeedDial1.ChildSize = "lg"
	SDUI5SpeedDial1.Color = "#6c3a7d"
	SDUI5SpeedDial1.MainButtonColor = "#afc8a4"
	SDUI5SpeedDial1.MainButtonIcon = "./assets/xmark-solid.svg"
	SDUI5SpeedDial1.MainButtonText = "F"
	SDUI5SpeedDial1.MainButtonType = "main"
	SDUI5SpeedDial1.ChildColors = "a=#3c79f4; b=#941c38; c=#de5be1; d: #d2fd1c"
	SDUI5SpeedDial1.ChildIcons = $"a=./assets/camera-solid.svg;
b=./assets/list-solid.svg;
c=./assets/image-solid.svg;
d=./assets/microphone-solid.svg"$
	SDUI5SpeedDial1.ChildKeys = "a; b; c; d"
	SDUI5SpeedDial1.ChildText = "a=A; b=B; c=C; d=D"
	SDUI5SpeedDial1.ChildTextColor = "a=#ffffff; b=#ffffff; c=#ffffff;  d=#ffffff"
	SDUI5SpeedDial1.Text = "A"
	BANano.Await(SDUI5SpeedDial1.AddComponent)
	pgIndex.UpdateTitle(fabpage.title)
	name = fabpage.ID
	icon = fabpage.Icon
	color = fabpage.color
	title = fabpage.title
	BANano.Await(BuildPage)
End Sub

Private Sub BuildPage
End Sub

