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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private btnStartTour As SDUI5Button		'ignore
	Private txtSearchDemo As SDUI5TextBox		'ignore
	Private btnActionDemo As SDUI5Button		'ignore
	Private cardDemo As SDUI5Card		'ignore
	Private tour As SDUI5EnjoyHint		'ignore
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	BANano.Await(app.UsesEnjoyHint)
	
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.Classes = "mx-auto p-6"
	BANano.Await(SDUI5Container1.AddComponent)
	
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.Classes = "flex flex-col gap-6 max-w-xl mx-auto"
	BANano.Await(SDUI5Column1.AddComponent)
	
	cardDemo.Initialize(Me, "cardDemo", "cardDemo")
	cardDemo.ParentID = "SDUI5Column1"
	cardDemo.Title = "EnjoyHint v5 Interactive Tour Demo"
	cardDemo.Content = "EnjoyHint has been upgraded to v5.0.2 with native SVG rendering, no jQuery, and no KineticJS dependencies."
	cardDemo.Border = True
	BANano.Await(cardDemo.AddComponent)
	
	btnStartTour.Initialize(Me, "btnStartTour", "btnStartTour")
	btnStartTour.ParentID = "SDUI5Column1"
	btnStartTour.Text = "Start Interactive Tour"
	btnStartTour.Color = "primary"
	BANano.Await(btnStartTour.AddComponent)
	
	txtSearchDemo.Initialize(Me, "txtSearchDemo", "txtSearchDemo")
	txtSearchDemo.ParentID = "SDUI5Column1"
	txtSearchDemo.Label = "Sample Search Input"
	txtSearchDemo.Placeholder = "Type query here..."
	BANano.Await(txtSearchDemo.AddComponent)
	
	btnActionDemo.Initialize(Me, "btnActionDemo", "btnActionDemo")
	btnActionDemo.ParentID = "SDUI5Column1"
	btnActionDemo.Text = "Sample Action Button"
	btnActionDemo.Color = "secondary"
	BANano.Await(btnActionDemo.AddComponent)
End Sub

Private Sub btnStartTour_Click (e As BANanoEvent)
	e.PreventDefault
	tour.Initialize(Me, "tour", False)
	tour.AddIntroStep("Welcome to the <b>EnjoyHint v5</b> Tour!<br>This is a modern targetless intro step.")
	tour.AddStep("txtSearchDemo", "This is an input box where users can type searches.")
	tour.AddClick("btnActionDemo", "Click this button to advance the tour!")
	tour.EndsOn("cardDemo", "Done! EnjoyHint is fully upgraded to v5.0.2.")
	tour.Run(Me)
End Sub

Private Sub btnActionDemo_Click (e As BANanoEvent)
	app.ShowToastSuccess("Action button clicked!")
End Sub

Private Sub tour_EnjoyStarted (e As BANanoEvent)
	app.ShowToastInfo("EnjoyHint Tour started!")
End Sub

Private Sub tour_EnjoyNext (e As BANanoEvent)
	' Step advanced
End Sub

Private Sub tour_EnjoyEnded (e As BANanoEvent)
	app.ShowToastSuccess("EnjoyHint Tour finished!")
End Sub

Private Sub tour_EnjoySkip (e As BANanoEvent)
	app.ShowToastWarning("EnjoyHint Tour skipped!")
End Sub
