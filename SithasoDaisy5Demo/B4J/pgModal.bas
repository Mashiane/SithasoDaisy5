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
	Private btnShowModal1 As SDUI5Button
	Private modal1 As SDUI5Modal
	Private inputmodal As SDUI5Modal
	Private SDUI5Button1 As SDUI5Button
	Private txtfirstname As SDUI5TextBox
	Private txtlastname As SDUI5TextBox
	Private chkBreakfast As SDUI5CheckBoxGroup
	Private gsActivities As SDUI5GroupSelect
	Private rdGender As SDUI5RadioGroup
	Private txtdob As SDUI5TextBox
	Private rgSalary As SDUI5Range
	Private rtService As SDUI5Rating
	Private cboQualification As SDUI5Select
	Private txtPersonalDetails As SDUI5TextArea
	Private chkAgree As SDUI5CheckBox
	Private fpImage As SDUI5FileInput
	Private pgTasks As SDUI5Progress
End Sub


Sub Show(MainApp As SDUI5App)
	app = MainApp
	BANano.LoadLayout(app.PageView, "modalview")
	pgIndex.UpdateTitle("SDUI5Modal")
End Sub

Private Sub btnShowModal1_Click (e As BANanoEvent)
	e.PreventDefault
	modal1.Title = "New Title"
	modal1.Html = $"<b>Testing MsgBox Message</b>"$
	modal1.Show
End Sub

Private Sub modal1_Yes_Click (e As BANanoEvent)
	e.PreventDefault
	modal1.close
End Sub

Private Sub modal1_No_Click (e As BANanoEvent)
	e.PreventDefault
	modal1.close
End Sub

Private Sub modal1_Cancel_Click (e As BANanoEvent)
	e.PreventDefault
	modal1.close
End Sub

Private Sub SDUI5Button1_Click (e As BANanoEvent)
	inputmodal.show
	txtfirstname.ResetValidation
	txtfirstname.Value = ""
	txtlastname.resetvalidation
	txtlastname.Value = "" 
	chkBreakfast.ResetValidation
	'nothing is selected
	chkBreakfast.Selected = ""
	gsActivities.ResetValidation
	'nothing is selected
	gsActivities.Selected = ""
	rdGender.ResetValidation
	rdGender.Value = "male"
	txtdob.ResetValidation
	txtdob.Value = ""
	rgSalary.Value = "100"
	rgSalary.ResetValidation
	rtService.Value = 0
	rtService.ResetValidation
	cboQualification.ResetValidation
	cboQualification.Value = ""
	txtPersonalDetails.ResetValidation
	txtPersonalDetails.Value = ""
	chkAgree.ResetValidation
	chkAgree.Checked = False
	fpImage.ResetValidation
	fpImage.Nullify
End Sub

Private Sub inputmodal_Yes_Click (e As BANanoEvent)
	'begin validation of components
	inputmodal.ResetValidation
	'validate each of the elements
	inputmodal.Validate(txtfirstname.IsBlank)
	inputmodal.Validate(txtlastname.IsBlank)
	inputmodal.Validate(txtdob.IsBlank)
	inputmodal.Validate(chkBreakfast.IsBlank)
	inputmodal.Validate(gsActivities.IsBlank)
	inputmodal.Validate(rdGender.IsBlank)
	inputmodal.Validate(rgSalary.IsBlank)
	inputmodal.Validate(rtService.IsBlank)
	inputmodal.Validate(cboQualification.IsBlank)
	inputmodal.Validate(txtPersonalDetails.IsBlank)
	inputmodal.Validate(chkAgree.IsBlank)
	inputmodal.Validate(fpImage.IsBlank)
	
'	app.Validate(txtEmail.IsBlank)
'	app.Validate(txtTelephone.IsBlank)
'	app.Validate(txtAddress.IsBlank)
'	app.Validate(radGender.IsBlank)
	'check the form status
	If inputmodal.IsValid = False Then 
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
	Log(rec)
End Sub

Private Sub inputmodal_No_Click (e As BANanoEvent)
	inputmodal.Close
End Sub