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
	Private BANano As BANano		'ignore
'	Private math As BANanoObject	'ignore
	Type Paginate(previousPage As Int, nextPage As Int, totalPages As Int, items As List)
	Public ColorMap As Map
	Public Months As Map
	Public Days As Map
End Sub

'https://www.b4x.com/android/forum/threads/banano-numberformat2-gives-a-different-behavior-in-banano-than-in-b4j.134409/#post-850371
public Sub NumberFormat2Fix(number As Double, minimumIntegers As Int, maximumFractions As Int, minimumFractions As Int, groupingUsed As Boolean) As Double
	Return BANano.RunJavascriptMethod("NumberFormat2", Array(number, minimumIntegers, maximumFractions, minimumFractions, groupingUsed))
End Sub

Sub Val(InputStr As String) As String
	InputStr = CStr(InputStr)
	InputStr = InputStr.Trim
	If InputStr = "" Then InputStr = "0"
	
	Dim AllowedChars As String = "0123456789.-"
	Dim Result As StringBuilder
	Result.Initialize
    
	For i = 0 To InputStr.Length - 1
		Dim sChar As String = InputStr.CharAt(i)
		If AllowedChars.IndexOf(sChar) <> -1 Then
			Result.Append(sChar)
		End If
	Next    
	Return Result.ToString
End Sub

'convert to int
Sub CInt(o As Object) As Int
	o = Val(o)
	Return BANano.parseInt(o)
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

'code for DOMContentLoaded
Sub DOMContentLoaded As String
	Dim str As String = $"var body = document.getElementById("body");
    var loader1 = document.createElement("div");
    loader1.setAttribute("id", "loader-1")
    loader1.style.cssText = 'display:block;top:0px;position:fixed;width:100%;height:100%;z-index:999999';
    var loader = document.createElement("div");
    loader.setAttribute("id", "loader")
    loader1.appendChild(loader);
    body.appendChild(loader1);"$
	Return str
End Sub


Sub InitDays				'ignoredeadcode
	Days.Initialize
	Dim x As Int = 0
	For x = 1 To 31
		Dim nd As String = PadRight(x, 2, "0")
		Days.Put(nd, nd)
	Next
End Sub


'get the length of the string
Sub Len(Text As String) As Int
	Return Text.Length
End Sub


Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub

Sub PadRight(Value As String, MaxLen As Int, PadChar As String) As String
	Value = CStr(Value)
	Dim intOrdNoLen As Int = Len(Value)
	Dim i As Int
	For i = 1 To (MaxLen - intOrdNoLen) Step 1
		Value = PadChar & Value
	Next
	Return Value
End Sub


Sub InitColors					'ignoredeadcode
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



Sub InitMonths				'ignoredeadcode
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



#if css	
	.hidden {
		display: none !important
	}
	.unselectable {
    	-webkit-touch-callout: none;
    	-webkit-user-select: none;
    	-khtml-user-select: none;
    	-moz-user-select: none;
    	-ms-user-select: none;
    	user-select: none;
	}
	body {
		scrollbar-gutter: unset;
	}
	.tlradius {
		border-top-left-radius:var(--radius-field,.25rem) !important;
	}
	.blradius {
		border-bottom-left-radius:var(--radius-field,.25rem) !important;
	}
	.trradius {
		border-top-right-radius:var(--radius-field,.25rem) !important;
	}
	.brradius {
		border-bottom-right-radius:var(--radius-field,.25rem) !important;
	}
	input[type=search] {
		-webkit-appearance: searchfield !important;
	} 
	input[type=search]::-webkit-search-cancel-button {
		-webkit-appearance: searchfield-cancel-button !important;
	}
	.input-group {
    	display: flex;
    	width: 100%;
    	align-items: stretch
	}
	.input-group :where(span) {
    	display: flex;
    	align-items: center;
    	--tw-bg-opacity: 1;
    	background-color: hsl(var(--b3) / var(--tw-bg-opacity));
    	padding-left: 1rem;
    	padding-right: 1rem
	}
	.input-group > :first-child {
    	border-top-left-radius: var(--rounded-btn, 0.25rem);
    	border-top-right-radius: 0;
    	border-bottom-left-radius: var(--rounded-btn, 0.25rem);
    	border-bottom-right-radius: 0
	}
	.input-group > :last-child {
    	border-top-left-radius: 0;
    	border-top-right-radius: var(--rounded-btn, 0.25rem);
    	border-bottom-left-radius: 0;
    	border-bottom-right-radius: var(--rounded-btn, 0.25rem)
	}
	.form-control {
  		display: flex;
  		flex-direction: column;
	}
	.label-text {
  		font-size: 0.875rem;
  		line-height: 1.25rem;
  		--tw-text-opacity: 1;
  		color: var(--fallback-bc, oklch(var(--bc) / var(--tw-text-opacity)));
	}
	.label-text-alt {
  		font-size: 0.75rem;
  		line-height: 1rem;
  		--tw-text-opacity: 1;
  		color: var(--fallback-bc, oklch(var(--bc) / var(--tw-text-opacity)));
	}
	

.progress::-webkit-progress-value {
  border-radius: 9999px;
}

.progress::-moz-progress-bar {
  border-radius: 9999px;
}

.flatpickr-wrapper {
	width:100%
}
#End If


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
