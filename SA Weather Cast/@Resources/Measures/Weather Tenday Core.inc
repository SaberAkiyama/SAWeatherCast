
; ===========================================================================
; DO NOT CHANGE THIS FILE UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING !!!
; ===========================================================================

[MeasureInternetConnectivity]
; Returns the status of the internet connection.
; Changes error text depending on situation.
Measure=SysInfo
SysInfoType=INTERNET_CONNECTIVITY
SysInfoData=Best
; -1: No Internet, 1: Connected
IfCondition=(MeasureInternetConnectivity = -1)
IfTrueAction=[!CommandMeasure LuaUpdate "netErrorTenDay()"]
IfFalseAction=[!CommandMeasure LuaUpdate "netConnectTenDay()"]

[MeasureWeatherTendayCore]
Measure=WebParser
Url=#URLWeatherCore#
RegExp=(?siU)^(.*)$
UpdateRate=1
LogSubstringErrors=0
UserAgent="#UACore#"
Flags=Resync | NoCookies
OnConnectErrorAction=[!CommandMeasure LuaUpdate "errorNet()"]
OnRegExpErrorAction=[!CommandMeasure LuaUpdate "errorNet()"]
UpdateDivider=-1
Paused=1

[MeasureDetailsCore]
Measure=WebParser
Url=#URLWeatherUnitsCore#
RegExp=(?siU)^(.*)$
UpdateRate=1
LogSubstringErrors=0
UserAgent="#UACore#"
Flags=Resync | NoCookies
OnRegExpErrorAction=[!CommandMeasure LuaUpdate "errorNet()"]
OnConnectErrorAction=[!CommandMeasure LuaUpdate "errorNet()"]
FinishAction=[!CommandMeasure LuaCore "finishOneDay()"][!CommandMeasure LuaCore "finishSevenDay()"]
UpdateDivider=-1
Paused=1

; ====================================================================================================

[MeasureWeatherTendayUpdate]
; Returns update weather in every 60 minutes (or 3600 seconds).
Measure=Time
Format=%#H:%M
OnUpdateAction=[!CommandMeasure LuaCore "updateTenday()"]
Group=WeatherOneDayMeasure | WeatherSevenDayMeasure
DynamicVariables=1
UpdateDivider=3600

; ====================================================================================================

