B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#IgnoreWarnings:12
#Event: ConnectionChange (status As Boolean)
#Event: Notification_Show
#Event: Notification_Close
#Event: Notification_Error
#Event: Notification_Click (link As String)
#Event: TemplateItem_Click (e As BANanoEvent)
#Event: DarkTheme (e As BANanoEvent)

Private Sub Class_Globals
	Public UI As UIShared
	Public mElement As BANanoElement 'ignore
	Public Process As String
	Private mback As Object				'ignore
	Private Banano As BANano		'ignore
	Public GoogleMapKey As String = ""
	Public PageView As String = "#pageview"
	Public SwalPosition As String = "top-end"
	Public SwalTimer As Int = 3000
	Public ToastDuration As Int = 3000
	Public ToastPosition As String = "top_right"
	'
	Public CONST SIZE_LG As String = "lg"
	Public CONST SIZE_MD As String = "md"
	Public CONST SIZE_NONE As String = "none"
	Public CONST SIZE_SM As String = "sm"
	Public CONST SIZE_XL As String = "xl"
	Public CONST SIZE_XS As String = "xs"
	Public const SIZE_DEFAULT As String = ""
	Public const SIZE_FULL As String = "full"
	Public const SIZE_MEDIUM As String = "medium"
	Public const SIZE_BOLD As String = "bold"
	Public const SIZE_NONE As String = "none"
	Public const SIZE_2XL As String = "2xl"
	Public const SIZE_3XL As String = "3xl"
	Public const SIZE_4XL As String = "4xl"
	Public const SIZE_5XL As String = "5xl"
	Public const SIZE_6XL As String = "6xl"
	Public const SIZE_7XL As String = "7xl"
	Public const SIZE_8XL As String = "8xl"
	Public const SIZE_9XL As String = "9xl"
	Public const SIZE_BASE As String = "base"
	'
	Public CONST TEXTSIZE_2XL As String = "2xl"
	Public CONST TEXTSIZE_3XL As String = "3xl"
	Public CONST TEXTSIZE_4XL As String = "4xl"
	Public CONST TEXTSIZE_5XL As String = "5xl"
	Public CONST TEXTSIZE_6XL As String = "6xl"
	Public CONST TEXTSIZE_7XL As String = "7xl"
	Public CONST TEXTSIZE_8XL As String = "8xl"
	Public CONST TEXTSIZE_9XL As String = "9xl"
	Public CONST TEXTSIZE_BASE As String = "base"
	Public CONST TEXTSIZE_LG As String = "lg"
	Public CONST TEXTSIZE_MD As String = "md"
	Public CONST TEXTSIZE_NONE As String = "none"
	Public CONST TEXTSIZE_SM As String = "sm"
	Public CONST TEXTSIZE_XL As String = "xl"
	Public CONST TEXTSIZE_XS As String = "xs"

	'
	Public CONST TAB_BORDERED As String = "bordered"
	Public CONST TAB_LIFTED As String = "lifted"
	Public CONST TAB_BOXED As String = "boxed"
	Public CONST TAB_DEFAULT As String = ""
	'
	Public const COLOR_GHOST As String = "ghost"
	Public const COLOR_SLATE As String = "slate"
	Public const COLOR_ZINC As String = "zinc"
	Public const COLOR_GRAY As String = "gray"
	Public const COLOR_NEUTRAL As String = "neutral"
	Public const COLOR_STONE As String = "stone"
	Public const COLOR_AMBER As String = "amber"
	Public const COLOR_YELLOW As String = "yellow"
	Public const COLOR_LIME As String = "lime"
	Public const COLOR_GREEN As String = "green"
	Public const COLOR_EMERALD As String = "emerald"
	Public const COLOR_TEAL As String = "teal"
	Public const COLOR_CYAN As String = "cyan"
	Public const COLOR_SKY As String = "sky"
	Public const COLOR_BLUE As String = "blue"
	Public const COLOR_INDIGO As String = "indigo"
	Public const COLOR_VIOLET As String = "violet"
	Public const COLOR_PURPLE As String = "purple"
	Public const COLOR_FUCHSIA As String = "fuchsia"
	Public const COLOR_PINK As String = "pink"
	Public const COLOR_ROSE As String = "rose"
	Public const COLOR_RED As String = "red"
	Public const COLOR_ORANGE As String = "orange"
		
	Public const COLOR_PRIMARY As String = "primary"
	Public const COLOR_ACCENT As String = "accent"
	Public const COLOR_WARNING As String = "warning"
	Public const COLOR_ERROR As String = "error"
	Public const COLOR_INFO As String = "info"
	Public const COLOR_SUCCESS As String = "success"
	Public const COLOR_BASE As String = "base"
	Public const COLOR_SECONDARY As String = "secondary"
	
	Public const COLOR_BLACK As String = "black"
	Public const COLOR_BROWN As String = "brown"
	Public const COLOR_TRANSPARENT As String = "transparent"
	Public const COLOR_WHITE As String = "white"
	Public const COLOR_NONE As String = ""
	'
	Public const INTENSITY_NORMAL As String = ""
	Public const INTENSITY_50 As String = "50"
	Public const INTENSITY_100 As String = "100"
	Public const INTENSITY_200 As String = "200"
	Public const INTENSITY_300 As String = "300"
	Public const INTENSITY_400 As String = "400"
	Public const INTENSITY_500 As String = "500"
	Public const INTENSITY_600 As String = "600"
	Public const INTENSITY_700 As String = "700"
	Public const INTENSITY_800 As String = "800"
	Public const INTENSITY_900 As String = "900"
	
	Public const INTENSITY_LIGHTEN5 As String = "lighten-5"
	Public const INTENSITY_LIGHTEN4 As String = "lighten-4"
	Public const INTENSITY_LIGHTEN3 As String = "lighten-3"
	Public const INTENSITY_LIGHTEN2 As String = "lighten-2"
	Public const INTENSITY_LIGHTEN1 As String = "lighten-1"
	Public const INTENSITY_DARKEN1 As String = "darken-1"
	Public const INTENSITY_DARKEN2 As String = "darken-2"
	Public const INTENSITY_DARKEN3 As String = "darken-3"
	Public const INTENSITY_DARKEN4 As String = "darken-4"
	Public const INTENSITY_ACCENT1 As String = "accent-1"
	Public const INTENSITY_ACCENT2 As String = "accent-2"
	Public const INTENSITY_ACCENT3 As String = "accent-3"
	Public const INTENSITY_ACCENT4 As String = "accent-4"
	
	Public Themes As Map
	'
	Public const TEXT_UNDERLINE As String = "underline"
	Public const TEXT_OVERLINE As String = "overline"
	Public const TEXT_LINETHROUGH As String = "line-through"
	Public const TEXT_NOUNDERLINE As String = "no-underline"
	'
	Public const SWAL_TOP As String = "top"
	Public const SWAL_TOP_START As String = "top-start"
	Public const SWAL_TOP_END As String = "top-end"
	Public const SWAL_CENTER As String = "center"
	Public const SWAL_CENTER_START As String = "center-start"
	Public const SWAL_CENTER_END As String = "center-end"
	Public const SWAL_BOTTOM As String = "bottom"
	Public const SWAL_BOTTOM_START As String = "bottom-start"
	Public const SWAL_BOTTOM_END As String = "bottom-end"
	'
	Public const PRIORITY_HIGHEST As String = "Highest"
	Public const PRIORITY_HIGH As String = "High"
	Public const PRIORITY_MEDIUM As String = "Medium"
	Public const PRIORITY_LOW As String = "Low"
	Public const PRIORITY_LOWEST As String = "Lowest"
	'
	Public CONST TYPEOF_BALL As String = "ball"
	Public CONST TYPEOF_BARS As String = "bars"
	Public CONST TYPEOF_DOTS As String = "dots"
	Public CONST TYPEOF_INFINITY As String = "infinity"
	Public CONST TYPEOF_RING As String = "ring"
	Public CONST TYPEOF_SPINNER As String = "spinner"
	'
	Public CONST HORIZONTALPOSITION_CENTER As String = "center"
	Public CONST HORIZONTALPOSITION_END As String = "end"
	Public CONST HORIZONTALPOSITION_START As String = "start"
	Public CONST VERTICALPOSITION_BOTTOM As String = "bottom"
	Public CONST VERTICALPOSITION_MIDDLE As String = "middle"
	Public CONST VERTICALPOSITION_TOP As String = "top"
	'
	Public CONST ROUNDED_NONE As String = "none"
	Public CONST ROUNDED_ROUNDED As String = "rounded"
	Public CONST ROUNDED_ROUNDED_2XL As String = "rounded-2xl"
	Public CONST ROUNDED_ROUNDED_3XL As String = "rounded-3xl"
	Public CONST ROUNDED_ROUNDED_FULL As String = "rounded-full"
	Public CONST ROUNDED_ROUNDED_LG As String = "rounded-lg"
	Public CONST ROUNDED_ROUNDED_MD As String = "rounded-md"
	Public CONST ROUNDED_ROUNDED_SM As String = "rounded-sm"
	Public CONST ROUNDED_ROUNDED_XL As String = "rounded-xl"
	Public CONST SHADOW_2XL As String = "2xl"
	Public CONST SHADOW_INNER As String = "inner"
	Public CONST SHADOW_LG As String = "lg"
	Public CONST SHADOW_MD As String = "md"
	Public CONST SHADOW_NONE As String = "none"
	Public CONST SHADOW_SHADOW As String = "shadow"
	Public CONST SHADOW_SM As String = "sm"
	Public CONST SHADOW_XL As String = "xl"

	'Public Pages As Map
	'Public PageNames As Map
	Private treeSchema As List
	Public ImgHolder As String = "./assets/placeholderimg.jpg"
	Public SDLogo As String = "./assets/600by600.jpg"
	Private templates As Map
	Type profileType(id As String, name As String, verified As Boolean, email As String, token As String, avatar As String, UserName As String, size As Int)
	Public UserProfile As profileType
	Type FileObject(FileName As String, FileDate As String, FileSize As Long, FileType As String, Status As String, FullPath As String, FileDateOnly As String, FileOK As Boolean, FO As BANanoObject, Extension As String, webkitRelativePath As String)
	'
	'Private sApiKey As String = ""
	'Private sDatabaseType As String = "pocketbase"
	'Private sPassword As String = ""
	'Private sPort As String = ""
	'Private sUrl As String = "http://127.0.0.1:8090"
	'Private sUserName As String = ""
	'Public CONST DATABASETYPE_FIREBASE As String = "firebase"
	'Public CONST DATABASETYPE_MYSQLREST As String = "mysqlrest"
	'Public CONST DATABASETYPE_OTHER As String = "other"
	'Public CONST DATABASETYPE_POCKETBASE As String = "pocketbase"
	'Private sHostName As String = "localhost"
	'Public DatabaseType As String
	'Public DatabaseName As String
	'Public HostName As String
	'Public Password As String
	'Public UserName As String
	'Public EncryptTo As Boolean
	'Public EncryptFrom As Boolean
	'Public PasswordField As String
	'Public UseLowerCase As Boolean
	'Public Port As String
	'Public Salt As String
	'Public apiKey As String
	'Public authDomain As String
	'Public databaseURL As String
	'Public projectId As String
	'Public storageBucket As String
	'Public messagingSenderId As String
	'Public appId As String
	'Public measurementId As String
	'Public UseAnalytics As Boolean
	'Public UseAuth As Boolean
	'Public UseDatabase As Boolean
	'Public UseFireStore As Boolean
	'Public UsePerformance As Boolean
	'Public UseStorage As Boolean
	'Public UseMessaging As Boolean
	'Public TimeStampOnSnapShots As Boolean
	'Public EnablePersistence As Boolean
	'Public ShowLog As Boolean
	'Public UsesEncryption As Boolean
	Public themesx As Map
	Public DataModels As Map
	Private notify As BANanoObject
	
	Public Designs As Map
	Public AppToast As SDUI5MDToast
	Public DynamicEvents As Map
	Private templateViews As Map
	Private templateCounter As Map
	Private AllViews As Map
	Public ShowTabBarM As Map
	Public Tag As Object
	Private validations As Map
	Public MissingParents As Map
	
	'
	Public CONST MASK_CIRCLE As String = "circle"
	Public CONST MASK_DECAGON As String = "decagon"
	Public CONST MASK_DIAMOND As String = "diamond"
	Public CONST MASK_HEART As String = "heart"
	Public CONST MASK_HEXAGON As String = "hexagon"
	Public CONST MASK_HEXAGON_2 As String = "hexagon-2"
	Public CONST MASK_NONE As String = "none"
	Public CONST MASK_PENTAGON As String = "pentagon"
	Public CONST MASK_SQUARE As String = "square"
	Public CONST MASK_SQUIRCLE As String = "squircle"
	Public CONST MASK_STAR As String = "star"
	Public CONST MASK_STAR_2 As String = "star-2"
	Public CONST MASK_TRIANGLE As String = "triangle"
	Public CONST MASK_TRIANGLE_2 As String = "triangle-2"
	Public CONST MASK_TRIANGLE_3 As String = "triangle-3"
	Public CONST MASK_TRIANGLE_4 As String = "triangle-4"
	Public CONST ROUNDED_2XL As String = "2xl"
	Public CONST ROUNDED_3XL As String = "3xl"
	Public CONST ROUNDED_DEFAULT As String = "default"
	Public CONST ROUNDED_FULL As String = "full"
	Public CONST ROUNDED_LG As String = "lg"
	Public CONST ROUNDED_MD As String = "md"
	Public CONST ROUNDED_NONE As String = "none"
	Public CONST ROUNDED_ROUNDED As String = "rounded"
	Public CONST ROUNDED_SM As String = "sm"
	Public CONST ROUNDED_XL As String = "xl"
	'
	Public CONST ALIGNCONTENT_AROUND As String = "around"
	Public CONST ALIGNCONTENT_BASELINE As String = "baseline"
	Public CONST ALIGNCONTENT_BETWEEN As String = "between"
	Public CONST ALIGNCONTENT_CENTER As String = "center"
	Public CONST ALIGNCONTENT_END As String = "end"
	Public CONST ALIGNCONTENT_EVENLY As String = "evenly"
	Public CONST ALIGNCONTENT_NONE As String = "none"
	Public CONST ALIGNCONTENT_NORMAL As String = "normal"
	Public CONST ALIGNCONTENT_START As String = "start"
	Public CONST ALIGNCONTENT_STRETCH As String = "stretch"
	Public CONST ALIGNITEMS_BASELINE As String = "baseline"
	Public CONST ALIGNITEMS_CENTER As String = "center"
	Public CONST ALIGNITEMS_END As String = "end"
	Public CONST ALIGNITEMS_NONE As String = "none"
	Public CONST ALIGNITEMS_START As String = "start"
	Public CONST ALIGNITEMS_STRETCH As String = "stretch"
	Public CONST ALIGNSELF_AUTO As String = "auto"
	Public CONST ALIGNSELF_BASELINE As String = "baseline"
	Public CONST ALIGNSELF_CENTER As String = "center"
	Public CONST ALIGNSELF_END As String = "end"
	Public CONST ALIGNSELF_NONE As String = "none"
	Public CONST ALIGNSELF_START As String = "start"
	Public CONST ALIGNSELF_STRETCH As String = "stretch"
	Public CONST JUSTIFYCONTENT_AROUND As String = "around"
	Public CONST JUSTIFYCONTENT_BASELINE As String = "baseline"
	Public CONST JUSTIFYCONTENT_BETWEEN As String = "between"
	Public CONST JUSTIFYCONTENT_CENTER As String = "center"
	Public CONST JUSTIFYCONTENT_END As String = "end"
	Public CONST JUSTIFYCONTENT_EVENLY As String = "evenly"
	Public CONST JUSTIFYCONTENT_NONE As String = "none"
	Public CONST JUSTIFYCONTENT_NORMAL As String = "normal"
	Public CONST JUSTIFYCONTENT_START As String = "start"
	Public CONST JUSTIFYCONTENT_STRETCH As String = "stretch"
	Public CONST JUSTIFYITEMS_CENTER As String = "center"
	Public CONST JUSTIFYITEMS_END As String = "end"
	Public CONST JUSTIFYITEMS_NONE As String = "none"
	Public CONST JUSTIFYITEMS_NORMAL As String = "normal"
	Public CONST JUSTIFYITEMS_START As String = "start"
	Public CONST JUSTIFYITEMS_STRETCH As String = "stretch"
	Public CONST JUSTIFYSELF_AUTO As String = "auto"
	Public CONST JUSTIFYSELF_CENTER As String = "center"
	Public CONST JUSTIFYSELF_END As String = "end"
	Public CONST JUSTIFYSELF_NONE As String = "none"
	Public CONST JUSTIFYSELF_START As String = "start"
	Public CONST JUSTIFYSELF_STRETCH As String = "stretch"
	Public CONST PLACECONTENT_AROUND As String = "around"
	Public CONST PLACECONTENT_BASELINE As String = "baseline"
	Public CONST PLACECONTENT_BETWEEN As String = "between"
	Public CONST PLACECONTENT_CENTER As String = "center"
	Public CONST PLACECONTENT_END As String = "end"
	Public CONST PLACECONTENT_EVENLY As String = "evenly"
	Public CONST PLACECONTENT_NONE As String = "none"
	Public CONST PLACECONTENT_START As String = "start"
	Public CONST PLACECONTENT_STRETCH As String = "stretch"
	Public CONST PLACEITEMS_BASELINE As String = "baseline"
	Public CONST PLACEITEMS_CENTER As String = "center"
	Public CONST PLACEITEMS_END As String = "end"
	Public CONST PLACEITEMS_NONE As String = "none"
	Public CONST PLACEITEMS_START As String = "start"
	Public CONST PLACEITEMS_STRETCH As String = "stretch"
	Public CONST PLACESELF_AUTO As String = "auto"
	Public CONST PLACESELF_CENTER As String = "center"
	Public CONST PLACESELF_END As String = "end"
	Public CONST PLACESELF_NONE As String = "none"
	Public CONST PLACESELF_START As String = "start"
	Public CONST PLACESELF_STRETCH As String = "stretch"
	'
	Public CONST TEXTALIGN_CENTER As String = "center"
	Public CONST TEXTALIGN_END As String = "end"
	Public CONST TEXTALIGN_JUSTIFY As String = "justify"
	Public CONST TEXTALIGN_LEFT As String = "left"
	Public CONST TEXTALIGN_NONE As String = "none"
	Public CONST TEXTALIGN_RIGHT As String = "right"
	Public CONST TEXTALIGN_START As String = "start"
	
	Public CONST FLEX_1 As String = "1"
	Public CONST FLEX_AUTO As String = "auto"
	Public CONST FLEX_INITIAL As String = "initial"
	Public CONST FLEX_NONE As String = "none"
	Public CONST FLEXDIRECTION_COL As String = "col"
	Public CONST FLEXDIRECTION_COL_REVERSE As String = "col-reverse"
	Public CONST FLEXDIRECTION_NONE As String = "none"
	Public CONST FLEXDIRECTION_ROW As String = "row"
	Public CONST FLEXDIRECTION_ROW_REVERSE As String = "row-reverse"
	Public CONST FLEXGROW_0 As String = "0"
	Public CONST FLEXGROW_1 As String = "1"
	Public CONST FLEXGROW_NONE As String = "none"
	Public CONST FLEXSHRINK_0 As String = "0"
	Public CONST FLEXSHRINK_1 As String = "1"
	Public CONST FLEXSHRINK_NONE As String = "none"
	Public CONST FLEXWRAP_NONE As String = "none"
	Public CONST FLEXWRAP_NOWRAP As String = "nowrap"
	Public CONST FLEXWRAP_WRAP As String = "wrap"
	Public CONST FLEXWRAP_WRAP_REVERSE As String = "wrap-reverse"
	Public CONST GRIDFLOW_COL As String = "col"
	Public CONST GRIDFLOW_COL_DENSE As String = "col-dense"
	Public CONST GRIDFLOW_DENSE As String = "dense"
	Public CONST GRIDFLOW_NONE As String = "none"
	Public CONST GRIDFLOW_ROW As String = "row"
	Public CONST GRIDFLOW_ROW_DENSE As String = "row-dense"
