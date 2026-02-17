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
	Private SDUI5Badge1 As SDUI5Badge		'ignore
	Private SDUI5Badge2 As SDUI5Badge		'ignore
	Private SDUI5Badge3 As SDUI5Badge		'ignore
	Private SDUI5Badge4 As SDUI5Badge		'ignore
	Private SDUI5Badge5 As SDUI5Badge		'ignore
	Private SDUI5Badge6 As SDUI5Badge		'ignore
	Private SDUI5Badge7 As SDUI5Badge		'ignore
	Private SDUI5Badge8 As SDUI5Badge		'ignore
	Private SDUI5Badge9 As SDUI5Badge		'ignore
	Private SDUI5Badge10 As SDUI5Badge		'ignore
	Private SDUI5Badge11 As SDUI5Badge		'ignore
	Private SDUI5Badge12 As SDUI5Badge		'ignore
	Private SDUI5Badge13 As SDUI5Badge		'ignore
	Private SDUI5Badge14 As SDUI5Badge		'ignore
	Private SDUI5Badge15 As SDUI5Badge		'ignore
	Private SDUI5Badge16 As SDUI5Badge		'ignore
	Private SDUI5Badge17 As SDUI5Badge		'ignore
	Private SDUI5Badge18 As SDUI5Badge		'ignore
	Private SDUI5Badge19 As SDUI5Badge		'ignore
	Private SDUI5Badge20 As SDUI5Badge		'ignore
	Private SDUI5Badge21 As SDUI5Badge		'ignore
	Private SDUI5Badge22 As SDUI5Badge		'ignore
	Private SDUI5Badge23 As SDUI5Badge		'ignore
	Private SDUI5Badge24 As SDUI5Badge		'ignore
	Private SDUI5Badge25 As SDUI5Badge		'ignore
	Private SDUI5Badge26 As SDUI5Badge		'ignore
	Private SDUI5Badge27 As SDUI5Badge		'ignore
	Private SDUI5Badge28 As SDUI5Badge		'ignore
	Private SDUI5Badge29 As SDUI5Badge		'ignore
	Private SDUI5Badge30 As SDUI5Badge		'ignore
	Private SDUI5Badge31 As SDUI5Badge		'ignore
	Private SDUI5Badge32 As SDUI5Badge		'ignore
	Private SDUI5Badge33 As SDUI5Badge		'ignore
	Private SDUI5Badge34 As SDUI5Badge		'ignore
	Private SDUI5Badge35 As SDUI5Badge		'ignore
	Private SDUI5Badge36 As SDUI5Badge		'ignore
	Private SDUI5Badge37 As SDUI5Badge		'ignore
	Private SDUI5Badge38 As SDUI5Badge		'ignore
	Private SDUI5Badge39 As SDUI5Badge		'ignore
	Private SDUI5Badge40 As SDUI5Badge		'ignore
	Private SDUI5Badge41 As SDUI5Badge		'ignore
	Private SDUI5Badge42 As SDUI5Badge		'ignore
	Private SDUI5Badge43 As SDUI5Badge		'ignore
	Private SDUI5Badge44 As SDUI5Badge		'ignore
	Private SDUI5Badge45 As SDUI5Badge		'ignore
	Private SDUI5Badge46 As SDUI5Badge		'ignore
	Private SDUI5Badge47 As SDUI5Badge		'ignore
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
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.GridCols = "3"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Badge1.Initialize(Me, "SDUI5Badge1", "SDUI5Badge1")
	SDUI5Badge1.ParentID = "SDUI5Row1"
	SDUI5Badge1.LeftIconSize = ""
	SDUI5Badge1.RightIconSize = ""
	SDUI5Badge1.Size = ""
	SDUI5Badge1.TextSize = ""
	BANano.Await(SDUI5Badge1.AddComponent)
	'
	SDUI5Badge2.Initialize(Me, "SDUI5Badge2", "SDUI5Badge2")
	SDUI5Badge2.ParentID = "SDUI5Row1"
	SDUI5Badge2.LeftIconSize = ""
	SDUI5Badge2.RightIconSize = ""
	SDUI5Badge2.Size = "xs"
	SDUI5Badge2.Text = "XSmall"
	SDUI5Badge2.TextSize = ""
	BANano.Await(SDUI5Badge2.AddComponent)
	'
	SDUI5Badge3.Initialize(Me, "SDUI5Badge3", "SDUI5Badge3")
	SDUI5Badge3.ParentID = "SDUI5Row1"
	SDUI5Badge3.LeftIconSize = ""
	SDUI5Badge3.RightIconSize = ""
	SDUI5Badge3.Size = "sm"
	SDUI5Badge3.Text = "Small"
	SDUI5Badge3.TextSize = ""
	BANano.Await(SDUI5Badge3.AddComponent)
	'
	SDUI5Badge4.Initialize(Me, "SDUI5Badge4", "SDUI5Badge4")
	SDUI5Badge4.ParentID = "SDUI5Row1"
	SDUI5Badge4.LeftIconSize = ""
	SDUI5Badge4.RightIconSize = ""
	SDUI5Badge4.Size = "lg"
	SDUI5Badge4.Text = "Large"
	SDUI5Badge4.TextSize = ""
	BANano.Await(SDUI5Badge4.AddComponent)
	'
	SDUI5Badge5.Initialize(Me, "SDUI5Badge5", "SDUI5Badge5")
	SDUI5Badge5.ParentID = "SDUI5Row1"
	SDUI5Badge5.LeftIconSize = ""
	SDUI5Badge5.RightIconSize = ""
	SDUI5Badge5.Size = "xl"
	SDUI5Badge5.Text = "XLarge"
	SDUI5Badge5.TextSize = ""
	BANano.Await(SDUI5Badge5.AddComponent)
	'
	SDUI5Badge6.Initialize(Me, "SDUI5Badge6", "SDUI5Badge6")
	SDUI5Badge6.ParentID = "SDUI5Row1"
	SDUI5Badge6.LeftIconSize = ""
	SDUI5Badge6.RightIconSize = ""
	SDUI5Badge6.Size = ""
	SDUI5Badge6.Text = "Primary"
	SDUI5Badge6.TextSize = ""
	BANano.Await(SDUI5Badge6.AddComponent)
	'
	SDUI5Badge7.Initialize(Me, "SDUI5Badge7", "SDUI5Badge7")
	SDUI5Badge7.ParentID = "SDUI5Row1"
	SDUI5Badge7.Color = "accent"
	SDUI5Badge7.LeftIconSize = ""
	SDUI5Badge7.RightIconSize = ""
	SDUI5Badge7.Size = ""
	SDUI5Badge7.Text = "Accent"
	SDUI5Badge7.TextSize = ""
	BANano.Await(SDUI5Badge7.AddComponent)
	'
	SDUI5Badge8.Initialize(Me, "SDUI5Badge8", "SDUI5Badge8")
	SDUI5Badge8.ParentID = "SDUI5Row1"
	SDUI5Badge8.Color = "error"
	SDUI5Badge8.LeftIconSize = ""
	SDUI5Badge8.RightIconSize = ""
	SDUI5Badge8.Size = ""
	SDUI5Badge8.Text = "Error"
	SDUI5Badge8.TextSize = ""
	BANano.Await(SDUI5Badge8.AddComponent)
	'
	SDUI5Badge9.Initialize(Me, "SDUI5Badge9", "SDUI5Badge9")
	SDUI5Badge9.ParentID = "SDUI5Row1"
	SDUI5Badge9.Color = "info"
	SDUI5Badge9.LeftIconSize = ""
	SDUI5Badge9.RightIconSize = ""
	SDUI5Badge9.Size = ""
	SDUI5Badge9.Text = "Info"
	SDUI5Badge9.TextSize = ""
	BANano.Await(SDUI5Badge9.AddComponent)
	'
	SDUI5Badge10.Initialize(Me, "SDUI5Badge10", "SDUI5Badge10")
	SDUI5Badge10.ParentID = "SDUI5Row1"
	SDUI5Badge10.Color = "neutral"
	SDUI5Badge10.LeftIconSize = ""
	SDUI5Badge10.RightIconSize = ""
	SDUI5Badge10.Size = ""
	SDUI5Badge10.Text = "Neutral"
	SDUI5Badge10.TextSize = ""
	BANano.Await(SDUI5Badge10.AddComponent)
	'
	SDUI5Badge11.Initialize(Me, "SDUI5Badge11", "SDUI5Badge11")
	SDUI5Badge11.ParentID = "SDUI5Row1"
	SDUI5Badge11.Color = "secondary"
	SDUI5Badge11.LeftIconSize = ""
	SDUI5Badge11.RightIconSize = ""
	SDUI5Badge11.Size = ""
	SDUI5Badge11.Text = "Secondary"
	SDUI5Badge11.TextSize = ""
	BANano.Await(SDUI5Badge11.AddComponent)
	'
	SDUI5Badge12.Initialize(Me, "SDUI5Badge12", "SDUI5Badge12")
	SDUI5Badge12.ParentID = "SDUI5Row1"
	SDUI5Badge12.Color = "success"
	SDUI5Badge12.LeftIconSize = ""
	SDUI5Badge12.RightIconSize = ""
	SDUI5Badge12.Size = ""
	SDUI5Badge12.Text = "Success"
	SDUI5Badge12.TextSize = ""
	BANano.Await(SDUI5Badge12.AddComponent)
	'
	SDUI5Badge13.Initialize(Me, "SDUI5Badge13", "SDUI5Badge13")
	SDUI5Badge13.ParentID = "SDUI5Row1"
	SDUI5Badge13.Color = "warning"
	SDUI5Badge13.LeftIconSize = ""
	SDUI5Badge13.RightIconSize = ""
	SDUI5Badge13.Size = ""
	SDUI5Badge13.Text = "Warning"
	SDUI5Badge13.TextSize = ""
	BANano.Await(SDUI5Badge13.AddComponent)
	'
	SDUI5Badge14.Initialize(Me, "SDUI5Badge14", "SDUI5Badge14")
	SDUI5Badge14.ParentID = "SDUI5Row1"
	SDUI5Badge14.Dash = True
	SDUI5Badge14.LeftIconSize = ""
	SDUI5Badge14.RightIconSize = ""
	SDUI5Badge14.Size = ""
	SDUI5Badge14.Text = "Primary"
	SDUI5Badge14.TextSize = ""
	BANano.Await(SDUI5Badge14.AddComponent)
	'
	SDUI5Badge15.Initialize(Me, "SDUI5Badge15", "SDUI5Badge15")
	SDUI5Badge15.ParentID = "SDUI5Row1"
	SDUI5Badge15.Color = "accent"
	SDUI5Badge15.Dash = True
	SDUI5Badge15.LeftIconSize = ""
	SDUI5Badge15.RightIconSize = ""
	SDUI5Badge15.Size = ""
	SDUI5Badge15.Text = "Accent"
	SDUI5Badge15.TextSize = ""
	BANano.Await(SDUI5Badge15.AddComponent)
	'
	SDUI5Badge16.Initialize(Me, "SDUI5Badge16", "SDUI5Badge16")
	SDUI5Badge16.ParentID = "SDUI5Row1"
	SDUI5Badge16.Color = "error"
	SDUI5Badge16.Dash = True
	SDUI5Badge16.LeftIconSize = ""
	SDUI5Badge16.RightIconSize = ""
	SDUI5Badge16.Size = ""
	SDUI5Badge16.Text = "Error"
	SDUI5Badge16.TextSize = ""
	BANano.Await(SDUI5Badge16.AddComponent)
	'
	SDUI5Badge17.Initialize(Me, "SDUI5Badge17", "SDUI5Badge17")
	SDUI5Badge17.ParentID = "SDUI5Row1"
	SDUI5Badge17.Color = "info"
	SDUI5Badge17.Dash = True
	SDUI5Badge17.LeftIconSize = ""
	SDUI5Badge17.RightIconSize = ""
	SDUI5Badge17.Size = ""
	SDUI5Badge17.Text = "Info"
	SDUI5Badge17.TextSize = ""
	BANano.Await(SDUI5Badge17.AddComponent)
	'
	SDUI5Badge18.Initialize(Me, "SDUI5Badge18", "SDUI5Badge18")
	SDUI5Badge18.ParentID = "SDUI5Row1"
	SDUI5Badge18.Color = "neutral"
	SDUI5Badge18.Dash = True
	SDUI5Badge18.LeftIconSize = ""
	SDUI5Badge18.RightIconSize = ""
	SDUI5Badge18.Size = ""
	SDUI5Badge18.Text = "Neutral"
	SDUI5Badge18.TextSize = ""
	BANano.Await(SDUI5Badge18.AddComponent)
	'
	SDUI5Badge19.Initialize(Me, "SDUI5Badge19", "SDUI5Badge19")
	SDUI5Badge19.ParentID = "SDUI5Row1"
	SDUI5Badge19.Color = "secondary"
	SDUI5Badge19.Dash = True
	SDUI5Badge19.LeftIconSize = ""
	SDUI5Badge19.RightIconSize = ""
	SDUI5Badge19.Size = ""
	SDUI5Badge19.Text = "Secondary"
	SDUI5Badge19.TextSize = ""
	BANano.Await(SDUI5Badge19.AddComponent)
	'
	SDUI5Badge20.Initialize(Me, "SDUI5Badge20", "SDUI5Badge20")
	SDUI5Badge20.ParentID = "SDUI5Row1"
	SDUI5Badge20.Color = "success"
	SDUI5Badge20.Dash = True
	SDUI5Badge20.LeftIconSize = ""
	SDUI5Badge20.RightIconSize = ""
	SDUI5Badge20.Size = ""
	SDUI5Badge20.Text = "Success"
	SDUI5Badge20.TextSize = ""
	BANano.Await(SDUI5Badge20.AddComponent)
	'
	SDUI5Badge21.Initialize(Me, "SDUI5Badge21", "SDUI5Badge21")
	SDUI5Badge21.ParentID = "SDUI5Row1"
	SDUI5Badge21.Color = "warning"
	SDUI5Badge21.Dash = True
	SDUI5Badge21.LeftIconSize = ""
	SDUI5Badge21.RightIconSize = ""
	SDUI5Badge21.Size = ""
	SDUI5Badge21.Text = "Warning"
	SDUI5Badge21.TextSize = ""
	BANano.Await(SDUI5Badge21.AddComponent)
	'
	SDUI5Badge22.Initialize(Me, "SDUI5Badge22", "SDUI5Badge22")
	SDUI5Badge22.ParentID = "SDUI5Row1"
	SDUI5Badge22.LeftIconSize = ""
	SDUI5Badge22.RightIconSize = ""
	SDUI5Badge22.Size = ""
	SDUI5Badge22.Soft = True
	SDUI5Badge22.Text = "Primary"
	SDUI5Badge22.TextSize = ""
	BANano.Await(SDUI5Badge22.AddComponent)
	'
	SDUI5Badge23.Initialize(Me, "SDUI5Badge23", "SDUI5Badge23")
	SDUI5Badge23.ParentID = "SDUI5Row1"
	SDUI5Badge23.Color = "accent"
	SDUI5Badge23.LeftIconSize = ""
	SDUI5Badge23.RightIconSize = ""
	SDUI5Badge23.Size = ""
	SDUI5Badge23.Soft = True
	SDUI5Badge23.Text = "Accent"
	SDUI5Badge23.TextSize = ""
	BANano.Await(SDUI5Badge23.AddComponent)
	'
	SDUI5Badge24.Initialize(Me, "SDUI5Badge24", "SDUI5Badge24")
	SDUI5Badge24.ParentID = "SDUI5Row1"
	SDUI5Badge24.Color = "error"
	SDUI5Badge24.LeftIconSize = ""
	SDUI5Badge24.RightIconSize = ""
	SDUI5Badge24.Size = ""
	SDUI5Badge24.Soft = True
	SDUI5Badge24.Text = "Error"
	SDUI5Badge24.TextSize = ""
	BANano.Await(SDUI5Badge24.AddComponent)
	'
	SDUI5Badge25.Initialize(Me, "SDUI5Badge25", "SDUI5Badge25")
	SDUI5Badge25.ParentID = "SDUI5Row1"
	SDUI5Badge25.Color = "info"
	SDUI5Badge25.LeftIconSize = ""
	SDUI5Badge25.RightIconSize = ""
	SDUI5Badge25.Size = ""
	SDUI5Badge25.Soft = True
	SDUI5Badge25.Text = "Info"
	SDUI5Badge25.TextSize = ""
	BANano.Await(SDUI5Badge25.AddComponent)
	'
	SDUI5Badge26.Initialize(Me, "SDUI5Badge26", "SDUI5Badge26")
	SDUI5Badge26.ParentID = "SDUI5Row1"
	SDUI5Badge26.Color = "neutral"
	SDUI5Badge26.LeftIconSize = ""
	SDUI5Badge26.RightIconSize = ""
	SDUI5Badge26.Size = ""
	SDUI5Badge26.Soft = True
	SDUI5Badge26.Text = "Neutral"
	SDUI5Badge26.TextSize = ""
	BANano.Await(SDUI5Badge26.AddComponent)
	'
	SDUI5Badge27.Initialize(Me, "SDUI5Badge27", "SDUI5Badge27")
	SDUI5Badge27.ParentID = "SDUI5Row1"
	SDUI5Badge27.Color = "secondary"
	SDUI5Badge27.LeftIconSize = ""
	SDUI5Badge27.RightIconSize = ""
	SDUI5Badge27.Size = ""
	SDUI5Badge27.Text = "Secondary"
	SDUI5Badge27.TextSize = ""
	BANano.Await(SDUI5Badge27.AddComponent)
	'
	SDUI5Badge28.Initialize(Me, "SDUI5Badge28", "SDUI5Badge28")
	SDUI5Badge28.ParentID = "SDUI5Row1"
	SDUI5Badge28.Color = "success"
	SDUI5Badge28.LeftIconSize = ""
	SDUI5Badge28.RightIconSize = ""
	SDUI5Badge28.Size = ""
	SDUI5Badge28.Text = "Success"
	SDUI5Badge28.TextSize = ""
	BANano.Await(SDUI5Badge28.AddComponent)
	'
	SDUI5Badge29.Initialize(Me, "SDUI5Badge29", "SDUI5Badge29")
	SDUI5Badge29.ParentID = "SDUI5Row1"
	SDUI5Badge29.Color = "warning"
	SDUI5Badge29.LeftIconSize = ""
	SDUI5Badge29.RightIconSize = ""
	SDUI5Badge29.Size = ""
	SDUI5Badge29.Soft = True
	SDUI5Badge29.Text = "Warning"
	SDUI5Badge29.TextSize = ""
	BANano.Await(SDUI5Badge29.AddComponent)
	'
	SDUI5Badge30.Initialize(Me, "SDUI5Badge30", "SDUI5Badge30")
	SDUI5Badge30.ParentID = "SDUI5Row1"
	SDUI5Badge30.LeftIconSize = ""
	SDUI5Badge30.Outline = True
	SDUI5Badge30.RightIconSize = ""
	SDUI5Badge30.Size = ""
	SDUI5Badge30.Text = "Primary"
	SDUI5Badge30.TextSize = ""
	BANano.Await(SDUI5Badge30.AddComponent)
	'
	SDUI5Badge31.Initialize(Me, "SDUI5Badge31", "SDUI5Badge31")
	SDUI5Badge31.ParentID = "SDUI5Row1"
	SDUI5Badge31.Color = "accent"
	SDUI5Badge31.LeftIconSize = ""
	SDUI5Badge31.Outline = True
	SDUI5Badge31.RightIconSize = ""
	SDUI5Badge31.Size = ""
	SDUI5Badge31.Text = "Accent"
	SDUI5Badge31.TextSize = ""
	BANano.Await(SDUI5Badge31.AddComponent)
	'
	SDUI5Badge32.Initialize(Me, "SDUI5Badge32", "SDUI5Badge32")
	SDUI5Badge32.ParentID = "SDUI5Row1"
	SDUI5Badge32.Color = "error"
	SDUI5Badge32.LeftIconSize = ""
	SDUI5Badge32.Outline = True
	SDUI5Badge32.RightIconSize = ""
	SDUI5Badge32.Size = ""
	SDUI5Badge32.Text = "Error"
	SDUI5Badge32.TextSize = ""
	BANano.Await(SDUI5Badge32.AddComponent)
	'
	SDUI5Badge33.Initialize(Me, "SDUI5Badge33", "SDUI5Badge33")
	SDUI5Badge33.ParentID = "SDUI5Row1"
	SDUI5Badge33.Color = "info"
	SDUI5Badge33.LeftIconSize = ""
	SDUI5Badge33.Outline = True
	SDUI5Badge33.RightIconSize = ""
	SDUI5Badge33.Size = ""
	SDUI5Badge33.Text = "Info"
	SDUI5Badge33.TextSize = ""
	BANano.Await(SDUI5Badge33.AddComponent)
	'
	SDUI5Badge34.Initialize(Me, "SDUI5Badge34", "SDUI5Badge34")
	SDUI5Badge34.ParentID = "SDUI5Row1"
	SDUI5Badge34.Color = "neutral"
	SDUI5Badge34.LeftIconSize = ""
	SDUI5Badge34.Outline = True
	SDUI5Badge34.RightIconSize = ""
	SDUI5Badge34.Size = ""
	SDUI5Badge34.Text = "Neutral"
	SDUI5Badge34.TextSize = ""
	BANano.Await(SDUI5Badge34.AddComponent)
	'
	SDUI5Badge35.Initialize(Me, "SDUI5Badge35", "SDUI5Badge35")
	SDUI5Badge35.ParentID = "SDUI5Row1"
	SDUI5Badge35.Color = "secondary"
	SDUI5Badge35.LeftIconSize = ""
	SDUI5Badge35.Outline = True
	SDUI5Badge35.RightIconSize = ""
	SDUI5Badge35.Size = ""
	SDUI5Badge35.Text = "Secondary"
	SDUI5Badge35.TextSize = ""
	BANano.Await(SDUI5Badge35.AddComponent)
	'
	SDUI5Badge36.Initialize(Me, "SDUI5Badge36", "SDUI5Badge36")
	SDUI5Badge36.ParentID = "SDUI5Row1"
	SDUI5Badge36.Color = "success"
	SDUI5Badge36.LeftIconSize = ""
	SDUI5Badge36.Outline = True
	SDUI5Badge36.RightIconSize = ""
	SDUI5Badge36.Size = ""
	SDUI5Badge36.Text = "Success"
	SDUI5Badge36.TextSize = ""
	BANano.Await(SDUI5Badge36.AddComponent)
	'
	SDUI5Badge37.Initialize(Me, "SDUI5Badge37", "SDUI5Badge37")
	SDUI5Badge37.ParentID = "SDUI5Row1"
	SDUI5Badge37.Color = "warning"
	SDUI5Badge37.LeftIconSize = ""
	SDUI5Badge37.Outline = True
	SDUI5Badge37.RightIconSize = ""
	SDUI5Badge37.Size = ""
	SDUI5Badge37.Text = "Warning"
	SDUI5Badge37.TextSize = ""
	BANano.Await(SDUI5Badge37.AddComponent)
	'
	SDUI5Badge38.Initialize(Me, "SDUI5Badge38", "SDUI5Badge38")
	SDUI5Badge38.ParentID = "SDUI5Row1"
	SDUI5Badge38.Color = "none"
	SDUI5Badge38.Ghost = True
	SDUI5Badge38.LeftIconSize = ""
	SDUI5Badge38.RightIconSize = ""
	SDUI5Badge38.Size = ""
	SDUI5Badge38.Text = "Ghost"
	SDUI5Badge38.TextSize = ""
	BANano.Await(SDUI5Badge38.AddComponent)
	'
	SDUI5Badge39.Initialize(Me, "SDUI5Badge39", "SDUI5Badge39")
	SDUI5Badge39.ParentID = "SDUI5Row1"
	SDUI5Badge39.LeftIconSize = ""
	SDUI5Badge39.RightIconSize = ""
	SDUI5Badge39.Size = "xs"
	SDUI5Badge39.Text = ""
	SDUI5Badge39.TextSize = ""
	BANano.Await(SDUI5Badge39.AddComponent)
	'
	SDUI5Badge40.Initialize(Me, "SDUI5Badge40", "SDUI5Badge40")
	SDUI5Badge40.ParentID = "SDUI5Row1"
	SDUI5Badge40.LeftIconSize = ""
	SDUI5Badge40.RightIconSize = ""
	SDUI5Badge40.Size = "sm"
	SDUI5Badge40.Text = ""
	SDUI5Badge40.TextSize = ""
	BANano.Await(SDUI5Badge40.AddComponent)
	'
	SDUI5Badge41.Initialize(Me, "SDUI5Badge41", "SDUI5Badge41")
	SDUI5Badge41.ParentID = "SDUI5Row1"
	SDUI5Badge41.LeftIconSize = ""
	SDUI5Badge41.RightIconSize = ""
	SDUI5Badge41.Size = "lg"
	SDUI5Badge41.Text = ""
	SDUI5Badge41.TextSize = ""
	BANano.Await(SDUI5Badge41.AddComponent)
	'
	SDUI5Badge42.Initialize(Me, "SDUI5Badge42", "SDUI5Badge42")
	SDUI5Badge42.ParentID = "SDUI5Row1"
	SDUI5Badge42.LeftIconSize = ""
	SDUI5Badge42.RightIconSize = ""
	SDUI5Badge42.Size = "xl"
	SDUI5Badge42.Text = ""
	SDUI5Badge42.TextSize = ""
	BANano.Await(SDUI5Badge42.AddComponent)
	'
	SDUI5Badge43.Initialize(Me, "SDUI5Badge43", "SDUI5Badge43")
	SDUI5Badge43.ParentID = "SDUI5Row1"
	SDUI5Badge43.LeftIconSize = ""
	SDUI5Badge43.RightIconSize = ""
	SDUI5Badge43.Size = "md"
	SDUI5Badge43.Text = ""
	SDUI5Badge43.TextSize = ""
	BANano.Await(SDUI5Badge43.AddComponent)
	'
	SDUI5Badge44.Initialize(Me, "SDUI5Badge44", "SDUI5Badge44")
	SDUI5Badge44.ParentID = "SDUI5Row1"
	SDUI5Badge44.LeftIconSize = ""
	SDUI5Badge44.LeftImage = "./assets/check.svg"
	SDUI5Badge44.RightIconSize = ""
	SDUI5Badge44.Size = ""
	SDUI5Badge44.Text = "Primary"
	SDUI5Badge44.TextSize = ""
	BANano.Await(SDUI5Badge44.AddComponent)
	'
	SDUI5Badge45.Initialize(Me, "SDUI5Badge45", "SDUI5Badge45")
	SDUI5Badge45.ParentID = "SDUI5Row1"
	SDUI5Badge45.LeftIconSize = ""
	SDUI5Badge45.LeftImage = "./assets/check.svg"
	SDUI5Badge45.RightIconSize = ""
	SDUI5Badge45.RightImage = "./assets/close.svg"
	SDUI5Badge45.Shadow = "lg"
	SDUI5Badge45.Size = ""
	SDUI5Badge45.Text = "Primary"
	SDUI5Badge45.TextSize = ""
	BANano.Await(SDUI5Badge45.AddComponent)
	'
	SDUI5Badge46.Initialize(Me, "SDUI5Badge46", "SDUI5Badge46")
	SDUI5Badge46.ParentID = "SDUI5Row1"
	SDUI5Badge46.LeftIconSize = ""
	SDUI5Badge46.LeftImageSize = ""
	SDUI5Badge46.RightImage = "./assets/close.svg"
	SDUI5Badge46.Shadow = "lg"
	SDUI5Badge46.Size = ""
	SDUI5Badge46.Text = "Primary"
	SDUI5Badge46.TextSize = ""
	BANano.Await(SDUI5Badge46.AddComponent)
	'
	SDUI5Badge47.Initialize(Me, "SDUI5Badge47", "SDUI5Badge47")
	SDUI5Badge47.ParentID = "SDUI5Row1"
	SDUI5Badge47.Height = "6"
	SDUI5Badge47.LeftIconSize = ""
	SDUI5Badge47.RightIconSize = ""
	SDUI5Badge47.Shadow = "lg"
	SDUI5Badge47.Size = ""
	SDUI5Badge47.Text = "5"
	SDUI5Badge47.TextSize = ""
	SDUI5Badge47.Width = "6"
	BANano.Await(SDUI5Badge47.AddComponent)
	pgIndex.UpdateTitle("SDUI5Badge")
End Sub