[MeasureOneDayTime]
; Sets Time 12 or 24 Hours depending on #OneDayTimeToggle# (which is controlled by context menu options).
Measure=Calc
; 0: 24 Hours, 1: 12 Hours
IfCondition=(#OneDayTimeToggle# = 1)
IfTrueAction=[!CommandMeasure LuaUnits "setOneDayTime('One Day 12 Hours')"]
IfFalseAction=[!CommandMeasure LuaUnits "setOneDayTime('One Day 24 Hours')"]
Group=WeatherOneDayMeasure
DynamicVariables=1
UpdateDivider=-1
Paused=1
Disabled=1

[MeasureOneDaySlimTime]
; Sets Time 12 or 24 Hours depending on #OneDaySlimTimeToggle# (which is controlled by context menu options).
Measure=Calc
; 0: 24 Hours, 1: 12 Hours
IfCondition=(#OneDaySlimTimeToggle#=1)
IfTrueAction=[!CommandMeasure LuaUnits "setOneDaySlimTime('One Day Slim 12 Hours')"]
IfFalseAction=[!CommandMeasure LuaUnits "setOneDaySlimTime('One Day Slim 24 Hours')"]
Group=WeatherOneDaySlimMeasure
DynamicVariables=1
UpdateDivider=-1
Paused=1
Disabled=1





; ===========================================================================
; 							ONE DAY FORECAST MEASURES
; ===========================================================================

[MeasureOneDayForecast]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#OneDayForecast#
StringIndex=1
LogSubstringErrors=0
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTonightMoonrise24H]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=1
RegExpSubstitute=1
Substitute="^.*T(.*):.*$":"\1","":"[MeasureTomorrowMoonrise24H]"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTomorrowMoonrise24H]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=2
RegExpSubstitute=1
Substitute="^.*T(.*):.*$":"\1"
Group=WeatherOneDayMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTonightMoonset24H]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=3
RegExpSubstitute=1
Substitute="^.*T(.*):.*$":"\1","":"[MeasureTomorrowMoonset24H]"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTomorrowMoonset24H]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=4
RegExpSubstitute=1
Substitute="^.*T(.*):.*$":"\1"
Group=WeatherOneDayMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTonightMoonrise12H]
Measure=Time
TimeStamp=[MeasureTonightMoonrise24H]
TimeStampFormat=%H:%S
Format=%#I:%S %p
Substitute="AM":"am","PM":"pm"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTonightMoonset12H]
Measure=Time
TimeStamp=[MeasureTonightMoonset24H]
TimeStampFormat=%H:%S
Format=%#I:%S %p
Substitute="AM":"am","PM":"pm"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTomorrowMoonrise12H]
Measure=Time
TimeStamp=[MeasureTomorrowMoonrise24H]
TimeStampFormat=%H:%S
Format=%#I:%S %p
Substitute="AM":"am","PM":"pm"
Group=WeatherOneDayMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTomorrowMoonset12H]
Measure=Time
TimeStamp=[MeasureTomorrowMoonset24H]
TimeStampFormat=%H:%S
Format=%#I:%S %p
Substitute="AM":"am","PM":"pm"
Group=WeatherOneDayMeasure
DynamicVariables=1
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTodaySunrise24H]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=5
RegExpSubstitute=1
Substitute="^.*T(.*):.*$":"\1","":"[MeasureTomorrowSunrise24H]"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTomorrowSunrise24H]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=6
RegExpSubstitute=1
Substitute="^.*T(.*):.*$":"\1"
Group=WeatherOneDayMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTodaySunset24H]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=7
RegExpSubstitute=1
Substitute="^.*T(.*):.*$":"\1","":"[MeasureTomorrowSunset24H]"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTomorrowSunset24H]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=8
RegExpSubstitute=1
Substitute="^.*T(.*):.*$":"\1"
Group=WeatherOneDayMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTodaySunrise12H]
Measure=Time
TimeStamp=[MeasureTodaySunrise24H]
TimeStampFormat=%H:%S
Format=%#I:%S %p
Substitute="AM":"am","PM":"pm"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTodaySunset12H]
Measure=Time
TimeStamp=[MeasureTodaySunset24H]
TimeStampFormat=%H:%S
Format=%#I:%S %p
Substitute="AM":"am","PM":"pm"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTomorrowSunrise12H]
Measure=Time
TimeStamp=[MeasureTomorrowSunrise24H]
TimeStampFormat=%H:%S
Format=%#I:%S %p
Substitute="AM":"am","PM":"pm"
Group=WeatherOneDayMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTomorrowSunset12H]
Measure=Time
TimeStamp=[MeasureTomorrowSunset24H]
TimeStampFormat=%H:%S
Format=%#I:%S %p
Substitute="AM":"am","PM":"pm"
Group=WeatherOneDayMeasure
DynamicVariables=1
Paused=1
Disabled=1

; ====================================================================================================

[MeasureToday]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=9
Substitute="[":"","\":"",'"':""
IfMatch=null
IfMatchAction=[!CommandMeasure LuaCore "matchTonight()"]
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
DynamicVariables=1
Paused=1
Disabled=1

[MeasureTonight]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=10
Group=WeatherOneDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureTomorrow]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=11
Group=WeatherOneDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTodayIcon]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=12
Substitute="[":"","null":"3200"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTonightIcon]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=13
Substitute="null":"3200"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTomorrowIcon]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=14
Substitute="null":"3200"
Group=WeatherOneDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTodayPrecipitation]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=15
Substitute="[":""
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTonightPrecipitation]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=16
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTomorrowPrecipitation]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=17
Group=WeatherOneDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTodayHumidity]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=18
Substitute="[":""
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTonightHumidity]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=19
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTomorrowHumidity]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=20
Group=WeatherOneDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTodayTemperature]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=21
Substitute="[":""
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTonightTemperature]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=22
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTomorrowTemperature]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=23
Group=WeatherOneDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTodayUVIndex]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=24
Substitute="[":""
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
IfMatch=11
IfMatchAction=[!SetOption MeterTodayUVIndex Text [MeasureCoreUVExtreme]]
Paused=1
Disabled=1

[MeasureTonightUVIndex]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=25
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTomorrowUVIndex]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=26
Group=WeatherOneDayMeasure
IfMatch=11
IfMatchAction=[!SetOption MeterTomorrowUVIndex Text [MeasureCoreUVExtreme]]
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTodayWindCardinal]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=27
Substitute="[":"","\":"",'"':""
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureTonightWindCardinal]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=28
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureTomorrowWindCardinal]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=29
Group=WeatherOneDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTodayWindSpeed]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=30
Substitute="[":"","null":"[MeasureTomorrowWindSpeed]"
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTonightWindSpeed]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=31
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureTomorrowWindSpeed]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=32
Group=WeatherOneDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureTodayCondition]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=33
Substitute="[":"","\":"",'"':""
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureTonightCondition]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=34
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureTomorrowCondition]
Measure=WebParser
Url=[MeasureOneDayForecast]
StringIndex=35
Group=WeatherOneDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

