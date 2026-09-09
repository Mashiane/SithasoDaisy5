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
End Sub


Sub Show
	app = pgIndex.app
	BANano.Await(app.ClearPageView)
	pgIndex.UpdateTitle("SDUI5Aura")
	'create a container for the page
	Dim cont As SDUI5Container
	cont.Initialize(Me, "auracont", "auracont")
	cont.Container = True
	cont.ParentID = app.PageView
	BANano.Await(cont.AddComponent)
	'
	cont.AddRows1.AddColumns12
	cont.AddRows1.AddColumns4x3
	cont.AddRows1.AddColumns4x3
	cont.AddRows1.AddColumns4x3
	cont.AddRows1.AddColumns12
	cont.AddRows1.AddColumns5x2
	cont.AddRows1.AddColumns12
	cont.AddRows1.AddColumns4x3
	cont.AddRows1.AddColumns12
	cont.AddRows1.AddColumns4x3
	cont.BuildGrid
	
	'Aura Styles
	AddHeading(cont, 1, "aurah1", "Aura - Styles")
	'
	AddExample(cont, 2, 1, "auradef", "", "", "", "", "", "Aura", "primary", "sm")
	AddExample(cont, 2, 2, "auradual", "dual", "", "", "", "", "Dual", "primary", "sm")
	AddExample(cont, 2, 3, "aurarainbow", "rainbow", "", "", "", "", "Rainbow", "secondary", "sm")
	'
	AddExample(cont, 3, 1, "auraholo", "holo", "", "", "", "", "Holo", "accent", "sm")
	AddExample(cont, 3, 2, "auragold", "gold", "", "", "", "", "Gold", "warning", "sm")
	AddExample(cont, 3, 3, "aurasilver", "silver", "", "", "", "", "Silver", "info", "sm")
	'
	AddExample(cont, 4, 1, "auraglow", "glow", "", "", "", "", "Glow", "success", "sm")
	'
	'Aura Sizes
	AddHeading(cont, 5, "aurah2", "Aura - Sizes")
	'
	AddExample(cont, 6, 1, "auraxs", "glow", "xs", "", "", "", "xs", "primary", "sm")
	AddExample(cont, 6, 2, "aurasm", "glow", "sm", "", "", "", "sm", "primary", "sm")
	AddExample(cont, 6, 3, "auramd", "glow", "md", "", "", "", "md", "primary", "sm")
	AddExample(cont, 6, 4, "auralg", "glow", "lg", "", "", "", "lg", "primary", "sm")
	AddExample(cont, 6, 5, "auraxl", "glow", "xl", "", "", "", "xl", "primary", "sm")
	'
	'Custom Color & Animation Timing
	AddHeading(cont, 7, "aurah3", "Aura - Custom Color & Timing")
	'
	AddExample(cont, 8, 1, "auracolor1", "", "", "primary", "", "", "Primary", "primary", "sm")
	AddExample(cont, 8, 2, "auracolor2", "", "", "success", "", "", "Success", "success", "sm")
	AddExample(cont, 8, 3, "auratiming", "rainbow", "", "", "", "duration-1000", "Slow", "secondary", "sm")
	'
	'Highlight a Card
	AddHeading(cont, 9, "aurah4", "Aura - Highlight a Card")
	'
	Dim auraCard As SDUI5Aura
	auraCard.Initialize(Me, "auracard", "auracard")
	auraCard.ParentID = cont.CellID(10, 2)
	auraCard.TypeOf = "gold"
	BANano.Await(auraCard.AddComponent)
	'
	Dim card As SDUI5Card
	card.Initialize(Me, "auracarddemo", "auracarddemo")
	card.ParentID = auraCard.getID
	card.Title = "Pro Plan"
	card.Size = "sm"
	BANano.Await(card.AddComponent)
	'
	Dim txt As SDUI5Text
	txt.Initialize(Me, "auracardtext", "auracardtext")
	txt.ParentID = card.getID & "_content"
	txt.Text = "The aura highlights the card you want users to notice."
	BANano.Await(txt.AddComponent)
End Sub

'add a heading to a cell
Private Sub AddHeading(Cont As SDUI5Container, Row As Int, Name As String, sText As String)
	Dim tx As SDUI5Text
	tx.Initialize(Me, Name, Name)
	tx.ParentID = Cont.CellID(Row, 1)
	tx.TextTag = "h2"
	tx.Text = sText
	tx.TextSize = "lg"
	BANano.Await(tx.AddComponent)
End Sub

'add an aura wrapping one button to a cell
Private Sub AddExample(Cont As SDUI5Container, Row As Int, Col As Int, Name As String, Sty As String, Size As String, TxtColor As String, BGColor As String, RawCls As String, BtnText As String, BtnColor As String, BtnSize As String)
	Dim ex As SDUI5Aura
	ex.Initialize(Me, Name, Name)
	ex.ParentID = Cont.CellID(Row, Col)
	ex.TypeOf = Sty
	ex.Size = Size
	ex.TextColor = TxtColor
	ex.BackgroundColor = BGColor
	ex.Classes = RawCls
	BANano.Await(ex.AddComponent)
	'
	Dim btn As SDUI5Button
	btn.Initialize(Me, Name & "btn", Name & "btn")
	btn.ParentID = ex.getID
	btn.Text = BtnText
	btn.Color = BtnColor
	btn.Size = BtnSize
	BANano.Await(btn.AddComponent)
End Sub
