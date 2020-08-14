--; ==================================================
--; Lua Weather One Day Forecast
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Daily Forecast..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureOneDayForecast')
	SKIN:Bang('!HideMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!UpdateMeasure MeasureOneDayForecast')

end

function updateOneDay()
	SKIN:Bang('!UpdateMeasure MeasureOneDayForecast')
	SKIN:Bang('!HideMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!HideMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!HideMeter MeterTomorrowUVIndex')
	SKIN:Bang('!DisableMeasureGroup WeatherOneDayMeasure')
	
end

function finishOneDay()
	SKIN:Bang('!Log "Retrieved Daily Forecast"')
	
	SKIN:Bang('!ShowMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherOneDayMeasure')

	SKIN:Bang('!UpdateMeter *')

end

function scaleUpOneDay()
	SKIN:Bang('!WriteKeyValue Variables OneDayScale "(#OneDayScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneDayScale "(#OneDayScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup OneDayGroup')
	
end

function scaleDownOneDay()
	SKIN:Bang('!WriteKeyValue Variables OneDayScale "(#OneDayScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneDayScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneDayScale "(#OneDayScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneDayScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup OneDayGroup')

end

function nullMoonrise()
	SKIN:Bang('!SetOption MeterTodaySunrise MeasureName "MeasureTomorrowMoonrise#OneDayTime#"')
	SKIN:Bang('!SetOption MeterTonightMoonrise MeasureName "MeasureTomorrowMoonrise#OneDayTime#"')

	SKIN:Bang('!UpdateMeterGroup OneDayGroup')

end

function nullMoonset()
	SKIN:Bang('!SetOption MeterTodaySunset MeasureName "MeasureTomorrowMoonset#OneDayTime#"')
	SKIN:Bang('!SetOption MeterTonightMoonset MeasureName "MeasureTomorrowMoonset#OneDayTime#"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end

function nullSunrise()
	SKIN:Bang('!SetOption MeterTodaySunrise MeasureName "MeasureTomorrowSunrise#OneDayTime#"')
	SKIN:Bang('!SetOption MeterTonightSunrise MeasureName "MeasureTomorrowSunrise#OneDayTime#"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end

function nullSunset()
	SKIN:Bang('!SetOption MeterTodaySunset MeasureName "MeasureTomorrowSunset#OneDayTime#"')
	SKIN:Bang('!SetOption MeterTonightSunset MeasureName "MeasureTomorrowSunset#OneDayTime#"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end

function matchTonight()
	SKIN:Bang('!HideMeterGroup WeatherTodayMeter')
	SKIN:Bang('!SetOption MeterTonightIcon X "(10*#OneDayScale#)"')
	SKIN:Bang('!SetOption MeterTonightText MeasureName "MeasureToday"')
	SKIN:Bang('!SetOption MeterTonightWindCardinalSpeed MeasureName "MeasureTodayWindCardinal"')
	SKIN:Bang('!ShowMeterGroup WeatherTomorrowMeter')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end
