; ============================================================
; Scripts Info
; ============================================================

[LuaInfo]
Measure=Script
ScriptFile=#@#Scripts\Settings\Lua Info.lua
UpdateDivider=5

[Variables]
@include7=#@#Measures\Parser Update.inc
@include8=#@#Measures\Parser Variables.inc

; ============================================================
; Info Page
; ============================================================

[Title]
Meter=String
MeterStyle=InfoTitle
Text=SA Weather Cast
X=320
Y=210

[Version]
Meter=String
MeterStyle=InfoVersion
Text=">>> v#Version# <<<"
X=0r
Y=0R

[Author]
Meter=String
MeterStyle=InfoAuthor
Text="Author by: Saber Akiyama"
X=0r
Y=10R

[ShapeDeviantArtActive]
Meter=Shape
MeterStyle=ShapeDeviantArtStyle
X=230
Y=0R
LeftMouseUpAction=[!CommandMeasure LuaInfo "setInfo('DeviantArt')"]

[ShapeGitHubActive]
Meter=Shape
MeterStyle=ShapeGitHubStyle
X=60r
Y=0r
LeftMouseUpAction=[!CommandMeasure LuaInfo "setInfo('GitHub')"]

[ShapeDiscordActive]
Meter=Shape
MeterStyle=ShapeDiscordStyle
X=60r
Y=0r
LeftMouseUpAction=[!CommandMeasure LuaInfo "setDiscord()"]

; ============================================================
; ============================================================

[MeterLineInfo]
Meter=Shape
Shape=Line 0,0,320,0 | Stroke Color 255,255,255,128
X=160
Y=25R
AntiAlias=1
UpdateDivider=-1

[MeterUpdate]
Meter=String
MeterStyle=InfoUpdate
X=320
Y=40r
Text=#TextUpdate#
Hidden=0

[MeterUpdatePost1]
Meter=String
MeterStyle=InfoUpdate
X=0r
Y=0r
Text="Your internet has disconnected"
Hidden=1

[MeterUpdatePost2]
Meter=String
MeterStyle=InfoUpdate
X=0r
Y=0r
Text="This version has updated"
Hidden=1

[MeterUpdatePost3]
Meter=String
MeterStyle=InfoUpdate
X=0r
Y=0r
Text="New update available. Click here."
LeftMouseDownAction=[!CommandMeasure LuaInfo "setInfo('Update Avaiable')"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoUpdate('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoUpdate('Leave')"]
Hidden=1

[MeterUpdateText]
Meter=String
MeterStyle=InfoUpdateText
X=227
Y=20r
Text=Enable Update:

[MeterUpdateToggle]
Meter=String
MeterStyle=InfoUpdateActive
X=10R
Y=0r
Text=#ToggleUpdate#
LeftMouseDownAction=[!CommandMeasure LuaInfo "setInfoUpdate#ToggleUpdate#()"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoUpdateToggle('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoUpdateToggle('Leave')"]

; ============================================================
; ============================================================

[LicenseHeader]
Meter=String
MeterStyle=InfoHeader
Text=License
X=960
Y=150

[LicenseShapeActive]
Meter=Shape
MeterStyle=InfoLicenseShape
X=870
Y=20r
LeftMouseUpAction=[!CommandMeasure LuaInfo "setInfo('Creative Commons')"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoCC('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoCC('Leave')"]

[LicenseText]
Meter=String
MeterStyle=InfoLicense
Text="BY-NC-SA (Attribution-NonCommercial-ShareAlike)#CRLF#4.0 International Public License"
X=960
Y=75r

; ============================================================
; ============================================================

[CreditsHeader]
Meter=String
MeterStyle=InfoHeader
X=0r
Y=10R
Text=Credits + Inspirations

[Cred1Active]
Meter=String
MeterStyle=InfoActive
Text="Eduardo Tunni - Merienda fonts"
X=0r
Y=30r
LeftMouseUpAction=[!CommandMeasure LuaInfo "setInfo('Credit1')"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoCredit1('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoCredit1('Leave')"]

[Cred2Active]
Meter=String
MeterStyle=InfoActive
Text="Olexa Volochay - TT Squares Condensed fonts"
X=0r
Y=5R
LeftMouseUpAction=[!CommandMeasure LuaInfo "setInfo('Credit2')"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoCredit2('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoCredit2('Leave')"]

[Cred3Active]
Meter=String
MeterStyle=InfoActive
X=0r
Y=5R
Text="Christian Robertson - Roboto fonts"
LeftMouseUpAction=[!CommandMeasure "LuaInfo" "setInfo('Credit3')"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoCredit3('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoCredit3('Leave')"]

[Cred4Active]
Meter=String
MeterStyle=InfoActive
X=0r
Y=5R
Text="theAzack9 - FrostedGlass (Plugin)"
LeftMouseUpAction=[!CommandMeasure LuaInfo "setInfo('Credit4')"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoCredit4('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoCredit4('Leave')"]

[Cred5Active]
Meter=String
MeterStyle=InfoActive
X=0r
Y=5R
Text="theAzack9 - VectorConverter shapes"
LeftMouseUpAction=[!CommandMeasure LuaInfo "setInfo('Credit5')"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoCredit5('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoCredit5('Leave')"]

[Cred6Active]
Meter=String
MeterStyle=InfoActive
X=0r
Y=5R
Text="Roberto Ierusalimschy - Programming Language (Lua)"
LeftMouseUpAction=[!CommandMeasure LuaInfo "setInfo('Credit6')"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoCredit6('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoCredit6('Leave')"]

[Cred7Active]
Meter=String
MeterStyle=InfoActive
X=0r
Y=5R
Text="Rainmeter Developer Team"
LeftMouseUpAction=[!CommandMeasure LuaInfo "setInfo('Credit7')"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoCredit7('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoCredit7('Leave')"]
