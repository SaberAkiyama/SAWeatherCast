[MeterWeatherText]
Meter=String
MeterStyle=WeatherText
X=555
Y=150
Text="< <  Weather  > >"

; ============================================================
; ============================================================

[MeterWeatherActive]
Meter=String
MeterStyle=WeatherActive
X=555
Y=200
Text="Open Weather Codes"
LeftMouseUpAction=[!CommandMeasure LuaPage "openLocation()"]
MouseOverAction=[!CommandMeasure LuaPage "setCode('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setCode('Leave')"]

[MeterLocationActive]
Meter=String
MeterStyle=WeatherActive
X=555
Y=75r
W=500
H=50
Text=Click here for Location Code
SolidColor=0,0,0,32
LeftMouseUpAction=[!CommandMeasure LuaPage "setWeatherInput()"]
MouseOverAction=[!CommandMeasure LuaPage "setWeather('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setWeather('Leave')"]

; ============================================================
; ============================================================

[MeterWeatherNote]
Meter=String
MeterStyle=WeatherNote
X=555
Y=115r
Text="Copy and enter that as the value for LocationCode#CRLF#The Country/Region codes (e.g.: USNY0996)#CRLF#will also work as the LocationCode#CRLF#Or use the long number at the end of the resulting URL"

; ============================================================
; ============================================================

[MeterApplyButton]
Meter=String
MeterStyle=WeatherActive
X=555
Y=85r
Text="Apply Changes"
ToolTipText="Once is done, click "Apply" button to retrieve Weather skin"
LeftMouseUpAction=[!CommandMeasure LuaPage "setWeatherApply()"]
MouseOverAction=[!CommandMeasure LuaPage "setApply('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setApply('Leave')"]

; ============================================================
; ============================================================

[MeterSkinInputWeather]
Measure=Plugin
Plugin=InputText
StringAlign=Center
FontFace=Segoe UI
FontSize=15
X=305
Y=250
W=500
H=50
Command1=[!WriteKeyValue Variables LocationCode "$UserInput$" "#@#Measures\Weather Variables.inc"][!RefreshGroup WeatherSetting]
AntiAlias=1
FocusDismiss=1
