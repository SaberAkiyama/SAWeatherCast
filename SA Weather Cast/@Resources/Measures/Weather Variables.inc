; © 2023 by Saber Akiyama

; ===========================================================================
; DO NOT CHANGE THIS FILE UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING !!!
; ===========================================================================

[Variables]

Latitude=40.751764

Longitude=-73.9780977

TypeUnits=e

LangLoc=en-US

; ===========================================================================
; WEATHER CORE

APIKey=71f92ea9dd2f4790b92ea9dd2f779061

URLWeatherCore=https://api.weather.com/v3/aggcommon/v3-wx-observations-current;v3-wx-forecast-daily-15day;v3alertsHeadlines;v3-location-point;v3-wx-forecast-hourly-12hour?format=json&geocode=#Latitude#,#Longitude#&units=#TypeUnits#&language=#LangLoc#&apiKey=#APIKey#

URLAirQualityCore=https://api.weather.com/v3/wx/globalAirQuality?geocode=#Latitude#,#Longitude#&language=#LangLoc#&scale=EPA&format=json&apiKey=#APIKey#

; ===========================================================================
; WEATHER DAILY CORE REGEXP

LocationPoint=(?siU)"v3-location-point":.*{.*"country":"(.*)",.*"displayName":"(.*)",.*}

CurrentObservations=(?siU)"v3-wx-observations-current":.*{.*"iconCode":(.*),.*"pressureAltimeter":(.*),.*"relativeHumidity":(.*),.*"sunriseTimeLocal":"(.*)",.*"sunsetTimeLocal":"(.*)",.*"temperature":(.*),.*"temperatureDewPoint":(.*),"temperatureFeelsLike":(.*),.*"uvIndex":(.*),"validTimeLocal":"(.*)",.*"visibility":(.*),.*"windDirectionCardinal":"(.*)",.*"windSpeed":(.*),"wxPhraseLong":"(.*)",.*}.*"v3-wx-forecast-daily-15day":.*{.*"moonPhase":."(.*)",.*"temperatureMax":\D(.*),.*"temperatureMin":\D(.*),.*}.*"v3-location-point":.*{.*"country":"(.*)",.*"displayName":"(.*)",.*}

OneHourForecast=(?siU)"v3-wx-forecast-hourly-12hour":.*{.*"iconCode":\D(.*),.*"precipChance":\D(.*),.*"relativeHumidity":\D(.*),.*"temperature":\D(.*),.*"temperatureFeelsLike":\D(.*),.*"uvIndex":\D(.*),.*"validTimeLocal":."(.*)",.*"windDirectionCardinal":."(.*)",.*"windSpeed":\D(.*),.*"wxPhraseLong":."(.*)",.*}

