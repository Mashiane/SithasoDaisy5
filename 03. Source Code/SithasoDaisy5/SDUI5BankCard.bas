B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: BankName, DisplayName: Bank Name, FieldType: String, DefaultValue: BANK OF LATVERIA, Description: Bank Name
#DesignerProperty: Key: CardNumber, DisplayName: Card Number, FieldType: String, DefaultValue: 0210 8820 1150 0222, Description: Card Number (XXXX XXXX XXXX XXXX)
#DesignerProperty: Key: CardHolder, DisplayName: Card Holder, FieldType: String, DefaultValue: CARD HOLDER, Description: Card Holder Name
#DesignerProperty: Key: ExpiresMonth, DisplayName: Expires Month, FieldType: String, DefaultValue: 29, Description: Expiry Month (MM)
#DesignerProperty: Key: ExpiresYear, DisplayName: Expires Year, FieldType: String, DefaultValue: 08, Description: Expiry Year (YY)
#DesignerProperty: Key: CardBrand, DisplayName: Card Brand, FieldType: String, DefaultValue: ❁, Description: Card Brand Symbol
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: Color, DefaultValue: #FFFFFFFF, Description: Text Color
#DesignerProperty: Key: GradientActive, DisplayName: GradientActive, FieldType: Boolean, DefaultValue: True, Description: Gradient should be set
#DesignerProperty: Key: Gradient, DisplayName: Gradient, FieldType: String, DefaultValue: bl_tr, Description: Gradient, List: bl_tr|bottom_top|br_tl|left_right|right_left|tl_br|top_bottom|tr_bl
#DesignerProperty: Key: GradientColor1, DisplayName: GradientColor1, FieldType: Color, DefaultValue: #f86194, Gradient Color 1.
#DesignerProperty: Key: GradientColor2, DisplayName: GradientColor2, FieldType: Color, DefaultValue: #968918, Gradient Color 2.
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100, Description: Width in Tailwind units
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height CSS value
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: 2xl, Description: Rounded, List: 0|2xl|3xl|full|lg|md|none|rounded|sm|xl
#DesignerProperty: Key: Shadow, DisplayName: Shadow, FieldType: String, DefaultValue: 2xl, Description: Shadow, List: 2xl|inner|lg|md|none|shadow|sm|xl
#DesignerProperty: Key: Visible, DisplayName: Visible, FieldType: Boolean, DefaultValue: True, Description: If visible.
#DesignerProperty: Key: Enabled, DisplayName: Enabled, FieldType: Boolean, DefaultValue: True, Description: If enabled.
#DesignerProperty: Key: PositionStyle, DisplayName: Position Style, FieldType: String, DefaultValue: none, Description: Position, List: absolute|fixed|none|relative|static|sticky
#DesignerProperty: Key: Position, DisplayName: Position Locations, FieldType: String, DefaultValue: t=?; b=?; r=?; l=?, Description: Position Locations
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Paddings A(all)-X(LR)-Y(TB)-T-B-L-R
#DesignerProperty: Key: RawClasses, DisplayName: Classes (;), FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: RawStyles, DisplayName: Styles (JSON), FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String use = and ;
#DesignerProperty: Key: RawAttributes, DisplayName: Attributes (JSON), FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String use = and ;

'global variables in this module
Sub Class_Globals
	Public UI As UIShared 'ignore
	Public CustProps As Map 'ignore
	Private mCallBack As Object 'ignore
	Private mEventName As String 'ignore
	Private mElement As BANanoElement 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mName As String 'ignore
	Private BANano As BANano   'ignore
	Private sPosition As String = "t=?; b=?; r=?; l=?"
	Private sPositionStyle As String = "none"
	Private sRawClasses As String = ""
	Private sRawStyles As String = ""
	Private sRawAttributes As String = ""
	Private sMarginAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sPaddingAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private sParentID As String = ""
	Private bVisible As Boolean = True	'ignore
	Private bEnabled As Boolean = True	'ignore
	Public Tag As Object
	Private sBankName As String = "BANK OF LATVERIA"
	Private sCardNumber As String = "0210 8820 1150 0222"
	Private sCardHolder As String = "CARD HOLDER"
	Private sExpiresMonth As String = "29"
	Private sExpiresYear As String = "08"
	Private sCardBrand As String = "❁"
	Private sTextColor As String = "#FFFFFFFF"
	Private sWidth As String = "100"
	Private sHeight As String = ""
	Private sRounded As String = "2xl"
	Private sShadow As String = "2xl"
	Private bGradientActive As Boolean = True
	Private sGradient As String = "bl_tr"
	Private sGradientColor1 As String
	Private sGradientColor2 As String
