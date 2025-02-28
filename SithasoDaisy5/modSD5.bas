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
	'Private math As BANanoObject	'ignore
	Type Paginate(previousPage As Int, nextPage As Int, totalPages As Int, items As List)
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

#if css
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
	input[type=search]::-webkit-search-cancel-	button {
		-webkit-appearance: searchfield-cancel-button !important;
	}
	.flatpickr-wrapper {
		width:100%
	}
	.hide {
		display: none !important
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
    	border-top-left-radius: var(--rounded-btn, 0.5rem);
    	border-top-right-radius: 0;
    	border-bottom-left-radius: var(--rounded-btn, 0.5rem);
    	border-bottom-right-radius: 0
	}
	.input-group > :last-child {
    	border-top-left-radius: 0;
    	border-top-right-radius: var(--rounded-btn, 0.5rem);
    	border-bottom-left-radius: 0;
    	border-bottom-right-radius: var(--rounded-btn, 0.5rem)
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
	.container,
.container-fluid,
.container-lg,
.container-md,
.container-sm,
.container-xl,
.container-xxl {
  --bs-gutter-x: 1.5rem;
  --bs-gutter-y: 0;
  width: 100%;
  padding-right: calc(var(--bs-gutter-x) * 0.5);
  padding-left: calc(var(--bs-gutter-x) * 0.5);
  margin-right: auto;
  margin-left: auto;
}


@media (min-width: 576px) {
  .container,
  .container-sm {
    max-width: 540px;
  }
}
@media (min-width: 768px) {
  .container,
  .container-md,
  .container-sm {
    max-width: 720px;
  }
}
@media (min-width: 992px) {
  .container,
  .container-lg,
  .container-md,
  .container-sm {
    max-width: 960px;
  }
}
@media (min-width: 1200px) {
  .container,
  .container-lg,
  .container-md,
  .container-sm,
  .container-xl {
    max-width: 1140px;
  }
}
@media (min-width: 1400px) {
  .container,
  .container-lg,
  .container-md,
  .container-sm,
  .container-xl,
  .container-xxl {
    max-width: 1320px;
  }
}

.row {
  --bs-gutter-x: 1.5rem;
  --bs-gutter-y: 0;
  display: flex;
  flex-wrap: wrap;
  margin-top: calc(-1 * var(--bs-gutter-y));
  margin-right: calc(-0.5 * var(--bs-gutter-x));
  margin-left: calc(-0.5 * var(--bs-gutter-x));
}
.row > * {
  flex-shrink: 0;
  width: 100%;
  max-width: 100%;
  padding-right: calc(var(--bs-gutter-x) * 0.5);
  padding-left: calc(var(--bs-gutter-x) * 0.5);
  margin-top: var(--bs-gutter-y);
}
.col {
  flex: 1 0 0%;
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
