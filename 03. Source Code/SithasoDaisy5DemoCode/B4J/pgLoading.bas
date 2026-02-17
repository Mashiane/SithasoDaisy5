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
	Private SDUI5Loading1 As SDUI5Loading		'ignore
	Private SDUI5Loading2 As SDUI5Loading		'ignore
	Private SDUI5Loading3 As SDUI5Loading		'ignore
	Private SDUI5Loading4 As SDUI5Loading		'ignore
	Private SDUI5Loading5 As SDUI5Loading		'ignore
	Private SDUI5Loading6 As SDUI5Loading		'ignore
	Private SDUI5Loading7 As SDUI5Loading		'ignore
	Private SDUI5Loading8 As SDUI5Loading		'ignore
	Private SDUI5Loading9 As SDUI5Loading		'ignore
	Private SDUI5Loading10 As SDUI5Loading		'ignore
	Private SDUI5Loading11 As SDUI5Loading		'ignore
	Private SDUI5Loading12 As SDUI5Loading		'ignore
	Private SDUI5Loading13 As SDUI5Loading		'ignore
	Private SDUI5Loading14 As SDUI5Loading		'ignore
	Private SDUI5Loading15 As SDUI5Loading		'ignore
	Private SDUI5Loading16 As SDUI5Loading		'ignore
	Private SDUI5Loading17 As SDUI5Loading		'ignore
	Private SDUI5Loading18 As SDUI5Loading		'ignore
	Private SDUI5Loading19 As SDUI5Loading		'ignore
	Private SDUI5Loading20 As SDUI5Loading		'ignore
	Private SDUI5Loading21 As SDUI5Loading		'ignore
	Private SDUI5Loading22 As SDUI5Loading		'ignore
	Private SDUI5Loading23 As SDUI5Loading		'ignore
	Private SDUI5Loading24 As SDUI5Loading		'ignore
	Private SDUI5Loading25 As SDUI5Loading		'ignore
	Private SDUI5Loading26 As SDUI5Loading		'ignore
	Private SDUI5Loading27 As SDUI5Loading		'ignore
	Private SDUI5Loading28 As SDUI5Loading		'ignore
	Private SDUI5Loading29 As SDUI5Loading		'ignore
	Private SDUI5Loading30 As SDUI5Loading		'ignore
	Private SDUI5Loading31 As SDUI5Loading		'ignore
	Private SDUI5Loading32 As SDUI5Loading		'ignore
	Private SDUI5Loading33 As SDUI5Loading		'ignore
	Private SDUI5Loading34 As SDUI5Loading		'ignore
	Private SDUI5Loading35 As SDUI5Loading		'ignore
	Private SDUI5Loading36 As SDUI5Loading		'ignore
	Private SDUI5Loading37 As SDUI5Loading		'ignore
	Private SDUI5Loading38 As SDUI5Loading		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.GridCols = "6"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Loading1.Initialize(Me, "SDUI5Loading1", "SDUI5Loading1")
	SDUI5Loading1.ParentID = "SDUI5Row1"
	SDUI5Loading1.Size = "xs"
	BANano.Await(SDUI5Loading1.AddComponent)
	'
	SDUI5Loading2.Initialize(Me, "SDUI5Loading2", "SDUI5Loading2")
	SDUI5Loading2.ParentID = "SDUI5Row1"
	SDUI5Loading2.Size = "sm"
	BANano.Await(SDUI5Loading2.AddComponent)
	'
	SDUI5Loading3.Initialize(Me, "SDUI5Loading3", "SDUI5Loading3")
	SDUI5Loading3.ParentID = "SDUI5Row1"
	BANano.Await(SDUI5Loading3.AddComponent)
	'
	SDUI5Loading4.Initialize(Me, "SDUI5Loading4", "SDUI5Loading4")
	SDUI5Loading4.ParentID = "SDUI5Row1"
	SDUI5Loading4.Size = "lg"
	BANano.Await(SDUI5Loading4.AddComponent)
	'
	SDUI5Loading5.Initialize(Me, "SDUI5Loading5", "SDUI5Loading5")
	SDUI5Loading5.ParentID = "SDUI5Row1"
	SDUI5Loading5.Size = "xl"
	BANano.Await(SDUI5Loading5.AddComponent)
	'
	SDUI5Loading6.Initialize(Me, "SDUI5Loading6", "SDUI5Loading6")
	SDUI5Loading6.ParentID = "SDUI5Row1"
	SDUI5Loading6.Size = "xs"
	SDUI5Loading6.TypeOf = "dots"
	BANano.Await(SDUI5Loading6.AddComponent)
	'
	SDUI5Loading7.Initialize(Me, "SDUI5Loading7", "SDUI5Loading7")
	SDUI5Loading7.ParentID = "SDUI5Row1"
	SDUI5Loading7.Size = "sm"
	SDUI5Loading7.TypeOf = "dots"
	BANano.Await(SDUI5Loading7.AddComponent)
	'
	SDUI5Loading8.Initialize(Me, "SDUI5Loading8", "SDUI5Loading8")
	SDUI5Loading8.ParentID = "SDUI5Row1"
	SDUI5Loading8.TypeOf = "dots"
	BANano.Await(SDUI5Loading8.AddComponent)
	'
	SDUI5Loading9.Initialize(Me, "SDUI5Loading9", "SDUI5Loading9")
	SDUI5Loading9.ParentID = "SDUI5Row1"
	SDUI5Loading9.Size = "lg"
	SDUI5Loading9.TypeOf = "dots"
	BANano.Await(SDUI5Loading9.AddComponent)
	'
	SDUI5Loading10.Initialize(Me, "SDUI5Loading10", "SDUI5Loading10")
	SDUI5Loading10.ParentID = "SDUI5Row1"
	SDUI5Loading10.Size = "xl"
	SDUI5Loading10.TypeOf = "dots"
	BANano.Await(SDUI5Loading10.AddComponent)
	'
	SDUI5Loading11.Initialize(Me, "SDUI5Loading11", "SDUI5Loading11")
	SDUI5Loading11.ParentID = "SDUI5Row1"
	SDUI5Loading11.Size = "xs"
	SDUI5Loading11.TypeOf = "ring"
	BANano.Await(SDUI5Loading11.AddComponent)
	'
	SDUI5Loading12.Initialize(Me, "SDUI5Loading12", "SDUI5Loading12")
	SDUI5Loading12.ParentID = "SDUI5Row1"
	SDUI5Loading12.Size = "sm"
	SDUI5Loading12.TypeOf = "ring"
	BANano.Await(SDUI5Loading12.AddComponent)
	'
	SDUI5Loading13.Initialize(Me, "SDUI5Loading13", "SDUI5Loading13")
	SDUI5Loading13.ParentID = "SDUI5Row1"
	SDUI5Loading13.TypeOf = "ring"
	BANano.Await(SDUI5Loading13.AddComponent)
	'
	SDUI5Loading14.Initialize(Me, "SDUI5Loading14", "SDUI5Loading14")
	SDUI5Loading14.ParentID = "SDUI5Row1"
	SDUI5Loading14.Size = "lg"
	SDUI5Loading14.TypeOf = "ring"
	BANano.Await(SDUI5Loading14.AddComponent)
	'
	SDUI5Loading15.Initialize(Me, "SDUI5Loading15", "SDUI5Loading15")
	SDUI5Loading15.ParentID = "SDUI5Row1"
	SDUI5Loading15.Size = "xl"
	SDUI5Loading15.TypeOf = "ring"
	BANano.Await(SDUI5Loading15.AddComponent)
	'
	SDUI5Loading16.Initialize(Me, "SDUI5Loading16", "SDUI5Loading16")
	SDUI5Loading16.ParentID = "SDUI5Row1"
	SDUI5Loading16.Size = "xs"
	SDUI5Loading16.TypeOf = "ball"
	BANano.Await(SDUI5Loading16.AddComponent)
	'
	SDUI5Loading17.Initialize(Me, "SDUI5Loading17", "SDUI5Loading17")
	SDUI5Loading17.ParentID = "SDUI5Row1"
	SDUI5Loading17.Size = "sm"
	SDUI5Loading17.TypeOf = "ball"
	BANano.Await(SDUI5Loading17.AddComponent)
	'
	SDUI5Loading18.Initialize(Me, "SDUI5Loading18", "SDUI5Loading18")
	SDUI5Loading18.ParentID = "SDUI5Row1"
	SDUI5Loading18.TypeOf = "ball"
	BANano.Await(SDUI5Loading18.AddComponent)
	'
	SDUI5Loading19.Initialize(Me, "SDUI5Loading19", "SDUI5Loading19")
	SDUI5Loading19.ParentID = "SDUI5Row1"
	SDUI5Loading19.Size = "lg"
	SDUI5Loading19.TypeOf = "ball"
	BANano.Await(SDUI5Loading19.AddComponent)
	'
	SDUI5Loading20.Initialize(Me, "SDUI5Loading20", "SDUI5Loading20")
	SDUI5Loading20.ParentID = "SDUI5Row1"
	SDUI5Loading20.Size = "xl"
	SDUI5Loading20.TypeOf = "ball"
	BANano.Await(SDUI5Loading20.AddComponent)
	'
	SDUI5Loading21.Initialize(Me, "SDUI5Loading21", "SDUI5Loading21")
	SDUI5Loading21.ParentID = "SDUI5Row1"
	SDUI5Loading21.Size = "xs"
	SDUI5Loading21.TypeOf = "bars"
	BANano.Await(SDUI5Loading21.AddComponent)
	'
	SDUI5Loading22.Initialize(Me, "SDUI5Loading22", "SDUI5Loading22")
	SDUI5Loading22.ParentID = "SDUI5Row1"
	SDUI5Loading22.Size = "sm"
	SDUI5Loading22.TypeOf = "bars"
	BANano.Await(SDUI5Loading22.AddComponent)
	'
	SDUI5Loading23.Initialize(Me, "SDUI5Loading23", "SDUI5Loading23")
	SDUI5Loading23.ParentID = "SDUI5Row1"
	SDUI5Loading23.TypeOf = "bars"
	BANano.Await(SDUI5Loading23.AddComponent)
	'
	SDUI5Loading24.Initialize(Me, "SDUI5Loading24", "SDUI5Loading24")
	SDUI5Loading24.ParentID = "SDUI5Row1"
	SDUI5Loading24.Size = "lg"
	SDUI5Loading24.TypeOf = "bars"
	BANano.Await(SDUI5Loading24.AddComponent)
	'
	SDUI5Loading25.Initialize(Me, "SDUI5Loading25", "SDUI5Loading25")
	SDUI5Loading25.ParentID = "SDUI5Row1"
	SDUI5Loading25.Size = "xl"
	SDUI5Loading25.TypeOf = "bars"
	BANano.Await(SDUI5Loading25.AddComponent)
	'
	SDUI5Loading26.Initialize(Me, "SDUI5Loading26", "SDUI5Loading26")
	SDUI5Loading26.ParentID = "SDUI5Row1"
	SDUI5Loading26.Size = "xs"
	SDUI5Loading26.TypeOf = "infinity"
	BANano.Await(SDUI5Loading26.AddComponent)
	'
	SDUI5Loading27.Initialize(Me, "SDUI5Loading27", "SDUI5Loading27")
	SDUI5Loading27.ParentID = "SDUI5Row1"
	SDUI5Loading27.Size = "sm"
	SDUI5Loading27.TypeOf = "infinity"
	BANano.Await(SDUI5Loading27.AddComponent)
	'
	SDUI5Loading28.Initialize(Me, "SDUI5Loading28", "SDUI5Loading28")
	SDUI5Loading28.ParentID = "SDUI5Row1"
	SDUI5Loading28.TypeOf = "infinity"
	BANano.Await(SDUI5Loading28.AddComponent)
	'
	SDUI5Loading29.Initialize(Me, "SDUI5Loading29", "SDUI5Loading29")
	SDUI5Loading29.ParentID = "SDUI5Row1"
	SDUI5Loading29.Size = "lg"
	SDUI5Loading29.TypeOf = "infinity"
	BANano.Await(SDUI5Loading29.AddComponent)
	'
	SDUI5Loading30.Initialize(Me, "SDUI5Loading30", "SDUI5Loading30")
	SDUI5Loading30.ParentID = "SDUI5Row1"
	SDUI5Loading30.Size = "xl"
	SDUI5Loading30.TypeOf = "infinity"
	BANano.Await(SDUI5Loading30.AddComponent)
	'
	SDUI5Loading31.Initialize(Me, "SDUI5Loading31", "SDUI5Loading31")
	SDUI5Loading31.ParentID = "SDUI5Row1"
	SDUI5Loading31.Color = "accent"
	BANano.Await(SDUI5Loading31.AddComponent)
	'
	SDUI5Loading32.Initialize(Me, "SDUI5Loading32", "SDUI5Loading32")
	SDUI5Loading32.ParentID = "SDUI5Row1"
	SDUI5Loading32.Color = "error"
	BANano.Await(SDUI5Loading32.AddComponent)
	'
	SDUI5Loading33.Initialize(Me, "SDUI5Loading33", "SDUI5Loading33")
	SDUI5Loading33.ParentID = "SDUI5Row1"
	SDUI5Loading33.Color = "info"
	BANano.Await(SDUI5Loading33.AddComponent)
	'
	SDUI5Loading34.Initialize(Me, "SDUI5Loading34", "SDUI5Loading34")
	SDUI5Loading34.ParentID = "SDUI5Row1"
	SDUI5Loading34.Color = "neutral"
	BANano.Await(SDUI5Loading34.AddComponent)
	'
	SDUI5Loading35.Initialize(Me, "SDUI5Loading35", "SDUI5Loading35")
	SDUI5Loading35.ParentID = "SDUI5Row1"
	SDUI5Loading35.Color = "primary"
	BANano.Await(SDUI5Loading35.AddComponent)
	'
	SDUI5Loading36.Initialize(Me, "SDUI5Loading36", "SDUI5Loading36")
	SDUI5Loading36.ParentID = "SDUI5Row1"
	SDUI5Loading36.Color = "secondary"
	BANano.Await(SDUI5Loading36.AddComponent)
	'
	SDUI5Loading37.Initialize(Me, "SDUI5Loading37", "SDUI5Loading37")
	SDUI5Loading37.ParentID = "SDUI5Row1"
	SDUI5Loading37.Color = "success"
	BANano.Await(SDUI5Loading37.AddComponent)
	'
	SDUI5Loading38.Initialize(Me, "SDUI5Loading38", "SDUI5Loading38")
	SDUI5Loading38.ParentID = "SDUI5Row1"
	SDUI5Loading38.Color = "warning"
	BANano.Await(SDUI5Loading38.AddComponent)
	pgIndex.UpdateTitle("SDUI5Loading")
End Sub

