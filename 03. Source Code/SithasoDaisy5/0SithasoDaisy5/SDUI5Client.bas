B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
#IgnoreWarnings:12
'https://clientjs.org/

Sub Class_Globals
	Private BANano As BANano			'ignore
	Private client As BANanoObject		'ignore
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize
	If BANano.AssetsIsDefined("Client") = False Then
		BANano.Throw($"Uses Error: 'BANano.Await(app.UsesClient)' should be added!"$)
		Return
	End If
	client.Initialize2("ClientJS", Null)
End Sub

'check for mobile device
Sub isMobile As Boolean
	Dim b As Boolean = client.RunMethod("isMobile", Null).Result
	Return b
End Sub

'check if mobile android
Sub isMobileAndroid As Boolean
	Dim b As Boolean = client.RunMethod("isMobileAndroid", Null).Result
	Return b
End Sub

'check if mobile IOS
Sub isMobileIOS As Boolean
	Dim b As Boolean = client.RunMethod("isMobileIOS", Null).Result
	Return b
End Sub

'get the fingerPrint
Sub getFingerprint As Object
	Dim fp As Object = client.RunMethod("getFingerprint", Null).Result
	Return fp
End Sub

'get software version
Sub getSoftwareVersion As String
	Dim s As String = client.RunMethod("getSoftwareVersion", Null).Result
	Return s
End Sub

'get user agent
Sub getUserAgent As String
	Dim s As String = client.RunMethod("getUserAgent", Null).Result
	Return s
End Sub

'get the browser
Sub getBrowser As String
	Dim s As String = client.RunMethod("getBrowser", Null).Result
	Return s
End Sub

'get getBrowserVersion
Sub getBrowserVersion As String
	Dim s As String = client.RunMethod("getBrowserVersion", Null).Result
	Return s
End Sub

'get getBrowserMajorVersion
Sub getBrowserMajorVersion As String
	Dim s As String = client.RunMethod("getBrowserMajorVersion", Null).Result
	Return s
End Sub

'check isIE
Sub isIE As Boolean
	Dim b As Boolean = client.RunMethod("isIE", Null).Result
	Return b
End Sub

'check isChrome
Sub isChrome As Boolean
	Dim b As Boolean = client.RunMethod("isChrome", Null).Result
	Return b
End Sub

'check isFirefox
Sub isFirefox As Boolean
	Dim b As Boolean = client.RunMethod("isFirefox", Null).Result
	Return b
End Sub

'check isSafari
Sub isSafari As Boolean
	Dim b As Boolean = client.RunMethod("isSafari", Null).Result
	Return b
End Sub

'check isOpera
Sub isOpera As Boolean
	Dim b As Boolean = client.RunMethod("isOpera", Null).Result
	Return b
End Sub

'check isMobileSafari
Sub isMobileSafari As Boolean
	Dim b As Boolean = client.RunMethod("isMobileSafari", Null).Result
	Return b
End Sub

Sub getEngine As String
	Dim s As String = client.RunMethod("getEngine", Null).Result
	Return s
End Sub

Sub getEngineVersion As String
	Dim s As String = client.RunMethod("getEngineVersion", Null).Result
	Return s
End Sub

Sub getOS As String
	Dim s As String = client.RunMethod("getOS", Null).Result
	Return s
End Sub

Sub getOSVersion As String
	Dim s As String = client.RunMethod("getOSVersion", Null).Result
	Return s
End Sub

Sub isWindows As Boolean
	Dim b As Boolean = client.RunMethod("isWindows", Null).Result
	Return b
End Sub

Sub isMac As Boolean
	Dim b As Boolean = client.RunMethod("isMac", Null).Result
	Return b
End Sub

Sub isLinux As Boolean
	Dim b As Boolean = client.RunMethod("isLinux", Null).Result
	Return b
End Sub

Sub isUbuntu As Boolean
	Dim b As Boolean = client.RunMethod("isUbuntu", Null).Result
	Return b
End Sub

Sub isSolaris As Boolean
	Dim b As Boolean = client.RunMethod("isSolaris", Null).Result
	Return b
End Sub

Sub getDevice As String
	Dim s As String = client.RunMethod("getDevice", Null).result
	Return s	
End Sub

Sub getDeviceType As String
	Dim s As String = client.RunMethod("getDeviceType", Null).Result
	Return s
End Sub

Sub getDeviceVendor As String
	Dim s As String = client.RunMethod("getDeviceVendor", Null).Result
	Return s
End Sub

Sub getCPU As String
	Dim s As String = client.RunMethod("getCPU", Null).Result
	Return s
End Sub

Sub isMobileMajor As Boolean
	Dim b As Boolean = client.RunMethod("isMobileMajor", Null).Result
	Return b
End Sub

Sub isMobileOpera As Boolean
	Dim b As Boolean = client.RunMethod("isMobileOpera", Null).Result
	Return b
End Sub

Sub isMobileWindows As Boolean
	Dim b As Boolean = client.RunMethod("isMobileWindows", Null).Result
	Return b
End Sub

Sub isMobileBlackBerry As Boolean
	Dim b As Boolean = client.RunMethod("isMobileBlackBerry", Null).Result
	Return b
End Sub

Sub isIphone As Boolean
	Dim b As Boolean = client.RunMethod("isIphone", Null).Result
	Return b
End Sub

Sub isIpad As Boolean
	Dim b As Boolean = client.RunMethod("isIpad", Null).Result
	Return b
End Sub

Sub isIpod As Boolean
	Dim b As Boolean = client.RunMethod("isIpod", Null).result
	Return b	
End Sub

Sub getScreenPrint As String
	Dim s As String = client.RunMethod("getScreenPrint", Null).Result
	Return s
End Sub

Sub getColorDepth As String
	Dim s As String = client.RunMethod("getColorDepth", Null).Result
	Return s
End Sub

Sub getCurrentResolution As String
	Dim s As String = client.RunMethod("getCurrentResolution", Null).Result
	Return s
End Sub

Sub getAvailableResolution As String
	Dim s As String = client.RunMethod("getAvailableResolution", Null).Result
	Return s
End Sub

Sub getDeviceXDPI As String
	Dim s As String = client.RunMethod("getDeviceXDPI", Null).Result
	Return s
End Sub

Sub getDeviceYDPI As String
	Dim s As String = client.RunMethod("getDeviceYDPI", Null).Result
	Return s
End Sub

Sub getPlugins As String
	Dim s As String = client.RunMethod("getPlugins", Null).Result
	Return s
End Sub

Sub isLocalStorage As Boolean
	Dim b As Boolean = client.RunMethod("isLocalStorage", Null).Result
	Return b
End Sub

Sub isSessionStorage As Boolean
	Dim b As Boolean = client.RunMethod("isSessionStorage", Null).Result
	Return b
End Sub

Sub isCookie As Boolean
	Dim b As Boolean = client.RunMethod("isCookie", Null).Result
	Return b
End Sub

Sub getTimeZone As String
	Dim s As String = client.RunMethod("getTimeZone", Null).Result
	Return s
End Sub

Sub getLanguage As String
	Dim s As String = client.RunMethod("getLanguage", Null).Result
	Return s
End Sub

Sub SystemLanguage As String
	Dim s As String = client.RunMethod("SystemLanguage", Null).Result
	Return s
End Sub