End Sub

'<code>
'Banano.Await(app.UsesPocketBase)
'Banano.Await(app.UsesFlatPickDateTime)
'Banano.Await(app.UsesRollDate)
'Banano.Await(app.UsesExcel)
'Banano.Await(app.UsesPDF)
'Banano.Await(app.UsesEnjoyHint)
'</code>
Public Sub Initialize (mCallback As Object)
	UI.Initialize(Me)
	Process = ""
	mElement.Initialize($"#body"$)
	UI.AddClass(mElement, "relative min-h-screen h-screen w-screen m-0 p-0")
	UI.AddStyle(mElement, "text-rendering", "optimizeSpeed")
	mback = mCallback
	AddLoader
	Banano.Await(modSD5.InitColors)
	Themes.Initialize
	templates.Initialize
	templateViews.Initialize
	templateCounter.Initialize
	AllViews.Initialize
	Designs.Initialize
	DynamicEvents.Initialize
'	UI.InitLanguages
'	UI.InitCountries
	UserProfile.Initialize
	Banano.Await(modSD5.InitMonths)
	Banano.Await(modSD5.InitDays)
	Dim e As BANanoEvent
	Dim ch As BANanoObject = Banano.CallBack(Me, "handleConnectionChange", Array(e))
	Banano.window.AddEventListener("online", ch, True)
	Banano.window.addEventListener("offline", ch, True)
	'
	If SubExists(mCallback, "DarkTheme") Then
		Dim cbTheme As Object = Banano.CallBack(mCallback, "DarkTheme", Null)
		Dim matchMedia As BANanoObject = Banano.Window.RunMethod("matchMedia", "(prefers-color-scheme: dark)")
		matchMedia.AddEventListener("change", cbTheme, True)		'ignore
	End If
	'
	AppToast.Initialize(mCallback, "apptoast", "apptoast")
	AppToast.ParentID = "body"
	AppToast.Duration = ToastDuration
	AppToast.Position = ToastPosition
	AppToast.AddComponent
End Sub

'get own unique key with 15 chars alphabets only
'this is a controlled id
Sub NextID As String
	Dim ni As String = guidAlphaApp(15)
	Return ni
End Sub

private Sub guidAlphaApp(glen As Int) As String
	glen = Banano.parseInt(glen) - 1
	Dim s As String = Banano.RunJavascriptMethod("generateUniqueId", Array(glen))
	s = s.ToLowerCase
	Return s
End Sub

Sub SetTheme(s As String)
	Dim html As BANanoElement = Banano.GetElement("html")
	html.SetData("theme", s)
End Sub

