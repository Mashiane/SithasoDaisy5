B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.8
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private obj As BANanoObject
	Private BANano As BANano  'ignore
	Private mCallBack As Object
	Private intList As List
End Sub

'initialize array from items
'<code>
'Dim a1 As JSArray
'a1.Initialize(Me, Array As String("Anele", "Mbanga", "(Mashy)"))
'</code>
Sub Initialize(Module As Object, nItems As List) As JSArray
	mCallBack = Module
	obj.Initialize2("Array", Null)
	For Each item As Object In nItems
		push(item)
	Next
	intList = nItems
	Return Me	
End Sub

Sub set(idx As Int, item As Object)
	intList.Set(idx, item)
	obj.Initialize2("Array", intList)
End Sub

Sub get(idx As Int) As Object
	Return intList.Get(idx)
End Sub

'returns an indexed element from an array.
Sub at(idx As Int) As Object
	Dim item As Object = obj.RunMethod("at", idx).Result
	Return item
End Sub
'
'includes - if an array contains a specified value.
Sub includes(value As Object, aStart As Int) As Boolean
	Dim rslt As Boolean = obj.RunMethod("includes", Array(value, aStart)).Result
	Return rslt
End Sub

'lastIndexOf - return last index of item
Sub lastIndexOf1(value As Object, aStart As Int) As Int
	Dim rslt As Int = obj.RunMethod("lastIndexOf", Array(value, aStart)).Result
	Return rslt
End Sub

'indexOf - return index of item
Sub indexOf1(value As Object, aStart As Int) As Int
	Dim rslt As Int = obj.RunMethod("indexOf", Array(value, aStart)).Result
	Return rslt
End Sub

'Copy the first two array elements to the last two array elements
'atarget - The index (position) to copy the elements to
'astart - The start index (position). Default is 0.
'aend - The end index (position). Default is the array length.
'<code>
'fruits.copyWithin(2, 0, null)
'</code>
Sub copyWithin(atarget As Object, astart As Object, aend As Object) As JSArray
	If BANano.IsNull(aend) Then
		obj.RunMethod("copyWithin", Array(atarget, astart))
	Else
		obj.RunMethod("copyWithin", Array(atarget, astart, aend))
	End If
	intList = obj.Result
	Return Me
End Sub

'reverse
Sub reverse As JSArray
	obj.RunMethod("reverse", Null)
	intList = obj.Result
	Return Me
End Sub

'splice - remove items in an array
'pos - position
'remove - how many items to delete
Sub splice(pos As Int, remove As Int) As JSArray
	obj.RunMethod("splice", Array(pos, remove))
	intList = obj.Result
	Return Me
End Sub

'splice - add items in an array
'pos - position
'remove - how many items to delete
'fruits.splice1(2, 0, "Lemon", "Kiwi");
Sub splice1(pos As Int, remove As Int, item As Object) As JSArray
	obj.RunMethod("splice", Array(pos, remove, item))
	intList = obj.Result
	Return Me
End Sub


'slice - slices out a piece of an array into a new array.
'does not remove elements from the old array
'endAt is exclusive, if not specified, slices the whole of the array
Sub slice(startat As Int, endat As Int) As JSArray
	Dim bo As BANanoObject
	If BANano.IsNull(endat) Then
		bo = obj.RunMethod("slice", Array(startat))
	Else
		bo = obj.RunMethod("slice", Array(startat, endat))
	End If
	Return ToJSArray(bo) 
End Sub

'addAll
Sub addAll(nitems As List) As JSArray
	If BANano.IsNull(nitems) = False Then
		For Each Item As Object In nitems
			push(Item)
		Next
	End If
	Return Me	
End Sub

'return the items of the araray
Sub items As List
	Return obj.result
End Sub

'assign object
Sub InitializeBO(bo As BANanoObject) As JSArray
	obj = bo
	intList = obj.Result
	Return Me	
End Sub

'creates a new array by merging (concatenating) existing arrays:
Sub concat(otherArray As JSArray) As JSArray
	Dim bo As BANanoObject = otherArray.obj
	Dim rslt As BANanoObject = obj.RunMethod("concat", bo)
	Return ToJSArray(rslt)
End Sub

'creates a new array by merging (concatenating) existing arrays:
Sub concatList(otherArray As List) As JSArray
	Dim rslt As BANanoObject = obj.RunMethod("concat", otherArray)
	Return ToJSArray(rslt)
End Sub