; ====================================================================================================
; ====================================================================================================
; ====================================================================================================
; ====================================================================================================

; ====================================================================================================
; 							SEVEN DAY FORECAST MEASURES
; ====================================================================================================

[MeasureSevenDayDOW]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#SevenDayDOW#
StringIndex=1
LogSubstringErrors=0
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureDay1]
Measure=WebParser
Url=[MeasureSevenDayDOW]
StringIndex=1
Substitute="[":"","\":"",'"':""
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDay2]
Measure=WebParser
Url=[MeasureSevenDayDOW]
StringIndex=2
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDay3]
Measure=WebParser
Url=[MeasureSevenDayDOW]
StringIndex=3
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDay4]
Measure=WebParser
Url=[MeasureSevenDayDOW]
StringIndex=4
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDay5]
Measure=WebParser
Url=[MeasureSevenDayDOW]
StringIndex=5
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDay6]
Measure=WebParser
Url=[MeasureSevenDayDOW]
StringIndex=6
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDay7]
Measure=WebParser
Url=[MeasureSevenDayDOW]
StringIndex=7
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

; ====================================================================================================

[MeasureSevenDayTempMax]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#SevenDayTempMax#
StringIndex=1
LogSubstringErrors=0
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMaxDay1]
Measure=WebParser
Url=[MeasureSevenDayTempMax]
StringIndex=1
Substitute="[":""
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMaxDay2]
Measure=WebParser
Url=[MeasureSevenDayTempMax]
StringIndex=2
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMaxDay3]
Measure=WebParser
Url=[MeasureSevenDayTempMax]
StringIndex=3
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMaxDay4]
Measure=WebParser
Url=[MeasureSevenDayTempMax]
StringIndex=4
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMaxDay5]
Measure=WebParser
Url=[MeasureSevenDayTempMax]
StringIndex=5
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMaxDay6]
Measure=WebParser
Url=[MeasureSevenDayTempMax]
StringIndex=6
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMaxDay7]
Measure=WebParser
Url=[MeasureSevenDayTempMax]
StringIndex=7
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureSevenDayTempMin]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#SevenDayTempMin#
StringIndex=1
LogSubstringErrors=0
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMinDay1]
Measure=WebParser
Url=[MeasureSevenDayTempMin]
StringIndex=1
Substitute="[":""
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMinDay2]
Measure=WebParser
Url=[MeasureSevenDayTempMin]
StringIndex=2
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMinDay3]
Measure=WebParser
Url=[MeasureSevenDayTempMin]
StringIndex=3
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMinDay4]
Measure=WebParser
Url=[MeasureSevenDayTempMin]
StringIndex=4
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMinDay5]
Measure=WebParser
Url=[MeasureSevenDayTempMin]
StringIndex=5
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMinDay6]
Measure=WebParser
Url=[MeasureSevenDayTempMin]
StringIndex=6
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureTempMinDay7]
Measure=WebParser
Url=[MeasureSevenDayTempMin]
StringIndex=7
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureSevenDayIcon]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#SevenDayIcon#
StringIndex=1
LogSubstringErrors=0
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconDay1]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=1
Substitute="[":"","null":"[MeasureIconNight1]"
Group=WeatherSevenDayMeasure
DynamicVariables=1
Paused=1
Disabled=1

[MeasureIconNight1]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=2
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconDay2]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=3
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconNight2]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=4
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconDay3]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=5
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconNight3]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=6
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconDay4]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=7
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconNight4]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=8
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconDay5]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=9
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconNight5]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=10
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconDay6]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=11
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconNight6]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=12
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconDay7]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=13
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureIconNight7]
Measure=WebParser
Url=[MeasureSevenDayIcon]
StringIndex=14
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureSevenDayPrecipitation]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#SevenDayPrecip#
StringIndex=1
LogSubstringErrors=0
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationDay1]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=1
Substitute="[":""
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationNight1]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=2
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationDay2]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=3
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationNight2]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=4
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationDay3]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=5
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationNight3]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=6
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationDay4]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=7
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationNight4]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=8
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationDay5]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=9
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationNight5]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=10
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationDay6]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=11
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationNight6]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=12
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationDay7]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=13
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasurePrecipitationNight7]
Measure=WebParser
Url=[MeasureSevenDayPrecipitation]
StringIndex=14
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureSevenDayWindCardinal]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#SevenDayWDC#
StringIndex=1
LogSubstringErrors=0
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindCardinalDay1]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=1
Substitute="[":"","\":"",'"':""
IfMatch=null
IfMatchAction=[!CommandMeasure LuaCore "setDayOneNightMatch()"]
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalNight1]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=2
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalDay2]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=3
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalNight2]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=4
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalDay3]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=5
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalNight3]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=6
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalDay4]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=7
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalNight4]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=8
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalDay5]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=9
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalNight5]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=10
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalDay6]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=11
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalNight6]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=12
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalDay7]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=13
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureWindCardinalNight7]
Measure=WebParser
Url=[MeasureSevenDayWindCardinal]
StringIndex=14
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

