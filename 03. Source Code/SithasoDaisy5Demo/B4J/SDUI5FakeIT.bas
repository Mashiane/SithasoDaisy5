B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.32
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public DT_Types As List
	Public PrimaryKey As Boolean
	Public Percentage As Boolean
	Public Name As Boolean
	Public Word As Boolean
	Public Percent As Boolean
	Public Password As Boolean
	Public FirstName As Boolean
	Public LastName As Boolean
	Public Country As Boolean
	Public CapitalCity As Boolean
	Public City As Boolean
	Public Street2 As Boolean
	Public Street3 As Boolean
	Public Mobile As Boolean
	Public ZipCode As Boolean
	Public Email As Boolean
	Public Gmail As Boolean
	Public Yahoo As Boolean
	Public Gender As Boolean
	Public Phone As Boolean
	Public YesNo As Boolean
	Public Date As Boolean
	Public Time As Boolean
	Public DateAndTime As Boolean
	Public LoremIpsum As Boolean
	Public Age As Boolean
	Public PinCode As Boolean
	Public Number As Boolean
	Public CompanyName As Boolean
	Public JobTitle As Boolean
	Public Money As Boolean
	Public IPAddress As Boolean
	Public Street As Boolean
	Public Month As Boolean
	Public Sport As Boolean
	Public Minutes As Boolean
	Public HexColor As Boolean
	Public Prefix As Boolean
	Public Port As Boolean
	Public HashTag As Boolean
	Public Twitter As Boolean
	Public Year As Boolean
	Public FullName As Boolean
	Public Seconds As Boolean
	Public Hour As Boolean
	Public Number As Boolean
	Public TrueOrFalse As Boolean
	Public ZeroOne As Boolean
	Public Title As Boolean
	Public State As Boolean
	Public None As Boolean
	Public Product As Boolean
	Public ProductCategory As Boolean
	Public SKU As Boolean
	Public Industry As Boolean
	Public ExpenseCategory As Boolean
	Public Rating As Boolean
	Public IncomeCategory As Boolean
	Public ContactCategory As Boolean
	Public Department As Boolean
	Public FiveWords As Boolean
	Public TenWords As Boolean
	Public FifteenWords As Boolean
	Public TwentyWords As Boolean
	Public Province As Boolean
	Public PaymentStatus As Boolean
	Public Priority As Boolean
	Public PaymentProvider As Boolean
	Public Vehicle As Boolean
	Public VehicleMake As Boolean
	Public VehicleType As Boolean
	Private BANano As BANano			'ignore
	Public ProjectName As Boolean
	Public ProjectStatus As Boolean
	Public TaskName As Boolean
	Public MedicalEventType As Boolean
	Public MedicalDocument As Boolean
	Public MedicalBillingType As Boolean
	Public MedicalBillStatus As Boolean
	Public MedicationStatus As Boolean
	Public TimeFrequency As Boolean
	Public MedicalCondition As Boolean
	Public MedicalBillItem As Boolean
	Public HospitalName As Boolean
	Public MedicationName As Boolean
	Public MedicalDocumentType As Boolean
	Public EventStatus As Boolean
	Public InsuranceCompany As Boolean
	'
	Public const DT_INSURANCE_COMPANY As String = "insurancecompany"
	Public const DT_EVENT_STATUS As String = "eventstatus"
	Public const DT_MEDICAL_DOCUMENT_TYPE As String = "medicaldocumenttype"
	Public const DT_MEDICATION_NAME As String = "medicationname"
	Public const DT_HOSPITAL_NAME As String = "hospitalname"
	Public const DT_MEDICAL_BILL_ITEM As String = "medicalbillitem"
	Public const DT_MEDICAL_CONDITION As String = "medicalcondition"
	Public const DT_MEDICATION_STATUS As String = "medicationstatus"
	Public const DT_MEDICAL_BILL_STATUS As String = "medicalbillstatus"
	Public const DT_MEDICAL_BILLING_TYPE As String = "medicalbillingtype"
	Public const DT_MEDICAL_DOCUMENT As String = "medicaldocument"
	Public const DT_MEDICAL_EVENT_TYPE As String = "medicaleventtype"
	Public const DT_TASK_NAME As String = "taskname"
	Public const DT_PROJECT_STATUS As String = "projectstatus"
	Public const DT_PROJECT_NAME As String = "projectname"
	Public const DT_VEHICLE_TYPE As String = "vehicletype"
	Public const DT_VEHICLE_MAKE As String = "vehiclemake"
	Public const DT_VEHICLE As String = "vehicle"
	Public const DT_PAYMENT_PROVIDER As String = "paymentprovider"
	Public const DT_PRIORITY As String = "priority"
	Public const DT_PAYMENT_STATUS As String = "paymentstatus"
	Public const DT_PROVINCE As String = "province"
	Public const DT_TWENTY_WORDS As String = "fifteenwords"
	Public const DT_FIFTEEN_WORDS As String = "fifteenwords"
	Public const DT_TEN_WORDS As String = "tenwords"
	Public const DT_FIVE_WORDS As String = "fivewords"
	Public const DT_DEPARTMENT As String = "department"
	Public const DT_CONTACT_CATEGORY As String = "contactcategory"
	Public const DT_INCOME_CATEGORY As String = "incomecategory"
	Public const DT_RATING As String = "rating"
	Public const DT_EXPENSE_CATEGORY As String = "expensecategory"
	Public const DT_INDUSTRY As String = "industry"
	Public const DT_SKU As String = "sku"
	Public const DT_PRODUCT As String = "product"
	Public const DT_PRODUCT_CATEGORY As String = "productcategory"
	Public const DT_NONE As String = ""
	Public const DT_STATE As String = "state"
	Public const DT_TITLE As String = "title"
	Public const DT_TRUE_FALSE As String = "truefalse"	
	Public const DT_PRIMARYKEY As String = "id"
	Public const DT_PERCENTAGE As String = "percentage"
	Public const DT_PERCENT As String = "percent"
	Public const DT_PASSWORD As String = "password"
	Public const DT_NAME As String = "name"
	Public const DT_FIRST_NAME As String = "firstname"
	Public const DT_LAST_NAME As String = "lastname"
	Public const DT_FULL_NAME As String = "fullname"
	Public const DT_COUNTRY As String = "country"
	Public const DT_CAPITAL_CITY As String = "capitalcity"
	Public const DT_EMAIL As String= "email"
	Public const DT_GMAIL As String=  "gmail"
	Public const DT_YAHOO As String = "yahoo"
	Public const DT_GENDER As String = "gender"
	Public const DT_LOREM_IPSUM As String = "loremipsum"
	Public const DT_PHONE As String = "phone"
	Public const DT_YES_NO As String = "yesno"
	Public const DT_SPORT As String = "sport"
	Public const DT_DATE As String = "date"
	Public const DT_TIME As String ="time"
	Public const DT_DATE_TIME As String = "datetime"
	Public const DT_AGE As String = "age"
	Public const DT_PINCODE As String= "pincode"
	Public const DT_NUMBER As String = "number"
	Public const DT_COMPANY_NAME As String = "companyname"
	Public const DT_JOB_TITLE As String = "jobtitle"
	Public const DT_IP_ADDRESS As String = "ipaddress"
	Public const DT_MONEY As String = "money"
	Public const DT_STREET As String = "street"
	Public const DT_MONTH As String = "month"
	Public const DT_MINUTES As String = "minutes"
	Public const DT_SECONDS As String = "seconds"
	Public const DT_HOUR As String = "hour"
	Public const DT_HEXCOLOR As String = "hexcolor"
	Public const DT_PREFIX As String = "prefix"
	Public const DT_PORT As String = "port"
	Public const DT_HASHTAG As String = "hashtag"
	Public const DT_TWITTER As String = "twitter"
	Public const DT_YEAR As String ="year"
	Public const DT_WORD As String = "word"
	Public const DT_ZERO_ONE As String = "zeroone"
	Public const DT_CITY As String = "city"
	Public const DT_STREET_2 As String = "street2"
	Public const DT_STREET_3 As String = "street3"
	Public const DT_MOBILE As String = "mobile"
	Public const DT_ZIPCODE As String = "zipcode"
	Public const DT_TIME_FREQUENCY As String = "timefrequency"
	Private Conditions As Map
	
	Type FakeData(PrimaryKey As String, _
    Percentage As String, _
    Name As String, _
    Word As String, _
    Percent As String, _
    Password As String, _
    FirstName As String, _
    LastName As String, _
    Country As String, _
    CapitalCity As String, _
    City As String, _
    Street2 As String, _
    Street3 As String, _
    Mobile As String, _
    ZipCode As String, _
    Email As String, _
    Gmail As String, _
    Yahoo As String, _
    Gender As String, _
    Phone As String, _
    YesNo As String, _
    Date As String, _
    Time As String, _
    DateAndTime As String, _
    LoremIpsum As String, _
    Age As String, _
    PinCode As String, _
    Number As String, _
    CompanyName As String, _
    JobTitle As String, _
    Money As String, _
    IPAddress As String, _
    Street As String, _
    Month As String, _
    Sport As String, _
    Minutes As String, _
    HexColor As String, _
    Prefix As String, _
    Port As String, _
    HashTag As String, _
    Twitter As String, _
    Year As String, _
    FullName As String, _
    Seconds As String, _
    Hour As String, _
    TrueOrFalse As String, _
    ZeroOne As String, _
    Title As String, _
    State As String, _
	ProductCategory As String, _
	Product As String, _
	SKU As String, _
	Industry As String, _
	ExpenseCategory As String, _
	Rating As String, _
	IncomeCategory As String, _
	ContactCategory As String, _
	Department As String, _
	FiveWords As String, _
	TenWords As String, _
	FifteenWords As String, _
	TwentyWords As String, _
	Province As String, _
	Priority As String, _
	PaymentStatus As String, _
	PaymentProvider As String, _
	Vehicle As String, _
	VehicleMake As String, _
	VehicleType As String, _
	ProjectName As String, _
	ProjectStatus As String, _
	TaskName As String, _
	MedicalEventType As String, _
	MedicalDocument As String, _
	MedicalBillingType As String, _
	MedicalBillStatus As String, _
	MedicationStatus As String, _
	TimeFrequency As String, _
	MedicalCondition As String, _
	MedicalBillItem As String, _
	HospitalName As String, _
	MedicationName As String, _
	MedicalDocumentType As String, _
	EventStatus As String, _
	InsuranceCompany as string)
End Sub

Sub Initialize As SDUI5FakeIT
	Conditions.Initialize 
	DT_Types.Initialize
	DT_Types.add(DT_INSURANCE_COMPANY)
	DT_Types.Add(DT_EVENT_STATUS)
	DT_Types.add(DT_MEDICAL_DOCUMENT_TYPE)
	DT_Types.Add(DT_MEDICATION_NAME)
	DT_Types.Add(DT_HOSPITAL_NAME)
	DT_Types.Add(DT_MEDICAL_BILL_ITEM)
	DT_Types.Add(DT_MEDICAL_CONDITION)
	DT_Types.Add(DT_TIME_FREQUENCY)
	DT_Types.Add(DT_MEDICATION_STATUS)
	DT_Types.Add(DT_MEDICAL_BILL_STATUS)
	DT_Types.Add(DT_MEDICAL_BILLING_TYPE)
	DT_Types.Add(DT_MEDICAL_DOCUMENT)
	DT_Types.Add(DT_MEDICAL_EVENT_TYPE)
	DT_Types.Add(DT_TASK_NAME)
	DT_Types.Add(DT_PROJECT_STATUS)
	DT_Types.add(DT_PROJECT_NAME)
	DT_Types.Add(DT_VEHICLE_TYPE)
	DT_Types.Add(DT_VEHICLE_MAKE)
	DT_Types.Add(DT_VEHICLE)
	DT_Types.Add(DT_PRIORITY)
	DT_Types.Add(DT_PAYMENT_STATUS)
	DT_Types.add(DT_PROVINCE)
	DT_Types.Add(DT_DEPARTMENT)
	DT_Types.Add(DT_CONTACT_CATEGORY)
	DT_Types.Add(DT_INCOME_CATEGORY)
	DT_Types.Add(DT_RATING)
	DT_Types.Add(DT_EXPENSE_CATEGORY)
	DT_Types.Add(DT_INDUSTRY)
	DT_Types.Add(DT_SKU)
	DT_Types.Add(DT_PRODUCT)
	DT_Types.Add(DT_NONE)
	DT_Types.Add(DT_PRIMARYKEY)
	DT_Types.Add(DT_PERCENTAGE)
	DT_Types.Add(DT_PASSWORD)
	DT_Types.Add(DT_PERCENT)
	DT_Types.Add(DT_NAME)
	DT_Types.Add(DT_FIRST_NAME)
	DT_Types.Add(DT_LAST_NAME)
	DT_Types.Add(DT_FULL_NAME)
	DT_Types.Add(DT_COUNTRY)
	DT_Types.Add(DT_CAPITAL_CITY)
	DT_Types.Add(DT_EMAIL)
	DT_Types.Add(DT_GMAIL)
	DT_Types.Add(DT_YAHOO)
	DT_Types.Add(DT_GENDER)
	DT_Types.Add(DT_LOREM_IPSUM)
	DT_Types.Add(DT_PHONE)
	DT_Types.Add(DT_YES_NO)
	DT_Types.Add(DT_SPORT)
	DT_Types.Add(DT_DATE)
	DT_Types.Add(DT_TIME)
	DT_Types.Add(DT_DATE_TIME)
	DT_Types.Add(DT_AGE)
	DT_Types.Add(DT_PINCODE)
	DT_Types.Add(DT_NUMBER)
	DT_Types.Add(DT_COMPANY_NAME)
	DT_Types.Add(DT_JOB_TITLE)
	DT_Types.Add(DT_IP_ADDRESS)
	DT_Types.Add(DT_MONEY)
	DT_Types.Add(DT_STREET)
	DT_Types.Add(DT_MONTH)
	DT_Types.Add(DT_MINUTES)
	DT_Types.Add(DT_SECONDS)
	DT_Types.Add(DT_HOUR)
	DT_Types.Add(DT_HEXCOLOR)
	DT_Types.Add(DT_PREFIX)
	DT_Types.Add(DT_PORT)
	DT_Types.Add(DT_HASHTAG)
	DT_Types.Add(DT_TWITTER)
	DT_Types.Add(DT_YEAR)
	DT_Types.Add(DT_WORD)
	DT_Types.Add(DT_TRUE_FALSE)
	DT_Types.Add(DT_ZERO_ONE)
	DT_Types.Add(DT_TITLE)
	DT_Types.Add(DT_CITY)
	DT_Types.Add(DT_STREET_2)
	DT_Types.Add(DT_STREET_3)
	DT_Types.Add(DT_MOBILE)
	DT_Types.Add(DT_ZIPCODE)
	DT_Types.Add(DT_STATE)
	DT_Types.Add(DT_PRODUCT_CATEGORY)
	DT_Types.Add(DT_TWENTY_WORDS)
	DT_Types.Add(DT_FIFTEEN_WORDS)
	DT_Types.Add(DT_TEN_WORDS)
	DT_Types.Add(DT_FIVE_WORDS)
	DT_Types.Add(DT_PAYMENT_PROVIDER)
	DT_Types.Sort(True)

	TrueOrFalse = False
	PrimaryKey = True
	Percentage=False
	Password =False
	Percent = False
	Name = False
	FirstName =False
	LastName = False
	Country =False
	CapitalCity =False
	Email =False
	Gmail =False
	Yahoo =False
	Gender =False
	Phone =False
	YesNo =False
	Date =False
	Time =False
	DateAndTime =False
	LoremIpsum =False
	Age =False
	PinCode =False
	Number =False
	CompanyName =False
	JobTitle =False
	Money =False
	IPAddress =False
	Street =False
	Month =False
	Sport =False
	Minutes =False
	HexColor =False
	Prefix =False
	Port =False
	HashTag =False
	Twitter =False
	Year =False
	FullName = False
	Seconds = False
	Hour = False
	Number = False
	Word = False
	ZeroOne = False
	City = False
	Street2 = False
	Street3 = False
	Mobile = False
	ZipCode = False
	Title = False
	State = False
	ProductCategory = False
	Product = False
	SKU = False
	Industry = False
	ExpenseCategory = False
	Rating = False
	IncomeCategory = False
	ContactCategory = False
	Department = False
	FiveWords = False
	TenWords = False
	FifteenWords = False
	TwentyWords = False
	Province = False
	Priority = False
	PaymentStatus = False
	PaymentProvider = False
	Vehicle = False
	VehicleMake = False
	VehicleType = False
	ProjectName = False
	ProjectStatus = False
	TaskName = False
	MedicalEventType = False
	MedicalDocument = False
	MedicalBillingType = False
	MedicalBillStatus = False
	MedicationStatus = False
	TimeFrequency = False
	MedicalCondition = False
	MedicalBillItem = False
	HospitalName = False
	MedicationName = False
	MedicalDocumentType = False
	EventStatus = False
	InsuranceCompany = False
	Return Me
End Sub

'add types of data should be returned
Sub All As SDUI5FakeIT
	InsuranceCompany = True
	MedicalDocumentType = True
	MedicalBillItem = True
	TimeFrequency = True
	MedicalDocument = True
	MedicalEventType = True
	State = True
	TaskName = True
	ProjectStatus = True
	VehicleMake = True
	SKU = True
	Province = True
	Department = True
	City = True
	Street2 = True
	Street3 = True
	Mobile = True
	ZipCode = True
	PrimaryKey = True
	Percentage=True
	Password =True
	Percent = True
	Name = True
	FirstName =True
	LastName = True
	Country =True
	CapitalCity =True
	Email =True
	Gmail =True
	Yahoo =True
	Gender =True
	Phone =True
	YesNo =True
	Date =True
	Time =True
	DateAndTime =True
	LoremIpsum =True
	Age =True
	PinCode =True
	Number =True
	CompanyName =True
	JobTitle =True
	Money =True
	IPAddress =True
	Street =True
	Month =True
	Sport =True
	Minutes =True
	HexColor =True
	Prefix =True
	Port =True
	HashTag =True
	Twitter =True
	Year =True
	FullName = True
	Seconds = True
	Hour = True
	Number = True
	Word = True
	TrueOrFalse = True
	ZeroOne = True
	Title = True
	ProductCategory = True
	Product = True
	Industry = True
	ExpenseCategory = True
	Rating = True
	IncomeCategory = True
	ContactCategory = True
	FiveWords = True
	TenWords = True
	FifteenWords = True
	TwentyWords = True
	Priority = False
	PaymentStatus = False
	PaymentProvider = True
	Vehicle = True
	VehicleType = True
	ProjectName = True
	MedicalBillingType = True
	MedicalBillStatus = True
	MedicationStatus = True
	MedicalCondition = True
	HospitalName = True
	MedicationName = True
	EventStatus = True
	Return Me
End Sub

'get a single record using a structure
Sub GetRecord(structure As Map) As Map
	Dim lst As List = BANano.Await(GetRecordsWithStructure(structure, 1))
	Return lst.Get(0)
End Sub

'get a record based on a list of fields
Sub GetRecord1(flds As List) As Map
	Dim nm As Map = ListToMap(flds)
	Return BANano.Await(GetRecord(nm))
End Sub
	
'convert a list to a map
Sub ListToMap(lst As List) As Map
	Dim nm As Map = CreateMap()
	For Each item As String In lst
		nm.Put(item, item)
	Next
	Return nm
End Sub


'get records from a defined structure using fieldname and dummy type
Sub GetRecordsWithStructure(structure As Map, numRecords As Int) As List
	Dim recs As List
	Dim tRecs As Int
	recs.Initialize 
	For tRecs = 1 To numRecords
		Dim rec As Map
		rec.Initialize 
		For Each strkey As String In structure.Keys
			Dim strVal As String = structure.Get(strkey)
			Dim svalue As Object = Null
			Select Case strVal
				Case DT_INSURANCE_COMPANY
					svalue = Rand_Insurance_Company
				Case DT_EVENT_STATUS
					svalue = Rand_Event_Status
				Case DT_MEDICAL_DOCUMENT_TYPE
					svalue = Rand_Medical_Document_Type
				Case DT_MEDICATION_NAME
					svalue = Rand_Medication_Name
				Case DT_HOSPITAL_NAME
					svalue = Rand_Hospital_Name
				Case DT_MEDICAL_BILL_ITEM
					svalue = Rand_Medical_Bill_Item
				Case DT_MEDICAL_CONDITION
					svalue = Rand_Medical_Condition
				Case DT_TIME_FREQUENCY
					svalue = Rand_Time_Frequency
				Case DT_MEDICATION_STATUS
					svalue = Rand_Medication_Status
				Case DT_MEDICAL_BILL_STATUS
					svalue = Rand_Medical_Bill_Status
				Case DT_MEDICAL_BILLING_TYPE
					svalue = Rand_Medical_BillingType
				Case DT_MEDICAL_DOCUMENT
					svalue = Rand_Medical_Document
				Case DT_MEDICAL_EVENT_TYPE
					svalue = Rand_Medical_Event_Type
				Case DT_TASK_NAME
					svalue = Rand_Task_Name
				Case DT_PROJECT_STATUS
					svalue = BANano.Await(Rand_Project_Status)
				Case DT_PROJECT_NAME
					svalue = BANano.Await(Rand_Project_Name)
				Case DT_VEHICLE_TYPE
					svalue = BANano.Await(Rand_Vehicle_Type)
				Case DT_VEHICLE_MAKE
					svalue = BANano.Await(Rand_Vehicle_Make)
				Case DT_VEHICLE
					svalue = BANano.Await(Rand_Vehicle)
				Case DT_PAYMENT_PROVIDER
					svalue = BANano.Await(Rand_Payment_Provider)
				Case DT_PRIORITY
					svalue = BANano.Await(Rand_Priority)
				Case DT_PAYMENT_STATUS
					svalue = BANano.Await(Rand_Payment_Status)
				Case DT_PROVINCE
					svalue = BANano.Await(Rand_Province)
				Case DT_FIVE_WORDS
					svalue = BANano.Await(Rand_Word(5))
				Case DT_TEN_WORDS
					svalue = BANano.Await(Rand_Word(10))
				Case DT_FIFTEEN_WORDS
					svalue = BANano.Await(Rand_Word(15))
				Case DT_TWENTY_WORDS
					svalue = BANano.Await(Rand_Word(20))
				Case DT_DEPARTMENT
					svalue = BANano.Await(Rand_Department)
				Case DT_CONTACT_CATEGORY
					svalue = BANano.Await(Rand_Contact_Category)
				Case DT_INCOME_CATEGORY
					svalue = BANano.Await(Rand_Income_Category)
				Case DT_RATING
					svalue = Rnd(0, 5)
				Case DT_EXPENSE_CATEGORY
					svalue = BANano.Await(Rand_Expense_Category)
				Case DT_INDUSTRY
					svalue = BANano.Await(Rand_Industry)
				Case DT_SKU
					svalue = BANano.Await(Rand_SKU)
				Case DT_PRODUCT
					svalue = BANano.Await(Rand_Product)
				Case DT_PRODUCT_CATEGORY
					svalue = BANano.Await(Rand_Product_Category)
				Case DT_WORD
					svalue = BANano.Await(Rand_Word(2))
				Case DT_PRIMARYKEY
					svalue = tRecs
				Case DT_PERCENTAGE
					svalue = BANano.Await(Rand_Percentage)
				Case DT_PERCENT
					svalue = BANano.Await(Rand_Percent)
				Case DT_PASSWORD
					svalue = BANano.Await(Rand_Password(8,True,True,True,True))
				Case DT_NAME
					svalue = BANano.Await(Rand_Human_Name)
				Case DT_FIRST_NAME
					svalue = BANano.Await(Rand_Human_Name)
				Case DT_LAST_NAME
					svalue = BANano.Await(Rand_Human_Name)
				Case DT_FULL_NAME
					svalue = BANano.Await(Rand_Full_Name)
				Case DT_COUNTRY
					svalue = BANano.Await(Rand_Country_Name)
				Case DT_CAPITAL_CITY
					svalue = BANano.Await(Rand_Capital_City)
				Case DT_CITY
					svalue = BANano.Await(Rand_Capital_City)
				Case DT_STREET_2
					svalue = BANano.Await(Rand_Home_Address)
				Case DT_STREET_3
					svalue = BANano.Await(Rand_Home_Address)
				Case DT_MOBILE
					svalue = BANano.Await(Rand_Phone_Number(27,10))
				Case DT_ZIPCODE
					svalue = BANano.Await(Rand_PinCode(5))
				Case DT_EMAIL
					svalue = BANano.Await(Rand_Email("icloud.com",True))
				Case DT_GMAIL
					svalue = BANano.Await(Rand_Gmail(True))
				Case DT_YAHOO
					svalue = BANano.Await(Rand_Yahoo_Mail(True))
				Case DT_GENDER
					svalue = BANano.Await(Rand_Gender)
				Case DT_LOREM_IPSUM
					svalue = BANano.Await(Rand_LoremIpsum(1))
				Case DT_PHONE
					svalue = BANano.Await(Rand_Phone_Number(27,10))
				Case DT_YES_NO
					svalue = BANano.Await(Rand_Yes_Or_No)
				Case DT_TRUE_FALSE
					svalue = BANano.Await(Rand_True_Or_False)
				Case DT_SPORT
					svalue = BANano.Await(Rand_Sport_Name)
				Case DT_DATE
					svalue = BANano.Await(Rand_Date)
				Case DT_TIME
					svalue = BANano.Await(Rand_Time)
				Case DT_DATE_TIME
					svalue = BANano.Await(Rand_DateTime)
				Case DT_AGE
					svalue = BANano.Await(Rand_Age("all"))
				Case DT_PINCODE
					svalue = BANano.Await(Rand_PinCode(4))
				Case DT_NUMBER
					svalue = BANano.Await(Rand_PinCode(4))
				Case DT_COMPANY_NAME
					svalue = BANano.Await(Rand_Company_Name)
				Case DT_JOB_TITLE
					svalue = BANano.Await(Rand_Occupation)
				Case DT_IP_ADDRESS
					svalue = BANano.Await(Rand_Ip_Address)
				Case DT_MONEY
					svalue = BANano.Await(Rand_Money(4))
				Case DT_STREET
					svalue = BANano.Await(Rand_Home_Address)
				Case DT_MONTH
					svalue = BANano.Await(Rand_Month)
				Case DT_MINUTES
					svalue = BANano.Await(Rand_Minute)
				Case DT_SECONDS
					svalue = BANano.Await(Rand_Seconds)
				Case DT_HOUR
					svalue = BANano.Await(Rand_Hour)
				Case DT_HEXCOLOR
					svalue = BANano.Await(Rand_HexColor)
				Case DT_PREFIX
					svalue = BANano.Await(Rand_Prefix("all"))
				Case DT_TITLE
					svalue = BANano.Await(Rand_Prefix("all"))
				Case DT_PORT
					svalue = BANano.Await(Rand_Port)
				Case DT_HASHTAG
					svalue = BANano.Await(Rand_HashTag)
				Case DT_TWITTER
					svalue = BANano.Await(Rand_Twitter)
				Case DT_YEAR
					svalue = BANano.Await(Rand_Year)
				Case DT_ZERO_ONE
					svalue = BANano.Await(Rand_Zero_Or_One)
				Case DT_STATE
					svalue = BANano.Await(Rand_US_State)
			End Select
			rec.Put(strkey,svalue)
		Next
		ProcessCondition(rec)
		recs.Add(rec)
	Next
	Return recs
