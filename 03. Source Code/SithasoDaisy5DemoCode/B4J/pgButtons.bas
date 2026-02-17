B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private SDUI5Button1 As SDUI5Button		'ignore
	Private SDUI5Button10 As SDUI5Button		'ignore
	Private SDUI5Button11 As SDUI5Button		'ignore
	Private SDUI5Button12 As SDUI5Button		'ignore
	Private SDUI5Button13 As SDUI5Button		'ignore
	Private SDUI5Button14 As SDUI5Button		'ignore
	Private SDUI5Button15 As SDUI5Button		'ignore
	Private SDUI5Button16 As SDUI5Button		'ignore
	Private SDUI5Button17 As SDUI5Button		'ignore
	Private SDUI5Button18 As SDUI5Button		'ignore
	Private SDUI5Button19 As SDUI5Button		'ignore
	Private SDUI5Button2 As SDUI5Button		'ignore
	Private SDUI5Button20 As SDUI5Button		'ignore
	Private SDUI5Button21 As SDUI5Button		'ignore
	Private SDUI5Button22 As SDUI5Button		'ignore
	Private SDUI5Button23 As SDUI5Button		'ignore
	Private SDUI5Button24 As SDUI5Button		'ignore
	Private SDUI5Button25 As SDUI5Button		'ignore
	Private SDUI5Button26 As SDUI5Button		'ignore
	Private SDUI5Button27 As SDUI5Button		'ignore
	Private SDUI5Button28 As SDUI5Button		'ignore
	Private SDUI5Button29 As SDUI5Button		'ignore
	Private SDUI5Button3 As SDUI5Button		'ignore
	Private SDUI5Button30 As SDUI5Button		'ignore
	Private SDUI5Button31 As SDUI5Button		'ignore
	Private SDUI5Button32 As SDUI5Button		'ignore
	Private SDUI5Button33 As SDUI5Button		'ignore
	Private SDUI5Button4 As SDUI5Button		'ignore
	Private SDUI5Button5 As SDUI5Button		'ignore
	Private SDUI5Button6 As SDUI5Button		'ignore
	Private SDUI5Button7 As SDUI5Button		'ignore
	Private SDUI5Button8 As SDUI5Button		'ignore
	Private SDUI5Button9 As SDUI5Button		'ignore
	Private app As SDUI5App
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Button34 As SDUI5Button		'ignore
	Private SDUI5Button35 As SDUI5Button		'ignore
	Private SDUI5Button36 As SDUI5Button		'ignore
	Private SDUI5Button37 As SDUI5Button		'ignore
