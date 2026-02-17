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
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Device1 As SDUI5Device		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Device2 As SDUI5Device		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Device3 As SDUI5Device		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Device4 As SDUI5Device		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Device5 As SDUI5Device		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Device6 As SDUI5Device		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Device7 As SDUI5Device		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Device8 As SDUI5Device		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Device9 As SDUI5Device		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Device10 As SDUI5Device		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5Device11 As SDUI5Device		'ignore
End Sub


Sub Show
	app = pgIndex.App
	app.PagePause
	BANano.Await(app.UsesDevices)
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.CenterChildren = True
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.Size = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Device1.Initialize(Me, "SDUI5Device1", "SDUI5Device1")
	SDUI5Device1.ParentID = "SDUI5Column1"
	SDUI5Device1.DeviceType = "imac-pro"
	SDUI5Device1.Text = "iMac Pro"
	BANano.Await(SDUI5Device1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.CenterChildren = True
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.Size = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Device2.Initialize(Me, "SDUI5Device2", "SDUI5Device2")
	SDUI5Device2.ParentID = "SDUI5Column2"
	SDUI5Device2.DeviceType = "ipad-pro"
	SDUI5Device2.Text = "iPad Pro"
	BANano.Await(SDUI5Device2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.CenterChildren = True
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.Size = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Device3.Initialize(Me, "SDUI5Device3", "SDUI5Device3")
	SDUI5Device3.ParentID = "SDUI5Column3"
	SDUI5Device3.DeviceType = "iphone-14"
	SDUI5Device3.Text = "iPhone 14"
	BANano.Await(SDUI5Device3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row1"
	SDUI5Column4.AlignSelf = ""
	SDUI5Column4.CenterChildren = True
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.Size = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	SDUI5Device4.Initialize(Me, "SDUI5Device4", "SDUI5Device4")
	SDUI5Device4.ParentID = "SDUI5Column4"
	SDUI5Device4.Text = "iPhone 8"
	BANano.Await(SDUI5Device4.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row1"
	SDUI5Column5.AlignSelf = ""
	SDUI5Column5.CenterChildren = True
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.Size = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Device5.Initialize(Me, "SDUI5Device5", "SDUI5Device5")
	SDUI5Device5.ParentID = "SDUI5Column5"
	SDUI5Device5.DeviceType = "macbook"
	SDUI5Device5.Text = "MacBook"
	BANano.Await(SDUI5Device5.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row1"
	SDUI5Column6.AlignSelf = ""
	SDUI5Column6.CenterChildren = True
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.Size = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	SDUI5Device6.Initialize(Me, "SDUI5Device6", "SDUI5Device6")
	SDUI5Device6.ParentID = "SDUI5Column6"
	SDUI5Device6.DeviceType = "surface-book"
	SDUI5Device6.Text = "Surface Book"
	BANano.Await(SDUI5Device6.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row1"
	SDUI5Column7.AlignSelf = ""
	SDUI5Column7.CenterChildren = True
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.Size = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5Device7.Initialize(Me, "SDUI5Device7", "SDUI5Device7")
	SDUI5Device7.ParentID = "SDUI5Column7"
	SDUI5Device7.DeviceType = "surface-studio"
	SDUI5Device7.Text = "Surface Studio"
	BANano.Await(SDUI5Device7.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row1"
	SDUI5Column8.AlignSelf = ""
	SDUI5Column8.CenterChildren = True
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.Size = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	SDUI5Device8.Initialize(Me, "SDUI5Device8", "SDUI5Device8")
	SDUI5Device8.ParentID = "SDUI5Column8"
	SDUI5Device8.DeviceType = "google-pixel"
	SDUI5Device8.Text = "Google Pixel"
	BANano.Await(SDUI5Device8.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row1"
	SDUI5Column9.AlignSelf = ""
	SDUI5Column9.CenterChildren = True
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.Size = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5Device9.Initialize(Me, "SDUI5Device9", "SDUI5Device9")
	SDUI5Device9.ParentID = "SDUI5Column9"
	SDUI5Device9.DeviceType = "galaxy-s8"
	SDUI5Device9.Text = "Galaxy S8"
	BANano.Await(SDUI5Device9.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row1"
	SDUI5Column10.AlignSelf = ""
	SDUI5Column10.CenterChildren = True
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.Size = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	SDUI5Device10.Initialize(Me, "SDUI5Device10", "SDUI5Device10")
	SDUI5Device10.ParentID = "SDUI5Column10"
	SDUI5Device10.DeviceType = "apple-watch-s8"
	SDUI5Device10.Text = "Apple Watch S8"
	BANano.Await(SDUI5Device10.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row1"
	SDUI5Column11.AlignSelf = ""
	SDUI5Column11.CenterChildren = True
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	SDUI5Device11.Initialize(Me, "SDUI5Device11", "SDUI5Device11")
	SDUI5Device11.ParentID = "SDUI5Column11"
	SDUI5Device11.DeviceType = "google-pixel"
	SDUI5Device11.Text = "Google Pixel"
	BANano.Await(SDUI5Device11.AddComponent)
	pgIndex.UpdateTitle("SDUI5Devices")
	app.pageresume
End Sub

