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
	Private txtColor As SDUI5TextBox		'ignore
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Row4 As SDUI5Row		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Row5 As SDUI5Row		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Row6 As SDUI5Row		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5Row7 As SDUI5Row		'ignore
	Private SDUI5Column13 As SDUI5Column		'ignore
	Private SDUI5Row8 As SDUI5Row		'ignore
	Private SDUI5Column14 As SDUI5Column		'ignore
	Private SDUI5Row9 As SDUI5Row		'ignore
	Private SDUI5Column15 As SDUI5Column		'ignore
	Private SDUI5Row10 As SDUI5Row		'ignore
	Private SDUI5Column16 As SDUI5Column		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row2"
	SDUI5Column3.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column3.SizeMd = "6"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row2"
	SDUI5Column4.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column4.SizeMd = "6"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	txtfirstname.Initialize(Me, "txtfirstname", "txtfirstname")
	txtfirstname.ParentID = "SDUI5Column3"
	txtfirstname.DPAltFormat = "Y-m-d H:i"
	txtfirstname.DPDateFormat = "Y-m-d H:i"
	txtfirstname.DPPosition = "none"
	txtfirstname.InputType = "legend"
	txtfirstname.Label = "First Name"
	txtfirstname.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtfirstname.Required = True
	txtfirstname.RoundedBox = True
	txtfirstname.Shadow = "lg"
	BANano.Await(txtfirstname.AddComponent)
	'
	txtlastname.Initialize(Me, "txtlastname", "txtlastname")
	txtlastname.ParentID = "SDUI5Column4"
	txtlastname.DPAltFormat = "Y-m-d H:i"
	txtlastname.DPDateFormat = "Y-m-d H:i"
	txtlastname.DPPosition = "none"
	txtlastname.InputType = "legend"
	txtlastname.Label = "Last Name"
	txtlastname.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtlastname.Required = True
	txtlastname.RoundedBox = True
	txtlastname.Shadow = "lg"
	BANano.Await(txtlastname.AddComponent)
	'
	SDUI5Row3.Initialize(Me, "SDUI5Row3", "SDUI5Row3")
	SDUI5Row3.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row3.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row3"
	SDUI5Column5.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column5.SizeMd = "6"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row3"
	SDUI5Column6.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column6.SizeMd = "6"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	txtdob.Initialize(Me, "txtdob", "txtdob")
	txtdob.ParentID = "SDUI5Column5"
	txtdob.DPAllowInput = True
	txtdob.DPAltFormat = "F j, Y"
	txtdob.DPCloseOnSelect = True
	txtdob.DPPosition = "auto center"
	txtdob.InputType = "legend"
	txtdob.Label = "Date of Birth"
	txtdob.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtdob.Required = True
	txtdob.RoundedBox = True
	txtdob.Shadow = "lg"
	txtdob.TypeOf = "date-picker"
	BANano.Await(txtdob.AddComponent)
	'
	SDUI5Row4.Initialize(Me, "SDUI5Row4", "SDUI5Row4")
	SDUI5Row4.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row4.AddComponent)
	'
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row4"
	SDUI5Column7.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column7.SizeMd = "6"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row4"
	SDUI5Column8.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column8.SizeMd = "6"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	chkBreakfast.Initialize(Me, "chkBreakfast", "chkBreakfast")
	chkBreakfast.ParentID = "SDUI5Column7"
	chkBreakfast.CheckedColor = "#22c55e"
	chkBreakfast.ColumnView = True
	chkBreakfast.GroupName = "breakfast"
	chkBreakfast.Label = "Breakfast"
	chkBreakfast.Options = "eggs:Eggs; toast:Toast; cereal:Cereal; juice:Juice; yoghurt:Yoghurt; tea:Tea; coffee:Coffee"
	chkBreakfast.Shadow = "lg"
	chkBreakfast.Size = "md"
	BANano.Await(chkBreakfast.AddComponent)
	'
	gsActivities.Initialize(Me, "gsActivities", "gsActivities")
	gsActivities.ParentID = "SDUI5Column8"
	gsActivities.GroupName = "activities"
	gsActivities.Label = "Activities"
	gsActivities.Options = "spar:Spar; boatride:Boat Ride; horseride:Horse Ride; quadbike: Quad Bike; helicopter:Helicopter"
	gsActivities.Shadow = "lg"
	gsActivities.Size = "sm"
	BANano.Await(gsActivities.AddComponent)
	'
	SDUI5Row5.Initialize(Me, "SDUI5Row5", "SDUI5Row5")
	SDUI5Row5.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row5.AddComponent)
	'
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row5"
	SDUI5Column9.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column9.SizeMd = "6"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row5"
	SDUI5Column10.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column10.SizeMd = "6"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	rgSalary.Initialize(Me, "rgSalary", "rgSalary")
	rgSalary.ParentID = "SDUI5Column9"
	rgSalary.Color = "neutral"
	rgSalary.Label = "What is your Salary?"
	rgSalary.MaxValue = "1000"
	rgSalary.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	rgSalary.RangeType = "legend"
	rgSalary.RoundedBox = True
	rgSalary.Shadow = "lg"
	rgSalary.StepValue = "100"
	rgSalary.Value = "100"
	BANano.Await(rgSalary.AddComponent)
	'
	rtService.Initialize(Me, "rtService", "rtService")
	rtService.ParentID = "SDUI5Column10"
	rtService.Color = "success"
	rtService.InputType = "legend"
	rtService.Label = "Rate our Service"
	rtService.Mask = "heart"
	rtService.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	'rtService.RatingBackgroundColor = ""
	rtService.Required = True
	rtService.RoundedBox = True
	rtService.Shadow = "lg"
	rtService.Value = "0"
	BANano.Await(rtService.AddComponent)
	'
	SDUI5Row6.Initialize(Me, "SDUI5Row6", "SDUI5Row6")
	SDUI5Row6.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row6.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row6"
	SDUI5Column11.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column11.SizeMd = "6"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row6"
	SDUI5Column12.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column12.SizeMd = "6"
	BANano.Await(SDUI5Column12.AddComponent)
	'
	rdGender.Initialize(Me, "rdGender", "rdGender")
	rdGender.ParentID = "SDUI5Column11"
	rdGender.CheckedColor = "#22c55e"
	rdGender.Color = "neutral"
	rdGender.GroupName = "gender"
	rdGender.Label = "Gender"
	rdGender.Options = "male:Male; female:Female"
	rdGender.Shadow = "lg"
	rdGender.Size = "md"
	rdGender.Value = "male"
	BANano.Await(rdGender.AddComponent)
	'
	cboQualification.Initialize(Me, "cboQualification", "cboQualification")
	cboQualification.ParentID = "SDUI5Column6"
	cboQualification.InputType = "legend"
	cboQualification.Label = "Qualification"
	cboQualification.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	cboQualification.Placeholder = "Select Qualification"
	cboQualification.Options = "matric: Matric; degree:Degree; honours:Honours; masters:Masters; phd:PHD; doctor:Doctor; professor:Professor; other:Other"
	cboQualification.Required = True
	cboQualification.RoundedBox = True
	cboQualification.Shadow = "lg"
	BANano.Await(cboQualification.AddComponent)
	'
	SDUI5Row7.Initialize(Me, "SDUI5Row7", "SDUI5Row7")
	SDUI5Row7.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row7.AddComponent)
	'
	SDUI5Column13.Initialize(Me, "SDUI5Column13", "SDUI5Column13")
	SDUI5Column13.ParentID = "SDUI5Row7"
	SDUI5Column13.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column13.AddComponent)
	'
	txtPersonalDetails.Initialize(Me, "txtPersonalDetails", "txtPersonalDetails")
	txtPersonalDetails.ParentID = "SDUI5Column13"
	txtPersonalDetails.InputType = "legend"
	txtPersonalDetails.Label = "Personal Details"
	txtPersonalDetails.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtPersonalDetails.Required = True
	txtPersonalDetails.RoundedBox = True
	txtPersonalDetails.Shadow = "lg"
	txtPersonalDetails.Size = "none"
	BANano.Await(txtPersonalDetails.AddComponent)
	'
	SDUI5Row8.Initialize(Me, "SDUI5Row8", "SDUI5Row8")
	SDUI5Row8.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row8.AddComponent)
	'
	SDUI5Column14.Initialize(Me, "SDUI5Column14", "SDUI5Column14")
	SDUI5Column14.ParentID = "SDUI5Row8"
	SDUI5Column14.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column14.AddComponent)
	'
	chkAgree.Initialize(Me, "chkAgree", "chkAgree")
	chkAgree.ParentID = "SDUI5Column14"
	chkAgree.CheckBoxType = "legend"
	chkAgree.Label = "I hereby confirm"
	chkAgree.Legend = "Agreement"
	chkAgree.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	chkAgree.PrivacyPolicyCaption = "Privacy Policy"
	chkAgree.PrivacyPolicyUrl = "#"
	chkAgree.Required = True
	chkAgree.RoundedBox = True
	chkAgree.Shadow = "lg"
	chkAgree.TermsConditionsCaption = "Terms & Conditions"
	chkAgree.TermsConditionsUrl = "#"
	BANano.Await(chkAgree.AddComponent)
	'
	SDUI5Row9.Initialize(Me, "SDUI5Row9", "SDUI5Row9")
	SDUI5Row9.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row9.AddComponent)
	'
	SDUI5Column15.Initialize(Me, "SDUI5Column15", "SDUI5Column15")
	SDUI5Column15.ParentID = "SDUI5Row9"
	SDUI5Column15.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column15.AddComponent)
	'
	fpImage.Initialize(Me, "fpImage", "fpImage")
	fpImage.ParentID = "SDUI5Column15"
	fpImage.InputType = "legend"
	fpImage.Label = "Please select Profile Picture"
	fpImage.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	fpImage.Required = True
	fpImage.RoundedBox = True
	fpImage.Shadow = "lg"
	BANano.Await(fpImage.AddComponent)
	'
	pgTasks.Initialize(Me, "pgTasks", "pgTasks")
	pgTasks.ParentID = "SDUI5Column12"
	pgTasks.Color = "success"
	pgTasks.Label = "Tasks Completed"
	pgTasks.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	pgTasks.ProgressType = "legend"
	pgTasks.RoundedBox = True
	pgTasks.Shadow = "lg"
	pgTasks.TextColor = "#000000"
	pgTasks.TextSize = "sm"
	pgTasks.TextVisible = True
	pgTasks.Value = 20
	BANano.Await(pgTasks.AddComponent)
	'
	SDUI5Row10.Initialize(Me, "SDUI5Row10", "SDUI5Row10")
	SDUI5Row10.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row10.AddComponent)
	'
	SDUI5Column16.Initialize(Me, "SDUI5Column16", "SDUI5Column16")
	SDUI5Column16.ParentID = "SDUI5Row10"
	SDUI5Column16.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	BANano.Await(SDUI5Column16.AddComponent)
	'
	txtColor.Initialize(Me, "txtColor", "txtColor")
	txtColor.ParentID = "SDUI5Column16"
	txtColor.InputType = "legend"
	txtColor.Label = "Color"
	txtColor.PaddingAXYTBLR = "a=4; x=?; y=?; t=?; b=?; l=?; r=?"
	txtColor.RoundedBox = True
	txtColor.Shadow = "md"
	txtColor.TypeOf = "color-wheel"
	txtColor.DPAltFormat = "F j"
	BANano.Await(txtColor.AddComponent)
	'
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column1.SizeMd = "6"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	btnCancel.Initialize(Me, "btnCancel", "btnCancel")
	btnCancel.ParentID = "SDUI5Column1"
	btnCancel.Block = True
	btnCancel.Color = "error"
	btnCancel.IconSize = "none"
	'btnCancel.Image = ""
	'btnCancel.ImageHeight = "32px"
	'btnCancel.ImageWidth = "32px"
	btnCancel.Shadow = "lg"
	btnCancel.Shape = "lg"
	btnCancel.Size = "none"
	btnCancel.Text = "Cancel"
	BANano.Await(btnCancel.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row1"
	SDUI5Column2.PaddingAXYTBLR = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	SDUI5Column2.SizeMd = "6"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	btnSave.Initialize(Me, "btnSave", "btnSave")
	btnSave.ParentID = "SDUI5Column2"
	btnSave.Block = True
	btnSave.Color = "success"
	btnSave.IconSize = "none"
	'btnSave.Image = ""
	'btnSave.ImageHeight = "32px"
	'btnSave.ImageWidth = "32px"
	btnSave.Shadow = "lg"
	btnSave.Shape = "lg"
	btnSave.Size = "none"
	btnSave.Text = "Save"
	BANano.Await(btnSave.AddComponent)
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