End Sub

Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.Attributes = "anele:x"
	SDUI5Container1.Classes = "mx-auto"
	SDUI5Container1.Styles = "xolani:2"
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row3.Initialize(Me, "SDUI5Row3", "SDUI5Row3")
	SDUI5Row3.ParentID = "SDUI5Container1"
	SDUI5Row3.GridCols = "3"
	SDUI5Row3.GridColsMd = "3"
	BANano.Await(SDUI5Row3.AddComponent)
	'
	SDUI5Button11.Initialize(Me, "SDUI5Button11", "SDUI5Button11")
	SDUI5Button11.ParentID = "SDUI5Row3"
	SDUI5Button11.BadgeSize = "none"
	SDUI5Button11.Color = "neutral"
	SDUI5Button11.IconSize = ""
	'SDUI5Button11.Image = ""
	'SDUI5Button11.ImageHeight = ""
	'SDUI5Button11.ImageWidth = ""
	SDUI5Button11.LeftIconColor = "none"
	SDUI5Button11.RightIconColor = "none"
	SDUI5Button11.Size = "none"
	SDUI5Button11.Text = "Neutral"
	BANano.Await(SDUI5Button11.AddComponent)
	'
	SDUI5Button12.Initialize(Me, "SDUI5Button12", "SDUI5Button12")
	SDUI5Button12.ParentID = "SDUI5Row3"
	SDUI5Button12.BadgeSize = "none"
	SDUI5Button12.Color = "info"
	SDUI5Button12.IconSize = ""
	'SDUI5Button12.Image = ""
	'SDUI5Button12.ImageHeight = ""
	'SDUI5Button12.ImageWidth = ""
	SDUI5Button12.LeftIconColor = "none"
	SDUI5Button12.RightIconColor = "none"
	SDUI5Button12.Size = "none"
	SDUI5Button12.Text = "Info"
	BANano.Await(SDUI5Button12.AddComponent)
	'
	SDUI5Button13.Initialize(Me, "SDUI5Button13", "SDUI5Button13")
	SDUI5Button13.ParentID = "SDUI5Row3"
	SDUI5Button13.BadgeSize = "none"
	SDUI5Button13.Color = "success"
	SDUI5Button13.IconSize = ""
	'SDUI5Button13.Image = ""
	'SDUI5Button13.ImageHeight = ""
	'SDUI5Button13.ImageWidth = ""
	SDUI5Button13.LeftIconColor = "none"
	SDUI5Button13.RightIconColor = "none"
	SDUI5Button13.Size = "none"
	SDUI5Button13.Text = "Success"
	BANano.Await(SDUI5Button13.AddComponent)
	'
	SDUI5Button14.Initialize(Me, "SDUI5Button14", "SDUI5Button14")
	SDUI5Button14.ParentID = "SDUI5Row3"
	SDUI5Button14.BadgeSize = "none"
	SDUI5Button14.Color = "warning"
	SDUI5Button14.IconSize = ""
	'SDUI5Button14.Image = ""
	'SDUI5Button14.ImageHeight = ""
	'SDUI5Button14.ImageWidth = ""
	SDUI5Button14.LeftIconColor = "none"
	SDUI5Button14.RightIconColor = "none"
	SDUI5Button14.Size = "none"
	SDUI5Button14.Text = "Warning"
	BANano.Await(SDUI5Button14.AddComponent)
	'
	SDUI5Button9.Initialize(Me, "SDUI5Button9", "SDUI5Button9")
	SDUI5Button9.ParentID = "SDUI5Row3"
	SDUI5Button9.BadgeSize = "none"
	SDUI5Button9.Color = "secondary"
	SDUI5Button9.IconSize = ""
	'SDUI5Button9.Image = ""
	'SDUI5Button9.ImageHeight = ""
	'SDUI5Button9.ImageWidth = ""
	SDUI5Button9.LeftIconColor = "none"
	SDUI5Button9.RightIconColor = "none"
	SDUI5Button9.Size = "none"
	SDUI5Button9.Text = "Secondary"
	BANano.Await(SDUI5Button9.AddComponent)
	'
	SDUI5Button10.Initialize(Me, "SDUI5Button10", "SDUI5Button10")
	SDUI5Button10.ParentID = "SDUI5Row3"
	SDUI5Button10.BadgeSize = "none"
	SDUI5Button10.Color = "accent"
	SDUI5Button10.IconSize = ""
	'SDUI5Button10.Image = ""
	'SDUI5Button10.ImageHeight = ""
	'SDUI5Button10.ImageWidth = ""
	SDUI5Button10.LeftIconColor = "none"
	SDUI5Button10.RightIconColor = "none"
	SDUI5Button10.Size = "none"
	SDUI5Button10.Text = "Accent"
	BANano.Await(SDUI5Button10.AddComponent)
	'
	SDUI5Button16.Initialize(Me, "SDUI5Button16", "SDUI5Button16")
	SDUI5Button16.ParentID = "SDUI5Row3"
	SDUI5Button16.BadgeSize = "none"
	SDUI5Button16.Color = "warning"
	SDUI5Button16.IconSize = ""
	'SDUI5Button16.Image = ""
	'SDUI5Button16.ImageHeight = ""
	'SDUI5Button16.ImageWidth = ""
	SDUI5Button16.LeftIconColor = "none"
	SDUI5Button16.RightIconColor = "none"
	SDUI5Button16.Size = "none"
	SDUI5Button16.Soft = True
	SDUI5Button16.Text = "Warning"
	BANano.Await(SDUI5Button16.AddComponent)
	'
	SDUI5Button17.Initialize(Me, "SDUI5Button17", "SDUI5Button17")
	SDUI5Button17.ParentID = "SDUI5Row3"
	SDUI5Button17.BadgeSize = "none"
	SDUI5Button17.Color = "primary"
	SDUI5Button17.IconSize = ""
	'SDUI5Button17.Image = ""
	'SDUI5Button17.ImageHeight = ""
	'SDUI5Button17.ImageWidth = ""
	SDUI5Button17.LeftIconColor = "none"
	SDUI5Button17.Outline = True
	SDUI5Button17.RightIconColor = "none"
	SDUI5Button17.Size = "none"
	SDUI5Button17.Text = "Outline"
	BANano.Await(SDUI5Button17.AddComponent)
	'
	SDUI5Button21.Initialize(Me, "SDUI5Button21", "SDUI5Button21")
	SDUI5Button21.ParentID = "SDUI5Row3"
	SDUI5Button21.BadgeSize = "none"
	SDUI5Button21.Color = "primary"
	SDUI5Button21.IconSize = ""
	'SDUI5Button21.Image = ""
	'SDUI5Button21.ImageHeight = ""
	'SDUI5Button21.ImageWidth = ""
	SDUI5Button21.LeftIconColor = "none"
	SDUI5Button21.Link = True
	SDUI5Button21.RightIconColor = "none"
	SDUI5Button21.Size = "none"
	SDUI5Button21.Text = "Link"
	BANano.Await(SDUI5Button21.AddComponent)
	'
	SDUI5Button22.Initialize(Me, "SDUI5Button22", "SDUI5Button22")
	SDUI5Button22.ParentID = "SDUI5Row3"
	SDUI5Button22.BadgeSize = "none"
	SDUI5Button22.Color = "primary"
	SDUI5Button22.IconSize = ""
	'SDUI5Button22.Image = ""
	'SDUI5Button22.ImageHeight = ""
	'SDUI5Button22.ImageWidth = ""
	SDUI5Button22.LeftIconColor = "none"
	SDUI5Button22.RightIconColor = "none"
	SDUI5Button22.Size = "none"
	SDUI5Button22.Text = "Wide"
	SDUI5Button22.Wide = True
	BANano.Await(SDUI5Button22.AddComponent)
	'
	SDUI5Button23.Initialize(Me, "SDUI5Button23", "SDUI5Button23")
	SDUI5Button23.ParentID = "SDUI5Row3"
	SDUI5Button23.BadgeSize = "none"
	SDUI5Button23.Color = "primary"
	SDUI5Button23.IconSize = ""
	'SDUI5Button23.Image = ""
	'SDUI5Button23.ImageHeight = ""
	'SDUI5Button23.ImageWidth = ""
	SDUI5Button23.LeftIconColor = "none"
	SDUI5Button23.RightIconColor = "none"
	SDUI5Button23.Size = "none"
	SDUI5Button23.Text = "1"
	BANano.Await(SDUI5Button23.AddComponent)
	'
	SDUI5Button24.Initialize(Me, "SDUI5Button24", "SDUI5Button24")
	SDUI5Button24.ParentID = "SDUI5Row3"
	SDUI5Button24.BadgeSize = "none"
	SDUI5Button24.Color = "primary"
	SDUI5Button24.IconSize = ""
	'SDUI5Button24.Image = ""
	'SDUI5Button24.ImageHeight = ""
	'SDUI5Button24.ImageWidth = ""
	SDUI5Button24.LeftIconColor = "none"
	SDUI5Button24.RightIconColor = "none"
	SDUI5Button24.Size = "none"
	SDUI5Button24.Text = "2"
	BANano.Await(SDUI5Button24.AddComponent)
	'
	SDUI5Button26.Initialize(Me, "SDUI5Button26", "SDUI5Button26")
	SDUI5Button26.ParentID = "SDUI5Row3"
	SDUI5Button26.BadgeSize = "none"
	SDUI5Button26.IconSize = ""
	SDUI5Button26.Image = "./assets/pig.svg"
	SDUI5Button26.ImageHeight = "32px"
	SDUI5Button26.ImageWidth = "32px"
	SDUI5Button26.LeftIconColor = "none"
	SDUI5Button26.RightIconColor = "none"
	SDUI5Button26.Shape = "circle"
	SDUI5Button26.Size = "none"
	SDUI5Button26.Text = ""
	BANano.Await(SDUI5Button26.AddComponent)
	'
	SDUI5Button27.Initialize(Me, "SDUI5Button27", "SDUI5Button27")
	SDUI5Button27.ParentID = "SDUI5Row3"
	SDUI5Button27.BadgeSize = "none"
	SDUI5Button27.IconSize = ""
	SDUI5Button27.Image = "./assets/pig.svg"
	SDUI5Button27.ImageHeight = "32px"
	SDUI5Button27.ImageWidth = "32px"
	SDUI5Button27.LeftIconColor = "none"
	SDUI5Button27.RightIconColor = "none"
	SDUI5Button27.Shape = "square"
	SDUI5Button27.Size = "none"
	SDUI5Button27.Text = ""
	BANano.Await(SDUI5Button27.AddComponent)
	'
	SDUI5Button28.Initialize(Me, "SDUI5Button28", "SDUI5Button28")
	SDUI5Button28.ParentID = "SDUI5Row3"
	SDUI5Button28.BadgeSize = "none"
	SDUI5Button28.IconSize = ""
	SDUI5Button28.Image = "./assets/pig.svg"
	SDUI5Button28.ImageHeight = "32px"
	SDUI5Button28.ImageWidth = "32px"
	SDUI5Button28.LeftIconColor = "none"
	SDUI5Button28.RightIconColor = "none"
	SDUI5Button28.Size = "none"
	SDUI5Button28.Text = "Like"
	BANano.Await(SDUI5Button28.AddComponent)
	'
	SDUI5Button29.Initialize(Me, "SDUI5Button29", "SDUI5Button29")
	SDUI5Button29.ParentID = "SDUI5Row3"
	SDUI5Button29.BadgeSize = "none"
	SDUI5Button29.IconSize = ""
	'SDUI5Button29.Image = ""
	'SDUI5Button29.ImageHeight = ""
	'SDUI5Button29.ImageWidth = ""
	SDUI5Button29.LeftIconColor = "none"
	SDUI5Button29.RightIconColor = "none"
	SDUI5Button29.RightImage = "./assets/pig.svg"
	SDUI5Button29.Size = "none"
	SDUI5Button29.Text = "Like"
	BANano.Await(SDUI5Button29.AddComponent)
	'
	SDUI5Button31.Initialize(Me, "SDUI5Button31", "SDUI5Button31")
	SDUI5Button31.ParentID = "SDUI5Row3"
	SDUI5Button31.BackgroundColor = "#6e132b"
	SDUI5Button31.BadgeSize = "none"
	SDUI5Button31.IconSize = ""
	'SDUI5Button31.Image = "./assets/pig.svg"
	'SDUI5Button31.ImageHeight = "32px"
	'SDUI5Button31.ImageWidth = "32px"
	SDUI5Button31.LeftIconColor = "none"
	SDUI5Button31.Loading = True
	SDUI5Button31.RightIconColor = "none"
	SDUI5Button31.Shape = "circle"
	SDUI5Button31.Size = "none"
	SDUI5Button31.Text = ""
	SDUI5Button31.TextColor = "#FFFFFF"
	BANano.Await(SDUI5Button31.AddComponent)
	'
	SDUI5Button32.Initialize(Me, "SDUI5Button32", "SDUI5Button32")
	SDUI5Button32.ParentID = "SDUI5Row3"
	SDUI5Button32.BadgeSize = "none"
	SDUI5Button32.IconSize = ""
	'SDUI5Button32.Image = "./assets/pig.svg"
	'SDUI5Button32.ImageHeight = "32px"
	'SDUI5Button32.ImageWidth = "32px"
	SDUI5Button32.LeftIconColor = "none"
	SDUI5Button32.Loading = True
	SDUI5Button32.RightIconColor = "none"
	SDUI5Button32.Shape = "circle"
	SDUI5Button32.Size = "none"
	SDUI5Button32.Text = ""
	BANano.Await(SDUI5Button32.AddComponent)
	'
	SDUI5Button33.Initialize(Me, "SDUI5Button33", "SDUI5Button33")
	SDUI5Button33.ParentID = "SDUI5Row3"
	SDUI5Button33.BadgeSize = "none"
	SDUI5Button33.IconSize = ""
	SDUI5Button33.Image = "./assets/googleheart.svg"
	SDUI5Button33.ImageHeight = "16px"
	SDUI5Button33.ImageWidth = "16px"
	SDUI5Button33.LeftIconColor = "none"
	SDUI5Button33.RightIconColor = "none"
	SDUI5Button33.Size = "none"
	SDUI5Button33.Text = "Image"
	BANano.Await(SDUI5Button33.AddComponent)
	'
	SDUI5Button15.Initialize(Me, "SDUI5Button15", "SDUI5Button15")
	SDUI5Button15.ParentID = "SDUI5Row3"
	SDUI5Button15.BadgeSize = "none"
	SDUI5Button15.Color = "error"
	SDUI5Button15.IconSize = ""
	'SDUI5Button15.Image = ""
	'SDUI5Button15.ImageHeight = ""
	'SDUI5Button15.ImageWidth = ""
	SDUI5Button15.LeftIconColor = "none"
	SDUI5Button15.RightIconColor = "none"
	SDUI5Button15.Size = "none"
	SDUI5Button15.Text = "Error"
	BANano.Await(SDUI5Button15.AddComponent)
	'
	SDUI5Button30.Initialize(Me, "SDUI5Button30", "SDUI5Button30")
	SDUI5Button30.ParentID = "SDUI5Row3"
	SDUI5Button30.BadgeSize = "none"
	SDUI5Button30.IconSize = ""
	'SDUI5Button30.Image = "./assets/pig.svg"
	'SDUI5Button30.ImageHeight = "32px"
	'SDUI5Button30.ImageWidth = "32px"
	SDUI5Button30.LeftIconColor = "none"
	SDUI5Button30.Loading = True
	SDUI5Button30.RightIconColor = "none"
	SDUI5Button30.Size = "none"
	SDUI5Button30.Text = "Loading"
	BANano.Await(SDUI5Button30.AddComponent)
	'
	SDUI5Button25.Initialize(Me, "SDUI5Button25", "SDUI5Button25")
	SDUI5Button25.ParentID = "SDUI5Row3"
	SDUI5Button25.BadgeSize = "none"
	SDUI5Button25.Block = True
	SDUI5Button25.Color = "primary"
	SDUI5Button25.IconSize = ""
	'SDUI5Button25.Image = ""
	'SDUI5Button25.ImageHeight = ""
	'SDUI5Button25.ImageWidth = ""
	SDUI5Button25.LeftIconColor = "none"
	SDUI5Button25.RightIconColor = "none"
	SDUI5Button25.Size = "none"
	SDUI5Button25.Text = "Block"
	BANano.Await(SDUI5Button25.AddComponent)
	'
	SDUI5Button34.Initialize(Me, "SDUI5Button34", "SDUI5Button34")
	SDUI5Button34.ParentID = "SDUI5Row3"
	SDUI5Button34.Badge = "+99"
	SDUI5Button34.IconSize = ""
	'SDUI5Button34.Image = ""
	'SDUI5Button34.ImageHeight = ""
	'SDUI5Button34.ImageWidth = ""
	SDUI5Button34.LeftIconColor = "none"
	SDUI5Button34.RightIconColor = "none"
	SDUI5Button34.Size = "none"
	SDUI5Button34.Text = "Inbox"
	BANano.Await(SDUI5Button34.AddComponent)
	'
	SDUI5Button35.Initialize(Me, "SDUI5Button35", "SDUI5Button35")
	SDUI5Button35.ParentID = "SDUI5Row3"
	SDUI5Button35.Badge = "+99"
	SDUI5Button35.BadgeColor = "secondary"
	SDUI5Button35.IconSize = ""
	'SDUI5Button35.Image = ""
	'SDUI5Button35.ImageHeight = ""
	'SDUI5Button35.ImageWidth = ""
	SDUI5Button35.LeftIconColor = "none"
	SDUI5Button35.RightIconColor = "none"
	SDUI5Button35.Size = "none"
	SDUI5Button35.Text = "Inbox"
	BANano.Await(SDUI5Button35.AddComponent)
	'
	SDUI5Button18.Initialize(Me, "SDUI5Button18", "SDUI5Button18")
	SDUI5Button18.ParentID = "SDUI5Row3"
	SDUI5Button18.BadgeSize = "none"
	SDUI5Button18.Color = "primary"
	SDUI5Button18.Dash = True
	SDUI5Button18.IconSize = ""
	'SDUI5Button18.Image = ""
	'SDUI5Button18.ImageHeight = ""
	'SDUI5Button18.ImageWidth = ""
	SDUI5Button18.LeftIconColor = "none"
	SDUI5Button18.RightIconColor = "none"
	SDUI5Button18.Size = "none"
	SDUI5Button18.Text = "Outline"
	BANano.Await(SDUI5Button18.AddComponent)
	'
	SDUI5Button19.Initialize(Me, "SDUI5Button19", "SDUI5Button19")
	SDUI5Button19.ParentID = "SDUI5Row3"
	SDUI5Button19.Active = True
	SDUI5Button19.BadgeSize = "none"
	SDUI5Button19.Color = "primary"
	SDUI5Button19.IconSize = ""
	'SDUI5Button19.Image = ""
	'SDUI5Button19.ImageHeight = ""
	'SDUI5Button19.ImageWidth = ""
	SDUI5Button19.LeftIconColor = "none"
	SDUI5Button19.RightIconColor = "none"
	SDUI5Button19.Size = "none"
	SDUI5Button19.Text = "Active"
	BANano.Await(SDUI5Button19.AddComponent)
	'
	SDUI5Button20.Initialize(Me, "SDUI5Button20", "SDUI5Button20")
	SDUI5Button20.ParentID = "SDUI5Row3"
	SDUI5Button20.BadgeSize = "none"
	SDUI5Button20.Color = "primary"
	SDUI5Button20.Ghost = True
	SDUI5Button20.IconSize = ""
	'SDUI5Button20.Image = ""
	'SDUI5Button20.ImageHeight = ""
	'SDUI5Button20.ImageWidth = ""
	SDUI5Button20.LeftIconColor = "none"
	SDUI5Button20.RightIconColor = "none"
	SDUI5Button20.Size = "none"
	SDUI5Button20.Text = "Ghost"
	BANano.Await(SDUI5Button20.AddComponent)
	'
	SDUI5Button1.Initialize(Me, "SDUI5Button1", "SDUI5Button1")
	SDUI5Button1.ParentID = "SDUI5Row3"
	SDUI5Button1.BadgeSize = "none"
	SDUI5Button1.IconSize = ""
	'SDUI5Button1.Image = ""
	'SDUI5Button1.ImageHeight = ""
	'SDUI5Button1.ImageWidth = ""
	SDUI5Button1.LeftIconColor = "none"
	SDUI5Button1.RightIconColor = "none"
	SDUI5Button1.Size = "none"
	BANano.Await(SDUI5Button1.AddComponent)
	'
	SDUI5Button2.Initialize(Me, "SDUI5Button2", "SDUI5Button2")
	SDUI5Button2.ParentID = "SDUI5Row3"
	SDUI5Button2.BadgeSize = "none"
	SDUI5Button2.IconSize = ""
	'SDUI5Button2.Image = ""
	'SDUI5Button2.ImageHeight = ""
	'SDUI5Button2.ImageWidth = ""
	SDUI5Button2.LeftIconColor = "none"
	SDUI5Button2.RightIconColor = "none"
	SDUI5Button2.Size = "xs"
	SDUI5Button2.Text = "XSmall"
	BANano.Await(SDUI5Button2.AddComponent)
	'
	SDUI5Button3.Initialize(Me, "SDUI5Button3", "SDUI5Button3")
	SDUI5Button3.ParentID = "SDUI5Row3"
	SDUI5Button3.BadgeSize = "none"
	SDUI5Button3.IconSize = ""
	'SDUI5Button3.Image = ""
	'SDUI5Button3.ImageHeight = ""
	'SDUI5Button3.ImageWidth = ""
	SDUI5Button3.LeftIconColor = "none"
	SDUI5Button3.RightIconColor = "none"
	SDUI5Button3.Size = "sm"
	SDUI5Button3.Text = "Small"
	BANano.Await(SDUI5Button3.AddComponent)
	'
	SDUI5Button4.Initialize(Me, "SDUI5Button4", "SDUI5Button4")
	SDUI5Button4.ParentID = "SDUI5Row3"
	SDUI5Button4.BadgeSize = "none"
	SDUI5Button4.IconSize = ""
	'SDUI5Button4.Image = ""
	'SDUI5Button4.ImageHeight = ""
	'SDUI5Button4.ImageWidth = ""
	SDUI5Button4.LeftIconColor = "none"
	SDUI5Button4.RightIconColor = "none"
	SDUI5Button4.Size = "none"
	SDUI5Button4.Text = "Medium"
	BANano.Await(SDUI5Button4.AddComponent)
	'
	SDUI5Button5.Initialize(Me, "SDUI5Button5", "SDUI5Button5")
	SDUI5Button5.ParentID = "SDUI5Row3"
	SDUI5Button5.BadgeSize = "none"
	SDUI5Button5.IconSize = ""
	'SDUI5Button5.Image = ""
	'SDUI5Button5.ImageHeight = ""
	'SDUI5Button5.ImageWidth = ""
	SDUI5Button5.LeftIconColor = "none"
	SDUI5Button5.RightIconColor = "none"
	SDUI5Button5.Size = "lg"
	SDUI5Button5.Text = "Large"
	BANano.Await(SDUI5Button5.AddComponent)
	'
	SDUI5Button8.Initialize(Me, "SDUI5Button8", "SDUI5Button8")
	SDUI5Button8.ParentID = "SDUI5Row3"
	SDUI5Button8.BadgeSize = "none"
	SDUI5Button8.Color = "primary"
	SDUI5Button8.IconSize = ""
	'SDUI5Button8.Image = ""
	'SDUI5Button8.ImageHeight = ""
	'SDUI5Button8.ImageWidth = ""
	SDUI5Button8.LeftIconColor = "none"
	SDUI5Button8.RightIconColor = "none"
	SDUI5Button8.Size = "none"
	SDUI5Button8.Text = "Primary"
	BANano.Await(SDUI5Button8.AddComponent)
	'
	SDUI5Button7.Initialize(Me, "SDUI5Button7", "SDUI5Button7")
	SDUI5Button7.ParentID = "SDUI5Row3"
	SDUI5Button7.BadgeSize = "none"
	SDUI5Button7.IconSize = ""
	'SDUI5Button7.Image = ""
	'SDUI5Button7.ImageHeight = ""
	'SDUI5Button7.ImageWidth = ""
	SDUI5Button7.LeftIconColor = "none"
	SDUI5Button7.RightIconColor = "none"
	SDUI5Button7.Size = "xs"
	SDUI5Button7.SizeLarge = "lg"
	SDUI5Button7.SizeMedium = "md"
	SDUI5Button7.SizeSmall = "sm"
	SDUI5Button7.SizeXLarge = "xl"
	SDUI5Button7.Text = "Responsive"
	BANano.Await(SDUI5Button7.AddComponent)
	'
	SDUI5Button6.Initialize(Me, "SDUI5Button6", "SDUI5Button6")
	SDUI5Button6.ParentID = "SDUI5Row3"
	SDUI5Button6.BadgeSize = "none"
	SDUI5Button6.IconSize = ""
	'SDUI5Button6.Image = ""
	'SDUI5Button6.ImageHeight = ""
	'SDUI5Button6.ImageWidth = ""
	SDUI5Button6.LeftIconColor = "none"
	SDUI5Button6.RightIconColor = "none"
	SDUI5Button6.Size = "xl"
	SDUI5Button6.Text = "XLarge"
	BANano.Await(SDUI5Button6.AddComponent)
	'
	SDUI5Button36.Initialize(Me, "SDUI5Button36", "SDUI5Button36")
	SDUI5Button36.ParentID = "SDUI5Row3"
	SDUI5Button36.BadgeSize = "none"
	SDUI5Button36.IconSize = "32px"
	'SDUI5Button36.Image = ""
	'SDUI5Button36.ImageHeight = ""
	'SDUI5Button36.ImageWidth = ""
	SDUI5Button36.LeftIcon = "./assets/bakery-breakfast-dessert-svgrepo-com.svg"
	SDUI5Button36.LeftIconColor = "red"
	SDUI5Button36.RightIconColor = "none"
	SDUI5Button36.Size = "none"
	SDUI5Button36.Text = "Left Icon"
	BANano.Await(SDUI5Button36.AddComponent)
	'
	SDUI5Button37.Initialize(Me, "SDUI5Button37", "SDUI5Button37")
	SDUI5Button37.ParentID = "SDUI5Row3"
	SDUI5Button37.BadgeSize = "none"
	SDUI5Button37.IconSize = "32px"
	'SDUI5Button37.Image = ""
	'SDUI5Button37.ImageHeight = ""
	'SDUI5Button37.ImageWidth = ""
	SDUI5Button37.LeftIconColor = "none"
	SDUI5Button37.RightIcon = "./assets/bakery-breakfast-dessert-svgrepo-com.svg"
	SDUI5Button37.RightIconColor = "blue"
	SDUI5Button37.Size = "none"
	SDUI5Button37.Text = "Right Icon"
	BANano.Await(SDUI5Button37.AddComponent)
	pgIndex.UpdateTitle("SDUI5Button")
