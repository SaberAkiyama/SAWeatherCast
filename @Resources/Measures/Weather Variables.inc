; © 2020 by Saber Akiyama

; Combined variables to work as an @include file for TWC weather data retrieval

; ################# ONE-TIME SETUP INSTRUCTIONS #############################










; ===========================================================================
; DO NOT CHANGE THIS FILE UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING !!!
; ===========================================================================

[Variables]

LocationCode=MYXX0004

UA=Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Mobile Safari/537.36





; ===========================================================================
; Weather URL

URLToday=https://weather.com/en-US/weather/today/l/#LocationCode#

;{ URLHourly=https://weather.com/en-US/weather/hourbyhour/l/#LocationCode#

;{ URLTenday=https://weather.com/en-US/weather/tenday/l/#LocationCode#

;{ URLAllergy=https://weather.com/forecast/allergy/l/#LocationCode#





; ===========================================================================
; Weather RegExp

CurrentLocation=(?siU)"getSunV3LocationPointUrlConfig":.*{.*"country":"(.*)",.*"displayName":"(.*)",.*}.*"getSunV3CurrentObservationsUrlConfig":.*{.*"iconCode":(.*),.*"pressureAltimeter":(.*),.*"relativeHumidity":(.*),.*"sunriseTimeLocal":"(.*)",.*"sunsetTimeLocal":"(.*)",.*"temperature":(.*),.*"temperatureDewPoint":(.*),"temperatureFeelsLike":(.*),.*"uvIndex":(.*),"validTimeLocal":"(.*)",.*"visibility":(.*),"windDirection":(.*),"windDirectionCardinal":"(.*)",.*"windSpeed":(.*),"wxPhraseLong":"(.*)",.*}.*"getSunV3DailyForecastUrlConfig":.*{.*"temperatureMax":\D(.*),.*,"temperatureMin":\D(.*),.*"moonPhase":.*"(.*)",.*}.*"wxu-general":{.*"mph":"(.*)","km.*h":"(.*)","in":"(.*)","mb":"(.*)","mi":"(.*)","km":"(.*)",.*"uvIndexExtreme":"(.*)",.*}.*"wxu-today-details":{.*,"feelsLike":"(.*)",.*}

;{ OneHourForecast=(?siU)"getSunV3HourlyForecastUrlConfig":.*{.*"iconCode":\D(.*),.*"precipChance":\D(.*),.*"relativeHumidity":\D(.*),.*"temperature":\D(.*),.*"temperatureFeelsLike":\D(.*),.*"uvIndex":\D(.*),.*"validTimeLocal":.*"(.*)",.*"windDirectionCardinal":.*"(.*)",.*"windSpeed":\D(.*),.*"wxPhraseLong":.*"(.*)",.*}.*"wxu-general":{.*"mph":"(.*)","km.*h":"(.*)",.*}

;{ SixHourForecast=(?siU)"getSunV3HourlyForecastUrlConfig":.*{.*"iconCode":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"precipChance":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"temperature":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"validTimeLocal":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*"windDirectionCardinal":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*"windSpeed":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"wxPhraseLong":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*}.*"wxu-general":{.*"mph":"(.*)","km.*h":"(.*)",.*}

;{ TodayTendayForecast=(?siU)"getSunV3DailyForecastUrlConfig":.*{.*"dayOfWeek":.*"(.*)",.*"moonriseTimeLocal":.*"(.*)",.*"moonsetTimeLocal":.*"(.*)",.*"sunriseTimeLocal":.*"(.*)",.*"sunsetTimeLocal":.*"(.*)",.*"daypartName":.*"(.*)","(.*)",.*"iconCode":\D(.*),(.*),.*"narrative":.*"(.*)","(.*)",.*"precipChance":\D(.*),(.*),.*"relativeHumidity":\D(.*),(.*),.*"temperature":\D(.*),(.*),.*"uvIndex":\D(.*),(.*),.*"windDirectionCardinal":.*"(.*)","(.*)",.*"windSpeed":\D(.*),(.*),.*"wxPhraseLong":.*"(.*)","(.*)",.*}.*"wxu-general":{.*"mph":"(.*)","km.*h":"(.*)",.*}

;{ WeekTendayForecast=(?siU)"getSunV3DailyForecastUrlConfig":.*{.*"dayOfWeek":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*"temperatureMax":\D(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*)\D,.*,"temperatureMin":\D(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*"iconCode":\D(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*"precipChance":\D(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*"windDirectionCardinal":.*"(.*)",.*,"(.*)",.*,"(.*)",.*,"(.*)",.*,"(.*)",.*,"(.*)",.*,"(.*)",.*"windSpeed":\D(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*"wxPhraseLong":.*"(.*)",.*,"(.*)",.*,"(.*)",.*,"(.*)",.*,"(.*)",.*,"(.*)",.*,"(.*)",.*}.*"wxu-general":{.*"mph":"(.*)","km.*h":"(.*)",.*}

;{ AirQualityPollutant=(?siU)"getSunV3GlobalAirQualityUrlConfig":.*{.*"airQualityIndex":(.*),"airQualityCategory":"(.*)","airQualityCategoryIndex":(.*),.*"pollutants":{"NO2":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"O3":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"SO2":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"PM2.5":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"PM10":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"CO":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*}},"messages":{.*"General":{"title":".*","text":"(.*)"}},.*}

;{ PollenForecast=(?siU)"getSunIndexPollenDaypartUrlConfig":.*{.*"daypartName":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*,"grassPollenIndex":(.*),(.*),(.*),(.*),(.*),(.*),.*"grassPollenCategory":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*,"treePollenIndex":(.*),(.*),(.*),(.*),(.*),(.*),.*,"treePollenCategory":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*,"ragweedPollenIndex":(.*),(.*),(.*),(.*),(.*),(.*),.*,"ragweedPollenCategory":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*}

;{ This Allergy Forecast works only in USA
;{ AllergiesForecast=(?siU)"getSunV3CognitiveHealthForecastUrlConfig":.*{.*"riskLevel":(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}