'
'Sub SetRTL(b As Boolean)
'	Select Case b
'	Case True
'		Banano.GetElement("html").SetAttr("dir","rtl")
'	Case False
'		Banano.GetElement("html").SetAttr("dir", "ltr")
'	End Select
'End Sub

''shows the chosen page
'Sub ShowPage(pgName As String) As Boolean
'	Dim prefix As String = UI.mvfield(pgName, 1, "_")
'	If prefix = "page" Then
'		Dim pgNameX As String = UI.mvfield(pgName, 2, "_")
'		If Pages.ContainsKey(pgNameX) = False Then Return False
'		Dim mCallBack As BANanoObject = Pages.Get(pgNameX)
'		mCallBack.RunMethod("show", Me)
'		Return True
'	Else
'		Return False
'	End If
'End Sub

''shows the chosen page by name
'Sub ShowPageByName(pgName As String) As Boolean
'	pgName = UI.CleanID(pgName)
'	If Pages.ContainsKey(pgName) = False Then Return False
'	Dim mCallBack As BANanoObject = Pages.Get(pgName)
'	mCallBack.RunMethod("show", Me)
'	Return True
'End Sub

''shows the chosen page
'Sub ShowServerPage(pgName As String) As Boolean
'	Dim prefix As String = UI.mvfield(pgName, 1, "_")
'	If prefix = "page" Then
'		Dim pgNameX As String = UI.mvfield(pgName, 2, "_")
'		If Pages.ContainsKey(pgNameX) = False Then Return False
'		Dim mCallBack As BANanoObject = Pages.Get(pgNameX)
'		mCallBack.RunMethod("show", Null)
'		Return True
'	Else
'		Return False
'	End If
'End Sub
'
''shows the chosen page
'Sub ShowServerPage1(PageModule As Object)
'	Dim pgX As BANanoObject = PageModule
'	Dim pgName As String = pgX.RunMethod("getname", Null).Result
'	pgName = UI.CStr(pgName)
'	If pgName = "" Then Return
'	If Pages.ContainsKey(pgName) = False Then Return
'	pgX.RunMethod("show", Null)
'End Sub

'
''shows the chosen page by passing the module object
'Sub ShowPage1(PageModule As Object)
'	Dim pgX As BANanoObject = PageModule
'	Dim pgName As String = pgX.RunMethod("getname", Null).Result
'	pgName = UI.CStr(pgName)
'	If pgName = "" Then Return
'	If Pages.ContainsKey(pgName) = False Then Return
'	pgX.RunMethod("show", Me)
'End Sub
'
'Sub setPageViewFullWidth(b As Boolean)
'	bPageViewFullWidth = b
'	CustProps.put("PageViewFullWidth", b)
'	If Banano.Exists($"#pageview"$) Then
'		If b Then
'			Banano.GetElement($"#pageview"$).RemoveClass("w-screen")
'			Banano.GetElement($"#pageview"$).AddClass("w-full")
'		Else
'			Banano.GetElement($"#pageview"$).RemoveClass("w-screen")
'			Banano.GetElement($"#pageview"$).RemoveClass("w-full")
'		End If
'	End If
'End Sub

'Sub setPageViewFullHeight(b As Boolean)
'	bPageViewFullHeight = b
'	bPageViewFullHeight = b
'	CustProps.put("PageViewFullHeight", b)
'	If Banano.Exists($"#pageview"$) Then
'		If b Then
'			Banano.GetElement($"#pageview"$).RemoveClass("h-screen")
'			Banano.GetElement($"#pageview"$).AddClass("h-full")
'		Else
'			Banano.GetElement($"#pageview"$).RemoveClass("h-screen")
'			Banano.GetElement($"#pageview"$).RemoveClass("h-full")
'		End If
'	End If
'End Sub
'
''add a page for the app collection
'Sub AddPage(mCallBack As BANanoObject)
'	Dim pgName As String = mCallBack.RunMethod("getname", Null).Result
'	Dim pgTitle As String = mCallBack.RunMethod("gettitle", Null).Result
'	pgName = UI.CStr(pgName)
'	If pgName = "" Then Return
'	If Pages.ContainsKey(pgName) Then Return
'	Pages.Put(pgName, mCallBack)
'	PageNames.Put(pgName, pgTitle)
'End Sub
'
'Sub AddPageByName(pgName As String, pgTitle As String)
'	If pgName = "" Then Return
'	If Pages.ContainsKey(pgName) Then Return
'	Pages.Put(pgName, pgTitle)
'End Sub
'
''** IMPORTANT, will be used to show all pages
'Sub AddPageView
'	'PageView.CreateDiv(mback, "body", "pageview")
'	PageView.Initialize(mback, "pageview", "pageview")
'	PageView.CreateCustomTag(mback, "body", "pageview", "div")
'	If bPageViewFullHeight Then PageView.hFull
'	If bPageViewFullWidth Then PageView.wfull
'End Sub

'download a text file
Sub DownloadTextFile(content As String, fileName As String)
	'load the file when it needs to be used
	content = content.Replace("~","$")
	Dim fc As List
	fc.Initialize
	fc.Add(content)
	Dim blob As BANanoObject
	blob.Initialize2("Blob",Array(fc, CreateMap("type": "text/plain;charset=utf-8")))
	Banano.RunJavascriptMethod("saveAs",Array(blob,fileName))
End Sub

'code debugging
Sub StartEruda
	Dim Eruda As BANanoObject
	Eruda.Initialize("eruda")
	Eruda.RunMethod("init", Null)
End Sub

Sub UsesDevice
	Banano.Await(LoadAssetsOnDemand("Devices", Array("devices.min.css","html-to-image.js")))
End Sub

Sub UsesEruda
	Banano.Await(LoadAssetsOnDemand("Eruda", Array("eruda.js")))
End Sub

''creates a pageview directly on the body
''if you have a drawer dont use this call
'Sub UsesPageView
'	If Banano.Exists($"#pageview"$) Then
'		'PageView.CreateDiv(mback, "body", "pageview")
'		PageView.CreateCustomTag(mback, "body", "pageview", "div")
'	End If
'End Sub
'
''remove all pages in the app
'Sub ClearPageView
'	PageView.Clear
'End Sub
'
''font-mono, font-sans, font-serif
'Sub setFont(f As String)
'	Container.AddClass(f)
'End Sub

Sub ShowToast(msg As String)
	AppToast.Duration = ToastDuration
	AppToast.ShowInfo(msg)
End Sub

Sub ShowToastSuccess(msg As String)
	AppToast.Duration = ToastDuration
	AppToast.ShowSuccess(msg)
End Sub

Sub ShowToastError(msg As String)
	AppToast.Duration = ToastDuration
	AppToast.ShowError(msg)
End Sub

Sub ShowToastWarning(msg As String)
	AppToast.Duration = ToastDuration
	AppToast.ShowWarning(msg)
End Sub

Sub ShowToastInfo(msg As String)
	AppToast.Duration = ToastDuration
	AppToast.ShowInfo(msg)
End Sub

'return if the browser is in dark mode
Sub IsDarkMode As Boolean
	Dim matchMedia As BANanoObject = Banano.Window.RunMethod("matchMedia", "(prefers-color-scheme: dark)")
	Dim res As Boolean = matchMedia.GetField("matches").result
	res = UI.CBool(res)
	Return res
End Sub

Private Sub handleConnectionChange(e As BANanoEvent)        'ignoreDeadCode
	Dim status As String = e.Type
	Dim bOn As Boolean
	Select Case status
		Case "online"
			bOn = True
		Case "offline"
			bOn = False
	End Select
	If SubExists(mback, "ConnectionChange") Then
		Banano.CallSub(mback, "ConnectionChange", Array(bOn))		'ignore
	End If
End Sub


Sub AddLoader
	If Banano.Exists($"#loader-1"$) = False Then
		Dim loader As BANanoElement = mElement.Append($"<div id="loader-1"><div id="loader"></div></div>"$).Get("#loader-1")
		Dim mStyle As Map = CreateMap()
		mStyle.Put("top", "0px")
		mStyle.Put("display", "block")
		mStyle.Put("position", "fixed")
		mStyle.Put("width", "100%")
		mStyle.Put("height", "100%")
		mStyle.Put("z-index", 999999)
		loader.SetStyle(Banano.ToJson(mStyle))
	End If
End Sub

''<code>
''Dim DateTimeOptions As RollDateOptions = app.InitRollDateTime
''DateTimeOptions.DateTimeFormat = "YYYY-MM-DD"
''DateTimeOptions.beginYear = "1900"
''DateTimeOptions.endYear = "2100"
''DateTimeOptions.value = ""
''DateTimeOptions.Title = "Select Date"
''DateTimeOptions.Cancel = "Cancel"
''DateTimeOptions.Confirm = "Confirm"
''DateTimeOptions.YearIs = ""
''DateTimeOptions.MonthIs = ""
''DateTimeOptions.DayIs = ""
''DateTimeOptions.HourIs = ""
''DateTimeOptions.SecondIs = ""
''DateTimeOptions.MinuteIs = ""
''DateTimeOptions.MinStep = 1
''</code>	
'Sub InitRollDateTime As RollDateOptions
'	Dim DateTimeOptions As RollDateOptions
'	DateTimeOptions.Initialize
'	DateTimeOptions.DateTimeFormat = sDateTimeFormat
'	DateTimeOptions.beginYear = iBeginYear
'	DateTimeOptions.endYear = iEndYear
'	DateTimeOptions.value = ""
'	DateTimeOptions.Title = "Select Date"
'	DateTimeOptions.Cancel = "Cancel"
'	DateTimeOptions.Confirm = "Confirm"
'	DateTimeOptions.YearIs = ""
'	DateTimeOptions.MonthIs = ""
'	DateTimeOptions.DayIs = ""
'	DateTimeOptions.HourIs = ""
'	DateTimeOptions.SecondIs = ""
'	DateTimeOptions.MinuteIs = ""
'	DateTimeOptions.MinStep = 1
'	Return DateTimeOptions
'End Sub

'add a theme with classes
Sub AddTheme(themeName As String, classes As List)
	Dim themerec As Map
	Dim oldclasses As List
	If Themes.ContainsKey(themeName) Then
		themerec = Themes.Get(themeName)
		oldclasses = themerec.Get("classes")
	Else
		themerec.Initialize
		oldclasses.Initialize
	End If
	For Each c As String In classes
		If oldclasses.IndexOf(c) = -1 Then oldclasses.Add(c)
	Next
	themerec.Put("classes", oldclasses)
	Themes.Put(themeName, themerec)
End Sub

'apply theme to these elements
Sub ApplyTheme(themeName As String, items As List)
	Dim themerec As Map
	Dim oldclasses As List
	If Themes.ContainsKey(themeName) Then
		themerec = Themes.Get(themeName)
		oldclasses = themerec.Get("classes")
		Dim sclasses As String = UI.Join(" ", oldclasses)
		For Each item As String In items
			Dim ikey As String = $"#${item}"$
			Banano.GetElement(ikey).AddClass(sclasses)
		Next
	End If
End Sub

Sub getName As String
	Return "body"
End Sub

'get the id of the component
Sub getHere As String
	Return $"#body"$
End Sub
'
''return the cell id
'Sub CellID(xRow As Int, xCol As Int) As String
'	Dim res As String = Container.CellID(xRow, xCol)
'	Return res
'End Sub
'
'Sub Row(xRow As Int) As SDUIDiv
'	Dim res As SDUIDiv = Container.Row(xRow)
'	Return res
'End Sub
'
'Sub Cell(xRow As Int, xCol As Int) As SDUIDiv
'	Dim res As SDUIDiv = Container.Cell(xRow, xCol)
'	Return res
'End Sub