End Sub

'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mElement = Null
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	SetDefaults
End Sub

Private Sub SetDefaults
	CustProps.Put("ParentID", "")
	CustProps.Put("BankName", "BANK OF LATVERIA")
	CustProps.Put("CardNumber", "0210 8820 1150 0222")
	CustProps.Put("CardHolder", "CARD HOLDER")
	CustProps.Put("ExpiresMonth", "29")
	CustProps.Put("ExpiresYear", "08")
	CustProps.Put("CardBrand", "❁")
	CustProps.Put("TextColor", "#FFFFFFFF")
	CustProps.Put("Width", "100")
	CustProps.Put("Height", "")
	CustProps.Put("Rounded", "2xl")
	CustProps.Put("Shadow", "2xl")
	CustProps.Put("Visible", True)
	CustProps.Put("Enabled", True)
	CustProps.Put("PositionStyle", "none")
	CustProps.Put("Position", "t=?; b=?; r=?; l=?")
	CustProps.Put("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	CustProps.Put("RawClasses", "")
	CustProps.Put("RawStyles", "")
	CustProps.Put("RawAttributes", "")
	CustProps.Put("GradientActive", True)                   'Boolean
	CustProps.Put("Gradient", "bl_tr")                            'String (empty)
	CustProps.Put("GradientColor1", "#f86194, Gradient Color 1.")               'Color
	CustProps.Put("GradientColor2", "#968918, Gradient Color 2.")               'Color
End Sub

' returns the element id
Public Sub getID() As String
	Return mName
End Sub

'set properties from an outside source
Sub SetProperties(props As Map)
	CustProps = BANano.DeepClone(props)
	sParentID = CustProps.Get("ParentID")
End Sub

Sub GetProperties As Map
	Return CustProps
End Sub

'add this element to an existing parent element using current props
Public Sub AddComponent
	If sParentID = "" Then Return
	sParentID = UI.CleanID(sParentID)
	mTarget = BANano.GetElement("#" & sParentID)
	DesignerCreateView(mTarget, CustProps)
End Sub

'remove this element from the dom
Public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

'set the parent id
Sub setParentID(s As String)
	s = UI.CleanID(s)
	sParentID = s
	CustProps.Put("ParentID", sParentID)
End Sub

'get the parent id
Sub getParentID As String
	Return sParentID
End Sub

'return the #ID of the element
Public Sub getHere() As String
	Return $"#${mName}"$
End Sub

'set Visible
Sub setVisible(b As Boolean)
	bVisible = b
	CustProps.Put("Visible", b)
	If mElement = Null Then Return
	UI.SetVisible(mElement, b)
End Sub

'get Visible
Sub getVisible As Boolean
	bVisible = UI.GetVisible(mElement)
	Return bVisible
End Sub

'set Enabled
Sub setEnabled(b As Boolean)
	bEnabled = b
	CustProps.Put("Enabled", b)
	If mElement = Null Then Return
	UI.SetEnabled(mElement, b)
End Sub

'get Enabled
Sub getEnabled As Boolean
	bEnabled = UI.GetEnabled(mElement)
	Return bEnabled
End Sub

'set Position Style
Sub setPositionStyle(s As String)
	sPositionStyle = s
	CustProps.put("PositionStyle", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyle(mElement, "position", s)
End Sub

Sub getPositionStyle As String
	Return sPositionStyle
End Sub

'set raw positions
Sub setPosition(s As String)
	sPosition = s
	CustProps.Put("Position", sPosition)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPosition(mElement, sPosition)
End Sub

Sub getPosition As String
	Return sPosition
End Sub

Sub setAttributes(s As String)
	sRawAttributes = s
	CustProps.Put("RawAttributes", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttributes(mElement, sRawAttributes)
End Sub

Sub setStyles(s As String)
	sRawStyles = s
	CustProps.Put("RawStyles", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetStyles(mElement, sRawStyles)
End Sub

Sub setClasses(s As String)
	sRawClasses = s
	CustProps.put("RawClasses", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetClasses(mElement, sRawClasses)
End Sub

Sub setPaddingAXYTBLR(s As String)
	sPaddingAXYTBLR = s
	CustProps.Put("PaddingAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetPaddingAXYTBLR(mElement, sPaddingAXYTBLR)
End Sub

Sub setMarginAXYTBLR(s As String)
	sMarginAXYTBLR = s
	CustProps.Put("MarginAXYTBLR", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetMarginAXYTBLR(mElement, sMarginAXYTBLR)
End Sub

Sub getAttributes As String
	Return sRawAttributes
End Sub

Sub getStyles As String
	Return sRawStyles
End Sub

Sub getClasses As String
	Return sRawClasses
End Sub

Sub getPaddingAXYTBLR As String
	Return sPaddingAXYTBLR
End Sub

Sub getMarginAXYTBLR As String
	Return sMarginAXYTBLR
End Sub

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		sBankName = Props.GetDefault("BankName", "BANK OF LATVERIA")
		sBankName = UI.CStr(sBankName)
		sCardNumber = Props.GetDefault("CardNumber", "0210 8820 1150 0222")
		sCardNumber = UI.CStr(sCardNumber)
		sCardHolder = Props.GetDefault("CardHolder", "CARD HOLDER")
		sCardHolder = UI.CStr(sCardHolder)
		sExpiresMonth = Props.GetDefault("ExpiresMonth", "29")
		sExpiresMonth = UI.CStr(sExpiresMonth)
		sExpiresYear = Props.GetDefault("ExpiresYear", "08")
		sExpiresYear = UI.CStr(sExpiresYear)
		sCardBrand = Props.GetDefault("CardBrand", "❁")
		sCardBrand = UI.CStr(sCardBrand)
		sTextColor = Props.GetDefault("TextColor", "#FFFFFFFF")
		sTextColor = UI.CStr(sTextColor)
		sTextColor = UI.rgbaToHexAuto(sTextColor)
		sWidth = Props.GetDefault("Width", "100")
		sWidth = UI.CStr(sWidth)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		sRounded = Props.GetDefault("Rounded", "2xl")
		sRounded = UI.CStr(sRounded)
		If sRounded = "none" Then sRounded = ""
		sShadow = Props.GetDefault("Shadow", "2xl")
		sShadow = UI.CStr(sShadow)
		If sShadow = "none" Then sShadow = ""
		bGradientActive = Props.GetDefault("GradientActive", True)
		bGradientActive = UI.CBool(bGradientActive)
		sGradient = Props.GetDefault("Gradient", "bl_tr")
		sGradientColor1 = Props.GetDefault("GradientColor1", "#f86194, Gradient Color 1.")
		sGradientColor1 = UI.CStr(sGradientColor1)
		sGradientColor1 = UI.rgbaToHexAuto(sGradientColor1)
		sGradientColor2 = Props.GetDefault("GradientColor2", "#968918, Gradient Color 2.")
		sGradientColor2 = UI.CStr(sGradientColor2)
		sGradientColor2 = UI.rgbaToHexAuto(sGradientColor2)
	End If
	
	'build classes
	UI.AddClassDT("card")
	If sTextColor <> "" Then UI.AddTextColorDT(sTextColor)
	If sRounded <> "" Then UI.AddRoundedDT(sRounded)
	If sShadow <> "" Then UI.AddShadowDT(sShadow)
	If sWidth <> "" Then UI.AddWidthDT(sWidth)
	If sHeight <> "" Then UI.AddHeightDT(sHeight)
	
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
	Dim xclasses As String = UI.BuildExClass
	
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	
	mElement = mTarget.Append($"[BANCLEAN]
		<div id="${mName}" class="hover-3d cursor-pointer">
			<div id="${mName}_card" class="${xclasses}" ${xattrs} style="${xstyles}">
    			<div class="card-body">
      				<div class="flex justify-between mb-10">
        				<div id="${mName}_bank" class="font-bold">${sBankName}</div>
        				<div id="${mName}_brand" class="text-5xl">${sCardBrand}</div>
      				</div>
      				<div id="${mName}_number" class="text-lg mb-4">${sCardNumber}</div>
      				<div class="flex justify-between">
        				<div>
          					<div class="text-xs">CARD HOLDER</div>
          					<div id="${mName}_holder">${sCardHolder}</div>
        				</div>
        				<div>
          					<div class="text-xs">EXPIRES</div>
          					<div><span id="${mName}_month">${sExpiresMonth}</span>/<span id="${mName}_year">${sExpiresYear}</span></div>
        				</div>
      				</div>
    			</div>
  			</div>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
  			<div></div>
		</div>"$).Get("#" & mName)
	If bGradientActive Then
		Dim agradient As String = UI.GetActualGradient(sGradient)
		UI.SetLinearGradientByID($"${mName}_card"$, agradient, sGradientColor1, sGradientColor2)
	End If
	UI.OnEvent(mElement, "click", mCallBack, $"${mEventName}_click"$)
End Sub

'set Bank Name
Sub setBankName(s As String)
	sBankName = s
	CustProps.Put("BankName", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_bank"$, sBankName)
End Sub

Sub getBankName As String
	Return sBankName
End Sub

'set Card Number
Sub setCardNumber(s As String)
	sCardNumber = s
	CustProps.Put("CardNumber", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_number"$, sCardNumber)
End Sub

Sub getCardNumber As String
	Return sCardNumber
End Sub

'set Card Holder
Sub setCardHolder(s As String)
	sCardHolder = s
	CustProps.Put("CardHolder", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_holder"$, sCardHolder)
End Sub

Sub getCardHolder As String
	Return sCardHolder
End Sub

'set Expires Month
Sub setExpiresMonth(s As String)
	sExpiresMonth = s
	CustProps.Put("ExpiresMonth", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_month"$, sExpiresMonth)
End Sub

Sub getExpiresMonth As String
	Return sExpiresMonth
End Sub

'set Expires Year
Sub setExpiresYear(s As String)
	sExpiresYear = s
	CustProps.Put("ExpiresYear", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_year"$, sExpiresYear)
End Sub

Sub getExpiresYear As String
	Return sExpiresYear
End Sub

'set Card Brand Symbol
Sub setCardBrand(s As String)
	sCardBrand = s
	CustProps.Put("CardBrand", s)
	If mElement = Null Then Return
	UI.SetTextByID($"${mName}_brand"$, sCardBrand)
End Sub

Sub getCardBrand As String
	Return sCardBrand
End Sub

'set Text Color
Sub setTextColor(s As String)
	sTextColor = s
	CustProps.Put("TextColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetTextColorByID($"${mName}_card"$, s)
End Sub

Sub getTextColor As String
	Return sTextColor
End Sub

'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.Put("Width", s)
	If mElement = Null Then Return
	If sWidth <> "" Then UI.SetWidthByID($"${mName}_card"$, sWidth)
End Sub

Sub getWidth As String
	Return sWidth
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.Put("Height", s)
	If mElement = Null Then Return
	If sHeight <> "" Then UI.SetHeightByID($"${mName}_card"$, sHeight)
End Sub

Sub getHeight As String
	Return sHeight
End Sub

'set Rounded
Sub setRounded(s As String)
	sRounded = s
	CustProps.Put("Rounded", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetRoundedByID($"${mName}_card"$, sRounded)
End Sub

Sub getRounded As String
	Return sRounded
End Sub

'set Shadow
Sub setShadow(s As String)
	sShadow = s
	CustProps.Put("Shadow", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetShadowByID($"${mName}_card"$, sShadow)
End Sub

Sub getShadow As String
	Return sShadow
End Sub
