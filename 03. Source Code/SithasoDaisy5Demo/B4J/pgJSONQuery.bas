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
	Private acc1 As SDUI5Accordion
	Private txtJSON As SDUI5TextArea
	Private txtJSON1 As SDUI5TextArea
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "jsonview")
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