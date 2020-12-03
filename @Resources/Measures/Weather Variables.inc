; © 2020 by Saber Akiyama

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

LangLoc=en-CA

LocationCode=MYXX0004

; ===========================================================================
; DO NOT CHANGE THIS FILE UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING !!!
; ===========================================================================

; ===========================================================================
; USER AGENT

URLAgent=https://www.whatismybrowser.com/guides/the-latest-user-agent/firefox

UAReg=(?siU)<h2>Latest Firefox on Desktop User Agents</h2>.*<span class="code">(.*)</span>.*

; ===========================================================================
; WEATHER URL

URLCurrentCore=https://weather.com/#LangLoc#/weather/today/l/#LocationCode#

URLTendayCore=https://weather.com/#LangLoc#/weather/tenday/l/#LocationCode#

; ===========================================================================
; WEATHER DAILY CORE REGEXP

CurrentLocation=(?siU)\\"getSunV3LocationPointUrlConfig\\":{.*\\"country\\":\\"(.*)\\",.*\\"displayName\\":\\"(.*)\\",.*}.*\\"getSunV3CurrentObservationsUrlConfig\\":{.*\\"iconCode\\":(.*),.*\\"pressureAltimeter\\":(.*),.*\\"relativeHumidity\\":(.*),.*\\"sunriseTimeLocal\\":\\"(.*)\\",.*\\"sunsetTimeLocal\\":\\"(.*)\\",.*\\"temperature\\":(.*),.*\\"temperatureDewPoint\\":(.*),\\"temperatureFeelsLike\\":(.*),.*\\"uvIndex\\":(.*),\\"validTimeLocal\\":\\"(.*)\\",.*\\"visibility\\":(.*),\\"windDirection\\":(.*),\\"windDirectionCardinal\\":\\"(.*)\\",.*\\"windSpeed\\":(.*),\\"wxPhraseLong\\":\\"(.*)\\",.*}.*\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"moonPhase\\":.\\"(.*)\\",.*\\"temperatureMax\\":\D(.*),.*\\"temperatureMin\\":\D(.*),.*}

OneHourForecast=(?siU)\\"getSunV3HourlyForecastUrlConfig\\":{.*\\"iconCode\\":\D(.*),.*\\"precipChance\\":\D(.*),.*\\"relativeHumidity\\":\D(.*),.*\\"temperature\\":\D(.*),.*\\"temperatureFeelsLike\\":\D(.*),.*\\"uvIndex\\":\D(.*),.*\\"validTimeLocal\\":.\\"(.*)\\",.*\\"windDirectionCardinal\\":.\\"(.*)\\",.*\\"windSpeed\\":\D(.*),.*\\"wxPhraseLong\\":.\\"(.*)\\",.*}

SixHourForecast=(?siU)\\"getSunV3HourlyForecastUrlConfig\\":{.*\\"iconCode\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"precipChance\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"temperature\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"validTimeLocal\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"windDirectionCardinal\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"windSpeed\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"wxPhraseLong\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*"}

; ===========================================================================
; WEATHER TENDAY CORE REGEXP

OneDayForecast=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"moonriseTimeLocal\\":(.*),\\"(.*)\\",.*\\"moonsetTimeLocal\\":(.*),\\"(.*)\\",.*\\"sunriseTimeLocal\\":(.*),\\"(.*)\\",.*\\"sunsetTimeLocal\\":(.*),\\"(.*)\\",.*\\"daypartName\\":(.*),\\"(.*)\\",\\"(.*)\\",.*\\"iconCode\\":(.*),(.*),(.*),.*\\"precipChance\\":(.*),(.*),(.*),.*\\"relativeHumidity\\":(.*),(.*),(.*),.*\\"temperature\\":(.*),(.*),(.*),.*\\"uvIndex\\":(.*),(.*),(.*),.*\\"windDirectionCardinal\\":(.*),\\"(.*)\\",\\"(.*)\\",.*\\"windSpeed\\":(.*),(.*),(.*),.*\\"wxPhraseLong\\":(.*),\\"(.*)\\",\\"(.*)\\",.*}

SevenDayForecast=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":{.*\\"dayOfWeek\\":(.*),\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"temperatureMax\\":(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*\\"temperatureMin\\":(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*\\"iconCode\\":(.*),(.*),(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*\\"precipChance\\":(.*),(.*),(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*\\"windDirectionCardinal\\":(.*),\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"windSpeed\\":(.*),(.*),(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*\\"wxPhraseLong\\":(.*),\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*}

; ===========================================================================
; WEATHER UNITS REGEXP

CurrentUnits=(?siU)\\"wxu-today-details\\":{.*\\"feelsLike\\":\\"(.*)\\",.*\\"wind\\":\\"(.*)\\",\\"humidity\\":\\"(.*)\\",.*\\"uvIndex\\":\\"(.*)\\",.*}

TendayUnits=(?siU)\\"wxu-weather-data\\":{.*\\"humidity\\":\\"(.*)\\",.*\\"uvIndex\\":\\"(.*)\\",.*\\"sunrise\\":\\"(.*)\\",\\"sunset\\":\\"(.*)\\",\\"moonrise\\":\\"(.*)\\",\\"moonset\\":\\"(.*)\\",.*}

WeatherUnits=(?siU)\\"wxu-general\\":{.*\\"mph\\":\\"(.*)\\",\\"km.*h\\":\\"(.*)\\",\\"in\\":\\"(.*)\\",\\"mb\\":\\"(.*)\\",\\"mi\\":\\"(.*)\\",\\"km\\":\\"(.*)\\",.*\\"uvIndexVal\\":\\"(.*)\\",\\"uvIndexExtreme\\":\\"(.*)\\",.*}
