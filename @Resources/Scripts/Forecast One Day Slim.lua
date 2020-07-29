--; ==================================================
--; Lua Weather One Day Forecast Slim
--; ==================================================

function updateOneDay()
	SKIN:Bang('!UpdateMeasure MeasureOneDayForecast')

	SKIN:Bang('!Log "Retrieving Daily Forecast..."')
	SKIN:Bang('!HideMeter MeterTodayIcon')
	SKIN:Bang('!HideMeter MeterTodayPrecipImage')
	SKIN:Bang('!HideMeter MeterTodayWindImage')
	SKIN:Bang('!HideMeter MeterTodayHumidImage')
	SKIN:Bang('!HideMeter MeterTodayUVImage')
	SKIN:Bang('!HideMeter MeterSunriseImage')
	SKIN:Bang('!HideMeter MeterSunsetImage')
	
	SKIN:Bang('!HideMeter MeterTodayText')
	SKIN:Bang('!HideMeter MeterTodayTemperature')
	SKIN:Bang('!HideMeter MeterTodayPrecipitation')
	SKIN:Bang('!HideMeter MeterTodayWindCardinalSpeed')
	SKIN:Bang('!HideMeter MeterTodayHumidityText')
	SKIN:Bang('!HideMeter MeterTodayHumidity')
	SKIN:Bang('!HideMeter MeterTodayUVIndexText')
	SKIN:Bang('!HideMeter MeterTodayUVIndex')
	SKIN:Bang('!HideMeter MeterSunriseText')
	SKIN:Bang('!HideMeter MeterSunrise')
	SKIN:Bang('!HideMeter MeterSunsetText')
	SKIN:Bang('!HideMeter MeterSunset')

	SKIN:Bang('!DisableMeasure MeasureOneDayForecastTime')
	SKIN:Bang('!DisableMeasure MeasureDayOfWeek')
	SKIN:Bang('!DisableMeasure MeasureOneDayMoonrise24H')
	SKIN:Bang('!DisableMeasure MeasureOneDayMoonset24H')
	SKIN:Bang('!DisableMeasure MeasureTwoDayMoonrise24H')
	SKIN:Bang('!DisableMeasure MeasureTwoDayMoonset24H')
	SKIN:Bang('!DisableMeasure MeasureOneDayMoonrise12H')
	SKIN:Bang('!DisableMeasure MeasureOneDayMoonset12H')
	SKIN:Bang('!DisableMeasure MeasureOneDaySunrise24H')
	SKIN:Bang('!DisableMeasure MeasureOneDaySunset24H')
	SKIN:Bang('!DisableMeasure MeasureTwoDaySunrise24H')
	SKIN:Bang('!DisableMeasure MeasureTwoDaySunset24H')
	SKIN:Bang('!DisableMeasure MeasureOneDaySunrise12H')
	SKIN:Bang('!DisableMeasure MeasureOneDaySunset12H')
	SKIN:Bang('!DisableMeasure MeasureToday')
	SKIN:Bang('!DisableMeasure MeasureTonight')
	SKIN:Bang('!DisableMeasure MeasureTodayIcon')
	SKIN:Bang('!DisableMeasure MeasureTonightIcon')
	SKIN:Bang('!DisableMeasure MeasureTodayPrecipitation')
	SKIN:Bang('!DisableMeasure MeasureTonightPrecipitation')
	SKIN:Bang('!DisableMeasure MeasureTodayHumidity')
	SKIN:Bang('!DisableMeasure MeasureTonightHumidity')
	SKIN:Bang('!DisableMeasure MeasureTodayTemperature')
	SKIN:Bang('!DisableMeasure MeasureTodayTemperatureF')
	SKIN:Bang('!DisableMeasure MeasureTodayTemperatureC')
	SKIN:Bang('!DisableMeasure MeasureTonightTemperature')
	SKIN:Bang('!DisableMeasure MeasureTonightTemperatureF')
	SKIN:Bang('!DisableMeasure MeasureTonightTemperatureC')
	SKIN:Bang('!DisableMeasure MeasureTodayUVIndex')
	SKIN:Bang('!DisableMeasure MeasureTonightUVIndex')
	SKIN:Bang('!DisableMeasure MeasureTodayWindCardinal')
	SKIN:Bang('!DisableMeasure MeasureTonightWindCardinal')
	SKIN:Bang('!DisableMeasure MeasureTodayWindSpeed')
	SKIN:Bang('!DisableMeasure MeasureTodayWindSpeedMph')
	SKIN:Bang('!DisableMeasure MeasureTodayWindSpeedKmh')
	SKIN:Bang('!DisableMeasure MeasureTonightWindSpeed')
	SKIN:Bang('!DisableMeasure MeasureTonightWindSpeedMph')
	SKIN:Bang('!DisableMeasure MeasureTonightWindSpeedKmh')
	SKIN:Bang('!DisableMeasure MeasureTodayCondition')
	SKIN:Bang('!DisableMeasure MeasureTonightCondition')
	SKIN:Bang('!DisableMeasure MeasureOneDayWindMph')
	SKIN:Bang('!DisableMeasure MeasureOneDayWindKmh')
	SKIN:Bang('!DisableMeasure MeasureOneDayUVOf')
	SKIN:Bang('!DisableMeasure MeasureOneDayUVExtreme')
	SKIN:Bang('!DisableMeasure MeasureOneDayHumidityText')
	SKIN:Bang('!DisableMeasure MeasureOneDayUVIndexText')
	SKIN:Bang('!DisableMeasure MeasureOneDaySunriseText')
	SKIN:Bang('!DisableMeasure MeasureOneDaySunsetText')
	SKIN:Bang('!DisableMeasure MeasureOneDayMoonriseText')
	SKIN:Bang('!DisableMeasure MeasureOneDayMoonsetText')
	
