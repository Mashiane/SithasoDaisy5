B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Private tables As Map			'ignore
	Private forms As Map			'ignore
	Private hints As Map			'ignore
	Public EmojiData As Map
	Private BANano As BANano		'ignore
	Public ColorMap As Map
	Private math As BANanoObject	'ignore
	Type Paginate1(previousPage As Int, nextPage As Int, totalPages As Int, items As List)
	Private Months As Map
End Sub

Sub InitColors
	ColorMap.Initialize
	
	ColorMap.Put("A", "#51c44f")
	ColorMap.Put("B", "#8223b7")
	ColorMap.Put("C", "#b47540")
	ColorMap.Put("D", "#f49a56")
	ColorMap.Put("E", "#27acd9")
	
	ColorMap.Put("F", "#73464e")
	ColorMap.Put("G", "#684cce")
	ColorMap.Put("H", "#66c8bc")
	ColorMap.Put("I", "#498057")
	ColorMap.Put("J", "#f8941e")
	
	ColorMap.Put("K", "#374209")
	ColorMap.Put("L", "#f300e0")
	ColorMap.Put("M", "#d88c22")
	ColorMap.Put("N", "#498057")
	ColorMap.Put("O", "#f70783")
	
	ColorMap.Put("P", "#82ca09")
	ColorMap.Put("Q", "#94b02f")
	ColorMap.Put("R", "#6ca92a")
	ColorMap.Put("S", "#d48e58")
	ColorMap.Put("T", "#16d3e7")
	'
	ColorMap.Put("U", "#18c59b")
	ColorMap.Put("V", "#c198cd")
	ColorMap.Put("W", "#4dfab8")
	ColorMap.Put("X", "#a4bbcc")
	ColorMap.Put("Y", "#47cacc")
	ColorMap.Put("Z", "#f1710d")
	'
	ColorMap.Put("#", "#ab6210")
	'
	ColorMap.Put("gray", "#9e9e9e")
	ColorMap.Put("zinc", "#92898a")
	ColorMap.Put("stone", "#B7B09C")
	ColorMap.Put("emerald", "#50C878")
	ColorMap.Put("sky", "#87CEEB")
	ColorMap.Put("violet", "#EE82EE")
	ColorMap.Put("fuchsia", "#FF00FF")
	ColorMap.Put("rose", "#FF007F")
	ColorMap.put("red lighten-5", "#ffebee")
	ColorMap.put("red lighten-4", "#ffcdd2")
	ColorMap.put("red lighten-3", "#ef9a9a")
	ColorMap.put("red lighten-2", "#e57373")
	ColorMap.put("red lighten-1", "#ef5350")
	ColorMap.put("red", "#f44336")
	ColorMap.put("red darken-1", "#e53935")
	ColorMap.put("red darken-2", "#d32f2f")
	ColorMap.put("red darken-3", "#c62828")
	ColorMap.put("red darken-4", "#b71c1c")
	ColorMap.put("red accent-1", "#ff8a80")
	ColorMap.put("red accent-2", "#ff5252")
	ColorMap.put("red accent-3", "#ff1744")
	ColorMap.put("red accent-4", "#d50000")
	ColorMap.put("pink lighten-5", "#fce4ec")
	ColorMap.put("pink lighten-4", "#f8bbd0")
	ColorMap.put("pink lighten-3", "#f48fb1")
	ColorMap.put("pink lighten-2", "#f06292")
	ColorMap.put("pink lighten-1", "#ec407a")
	ColorMap.put("pink", "#e91e63")
	ColorMap.put("pink darken-1", "#d81b60")
	ColorMap.put("pink darken-2", "#c2185b")
	ColorMap.put("pink darken-3", "#ad1457")
	ColorMap.put("pink darken-4", "#880e4f")
	ColorMap.put("pink accent-1", "#ff80ab")
	ColorMap.put("pink accent-2", "#ff4081")
	ColorMap.put("pink accent-3", "#f50057")
	ColorMap.put("pink accent-4", "#c51162")
	ColorMap.put("purple lighten-5", "#f3e5f5")
	ColorMap.put("purple lighten-4", "#e1bee7")
	ColorMap.put("purple lighten-3", "#ce93d8")
	ColorMap.put("purple lighten-2", "#ba68c8")
	ColorMap.put("purple lighten-1", "#ab47bc")
	ColorMap.put("purple", "#9c27b0")
	ColorMap.put("purple darken-1", "#8e24aa")
	ColorMap.put("purple darken-2", "#7b1fa2")
	ColorMap.put("purple darken-3", "#6a1b9a")
	ColorMap.put("purple darken-4", "#4a148c")
	ColorMap.put("purple accent-1", "#ea80fc")
	ColorMap.put("purple accent-2", "#e040fb")
	ColorMap.put("purple accent-3", "#d500f9")
	ColorMap.put("purple accent-4", "#aa00ff")
	ColorMap.put("deep-purple lighten-5", "#ede7f6")
	ColorMap.put("deep-purple lighten-4", "#d1c4e9")
	ColorMap.put("deep-purple lighten-3", "#b39ddb")
	ColorMap.put("deep-purple lighten-2", "#9575cd")
	ColorMap.put("deep-purple lighten-1", "#7e57c2")
	ColorMap.put("deep-purple", "#673ab7")
	ColorMap.put("deep-purple darken-1", "#5e35b1")
	ColorMap.put("deep-purple darken-2", "#512da8")
	ColorMap.put("deep-purple darken-3", "#4527a0")
	ColorMap.put("deep-purple darken-4", "#311b92")
	ColorMap.put("deep-purple accent-1", "#b388ff")
	ColorMap.put("deep-purple accent-2", "#7c4dff")
	ColorMap.put("deep-purple accent-3", "#651fff")
	ColorMap.put("deep-purple accent-4", "#6200ea")
	ColorMap.put("indigo lighten-5", "#e8eaf6")
	ColorMap.put("indigo lighten-4", "#c5cae9")
	ColorMap.put("indigo lighten-3", "#9fa8da")
	ColorMap.put("indigo lighten-2", "#7986cb")
	ColorMap.put("indigo lighten-1", "#5c6bc0")
	ColorMap.put("indigo", "#3f51b5")
	ColorMap.put("indigo darken-1", "#3949ab")
	ColorMap.put("indigo darken-2", "#303f9f")
	ColorMap.put("indigo darken-3", "#283593")
	ColorMap.put("indigo darken-4", "#1a237e")
	ColorMap.put("indigo accent-1", "#8c9eff")
	ColorMap.put("indigo accent-2", "#536dfe")
	ColorMap.put("indigo accent-3", "#3d5afe")
	ColorMap.put("indigo accent-4", "#304ffe")
	ColorMap.put("blue lighten-5", "#e3f2fd")
	ColorMap.put("blue lighten-4", "#bbdefb")
	ColorMap.put("blue lighten-3", "#90caf9")
	ColorMap.put("blue lighten-2", "#64b5f6")
	ColorMap.put("blue lighten-1", "#42a5f5")
	ColorMap.put("blue", "#2196f3")
	ColorMap.put("blue darken-1", "#1e88e5")
	ColorMap.put("blue darken-2", "#1976d2")
	ColorMap.put("blue darken-3", "#1565c0")
	ColorMap.put("blue darken-4", "#0d47a1")
	ColorMap.put("blue accent-1", "#82b1ff")
	ColorMap.put("blue accent-2", "#448aff")
	ColorMap.put("blue accent-3", "#2979ff")
	ColorMap.put("blue accent-4", "#2962ff")
	ColorMap.put("light-blue lighten-5", "#e1f5fe")
	ColorMap.put("light-blue lighten-4", "#b3e5fc")
	ColorMap.put("light-blue lighten-3", "#81d4fa")
	ColorMap.put("light-blue lighten-2", "#4fc3f7")
	ColorMap.put("light-blue lighten-1", "#29b6f6")
	ColorMap.put("light-blue", "#03a9f4")
	ColorMap.put("light-blue darken-1", "#039be5")
	ColorMap.put("light-blue darken-2", "#0288d1")
	ColorMap.put("light-blue darken-3", "#0277bd")
	ColorMap.put("light-blue darken-4", "#01579b")
	ColorMap.put("light-blue accent-1", "#80d8ff")
	ColorMap.put("light-blue accent-2", "#40c4ff")
	ColorMap.put("light-blue accent-3", "#00b0ff")
	ColorMap.put("light-blue accent-4", "#0091ea")
	ColorMap.put("cyan lighten-5", "#e0f7fa")
	ColorMap.put("cyan lighten-4", "#b2ebf2")
	ColorMap.put("cyan lighten-3", "#80deea")
	ColorMap.put("cyan lighten-2", "#4dd0e1")
	ColorMap.put("cyan lighten-1", "#26c6da")
	ColorMap.put("cyan", "#00bcd4")
	ColorMap.put("cyan darken-1", "#00acc1")
	ColorMap.put("cyan darken-2", "#0097a7")
	ColorMap.put("cyan darken-3", "#00838f")
	ColorMap.put("cyan darken-4", "#006064")
	ColorMap.put("cyan accent-1", "#84ffff")
	ColorMap.put("cyan accent-2", "#18ffff")
	ColorMap.put("cyan accent-3", "#00e5ff")
	ColorMap.put("cyan accent-4", "#00b8d4")
	ColorMap.put("teal lighten-5", "#e0f2f1")
	ColorMap.put("teal lighten-4", "#b2dfdb")
	ColorMap.put("teal lighten-3", "#80cbc4")
	ColorMap.put("teal lighten-2", "#4db6ac")
	ColorMap.put("teal lighten-1", "#26a69a")
	ColorMap.put("teal", "#009688")
	ColorMap.put("teal darken-1", "#00897b")
	ColorMap.put("teal darken-2", "#00796b")
	ColorMap.put("teal darken-3", "#00695c")
	ColorMap.put("teal darken-4", "#004d40")
	ColorMap.put("teal accent-1", "#a7ffeb")
	ColorMap.put("teal accent-2", "#64ffda")
	ColorMap.put("teal accent-3", "#1de9b6")
	ColorMap.put("teal accent-4", "#00bfa5")
	ColorMap.put("green lighten-5", "#e8f5e9")
	ColorMap.put("green lighten-4", "#c8e6c9")
	ColorMap.put("green lighten-3", "#a5d6a7")
	ColorMap.put("green lighten-2", "#81c784")
	ColorMap.put("green lighten-1", "#66bb6a")
	ColorMap.put("green", "#4caf50")
	ColorMap.put("green darken-1", "#43a047")
	ColorMap.put("green darken-2", "#388e3c")
	ColorMap.put("green darken-3", "#2e7d32")
	ColorMap.put("green darken-4", "#1b5e20")
	ColorMap.put("green accent-1", "#b9f6ca")
	ColorMap.put("green accent-2", "#69f0ae")
	ColorMap.put("green accent-3", "#00e676")
	ColorMap.put("green accent-4", "#00c853")
	ColorMap.put("light-green lighten-5", "#f1f8e9")
	ColorMap.put("light-green lighten-4", "#dcedc8")
	ColorMap.put("light-green lighten-3", "#c5e1a5")
	ColorMap.put("light-green lighten-2", "#aed581")
	ColorMap.put("light-green lighten-1", "#9ccc65")
	ColorMap.put("light-green", "#8bc34a")
	ColorMap.put("light-green darken-1", "#7cb342")
	ColorMap.put("light-green darken-2", "#689f38")
	ColorMap.put("light-green darken-3", "#558b2f")
	ColorMap.put("light-green darken-4", "#33691e")
	ColorMap.put("light-green accent-1", "#ccff90")
	ColorMap.put("light-green accent-2", "#b2ff59")
	ColorMap.put("light-green accent-3", "#76ff03")
	ColorMap.put("light-green accent-4", "#64dd17")
	ColorMap.put("lime lighten-5", "#f9fbe7")
	ColorMap.put("lime lighten-4", "#f0f4c3")
	ColorMap.put("lime lighten-3", "#e6ee9c")
	ColorMap.put("lime lighten-2", "#dce775")
	ColorMap.put("lime lighten-1", "#d4e157")
	ColorMap.put("lime", "#cddc39")
	ColorMap.put("lime darken-1", "#c0ca33")
	ColorMap.put("lime darken-2", "#afb42b")
	ColorMap.put("lime darken-3", "#9e9d24")
	ColorMap.put("lime darken-4", "#827717")
	ColorMap.put("lime accent-1", "#f4ff81")
	ColorMap.put("lime accent-2", "#eeff41")
	ColorMap.put("lime accent-3", "#c6ff00")
	ColorMap.put("lime accent-4", "#aeea00")
	ColorMap.put("yellow lighten-5", "#fffde7")
	ColorMap.put("yellow lighten-4", "#fff9c4")
	ColorMap.put("yellow lighten-3", "#fff59d")
	ColorMap.put("yellow lighten-2", "#fff176")
	ColorMap.put("yellow lighten-1", "#ffee58")
	ColorMap.put("yellow", "#ffeb3b")
	ColorMap.put("yellow darken-1", "#fdd835")
	ColorMap.put("yellow darken-2", "#fbc02d")
	ColorMap.put("yellow darken-3", "#f9a825")
	ColorMap.put("yellow darken-4", "#f57f17")
	ColorMap.put("yellow accent-1", "#ffff8d")
	ColorMap.put("yellow accent-2", "#ffff00")
	ColorMap.put("yellow accent-3", "#ffea00")
	ColorMap.put("yellow accent-4", "#ffd600")
	ColorMap.put("amber lighten-5", "#fff8e1")
	ColorMap.put("amber lighten-4", "#ffecb3")
	ColorMap.put("amber lighten-3", "#ffe082")
	ColorMap.put("amber lighten-2", "#ffd54f")
	ColorMap.put("amber lighten-1", "#ffca28")
	ColorMap.put("amber", "#ffc107")
	ColorMap.put("amber darken-1", "#ffb300")
	ColorMap.put("amber darken-2", "#ffa000")
	ColorMap.put("amber darken-3", "#ff8f00")
	ColorMap.put("amber darken-4", "#ff6f00")
	ColorMap.put("amber accent-1", "#ffe57f")
	ColorMap.put("amber accent-2", "#ffd740")
	ColorMap.put("amber accent-3", "#ffc400")
	ColorMap.put("amber accent-4", "#ffab00")
	ColorMap.put("orange lighten-5", "#fff3e0")
	ColorMap.put("orange lighten-4", "#ffe0b2")
	ColorMap.put("orange lighten-3", "#ffcc80")
	ColorMap.put("orange lighten-2", "#ffb74d")
	ColorMap.put("orange lighten-1", "#ffa726")
	ColorMap.put("orange", "#ff9800")
	ColorMap.put("orange darken-1", "#fb8c00")
	ColorMap.put("orange darken-2", "#f57c00")
	ColorMap.put("orange darken-3", "#ef6c00")
	ColorMap.put("orange darken-4", "#e65100")
	ColorMap.put("orange accent-1", "#ffd180")
	ColorMap.put("orange accent-2", "#ffab40")
	ColorMap.put("orange accent-3", "#ff9100")
	ColorMap.put("orange accent-4", "#ff6d00")
	ColorMap.put("deep-orange lighten-5", "#fbe9e7")
	ColorMap.put("deep-orange lighten-4", "#ffccbc")
	ColorMap.put("deep-orange lighten-3", "#ffab91")
	ColorMap.put("deep-orange lighten-2", "#ff8a65")
	ColorMap.put("deep-orange lighten-1", "#ff7043")
	ColorMap.put("deep-orange", "#ff5722")
	ColorMap.put("deep-orange darken-1", "#f4511e")
	ColorMap.put("deep-orange darken-2", "#e64a19")
	ColorMap.put("deep-orange darken-3", "#d84315")
	ColorMap.put("deep-orange darken-4", "#bf360c")
	ColorMap.put("deep-orange accent-1", "#ff9e80")
	ColorMap.put("deep-orange accent-2", "#ff6e40")
	ColorMap.put("deep-orange accent-3", "#ff3d00")
	ColorMap.put("deep-orange accent-4", "#dd2c00")
	ColorMap.put("brown lighten-5", "#efebe9")
	ColorMap.put("brown lighten-4", "#d7ccc8")
	ColorMap.put("brown lighten-3", "#bcaaa4")
	ColorMap.put("brown lighten-2", "#a1887f")
	ColorMap.put("brown lighten-1", "#8d6e63")
	ColorMap.put("brown", "#795548")
	ColorMap.put("brown darken-1", "#6d4c41")
	ColorMap.put("brown darken-2", "#5d4037")
	ColorMap.put("brown darken-3", "#4e342e")
	ColorMap.put("brown darken-4", "#3e2723")
	ColorMap.put("grey lighten-5", "#fafafa")
	ColorMap.put("grey lighten-4", "#f5f5f5")
	ColorMap.put("grey lighten-3", "#eeeeee")
	ColorMap.put("grey lighten-2", "#e0e0e0")
	ColorMap.put("grey lighten-1", "#bdbdbd")
	ColorMap.put("grey", "#9e9e9e")
	ColorMap.put("grey darken-1", "#757575")
	ColorMap.put("grey darken-2", "#616161")
	ColorMap.put("grey darken-3", "#424242")
	ColorMap.put("grey darken-4", "#212121")
	ColorMap.put("blue-grey lighten-5", "#eceff1")
	ColorMap.put("blue-grey lighten-4", "#cfd8dc")
	ColorMap.put("blue-grey lighten-3", "#b0bec5")
	ColorMap.put("blue-grey lighten-2", "#90a4ae")
	ColorMap.put("blue-grey lighten-1", "#78909c")
	ColorMap.put("blue-grey", "#607d8b")
	ColorMap.put("blue-grey darken-1", "#546e7a")
	ColorMap.put("blue-grey darken-2", "#455a64")
	ColorMap.put("blue-grey darken-3", "#37474f")
	ColorMap.put("blue-grey darken-4", "#263238")
	ColorMap.put("black", "#000000")
	ColorMap.put("white", "#ffffff")
	ColorMap.put("transparent", "transparent")
	'
	ColorMap.Put("primary", "primary")
	ColorMap.Put("secondary", "secondary")
	ColorMap.Put("accent", "accent")
	ColorMap.Put("neutral", "neutral")
	ColorMap.Put("base", "base")
	ColorMap.Put("info", "info")
	ColorMap.Put("success", "success")
	ColorMap.Put("warning", "warning")
	ColorMap.Put("error", "error")
	ColorMap.Put("ghost", "ghost")
	ColorMap.Put("white", "white")
	ColorMap.Put("red", "red")
	ColorMap.put("black", "black")
	ColorMap.put("blue", "blue")
	ColorMap.put("gray", "gray")
	ColorMap.put("orange", "orange")
	ColorMap.put("yellow", "yellow")
	ColorMap.put("green", "green")
	ColorMap.put("teal", "teal")
	ColorMap.put("indigo", "indigo")
	ColorMap.put("purple", "purple")
	ColorMap.put("pink", "pink")
