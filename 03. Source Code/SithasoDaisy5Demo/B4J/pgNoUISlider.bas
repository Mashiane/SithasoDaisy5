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
	Private SDUI5NoUISlider1 As SDUI5NoUISlider			'ignore
	Private SDUI5NoUISlider2 As SDUI5NoUISlider			'ignore
	Private SDUI5NoUISlider3 As SDUI5NoUISlider
End Sub


Sub Show
	app = pgIndex.app
	BANano.LoadLayout(app.PageView, "nouisliderview")
	pgIndex.UpdateTitle("SDUI5NoUISlider")
	'
	SDUI5NoUISlider3.StartValues = "18,32"
	SDUI5NoUISlider3.RangeMin = "-10"
	SDUI5NoUISlider3.RangeMax = "50"
	SDUI5NoUISlider3.Connect = "true"
	SDUI5NoUISlider3.Margin = "2"
	SDUI5NoUISlider3.Color = "error"
	SDUI5NoUISlider3.Size = "md"
	SDUI5NoUISlider3.FormatterSuffix = "°C"
	SDUI5NoUISlider3.FormatterDecimals = 1
	SDUI5NoUISlider3.FormatterMark = "."
	SDUI5NoUISlider3.PipsMode = "values"
	SDUI5NoUISlider3.PipsValues = "-10,0,10,20,30,40,50"
	SDUI5NoUISlider3.PipsDensity = "5"
	SDUI5NoUISlider3.SliderType = "legend"
	SDUI5NoUISlider3.Label = "Formatted Pips (Temperature °C)"
	SDUI5NoUISlider3.Hint = "Pip labels show formatted values"
End Sub

Private Sub SDUI5NoUISlider2_Change (Values As String)
	app.ShowSwalSuccessToast(Values, 3000)
End Sub

Private Sub SDUI5NoUISlider1_Change (Values As String)
	app.ShowSwalSuccessToast(Values, 3000)
End Sub

Private Sub SDUI5NoUISlider3_Change (Values As String)
	app.ShowSwalSuccessToast(Values, 3000)
End Sub