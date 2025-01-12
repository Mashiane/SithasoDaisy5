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
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.ClearPageView)
	'create a container for the page
	Dim cont As SDUI5Container
	cont.Initialize(Me, "container1", "container1")
	cont.TextAlign = app.TEXTALIGN_CENTER
	cont.ContainerFluid = True
	cont.Width = "100%"
	cont.ParentID = app.PageView
	cont.ShowGridDesign = True
	cont.AddComponent
	'add 10 rows
	cont.AddRows1.AddColumns12
	cont.AddRows1.AddColumns11p1
	cont.AddRows1.AddColumns10p2
	cont.AddRows1.AddColumns9p3
	cont.AddRows1.AddColumns8p4
	cont.AddRows1.AddColumns7p5
	cont.AddRows1.AddColumns2x6
	cont.AddRows1.AddColumns3x4
	cont.AddRows1.AddColumns4x3
	cont.AddRows1.AddColumns6x2
	cont.BuildGrid
	'
	Dim rowPos As Int = 0
	For rowPos = 1 To 10
		cont.Cell(rowPos, 1).TextColor = "primary-content"
		cont.Cell(rowPos, 1).BackgroundColor = "primary"
	Next
	For rowPos = 2 To 10
		cont.Cell(rowPos, 2).TextColor = "white"
		cont.Cell(rowPos, 2).BackgroundColor = "accent"
	Next
	cont.Cell(8, 3).BackgroundColor = "warning"
	cont.Cell(9, 3).BackgroundColor = "warning"
	cont.Cell(10, 3).BackgroundColor = "warning"
	cont.Cell(9, 4).BackgroundColor = "error"
	cont.Cell(10, 4).BackgroundColor = "error"
	cont.Cell(10, 5).BackgroundColor = "info"
	cont.Cell(10, 6).BackgroundColor = "success"
End Sub