End Sub


Private Sub SDUI5Button9_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button9_Click")
End Sub

Private Sub SDUI5Button8_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button8_Click")
End Sub

Private Sub SDUI5Button7_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button7_Click")
End Sub

Private Sub SDUI5Button6_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button6_Click")
End Sub

Private Sub SDUI5Button5_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button5_Click")
End Sub

Private Sub SDUI5Button4_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button4_Click")
End Sub

Private Sub SDUI5Button33_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button33_Click")
End Sub

Private Sub SDUI5Button32_Click (e As BANanoEvent)
	e.PreventDefault
	Dim isLoading As Boolean = Not(SDUI5Button32.Loading)
	SDUI5Button32.Loading = isLoading
	app.ShowToastInfo("SDUI5Button32_Click")
End Sub

Private Sub SDUI5Button31_Click (e As BANanoEvent)
	e.PreventDefault
	Dim isLoading As Boolean = Not(SDUI5Button31.Loading)
	SDUI5Button31.Loading = isLoading
	app.ShowToastInfo("SDUI5Button31_Click")
End Sub

Private Sub SDUI5Button3_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button3_Click")
End Sub

Private Sub SDUI5Button29_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button29_Click")
End Sub

Private Sub SDUI5Button28_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button28_Click")
End Sub

Private Sub SDUI5Button27_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button27_Click")
End Sub

