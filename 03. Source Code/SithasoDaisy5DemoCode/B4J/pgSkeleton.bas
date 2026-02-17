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
	Private SDUI5Skeleton1 As SDUI5Skeleton		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Panel1 As SDUI5Panel		'ignore
	Private SDUI5Panel2 As SDUI5Panel		'ignore
	Private SDUI5Skeleton2 As SDUI5Skeleton		'ignore
	Private SDUI5Panel3 As SDUI5Panel		'ignore
	Private SDUI5Skeleton3 As SDUI5Skeleton		'ignore
	Private SDUI5Skeleton4 As SDUI5Skeleton		'ignore
	Private SDUI5Skeleton5 As SDUI5Skeleton		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Panel4 As SDUI5Panel		'ignore
	Private SDUI5Skeleton6 As SDUI5Skeleton		'ignore
	Private SDUI5Skeleton7 As SDUI5Skeleton		'ignore
	Private SDUI5Skeleton8 As SDUI5Skeleton		'ignore
	Private SDUI5Skeleton9 As SDUI5Skeleton		'ignore
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
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.AlignSelf = ""
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.SizeMd = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Skeleton1.Initialize(Me, "SDUI5Skeleton1", "SDUI5Skeleton1")
	SDUI5Skeleton1.ParentID = "SDUI5Column1"
	SDUI5Skeleton1.Height = "32"
	SDUI5Skeleton1.Rounded = "rounded-2xl"
	SDUI5Skeleton1.Width = "32"
	BANano.Await(SDUI5Skeleton1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	SDUI5Panel1.Initialize(Me, "SDUI5Panel1", "SDUI5Panel1")
	SDUI5Panel1.ParentID = "SDUI5Column2"
	SDUI5Panel1.Flexbox = True
	SDUI5Panel1.FlexDirection = "col"
	SDUI5Panel1.Gap = "4"
	SDUI5Panel1.JustifyItems = ""
	SDUI5Panel1.Width = "52"
	BANano.Await(SDUI5Panel1.AddComponent)
	'
	SDUI5Panel2.Initialize(Me, "SDUI5Panel2", "SDUI5Panel2")
	SDUI5Panel2.ParentID = "SDUI5Panel1"
	SDUI5Panel2.AlignItems = "center"
	SDUI5Panel2.Flexbox = True
	SDUI5Panel2.Gap = "4"
	SDUI5Panel2.JustifyItems = ""
	BANano.Await(SDUI5Panel2.AddComponent)
	'
	SDUI5Skeleton2.Initialize(Me, "SDUI5Skeleton2", "SDUI5Skeleton2")
	SDUI5Skeleton2.ParentID = "SDUI5Panel2"
	SDUI5Skeleton2.Height = "16"
	SDUI5Skeleton2.Rounded = "full"
	SDUI5Skeleton2.Shrink = "0"
	SDUI5Skeleton2.Width = "16"
	BANano.Await(SDUI5Skeleton2.AddComponent)
	'
	SDUI5Panel3.Initialize(Me, "SDUI5Panel3", "SDUI5Panel3")
	SDUI5Panel3.ParentID = "SDUI5Panel2"
	SDUI5Panel3.Flexbox = True
	SDUI5Panel3.FlexDirection = "col"
	SDUI5Panel3.Gap = "4"
	SDUI5Panel3.JustifyItems = ""
	BANano.Await(SDUI5Panel3.AddComponent)
	'
	SDUI5Skeleton3.Initialize(Me, "SDUI5Skeleton3", "SDUI5Skeleton3")
	SDUI5Skeleton3.ParentID = "SDUI5Panel3"
	SDUI5Skeleton3.Height = "4"
	SDUI5Skeleton3.Rounded = "rounded"
	SDUI5Skeleton3.Width = "20"
	BANano.Await(SDUI5Skeleton3.AddComponent)
	'
	SDUI5Skeleton4.Initialize(Me, "SDUI5Skeleton4", "SDUI5Skeleton4")
	SDUI5Skeleton4.ParentID = "SDUI5Panel3"
	SDUI5Skeleton4.Height = "4"
	SDUI5Skeleton4.Rounded = "rounded"
	SDUI5Skeleton4.Width = "28"
	BANano.Await(SDUI5Skeleton4.AddComponent)
	'
	SDUI5Skeleton5.Initialize(Me, "SDUI5Skeleton5", "SDUI5Skeleton5")
	SDUI5Skeleton5.ParentID = "SDUI5Panel1"
	SDUI5Skeleton5.Height = "32"
	SDUI5Skeleton5.Rounded = "rounded"
	SDUI5Skeleton5.Width = "full"
	BANano.Await(SDUI5Skeleton5.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row1"
	SDUI5Column3.AlignSelf = ""
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Panel4.Initialize(Me, "SDUI5Panel4", "SDUI5Panel4")
	SDUI5Panel4.ParentID = "SDUI5Column3"
	SDUI5Panel4.Flexbox = True
	SDUI5Panel4.FlexDirection = "col"
	SDUI5Panel4.Gap = "4"
	SDUI5Panel4.JustifyItems = ""
	SDUI5Panel4.Width = "52"
	BANano.Await(SDUI5Panel4.AddComponent)
	'
	SDUI5Skeleton6.Initialize(Me, "SDUI5Skeleton6", "SDUI5Skeleton6")
	SDUI5Skeleton6.ParentID = "SDUI5Panel4"
	SDUI5Skeleton6.Height = "32"
	SDUI5Skeleton6.Rounded = "rounded"
	SDUI5Skeleton6.Width = "full"
	BANano.Await(SDUI5Skeleton6.AddComponent)
	'
	SDUI5Skeleton7.Initialize(Me, "SDUI5Skeleton7", "SDUI5Skeleton7")
	SDUI5Skeleton7.ParentID = "SDUI5Panel4"
	SDUI5Skeleton7.Height = "4"
	SDUI5Skeleton7.Rounded = "rounded"
	SDUI5Skeleton7.Width = "28"
	BANano.Await(SDUI5Skeleton7.AddComponent)
	'
	SDUI5Skeleton8.Initialize(Me, "SDUI5Skeleton8", "SDUI5Skeleton8")
	SDUI5Skeleton8.ParentID = "SDUI5Panel4"
	SDUI5Skeleton8.Height = "4"
	SDUI5Skeleton8.Rounded = "rounded"
	SDUI5Skeleton8.Width = "full"
	BANano.Await(SDUI5Skeleton8.AddComponent)
	'
	SDUI5Skeleton9.Initialize(Me, "SDUI5Skeleton9", "SDUI5Skeleton9")
	SDUI5Skeleton9.ParentID = "SDUI5Panel4"
	SDUI5Skeleton9.Height = "4"
	SDUI5Skeleton9.Rounded = "rounded"
	SDUI5Skeleton9.Width = "full"
	BANano.Await(SDUI5Skeleton9.AddComponent)
	pgIndex.UpdateTitle("SDUI5Skeleton")
End Sub