End Sub

Sub AddCondition(fldName As String, fldValue As Object, UpdateFields As Map)
	Dim rec As Map
	rec.Initialize 
	rec.Put("name", fldName)
	rec.Put("value", fldValue)
	rec.Put("update", UpdateFields)
	Conditions.Put(fldName,rec)
End Sub

Sub ProcessCondition(rec As Map)
	For Each strfld As String In rec.Keys
		If Conditions.ContainsKey(strfld) Then
			'read value to check against
			Dim checkValue As Object = rec.Get(strfld)
			'get the condition
			Dim cond As Map = Conditions.Get(strfld)
			'get condition value
			Dim value As Object = cond.Get("value")
			'get values to update
			Dim update As Map = cond.Get("update")
			'condition match
			If checkValue = value Then
				For Each condfld As String In update.Keys
					Dim condvalue As Object = update.Get(condfld)
					rec.Put(condfld,condvalue)
				Next
			End If
		End If
	Next
End Sub

'get a single record
Sub GetSingle As FakeData
	Dim rt As FakeData
	rt.Initialize
	If InsuranceCompany Then rt.InsuranceCompany = rand_insurance_company
	If EventStatus Then rt.EventStatus = Rand_Event_Status
	If MedicalDocumentType Then rt.MedicalDocumentType = Rand_Medical_Document_Type
	If MedicationName Then rt.MedicationName = Rand_Medication_Name
	If HospitalName Then rt.HospitalName = Rand_Hospital_Name
	If MedicalBillItem Then rt.MedicalBillItem = Rand_Medical_Bill_Item
	If MedicalCondition Then rt.MedicalCondition = Rand_Medical_Condition
	If TimeFrequency Then rt.TimeFrequency = Rand_Time_Frequency
	If MedicationStatus Then rt.MedicationStatus = Rand_Medication_Status
	If MedicalBillStatus Then rt.MedicalBillStatus = Rand_Medical_Bill_Status
	If MedicalBillingType Then rt.MedicalBillingType = Rand_Medical_BillingType
	If MedicalDocument Then rt.MedicalDocument = Rand_Medical_Document
	If MedicalEventType Then rt.MedicalEventType = Rand_Medical_Event_Type
	If TaskName Then rt.TaskName = Rand_Task_Name
	If ProjectStatus Then rt.ProjectStatus = Rand_Project_Status
	If ProjectName Then rt.ProjectName = Rand_Project_Name
	If VehicleType Then rt.VehicleType = Rand_Vehicle_Type
	If VehicleMake Then rt.VehicleMake = Rand_Vehicle_Make
	If Vehicle Then rt.Vehicle = Rand_Vehicle
	If PaymentProvider Then rt.PaymentProvider = Rand_Payment_Provider
	If Priority Then rt.Priority = Rand_Priority
	If PaymentStatus Then rt.PaymentStatus = Rand_Payment_Status
	If Province Then rt.Province = Rand_Province
	If FiveWords Then rt.FiveWords = Rand_Word(5)
	If TenWords Then rt.TenWords = Rand_Word(10)
	If FifteenWords Then rt.FifteenWords = Rand_Word(15)
	If TwentyWords Then rt.TwentyWords = Rand_Word(20)
	If Department Then rt.Department = Rand_Department
	If ContactCategory Then rt.ContactCategory = Rand_Contact_Category
	If IncomeCategory Then rt.IncomeCategory = Rand_Income_Category
	If Rating Then rt.Rating = Rnd(0,5)
	If ExpenseCategory Then rt.ExpenseCategory = Rand_Expense_Category
	If Industry Then rt.Industry = Rand_Industry
	If SKU Then rt.SKU = Rand_SKU
	If Product Then rt.Product = Rand_Product
    If Title Then rt.Title = Rand_Prefix("all")
    If City Then rt.City = Rand_Capital_City
    If Street2 Then rt.Street2 = Rand_Home_Address
    If Street3 Then rt.Street3 = Rand_Home_Address
    If Mobile Then rt.Mobile = Rand_Phone_Number(27,10)
    If ZipCode Then rt.ZipCode = Rand_PinCode(5)
    If PrimaryKey Then rt.PrimaryKey = DateTime.Now
    If Percentage Then rt.Percentage = Rand_Percentage
    If Percent Then rt.Percent = Rand_Percent
    If Password Then rt.Password = Rand_Password(8,True,True,True,True)
    If Name Then rt.Name = Rand_Human_Name
    If FirstName Then rt.FirstName = Rand_Human_Name
    If LastName Then rt.LastName = Rand_Human_Name
    If FullName Then rt.FullName = Rand_Full_Name
    If Country Then rt.Country = Rand_Country_Name
    If CapitalCity Then rt.CapitalCity = Rand_Capital_City
    If Email Then rt.Email = Rand_Email("icloud.com",True)
    If Gmail Then rt.Gmail = Rand_Gmail(True)
    If Yahoo Then rt.Yahoo = Rand_Yahoo_Mail(True)
    If Gender Then rt.Gender = Rand_Gender
    If LoremIpsum Then rt.LoremIpsum = Rand_LoremIpsum(1)
    If Phone Then rt.Phone = Rand_Phone_Number(27,10)
    If YesNo Then rt.YesNo = Rand_Yes_Or_No
    If Sport Then rt.Sport = Rand_Sport_Name
    If Date Then rt.Date = Rand_Date
    If Time Then rt.Time = Rand_Time
    If DateAndTime Then rt.DateAndTime = Rand_DateTime
    If Age Then rt.Age = Rand_Age("all")
    If PinCode Then rt.PinCode = Rand_PinCode(4)
    If Number Then rt.Number = Rand_PinCode(4)
    If CompanyName Then rt.CompanyName = Rand_Company_Name
    If JobTitle Then rt.JobTitle = Rand_Occupation
    If IPAddress Then rt.IPAddress = Rand_Ip_Address
    If Money Then rt.Money = Rand_Money(4)
    If Street Then rt.Street = Rand_Home_Address
    If Month Then rt.Month = Rand_Month
    If Minutes Then rt.Minutes = Rand_Minute
    If Seconds Then rt.Seconds = Rand_Seconds
    If Hour Then rt.Hour = Rand_Hour
    If HexColor Then rt.HexColor = Rand_HexColor
    If Prefix Then rt.Prefix = Rand_Prefix("all")
    If Port Then rt.Port = Rand_Port
    If HashTag Then rt.HashTag = Rand_HashTag
    If Twitter Then rt.Twitter = Rand_Twitter
    If Year Then rt.Year = Rand_Year
    If Word Then rt.Word = Rand_Word(2)
    If TrueOrFalse Then rt.TrueOrFalse = Rand_True_Or_False
    If ZeroOne Then rt.ZeroOne = Rand_Zero_Or_One
    If State Then rt.State = Rand_US_State
	If ProductCategory Then rt.ProductCategory = Rand_Product_Category
    Return rt
End Sub

'return typed data
Sub GetMultiple(numRecords As Int) As List
	Dim recs As List
	recs.Initialize
	Dim tRecs As Int = 0
	For tRecs = 1 To numRecords
		Dim fd As FakeData = GetSingle
		recs.Add(fd)
	Next
	Return recs
End Sub

'return json data
Sub GetRecords(numRecords As Int) As List
	Dim recs As List
	recs.Initialize
	Dim tRecs As Int
	For tRecs = 1 To numRecords
		Dim rec As Map
		rec.Initialize
		If InsuranceCompany Then rec.put("insurancecompany", Rand_Insurance_Company)
		If EventStatus Then rec.Put("eventstatus", Rand_Event_Status)
		If MedicalDocumentType Then rec.Put("medicaldocumenttype", Rand_Medical_Document_Type)
		If MedicationName Then rec.Put("medicationname", Rand_Medication_Name)
		If HospitalName Then rec.Put("hospitalname", Rand_Hospital_Name)
		If MedicalBillItem Then rec.Put("medicalbillitem", Rand_Medical_Bill_Item)
		If MedicalCondition Then rec.Put("medicalcondition", Rand_Medical_Condition)
		If TimeFrequency Then rec.Put("timefrequency", Rand_Time_Frequency)
		If MedicationStatus Then rec.Put("medicationstatus", Rand_Medication_Status)
		If MedicalBillStatus Then rec.put("medicalbillstatus", Rand_Medical_Bill_Status)
		If MedicalBillingType Then rec.Put("medicalbillingtype", Rand_Medical_BillingType)
		If MedicalDocument Then rec.put("medicaldocument", Rand_Medical_Document)
		If MedicalEventType Then rec.Put("medicaleventtype", Rand_Medical_Event_Type)
		If TaskName Then rec.Put("taskname", Rand_Task_Name)
		If ProjectStatus Then rec.Put("projectstatus", Rand_Project_Status)
		If ProjectName Then rec.Put("projectname", Rand_Project_Name)
		If VehicleType Then rec.Put("vehicletype", Rand_Vehicle_Type)
		If VehicleMake Then rec.Put("vehiclemake", Rand_Vehicle_Make)
		If Vehicle Then rec.Put("vehicle", Rand_Vehicle)
		If PaymentProvider Then rec.put("paymentprovider", Rand_Payment_Provider)
		If Priority Then rec.Put("priority", Rand_Priority)
		If PaymentStatus Then rec.put("paymentstatus", Rand_Payment_Status)
		If Province Then rec.put("province", Rand_Province)
		If FiveWords Then rec.Put("fivewords", Rand_Word(5))
		If TenWords Then rec.Put("tenwords", Rand_Word(10))
		If FifteenWords Then rec.Put("fifteenwords", Rand_Word(15))
		If TwentyWords Then rec.Put("twentywords", Rand_Word(20))
		If Department Then rec.Put("department", Rand_Department)
		If ContactCategory Then rec.Put("contactcategory", Rand_Contact_Category)
		If IncomeCategory Then rec.Put("incomecategory", Rand_Income_Category)
		If Rating Then rec.Put("rating", Rnd(0,5))
		If ExpenseCategory Then rec.Put("expensecategory", Rand_Expense_Category)
		If Industry Then rec.Put("industry", Rand_Industry)
		If SKU Then rec.Put("sku", Rand_SKU)
		If Product Then rec.Put("product", Rand_Product)
		If Title Then rec.Put("title", Rand_Prefix("all"))
		If City Then rec.Put("city", Rand_Capital_City)
		If Street2 Then rec.Put("street2", Rand_Home_Address)
		If Street3 Then rec.Put("street3", Rand_Home_Address)
		If Mobile Then rec.Put("mobile", Rand_Phone_Number(27,10))
		If ZipCode Then rec.Put("mobile", Rand_PinCode(5))
		If PrimaryKey Then rec.Put("id", tRecs)
		If Percentage Then rec.Put("percentage", Rand_Percentage)
		If Percent Then rec.Put("percent", Rand_Percent)
		If Password Then rec.Put("password", Rand_Password(8,True,True,True,True))
		If Name Then rec.Put("name", Rand_Human_Name)
		If FirstName Then rec.Put("firstname", Rand_Human_Name)
		If LastName Then rec.Put("lastname", Rand_Human_Name)
		If FullName Then rec.Put("fullname", Rand_Full_Name)
		If Country Then rec.Put("country", Rand_Country_Name)
		If CapitalCity Then rec.Put("capitalcity", Rand_Capital_City)
		If Email Then rec.Put("email", Rand_Email("icloud.com",True))
		If Gmail Then rec.Put("gmail", Rand_Gmail(True))
		If Yahoo Then rec.Put("yahoo", Rand_Yahoo_Mail(True))
		If Gender Then rec.Put("gender", Rand_Gender)
		If LoremIpsum Then rec.Put("loremipsum", Rand_LoremIpsum(1))
		If Phone Then rec.Put("phone", Rand_Phone_Number(27,10))
		If YesNo Then rec.Put("yesno", Rand_Yes_Or_No)
		If Sport Then rec.Put("sport", Rand_Sport_Name)
		If Date Then rec.Put("date", Rand_Date)
		If Time Then rec.Put("time", Rand_Time)
		If DateAndTime Then rec.Put("datetime", Rand_DateTime)
		If Age Then rec.Put("age", Rand_Age("all"))
		If PinCode Then rec.Put("pincode", Rand_PinCode(4))
		If Number Then rec.Put("number", Rand_PinCode(4))
		If CompanyName Then rec.Put("companyname", Rand_Company_Name)
		If JobTitle Then rec.Put("jobtitle", Rand_Occupation)
		If IPAddress Then rec.Put("ipaddress", Rand_Ip_Address)
		If Money Then rec.Put("money", Rand_Money(4))
		If Street Then rec.Put("street", Rand_Home_Address)
		If Month Then rec.Put("month", Rand_Month)
		If Minutes Then rec.Put("minutes", Rand_Minute)
		If Seconds Then rec.Put("seconds", Rand_Seconds)
		If Hour Then rec.Put("hour", Rand_Hour)
		If HexColor Then rec.Put("hexcolor", Rand_HexColor)
		If Prefix Then rec.Put("prefix", Rand_Prefix("all"))
		If Port Then rec.Put("port", Rand_Port)
		If HashTag Then rec.Put("hashtag", Rand_HashTag)
		If Twitter Then rec.Put("twitter", Rand_Twitter)
		If Year Then rec.Put("year", Rand_Year)
		If Word Then rec.Put("word", Rand_Word(2))
		If TrueOrFalse Then rec.Put("truefalse", Rand_True_Or_False)
		If ZeroOne Then rec.Put("zeroone", Rand_Zero_Or_One)
		If State Then rec.put("state", Rand_US_State)
		If ProductCategory Then rec.Put("productcategory", Rand_Product_Category)
		recs.Add(rec)
	Next
	Return recs
End Sub

Sub Rand_Hospital_Name As String
	Dim hospitalNames As List
	hospitalNames.Initialize

	' --- South African Hospitals & Clinics ---
	hospitalNames.AddAll(Array As String( _
      "Chris Hani Baragwanath Academic Hospital", _
      "Tygerberg Hospital", _
      "Groote Schuur Hospital", _
      "Nelson Mandela Academic Hospital", _
      "Cecilia Makiwane Hospital", _
      "Dora Nginza Hospital", _
      "Steve Biko Academic Hospital", _
      "Inkosi Albert Luthuli Central Hospital", _
      "Netcare Milpark Hospital", _
      "Mediclinic Panorama", _
      "Hillcrest Private Hospital", _
      "Ethekwini Hospital & Heart Centre", _
      "Life Bay View Hospital", _
      "Busamed Gateway Private Hospital", _
      "Netcare Christiaan Barnard Memorial Hospital", _
      "Netcare Sandton Hospital", _
      "Life Entabeni Hospital", _
      "Mediclinic Cape Gate", _
      "Zuid‑Afrikaans Hospital", _
      "Red Cross War Memorial Children’s Hospital", _
      "Cormed Clinic (Vanderbijlpark)" _
    ))

	' --- International Hospitals & Clinics ---
	hospitalNames.AddAll(Array As String( _
      "Mayo Clinic (USA)", _
      "Cleveland Clinic (USA)", _
      "Johns Hopkins Hospital (USA)", _
      "Massachusetts General Hospital (USA)", _
      "Stanford University Medical Center (USA)", _
      "Cedars‑Sinai Medical Center (USA)", _
      "Charité – Universitätsmedizin Berlin (Germany)", _
      "Karolinska University Hospital (Sweden)", _
      "Sheba Medical Center (Israel)", _
      "Singapore General Hospital (Singapore)", _
      "MD Anderson Cancer Center (USA)", _
      "Houston Methodist Hospital (USA)", _
      "Toronto General Hospital (Canada)", _
      "Ronald Reagan UCLA Medical Center (USA)", _
      "Hôpital Universitaire Pitié-Salpêtrière (France)", _
      "Universitätsspital Zürich (Switzerland)", _
      "Sheikh Khalifa Medical City (UAE)", _
      "Apollo Hospitals (India)", _
      "Fortis Healthcare (India)", _
      "Bumrungrad International Hospital (Thailand)" _
    ))

	Return RandListValue(hospitalNames)
End Sub

Public Sub Rand_Event_Status As String
	Dim lst As List
	lst.Initialize

	lst.AddAll(Array As String( _
        "Draft", _
        "Planned", _
        "Scheduled", _
        "Tentative", _
        "Pending Approval", _
        "Awaiting Confirmation", _
        "Confirmed", _
        "Checked-In", _
        "In Queue", _
        "Waiting", _
        "Ready to Start", _
        "In Progress", _
        "Active", _
        "Paused", _
        "Delayed", _
        "Completed", _
        "Finished", _
        "Ended Early", _
        "Overdue", _
        "Cancelled", _
        "Postponed", _
        "Rescheduled", _
        "No-Show", _
        "Failed", _
        "Declined", _
        "Follow-Up Required", _
        "Follow-Up Scheduled", _
        "Closed", _
        "Archived" _
    ))

	Return RandListValue(lst)
End Sub

Sub Rand_Insurance_Company As String
	Dim insuranceCompanies As List
	insuranceCompanies.Initialize
    
	insuranceCompanies.AddAll(Array As String( _
        "HealthFirst Insurance", "WellCare Health", "United Health Group", "BlueCross BlueShield", "Cigna Health", _
        "Aetna Life Insurance", "Kaiser Permanente", "Humana Insurance", "Guardian Health", "MetLife Health", _
        "Nova Health Insurance", "EverCare Insurance", "Optima Health", "PrimeHealth Insurance", "SecureLife Health", _
        "AllWell Insurance", "TotalCare Health", "Viva Health Insurance", "MedSecure Insurance", "CarePoint Health", _
        "SafeHealth Insurance", "EliteCare Health", "LifeGuard Insurance", "HealthBridge Insurance", "MedPlus Insurance", _
        "WellPoint Health", "Unity Health Insurance", "BrightCare Insurance", "CureWell Health", "SureHealth Insurance", _
        "HealthEdge Insurance", "FamilyFirst Health", "ApexHealth Insurance", "Pioneer Health Insurance", "TrustCare Health", _
        "Summit Health Insurance", "HealthSphere Insurance", "NewPath Health", "EverWell Insurance", "LifeCare Insurance", _
        "CareGuard Health", "HealthAlliance Insurance", "BlueSky Health", "MediTrust Insurance", "TotalWell Health", _
        "OptimalCare Insurance", "CareFirst Health", "HealthLine Insurance", "MedSure Insurance", "WellBeing Insurance", _
        "NextGen Health Insurance", "PrimeCare Insurance", "SecureHealth Insurance", "LifePath Health", "GuardianPlus Insurance", _
        "HealthVision Insurance", "CaringHands Health", "BrightLife Insurance", "MediWell Insurance", "TrustHealth Insurance", _
        "ActiveCare Health", "WellMed Insurance", "CoreHealth Insurance", "UnityCare Insurance", "HealthPioneer Insurance", _
        "EverCare Plus", "MediCore Insurance", "SafeGuard Health", "HealthPoint Insurance", "VivaCare Insurance", _
        "TotalHealth Insurance", "MedLife Insurance", "CareNet Health", "HealthPro Insurance", "BlueLine Health", _
        "LifeShield Insurance", "WellTrust Insurance", "PrimeHealth Plus", "MediBridge Insurance", "HealthWay Insurance", _
        "EverTrust Health", "CareLink Insurance", "HealthFirst Plus", "SecureCare Health", "OptiMed Insurance", _
        "BrightGuard Insurance", "MediHealth Insurance", "UnityWell Insurance", "SafePath Health", "HealthPlus Insurance", _
        "NovaCare Insurance", "TrustWell Health", "LifeWell Insurance", "PrimeCare Plus", "MedVision Insurance", _
        "HealthPartners Insurance", "CareAdvantage Health", "TotalCare Plus", "WellShield Insurance", "OptiCare Health", _
        "BlueHealth Insurance", "HealthSecure Plus", "MediSure Insurance", "EverGuard Health", "LifePrime Insurance", _
        "CareFirst Plus", "HealthNet Insurance", "SafeCare Insurance", "UnityHealth Plus", "WellPath Insurance" _
    ))
    
	Return RandListValue(insuranceCompanies)
End Sub


Sub Rand_Medical_Document_Type As String
	Dim MedicalDocumentTypes As List
	MedicalDocumentTypes.Initialize
	MedicalDocumentTypes.AddAll(Array As String( _
    "Doctor Note", _
    "Clinical Note", _
    "Progress Note", _
    "Discharge Summary", _
    "Operative Report", _
    "Surgical Report", _
    "Anesthesia Report", _
    "Consultation Report", _
    "Radiology Report", _
    "X-Ray Report", _
    "MRI Report", _
    "CT Scan Report", _
    "Ultrasound Report", _
    "Pathology Report", _
    "Lab Test Result", _
    "Blood Test Result", _
    "Genetic Test Result", _
    "Vital Signs Record", _
    "Immunization Record", _
    "Vaccination Certificate", _
    "Prescription", _
    "Medication Order", _
    "Pharmacy Dispense Record", _
    "Allergy List", _
    "Medical History Form", _
    "Family History Document", _
    "Referral Letter", _
    "Admission Record", _
    "Pre-Op Assessment", _
    "Post-Op Assessment", _
    "Nursing Note", _
    "Triage Note", _
    "Emergency Visit Report", _
    "ER Discharge Note", _
    "Hospital Billing Statement", _
    "Insurance Claim Form", _
    "Authorization Form", _
    "Consent Form (General)", _
    "Consent Form (Surgery)", _
    "Consent Form (Medication)", _
    "Health Risk Assessment", _
    "Mental Health Evaluation", _
    "Psychiatric Report", _
    "Therapy Session Note", _
    "Dental Record", _
    "Optometry Report", _
    "Audiology Report", _
    "Rehabilitation Plan", _
    "Physiotherapy Note", _
    "Occupational Therapy Report", _
    "Nutrition Assessment", _
    "Diet Plan", _
    "Home Care Record", _
    "Caregiver Report", _
    "Device/Implant Document", _
    "Lab Requisition Form", _
    "Imaging Requisition Form", _
    "Medical Certificate", _
    "Fitness-for-Work Medical", _
    "Death Certificate", _
    "Birth Record", _
    "Prenatal Record", _
    "Postnatal Record", _
    "Emergency Contact Document" _
))
	Return RandListValue(MedicalDocumentTypes)
End Sub



