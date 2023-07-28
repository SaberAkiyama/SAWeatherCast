; ============================================================
; Scripts Coordinates
; ============================================================

[LuaCoordinates]
Measure=Script
ScriptFile=#@#Scripts\Settings\Lua Coordinates.lua
UpdateDivider=5

; ============================================================
; Coordinates Page
; ============================================================

[MeterLatitudeText]
Meter=String
MeterStyle=CoordinatesActive
X=345
Y=160
W=320
H=50
Text=Latitude

[MeterLatitudeActive]
Meter=String
MeterStyle=CoordinatesActive
X=345
Y=10R
W=320
H=50
Text=#Latitude#
SolidColor=0,0,0,32
LeftMouseUpAction=[!CommandMeasure LuaCoordinates "setLatitudeCode()"]
MouseOverAction=[!CommandMeasure LuaCoordinates "setLatitudeInsert('Over')"]
MouseLeaveAction=[!CommandMeasure LuaCoordinates "setLatitudeInsert('Leave')"]

[MeterLongitudeText]
Meter=String
MeterStyle=CoordinatesActive
X=0r
Y=50R
W=320
H=50
Text=Longitude

[MeterLongitudeActive]
Meter=String
MeterStyle=CoordinatesActive
X=0r
Y=10R
W=320
H=50
Text=#Longitude#
SolidColor=0,0,0,32
LeftMouseUpAction=[!CommandMeasure LuaCoordinates "setLongitudeCode()"]
MouseOverAction=[!CommandMeasure LuaCoordinates "setLongitudeInsert('Over')"]
MouseLeaveAction=[!CommandMeasure LuaCoordinates "setLongitudeInsert('Leave')"]

; ============================================================
; ============================================================

[MeterApplyButton]
Meter=String
MeterStyle=CoordinatesActive
X=345
Y=25R
Text="Apply Changes"
LeftMouseUpAction=[!CommandMeasure LuaCoordinates "setWeatherApply()"]
MouseOverAction=[!CommandMeasure LuaCoordinates "setHoverWeatherApply('Over')"]
MouseLeaveAction=[!CommandMeasure LuaCoordinates "setHoverWeatherApply('Leave')"]

; ============================================================
; ============================================================

[MeterCoordinatesActive]
Meter=String
MeterStyle=CoordinatesActive
X=960
Y=180
Text="Open Google Maps"
LeftMouseUpAction=[!CommandMeasure LuaCoordinates "setGoogleMapsLink()"]
MouseOverAction=[!CommandMeasure LuaCoordinates "setWeatherCode('Over')"]
MouseLeaveAction=[!CommandMeasure LuaCoordinates "setWeatherCode('Leave')"]

[MeterCoordinatesNote]
Meter=String
MeterStyle=CoordinatesNote
X=960
Y=100R
Text="This page is a different code from the previous version#CRLF#because the Daily Forecast skin won't work adequately.#CRLF##CRLF#Learn more at my GitHub repository Wiki page below#CRLF#for how to mark your location with Google Maps."

[MeterGitHubWikiActive]
Meter=String
MeterStyle=CoordinatesNote
X=960
Y=10R
Text=">>> GitHub Wiki page <<<"
LeftMouseUpAction=[!CommandMeasure LuaCoordinates "setGHWikiLink()"]
MouseOverAction=[!CommandMeasure LuaCoordinates "setHoverGHWiki('Over')"]
MouseLeaveAction=[!CommandMeasure LuaCoordinates "setHoverGHWiki('Leave')"]

; ============================================================
; ============================================================

[MeterSkinInputCoordinate]
Measure=Plugin
Plugin=InputText
StringAlign=Center
FontFace=Segoe UI
FontSize=15
X=185
W=320
H=40
Command1=[!WriteKeyValue Variables Latitude "$UserInput$" "#@#Measures\Weather Variables.inc"] Y=200 DefaultValue=#Latitude# [!RefreshGroup WeatherSetting]
Command2=[!WriteKeyValue Variables Longitude "$UserInput$" "#@#Measures\Weather Variables.inc"] Y=360 DefaultValue=#Longitude# [!RefreshGroup WeatherSetting]
AntiAlias=1
FocusDismiss=1
