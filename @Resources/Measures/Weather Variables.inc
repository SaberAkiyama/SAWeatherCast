; © 2021 by Saber Akiyama

; Combined variables to work as an @include file for TWC weather data retrieval

; ################# ONE-TIME SETUP INSTRUCTIONS #############################

; Getting and setting your LocationCode can be done one of a couple of ways.

; Go to https://weather.com/
; Search for your city by name.

; Use the long number at the end of the resulting URL, for example:
; "https://weather.com/en-US/weather/today/l/ccb09a4a3cb9ff4c8c5324b73d8cc6c986ab1e58789e0d37c0a1154b46ec30e9"

; The LocationCode would be "ccb09a4a3cb9ff4c8c5324b73d8cc6c986ab1e58789e0d37c0a1154b46ec30e9"
; Copy and enter that as the value for "LocationCode" below.

[Variables]

LangLoc=en-US

LocationCode=ccb09a4a3cb9ff4c8c5324b73d8cc6c986ab1e58789e0d37c0a1154b46ec30e9

; ===========================================================================
; DO NOT CHANGE THIS FILE UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING !!!
; ===========================================================================

; ===========================================================================
; WEATHER URL

URLCurrentCore=https://weather.com/#LangLoc#/weather/today/l/#LocationCode#

URLTendayCore=https://weather.com/#LangLoc#/weather/tenday/l/#LocationCode#

; ===========================================================================
; WEATHER DAILY CORE REGEXP

CurrentLocation=(?siU)\\"getSunV3LocationPointUrlConfig\\":{.*\\"country\\":\\"(.*)\\",.*\\"displayName\\":\\"(.*)\\",.*}.*\\"getSunV3CurrentObservationsUrlConfig\\":{.*\\"iconCode\\":(.*),.*\\"pressureAltimeter\\":(.*),.*\\"relativeHumidity\\":(.*),.*\\"sunriseTimeLocal\\":\\"(.*)\\",.*\\"sunsetTimeLocal\\":\\"(.*)\\",.*\\"temperature\\":(.*),.*\\"temperatureDewPoint\\":(.*),\\"temperatureFeelsLike\\":(.*),.*\\"uvIndex\\":(.*),\\"validTimeLocal\\":\\"(.*)\\",.*\\"visibility\\":(.*),\\"windDirection\\":(.*),\\"windDirectionCardinal\\":\\"(.*)\\",.*\\"windSpeed\\":(.*),\\"wxPhraseLong\\":\\"(.*)\\",.*}.*\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"moonPhase\\":.\\"(.*)\\",.*\\"temperatureMax\\":\D(.*),.*\\"temperatureMin\\":\D(.*),.*}

