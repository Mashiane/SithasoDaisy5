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
	Private SDUI5SpeedDial1 As SDUI5SpeedDial
End Sub

Sub Show(MainApp As SDUI5App)			'ignore
	app = MainApp
	BANano.LoadLayout(app.PageView, "fabview")
	pgIndex.UpdateTitle(fabpage.title)
	name = fabpage.ID
	icon = fabpage.Icon
	color = fabpage.color
	title = fabpage.title
	BANano.Await(BuildPage)
End Sub

Private Sub BuildPage
End Sub
