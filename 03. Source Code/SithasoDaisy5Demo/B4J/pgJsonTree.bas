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
	Private jTree As SDUI5JsonTree
End Sub

Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "jsontreeview")
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