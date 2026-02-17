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
	Private jTree As SDUI5JsonTree		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesJSONTree)
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
	BANano.Await(SDUI5Column1.AddComponent)
	'
	jTree.Initialize(Me, "jTree", "jTree")
	jTree.ParentID = "SDUI5Column1"
	BANano.Await(jTree.AddComponent)
	pgIndex.UpdateTitle("SDUI5JsonTree")
	'
	Dim members As List
	members.Initialize 
	members.Add(CreateMap("name": "Molecule Man", "age": 29, "secretIdentity": "Dan Jukes", "powers": Array("Radiation resistance", "Turning tiny", "Radiation blast")))
	members.Add(CreateMap("name": "Madame Uppercut", "age": 39, "secretIdentity": "Jane Wilson", "powers": Array("Million tonne punch", "Damage resistance", "Superhuman reflexes")))
	'
	
	'
	Dim j As Map = CreateMap()
	j.Put("squadName", "Super hero squad")
	j.Put("homeTown", "Metro City")
	j.Put("formed", 2016)
	j.Put("secretBase", "Super tower")
	j.Put("active", True)
	j.Put("members", members)
	jTree.JSON = j
	jTree.Refresh
	
End Sub

