B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
' Your BANano library
#IgnoreWarnings:12
#Event: EnjoyStarted (e As BANanoEvent)
#Event: EnjoyEnded (e As BANanoEvent)
#Event: EnjoySkip (e As BANanoEvent)

Sub Class_Globals
	Private BANano As BANano 'ignore
	Private stepsm As Map
	Private mback As Object		'ignore
	Private mEvent As String	'ignore
	Private count As Int
	Public Unique As Boolean
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(Module As Object, EventName As String, bUnique As Boolean)
	stepsm.Initialize
	mback = Module
	mEvent = CleanID(EventName)
	count = 0
	Unique = bUnique
End Sub

private Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	If o = "null" Then Return ""
	If o = "undefined" Then Return ""
	Return "" & o
End Sub

private Sub CleanID(s As String) As String
	s = CStr(s)
	s = s.tolowercase
	s = s.Replace("#", "")
	s = s.Replace(" ", "")
	s = s.Trim
	Return s
End Sub

Sub JoinDescription(items As List) As String
	Dim s As String = Join("<br/>", items)
	Return s
End Sub

'join list to mv string
private Sub Join(delimiter As String, lst As List) As String
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


private Sub StrParse(delim As String, inputString As String) As List
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


private Sub MvField(sValue As String, iPosition As Int, Delimiter As String) As String
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

'add a hint for the element
Sub AddStep(eID As String,eDescription As String) As String
	eID = CleanID(eID)
	If eID = "" Then Return ""
	If BANano.Exists($"#${eID}"$) = False Then Return ""
	count = BANano.parseInt(count) + 1
	Dim nkey As String = $"${eID}.${count}"$
	Dim eachstep As Map
	eachstep.Initialize
	Dim sKey As String = $"next #${eID}"$
	eachstep.Put(sKey,eDescription)
	If Unique = False Then
		stepsm.Put(nkey, eachstep)
	Else
		stepsm.Put(eID, eachstep)
	End If	
	Return nkey
End Sub

'add a hint for the element
Sub AddStepAsIs(eID As String,eDescription As String) As String
	If eID = "" Then Return ""
	If BANano.Exists($"#${eID}"$) = False Then Return ""
	count = BANano.parseInt(count) + 1
	Dim nkey As String = $"${eID}.${count}"$
	Dim eachstep As Map
	eachstep.Initialize
	Dim sKey As String = $"next #${eID}"$
	eachstep.Put(sKey,eDescription)
	If Unique = False Then
		stepsm.Put(nkey, eachstep)
	Else
		stepsm.Put(eID, eachstep)
	End If
	Return nkey
End Sub

'add a hint for the element that runs on click
Sub AddClick(eID As String,eDescription As String) As String
	eID = CleanID(eID)
	If eID = "" Then Return ""
	If BANano.Exists($"#${eID}"$) = False Then Return ""
	count = BANano.parseInt(count) + 1
	Dim nkey As String = $"${eID}.${count}"$
	Dim eachstep As Map
	eachstep.Initialize
	Dim sKey As String = $"click #${eID}"$
	eachstep.Put(sKey,eDescription)
	If Unique = False Then
		stepsm.Put(nkey, eachstep)
	Else
		stepsm.Put(eID, eachstep)
	End If
	Return nkey
End Sub

'add a hint for the element that runs on click
Sub AddClickAsIs(eID As String,eDescription As String) As String
	If eID = "" Then Return ""
	If BANano.Exists($"#${eID}"$) = False Then Return ""
	count = BANano.parseInt(count) + 1
	Dim nkey As String = $"${eID}.${count}"$
	Dim eachstep As Map
	eachstep.Initialize
	Dim sKey As String = $"click #${eID}"$
	eachstep.Put(sKey,eDescription)
	If Unique = False Then
		stepsm.Put(nkey, eachstep)
	Else
		stepsm.Put(eID, eachstep)
	End If
	Return nkey
End Sub

'add a hint to the element that runs when ENTER is pressed
Sub AddKeyPress(eID As String,eDescription As String) As String
	eID = CleanID(eID)
	If eID = "" Then Return ""
	If BANano.Exists($"#${eID}"$) = False Then Return ""
	count = BANano.parseInt(count) + 1
	Dim nkey As String = $"${eID}.${count}"$
	Dim eachstep As Map
	eachstep.Initialize
	Dim sKey As String = $"key #${eID}"$
	eachstep.Put(sKey,eDescription)
	eachstep.Put("keyCode", "13")
	If Unique = False Then
		stepsm.Put(nkey, eachstep)
	Else
		stepsm.Put(eID, eachstep)
	End If
	Return nkey
End Sub

