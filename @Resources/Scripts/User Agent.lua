--; ==================================================
--; Lua User Agent
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "#RetrievingCurrentText#"')

	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentSlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentExtraSlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherOneHourMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')

end

function finishFHUserAgent()
	SKIN:Bang('!Log "#RetrievingCurrentText#"')

	SKIN:Bang('!UnpauseMeasureGroup WeatherFullHourMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')

end

function finishTendayUserAgent()
	SKIN:Bang('!Log "#RetrievingTendayText#"')

	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherForteenDayMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherTendayCore')

end