OneHourForecast=(?siU)\\"getSunV3HourlyForecastUrlConfig\\":{.*\\"duration:1day;.*\\"iconCode\\":\D(.*),.*\\"precipChance\\":\D(.*),.*\\"relativeHumidity\\":\D(.*),.*\\"temperature\\":\D(.*),.*\\"temperatureFeelsLike\\":\D(.*),.*\\"uvIndex\\":\D(.*),.*\\"validTimeLocal\\":.\\"(.*)\\",.*\\"windDirectionCardinal\\":.\\"(.*)\\",.*\\"windSpeed\\":\D(.*),.*\\"wxPhraseLong\\":.\\"(.*)\\",.*}

SixHourForecast=(?siU)\\"getSunV3HourlyForecastUrlConfig\\":{.*\\"iconCode\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"precipChance\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"temperature\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"validTimeLocal\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"windDirectionCardinal\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"windSpeed\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"wxPhraseLong\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*"}

AirQuality=(?siU)\\"getSunV3GlobalAirQualityUrlConfig\\":.*{.*\\"airQualityIndex\\":(.*),\\"airQualityCategory\\":\\"(.*)\\",.*,\\"primaryPollutant\\":\\"(.*)\\".*}

Pollutants=(?siU)\\"getSunV3GlobalAirQualityUrlConfig\\":.*{.*\\"pollutants\\":.*(?(?=.*\\"NO2\\").*:{\\"name\\":\\"(.*)\\",\\"phrase\\":\\"(.*)\\",\\"amount\\":(.*),\\"unit\\":\\"(.*)\\",\\"category\\":\\"(.*)\\",\\"categoryIndex\\":.*,\\"index\\":.*).*(?(?=.*\\"O3\\").*:{\\"name\\":\\"(.*)\\",\\"phrase\\":\\"(.*)\\",\\"amount\\":(.*),\\"unit\\":\\"(.*)\\",\\"category\\":\\"(.*)\\",\\"categoryIndex\\":.*,\\"index\\":.*).*(?(?=.*\\"SO2\\").*:{\\"name\\":\\"(.*)\\",\\"phrase\\":\\"(.*)\\",\\"amount\\":(.*),\\"unit\\":\\"(.*)\\",\\"category\\":\\"(.*)\\",\\"categoryIndex\\":.*,\\"index\\":.*).*(?(?=.*\\"PM2.5\\").*:{\\"name\\":\\"(.*)\\",\\"phrase\\":\\"(.*)\\",\\"amount\\":(.*),\\"unit\\":\\"(.*)\\",\\"category\\":\\"(.*)\\",\\"categoryIndex\\":.*,\\"index\\":.*).*(?(?=.*\\"PM10\\").*:{\\"name\\":\\"(.*)\\",\\"phrase\\":\\"(.*)\\",\\"amount\\":(.*),\\"unit\\":\\"(.*)\\",\\"category\\":\\"(.*)\\",\\"categoryIndex\\":.*,\\"index\\":.*).*(?(?=.*\\"CO\\").*:{\\"name\\":\\"(.*)\\",\\"phrase\\":\\"(.*)\\",\\"amount\\":(.*),\\"unit\\":\\"(.*)\\",\\"category\\":\\"(.*)\\",\\"categoryIndex\\":.*,\\"index\\":.*),.*}

AirQualityDetails=(?siU)\\"getSunV3GlobalAirQualityUrlConfig\\":.*{.*\\"messages\\":{.*\\"General\\":{.*\\"text\\":\\"(.*)\\"}},.*}

SeverityAlert=(?siU)\\"getSunWeatherAlertHeadlinesUrlConfig\\":.*{.*,\\"alerts\\":.*(?(?=.*{\\"detailKey\\").*:\\".*\\",.*,\\"eventDescription\\":\\"(.*)\\",\\"severityCode\\":(.*),\\"severity\\":\\"(.*)\\",.*,\\"headlineText\\":\\"(.*)\\",.*}).*(?(?=.*{\\"detailKey\\").*:\\".*\\",.*,\\"eventDescription\\":\\"(.*)\\",\\"severityCode\\":(.*),\\"severity\\":\\"(.*)\\",.*,\\"headlineText\\":\\"(.*)\\",.*}).*(?(?=.*{\\"detailKey\\").*:\\".*\\",.*,\\"eventDescription\\":\\"(.*)\\",\\"severityCode\\":(.*),\\"severity\\":\\"(.*)\\",.*,\\"headlineText\\":\\"(.*)\\",.*}).*(?(?=.*{\\"detailKey\\").*:\\".*\\",.*,\\"eventDescription\\":\\"(.*)\\",\\"severityCode\\":(.*),\\"severity\\":\\"(.*)\\",.*,\\"headlineText\\":\\"(.*)\\",.*}).*(?(?=.*{\\"detailKey\\").*:\\".*\\",.*,\\"eventDescription\\":\\"(.*)\\",\\"severityCode\\":(.*),\\"severity\\":\\"(.*)\\",.*,\\"headlineText\\":\\"(.*)\\",.*}).*(?(?=.*{\\"detailKey\\").*:\\".*\\",.*,\\"eventDescription\\":\\"(.*)\\",\\"severityCode\\":(.*),\\"severity\\":\\"(.*)\\",.*,\\"headlineText\\":\\"(.*)\\",.*}).*(?(?=.*{\\"detailKey\\").*:\\".*\\",.*,\\"eventDescription\\":\\"(.*)\\",\\"severityCode\\":(.*),\\"severity\\":\\"(.*)\\",.*,\\"headlineText\\":\\"(.*)\\",.*}).*

; ===========================================================================
; WEATHER TENDAY CORE REGEXP

OneDayForecast=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"moonriseTimeLocal\\":.*\\"(.*)\\",\\"(.*)\\",.*\\"moonsetTimeLocal\\":.*\\"(.*)\\",\\"(.*)\\",.*\\"sunriseTimeLocal\\":.*\\"(.*)\\",\\"(.*)\\",.*\\"sunsetTimeLocal\\":.*\\"(.*)\\",\\"(.*)\\",.*\\"daypartName\\":(.*),\\"(.*)\\",\\"(.*)\\",.*\\"iconCode\\":(.*),(.*),(.*),.*\\"precipChance\\":(.*),(.*),(.*),.*\\"relativeHumidity\\":(.*),(.*),(.*),.*\\"temperature\\":(.*),(.*),(.*),.*\\"uvIndex\\":(.*),(.*),(.*),.*\\"windDirectionCardinal\\":(.*),\\"(.*)\\",\\"(.*)\\",.*\\"windSpeed\\":(.*),(.*),(.*),.*\\"wxPhraseLong\\":(.*),\\"(.*)\\",\\"(.*)\\",.*}

SevenDayDOW=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"dayOfWeek\\":(.*),\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*}

SevenDayTempMax=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"dayOfWeek\\":.*\\"temperatureMax\\":(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayTempMin=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"dayOfWeek\\":.*\\"temperatureMin\\":(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayIcon=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"dayOfWeek\\":.*\\"iconCode\\":(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayPrecip=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"dayOfWeek\\":.*\\"precipChance\\":(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayWDC=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"dayOfWeek\\":.*\\"windDirectionCardinal\\":(.*),\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*}

SevenDayWindSpeed=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"dayOfWeek\\":.*\\"windSpeed\\":(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayCondition=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"dayOfWeek\\":.*\\"wxPhraseLong\\":(.*),\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*}

SevenDayDetails=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"iconCode\\":.*\\"narrative\\":(.*),\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*}

; ===========================================================================
; WEATHER UNITS REGEXP

CurrentUnits=(?siU)\\"wxu-today-details\\":{.*\\"feelsLike\\":\\"(.*)\\",.*\\"humidity\\":\\"(.*)\\",.*\\"uvIndex\\":\\"(.*)\\",.*\\"wind\\":\\"(.*)\\"}

AirQualityUnits=(?siU)\\"wxu-air-quality\\":{\\"airQuality\\":\\"(.*)\\",.*\\"allPollutants\\":\\"(.*)\\",.*\\"primaryPollutant\\":\\"(.*)\\",.*}

TendayUnits=(?siU)\\"wxu-weather-data\\":{.*\\"humidity\\":\\"(.*)\\",\\"moonrise\\":\\"(.*)\\",\\"moonset\\":\\"(.*)\\",.*\\"sunrise\\":\\"(.*)\\",\\"sunset\\":\\"(.*)\\",\\"uvIndex\\":\\"(.*)\\",.*}

WeatherUnits=(?siU)\\"wxu-general\\":{.*\\"in\\":\\"(.*)\\",.*\\"km\\":\\"(.*)\\",\\"km/h\\":\\"(.*)\\",.*\\"mb\\":\\"(.*)\\",\\"mi\\":\\"(.*)\\",.*\\"mph\\":\\"(.*)\\",.*\\"uvIndexExtreme\\":\\"(.*)\\",\\"uvIndexVal\\":\\"(.*)\\"}
