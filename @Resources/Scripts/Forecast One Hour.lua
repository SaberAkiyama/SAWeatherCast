--; ==================================================
--; Lua Weather One Hour Forecast
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Hour Forecast..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherOneHourMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherCore')
	SKIN:Bang('!HideMeterGroup WeatherOneHourMeter')
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')

end

function updateOneHour()
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')
	SKIN:Bang('!HideMeterGroup WeatherOneHourMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherOneHourMeasure')
	
end

function finishOneHour()	
	SKIN:Bang('!ShowMeterGroup WeatherOneHourMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherOneHourMeasure')

	SKIN:Bang('!Log "Retrieved Hour Forecast"')

	SKIN:Bang('!UpdateMeter *')

end

function scaleUpOneHour()
	SKIN:Bang('!WriteKeyValue Variables OneHourScale "(#OneHourScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneHourScale "(#OneHourScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup OneHourGroup')
	
end

function scaleDownOneHour()
	SKIN:Bang('!WriteKeyValue Variables OneHourScale "(#OneHourScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneHourScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneHourScale "(#OneHourScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneHourScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup OneHourGroup')

end
