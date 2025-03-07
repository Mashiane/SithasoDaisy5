B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	Private btnCancel As SDUI5Button		'ignore
	Private btnSave As SDUI5Button			'ignore
	Private cboQualification As SDUI5Select	'ignore
	Private chkAgree As SDUI5CheckBox		'ignore
	Private chkBreakfast As SDUI5CheckBoxGroup		'ignore
	Private fpImage As SDUI5FileInput				'ignore
	Private gsActivities As SDUI5GroupSelect		'ignore
	Private pgTasks As SDUI5Progress				'ignore
	Private rdGender As SDUI5RadioGroup				'ignore
	Private rgSalary As SDUI5Range					'ignore
	Private rtService As SDUI5Rating				'ignore
	Private txtdob As SDUI5TextBox					'ignore
	Private txtfirstname As SDUI5TextBox			'ignore
	Private txtlastname As SDUI5TextBox				'ignore
	Private txtPersonalDetails As SDUI5TextArea		'ignore
	Private txtColor As SDUI5TextBox
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "validationview")
	pgIndex.UpdateTitle("Validation")
End Sub


Private Sub btnSave_Click (e As BANanoEvent)
	'begin validation of components
	app.ResetValidation
	'validate each of the elements
	app.Validate(txtfirstname.IsBlank)
	app.Validate(txtlastname.IsBlank)
	app.Validate(txtdob.IsBlank)
	app.Validate(chkBreakfast.IsBlank)
	app.Validate(gsActivities.IsBlank)
	app.Validate(rdGender.IsBlank)
	app.Validate(rgSalary.IsBlank)
	app.Validate(rtService.IsBlank)
	app.Validate(cboQualification.IsBlank)
	app.Validate(txtPersonalDetails.IsBlank)
	app.Validate(chkAgree.IsBlank)
	app.Validate(fpImage.IsBlank)
	app.Validate(txtColor.IsBlank)
	
'	app.Validate(txtEmail.IsBlank)
'	app.Validate(txtTelephone.IsBlank)
'	app.Validate(txtAddress.IsBlank)
'	app.Validate(radGender.IsBlank)
	'check the form status
	If app.IsValid = False Then
		app.ShowToastError("Please specify all required information!")
		Return
	End If
	'
	Dim rec As Map = CreateMap()
	rec.Put("firstname", txtfirstname.Value)
	rec.Put("lastname", txtlastname.Value)
	rec.Put("date_of_birth", txtdob.Value)
	rec.Put("breakfast", chkBreakfast.Value)
	rec.Put("activities", gsActivities.Value)
	rec.Put("gender", rdGender.Value)
	rec.Put("salary", rgSalary.Value)
	rec.Put("rate_service", rtService.Value)
	rec.Put("qualification", cboQualification.Value)
	rec.Put("personal_details", txtPersonalDetails.Value)
	rec.Put("agree", chkAgree.Checked)
	rec.Put("profile_image", fpImage.GetFile)
	rec.Put("color", txtColor.Value)
	Log(rec)
End Sub

Private Sub btnCancel_Click (e As BANanoEvent)
	
End Sub