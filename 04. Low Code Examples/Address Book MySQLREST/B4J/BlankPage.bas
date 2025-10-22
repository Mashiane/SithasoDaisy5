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
	Private page As SDUI5Page		'ignore
End Sub

Sub Show(MainApp As SDUI5App)			'ignore
	app = MainApp
	app.pagepause
	pgIndex.PageViewPaddingTo10px
	app.PageViewToFullScreenHeight(Array("appnavbar"))
	BANano.LoadLayout(app.PageView, "blankview")
	name = page.ID
	title = page.Title
	color = page.Color
	icon = page.icon
	BANano.Await(BuildPage)
	app.pageresume
End Sub

Sub getName As String		'ignore
	Return name
End Sub
'
Sub getIcon As String		'ignore
	Return icon
End Sub
'
Sub getTitle As String		'ignore
	Return title
End Sub
'
Sub getColor As String		'ignore
	Return color
End Sub

Private Sub BuildPage
	
End Sub
