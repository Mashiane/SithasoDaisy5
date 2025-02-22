B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private BANano As BANano 'ignore
	Private mSelf As Object
	Private iAttributes As Map
	Private iStyles As Map
	Private iClasses As List
	Public ExcludeTextColor As Boolean = False
	Public ExcludeBackgroundColor As Boolean = False
	Public ExcludeVisible As Boolean = False
	Public ExcludeEnabled As Boolean = False
	Public ExcludePosition As Boolean = False
	Private fields As Map
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(self As Object)
	mSelf = self
	iAttributes.Initialize 
	iStyles.Initialize 
	iClasses.Initialize 
	ExcludeTextColor = False
	ExcludeBackgroundColor = False
	ExcludeVisible = False
	ExcludeEnabled = False
	ExcludePosition = False
	fields.Initialize 
End Sub

Sub SetReadOnly(mElement As BANanoElement, b As Boolean)
	If mElement = Null Then Return 
	If b Then
		mElement.SetAttr("readonly", "readonly")
	Else
		mElement.RemoveAttr("readonly")
	End If
End Sub

Sub SetNoArrows(mElement As BANanoElement)
	If mElement = Null Then Return
	AddClass(mElement, "[appearance:textfield] [&::-webkit-outer-spin-button]:appearance-none [&::-webkit-inner-spin-button]:appearance-none")
End Sub

Sub GetElementByID(sID As String) As BANanoElement
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return Null
	Return mElement
End Sub

Sub GetElementObjectByID(sID As String) As BANanoObject
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return Null
	Return mElement.ToObject
End Sub

'scroll into view
Sub EnsureVisible(sID As String)
	sID = modSD5.CleanID(sID)
	If BANano.Exists($"#${sID}"$) = False Then Return
	Dim opt As Map = CreateMap()
	opt.Put("behavior", "smooth")
	opt.Put("block", "nearest")
	opt.Put("inline", "nearest")
	BANano.GetElement($"#${sID}"$).RunMethod("scrollIntoView", opt)
End Sub

' internal use
public Sub Trigger(mElement As BANanoElement, event As String, params() As String)
	If mElement = Null Then Return
	mElement.Trigger(event, params)
End Sub