; ====================================================================================================

[MeasureSevenDayWindSpeed]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#SevenDayWindSpeed#
StringIndex=1
LogSubstringErrors=0
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedDay1]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=1
Substitute="[":""
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedNight1]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=2
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedDay2]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=3
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedNight2]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=4
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedDay3]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=5
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedNight3]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=6
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedDay4]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=7
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedNight4]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=8
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedDay5]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=9
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedNight5]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=10
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedDay6]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=11
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedNight6]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=12
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedDay7]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=13
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureWindSpeedNight7]
Measure=WebParser
Url=[MeasureSevenDayWindSpeed]
StringIndex=14
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

; ====================================================================================================

[MeasureSevenDayCondition]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#SevenDayCondition#
StringIndex=1
LogSubstringErrors=0
Group=WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureConditionDay1]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=1
Substitute="[":"","\":"",'"':""
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionNight1]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=2
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionDay2]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=3
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionNight2]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=4
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionDay3]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=5
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionNight3]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=6
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionDay4]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=7
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionNight4]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=8
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionDay5]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=9
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionNight5]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=10
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionDay6]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=11
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionNight6]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=12
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionDay7]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=13
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureConditionNight7]
Measure=WebParser
Url=[MeasureSevenDayCondition]
StringIndex=14
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

; ====================================================================================================

[MeasureSevenDayDetails]
Measure=WebParser
Url=[MeasureWeatherTendayCore]
RegExp=#SevenDayDetails#
StringIndex=1
LogSubstringErrors=0
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure | WeatherSevenDayMeasure
Paused=1
Disabled=1

[MeasureDetailDay1]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=1
DecodeCharacterReference=1
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure | WeatherSevenDayMeasure
Substitute="[":"","\":"",'"':"","null":"---"
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailNight1]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=2
DecodeCharacterReference=1
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure | WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailDay2]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=3
DecodeCharacterReference=1
Group=WeatherOneDayMeasure | WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailNight2]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=4
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailDay3]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=5
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailNight3]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=6
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailDay4]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=7
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailNight4]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=8
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailDay5]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=9
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailNight5]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=10
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailDay6]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=11
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailNight6]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=12
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailDay7]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=13
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureDetailNight7]
Measure=WebParser
Url=[MeasureSevenDayDetails]
StringIndex=14
DecodeCharacterReference=1
Group=WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

; ====================================================================================================
; ====================================================================================================
; ====================================================================================================
; ====================================================================================================

; ===========================================================================
; 						WEATHER PARAMETER MEASURES
; ===========================================================================

[MeasureDailyUnits]
Measure=WebParser
Url=[MeasureDetailsCore]
RegExp=#WeatherUnits#
StringIndex=1
LogSubstringErrors=0
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
Paused=1
Disabled=1

[MeasureCoreWindKmh]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=3
Group=WeatherOneDayMeasure | WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureCoreWindMph]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=6
Group=WeatherOneDayMeasure | WeatherSevenDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureCoreUVExtreme]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=7
Group=WeatherOneDayMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureCoreUVOf]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=8
Group=WeatherOneDayMeasure
Substitute="{{val}}":"","{{maxVal}}":""
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureCoreHumidityText]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=10
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureOneDayMoonriseText]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=11
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureOneDayMoonsetText]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=12
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureOneDaySunriseText]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=13
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureOneDaySunsetText]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=14
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1

[MeasureCoreUVIndexText]
Measure=WebParser
Url=[MeasureDailyUnits]
StringIndex=15
Group=WeatherOneDayMeasure | WeatherOneDaySlimMeasure
DecodeCodePoints=1
Paused=1
Disabled=1