Sub Rand_Medication_Name As String
	Dim meds As List
	meds.Initialize
    
	meds.AddAll(Array As String( _
      "Paracetamol", "Ibuprofen", "Aspirin", "Naproxen", "Diclofenac", "Celecoxib", "Tramadol", "Morphine", "Hydrocodone", "Codeine", _
      "Amoxicillin", "Azithromycin", "Ciprofloxacin", "Doxycycline", "Cephalexin", "Clindamycin", "Metronidazole", "Levofloxacin", "Penicillin V", "Vancomycin", _
      "Acyclovir", "Oseltamivir", "Zanamivir", "Valacyclovir", "Remdesivir", "Sofosbuvir", "Ribavirin", "Tenofovir", "Lamivudine", _
      "Amlodipine", "Lisinopril", "Losartan", "Metoprolol", "Carvedilol", "Atorvastatin", "Simvastatin", "Furosemide", "Hydrochlorothiazide", "Clopidogrel", _
      "Insulin (Regular)", "Insulin Glargine", "Metformin", "Glipizide", "Glyburide", "Pioglitazone", "Sitagliptin", "Canagliflozin", "Levothyroxine", "Methimazole", _
      "Salbutamol (Albuterol)", "Fluticasone", "Montelukast", "Budesonide", "Prednisone", "Cetirizine", "Loratadine", "Fexofenadine", "Ipratropium", "Tiotropium", _
      "Omeprazole", "Esomeprazole", "Ranitidine", "Lansoprazole", "Pantoprazole", "Ondansetron", "Metoclopramide", "Loperamide", "Dicyclomine", _
      "Fluoxetine", "Sertraline", "Citalopram", "Escitalopram", "Paroxetine", "Diazepam", "Lorazepam", "Alprazolam", "Haloperidol", "Risperidone", _
      "Vitamin D", "Vitamin C", "Vitamin B12", "Folic Acid", "Ferrous Sulfate", "Calcium Carbonate", "Magnesium", "Zinc", "Omega‑3", "Multivitamin", _
      "Warfarin", "Heparin", "Digoxin", "Allopurinol", "Hydroxychloroquine", "Methotrexate", "Prednisolone", "Cyclosporine", "Tacrolimus", _
      "Gabapentin", "Pregabalin", "Lamotrigine", "Carbamazepine", "Levetiracetam", "Valproic Acid", "Lithium Carbonate", "Topiramate", "Phenytoin", "Clonazepam", _
      "Amiodarone", "Diltiazem", "Verapamil", "Sildenafil", "Tadalafil", "Alendronate", "Risedronate", "Allopurinol", "Propranolol", "Metoprolol Succinate", _
      "Olanzapine", "Quetiapine", "Aripiprazole", "Ranitidine", "Famotidine", "Hydroxyzine", "Buspirone", "Eszopiclone", "Zolpidem", "Melatonin", _
      "Ethinyl Estradiol / Levonorgestrel", "Norgestimate / Ethinyl Estradiol", "Levothroid (Levothyroxine)", "Propranolol", "Isosorbide Mononitrate", "Nitroglycerin", _
      "Clopidogrel", "Prasugrel", "Ticagrelor", "Rivaroxaban", "Apixaban", "Dabigatran", "Atazanavir", "Ritonavir", "Efavirenz", "Darunavir", _
      "Lamivudine / Zidovudine", "Tenofovir Disoproxil", "Emtricitabine", "Nevirapine", "Abacavir", "Entecavir", "Sofosbuvir / Ledipasvir", "Tamoxifen", "Anastrozole", _
      "Letrozole", "Exemestane", "Trastuzumab", "Bevacizumab", "Infliximab", "Adalimumab", "Etanercept", "Secukinumab", "Ustekinumab", "Rituximab" _
    ))

	Return RandListValue(meds)
End Sub



Sub Rand_Task_Name As String
	Dim lst As List
	lst.Initialize
    lst.AddAll(Array As String("Plan", "Define", "Outline", "Estimate", "Schedule", "Organize", "Prioritize", _
        "Assign", "Research", "Brainstorm", "Prepare", "Propose", "Initiate", "Project Planning", _
        "Task Estimation", "Resource Allocation", "Requirement Gathering", "Risk Assessment", _
        "Goal Setting", "Strategy Meeting", "Budget Planning", "Timeline Review", "Project Roadmap", _
        "Set Objectives", "Define Scope", "Identify Risks", "Forecast Results", "Develop Strategy", _
        "Plan Event", "Organize Workshop", "Team Planning", "Set Milestones", "Action Planning", _
		"Discuss", "Review", "Comment", "Report", "Share", "Notify", "Announce", "Coordinate", _
        "Collaborate", "Consult", "Inform", "Request", "Respond", "Approve", "Confirm", "Remind", _
        "Invite", "Meet", "Team Meeting", "Client Meeting", "Design Review", "Status Update", _
        "Progress Discussion", "Performance Feedback", "Stakeholder Meeting", "Daily Standup", _
        "Brainstorm Session", "Follow Up", "Request Approval", "Send Notification", "Team Coordination", _
        "Project Discussion", "Lead Discussion", "Moderate Discussion", "Facilitate Meeting", _
        "Collaborate With Team", "Communicate Results", "Share Insights", "Provide Feedback", _
        "Present Ideas", "Discuss Options", "Negotiate Terms", "Consult Stakeholders", "Organize Discussion", _
		"Document", "Record", "Summarize", "Track", "Log", "Analyze", "Audit", "Verify", "Validate", _
        "Inspect", "Evaluate", "Document Requirements", "Write Report", "Prepare Summary", "Track Progress", _
        "Log Issues", "Analyze Data", "Evaluate Risks", "Inspect Deliverables", "Audit Records", "Verify Details", _
        "Prepare Documentation", "Summarize Findings", "Gather Feedback", "Compile Report", "Review Records", _
        "Assess Performance", "Monitor Results", "Evaluate Outcomes", "Create Checklist", "Document Changes", _
        "Deliver", "Launch", "Release", "Publish", "Promote", "Announce", "Client Handover", "Final Review", _
        "Sign Off", "Demo Presentation", "Showcase", "Presentation", "Present Findings", "Submit Work", _
        "Share Results", "Conduct Meeting", "Provide Feedback", "Evaluate Outcome", "Demonstrate Product", _
        "Review Proposal", "Present Report", "Hand Over Project", "Conduct Review", "Prepare Presentation", _
        "Show Work", "Present Summary", "Provide Assessment", "Finalize Document", "Deliver Presentation", _
        "Organize Files", "Clean Workspace", "Arrange Meeting", "Follow Instructions", "Provide Assistance", _
        "Support Team", "Manage Resources", "Train Staff", "Guide Colleagues", "Mentor Interns", _
        "Conduct Interview", "Onboard Employee", "Facilitate Workshop", "Coordinate Event", "Assist Client", _
        "Respond Inquiry", "Handle Request", "Resolve Issue", "Clarify Details", "Document Process", _
        "Track Inventory", "Prepare Materials", "Update Records", "Compile Data", "Summarize Notes", _
        "Verify Information", "Inspect Equipment", "Test Materials", "Check Quality", "Measure Results", _
        "Evaluate Data", "Provide Guidance", "Collaborate Effectively", "Plan Schedule", "Set Agenda", _
        "Lead Team", "Assign Responsibilities", "Coordinate Efforts", "Discuss Plan", "Analyze Situation", _
        "Brainstorm Solutions", "Review Performance", "Conduct Analysis", "Summarize Report", "Document Findings", _
        "Present Proposal", "Share Updates", "Monitor Progress", "Provide Recommendations", "Conduct Evaluation" _
    ))
	Return RandListValue(lst)
End Sub

Sub Rand_Medical_Bill_Item As String
	Dim procedures As List
	procedures.Initialize
    
	procedures.AddAll(Array As String( _
        "Appendectomy", "Angioplasty", "Biopsy", "Blood Transfusion", "Cardiac Catheterization", _
        "Cataract Surgery", "Cesarean Section (C-Section)", "Colonoscopy", "Coronary Artery Bypass Surgery", "CT Scan", _
        "Dialysis", "Endoscopy", "Electrocardiogram (ECG)", "Electroencephalogram (EEG)", "Gastroscopy", _
        "Hernia Repair", "Hip Replacement", "Hysterectomy", "Knee Replacement", "Laparoscopy", _
        "Lumpectomy", "Mastectomy", "MRI Scan", "Pacemaker Implantation", "Physical Therapy", _
        "Prostatectomy", "Radiation Therapy", "Spinal Fusion", "Tonsillectomy", "Ultrasound", _
        "Vaccination", "Vasectomy", "Varicose Vein Surgery", "Wound Closure", "Wound Debridement", _
        "Endovascular Repair", "Thyroidectomy", "Appendix Removal", "Skin Grafting", "Cholecystectomy", "Arthroscopy", _
        "Bone Marrow Transplant", "Cardioversion", "Dental Extraction", "Eye Exam", "Fertility Treatment", _
        "Gallbladder Surgery", "Kidney Transplant", "Liver Biopsy", "Lumbar Puncture", "IV Cannulation", _
        "Catheterization", "Circumcision", "Pacemaker Surgery", "Radiography (X-ray)", "Sinus Surgery", _
        "Sleep Study (Polysomnography)", "Spinal Tap", "Stent Placement", "Valve Replacement Surgery", "Vein Ligation", _
        "ERCP (Endoscopic Retrograde Cholangiopancreatography)", "Cervical Screening (Pap Smear)", "Skin Biopsy", _
        "Dental Filling", "Colposcopy", "Coronary Angiography", "Electrophysiology Study", "Endometrial Biopsy", _
        "Joint Injection", "Lumbar Decompression", "Mammography", "PET Scan", "Prostate Biopsy", "Thoracentesis", _
        "Tracheostomy", "Ureteroscopy", "Ventriculoperitoneal Shunt", "Arteriogram", "Bunion Surgery", "Cleft Lip Repair", _
        "Dental Cleaning", "Hysteroscopy", "Keratoplasty", "Liver Transplant", "Nephrectomy", "Oophorectomy", _
        "Paracentesis", "Radical Prostatectomy", "Sinus Lift", "Thrombectomy", "Tympanoplasty", "Vasectomy Reversal", _
        "Cardiac Ablation", "Endoscopic Sinus Surgery", "Joint Replacement", "Laminectomy", "Myomectomy", _
        "Peritoneal Dialysis", "Spinal Cord Stimulation", "Angiography", "Arthroplasty", "Bronchoscopy", _
        "Carotid Endarterectomy", "Cleft Palate Repair", "Coronary Angioplasty", "Cryotherapy", "Dental Crowns", _
        "Endovascular Coiling", "ENT Examination", "Eye Surgery", "Fistula Repair", "Fracture Repair", "Gastric Bypass Surgery", _
        "Heart Transplant", "Hysterectomy Laparoscopic", "Inguinal Hernia Surgery", "Intravenous Therapy (IV)", _
        "Joint Arthroscopy", "Kidney Stone Removal", "Laser Eye Surgery", "Ligament Repair", "Liver Resection", _
        "Lumbar Fusion", "Mole Removal", "Neck Discectomy", "Ophthalmic Surgery", "Orthopedic Surgery", "Pacemaker Check", _
        "Pancreas Surgery", "Parathyroid Surgery", "Percutaneous Coronary Intervention (PCI)", "Peripheral Angioplasty", _
        "Plastic Surgery", "Proctoscopy", "Pulmonary Function Test", "Rhinoplasty", "Scoliosis Surgery", _
        "Sinus Endoscopy", "Skin Resurfacing", "Spinal Decompression", "Stem Cell Transplant", "Thyroid Surgery", _
        "Tonsil & Adenoid Removal", "Transesophageal Echocardiogram", "Tracheal Surgery", "Urologic Surgery", _
        "Vascular Surgery", "Abdominoplasty", "Achilles Tendon Repair", "ACL Reconstruction", "Amputation Surgery", _
        "Arthrodesis", "Bariatric Surgery", "Bladder Surgery", "Breast Biopsy", "Breast Reconstruction", _
        "Carpal Tunnel Surgery", "Cervical Spine Surgery", "Chiropractic Adjustment", "Colostomy", "Dental Implant", _
        "Deep Brain Stimulation", "Endocrine Surgery", "Esophagectomy", "Fasciotomy", "Gastrostomy", _
        "Hemodialysis", "Hernia Mesh Repair", "Hip Arthroscopy", "Intestinal Surgery", "Joint Aspiration", _
        "Kidney Biopsy", "Laminectomy for Spinal Stenosis", "Laparoscopic Cholecystectomy", "Lumbar Disc Surgery", _
        "Mandibular Surgery", "Mastectomy Radical", "Microdiscectomy", "Minimally Invasive Surgery", "Mitral Valve Repair", _
        "Neck Surgery", "Neurosurgery", "Obstetric Surgery", "Ocular Surgery", "Osteotomy", "Pancreatectomy", _
        "Parotidectomy", "Pelvic Surgery", "Pediatric Surgery", "Pericardiocentesis", "Peripheral Vascular Surgery", _
        "Plastic Reconstructive Surgery", "Prostate Surgery", "Pulmonary Surgery", "Renal Surgery", "Retinal Surgery", _
        "Rib Fracture Surgery", "Robotic Surgery", "Rotator Cuff Repair", "Sacral Nerve Stimulation", "Saphenous Vein Surgery", _
        "Scleral Buckling", "Skin Flap Surgery", "Spinal Instrumentation", "Spinal Osteotomy", "Spleen Surgery", "Sternotomy", _
        "Strabismus Surgery", "Thymectomy", "Thoracic Surgery", "Tibial Fracture Surgery", "Transplant Surgery", _
        "Transurethral Resection of Prostate (TURP)", "Trigeminal Neuralgia Surgery", "Urethral Surgery", "Uterine Surgery", _
        "Vagotomy", "Vascular Graft Surgery", "Ventricular Assist Device Implantation", "Vertebroplasty", "Vitrectomy", "Wrist Surgery", "Zygomatic Surgery" _
    ))
 	Return RandListValue(procedures)
End Sub


Sub Rand_Medical_Bill_Status As String
	Dim billingStatuses As List
	billingStatuses.Initialize
    
	' --- General Billing Statuses ---
	billingStatuses.Add("Pending")                ' Billing not yet processed
	billingStatuses.Add("Submitted")              ' Claim submitted to insurance or patient
	billingStatuses.Add("Approved")               ' Claim approved for payment
	billingStatuses.Add("Denied")                 ' Claim denied by insurance or payer
	billingStatuses.Add("Paid")                   ' Payment received
	billingStatuses.Add("Partially Paid")         ' Partial payment received
	billingStatuses.Add("Under Review")           ' Currently being reviewed
	billingStatuses.Add("Cancelled")              ' Claim cancelled
	billingStatuses.Add("On Hold")                ' Billing temporarily paused
	billingStatuses.Add("Adjusted")               ' Amount adjusted after review
	billingStatuses.Add("Refunded")               ' Payment refunded to payer or patient

	' --- Insurance-Related Statuses ---
	billingStatuses.Add("Awaiting Insurance")        ' Waiting for insurance verification
	billingStatuses.Add("Insurance Pending")         ' Insurance claim not yet processed
	billingStatuses.Add("Insurance Approved")        ' Insurance approved the claim
	billingStatuses.Add("Insurance Denied")          ' Insurance denied the claim
	billingStatuses.Add("Patient Responsibility")    ' Amount to be paid by patient
	billingStatuses.Add("Coordination of Benefits")  ' Multiple insurances involved
	billingStatuses.Add("Pre-Authorization Required") ' Needs prior insurance approval
	billingStatuses.Add("Claim Re-Submission")       ' Claim needs resubmission
	billingStatuses.Add("Insurance Audit")           ' Claim under insurance audit
	billingStatuses.Add("Insurance Adjustment")      ' Adjustment made by insurance
	billingStatuses.Add("Secondary Insurance Pending") ' Waiting for secondary insurance

	' --- Payment/Collection Statuses ---
	billingStatuses.Add("Collections")              ' Sent to collections
	billingStatuses.Add("Payment Plan")             ' Payment scheduled in installments
	billingStatuses.Add("Write-Off")                ' Amount written off by provider
	billingStatuses.Add("Bad Debt")                 ' Uncollectible payment

	' --- Special/Administrative Statuses ---
	billingStatuses.Add("Duplicate Claim")          ' Duplicate billing entry detected
	billingStatuses.Add("Coding Error")             ' Issue with medical coding
	billingStatuses.Add("Documentation Required")   ' Missing documents for processing
	billingStatuses.Add("Insurance Verification Failed") ' Insurance info invalid
	billingStatuses.Add("Pending Review by Admin") ' Administrative review in progress
	Return RandListValue(billingStatuses)
End Sub

Sub Rand_Medication_Status As String
	Dim medicationStatuses As List
	medicationStatuses.Initialize
    
	' --- Prescription/Order Statuses ---
	medicationStatuses.Add("Prescribed")
	medicationStatuses.Add("Ordered")
	medicationStatuses.Add("Pending Approval")
	medicationStatuses.Add("Verified")
	medicationStatuses.Add("Approved")           ' Added to match your list
	medicationStatuses.Add("Cancelled")
    
	' --- Dispensing Statuses ---
	medicationStatuses.Add("Processing")         ' Added to match your list
	medicationStatuses.Add("Ready for Pickup")
	medicationStatuses.Add("Dispensed")
	medicationStatuses.Add("Out of Stock")
    
	' --- Administration Statuses ---
	medicationStatuses.Add("Administered")
	medicationStatuses.Add("Missed Dose")
	medicationStatuses.Add("Delayed")
	medicationStatuses.Add("Refused")
    
	' --- Special/Tracking Statuses ---
	medicationStatuses.Add("Expired")
	medicationStatuses.Add("Returned")
	medicationStatuses.Add("On Hold")
	medicationStatuses.Add("Discontinued")
    
	' --- Refill Statuses ---
	medicationStatuses.Add("Refill Needed")     ' Added
	medicationStatuses.Add("Refill Approved")   ' Added
    
	Return RandListValue(medicationStatuses)
End Sub


Sub Rand_Medical_Document As String
	Dim docs As List
	docs.Initialize

	docs.AddAll(Array As String( _
        "Admission Form", _
        "Advance Directive", _
        "Allergy Assessment", _
        "Ambulance Report", _
        "Anesthesia Assessment", _
        "Anesthesia Consent Form", _
        "Anesthesia Record", _
        "Audiology Assessment", _
        "Biopsy Report", _
        "Birth Certificate Medical Record", _
        "Blood Culture Report", _
        "Blood Gas Analysis Report", _
        "Blood Glucose Log", _
        "Blood Test Report", _
        "Bone Density Scan Report", _
        "Cancer Staging Report", _
        "Care Plan", _
        "Cardiac Catheterization Report", _
        "Cardiac Stress Test Report", _
        "Cardiology Consultation", _
        "Cardiothoracic Surgery Report", _
        "Case Management Note", _
        "CBC Test Report", _
        "Chemotherapy Cycle Report", _
        "Chemotherapy Order Sheet", _
        "Child Growth Chart", _
        "Clinical Assessment", _
        "Clinical Imaging Summary", _
        "Clinical Note", _
        "Clinical Procedure Report", _
        "Clinical Progress Note", _
        "Clinical Summary", _
        "Colonoscopy Report", _
        "Community Health Referral", _
        "Consultation Report", _
        "Consent Form", _
        "Continence Assessment", _
        "COPD Assessment Document", _
        "CT Scan Report", _
        "COVID-19 Antigen Result", _
        "COVID-19 PCR Test Result", _
        "COVID-19 Vaccination Card", _
        "Critical Care Summary", _
        "Daily Nursing Note", _
        "Daily Progress Note", _
        "Dental Chart", _
        "Dental Examination Report", _
        "Dental Referral Letter", _
        "Dermatology Assessment", _
        "Discharge Medication List", _
        "Discharge Plan", _
        "Discharge Summary", _
        "Dietician Assessment", _
        "Diabetic Foot Screening", _
        "Diagnostic Imaging Request Form", _
        "Diagnostic Imaging Report", _
        "Diagnostic Test Order", _
        "Dialysis Record", _
        "Drug Allergy Alert", _
        "Drug Administration Record", _
        "Drug Chart", _
        "Echocardiogram Report", _
        "ECG Report", _
        "EEG Report", _
        "Emergency Admission Form", _
        "Emergency Care Summary", _
        "Emergency Department Chart", _
        "Emergency Nursing Report", _
        "Emergency Procedure Report", _
        "Endocrinology Assessment", _
        "Endoscopy Report", _
        "ENT Assessment", _
        "Environmental Health Assessment", _
        "Epidemiology Case Record", _
        "ER Intake Form", _
        "ER Prescription", _
        "ER Procedure Report", _
        "ER Treatment Report", _
        "Exercise Tolerance Test Report", _
        "Family Medical History Form", _
        "Fertility Assessment", _
        "First Aid Report", _
        "Follow-up Consultation Report", _
        "Gastroenterology Consultation", _
        "General Consultation Report", _
        "General Medical Certificate", _
        "Genetic Testing Report", _
        "Geriatric Assessment", _
        "Gynecology Examination Report", _
        "Health Education Notes", _
        "Health Insurance Authorization", _
        "Health Risk Assessment", _
        "Hematology Report", _
        "Home Care Visit Record", _
        "Hospital Invoice", _
        "ICU Admission Report", _
        "ICU Daily Report", _
        "ICU Progress Note", _
        "ICU Ventilation Log", _
        "Immunization Certificate", _
        "Immunization Record", _
        "Imaging CD Index Sheet", _
        "Imaging Comparison Report", _
        "Imaging Summary", _
        "Incident Report", _
        "Informed Consent Document", _
        "Insurance Claim Form", _
        "Insurance Coverage Letter", _
        "Insurance Payment Receipt", _
        "Intake Assessment Form", _
        "Intravenous Therapy Record", _
        "Labor Progress Record", _
        "Lab Order Form", _
        "Lab Result Summary", _
        "Lab Test Request", _
        "Lab Test Result", _
        "Lactation Consultant Report", _
        "Laparoscopy Report", _
        "Legal Medical Report", _
        "Lifestyle Assessment", _
        "Mammogram Report", _
        "Maternity Care Record", _
        "Medical Aid Claim Document", _
        "Medical Certificate", _
        "Medical Clearance Letter", _
        "Medical Device Tracking Form", _
        "Medical History Form", _
        "Medical Invoice", _
        "Medical Referral Letter", _
        "Medical Report", _
        "Medication Administration Record", _
        "Medication Chart", _
        "Medication Contraindication Warning", _
        "Medication Reconciliation Form", _
        "Medication Refill Request", _
        "Mental Health Assessment", _
        "Mental Health Progress Note", _
        "Microbiology Report", _
        "Midwife Delivery Summary", _
        "MRI Report", _
        "Neonatal Screening Report", _
        "Nephrology Consultation", _
        "Neurology Assessment", _
        "Neurology Scan Report", _
        "Nursing Assessment", _
        "Nursing Care Plan", _
        "Nursing Note", _
        "Nutrition Assessment", _
        "Obstetrics Ultrasound Report", _
        "Occupational Therapy Assessment", _
        "Oncology Progress Note", _
        "Oncology Treatment Plan", _
        "Ophthalmology Examination Report", _
        "Optometry Vision Test", _
        "Orthopedic Assessment", _
        "Pain Management Plan", _
        "Pediatric Consultation Report", _
        "Pediatric Growth Record", _
        "Perinatal Record", _
        "Pharmacy Dispense Record", _
        "Pharmacy Order Form", _
        "Physical Therapy Assessment", _
        "Physical Therapy Progress Note", _
        "Physician Letter", _
        "Physician Note", _
        "Post-Op Follow-up Report", _
        "Post-Operative Summary", _
        "Postnatal Care Record", _
        "Prenatal Care Record", _
        "Prescription", _
        "Prescription Audit Sheet", _
        "Procedure Consent Form", _
        "Procedure Report", _
        "Prognosis Report", _
        "Psychiatric Assessment", _
        "Psychiatric Discharge Summary", _
        "Psychiatric Progress Note", _
        "Psychology Evaluation", _
        "Pulmonology Assessment", _
        "Radiation Therapy Plan", _
        "Radiation Therapy Session Summary", _
        "Radiology Comparison Letter", _
        "Radiology Report", _
        "Radiology Summary", _
        "Rehabilitation Progress Report", _
        "Release of Information Form", _
        "Renal Function Report", _
        "Respiratory Therapy Assessment", _
        "Routine Health Screening", _
        "Safety Audit Checklist", _
        "School Health Record", _
        "Screening Test Result", _
        "Sedation Record", _
        "Semen Analysis Report", _
        "Social Worker Assessment", _
        "Specialist Consultation Letter", _
        "Speech Therapy Assessment", _
        "Spirometry Report", _
        "Stress Test ECG Report", _
        "Surgical Consent Form", _
        "Surgical Follow-up Report", _
        "Surgical Report", _
        "Telemedicine Consultation Note", _
        "Trauma Assessment", _
        "Treatment Authorization Request", _
        "Treatment Plan", _
        "Ultrasound Report", _
        "Urine Test Report", _
        "Vaccination Card", _
        "Vaccination Record", _
        "Ventilator Settings Chart", _
        "Vital Signs Chart", _
        "Vital Signs Sheet", _
        "Ward Round Note", _
        "Work Excuse Note", _
        "Wound Care Assessment", _
        "Wound Dressing Record" _
    ))
	Return RandListValue(docs)
End Sub

Sub Rand_Medical_BillingType As String
	Dim lst As List
	lst.Initialize

	lst.AddAll(Array As String( _
        "Inpatient", _
        "Outpatient", _
        "Emergency", _
        "Surgery", _
        "Pharmacy", _
        "Laboratory", _
        "Radiology", _
        "Pathology", _
        "Consultation", _
        "Specialist", _
        "ICU", _
        "Procedure", _
        "Maternity", _
        "Dental", _
        "Mental Health", _
        "Rehabilitation", _
        "Physical Therapy", _
        "Occupational Therapy", _
        "Speech Therapy", _
        "Telemedicine", _
        "Home Care", _
        "Chronic Disease", _
        "Preventive Care", _
	"Insurance Claim", _
        "Co-Payment", _
        "Deductible", _
        "Co-Insurance", _
        "Self-Pay", _
        "Medical Aid", _
        "Third-Party", _
        "Corporate Medical", _
        "Workers Compensation", _
        "Motor Vehicle Accident", _
        "Pre-Authorization", _
        "Denied Claim Rebilling", _
	"DRG (Diagnosis Related Group)", _
        "CPT Code", _
        "ICD-10 Diagnosis", _
        "HCPCS", _
        "Fee-For-Service", _
        "Capitation", _
        "Bundled Payment", _
        "Episode of Care", _
        "Global Bill", _
        "Split Bill", _
        "Partial Bill", _
	"Adhoc Item", _
        "Room & Board", _
        "Medical Supplies", _
        "Medical Equipment Rental", _
        "Ambulance Transport", _
        "Blood Product", _
        "Vaccination", _
        "Anesthesia", _
        "Operating Theatre", _
        "Follow-up Visit" _
    ))

	Return RandListValue(lst)