'convert to jsarray
Sub ToJSArray(bo As BANanoObject) As JSArray
	Dim el As JSArray
	el.InitializeBO(bo)
	Return el
End Sub

'shift - removes the first array element and "shifts" all other elements to a lower index.
'it all returns the value that was shifted out.
Sub shift As Object
	Dim rslt As Object = obj.RunMethod("shift", Null).result
	intList = obj.Result
	Return rslt
End Sub

'add an item to an array and return array length
Sub push(Item As Object) As Int
	Dim rslt As Int = obj.RunMethod("push", Item).result
	intList = obj.Result
	Return rslt
End Sub

'adds a new element to an array (at the beginning), and "unshifts" older elements
'it will return the new array length
Sub unshift(Item As Object) As Int
	Dim rslt As Int = obj.RunMethod("unshift", Item).result
	intList = obj.Result
	Return rslt
End Sub

'returns the array itself
Sub valueOf As Object
	Dim rslt As Object = obj.RunMethod("valueOf", Null).result
	Return rslt
End Sub

'get Length of an arry to a variable
Sub lengthOf() As Int
	Dim rslt As Int = obj.getfield("length").Result
	Return rslt
End Sub

'fill all values with this value
Sub fill(value As Object) As JSArray
	obj.RunMethod("fill", Array(value))
	intList = obj.Result
	Return Me
End Sub

Sub fill1(value As Object, startPos As Int, endPos As Int) As JSArray
	obj.RunMethod("fill", Array(value, startPos, endPos))
	intList = obj.Result
	Return Me
End Sub


'toString - converts an array to a string of (comma separated) array values.
Sub toString As String
	Dim rslt As String = obj.RunMethod("toString", Null).Result
	Return rslt
End Sub

'pop - removes last element and returns it
Sub pop As Object
	Dim rslt As Object = obj.RunMethod("pop", Null).Result
	intList = obj.Result
	Return rslt
End Sub

'keys -  containing the keys of the array
Sub keys As List
	Dim rslt As List = obj.RunMethod("keys", Null).Result
	Return rslt
End Sub

'join using delim
Sub join(delim As String) As String
	Dim rslt As String = obj.RunMethod("join", Array(delim)).Result
	Return rslt
End Sub

'<code>
''Calls a function for each element in the array
'Dim text As String = "<ul>"
'Dim nArray As JSArray
'nArray.Initialize(Array As String("apple", "orange", "cherry"))
'nArray.forEach("buildList")
'text = text & "<ul>"
'log(text)
'Sub buildlist(value As Object, index As Int, arr As List)
'	text = text & "<li>" & value & "</li>"
'End Sub
'</code>
Sub forEach(methodName As String) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(value, index, arr))
	Dim rslt As BANanoObject = obj.RunMethod("forEach", cb)
	Return rslt.Result
End Sub

'<code>
''creates a new array from calling a function for every array element.
'Dim numbers1 As JSArray
'numbers1.Initialize(Array As Int(45, 4, 9, 16, 25))
'Dim numbers2 As JSArray = numbers1.map("myFunction")
'Log(numbers2.items)
'Sub myFunction(value As Object, index As Int, arr As List) As Object
'	value = BANano.parseInt(value)
'	Return value * 2
'End Sub
'</code>
Sub map(methodName As String) As JSArray
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(value, index, arr))
	Dim rslt As BANanoObject = obj.RunMethod("map", cb)
	Return ToJSArray(rslt)
End Sub

'<code>
''Check if all values meet some criteria, returns true/false
'Dim sout As Boolean = ages.every("checkadult")
'Log("every: " & sout)
'Sub checkadult(value As Object, index as int, arr As List) As Boolean
'	value = BANano.parseint(value)
'	Return value >= 18
'End Sub
'</code>
Sub every(methodName As String) As Boolean
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(value, index, arr))
	Dim rslt As BANanoObject = obj.RunMethod("every", cb)
	Return rslt.result
End Sub

'some callback
'<code>
''Checks if any array elements pass a test 
''Return an array of all values meeting the filter criteria
'Dim xout As object = ages.some("checkadult")
'Log("some: " & xout.items)
'Sub checkadult(value As Object, index As Int, arr As List) As Boolean
'	value = BANano.parseint(value)
'	Return value >= 18
'End Sub
'</code>
Sub some(methodName As String) As Boolean
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(value, index, arr))
	Dim rslt As BANanoObject = obj.RunMethod("some", cb)
	Return rslt.result
End Sub

