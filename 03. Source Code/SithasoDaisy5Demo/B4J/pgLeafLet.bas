B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.2
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private llmap As SDUI5Leaflet
	Private btnAddCircle As SDUI5Button
	Private btnAddMarker As SDUI5Button
	Private btnRemoveCircle As SDUI5Button
	Private btnRemoveMarker As SDUI5Button
	Private btnAddPolygon As SDUI5Button
	Private btnRemovePolygon As SDUI5Button
	Private btnAddPolyline As SDUI5Button
	Private btnRemovePolyline As SDUI5Button
	Private btnLocate As SDUI5Button
	Private btnStopLocate As SDUI5Button
	Private btnAddImage As SDUI5Button
	Private btnRemoveImage As SDUI5Button
End Sub

Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.Await(app.UsesLeaflet)
	BANano.LoadLayout(app.PageView, "leafletview")
	pgIndex.UpdateTitle("SDUI5LeafLet")
	'
	'add unique icon
	llmap.AddIcon("customicon", "https://cdn-icons-png.flaticon.com/512/1673/1673221.png", 32, 32, 16, 32, 0, -32)
End Sub

Private Sub llmap_ZoomLevelsChange (e As Map)
	Log("llmap_ZoomLevelsChange")
	Log(e)
End Sub

Private Sub llmap_Zoom (e As Map)
	Log("llmap_Zoom")
	Log(e)
End Sub

Private Sub llmap_Click (e As Map)
	Log("llmap_Click")
	Log(e)
End Sub

Private Sub llmap_MarkerClick (e As Map)
	Log("llmap_MarkerClick")
	Log(e)
End Sub

Private Sub llmap_MarkerAdd (e As Map)
	Log("llmap_MarkerAdd")
	Log(e)
End Sub

Private Sub btnAddMarker_Click (e As BANanoEvent)
	llmap.RemoveMarker("el")
	llmap.AddMarker("el", -33.01529, 27.91162)
	llmap.SetMarkerTooltip("el", "East London Tooltip")
	llmap.SetMarkerPopup("el", "East London Popup")
	llmap.SetMarkerDraggable("el", True)
	llmap.SetMarkerAutoPan("el", True)
	llmap.SetView(-33.01529, 27.91162, llmap.Zoom)
End Sub

Private Sub btnAddCircle_Click (e As BANanoEvent)
	llmap.RemoveCircle("circle1")
	llmap.AddCircle("circle1", 51.508, -0.11, "red", "#f03", 0.5, 500)
	llmap.SetCircleTooltip("circle1", "This is a circle.")
	llmap.SetCirclePopup("circle1", "This is a popup.")
	'llmap.SetView(51.508, -0.11, llmap.Zoom)
	llmap.CircleFitToBounds("circle1")
End Sub

Private Sub btnRemoveMarker_Click (e As BANanoEvent)
	llmap.RemoveMarker("el")
End Sub

Private Sub btnRemoveCircle_Click (e As BANanoEvent)
	llmap.RemoveCircle("circle1")
End Sub

Private Sub btnRemovePolygon_Click (e As BANanoEvent)
	llmap.RemovePolygon("p1")
End Sub


Private Sub btnAddPolygon_Click (e As BANanoEvent)
	llmap.RemovePolygon("p1")
	llmap.AddPolygon("p1", "red", "#f03", 0.5)
	llmap.SetPolygonTooltip("p1", "This is a polygon tooltip!")
	llmap.SetPolygonPopUp("p1", "This is a polygon popup!")
	llmap.AddPolygonMarker("p1", 51.509, -0.08)
	llmap.AddPolygonMarker("p1", 51.503, -0.06)
	llmap.AddPolygonMarker("p1", 51.51, -0.047)
	llmap.RefreshPolygon("p1")
	llmap.PolygonFitToBounds("p1")
'	llmap.SetView(51.509, -0.08, llmap.Zoom)
End Sub

Private Sub btnRemovePolyline_Click (e As BANanoEvent)
	llmap.RemovePolyLine("pl1")
End Sub

Private Sub btnAddPolyline_Click (e As BANanoEvent)
	llmap.RemovePolyLine("pl1")
	llmap.AddPolyline("pl1", "blue", 4, 0.8)
	llmap.AddPolylineMarker("pl1", 48.8566, 2.3522)
	llmap.AddPolylineMarker("pl1", 48.8570, 2.3540)
	llmap.AddPolylineMarker("pl1", 48.8585, 2.3510)
	llmap.AddPolylineMarker("pl1", 48.8575, 2.3480)
	llmap.AddPolylineMarker("pl1", 48.8560, 2.3495)
	llmap.AddPolylineMarker("pl1", 48.8555, 2.3518)
	llmap.RefreshPolyline("pl1")
	llmap.PolylineFitToBounds("pl1")
'	llmap.SetView(48.8566, 2.3522, llmap.Zoom)
End Sub

Private Sub btnStopLocate_Click (e As BANanoEvent)
	llmap.StopLocate
End Sub

Private Sub btnLocate_Click (e As BANanoEvent)
	app.PagePause
	llmap.locate(False, True, True)
End Sub

Private Sub llmap_LocationError (e As Map)
	app.pageresume
	Log("llmap_LocationError")
	Log(e)
	app.ShowToastError("Location Error!")
End Sub

Private Sub llmap_LocationFound (e As Map)
	app.pageresume
	app.ShowToastSuccess("Location Found!")
	
	Log("llmap_LocationFound")
	Log(e)
	'get the coordinates
	Dim dlatitude As Double = e.Get("latitude")
	Dim dlongitude As Double = e.Get("longitude")
	'add the marker
	llmap.RemoveMarker("myself")
	llmap.AddMarker("myself", dlatitude, dlongitude)
	llmap.SetMarkerRotationAngle("myself", 45)
	llmap.SetMarkerIcon("myself", "customicon")
	'
	'Dim mb As Object = llmap.GetMarkerBounds("myself")
	'Log(mb)
End Sub

Private Sub btnRemoveImage_Click (e As BANanoEvent)
	llmap.RemoveImage("mashy")
End Sub

Private Sub btnAddImage_Click (e As BANanoEvent)
	llmap.RemoveImage("mashy")
	llmap.AddImage("mashy", "./assets/mashy.jpg", 51.49, -0.12, 51.5, -0.08)
	llmap.SetView(51.49, -0.12, llmap.Zoom)
End Sub