end

function finishOneDay()
	SKIN:Bang('!Log "Retrieved Daily Forecast"')
	SKIN:Bang('!ShowMeter MeterTodayIcon')
	SKIN:Bang('!ShowMeter MeterTodayPrecipImage')
	SKIN:Bang('!ShowMeter MeterTodayWindImage')
	SKIN:Bang('!ShowMeter MeterTodayHumidImage')
	SKIN:Bang('!ShowMeter MeterTodayUVImage')
	SKIN:Bang('!ShowMeter MeterSunriseImage')
	SKIN:Bang('!ShowMeter MeterSunsetImage')
	
	SKIN:Bang('!ShowMeter MeterTodayText')
	SKIN:Bang('!ShowMeter MeterTodayTemperature')
	SKIN:Bang('!ShowMeter MeterTodayPrecipitation')
	SKIN:Bang('!ShowMeter MeterTodayWindCardinalSpeed')
	SKIN:Bang('!ShowMeter MeterTodayHumidityText')
	SKIN:Bang('!ShowMeter MeterTodayHumidity')
	SKIN:Bang('!ShowMeter MeterTodayUVIndexText')
	SKIN:Bang('!ShowMeter MeterTodayUVIndex')
	SKIN:Bang('!ShowMeter MeterSunriseText')
	SKIN:Bang('!ShowMeter MeterSunrise')
	SKIN:Bang('!ShowMeter MeterSunsetText')
	SKIN:Bang('!ShowMeter MeterSunset')
	
	SKIN:Bang('!EnableMeasure MeasureOneDayForecastTime')
	SKIN:Bang('!EnableMeasure MeasureDayOfWeek')
	SKIN:Bang('!EnableMeasure MeasureOneDayMoonrise24H')
	SKIN:Bang('!EnableMeasure MeasureOneDayMoonset24H')
	SKIN:Bang('!EnableMeasure MeasureTwoDayMoonrise24H')
	SKIN:Bang('!EnableMeasure MeasureTwoDayMoonset24H')
	SKIN:Bang('!EnableMeasure MeasureOneDayMoonrise12H')
	SKIN:Bang('!EnableMeasure MeasureOneDayMoonset12H')
	SKIN:Bang('!EnableMeasure MeasureOneDaySunrise24H')
	SKIN:Bang('!EnableMeasure MeasureOneDaySunset24H')
	SKIN:Bang('!EnableMeasure MeasureTwoDaySunrise24H')
	SKIN:Bang('!EnableMeasure MeasureTwoDaySunset24H')
	SKIN:Bang('!EnableMeasure MeasureOneDaySunrise12H')
	SKIN:Bang('!EnableMeasure MeasureOneDaySunset12H')
	SKIN:Bang('!EnableMeasure MeasureToday')
	SKIN:Bang('!EnableMeasure MeasureTonight')
	SKIN:Bang('!EnableMeasure MeasureTodayIcon')
	SKIN:Bang('!EnableMeasure MeasureTonightIcon')
	SKIN:Bang('!EnableMeasure MeasureTodayPrecipitation')
	SKIN:Bang('!EnableMeasure MeasureTonightPrecipitation')
	SKIN:Bang('!EnableMeasure MeasureTodayHumidity')
	SKIN:Bang('!EnableMeasure MeasureTonightHumidity')
	SKIN:Bang('!EnableMeasure MeasureTodayTemperature')
	SKIN:Bang('!EnableMeasure MeasureTodayTemperatureF')
	SKIN:Bang('!EnableMeasure MeasureTodayTemperatureC')
	SKIN:Bang('!EnableMeasure MeasureTonightTemperature')
	SKIN:Bang('!EnableMeasure MeasureTonightTemperatureF')
	SKIN:Bang('!EnableMeasure MeasureTonightTemperatureC')
	SKIN:Bang('!EnableMeasure MeasureTodayUVIndex')
	SKIN:Bang('!EnableMeasure MeasureTonightUVIndex')
	SKIN:Bang('!EnableMeasure MeasureTodayWindCardinal')
	SKIN:Bang('!EnableMeasure MeasureTonightWindCardinal')
	SKIN:Bang('!EnableMeasure MeasureTodayWindSpeed')
	SKIN:Bang('!EnableMeasure MeasureTodayWindSpeedMph')
	SKIN:Bang('!EnableMeasure MeasureTodayWindSpeedKmh')
	SKIN:Bang('!EnableMeasure MeasureTonightWindSpeed')
	SKIN:Bang('!EnableMeasure MeasureTonightWindSpeedMph')
	SKIN:Bang('!EnableMeasure MeasureTonightWindSpeedKmh')
	SKIN:Bang('!EnableMeasure MeasureTodayCondition')
	SKIN:Bang('!EnableMeasure MeasureTonightCondition')
	SKIN:Bang('!EnableMeasure MeasureOneDayWindMph')
	SKIN:Bang('!EnableMeasure MeasureOneDayWindKmh')
	SKIN:Bang('!EnableMeasure MeasureOneDayUVOf')
	SKIN:Bang('!EnableMeasure MeasureOneDayUVExtreme')
	SKIN:Bang('!EnableMeasure MeasureOneDayHumidityText')
	SKIN:Bang('!EnableMeasure MeasureOneDayUVIndexText')
	SKIN:Bang('!EnableMeasure MeasureOneDaySunriseText')
	SKIN:Bang('!EnableMeasure MeasureOneDaySunsetText')
	SKIN:Bang('!EnableMeasure MeasureOneDayMoonriseText')
	SKIN:Bang('!EnableMeasure MeasureOneDayMoonsetText')

	SKIN:Bang('!UpdateMeter *')