Private Sub SDUI5Button26_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button26_Click")
End Sub

Private Sub SDUI5Button25_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button25_Click")
End Sub

Private Sub SDUI5Button24_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button24_Click")
End Sub

Private Sub SDUI5Button23_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button23_Click")
End Sub

Private Sub SDUI5Button22_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button22_Click")
End Sub

Private Sub SDUI5Button21_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button21_Click")
End Sub

Private Sub SDUI5Button20_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button20_Click")
End Sub

Private Sub SDUI5Button2_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button2_Click")
End Sub

Private Sub SDUI5Button19_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button19_Click")
End Sub

Private Sub SDUI5Button18_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button18_Click")
End Sub

Private Sub SDUI5Button17_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button17_Click")
End Sub

Private Sub SDUI5Button16_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button16_Click")
End Sub

Private Sub SDUI5Button15_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button15_Click")
End Sub

Private Sub SDUI5Button14_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button14_Click")
End Sub

Private Sub SDUI5Button13_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button13_Click")
End Sub

Private Sub SDUI5Button12_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button12_Click")
End Sub

Private Sub SDUI5Button11_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button11_Click")
End Sub

Private Sub SDUI5Button10_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button10_Click")
End Sub

Private Sub SDUI5Button1_Click (e As BANanoEvent)
	e.PreventDefault
	app.ShowToastInfo("SDUI5Button1_Click")
End Sub

Private Sub SDUI5Button30_Click (e As BANanoEvent)
	e.PreventDefault
	Dim isLoading As Boolean = Not(SDUI5Button30.Loading)
	SDUI5Button30.Loading = isLoading
	app.ShowToastInfo("SDUI5Button30_Click")
End Sub

