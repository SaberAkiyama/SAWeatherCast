[Variables]
@include8=#@#Measures\Action Timer Settings.inc

[MeterSlideBox]
Meter=Shape
Group=Sliders
Shape=Rectangle 0,0,#W1#,640 | Fill Color 0,0,0,128 | Stroke Color 0,0,0,0 | StrokeWidth 0
SolidColor=0,0,0,1
DynamicVariables=1
UpdateDivider=-1

[ShapeSliderExpand]
Meter=Shape
MeterStyle=ShapeExpandStyle
Group=Sliders
X=0
Y=0
LeftMouseUpAction=[!CommandMeasure LuaSettings "setSliderExpand()"]

[ShapeSliderCollapse]
Meter=Shape
MeterStyle=ShapeCollapseStyle
Group=Sliders
X=0
Y=0
LeftMouseUpAction=[!CommandMeasure LuaSettings "setSliderCollapse()"]

[ShapeInfo]
Meter=Shape
MeterStyle=ShapeInfoStyle
Group=Sliders
X=0
Y=50r
LeftMouseUpAction=[!CommandMeasure LuaSettings "setInfoPage()"]

; ============================================================

[ShapeSkin]
Meter=Shape
MeterStyle=ShapeSkinsStyle
X=0
Y=245
LeftMouseUpAction=[!CommandMeasure LuaSettings "setSkinsPage()"]

[ShapeCoordinates]
Meter=Shape
MeterStyle=ShapeCoordinatesStyle
X=0
Y=50r
LeftMouseUpAction=[!CommandMeasure LuaSettings "setCoordinatesPage()"]

[ShapeLanguage]
Meter=Shape
MeterStyle=ShapeLanguageStyle
X=0
Y=50r
LeftMouseUpAction=[!CommandMeasure LuaSettings "setLanguagePage()"]

[ShapeExit]
Meter=Shape
MeterStyle=ShapeExitStyle
X=0
Y=590
LeftMouseUpAction=[!CommandMeasure LuaSettings "closeSettings()"]

; ============================================================
; Page Text
; ============================================================

[MeterInfoText]
Meter=String
MeterStyle=SettingActive
Group=Sliders
X=55
Y=75
Text=Info

[MeterSkinText]
Meter=String
MeterStyle=SettingActive
Group=Sliders
X=0r
Y=270
Text=Skins

[MeterCoordinateText]
Meter=String
MeterStyle=SettingActive
Group=Sliders
X=0r
Y=50r
Text=Coordinates

[MeterLanguageText]
Meter=String
MeterStyle=SettingActive
Group=Sliders
X=0r
Y=50r
Text=Language

[MeterExitText]
Meter=String
MeterStyle=SettingActive
Group=Sliders
X=0r
Y=615
Text=Exit
