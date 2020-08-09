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

function matchTonight()
	SKIN:Bang('!SetOption MeterTodayIcon ImageName "[MeasureTonightIcon].png"')
	SKIN:Bang('!SetOption MeterTodayTemperature MeasureName "MeasureTonightTemperature#OneDayTemp#"')
	SKIN:Bang('!SetOption MeterTodayPrecipitation MeasureName "MeasureTonightPrecipitation"')
	SKIN:Bang('!SetOption MeterTodayWindCardinalSpeed MeasureName "MeasureTonightWindCardinal"')
	SKIN:Bang('!SetOption MeterTodayWindCardinalSpeed MeasureName2 "MeasureTonightWindSpeed#OneDayWind#"')
	SKIN:Bang('!SetOption MeterTodayHumidity MeasureName "MeasureTonightHumidity"')
	SKIN:Bang('!SetOption MeterTodayUVIndex MeasureName "MeasureTonightUVIndex"')
	SKIN:Bang('!SetOption MeterTodaySunriseImage ImageName "Moonrise.png"')
	SKIN:Bang('!SetOption MeterTodaySunriseText MeasureName "MeasureOneDayMoonriseText"')
	SKIN:Bang('!SetOption MeterTodaySunrise MeasureName "MeasureOneDayMoonrise#OneDayTime#"')
	SKIN:Bang('!SetOption MeterTodaySunsetImage ImageName "Moonset.png"')
	SKIN:Bang('!SetOption MeterTodaySunsetText MeasureName "MeasureOneDayMoonsetText"')
	SKIN:Bang('!SetOption MeterTodaySunset MeasureName "MeasureOneDayMoonset#OneDayTime#"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end	

function matchTomorrow()
	SKIN:Bang('!SetOption MeterTonightIcon ImageName "[MeasureTomorrowIcon].png"')
	SKIN:Bang('!SetOption MeterTonightTemperature MeasureName "MeasureTomorrowTemperature#OneDayTemp#"')
	SKIN:Bang('!SetOption MeterTonightPrecipitation MeasureName "MeasureTomorrowPrecipitation"')
	SKIN:Bang('!SetOption MeterTonightWindCardinalSpeed MeasureName "MeasureTomorrowWindCardinal"')
	SKIN:Bang('!SetOption MeterTonightWindCardinalSpeed MeasureName2 "MeasureTomorrowWindSpeed#OneDayWind#"')
	SKIN:Bang('!SetOption MeterTonightHumidity MeasureName "MeasureTomorrowHumidity"')
	SKIN:Bang('!SetOption MeterTonightUVIndex MeasureName "MeasureTomorrowUVIndex"')
	SKIN:Bang('!SetOption MeterTonightMoonriseImage ImageName "Sunrise.png"')
	SKIN:Bang('!SetOption MeterTonightMoonriseText MeasureName "MeasureOneDaySunriseText"')
	SKIN:Bang('!SetOption MeterTonightMoonrise MeasureName "MeasureTodaySunrise#OneDayTime#"')
	SKIN:Bang('!SetOption MeterTonightMoonsetImage ImageName "Sunset.png"')
	SKIN:Bang('!SetOption MeterTonightMoonsetText MeasureName "MeasureOneDaySunsetText"')
	SKIN:Bang('!SetOption MeterTonightMoonset MeasureName "MeasureTodaySunset#OneDayTime#"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')
	
end	
