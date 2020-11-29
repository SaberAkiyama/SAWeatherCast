[MeterStyleText]
Meter=String
MeterStyle=SkinText
X=770
Y=230
Text="< <  Skins  > >"

; ============================================================
; ============================================================

[MeterTypeFace]
Meter=String
MeterStyle=SkinInfo
X=555
Y=280
Text=Typeface

[MeterTypeColor]
Meter=String
MeterStyle=SkinInfo
X=0r
Y=50r
Text=Color Presets

; ============================================================
; ============================================================

[TypeFaceArrow]
Meter=String
MeterStyle=SkinArrow
X=770
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
X=935
Y=280
Text=#TypeFace#
LeftMouseUpAction=!CommandMeasure LuaPage "setTypeface('Typeface')"
MouseOverAction=[!CommandMeasure LuaPage "setSkinTypeFace('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setSkinTypeFace('Leave')"]

[MeterColorTextActive]
Meter=String
MeterStyle=SkinActive
X=0r
Y=50r
Text=#ColorText#
LeftMouseUpAction=!CommandMeasure LuaPage "setColor('Color Code')"
MouseOverAction=[!CommandMeasure LuaPage "setSkinColorText('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setSkinColorText('Leave')"]

; ============================================================
; ============================================================

[MeterApplyButton]
Meter=String
MeterStyle=SkinActive
X=770
Y=110r
Text="Apply Changes"
LeftMouseUpAction=!CommandMeasure LuaPage "setApply()"
MouseOverAction=[!CommandMeasure LuaPage "setSkinApply('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setSkinApply('Leave')"]

; ============================================================
; ============================================================

[MeterSkinInputTypeface]
Measure=Plugin
Plugin=InputText.dll
StringAlign=Center
FontFace=Segoe UI
FontSize=15
W=245
H=35
AntiAlias=1
FocusDismiss=1
X=815
Command1=[!WriteKeyValue Variables TypeFace "$UserInput$""#@#Variables.inc"][!RefreshGroup WeatherSetting] DefaultValue="#TypeFace#" Y=262
