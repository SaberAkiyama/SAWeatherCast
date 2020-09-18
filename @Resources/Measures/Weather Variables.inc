; © 2020 by Saber Akiyama

; Combined variables to work as an @include file for TWC weather data retrieval

; ################# ONE-TIME SETUP INSTRUCTIONS #############################

; Getting and setting your LocationCode can be done one of a couple of ways.

; Go to https://weather.com/
; Search for your city by name.

; Use the long number at the end of the resulting URL, for example:
; "https://weather.com/weather/today/l/d6ddc64611fafe9e42246c9121cca4035cc4a4558e28cf0c6e0982a7ef837329"

; The LocationCode would be "d6ddc64611fafe9e42246c9121cca4035cc4a4558e28cf0c6e0982a7ef837329"
; Copy and enter that as the value for "LocationCode" below.

[Variables]

LangLoc=en-US

LocationCode=USNY0996



; ===========================================================================
; DO NOT CHANGE THIS FILE UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING !!!
; ===========================================================================







; ===========================================================================
; USER AGENT

URLAgent=https://www.whatismybrowser.com/guides/the-latest-user-agent/chrome

UAReg=(?siU)<h2>Latest Chrome on Android User Agents</h2>.*<span class="code">(.*)</span>.*




; ===========================================================================
; WEATHER URL

URLCurrentCore=https://weather.com/#LangLoc#/weather/today/l/#LocationCode#

URLTendayCore=https://weather.com/#LangLoc#/weather/tenday/l/#LocationCode#

URLPollen=https://weather.com/#LangLoc#/forecast/allergy/l/#LocationCode#



; ===========================================================================
; WEATHER CORE REGEXP

CurrentLocation=(?siU)\\"getSunV3LocationPointUrlConfig\\":.*{.*\\"country\\":\\"(.*)\\",.*\\"displayName\\":\\"(.*)\\",.*}.*\\"getSunV3CurrentObservationsUrlConfig\\":.*{.*\\"iconCode\\":(.*),.*\\"pressureAltimeter\\":(.*),.*\\"relativeHumidity\\":(.*),.*\\"sunriseTimeLocal\\":\\"(.*)\\",.*\\"sunsetTimeLocal\\":\\"(.*)\\",.*\\"temperature\\":(.*),.*\\"temperatureDewPoint\\":(.*),\\"temperatureFeelsLike\\":(.*),.*\\"uvIndex\\":(.*),\\"validTimeLocal\\":\\"(.*)\\",.*\\"visibility\\":(.*),\\"windDirection\\":(.*),\\"windDirectionCardinal\\":\\"(.*)\\",.*\\"windSpeed\\":(.*),\\"wxPhraseLong\\":\\"(.*)\\",.*}.*\\"getSunV3DailyForecastWithHeadersUrlConfig\\":.*{.*\\"moonPhase\\":.\\"(.*)\\",.*\\"temperatureMax\\":\D(.*),.*\\"temperatureMin\\":\D(.*),.*}

OneHourForecast=(?siU)\\"getSunV3HourlyForecastUrlConfig\\":{.*\\"iconCode\\":\D(.*),.*\\"precipChance\\":\D(.*),.*\\"relativeHumidity\\":\D(.*),.*\\"temperature\\":\D(.*),.*\\"temperatureFeelsLike\\":\D(.*),.*\\"uvIndex\\":\D(.*),.*\\"validTimeLocal\\":.\\"(.*)\\",.*\\"windDirectionCardinal\\":.\\"(.*)\\",.*\\"windSpeed\\":\D(.*),.*\\"wxPhraseLong\\":.\\"(.*)\\",.*}

