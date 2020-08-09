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
	SKIN:Bang('!SetOption MeterTodayIcon ImageName "[MeasureTonightIcon].png"')
	SKIN:Bang('!SetOption MeterTodayIcon ToolTipText "[MeasureTonightCondition]"')
	SKIN:Bang('!SetOption MeterTodayTemperature MeasureName "MeasureTonightTemperature#OneDayTemp#"')
	SKIN:Bang('!SetOption MeterTodayPrecipitation MeasureName "MeasureTonightPrecipitation"')
	SKIN:Bang('!SetOption MeterTodayWindCardinalSpeed MeasureName "MeasureTonightWindCardinal"')
	SKIN:Bang('!SetOption MeterTodayWindCardinalSpeed MeasureName2 "MeasureTonightWindSpeed#OneDayWind#"')
	SKIN:Bang('!SetOption MeterTodayHumidity MeasureName "MeasureTonightHumidity"')
	SKIN:Bang('!SetOption MeterTodayUVIndex MeasureName "MeasureTonightUVIndex"')
	SKIN:Bang('!SetOption MeterSunriseImage ImageName "Moonrise.png"')
	SKIN:Bang('!SetOption MeterSunriseText MeasureName "MeasureOneDayMoonriseText"')
	SKIN:Bang('!SetOption MeterSunrise MeasureName "MeasureOneDayMoonrise#OneDayTime#"')
	SKIN:Bang('!SetOption MeterSunsetImage ImageName "Moonset.png"')
	SKIN:Bang('!SetOption MeterSunsetText MeasureName "MeasureOneDayMoonsetText"')
	SKIN:Bang('!SetOption MeterSunset MeasureName "MeasureOneDayMoonset#OneDayTime#"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDaySlimMeter')

end	

function matchTomorrow()
	SKIN:Bang('!SetOption MeterTonightIcon ImageName "[MeasureNextDayIcon].png"')
	SKIN:Bang('!SetOption MeterTonightTemperature MeasureName "MeasureNextDayTemperature#OneDayTemp#"')
	SKIN:Bang('!SetOption MeterTonightPrecipitation MeasureName "MeasureNextDayPrecipitation"')
	SKIN:Bang('!SetOption MeterTonightWindCardinalSpeed MeasureName "MeasureNextDayWindCardinal"')
	SKIN:Bang('!SetOption MeterTonightWindCardinalSpeed MeasureName2 "MeasureNextDayWindSpeed#OneDayWind#"')
	SKIN:Bang('!SetOption MeterTonightHumidity MeasureName "MeasureNextDayHumidity"')
	SKIN:Bang('!SetOption MeterTonightUVIndex MeasureName "MeasureNextDayUVIndex"')
	SKIN:Bang('!SetOption MeterMoonriseImage ImageName "Sunrise.png"')
	SKIN:Bang('!SetOption MeterMoonriseText MeasureName "MeasureOneDaySunriseText"')
	SKIN:Bang('!SetOption MeterMoonrise MeasureName "MeasureOneDaySunrise#OneDayTime#"')
	SKIN:Bang('!SetOption MeterMoonsetImage ImageName "Sunset.png"')
	SKIN:Bang('!SetOption MeterMoonsetText MeasureName "MeasureOneDaySunsetText"')
	SKIN:Bang('!SetOption MeterMoonset MeasureName "MeasureOneDaySunset#OneDayTime#"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDaySlimMeter')

end	
