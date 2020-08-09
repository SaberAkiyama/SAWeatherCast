--; ==================================================
--; Lua Weather Six Hour Forecast
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Hour Forecast..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherSixHourMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureSixHourForecast')
	SKIN:Bang('!HideMeterGroup WeatherSixHourMeter')
	SKIN:Bang('!UpdateMeasure MeasureSixHourForecast')

end

function updateSixHour()
	SKIN:Bang('!UpdateMeasure MeasureSixHourForecast')
	SKIN:Bang('!HideMeterGroup WeatherSixHourMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherSixHourMeasure')
	
end

function finishSixHour()
	SKIN:Bang('!Log "Retrieved Hour Forecast"')

	SKIN:Bang('!ShowMeterGroup WeatherSixHourMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherSixHourMeasure')
	
	SKIN:Bang('!UpdateMeter *')

end

function scaleUpSixHour()
	SKIN:Bang('!WriteKeyValue Variables SixHourScale "(#SixHourScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable SixHourScale "(#SixHourScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup SixHourGroup')
	
end

function scaleDownSixHour()
	SKIN:Bang('!WriteKeyValue Variables SixHourScale "(#SixHourScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #SixHourScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable SixHourScale "(#SixHourScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #SixHourScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup SixHourGroup')

end