End Sub

'get the number of specified words
Sub LoremIpsumWords(count As Int) As String
	Dim para1 As String = LoremIpsum(1)
	Dim words As List = StrParse(" ", para1)
	Dim nwords As List = ShuffleList(words)
	Dim nl As List
	nl.Initialize
	Dim wcnt As Int
	For wcnt = 0 To count - 1
		Dim w As String = nwords.Get(wcnt)
		If wcnt = 0 Then w = ProperCase(w)
		nl.Add(w)
	Next
	Dim out As String = Join(" ", nl)
	Return out & "."
End Sub

Sub ShuffleList(pl As List) As List
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

Sub LoremIpsum(count As Int) As String
	Dim str As String = $"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."$
	Dim sb As StringBuilder
	sb.Initialize
	For i = 1 To count
		sb.Append(str).Append(CRLF)
	Next
	Dim sout As String = sb.ToString
	sb.Initialize
	Return sout
End Sub

Sub FixSize(prefix As String, v As String) As String
	prefix = CStr(prefix)
	v = CStr(v)
	If prefix = "" Or v = "" Then Return ""
	Dim res As String = ""
	If v.EndsWith("px") Then
		res = $"${prefix}-[${v}]"$
	else if v.EndsWith("rem") Then
		res = $"${prefix}-[${v}]"$
	else if v.EndsWith("vh") Then
		res = $"${prefix}-[${v}]"$
	else if v.EndsWith("vw") Then
		res = $"${prefix}-[${v}]"$
	else if v.EndsWith("%") Then
		res = $"${prefix}-[${v}]"$
	Else
		res = $"${prefix}-${v}"$
	End If
	If res.EndsWith("-") Then res = ""
	Return res
