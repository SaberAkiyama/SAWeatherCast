--; ==================================================
--; Lua Weather Update Connection
--; ==================================================

function netErrorDaily()
	SKIN:Bang('!Log "#RetryText#" Warning')
	SKIN:Bang('!PauseMeasure MeasureWeatherCore')
	SKIN:Bang('!DisableMeasure MeasureWeatherCore')

end

function netErrorTenDay()
	SKIN:Bang('!Log "#RetryText#" Warning')
	SKIN:Bang('!PauseMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!DisableMeasure MeasureWeatherTendayCore')

end

function netConnectDaily()
	SKIN:Bang('!Log "#NoticeText#" Notice')
	SKIN:Bang('!Log "#RetrievingCurrentText#"')

	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentSlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentExtraSlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherOneHourMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherSixHourMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherAirQualityMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherSeverityMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')

end

function netConnectTenDay()
	SKIN:Bang('!Log "#NoticeText#" Notice')
	SKIN:Bang('!Log "#RetrievingTendayText#"')

	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherSevenDayMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherTendayCore')

end

function errorNet()
	SKIN:Bang('!Log "#ErrorText#" Error')

end

function startWeather()
	SKIN:Bang('!Log "#AwakeText#"')
	SKIN:Bang('!UpdateMeasure MeasureInternetConnectivity')
	
end
