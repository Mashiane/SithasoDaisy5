B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.1
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The ParentID of this component
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: , Description: Src
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color
#DesignerProperty: Key: FillColor, DisplayName: Fill Color, FieldType: String, DefaultValue: currentColor, Description: Fill Color
#DesignerProperty: Key: StrokeColor, DisplayName: Stroke Color, FieldType: String, DefaultValue: , Description: Stroke Color
#DesignerProperty: Key: StrokeWidth, DisplayName: Stroke Width, FieldType: String, DefaultValue: , Description: Stroke Width
#DesignerProperty: Key: Cache, DisplayName: Cache, FieldType: String, DefaultValue: , Description: Cache
#DesignerProperty: Key: CacheDisabled, DisplayName: Cache Disabled, FieldType: Boolean, DefaultValue: True, Description: Cache Disabled
#DesignerProperty: Key: DisableCssScoping, DisplayName: Disable Css Scoping, FieldType: Boolean, DefaultValue: False, Description: Disable Css Scoping
#DesignerProperty: Key: DisableUniqueId, DisplayName: Disable Unique Id, FieldType: Boolean, DefaultValue: False, Description: Disable Unique Id
#DesignerProperty: Key: JSEnabled, DisplayName: JS Enabled, FieldType: Boolean, DefaultValue: False, Description: JS Enabled
#DesignerProperty: Key: LazyLoading, DisplayName: Lazy Loading, FieldType: Boolean, DefaultValue: False, Description: Lazy Loading
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
	Private sParentID As String = ""
	Public Tag As Object
	Private sCache As String = ""
	Private bCacheDisabled As Boolean = True
	Private sColor As String = ""
	Private bDisableCssScoping As Boolean = False
	Private bDisableUniqueId As Boolean = False
	Private sFillColor As String = "currentColor"
	Private sHeight As String = ""
	Private bJSEnabled As Boolean = False
	Private bLazyLoading As Boolean = False
	Private sSrc As String = ""
	Private sStrokeColor As String = ""
	Private sStrokeWidth As String = ""
	Private sWidth As String = ""
End Sub
'initialize the custom view class
Public Sub Initialize (Callback As Object, Name As String, EventName As String)
	UI.Initialize(Me)
	mEventName = UI.CleanID(EventName)
	mName = UI.CleanID(Name)
	mCallBack = Callback
	CustProps.Initialize
	BANano.DependsOnAsset("svg-loader.min.js")
End Sub
' returns the element id
Public Sub getID() As String
	Return mName
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

'code to design the view
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		CustProps = Props
		UI.SetProps(Props)
		UI.ExcludeBackgroundColor = True
		UI.ExcludeTextColor = True
		UI.ExcludeVisible = True
		UI.ExcludeEnabled = True
		sCache = Props.GetDefault("Cache", "")
		sCache = UI.CStr(sCache)
		bCacheDisabled = Props.GetDefault("CacheDisabled", True)
		bCacheDisabled = UI.CBool(bCacheDisabled)
		sColor = Props.GetDefault("Color", "")
		sColor = UI.CStr(sColor)
		bDisableCssScoping = Props.GetDefault("DisableCssScoping", False)
		bDisableCssScoping = UI.CBool(bDisableCssScoping)
		bDisableUniqueId = Props.GetDefault("DisableUniqueId", False)
		bDisableUniqueId = UI.CBool(bDisableUniqueId)
		sFillColor = Props.GetDefault("FillColor", "currentColor")
		sFillColor = UI.CStr(sFillColor)
		sHeight = Props.GetDefault("Height", "")
		sHeight = UI.CStr(sHeight)
		bJSEnabled = Props.GetDefault("JSEnabled", False)
		bJSEnabled = UI.CBool(bJSEnabled)
		bLazyLoading = Props.GetDefault("LazyLoading", False)
		bLazyLoading = UI.CBool(bLazyLoading)
		sSrc = Props.GetDefault("Src", "")
		sSrc = UI.CStr(sSrc)
		sStrokeColor = Props.GetDefault("StrokeColor", "")
		sStrokeColor = UI.CStr(sStrokeColor)
		sStrokeWidth = Props.GetDefault("StrokeWidth", "")
		sStrokeWidth = UI.CStr(sStrokeWidth)
		sWidth = Props.GetDefault("Width", "")
		sWidth = UI.CStr(sWidth)
	End If
	'
	If sCache <> "" Then UI.AddAttrDT("data-cache", sCache)
	If bCacheDisabled = True Then UI.AddAttrDT("data-cache", "disabled")
	If sFillColor <> "" Then UI.AddAttrDT("fill", sFillColor)
	If sColor <> "" Then 
		UI.AddAttrDT("fill", "currentColor")
		UI.AddStyleDT("color", sColor)
	End If
	If bDisableCssScoping = True Then UI.AddAttrDT("disable-css-scoping", "disabled")
	If bDisableUniqueId = True Then 
		UI.AddAttrDT("disable-unique-ids", "disabled")
	End If
	
	If sHeight <> "" Then UI.AddAttrDT("height", sHeight)
	If bJSEnabled = True Then UI.AddAttrDT("data-js", "enabled")
	If bLazyLoading = True Then UI.AddAttrDT("data-loading", "lazy")
	If sSrc <> "" Then UI.AddAttrDT("data-src", sSrc)
	If sStrokeColor <> "" Then UI.AddAttrDT("stroke", sStrokeColor)
	If sStrokeWidth <> "" Then UI.AddAttrDT("stroke-width", sStrokeWidth)
	If sWidth <> "" Then UI.AddAttrDT("width", sWidth)
	Dim xattrs As String = UI.BuildExAttributes
	Dim xstyles As String = UI.BuildExStyle