'Sub setBackgroundImage(url As String)
'	sBackgroundImage = url
'	CustProps.Put("BackgroundImage", url)
'	If url = "" Then Return
'	Container.BackgroundImage(url)
'End Sub

'Sub BuildGrid
'	Container.BuildGrid
'End Sub

'
'
'Sub HideDrawer
'	Banano.GetElement($"#${sDrawerName}"$).AddClass("hidden")
'End Sub
'
'Sub ShowDrawer
'	Banano.GetElement($"#${sDrawerName}"$).RemoveClass("hidden")
'End Sub
'
'Sub HideBottomNav
'	Banano.GetElement($"#${sBottomNavName}"$).AddClass("hidden")
'End Sub
'
'Sub ShowBottomNav
'	Banano.GetElement($"#${sBottomNavName}"$).RemoveClass("hidden")
'End Sub
'
'Sub HideFooter
'	Banano.GetElement($"#${sFooterName}"$).AddClass("hidden")
'End Sub
'
'Sub ShowFooter
'	Banano.GetElement($"#${sFooterName}"$).RemoveClass("hidden")
'End Sub
'
'Sub HideTopNav
'	Banano.GetElement($"#${sNavbarName}"$).AddClass("hidden")
'End Sub
'
'Sub ShowTopNav
'	Banano.GetElement($"#${sNavbarName}"$).RemoveClass("hidden")
'End Sub

Sub ShowSwal(s As String)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(s)
	swal.fire
End Sub

Sub ShowSwalError(message As String)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("error")
	swal.fire
End Sub

Sub ShowSwalSuccess(message As String)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("success")
	swal.fire
End Sub

Sub ShowSwalInfo(message As String)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("info")
	swal.fire
End Sub

Sub ShowSwalWarning(message As String)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("warning")
	swal.fire
End Sub

Sub ShowSwalSuccessToast(message As String, time As Int)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("success")
	swal.position(SwalPosition)
	swal.showConfirmButton(False)
	swal.timer(time)
	swal.toast(True)
	swal.timerProgressBar(True)
	swal.fire
End Sub

Sub ShowSwalErrorToast(message As String, time As Int)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("error")
	swal.position(SwalPosition)
	swal.showConfirmButton(False)
	swal.timer(time)
	swal.toast(True)
	swal.timerProgressBar(True)
	swal.fire
End Sub

Sub ShowSwalWarningToast(message As String, time As Int)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("warning")
	swal.position(SwalPosition)
	swal.showConfirmButton(False)
	swal.timer(time)
	swal.toast(True)
	swal.timerProgressBar(True)
	swal.fire
End Sub

Sub ShowSwalInfoToast(message As String, time As Int)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("info")
	swal.position(SwalPosition)
	swal.showConfirmButton(False)
	swal.timer(time)
	swal.toast(True)
	swal.timerProgressBar(True)
	swal.fire
End Sub

Sub ShowSwalSuccessNotification(message As String, time As Int)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("success")
	swal.position(SwalPosition)
	swal.showConfirmButton(False)
	swal.timer(time)
	swal.fire
End Sub

Sub ShowSwalErrorNotification(message As String, time As Int)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("error")
	swal.position(SwalPosition)
	swal.showConfirmButton(False)
	swal.timer(time)
	swal.fire
End Sub
Sub ShowSwalInfoNotification(message As String, time As Int)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("info")
	swal.position(SwalPosition)
	swal.showConfirmButton(False)
	swal.timer(time)
	swal.fire
End Sub
Sub ShowSwalWarningNotification(message As String, time As Int)
	Dim swal As SDUI5Swal
	swal.Initialize
	swal.title(message)
	swal.icon("warning")
	swal.position(SwalPosition)
	swal.showConfirmButton(False)
	swal.timer(time)
	swal.fire
End Sub
Sub ShowSwalInputWait(title As String, message As String, okText As String, cancelText As String) As String
	Dim bp As BANanoPromise
	bp.CallSub(Me, "ShowSwalInput", Array(title, message, okText, cancelText, ""))
	Dim resp As Map = Banano.Await(bp)
	Dim isConfirmed As Boolean = resp.Get("isConfirmed")
	If isConfirmed = False Then
		Return ""
	Else
		Dim value As String = resp.Get("value")
		Return value
	End If
End Sub

Sub ShowSwalInputWaitDefault(title As String, message As String, defaultText As String, okText As String, cancelText As String) As String
	Dim bp As BANanoPromise
	bp.CallSub(Me, "ShowSwalInput", Array(title, message, okText, cancelText, defaultText))
	Dim resp As Map = Banano.Await(bp)
	Dim isConfirmed As Boolean = resp.Get("isConfirmed")
	If isConfirmed = False Then
		Return ""
	Else
		Dim value As String = resp.Get("value")
		Return value
	End If
End Sub

Sub ShowSwalTextAreaWaitDefault(title As String, message As String, defaultText As String, okText As String, cancelText As String) As String
	Dim bp As BANanoPromise
	bp.CallSub(Me, "ShowSwalTextArea", Array(title, message, okText, cancelText, defaultText))
	Dim resp As Map = Banano.Await(bp)
	Dim isConfirmed As Boolean = resp.Get("isConfirmed")
	If isConfirmed = False Then
		Return ""
	Else
		Dim value As String = resp.Get("value")
		Return value
	End If
End Sub

Sub ShowSwalConfirmWait(title As String, message As String, okText As String, cancelText As String) As Boolean
	Dim bp As BANanoPromise
	bp.CallSub(Me, "ShowSwalConfirm", Array(title, message, okText, cancelText))
	Dim resp As Map = Banano.Await(bp)
	Dim isConfirmed As Boolean = resp.Get("isConfirmed")
	Return isConfirmed
End Sub
Sub ShowSwalAlertWait(title As String, message As String, okText As String) As Boolean
	Dim bp As BANanoPromise
	bp.CallSub(Me, "ShowSwalAlert", Array(title, message, okText))
	Dim resp As Map = Banano.Await(bp)
	Dim isConfirmed As Boolean = resp.Get("isConfirmed")
	Return isConfirmed
End Sub
Sub ShowSwalSuccessWait(title As String, message As String, okText As String) As Boolean
	Dim bp As BANanoPromise
	bp.CallSub(Me, "ShowSwalSuccess1", Array(title, message, okText))
	Dim resp As Map = Banano.Await(bp)
	Dim isConfirmed As Boolean = resp.Get("isConfirmed")
	Return isConfirmed
End Sub
Sub ShowSwalErrorWait(title As String, message As String, okText As String) As Boolean
	Dim bp As BANanoPromise
	bp.CallSub(Me, "ShowSwalError1", Array(title, message, okText))
	Dim resp As Map = Banano.Await(bp)
	Dim isConfirmed As Boolean = resp.Get("isConfirmed")
	Return isConfirmed
End Sub
Sub ShowSwalWarningWait(title As String, message As String, okText As String) As Boolean
	Dim bp As BANanoPromise
	bp.CallSub(Me, "ShowSwalWarning1", Array(title, message, okText))
	Dim resp As Map = Banano.Await(bp)
	Dim isConfirmed As Boolean = resp.Get("isConfirmed")
	Return isConfirmed
End Sub
private Sub ShowSwalAlert(title As String, message As String, okText As String) As Map  'ignore
	Dim swal As SDUI5Swal
	swal.Initialize
	If title <> "" Then
		swal.title(title)
	End If
	If message <> "" Then
		swal.html(message)
	End If
	swal.icon("info")
	swal.confirmButtonText(okText)
	swal.showCancelButton(False)
	swal.confirmButtonColor("#4caf50")
	swal.allowOutsideClick(False)
	swal.showCloseButton(False)
	swal.focusConfirm(True)
	swal.showDenyButton(False)
	swal.allowEscapeKey(False)
	Dim resp As Map = swal.fire
	Banano.ReturnThen(resp)
End Sub
private Sub ShowSwalSuccess1(title As String, message As String, okText As String) As Map  'ignore
	Dim swal As SDUI5Swal
	swal.Initialize
	If title <> "" Then
		swal.title(title)
	End If
	If message <> "" Then
		swal.html(message)
	End If
	swal.icon("success")
	swal.confirmButtonText(okText)
	swal.showCancelButton(False)
	swal.confirmButtonColor("#4caf50")
	swal.allowOutsideClick(False)
	swal.showCloseButton(False)
	swal.focusConfirm(True)
	swal.showDenyButton(False)
	swal.allowEscapeKey(False)
	Dim resp As Map = swal.fire
	Banano.ReturnThen(resp)
End Sub
private Sub ShowSwalError1(title As String, message As String, okText As String) As Map  'ignore
	Dim swal As SDUI5Swal
	swal.Initialize
	If title <> "" Then
		swal.title(title)
	End If
	If message <> "" Then
		swal.html(message)
	End If
	swal.icon("error")
	swal.confirmButtonText(okText)
	swal.showCancelButton(False)
	swal.confirmButtonColor("#4caf50")
	swal.allowOutsideClick(False)
	swal.showCloseButton(False)
	swal.focusConfirm(True)
	swal.showDenyButton(False)
	swal.allowEscapeKey(False)
	Dim resp As Map = swal.fire
	Banano.ReturnThen(resp)
End Sub
private Sub ShowSwalWarning1(title As String, message As String, okText As String) As Map  'ignore
	Dim swal As SDUI5Swal
	swal.Initialize
	If title <> "" Then
		swal.title(title)
	End If
	If message <> "" Then
		swal.html(message)
	End If
	swal.icon("warning")
	swal.confirmButtonText(okText)
	swal.showCancelButton(False)
	swal.confirmButtonColor("#4caf50")
	swal.allowOutsideClick(False)
	swal.showCloseButton(False)
	swal.focusConfirm(True)
	swal.showDenyButton(False)
	swal.allowEscapeKey(False)
	Dim resp As Map = swal.fire
	Banano.ReturnThen(resp)
End Sub
private Sub ShowSwalConfirm(title As String, message As String, okText As String, cancelText As String) As Map  'ignore
	Dim swal As SDUI5Swal
	swal.Initialize
	If title <> "" Then
		swal.title(title)
	End If
	If message <> "" Then
		swal.html(message)
	End If
	swal.icon("question")
	If okText = "Ok" Then
		swal.iconHtml("?")
	End If
	swal.confirmButtonText(okText)
	swal.cancelButtonText(cancelText)
	swal.showCancelButton(True)
	swal.confirmButtonColor("#4caf50")
	swal.cancelButtonColor("#f44336")
	swal.allowOutsideClick(False)
	swal.showCloseButton(False)
	swal.focusConfirm(True)
	swal.showDenyButton(False)
	swal.allowEscapeKey(False)
	Dim resp As Map = swal.fire
	Banano.ReturnThen(resp)
End Sub

private Sub ShowSwalTextArea(title As String, message As String, okText As String, cancelText As String, inputValue As String) As Map   'ignore
	Dim swal As SDUI5Swal
	swal.Initialize
	If title <> "" Then
		swal.title(title)
	End If
	swal.input("textarea")
	If message <> "" Then
		swal.html(message)
	End If
	swal.icon("question")
	swal.confirmButtonText(okText)
	swal.cancelButtonText(cancelText)
	swal.showCancelButton(True)
	swal.confirmButtonColor("#4caf50")
	swal.cancelButtonColor("#f44336")
	swal.allowOutsideClick(False)
	swal.showCloseButton(False)
	swal.focusConfirm(True)
	swal.showDenyButton(False)
	swal.allowEscapeKey(False)
	swal.inputValue(inputValue)
	Dim resp As Map = swal.fire
	Banano.ReturnThen(resp)
