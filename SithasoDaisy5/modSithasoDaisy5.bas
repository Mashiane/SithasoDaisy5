B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Private tables As Map
	Private forms As Map
	Private hints As Map
	Public EmojiData As Map
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
