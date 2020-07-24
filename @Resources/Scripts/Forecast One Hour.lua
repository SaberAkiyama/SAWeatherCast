--; ==================================================
--; Lua Weather One Hour Forecast
--; ==================================================

function updateOneHour()
	SKIN:Bang('!UpdateMeasure MeasureOneHourForecast')

	SKIN:Bang('!Log "Retrieving Forecast..."')
	SKIN:Bang('!HideMeter MeterOneHourIcon')
	SKIN:Bang('!HideMeter MeterFeelsLikeImage')
	SKIN:Bang('!HideMeter MeterWindImage')
	SKIN:Bang('!HideMeter MeterHumidityImage')
	SKIN:Bang('!HideMeter MeterUVImage')
	
	SKIN:Bang('!HideMeter MeterOneHourTemperature')
	SKIN:Bang('!HideMeter MeterOneHourValidTime')
	SKIN:Bang('!HideMeter MeterOneHourCondition')
	SKIN:Bang('!HideMeter MeterOneHourFeelsLikeText')
	SKIN:Bang('!HideMeter MeterOneHourFeelsLike')
	SKIN:Bang('!HideMeter MeterOneHourWindText')
	SKIN:Bang('!HideMeter MeterOneHourWindCardinalSpeed')
	SKIN:Bang('!HideMeter MeterOneHourHumidityText')
	SKIN:Bang('!HideMeter MeterOneHourHumidity')
	SKIN:Bang('!HideMeter MeterOneHourUVIndexText')
	SKIN:Bang('!HideMeter MeterOneHourUVIndex')

	SKIN:Bang('!DisableMeasure MeasureOneHourIcon')
	SKIN:Bang('!DisableMeasure MeasureOneHourPrecipitation')
	SKIN:Bang('!DisableMeasure MeasureOneHourHumidity')
	SKIN:Bang('!DisableMeasure MeasureOneHourTemp')
	SKIN:Bang('!DisableMeasure MeasureOneHourTempF')
	SKIN:Bang('!DisableMeasure MeasureOneHourTempC')
	SKIN:Bang('!DisableMeasure MeasureOneHourFeelsLike')
	SKIN:Bang('!DisableMeasure MeasureOneHourFeelsLikeF')
	SKIN:Bang('!DisableMeasure MeasureOneHourFeelsLikeC')
	SKIN:Bang('!DisableMeasure MeasureOneHourUVIndex')
	SKIN:Bang('!DisableMeasure MeasureOneHourValidTime24H')
	SKIN:Bang('!DisableMeasure MeasureOneHourValidTime12H')
	SKIN:Bang('!DisableMeasure MeasureOneHourWindCardinal')
	SKIN:Bang('!DisableMeasure MeasureOneHourWindSpeed')
	SKIN:Bang('!DisableMeasure MeasureOneHourWindSpeedMph')
	SKIN:Bang('!DisableMeasure MeasureOneHourWindSpeedKmh')
	SKIN:Bang('!DisableMeasure MeasureOneHourCondition')
	SKIN:Bang('!DisableMeasure MeasureOneHourWindMph')
	SKIN:Bang('!DisableMeasure MeasureOneHourWindKmh')
	SKIN:Bang('!DisableMeasure MeasureOneHourUVOf')
	SKIN:Bang('!DisableMeasure MeasureOneHourUVExtreme')
	SKIN:Bang('!DisableMeasure MeasureOneHourFeelsLikeText')
	SKIN:Bang('!DisableMeasure MeasureOneHourWindText')
	SKIN:Bang('!DisableMeasure MeasureOneHourHumidityText')
	SKIN:Bang('!DisableMeasure MeasureOneHourUVIndexText')
	
end