End Sub

private Sub ShowSwalInput(title As String, message As String, okText As String, cancelText As String, inputValue As String) As Map   'ignore
	Dim swal As SDUI5Swal
	swal.Initialize
	If title <> "" Then
		swal.title(title)
	End If
	swal.input("text")
	If message <> "" Then
		swal.html(message)
	End If
	swal.icon("question")
	swal.confirmButtonText(okText)
	swal.cancelButtonText(cancelText)
	swal.showCancelButton(True)
	swal.confirmButtonColor("#4caf50")
	swal.cancelButtonColor("#f44336")
	swal.allowOutsideClick(False)
	swal.showCloseButton(False)
	swal.focusConfirm(True)
	swal.showDenyButton(False)
	swal.allowEscapeKey(False)
	swal.inputValue(inputValue)
	Dim resp As Map = swal.fire
	Banano.ReturnThen(resp)
End Sub

'parse HTML to json
Sub parseHTML(sinput As String) As List
	treeSchema.Initialize
	Dim res As Map = Banano.RunJavascriptMethod("htmlParser", Array(sinput))
	ParseTree(res)
	Return treeSchema
End Sub

Sub ParseTree(Rootx As Map)
	'does this contains children
	If Rootx.ContainsKey("children") Then
		Dim rootID As String = UI.GetRecursive(Rootx, "attributes.id")
		rootID = UI.CStr(rootID)
		rootID = rootID.trim
		If rootID = "" Then
			rootID = guidAlphaApp(15)
			UI.PutRecursive(Rootx, "attributes.id", rootID)
		End If
		'get the children
		Dim children As List = Rootx.Get("children")
		Dim childTot As Int = children.Size - 1
		Dim childCnt As Int
		'loop through each child
		For childCnt = 0 To childTot
			Dim child As Map = children.Get(childCnt)
			Dim childID As String = UI.GetRecursive(child, "attributes.id")
			childID = UI.CStr(childID)
			childID = childID.trim
			If childID = "" Then
				childID = guidAlphaApp(15)
				UI.PutRecursive(child, "attributes.id", childID)
			End If
			child.Put("treePosition", childCnt)
			'get the parent id
			Dim parentID As String = UI.GetRecursive(Rootx, "attributes.id")
			parentID = UI.CStr(parentID)
			'create a new record
			Dim nitem As Map = CreateMap()
			nitem.Put("parent", parentID)
			'
			For Each k As String In child.Keys
				Select Case k
					Case "attributes"
						'get the attributes
						Dim attrs As Map = child.get("attributes")
						For Each attr As String In attrs.Keys
							Dim attrv As String = attrs.Get(attr)
							nitem.Put(attr, attrv)
						Next
					Case "children"
					Case Else
						Dim v As Object = child.Get(k)
						nitem.Put(k, v)
				End Select
			Next
			'only add items with html tags
			treeSchema.Add(nitem)
			If child.ContainsKey("children") Then
				ParseTree(child)
			End If
		Next
	End If
End Sub

Sub PlaceholderImage As String
	Return "./assets/placeholderimg.jpg"
End Sub

'get an id from the event
Sub GetIDFromEvent(e As BANanoEvent) As String
	Dim src As String = e.OtherField("srcElement").GetField("id").Result
	Return src
End Sub

'get the text of an element
Sub GetIDText(id As String) As String
	id = UI.CleanID(id)
	If Banano.Exists($"#${id}"$) Then
		Dim res As String = Banano.GetElement($"#${id}"$).GetText
		Return res
	Else
		Return ""
	End If
End Sub

'execute a fuzzy seach on a list
Sub FuzzySearch(lst As List, searchFor As String) As List
	Dim fs As BANanoObject
	fs.Initialize2("Fuse", lst)
	Dim opt As Map = CreateMap()
	opt.Put("useExtendedSearch", True)
	Dim result As List = fs.RunMethod("search", Array(searchFor, opt))
	Return result
End Sub

Sub LZCompressString(source As String) As Object
	Dim LZString As BANanoObject
	LZString.Initialize("LZString")
	Dim compressed As String = LZString.RunMethod("compress", source).result
	Return compressed
End Sub

Sub LZDeCompressString(source As String) As Object
	Dim LZString As BANanoObject
	LZString.Initialize("LZString")
	Dim str As String = LZString.RunMethod("decompress", source).result
	Return str
End Sub

'if seconds multiply by 1000
'this fires the function when the time expires
Sub SetTimeOut(Module As Object, MethodName As String, delay As Int, args As List) As Int		'ignore
	'define the callback
	Dim e As BANanoEvent
	Dim cb As BANanoObject = Banano.callback(Module, MethodName, Array(e))
	Dim res As Int = Banano.Window.SetTimeout(cb, delay)
	Return res
End Sub

Sub ClearTimeOut(i As Int)
	Banano.Window.ClearTimeout(i)
End Sub

Sub ClearInterval(i As Int)
	Banano.Window.ClearTimeout(i)
End Sub

'if seconds multiply by 1000
'this fires multiple number of times
Sub SetInterval(Module As Object, MethodName As String, seconds As Int, args As List) As Int		'ignore
	Dim e As BANanoEvent
	Dim cb As BANanoObject = Banano.CallBack(Module, MethodName, Array(e))
	Dim res As Int = Banano.Window.SetInterval(cb, seconds)
	Return res
End Sub



'show the browser notification
Sub ShowBrowserNotification(Title As String, Desc As String, Url As String, Icon As String, Image As String, Vibrate As Boolean, Seconds As Int)		'ignoreDeadCode
	'get the notification oject
	Dim notif As BANanoObject = Banano.Window.GetField("Notification")
	'check the permission
	Dim permission As String = notif.GetField("permission").Result
	If permission <> "granted" Then
		'requestPermission
		Dim resp As String = Banano.Await(notif.RunMethod("requestPermission", Null))
		If resp <> "granted" Then Return
	End If
	Dim Options As Map = CreateMap()
	If Icon <> "" Then
		Options.Put("icon", Icon)
		Options.Put("badge", Icon)
	End If
	If Desc <> "" Then Options.Put("body", Desc)
	If Image <> "" Then Options.Put("image", Image)
	If Url <> "" Then Options.Put("data", Url)
	Options.Put("vibrate", Vibrate)
	'
	notify.Initialize2("Notification", Array(Title, Options))
	notify.SetField("url", Url)
	Dim showEvent As String = "notification_show"
	Dim closeEvent As String = "notification_close"
	Dim errorEvent As String = "notification_error"
	Dim clickEvent As String = "notification_click"
	'
	If SubExists(mback, showEvent) Then
		Dim cbShow As BANanoObject = Banano.CallBack(mback, showEvent, Null)
		notify.SetField("onshow", cbShow)
	End If
	If SubExists(mback, clickEvent) Then
		Dim cbClick As BANanoObject = Banano.CallBack(Me, "HandleNotification", Null)
		notify.SetField("onclick", cbClick)
	End If
	If SubExists(mback, errorEvent) Then
		Dim cbError As BANanoObject = Banano.CallBack(mback, errorEvent, Null)
		notify.SetField("onerror", cbError)
	End If
	If SubExists(mback, closeEvent) Then
		Dim cbClose As BANanoObject = Banano.CallBack(mback, closeEvent, Null)
		notify.SetField("onclose", cbClose)
	End If
	'close after
	Seconds = Banano.parseInt(Seconds)
	If Seconds > 0 Then
		Dim cbClose As BANanoObject = Banano.callback(Me, "CloseNotification", Null)
		Dim Sec As Int = Seconds * 1000
		Banano.Window.SetTimeout(cbClose, Sec)
	End If
End Sub

private Sub HandleNotification (e As BANanoEvent)		'ignoreDeadCode
	e.PreventDefault
	Dim url As String = notify.GetField("url").Result
	Banano.CallSub(mback, "notification_click", Array(url))			'ignore
End Sub

'
private Sub CloseNotification		'ignoreDeadCode
	notify.RunMethod("close", Null)
End Sub

'add a data-model to be referenced by the data source
'the auto increment field will be added as integer
Sub AddDataModel(TableName As String, PrimaryKey As String, AutoIncrement As Boolean)
	Dim tm As Map = CreateMap()
	Dim flds As List
	flds.Initialize
	tm.Put("name", TableName)
	tm.Put("pk", PrimaryKey)
	tm.Put("fields", flds)
	If AutoIncrement Then
		tm.Put("ai", PrimaryKey)
	Else
		tm.Put("ai", "")
	End If
	DataModels.Put(TableName, tm)
	If AutoIncrement Then
		AddDataModelIntegers(TableName, Array(PrimaryKey))
	End If
End Sub

'add strings to the data-model
Sub AddDataModelStrings(TableName As String, FieldNames As List)
	If DataModels.ContainsKey(TableName) Then
		Dim tm As Map = DataModels.Get(TableName)
		For Each fld As String In FieldNames
			Dim fm As Map = CreateMap()
			fm.Put("name", fld)
			fm.Put("type", "TEXT")
			tm.Get("fields").As(List).Add(fm)
		Next
		DataModels.Put(TableName, tm)
	End If
End Sub

Sub AddDataModelLongTexts(TableName As String, FieldNames As List)
	If DataModels.ContainsKey(TableName) Then
		Dim tm As Map = DataModels.Get(TableName)
		For Each fld As String In FieldNames
			Dim fm As Map = CreateMap()
			fm.Put("name", fld)
			fm.Put("type", "LONGTEXT")
			tm.Get("fields").As(List).Add(fm)
		Next
		DataModels.Put(TableName, tm)
	End If
End Sub

'add integers to the data model
Sub AddDataModelIntegers(TableName As String, FieldNames As List)
	If DataModels.ContainsKey(TableName) Then
		Dim tm As Map = DataModels.Get(TableName)
		For Each fld As String In FieldNames
			Dim fm As Map = CreateMap()
			fm.Put("name", fld)
			fm.Put("type", "INT")
			tm.Get("fields").As(List).Add(fm)
		Next
		DataModels.Put(TableName, tm)
	End If
End Sub

'add doubles to the data-model
Sub AddDataModelDoubles(TableName As String, FieldNames As List)
	If DataModels.ContainsKey(TableName) Then
		Dim tm As Map = DataModels.Get(TableName)
		For Each fld As String In FieldNames
			Dim fm As Map = CreateMap()
			fm.Put("name", fld)
			fm.Put("type", "DOUBLE")
			tm.Get("fields").As(List).Add(fm)
		Next
		DataModels.Put(TableName, tm)
	End If
End Sub

'add blobs to the data model
Sub AddDataModelBlobs(TableName As String, FieldNames As List)
	If DataModels.ContainsKey(TableName) Then
		Dim tm As Map = DataModels.Get(TableName)
		For Each fld As String In FieldNames
			Dim fm As Map = CreateMap()
			fm.Put("name", fld)
			fm.Put("type", "BLOB")
			tm.Get("fields").As(List).Add(fm)
		Next
		DataModels.Put(TableName, tm)
	End If
End Sub

'add booleans To the data model
Sub AddDataModelBooleans(TableName As String, FieldNames As List)
	If DataModels.ContainsKey(TableName) Then
		Dim tm As Map = DataModels.Get(TableName)
		For Each fld As String In FieldNames
			Dim fm As Map = CreateMap()
			fm.Put("name", fld)
			fm.Put("type", "BOOL")
			tm.Get("fields").As(List).Add(fm)
		Next
		DataModels.Put(TableName, tm)
	End If
