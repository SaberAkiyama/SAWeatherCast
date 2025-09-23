; ============================================================
; Scripts Info
; ============================================================

[LuaSkins]
Measure=Script
ScriptFile=#@#Scripts\Settings\Lua Skins.lua
UpdateDivider=5

; ============================================================
; Skins Page
; ============================================================

[MeterStyleText]
Meter=String
MeterStyle=SkinText
X=640
Y=230
Text="< <  Skins  > >"

; ============================================================
; ============================================================

[MeterTypeFace]
Meter=String
MeterStyle=SkinInfo
X=560
Y=280
Text=Typeface

[MeterColorPreset]
Meter=String
MeterStyle=SkinInfo
X=0r
Y=50r
Text=Color Preset

; ============================================================
; ============================================================

[TypeFaceArrow]
Meter=String
MeterStyle=SkinArrow
X=640
Y=280
Text=">>>>"

[TypeColorArrow]
Meter=String
MeterStyle=SkinArrow
X=0r
Y=50r
Text=">>>>"

; ============================================================
; ============================================================

[MeterTypeFaceActive]
Meter=String
MeterStyle=SkinTypefaceActive
FontFace=#TypeFace#
X=815
Y=280
Text=#TypeFace#
LeftMouseUpAction=[!CommandMeasure LuaSkins "setTypeface('Typeface')"]
MouseOverAction=[!CommandMeasure LuaSkins "setSkinTypeFace('Over')"]
MouseLeaveAction=[!CommandMeasure LuaSkins "setSkinTypeFace('Leave')"]

[MeterColorTextActive]
Meter=String
MeterStyle=SkinActive
X=0r
Y=50r
Text=#ColorCode#
LeftMouseUpAction=[!CommandMeasure LuaSkins "setColorCode('Color Code')"]
MouseOverAction=[!CommandMeasure LuaSkins "setSkinColorText('Over')"]
MouseLeaveAction=[!CommandMeasure LuaSkins "setSkinColorText('Leave')"]

; ============================================================
; ============================================================

[MeterApplyButton]
Meter=String
MeterStyle=SkinActive
X=640
Y=50R
Text="Apply Changes"
LeftMouseUpAction=!CommandMeasure LuaSkins "setApply()"
MouseOverAction=[!CommandMeasure LuaSkins "setSkinApply('Over')"]
MouseLeaveAction=[!CommandMeasure LuaSkins "setSkinApply('Leave')"]

; ============================================================
; ============================================================

[MeterSkinInput]
Measure=Plugin
Plugin=InputText
StringAlign=Center
FontFace=Segoe UI
FontSize=15
X=692
W=245
H=35
AntiAlias=1
FocusDismiss=1
Command1=[!WriteKeyValue Variables TypeFace "$UserInput$""#@#Variables.inc"] DefaultValue="#TypeFace#" Y=262 [!RefreshGroup WeatherSetting]
Command2=[!WriteKeyValue Variables ColorCode "$UserInput$""#@#Variables.inc"] DefaultValue="#ColorCode#" Y=312 [!RefreshGroup WeatherSetting]
