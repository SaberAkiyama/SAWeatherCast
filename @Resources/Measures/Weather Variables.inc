; © 2020 by Saber Akiyama

; Combined variables to work as an @include file for TWC weather data retrieval

; ################# ONE-TIME SETUP INSTRUCTIONS #############################

; Getting and setting your LocationCode can be done one of a couple of ways.

; Go to https://weather.com/
; Search for your city by name.

; Use the long number at the end of the resulting URL, for example:
; "https://weather.com/weather/today/l/d6ddc64611fafe9e42246c9121cca4035cc4a4558e28cf0c6e0982a7ef837329"

; The LocationCode would be "d6ddc64611fafe9e42246c9121cca4035cc4a4558e28cf0c6e0982a7ef837329"
; Copy and enter that as the value for LocationCode below.

[Variables]

LocationCode=USNY0996

;LocationCode=8f0658124f5f5b725ca5ed254decc028fd2099a8ac1843faa2ceb206c9b464d1





; ===========================================================================
; DO NOT CHANGE THIS FILE UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING !!!
; ===========================================================================







; ===========================================================================
; User Agent

URLAgent=https://www.whatismybrowser.com/guides/the-latest-user-agent/chrome

UAReg=(?siU)<h2>Latest Chrome on Android User Agents</h2>.*<span class="code">(.*)</span>.*




; ===========================================================================
; Weather URL

URLToday=https://weather.com/en-US/weather/today/l/#LocationCode#

URLHourly=https://weather.com/en-US/weather/hourbyhour/l/#LocationCode#

URLTenday=https://weather.com/en-US/weather/tenday/l/#LocationCode#

URLAirQuality=https://weather.com/en-US/forecast/air-quality/l/#LocationCode#

;{ URLAllergy=https://weather.com/forecast/allergy/l/#LocationCode#








; ===========================================================================
; Weather RegExp

CurrentLocation=(?siU)"getSunV3LocationPointUrlConfig.*":.*{.*"country.*":.*"(.*)\D",.*"displayName.*":.*"(.*)\D",.*}.*"getSunV3CurrentObservationsUrlConfig.*":{.*"iconCode.*":(.*),.*"pressureAltimeter.*":(.*),.*"relativeHumidity.*":(.*),.*"sunriseTimeLocal.*":.*"(.*)\D",.*"sunsetTimeLocal.*":.*"(.*)\D",.*"temperature.*":(.*),.*"temperatureDewPoint.*":(.*),.*"temperatureFeelsLike.*":(.*),.*"uvIndex.*":(.*),.*"validTimeLocal.*":.*"(.*)\D",.*"visibility.*":(.*),.*"windDirection.*":(.*),.*"windDirectionCardinal.*":.*"(.*)\D",.*"windSpeed.*":(.*),.*"wxPhraseLong.*":.*"(.*)\D",.*}.*"getSunV3DailyForecastUrlConfig.*":{.*"moonPhase.*":\D.*"(.*)\D",.*"temperatureMax.*":\D(.*),.*"temperatureMin.*":\D(.*),.*}.*"wxu-today-details.*":{.*"feelsLike.*":.*"(.*)\D",.*}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*"in.*":.*"(.*)\D",.*"mb.*":.*"(.*)\D",.*"mi.*":.*"(.*)\D",.*"km.*":.*"(.*)\D",.*"uvIndexVal.*":.*".*\s(.*)\s.*",.*"uvIndexExtreme.*":.*"(.*)\D",.*}

OneHourForecast=(?siU)"getSunV3HourlyForecastUrlConfig.*":.*{.*"iconCode.*":\D(.*),.*"precipChance.*":\D(.*),.*"relativeHumidity.*":\D(.*),.*"temperature.*":\D(.*),.*"temperatureFeelsLike.*":\D(.*),.*"uvIndex.*":\D(.*),.*"validTimeLocal.*":\D.*"(.*)\D",.*"windDirectionCardinal.*":.*"(.*)\D",.*"windSpeed.*":\D(.*),.*"wxPhraseLong.*":\D.*"(.*)\D",.*}.*"wxu-weather-data.*":{.*"feelsLike.*":.*"(.*)\D",.*"wind.*":.*"(.*)\D",.*"humidity.*":.*"(.*)\D",.*"uvIndex.*":.*"(.*)\D",.*}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*"uvIndexVal.*":.*".*\s(.*)\s.*",.*"uvIndexExtreme.*":.*"(.*)\D",.*}