End Sub

Sub AddDataModelFiles(TableName As String, FieldNames As List)
	If DataModels.ContainsKey(TableName) Then
		Dim tm As Map = DataModels.Get(TableName)
		For Each fld As String In FieldNames
			Dim fm As Map = CreateMap()
			fm.Put("name", fld)
			fm.Put("type", "FILE")
			tm.Get("fields").As(List).Add(fm)
		Next
		DataModels.Put(TableName, tm)
	End If
End Sub

Sub AddDataModelDates(TableName As String, FieldNames As List)
	If DataModels.ContainsKey(TableName) Then
		Dim tm As Map = DataModels.Get(TableName)
		For Each fld As String In FieldNames
			Dim fm As Map = CreateMap()
			fm.Put("name", fld)
			fm.Put("type", "DATE")
			tm.Get("fields").As(List).Add(fm)
		Next
		DataModels.Put(TableName, tm)
	End If
End Sub

'Sub UseGMap(GMapApiKey As String, mCallBack As Object, mapName As String)
'	mapName = mapName.ToLowerCase
'	Dim e As BANanoEvent
'	If SubExists(mCallBack, $"${mapName}_ready"$) Then
'		Dim cbReady As BANanoObject = Banano.CallBack(mCallBack, $"${mapName}_ready"$, Array(e))
'		Banano.Window.SetField($"${mapName}_ready"$, cbReady)
'	Else
'		Banano.Throw($"${mapName}_ready event is missing!"$)
'	End If
'	UI.AddJavascriptFile($"https://maps.googleapis.com/maps/api/js?key=${GMapApiKey}&callback=${mapName}_ready&libraries=places&v=3&loading=async"$)
'	'UI.AddJavascriptFile("https://cdn.jsdelivr.net/npm/gmaps@0.4.25/gmaps.min.js")
'	Banano.Await(UsesGMaps)
'End Sub

''close the drawer
'Sub CloseDrawer(item As String)
'	item = item.ToLowerCase
'	Banano.GetElement($"#${item}toggle"$).SetChecked(False)
'End Sub
'
''open the drawer
'Sub OpenDrawer(item As String)
'	item = item.ToLowerCase
'	Banano.GetElement($"#${item}toggle"$).SetChecked(True)
'End Sub

'show loader
Sub PagePause
	Dim lEL As BANanoElement
	lEL.Initialize("#loader-1")
	Dim mStyle As Map = CreateMap()
	mStyle.Put("display", "block")
	lEL.SetStyle(Banano.ToJson(mStyle))
End Sub

'hide loader
Sub PageResume
	Dim lEL As BANanoElement
	lEL.Initialize("#loader-1")
	Dim mStyle As Map = CreateMap()
	mStyle.Put("display", "none")
	lEL.SetStyle(Banano.ToJson(mStyle))
End Sub

Sub UsesGijgo
	Banano.Await(LoadAssetsOnDemand("TreeView", Array("core.min.js", "core.min.css", "checkbox.min.css", "tree.min.css", _
	"draggable.min.js", "droppable.min.js", "checkbox.min.js", "tree.min.js", "editor.min.css", "editor.min.js")))
End Sub

'includes jquery
Sub UsesEnjoyHint
	Banano.Await(LoadAssetsOnDemand("EnjoyHint", Array("kinetic.min.js", "enjoyhint.min.js", "enjoyhint.min.css")))
End Sub

Sub UsesStories
	Banano.Await(LoadAssetsOnDemand("Stories", Array("zuck.min.css", "snapssenger.min.css", "vemdezap.min.css", "snapgram.min.css","facesnap.min.css","zuck.min.js")))
End Sub

Sub UsesSwiper
	Banano.Await(LoadAssetsOnDemand("SwiperX", Array("swiper-bundle.min.css", "swiper-bundle.min.js")))
End Sub


Sub UsesFlipPage
	Banano.Await(LoadAssetsOnDemand("FlipPage", Array("flip-book.min.css", "page-flip.browser.js")))
End Sub

Sub UsesTimeLine
	Banano.Await(LoadAssetsOnDemand("TimeLine", Array("timeline.min.css")))
End Sub

Sub UsesGridNav
	Banano.Await(LoadAssetsOnDemand("GridNav", Array("grid-nav.min.css")))
End Sub

Sub LoadAssetsOnDemand(Key As String, Items As List)
	Dim iTot As Int = Items.size - 1
	Dim iCnt As Int = 0
	For iCnt = 0 To iTot
		Dim fn As String = Items.Get(iCnt)
		If fn.EndsWith(".js") Then
			If fn.StartsWith("./scripts/") = False Then
				Items.Set(iCnt, $"./scripts/${fn}"$)
			End If
		End If
		If fn.EndsWith(".css") Then
			If fn.StartsWith("./styles/") = False Then
				Items.Set(iCnt, $"./styles/${fn}"$)
			End If
		End If
	Next
	Dim pathsNotFound() As String
	If Banano.AssetsIsDefined(Key) = False Then
		'load the assets
		pathsNotFound = Banano.AssetsLoadWait(Key, Items)
		If Banano.IsNull(pathsNotFound) = False Then
			Banano.Console.Warn($"${Key} not fully loaded..."$)
			For Each path As String In pathsNotFound
				Log(path)
			Next
		End If
	End If
End Sub

Sub UsesChartKick
	Banano.Await(LoadAssetsOnDemand("ChartKick", Array("chart.min.js", "chartjs-adapter-date-fns.bundle.min.js", "chartkick.min.js")))
End Sub

Sub UsesQRCode
	Banano.Await(LoadAssetsOnDemand("QRCode", Array("qrcode.min.js")))
End Sub

Sub UsesPDFLib
	Banano.Await(LoadAssetsOnDemand("PDFLib", Array("pdf-lib.min.js")))
End Sub

Sub UsesSQLite
	Banano.Await(LoadAssetsOnDemand("SQLite", Array("sql-browser.min.js")))
End Sub

Sub UsesMath
	Banano.Await(LoadAssetsOnDemand("MathIT", Array("math.min.js")))
End Sub

Sub UsesBarCodeReader
	Banano.Await(LoadAssetsOnDemand("BarCodeReader", Array("html5-qrcode.min.js")))
End Sub

Sub UsesWebCam
	Banano.Await(LoadAssetsOnDemand("WebCam", Array("webcam.min.js")))
End Sub

Sub CopyToClipboard(txt As String)
	Banano.Await(Banano.Navigator.GetField("clipboard").RunMethod("writeText", txt))
End Sub

Sub CopyFromClipBoard As String
	Dim clipText As Object = Banano.Await(Banano.Navigator.GetField("clipboard").RunMethod("readText", Null))
	Return clipText
End Sub


'Sub UsesFlatPickDateTime
'	Banano.Await(LoadAssetsOnDemand("FlatPicker", Array("flatpickr.min.css", "material_blue.css", "flatpickr.min.js", "fplocale.min.js")))
'End Sub

Sub UsesLottiePlayer
	Banano.Await(LoadAssetsOnDemand("Lottie", Array("lottie-player.js")))
End Sub

Sub UsesDocxTemplator
	Banano.Await(LoadAssetsOnDemand("DocX", Array("docxtemplater.js", "pizzip.js", "pizzip-utils.js")))
End Sub

Sub UsesRollDate
	Banano.Await(LoadAssetsOnDemand("RollDate", Array("rolldate.min.js")))
End Sub

'Sub UsesFaceIO
'	Banano.Await(LoadAssetsOnDemand("FaceIO", Array("fio.js")))
'End Sub

'Sub UsesJQuery
'	Banano.Await(LoadAssetsOnDemand("jquery", Array("jquery-3.6.3.min.js")))
'End Sub

Sub UsesLZCompressString
	Banano.Await(LoadAssetsOnDemand("StringCompression", Array("lz-string.min.js")))
End Sub

'do not add UsesExcel, UsesCSV, UsesPDF with this, resources already included.
'Sub UsesTable
'	Banano.Await(LoadAssetsOnDemand("Table", Array("pagination.css", "pagination.min.js", "fuse.min.js")))
'End Sub

'Sub UsesFormToJSON
'	Banano.Await(LoadAssetsOnDemand("FormToJSON", Array("form-data-json.min.js")))
'End Sub

'Sub UsesPocketBase
'	Banano.Await(LoadAssetsOnDemand("PocketBase", Array("pocketbase.umd.js")))
'End Sub

Sub UsesCouchDB
	Banano.Await(LoadAssetsOnDemand("CouchDB", Array("pouchdb-8.0.1.min.js", "pouchdb.find.min.js")))
End Sub

Sub UsesFullCalendar
	Banano.Await(LoadAssetsOnDemand("FullCalendar", Array("fc.min.css", "fc.min.js", "fclocales.min.js")))
End Sub

'Sub UsesSignaturePad
'	Banano.Await(LoadAssetsOnDemand("SignaturePad", Array("signature_pad.umd.min.js")))
'End Sub

Sub UsesCSVParser
	Banano.Await(LoadAssetsOnDemand("CSV", Array("papaparse.min.js")))
End Sub

Sub UsesKanBan
	Banano.Await(LoadAssetsOnDemand("KanBan", Array("jkanban.min.css", "dragula.min.js", "jkanban.min.js")))
End Sub

Sub UsesAES
	Banano.Await(LoadAssetsOnDemand("Crypto", Array("crypto-js.min.js")))
End Sub

Sub UsesGMaps
	Banano.Await(LoadAssetsOnDemand("GMaps", Array("gmaps.min.js")))
End Sub

Sub UsesAES4PHP
	Banano.Await(LoadAssetsOnDemand("Encryption", Array("encryption.min.js")))
End Sub

Sub UsesToastChart
	Banano.Await(LoadAssetsOnDemand("TuiChart", Array("toastui-chart.min.css", "toastui-chart.min.js")))
End Sub

Sub UsesMockupCode
	Banano.Await(LoadAssetsOnDemand("PrismCode", Array("prism.min.css", "prism.min.js", "beautify.min.js", "beautify-css.min.js", "beautify-html.min.js", "prettier.min.js")))
End Sub

Sub UsesPDF
	Banano.Await(LoadAssetsOnDemand("PDF", Array("jspdf.umd.min.js", "jspdf.plugin.autotable.min.js", "html2canvas.min.js", "pdf-lib.min.js")))
End Sub

Sub UsesExcel
	Banano.Await(LoadAssetsOnDemand("Excel", Array("jszip.min.js", "oxml.min.js", "xlsx.full.min.js")))
End Sub

Sub UsesFireBase
	Banano.Await(LoadAssetsOnDemand("FireBase", Array("firesql.umd.js")))
End Sub

Sub UsesSupaBase
	Banano.Await(LoadAssetsOnDemand("SupaBase", Array("supabase.js")))
End Sub

Sub UsesRelax
	Banano.Await(LoadAssetsOnDemand("Relax", Array("pouchdb.min.js", "pouchdb.find.js")))
End Sub

Sub UsesJustGage
	Banano.Await(LoadAssetsOnDemand("Gauge", Array("raphael.min.js", "justgage.min.js")))
End Sub

Sub UsesFluidMeter
	Banano.Await(LoadAssetsOnDemand("FluidMeter", Array("js-fluid-meter.js")))
End Sub