end

function scaleUpOneDaySlim()
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimScale "(#OneDaySlimScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneDaySlimScale "(#OneDaySlimScale#+#ScrollMouseIncrement#)" "#CoreFilePath#"')
	SKIN:Bang('!UpdateMeterGroup OneDaySlimGroup')
	
end

function scaleDownOneDaySlim()
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimScale "(#OneDaySlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneDaySlimScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneDaySlimScale "(#OneDaySlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneDaySlimScale#-#ScrollMouseIncrement#)" "#CoreFilePath#"')
	SKIN:Bang('!UpdateMeterGroup OneDaySlimGroup')

end

oneDayTime = {
	["12 Hours"] = {
		measMR = "MeasureOneDayMoonrise12H",
		measMS = "MeasureOneDayMoonset12H",
		measSR = "MeasureOneDaySunrise12H",
		measSS = "MeasureOneDaySunset12H",
		coreODTime = "12H",
		varODToggle = "0"
	},
	["24 Hours"] = {
		measMR = "MeasureOneDayMoonrise24H",
		measMS = "MeasureOneDayMoonset24H",
		measSR = "MeasureOneDaySunrise24H",
		measSS = "MeasureOneDaySunset24H",
		coreODTime = "24H",
		varODToggle = "1"
	}
}

function setOneDay(selectedTime)
	SKIN:Bang('!SetVariable OneDayTime "' .. oneDayTime[selectedTime]['coreODTime'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneDayToggle "' .. oneDayTime[selectedTime]['varODToggle'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!SetOption MeterSunrise MeasureName "' .. oneDayTime[selectedTime]['measSR'] .. '"')
	SKIN:Bang('!SetOption MeterSunset MeasureName "' .. oneDayTime[selectedTime]['measSS'] .. '"')
	SKIN:Bang('!SetOption MeterMoonrise MeasureName "' .. oneDayTime[selectedTime]['measMR'] .. '"')
	SKIN:Bang('!SetOption MeterMoonset MeasureName "' .. oneDayTime[selectedTime]['measMS'] .. '"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')
	
end

function matchTonight()
	SKIN:Bang('!SetOption MeterTodayIcon ImageName "[MeasureTonightIcon].png"')
	SKIN:Bang('!SetOption MeterTodayIcon ToolTipText "[MeasureTonightCondition]"')
	SKIN:Bang('!SetOption MeterTodayTemperature MeasureName "MeasureTonightTemperatureF"')
	SKIN:Bang('!SetOption MeterTodayPrecipitation MeasureName "MeasureTonightPrecipitation"')
	SKIN:Bang('!SetOption MeterTodayWindCardinalSpeed MeasureName "MeasureTonightWindCardinal"')
	SKIN:Bang('!SetOption MeterTodayWindCardinalSpeed MeasureName2 "MeasureTonightWindSpeedMph"')
	SKIN:Bang('!SetOption MeterTodayHumidity MeasureName "MeasureTonightHumidity"')
	SKIN:Bang('!SetOption MeterTodayUVIndex MeasureName "MeasureTonightUVIndex"')
	SKIN:Bang('!SetOption MeterSunriseImage ImageName "Moonrise.png"')
	SKIN:Bang('!SetOption MeterSunriseText MeasureName "MeasureOneDayMoonriseText"')
	SKIN:Bang('!SetOption MeterSunrise MeasureName "MeasureOneDayMoonrise12H"')
	SKIN:Bang('!SetOption MeterSunsetImage ImageName "Moonset.png"')
	SKIN:Bang('!SetOption MeterSunsetText MeasureName "MeasureOneDayMoonsetText"')
	SKIN:Bang('!SetOption MeterSunset MeasureName "MeasureOneDayMoonset12H"')
	
end	
