B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.2
@EndOfDesignText@
#IgnoreWarnings:12

Sub Class_Globals
	Private qWhere As Map
	Private qOr As Map
	Private qGroupBy As List
	Private qSelect As List
	Private JQ As BANanoObject
	Private BANano As BANano		'ignore
	Private D As String = "$"
	Private qUnique As String
	Private qPluck As String
	Private qOrder As Map
	Private qFind As Map
	Private qLimit As Int = -1
	Private qOffset As Int = -1
End Sub

Public Sub Initialize(jsonObject As Object) As SDUIJSONQuery
	BANano.DependsOnAsset("jsonquery.js")
	Reset
	JQ = BANano.RunJavascriptMethod("JsonQuery", Array(jsonObject))
	Return Me
End Sub

private Sub Reset
	qWhere.Initialize
	qOr.Initialize
	qGroupBy.Initialize
	qSelect.Initialize
	qUnique = ""
	qPluck = ""
	qOrder.Initialize 
	qFind.Initialize 
	qLimit = -1
	qOffset = -1
End Sub

Sub selectFields(flds As List) As SDUIJSONQuery
	qSelect.AddAll(flds)
	Return Me
End Sub

Sub groupBy(fld As String) As SDUIJSONQuery
	qGroupBy.Add($"${fld}"$)
	Return Me
End Sub

Sub whereOr(fld As String, operator As String, val As String) As SDUIJSONQuery
	Dim sop As String = ""
	Select Case operator
	Case "="
		sop = "eq"
	Case "<>"
		sop = "ne"
	Case ">"
		sop = "gt"
	Case "<"
		sop = "lt"
	Case ">="
		sop = "gte"
	Case "<="		
		sop = "lte"
	Case "like"
		sop = "li"
	Case "between"
		sop = "bt"		
	Case "in"
		sop = "in"
	Case "notin"
		sop = "ni"						
	End Select
	qOr.Put($"${fld}.${d}${sop}"$, val)
	Return Me
End Sub

Sub whereEqual(fld As String, val As Object) As SDUIJSONQuery
	qWhere.Put($"${fld}.${d}eq"$, val)
	Return Me
End Sub

Sub whereNotEqual(fld As String, val As Object) As SDUIJSONQuery
	qWhere.Put($"${fld}.${d}ne"$, val)
	Return Me
End Sub

Sub whereLike(fld As String, val As Object) As SDUIJSONQuery
	qWhere.Put($"${fld}.${d}li"$, val)
	Return Me
End Sub

Sub whereBetween(fld As String, val1 As Object, val2 As Object) As SDUIJSONQuery
	Dim flds As List
	flds.Initialize 
	flds.Add(val1)
	flds.Add(val2)
	qWhere.Put($"${fld}.${d}bt"$, flds)
	Return Me
End Sub

Sub whereGreaterThan(fld As String, val As Object) As SDUIJSONQuery
	qWhere.Put($"${fld}.${d}gt"$, val)
	Return Me
End Sub

Sub whereGreaterThanOrEqual(fld As String, val As Object) As SDUIJSONQuery
	qWhere.Put($"${fld}.${d}gte"$, val)
	Return Me
End Sub

Sub whereLessThan(fld As String, val As Object) As SDUIJSONQuery
	qWhere.Put($"${fld}.${d}lt"$, val)
	Return Me
End Sub

Sub whereLessThanOrEqual(fld As String, val As Object) As SDUIJSONQuery
	qWhere.Put($"${fld}.${d}lte"$, val)
	Return Me
End Sub

Sub whereIn(fld As String, values As List) As SDUIJSONQuery
	qWhere.Put($"${fld}.${d}in"$, values)
	Return Me
End Sub

Sub whereNotIn(fld As String, values As List) As SDUIJSONQuery
	qWhere.Put($"${fld}.${d}ni"$, values)
	Return Me
End Sub

Sub Unique(fld As String) As SDUIJSONQuery
	If fld <> "" Then
		qUnique = $"${fld}"$
	End If
	Return Me
End Sub

Sub Pluck(fld As String) As SDUIJSONQuery
	If fld <> "" Then
		qPluck = $"${fld}"$
	End If
	Return Me
End Sub

Sub OrderAsc(fld As String) As SDUIJSONQuery
	qOrder.put($"${fld}"$, $"asc"$)
	Return Me
End Sub

Sub OrderDesc(fld As String) As SDUIJSONQuery
	qOrder.put($"${fld}"$, $"desc"$)
	Return Me
End Sub

Sub Find(fld As String, val As Object) As SDUIJSONQuery
	qFind.Put($"${fld}"$, val)
	Return Me
End Sub

Sub Limit(i As Int) As SDUIJSONQuery
	qLimit = i
	Return Me
End Sub

Sub Offset(i As Int) As SDUIJSONQuery
	qOffset = i
	Return Me
End Sub

Sub Exec As List
	If qSelect.Size > 0 Then
		JQ = JQ.RunMethod("select", qSelect)
	End If
	If qGroupBy.Size > 0 Then
		JQ = JQ.RunMethod("groupBy", qGroupBy)
	End If
	If qWhere.Size > 0 Then
		JQ = JQ.RunMethod("where", qWhere)
	End If
	If qOr.Size > 0 Then
		JQ = JQ.RunMethod("or", qOr)
	End If
	If qUnique <> "" Then
		JQ = JQ.RunMethod("uniq", qUnique)
	End If
	If qPluck <> "" Then
		JQ = JQ.RunMethod("pluck", qPluck)
	End If
	If qOrder.Size <> 0 Then
		JQ = JQ.RunMethod("order", qOrder)
	End If
	If qLimit <> -1 Then
		JQ = JQ.RunMethod("limit", qOrder)
	End If
	If qLimit <> -1 Then
		JQ = JQ.RunMethod("offset", qOffset)
	End If
	If qFind.Size <> 0 Then
		JQ = JQ.RunMethod("find", qFind)
	End If
	Dim lst As List = JQ.RunMethod("exec", Null).result
	Return lst
End Sub
