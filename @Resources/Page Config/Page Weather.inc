[MeterWeatherText]
Meter=String
MeterStyle=WeatherText
X=770
Y=150
Text="< <  Weather  > >"

; ============================================================
; ============================================================

[MeterWeatherActive]
Meter=String
MeterStyle=WeatherActive
X=770
Y=200
Text="Open Weather Codes"
LeftMouseUpAction=[!CommandMeasure LuaPage "openLocation()"]
MouseOverAction=[!CommandMeasure LuaPage "setWeatherCode('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setWeatherCode('Leave')"]

[MeterLocationActive]
Meter=String
MeterStyle=WeatherActive
X=770
Y=75r
W=750
H=50
Text=Click here for Location Code
SolidColor=0,0,0,32
LeftMouseUpAction=[!CommandMeasure LuaPage "setWeatherInput()"]
MouseOverAction=[!CommandMeasure LuaPage "setWeatherInsert('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setWeatherInsert('Leave')"]

; ============================================================
; ============================================================

[MeterWeatherNote]
Meter=String
MeterStyle=WeatherNote
X=770
Y=115r
Text="Copy and enter that as the value for LocationCode#CRLF#The Country/Region codes (e.g.: USNY0996)#CRLF#will also work as the LocationCode#CRLF#Or use the long number at the end of the resulting URL"

; ============================================================
; ============================================================

[MeterApplyButton]
Meter=String
MeterStyle=WeatherActive
X=770
Y=85r
Text="Apply Changes"
LeftMouseUpAction=[!CommandMeasure LuaPage "setWeatherApply()"]
MouseOverAction=[!CommandMeasure LuaPage "setHoverWeatherApply('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setHoverWeatherApply('Leave')"]

; ============================================================
; ============================================================

[MeterSkinInputWeather]
Measure=Plugin
Plugin=InputText
StringAlign=Center
FontFace=Segoe UI
FontSize=15
X=395
Y=250
W=750
H=50
Command1=[!WriteKeyValue Variables LocationCode "$UserInput$" "#@#Measures\Weather Variables.inc"][!RefreshGroup WeatherSetting]
AntiAlias=1
FocusDismiss=1
