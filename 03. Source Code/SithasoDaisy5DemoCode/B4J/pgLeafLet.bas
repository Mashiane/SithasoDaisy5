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
	Private llmap As SDUI5Leaflet		'ignore
	Private btnAddCircle As SDUI5Button		'ignore
	Private btnAddMarker As SDUI5Button		'ignore
	Private btnRemoveCircle As SDUI5Button		'ignore
	Private btnRemoveMarker As SDUI5Button		'ignore
	Private btnAddPolygon As SDUI5Button		'ignore
	Private btnRemovePolygon As SDUI5Button		'ignore
	Private btnAddPolyline As SDUI5Button		'ignore
	Private btnRemovePolyline As SDUI5Button		'ignore
	Private btnLocate As SDUI5Button		'ignore
	Private btnStopLocate As SDUI5Button		'ignore
	Private btnAddImage As SDUI5Button		'ignore
	Private btnRemoveImage As SDUI5Button		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5Column13 As SDUI5Column		'ignore
	Private SDUI5Column14 As SDUI5Column		'ignore
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesLeaflet)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	llmap.Initialize(Me, "llmap", "llmap")
	llmap.ParentID = "SDUI5Column1"
	'llmap.AutoScale = False
	llmap.Height = "800px"
	'llmap.Lat = "-33.01529000"
	'llmap.Lng = "27.91162000"
	'llmap.MapType = "streets"
	llmap.Width = "800px"
	llmap.Zoom = 13
	BANano.Await(llmap.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.Size = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = "SDUI5Column6"
	SDUI5Row2.Gap = ""
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row2"
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row2"
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row2"
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Size = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row2"
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	btnAddMarker.Initialize(Me, "btnAddMarker", "btnAddMarker")
	btnAddMarker.ParentID = "SDUI5Column2"
	btnAddMarker.Block = True
	'btnAddMarker.Image = ""
	'btnAddMarker.ImageHeight = "32px"
	'btnAddMarker.ImageWidth = "32px"
	btnAddMarker.IndicatorSize = "xs"
	btnAddMarker.Size = "none"
	btnAddMarker.Text = "Add Marker"
	BANano.Await(btnAddMarker.AddComponent)
	'
	btnAddCircle.Initialize(Me, "btnAddCircle", "btnAddCircle")
	btnAddCircle.ParentID = "SDUI5Column3"
	btnAddCircle.Block = True
	'btnAddCircle.Image = ""
	'btnAddCircle.ImageHeight = "32px"
	'btnAddCircle.ImageWidth = "32px"
	btnAddCircle.IndicatorSize = "xs"
	btnAddCircle.Size = "none"
	btnAddCircle.Text = "Add Circle"
	BANano.Await(btnAddCircle.AddComponent)
	'
	btnRemoveMarker.Initialize(Me, "btnRemoveMarker", "btnRemoveMarker")
	btnRemoveMarker.ParentID = "SDUI5Column4"
	btnRemoveMarker.Block = True
	'btnRemoveMarker.Image = ""
	'btnRemoveMarker.ImageHeight = "32px"
	'btnRemoveMarker.ImageWidth = "32px"
	btnRemoveMarker.IndicatorSize = "xs"
	btnRemoveMarker.Size = "none"
	btnRemoveMarker.Text = "Remove Marker"
	BANano.Await(btnRemoveMarker.AddComponent)
	'
	btnRemoveCircle.Initialize(Me, "btnRemoveCircle", "btnRemoveCircle")
	btnRemoveCircle.ParentID = "SDUI5Column5"
	btnRemoveCircle.Block = True
	'btnRemoveCircle.Image = ""
	'btnRemoveCircle.ImageHeight = "32px"
	'btnRemoveCircle.ImageWidth = "32px"
	btnRemoveCircle.IndicatorSize = "xs"
	btnRemoveCircle.Size = "none"
	btnRemoveCircle.Text = "Remove Circle"
	BANano.Await(btnRemoveCircle.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row2"
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.Size = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	btnAddPolygon.Initialize(Me, "btnAddPolygon", "btnAddPolygon")
	btnAddPolygon.ParentID = "SDUI5Column7"
	btnAddPolygon.Block = True
	'btnAddPolygon.Image = ""
	'btnAddPolygon.ImageHeight = "32px"
	'btnAddPolygon.ImageWidth = "32px"
	btnAddPolygon.IndicatorSize = "xs"
	btnAddPolygon.Size = "none"
	btnAddPolygon.Text = "Add Polygon"
	BANano.Await(btnAddPolygon.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row2"
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.Size = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	btnRemovePolygon.Initialize(Me, "btnRemovePolygon", "btnRemovePolygon")
	btnRemovePolygon.ParentID = "SDUI5Column8"
	btnRemovePolygon.Block = True
	'btnRemovePolygon.Image = ""
	'btnRemovePolygon.ImageHeight = "32px"
	'btnRemovePolygon.ImageWidth = "32px"
	btnRemovePolygon.IndicatorSize = "xs"
	btnRemovePolygon.Size = "none"
	btnRemovePolygon.Text = "Remove Polygon"
	BANano.Await(btnRemovePolygon.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row2"
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.Size = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	btnAddPolyline.Initialize(Me, "btnAddPolyline", "btnAddPolyline")
	btnAddPolyline.ParentID = "SDUI5Column9"
	btnAddPolyline.Block = True
	'btnAddPolyline.Image = ""
	'btnAddPolyline.ImageHeight = "32px"
	'btnAddPolyline.ImageWidth = "32px"
	btnAddPolyline.IndicatorSize = "xs"
	btnAddPolyline.Size = "none"
	btnAddPolyline.Text = "Add Polyline"
	BANano.Await(btnAddPolyline.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row2"
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.Size = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	btnRemovePolyline.Initialize(Me, "btnRemovePolyline", "btnRemovePolyline")
	btnRemovePolyline.ParentID = "SDUI5Column10"
	btnRemovePolyline.Block = True
	'btnRemovePolyline.Image = ""
	'btnRemovePolyline.ImageHeight = "32px"
	'btnRemovePolyline.ImageWidth = "32px"
	btnRemovePolyline.IndicatorSize = "xs"
	btnRemovePolyline.Size = "none"
	btnRemovePolyline.Text = "Remove Polyline"
	BANano.Await(btnRemovePolyline.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row2"
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.Size = "6"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	btnLocate.Initialize(Me, "btnLocate", "btnLocate")
	btnLocate.ParentID = "SDUI5Column11"
	btnLocate.Block = True
	'btnLocate.Image = ""
	'btnLocate.ImageHeight = "32px"
	'btnLocate.ImageWidth = "32px"
	btnLocate.IndicatorSize = "xs"
	btnLocate.Size = "none"
	btnLocate.Text = "Locate"
	BANano.Await(btnLocate.AddComponent)
	'
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row2"
	SDUI5Column12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.Size = "6"
	BANano.Await(SDUI5Column12.AddComponent)
	'
	btnStopLocate.Initialize(Me, "btnStopLocate", "btnStopLocate")
	btnStopLocate.ParentID = "SDUI5Column12"
	btnStopLocate.Block = True
	'btnStopLocate.Image = ""
	'btnStopLocate.ImageHeight = "32px"
	'btnStopLocate.ImageWidth = "32px"
	btnStopLocate.IndicatorSize = "xs"
	btnStopLocate.Size = "none"
	btnStopLocate.Text = "Stop Locate"
	BANano.Await(btnStopLocate.AddComponent)
	'
	SDUI5Column13.Initialize(Me, "SDUI5Column13", "SDUI5Column13")
	SDUI5Column13.ParentID = "SDUI5Row2"
	SDUI5Column13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column13.Size = "6"
	BANano.Await(SDUI5Column13.AddComponent)
	'
	btnAddImage.Initialize(Me, "btnAddImage", "btnAddImage")
	btnAddImage.ParentID = "SDUI5Column13"
	btnAddImage.Block = True
	'btnAddImage.Image = ""
	'btnAddImage.ImageHeight = "32px"
	'btnAddImage.ImageWidth = "32px"
	btnAddImage.IndicatorSize = "xs"
	btnAddImage.Size = "none"
	btnAddImage.Text = "Add Image"
	BANano.Await(btnAddImage.AddComponent)
	'
	SDUI5Column14.Initialize(Me, "SDUI5Column14", "SDUI5Column14")
	SDUI5Column14.ParentID = "SDUI5Row2"
	SDUI5Column14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column14.Size = "6"
	BANano.Await(SDUI5Column14.AddComponent)
	'
	btnRemoveImage.Initialize(Me, "btnRemoveImage", "btnRemoveImage")
	btnRemoveImage.ParentID = "SDUI5Column14"
	btnRemoveImage.Block = True
	'btnRemoveImage.Image = ""
	'btnRemoveImage.ImageHeight = "32px"
	'btnRemoveImage.ImageWidth = "32px"
	btnRemoveImage.IndicatorSize = "xs"
	btnRemoveImage.Size = "none"
	btnRemoveImage.Text = "Remove Image"
	BANano.Await(btnRemoveImage.AddComponent)
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