'filter callback
'<code>
''Return an array of all values meeting the filter criteria
'Dim xout As JSArray = ages.filter("checkadult")
'Log("filter: " & xout.items)
'Sub checkadult(value As Object, index As Int, arr As List) As Boolean
'	value = BANano.parseint(value)
'	Return value >= 18
'End Sub
'</code>
Sub filter(methodName As String) As JSArray
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("filter", cb)
	Return ToJSArray(bo)
End Sub

'<code>
''returns a single value: the function's accumulated result.
'Dim numbersx As JSArray
'numbersx.Initialize(Array As Int(45, 4, 9, 16, 25))
'Dim sumx As Int  = numbersx.reduce("sumThem", 100)
'Log(sumx)
'Sub sumThem(total As Object, value As Object, index As Int, arr As List) As Object
'	total = BANano.parseInt(total)
'	value = BANano.parseInt(value)
'	total = total + value
'	Return total
'End Sub
'</code>
Sub reduce(methodName As String, initValue As Int) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim total As Int = 0
	If BANano.IsNull(initValue) = False Then
		total = BANano.parseInt(initValue)
	End If
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(total, value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("reduce", cb)
	Return bo.result
End Sub

'reduceRight callback
'<code>
''returns a single value: the function's accumulated result fro right to left
'Dim numbersx As JSArray
'numbersx.Initialize(Array As Int(45, 4, 9, 16, 25))
'Dim sumx As Int  = numbersx.reduceRight("sumThemR", 100)
'Log(sumx)
'Sub sumThemR(total As Object, value As Object, index As Int, arr As List) As Object
'	total = BANano.parseInt(total)
'	value = BANano.parseInt(value)
'	total = total + value
'	Return total
'End Sub
'</code>
Sub reduceRight(methodName As String, initValue As Int) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim total As Int = 0
	If BANano.IsNull(initValue) = False Then
		total = BANano.parseInt(initValue)
	End If
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(total, value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("reduceRight", cb)
	Return bo.result
End Sub

'<code>
''returns the value of the first element that passes a test.
'Dim xout As JSArray = ages.find("checkadult")
'Log("find: " & xout.items)
'Sub checkadult(value As Object, index As Int, arr As List) As Boolean
'	value = BANano.parseint(value)
'	Return value >= 18
'End Sub
'</code>
Sub find(methodName As String) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("find", cb)
	Return bo.result
End Sub

'<code>
''returns the index (position) of the first element that passes a test.
'Dim xout As Int = ages.findIndex("checkadult")
'Log("findIndex: " & xout.items)
'Sub checkadult(value As Object, index As Int, arr As List) As Boolean
'	value = BANano.parseint(value)
'	Return value >= 18
'End Sub
'</code>
Sub findIndex(methodName As String) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("findIndex", cb)
	Return bo.result
End Sub


'<code>
''maps all array elements and creates a new flat array..
'Dim xout As Int = ages.flatMap("checkadult")
'Log("findIndex: " & xout.items)
'Sub flatMap(value As Object, index As Int, arr As List) As Boolean
'	value = BANano.parseint(value)
'	Return value >= 18
'End Sub
'</code>
Sub flatMap(methodName As String) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("flatMap", cb)
	Return bo.result
End Sub


'returns an Array Iterator object with key/value pairs:
Sub entries() As List
	Dim rslt As List = obj.runmethod("entries", Null).result
	Return rslt
End Sub

'concatenates sub-array elements.
Sub flat() As List
	Dim rslt As List = obj.runmethod("flat", Null).result
	Return rslt
End Sub

'array sort using strings
Sub sort(Ascending As Boolean) As JSArray
	obj.RunMethod("sort", Null)
	If Ascending = False Then obj.RunMethod("reverse", Null)
	Return Me
End Sub

'convert to json
Sub ToJSON As String
	Return BANano.ToJson(obj)
End Sub

'from json
Sub FromJSON(sJSON As String) As JSArray
	obj = BANano.FromJson(sJSON)
	Return Me
End Sub

'get the min value
Sub minValue As Object
	Private objMath As BANanoObject
	objMath.Initialize("Math")
	Dim rslt As Object = objMath.GetFunction("min").RunMethod("apply", Array(objMath, obj)).Result
	Return rslt
End Sub

'get the max value
Sub maxValue As Object
	Private objMath As BANanoObject
	objMath.Initialize("Math")
	Dim rslt As Object = objMath.GetFunction("max").RunMethod("apply", Array(objMath, obj)).Result
	Return rslt
End Sub