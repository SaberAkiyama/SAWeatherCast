--; ==================================================
--; Lua Weather Current
--; ==================================================

connSelect = {
	["No Internet"] = {
		connAction = "Connect to internet and try again."
	},
	["Internet"] = {
		connAction = "Try again in a couple seconds."
	}
}

function connInternet(selectedConnect)
	SKIN:Bang('!Log "' .. connSelect[selectedConnect]['connAction'] .. '" Error')

end

function errorCurrent()
	SKIN:Bang('!Log "No connection or timeout" Error')

end

function updateCurrent()
	SKIN:Bang('!UpdateMeasure MeasureCurrentLocation')

	SKIN:Bang('!Log "Retrieving..."')
	SKIN:Bang('!HideMeter MeterCurrentIcon')
	SKIN:Bang('!HideMeter MeterTemperatureMaxMinImage')
	SKIN:Bang('!HideMeter MeterCurrentWindDirectionImage')
	SKIN:Bang('!HideMeter MeterHumidityImage')
	SKIN:Bang('!HideMeter MeterCurrentTemperature')
	SKIN:Bang('!HideMeter MeterCurrentCondition')
	SKIN:Bang('!HideMeter MeterCurrentFeelsLike')
	SKIN:Bang('!HideMeter MeterCurrentTemperatureMaxMin')
	SKIN:Bang('!HideMeter MeterCurrentWindCardinal')
	SKIN:Bang('!HideMeter MeterCurrentWindSpeed')
	SKIN:Bang('!HideMeter MeterCurrentHumidity')

	SKIN:Bang('!DisableMeasure MeasureCurrentIcon')
	SKIN:Bang('!DisableMeasure MeasureCurrentHumidity')
	SKIN:Bang('!DisableMeasure MeasureCurrentTemp')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempF')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempC')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLike')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLikeF')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLikeC')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindCardinal')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindSpeed')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindSpeedMph')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindSpeedKmh')
	SKIN:Bang('!DisableMeasure MeasureCurrentCondition')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempMax')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempMaxF')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempMaxC')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempMin')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempMinF')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempMinC')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindMph')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindKmh')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLikeText')
	
end

function finishCurrent()
	SKIN:Bang('!Log "Retrieved"')
	SKIN:Bang('!ShowMeter MeterCurrentIcon')
	SKIN:Bang('!ShowMeter MeterTemperatureMaxMinImage')
	SKIN:Bang('!ShowMeter MeterCurrentWindDirectionImage')
	SKIN:Bang('!ShowMeter MeterHumidityImage')
	SKIN:Bang('!ShowMeter MeterCurrentTemperature')
	SKIN:Bang('!ShowMeter MeterCurrentCondition')
	SKIN:Bang('!ShowMeter MeterCurrentFeelsLike')
	SKIN:Bang('!ShowMeter MeterCurrentTemperatureMaxMin')
	SKIN:Bang('!ShowMeter MeterCurrentWindCardinal')
	SKIN:Bang('!ShowMeter MeterCurrentWindSpeed')
	SKIN:Bang('!ShowMeter MeterCurrentHumidity')
	
	SKIN:Bang('!EnableMeasure MeasureCurrentIcon')
	SKIN:Bang('!EnableMeasure MeasureCurrentHumidity')
	SKIN:Bang('!EnableMeasure MeasureCurrentTemp')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempF')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempC')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLike')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLikeF')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLikeC')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindCardinal')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindSpeed')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindSpeedMph')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindSpeedKmh')
	SKIN:Bang('!EnableMeasure MeasureCurrentCondition')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempMax')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempMaxF')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempMaxC')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempMin')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempMinF')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempMinC')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindMph')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindKmh')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLikeText')

	SKIN:Bang('!UpdateMeter *')

end