End Sub

Sub GetHexColor(Color As String, Intensity As String) As String
	Color = Color.ToLowerCase
	Intensity = Intensity.ToLowerCase
	Color = Color.Replace("none", "")
	Intensity = Intensity.Replace("normal", "")
	Dim sCode As String = $"${Color} ${Intensity}"$
	sCode = sCode.Trim
	If ColorMap.ContainsKey(sCode) Then
		Dim hexColor As String = ColorMap.Get(sCode)
		Return hexColor
	Else
		Return sCode
	End If
End Sub


'prefix a color
Sub FixColor(prefix As String, v As String) As String
	prefix = CStr(prefix)
	v = CStr(v)
	v = v.ToLowerCase
	If prefix = "" And v = "" Then Return ""
	Dim nc As String = v
	If ColorMap.ContainsKey(v) Then nc = ColorMap.Get(v)
	v = nc
	Select Case v
		Case "primary", "secondary", "accent", "neutral", "base", "warning", "error", "info", "success", "ghost"
		Case Else
			If v.StartsWith("#") Then
			else if v.StartsWith("\{") Then
			Else
				v = GetHexColor(v, "")
			End If
	End Select
	Dim res As String = ""
	If v.StartsWith("#") Then
		res = $"${prefix}-[${v}]"$
		If prefix = "btn" Then
			res = res.Replace("btn-", "bg-")
		End If
		If prefix = "badge" Then
			res = res.Replace("badge-", "bg-")
		End If
	Else
		res = $"${prefix}-${v}"$
	End If
	If res.EndsWith("-") Then res = ""
	Return res