SixHourForecast=(?siU)"v3-wx-forecast-hourly-12hour":.*{.*"iconCode":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"precipChance":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"temperature":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"validTimeLocal":."(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*"windDirectionCardinal":."(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*"windSpeed":\D(.*),(.*),(.*),(.*),(.*),(.*),.*"wxPhraseLong":."(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*}

AirQuality=(?siU)"globalairquality":.*{.*"airQualityIndex":(.*),"airQualityCategory":"(.*)",.*"primaryPollutant":"(.*)",.*}

Pollutants=(?siU)"globalairquality":.*"pollutants":.*(?(?=.*"CO").*:{"name":"(.*)","phrase":"(.*)","amount":(.*),"unit":"(.*)","category":"(.*)","categoryIndex":.*,"index":.*})(?(?=.*"NO2").*:{"name":"(.*)","phrase":"(.*)","amount":(.*),"unit":"(.*)","category":"(.*)","categoryIndex":.*,"index":.*})(?(?=.*"O3").*:{"name":"(.*)","phrase":"(.*)","amount":(.*),"unit":"(.*)","category":"(.*)","categoryIndex":.*,"index":.*})(?(?=.*"PM10").*:{"name":"(.*)","phrase":"(.*)","amount":(.*),"unit":"(.*)","category":"(.*)","categoryIndex":.*,"index":.*})(?(?=.*"PM2.5").*:{"name":"(.*)","phrase":"(.*)","amount":(.*),"unit":"(.*)","category":"(.*)","categoryIndex":.*,"index":.*})(?(?=.*"SO2").*:{"name":"(.*)","phrase":"(.*)","amount":(.*),"unit":"(.*)","category":"(.*)","categoryIndex":.*,"index":.*})

AirQualityDetails=(?siU)"globalairquality":.*{.*"messages":.*"General":{.*"text":"(.*)"},.*}

SeverityAlert=(?siU)"v3alertsHeadlines":(?(?=.*{.*,"alerts":).*{.*,"alerts":.*(?(?=.*{"detailKey").*:".*",.*,"eventDescription":"(.*)","severityCode":(.*),"severity":"(.*)",.*,"headlineText":"(.*)",.*}).*(?(?=.*{"detailKey").*:".*",.*,"eventDescription":"(.*)","severityCode":(.*),"severity":"(.*)",.*,"headlineText":"(.*)",.*}).*(?(?=.*{"detailKey").*:".*",.*,"eventDescription":"(.*)","severityCode":(.*),"severity":"(.*)",.*,"headlineText":"(.*)",.*}).*(?(?=.*{"detailKey").*:".*",.*,"eventDescription":"(.*)","severityCode":(.*),"severity":"(.*)",.*,"headlineText":"(.*)",.*}).*(?(?=.*{"detailKey").*:".*",.*,"eventDescription":"(.*)","severityCode":(.*),"severity":"(.*)",.*,"headlineText":"(.*)",.*}).*(?(?=.*{"detailKey").*:".*",.*,"eventDescription":"(.*)","severityCode":(.*),"severity":"(.*)",.*,"headlineText":"(.*)",.*}).*(?(?=.*{"detailKey").*:".*",.*,"eventDescription":"(.*)","severityCode":(.*),"severity":"(.*)",.*,"headlineText":"(.*)",.*}).*)

; ===========================================================================
; WEATHER TENDAY CORE REGEXP

OneDayForecast=(?siU)"v3-wx-forecast-daily-15day":.*{.*"moonriseTimeLocal":.*"(.*)","(.*)",.*"moonsetTimeLocal":.*"(.*)","(.*)",.*"sunriseTimeLocal":.*"(.*)","(.*)",.*"sunsetTimeLocal":.*"(.*)","(.*)",.*"daypartName":(.*),"(.*)","(.*)",.*"iconCode":(.*),(.*),(.*),.*"precipChance":(.*),(.*),(.*),.*"relativeHumidity":(.*),(.*),(.*),.*"temperature":(.*),(.*),(.*),.*"uvIndex":(.*),(.*),(.*),.*"windDirectionCardinal":(.*),"(.*)","(.*)",.*"windSpeed":(.*),(.*),(.*),.*"wxPhraseLong":(.*),"(.*)","(.*)",.*}

SevenDayDOW=(?siU)"v3-wx-forecast-daily-15day":.*{.*"dayOfWeek":.*"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*}

SevenDayTempMax=(?siU)"v3-wx-forecast-daily-15day":.*{.*"temperatureMax":(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayTempMin=(?siU)"v3-wx-forecast-daily-15day":.*{.*"temperatureMin":(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayIcon=(?siU)"v3-wx-forecast-daily-15day":.*{.*"iconCode":(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayPrecip=(?siU)"v3-wx-forecast-daily-15day":.*{.*"precipChance":(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayWDC=(?siU)"v3-wx-forecast-daily-15day":.*{.*"windDirectionCardinal":(.*),"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*}

SevenDayWindSpeed=(?siU)"v3-wx-forecast-daily-15day":.*{.*"windSpeed":(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),(.*),.*}

SevenDayCondition=(?siU)"v3-wx-forecast-daily-15day":.*{.*"wxPhraseLong":(.*),"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*}

SevenDayDetails=(?siU)"v3-wx-forecast-daily-15day":.*{.*"narrative":(.*),"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)",.*}

; ===========================================================================
; WEATHER UNITS

URLWeatherUnitsCore=https://weather.com/#LangLoc#/weather/hourbyhour/l/ff5134934983e1045c08679016f0419f292be8a06fa5384ae16cdc10bb015f45

URLAQUnitsCore=https://weather.com/#LangLoc#/weather/today/l/ff5134934983e1045c08679016f0419f292be8a06fa5384ae16cdc10bb015f45

WeatherUnits=(?siU)\\"wxu-general\\":{.*\\"in\\":\\"(.*)\\",.*\\"km\\":\\"(.*)\\",\\"km/h\\":\\"(.*)\\",.*\\"mb\\":\\"(.*)\\",\\"mi\\":\\"(.*)\\",.*\\"mph\\":\\"(.*)\\",.*\\"uvIndexExtreme\\":\\"(.*)\\",\\"uvIndexVal\\":\\"(.*)\\"}.*\\"wxu-weather-data\\":{.*\\"feelsLike\\":\\"(.*)\\",\\"humidity\\":\\"(.*)\\",\\"moonrise\\":\\"(.*)\\",\\"moonset\\":\\"(.*)\\",.*\\"sunrise\\":\\"(.*)\\",\\"sunset\\":\\"(.*)\\",\\"uvIndex\\":\\"(.*)\\",.*\\"wind\\":\\"(.*)\\"}

AirQualityUnits=(?siU)\\"wxu-air-quality\\":{\\"airQuality\\":\\"(.*)\\",.*\\"allPollutants\\":\\"(.*)\\",.*\\"primaryPollutant\\":\\"(.*)\\",.*}