SixHourForecast=(?siU)\\"getSunV3HourlyForecastUrlConfig\\":{.*\\"iconCode\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"precipChance\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"temperature\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"validTimeLocal\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"windDirectionCardinal\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"windSpeed\\":\D(.*),(.*),(.*),(.*),(.*),(.*),.*\\"wxPhraseLong\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*"}

OneDayForecast=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":.*{.*\\"moonriseTimeLocal\\":.\\"(.*)\\",\\"(.*)\\",.*\\"moonsetTimeLocal\\":.\\"(.*)\\",\\"(.*)\\",.*\\"sunriseTimeLocal\\":.\\"(.*)\\",\\"(.*)\\",.*\\"sunsetTimeLocal\\":.\\"(.*)\\",\\"(.*)\\",.*\\"daypartName\\":.\\"(.*)\\",\\"(.*)\\",.*\\"iconCode\\":\D(.*),(.*),(.*),.*\\"precipChance\\":\D(.*),(.*),(.*),.*\\"relativeHumidity\\":\D(.*),(.*),(.*),.*\\"temperature\\":\D(.*),(.*),(.*),.*\\"uvIndex\\":\D(.*),(.*),(.*),.*\\"windDirectionCardinal\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"windSpeed\\":\D(.*),(.*),(.*),.*\\"wxPhraseLong\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*}

SevenDayForecast=(?siU)\\"getSunV3DailyForecastWithHeadersUrlConfig\\":.*{.*\\"dayOfWeek\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"temperatureMax\\":\D(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*\\"temperatureMin\\":\D(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*\\"iconCode\\":\D(.*),(.*),(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*\\"precipChance\\":\D(.*),(.*),(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*\\"windDirectionCardinal\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*\\"windSpeed\\":\D(.*),(.*),(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*,(.*),.*\\"wxPhraseLong\\":.\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",\\"(.*)\\",.*}

AirQuality=(?siU)\\"getSunV3GlobalAirQualityUrlConfig\\":.*{.*\\"airQualityIndex\\":(.*),.*\\"airQualityCategory\\":\\"(.*)\\",.*\\"airQualityCategoryIndex\\":(.*),.*\\"primaryPollutant\\":\\"(.*)\\",.*\\"pollutants\\":.*(?(?=.*\\"NO2\\").*:{\\"name\\":\\"(.*)\\",.*\\"amount\\":(.*),\\"unit\\":\\"(.*)\\",\\"category\\":\\"(.*)\\",\\"categoryIndex\\":(.*),.*).*(?(?=.*\\"O3\\").*{\\"name\\":\\"(.*)\\",.*\\"amount\\":(.*),.*\\"category\\":\\"(.*)\\",\\"categoryIndex\\":(.*),.*).*(?(?=.*\\"SO2\\").*:{\\"name\\":\\"(.*)\\",.*\\"amount\\":(.*),.*\\"category\\":\\"(.*)\\",\\"categoryIndex\\":(.*),.*).*(?(?=.*\\"PM2.5\\").*:{\\"name\\":\\"(.*)\\",.*\\"amount\\":(.*),.*\\"category\\":\\"(.*)\\",\\"categoryIndex\\":(.*),.*).*(?(?=.*\\"PM10\\").*:{\\"name\\":\\"(.*)\\",.*\\"amount\\":(.*),.*\\"category\\":\\"(.*)\\",\\"categoryIndex\\":(.*),.*).*(?(?=.*\\"CO\\").*:{\\"name\\":\\"(.*)\\",.*\\"amount\\":(.*),.*\\"category\\":\\"(.*)\\",\\"categoryIndex\\":(.*),.*),.*\\"messages\\":{.*\\"General\\":{.*\\"text\\":\\"(.*)\\"}}

; ===========================================================================
; WEATHER UNITS REGEXP

CurrentUnits=(?siU)\\"wxu-today-details\\":{.*\\"feelsLike\\":\\"(.*)\\",.*\\"wind\\":\\"(.*)\\",\\"humidity\\":\\"(.*)\\",.*\\"uvIndex\\":\\"(.*)\\",.*}

TendayUnits=(?siU)\\"wxu-weather-data\\":{.*\\"sunrise\\":\\"(.*)\\",\\"sunset\\":\\"(.*)\\",\\"moonrise\\":\\"(.*)\\",\\"moonset\\":\\"(.*)\\"}

WeatherUnits=(?siU)\\"wxu-general\\":{.*\\"mph\\":\\"(.*)\\",\\"km.*h\\":\\"(.*)\\",\\"in\\":\\"(.*)\\",\\"mb\\":\\"(.*)\\",\\"mi\\":\\"(.*)\\",\\"km\\":\\"(.*)\\",.*\\"uvIndexVal\\":\\".*\s(.*)\s.*",\\"uvIndexExtreme\\":\\"(.*)\\",.*}

AirQualityDatail=(?siU)\\"wxu-air-quality\\":{\\"airQuality\\":\\"(.*)\\",.*}
