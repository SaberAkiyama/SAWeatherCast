--; ==================================================
--; Lua User Agent
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Current..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentSlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentExtraSlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherOneHourMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherSixHourMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')

end

function finishTendayUserAgent()
	SKIN:Bang('!Log "Retrieving Tenday..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherSevenDayMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherTendayCore')

end
