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
	Private SDUI5Container1 As SDUI5Container
	Private SDUI5RowHeader As SDUI5Row
	Private SDUI5ColHeader As SDUI5Column
	Private heroCard As SDUI5Card
	Private SDUI5RowCards As SDUI5Row
	Private colCard1 As SDUI5Column
	Private colCard2 As SDUI5Column
	Private colCard3 As SDUI5Column
	Private colCard4 As SDUI5Column
	Private card1 As SDUI5Card
	Private card2 As SDUI5Card
	Private card3 As SDUI5Card
	Private card4 As SDUI5Card
	Private SDUI5RowSection2 As SDUI5Row
	Private colSec1 As SDUI5Column
	Private colSec2 As SDUI5Column
	Private cardSec1 As SDUI5Card
	Private cardSec2 As SDUI5Card
	Private btnReInit As SDUI5Button
	Private SDUI5AOS1 As SDUI5AOS
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.UsesAOS)
	BANano.Await(app.ClearPageView)
	
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	
	' Initialize SDUI5AOS as a custom component with designer properties
	SDUI5AOS1.Initialize(Me, "SDUI5AOS1", "SDUI5AOS1")
	SDUI5AOS1.ParentID = "SDUI5Container1"
	SDUI5AOS1.Duration = 800
	SDUI5AOS1.Once = True
	SDUI5AOS1.Offset = 100
	SDUI5AOS1.Easing = "ease-out-cubic"
	BANano.Await(SDUI5AOS1.AddComponent)
	
	' Top Actions
	SDUI5RowHeader.Initialize(Me, "SDUI5RowHeader", "SDUI5RowHeader")
	SDUI5RowHeader.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5RowHeader.AddComponent)
	
	SDUI5ColHeader.Initialize(Me, "SDUI5ColHeader", "SDUI5ColHeader")
	SDUI5ColHeader.ParentID = "SDUI5RowHeader"
	SDUI5ColHeader.PaddingAXYTBLR = "a=4"
	BANano.Await(SDUI5ColHeader.AddComponent)
	
	btnReInit.Initialize(Me, "btnReInit", "btnReInit")
	btnReInit.ParentID = "SDUI5ColHeader"
	btnReInit.Text = "Refresh AOS Animations"
	btnReInit.Color = "primary"
	btnReInit.MarginAXYTBLR = "b=4"
	BANano.Await(btnReInit.AddComponent)
	
	' Hero Banner (Fade)
	heroCard.Initialize(Me, "heroCard", "heroCard")
	heroCard.ParentID = "SDUI5ColHeader"
	heroCard.Title = "AOS (Animate On Scroll) Custom Component"
	heroCard.Content = "Scroll down the page to see elements animate into view using SDUI5AOS custom view component with designer properties."
	heroCard.BackgroundColor = "neutral"
	heroCard.TextColor = "neutral-content"
	heroCard.MarginAXYTBLR = "b=8"
	heroCard.Attributes = "data-aos=fade; data-aos-duration=1000"
	BANano.Await(heroCard.AddComponent)
	
	' 4 Feature Cards (Fade-Up, Fade-Down, Fade-Left, Fade-Right)
	SDUI5RowCards.Initialize(Me, "SDUI5RowCards", "SDUI5RowCards")
	SDUI5RowCards.ParentID = "SDUI5Container1"
	SDUI5RowCards.Gap = "4"
	BANano.Await(SDUI5RowCards.AddComponent)
	
	' Card 1: Fade Up
	colCard1.Initialize(Me, "colCard1", "colCard1")
	colCard1.ParentID = "SDUI5RowCards"
	colCard1.Size = "6"
	BANano.Await(colCard1.AddComponent)
	
	card1.Initialize(Me, "card1", "card1")
	card1.ParentID = "colCard1"
	card1.Title = "1. Fade Up"
	card1.Content = "Animates upwards into view with a smooth opacity transition (data-aos='fade-up')."
	card1.BackgroundColor = "primary"
	card1.TextColor = "primary-content"
	card1.MarginAXYTBLR = "b=6"
	card1.Attributes = "data-aos=fade-up; data-aos-duration=800; data-aos-offset=100"
	BANano.Await(card1.AddComponent)
	
	' Card 2: Fade Down
	colCard2.Initialize(Me, "colCard2", "colCard2")
	colCard2.ParentID = "SDUI5RowCards"
	colCard2.Size = "6"
	BANano.Await(colCard2.AddComponent)
	
	card2.Initialize(Me, "card2", "card2")
	card2.ParentID = "colCard2"
	card2.Title = "2. Fade Down"
	card2.Content = "Animates downwards into view smoothly (data-aos='fade-down')."
	card2.BackgroundColor = "secondary"
	card2.TextColor = "secondary-content"
	card2.MarginAXYTBLR = "b=6"
	card2.Attributes = "data-aos=fade-down; data-aos-duration=800; data-aos-offset=100"
	BANano.Await(card2.AddComponent)
	
	' Card 3: Fade Left
	colCard3.Initialize(Me, "colCard3", "colCard3")
	colCard3.ParentID = "SDUI5RowCards"
	colCard3.Size = "6"
	BANano.Await(colCard3.AddComponent)
	
	card3.Initialize(Me, "card3", "card3")
	card3.ParentID = "colCard3"
	card3.Title = "3. Fade Left"
	card3.Content = "Slides in smoothly from the right towards the left (data-aos='fade-left')."
	card3.BackgroundColor = "accent"
	card3.TextColor = "accent-content"
	card3.MarginAXYTBLR = "b=6"
	card3.Attributes = "data-aos=fade-left; data-aos-duration=800; data-aos-offset=100"
	BANano.Await(card3.AddComponent)
	
	' Card 4: Fade Right
	colCard4.Initialize(Me, "colCard4", "colCard4")
	colCard4.ParentID = "SDUI5RowCards"
	colCard4.Size = "6"
	BANano.Await(colCard4.AddComponent)
	
	card4.Initialize(Me, "card4", "card4")
	card4.ParentID = "colCard4"
	card4.Title = "4. Fade Right"
	card4.Content = "Slides in smoothly from the left towards the right (data-aos='fade-right')."
	card4.BackgroundColor = "info"
	card4.TextColor = "info-content"
	card4.MarginAXYTBLR = "b=6"
	card4.Attributes = "data-aos=fade-right; data-aos-duration=800; data-aos-offset=100"
	BANano.Await(card4.AddComponent)
	
	' Section 2: Flip & Zoom
	SDUI5RowSection2.Initialize(Me, "SDUI5RowSection2", "SDUI5RowSection2")
	SDUI5RowSection2.ParentID = "SDUI5Container1"
	SDUI5RowSection2.Gap = "4"
	BANano.Await(SDUI5RowSection2.AddComponent)
	
	colSec1.Initialize(Me, "colSec1", "colSec1")
	colSec1.ParentID = "SDUI5RowSection2"
	colSec1.Size = "6"
	BANano.Await(colSec1.AddComponent)
	
	cardSec1.Initialize(Me, "cardSec1", "cardSec1")
	cardSec1.ParentID = "colSec1"
	cardSec1.Title = "5. Flip Left 3D"
	cardSec1.Content = "3D card flip animation triggered when scrolled into view (data-aos='flip-left')."
	cardSec1.BackgroundColor = "success"
	cardSec1.TextColor = "success-content"
	cardSec1.MarginAXYTBLR = "b=8"
	cardSec1.Attributes = "data-aos=flip-left; data-aos-duration=1000; data-aos-offset=100"
	BANano.Await(cardSec1.AddComponent)
	
	colSec2.Initialize(Me, "colSec2", "colSec2")
	colSec2.ParentID = "SDUI5RowSection2"
	colSec2.Size = "6"
	BANano.Await(colSec2.AddComponent)
	
	cardSec2.Initialize(Me, "cardSec2", "cardSec2")
	cardSec2.ParentID = "colSec2"
	cardSec2.Title = "6. Zoom In"
	cardSec2.Content = "Scales smoothly from small to 100% size as user scrolls down (data-aos='zoom-in')."
	cardSec2.BackgroundColor = "warning"
	cardSec2.TextColor = "warning-content"
	cardSec2.MarginAXYTBLR = "b=8"
	cardSec2.Attributes = "data-aos=zoom-in; data-aos-duration=1000; data-aos-offset=100"
	BANano.Await(cardSec2.AddComponent)
	
	' Refresh SDUI5AOS1 so all added elements are detected
	SDUI5AOS1.RefreshHard
	
	pgIndex.UpdateTitle("AOS (Animate On Scroll)")
End Sub

Private Sub btnReInit_Click (e As BANanoEvent)
	SDUI5AOS1.RefreshHard
	app.ShowToastSuccess("AOS Animations Refreshed via SDUI5AOS1")
End Sub
