B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private cont As SDUI5Container		'ignore
	Private row1 As SDUI5Row		'ignore
	Private col1 As SDUI5Column		'ignore
	Private col2 As SDUI5Column		'ignore
	' Color Schemes
	Private nosPrimary As SDUI5NoUISlider		'ignore
	Private nosSecondary As SDUI5NoUISlider		'ignore
	Private nosAccent As SDUI5NoUISlider		'ignore
	Private nosSuccess As SDUI5NoUISlider		'ignore
	Private nosError As SDUI5NoUISlider		'ignore
	Private nosWarning As SDUI5NoUISlider		'ignore
	Private nosNeutral As SDUI5NoUISlider		'ignore
	Private nosInfo As SDUI5NoUISlider		'ignore
	' Sizes
	Private nosXS As SDUI5NoUISlider		'ignore
	Private nosSM As SDUI5NoUISlider		'ignore
	Private nosMD As SDUI5NoUISlider		'ignore
	Private nosLG As SDUI5NoUISlider		'ignore
	Private nosXL As SDUI5NoUISlider		'ignore
	' Stepped + Tooltips
	Private nosStepped As SDUI5NoUISlider		'ignore
	' Tooltip Colors
	Private nosTTPrimary As SDUI5NoUISlider	'ignore
	Private nosTTSecondary As SDUI5NoUISlider	'ignore
	Private nosTTAccent As SDUI5NoUISlider		'ignore
	Private nosTTNeutral As SDUI5NoUISlider	'ignore
	Private nosTTInfo As SDUI5NoUISlider		'ignore
	Private nosTTSuccess As SDUI5NoUISlider	'ignore
	Private nosTTWarning As SDUI5NoUISlider	'ignore
	Private nosTTError As SDUI5NoUISlider		'ignore
	' Disabled
	Private nosDisabled As SDUI5NoUISlider		'ignore
	' No Connect
	'Private nosNoConnect As SDUI5NoUISlider	'ignore
	' Custom Range + Pips
	'Private nosCustom As SDUI5NoUISlider		'ignore
	' Currency Formatting
	Private nosCurrency As SDUI5NoUISlider		'ignore
	' Advanced
	Private nosSnap As SDUI5NoUISlider		'ignore
	Private nosConstraints As SDUI5NoUISlider	'ignore
	'Private nosClickPips As SDUI5NoUISlider		'ignore
	' Legend type demos
	Private nosLegend1 As SDUI5NoUISlider		'ignore
	Private nosLegend2 As SDUI5NoUISlider		'ignore
	Private nosLegend3 As SDUI5NoUISlider		'ignore
	' Formatter demos
	Private nosFormattedValues As SDUI5NoUISlider	'ignore
	Private nosFormattedPips As SDUI5NoUISlider	'ignore
	Private nosTooltips As SDUI5NoUISlider		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	BANano.Await(app.UsesNoUISlider)
	'
	cont.Initialize(Me, "nosCont", "nosCont")
	cont.ParentID = app.PageView
	BANano.Await(cont.AddComponent)
	'
	row1.Initialize(Me, "nosRow", "nosRow")
	row1.ParentID = "nosCont"
	BANano.Await(row1.AddComponent)
	'
	col1.Initialize(Me, "nosCol1", "nosCol1")
	col1.ParentID = "nosRow"
	col1.SizeMd = "6"
	BANano.Await(col1.AddComponent)
	'
	col2.Initialize(Me, "nosCol2", "nosCol2")
	col2.ParentID = "nosRow"
	col2.SizeMd = "6"
	BANano.Await(col2.AddComponent)
	'
	' ===== COLUMN 1: Color Schemes (4) + Sizes (5) + Tooltip Colors (4) + Advanced (3) + Legend (1) + Formatter (1) = 18 =====

	' Primary (dual handle)
	nosPrimary.Initialize(Me, "nosPrimary", "nosPrimary")
	nosPrimary.ParentID = "nosCol1"
	nosPrimary.StartValues = "20,80"
	nosPrimary.RangeMin = "0"
	nosPrimary.RangeMax = "100"
	nosPrimary.Connect = "true"
	nosPrimary.Color = "primary"
	nosPrimary.Size = "md"
	nosPrimary.SliderType = "legend"
	nosPrimary.Label = "Primary"
	nosPrimary.Tooltips = False
	BANano.Await(nosPrimary.AddComponent)

	' Secondary
	nosSecondary.Initialize(Me, "nosSecondary", "nosSecondary")
	nosSecondary.ParentID = "nosCol1"
	nosSecondary.StartValues = "30,70"
	nosSecondary.RangeMin = "0"
	nosSecondary.RangeMax = "100"
	nosSecondary.Connect = "true"
	nosSecondary.Color = "secondary"
	nosSecondary.Size = "md"
	nosSecondary.SliderType = "legend"
	nosSecondary.Label = "Secondary"
	nosSecondary.Tooltips = False
	BANano.Await(nosSecondary.AddComponent)

	' Accent
	nosAccent.Initialize(Me, "nosAccent", "nosAccent")
	nosAccent.ParentID = "nosCol1"
	nosAccent.StartValues = "10,90"
	nosAccent.RangeMin = "0"
	nosAccent.RangeMax = "100"
	nosAccent.Connect = "true"
	nosAccent.Color = "accent"
	nosAccent.Size = "md"
	nosAccent.SliderType = "legend"
	nosAccent.Label = "Accent"
	nosAccent.Tooltips = False
	BANano.Await(nosAccent.AddComponent)

	' Success
	nosSuccess.Initialize(Me, "nosSuccess", "nosSuccess")
	nosSuccess.ParentID = "nosCol1"
	nosSuccess.StartValues = "40,60"
	nosSuccess.RangeMin = "0"
	nosSuccess.RangeMax = "100"
	nosSuccess.Connect = "true"
	nosSuccess.Color = "success"
	nosSuccess.Size = "md"
	nosSuccess.SliderType = "legend"
	nosSuccess.Label = "Success"
	nosSuccess.Tooltips = False
	BANano.Await(nosSuccess.AddComponent)

	' Error
	nosError.Initialize(Me, "nosError", "nosError")
	nosError.ParentID = "nosCol2"
	nosError.StartValues = "50,50"
	nosError.RangeMin = "0"
	nosError.RangeMax = "100"
	nosError.Connect = "true"
	nosError.Color = "error"
	nosError.Size = "md"
	nosError.SliderType = "legend"
	nosError.Label = "Error"
	nosError.Tooltips = False
	BANano.Await(nosError.AddComponent)

	' Warning
	nosWarning.Initialize(Me, "nosWarning", "nosWarning")
	nosWarning.ParentID = "nosCol2"
	nosWarning.StartValues = "25,75"
	nosWarning.RangeMin = "0"
	nosWarning.RangeMax = "100"
	nosWarning.Connect = "true"
	nosWarning.Color = "warning"
	nosWarning.Size = "md"
	nosWarning.SliderType = "legend"
	nosWarning.Label = "Warning"
	nosWarning.Tooltips = False
	BANano.Await(nosWarning.AddComponent)

	' Neutral
	nosNeutral.Initialize(Me, "nosNeutral", "nosNeutral")
	nosNeutral.ParentID = "nosCol2"
	nosNeutral.StartValues = "15,85"
	nosNeutral.RangeMin = "0"
	nosNeutral.RangeMax = "100"
	nosNeutral.Connect = "true"
	nosNeutral.Color = "neutral"
	nosNeutral.Size = "md"
	nosNeutral.SliderType = "legend"
	nosNeutral.Label = "Neutral"
	nosNeutral.Tooltips = False
	BANano.Await(nosNeutral.AddComponent)

	' Info
	nosInfo.Initialize(Me, "nosInfo", "nosInfo")
	nosInfo.ParentID = "nosCol2"
	nosInfo.StartValues = "35,65"
	nosInfo.RangeMin = "0"
	nosInfo.RangeMax = "100"
	nosInfo.Connect = "true"
	nosInfo.Color = "info"
	nosInfo.Size = "md"
	nosInfo.SliderType = "legend"
	nosInfo.Label = "Info"
	nosInfo.Tooltips = False
	BANano.Await(nosInfo.AddComponent)

	' ===== COLUMN 2: Color Schemes (4) + Tooltip Colors (4) + Special (1) + Pips (3) + Currency (1) + Legend (2) + Formatter (2) = 17 =====

	' XS
	nosXS.Initialize(Me, "nosXS", "nosXS")
	nosXS.ParentID = "nosCol1"
	nosXS.StartValues = "20,80"
	nosXS.RangeMin = "0"
	nosXS.RangeMax = "100"
	nosXS.Connect = "true"
	nosXS.Color = "primary"
	nosXS.Size = "xs"
	nosXS.SliderType = "legend"
	nosXS.Label = "Extra Small (xs)"
	nosXS.Tooltips = False
	BANano.Await(nosXS.AddComponent)

	' SM
	nosSM.Initialize(Me, "nosSM", "nosSM")
	nosSM.ParentID = "nosCol1"
	nosSM.StartValues = "20,80"
	nosSM.RangeMin = "0"
	nosSM.RangeMax = "100"
	nosSM.Connect = "true"
	nosSM.Color = "primary"
	nosSM.Size = "sm"
	nosSM.SliderType = "legend"
	nosSM.Label = "Small (sm)"
	nosSM.Tooltips = False
	BANano.Await(nosSM.AddComponent)

	' MD (default)
	nosMD.Initialize(Me, "nosMD", "nosMD")
	nosMD.ParentID = "nosCol1"
	nosMD.StartValues = "20,80"
	nosMD.RangeMin = "0"
	nosMD.RangeMax = "100"
	nosMD.Connect = "true"
	nosMD.Color = "primary"
	nosMD.Size = "md"
	nosMD.SliderType = "legend"
	nosMD.Label = "Medium (md)"
	nosMD.Tooltips = False
	BANano.Await(nosMD.AddComponent)

	' LG
	nosLG.Initialize(Me, "nosLG", "nosLG")
	nosLG.ParentID = "nosCol1"
	nosLG.StartValues = "20,80"
	nosLG.RangeMin = "0"
	nosLG.RangeMax = "100"
	nosLG.Connect = "true"
	nosLG.Color = "primary"
	nosLG.Size = "lg"
	nosLG.SliderType = "legend"
	nosLG.Label = "Large (lg)"
	nosLG.Tooltips = False
	BANano.Await(nosLG.AddComponent)

	' XL
	nosXL.Initialize(Me, "nosXL", "nosXL")
	nosXL.ParentID = "nosCol1"
	nosXL.StartValues = "20,80"
	nosXL.RangeMin = "0"
	nosXL.RangeMax = "100"
	nosXL.Connect = "true"
	nosXL.Color = "primary"
	nosXL.Size = "xl"
	nosXL.SliderType = "legend"
	nosXL.Label = "Extra Large (xl)"
	nosXL.Tooltips = False
	BANano.Await(nosXL.AddComponent)

	' Stepped with Tooltips (step 5, margin 1)
	nosStepped.Initialize(Me, "nosStepped", "nosStepped")
	nosStepped.ParentID = "nosCol1"
	nosStepped.StartValues = "25,75"
	nosStepped.RangeMin = "0"
	nosStepped.RangeMax = "100"
	nosStepped.Connect = "true"
	nosStepped.StepValue = "5"
	nosStepped.Margin = "1"
	nosStepped.Color = "primary"
	nosStepped.Size = "sm"
	nosStepped.TooltipColor = "neutral"
	nosStepped.SliderType = "legend"
	nosStepped.Label = "Stepped (step 5)"
	nosStepped.Tooltips = False
	BANano.Await(nosStepped.AddComponent)

	' ===== Tooltip Colors =====

	nosTTPrimary.Initialize(Me, "nosTTPrimary", "nosTTPrimary")
	nosTTPrimary.ParentID = "nosCol1"
	nosTTPrimary.StartValues = "20,80"
	nosTTPrimary.RangeMin = "0"
	nosTTPrimary.RangeMax = "100"
	nosTTPrimary.Connect = "true"
	nosTTPrimary.Color = "primary"
	nosTTPrimary.Size = "sm"
	nosTTPrimary.Tooltips = False
	nosTTPrimary.TooltipColor = "primary"
	nosTTPrimary.SliderType = "legend"
	nosTTPrimary.Label = "Primary Tooltips"
	BANano.Await(nosTTPrimary.AddComponent)

	nosTTSecondary.Initialize(Me, "nosTTSecondary", "nosTTSecondary")
	nosTTSecondary.ParentID = "nosCol1"
	nosTTSecondary.StartValues = "30,70"
	nosTTSecondary.RangeMin = "0"
	nosTTSecondary.RangeMax = "100"
	nosTTSecondary.Connect = "true"
	nosTTSecondary.Color = "secondary"
	nosTTSecondary.Size = "sm"
	nosTTSecondary.Tooltips = False
	nosTTSecondary.TooltipColor = "secondary"
	nosTTSecondary.SliderType = "legend"
	nosTTSecondary.Label = "Secondary Tooltips"
	BANano.Await(nosTTSecondary.AddComponent)

	nosTTAccent.Initialize(Me, "nosTTAccent", "nosTTAccent")
	nosTTAccent.ParentID = "nosCol1"
	nosTTAccent.StartValues = "10,90"
	nosTTAccent.RangeMin = "0"
	nosTTAccent.RangeMax = "100"
	nosTTAccent.Connect = "true"
	nosTTAccent.Color = "accent"
	nosTTAccent.Size = "sm"
	nosTTAccent.Tooltips = False
	nosTTAccent.TooltipColor = "accent"
	nosTTAccent.SliderType = "legend"
	nosTTAccent.Label = "Accent Tooltips"
	BANano.Await(nosTTAccent.AddComponent)

	nosTTNeutral.Initialize(Me, "nosTTNeutral", "nosTTNeutral")
	nosTTNeutral.ParentID = "nosCol1"
	nosTTNeutral.StartValues = "15,85"
	nosTTNeutral.RangeMin = "0"
	nosTTNeutral.RangeMax = "100"
	nosTTNeutral.Connect = "true"
	nosTTNeutral.Color = "neutral"
	nosTTNeutral.Size = "sm"
	nosTTNeutral.Tooltips = False
	nosTTNeutral.TooltipColor = "neutral"
	nosTTNeutral.SliderType = "legend"
	nosTTNeutral.Label = "Neutral Tooltips"
	BANano.Await(nosTTNeutral.AddComponent)

	nosTTInfo.Initialize(Me, "nosTTInfo", "nosTTInfo")
	nosTTInfo.ParentID = "nosCol2"
	nosTTInfo.StartValues = "35,65"
	nosTTInfo.RangeMin = "0"
	nosTTInfo.RangeMax = "100"
	nosTTInfo.Connect = "true"
	nosTTInfo.Color = "info"
	nosTTInfo.Size = "sm"
	nosTTInfo.Tooltips = False
	nosTTInfo.TooltipColor = "info"
	nosTTInfo.SliderType = "legend"
	nosTTInfo.Label = "Info Tooltips"
	BANano.Await(nosTTInfo.AddComponent)

	nosTTSuccess.Initialize(Me, "nosTTSuccess", "nosTTSuccess")
	nosTTSuccess.ParentID = "nosCol2"
	nosTTSuccess.StartValues = "40,60"
	nosTTSuccess.RangeMin = "0"
	nosTTSuccess.RangeMax = "100"
	nosTTSuccess.Connect = "true"
	nosTTSuccess.Color = "success"
	nosTTSuccess.Size = "sm"
	nosTTSuccess.Tooltips = False
	nosTTSuccess.TooltipColor = "success"
	nosTTSuccess.SliderType = "legend"
	nosTTSuccess.Label = "Success Tooltips"
	BANano.Await(nosTTSuccess.AddComponent)

	nosTTWarning.Initialize(Me, "nosTTWarning", "nosTTWarning")
	nosTTWarning.ParentID = "nosCol2"
	nosTTWarning.StartValues = "25,75"
	nosTTWarning.RangeMin = "0"
	nosTTWarning.RangeMax = "100"
	nosTTWarning.Connect = "true"
	nosTTWarning.Color = "warning"
	nosTTWarning.Size = "sm"
	nosTTWarning.Tooltips = False
	nosTTWarning.TooltipColor = "warning"
	nosTTWarning.SliderType = "legend"
	nosTTWarning.Label = "Warning Tooltips"
	BANano.Await(nosTTWarning.AddComponent)

	nosTTError.Initialize(Me, "nosTTError", "nosTTError")
	nosTTError.ParentID = "nosCol2"
	nosTTError.StartValues = "50,50"
	nosTTError.RangeMin = "0"
	nosTTError.RangeMax = "100"
	nosTTError.Connect = "true"
	nosTTError.Color = "error"
	nosTTError.Size = "sm"
	nosTTError.Tooltips = False
	nosTTError.TooltipColor = "error"
	nosTTError.SliderType = "legend"
	nosTTError.Label = "Error Tooltips"
	BANano.Await(nosTTError.AddComponent)

	' ===== DISABLED =====
	nosDisabled.Initialize(Me, "nosDisabled", "nosDisabled")
	nosDisabled.ParentID = "nosCol2"
	nosDisabled.StartValues = "20,80"
	nosDisabled.RangeMin = "0"
	nosDisabled.RangeMax = "100"
	nosDisabled.Connect = "true"
	nosDisabled.Color = "primary"
	nosDisabled.Size = "sm"
	nosDisabled.Enabled = False
	nosDisabled.SliderType = "legend"
	nosDisabled.Label = "Disabled"
	nosDisabled.BackgroundColor = "base-200"
	BANano.Await(nosDisabled.AddComponent)