End Sub

Sub FixShadow(s As String) As String
	Select Case s
		Case "shadow"
			Return s
		Case Else
			Dim x As String = "shadow-" & s
			Return x
	End Select
End Sub

Sub FixRounded(s As String) As String
	Select Case s
	Case "rounded"
		Return s
	Case "0"
		Return "rounded-none"	
	Case Else
		Dim x As String = "rounded-" & s
		Return x
	End Select
End Sub

Sub FixMask(mask As String) As String
	mask = mask.Replace("mask-", "")
	Select Case mask
		Case "rounded-xs", "rounded-md", "rounded-xl","rounded-sm", "rounded-2xl", "rounded-3xl", "rounded", "rounded-full", "rounded-lg"
			Return mask
		Case "circle"
			Return "rounded-full"
		Case "rounded"
			Return "rounded"
		Case "none", ""
			Return ""
		Case Else
			Return "mask mask-" & mask
	End Select
End Sub

Sub CleanID(s As String) As String
	s = CStr(s)
	s = s.tolowercase
	s = s.Replace("#", "")
	s = s.Replace(" ", "")
	s = s.Replace("{", "")
	s = s.Replace("]", "")
	s = s.Replace("[", "")
	s = s.Replace("}", "")
	s = s.Replace("(", "")
	s = s.Replace(")", "")
	s = s.Trim
	Return s
End Sub

Sub CBool(v As Object) As Boolean
	If BANano.IsNull(v) Or BANano.IsUndefined(v) Then
		v = False
	End If
	If GetType(v) = "string" Or GetType(v) = "object" Then
		Dim s As String = v & ""
		s = s.tolowercase
		s = s.trim
		If s = "" Then Return False
		If s = "false" Then Return False
		If S = "true" Then Return True
		If s = "1" Then Return True
		If s = "y" Then Return True
		If s = "0" Then Return False
		If s = "n" Then Return False
		If s = "no" Then Return False
		If s = "yes" Then Return True
		If s = "on" Then Return True
		If s = "off" Then Return False
	End If
	Return v
End Sub

Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub

Sub Join(delimiter As String, lst As List) As String
	If lst.Size = 0 Then Return ""
	Dim i As Int
	Dim sbx As StringBuilder
	Dim fld As String
	sbx.Initialize
	fld = lst.Get(0)
	sbx.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		sbx.Append(delimiter).Append(fld)
	Next
	Dim sout As String = sbx.ToString
	sbx.Initialize
	Return sout
End Sub

'Sub AddForm(tblName As String, tbl As SDUIForm)			'ignore
'	If forms.IsInitialized = False Then forms.Initialize
'	forms.Put(tblName, tbl)
'End Sub
'
'Sub AddTable(tblName As String, tbl As SDUITable)		'ignore
'	If tables.IsInitialized = False Then tables.Initialize
'	tables.Put(tblName, tbl)
'End Sub
'
'Sub AddHint(tblName As String, tbl As SDUIEnjoyHint)		'ignore
'	If hints.IsInitialized = False Then hints.Initialize
'	hints.Put(tblName, tbl)
'End Sub
'
'Sub GetHint(tblName As String) As SDUIEnjoyHint
'	If hints.ContainsKey(tblName) Then
'		Dim tbl As SDUIEnjoyHint = hints.Get(tblName)
'		Return tbl
'	Else
'		Return Null
'	End If
'End Sub
'
'Sub GetForm(tblName As String) As SDUIForm
'	If forms.ContainsKey(tblName) Then
'		Dim tbl As SDUIForm = forms.Get(tblName)
'		Return tbl
'	Else
'		Return Null
'	End If
'End Sub
'
'Sub GetTable(tblName As String) As SDUITable
'	If tables.ContainsKey(tblName) Then
'		Dim tbl As SDUITable = tables.Get(tblName)
'		Return tbl
'	Else
'		Return Null
'	End If
'End Sub

