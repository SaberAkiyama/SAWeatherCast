; ============================================================
; Scripts Info
; ============================================================

[LuaInfo]
Measure=Script
ScriptFile=#@#Scripts\Settings\Lua Info.lua
UpdateDivider=5

; ============================================================
; Info Page
; ============================================================

[DiscordInfo]
Meter=String
MeterStyle=InfoDiscordStyle
Text=Before you join the Discord server,#CRLF#I recommend at least three days old (72 hours) for your first Discord account#CRLF#because the Dyno bot has an auto-ban for a new user who is less than one day (24 hours).#CRLF#Proceed with caution.
X=640
Y=320

[ShapeDiscordLinkActive]
Meter=String
MeterStyle=InfoDiscordStyleActive
Text=">>> Click here to join on Discord server <<<"
X=0r
Y=0R
LeftMouseUpAction=[!CommandMeasure LuaInfo "setDiscordLink()"]
MouseOverAction=[!CommandMeasure LuaInfo "setInfoDiscordLink('Over')"]
MouseLeaveAction=[!CommandMeasure LuaInfo "setInfoDiscordLink('Leave')"]

; ============================================================
; ============================================================
