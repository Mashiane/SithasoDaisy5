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
	Private mainRow As SDUI5Row		'ignore
	
	' Card 1: Basic & Force Open
	Private cardBasic As SDUI5Card		'ignore
	Private ttBasic As SDUI5ToolTip		'ignore
	Private btnBasic As SDUI5Button		'ignore
	Private ttOpen As SDUI5ToolTip		'ignore
	Private btnOpen As SDUI5Button		'ignore
	
	' Card 2: Placements (Directions)
	Private cardPlacements As SDUI5Card		'ignore
	Private ttTop As SDUI5ToolTip		'ignore
	Private btnTop As SDUI5Button		'ignore
	Private ttBottom As SDUI5ToolTip		'ignore
	Private btnBottom As SDUI5Button		'ignore
	Private ttLeft As SDUI5ToolTip		'ignore
	Private btnLeft As SDUI5Button		'ignore
	Private ttRight As SDUI5ToolTip		'ignore
	Private btnRight As SDUI5Button		'ignore
	
	' Card 3: Alignments (DaisyUI 5)
	Private cardAlignments As SDUI5Card		'ignore
	Private ttTopStart As SDUI5ToolTip		'ignore
	Private btnTopStart As SDUI5Button		'ignore
	Private ttTopCenter As SDUI5ToolTip		'ignore
	Private btnTopCenter As SDUI5Button		'ignore
	Private ttTopEnd As SDUI5ToolTip		'ignore
	Private btnTopEnd As SDUI5Button		'ignore
	Private ttBottomStart As SDUI5ToolTip		'ignore
	Private btnBottomStart As SDUI5Button		'ignore
	Private ttBottomCenter As SDUI5ToolTip		'ignore
	Private btnBottomCenter As SDUI5Button		'ignore
	Private ttBottomEnd As SDUI5ToolTip		'ignore
	Private btnBottomEnd As SDUI5Button		'ignore
	
	' Card 4: Colors
	Private cardColors As SDUI5Card		'ignore
	Private ttNeutral As SDUI5ToolTip		'ignore
	Private btnNeutral As SDUI5Button		'ignore
	Private ttPrimary As SDUI5ToolTip		'ignore
	Private btnPrimary As SDUI5Button		'ignore
	Private ttSecondary As SDUI5ToolTip		'ignore
	Private btnSecondary As SDUI5Button		'ignore
	Private ttAccent As SDUI5ToolTip		'ignore
	Private btnAccent As SDUI5Button		'ignore
	Private ttInfo As SDUI5ToolTip		'ignore
	Private btnInfo As SDUI5Button		'ignore
	Private ttSuccess As SDUI5ToolTip		'ignore
	Private btnSuccess As SDUI5Button		'ignore
	Private ttWarning As SDUI5ToolTip		'ignore
	Private btnWarning As SDUI5Button		'ignore
	Private ttError As SDUI5ToolTip		'ignore
	Private btnError As SDUI5Button		'ignore
	
	' Card 5: Rich Custom HTML Content (.tooltip-content) (DaisyUI 5)
	Private cardRich As SDUI5Card		'ignore
	Private ttRichUser As SDUI5ToolTip		'ignore
	Private btnRichUser As SDUI5Button		'ignore
	Private ttRichAction As SDUI5ToolTip		'ignore
	Private btnRichAction As SDUI5Button		'ignore
	
	' Card 6: Tooltips on Other Elements
	Private cardElements As SDUI5Card		'ignore
	Private ttBadge As SDUI5ToolTip		'ignore
	Private badgeElement As SDUI5Badge		'ignore
	Private ttIconBtn As SDUI5ToolTip		'ignore
	Private iconBtn As SDUI5Button		'ignore
	Private ttAvatar As SDUI5ToolTip		'ignore
	Private avatarElement As SDUI5Avatar		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	
	' Main Container
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	SDUI5Container1.Classes = "mx-auto p-4 space-y-6"
	BANano.Await(SDUI5Container1.AddComponent)
	
	' Main Grid Row for Cards (2 columns on md/lg, 1 on mobile)
	mainRow.Initialize(Me, "mainRow", "mainRow")
	mainRow.ParentID = "SDUI5Container1"
	mainRow.GridCols = "1"
	mainRow.GridColsMd = "2"
	mainRow.Gap = "6"
	BANano.Await(mainRow.AddComponent)
	
	' ==========================================================
	' CARD 1: Basic & Force Open
	' ==========================================================
	cardBasic.Initialize(Me, "cardBasic", "cardBasic")
	cardBasic.ParentID = "mainRow"
	cardBasic.Title = "Basic & Force Open"
	cardBasic.ImageVisible = False
	cardBasic.Border = True
	cardBasic.Width = "full"
	cardBasic.ContentClasses = "flex flex-wrap gap-8 items-center p-6"
	cardBasic.Shadow = "sm"
	cardBasic.Content = ""
	BANano.Await(cardBasic.AddComponent)
	
	' Basic hover
	ttBasic.Initialize(Me, "ttBasic", "ttBasic")
	ttBasic.ParentID = "cardBasic_content"
	ttBasic.Tip = "Hover to view tooltip"
	ttBasic.Position = "top"
	ttBasic.Color = "none"
	BANano.Await(ttBasic.AddComponent)
	
	btnBasic.Initialize(Me, "btnBasic", "btnBasic")
	btnBasic.ParentID = "ttBasic"
	btnBasic.Text = "Hover Me"
	btnBasic.Color = "primary"
	BANano.Await(btnBasic.AddComponent)
	
	' Force Open (tooltip-open)
	ttOpen.Initialize(Me, "ttOpen", "ttOpen")
	ttOpen.ParentID = "cardBasic_content"
	ttOpen.Tip = "Always visible tooltip"
	ttOpen.Position = "top"
	ttOpen.Open = True
	ttOpen.Color = "secondary"
	BANano.Await(ttOpen.AddComponent)
	
	btnOpen.Initialize(Me, "btnOpen", "btnOpen")
	btnOpen.ParentID = "ttOpen"
	btnOpen.Text = "Force Open"
	btnOpen.Color = "secondary"
	BANano.Await(btnOpen.AddComponent)
	
	' ==========================================================
	' CARD 2: Directions / Placements
	' ==========================================================
	cardPlacements.Initialize(Me, "cardPlacements", "cardPlacements")
	cardPlacements.ParentID = "mainRow"
	cardPlacements.Title = "Directions / Placements"
	cardPlacements.ImageVisible = False
	cardPlacements.Border = True
	cardPlacements.Width = "full"
	cardPlacements.ContentClasses = "flex flex-wrap gap-8 items-center p-6"
	cardPlacements.Shadow = "sm"
	cardPlacements.Content = ""
	BANano.Await(cardPlacements.AddComponent)
	
	' Top
	ttTop.Initialize(Me, "ttTop", "ttTop")
	ttTop.ParentID = "cardPlacements_content"
	ttTop.Tip = "Tooltip on Top"
	ttTop.Position = "top"
	BANano.Await(ttTop.AddComponent)
	
	btnTop.Initialize(Me, "btnTop", "btnTop")
	btnTop.ParentID = "ttTop"
	btnTop.Text = "Top"
	btnTop.Outline = True
	btnTop.Color = "neutral"
	BANano.Await(btnTop.AddComponent)
	
	' Bottom
	ttBottom.Initialize(Me, "ttBottom", "ttBottom")
	ttBottom.ParentID = "cardPlacements_content"
	ttBottom.Tip = "Tooltip on Bottom"
	ttBottom.Position = "bottom"
	BANano.Await(ttBottom.AddComponent)
	
	btnBottom.Initialize(Me, "btnBottom", "btnBottom")
	btnBottom.ParentID = "ttBottom"
	btnBottom.Text = "Bottom"
	btnBottom.Outline = True
	btnBottom.Color = "neutral"
	BANano.Await(btnBottom.AddComponent)
	
	' Left
	ttLeft.Initialize(Me, "ttLeft", "ttLeft")
	ttLeft.ParentID = "cardPlacements_content"
	ttLeft.Tip = "Tooltip on Left"
	ttLeft.Position = "left"
	BANano.Await(ttLeft.AddComponent)
	
	btnLeft.Initialize(Me, "btnLeft", "btnLeft")
	btnLeft.ParentID = "ttLeft"
	btnLeft.Text = "Left"
	btnLeft.Outline = True
	btnLeft.Color = "neutral"
	BANano.Await(btnLeft.AddComponent)
	
	' Right
	ttRight.Initialize(Me, "ttRight", "ttRight")
	ttRight.ParentID = "cardPlacements_content"
	ttRight.Tip = "Tooltip on Right"
	ttRight.Position = "right"
	BANano.Await(ttRight.AddComponent)
	
	btnRight.Initialize(Me, "btnRight", "btnRight")
	btnRight.ParentID = "ttRight"
	btnRight.Text = "Right"
	btnRight.Outline = True
	btnRight.Color = "neutral"
	BANano.Await(btnRight.AddComponent)
	
	' ==========================================================
	' CARD 3: Alignments (DaisyUI 5)
	' ==========================================================
	cardAlignments.Initialize(Me, "cardAlignments", "cardAlignments")
	cardAlignments.ParentID = "mainRow"
	cardAlignments.Title = "Alignments (DaisyUI 5)"
	cardAlignments.ImageVisible = False
	cardAlignments.Border = True
	cardAlignments.Width = "full"
	cardAlignments.ContentClasses = "flex flex-wrap gap-8 items-center p-6"
	cardAlignments.Shadow = "sm"
	cardAlignments.Content = ""
	BANano.Await(cardAlignments.AddComponent)
	
	' Top Start
	ttTopStart.Initialize(Me, "ttTopStart", "ttTopStart")
	ttTopStart.ParentID = "cardAlignments_content"
	ttTopStart.Tip = "Top Start alignment"
	ttTopStart.Position = "top"
	ttTopStart.Alignment = "start"
	BANano.Await(ttTopStart.AddComponent)
	
	btnTopStart.Initialize(Me, "btnTopStart", "btnTopStart")
	btnTopStart.ParentID = "ttTopStart"
	btnTopStart.Text = "Top Start"
	btnTopStart.Color = "accent"
	BANano.Await(btnTopStart.AddComponent)
	
	' Top Center
	ttTopCenter.Initialize(Me, "ttTopCenter", "ttTopCenter")
	ttTopCenter.ParentID = "cardAlignments_content"
	ttTopCenter.Tip = "Top Center alignment"
	ttTopCenter.Position = "top"
	ttTopCenter.Alignment = "center"
	BANano.Await(ttTopCenter.AddComponent)
	
	btnTopCenter.Initialize(Me, "btnTopCenter", "btnTopCenter")
	btnTopCenter.ParentID = "ttTopCenter"
	btnTopCenter.Text = "Top Center"
	btnTopCenter.Color = "accent"
	BANano.Await(btnTopCenter.AddComponent)
	
	' Top End
	ttTopEnd.Initialize(Me, "ttTopEnd", "ttTopEnd")
	ttTopEnd.ParentID = "cardAlignments_content"
	ttTopEnd.Tip = "Top End alignment"
	ttTopEnd.Position = "top"
	ttTopEnd.Alignment = "end"
	BANano.Await(ttTopEnd.AddComponent)
	
	btnTopEnd.Initialize(Me, "btnTopEnd", "btnTopEnd")
	btnTopEnd.ParentID = "ttTopEnd"
	btnTopEnd.Text = "Top End"
	btnTopEnd.Color = "accent"
	BANano.Await(btnTopEnd.AddComponent)
	
	' Bottom Start
	ttBottomStart.Initialize(Me, "ttBottomStart", "ttBottomStart")
	ttBottomStart.ParentID = "cardAlignments_content"
	ttBottomStart.Tip = "Bottom Start alignment"
	ttBottomStart.Position = "bottom"
	ttBottomStart.Alignment = "start"
	BANano.Await(ttBottomStart.AddComponent)
	
	btnBottomStart.Initialize(Me, "btnBottomStart", "btnBottomStart")
	btnBottomStart.ParentID = "ttBottomStart"
	btnBottomStart.Text = "Bottom Start"
	btnBottomStart.Color = "accent"
	BANano.Await(btnBottomStart.AddComponent)
	
	' Bottom Center
	ttBottomCenter.Initialize(Me, "ttBottomCenter", "ttBottomCenter")
	ttBottomCenter.ParentID = "cardAlignments_content"
	ttBottomCenter.Tip = "Bottom Center alignment"
	ttBottomCenter.Position = "bottom"
	ttBottomCenter.Alignment = "center"
	BANano.Await(ttBottomCenter.AddComponent)
	
	btnBottomCenter.Initialize(Me, "btnBottomCenter", "btnBottomCenter")
	btnBottomCenter.ParentID = "ttBottomCenter"
	btnBottomCenter.Text = "Bottom Center"
	btnBottomCenter.Color = "accent"
	BANano.Await(btnBottomCenter.AddComponent)
	
	' Bottom End
	ttBottomEnd.Initialize(Me, "ttBottomEnd", "ttBottomEnd")
	ttBottomEnd.ParentID = "cardAlignments_content"
	ttBottomEnd.Tip = "Bottom End alignment"
	ttBottomEnd.Position = "bottom"
	ttBottomEnd.Alignment = "end"
	BANano.Await(ttBottomEnd.AddComponent)
	
	btnBottomEnd.Initialize(Me, "btnBottomEnd", "btnBottomEnd")
	btnBottomEnd.ParentID = "ttBottomEnd"
	btnBottomEnd.Text = "Bottom End"
	btnBottomEnd.Color = "accent"
	BANano.Await(btnBottomEnd.AddComponent)
	
	' ==========================================================
	' CARD 4: Colors
	' ==========================================================
	cardColors.Initialize(Me, "cardColors", "cardColors")
	cardColors.ParentID = "mainRow"
	cardColors.Title = "Brand & Feedback Colors"
	cardColors.ImageVisible = False
	cardColors.Border = True
	cardColors.Width = "full"
	cardColors.ContentClasses = "flex flex-wrap gap-8 items-center p-6"
	cardColors.Shadow = "sm"
	cardColors.Content = ""
	BANano.Await(cardColors.AddComponent)
	
	' Neutral (Default)
	ttNeutral.Initialize(Me, "ttNeutral", "ttNeutral")
	ttNeutral.ParentID = "cardColors_content"
	ttNeutral.Tip = "Neutral tooltip"
	ttNeutral.Color = "none"
	ttNeutral.Position = "top"
	BANano.Await(ttNeutral.AddComponent)
	
	btnNeutral.Initialize(Me, "btnNeutral", "btnNeutral")
	btnNeutral.ParentID = "ttNeutral"
	btnNeutral.Text = "Neutral"
	btnNeutral.Color = "neutral"
	BANano.Await(btnNeutral.AddComponent)
	
	' Primary
	ttPrimary.Initialize(Me, "ttPrimary", "ttPrimary")
	ttPrimary.ParentID = "cardColors_content"
	ttPrimary.Tip = "Primary tooltip"
	ttPrimary.Color = "primary"
	ttPrimary.Position = "top"
	BANano.Await(ttPrimary.AddComponent)
	
	btnPrimary.Initialize(Me, "btnPrimary", "btnPrimary")
	btnPrimary.ParentID = "ttPrimary"
	btnPrimary.Text = "Primary"
	btnPrimary.Color = "primary"
	BANano.Await(btnPrimary.AddComponent)
	
	' Secondary
	ttSecondary.Initialize(Me, "ttSecondary", "ttSecondary")
	ttSecondary.ParentID = "cardColors_content"
	ttSecondary.Tip = "Secondary tooltip"
	ttSecondary.Color = "secondary"
	ttSecondary.Position = "top"
	BANano.Await(ttSecondary.AddComponent)
	
	btnSecondary.Initialize(Me, "btnSecondary", "btnSecondary")
	btnSecondary.ParentID = "ttSecondary"
	btnSecondary.Text = "Secondary"
	btnSecondary.Color = "secondary"
	BANano.Await(btnSecondary.AddComponent)
	
	' Accent
	ttAccent.Initialize(Me, "ttAccent", "ttAccent")
	ttAccent.ParentID = "cardColors_content"
	ttAccent.Tip = "Accent tooltip"
	ttAccent.Color = "accent"
	ttAccent.Position = "top"
	BANano.Await(ttAccent.AddComponent)
	
	btnAccent.Initialize(Me, "btnAccent", "btnAccent")
	btnAccent.ParentID = "ttAccent"
	btnAccent.Text = "Accent"
	btnAccent.Color = "accent"
	BANano.Await(btnAccent.AddComponent)
	
	' Info
	ttInfo.Initialize(Me, "ttInfo", "ttInfo")
	ttInfo.ParentID = "cardColors_content"
	ttInfo.Tip = "Info tooltip"
	ttInfo.Color = "info"
	ttInfo.Position = "bottom"
	BANano.Await(ttInfo.AddComponent)
	
	btnInfo.Initialize(Me, "btnInfo", "btnInfo")
	btnInfo.ParentID = "ttInfo"
	btnInfo.Text = "Info"
	btnInfo.Color = "info"
	BANano.Await(btnInfo.AddComponent)
	
	' Success
	ttSuccess.Initialize(Me, "ttSuccess", "ttSuccess")
	ttSuccess.ParentID = "cardColors_content"
	ttSuccess.Tip = "Success tooltip"
	ttSuccess.Color = "success"
	ttSuccess.Position = "bottom"
	BANano.Await(ttSuccess.AddComponent)
	
	btnSuccess.Initialize(Me, "btnSuccess", "btnSuccess")
	btnSuccess.ParentID = "ttSuccess"
	btnSuccess.Text = "Success"
	btnSuccess.Color = "success"
	BANano.Await(btnSuccess.AddComponent)
	
	' Warning
	ttWarning.Initialize(Me, "ttWarning", "ttWarning")
	ttWarning.ParentID = "cardColors_content"
	ttWarning.Tip = "Warning tooltip"
	ttWarning.Color = "warning"
	ttWarning.Position = "bottom"
	BANano.Await(ttWarning.AddComponent)
	
	btnWarning.Initialize(Me, "btnWarning", "btnWarning")
	btnWarning.ParentID = "ttWarning"
	btnWarning.Text = "Warning"
	btnWarning.Color = "warning"
	BANano.Await(btnWarning.AddComponent)
	
	' Error
	ttError.Initialize(Me, "ttError", "ttError")
	ttError.ParentID = "cardColors_content"
	ttError.Tip = "Error tooltip"
	ttError.Color = "error"
	ttError.Position = "bottom"
	BANano.Await(ttError.AddComponent)
	
	btnError.Initialize(Me, "btnError", "btnError")
	btnError.ParentID = "ttError"
	btnError.Text = "Error"
	btnError.Color = "error"
	BANano.Await(btnError.AddComponent)
	
	' ==========================================================
	' CARD 5: Rich Custom Content (.tooltip-content) (DaisyUI 5)
	' ==========================================================
	cardRich.Initialize(Me, "cardRich", "cardRich")
	cardRich.ParentID = "mainRow"
	cardRich.Title = "Rich Custom Content (.tooltip-content)"
	cardRich.ImageVisible = False
	cardRich.Border = True
	cardRich.Width = "full"
	cardRich.ContentClasses = "flex flex-wrap gap-12 items-center p-6"
	cardRich.Shadow = "sm"
	cardRich.Content = ""
	BANano.Await(cardRich.AddComponent)
	
	' Rich Profile Card Tooltip
	ttRichUser.Initialize(Me, "ttRichUser", "ttRichUser")
	ttRichUser.ParentID = "cardRich_content"
	ttRichUser.HasContent = True
	ttRichUser.Position = "top"
	ttRichUser.Color = "neutral"
	BANano.Await(ttRichUser.AddComponent)
	
	btnRichUser.Initialize(Me, "btnRichUser", "btnRichUser")
	btnRichUser.ParentID = "ttRichUser"
	btnRichUser.Text = "User Profile"
	btnRichUser.Color = "primary"
	BANano.Await(btnRichUser.AddComponent)
	
	Dim profileHtml As String = $"<div class="p-2 flex flex-col gap-1 text-left min-w-44">
		<div class="flex items-center gap-2">
			<span class="font-bold text-sm">Anele Mbanga</span>
			<span class="badge badge-success badge-xs">Admin</span>
		</div>
		<span class="text-xs opacity-75">Senior UI Architect</span>
		<span class="text-xs text-primary-content/80 mt-1">DaisyUI 5 Specialist</span>
	</div>"$
	ttRichUser.SetContent(profileHtml)
	
	' Rich Action Shortcut Tooltip
	ttRichAction.Initialize(Me, "ttRichAction", "ttRichAction")
	ttRichAction.ParentID = "cardRich_content"
	ttRichAction.HasContent = True
	ttRichAction.Position = "bottom"
	ttRichAction.Color = "neutral"
	BANano.Await(ttRichAction.AddComponent)
	
	btnRichAction.Initialize(Me, "btnRichAction", "btnRichAction")
	btnRichAction.ParentID = "ttRichAction"
	btnRichAction.Text = "Quick Save"
	btnRichAction.Color = "secondary"
	BANano.Await(btnRichAction.AddComponent)
	
	Dim actionHtml As String = $"<div class="p-1 flex items-center gap-2 text-xs">
		<span>Save document to cloud</span>
		<kbd class="kbd kbd-xs bg-base-100 text-base-content">Ctrl + S</kbd>
	</div>"$
	ttRichAction.SetContent(actionHtml)
	
	' ==========================================================
	' CARD 6: Tooltips on Other Elements
	' ==========================================================
	cardElements.Initialize(Me, "cardElements", "cardElements")
	cardElements.ParentID = "mainRow"
	cardElements.Title = "Tooltips on Other Elements"
	cardElements.ImageVisible = False
	cardElements.Border = True
	cardElements.Width = "full"
	cardElements.ContentClasses = "flex flex-wrap gap-8 items-center p-6"
	cardElements.Shadow = "sm"
	cardElements.Content = ""
	BANano.Await(cardElements.AddComponent)
	
	' Tooltip on Badge
	ttBadge.Initialize(Me, "ttBadge", "ttBadge")
	ttBadge.ParentID = "cardElements_content"
	ttBadge.Tip = "System Status: All services healthy"
	ttBadge.Position = "top"
	ttBadge.Color = "info"
	BANano.Await(ttBadge.AddComponent)
	
	badgeElement.Initialize(Me, "badgeElement", "badgeElement")
	badgeElement.ParentID = "ttBadge"
	badgeElement.Text = "Status: Online"
	badgeElement.Color = "info"
	BANano.Await(badgeElement.AddComponent)
	
	' Tooltip on Icon Button
	ttIconBtn.Initialize(Me, "ttIconBtn", "ttIconBtn")
	ttIconBtn.ParentID = "cardElements_content"
	ttIconBtn.Tip = "Search repository"
	ttIconBtn.Position = "top"
	ttIconBtn.Color = "primary"
	BANano.Await(ttIconBtn.AddComponent)
	
	iconBtn.Initialize(Me, "iconBtn", "iconBtn")
	iconBtn.ParentID = "ttIconBtn"
	iconBtn.Shape = "circle"
	iconBtn.LeftIcon = "./assets/search.svg"
	iconBtn.Color = "primary"
	BANano.Await(iconBtn.AddComponent)
	
	' Tooltip on Avatar
	ttAvatar.Initialize(Me, "ttAvatar", "ttAvatar")
	ttAvatar.ParentID = "cardElements_content"
	ttAvatar.Tip = "Profile: Mashy"
	ttAvatar.Position = "bottom"
	ttAvatar.Color = "success"
	BANano.Await(ttAvatar.AddComponent)
	
	avatarElement.Initialize(Me, "avatarElement", "avatarElement")
	avatarElement.ParentID = "ttAvatar"
	avatarElement.Image = "./assets/mashy.jpg"
	avatarElement.Mask = "circle"
	BANano.Await(avatarElement.AddComponent)
	
	pgIndex.UpdateTitle("SDUI5ToolTip")
End Sub