Sub TableExists(tblName As String) As Boolean
	Return tables.ContainsKey(tblName)
End Sub

Sub FormExists(tblName As String) As Boolean
	Return forms.ContainsKey(tblName)
End Sub

Sub HintExists(tblName As String) As Boolean
	Return hints.ContainsKey(tblName)
End Sub

'put recursive object to a map
Sub PutRecursive(data As Map, path As String, value As Object)
	Try
		If BANano.IsNull(path) Or BANano.IsUndefined(path) Then
			path = ""
		End If
		If path = "" Then Return
		Dim prevObj As BANanoObject = data
		If path.IndexOf(".") = -1 Then
			'we dont have a dot
			prevObj.SetField(path, value)
		Else
			'we have a dot
			Dim items As List = BANano.Split(".", path)
			Dim iTot As Int = items.Size
			Dim iCnt As Int
			'
			Dim strprev As String = ""
			Dim prtObj As BANanoObject
			Dim litem As String = items.Get(iTot - 1)
			'
			For iCnt = 1 To iTot - 1
				'get the previos path
				strprev = items.Get(iCnt - 1)
				'the parent object
				prtObj = prevObj.GetField(strprev)
				'this does not exist, create it
				If BANano.IsUndefined(prtObj) Then
					Dim no As Object
					prevObj.SetField(strprev, no)
					prevObj = prevObj.GetField(strprev)
				Else
					prevObj = prtObj
				End If
			Next
			prevObj.SetField(litem, value)
		End If
	Catch	'ignore
	End Try	'ignore
End Sub


Sub DeCamelCase(st As String) As String
	If st.Length = 0 Then Return ""
	Dim k As Int
	Dim s As String
	Dim newst As String = st.CharAt(0)
	For i = 1 To st.Length - 1
		s = st.CharAt(i)
		k = Asc(s)
		If k>64 And k < 91 And st.CharAt(i-1) <> " " Then
			newst = newst & "-" & s
		Else
			newst = newst & s
		End If
	Next
	newst = newst.tolowercase
	Return newst
End Sub

'return proper sub name
Sub ProperSubName(vx As String, removePref As Boolean) As String
	vx = vx.Replace(":", "-")
	vx = vx.Replace(".", "-")
	Dim varList As List = StrParse("-", vx)
	If removePref Then
		varList.RemoveAt(0)
	End If
	Dim varTot As Int = varList.Size - 1
	Dim varCnt As Int
	For varCnt = 0 To varTot
		Dim varItem As String = varList.Get(varCnt)
		varItem = ProperCase(varItem)
		varList.Set(varCnt, varItem)
	Next
	Dim subName1 As String = Join("",varList)
	Return subName1
End Sub

Sub ProperCase(myStr As String) As String
	Try
		If myStr.trim.length = 0 Then Return ""
		Dim x As String
		Dim j, k As Int
		myStr = myStr.tolowercase
		x = myStr.ToUpperCase.CharAt(0)
		myStr = x & myStr.SubString2(1, myStr.Length)
		For j = 1 To myStr.Length
			k = myStr.IndexOf2(" ", j + 1)
			If k = -1 Then Exit
			x = myStr.ToUpperCase.CharAt(k + 1)
			myStr = myStr.SubString2(0, k + 1) & x & myStr.SubString2(k + 2, myStr.Length)
		Next
		Return myStr
	Catch
		Return myStr
	End Try
End Sub


Sub RightSize(v As String) As String
	v = CStr(v)
	If v.EndsWith("px") Or v.EndsWith("rem") Or v.EndsWith("vh") Or v.EndsWith("vw") Or v.EndsWith("%") Then
		Return $"[${v}]"$
	Else
		Return v
	End If
End Sub

Sub StrMid(Text As String, Start As Int) As String
	Return Text.SubString(Start-1)
End Sub

Sub ListRemoveDuplicates(lst As List) As List
	Dim nd As Map = CreateMap()
	For Each k As String In lst
		nd.Put(k, k)
	Next
	Dim nl As List
	nl.Initialize
	For Each k As String In nd.Keys
		nl.Add(k)
	Next
	nl.Sort(True)
	Return nl
End Sub


'count mv string
Sub MvCount(strMV As String, Delimiter As String) As Int
	strMV = CStr(strMV)
	strMV = strMV.Trim
	If strMV = "" Then Return 0
	Dim spValues As List = StrParse(Delimiter,strMV)
	Return spValues.Size
End Sub

Sub CamelCase(idName As String) As String
	idName = idName.trim
	If idName = "" Then Return ""
	Dim ls As StringBuilder
	ls.Initialize
	Dim slen As Int = idName.Length
	Dim i As Int = 0
	For i = 0 To slen - 1
		Dim mout As String = idName.CharAt(i)
		If "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".IndexOf(mout) = -1 Then
			ls.Append("-")
		Else
			ls.Append(mout)
		End If
	Next
	Dim sname As String = ls.tostring
	ls.Initialize
	sname = ProperSubName(sname, False)
	Return sname
End Sub

Sub MvLast(delim As String, value As String) As String
	Dim tot As Int = MvCount(value,delim)
	Return MvField(value,tot,delim)
End Sub

Sub CamelCaseOthers(vx As String) As String
	vx = vx.Replace(":", "-")
	vx = vx.Replace(".", "-")
	Dim varList As List = StrParse("-", vx)
	Dim varTot As Int = varList.Size - 1
	Dim varCnt As Int
	'
	Dim varItem As String = varList.Get(varCnt)
	varItem = varItem.tolowercase
	varList.Set(varCnt, varItem)
	For varCnt = 1 To varTot
		Dim varItem As String = varList.Get(varCnt)
		varItem = ProperCase(varItem)
		varList.Set(varCnt, varItem)
	Next
	Dim subName1 As String = Join("",varList)
	Return subName1
End Sub

'use space
Sub DeCamelCaseSpace(st As String) As String
	If st.Length = 0 Then Return ""
	st = CamelCase(st)
	Dim k As Int
	Dim s As String
	Dim newst As String = st.CharAt(0)
	For i = 1 To st.Length - 1
		s = st.CharAt(i)
		k = Asc(s)
		If k>64 And k < 91 And st.CharAt(i-1) <> " " Then
			newst = newst & " " & s
		Else
			newst = newst & s
		End If
	Next
	Return newst