'	Dim xclasses As String = UI.BuildExClass
	If sParentID <> "" Then
		'does the parent exist
		If BANano.Exists($"#${sParentID}"$) = False Then
			BANano.Throw($"${mName}.DesignerCreateView: '${sParentID}' parent does not exist!"$)
			Return
		End If
		mTarget.Initialize($"#${sParentID}"$)
	End If
	mElement = mTarget.Append($"[BANCLEAN]<svg id="${mName}" ${xattrs} style="${xstyles}"></svg>"$).Get("#" & mName)
'	UI.OnEvent(mElement, "click", mCallBack, $"${mName}_click"$)
End Sub

'set Cache
Sub setCache(s As String)
	sCache = s
	CustProps.put("Cache", s)
	If mElement = Null Then Return
	If s <> "" Then UI.SetAttr(mElement, "data-cache", s)
End Sub
'set Cache Disabled
Sub setCacheDisabled(b As Boolean)
	bCacheDisabled = b
	CustProps.put("CacheDisabled", b)
	If mElement = Null Then Return
	If b = True Then
		UI.SetAttr(mElement, "data-cache", "disabled")
	Else
		UI.RemoveAttr(mElement, "data-cache")
	End If
End Sub
'set Color
Sub setColor(s As String)
	sColor = s
	CustProps.put("Color", s)
	If mElement = Null Then Return
	If s <> "" Then 
		UI.AddAttr(mElement, "fill", "currentColor")
		UI.AddStyle(mElement, "color", s)
	End If
End Sub
'set Disable Css Scoping
Sub setDisableCssScoping(b As Boolean)
	bDisableCssScoping = b
	CustProps.put("DisableCssScoping", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "disable-css-scoping", "disabled")
	Else
		UI.RemoveAttr(mElement, "disable-css-scoping")
	End If
End Sub
'set Disable Unique Id
Sub setDisableUniqueId(b As Boolean)
	bDisableUniqueId = b
	CustProps.put("DisableUniqueId", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "disable-unique-ids", "disabled")
	Else
		UI.RemoveAttr(mElement, "disable-unique-ids")
	End If
End Sub
'set Fill Color
Sub setFillColor(s As String)
	sFillColor = s
	CustProps.put("FillColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "fill", s)
End Sub

'set Height
Sub setHeight(s As String)
	sHeight = s
	CustProps.put("Height", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "height", s)
End Sub
'set J s Enabled
Sub setJSEnabled(b As Boolean)
	bJSEnabled = b
	CustProps.put("JSEnabled", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "data-js", "enabled")
	Else
		UI.RemoveAttr(mElement, "data-js")
	End If
End Sub
'set Lazy Loading
Sub setLazyLoading(b As Boolean)
	bLazyLoading = b
	CustProps.put("LazyLoading", b)
	If mElement = Null Then Return
	If b = True Then
		UI.AddAttr(mElement, "data-loading", "lazy")
	Else
		UI.RemoveAttr(mElement, "data-loading")
	End If
End Sub
'set Src
Sub setSrc(s As String)
	sSrc = s
	CustProps.put("Src", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "data-src", s)
End Sub
'set Stroke Color
Sub setStrokeColor(s As String)
	sStrokeColor = s
	CustProps.put("StrokeColor", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "stroke", s)
End Sub
'set Stroke Width
Sub setStrokeWidth(s As String)
	sStrokeWidth = s
	CustProps.put("StrokeWidth", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "stroke-width", s)
End Sub
'set Width
Sub setWidth(s As String)
	sWidth = s
	CustProps.put("Width", s)
	If mElement = Null Then Return
	If s <> "" Then UI.AddAttr(mElement, "width", s)
End Sub
'get Cache
Sub getCache As String
	Return sCache
End Sub
'get Cache Disabled
Sub getCacheDisabled As Boolean
	Return bCacheDisabled
End Sub
'get Color
Sub getColor As String
	Return sColor
End Sub
'get Disable Css Scoping
Sub getDisableCssScoping As Boolean
	Return bDisableCssScoping
End Sub
'get Disable Unique Id
Sub getDisableUniqueId As Boolean
	Return bDisableUniqueId
End Sub
'get Fill Color
Sub getFillColor As String
	Return sFillColor
End Sub
'get Height
Sub getHeight As String
	Return sHeight
End Sub
'get J s Enabled
Sub getJSEnabled As Boolean
	Return bJSEnabled
End Sub
'get Lazy Loading
Sub getLazyLoading As Boolean
	Return bLazyLoading
End Sub
'get Src
Sub getSrc As String
	Return sSrc
End Sub
'get Stroke Color
Sub getStrokeColor As String
	Return sStrokeColor
End Sub
'get Stroke Width
Sub getStrokeWidth As String
	Return sStrokeWidth
End Sub
'get Width
Sub getWidth As String
	Return sWidth
End Sub