function finishOneHour()
	SKIN:Bang('!Log "Retrieved"')
	SKIN:Bang('!ShowMeter MeterOneHourIcon')
	SKIN:Bang('!ShowMeter MeterFeelsLikeImage')
	SKIN:Bang('!ShowMeter MeterWindImage')
	SKIN:Bang('!ShowMeter MeterHumidityImage')
	SKIN:Bang('!ShowMeter MeterUVImage')
	
	SKIN:Bang('!ShowMeter MeterOneHourTemperature')
	SKIN:Bang('!ShowMeter MeterOneHourValidTime')
	SKIN:Bang('!ShowMeter MeterOneHourCondition')
	SKIN:Bang('!ShowMeter MeterOneHourFeelsLikeText')
	SKIN:Bang('!ShowMeter MeterOneHourFeelsLike')
	SKIN:Bang('!ShowMeter MeterOneHourWindText')
	SKIN:Bang('!ShowMeter MeterOneHourWindCardinalSpeed')
	SKIN:Bang('!ShowMeter MeterOneHourHumidityText')
	SKIN:Bang('!ShowMeter MeterOneHourHumidity')
	SKIN:Bang('!ShowMeter MeterOneHourUVIndexText')
	SKIN:Bang('!ShowMeter MeterOneHourUVIndex')
	
	SKIN:Bang('!EnableMeasure MeasureOneHourIcon')
	SKIN:Bang('!EnableMeasure MeasureOneHourPrecipitation')
	SKIN:Bang('!EnableMeasure MeasureOneHourHumidity')
	SKIN:Bang('!EnableMeasure MeasureOneHourTemp')
	SKIN:Bang('!EnableMeasure MeasureOneHourTempF')
	SKIN:Bang('!EnableMeasure MeasureOneHourTempC')
	SKIN:Bang('!EnableMeasure MeasureOneHourFeelsLike')
	SKIN:Bang('!EnableMeasure MeasureOneHourFeelsLikeF')
	SKIN:Bang('!EnableMeasure MeasureOneHourFeelsLikeC')
	SKIN:Bang('!EnableMeasure MeasureOneHourUVIndex')
	SKIN:Bang('!EnableMeasure MeasureOneHourValidTime24H')
	SKIN:Bang('!EnableMeasure MeasureOneHourValidTime12H')
	SKIN:Bang('!EnableMeasure MeasureOneHourWindCardinal')
	SKIN:Bang('!EnableMeasure MeasureOneHourWindSpeed')
	SKIN:Bang('!EnableMeasure MeasureOneHourWindSpeedMph')
	SKIN:Bang('!EnableMeasure MeasureOneHourWindSpeedKmh')
	SKIN:Bang('!EnableMeasure MeasureOneHourCondition')
	SKIN:Bang('!EnableMeasure MeasureOneHourWindMph')
	SKIN:Bang('!EnableMeasure MeasureOneHourWindKmh')
	SKIN:Bang('!EnableMeasure MeasureOneHourUVOf')
	SKIN:Bang('!EnableMeasure MeasureOneHourUVExtreme')
	SKIN:Bang('!EnableMeasure MeasureOneHourFeelsLikeText')
	SKIN:Bang('!EnableMeasure MeasureOneHourWindText')
	SKIN:Bang('!EnableMeasure MeasureOneHourHumidityText')
	SKIN:Bang('!EnableMeasure MeasureOneHourUVIndexText')

	SKIN:Bang('!UpdateMeter *')

end

onehourTime = {
	["12 Hours"] = {
		measValid = "MeasureOneHourValidTime12H",
		coreOHTime = "12H",
		varOHToggle = "0"
	},
	["24 Hours"] = {
		measValid = "MeasureOneHourValidTime24H",
		coreOHTime = "24H",
		varOHToggle = "1"
	}
}

function setOneHour(selectedTime)
	SKIN:Bang('!SetVariable OneHourTime "' .. onehourTime[selectedTime]['coreOHTime'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneHourToggle "' .. onehourTime[selectedTime]['varOHToggle'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!SetOption MeterOneHourValidTime MeasureName "' .. onehourTime[selectedTime]['measValid'] .. '"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneHourMeter')
	
end