End Sub

'get recursive data from a map
Sub GetRecursive(data As Map, path As String) As Object
	Try
		Dim prevObj As BANanoObject = data
		If path.IndexOf(".") = -1 Then
			Dim res As Object = prevObj.GetField(path)
			If BANano.IsUndefined(res) Then
				res = Null
			End If
			Return res
		Else
			Dim items As List = BANano.Split(".", path)
			Dim iTot As Int = items.Size
			Dim iCnt As Int
			'
			Dim strprev As String = ""
			Dim prtObj As BANanoObject
			Dim litem As String = items.Get(iTot - 1)
			'
			For iCnt = 1 To iTot - 1
				'get the previos path
				strprev = items.Get(iCnt - 1)
				'the parent object
				prtObj = prevObj.GetField(strprev)
				'this does not exist, return
				If BANano.IsUndefined(prtObj) Then
					Return Null
				Else
					prevObj = prtObj
				End If
			Next
			Dim res As Object = prevObj.GetField(litem)
			If BANano.IsUndefined(res) Then
				res = Null
			End If
			Return res
		End If
	Catch
		Return Null
	End Try
End Sub

Sub StrParse(delim As String, inputString As String) As List
	Dim nl As List
	nl.Initialize
	Try
		inputString = CStr(inputString)
		If BANano.IsNull(inputString) Or BANano.IsUndefined(inputString) Then inputString = ""
		If inputString = "" Then Return nl
		If inputString.IndexOf(delim) = -1 Then
			nl.Add(inputString)
		Else
			nl = BANano.Split(delim,inputString)
		End If
		Return nl
	Catch
		'Log(LastException)
		Return nl
	End Try
End Sub

Sub MvField(sValue As String, iPosition As Int, Delimiter As String) As String
	If sValue.Length = 0 Then Return ""
	Dim xPos As Int = sValue.IndexOf(Delimiter)
	If xPos = -1 Then Return sValue
	Dim mValues As List = StrParse(Delimiter,sValue)
	Dim tValues As Int
	tValues = mValues.size -1
	Select Case iPosition
		Case -1
			Return mValues.get(tValues)
		Case -2
			Return mValues.get(tValues - 1)
		Case -3
			Dim sb As StringBuilder
			sb.Initialize
			Dim startcnt As Int
			sb.Append(mValues.Get(1))
			For startcnt = 2 To tValues
				sb.Append(Delimiter)
				sb.Append(mValues.get(startcnt))
			Next
			Dim sout As String = sb.ToString
			sb.Initialize
			Return sout
		Case Else
			iPosition = iPosition - 1
			If iPosition <= -1 Then
				Return mValues.get(tValues)
			End If
			If iPosition > tValues Then
				Return ""
			End If
			Return mValues.get(iPosition)
	End Select
End Sub

Sub StrParseTrim(delim As String, inputString As String) As List
	Dim nl As List
	nl.Initialize
	Try
		inputString = CStr(inputString)
		If BANano.IsNull(inputString) Or BANano.IsUndefined(inputString) Then inputString = ""
		If inputString = "" Then Return nl
		If inputString.IndexOf(delim) = -1 Then
			nl.Add(inputString)
		Else
			nl = BANano.Split(delim,inputString)
		End If
		Dim nl1 As List = ListTrimItems(nl)
		Return nl1
	Catch
		'Log(LastException)
		Return nl
	End Try
End Sub

Sub ListTrimItems(cols As List) As List
	Dim colTot As Int = cols.Size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim strcol As String = cols.Get(colCnt)
		strcol = strcol.Trim
		cols.Set(colCnt, strcol)
	Next
	Return cols
End Sub


'convert to int
Sub CInt(o As Object) As Int
	o = Val(o)
	Return BANano.parseInt(o)
End Sub


Sub Val(value As String) As String
	value = CStr(value)
	value = value.Trim
	If value = "" Then value = "0"
	Try
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
		Return sout
	Catch
		Return value
	End Try
End Sub


Sub InStr(sText As String, sFind As String) As Int
	Return sText.tolowercase.IndexOf(sFind.tolowercase)
End Sub

'beautify source code
Public Sub BeautifyB4X(sc As String) As Boolean
	Dim lines As List = StrParse(CRLF, sc)
	Dim nIndent As Int
	Dim nLine As Int
	Dim strNewLine As String
	For nLine = 0 To lines.Size - 1
		strNewLine = lines.get(nLine)
		If IsBlockEnd(strNewLine) Then nIndent = nIndent - 1
		If nIndent < 0 Then nIndent = 0
		' Put back new line.
		Dim xLine As String = Space1(nIndent * 4) & strNewLine
		lines.Set(nLine, xLine)
		If IsBlockStart(strNewLine) Then nIndent = nIndent + 1
	Next
	Dim sout As String = Join(CRLF, lines)
	Return sout
End Sub

Sub Space1(HM As Int) As String
	Dim RS As String = ""
	Do While Len1(RS) < HM
		RS = RS & " "
	Loop
	Return RS
End Sub

'is block start
Sub IsBlockStart(strLine As String) As Boolean
	Dim bOK As Boolean
	Dim nPos As Int
	Dim strTemp As String
	nPos = InStr1(strLine, " ") - 1
	If nPos < 0 Then nPos = Len1(strLine)
	strTemp = Left1(strLine, nPos)
	strTemp = strTemp.tolowercase
	Select Case strTemp
		Case "for", "do", "while", "select", "case", "else", "#else", "try", "#region", "sub", "catch"
			bOK = True
		Case "if", "#if", "else", "#else"
			'find the posiiton of then
			Dim p1 As Int = Len1(strLine)
			p1 = BANano.parseInt(p1)
			Dim p2 As Int = InStr1(strLine.tolowercase, " then")
			p2 = BANano.parseInt(p2)
			Dim p3 As Int = p2 + 4
			p3 = BANano.parseInt(p3)
			bOK = (p1 = p3)
		Case "private", "public"
			If strLine.ToLowerCase.StartsWith("private sub ") Then bOK = True
			If strLine.ToLowerCase.StartsWith("public sub ") Then bOK = True
	End Select
	Return bOK
End Sub

