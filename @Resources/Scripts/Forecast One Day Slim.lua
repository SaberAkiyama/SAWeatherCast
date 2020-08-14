--; ==================================================
--; Lua Weather One Day Forecast Slim
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Daily Forecast..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureOneDayForecast')
	SKIN:Bang('!HideMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!UpdateMeasure MeasureOneDayForecast')

end

function updateOneDay()
	SKIN:Bang('!UpdateMeasure MeasureOneDayForecast')
	SKIN:Bang('!HideMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherOneDaySlimMeasure')
	
end

function finishOneDay()
	SKIN:Bang('!Log "Retrieved Daily Forecast"')
	
	SKIN:Bang('!ShowMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherOneDaySlimMeasure')

	SKIN:Bang('!UpdateMeter *')

end

function scaleUpOneDaySlim()
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimScale "(#OneDaySlimScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneDaySlimScale "(#OneDaySlimScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup OneDaySlimGroup')
	
end

function scaleDownOneDaySlim()
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimScale "(#OneDaySlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneDaySlimScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneDaySlimScale "(#OneDaySlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneDaySlimScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup OneDaySlimGroup')

end

function matchTonight()
	SKIN:Bang('!HideMeterGroup WeatherTodaySlimMeter')
	SKIN:Bang('!SetOption MeterTonightIcon X "(10*#OneDayScale#)"')
	SKIN:Bang('!SetOption MeterTonightText MeasureName "MeasureToday"')
	SKIN:Bang('!SetOption MeterTonightWindCardinalSpeed MeasureName "MeasureTodayWindCardinal"')
	SKIN:Bang('!ShowMeterGroup WeatherTonightSlimMeter')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end
