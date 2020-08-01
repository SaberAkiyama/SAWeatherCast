; © 2020 by Saber Akiyama

; Combined variables to work as an @include file for TWC weather data retrieval

; ################# ONE-TIME SETUP INSTRUCTIONS #############################










; ===========================================================================
; DO NOT CHANGE THIS FILE UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING !!!
; ===========================================================================

[Variables]

LocationCode=MYXX0004
;LocationCode=8f0658124f5f5b725ca5ed254decc028fd2099a8ac1843faa2ceb206c9b464d1

UA=Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Mobile Safari/537.36





; ===========================================================================
; Weather URL

URLToday=https://weather.com/en-US/weather/today/l/#LocationCode#

URLHourly=https://weather.com/en-US/weather/hourbyhour/l/#LocationCode#

URLTenday=https://weather.com/en-US/weather/tenday/l/#LocationCode#

;{ URLAllergy=https://weather.com/forecast/allergy/l/#LocationCode#





; ===========================================================================
; Weather RegExp

CurrentLocation=(?siU)"getSunV3LocationPointUrlConfig.*":.*{.*"country.*":.*"(.*)\D",.*"displayName.*":.*"(.*)\D",.*}.*"getSunV3CurrentObservationsUrlConfig.*":{.*"iconCode.*":(.*),.*"pressureAltimeter.*":(.*),.*"relativeHumidity.*":(.*),.*"sunriseTimeLocal.*":.*"(.*)\D",.*"sunsetTimeLocal.*":.*"(.*)\D",.*"temperature.*":(.*),.*"temperatureDewPoint.*":(.*),.*"temperatureFeelsLike.*":(.*),.*"uvIndex.*":(.*),.*"validTimeLocal.*":.*"(.*)\D",.*"visibility.*":(.*),.*"windDirection.*":(.*),.*"windDirectionCardinal.*":.*"(.*)\D",.*"windSpeed.*":(.*),.*"wxPhraseLong.*":.*"(.*)\D",.*}.*"getSunV3DailyForecastUrlConfig.*":{.*"moonPhase.*":\D.*"(.*)\D",.*"temperatureMax.*":\D(.*),.*"temperatureMin.*":\D(.*),.*}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*"in.*":.*"(.*)\D",.*"mb.*":.*"(.*)\D",.*"mi.*":.*"(.*)\D",.*"km.*":.*"(.*)\D",.*"uvIndexVal.*":.*".*\s(.*)\s.*",.*"uvIndexExtreme.*":.*"(.*)\D",.*}.*"wxu-today-details.*":{.*"feelsLike.*":.*"(.*)\D",.*}

OneHourForecast=(?siU)"getSunV3HourlyForecastUrlConfig.*":.*{.*"iconCode.*":\D(.*),.*"precipChance.*":\D(.*),.*"relativeHumidity.*":\D(.*),.*"temperature.*":\D(.*),.*"temperatureFeelsLike.*":\D(.*),.*"uvIndex.*":\D(.*),.*"validTimeLocal.*":\D.*"(.*)\D",.*"windDirectionCardinal.*":.*"(.*)\D",.*"windSpeed.*":\D(.*),.*"wxPhraseLong.*":\D.*"(.*)\D",.*}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*"uvIndexVal.*":.*".*\s(.*)\s.*",.*"uvIndexExtreme.*":.*"(.*)\D",.*}.*"wxu-weather-data.*":{.*"feelsLike.*":.*"(.*)\D",.*"wind.*":.*"(.*)\D",.*"humidity.*":.*"(.*)\D",.*"uvIndex.*":.*"(.*)\D",.*}

SixHourForecast=(?siU)"getSunV3HourlyForecastUrlConfig.*":.*{.*"iconCode.*":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"precipChance.*":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"temperature.*":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"validTimeLocal.*":\D.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"windDirectionCardinal.*":\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",.*"windSpeed.*":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"wxPhraseLong.*":\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",.*"}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*}

OneDayForecast=(?siU)"getSunV3DailyForecastUrlConfig.*":.*{.*"dayOfWeek.*":\D.*"(.*)\D",.*"moonriseTimeLocal.*":\D.*"(.*)\D",.*"(.*)\D",.*"moonsetTimeLocal.*":\D.*"(.*)\D",.*"(.*)\D",.*"sunriseTimeLocal.*":\D.*"(.*)\D",.*"(.*)\D",.*"sunsetTimeLocal.*":\D.*"(.*)\D",.*"(.*)\D",.*"daypartName.*":\D.*"(.*)\D",.*"(.*)\D",.*"iconCode.*":\D(.*),(.*),(.*),.*"precipChance.*":\D(.*),(.*),(.*),.*"relativeHumidity.*":\D(.*),(.*),(.*),.*"temperature.*":\D(.*),(.*),(.*),.*"uvIndex.*":\D(.*),(.*),(.*),.*"windDirectionCardinal.*":\D.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"windSpeed.*":\D(.*),(.*),(.*),.*"wxPhraseLong.*":\D.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*"uvIndexVal.*":.*".*\s(.*)\s.*",.*"uvIndexExtreme.*":.*"(.*)\D",.*}.*"wxu-weather-data.*":{.*"humidity.*":.*"(.*)\D",.*"uvIndex.*":.*"(.*)\D",.*"sunrise.*":.*"(.*)\D",.*"sunset.*":.*"(.*)\D",.*"moonrise.*":.*"(.*)\D",.*"moonset.*":.*"(.*)\D"}

SevenDayForecast=(?siU)"getSunV3DailyForecastUrlConfig.*":.*{.*"dayOfWeek.*":\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",.*"temperatureMax.*":\D(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*"temperatureMin.*":\D(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*"iconCode.*":\D(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*"precipChance.*":\D(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*"windDirectionCardinal.*":\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*"windSpeed.*":\D(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*"wxPhraseLong.*":\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*"today.*":.*"(.*)\D",.*"tomorrow.*":.*"(.*)\D",.*}

;{ AirQualityPollutant=(?siU)"getSunV3GlobalAirQualityUrlConfig":.*{.*"airQualityIndex":(.*),"airQualityCategory":"(.*)","airQualityCategoryIndex":(.*),.*"pollutants":{"NO2":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"O3":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"SO2":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"PM2.5":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"PM10":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*},"CO":{"name":"(.*)","phrase":".*","amount":(.*),"unit":"(.*)","category":"(.*)",.*}},"messages":{.*"General":{"title":".*","text":"(.*)"}},.*}

;{ PollenForecast=(?siU)"getSunIndexPollenDaypartUrlConfig":.*{.*"daypartName":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*,"grassPollenIndex":(.*),(.*),(.*),(.*),(.*),(.*),.*"grassPollenCategory":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*,"treePollenIndex":(.*),(.*),(.*),(.*),(.*),(.*),.*,"treePollenCategory":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*,"ragweedPollenIndex":(.*),(.*),(.*),(.*),(.*),(.*),.*,"ragweedPollenCategory":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*}

;{ This Allergy Forecast works only in USA
;{ AllergiesForecast=(?siU)"getSunV3CognitiveHealthForecastUrlConfig":.*{.*"riskLevel":(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}