End Sub



Sub Rand_Medical_Event_Type As String
	Dim events As List
	events.Initialize

	events.AddAll(Array As String( _
        "Doctor Visit", _
        "ER Visit", _
        "Scheduled Appointment", _
        "Lab Test", _
        "Doctor Call", _
        "Insurance Meeting", _
        "General Checkup", _
        "Blood Test", _
        "X-Ray Scan", _
        "MRI Scan", _
        "CT Scan", _
        "Ultrasound", _
        "Vaccination", _
        "Prescription Issued", _
        "Medication Refill", _
        "Hospital Admission", _
        "Surgery", _
        "Follow-up Consultation", _
        "Dentist Appointment", _
        "Eye Examination", _
        "Physical Therapy Session", _
        "Mental Health Consultation", _
        "Allergy Test", _
        "COVID-19 Test", _
        "COVID-19 Vaccination", _
        "Prenatal Checkup", _
        "Pediatric Consultation", _
        "Specialist Referral", _
        "Lab Test Result Received", _
        "Discharge from Hospital", _
        "Routine Health Screening", _
        "Travel Health Clearance" _
    ))
	Return RandListValue(events)
End Sub


Sub Rand_Project_Status As String
	Dim lst As List
	lst.Initialize

	lst.AddAll(Array As String( _
        "Planned", _
		"Not Started", _
        "Proposed", _
        "Requested", _
        "Approved", _
        "Pending", _
        "On Hold", _
        "In Progress", _
        "Under Review", _
        "Testing", _
        "Awaiting Feedback", _
        "Reopened", _
        "Blocked", _
        "Cancelled", _
        "Deferred", _
        "Completed", _
        "Closed", _
        "Archived", _
        "Deployed", _
        "Maintenance", _
        "Retired" _
    ))
	Return RandListValue(lst)
End Sub


Sub Rand_Project_Name As String
	Dim lst As List
	lst.Initialize

	' --- NATO alphabet phonetic names ---
	Dim nato() As String = Array As String( _
        "Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot", "Golf", _
        "Hotel", "India", "Juliett", "Kilo", "Lima", "Mike", "November", _
        "Oscar", "Papa", "Quebec", "Romeo", "Sierra", "Tango", "Uniform", _
        "Victor", "Whiskey", "X-ray", "Yankee", "Zulu" _
    )

	' --- NATO numeric names (0–9) ---
	Dim nums() As String = Array As String( _
        "Zero", "One", "Two", "Tree", "Four", "Fife", "Six", "Seven", "Eight", "Niner" _
    )

	' --- Step 1: Add all individual alphabet projects ---
	For Each n As String In nato
		lst.Add("Project " & n)
	Next

	' --- Step 2: Add all individual numeric projects ---
	For Each num As String In nums
		lst.Add("Project " & num)
	Next

	' --- Step 3: Add all combinations (Letter + Number) ---
	For Each n As String In nato
		For Each num As String In nums
			lst.Add($"Project ${n} ${num}"$)
		Next
	Next

	' --- Step 4: Add your B4X identity projects ---
	lst.AddAll(Array As String( _
        "Project Bravo Four", _
        "Project Bravo X-ray", _
        "Project Four X-ray", _
        "Project Bravo Four X-ray" _
    ))
	Return RandListValue(lst)
End Sub

Sub Rand_Vehicle_Type As String
	Dim types As List
	types.Initialize
	types.AddAll(Array As String("Sedan", "SUV", "MPV", "Crossover", "Hatchback", _
        "Pickup Truck", "Coupe", "Convertible", "Wagon", "Minivan", "Estate", _
        "Sports Car", "Luxury Sedan", "Compact SUV", "Midsize SUV", _
        "Full-size SUV", "Compact Car", "Van", "Electric Vehicle"))
	Return RandListValue(types)
End Sub

Sub Rand_Vehicle_Make As String
	Dim makes As List
	makes.Initialize
	' Top Global Brands by Market Share (95% coverage)
	' These brands represent the vast majority of vehicles on the road worldwide
    
	' Top 10 Global (≈50% of global market)
	makes.Add("Toyota")           ' #1 globally, includes Lexus
	makes.Add("Volkswagen")       ' #2 globally, VW Group
	makes.Add("Ford")             ' #3-4 globally
	makes.Add("Honda")            ' #4-5 globally
	makes.Add("Nissan")           ' #5-6 globally
	makes.Add("Chevrolet")        ' GM's main brand
	makes.Add("Hyundai")          ' #7-8 globally
	makes.Add("Kia")              ' Sister to Hyundai
	makes.Add("Mercedes-Benz")    ' Top premium brand
	makes.Add("BMW")              ' Top premium brand
    
	' Major Volume Brands (Next 30-35% of market)
	makes.Add("Audi")             ' VW Group premium
	makes.Add("Mazda")            ' Strong global presence
	makes.Add("Subaru")           ' Popular in many markets
	makes.Add("Renault")          ' Major European/global
	makes.Add("Peugeot")          ' Stellantis group
	makes.Add("Fiat")             ' Stellantis group
	makes.Add("Jeep")             ' Stellantis, global SUV brand
	makes.Add("Ram")              ' Popular trucks
	makes.Add("GMC")              ' GM trucks/SUVs
	makes.Add("Mitsubishi")       ' Global presence
	makes.Add("Suzuki")           ' Strong in Asia/India
	makes.Add("Škoda")            ' VW Group, Europe/Asia
	makes.Add("Seat")             ' VW Group, Europe
	makes.Add("Citroën")          ' Stellantis group
	makes.Add("Opel/Vauxhall")    ' Stellantis, Europe
	makes.Add("Buick")            ' GM, big in China
	makes.Add("Volvo")            ' Geely owned, global premium
	makes.Add("Land Rover")       ' Tata owned, global SUVs
    
	' Important Regional & Growing Brands (Next 10% of market)
	makes.Add("Tesla")            ' Leading EV brand
	makes.Add("BYD")              ' #1 in China EVs
	makes.Add("Geely")            ' Major Chinese brand
	makes.Add("Lexus")            ' Toyota's luxury brand
	makes.Add("Dodge")            ' Stellantis, North America
	makes.Add("Chrysler")         ' Stellantis, North America
	makes.Add("Cadillac")         ' GM luxury
	makes.Add("Porsche")          ' VW Group sports/luxury
	makes.Add("Mini")             ' BMW Group
	makes.Add("Jaguar")           ' Tata owned, luxury
	makes.Add("Infiniti")         ' Nissan luxury
	makes.Add("Acura")            ' Honda luxury
	makes.Add("Genesis")          ' Hyundai luxury
	makes.Add("Lincoln")          ' Ford luxury
	makes.Add("Dacia")            ' Renault budget brand
	makes.Add("MG")               ' SAIC owned, growing globally
	makes.Add("Tata")             ' Major in India
	makes.Add("Mahindra")         ' Major in India
	makes.Add("Maruti Suzuki")    ' Dominates India
	makes.Add("Changan")          ' Major Chinese brand
	makes.Add("Great Wall/Haval") ' Chinese SUV specialist
	makes.Add("Wuling")           ' GM-SAIC, huge in China
	Return RandListValue(makes)
End Sub

Sub Rand_Department As String
	Dim departments As List
	departments.Initialize
	departments.AddAll(Array As String( _
        "Human Resources", "Finance", "Information Technology", "Marketing", "Sales", "Operations", _
        "Customer Service", "Legal", "Research & Development", "Production/Manufacturing", "Accounting", _
        "Purchasing/Procurement", "Quality Assurance", "Administration", "Logistics", "Engineering", _
        "Design", "Communications", "Training", "Health & Safety" _
    ))
	Return RandListValue(departments)
End Sub

Sub Rand_Contact_Category As String
	Dim categories As List
	categories.Initialize
	categories.AddAll(Array As String("Personal", "Work", "Family", "Friends", "Colleagues", _
	"Clients", "Suppliers", "Vendors", "Partners", "Referrals", _
	"Emergency", "Social", "Acquaintances", "Service Providers", _
	"Business", "Contractor", "Consultant", "Volunteer", "Investor", _
	"Landlord", "Tenant", "Student", "Teacher", "Doctor", _
	"Patient", "Lawyer", "Agent", "Affiliate", "Distributor", _
	"Reseller", "Member", "Donor", "Beneficiary", "Stakeholder", _
	"Media", "Press", "Government", "Nonprofit", "Other", "Customer", "Lead", "Prospect", "Subscriber", _
	"VIP", "Blacklisted", "Inactive", "Archived", _
	"Support", "Technical", "Sales", "Marketing", _
	"Accounting", "HR", "Legal", "Operations"))
	Return RandListValue(categories)
End Sub

Sub Rand_Income_Category As String
    ' Define common income categories
    Dim allCategories As List
    allCategories.Initialize
    allCategories.AddAll(Array As String( _
        "Salary", "Wages", "Freelance Income", "Business Income", "Rental Income", "Investment Income", _
        "Dividends", "Interest", "Retirement Income", "Pension", "Social Security", "Government Benefits", _
        "Unemployment Benefits", "Gifts", "Child Support", "Alimony", "Side Hustle", "Royalties", "Bonuses", _
        "Commissions", "Consulting Fees", "Inheritance", "Tax Refund", "Sale of Assets", "Grants", "Scholarships", _
        "Tips", "Capital Gains", "Stocks", "Cryptocurrency Income", "Partnership Income", "Trust Income", _
        "Prizes", "Lottery Winnings", "Reimbursements", "Contract Work", "Gig Economy", "Annuities", _
        "Disability Benefits", "Workers' Compensation"))
	Return RandListValue(allCategories)
End Sub	

'This will generate random numeric codes
'Example:
'<code>log(CFStringUtility.generatePinCode(4)) 'This will generate 4 random numbers
' 'Outputs something like this: 3760
 ' </code>
Public Sub Rand_PinCode(PinLength As Int) As Int
	Dim result As String =""
	Dim RandomArray() As String = Array As String(1,2,3,4,5,6,7,8,9,0)
	For i = 0 To PinLength - 1
		result = result &  RandomArray( Rnd( 0, Rnd(2, RandomArray.Length -1)) )
	Next
	Return  result
End Sub

Sub Rand_Month As String
	Return Rnd(1,12)
End Sub

Sub Rand_Minute As String
	Return Rnd(1,59)
End Sub

Sub Rand_Seconds As String
	Return Rnd(1,59)
End Sub

Sub Rand_Hour As String
	Return Rnd(1,12)
End Sub

Sub Rand_HexColor As String
	Dim result As StringBuilder
	result.Initialize
	Dim RandomArray() As String = Array As String("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f")
	result.Append("#")
	result.Append(RandomArray(Rnd(0,15)))
	result.Append(RandomArray(Rnd(0,15)))
	result.Append(RandomArray(Rnd(0,15)))
	result.Append(RandomArray(Rnd(0,15)))
	result.Append(RandomArray(Rnd(0,15)))
	result.Append(RandomArray(Rnd(0,15)))
	Return result.ToString
End Sub

'Example
'Options: CreateMap("type":"child")
'Options are child,teen,adult,senior,all
Sub Rand_Age(stype As String) As String
	stype = stype.tolowercase
	Dim iAge As Int = 0
	Select Case stype
		Case "child"
			iAge = Rnd(0,12)
		Case "teen"
			iAge = Rnd(13,19)
		Case "adult"
			iAge = Rnd(18,65)
		Case "senior"
			iAge = Rnd(65,100)
		Case "all"
			iAge = Rnd(0,100)
		Case Else
			iAge = Rnd(0,65)
	End Select
	Dim sage As String = CStr(iAge)
	Return sage
End Sub

'options createmap("gender":"Male")
Sub Rand_Prefix(sGender As String) As String
	Dim lst As List
	lst.Initialize
	lst.AddAll(Array("Dr."))
	sGender = sGender.tolowercase
	Select Case sGender
		Case "male"
			lst.AddAll(Array("Mr."))
		Case "female"
			lst.AddAll(Array("Miss","Mrs."))
		Case Else
			lst.AddAll(Array("Miss","Mrs.","Mr."))
	End Select
	lst = BANano.Await(ExplodeList(lst,10))
	Return RandListValue(lst)
End Sub

Sub Rand_Priority() As String
	Dim lst As List
	lst.Initialize
	lst.AddAll(Array("High", "Low", "Medium", "Urgent"))
	lst = BANano.Await(ExplodeList(lst,10))
	Return RandListValue(lst)
End Sub

Sub Rand_Payment_Status() As String
	Dim statuses As List
	statuses.Initialize
	statuses.AddAll(Array As String("Paid", "Unpaid", "Pending", "Failed", "Refunded", _
	"Partially Paid", "Cancelled", "Overdue", "Processing", _
	"Disputed", "Authorized", "Settled", "Reversed", "Voided", _
	"Chargeback", "Completed", "Expired", "Declined", "Returned", _
	"Awaiting Payment", "In Transit", "Escrow", "Draft", _
	"On Hold", "Under Review", "Billed", "Invoiced"))
	Return RandListValue(statuses)
End Sub

Sub Rand_Payment_Provider() As String
	Dim providers As List
	providers.Initialize
	providers.AddAll(Array As String("Visa", "Mastercard", "American Express", "Discover", "PayPal", _
	"Stripe", "Square", "Apple Pay", "Google Pay", "Samsung Pay", _
	"Alipay", "WeChat Pay", "Klarna", "Afterpay", "Affirm", _
	"Shopify Payments", "Adyen", "Braintree", "Worldpay", "Fiserv", _
	"Fiserv (First Data)", "Global Payments", "Chase Paymentech", "Elavon", _
	"Payoneer", "TransferWise (Wise)", "Skrill", "Neteller", "Paysafe", _
	"2Checkout", "Authorize.Net", "BlueSnap", "PayU", "Razorpay", _
	"Paytm", "PhonePe", "iDEAL", "SOFORT", "Giropay", "SEPA", _
	"ACH Transfer", "Wire Transfer", "Direct Debit", "EFT", "Interac e-Transfer", _
	"Venmo", "Zelle", "Cash App", "Dwolla", "GoCardless"))
	Return RandListValue(providers)
End Sub

Sub Rand_Industry As String
	Dim industries As List
	industries.Initialize
	industries.AddAll(Array As String( _
        "Agriculture", _
        "Automotive", _
        "Aerospace", _
        "Banking", _
        "Biotechnology", _
        "Chemicals", _
        "Construction", _
        "Consumer Goods", _
        "Defense", _
        "Education", _
        "Electronics", _
        "Energy", _
        "Entertainment", _
        "Environmental Services", _
        "Fashion", _
        "Financial Services", _
        "Food & Beverage", _
        "Forestry", _
        "Government", _
        "Healthcare", _
        "Hospitality", _
        "Information Technology", _
        "Insurance", _
        "Legal Services", _
        "Logistics", _
        "Manufacturing", _
        "Marine", _
        "Marketing & Advertising", _
        "Media & Publishing", _
        "Metals & Mining", _
        "Nonprofit & NGOs", _
        "Oil & Gas", _
        "Pharmaceuticals", _
        "Professional Services", _
        "Real Estate", _
        "Renewable Energy", _
        "Research & Development", _
        "Retail", _
        "Software", _
        "Sports & Recreation", _
        "Telecommunications", _
        "Textiles", _
        "Tourism", _
        "Transportation", _
        "Utilities", _
        "Waste Management", _
        "Wholesale", _
        "Human Resources", _
        "E-Commerce", _
        "Cybersecurity", _
        "Data Science & Analytics", _
        "Artificial Intelligence", _
        "Cloud Computing", _
        "Blockchain & Cryptocurrency", _
        "Gaming", _
        "Health & Wellness", _
        "Event Management", _
        "Agritech", _
        "Fintech", _
        "Edtech", _
        "Medtech", _
        "Proptech", _
        "Space Technology", _
        "Nanotechnology", _
        "Robotics", _
        "3D Printing", _
        "Virtual Reality (VR)", _
        "Augmented Reality (AR)", _
        "CleanTech", _
        "Smart Cities", _
        "Supply Chain Management", _
        "Consulting", _
        "Freight & Shipping", _
        "LegalTech", _
        "FoodTech", _
        "InsuranceTech (Insurtech)", _
        "Music Industry", _
        "Film & Television", _
        "Art & Design", _
        "Publishing", _
        "Advertising Agencies", _
        "PR & Communications", _
        "Social Media", _
        "Cultural & Heritage", _
        "Nonrenewable Resources", _
        "Petrochemicals", _
        "Aviation", _
        "Railways", _
        "Defense Contractors", _
        "Military Tech", _
        "Humanitarian Services", _
        "Religious Organizations", _
        "Research Institutes", _
        "Think Tanks", _
        "Venture Capital", _
        "Private Equity", _
        "Accounting & Auditing", _
        "Interior Design", _
        "Architecture", _
        "Home Improvement", _
        "Parks & Recreation", _
        "Fitness & Gyms", _
        "Travel Agencies", _
        "Catering Services", _
        "Beverage Production", _
        "Breweries & Distilleries", _
        "Dairy Industry", _
        "Meat & Poultry", _
        "Seafood Industry", _
        "Crop Production", _
        "Livestock", _
        "Fisheries", _
        "Aquaculture"))
	Return RandListValue(industries)
End Sub


Sub Rand_Port As String
	Return Rnd(0,65535)
End Sub

'convert a string to a percentage
Sub Rand_Percentage() As String
	Dim sValue As Int = Rnd(1,100)
	sValue = Round2(sValue,2)
	sValue = CStr(sValue) & "%"
	Return sValue
End Sub

'return percentage value
Sub Rand_Percent() As Int
	Dim sValue As Int = Rnd(1,100)
	Return sValue
End Sub

private Sub ShuffleList(pl As List) As List
	For i = pl.Size - 1 To 0 Step -1
		Dim j As Int
		Dim k As Object
		j = Rnd(0, i + 1)
		k = pl.Get(j)
		pl.Set(j,pl.Get(i))
		pl.Set(i,k)
	Next
	Return pl
End Sub