Sub RemoveElementByID(sID As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	mElement.Remove
	mElement = Null
End Sub

' internal use
public Sub SetProps(props As Map)
	Dim sParentID As String = props.GetDefault("ParentID", "")
	sParentID = modSD5.CleanID(sParentID)
	Dim sMarginAXYTBLR As String = props.GetDefault("MarginAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	sMarginAXYTBLR = modSD5.CStr(sMarginAXYTBLR)
	Dim sPaddingAXYTBLR As String = props.GetDefault("PaddingAXYTBLR", "a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	sPaddingAXYTBLR = modSD5.CStr(sPaddingAXYTBLR)
	Dim sRawClasses As String = props.GetDefault("RawClasses", "")
	sRawClasses = modSD5.CStr(sRawClasses)	
	Dim sRawStyles As String = props.GetDefault("RawStyles", "")
	sRawStyles = modSD5.CStr(sRawStyles)	
	Dim sRawAttributes As String = props.GetDefault("RawAttributes", "")
	sRawAttributes = modSD5.CStr(sRawAttributes)	
	Dim bVisible As Boolean = props.GetDefault("Visible", True)
	bVisible = modSD5.CBool(bVisible)	
	Dim bEnabled As Boolean = props.GetDefault("Enabled", True)
	bEnabled = modSD5.CBool(bEnabled)	
	Dim sPositionStyle As String = props.GetDefault("PositionStyle", "")
	sPositionStyle = modSD5.CStr(sPositionStyle)	
	Dim sPosition As String = props.GetDefault("Position", "t=?; b=?; r=?; l=?")
	sPosition = modSD5.CStr(sPosition)	
	Dim sTextColor As String = props.GetDefault("TextColor", "")
	sTextColor = modSD5.CStr(sTextColor)
	Dim sText As String = props.GetDefault("Text", "")
	sText = modSD5.CStr(sText)
	Dim sBackgroundColor As String = props.GetDefault("BackgroundColor", "")
	sBackgroundColor = modSD5.CStr(sBackgroundColor)	
	Dim sRawBorderColor As String = props.GetDefault("RawBorderColor", "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?")
	sRawBorderColor = modSD5.CStr(sRawBorderColor)	
	Dim sRawBorderStyle As String = props.GetDefault("RawBorderStyle", "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?")
	sRawBorderStyle = modSD5.CStr(sRawBorderStyle)	
	Dim sRawBorderWidth As String = props.GetDefault("RawBorderWidth", "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?")
	sRawBorderWidth = modSD5.CStr(sRawBorderWidth)	
	Dim sRawBorderRadius As String = props.GetDefault("RawBorderRadius", "a=?; t=?; r=?; b=?; l=?; tl=?; tr=?; bl=?; br=?; x=?; y=?")
	sRawBorderRadius = modSD5.CStr(sRawBorderRadius)
	'
	BANano.SetP(mSelf, "sParentID", sParentID)
	BANano.SetP(mSelf, "sMarginAXYTBLR", sMarginAXYTBLR)
	BANano.SetP(mSelf, "sPaddingAXYTBLR", sPaddingAXYTBLR)
	BANano.SetP(mSelf, "sRawClasses", sRawClasses)
	BANano.SetP(mSelf, "sRawStyles", sRawStyles)
	BANano.SetP(mSelf, "sRawAttributes", sRawAttributes)
	BANano.SetP(mSelf, "bVisible", bVisible)
	BANano.SetP(mSelf, "bEnabled", bEnabled)
	BANano.SetP(mSelf, "sPositionStyle", sPositionStyle)
	BANano.SetP(mSelf, "sPosition", sPosition)
	BANano.SetP(mSelf, "sTextColor", sTextColor)
	BANano.SetP(mSelf, "sText", sText)
	BANano.SetP(mSelf, "sBackgroundColor", sBackgroundColor)
	BANano.SetP(mSelf, "sRawBorderColor", sRawBorderColor)
	BANano.SetP(mSelf, "sRawBorderStyle", sRawBorderStyle)
	BANano.SetP(mSelf, "sRawBorderWidth", sRawBorderWidth)
	BANano.SetP(mSelf, "sRawBorderRadius", sRawBorderRadius)
End Sub

Private Sub GetVisibleDT() As Boolean
	Return BANano.GetP(mSelf, "bVisible")
End Sub

Private Sub GetEnabledDT() As Boolean
	Return BANano.GetP(mSelf, "bEnabled")
End Sub

public Sub BuildExAttributes() As String
	If ExcludeEnabled = False Then
		Dim bEnabled As Boolean = modSD5.CBool(GetEnabledDT)
		If bEnabled = False Then AddAttrDT("disabled", "disabled")
	End If
	Dim sRawAttributes As String = GetAttributes
	Dim attrM As Map = GetKeyValues(sRawAttributes, False)
	attrM = BANano.DeepMerge(attrM, iAttributes)
	Dim xStyle As String = BuildAttributes(attrM)
	Return xStyle
End Sub

private Sub BuildAttributes(o As Map) As String
	Dim colStyle As StringBuilder
	colStyle.Initialize
	'
	For Each k As String In o.Keys
		Dim v As String = o.GetDefault(k, "")
		v = modSD5.CStr(v)
		k = modSD5.CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" Then
			colStyle.Append($"${k}="${v}" "$)
		End If
	Next
	Dim sout As String = colStyle.tostring
	colStyle.Initialize
	Return sout
End Sub

' internal use
public Sub BuildExStyle() As String
	Dim styleList As Map
	styleList.Initialize 
	If ExcludePosition = False Then
		Dim sPositions As String = GetPosition
		Dim sPositionsM As Map = GetPositionMap(sPositions)
		Dim sPositionStyle As String = GetPositionStyle
		If sPositionStyle = "none" Then sPositionStyle = ""
		If sPositionStyle <> "" Then
			styleList.Put("position", sPositionStyle)
		End If
		styleList = BANano.DeepMerge(styleList, sPositionsM)
	End If
	'
	Dim sRawStyles As String = GetStyles
	Dim styleM As Map = GetKeyValues(sRawStyles, True)
	'
	Dim sbc As String = GetBorderColor
	Dim sbcm As Map = GetBordersMap("color", sbc)
	'
	Dim sbs As String = GetBorderStyle
	Dim sbsm As Map = GetBordersMap("style", sbs)
	'
	Dim sbw As String = GetBorderWidth
	Dim sbwm As Map = GetBordersMap("width", sbw)
	
	Dim sbr As String = GetBorderRadius
	Dim sbrm As Map = GetBordersMap("radius", sbr)
	
	styleList = BANano.DeepMerge(styleList, styleM)
	styleList = BANano.DeepMerge(styleList, iStyles)
	styleList = BANano.DeepMerge(styleList, sbcm)
	styleList = BANano.DeepMerge(styleList, sbsm)
	styleList = BANano.DeepMerge(styleList, sbwm)
	styleList = BANano.DeepMerge(styleList, sbrm)
	
	Dim xStyle As String = BuildStyles(styleList)
	Return xStyle
End Sub

public Sub BuildExClass() As String
	Dim classList As List
	classList.Initialize 
	If ExcludeTextColor = False Then
		Dim xTextColor As String = GetTextColor
		Dim tc As String = modSD5.FixColor("text", xTextColor)
		If tc <> "" Then AddClassDT(tc)
	End If
	'
	If ExcludeBackgroundColor = False Then
		Dim xBgColor As String = GetBackgroundColor
		Dim bc As String = modSD5.FixColor("bg", xBgColor)
		If bc <> "" Then AddClassDT(bc)
	End If
	'
	If ExcludeVisible = False Then
		Dim bVisible As Boolean = modSD5.CBool(GetVisibleDT)
		If bVisible = False Then AddClassDT("hidden hide")
	End If
	'
	Dim sClasses As String = GetClasses
	Dim cl As List = GetClassList(sClasses)
	classList = BANano.DeepMerge(classList, cl)
	
	Dim sMarginAXYTBLR As String = GetMarginAXYTBLR
	sMarginAXYTBLR = modSD5.CStr(sMarginAXYTBLR)
	Dim marginsM As Map = GetMarginPaddingMap(sMarginAXYTBLR)
	Dim margins As List = MarginPaddingToList("m", marginsM)
	classList = BANano.DeepMerge(classList, margins)
	'
	Dim sPaddingAXYTBLR As String = GetPaddingAXYTBLR
	sPaddingAXYTBLR = modSD5.CStr(sPaddingAXYTBLR)
	Dim paddingM As Map = GetMarginPaddingMap(sPaddingAXYTBLR)
	Dim padding As List = MarginPaddingToList("p", paddingM)
	classList = BANano.DeepMerge(classList, padding)
	classList = BANano.DeepMerge(classList, iClasses)
	
	Dim xStyle As String = modSD5.Join(" ", classList)
	Return xStyle
End Sub

private Sub BuildStyles(o As Map) As String
	Dim colStyle As StringBuilder
	colStyle.Initialize
	'
	For Each k As String In o.Keys
		Dim v As String = o.GetDefault(k, "")
		v = modSD5.CStr(v)
		k = modSD5.CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then
			colStyle.Append($"${k}:${v};"$)
		End If
	Next
	Dim sout As String = colStyle.ToString
	colStyle.Initialize
	Return sout
End Sub

public Sub SetParentID(s As String)
	s = modSD5.CleanID(s)
	BANano.SetP(mSelf, "sParentID", s)
End Sub

public Sub GetParentID() As String
	Return BANano.GetP(mSelf, "sParentID")
End Sub

public Sub SetBorderRadius(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sRawBorderRadius", s)
	If mElement = Null Then Return
	Dim bb As Map = GetBordersMap("radius", s)
	AddStyleMap(mElement, bb)
End Sub

public Sub GetBorderRadius() As String
	Return BANano.GetP(mSelf, "sRawBorderRadius")
End Sub

public Sub SetBorderWidth(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sRawBorderWidth", s)
	If mElement = Null Then Return
	Dim bb As Map = GetBordersMap("width", s)
	AddStyleMap(mElement, bb)
End Sub

public Sub GetBorderWidth() As String
	Return BANano.GetP(mSelf, "sRawBorderWidth")
End Sub

public Sub SetBorderStyle(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sRawBorderStyle", s)
	If mElement = Null Then Return
	Dim bb As Map = GetBordersMap("style", s)
	AddStyleMap(mElement, bb)
End Sub

public Sub GetBorderStyle() As String
	Return BANano.GetP(mSelf, "sRawBorderStyle")
End Sub

public Sub SetBorderColorStyle(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sRawBorderColor", s)
	If mElement = Null Then Return
	Dim bb As Map = GetBordersMap("color", s)
	AddStyleMap(mElement, bb)
End Sub

public Sub SetBorderColor(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim ncolor As String = modSD5.FixColor("border", s)
	UpdateClass(mElement, "bordercolor", ncolor)
End Sub

public Sub SetBorderColorByID(sID As String, s As String)
	sID = modSD5.CStr(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	Dim ncolor As String = modSD5.FixColor("border", s)
	UpdateClass(mElement, "bordercolor", ncolor)
End Sub


public Sub GetBorderColor() As String
	Return BANano.GetP(mSelf, "sRawBorderColor")
End Sub

public Sub SetSize(mElement As BANanoElement, sizeName As String, prefix As String, s As String)
	If mElement = Null Then Return
	Dim s1 As String = modSD5.FixSize(prefix, s)
	UpdateClass(mElement, sizeName, s1)
End Sub

public Sub SetSizeByID(sID As String, sizeName As String, prefix As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetSize(mElement, sizeName, prefix, s)
End Sub

public Sub SetColor(mElement As BANanoElement, colorName As String, prefix As String, s As String)
	If mElement = Null Then Return
	Dim s1 As String = modSD5.FixColor(prefix, s)
	UpdateClass(mElement, colorName, s1)
End Sub

public Sub GetColor() As String
	Return BANano.GetP(mSelf, "sColor")
End Sub

public Sub SetColorByID(sID As String, colorName As String, prefix As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetColor(mElement, colorName, prefix, s)
End Sub

public Sub SetColorStyle(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim m As Map = CreateMap()
	m.Put("color", s)
	mElement.SetStyle(BANano.ToJson(m))
End Sub


public Sub SetColorStyleByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetColorStyle(mElement, s)
End Sub

public Sub SetBackgroundColorStyle(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim m As Map = CreateMap()
	m.Put("background-color", s)
	mElement.SetStyle(BANano.ToJson(m))
End Sub

public Sub SetBackgroundColorStyleByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetBackgroundColorStyle(mElement, s)
End Sub

public Sub SetBackgroundColor(mElement As BANanoElement, s As String)		'ignoredeadcode
	BANano.SetP(mSelf, "sBackgroundColor", s)
	If mElement = Null Then Return
	Dim s1 As String = modSD5.FixColor("bg", s)
	UpdateClass(mElement, "color", s1)
End Sub

public Sub RemoveBackgroundColor(mElement As BANanoElement)
	If mElement = Null Then Return
	Dim lastColor As String = mElement.GetData("color")
	lastColor = modSD5.CStr(lastColor)
	If lastColor <> "" Then mElement.RemoveClass(lastColor)
End Sub

Sub RemoveBackgroundColorByID(sID As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	Dim lastColor As String = mElement.GetData("color")
	lastColor = modSD5.CStr(lastColor)
	If lastColor <> "" Then 
		mElement.RemoveClass(lastColor)
		mElement.RemoveAttr("data-color")
	End If
End Sub

public Sub GetBackgroundColor() As String
	Return BANano.GetP(mSelf, "sBackgroundColor")
End Sub

public Sub SetTextColor(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sTextColor", s)
	If mElement = Null Then Return
	Dim s1 As String = modSD5.FixColor("text", s)
	UpdateClass(mElement, "textcolor", s1)
End Sub

public Sub SetCheckedColor(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim s1 As String = modSD5.FixColor("checked:bg", s)
	Dim s2 As String = modSD5.FixColor("checked:border", s)
	UpdateClass(mElement, "checkedbgcolor", s1)
	UpdateClass(mElement, "checkedborder", s2)
End Sub

public Sub SetCheckedColorByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	SetCheckedColor(mElement, s)
End Sub

public Sub SetCheckedTextColor(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim s1 As String = modSD5.FixColor("checked:text", s)
	UpdateClass(mElement, "checkedtextcolor", s1)
End Sub

public Sub SetCheckedTextColorByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	SetCheckedTextColor(mElement, s)
End Sub

public Sub UpdateClassByID(sID As String, k As String, v As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	UpdateClass(mElement, k, v)
End Sub

public Sub RemoveClassByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	RemoveClass(mElement, s)
End Sub

public Sub SetBackgroundColorByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetBackgroundColor(mElement, s)
End Sub

public Sub SetTextColorByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetTextColor(mElement, s)
End Sub

Sub SetIconSizeStyle(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	If s = "" Then s = "md"
	Select Case s
		Case "xs"
			S = "16px"   '"24px"
		Case "sm"
			S = "24px"  ' "32px"
		Case "md"
			S = "32px" ' "40px"
		Case "lg"
			S =  "40px" ' "48px"
		Case "xl"
			S = "48px" ' "56px"
	End Select
	SetStyle(mElement, "font-size", s)
	SetStyle(mElement, "font-size", s)
End Sub

'set Image Size
Sub SetButtonImageSize(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	If s = "" Then s = "md"
	Select Case s
	Case "xs"
		S = "16px"   '"24px"
	Case "sm"
		S = "24px"  ' "32px"
	Case "md"
		S = "32px" ' "40px"
	Case "lg"
		S =  "40px" ' "48px"
	Case "xl"
		S = "48px" ' "56px"
	End Select
	SetSize(mElement, "width", "w", s)
	SetSize(mElement, "height", "h", s)
End Sub

'get icon size insize button
Sub SetButtonImageSizeByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetButtonImageSize(mElement, s)
End Sub

Sub SetIconSizeStyleByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetIconSizeStyle(mElement, s)
End Sub

public Sub SetTextSizeByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetTextSize(mElement, s)
End Sub

public Sub SetMaskByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetMask(mElement, s)
End Sub

public Sub SetRoundedByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetRounded(mElement, s)
End Sub

public Sub SetRingColorByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetRingColor(mElement, s)
End Sub

public Sub SetTextByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetText(mElement, s)
End Sub

public Sub SetRingColor(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim xcolor As String = modSD5.FixColor("ring", s)
	UpdateClass(mElement, "ringcolor", xcolor)
End Sub

public Sub SetMask(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim xmask As String = modSD5.FixMask(s)
	UpdateClass(mElement, "mask", xmask)
End Sub

public Sub SetRounded(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim xmask As String = modSD5.FixRounded(s)
	UpdateClass(mElement, "rounded", xmask)
End Sub

public Sub SetShadow(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim xmask As String = modSD5.FixShadow(s)
	UpdateClass(mElement, "shadow", xmask)
End Sub

Sub SetShadowByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetShadow(mElement, s)
End Sub

public Sub SetTextSize(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim s1 As String = modSD5.FixColor("text", s)
	UpdateClass(mElement, "textsize", s1)
End Sub

public Sub GetTextColor() As String
	Return BANano.GetP(mSelf, "sTextColor")
End Sub

Sub AddVisibleDT(b As Boolean)
	If b = False Then AddClassDT("hidden")
End Sub

Sub AddClassDT(clsName As String)
	iClasses.Add(clsName)
End Sub

Sub UpdateClassDT(className As String, clsName As String)
	iClasses.Add(clsName)
	iAttributes.Put($"data-${className}"$, clsName)
End Sub

'add a class to an element
Sub AddClass(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	s = modSD5.CStr(s)
	s = s.Replace(" ", ";")
	s = s.Replace(CRLF, ";")
	s = s.Replace("<br/>", ";")
	s = s.trim
	If s = "" Then Return
	Dim lst As List = modSD5.StrParseTrim(";", s)
	For Each c As String In lst
		If c = "" Then Continue
		mElement.AddClass(c)
	Next
End Sub

Sub AddClassList(mElement As BANanoElement, lst As List)
	If mElement = Null Then Return
	Dim sList As String = modSD5.Join(";", lst)
	AddClass(mElement, sList)
End Sub

Sub AddStyleMap(mElement As BANanoElement, ms As Map)
	If mElement = Null Then Return
	If ms.Size = 0 Then Return
	Dim svalue As String = BANano.ToJson(ms)
	mElement.SetStyle(svalue)
End Sub

Sub ClearByID(sID As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	mElement.empty
End Sub

Sub Clear(mElement As BANanoElement)
	If mElement = Null Then Return
	mElement.empty
End Sub

Sub Append(mElement As BANanoElement, sContent As String)
	If mElement = Null Then Return
	mElement.Append(sContent)
End Sub

'append content to the specified element
Sub AppendByID(sID As String, sContent As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	mElement.Append(sContent)
End Sub

Sub SetHTML(mElement As BANanoElement, sContent As String)
	BANano.SetP(mSelf, "sHTML", sContent)
	If mElement = Null Then Return
	mElement.SetHTML(BANano.SF(sContent))
End Sub

Sub SetHTMLByID(sID As String, sContent As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	mElement.SetHTML(BANano.SF(sContent))
End Sub

public Sub GetHTML() As String
	Return BANano.GetP(mSelf, "sHTML")
End Sub

'set attributes that are delimited by :;
public Sub SetAttributes(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sRawAttributes", s)
	If mElement = Null Then Return
	Dim mm As Map = GetKeyValues(s, False)
	For Each k As String In mm.Keys
		Dim v As String = mm.Get(k)
		Select Case k
		Case "class"
			AddClass(mElement, v)
		Case "style"
			SetStyles(mElement, v)
		Case Else			
			SetAttr(mElement, k, v)
		End Select
	Next
End Sub

public Sub SetAttributesByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	Dim mm As Map = GetKeyValues(s, False)
	For Each k As String In mm.Keys
		Dim v As String = mm.Get(k)
		SetAttr(mElement, k, v)
	Next
End Sub

public Sub GetAttributes() As String
	Return BANano.GetP(mSelf, "sRawAttributes")
End Sub

'get positions delimited by :;
private Sub GetPositionMap(varStyles As String) As Map
	Dim ms As Map = CreateMap()
	Dim oldm As Map = GetKeyValues(varStyles, False)
	For Each k As String In oldm.Keys
		Dim v As String = oldm.Get(k)
		Select Case k
		Case "t"
			ms.Put("top", v)
		Case "b"
			ms.Put("bottom", v)
		Case "r"
			ms.Put("right", v)
		Case "l"
			ms.Put("left", v)
		Case Else
			ms.Put(k, v)
		End Select
	Next
	Return ms
End Sub

Sub SetPositionByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetPosition(mElement, s)
End Sub

public Sub SetPosition(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sPosition", s)
	If mElement = Null Then Return
	Dim stylesx As Map = GetPositionMap(s)
	AddStyleMap(mElement, stylesx)
End Sub

public Sub GetPosition() As String
	Return BANano.GetP(mSelf, "sPosition")
End Sub


public Sub SetPaddingAXYTBLR(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sPaddingAXYTBLR", s)
	If mElement = Null Then Return
	Dim mm As Map = GetMarginPaddingMap(s)
	Dim classList As List = MarginPaddingToList("p", mm)
	AddClassList(mElement, classList)
End Sub

Sub SetPaddingAXYTBLRByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetPaddingAXYTBLR(mElement, s)
End Sub


' internal use
public Sub GetPaddingAXYTBLR() As String
	Return BANano.GetP(mSelf, "sPaddingAXYTBLR")
End Sub

public Sub SetMarginAXYTBLR(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sMarginAXYTBLR", s)
	If mElement = Null Then Return
	Dim mm As Map = GetMarginPaddingMap(s)
	Dim classList As List = MarginPaddingToList("m", mm)
	AddClassList(mElement, classList)
End Sub

Sub SetMarginAXYTBLRByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetMarginAXYTBLR(mElement, s)
End Sub

public Sub GetMarginAXYTBLR() As String
	Return BANano.GetP(mSelf, "sMarginAXYTBLR")
End Sub

public Sub SetClasses(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sRawClasses", s)
	If mElement = Null Then Return
	AddClass(mElement, s)
End Sub

Sub SetClassesByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	AddClass(mElement, s)
End Sub


public Sub GetClasses() As String
	Return BANano.GetP(mSelf, "sRawClasses")
End Sub

public Sub SetPositionStyle(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sPositionStyle", s)
	If mElement = Null Then Return
	AddStyle(mElement, "position", s)
End Sub

public Sub GetPositionStyle() As String
	Return BANano.GetP(mSelf, "sPositionStyle")
End Sub

public Sub SetStyles(mElement As BANanoElement, s As String)
	BANano.SetP(mSelf, "sRawStyles", s)
	If mElement = Null Then Return
	Dim ms As Map = GetKeyValues(s, True)
	If ms.Size = 0 Then Return
	mElement.SetStyle(BANano.ToJson(ms))
End Sub

Sub SetStylesByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	Dim ms As Map = GetKeyValues(s, True)
	If ms.Size = 0 Then Return
	mElement.SetStyle(BANano.ToJson(ms))
End Sub


public Sub GetStyles() As String
	Return BANano.GetP(mSelf, "sRawStyles")
End Sub

public Sub SetVisible(mElement As BANanoElement, bVisible As Boolean)
	BANano.SetP(mSelf, "bVisible", bVisible)
	If mElement = Null Then Return
	If bVisible Then
		RemoveClass(mElement, "hide hidden")
	Else
		AddClass(mElement, "hide hidden")
	End If
End Sub

Sub SetCursorPointer(mElement As BANanoElement)
	If mElement = Null Then Return
	AddClass(mElement, "cursor-pointer")
End Sub

Sub SetCursorPointerByID(sID As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetCursorPointer(mElement)
End Sub

Sub Show(sID As String)
	SetVisibleByID(sID, True)
End Sub

Sub Hide(sID As String)
	SetVisibleByID(sID, False)
End Sub

Sub SetVisibleByID(sID As String, b As Boolean)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetVisible(mElement, b)
End Sub

Sub OnEventMethod(mElement As BANanoElement, event As String, Module As Object, MethodName As String)		'ignore
	If mElement = Null Then Return
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.CallBack(Module, MethodName, Array(e))
	mElement.RunMethod("on", Array(event, cb))
End Sub

Sub OnEventByID(sID As String, event As String, CallBack As Object, MethodName As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	OnEvent(mElement, event, CallBack, MethodName)
End Sub

'add event
Sub OnEvent(mElement As BANanoElement, event As String, CallBack As Object, MethodName As String)
	If mElement = Null Then Return
	event = event.Replace(":","")
	event = event.Replace(".","")
	event = event.Replace("-","")
	If SubExists(CallBack, MethodName) Then
		mElement.Off(event)
		mElement.On(event, CallBack, MethodName)
	Else
		BANano.Console.Error($"${event}.${MethodName} event DOES NOT exist!"$)
	End If
End Sub

' internal use
public Sub GetVisible(mElement As BANanoElement) As Boolean
	If mElement = Null Then Return False
	Dim mVisible As Boolean = Not(mElement.HasClass("hidden"))
	BANano.SetP(mSelf, "bVisible", mVisible)
	Return mVisible
End Sub

' internal use
public Sub SetEnabled(mElement As BANanoElement, bEnabled As Boolean)
	BANano.SetP(mSelf, "bEnabled", bEnabled)
	If mElement = Null Then Return
	If bEnabled Then
		RemoveAttr(mElement, "disabled")
	Else
		SetAttr(mElement, "disabled", True)
	End If
End Sub

Sub SetEnabledByID(sID As String, bEnabled As Boolean)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If bEnabled Then
		RemoveAttr(mElement, "disabled")
	Else
		SetAttr(mElement, "disabled", True)
	End If
End Sub

' internal use
public Sub GetEnabled(mElement As BANanoElement) As Boolean
	If mElement = Null Then Return False
	Dim mEnabled As Boolean = Not(mElement.hasAttr("disabled"))
	BANano.SetP(mSelf, "bEnabled", mEnabled)
	Return mEnabled
End Sub

'set a data attribute
Sub SetData(mElement As BANanoElement, k As String, v As String)
	If mElement = Null Then Return
	If k = "" Then Return
	If v = "" Then
		RemoveAttr(mElement, $"data-${k}"$)
	Else	
		SetAttr(mElement, $"data-${k}"$, v)
	End If
End Sub

'get a data attribute
Sub GetData(mElement As BANanoElement, k As String) As String
	If mElement = Null Then Return ""
	Dim ma As String = mElement.GetData(k)
	ma = modSD5.CStr(ma)
	ma = ma.trim
	Return ma
End Sub

'remove an attribute from the element
Sub RemoveAttr(mElement As BANanoElement, attr As String)
	If mElement = Null Then Return
	mElement.RemoveAttr(attr)
End Sub

'add a styles to the element
Sub SetStyle(mElement As BANanoElement, k As String, v As String)
	If mElement = Null Then Return
	k = modSD5.DeCamelCase(k)
	mElement.GetField("style").RunMethod("setProperty", Array(k, v))
End Sub

Sub SetStyleByID(sID As String, k As String, v As String)
	sID = modSD5.CleanID(sID)
	k = modSD5.DeCamelCase(k)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	mElement.GetField("style").RunMethod("setProperty", Array(k, v))
End Sub

Sub RemoveStyleByID(sID As String, k As String)
	sID = modSD5.CleanID(sID)
	k = modSD5.DeCamelCase(k)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	mElement.GetField("style").RunMethod("removeProperty", Array(k))
End Sub

Sub GetStyleByID(sID As String, k As String) As String
	sID = modSD5.CleanID(sID)
	k = modSD5.DeCamelCase(k)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return ""
	Dim computed As BANanoObject
	computed.Initialize4("getComputedStyle", mElement.ToObject) ' note that computed is read-only!
	Dim res As String = computed.RunMethod("getPropertyValue", k).Result
	res = modSD5.CStr(res)
	Return res
End Sub

'add a styles to the element
Sub AddStyle(mElement As BANanoElement, k As String, v As String)
	If mElement = Null Then Return
	k = modSD5.DeCamelCase(k)
	mElement.GetField("style").RunMethod("setProperty", Array(k, v))
End Sub

Sub AddClassByID(sID As String, k As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	AddClass(mElement, k)
End Sub

Sub AddStyleByID(sID As String, k As String, v As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	AddStyle(mElement, k, v)
End Sub

Sub AddStyleDT(k As String, v As String)
	iStyles.Put(k, v)
End Sub

Sub SetAttr(mElement As BANanoElement, attr As String, text As String)
	If mElement = Null Then Return
	mElement.SetAttr(attr, text)
End Sub

Sub SetAttrByID(sID As String, k As String, v As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetAttr(mElement, k, v)
End Sub

Sub RemoveAttrByID(sID As String, k As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	RemoveAttr(mElement, k)
End Sub

Sub AddAttrDT(attr As String, text As Object)
	iAttributes.Put(attr, text)
End Sub

Sub AddDataAttrDT(attr As String, text As String)
	iAttributes.put($"data-${attr}"$, text)
End Sub

'set a data attribute to the element
Sub AddDataAttr(mElement As BANanoElement, attr As String, text As String)
	If mElement = Null Then Return
	mElement.SetData(attr, text)
End Sub

Sub SetDataAttrByID(sID As String, k As String, v As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	mElement.SetData(k, v)
End Sub

Sub GetDataAttr(mElement As BANanoElement, k As String) As String
	If mElement = Null Then Return ""
	If k = "" Then Return ""
	Dim xma As String = mElement.GetData(k)
	xma = modSD5.CStr(xma)
	xma = xma.trim
	Return xma
End Sub

Sub GetAttr(mElement As BANanoElement, attr As String) As String
	If mElement = Null Then Return ""
	If attr = "" Then Return ""
	Dim stext As String = mElement.GetAttr(attr)
	stext = modSD5.CStr(stext)
	stext = stext.trim
	Return stext
End Sub

Sub GetDataAttrByID(sID As String, attr As String) As String
	sID = modSD5.CleanID(sID)
	Dim melement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If melement = Null Then Return ""
	Dim stext As String = melement.GetData(attr)
	stext = modSD5.CStr(stext)
	stext = stext.trim
	Return stext
End Sub

Sub GetAttrByID(sID As String, attr As String) As String
	sID = modSD5.CleanID(sID)
	Dim melement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If melement = Null Then Return ""
	Dim stext As String = melement.GetAttr(attr)
	stext = modSD5.CStr(stext)
	stext = stext.trim
	Return stext
End Sub

Sub AddAttrMap(mElement As BANanoElement, ms As Map)
	If mElement = Null Then Return
	If ms.Size = 0 Then Return
	For Each k As String In ms.Keys
		Dim v As String = ms.Get(k)
		mElement.SetAttr(k,v)
	Next
End Sub

Sub SetIconNameByID(elName As String, scontent As String)
	elName = modSD5.CleanID(elName)
	Dim el As BANanoElement = BANano.GetElement($"#${elName}"$)
	If el = Null Then Return
	Dim mLastIcon As String = el.GetData("icon")
	mLastIcon = modSD5.CStr(mLastIcon)
	If mLastIcon <> "" Then el.RemoveClass(mLastIcon)
	el.AddClass(scontent)
	el.SetData("icon", scontent)
End Sub

Sub RemoveLastClass(mElement As BANanoElement, xattr As String)
	If mElement = Null Then Return
	Dim mLast As String = mElement.GetData(xattr)
	mLast = modSD5.CStr(mLast)
	mLast = mLast.trim
	mElement.RemoveAttr($"data-${xattr}"$)
	If mLast <> "" Then
		RemoveClass(mElement, mLast)
	End If
End Sub

'this is for dynamic classes
Sub UpdateClass(mElement As BANanoElement, rpClass As String, nv As String)
	If mElement = Null Then Return
	RemoveLastClass(mElement, rpClass)
	If nv = "" Then Return
	If nv = "none" Then Return
	If nv.EndsWith("-") = True Then Return
	If nv.EndsWith("-none") = True Then Return
	mElement.SetData(rpClass, nv)
	AddClass(mElement, nv)
End Sub

'Sub RemoveLastClass(mElement As BANanoElement, xattr As String)
'	If mElement = Null Then Return
'	Dim mLast As String = mElement.GetField($"data-${xattr}"$).Result
'	mLast = modSD5.CStr(mLast)
'	mLast = mLast.trim
'	If mLast <> "" Then 
'		RemoveClass(mElement, mLast)
'	End If
'End Sub

''this is for dynamic classes
'Sub UpdateClass(mElement As BANanoElement, rpClass As String, nv As String)
'	If mElement = Null Then Return
'	RemoveLastClass(mElement, rpClass)
'	If nv = "" Then Return
'	If nv = "none" Then Return
'	If nv.EndsWith("-") = True Then Return
'	If nv.EndsWith("-none") = True Then Return
'	mElement.SetField($"data-${rpClass}"$, nv)
'	AddClass(mElement, nv)
'End Sub

Sub UpdateClassOnly(mElement As BANanoElement, rpClass As String, nv As String)
	If mElement = Null Then Return
	If nv = "" Then Return
	If nv = "none" Then Return
	If nv.EndsWith("-") = True Then Return
	If nv.EndsWith("-none") = True Then Return
	mElement.SetField($"data-${rpClass}"$, nv)
	AddClass(mElement, nv)
End Sub

private Sub GetClassList(s As String) As List
	Dim l As List
	l.Initialize 
	s = modSD5.CStr(s)
	s = s.Replace(" ", ";")
	s = s.Replace(CRLF, ";")
	s = s.Replace("<br/>", ";")
	s = s.Trim
	If s = "" Then Return l
	l = modSD5.StrParse(";", s)
	Return l
End Sub

'remove a class from the element you can delimiter by ;
Sub RemoveClass(mElement As BANanoElement, xtext As String)
	If mElement = Null Then Return
	xtext = modSD5.CStr(xtext)
	xtext = xtext.Replace(" ", ";")
	xtext = xtext.Replace(CRLF, ";")
	xtext = xtext.Replace("<br/>", ";")
	xtext = xtext.Trim
	If xtext = "" Then Return
	Dim lst As List = modSD5.StrParse(";", xtext)
	For Each c As String In lst
		c = c.trim
		If c = "" Then Continue
		mElement.RemoveClass(c)
	Next
End Sub

private Sub ListRemoveItem(lst As List, item As String)
	Dim cPos As Int = lst.IndexOf(item)
	If cPos <> -1 Then lst.RemoveAt(cPos)
End Sub

'convert a MV string to a map
Sub GetOptions(varStyles As String) As List
	varStyles = modSD5.CStr(varStyles)
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	varStyles = varStyles.Replace(":", "=").Replace("|", ";")
	varStyles = varStyles.Replace("'", "")
	varStyles = varStyles.Replace(",", ";")
	varStyles = varStyles.Replace(QUOTE, "")
	varStyles = varStyles.replace("?","")
	varStyles = varStyles.trim
	Dim mxItems As List = modSD5.StrParse(";", varStyles)
	mxItems = modSD5.ListRemoveDuplicates(mxItems, False)
	Return mxItems
End Sub

'convert a MV string to a map
Sub GetKeyValues(varStyles As String, deCamel As Boolean) As Map
	varStyles = modSD5.CStr(varStyles)
	varStyles = varStyles.Replace(CRLF, ";").Replace("<br/>", ";")
	varStyles = varStyles.Replace(":", "=").Replace("|", ";")
	varStyles = varStyles.Replace("'", "")
	varStyles = varStyles.Replace(",", ";")
	varStyles = varStyles.Replace(QUOTE, "")
	varStyles = varStyles.replace("?","")
	varStyles = varStyles.trim
	Dim mxItems As List = modSD5.StrParse(";", varStyles)
	mxItems = modSD5.ListRemoveDuplicates(mxItems, False)
	Dim ms As Map = CreateMap()
	For Each mtx As String In mxItems
		mtx = mtx.Trim
		If mtx = "" Then Continue
		Dim k As String = modSD5.mvfield(mtx,1,"=")
		Dim v As String = modSD5.mvfield(mtx,2,"=")
		v = modSD5.CStr(v)
		k = modSD5.CStr(k)
		k = k.trim
		v = v.trim
		If k <> "" And v <> "" Then
			If deCamel Then k = modSD5.DeCamelCase(k)
			ms.put(k, v)
		End If
	Next
	Return ms
End Sub

'typeOf - width, style, color, radius
private Sub GetBordersMap(typeof As String, varOffsets As String) As Map
	Dim mm As Map = CreateMap("a":"", "t":"", "r":"", "b":"", "l":"", "tl":"", "tr":"", "bl":"", "br":"", "x":"", "y":"")
	Dim om As Map = GetKeyValues(varOffsets, False)
	For Each k As String In om.Keys
		Dim v As String = om.Get(k)
		Dim nk As String = ""
		Dim nk1 As String = ""
		Select Case k
		Case "a"
			nk = $"border-${typeof}"$
		Case "t"
			nk = $"border-top-${typeof}"$
		Case "r"
			nk = $"border-right-${typeof}"$
		Case "b"
			nk = $"border-bottom-${typeof}"$
		Case "l"
			nk = $"border-left-${typeof}"$
		Case "tl"
			nk = $"border-top-left-${typeof}"$
		Case "tr"
			nk = $"border-top-right-${typeof}"$
		Case "bl"
			nk = $"border-bottom-left-${typeof}"$
		Case "br"
			nk = $"border-bottom-right-${typeof}"$
		Case "x"
			nk = $"border-bottom-left-${typeof}"$
			nk1 = $"border-bottom-right-${typeof}"$
		Case "y"
			nk = $"border-bottom-top-${typeof}"$
			nk1 = $"border-bottom-bottom-${typeof}"$
		End Select
		If nk <> "" And v <> "" Then 
			mm.Put(nk, v)
		End If
		If nk1 <> "" And v <> "" Then
			mm.Put(nk1, v)
		End If
	Next
	Return mm
End Sub

private Sub GetMarginPaddingMap(varOffsets As String) As Map
	Dim mm As Map = CreateMap("a":"", "x":"", "y":"", "t":"", "b":"", "l":"", "r":"")
	Dim om As Map = GetKeyValues(varOffsets, False)
	For Each k As String In om.Keys
		Dim v As String = om.Get(k)
		mm.Put(k, v)
	Next
	Return mm
End Sub

'convert a map of marging/padding to a list
private Sub MarginPaddingToList(prefix As String, mm As Map) As List
	Dim l As List
	l.Initialize 
	For Each k As String In mm.Keys
		Dim v As String = mm.Get(k)
		If v <> "" Then
			If v.StartsWith("n") Then
				Dim nn As String = modSD5.StrMid(v,2)
				Dim n As String = modSD5.RightSize(nn)
				Dim classKey As String = $"-${prefix}${k}-${n}"$
				If k = "a" Then
					classKey = $"-${prefix}-${n}"$
				End If
				l.Add(classKey)
			Else
				v = modSD5.RightSize(v)
				Dim classKey As String = $"${prefix}${k}-${v}"$
				If k = "a" Then
					classKey = $"${prefix}-${v}"$
				End If
				l.Add(classKey)
			End If
		End If
	Next
	Return l
End Sub

Sub OnChildEvent(child As String, event As String, Module As Object, methodName As String)		'ignore
	child = modSD5.CleanID(child)
	event = event.Replace(":","")
	event = event.Replace(".","")
	event = event.Replace("-","")
	'
	If SubExists(Module, methodName) = False Then Return
	Dim el As BANanoElement = BANano.GetElement($"#${child}"$)
	el.Off(event)
	el.On(event, Module, methodName)
End Sub

Sub SetChecked(mElement As BANanoElement, v As Boolean)
	If mElement = Null Then Return
	mElement.SetChecked(v)
End Sub

Sub GetChecked(mElement As BANanoElement) As Boolean
	If mElement = Null Then Return False
	Return mElement.GetChecked
End Sub

Sub SetImage(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	SetAttr(mElement, "src", s)
End Sub

Sub SetHeight(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("h", s)
	UpdateClass(mElement, "height", sw)
End Sub

Sub SetHeightResponsive(mElement As BANanoElement, breakpoint As String, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("h", s)
	Dim nw As String = $"${breakpoint}:${sw}"$
	UpdateClass(mElement, $"${breakpoint}height"$, nw)
End Sub

Sub SetHeightByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetHeight(mElement, s)
End Sub

Sub SetHeightResponsiveByID(sID As String, breakpoint As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetHeightResponsive(mElement, breakpoint, s)
End Sub

Sub SetWidth(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("w", s)
	UpdateClass(mElement, "width", sw)
End Sub

Sub SetWidthResponsive(mElement As BANanoElement, breakpoint As String, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("w", s)
	Dim nw As String = $"${breakpoint}:${sw}"$
	UpdateClass(mElement, $"${breakpoint}width"$, nw)
End Sub

Sub SetMaxWidthResponsive(mElement As BANanoElement, breakpoint As String, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("max-w", s)
	Dim nw As String = $"${breakpoint}:${sw}"$
	UpdateClass(mElement, $"${breakpoint}maxwidth"$, nw)
End Sub

Sub SetMaxWidthResponsiveByID(sID As String, breakpoint As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetMaxWidthResponsive(mElement, breakpoint, s)
End Sub

Sub SetMaxHeightResponsiveByID(sID As String, breakpoint As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetMaxHeightResponsive(mElement, breakpoint, s)
End Sub

Sub SetMaxHeightResponsive(mElement As BANanoElement, breakpoint As String, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("max-h", s)
	Dim nw As String = $"${breakpoint}:${sw}"$
	UpdateClass(mElement, $"${breakpoint}maxheight"$, nw)
End Sub

Sub SetWidthResponsiveByID(sID As String, breakpoint As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetWidthResponsive(mElement, breakpoint, s)
End Sub

Sub SetMaxHeight(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("max-h", s)
	UpdateClass(mElement, "maxheight", sw)
End Sub

Sub SetMinHeight(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("min-h", s)
	UpdateClass(mElement, "minheight", sw)
End Sub

Sub SetMaxWidth(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("max-w", s)
	UpdateClass(mElement, "maxwidth", sw)
End Sub

Sub SetMinWidth(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim sw As String = modSD5.FixSize("min-w", s)
	UpdateClass(mElement, "minwidth", sw)
End Sub

Sub SetMaxWidthByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetMaxWidth(mElement, s)
End Sub

Sub SetMaxHeightByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetMaxHeight(mElement, s)
End Sub

Sub SetMinHeightByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetMinHeight(mElement, s)
End Sub

Sub SetMinWidthByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetMinWidth(mElement, s)
End Sub

Sub SetWidthByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetWidth(mElement, s)
End Sub

Sub SetImageByID(sID As String, s As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetImage(mElement, s)
End Sub

Sub GetCheckedByID(sID As String) As Boolean
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	Dim b As Boolean = mElement.GetChecked
	b = modSD5.CBool(b)
	Return b
End Sub

Sub SetCheckedByID(sID As String, b As Boolean)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	mElement.SetChecked(b)
End Sub

Sub SetText(mElement As BANanoElement, hx As String)
	If mElement = Null Then Return
	mElement.SetText(hx)
End Sub

Sub GetText(mElement As BANanoElement) As String
	If mElement = Null Then Return ""
	Return mElement.gettext
End Sub

Sub GetTextByID(sID As String) As String
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	Return GetText(mElement)
End Sub

Sub GetValue(mElement As BANanoElement) As Object
	If mElement = Null Then Return Null
	Return mElement.GetValue
End Sub

Sub GetValueByID(sID As String) As String
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return ""
	Dim svalue As String = mElement.GetValue
	Return svalue
End Sub

Sub SetValue(mElement As BANanoElement, v As Object)
	If mElement = Null Then Return
	mElement.SetValue(v)
End Sub

Sub SetValueByID(sID As String, v As Object)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	mElement.SetValue(v)
End Sub

Sub ResponsiveClass(mElement As BANanoElement, className As String, xs As Boolean, sm As Boolean, md As Boolean, lg As Boolean)
	If mElement = Null Then Return
	If xs Then AddClass(mElement, "xs:" & className)
	If sm Then AddClass(mElement, "sm:" & className)
	If md Then AddClass(mElement, "md:" & className)
	If lg Then AddClass(mElement, "lg:" & className)
End Sub

Sub AddTextColorDT(tc As String)   'ignoredeadcode
	Dim s As String = modSD5.FixColor("text", tc)
	AddAttrDT("data-textcolor", s)
	AddClassDT(s)
End Sub

Sub AddBackgroundColorDT(tc As String)			'ignoredeadcode
	Dim s As String = modSD5.FixColor("bg", tc)
	AddAttrDT("data-color", s)
	AddClassDT(s)
End Sub

Sub AddSizeDT(prefix As String, tc As String)
	Dim s As String = modSD5.FixSize(prefix, tc)
	Select Case prefix
	Case "w"
		AddAttrDT("data-width", s)
	Case "h"
		AddAttrDT("data-height", s)
	Case "max-h"
		AddAttrDT("data-maxheight", S)
	Case "min-h"
		AddAttrDT("data-minheight", s)
	Case "max-w"
		AddAttrDT("data-maxwidth", S)
	Case "min-w"
		AddAttrDT("data-minwidth", S)
	Case Else
		AddAttrDT("data-size", S)
	End Select
	AddClassDT(s)
End Sub

Sub AddCenterChildrenDT
	AddClassDT("flex justify-center items-center")
End Sub

Sub AddWidthDT(s As String)
	AddSizeDT("w", s)
End Sub

Sub AddMinWidthDT(s As String)
	AddSizeDT("min-w", s)
End Sub

Sub AddMaxWidthDT(s As String)
	AddSizeDT("max-w", s)
End Sub

Sub AddHeightDT(s As String)
	AddSizeDT("h", s)
End Sub

Sub AddMaxHeightDT(s As String)
	AddSizeDT("max-h", s)
End Sub

Sub AddMinHeightDT(s As String)
	AddSizeDT("min-h", s)
End Sub

Sub AddColorDT(prefix As String, tc As String)
	Dim s As String = modSD5.FixSize(prefix, tc)
	AddAttrDT("data-color", s)
	AddClassDT(s)
End Sub

Sub AddBorderColorDT(tc As String)					'ignoredeadcode
	Dim s As String = modSD5.FixSize("border", tc)
	AddAttrDT("data-bordercolor", s)
	AddClassDT(s)
End Sub

Sub AddMaskDT(tc As String)
	Dim s As String = modSD5.FixMask(tc)
	AddAttrDT("data-mask", s)
	AddClassDT(s)
End Sub

Sub AddRoundedDT(tc As String)
	Dim s As String = modSD5.FixRounded(tc)
	AddAttrDT("data-rounded", s)
	AddClassDT(s)
End Sub

Sub AddShadowDT(s As String)
	Dim x As String = modSD5.FixShadow(s)
	AddAttrDT("data-shadow", s)
	AddClassDT(x)
End Sub

Sub AddTextSizeDT(tc As String)  'ignoredeadcode
	Dim s As String = modSD5.FixSize("text", tc)
	AddAttrDT("data-textsize", s)
	AddClassDT(s)
End Sub

Sub AddBackgroundImageDT(s As String)				'ignoredeadcode
	AddStyleDT("background-image", $"url('${s}')"$)
	AddStyleDT("background-size", "cover")
	AddStyleDT("width", "100%")
	AddStyleDT("height", "100%")
End Sub

Sub SetBackgroundImage(mElement As BANanoElement, s As String)
	If mElement = Null Then Return
	Dim m As Map = CreateMap()
	m.Put("background-image", $"url('${s}')"$)
	m.put("background-size", "cover")
	m.Put("width", "100%")
	m.Put("height", "100%")
	AddStyleMap(mElement, m)
End Sub

Sub AddPlacementDT(sprefix As String, sPlacement As String)   'ignoredeadcode
	Dim hashPos As Int = sPlacement.IndexOf("-")
	If hashPos = -1 Then
		AddClassDT($"${sprefix}-${sPlacement}"$)
	Else	
		Dim fpart As String = modSD5.mvfield(sPlacement,1,"-")
		Dim spart As String = modSD5.mvfield(sPlacement,2,"-")
		AddClassDT($"${sprefix}-${fpart}"$)
		AddClassDT($"${sprefix}-${spart}"$)
	End If	
End Sub

Sub SetPlacement(mElement As BANanoElement, sprefix As String, sPlacement As String)
	If mElement = Null Then Return
	Dim hashPos As Int = sPlacement.IndexOf("-")
	If hashPos = -1 Then
		AddClass(mElement, $"${sprefix}-${sPlacement}"$)
	Else
		Dim fpart As String = modSD5.mvfield(sPlacement,1,"-")
		Dim spart As String = modSD5.mvfield(sPlacement,2,"-")
		AddClass(mElement, $"${sprefix}-${fpart} ${sprefix}-${spart}"$)
	End If
End Sub

Sub SetPlacementByID(sID As String, sprefix As String, splacement As String)
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	SetPlacement(mElement, sprefix, splacement)
End Sub

Sub SetCenterChildren(mElement As BANanoElement, b As Boolean)
	If mElement = Null Then Return
	If b Then
		AddClass(mElement, "flex justify-center items-center")
	Else
		RemoveClass(mElement, "flex justify-center items-center")
	End If
End Sub

Sub SetField(mElement As BANanoElement, k As String, v As String)   'ignoredeadcode
	If mElement = Null Then Return
	mElement.SetField(k, v)
End Sub

Sub GetField(mElement As BANanoElement, k As String) As String			'ignoredeadcode
	If mElement = Null Then Return ""
	Dim v As String = mElement.GetField(k).Result
	v = modSD5.CStr(v)
	Return v
End Sub

Sub SetFieldByID(sID As String, k As String, v As String)				'ignoredeadcode
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return
	mElement.SetField(k, v)
End Sub

Sub GetFieldByID(sID As String, k As String) As String					'ignoredeadcode
	sID = modSD5.CleanID(sID)
	Dim mElement As BANanoElement = BANano.GetElement($"#${sID}"$)
	If mElement = Null Then Return ""
	Dim v As String = mElement.GetField(k).Result
	v = modSD5.CStr(v)
	Return v
End Sub