'add a hint to the element that runs when ENTER is pressed
Sub AddKeyPressAsIs(eID As String,eDescription As String) As String
	If eID = "" Then Return ""
	If BANano.Exists($"#${eID}"$) = False Then Return ""
	count = BANano.parseInt(count) + 1
	Dim nkey As String = $"${eID}.${count}"$
	Dim eachstep As Map
	eachstep.Initialize
	Dim sKey As String = $"key #${eID}"$
	eachstep.Put(sKey,eDescription)
	eachstep.Put("keyCode", "13")
	If Unique = False Then
		stepsm.Put(nkey, eachstep)
	Else
		stepsm.Put(eID, eachstep)
	End If
	Return nkey
End Sub

'indicate the ending element of the running hints
Sub EndsOn(eID As String, Description As String)
	eID = CleanID(eID)
	If eID = "" Then Return
	SetNextButton(eID, Description)
	HideSkip(eID)
End Sub

'indicate the ending element of the running hints
Sub EndsOnAsIs(eID As String, Description As String)
	If eID = "" Then Return
	SetNextButton(eID, Description)
	HideSkip(eID)
End Sub

'hide skip for an element
Sub HideSkip(eID As String)
	eID = CleanID(eID)
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		rec.Put("showSkip", False)
		stepsm.Put(eID,rec)
	End If
End Sub

'hide skip for an element
Sub HideSkipAsIs(eID As String)
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		rec.Put("showSkip", False)
		stepsm.Put(eID,rec)
	End If
End Sub

'hide next step for an element
Sub HideNext(eID As String)
	eID = CleanID(eID)
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		rec.Put("showNext", False)
		stepsm.Put(eID,rec)
	End If
End Sub

'hide next step for an element
Sub HideNextAsIs(eID As String)
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		rec.Put("showNext", False)
		stepsm.Put(eID,rec)
	End If
End Sub

'set a method to fire before the step starts
Sub SetOnBeforeStart(eID As String, Module As Object, MethodName As String)
	eID = CleanID(eID)
	If eID = "" Then Return
	Dim rec As Map = CreateMap()
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		Dim cb As BANanoObject = BANano.CallBack(Module, MethodName, Null)
		rec.Put("onBeforeStart", cb)
		stepsm.Put(eID,rec)
	End If
End Sub

'set the next item text for the element
Sub SetNextButton(eID As String, Text As String)
	eID = CleanID(eID)
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		Dim sb As Map = CreateMap("text":Text)
		rec.Put("nextButton",sb)
		stepsm.Put(eID,rec)
	End If
End Sub

'set the next item text for the element
Sub SetNextButtonAsIs(eID As String, Text As String) 
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		Dim sb As Map = CreateMap("text":Text)
		rec.Put("nextButton",sb)
		stepsm.Put(eID,rec)
	End If
End Sub

'set the skip button text for the element
Sub SetSkipButton(eID As String, Text As String)
	eID = CleanID(eID)
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		Dim sb As Map = CreateMap("text":Text)
		rec.Put("skipButton",sb)
		stepsm.Put(eID,rec)
	End If
End Sub

'set the skip button text for the element
Sub SetSkipButtonAsIs(eID As String, Text As String)
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		Dim sb As Map = CreateMap("text":Text)
		rec.Put("skipButton",sb)
		stepsm.Put(eID,rec)
	End If
End Sub

'set an element to show a circle hint
Sub SetCircle(eID As String, radius As Int)
	eID = CleanID(eID)
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		rec.Put("shape","circle")
		If radius > 0 Then rec.Put("radius", radius)
		stepsm.Put(eID,rec)
	End If
End Sub

'set an element to show a circle hint
Sub SetCircleAsIs(eID As String, radius As Int)
	If eID = "" Then Return
	Dim rec As Map
	If stepsm.ContainsKey(eID) Then
		rec = stepsm.Get(eID)
		rec.Put("shape","circle")
		If radius > 0 Then rec.Put("radius", radius)
		stepsm.Put(eID,rec)
	End If
End Sub

'run the hints
Sub Run(Module As Object)
	'build the steps
	Dim enjoyhint_script_steps As List
	enjoyhint_script_steps.Initialize
	For Each stepm As Map In stepsm.Values
		enjoyhint_script_steps.Add(stepm)
	Next
	'create the object
	Dim easySteps_instance As BANanoObject
	Dim opt As Map = CreateMap()
	If SubExists(Module, $"${mEvent}_EnjoyStarted"$) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, $"${mEvent}_EnjoyStarted"$, Null)
		opt.Put("onStart", cb)
	End If
	If SubExists(Module, "EnjoyStarted") Then
		Dim cb1 As BANanoObject = BANano.CallBack(Module, $"${mEvent}_EnjoyEnded"$, Null)
		opt.Put("onEnd", cb1)
	End If
	If SubExists(Module, "EnjoySkip") Then
		Dim cb2 As BANanoObject = BANano.CallBack(Module, $"${mEvent}_EnjoySkip"$, Null)
		opt.Put("onSkip ", cb2)
	End If
	easySteps_instance.Initialize2("EnjoyHint", opt)
	easySteps_instance.RunMethod("set",Array(enjoyhint_script_steps))
	easySteps_instance.RunMethod("run",Null)
End Sub