'is block end
Sub IsBlockEnd(strLine As String) As Boolean
	Dim bOK As Boolean
	Dim nPos As Int
	Dim strTemp As String
	nPos = InStr1(strLine, " ") - 1
	If nPos < 0 Then nPos = Len1(strLine)
	nPos = BANano.parseInt(nPos)
	'
	strTemp = Left1(strLine, nPos)
	strTemp = strTemp.ToLowerCase
	Select Case strTemp
		Case "next", "loop", "case", "else", "#else", "#end", "catch"
			bOK = True
		Case "end"
			Dim p1 As Int = Len1(strLine)
			p1 = BANano.parseInt(p1)
			bOK = (p1 > 3)
	End Select
	Return bOK
End Sub

'return the position of a string found in a string
Sub InStr1(Text As String, sFind As String) As Int
	Return Text.tolowercase.IndexOf(sFind.tolowercase) + 1
End Sub

' return length of a string
Sub Len1(Text As String) As Long
	Return Text.Length
End Sub

'return the left part of a string
Sub Left1(Text As String, xLength As Long) As String
	If xLength>Text.Length Then xLength=Text.Length
	Return Text.SubString2(0, xLength)
End Sub


'convert multi value string to options
Sub OptionsToMap(opt As String) As Map
	opt = opt.replace("|", ";")
	Dim litems As List = StrParse(";", opt)
	litems = ListTrimItems(litems)
	Dim m As Map = CreateMap()
	For Each item As String In litems
		item = item.Trim
		If item = "" Then Continue
		Dim hascolon As Int = item.IndexOf(":")
		If hascolon = -1 Then
			m.Put(item, item)
		Else
			Dim fpart As String = MvField(item, 1, ":")
			fpart = fpart.Trim
			Dim spart As String = MvField(item, 2, ":")
			spart = spart.Trim
			m.Put(fpart, spart)
		End If
	Next
	Return m
End Sub

'get a page from a list
Sub ListPaginate(lst As List, pageSize As Int, pageNumber As Int) As Paginate1
	Dim xx As Paginate1
	xx.initialize
	Try
		If lst.Size = 0 Then
			xx.previousPage = 0
			xx.nextPage = 0
			xx.totalPages = 0
			xx.items.Initialize
			Return xx
		End If
		Dim res As Map = BANano.RunJavascriptMethod("paginator", Array(lst, pageNumber, pageSize))
		xx.previousPage = res.Get("previousPage")
		xx.nextPage = res.Get("nextPage")
		xx.totalPages = res.Get("totalPages")
		xx.items = res.Get("items")
		Return xx
	Catch
		Log($"ListPaginate: ${LastException}"$)
		Return xx
	End Try
End Sub

#if javascript
var paginator = function paginate(items) {
  var page = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : 1;
  var perPage = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : 10;
  var offset = perPage * (page - 1);
  var totalPages = Math.ceil(items.length / perPage);
  var paginatedItems = items.slice(offset, perPage * page);
  return {
    previousPage: page - 1 ? page - 1 : 0,
    nextPage: totalPages > page ? page + 1 : 0,
    total: items.length,
    totalPages: totalPages,
    items: paginatedItems
  };
};
#End If

'convert the items in a list to a map
Sub ListToSelectOptions(lst As List) As Map
	Dim m As Map = CreateMap()
	For Each item As String In lst
		m.Put(item, item)
	Next
	Return m
End Sub

Sub ListToSelectOptionsSort(lst As List) As Map
	lst.Sort(True)
	Dim m As Map = CreateMap()
	For Each item As String In lst
		m.Put(item, item)
	Next
	Return m
End Sub

'insert a css rule
Sub InsertCSSRule(selector As String, styles As Object)
	BANano.RunJavascriptMethod("insertRule", Array(selector, styles))
End Sub

'remove a css rule 
Sub RemoveCSSRule(selector As String)
	Dim i As BANanoObject
	i.Initialize("insertRule")
	i.RunMethod("remove", selector)
End Sub

Sub TimeAgo(dt As String) As String
	dt = CStr(dt).trim
	If dt = "" Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("moment", Array(dt, "YYYY-MM-DD HH:mm"))
	Dim res As String = bo.RunMethod("fromNow", Null).result
	Return res
End Sub

'format date to meet your needs
Sub FormatDisplayDate(item As String, sFormat As String) As String			'ignoredeadcode
	Try
		item = "" & item
		If item = "" Then Return ""
		If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
		Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(item))
		Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
		If sDate = "Invalid Date" Then Return ""
		'For Each k As String In DateTranslations.Keys
		'	Dim v As String = DateTranslations.Get(k)
		'	sDate = sDate.Replace(k, v)
		'Next
		Return sDate
	Catch
		Return ""
	End Try
End Sub
'format numeric display
Sub FormatDisplayNumber(item As String, sFormat As String) As String			'ignoredeadcode
	Try
		item = "" & item
		If item = "" Then Return ""
		If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
		item = Val(item)
		item = BANano.parseFloat(item)
		Dim bo As BANanoObject = BANano.RunJavascriptMethod("numeral", Array(item))
		Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
		Return sDate
	Catch
		Return ""
	End Try
End Sub
Sub FormatFileSize(Bytes As Float) As String					'ignoredeadcode
	If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then
		Bytes = 0
	End If
	Bytes = BANano.parsefloat(Bytes)
	Try
		Private Unit() As String = Array As String(" Byte", " KB", " MB", " GB", " TB", " PB", " EB", " ZB", " YB")
		If Bytes = 0 Then
			Return "0 Bytes"
		Else
			Private Po, Si As Double
			Private I As Int
			Bytes = Abs(Bytes)
			I = Floor(Logarithm(Bytes, 1024))
			Po = Power(1024, I)
			Si = Bytes / Po
			Return NumberFormat(Si, 1, 3) & Unit(I)
		End If
	Catch
		Return "0 Bytes"
	End Try
End Sub

'make the keys of the maps to lowercase
Sub ListOfMapsKeysToLowerCase(lst As List)
	Dim recTot As Int = lst.Size - 1
	Dim recCnt As Int
	For recCnt = 0 To recTot
		Dim m As Map = lst.Get(recCnt)
		m = MapMakeLowerCaseKeys(m)
		lst.Set(recCnt, m)
	Next
End Sub

'make lowercase
Sub MapMakeLowerCaseKeys(m As Map) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In m.Keys
		Dim nk As String = k.tolowercase
		If nk = k Then Continue
		Dim v As Object = m.Get(k)
		nm.Put(nk, v)
		nm.Remove(k)
	Next
	Return nm
End Sub


'double
Sub CDbl(o As String) As Double
	o = Val(o)
	Dim out As Double = NumberFormat2Fix(o,0,2,2,False)
	Dim nvalue As String = CStr(out)
	nvalue = nvalue.replace(",", ".")
	nvalue = Val(nvalue)
	Dim nout As Double = BANano.parseFloat(nvalue)
	Return nout
