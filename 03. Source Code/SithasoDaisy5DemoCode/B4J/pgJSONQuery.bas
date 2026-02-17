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
	Private acc1 As SDUI5Accordion			'ignore
	Private txtJSON As SDUI5TextArea		'ignore
	Private txtJSON1 As SDUI5TextArea		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesJSONQuery)
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
	BANano.Await(SDUI5Column1.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.AlignSelf = ""
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	txtJSON.Initialize(Me, "txtJSON", "txtJSON")
	txtJSON.ParentID = "SDUI5Column1"
	txtJSON.Label = "JSON Query"
	BANano.Await(txtJSON.AddComponent)
	'
	txtJSON1.Initialize(Me, "txtJSON1", "txtJSON1")
	txtJSON1.ParentID = "SDUI5Column2"
	txtJSON1.Label = "JSON Query"
	BANano.Await(txtJSON1.AddComponent)
	pgIndex.UpdateTitle("SDUIJSONQuery")
	'
	Dim jsonQ As SDUIJSONQuery
	Dim movies As List = BANano.Window.GetField("movies")
	'
	jsonQ.Initialize(movies)
	'
'	jsonQ.whereEqual("rating", 8.4)
'	jsonQ.whereNotEqual("rating", 8.4)
'	jsonQ.whereLike("name", "Godfather")
'	jsonQ.whereBetween("rating", 8, 9)
'	jsonQ.whereLessThan("rating", 7)
'	jsonQ.whereGreaterThan("rating", 7)
	'jsonQ.whereIn("rating", Array(7.6, 7.4))
	'****
	'jsonQ.whereLike("actor", "walter")
	'jsonQ.whereBetween("year", 1950, 1980)
	'jsonQ.whereEqual("rating", 7.7)
	
	'jsonQ.groupBy("rating")
	
	'jsonQ.selectFields(Array("actor", "rating"))
	
'	jsonQ.whereEqual("actor",  "Al Pacino").whereGreaterThan("year", 1970)
	
'	jsonQ.whereEqual("actor",  "Al Pacino").whereGreaterThan("year", 1970).whereOr("rating", "=", 8.4)
	'
	'jsonQ.whereEqual("actor",  "Al Pacino").whereGreaterThan("year", 1970).OrderDesc("rating")
	'
	jsonQ.Unique("rating")
	Dim results As List = jsonQ.Exec
	Log(results)
End Sub

Private Sub acc1_Change (Item As String)
	app.ShowToastSuccess(Item)
End Sub