Sub UsesFrappeGantt
	Banano.Await(LoadAssetsOnDemand("FrappeGantt", Array("frappe-gantt.min.css", "frappe-gantt.min.js")))
End Sub

Sub UsesEvoCalendar
	Banano.Await(LoadAssetsOnDemand("UseEvoCalendar", Array("evo-calendar.min.css", "evo-calendar.midnight-blue.min.css", "evo-calendar.orange-coral.min.css", _
	"evo-calendar.royal-navy.min.css", "evo-calendar.min.js")))
End Sub

Sub UsesDropZone
	Banano.Await(LoadAssetsOnDemand("DropZoneX", Array("dropzone.min.css", "dropzone.min.js")))
End Sub

Sub UsesCollectJS
	Banano.Await(LoadAssetsOnDemand("CollectJS", Array("collect.min.js")))
End Sub

'<code>
''uncomment unused
'Banano.Await(app.UsesPDF)
'Banano.Await(app.UsesExcel)
'Banano.Await(app.UsesCSV)
'Banano.Await(app.UsesEnjoyHint)
'Banano.Await(app.UsesFlatPickDateTime)
'Banano.Await(app.UsesRollDate)
''Banano.Await(app.UsesDropZone)
''BANano.Await(app.UsesSwiper)
''Banano.Await(app.UsesPocketBase)
''Banano.Await(app.UsesFlipPage)
''Banano.Await(app.UsesTimeLine)
''Banano.Await(app.UsesGridNav)
''Banano.Await(app.UsesChartKick)
''Banano.Await(app.UsesQRCode)
''Banano.Await(app.UsesBarCodeReader)
''Banano.Await(app.UsesWebCam)
''Banano.Await(app.UsesAxios)
''Banano.Await(app.UsesLottiePlayer)
''Banano.Await(app.UsesDocxTemplator)
''Banano.Await(app.UsesHTMLParser)
''Banano.Await(app.UsesLZCompressString)
''Banano.Await(app.UsesFullCalendar)
''Banano.Await(app.UsesDevice)
''Banano.Await(app.UsesKanBan)
''Banano.Await(app.UsesAES)
''Banano.Await(app.UsesGMaps)
''Banano.Await(app.UsesAES4PHP)
''Banano.Await(app.UsesToastChart)
''Banano.Await(app.UsesMockupCode)
''Banano.Await(app.UsesFireBase)
''Banano.Await(app.UsesSupaBase)
''Banano.Await(app.UsesRelax)
''Banano.Await(app.UsesGijgo)
''Banano.Await(app.UsesJustGage)
''Banano.Await(app.UsesFluidMeter)
''Banano.Await(app.UsesFrappeGantt)
''Banano.Await(app.UsesEvoCalendar)
''Banano.Await(app.UsesDropZone)
''Banano.Await(app.UsesCollectJS)
'</code>
Sub AddUses
End Sub

''add item as form
'Sub AddAsForm(Module As Object, elID As String)
'	elID = UI.CleanID(elID)
'	Dim xform As SDUIForm
'	xform.Initialize(Module, elID, elID)
'	xform.LinkExisting
'	modSithasoDaisy.AddForm(elID, xform)
'End Sub

Sub AddDynamicCode(codeLink As String, codeJS As String)
	DynamicEvents.Put(codeLink, codeJS)
End Sub

Sub RunDynamicCode(codelink As String)
	If DynamicEvents.ContainsKey(codelink) Then
		Dim codeJS As String = DynamicEvents.Get(codelink)
		Banano.Await(Banano.RunJavascriptMethod("eval", Array(codeJS)))
	End If
End Sub

Sub ClearDynamicEvents
	DynamicEvents.Initialize
End Sub


'add a html template for later
'<code>
'BANano.Await(app.AddMyLayoutFile("layout1", "./assets/temp.txt"$))
'For Each item As Map In items
'Dim itemPos As Int = app.LoadMyLayout("target", "layout1", item)
'Dim components As Map = app.GetMyViews("layout1", itemPos, item)
'Dim card1 As BANanoElement = components.Get("layout1")
'card1.On("click", Me, $"card1_click"$)
'Next
'Sub card1_click(e As BANanoEvent)
'	Dim article As Map = app.GetMyTag(e.ID)
'	Log(article)
'End Sub
'</code>
Sub AddMyLayoutFile(tempID As String, fileName As String)
	Dim tempHTML As String = Banano.Await(Banano.GetFileAsText(fileName, Null, "utf8"))
	templates.Put(tempID, tempHTML)
	Dim parsed As List = parseHTML(tempHTML)
	Dim templateV As Map = CreateMap()
	For Each hItem As Map In parsed
		Dim stype As String = hItem.Get("type")
		Dim tid As String = hItem.GetDefault("id","")
		tid = UI.CStr(tid)
		tid = tid.trim
		Select Case stype
			Case "checkbox", "Element", "file", "radio", "text", "search", "hidden", "range", _
			"password", "tel", "number", "color", "video/mp4", "video/ogg", "video/webm", "email", _
			"button", "submit", "reset", "date", "image", "month", "time", "url", "week"
			Case Else
				Continue
		End Select
		If tid = "" Then Continue
		templateV.Put(tid, tid)
	Next
	'add the ids for the layout
	templateViews.Put(tempID, templateV)
	templateCounter.Put(tempID, 0)
	AllViews.Put(tempID, CreateMap())
End Sub

'add a html template for later
'<code>
'app.AddMyLayout("layout1", "HTML"$)
'app.ClearMyLayout("layout1")
'For Each item As Map In items
'Dim itemPos As Int = app.LoadMyLayout("parentlayout", "layout1", item)
'Dim itemPos As Int = app.LoadMyLayoutPrepend("parentlayout", "layout1", item)
'Dim components As Map = app.GetMyViews("layout1", itemPos, item)
'Dim card1 As BANanoElement = components.Get("layout1")
'card1.On("click", Me, $"card1_click"$)
'Next
'Sub card1_click(e As BANanoEvent)
'	Dim article As Map = app.GetMyTag(e.ID)
'	Log(article)
'End Sub
'</code>
Sub AddMyLayout(tempID As String, tempHTML As String)
	templates.Put(tempID, tempHTML)
	Dim parsed As List = parseHTML(tempHTML)
	Dim templateV As Map = CreateMap()
	For Each hItem As Map In parsed
		Dim stype As String = hItem.Get("type")
		Dim tid As String = hItem.GetDefault("id","")
		tid = UI.CStr(tid)
		tid = tid.trim
		Select Case stype
			Case "checkbox", "Element", "file", "radio", "text", "search", "hidden", "range", _
			"password", "tel", "number", "color", "video/mp4", "video/ogg", "video/webm", "email", _
			"button", "submit", "reset", "date", "image", "month", "time", "url", "week"
			Case Else
				Continue
		End Select
		If tid = "" Then Continue
		templateV.Put(tid, tid)
	Next
	'add the ids for the layout
	templateViews.Put(tempID, templateV)
	templateCounter.Put(tempID, 0)
	AllViews.Put(tempID, CreateMap())
End Sub

Sub ClearMyLayout(tempID As String)
	templateCounter.Put(tempID, 0)
	AllViews.Put(tempID, CreateMap())
End Sub

'<code>
'app.AddMyLayout("layout1", "HTML"$)
'app.ClearMyLayout("layout1")
'For Each item As Map In items
'Dim itemPos As Int = app.LoadMyLayout("parentlayout", "layout1", item)
'Dim itemPos As Int = app.LoadMyLayoutPrepend("parentlayout", "layout1", item)
'Dim components As Map = app.GetMyViews("layout1", itemPos, item)
'Dim card1 As BANanoElement = components.Get("layout1")
'card1.On("click", Me, $"card1_click"$)
'Next
'Sub card1_click(e As BANanoEvent)
'	Dim article As Map = app.GetMyTag(e.ID)
'	Log(article)
'End Sub
'</code>
Sub LoadMyLayout(targetID As String, tempID As String, content As Map) As Int
	targetID = UI.CleanID(targetID)
	If templates.ContainsKey(tempID) = False Then Return -1
	'get the template HTML
	Dim tmpHTML As String = templates.Get(tempID)
	'get all the ids
	Dim templateV As Map = templateViews.Get(tempID)
	'get each record
	Dim startPos As Int = templateCounter.Get(tempID)
	'determine the next starting point
	startPos = Banano.parseInt(startPos) + 1
	'keep a record of views used
	Dim theseviewsKey As String = $"${tempID}_${startPos}"$
	Dim theseviews As Map = CreateMap()
	'update all the ids
	For Each eID As String In templateV.Keys
		Dim nID As String = $"${eID}_${startPos}"$
		Dim oldKey As String = $"id="${eID}""$
		Dim newKey As String = $"id="${nID}""$
		tmpHTML = tmpHTML.Replace(oldKey, newKey)
		theseviews.Put(eID, nID)
	Next
	AllViews.Put(theseviewsKey, theseviews)
	'update the data according to the map keys
	For Each k As String In content.keys
		Dim v As String = content.Get(k)
		Dim nk As String = "{" & k & "}"
		tmpHTML = tmpHTML.Replace(nk, v)
	Next
	templateCounter.Put(tempID, startPos)
	Banano.GetElement($"#${targetID}"$).Append(tmpHTML)
	Return startPos
End Sub

'add a html template for later
'<code>
'app.AddMyLayout("layout1", "HTML"$)
'app.ClearMyLayout("layout1")
'For Each item As Map In items
'Dim itemPos As Int = app.LoadMyLayout("parentlayout", "layout1", item)
'Dim itemPos As Int = app.LoadMyLayoutPrepend("parentlayout", "layout1", item)
'Dim components As Map = app.GetMyViews("layout1", itemPos, item)
'Dim card1 As BANanoElement = components.Get("layout1")
'card1.On("click", Me, $"card1_click"$)
'Next
'Sub card1_click(e As BANanoEvent)
'	Dim article As Map = app.GetMyTag(e.ID)
'	Log(article)
'End Sub
'</code>
Sub LoadMyLayoutPrepend(targetID As String, tempID As String, content As Map) As Int
	targetID = UI.CleanID(targetID)
	If templates.ContainsKey(tempID) = False Then Return -1
	'get the template HTML
	Dim tmpHTML As String = templates.Get(tempID)
	'get all the ids
	Dim templateV As Map = templateViews.Get(tempID)
	'get each record
	Dim startPos As Int = templateCounter.Get(tempID)
	'determine the next starting point
	startPos = Banano.parseInt(startPos) + 1
	'keep a record of views used
	Dim theseviewsKey As String = $"${tempID}_${startPos}"$
	Dim theseviews As Map = CreateMap()
	'update all the ids
	For Each eID As String In templateV.Keys
		Dim nID As String = $"${eID}_${startPos}"$
		Dim oldKey As String = $"id="${eID}""$
		Dim newKey As String = $"id="${nID}""$
		tmpHTML = tmpHTML.Replace(oldKey, newKey)
		theseviews.Put(eID, nID)
	Next
	AllViews.Put(theseviewsKey, theseviews)
	'update the data according to the map keys
	For Each k As String In content.keys
		Dim v As String = content.Get(k)
		Dim nk As String = "{" & k & "}"
		tmpHTML = tmpHTML.Replace(nk, v)
	Next
	templateCounter.Put(tempID, startPos)
	Banano.GetElement($"#${targetID}"$).Prepend(tmpHTML)
	Return startPos
End Sub