'	' ===== NO CONNECT =====
'	nosNoConnect.Initialize(Me, "nosNoConnect", "nosNoConnect")
'	nosNoConnect.ParentID = "nosCol2"
'	nosNoConnect.StartValues = "110,430"
'	nosNoConnect.RangeMin = "0"
'	nosNoConnect.RangeMax = "500"
'	nosNoConnect.Connect = "false"
'	nosNoConnect.Color = "primary"
'	nosNoConnect.Size = "sm"
'	nosNoConnect.SliderType = "legend"
'	nosNoConnect.Label = "No Connect"
'	nosNoConnect.PipsMode = "values"
'	nosNoConnect.PipsValues = "0,125,250,375,500"
'	nosNoConnect.PipsDensity = "20"
'	BANano.Await(nosNoConnect.AddComponent)
'
'	' ===== CUSTOM RANGE + PIPS =====
'	nosCustom.Initialize(Me, "nosCustom", "nosCustom")
'	nosCustom.ParentID = "nosCol2"
'	nosCustom.StartValues = "70,260"
'	nosCustom.RangeMin = "0"
'	nosCustom.RangeMax = "500"
'	nosCustom.Connect = "true"
'	nosCustom.Color = "primary"
'	nosCustom.Size = "sm"
'	nosCustom.SliderType = "legend"
'	nosCustom.Label = "Custom Range + Pips"
'	nosCustom.PipsMode = "count"
'	nosCustom.PipsValues = "5"
'	nosCustom.Tooltips = False
'	BANano.Await(nosCustom.AddComponent)

	' ===== CURRENCY FORMATTING =====
	nosCurrency.Initialize(Me, "nosCurrency", "nosCurrency")
	nosCurrency.ParentID = "nosCol2"
	nosCurrency.StartValues = "1300000,6100000"
	nosCurrency.RangeMin = "0"
	nosCurrency.RangeMax = "10000000"
	nosCurrency.Connect = "true"
	nosCurrency.Margin = "1"
	nosCurrency.Color = "primary"
	nosCurrency.Size = "sm"
	nosCurrency.Tooltips = False
	nosCurrency.FormatterPrefix = "USD "
	nosCurrency.FormatterThousand = ","
	nosCurrency.FormatterDecimals = 2
	nosCurrency.SliderType = "legend"
	nosCurrency.Label = "Currency (USD 1,300,000 - 6,100,000)"
	BANano.Await(nosCurrency.AddComponent)

	' ===== ADVANCED: Snap =====
	nosSnap.Initialize(Me, "nosSnap", "nosSnap")
	nosSnap.ParentID = "nosCol1"
	nosSnap.StartValues = "100,500"
	nosSnap.Connect = "true"
	nosSnap.Snap = True
	nosSnap.Color = "primary"
	nosSnap.Size = "sm"
	nosSnap.SliderType = "legend"
	nosSnap.Label = "Snap (non-linear range)"
	nosSnap.Tooltips = False
	BANano.Await(nosSnap.AddComponent)

	' ===== ADVANCED: Constraints (Margin + Limit + Padding) =====
	nosConstraints.Initialize(Me, "nosConstraints", "nosConstraints")
	nosConstraints.ParentID = "nosCol1"
	nosConstraints.StartValues = "20,50"
	nosConstraints.RangeMin = "0"
	nosConstraints.RangeMax = "100"
	nosConstraints.Connect = "true"
	nosConstraints.Margin = "10"
	nosConstraints.Limit = "40"
	nosConstraints.Padding = "10,10"
	nosConstraints.Color = "primary"
	nosConstraints.Size = "sm"
	nosConstraints.SliderType = "legend"
	nosConstraints.Label = "Constraints (margin/limit/padding)"
	nosConstraints.Hint = "Min spacing 10, max distance 40, edge padding 10"
	nosConstraints.Tooltips = False
	BANano.Await(nosConstraints.AddComponent)