SixHourForecast=(?siU)"getSunV3HourlyForecastUrlConfig.*":.*{.*"iconCode.*":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"precipChance.*":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"temperature.*":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"validTimeLocal.*":\D.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"windDirectionCardinal.*":\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",.*"windSpeed.*":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"wxPhraseLong.*":\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",.*"}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*}

OneDayForecast=(?siU)"getSunV3DailyForecastUrlConfig.*":.*{.*"moonriseTimeLocal.*":\D.*"(.*)\D",.*"moonsetTimeLocal.*":\D.*"(.*)\D",.*"sunriseTimeLocal.*":\D.*"(.*)\D",.*"(.*)\D",.*"sunsetTimeLocal.*":\D.*"(.*)\D",.*"(.*)\D",.*"daypartName.*":\D.*"(.*)\D",.*"(.*)\D",.*"iconCode.*":\D(.*),(.*),(.*),.*"precipChance.*":\D(.*),(.*),(.*),.*"relativeHumidity.*":\D(.*),(.*),(.*),.*"temperature.*":\D(.*),(.*),(.*),.*"uvIndex.*":\D(.*),(.*),(.*),.*"windDirectionCardinal.*":\D.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*"windSpeed.*":\D(.*),(.*),(.*),.*"wxPhraseLong.*":\D.*"(.*)\D",.*"(.*)\D",.*"(.*)\D",.*}.*"wxu-weather-data.*":{.*"humidity.*":.*"(.*)\D",.*"uvIndex.*":.*"(.*)\D",.*"sunrise.*":.*"(.*)\D",.*"sunset.*":.*"(.*)\D",.*"moonrise.*":.*"(.*)\D",.*"moonset.*":.*"(.*)\D"}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*"uvIndexVal.*":.*".*\s(.*)\s.*",.*"uvIndexExtreme.*":.*"(.*)\D",.*}

SevenDayForecast=(?siU)"getSunV3DailyForecastUrlConfig.*":.*{.*"dayOfWeek.*":\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",\D.*"(.*)\D",.*"temperatureMax.*":\D(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*"temperatureMin.*":\D(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*"iconCode.*":\D(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*"precipChance.*":\D(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*"windDirectionCardinal.*":\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*"windSpeed.*":\D(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*"wxPhraseLong.*":\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*,\D.*"(.*)\D",.*}.*"wxu-general.*":{.*"mph.*":.*"(.*)\D",.*"km.*h.*":.*"(.*)\D",.*"today.*":.*"(.*)\D",.*"tomorrow.*":.*"(.*)\D",.*}

AirQuality=(?siU)"GlobalAirQualityV3":.*{.*"airQualityIndex":(.*),"airQualityCategory":"(.*)","airQualityCategoryIndex":(.*),.*"primaryPollutant":"(.*)","pollutants":{"NO2":{"name":"(.*)",.*"amount":(.*),"unit":"(.*)","category":"(.*)","categoryIndex":(.*),.*},"O3":{"name":"(.*)",.*"amount":(.*),.*"category":"(.*)","categoryIndex":(.*),.*},"SO2":{"name":"(.*)",.*"amount":(.*),.*"category":"(.*)","categoryIndex":(.*),.*},"PM2.5":{"name":"(.*)",.*"amount":(.*),.*"category":"(.*)","categoryIndex":(.*),.*},"PM10":{"name":"(.*)",.*"amount":(.*),.*"category":"(.*)","categoryIndex":(.*),.*},"CO":{"name":"(.*)",.*"amount":(.*),.*"category":"(.*)","categoryIndex":(.*),.*}},"messages":{.*"General":{.*"text":"(.*)"}},.*}.*"airQuality":{.*"Primary Pollutant":"(.*)",.*}

;{ PollenForecast=(?siU)"getSunIndexPollenDaypartUrlConfig":.*{.*"daypartName":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*,"grassPollenIndex":(.*),(.*),(.*),(.*),(.*),(.*),.*"grassPollenCategory":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*,"treePollenIndex":(.*),(.*),(.*),(.*),(.*),(.*),.*,"treePollenCategory":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*,"ragweedPollenIndex":(.*),(.*),(.*),(.*),(.*),(.*),.*,"ragweedPollenCategory":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*}

;{ This Allergy Forecast works only in USA
;{ AllergiesForecast=(?siU)"getSunV3CognitiveHealthForecastUrlConfig":.*{.*"riskLevel":(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}