Sub Rand_Password(numChars As Int, numbers As Boolean, lowercase As Boolean, uppercase As Boolean, symbols As Boolean) As String
	Dim uppercaseArray() As String = Array As String ("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")
	Dim lowercaseArray() As String = Array As String ("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
	Dim numbersArray()   As String = Array As String ("0","1","2","3","4","5","6","7","8","9")
	Dim symbolsArray() As String = Array As String ("@","$","%","&","?","#","!","*","+","-",";","_")
	
	Dim charList As List
	charList.Initialize
  
	If numbers   Then charList.AddAll(numbersArray)
	If lowercase Then charList.AddAll(lowercaseArray)
	If uppercase Then charList.AddAll(uppercaseArray)
	If symbols   Then charList.AddAll(symbolsArray)

	Dim newPassword As StringBuilder
	newPassword.Initialize
  
	For i = 1 To numChars
		newPassword.Append(charList.Get(Rnd(0, charList.Size)))
	Next
	Return newPassword
End Sub

Sub Rand_Year As String
	Return Rnd(1920,3000)
End Sub

public Sub Rand_Date As String
	Dim iMM As Int = Rnd(1,12)
	Dim iDD As Int
	Select Case iMM
		Case 1,3,5,7,8,10,12
			iDD = Rnd(1,31)
		Case 4,6,9,11
			iDD = Rnd(1,30)
		Case 2
			iDD = Rnd(1,28)
	End Select
	Dim iYY As Int = Rnd(1920,3000)
	Dim sDD As String = PadRight(CStr(iDD),2,"0")
	Dim sMM As String = PadRight(CStr(iMM),2,"0")
	Dim strDate As String = $"${iYY}-${sMM}-${sDD}"$
	Return strDate
End Sub

public Sub Rand_Time As String
	Dim iHH As Int = Rnd(1,11)
	Dim iMM As Int = Rnd(1,59)
	Dim sHH As String = PadRight(CStr(iHH),2,"0")
	Dim sMM As String = PadRight(CStr(iMM),2,"0")
	Dim strTime As String = $"${sHH}:${sMM}"$
	Return strTime
End Sub

public Sub Rand_DateTime As String
	Dim sDate As String = Rand_Date
	Dim sTime As String = Rand_Time
	Dim sout As String = $"${sDate} ${sTime}"$
	Return sout
End Sub

'convert an object to a string
private Sub CStr(o As Object) As String
	Return "" & o
End Sub


'get the length of the string
private Sub Len(Text As String) As Int
	Return Text.Length
End Sub


private Sub PadRight(Value As String, MaxLen As Int, PadChar As String) As String
	Dim intOrdNoLen As Int = Len(Value)
	Dim i As Int
	For i = 1 To (MaxLen - intOrdNoLen) Step 1
		Value = PadChar & Value
	Next
	Return Value
End Sub

Sub Rand_Money(moneyLength As Int) As Double
	Dim res As String = Rand_PinCode(moneyLength) & "." & Rand_PinCode(2)
	res = MakeMoney(res)
	Return res
End Sub

 
 'Returns a random list value from a LIST 
private Sub RandListValue(ListX As List) As Object
	Return ListX.Get(Rnd(0, ListX.Size -1))
End Sub

Sub Rand_Country_Name As String
	Dim names As List
	names.initialize
	names.add("Afghanistan")
	names.add("Albania")
	names.add("Algeria")
	names.add("American Samoa")
	names.add("Andorra")
	names.add("Angola")
	names.add("Anguilla")
	names.add("Antigua & Barbuda")
	names.add("Argentina")
	names.add("Armenia")
	names.add("Aruba")
	names.add("Australia")
	names.add("Austria")
	names.add("Azerbaijan")
	names.add("Bahamas, The")
	names.add("Bahrain")
	names.add("Bangladesh")
	names.add("Barbados")
	names.add("Belarus")
	names.add("Belgium")
	names.add("Belize")
	names.add("Benin")
	names.add("Bermuda")
	names.add("Bhutan")
	names.add("Bolivia")
	names.add("Bosnia & Herzegovina")
	names.add("Botswana")
	names.add("Brazil")
	names.add("British Virgin Is.")
	names.add("Brunei")
	names.add("Bulgaria")
	names.add("Burkina Faso")
	names.add("Burma")
	names.add("Burundi")
	names.add("Cambodia")
	names.add("Cameroon")
	names.add("Canada")
	names.add("Cape Verde")
	names.add("Cayman Islands")
	names.add("Central African Rep.")
	names.add("Chad")
	names.add("Chile")
	names.add("China")
	names.add("Colombia")
	names.add("Comoros")
	names.add("Congo, Dem. Rep.")
	names.add("Congo, Repub. of the")
	names.add("Cook Islands")
	names.add("Costa Rica")
	names.add("Cote d'Ivoire")
	names.add("Croatia")
	names.add("Cuba")
	names.add("Cyprus")
	names.add("Czech Republic")
	names.add("Denmark")
	names.add("Djibouti")
	names.add("Dominica")
	names.add("Dominican Republic")
	names.add("East Timor")
	names.add("Ecuador")
	names.add("Egypt")
	names.add("El Salvador")
	names.add("Equatorial Guinea")
	names.add("Eritrea")
	names.add("Estonia")
	names.add("Ethiopia")
	names.add("Faroe Islands")
	names.add("Fiji")
	names.add("Finland")
	names.add("France")
	names.add("French Guiana")
	names.add("French Polynesia")
	names.add("Gabon")
	names.add("Gambia, The")
	names.add("Gaza Strip")
	names.add("Georgia")
	names.add("Germany")
	names.add("Ghana")
	names.add("Gibraltar")
	names.add("Greece")
	names.add("Greenland")
	names.add("Grenada")
	names.add("Guadeloupe")
	names.add("Guam")
	names.add("Guatemala")
	names.add("Guernsey")
	names.add("Guinea")
	names.add("Guinea-Bissau")
	names.add("Guyana")
	names.add("Haiti")
	names.add("Honduras")
	names.add("Hong Kong")
	names.add("Hungary")
	names.add("Iceland")
	names.add("India")
	names.add("Indonesia")
	names.add("Iran")
	names.add("Iraq")
	names.add("Ireland")
	names.add("Isle of Man")
	names.add("Israel")
	names.add("Italy")
	names.add("Jamaica")
	names.add("Japan")
	names.add("Jersey")
	names.add("Jordan")
	names.add("Kazakhstan")
	names.add("Kenya")
	names.add("Kiribati")
	names.add("Korea, North")
	names.add("Korea, South")
	names.add("Kuwait")
	names.add("Kyrgyzstan")
	names.add("Laos")
	names.add("Latvia")
	names.add("Lebanon")
	names.add("Lesotho")
	names.add("Liberia")
	names.add("Libya")
	names.add("Liechtenstein")
	names.add("Lithuania")
	names.add("Luxembourg")
	names.add("Macau")
	names.add("Macedonia")
	names.add("Madagascar")
	names.add("Malawi")
	names.add("Malaysia")
	names.add("Maldives")
	names.add("Mali")
	names.add("Malta")
	names.add("Marshall Islands")
	names.add("Martinique")
	names.add("Mauritania")
	names.add("Mauritius")
	names.add("Mayotte")
	names.add("Mexico")
	names.add("Micronesia, Fed. St.")
	names.add("Moldova")
	names.add("Monaco")
	names.add("Mongolia")
	names.add("Montserrat")
	names.add("Morocco")
	names.add("Mozambique")
	names.add("Namibia")
	names.add("Nauru")
	names.add("Nepal")
	names.add("Netherlands")
	names.add("Netherlands Antilles")
	names.add("New Caledonia")
	names.add("New Zealand")
	names.add("Nicaragua")
	names.add("Niger")
	names.add("Nigeria")
	names.add("N. Mariana Islands")
	names.add("Norway")
	names.add("Oman")
	names.add("Pakistan")
	names.add("Palau")
	names.add("Panama")
	names.add("Papua New Guinea")
	names.add("Paraguay")
	names.add("Peru")
	names.add("Philippines")
	names.add("Poland")
	names.add("Portugal")
	names.add("Puerto Rico")
	names.add("Qatar")
	names.add("Reunion")
	names.add("Romania")
	names.add("Russia")
	names.add("Rwanda")
	names.add("Saint Helena")
	names.add("Saint Kitts & Nevis")
	names.add("Saint Lucia")
	names.add("St Pierre & Miquelon")
	names.add("Saint Vincent and the Grenadines")
	names.add("Samoa")
	names.add("San Marino")
	names.add("Sao Tome & Principe")
	names.add("Saudi Arabia")
	names.add("Senegal")
	names.add("Serbia")
	names.add("Seychelles")
	names.add("Sierra Leone")
	names.add("Singapore")
	names.add("Slovakia")
	names.add("Slovenia")
	names.add("Solomon Islands")
	names.add("Somalia")
	names.add("South Africa")
	names.add("Spain")
	names.add("Sri Lanka")
	names.add("Sudan")
	names.add("Suriname")
	names.add("Swaziland")
	names.add("Sweden")
	names.add("Switzerland")
	names.add("Syria")
	names.add("Taiwan")
	names.add("Tajikistan")
	names.add("Tanzania")
	names.add("Thailand")
	names.add("Togo")
	names.add("Tonga")
	names.add("Trinidad & Tobago")
	names.add("Tunisia")
	names.add("Turkey")
	names.add("Turkmenistan")
	names.add("Turks & Caicos Is")
	names.add("Tuvalu")
	names.add("Uganda")
	names.add("Ukraine")
	names.add("United Arab Emirates")
	names.add("United Kingdom")
	names.add("United States")
	names.add("Uruguay")
	names.add("Uzbekistan")
	names.add("Vanuatu")
	names.add("Venezuela")
	names.add("Vietnam")
	names.add("Virgin Islands")
	names.add("Wallis and Futuna")
	names.add("West Bank")
	names.add("Western Sahara")
	names.add("Yemen")
	names.add("Zambia")
	names.add("Zimbabwe")
	Return RandListValue(names)
End Sub

Sub Rand_US_State As String
	Dim CountryNames As List
	CountryNames.Initialize

	CountryNames.Add("AL")
	CountryNames.Add("AK")
	CountryNames.Add("AZ")
	CountryNames.Add("AR")
	CountryNames.Add("CA")
	CountryNames.Add("CO")

	CountryNames.Add("CT")
	CountryNames.Add("DE")
	CountryNames.Add("FL")
	CountryNames.Add("GA")
	CountryNames.Add("HI")
	CountryNames.Add("ID")

	CountryNames.Add("IL")
	CountryNames.Add("IN")
	CountryNames.Add("IA")
	CountryNames.Add("KS")
	CountryNames.Add("KY")
	CountryNames.Add("LA")

	CountryNames.Add("ME")
	CountryNames.Add("MD")
	CountryNames.Add("MA")
	CountryNames.Add("MI")
	CountryNames.Add("MN")
	CountryNames.Add("MS")

	CountryNames.Add("MO")
	CountryNames.Add("MT")
	CountryNames.Add("NE")
	CountryNames.Add("NV")
	CountryNames.Add("NH")
	CountryNames.Add("NJ")

	CountryNames.Add("NM")
	CountryNames.Add("NY")
	CountryNames.Add("NC")
	CountryNames.Add("ND")
	CountryNames.Add("OH")
	CountryNames.Add("OK")

	CountryNames.Add("OR")
	CountryNames.Add("PA")
	CountryNames.Add("RI")
	CountryNames.Add("SC")
	CountryNames.Add("SD")
	CountryNames.Add("TN")

	CountryNames.Add("TX")
	CountryNames.Add("UT")
	CountryNames.Add("VT")
	CountryNames.Add("VA")
	CountryNames.Add("WA")
	CountryNames.Add("WV")
	CountryNames.Add("WI")
	CountryNames.Add("WY")

	Return RandListValue(CountryNames)
End Sub


public Sub Rand_Street_Type As String
	Dim names As List
	names.Initialize
	names.Add("Abbey")
	names.Add("Acres")
	names.Add("Alley")
	names.Add("Annex")
	names.Add("Arcade")
	names.Add("Autoroute")
	names.Add("Avenue")
	names.Add("Bay")
	names.Add("Bayou")
	names.Add("Beach")
	names.Add("Bend")
	names.Add("Bluff")
	names.Add("Box")
	names.Add("Bottom")
	names.Add("Boulevard")
	names.Add("Branch")
	names.Add("Bridge")
	names.Add("Brook")
	names.Add("Burg")
	names.Add("Burrow")
	names.Add("By-pass")
	names.Add("Byway")
	names.Add("Camp")
	names.Add("Campus")
	names.Add("Canyon")
	names.Add("Cape")
	names.Add("Carré")
	names.Add("Carrefour")
	names.Add("Castle")
	names.Add("Causeway")
	names.Add("Centre")
	names.Add("Cercle")
	names.Add("Chare")
	names.Add("Chase")
	names.Add("Chemin")
	names.Add("Circle")
	names.Add("Circuit")
	names.Add("Cliffs")
	names.Add("Cliff")
	names.Add("Close")
	names.Add("Club")
	names.Add("Common")
	names.Add("Concession")
	names.Add("Corners")
	names.Add("Corner")
	names.Add("Côte")
	names.Add("Cour")
	names.Add("Cours")
	names.Add("Course")
	names.Add("Court")
	names.Add("Cove")
	names.Add("Creek")
	names.Add("Crescent")
	names.Add("Crest")
	names.Add("Croissant")
	names.Add("Cross")
	names.Add("Crossing")
	names.Add("Crossroads")
	names.Add("Crossroad")
	names.Add("Cul-de-sac")
	names.Add("Curve")
	names.Add("Dale")
	names.Add("Dam")
	names.Add("Dell")
	names.Add("Diagonal")
	names.Add("Diversion")
	names.Add("Divide")
	names.Add("Downs")
	names.Add("Drive")
	names.Add("Échangeur")
	names.Add("End")
	names.Add("Esplanade")
	names.Add("Estates")
	names.Add("Estate")
	names.Add("Expressway")
	names.Add("Extension")
	names.Add("Extensions")
	names.Add("Fall")
	names.Add("Falls")
	names.Add("Farm")
	names.Add("Ferry")
	names.Add("Field")
	names.Add("Fields")
	names.Add("Flat")
	names.add("Flats")
	names.Add("Ford")
	names.Add("Fords")
	names.Add("Forest")
	names.Add("Forge")
	names.Add("Fork")
	names.Add("Fort")
	names.Add("Freeway")
	names.Add("Front")
	names.Add("Gardens")
	names.Add("Gate")
	names.Add("Gateway")
	names.Add("Glade")
	names.Add("Glen")
	names.Add("Glens")
	names.Add("Glenway")
	names.Add("Golfway")
	names.Add("Green")
	names.Add("Grounds")
	names.Add("Grove")
	names.Add("Hall")
	names.Add("Harbour")
	names.Add("Haven")
	names.Add("Heath")
	names.Add("Heights")
	names.Add("Highlands")
	names.Add("Highway")
	names.Add("Hill")
	names.Add("Hollow")
	names.Add("Île")
	names.Add("Impasse")
	names.Add("Inlet")
	names.Add("Island")
	names.Add("Isle")
	names.Add("Junction")
	names.Add("Keep")
	names.Add("Key")
	names.Add("Knoll")
	names.Add("Lake")
	names.Add("Land")
	names.Add("Landing")
	names.Add("Lane")
	names.Add("Light")
	names.Add("Limits")
	names.Add("Line")
	names.Add("Ligne")
	names.Add("Link")
	names.Add("Loaf")
	names.Add("Lock")
	names.Add("Lodge")
	names.Add("Lookout")
	names.Add("Loop")
	names.Add("Mall")
	names.Add("Manor")
	names.Add("Maze")
	names.Add("Meadow")
	names.Add("Mews")
	names.Add("Mill")
	names.Add("Mission")
	names.Add("Montée")
	names.Add("Moor")
	names.Add("Motorway")
	names.Add("Mount")
	names.Add("Mountain")
	names.Add("Neck")
	names.Add("Nene")
	names.Add("Oaks")
	names.Add("Orchard")
	names.Add("Oval")
	names.Add("Overpass")
	names.Add("Parade")
	names.Add("Park")
	names.Add("Parkway")
	names.Add("Pass")
	names.Add("Path")
	names.Add("Pathway")
	names.Add("Peak")
	names.Add("Pike")
	names.Add("Pine")
	names.Add("Place")
	names.Add("Placeway")
	names.Add("Plain")
	names.Add("Plateau")
	names.Add("Plaza")
	names.Add("Point")
	names.Add("Pond")
	names.Add("Port")
	names.Add("Prairie")
	names.Add("Private")
	names.Add("Promenade")
	names.Add("Quai")
	names.Add("Quary")
	names.Add("Quay")
	names.Add("Radial")
	names.Add("Ramp")
	names.Add("Ranch")
	names.Add("Rang")
	names.Add("Range")
	names.Add("Rangée")
	names.Add("Rapid")
	names.Add("Rapids")
	names.Add("Reach")
	names.Add("Rest")
	names.Add("Ridge")
	names.Add("Right of Way")
	names.Add("Rise")
	names.Add("River")
	names.Add("Road")
	names.Add("Rond-point")
	names.Add("Ronde")
	names.Add("Round")
	names.Add("Route")
	names.Add("Row")
	names.Add("Rue")
	names.Add("Ruelle")
	names.Add("Run")
	names.Add("Sentier")
	names.Add("Shoal")
	names.Add("Shores")
	names.Add("Shore")
	names.Add("Sideroad")
	names.Add("Skyway")
	names.Add("Springs")
	names.Add("Spur")
	names.Add("Square")
	names.Add("Station")
	names.Add("Standard")
	names.Add("Stravenue")
	names.Add("Stream")
	names.Add("Street")
	names.Add("Streets")
	names.Add("Stroll")
	names.Add("Subdivision")
	names.Add("Summit")
	names.Add("Terrace")
	names.Add("Thicket")
	names.Add("Throughway")
	names.Add("Tour")
	names.Add("Towers")
	names.Add("Townline")
	names.Add("Trace")
	names.Add("Track")
	names.Add("Trafficway")
	names.Add("Trail")
	names.Add("Tailer")
	names.Add("Tunnel")
	names.Add("Turnabout")
	names.Add("Turnpike")
	names.Add("Two")
	names.Add("Underpass")
	names.Add("Union")
	names.Add("Vale")
	names.Add("Valley")
	names.Add("Via")
	names.Add("View")
	names.Add("Village")
	names.Add("Villa")
	names.Add("Ville")
	names.Add("Vista")
	names.Add("Voie")
	names.Add("Walk")
	names.Add("Walkway")
	names.Add("Wall")
	names.Add("Way")
	names.Add("Well")
	names.Add("Wells")
	names.Add("Wharf")
	names.Add("Wold")
	names.Add("Wood")
	names.Add("Wynd")
	Return RandListValue(names)
End Sub

 
Sub Rand_FirstName As String
	Return Rand_Human_Name
End Sub

Sub Rand_LastName As String
	Return Rand_Human_Name
End Sub
 
 #Region rand_human_name : Generates a random real human name 
 
'Generates a random human name...
'List of Names is
'FROM: https://gist.github.com/subodhghulaxe/8148971
Public Sub Rand_Human_Name As String

	Dim names As List
	names.Initialize

	'Add list of names
 
	names.Add("Abbott")
	names.Add("Acevedo")
	names.Add("Acosta")
	names.Add("Adams")
	names.Add("Adkins")
	names.Add("Aguilar")
	names.Add("Aguirre")
	names.Add("Albert")
	names.Add("Alexander")
	names.Add("Alford")
	names.Add("Allen")
	names.Add("Allison")
	names.Add("Alston")
	names.Add("Alvarado")
	names.Add("Alvarez")
	names.Add("Anderson")
	names.Add("Andrews")
	names.Add("Anthony")
	names.Add("Armstrong")
	names.Add("Arnold")
	names.Add("Ashley")
	names.Add("Atkins")
	names.Add("Atkinson")
	names.Add("Austin")
	names.Add("Avery")
	names.Add("Avila")
	names.Add("Ayala")
	names.Add("Ayers")
	names.Add("Bailey")
	names.Add("Baird")
	names.Add("Baker")
	names.Add("Baldwin")
	names.Add("Ball")
	names.Add("Ballard")
	names.Add("Banks")
	names.Add("Barber")
	names.Add("Barker")
	names.Add("Barlow")
	names.Add("Barnes")
	names.Add("Barnett")
	names.Add("Barr")
	names.Add("Barrera")
	names.Add("Barrett")
	names.Add("Barron")
	names.Add("Barry")
	names.Add("Bartlett")
	names.Add("Barton")
	names.Add("Bass")
	names.Add("Bates")
	names.Add("Battle")
	names.Add("Bauer")
	names.Add("Baxter")
	names.Add("Beach")
	names.Add("Bean")
	names.Add("Beard")
	names.Add("Beasley")
	names.Add("Beck")
	names.Add("Becker")
	names.Add("Bell")
	names.Add("Bender")
	names.Add("Benjamin")
	names.Add("Bennett")
	names.Add("Benson")
	names.Add("Bentley")
	names.Add("Benton")
	names.Add("Berg")
	names.Add("Berger")
	names.Add("Bernard")
	names.Add("Berry")
	names.Add("Best")
	names.Add("Bird")
	names.Add("Bishop")
	names.Add("Black")
	names.Add("Blackburn")
	names.Add("Blackwell")
	names.Add("Blair")
	names.Add("Blake")
	names.Add("Blanchard")
	names.Add("Blankenship")
	names.Add("Blevins")
	names.Add("Bolton")
	names.Add("Bond")
	names.Add("Bonner")
	names.Add("Booker")
	names.Add("Boone")
	names.Add("Booth")
	names.Add("Bowen")
	names.Add("Bowers")
	names.Add("Bowman")
	names.Add("Boyd")
	names.Add("Boyer")
	names.Add("Boyle")
	names.Add("Bradford")
	names.Add("Bradley")
	names.Add("Bradshaw")
	names.Add("Brady")
	names.Add("Branch")
	names.Add("Bray")
	names.Add("Brennan")
	names.Add("Brewer")
	names.Add("Bridges")
	names.Add("Briggs")
	names.Add("Bright")
	names.Add("Britt")
	names.Add("Brock")
	names.Add("Brooks")
	names.Add("Brown")
	names.Add("Browning")
	names.Add("Bruce")
	names.Add("Bryan")
	names.Add("Bryant")
	names.Add("Buchanan")
	names.Add("Buck")
	names.Add("Buckley")
	names.Add("Buckner")
	names.Add("Bullock")
	names.Add("Burch")
	names.Add("Burgess")
	names.Add("Burke")
	names.Add("Burks")
	names.Add("Burnett")
	names.Add("Burns")
	names.Add("Burris")
	names.Add("Burt")
	names.Add("Burton")
	names.Add("Bush")
	names.Add("Butler")
	names.Add("Byers")
	names.Add("Byrd")
	names.Add("Cabrera")
	names.Add("Cain")
	names.Add("Calderon")
	names.Add("Caldwell")
	names.Add("Calhoun")
	names.Add("Callahan")
	names.Add("Camacho")
	names.Add("Cameron")
	names.Add("Campbell")
	names.Add("Campos")
	names.Add("Cannon")
	names.Add("Cantrell")
	names.Add("Cantu")
	names.Add("Cardenas")
	names.Add("Carey")
	names.Add("Carlson")
	names.Add("Carney")
	names.Add("Carpenter")
	names.Add("Carr")
	names.Add("Carrillo")
	names.Add("Carroll")
	names.Add("Carson")
	names.Add("Carter")
	names.Add("Carver")
	names.Add("Case")
	names.Add("Casey")
	names.Add("Cash")
	names.Add("Castaneda")
	names.Add("Castillo")
	names.Add("Castro")
	names.Add("Cervantes")
	names.Add("Chambers")
	names.Add("Chan")
	names.Add("Chandler")
	names.Add("Chaney")
	names.Add("Chang")
	names.Add("Chapman")
	names.Add("Charles")
	names.Add("Chase")
	names.Add("Chavez")
	names.Add("Chen")
	names.Add("Cherry")
	names.Add("Christensen")
	names.Add("Christian")
	names.Add("Church")
	names.Add("Clark")
	names.Add("Clarke")
	names.Add("Clay")
	names.Add("Clayton")
	names.Add("Clements")
	names.Add("Clemons")
	names.Add("Cleveland")
	names.Add("Cline")
	names.Add("Cobb")
	names.Add("Cochran")
	names.Add("Coffey")
	names.Add("Cohen")
	names.Add("Cole")
	names.Add("Coleman")
	names.Add("Collier")
	names.Add("Collins")
	names.Add("Colon")
	names.Add("Combs")
	names.Add("Compton")
	names.Add("Conley")
	names.Add("Conner")
	names.Add("Conrad")
	names.Add("Contreras")
	names.Add("Conway")
	names.Add("Cook")
	names.Add("Cooke")
	names.Add("Cooley")
	names.Add("Cooper")
	names.Add("Copeland")
	names.Add("Cortez")
	names.Add("Cote")
	names.Add("Cotton")
	names.Add("Cox")
	names.Add("Craft")
	names.Add("Craig")
	names.Add("Crane")
	names.Add("Crawford")
	names.Add("Crosby")
	names.Add("Cross")
	names.Add("Cruz")
	names.Add("Cummings")
	names.Add("Cunningham")
	names.Add("Curry")
	names.Add("Curtis")
	names.Add("Dale")
	names.Add("Dalton")
	names.Add("Daniel")
	names.Add("Daniels")
	names.Add("Daugherty")
	names.Add("Davenport")
	names.Add("David")
	names.Add("Davidson")
	names.Add("Davis")
	names.Add("Dawson")
	names.Add("Day")
	names.Add("Dean")
	names.Add("Decker")
	names.Add("Dejesus")
	names.Add("Delacruz")
	names.Add("Delaney")
	names.Add("Deleon")
	names.Add("Delgado")
	names.Add("Dennis")
	names.Add("Diaz")
	names.Add("Dickerson")
	names.Add("Dickson")
	names.Add("Dillard")
	names.Add("Dillon")
	names.Add("Dixon")
	names.Add("Dodson")
	names.Add("Dominguez")
	names.Add("Donaldson")
	names.Add("Donovan")
	names.Add("Dorsey")
	names.Add("Dotson")
	names.Add("Douglas")
	names.Add("Downs")
	names.Add("Doyle")
	names.Add("Drake")
	names.Add("Dudley")
	names.Add("Duffy")
	names.Add("Duke")
	names.Add("Duncan")
	names.Add("Dunlap")
	names.Add("Dunn")
	names.Add("Duran")
	names.Add("Durham")
	names.Add("Dyer")
	names.Add("Eaton")
	names.Add("Edwards")
	names.Add("Elliott")
	names.Add("Ellis")
	names.Add("Ellison")
	names.Add("Emerson")
	names.Add("England")
	names.Add("English")
	names.Add("Erickson")
	names.Add("Espinoza")
	names.Add("Estes")
	names.Add("Estrada")
	names.Add("Evans")
	names.Add("Everett")
	names.Add("Ewing")
	names.Add("Farley")
	names.Add("Farmer")
	names.Add("Farrell")
	names.Add("Faulkner")
	names.Add("Ferguson")
	names.Add("Fernandez")
	names.Add("Ferrell")
	names.Add("Fields")
	names.Add("Figueroa")
	names.Add("Finch")
	names.Add("Finley")
	names.Add("Fischer")
	names.Add("Fisher")
	names.Add("Fitzgerald")
	names.Add("Fitzpatrick")
	names.Add("Fleming")
	names.Add("Fletcher")
	names.Add("Flores")
	names.Add("Flowers")
	names.Add("Floyd")
	names.Add("Flynn")
	names.Add("Foley")
	names.Add("Forbes")
	names.Add("Ford")
	names.Add("Foreman")
	names.Add("Foster")
	names.Add("Fowler")
	names.Add("Fox")
	names.Add("Francis")
	names.Add("Franco")
	names.Add("Frank")
	names.Add("Franklin")
	names.Add("Franks")
	names.Add("Frazier")
	names.Add("Frederick")
	names.Add("Freeman")
	names.Add("French")
	names.Add("Frost")
	names.Add("Fry")
	names.Add("Frye")
	names.Add("Fuentes")
	names.Add("Fuller")
	names.Add("Fulton")
	names.Add("Gaines")
	names.Add("Gallagher")
	names.Add("Gallegos")
	names.Add("Galloway")
	names.Add("Gamble")
	names.Add("Garcia")
	names.Add("Gardner")
	names.Add("Garner")
	names.Add("Garrett")
	names.Add("Garrison")
	names.Add("Garza")
	names.Add("Gates")
	names.Add("Gay")
	names.Add("Gentry")
	names.Add("George")
	names.Add("Gibbs")
	names.Add("Gibson")
	names.Add("Gilbert")
	names.Add("Giles")
	names.Add("Gill")
	names.Add("Gillespie")
	names.Add("Gilliam")
	names.Add("Gilmore")
	names.Add("Glass")
	names.Add("Glenn")
	names.Add("Glover")
	names.Add("Goff")
	names.Add("Golden")
	names.Add("Gomez")
	names.Add("Gonzales")
	names.Add("Gonzalez")
	names.Add("Good")
	names.Add("Goodman")
	names.Add("Goodwin")
	names.Add("Gordon")
	names.Add("Gould")
	names.Add("Graham")
	names.Add("Grant")
	names.Add("Graves")
	names.Add("Gray")
	names.Add("Green")
	names.Add("Greene")
	names.Add("Greer")
	names.Add("Gregory")
	names.Add("Griffin")
	names.Add("Griffith")
	names.Add("Grimes")
	names.Add("Gross")
	names.Add("Guerra")
	names.Add("Guerrero")
	names.Add("Guthrie")
	names.Add("Gutierrez")
	names.Add("Guy")
	names.Add("Guzman")
	names.Add("Hahn")
	names.Add("Hale")
	names.Add("Haley")
	names.Add("Hall")
	names.Add("Hamilton")
	names.Add("Hammond")
	names.Add("Hampton")
	names.Add("Hancock")
	names.Add("Haney")
	names.Add("Hansen")
	names.Add("Hanson")
	names.Add("Hardin")
	names.Add("Harding")
	names.Add("Hardy")
	names.Add("Harmon")
	names.Add("Harper")
	names.Add("Harrell")
	names.Add("Harrington")
	names.Add("Harris")
	names.Add("Harrison")
	names.Add("Hart")
	names.Add("Hartman")
	names.Add("Harvey")
	names.Add("Hatfield")
	names.Add("Hawkins")
	names.Add("Hayden")
	names.Add("Hayes")
	names.Add("Haynes")
	names.Add("Hays")
	names.Add("Head")
	names.Add("Heath")
	names.Add("Hebert")
	names.Add("Henderson")
	names.Add("Hendricks")
	names.Add("Hendrix")
	names.Add("Henry")
	names.Add("Hensley")
	names.Add("Henson")
	names.Add("Herman")
	names.Add("Hernandez")
	names.Add("Herrera")
	names.Add("Herring")
	names.Add("Hess")
	names.Add("Hester")
	names.Add("Hewitt")
	names.Add("Hickman")
	names.Add("Hicks")
	names.Add("Higgins")
	names.Add("Hill")
	names.Add("Hines")
	names.Add("Hinton")
	names.Add("Hobbs")
	names.Add("Hodge")
	names.Add("Hodges")
	names.Add("Hoffman")
	names.Add("Hogan")
	names.Add("Holcomb")
	names.Add("Holden")
	names.Add("Holder")
	names.Add("Holland")
	names.Add("Holloway")
	names.Add("Holman")
	names.Add("Holmes")
	names.Add("Holt")
	names.Add("Hood")
	names.Add("Hooper")
	names.Add("Hoover")
	names.Add("Hopkins")
	names.Add("Hopper")
	names.Add("Horn")
	names.Add("Horne")
	names.Add("Horton")
	names.Add("House")
	names.Add("Houston")
	names.Add("Howard")
	names.Add("Howe")
	names.Add("Howell")
	names.Add("Hubbard")
	names.Add("Huber")
	names.Add("Hudson")
	names.Add("Huff")
	names.Add("Huffman")
	names.Add("Hughes")
	names.Add("Hull")
	names.Add("Humphrey")
	names.Add("Hunt")
	names.Add("Hunter")
	names.Add("Hurley")
	names.Add("Hurst")
	names.Add("Hutchinson")
	names.Add("Hyde")
	names.Add("Ingram")
	names.Add("Irwin")
	names.Add("Jackson")
	names.Add("Jacobs")
	names.Add("Jacobson")
	names.Add("James")
	names.Add("Jarvis")
	names.Add("Jefferson")
	names.Add("Jenkins")
	names.Add("Jennings")
	names.Add("Jensen")
	names.Add("Jimenez")
	names.Add("Johns")
	names.Add("Johnson")
	names.Add("Johnston")
	names.Add("Jones")
	names.Add("Jordan")
	names.Add("Joseph")
	names.Add("Joyce")
	names.Add("Joyner")
	names.Add("Juarez")
	names.Add("Justice")
	names.Add("Kane")
	names.Add("Kaufman")
	names.Add("Keith")
	names.Add("Keller")
	names.Add("Kelley")
	names.Add("Kelly")
	names.Add("Kemp")
	names.Add("Kennedy")
	names.Add("Kent")
	names.Add("Kerr")
	names.Add("Key")
	names.Add("Kidd")
	names.Add("Kim")
	names.Add("King")
	names.Add("Kinney")
	names.Add("Kirby")
	names.Add("Kirk")
	names.Add("Kirkland")
	names.Add("Klein")
	names.Add("Kline")
	names.Add("Knapp")
	names.Add("Knight")
	names.Add("Knowles")
	names.Add("Knox")
	names.Add("Koch")
	names.Add("Kramer")
	names.Add("Lamb")
	names.Add("Lambert")
	names.Add("Lancaster")
	names.Add("Landry")
	names.Add("Lane")
	names.Add("Lang")
	names.Add("Langley")
	names.Add("Lara")
	names.Add("Larsen")
	names.Add("Larson")
	names.Add("Lawrence")
	names.Add("Lawson")
	names.Add("Le")
	names.Add("Leach")
	names.Add("Leblanc")
	names.Add("Lee")
	names.Add("Leon")
	names.Add("Leonard")
	names.Add("Lester")
	names.Add("Levine")
	names.Add("Levy")
	names.Add("Lewis")
	names.Add("Lindsay")
	names.Add("Lindsey")
	names.Add("Little")
	names.Add("Livingston")
	names.Add("Lloyd")
	names.Add("Logan")
	names.Add("Long")
	names.Add("Lopez")
	names.Add("Lott")
	names.Add("Love")
	names.Add("Lowe")
	names.Add("Lowery")
	names.Add("Lucas")
	names.Add("Luna")
	names.Add("Lynch")
	names.Add("Lynn")
	names.Add("Lyons")
	names.Add("Macdonald")
	names.Add("Macias")
	names.Add("Mack")
	names.Add("Madden")
	names.Add("Maddox")
	names.Add("Maldonado")
	names.Add("Malone")
	names.Add("Mann")
	names.Add("Manning")
	names.Add("Marks")
	names.Add("Marquez")
	names.Add("Marsh")
	names.Add("Marshall")
	names.Add("Martin")
	names.Add("Martinez")
	names.Add("Mason")
	names.Add("Massey")
	names.Add("Mathews")
	names.Add("Mathis")
	names.Add("Matthews")
	names.Add("Maxwell")
	names.Add("May")
	names.Add("Mayer")
	names.Add("Maynard")
	names.Add("Mayo")
	names.Add("Mays")
	names.Add("Mcbride")
	names.Add("Mccall")
	names.Add("Mccarthy")
	names.Add("Mccarty")
	names.Add("Mcclain")
	names.Add("Mcclure")
	names.Add("Mcconnell")
	names.Add("Mccormick")
	names.Add("Mccoy")
	names.Add("Mccray")
	names.Add("Mccullough")
	names.Add("Mcdaniel")
	names.Add("Mcdonald")
	names.Add("Mcdowell")
	names.Add("Mcfadden")
	names.Add("Mcfarland")
	names.Add("Mcgee")
	names.Add("Mcgowan")
	names.Add("Mcguire")
	names.Add("Mcintosh")
	names.Add("Mcintyre")
	names.Add("Mckay")
	names.Add("Mckee")
	names.Add("Mckenzie")
	names.Add("Mckinney")
	names.Add("Mcknight")
	names.Add("Mclaughlin")
	names.Add("Mclean")
	names.Add("Mcleod")
	names.Add("Mcmahon")
	names.Add("Mcmillan")
	names.Add("Mcneil")
	names.Add("Mcpherson")
	names.Add("Meadows")
	names.Add("Medina")
	names.Add("Mejia")
	names.Add("Melendez")
	names.Add("Melton")
	names.Add("Mendez")
	names.Add("Mendoza")
	names.Add("Mercado")
	names.Add("Mercer")
	names.Add("Merrill")
	names.Add("Merritt")
	names.Add("Meyer")
	names.Add("Meyers")
	names.Add("Michael")
	names.Add("Middleton")
	names.Add("Miles")
	names.Add("Miller")
	names.Add("Mills")
	names.Add("Miranda")
	names.Add("Mitchell")
	names.Add("Molina")
	names.Add("Monroe")
	names.Add("Montgomery")
	names.Add("Montoya")
	names.Add("Moody")
	names.Add("Moon")
	names.Add("Mooney")
	names.Add("Moore")
	names.Add("Morales")
	names.Add("Moran")
	names.Add("Moreno")
	names.Add("Morgan")
	names.Add("Morin")
	names.Add("Morris")
	names.Add("Morrison")
	names.Add("Morrow")
	names.Add("Morse")
	names.Add("Morton")
	names.Add("Moses")
	names.Add("Mosley")
	names.Add("Moss")
	names.Add("Mueller")
	names.Add("Mullen")
	names.Add("Mullins")
	names.Add("Munoz")
	names.Add("Murphy")
	names.Add("Murray")
	names.Add("Myers")
	names.Add("Nash")
	names.Add("Navarro")
	names.Add("Neal")
	names.Add("Nelson")
	names.Add("Newman")
	names.Add("Newton")
	names.Add("Nguyen")
	names.Add("Nichols")
	names.Add("Nicholson")
	names.Add("Nielsen")
	names.Add("Nieves")
	names.Add("Nixon")
	names.Add("Noble")
	names.Add("Noel")
	names.Add("Nolan")
	names.Add("Norman")
	names.Add("Norris")
	names.Add("Norton")
	names.Add("Nunez")
	names.Add("Obrien")
	names.Add("Ochoa")
	names.Add("Oconnor")
	names.Add("Odom")
	names.Add("Odonnell")
	names.Add("Oliver")
	names.Add("Olsen")
	names.Add("Olson")
	names.Add("Oneal")
	names.Add("Oneil")
	names.Add("Oneill")
	names.Add("Orr")
	names.Add("Ortega")
	names.Add("Ortiz")
	names.Add("Osborn")
	names.Add("Osborne")
	names.Add("Owen")
	names.Add("Owens")
	names.Add("Pace")
	names.Add("Pacheco")
	names.Add("Padilla")
	names.Add("Page")
	names.Add("Palmer")
	names.Add("Park")
	names.Add("Parker")
	names.Add("Parks")
	names.Add("Parrish")
	names.Add("Parsons")
	names.Add("Pate")
	names.Add("Patel")
	names.Add("Patrick")
	names.Add("Patterson")
	names.Add("Patton")
	names.Add("Paul")
	names.Add("Payne")
	names.Add("Pearson")
	names.Add("Peck")
	names.Add("Pena")
	names.Add("Pennington")
	names.Add("Perez")
	names.Add("Perkins")
	names.Add("Perry")
	names.Add("Peters")
	names.Add("Petersen")
	names.Add("Peterson")
	names.Add("Petty")
	names.Add("Phelps")
	names.Add("Phillips")
	names.Add("Pickett")
	names.Add("Pierce")
	names.Add("Pittman")
	names.Add("Pitts")
	names.Add("Pollard")
	names.Add("Poole")
	names.Add("Pope")
	names.Add("Porter")
	names.Add("Potter")
	names.Add("Potts")
	names.Add("Powell")
	names.Add("Powers")
	names.Add("Pratt")
	names.Add("Preston")
	names.Add("Price")
	names.Add("Prince")
	names.Add("Pruitt")
	names.Add("Puckett")
	names.Add("Pugh")
	names.Add("Quinn")
	names.Add("Ramirez")
	names.Add("Ramos")
	names.Add("Ramsey")
	names.Add("Randall")
	names.Add("Randolph")
	names.Add("Rasmussen")
	names.Add("Ratliff")
	names.Add("Ray")
	names.Add("Raymond")
	names.Add("Reed")
	names.Add("Reese")
	names.Add("Reeves")
	names.Add("Reid")
	names.Add("Reilly")
	names.Add("Reyes")
	names.Add("Reynolds")
	names.Add("Rhodes")
	names.Add("Rice")
	names.Add("Rich")
	names.Add("Richard")
	names.Add("Richards")
	names.Add("Richardson")
	names.Add("Richmond")
	names.Add("Riddle")
	names.Add("Riggs")
	names.Add("Riley")
	names.Add("Rios")
	names.Add("Rivas")
	names.Add("Rivera")
	names.Add("Rivers")
	names.Add("Roach")
	names.Add("Robbins")
	names.Add("Roberson")
	names.Add("Roberts")
	names.Add("Robertson")
	names.Add("Robinson")
	names.Add("Robles")
	names.Add("Rocha")
	names.Add("Rodgers")
	names.Add("Rodriguez")
	names.Add("Rodriquez")
	names.Add("Rogers")
	names.Add("Rojas")
	names.Add("Rollins")
	names.Add("Roman")
	names.Add("Romero")
	names.Add("Rosa")
	names.Add("Rosales")
	names.Add("Rosario")
	names.Add("Rose")
	names.Add("Ross")
	names.Add("Roth")
	names.Add("Rowe")
	names.Add("Rowland")
	names.Add("Roy")
	names.Add("Ruiz")
	names.Add("Rush")
	names.Add("Russell")
	names.Add("Russo")
	names.Add("Rutledge")
	names.Add("Ryan")
	names.Add("Salas")
	names.Add("Salazar")
	names.Add("Salinas")
	names.Add("Sampson")
	names.Add("Sanchez")
	names.Add("Sanders")
	names.Add("Sandoval")
	names.Add("Sanford")
	names.Add("Santana")
	names.Add("Santiago")
	names.Add("Santos")
	names.Add("Sargent")
	names.Add("Saunders")
	names.Add("Savage")
	names.Add("Sawyer")
	names.Add("Schmidt")
	names.Add("Schneider")
	names.Add("Schroeder")
	names.Add("Schultz")
	names.Add("Schwartz")
	names.Add("Scott")
	names.Add("Sears")
	names.Add("Sellers")
	names.Add("Serrano")
	names.Add("Sexton")
	names.Add("Shaffer")
	names.Add("Shannon")
	names.Add("Sharp")
	names.Add("Sharpe")
	names.Add("Shaw")
	names.Add("Shelton")
	names.Add("Shepard")
	names.Add("Shepherd")
	names.Add("Sheppard")
	names.Add("Sherman")
	names.Add("Shields")
	names.Add("Short")
	names.Add("Silva")
	names.Add("Simmons")
	names.Add("Simon")
	names.Add("Simpson")
	names.Add("Sims")
	names.Add("Singleton")
	names.Add("Skinner")
	names.Add("Slater")
	names.Add("Sloan")
	names.Add("Small")
	names.Add("Smith")
	names.Add("Snider")
	names.Add("Snow")
	names.Add("Snyder")
	names.Add("Solis")
	names.Add("Solomon")
	names.Add("Sosa")
	names.Add("Soto")
	names.Add("Sparks")
	names.Add("Spears")
	names.Add("Spence")
	names.Add("Spencer")
	names.Add("Stafford")
	names.Add("Stanley")
	names.Add("Stanton")
	names.Add("Stark")
	names.Add("Steele")
	names.Add("Stein")
	names.Add("Stephens")
	names.Add("Stephenson")
	names.Add("Stevens")
	names.Add("Stevenson")
	names.Add("Stewart")
	names.Add("Stokes")
	names.Add("Stone")
	names.Add("Stout")
	names.Add("Strickland")
	names.Add("Strong")
	names.Add("Stuart")
	names.Add("Suarez")
	names.Add("Sullivan")
	names.Add("Summers")
	names.Add("Sutton")
	names.Add("Swanson")
	names.Add("Sweeney")
	names.Add("Sweet")
	names.Add("Sykes")
	names.Add("Talley")
	names.Add("Tanner")
	names.Add("Tate")
	names.Add("Taylor")
	names.Add("Terrell")
	names.Add("Terry")
	names.Add("Thomas")
	names.Add("Thompson")
	names.Add("Thornton")
	names.Add("Tillman")
	names.Add("Todd")
	names.Add("Torres")
	names.Add("Townsend")
	names.Add("Tran")
	names.Add("Travis")
	names.Add("Trevino")
	names.Add("Trujillo")
	names.Add("Tucker")
	names.Add("Turner")
	names.Add("Tyler")
	names.Add("Tyson")
	names.Add("Underwood")
	names.Add("Valdez")
	names.Add("Valencia")
	names.Add("Valentine")
	names.Add("Valenzuela")
	names.Add("Vance")
	names.Add("Vang")
	names.Add("Vargas")
	names.Add("Vasquez")
	names.Add("Vaughan")
	names.Add("Vaughn")
	names.Add("Vazquez")
	names.Add("Vega")
	names.Add("Velasquez")
	names.Add("Velazquez")
	names.Add("Velez")
	names.Add("Villarreal")
	names.Add("Vincent")
	names.Add("Vinson")
	names.Add("Wade")
	names.Add("Wagner")
	names.Add("Walker")
	names.Add("Wall")
	names.Add("Wallace")
	names.Add("Waller")
	names.Add("Walls")
	names.Add("Walsh")
	names.Add("Walter")
	names.Add("Walters")
	names.Add("Walton")
	names.Add("Ward")
	names.Add("Ware")
	names.Add("Warner")
	names.Add("Warren")
	names.Add("Washington")
	names.Add("Waters")
	names.Add("Watkins")
	names.Add("Watson")
	names.Add("Watts")
	names.Add("Weaver")
	names.Add("Webb")
	names.Add("Weber")
	names.Add("Webster")
	names.Add("Weeks")
	names.Add("Weiss")
	names.Add("Welch")
	names.Add("Wells")
	names.Add("West")
	names.Add("Wheeler")
	names.Add("Whitaker")
	names.Add("White")
	names.Add("Whitehead")
	names.Add("Whitfield")
	names.Add("Whitley")
	names.Add("Whitney")
	names.Add("Wiggins")
	names.Add("Wilcox")
	names.Add("Wilder")
	names.Add("Wiley")
	names.Add("Wilkerson")
	names.Add("Wilkins")
	names.Add("Wilkinson")
	names.Add("William")
	names.Add("Williams")
	names.Add("Williamson")
	names.Add("Willis")
	names.Add("Wilson")
	names.Add("Winters")
	names.Add("Wise")
	names.Add("Witt")
	names.Add("Wolf")
	names.Add("Wolfe")
	names.Add("Wong")
	names.Add("Wood")
	names.Add("Woodard")
	names.Add("Woods")
	names.Add("Woodward")
	names.Add("Wooten")
	names.Add("Workman")
	names.Add("Wright")
	names.Add("Wyatt")
	names.Add("Wynn")
	names.Add("Yang")
	names.Add("Yates")
	names.Add("York")
	names.Add("Young")
	names.Add("Zamora")
	names.Add("Zimmerman")
 
	Return RandListValue(names)
 
End Sub

Sub Rand_Medical_Condition As String
	Dim medicalConditions As List
	medicalConditions.Initialize

	' --- Cardiovascular ---
	medicalConditions.AddAll(Array As String( _
        "Hypertension","Hypotension","Coronary Artery Disease","Heart Failure","Arrhythmia","Myocardial Infarction","Stroke","Peripheral Artery Disease","Aneurysm","Varicose Veins","Cardiomyopathy","Endocarditis","Pericarditis","Congenital Heart Disease","Atrial Fibrillation","Ventricular Tachycardia" _
    ))

	' --- Respiratory ---
	medicalConditions.AddAll(Array As String( _
        "Asthma","COPD","Pneumonia","Bronchitis","Tuberculosis","Sleep Apnea","Pulmonary Fibrosis","Emphysema","Lung Cancer","Cystic Fibrosis","Pleural Effusion","Pneumothorax","Bronchiectasis","Acute Respiratory Distress Syndrome","Pulmonary Hypertension" _
    ))

	' --- Metabolic & Endocrine ---
	medicalConditions.AddAll(Array As String( _
        "Diabetes Type 1","Diabetes Type 2","Hypothyroidism","Hyperthyroidism","Obesity","Hyperlipidemia","Metabolic Syndrome","Cushing's Syndrome","Addison's Disease","Polycystic Ovary Syndrome (PCOS)","Hyperparathyroidism","Hypoparathyroidism","Acromegaly","Gigantism","Hypoglycemia" _
    ))

	' --- Neurological ---
	medicalConditions.AddAll(Array As String( _
        "Epilepsy","Parkinson's Disease","Alzheimer's Disease","Multiple Sclerosis","Migraine","Peripheral Neuropathy","Amyotrophic Lateral Sclerosis (ALS)","Stroke Sequelae","Guillain-Barre Syndrome","Huntington's Disease","Bell's Palsy","Cerebral Palsy","Myasthenia Gravis","Trigeminal Neuralgia","Vertigo" _
    ))

	' --- Infectious Diseases ---
	medicalConditions.AddAll(Array As String( _
        "HIV/AIDS","Hepatitis A","Hepatitis B","Hepatitis C","Influenza","COVID-19","Malaria","Dengue Fever","Measles","Chickenpox","Mumps","Tetanus","Rabies","Ebola","Zika Virus","Lyme Disease","Sepsis","MRSA Infection" _
    ))

	' --- Gastrointestinal ---
	medicalConditions.AddAll(Array As String( _
        "GERD","Peptic Ulcer Disease","IBS","Crohn's Disease","Ulcerative Colitis","Hepatitis","Celiac Disease","Gallstones","Pancreatitis","Diverticulitis","Liver Cirrhosis","Hemorrhoids","Constipation","Diarrhea","Gastroenteritis","Appendicitis" _
    ))

	' --- Musculoskeletal ---
	medicalConditions.AddAll(Array As String( _
        "Osteoarthritis","Rheumatoid Arthritis","Osteoporosis","Gout","Fibromyalgia","Scoliosis","Muscle Strain","Tendonitis","Lupus","Ankylosing Spondylitis","Bursitis","Carpal Tunnel Syndrome","Fractures","Sprains","Paget's Disease" _
    ))

	' --- Mental Health ---
	medicalConditions.AddAll(Array As String( _
        "Depression","Anxiety Disorders","Bipolar Disorder","Schizophrenia","PTSD","OCD","ADHD","Panic Disorder","Eating Disorders","Autism Spectrum Disorder","Insomnia","Substance Use Disorder","Dementia","Personality Disorders" _
    ))

	' --- Dermatological ---
	medicalConditions.AddAll(Array As String( _
        "Psoriasis","Eczema","Acne","Skin Cancer","Melanoma","Dermatitis","Vitiligo","Rosacea","Fungal Infections","Warts","Alopecia","Hives","Scabies" _
    ))

	' --- Hematologic / Blood Disorders ---
	medicalConditions.AddAll(Array As String( _
        "Anemia","Leukemia","Lymphoma","Hemophilia","Sickle Cell Disease","Thalassemia","Polycythemia","Iron Deficiency","Vitamin B12 Deficiency","Coagulopathy" _
    ))

	' --- Renal / Urinary ---
	medicalConditions.AddAll(Array As String( _
        "Chronic Kidney Disease","Acute Kidney Injury","UTI","Kidney Stones","Glomerulonephritis","Polycystic Kidney Disease","Nephrotic Syndrome","Interstitial Nephritis" _
    ))

	' --- Reproductive / Gynecologic / Obstetric ---
	medicalConditions.AddAll(Array As String( _
        "Pregnancy Complications","Infertility","Endometriosis","Polycystic Ovary Syndrome","Menopause Symptoms","Ectopic Pregnancy","Pelvic Inflammatory Disease","Uterine Fibroids","Prostate Disorders" _
    ))

	' --- Immunologic / Autoimmune ---
	medicalConditions.AddAll(Array As String( _
        "Rheumatoid Arthritis","Lupus","Multiple Sclerosis","Type 1 Diabetes","Graves' Disease","Hashimoto's Thyroiditis","Psoriasis","Scleroderma","Vasculitis" _
    ))

	' --- Miscellaneous / Other Common Conditions ---
	medicalConditions.AddAll(Array As String( _
        "Allergies","Chronic Pain","Migraine","Obesity","Sleep Disorders","Vitamin Deficiencies","Dehydration","Sepsis","Shock","Trauma","Burns","Cancer","HIV/AIDS" _
    ))

	' --- General Symptoms ---
	medicalConditions.AddAll(Array As String( _
        "Headache","Fatigue","Back Pain","Nausea","Cough","Stomachache","Joint Pain","Dizziness","Cold Symptoms","Heart Palpitations","Skin Irritation","Shortness of Breath","Fever","Muscle Cramps","Vision Changes","Memory Lapses","Weight Gain" _
    ))

	Return RandListValue(medicalConditions)
End Sub

'Generates a random human full name
Public Sub Rand_Full_Name As String
	
	Return Rand_Human_Name & " " & Rand_Human_Name
	
End Sub

 #End Region

public Sub Rand_Time_Frequency As String
	Dim Genders As List
	Genders.Initialize
	Genders.AddAll(Array As String("Second(s)", "Minute(s)","Hour(s)","Day(s)", "Week(s)", "Month(s)", "Year(s)"))
	Genders = BANano.Await(ExplodeList(Genders,7))
	Return RandListValue(Genders)
End Sub

#Region Human Gender

'Generates a random human Gender and Types
'between MALE or FEMALE only!
Public Sub Rand_Gender As String
	Dim Genders As List
	Genders.Initialize
	Genders.AddAll(Array As String("Male","Female"))
	Genders = BANano.Await(ExplodeList(Genders,6))
	Return RandListValue(Genders)
End Sub

Public Sub Rand_Item(lstOf As List) As String
	Dim nl As List = BANano.Await(ExplodeList(lstOf,6))
	Return RandListValue(nl)
End Sub

private Sub ExplodeList(lst As List, runs As Int) As List
	Dim nList As List
	nList.Initialize
	Dim oCnt As Int
	For oCnt = 1 To runs
		nList.AddAll(lst)
	Next
	nList = BANano.Await(ShuffleList(nList))
	Return nList
End Sub

private Sub USStatesList As List

	Dim states As List
	states.Initialize

	states.Add("AL")
	states.Add("AK")
	states.Add("AZ")
	states.Add("AR")
	states.Add("CA")
	states.Add("CO")

	states.Add("CT")
	states.Add("DE")
	states.Add("FL")
	states.Add("GA")
	states.Add("HI")
	states.Add("ID")

	states.Add("IL")
	states.Add("IN")
	states.Add("IA")
	states.Add("KS")
	states.Add("KY")
	states.Add("LA")

	states.Add("ME")
	states.Add("MD")
	states.Add("MA")
	states.Add("MI")
	states.Add("MN")
	states.Add("MS")

	states.Add("MO")
	states.Add("MT")
	states.Add("NE")
	states.Add("NV")
	states.Add("NH")
	states.Add("NJ")

	states.Add("NM")
	states.Add("NY")
	states.Add("NC")
	states.Add("ND")
	states.Add("OH")
	states.Add("OK")

	states.Add("OR")
	states.Add("PA")
	states.Add("RI")
	states.Add("SC")
	states.Add("SD")
	states.Add("TN")

	states.Add("TX")
	states.Add("UT")
	states.Add("VT")
	states.Add("VA")
	states.Add("WA")
	states.Add("WV")
	states.Add("WI")
	states.Add("WY")

	Return states

End Sub



#Region GenderTypesList: A Full list of Gender Types

'Returns a List of the Most accepted Genders in the world
'This list does not contain MALE or FEMALE just Gender Types
'FROM: http://genderfluidsupport.tumblr.com/gender
Public Sub GenderTypesList As List
	
	Dim GenderTypes As List
	GenderTypes.Initialize
	
	GenderTypes.Add("Abimegender")
	GenderTypes.Add("Adamasgender")
	GenderTypes.Add("Aerogender")
	GenderTypes.Add("Aesthetigender")
	GenderTypes.Add("Affectugender")
	GenderTypes.Add("Agender")
	GenderTypes.Add("Agenderflux")

	GenderTypes.Add("Alexigender")
	GenderTypes.Add("Aliusgender")
	GenderTypes.Add("Amaregender")
	GenderTypes.Add("Ambigender")
	GenderTypes.Add("Ambonec")
	GenderTypes.Add("Amicagender")
	GenderTypes.Add("Androgyne")
	GenderTypes.Add("Anesigender")

	GenderTypes.Add("Angenital")
	GenderTypes.Add("Anogender")
	GenderTypes.Add("Anongender")
	GenderTypes.Add("Antegender")
	GenderTypes.Add("Anxiegender")
	GenderTypes.Add("Apagender")
	GenderTypes.Add("Apconsugender")
	GenderTypes.Add("Astergender")
	GenderTypes.Add("Astralgender")

	GenderTypes.Add("Autigender")
	GenderTypes.Add("Autogender")
	GenderTypes.Add("Axigender")
	GenderTypes.Add("Bigender")
	GenderTypes.Add("Biogender")
	GenderTypes.Add("Blurgender")
	GenderTypes.Add("Boyflux")
	GenderTypes.Add("Burstgender")
	GenderTypes.Add("Caelgender")

	GenderTypes.Add("Cassgender")
	GenderTypes.Add("Cassflux")
	GenderTypes.Add("Cavusgender")
	GenderTypes.Add("Cendgender")
	GenderTypes.Add("Ceterofluid")
	GenderTypes.Add("Ceterogender")
	GenderTypes.Add("Cisgender")
	GenderTypes.Add("Cloudgender")
	GenderTypes.Add("Collgender")

	GenderTypes.Add("Colorgender")
	GenderTypes.Add("Commogender")
	GenderTypes.Add("Condigender")
	GenderTypes.Add("Deliciagender")
	GenderTypes.Add("Demifluid")
	GenderTypes.Add("Demiflux")
	GenderTypes.Add("Demigender")
	GenderTypes.Add("Domgender")
	GenderTypes.Add("Demi-vapor")

	GenderTypes.Add("Demi-smoke")
	GenderTypes.Add("Duragender")
	GenderTypes.Add("Egogender")
	GenderTypes.Add("Epicene")
	GenderTypes.Add("Espigender")
	GenderTypes.Add("Exgender")
	GenderTypes.Add("Existigender")

	GenderTypes.Add("Female")
	GenderTypes.Add("Femfluid")
	GenderTypes.Add("Femgender")
	GenderTypes.Add("Fluidflux")
	GenderTypes.Add("Gemigender")
	GenderTypes.Add("Genderblank")
	GenderTypes.Add("Genderflow")
	GenderTypes.Add("Genderfluid")

	GenderTypes.Add("Genderflux")
	GenderTypes.Add("Genderfuzz")
	GenderTypes.Add("Gender Neutral")
	GenderTypes.Add("Genderpunk")
	GenderTypes.Add("Genderqueer")
	GenderTypes.Add("Genderwitched")
	GenderTypes.Add("Girlflux")
	GenderTypes.Add("Glassgender")

	GenderTypes.Add("Glimragender")
	GenderTypes.Add("Greygender")
	GenderTypes.Add("Gyragender")
	GenderTypes.Add("Healgender")
	GenderTypes.Add("Heliogender")
	GenderTypes.Add("Hemigender")
	GenderTypes.Add("Horogender")
	GenderTypes.Add("Hydrogender")

	GenderTypes.Add("Imperigender")
	GenderTypes.Add("Intergender")
	GenderTypes.Add("Juxera")
	GenderTypes.Add("Libragender")
	GenderTypes.Add("Male")
	GenderTypes.Add("Magigender")
	GenderTypes.Add("Mascfluid")
	GenderTypes.Add("Mascgender")

	GenderTypes.Add("Maverique")
	GenderTypes.Add("Mirrorgender")
	GenderTypes.Add("Molligender")
	GenderTypes.Add("Multigender")
	GenderTypes.Add("Nanogender")
	GenderTypes.Add("Neutrois")
	GenderTypes.Add("Nonbinary")

	GenderTypes.Add("Omnigender")
	GenderTypes.Add("Oneirogender")
	GenderTypes.Add("Pangender")
	GenderTypes.Add("Paragender")
	GenderTypes.Add("Perigender")
	GenderTypes.Add("Polygender")
	GenderTypes.Add("Proxvir")

	GenderTypes.Add("Quoigender")
	GenderTypes.Add("Subgender")
	GenderTypes.Add("Surgender")
	GenderTypes.Add("Systemgender")
	GenderTypes.Add("Tragender")
	GenderTypes.Add("Transgender")
	GenderTypes.Add("Transneutral")

	GenderTypes.Add("Trigender")
	GenderTypes.Add("Vapogender")
	GenderTypes.Add("Venngender")
	GenderTypes.Add("Verangender")
	GenderTypes.Add("Vibragender")
	GenderTypes.Add("Vocigender")
	
	Return GenderTypes
	 
End Sub

#End Region
 
'Generates a random Gender Type 
'Refer to fullGenderTypesList() 
Public Sub Rand_Gender_Type As String
	 
	Return RandListValue(GenderTypesList)
	
End Sub

 #End Region

'return sentences of lorem ipsum
Sub Rand_LoremIpsum(count As Int) As String
	Dim str As String = $"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."$
	Dim sb As StringBuilder
	sb.Initialize
	For i = 1 To count
		sb.Append(str).Append(CRLF)
	Next
	Return sb.tostring
End Sub

Sub Rand_Word(count As Int) As String
	Dim words As List
	words.Initialize
	words.AddAll(Array("Lorem", "ipsum", "dolor", "sit" ,"amet", "consectetur", "adipisicing", "elit"))
	words.AddAll(Array("sed", "do", "eiusmod" ,"tempor", "incididunt", "ut", "labore", "et", "dolore", "magna", "aliqua"))
	words.AddAll(Array("Ut", "enim", "ad" ,"minim", "veniam", "quis", "nostrud", "exercitation", "ullamco", "laboris"))
	words.AddAll(Array("nisi", "ut", "aliquip", "ex" ,"ea", "commodo", "consequat"))
	words.AddAll(Array("Duis", "aute", "irure", "dolor", "in", "reprehenderit", "in", "voluptate", "velit", "esse", "cillum"))
	words.AddAll(Array("dolore", "eu", "fugiat", "nulla", "pariatur"))
	words.AddAll(Array("Excepteur", "sint", "occaecat", "cupidatat", "non", "proident", "sunt", "in", "culpa"))
	words.AddAll(Array("qui", "officia", "deserunt", "mollit","anim","id","est","laborum"))
	words = BANano.Await(ExplodeList(words,5))
	Dim st As StringBuilder
	st.Initialize
  	For i = 1 To count
 		st.Append(RandListValue(words) & " ")
 	Next
	Dim sout As String = st.ToString
	sout = sout.trim
  	Return sout
End Sub

#Region Random Dummy Text
'Generates a random lorem ispum text
'ParagraphCount =   Is the number of paragraphs to generate
Public Sub Rand_Lorem_Ipsum(ParagraphCount  As Int) As String

	Dim textList As List
	textList.Initialize
 
	textList.Add("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
	textList.Add("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
	textList.Add("Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
	textList.Add("Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
	textList = BANano.Await(ExplodeList(textList,3))
	     
	Dim st As StringBuilder
	st.Initialize
  
	For i = 1 To ParagraphCount
 
		st.Append(RandListValue(textList) & " ")
 
	Next
  
	Return st.ToString

End Sub

'Generates a random dummy text (lorem ispum)
'ParagraphCount =   Is the number of paragraphs to generate
'Alias of lorem_ispum()
Public Sub Rand_Dummy_Text(ParagraphCount  As Int) As String
 
	Return Rand_Lorem_Ipsum(ParagraphCount)
 
End Sub
 
 #End Region
 
 #Region Random Email Generators
 'Generates a random email
Public Sub Rand_Email(EmailProvider As String, withNumeric As Boolean) As String
	 
	Dim sname As String = Rand_Human_Name & "." & Rand_Human_Name
	sname = sname.ToLowerCase
	
	If withNumeric Then
	 	
		Return  sname & Rnd(10, 3000) & "@" & EmailProvider
		
	Else
			
		Return sname & "@" & EmailProvider
			
	End If
	
End Sub

Sub Rand_Twitter As String
	Return "@" & Rand_Human_Name
End Sub

Sub Rand_HashTag As String
	Return "#" & Rand_Human_Name
End Sub

'Generates a random Gmail address
'withNumeric = should gmail contain suffixed numbers
'EG demo_20@gmail.com
'Quick shortcut Alias of rand_email()
Public Sub Rand_Gmail(withNumeric As Boolean) As String
	 
	Return Rand_Email("gmail.com", withNumeric)
	
End Sub

'Generates a random Yahoo email address
'withNumeric = should gmail contain suffixed numbers
'EG demo_20@yahoo.com
'Quick shortcut Alias of rand_email()
Public Sub Rand_Yahoo_Mail(withNumeric As Boolean) As String
	 
	Return Rand_Email("yahoo.com", withNumeric)
	
End Sub

#End Region 

#Region Random phone number
'Generates a random phone number
'CountryCode = the Country Code to use without the + ; for example,
'Nigeria is 234, USA is 1 and Indian is 91
'ilength = This is how long should the remaining part of the number be
Public Sub Rand_Phone_Number(CountryCode As Int , ilength As Int) As String
	
	Return "+" & CountryCode & Rand_PinCode(ilength)
	 
End Sub
 
'Generates a random phone number
'CountryCode = the Country Code to use without the + ; for example,
'Nigeria is 234, USA is 1 and Indian is 91
'startsWith = what custom number should phone number start with?
'ilength = This is how long should the remaining part of the number be
'<code> 'Example: would output something like; +2348174795280
'log(CF_DataGeneratorUtility.rand_phoneNumber2(234, 817, 7))
'</code>
Public Sub Rand_Phone_Number2(CountryCode As Int , istartsWith As Int, ilength As Int) As String
	
	Return "+" & CountryCode & istartsWith & Rand_PinCode(ilength)
	 
End Sub

#End Region

#Region Random True or False Value 

'Generates a random True or False Value
Public Sub Rand_True_Or_False As Boolean
	 
	If Rnd( Rnd(1, 5), Rnd(6, 10))  < 6 Then
		
		Return True
		
	Else
			
		Return False
			
	End If
	 
End Sub

'Generates a random True or False Value
Public Sub Rand_Yes_Or_No As String
	 
	If Rnd( Rnd(1, 5), Rnd(6, 10))  < 6 Then
		
		Return "Yes"
		
	Else
			
		Return "No"
			
	End If
	 
End Sub



'Generates a random True or False Value
Public Sub Rand_Zero_Or_One As String	 
	If Rnd( Rnd(1, 5), Rnd(6, 10))  < 6 Then
		Return "0"
	Else
		Return "1"
	End If
End Sub


'Generates a random True or False Value
'Alias of Rand_True_Or_False()
Public Sub Rand_Boolean_Value As Boolean
	 
	Return Rand_True_Or_False
	 
End Sub

#End Region
 
'Generates a random IP address
Public Sub Rand_Ip_Address As String
	 
	Return  Rnd(190, 230) & "." & Rnd(13, 200) & "." & Rnd(50, 200) & "." & Rnd(75, 200)
	
End Sub

#Region Sports Data Generators

'List of Major Sports around the world
'NOTE: this list is not A-Z of all sports
private Sub MajorSportsList As List
	
	Dim sports As List
	sports.Initialize
	
	sports.add("Alpine Skiing")
	sports.add("Athletics")
	sports.add("Badminton")
	sports.add("Basketball")
	sports.add("Bocce")
	sports.add("Bowling")

	sports.add("Cricket")
	sports.add("Cross Country Skiing")
	sports.add("Cycling")
	sports.add("Equestrian")
	sports.add("Figure Skating")
	sports.add("Floorball")

	sports.add("Floor Hockey")
	sports.add("Football")
	sports.add("Golf")
	sports.add("Gymnastics Artistic")
	sports.add("Gymnastics Rhythmic")
	sports.add("Handball")

	sports.add("Judo")
	sports.add("Kayaking")
	sports.add("Motor Activity Training Program")
	sports.add("Netball")
	sports.add("Open Water Swimming")
	sports.add("Powerlifting")
	sports.add("Roller Skating")

	sports.add("Sailing")
	sports.add("Short Track Speed Skating")
	sports.add("Snowboarding")
	sports.add("Snowshoeing")
 
	sports.add("Softball")
	sports.add("Swimming")
	sports.add("Table Tennis")
	sports.add("Tennis")
	sports.add("Triathlon")
	sports.add("Volleyball")

	Return sports
	
End Sub

'Generates a random sport name
Public Sub Rand_Sport_Name() As String
	
	Return RandListValue(MajorSportsList)
	
End Sub

#End Region
 
'Generates a random home address
'using a street address format
Public Sub Rand_Home_Address As String
	Dim sStreet As String = Rand_Street_Type
	Return  $"${Rnd(1, 999)} ${Rand_Human_Name} ${sStreet}"$
End Sub

'Generates a random home address
'using an Estate house address format
Public Sub Rand_Home_Address2 As String
	 
	Return  $"Block ${Rnd(1, 130)} flat ${Rnd(1, 10)}, ${Rand_Human_Name} Estate"$
	
End Sub
  
'Generates a random company name
Public Sub Rand_Company_Name As String
	 
	Dim values As List
	values.Initialize
	
	values.AddAll(Array("Technologies", "& Sons","Clothings","Softwares","Enterprises"))
	values.AddAll(Array("Industries","System","Inc","Motors","& Co.", "Foods","Properties"))
	values.AddAll(Array("Brands","Digital","Logistics","Holdings","Labs"))
	
	Return  Rand_Human_Name & " " & RandListValue(values)
	
End Sub
 
'Generates a random job Occupation
Public Sub Rand_Occupation As String
	 
	Dim values As List
	values.Initialize
	
	values.AddAll(Array("Cleaner", "Make-up artist","Cashier","Banker","Manager"))
	values.AddAll(Array("Dentist","Doctor","Teacher","Web Developer","Lawyer", "Assistant","Sales man"))
	values.AddAll(Array("Graphics Designer","Digital Marketer","Musician","Blogger","Bartender"))
	'
	values.Add("Waiter")
values.Add("Paramedic")
values.Add("Dentist")
values.Add("Train Conductor")
values.Add("Nurse")
values.Add("Electrician")
values.Add("Doctor")
values.Add("Businessman")
values.Add("Football Player")
values.Add("Student")
values.Add("Surgeon")
values.Add("Doorman")
values.Add("Secretary")
values.Add("Soldier")
values.Add("Repairman")
values.Add("Scientist")
values.Add("Reporter")
values.Add("Construction Worker")
values.Add("Professor")
values.Add("Police Officer")
values.Add("Postman")
values.Add("Photographer")
values.Add("Pilot")
values.Add("Nun")
values.Add("Painter")
values.Add("Mechanic")
values.Add("Magician")
values.Add("Lifeguard")
values.Add("Supervisor")
values.Add("Clown")
values.Add("Housekeeper")
values.Add("Gardener")
values.Add("Geisha")
values.Add("Footballer")
values.Add("Forest Ranger")
values.Add("Builder")
values.Add("Foreman")
values.Add("Farmer")
values.Add("Flight Attendant")
values.Add("Fireman")
values.Add("Engineer")
values.Add("Carpenter")
values.Add("Architect")
values.Add("Boxer")
values.Add("Cameraman")
values.Add("Detective")
values.Add("Journalist")
values.Add("Housewife")
values.Add("Diver")
values.Add("Pope")
values.Add("Priest")
values.Add("Salesman")
values.Add("Librarian")
values.Add("Pirate")
values.Add("Singer")
	Return RandListValue(values)
End Sub

Sub Rand_Product_Category As String
	Dim categories As List
	categories.Initialize
	categories.AddAll(Array As String( _
    "Electronics", _
    "Clothing", _
    "Shoes & Footwear", _
    "Home & Kitchen", _
    "Sports & Outdoors", _
    "Beauty & Personal Care", _
    "Automotive", _
    "Books", _
    "Toys & Games", _
    "Health & Wellness", _
    "Pet Supplies", _
    "Garden & Outdoor", _
    "Office Supplies", _
    "Jewelry & Accessories", _
    "Groceries", _
    "Music & Instruments", _
    "Furniture", _
    "Baby Products", _
    "Video Games", _
    "Tools & Hardware", _
    "Watches", _
    "Bags & Luggage", _
    "Art & Crafts", _
    "Stationery", _
    "Appliances", _
    "Lighting", _
    "Cleaning Supplies", _
    "Safety & Security", _
    "Party Supplies", _
    "Travel & Outdoors", _
    "Collectibles", _
    "DIY & Building Materials", _
    "Office Furniture", _
    "Medical Supplies", _
    "Industrial Equipment", _
    "Food & Beverages", _
    "Bedding", _
    "Home Decor", _
    "Cameras & Photography", _
    "Computers & Accessories", _
    "Wearable Technology", _
    "Outdoor Gear", _
    "Smart Home Devices", _
    "Musical Instruments", _
    "Fitness & Exercise", _
    "Seasonal Products", _
    "Gifts", _
    "Luxury Goods", _
    "Miscellaneous"))
	Return RandListValue(categories)
End Sub

Sub Rand_SKU As String
	Dim skus As List
	skus.Initialize
	skus.AddAll(Array As String( _
	"SPOR-Y8HL9", _
"TOYS-ULYL6", _
"CLOT-9RHQJ", _
"HEAL-YSKFH", _
"SPOR-43QFQ", _
"GARD-SRT6C", _
"CLOT-E6OWK", _
"SHOE-AH3U0", _
"BOOK-MLGUI", _
"TOYS-ET60X", _
"ELEC-EP224", _
"MUSI-SZN4Y", _
"AUTO-C78Y1", _
"BABY-AXBGO", _
"HEAL-WC30N", _
"FURN-D7Y2P", _
"ELEC-OCP6P", _
"GROC-OP9QJ", _
"JEWL-0O4UK", _
"BEAU-4FCVJ", _
"CLOT-P3E2C", _
"HEAL-VDNN3", _
"GARD-ZRB61", _
"BABY-KB7HS", _
"BOOK-BD9PI", _
"FURN-3KLQO", _
"GARD-0B6EK", _
"BABY-LOZBQ", _
"TOYS-1ZR1O", _
"CLOT-QQ4XE", _
"OFFI-OFOSJ", _
"FURN-PDYRT", _
"SPOR-4CKCX", _
"FURN-5EWGA", _
"OFFI-ALR90", _
"TOYS-67QWC", _
"SPOR-ZDRW4", _
"SHOE-KUHZ1", _
"ELEC-Y47H6", _
"TOOL-G8L4T", _
"SPOR-LY2ZJ", _
"ELEC-H83ND", _
"BEAU-W5BS4", _
"HOME-46E9N", _
"JEWL-F978E", _
"TOOL-SISZ3", _
"BABY-BFJA5", _
"SHOE-H5X38", _
"GROC-3HKWQ", _
"HOME-1GQOZ", _
"TOOL-G2WGJ", _
"JEWL-TFHUG", _
"JEWL-KIHGU", _
"PET-KFK20", _
"SPOR-RRR4B", _
"OFFI-S5N2G", _
"SHOE-62SGG", _
"PET-KNU57", _
"FURN-NQ910", _
"AUTO-QTSYJ", _
"TOYS-ADZHQ", _
"GARD-2NCXM", _
"ELEC-80LV0", _
"JEWL-AUCEB", _
"OFFI-B4MVX", _
"JEWL-TV5NI", _
"ELEC-HZ5I0", _
"JEWL-7F2KH", _
"AUTO-BOUC9", _
"FURN-GWSG7", _
"CLOT-NY5HI", _
"HEAL-3YAW4", _
"GARD-THSEW", _
"ELEC-P3NJN", _
"TOOL-EWSO4", _
"AUTO-QVE8L", _
"CLOT-PD7KQ", _
"SHOE-LECKW", _
"ELEC-STMY7", _
"VIDE-O26AZ", _
"HEAL-58RMG", _
"HOME-O3TDQ", _
"TOOL-YHPYK", _
"JEWL-8PRRS", _
"HEAL-Z97S6", _
"CLOT-NOQH2", _
"BOOK-OXM2Y", _
"OFFI-LVP19", _
"TOOL-78HMZ", _
"BEAU-9II8K", _
"CLOT-YALSE", _
"HEAL-5OC0W", _
"HEAL-JG4HY", _
"CLOT-GK0QR", _
"TOYS-0WCA0", _
"GARD-P0YV2", _
"GARD-62ZWQ", _
"TOOL-T2UWQ", _
"CLOT-V5OYD", _
"BOOK-7V8NS", _
"CLOT-GF3RU", _
"GROC-CYBSH", _
"JEWL-WI6LY", _
"SHOE-BBURT", _
"FURN-E87E4", _
"BABY-K0EEH", _
"MUSI-7NQ43", _
"HEAL-EH1FB", _
"PET-M5QD1", _
"TOYS-VNE3H", _
"PET-CDZVX", _
"HEAL-GXT55", _
"GARD-S8D1B", _
"VIDE-A45RQ", _
"PET-5J29R", _
"GROC-9Z6CI", _
"TOOL-9SED4", _
"SPOR-4G62O", _
"AUTO-Z85UO", _
"BOOK-DSB5K", _
"VIDE-O84G0", _
"FURN-9NR5H", _
"TOYS-KE28Y", _
"PET-XDIYH", _
"SPOR-XAXN0", _
"SPOR-9O256", _
"CLOT-YY2K2", _
"SHOE-G719L", _
"TOOL-JG410", _
"ELEC-HLBJ0", _
"TOYS-I6MWF", _
"FURN-IY2QU", _
"FURN-F9OM6", _
"TOOL-596Z8", _
"VIDE-EO9QU", _
"GARD-573TH", _
"VIDE-13W3Y", _
"JEWL-O7ZNH", _
"FURN-HOTER", _
"TOOL-2TH7B", _
"FURN-RNN42", _
"MUSI-XYS1V", _
"TOYS-YB5UE", _
"SPOR-378AV", _
"SPOR-O761L", _
"GROC-L5EY9", _
"SPOR-ENMC2", _
"GROC-6OV2D", _
"SPOR-0LYRU", _
"GROC-4D6XY", _
"SHOE-ZJO4D", _
"PET-25AOY", _
"PET-BU7J9", _
"MUSI-HEO2O", _
"SHOE-J9X4E", _
"HEAL-Y934J", _
"FURN-H9ZXC", _
"AUTO-NQHKV", _
"VIDE-MUBZJ", _
"FURN-9RTS2", _
"TOYS-FUCX1", _
"JEWL-X5GNZ", _
"HEAL-0P5Q9", _
"HOME-ZH34Q", _
"FURN-K7AI0", _
"SHOE-I8335", _
"VIDE-VPEVZ", _
"TOOL-VR6SH", _
"ELEC-HM81W", _
"OFFI-8ACWB", _
"GROC-76KLK", _
"HOME-2MKHF", _
"OFFI-9LHQ2", _
"AUTO-XBR78", _
"PET-BRAM5", _
"JEWL-NONDO", _
"SHOE-MMB82", _
"TOOL-F3YRS", _
"VIDE-S4292", _
"PET-7LMSS", _
"MUSI-OPX5J", _
"ELEC-GLCL7", _
"MUSI-1HWO9", _
"ELEC-FNCPR", _
"ELEC-IILU9", _
"GARD-L6VND", _
"HOME-9T2Y7", _
"TOYS-B0KA3", _
"VIDE-U3UDX", _
"TOOL-OPCXR", _
"FURN-I43YJ", _
"GROC-JER3M", _
"BEAU-KOH32", _
"GARD-AOGOM", _
"BABY-UTTUE", _
"MUSI-G13FH", _
"AUTO-1DW9J", _
"HOME-GXYQT", _
"MUSI-ODHKA", _
"ELEC-471FA", _
"VIDE-JEMOY", _
"BEAU-KFBKQ", _
"VIDE-MIT7U", _
"GARD-SB6IH", _
"PET-2B75V", _
"TOOL-KIA8A", _
"GARD-4EXSD", _
"CLOT-VYDH9", _
"HOME-YLQ8K", _
"TOOL-90R9L", _
"GARD-J3R18", _
"GARD-BM3MV", _
"OFFI-4YOY9", _
"BOOK-BLI1Q", _
"CLOT-QYYZ6", _
"OFFI-7AYBU", _
"MUSI-KQWQX", _
"CLOT-0DPLQ", _
"SPOR-O49JG", _
"PET-UC54O", _
"BABY-3KCRG", _
"SHOE-C6KQY", _
"PET-T6WGO", _
"BABY-GX1A6", _
"CLOT-TI5TI", _
"GROC-1P1IV", _
"GROC-P2KPZ", _
"BOOK-WUJ3L", _
"CLOT-8Q87S", _
"JEWL-7F96H", _
"VIDE-P21N7", _
"ELEC-ISGNP", _
"VIDE-91XI1", _
"SHOE-RANMN", _
"TOYS-VCZCS", _
"TOYS-J2ECG", _
"SPOR-PLKSG", _
"PET-5ABZW", _
"HOME-JKH25", _
"PET-3DYYE", _
"BEAU-QUZZP", _
"VIDE-7KY9X", _
"HOME-6DJIQ", _
"GARD-UGTLF", _
"GROC-J7AR8", _
"GARD-XYMEZ", _
"HOME-G0VA6", _
"TOYS-607AP", _
"ELEC-HB4XI", _
"PET-877WV", _
"VIDE-ARL2J", _
"BABY-FD026", _
"HOME-OYPIP", _
"SPOR-YZX73", _
"PET-LTJ2E", _
"SHOE-M7NZP", _
"BEAU-75IXT", _
"BABY-295ML", _
"FURN-97AVV", _
"HEAL-ZT1GF", _
"AUTO-DWDTM", _
"BOOK-2TNW7", _
"MUSI-Y06SO", _
"PET-F68U9", _
"HEAL-U25G3", _
"HEAL-NY4JO", _
"TOYS-W5XS9", _
"FURN-V8DSR", _
"BOOK-5I5QX", _
"GARD-FCOX6", _
"GROC-NQJ0I", _
"HOME-YTB57", _
"ELEC-MEAU3", _
"ELEC-NGTD6", _
"GROC-4IE8X", _
"TOOL-K6FJ4", _
"OFFI-86IRQ", _
"BABY-V81NU", _
"FURN-AC1QN", _
"BEAU-AYCI6", _
"SPOR-MPF9Z", _
"HOME-BC98T", _
"TOYS-INPZA", _
"BOOK-AFY5K", _
"SHOE-VYDCW", _
"CLOT-60RE0", _
"BOOK-VD5U8", _
"TOYS-452GL", _
"AUTO-Q5S21", _
"CLOT-3R7JU", _
"VIDE-FH6UV", _
"BEAU-PFNTH", _
"OFFI-TVKLM", _
"CLOT-KEFX7", _
"TOOL-9YXR4", _
"CLOT-CE4M6", _
"OFFI-457BP", _
"SPOR-AGLK2", _
"BOOK-POKXE", _
"OFFI-401RG"))
	Return RandListValue(skus)
End Sub

Sub Rand_Product As String
	Dim products As List
	products.Initialize
	products.AddAll(Array As String( _
    "Wireless Earbuds", _
    "Laptop Backpack", _
    "Smartphone", _
    "Electric Kettle", _
    "Yoga Mat", _
    "Running Shoes", _
    "Coffee Maker", _
    "Bluetooth Speaker", _
    "Desk Lamp", _
    "Wrist Watch", _
    "Sunglasses", _
    "Vacuum Cleaner", _
    "Hair Dryer", _
    "Digital Camera", _
    "Smartwatch", _
    "Gaming Chair", _
    "Tablet", _
    "Cookware Set", _
    "Office Chair", _
    "Water Bottle", _
    "LED TV", _
    "Portable Power Bank", _
    "Handbag", _
    "Novel Book", _
    "T-Shirt", _
    "Winter Jacket", _
    "Camping Tent", _
    "Baby Stroller", _
    "Toy Car", _
    "Guitar", _
    "Microwave Oven", _
    "Refrigerator", _
    "Washing Machine", _
    "Blender", _
    "Food Processor", _
    "Rice Cooker", _
    "Air Fryer", _
    "Toaster", _
    "Ceiling Fan", _
    "Table Fan", _
    "Iron Box", _
    "Vacuum Robot", _
    "Lawn Mower", _
    "Garden Hose", _
    "Screwdriver Set", _
    "Hammer Drill", _
    "Cordless Drill", _
    "Wrench Set", _
    "Toolbox", _
    "Paint Brush Set", _
    "Measuring Tape", _
    "Electric Screwdriver", _
    "Safety Gloves", _
    "Motorcycle Helmet", _
    "Car Vacuum", _
    "Car Phone Mount", _
    "Dash Camera", _
    "Tire Inflator", _
    "Car Seat Cover", _
    "Car Floor Mats", _
    "Engine Oil", _
    "Bike Lock", _
    "Mountain Bike", _
    "Tennis Racket", _
    "Soccer Ball", _
    "Basketball", _
    "Baseball Glove", _
    "Cricket Bat", _
    "Fishing Rod", _
    "Camping Stove", _
    "Sleeping Bag", _
    "Hiking Backpack", _
    "Climbing Rope", _
    "Kayak", _
    "Surfboard", _
    "Skateboard", _
    "Roller Skates", _
    "Electric Scooter", _
    "Drone", _
    "Tripod Stand", _
    "Camera Lens", _
    "Memory Card", _
    "External Hard Drive", _
    "USB Flash Drive", _
    "Keyboard", _
    "Mouse", _
    "Gaming Headset", _
    "Mechanical Keyboard", _
    "Monitor", _
    "Printer", _
    "3D Printer", _
    "Router", _
    "WiFi Repeater", _
    "Smart Light Bulb", _
    "Smart Plug", _
    "Security Camera", _
    "Doorbell Camera", _
    "Baby Monitor", _
    "Fitness Tracker", _
    "Blood Pressure Monitor", _
    "Thermometer", _
    "Wheelchair", _
    "First Aid Kit", _
    "Electric Toothbrush", _
    "Toothpaste", _
    "Shampoo", _
    "Conditioner", _
    "Body Lotion", _
    "Perfume", _
    "Lipstick", _
    "Foundation", _
    "Eyeliner", _
    "Mascara", _
    "Nail Polish", _
    "Shaving Kit", _
    "Deodorant", _
    "Hand Sanitizer", _
    "Face Mask", _
    "Protein Powder", _
    "Vitamins", _
    "Energy Drink", _
    "Granola Bars", _
    "Chocolate Box", _
    "Cookies", _
    "Tea Bags", _
    "Coffee Beans", _
    "Olive Oil", _
    "Cooking Spices", _
    "Cereal Box", _
    "Pasta Pack", _
    "Rice Bag", _
    "Frozen Pizza", _
    "Ice Cream Tub", _
    "Soft Drinks", _
    "Bottle of Wine", _
    "Whiskey", _
    "Beer Pack", _
    "Baby Diapers", _
    "Baby Wipes", _
    "Baby Formula", _
    "High Chair", _
    "Baby Crib", _
    "Baby Toys", _
    "Plush Bear", _
    "Board Game", _
    "Puzzle Set", _
    "Lego Set", _
    "Doll House", _
    "Action Figure", _
    "RC Car", _
    "Building Blocks", _
    "Art Set", _
    "Colored Pencils", _
    "Paint Kit", _
    "Sketchbook", _
    "Notebook", _
    "Ballpoint Pens", _
    "Marker Set", _
    "Printer Paper", _
    "File Folders", _
    "Binder", _
    "Stapler", _
    "Desk Organizer", _
    "Calendar", _
    "Wall Clock", _
    "Curtains", _
    "Carpet Rug", _
    "Sofa", _
    "Dining Table", _
    "Bed Frame", _
    "Mattress", _
    "Pillows", _
    "Blanket", _
    "Wardrobe", _
    "Bookshelf", _
    "TV Stand", _
    "Shoe Rack", _
    "Mirror", _
    "Painting", _
    "Vase", _
    "Wall Art", _
    "Floor Lamp", _
    "Table Lamp", _
    "Chandelier", _
    "Candle Set", _
    "Artificial Plant", _
    "Flower Pot", _
    "Garden Chair", _
    "Patio Table", _
    "Outdoor Umbrella", _
    "BBQ Grill", _
    "Fire Pit", _
    "Swimming Pool", _
    "Jacuzzi", _
    "Tent Canopy", _
    "Picnic Basket", _
    "Travel Suitcase", _
    "Duffel Bag", _
    "Laptop Bag", _
    "Wallet", _
    "Belt", _
    "Hat", _
    "Scarf", _
    "Gloves" _
))
	Return RandListValue(products)
End Sub


Sub Rand_Capital_City As String
	Dim names As List
	names.initialize
	names.add("﻿Kabul")
	names.add("Tiranë (Tirana)")
	names.add("El Djazaïr  (Algiers)")
	names.add("Pago Pago")
	names.add("Andorra la Vella")
	names.add("Luanda")
	names.add("The Valley")
	names.add("St. John's")
	names.add("Buenos Aires")
	names.add("Yerevan")
	names.add("Oranjestad")
	names.add("Canberra")
	names.add("Wien (Vienna)")
	names.add("Baku")
	names.add("Nassau")
	names.add("Al-Manamah (Manama)")
	names.add("Dhaka")
	names.add("Bridgetown")
	names.add("Minsk")
	names.add("Bruxelles-Brussel")
	names.add("Belmopan")
	names.add("Cotonou")
	names.add("Porto-Novo")
	names.add("Hamilton")
	names.add("Thimphu")
	names.add("La Paz")
	names.add("Sucre")
	names.add("Sarajevo")
	names.add("Gaborone")
	names.add("Brasília")
	names.add("Road Town")
	names.add("Bandar Seri Begawan")
	names.add("Sofia")
	names.add("Ouagadougou")
	names.add("Bujumbura")
	names.add("Praia")
	names.add("Phnum Pénh (Phnom Penh)")
	names.add("Yaoundé")
	names.add("Ottawa-Gatineau")
	names.add("Kralendijk")
	names.add("George Town")
	names.add("Bangui")
	names.add("N'Djaména")
	names.add("St. Helier")
	names.add("St. Peter Port")
	names.add("Santiago")
	names.add("Beijing")
	names.add("Hong Kong")
	names.add("Macao")
	names.add("Bogotá")
	names.add("Moroni")
	names.add("Brazzaville")
	names.add("Rarotonga")
	names.add("San José")
	names.add("Abidjan")
	names.add("Yamoussoukro")
	names.add("Zagreb")
	names.add("La Habana (Havana)")
	names.add("Willemstad")
	names.add("Lefkosia (Nicosia)")
	names.add("Praha (Prague)")
	names.add("P'yongyang")
	names.add("Kinshasa")
	names.add("København (Copenhagen)")
	names.add("Djibouti")
	names.add("Roseau")
	names.add("Santo Domingo")
	names.add("Quito")
	names.add("Al-Qahirah (Cairo)")
	names.add("San Salvador")
	names.add("Malabo")
	names.add("Asmara")
	names.add("Tallinn")
	names.add("Addis Ababa")
	names.add("Stanley")
	names.add("Tórshavn")
	names.add("Suva")
	names.add("Helsinki")
	names.add("Paris")
	names.add("Cayenne")
	names.add("Papeete")
	names.add("Libreville")
	names.add("Banjul")
	names.add("Tbilisi")
	names.add("Berlin")
	names.add("Accra")
	names.add("Gibraltar")
	names.add("Athínai (Athens)")
	names.add("Nuuk (Godthåb)")
	names.add("St.George's")
	names.add("Basse-Terre")
	names.add("Hagåtña")
	names.add("Ciudad de Guatemala (Guatemala City)")
	names.add("Conakry")
	names.add("Bissau")
	names.add("Georgetown")
	names.add("Port-au-Prince")
	names.add("Vatican City")
	names.add("Tegucigalpa")
	names.add("Budapest")
	names.add("Reykjavík")
	names.add("Delhi")
	names.add("Jakarta")
	names.add("Tehran")
	names.add("Baghdad")
	names.add("Dublin")
	names.add("Douglas")
	names.add("Jerusalem")
	names.add("Roma (Rome)")
	names.add("Kingston")
	names.add("Tokyo")
	names.add("Amman")
	names.add("Astana")
	names.add("Nairobi")
	names.add("Tarawa")
	names.add("Al Kuwayt (Kuwait City)")
	names.add("Bishkek")
	names.add("Vientiane")
	names.add("Riga")
	names.add("Bayrut (Beirut)")
	names.add("Maseru")
	names.add("Monrovia")
	names.add("Tarabulus (Tripoli)")
	names.add("Vaduz")
	names.add("Vilnius")
	names.add("Luxembourg")
	names.add("Antananarivo")
	names.add("Lilongwe")
	names.add("Kuala Lumpur")
	names.add("Male")
	names.add("Bamako")
	names.add("Valletta")
	names.add("Majuro")
	names.add("Fort-de-France")
	names.add("Nouakchott")
	names.add("Port Louis")
	names.add("Mamoudzou")
	names.add("Ciudad de México (Mexico City)")
	names.add("Palikir")
	names.add("Monaco")
	names.add("Ulaanbaatar")
	names.add("Podgorica")
	names.add("Brades Estate")
	names.add("Rabat")
	names.add("Maputo")
	names.add("Nay Pyi Taw")
	names.add("Windhoek")
	names.add("Nauru")
	names.add("Kathmandu")
	names.add("Amsterdam")
	names.add("s-Gravenhage (The Hague)")
	names.add("Nouméa")
	names.add("Wellington")
	names.add("Managua")
	names.add("Niamey")
	names.add("Abuja")
	names.add("Alofi")
	names.add("Saipan")
	names.add("Oslo")
	names.add("Masqat (Muscat)")
	names.add("Islamabad")
	names.add("Koror")
	names.add("Ciudad de Panamá (Panama City)")
	names.add("Port Moresby")
	names.add("Asunción")
	names.add("Lima")
	names.add("Manila")
	names.add("Warszawa (Warsaw)")
	names.add("Lisboa (Lisbon)")
	names.add("San Juan")
	names.add("Ad-Dawhah (Doha)")
	names.add("Seoul")
	names.add("Chisinau")
	names.add("Saint-Denis")
	names.add("Bucuresti (Bucharest)")
	names.add("Moskva (Moscow)")
	names.add("Kigali")
	names.add("Jamestown")
	names.add("Basseterre")
	names.add("Castries")
	names.add("Saint-Pierre")
	names.add("Kingstown")
	names.add("Apia")
	names.add("San Marino")
	names.add("São Tomé")
	names.add("Ar-Riyadh (Riyadh)")
	names.add("Dakar")
	names.add("Beograd (Belgrade)")
	names.add("Victoria")
	names.add("Freetown")
	names.add("Singapore")
	names.add("Philipsburg")
	names.add("Bratislava")
	names.add("Ljubljana")
	names.add("Honiara")
	names.add("Muqdisho (Mogadishu)")
	names.add("Bloemfontein")
	names.add("Cape Town")
	names.add("Pretoria")
	names.add("Juba")
	names.add("Madrid")
	names.add("Colombo")
	names.add("Sri Jayewardenepura Kotte")
	names.add("Ramallah")
	names.add("Al-Khartum (Khartoum)")
	names.add("Paramaribo")
	names.add("Mbabane")
	names.add("Stockholm")
	names.add("Bern")
	names.add("Dimashq (Damascus)")
	names.add("Dushanbe")
	names.add("Skopje")
	names.add("Krung Thep (Bangkok)")
	names.add("Dili")
	names.add("Lomé")
	names.add("Tokelau")
	names.add("Nuku'alofa")
	names.add("Port of Spain")
	names.add("Tunis")
	names.add("Ankara")
	names.add("Ashgabat")
	names.add("Cockburn Town")
	names.add("Funafuti")
	names.add("Kampala")
	names.add("Kyiv (Kiev)")
	names.add("Abu Zaby (Abu Dhabi)")
	names.add("London")
	names.add("Dodoma")
	names.add("Washington, D.C.")
	names.add("Charlotte Amalie")
	names.add("Montevideo")
	names.add("Tashkent")
	names.add("Port Vila")
	names.add("Caracas")
	names.add("Hà Noi")
	names.add("Matu-Utu")
	names.add("El Aaiún")
	names.add("Sana'a'")
	names.add("Lusaka")
	names.add("Harare")
	Return RandListValue(names)
End Sub

Sub Rand_Expense_Category As String
	' Define the most common expense categories
	Dim allCategories As List
	allCategories.Initialize
	allCategories.AddAll(Array As String( _
        "Housing", "Rent", "Mortgage", "Utilities", "Electricity", "Water", "Gas", "Internet", "Phone", _
        "Groceries", "Food", "Dining Out", "Restaurants", "Takeout", _
        "Transportation", "Gasoline", "Public Transit", "Car Payment", "Car Insurance", "Car Maintenance", "Parking", "Tolls", _
        "Insurance", "Health Insurance", "Life Insurance", "Home Insurance", _
        "Healthcare", "Medical", "Dental", "Pharmacy", "Vision", _
        "Entertainment", "Streaming Services", "Movies", "Concerts", "Hobbies", "Gym", "Fitness", _
        "Shopping", "Clothing", "Electronics", "Home Goods", "Personal Care", _
        "Education", "Tuition", "Books", "Courses", "Student Loans", _
        "Childcare", "Baby Supplies", "Pet Expenses", "Pet Food", "Veterinary", _
        "Travel", "Vacation", "Hotels", "Flights", "Repairs", "Charging", "Tires", "Maintenance", "Cleaning", _
        "Gifts", "Donations", "Charity", "Subscriptions", "Memberships", _
        "Debt Payments", "Credit Card", "Loans", "Savings", "Investments" _
    ))
	Return RandListValue(allCategories)
End Sub


Sub Rand_Province As String
	Dim provinces As List
	provinces.Initialize
    
	' Canada (10 provinces)
	provinces.AddAll(Array As String("Alberta", "British Columbia", "Manitoba", "New Brunswick", _
	"Newfoundland and Labrador", "Nova Scotia", "Ontario", _
	"Prince Edward Island", "Quebec", "Saskatchewan"))
    
	' South Africa (9 provinces)
	provinces.AddAll(Array As String("Eastern Cape", "Free State", "Gauteng", "KwaZulu-Natal", _
	"Limpopo", "Mpumalanga", "Northern Cape", "North West", "Western Cape"))
    
	' Netherlands (12 provinces)
	provinces.AddAll(Array As String("Drenthe", "Flevoland", "Friesland", "Gelderland", _
	"Groningen", "Limburg", "Noord-Brabant", "Noord-Holland", _
	"Overijssel", "Zuid-Holland", "Utrecht", "Zeeland"))
    
	' Philippines (sample of 10/81 provinces)
	provinces.AddAll(Array As String("Cebu", "Davao del Sur", "Bulacan", "Pangasinan", _
	"Negros Occidental", "Zamboanga del Sur", "Rizal", _
	"Laguna", "Cavite", "Batangas"))
    
	' Italy (10/20 regions)
	provinces.AddAll(Array As String( _
        "Lombardy", "Veneto", "Emilia-Romagna", "Tuscany", _
	"Lazio", "Campania", "Sicily", "Piedmont", "Liguria", "Trentino-Alto Adige"))
    
	' Other Major Regions (equivalent to provinces)
	provinces.AddAll(Array As String("Gyeonggi, South Korea", "Tokyo, Japan", "Bavaria, Germany", _
	"Texas, USA", "New South Wales, Australia", "São Paulo, Brazil", _
	"Gujarat, India", "Jiangsu, China", "Bangkok, Thailand", _
	"Catalonia, Spain", "Lombardy, Italy", "Quebec, Canada"))
	Return RandListValue(provinces)
End Sub

'Generates a random job title
Public Sub Rand_Job_Title As String
	  
	Return Rand_Occupation

End Sub
 
'convert a string to monetary format
private Sub MakeMoney(sValue As String) As String
	If sValue.Length = 0 Then Return "0.00"
	If sValue = "null" Then sValue = "0.00"
	sValue = sValue.Replace(",","")
	sValue = Val(sValue)
	If sValue = "0" Then sValue = "000"
	sValue = Round2(sValue,2)
	Return NumberFormat2(sValue, 1, 2, 2, True)
End Sub

'extract all numeric values from a string
private Sub Val(value As String) As String
	Try
		value = value.Trim
		If value = "" Then value = "0"
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("0123456789.-", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout + 0
	Catch
		Return value
	End Try
End Sub

private Sub InStr(Text As String, sFind As String) As Int
	Return Text.tolowercase.IndexOf(sFind.tolowercase)
End Sub

' Get models for a specific make (from your list)
private Sub GetModelsForMake(Make As String) As List
	Dim ModelList As List
	ModelList.Initialize 
	'
	Dim AllModels As Map = GetVehicleModels
	If AllModels.ContainsKey(Make) Then
		ModelList = AllModels.Get(Make)
		Return ModelList
	Else
		Return ModelList
	End If
End Sub

' Random full vehicle (uses YOUR GetVehicleMakes list)
Sub Rand_Vehicle As String
	Dim Make As String = Rand_Vehicle_Make
	Dim Models As List = GetModelsForMake(Make)
	Dim Model As String = RandListValue(Models)
	Return Make & " " & Model
End Sub


' Returns Map of your 50 makes -> popular models (612 total, top by sales/parc)
private Sub GetVehicleModels As Map
	Dim Models As Map
	Models.Initialize
    
	' Major Global Brands
	Models.Put("Toyota", Array As String("Corolla", "RAV4", "Camry", "Hilux", "Yaris", "Prius", "Highlander", "Tacoma", "Land Cruiser", "4Runner", "Sienna", "Tundra", "Supra"))
	Models.Put("Volkswagen", Array As String("Golf", "Tiguan", "Passat", "Polo", "ID.4", "Jetta", "Taos", "Atlas", "ID.3", "T-Roc", "Arteon"))
	Models.Put("Ford", Array As String("F-150", "Explorer", "F-250", "Escape", "Mustang", "Bronco", "Maverick", "Ranger", "Edge", "Expedition"))
	Models.Put("Honda", Array As String("CR-V", "Civic", "Accord", "HR-V", "Pilot", "Odyssey", "Ridgeline", "Passport"))
	Models.Put("Nissan", Array As String("Rogue", "Sentra", "Altima", "Frontier", "Pathfinder", "Kicks", "Ariya", "Armada"))
	Models.Put("Chevrolet", Array As String("Silverado", "Equinox", "Tahoe", "Traverse", "Malibu", "Colorado", "Suburban", "Blazer", "Trax"))
	Models.Put("Hyundai", Array As String("Tucson", "Elantra", "Santa Fe", "Sonata", "Palisade", "Kona", "Ioniq 5", "Creta", "Venue"))
	Models.Put("Kia", Array As String("Sportage", "Sorento", "Telluride", "Seltos", "Carnival", "Forte", "EV6", "Soul", "K5"))
	Models.Put("Mercedes-Benz", Array As String("C-Class", "GLE", "E-Class", "GLC", "A-Class", "S-Class", "GLB", "EQE", "GLS"))
	Models.Put("BMW", Array As String("3 Series", "X3", "X5", "5 Series", "X1", "7 Series", "i4", "iX", "X7"))
    
	' Major Volume Brands
	Models.Put("Audi", Array As String("A4", "Q5", "A6", "Q3", "Q7", "A3", "Q8", "e-tron", "A8"))
	Models.Put("Mazda", Array As String("CX-5", "MAZDA3", "CX-30", "CX-90", "MX-5", "CX-50", "CX-70"))
	Models.Put("Subaru", Array As String("Outback", "Forester", "Crosstrek", "Impreza", "Ascent", "WRX"))
	Models.Put("Renault", Array As String("Clio", "Captur", "Megane", "Arkana", "Austral", "Duster"))
	Models.Put("Peugeot", Array As String("208", "2008", "308", "3008", "5008", "e-208", "408"))
	Models.Put("Fiat", Array As String("500", "Panda", "Tipo", "500e", "Pulse", "Strada"))
	Models.Put("Jeep", Array As String("Grand Cherokee", "Wrangler", "Compass", "Renegade", "Gladiator", "Wagoneer"))
	Models.Put("Ram", Array As String("1500", "2500", "3500"))
	Models.Put("GMC", Array As String("Sierra", "Yukon", "Acadia", "Hummer EV", "Canyon"))
	Models.Put("Mitsubishi", Array As String("Outlander", "ASX", "Eclipse Cross", "Pajero Sport", "L200", "Triton"))
	Models.Put("Suzuki", Array As String("Swift", "Vitara", "Baleno", "Brezza", "Jimny", "Ertiga", "Grand Vitara"))
	Models.Put("Škoda", Array As String("Octavia", "Kodiaq", "Kamiq", "Scala", "Superb", "Enyaq", "Karoq"))
	Models.Put("Seat", Array As String("Leon", "Ateca", "Tarraco", "Formentor", "Ibiza"))
	Models.Put("Citroën", Array As String("C3", "C4", "C5 Aircross", "Berlingo", "e-C4", "C3 Aircross"))
	Models.Put("Opel/Vauxhall", Array As String("Corsa", "Astra", "Grandland", "Mokka", "Combo", "Crossland"))
	Models.Put("Buick", Array As String("Enclave", "Encore", "Envision", "LaCrosse"))
	Models.Put("Volvo", Array As String("XC60", "XC90", "XC40", "EX30", "EX90", "S60"))
	Models.Put("Land Rover", Array As String("Defender", "Range Rover", "Discovery", "Range Rover Sport", "Velar"))
    
	' Regional & Growing
	Models.Put("Tesla", Array As String("Model 3", "Model Y", "Model S", "Model X", "Cybertruck"))
	Models.Put("BYD", Array As String("Qin Plus", "Song Plus", "Yuan Plus", "Seagull", "Seal", "Han", "Tang"))
	Models.Put("Geely", Array As String("Xingyue L", "Boyue", "Emgrand", "Preface", "Tugella", "Lynk & Co 01"))
	Models.Put("Lexus", Array As String("RX", "NX", "ES", "GX", "UX", "TX", "LS"))
	Models.Put("Dodge", Array As String("Charger", "Challenger", "Durango", "Hornet"))
	Models.Put("Chrysler", Array As String("Pacifica", "Voyager"))
	Models.Put("Cadillac", Array As String("Escalade", "XT5", "CT5", "Lyriq", "XT4", "Celestiq"))
	Models.Put("Porsche", Array As String("911", "Cayenne", "Macan", "Panamera", "Taycan"))
	Models.Put("Mini", Array As String("Cooper", "Countryman", "Convertible", "Clubman"))
	Models.Put("Jaguar", Array As String("F-Pace", "E-Pace", "XF", "F-Type", "I-Pace"))
	Models.Put("Infiniti", Array As String("QX60", "QX50", "Q50", "QX80"))
	Models.Put("Acura", Array As String("MDX", "RDX", "TLX", "Integra"))
	Models.Put("Genesis", Array As String("GV80", "G80", "GV70", "GV60", "G90"))
	Models.Put("Lincoln", Array As String("Navigator", "Aviator", "Nautilus", "Corsair"))
	Models.Put("Dacia", Array As String("Sandero", "Duster", "Jogger", "Spring"))
	Models.Put("MG", Array As String("ZS", "MG4", "HS", "5", "Cyberster", "ZST"))
	Models.Put("Tata", Array As String("Nexon", "Punch", "Safari", "Harrier", "Altroz"))
	Models.Put("Mahindra", Array As String("Scorpio N", "XUV700", "Thar", "Bolero", "XUV300"))
	Models.Put("Maruti Suzuki", Array As String("Swift", "Brezza", "Baleno", "Ertiga", "Fronx", "Jimny", "Grand Vitara"))
	Models.Put("Changan", Array As String("CS75", "UNI-T", "CS55", "Eado", "Deepal SL03"))
	Models.Put("Haval", Array As String("H6", "Jolion", "Dargo", "Big Dog", "Xiaolong"))
	Models.Put("Wuling", Array As String("Hongguang Mini EV", "Bingo", "Starlight", "Capgemini", "Macro"))
    
	Return Models
End Sub
  