'	' ===== ADVANCED: Clickable Pips =====
'	nosClickPips.Initialize(Me, "nosClickPips", "nosClickPips")
'	nosClickPips.ParentID = "nosCol2"
'	nosClickPips.StartValues = "50"
'	nosClickPips.RangeMin = "0"
'	nosClickPips.RangeMax = "100"
'	nosClickPips.Color = "primary"
'	nosClickPips.Size = "sm"
'	nosClickPips.PipsMode = "values"
'	nosClickPips.PipsValues = "0,25,50,75,100"
'	nosClickPips.PipsDensity = "5"
'	nosClickPips.ClickablePips = True
'	nosClickPips.SliderType = "legend"
'	nosClickPips.Label = "Clickable Pips"
'	BANano.Await(nosClickPips.AddComponent)

	' ===== LEGEND TYPE demos =====
	nosLegend1.Initialize(Me, "nosLegend1", "nosLegend1")
	nosLegend1.ParentID = "nosCol1"
	nosLegend1.StartValues = "30,70"
	nosLegend1.RangeMin = "0"
	nosLegend1.RangeMax = "100"
	nosLegend1.Connect = "true"
	nosLegend1.Color = "primary"
	nosLegend1.Tooltips = False
	nosLegend1.SliderType = "legend"
	nosLegend1.Label = "Legend: Temperature Range"
	nosLegend1.BackgroundColor = "base-200"
	nosLegend1.Border = True
	nosLegend1.BorderColor = "primary"
	nosLegend1.RoundedBox = True
	nosLegend1.Shadow = "lg"
	nosLegend1.Hint = "Select a temperature range"
	BANano.Await(nosLegend1.AddComponent)

	nosLegend2.Initialize(Me, "nosLegend2", "nosLegend2")
	nosLegend2.ParentID = "nosCol2"
	nosLegend2.StartValues = "75"
	nosLegend2.RangeMin = "0"
	nosLegend2.RangeMax = "100"
	nosLegend2.Color = "error"
	nosLegend2.Tooltips = False
	nosLegend2.SliderType = "legend"
	nosLegend2.Label = "Legend: Risk Level"
	nosLegend2.BackgroundColor = "base-200"
	nosLegend2.RoundedBox = True
	nosLegend2.Shadow = "md"
	BANano.Await(nosLegend2.AddComponent)

	nosLegend3.Initialize(Me, "nosLegend3", "nosLegend3")
	nosLegend3.ParentID = "nosCol2"
	nosLegend3.StartValues = "40,60"
	nosLegend3.RangeMin = "0"
	nosLegend3.RangeMax = "100"
	nosLegend3.Connect = "true"
	nosLegend3.Color = "success"
	nosLegend3.Size = "sm"
	nosLegend3.Tooltips = False
	nosLegend3.SliderType = "legend"
	nosLegend3.Label = "Legend: Acceptable Range"
	nosLegend3.BackgroundColor = "base-200"
	nosLegend3.Border = True
	nosLegend3.BorderColor = "success"
	nosLegend3.RoundedBox = True
	nosLegend3.Shadow = "sm"
	nosLegend3.Hint = "Drag handles to set range"
	BANano.Await(nosLegend3.AddComponent)

	' ===== FORMATTER: Formatted Values (USD) =====
	nosFormattedValues.Initialize(Me, "nosFormattedValues", "nosFormattedValues")
	nosFormattedValues.ParentID = "nosCol1"
	nosFormattedValues.StartValues = "1300000,6100000"
	nosFormattedValues.RangeMin = "0"
	nosFormattedValues.RangeMax = "10000000"
	nosFormattedValues.Connect = "true"
	nosFormattedValues.Margin = "1"
	nosFormattedValues.Color = "primary"
	nosFormattedValues.Size = "md"
	nosFormattedValues.FormatterPrefix = "USD "
	nosFormattedValues.FormatterThousand = ","
	nosFormattedValues.FormatterDecimals = 0
	nosFormattedValues.SliderType = "legend"
	nosFormattedValues.Label = "Formatted Values (USD)"
	nosFormattedValues.Hint = "Value spans show formatted currency"
	BANano.Await(nosFormattedValues.AddComponent)

	' ===== FORMATTER: Formatted Pips (Temperature °C) =====
	nosFormattedPips.Initialize(Me, "nosFormattedPips", "nosFormattedPips")
	nosFormattedPips.ParentID = "nosCol2"
	nosFormattedPips.StartValues = "18,32"
	nosFormattedPips.RangeMin = "-10"
	nosFormattedPips.RangeMax = "50"
	nosFormattedPips.Connect = "true"
	nosFormattedPips.Margin = "2"
	nosFormattedPips.Color = "error"
	nosFormattedPips.Size = "md"
	nosFormattedPips.FormatterSuffix = "°C"
	nosFormattedPips.FormatterDecimals = 1
	nosFormattedPips.FormatterMark = "."
	nosFormattedPips.PipsMode = "values"
	nosFormattedPips.PipsValues = "-10,0,10,20,30,40,50"
	nosFormattedPips.PipsDensity = "5"
	nosFormattedPips.SliderType = "legend"
	nosFormattedPips.Label = "Formatted Pips (Temperature °C)"
	nosFormattedPips.Hint = "Pip labels show formatted values"
	BANano.Await(nosFormattedPips.AddComponent)

	' ===== FORMATTER: Tooltips with Formatter (EUR €) =====
	nosTooltips.Initialize(Me, "nosTooltips", "nosTooltips")
	nosTooltips.ParentID = "nosCol2"
	nosTooltips.StartValues = "500,2500"
	nosTooltips.RangeMin = "0"
	nosTooltips.RangeMax = "5000"
	nosTooltips.Connect = "true"
	nosTooltips.Margin = "100"
	nosTooltips.Color = "success"
	nosTooltips.Size = "md"
	nosTooltips.Tooltips = True
	nosTooltips.TooltipColor = "success"
	nosTooltips.FormatterPrefix = "€"
	nosTooltips.FormatterThousand = ","
	nosTooltips.FormatterDecimals = 0
	nosTooltips.SliderType = "legend"
	nosTooltips.Label = "Tooltips with Formatter (EUR)"
	nosTooltips.Hint = "Hover or drag handles to see formatted tooltips"
	BANano.Await(nosTooltips.AddComponent)

	pgIndex.UpdateTitle("SDUI5NoUISlider")
End Sub

Private Sub nosPrimary_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosSecondary_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosAccent_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosSuccess_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosError_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosWarning_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosNeutral_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosInfo_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosXS_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosSM_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosMD_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosLG_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosXL_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosStepped_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosTTPrimary_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosTTSecondary_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosTTAccent_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosTTNeutral_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosTTInfo_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosTTSuccess_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosTTWarning_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosTTError_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosNoConnect_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosCustom_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosCurrency_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosSnap_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosConstraints_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosClickPips_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosLegend1_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosLegend2_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosLegend3_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosFormattedValues_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosFormattedPips_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosTooltips_Change(Values As String)
	app.ShowToastSuccess(Values)
End Sub

Private Sub nosDisabled_Update(Values As String)
	' Disabled slider fires update on init but user can't interact
End Sub