End Sub

Sub MakeMoney(sValue As String) As String
	Try
		If BANano.IsNull(sValue) Or BANano.IsUndefined(sValue) Then Return "0.00"
		If sValue.Length = 0 Then Return "0.00"
		If sValue.IndexOf(",") Then sValue = sValue.Replace(",","")
		sValue = Val(sValue)
		If sValue = "0" Then sValue = "000"
		sValue = Round2(sValue,2)
		Return NumberFormat2Fix(sValue, 1, 2, 2, True)
	Catch
		Return sValue
	End Try
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
public Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return BANano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
End Sub
#if JavaScript
function BANano_r2fFIX(number, decimals, minf) {
var decimals2=minf;
if (decimals2<decimals) {decimals2=decimals}
if (decimals2>decimals) {decimals=decimals2}
let v = +(Math.round(number + "e+" + decimals) + "e-" + decimals2);
var s = +v.toFixed(decimals2);
if (s.countDecimals()<=minf) {
return v.toFixed(minf);
} else {
return v.toFixed(decimals2);
}
};
Number.prototype.countDecimals = function () {
if (Math.floor(this.valueOf()) === this.valueOf()) return 0;
var str = this.toString();
if (str.indexOf(".") !== -1 && str.indexOf("-") !== -1) {
return str.split("-")[1] || 0;
} else if (str.indexOf(".") !== -1) {
return str.split(".")[1].length || 0;
}
return str.split("-")[1] || 0;
};
function NumberFormat2(number, minimumIntegers, maximumFractions, minimumFractions,groupingUsed) {
return BANano_nf2(BANano_r2fFIX(number,maximumFractions,minimumFractions),minimumIntegers,groupingUsed);
}
#End If

'<code>
''parse a list of records from data-table to make csv
'Dim csvData As String = ListOfMapsToCSV(records, ",", true)
'</code>
Sub ListOfMapsToCSV(content As List, quotes As Boolean, delimiter As String, hasHeader As Boolean) As String
	Dim config As Map = CreateMap()
	config.Put("quotes", quotes)
	config.Put("delimiter", delimiter)
	config.Put("header", hasHeader)
	config.put("skipEmptyLines", True)
	'
	Dim Papa As BANanoObject
	Papa.Initialize("Papa")
	Dim res As String = Papa.RunMethod("unparse", Array(content, config)).Result
	Return res
End Sub

Sub GetAlphaColor(a As String) As String
	Dim fp As String = a.Trim
	fp = fp.ToUpperCase
	Dim fp1 As String = Left1(fp, 1)
	Dim col As String = ColorMap.GetDefault(fp1, "#ab6210")
	Return col
End Sub

'get full name initials
Sub Initials(FullName As String) As String
	Dim parts As List = StrParse(" ", FullName)
	If parts.Size = 1 Then
		Dim fn As String = parts.Get(0)
		Dim xfn As String = Left1(fn, 1)
		xfn = xfn.ToUpperCase
		Return xfn
	Else
		Dim fn1 As String = parts.Get(0)
		Dim fn2 As String = MvField(FullName, -1, " ")
		Dim xfn1 As String = Left1(fn1, 1)
		Dim xfn2 As String = Left1(fn2, 1)
		Dim afn As String = $"${xfn1}${xfn2}"$
		afn = afn.ToUpperCase
		Return afn
	End If
End Sub


Sub ListIndexOf(lst As List, prop As String, value As String) As Int
	value = CStr(value)
	Dim lstCnt As Int = 0
	Dim lstTot As Int = lst.Size - 1
	Dim rec As Map = CreateMap()
	Dim pos As Int = -1
	For lstCnt = 0 To lstTot
		rec = lst.Get(lstCnt)
		If rec.ContainsKey(prop) Then
			Dim v As String = rec.get(prop)
			v = CStr(v)
			If v.EqualsIgnoreCase(value) Then
				pos = lstCnt
				Exit
			End If
		End If
	Next
	Return pos
End Sub


'get alphabets only
Sub Alpha(value As String) As String
	value = CStr(value)
	Try
		value = value.Trim
		If value = "" Then value = ""
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub

Sub ShowLoader
	Dim lEL As BANanoElement
	lEL.Initialize("#loader-1")
	Dim mStyle As Map = CreateMap()
	mStyle.Put("display", "block")
	lEL.SetStyle(BANano.ToJson(mStyle))
End Sub

Sub HideLoader
	Dim lEL As BANanoElement
	lEL.Initialize("#loader-1")
	Dim mStyle As Map = CreateMap()
	mStyle.Put("display", "none")
	lEL.SetStyle(BANano.ToJson(mStyle))
End Sub

Sub DateAdd(mDate As String, HowManyDays As Int) As String
	DateTime.DateFormat = "yyyy-MM-dd"
	HowManyDays = CInt(HowManyDays)
	Dim ConvertDate, NewDateDay As Long
	ConvertDate = DateTime.DateParse(mDate)
	NewDateDay = DateTime.Add(ConvertDate, 0, 0, HowManyDays)
	Return DateTime.Date(NewDateDay)
End Sub

Sub GetDatesBetween(startDate As String, endDate As String) As List
	DateTime.DateFormat = "yyyy-MM-dd"
	' Initialize the list to hold working dates
	Dim workingDates As List
	workingDates.Initialize

	' Parse the start and end dates
	Dim sd As Long = DateTime.DateParse(startDate)
	Dim ed As Long = DateTime.DateParse(endDate)

	' Loop through all dates from start to end
	For i = sd To ed Step DateTime.TicksPerDay
		' Add the date to the list
		workingDates.Add(DateTime.Date(i))
	Next

	Return workingDates
End Sub


Sub InitMonths
	Months.Initialize
	Months.Put("01", "January")
	Months.Put("02", "February")
	Months.Put("03", "March")
	Months.Put("04", "April")
	Months.Put("05", "May")
	Months.Put("06", "June")
	Months.Put("07", "July")
	Months.Put("08", "August")
	Months.Put("09", "September")
	Months.Put("10", "October")
	Months.Put("11", "November")
	Months.Put("12", "December")
End Sub

Sub GetMonthName3(sMonth As String) As String
	If Months.ContainsKey(sMonth) Then
		Dim xn As String = Months.Get(sMonth)
		Dim nn As String = Left1(xn, 3)
		Return nn
	Else
		Return ""	
	End If
End Sub