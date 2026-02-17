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
	Private SDUI5Row4 As SDUI5Row		'ignore
	Private SDUI5Alert5 As SDUI5Alert		'ignore
	Private SDUI5Alert1 As SDUI5Alert		'ignore
	Private SDUI5Alert9 As SDUI5Alert		'ignore
	Private SDUI5Alert14 As SDUI5Alert		'ignore
	Private SDUI5Alert16 As SDUI5Alert		'ignore
	Private SDUI5Alert13 As SDUI5Alert		'ignore
	Private SDUI5Alert17 As SDUI5Alert		'ignore
	Private SDUI5Alert2 As SDUI5Alert		'ignore
	Private SDUI5Alert3 As SDUI5Alert		'ignore
	Private SDUI5Alert4 As SDUI5Alert		'ignore
	Private SDUI5Alert6 As SDUI5Alert		'ignore
	Private SDUI5Alert7 As SDUI5Alert		'ignore
	Private SDUI5Alert8 As SDUI5Alert		'ignore
	Private SDUI5Alert18 As SDUI5Alert		'ignore
	Private SDUI5Button1 As SDUI5Button		'ignore
	Private SDUI5Alert10 As SDUI5Alert		'ignore
	Private SDUI5Alert11 As SDUI5Alert		'ignore
	Private SDUI5Alert12 As SDUI5Alert		'ignore
	Private SDUI5Alert15 As SDUI5Alert		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	'SDUI5Container1.Gradient = ""
	'SDUI5Container1.GradientActive = False
	SDUI5Container1.Classes = "mx-auto"
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row4.Initialize(Me, "SDUI5Row4", "SDUI5Row4")
	SDUI5Row4.ParentID = "SDUI5Container1"
	SDUI5Row4.GridCols = ""
	SDUI5Row4.GridColsMd = "3"
	SDUI5Row4.GridColsSm = "1"
	BANano.Await(SDUI5Row4.AddComponent)
	'
	SDUI5Alert5.Initialize(Me, "SDUI5Alert5", "SDUI5Alert5")
	SDUI5Alert5.ParentID = "SDUI5Row4"
	SDUI5Alert5.Color = "error"
	SDUI5Alert5.Icon = "./assets/check.svg"
	SDUI5Alert5.Text = "12 unread messages. Tap to see."
	SDUI5Alert5.Title = ""
	SDUI5Alert5.Width = "full"
	BANano.Await(SDUI5Alert5.AddComponent)
	'
	SDUI5Alert1.Initialize(Me, "SDUI5Alert1", "SDUI5Alert1")
	SDUI5Alert1.ParentID = "SDUI5Row4"
	SDUI5Alert1.Icon = "./assets/check.svg"
	SDUI5Alert1.Size = "xl"
	SDUI5Alert1.Text = "12 unread messages. Tap to see."
	SDUI5Alert1.Title = ""
	SDUI5Alert1.Width = "full"
	BANano.Await(SDUI5Alert1.AddComponent)
	'
	SDUI5Alert9.Initialize(Me, "SDUI5Alert9", "SDUI5Alert9")
	SDUI5Alert9.ParentID = "SDUI5Row4"
	SDUI5Alert9.Color = "error"
	SDUI5Alert9.Icon = "./assets/check.svg"
	SDUI5Alert9.Soft = True
	SDUI5Alert9.Text = "12 unread messages. Tap to see."
	SDUI5Alert9.Title = ""
	SDUI5Alert9.Width = "full"
	BANano.Await(SDUI5Alert9.AddComponent)
	'
	SDUI5Alert14.Initialize(Me, "SDUI5Alert14", "SDUI5Alert14")
	SDUI5Alert14.ParentID = "SDUI5Row4"
	SDUI5Alert14.Color = "info"
	SDUI5Alert14.Dash = True
	SDUI5Alert14.Icon = "./assets/check.svg"
	SDUI5Alert14.Text = "12 unread messages. Tap to see."
	SDUI5Alert14.Title = ""
	SDUI5Alert14.Width = "full"
	BANano.Await(SDUI5Alert14.AddComponent)
	'
	SDUI5Alert16.Initialize(Me, "SDUI5Alert16", "SDUI5Alert16")
	SDUI5Alert16.ParentID = "SDUI5Row4"
	SDUI5Alert16.Color = "warning"
	SDUI5Alert16.Dash = True
	SDUI5Alert16.Icon = "./assets/check.svg"
	SDUI5Alert16.Text = "12 unread messages. Tap to see."
	SDUI5Alert16.Title = ""
	SDUI5Alert16.Width = "full"
	BANano.Await(SDUI5Alert16.AddComponent)
	'
	SDUI5Alert13.Initialize(Me, "SDUI5Alert13", "SDUI5Alert13")
	SDUI5Alert13.ParentID = "SDUI5Row4"
	SDUI5Alert13.Color = "error"
	SDUI5Alert13.Icon = "./assets/check.svg"
	SDUI5Alert13.Outline = True
	SDUI5Alert13.Text = "12 unread messages. Tap to see."
	SDUI5Alert13.Title = ""
	SDUI5Alert13.Width = "full"
	BANano.Await(SDUI5Alert13.AddComponent)
	'
	SDUI5Alert17.Initialize(Me, "SDUI5Alert17", "SDUI5Alert17")
	SDUI5Alert17.ParentID = "SDUI5Row4"
	SDUI5Alert17.Color = "error"
	SDUI5Alert17.Dash = True
	SDUI5Alert17.Icon = "./assets/check.svg"
	SDUI5Alert17.Text = "12 unread messages. Tap to see."
	SDUI5Alert17.Title = ""
	SDUI5Alert17.Width = "full"
	BANano.Await(SDUI5Alert17.AddComponent)
	'
	SDUI5Alert2.Initialize(Me, "SDUI5Alert2", "SDUI5Alert2")
	SDUI5Alert2.ParentID = "SDUI5Row4"
	SDUI5Alert2.Color = "info"
	SDUI5Alert2.Icon = "./assets/check.svg"
	SDUI5Alert2.Text = "12 unread messages. Tap to see."
	SDUI5Alert2.Title = ""
	SDUI5Alert2.Width = "full"
	BANano.Await(SDUI5Alert2.AddComponent)
	'
	SDUI5Alert3.Initialize(Me, "SDUI5Alert3", "SDUI5Alert3")
	SDUI5Alert3.ParentID = "SDUI5Row4"
	SDUI5Alert3.Color = "success"
	SDUI5Alert3.Icon = "./assets/check.svg"
	SDUI5Alert3.Text = "12 unread messages. Tap to see."
	SDUI5Alert3.Title = ""
	SDUI5Alert3.Width = "full"
	BANano.Await(SDUI5Alert3.AddComponent)
	'
	SDUI5Alert4.Initialize(Me, "SDUI5Alert4", "SDUI5Alert4")
	SDUI5Alert4.ParentID = "SDUI5Row4"
	SDUI5Alert4.Color = "warning"
	SDUI5Alert4.Icon = "./assets/check.svg"
	SDUI5Alert4.Text = "12 unread messages. Tap to see."
	SDUI5Alert4.Title = ""
	SDUI5Alert4.Width = "full"
	BANano.Await(SDUI5Alert4.AddComponent)
	'
	SDUI5Alert6.Initialize(Me, "SDUI5Alert6", "SDUI5Alert6")
	SDUI5Alert6.ParentID = "SDUI5Row4"
	SDUI5Alert6.Color = "info"
	SDUI5Alert6.Icon = "./assets/check.svg"
	SDUI5Alert6.Soft = True
	SDUI5Alert6.Text = "12 unread messages. Tap to see."
	SDUI5Alert6.Title = ""
	SDUI5Alert6.Width = "full"
	BANano.Await(SDUI5Alert6.AddComponent)
	'
	SDUI5Alert7.Initialize(Me, "SDUI5Alert7", "SDUI5Alert7")
	SDUI5Alert7.ParentID = "SDUI5Row4"
	SDUI5Alert7.Color = "success"
	SDUI5Alert7.Icon = "./assets/check.svg"
	SDUI5Alert7.Soft = True
	SDUI5Alert7.Text = "12 unread messages. Tap to see."
	SDUI5Alert7.Title = ""
	SDUI5Alert7.Width = "full"
	BANano.Await(SDUI5Alert7.AddComponent)
	'
	SDUI5Alert8.Initialize(Me, "SDUI5Alert8", "SDUI5Alert8")
	SDUI5Alert8.ParentID = "SDUI5Row4"
	SDUI5Alert8.Color = "warning"
	SDUI5Alert8.Icon = "./assets/check.svg"
	SDUI5Alert8.Soft = True
	SDUI5Alert8.Text = "12 unread messages. Tap to see."
	SDUI5Alert8.Title = ""
	SDUI5Alert8.Width = "full"
	BANano.Await(SDUI5Alert8.AddComponent)
	'
	SDUI5Alert18.Initialize(Me, "SDUI5Alert18", "SDUI5Alert18")
	SDUI5Alert18.ParentID = "SDUI5Row4"
	SDUI5Alert18.Color = "info"
	SDUI5Alert18.HasActions = True
	SDUI5Alert18.Icon = "./assets/check.svg"
	SDUI5Alert18.Size = "sm"
	SDUI5Alert18.Text = "You have 1 unread message"
	SDUI5Alert18.TextColor = "#FFFFFF"
	SDUI5Alert18.Title = "New Message1"
	SDUI5Alert18.Width = "full"
	BANano.Await(SDUI5Alert18.AddComponent)
	'
	SDUI5Button1.Initialize(Me, "SDUI5Button1", "SDUI5Button1")
	SDUI5Button1.ParentID = "SDUI5Alert18_actions"
	SDUI5Button1.IconSize = "none"
	'SDUI5Button1.Image = ""
	'SDUI5Button1.ImageHeight = "32px"
	'SDUI5Button1.ImageWidth = "32px"
	SDUI5Button1.IndicatorSize = "xs"
	SDUI5Button1.Size = "sm"
	SDUI5Button1.Text = "See"
	BANano.Await(SDUI5Button1.AddComponent)
	'
	SDUI5Alert10.Initialize(Me, "SDUI5Alert10", "SDUI5Alert10")
	SDUI5Alert10.ParentID = "SDUI5Row4"
	SDUI5Alert10.Color = "info"
	SDUI5Alert10.Icon = "./assets/check.svg"
	SDUI5Alert10.Outline = True
	SDUI5Alert10.Text = "12 unread messages. Tap to see."
	SDUI5Alert10.Title = ""
	SDUI5Alert10.Width = "full"
	BANano.Await(SDUI5Alert10.AddComponent)
	'
	SDUI5Alert11.Initialize(Me, "SDUI5Alert11", "SDUI5Alert11")
	SDUI5Alert11.ParentID = "SDUI5Row4"
	SDUI5Alert11.Color = "success"
	SDUI5Alert11.Icon = "./assets/check.svg"
	SDUI5Alert11.Outline = True
	SDUI5Alert11.Text = "12 unread messages. Tap to see."
	SDUI5Alert11.Title = ""
	SDUI5Alert11.Width = "full"
	BANano.Await(SDUI5Alert11.AddComponent)
	'
	SDUI5Alert12.Initialize(Me, "SDUI5Alert12", "SDUI5Alert12")
	SDUI5Alert12.ParentID = "SDUI5Row4"
	SDUI5Alert12.Color = "warning"
	SDUI5Alert12.Icon = "./assets/check.svg"
	SDUI5Alert12.Outline = True
	SDUI5Alert12.Text = "12 unread messages. Tap to see."
	SDUI5Alert12.Title = ""
	SDUI5Alert12.Width = "full"
	BANano.Await(SDUI5Alert12.AddComponent)
	'
	SDUI5Alert15.Initialize(Me, "SDUI5Alert15", "SDUI5Alert15")
	SDUI5Alert15.ParentID = "SDUI5Row4"
	SDUI5Alert15.Color = "success"
	SDUI5Alert15.Dash = True
	SDUI5Alert15.Icon = "./assets/check.svg"
	SDUI5Alert15.Text = "12 unread messages. Tap to see."
	SDUI5Alert15.Title = ""
	SDUI5Alert15.Width = "full"
	BANano.Await(SDUI5Alert15.AddComponent)
	pgIndex.UpdateTitle("SDUI5Alert")
End Sub