'get elements loaded with loadmylayout
'each element has a record in its tag
Sub GetMyViews(tempID As String, pos As Int, content As Map) As Object
	Dim m As Map = CreateMap()
	Dim theseviewsKey As String = $"${tempID}_${pos}"$
	If AllViews.ContainsKey(theseviewsKey) Then
		m = AllViews.Get(theseviewsKey)
		Dim nm As Map = CreateMap()
		For Each k As String In m.Keys
			Dim v As String = m.Get(k)
			If Banano.Exists($"#${v}"$) Then
				Dim xelement As BANanoElement = Banano.GetElement($"#${v}"$)
				xelement.SetField("tag", content)
				nm.Put(k, xelement)
			End If
		Next
		Return nm
	End If
	Return m
End Sub

'return my views without records in each item
Sub GetMyViewsOnly(tempID As String, pos As Int) As Object
	Dim m As Map = CreateMap()
	Dim theseviewsKey As String = $"${tempID}_${pos}"$
	If AllViews.ContainsKey(theseviewsKey) Then
		m = AllViews.Get(theseviewsKey)
		Dim nm As Map = CreateMap()
		For Each k As String In m.Keys
			Dim v As String = m.Get(k)
			If Banano.Exists($"#${v}"$) Then
				Dim xelement As BANanoElement = Banano.GetElement($"#${v}"$)
				nm.Put(k, xelement)
			End If
		Next
		Return nm
	End If
	Return m
End Sub

'set a tag explicity
Sub SetMyTag(be As BANanoElement, xtag As Object)
	be.SetField("tag", xtag)
End Sub

'get a tag from an element
'this should be the record
Sub GetMyTag(elID As String) As Object
	elID = UI.CleanID(elID)
	Dim el As BANanoElement = Banano.GetElement($"#${elID}"$)
	Dim xtag As Object = el.GetField("tag")
	Return xtag
End Sub

'get a tag from an element
Sub GetMyPos(elID As String) As String
	elID = UI.CleanID(elID)
	Dim spos As String = UI.MvLast("_", elID)
	Return spos
End Sub

'unflatten as list of map objects using id, parentid, data attributes
Sub ListToTree(tdata As List, idField As String, parentField As String, childname As String) As List
	Try
		'id, parentid, data
		Dim tree As List
		Dim mappedArr As Map
		MissingParents.Initialize
		'
		tree.Initialize
		mappedArr.Initialize
		'
		'create a temp map to hold everything with 'children' as 'data'
		For Each arrElem As Map In tdata
			Dim dID As String = arrElem.Get(idField)
			'
			Dim cdata As List
			cdata.Initialize
			arrElem.Put(childname, cdata)
			'
			mappedArr.Put(dID, arrElem)
		Next
		'
		For Each dID As String In mappedArr.Keys
			Dim mappedElem As Map = mappedArr.Get(dID)
			Dim parentid As String = mappedElem.Get(parentField)
			' If the element is at the root level, add it to first level elements list.
			If parentid = "" Or parentid = "0" Then
				tree.Add(mappedElem)
			Else
				'If the element is not at the root level, add it to its parent list of children.
				If mappedArr.ContainsKey(parentid) Then
					Dim parentElem As Map = mappedArr.Get(parentid)
					Dim children As List = parentElem.Get(childname)
					children.Add(mappedElem)
					parentElem.Put(childname, children)
					mappedArr.Put(parentid, parentElem)
				Else
					MissingParents.Put(parentid, parentid)
				End If
			End If
		Next
		'
		For Each mk As String In mappedArr.Keys
			Dim mi As Map = mappedArr.Get(mk)
			Dim childs As List = mi.Get(childname)
			If childs.Size = 0 Then mi.Remove(childname)
		Next
		Return tree
	Catch
		'Log(LastException)
		Return tree
	End Try
End Sub

Sub TreeToList(sourceList As List) As List
	treeSchema.Initialize
	Dim treex As Map = CreateMap()
	treex.Put("children", sourceList)
	TreeToList1(treex)
	Return treeSchema
End Sub

private Sub TreeToList1(Rootx As Map)
	'does this contains children
	If Rootx.ContainsKey("children") Then
		'get the children
		Dim children As List = Rootx.Get("children")
		'loop through each child
		For Each child As Map In children
			treeSchema.Add(child)
			TreeToList1(child)
		Next
	End If
End Sub

'reset the validations
'validate an element
'<code>
''reset the validations
'app.ResetValidation
''validate each of the elements
'app.Validate(txtFirstName.IsBlank)
'app.Validate(txtLastName.IsBlank)
'app.Validate(txtEmail.IsBlank)
'app.Validate(txtTelephone.IsBlank)
'app.Validate(txtAddress.IsBlank)
'app.Validate(radGender.IsBlank)
''check the form status
'If app.IsValid = False Then Return
'</code>
Sub ResetValidation
	validations.Initialize
End Sub

'<code>
''reset the validations
'app.ResetValidation
''validate each of the elements
'app.Validate(txtFirstName.IsBlank)
'app.Validate(txtLastName.IsBlank)
'app.Validate(txtEmail.IsBlank)
'app.Validate(txtTelephone.IsBlank)
'app.Validate(txtAddress.IsBlank)
'app.Validate(radGender.IsBlank)
''check the form status
'If app.IsValid = False Then Return
'</code>
Sub Validate(response As Boolean)
	'add responses that are true
	validations.Put(response, response)
End Sub

'<code>
''reset the validations
'app.ResetValidation
''validate each of the elements
'app.Validate(txtFirstName.IsBlank)
'app.Validate(txtLastName.IsBlank)
'app.Validate(txtEmail.IsBlank)
'app.Validate(txtTelephone.IsBlank)
'app.Validate(txtAddress.IsBlank)
'app.Validate(radGender.IsBlank)
''check the form status
'If app.IsValid = False Then Return
'</code>
Sub IsValid As Boolean
	Dim hastrue As Boolean = validations.ContainsKey(True)
	If hastrue Then Return False
	Return True
End Sub

Sub ClearPageView
	Dim el As BANanoElement = Banano.GetElement($"#pageview"$)
	el.empty
End Sub

'get an item index from eID
Sub IndexFromEventID(eID As String) As String
	Dim pos As String = UI.MvField(eID, 2, "_")
	Return pos
End Sub

'read as text
Sub readAsText(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsText"))
	Return promise
End Sub
'read as binary string
Sub readAsBinaryString(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsBinaryString"))
	Return promise
End Sub
'read as data url
Sub readAsDataURL(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsDataURL"))
	Return promise
End Sub
'read as array buffer
Sub readAsArrayBuffer(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsArrayBuffer"))
	Return promise
End Sub
'read as data url
Sub readAsDataURLFromBlob(blb As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
	' calling a single upload
	promise.CallSub(Me, "ReadBlob", Array(blb))
	Return promise
End Sub
Sub GetBase64ImageFromURLWait(url As String) As String
	Dim dataUrl As String = Banano.Await(Banano.GetFileAsDataURL(url, Null))
	Return dataUrl
End Sub
'read blob
private Sub ReadBlob(blb As Object)
	' make a filereader
	Dim FileReader As BANanoObject
	FileReader.Initialize2("FileReader", Null)
	' make a callback for the onload event
	' an onload of a FileReader requires a 'event' param
	Dim event As Map
	FileReader.SetField("onload", Banano.CallBack(Me, "OnLoad1", Array(event)))
	FileReader.SetField("onerror", Banano.CallBack(Me, "OnError1", Array(event)))
	' start reading the DataURL
	FileReader.RunMethod("readAsBinaryString", blb)
End Sub
'read file
private Sub ReadFile(FileToRead As Object, MethodName As String)
	' make a filereader
	Dim FileReader As BANanoObject
	FileReader.Initialize2("FileReader", Null)
	' attach the file (to get the name later)
	FileReader.SetField("file", FileToRead)
	' make a callback for the onload event
	' an onload of a FileReader requires a 'event' param
	Dim event As Map
	FileReader.SetField("onload", Banano.CallBack(Me, "OnLoad", Array(event)))
	FileReader.SetField("onerror", Banano.CallBack(Me, "OnError", Array(event)))
	' start reading the DataURL
	FileReader.RunMethod(MethodName, FileToRead)
End Sub
private Sub OnLoad(event As Map) As String 'IgnoreDeadCode
	' getting our file again (set in UploadFileAndGetDataURL)
	Dim FileReader As BANanoObject = event.Get("target")
	Dim UploadedFile As BANanoObject = FileReader.GetField("file")
	' return to the then of the UploadFileAndGetDataURL
	Banano.ReturnThen(CreateMap("name": UploadedFile.GetField("name"), "result": FileReader.Getfield("result")))
End Sub
private Sub OnError(event As Map) As String 'IgnoreDeadCode
	Dim FileReader As BANanoObject = event.Get("target")
	Dim UploadedFile As BANanoObject = FileReader.GetField("file")
	Dim Abort As Boolean = False
	' uncomment this if you want to abort the whole operatio
	' Abort = true
	' FileReader.RunMethod("abort", Null)
	Banano.ReturnElse(CreateMap("name": UploadedFile.GetField("name"), "result": FileReader.GetField("error"), "abort": Abort))
End Sub
'
private Sub OnLoad1(event As Map) As String 'IgnoreDeadCode
	' getting our file again (set in UploadFileAndGetDataURL)
	Dim FileReader As BANanoObject = event.Get("target")
	Dim result As Object = FileReader.Getfield("result")
	' return to the then of the UploadFileAndGetDataURL
	Banano.ReturnThen(result)
End Sub

private Sub OnError1(event As Map) As String 'IgnoreDeadCode
	Dim FileReader As BANanoObject = event.Get("target")
	Dim result As Object = FileReader.GetField("error")
	' uncomment this if you want to abort the whole operatio
	' Abort = true
	' FileReader.RunMethod("abort", Null)
	Banano.ReturnElse(result)
End Sub

'get the file contents
Sub readAsJsonWait(fr As Map) As Object
	Try
		Dim fd As Map = Banano.Await(readAsText(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return Banano.FromJson(sresult)
	Catch
		Return ""
	End Try
End Sub

'get the file contents
Sub readAsTextWait(fr As Map) As String
	Try
		Dim fd As Map = Banano.Await(readAsText(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try
End Sub

'get the file contents
Sub readAsBinaryStringWait(fr As Map) As String
	Try
		Dim fd As Map = Banano.Await(readAsBinaryString(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try
End Sub

'get the file contents
Sub readAsDataURLWait(fr As Map) As String
	Try
		Dim fd As Map = Banano.Await(readAsDataURL(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try
End Sub

'get the file contents
Sub readAsArrayBufferWait(fr As Map) As String
	Try
		Dim fd As Map = Banano.Await(readAsArrayBuffer(fr))
		Dim sname As String = fd.Get("name")		'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try
End Sub

'calculate the progress done
Sub ProgressDone(currentCount As Long, totalCount As Long) As Int
	Dim pd As Int = (currentCount / totalCount) * 100
	pd = NumberFormat2Fix(pd, 0,0, 0, False)
	pd = UI.CInt(pd)
	Return pd
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
private Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return Banano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
End Sub

Sub GetFileFromEvent (e As BANanoEvent) As Map
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = Banano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Dim filex As Map = res.Get(0)
	Return filex
End Sub

Sub GetFilesFromEvent (e As BANanoEvent) As List
	Dim sid As String = e.OtherField("srcElement").GetField("id").Result
	'get the selected files, if any
	Dim files As Object = Banano.GetElement($"#${sid}"$).GetField("files").Result
	Dim res As List = files.As(List)
	Return res
End Sub