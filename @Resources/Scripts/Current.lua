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
	SKIN:Bang('!HideMeter MeterSunriseImage')
	SKIN:Bang('!HideMeter MeterSunsetImage')
	SKIN:Bang('!HideMeter MeterCurrentWindDirectionImage')
	SKIN:Bang('!HideMeter MeterHumidityImage')
	SKIN:Bang('!HideMeter MeterDewPointImage')
	SKIN:Bang('!HideMeter MeterPressureImage')
	SKIN:Bang('!HideMeter MeterUVIndexImage')
	SKIN:Bang('!HideMeter MeterVisibilityImage')
	SKIN:Bang('!HideMeter MeterMoonPhaseImage')

	SKIN:Bang('!HideMeter MeterCurrentTemperature')
	SKIN:Bang('!HideMeter MeterCurrentCondition')
	SKIN:Bang('!HideMeter MeterCurrentFeelsLike')
	SKIN:Bang('!HideMeter MeterCurrentLocation')
	SKIN:Bang('!HideMeter MeterCurrentTemperatureMaxMin')
	SKIN:Bang('!HideMeter MeterCurrentSunrise')
	SKIN:Bang('!HideMeter MeterCurrentSunset')
	SKIN:Bang('!HideMeter MeterCurrentWindCardinal')
	SKIN:Bang('!HideMeter MeterCurrentWindSpeed')
	SKIN:Bang('!HideMeter MeterCurrentHumidity')
	SKIN:Bang('!HideMeter MeterCurrentDewPoint')
	SKIN:Bang('!HideMeter MeterCurrentPressure')
	SKIN:Bang('!HideMeter MeterCurrentUVIndex')
	SKIN:Bang('!HideMeter MeterCurrentVisibility')
	SKIN:Bang('!HideMeter MeterCurrentMoonPhase')

	SKIN:Bang('!DisableMeasure MeasureCountry')
	SKIN:Bang('!DisableMeasure MeasureCity')
	SKIN:Bang('!DisableMeasure MeasureCurrentIcon')
	SKIN:Bang('!DisableMeasure MeasureCurrentPressure')
	SKIN:Bang('!DisableMeasure MeasureCurrentPressureMb')
	SKIN:Bang('!DisableMeasure MeasureCurrentPressureIn')
	SKIN:Bang('!DisableMeasure MeasureCurrentHumidity')
	SKIN:Bang('!DisableMeasure MeasureCurrentSunrise24H')
	SKIN:Bang('!DisableMeasure MeasureCurrentSunset24H')
	SKIN:Bang('!DisableMeasure MeasureCurrentSunrise12H')
	SKIN:Bang('!DisableMeasure MeasureCurrentSunset12H')
	SKIN:Bang('!DisableMeasure MeasureCurrentTemp')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempF')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempC')
	SKIN:Bang('!DisableMeasure MeasureCurrentDewPoint')
	SKIN:Bang('!DisableMeasure MeasureCurrentDewPointF')
	SKIN:Bang('!DisableMeasure MeasureCurrentDewPointC')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLike')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLikeF')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLikeC')
	SKIN:Bang('!DisableMeasure MeasureCurrentUVIndex')
--;	SKIN:Bang('!DisableMeasure MeasureCurrentValidTime24H')
--;	SKIN:Bang('!DisableMeasure MeasureCurrentValidTime12H')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisibility')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisibilityMi')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisibilityKm')
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
	SKIN:Bang('!DisableMeasure MeasureCurrentMoonPhase')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindMph')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindKmh')
	SKIN:Bang('!DisableMeasure MeasureCurrentPressMb')
	SKIN:Bang('!DisableMeasure MeasureCurrentPressIn')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisMi')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisKm')
	SKIN:Bang('!DisableMeasure MeasureCurrentUVExtreme')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLikeText')
	
end

function finishCurrent()
	SKIN:Bang('!Log "Retrieved"')
	SKIN:Bang('!ShowMeter MeterCurrentIcon')
	SKIN:Bang('!ShowMeter MeterTemperatureMaxMinImage')
	SKIN:Bang('!ShowMeter MeterSunriseImage')
	SKIN:Bang('!ShowMeter MeterSunsetImage')
	SKIN:Bang('!ShowMeter MeterCurrentWindDirectionImage')
	SKIN:Bang('!ShowMeter MeterHumidityImage')
	SKIN:Bang('!ShowMeter MeterDewPointImage')
	SKIN:Bang('!ShowMeter MeterPressureImage')
	SKIN:Bang('!ShowMeter MeterUVIndexImage')
	SKIN:Bang('!ShowMeter MeterVisibilityImage')
	SKIN:Bang('!ShowMeter MeterMoonPhaseImage')

	SKIN:Bang('!ShowMeter MeterCurrentTemperature')
	SKIN:Bang('!ShowMeter MeterCurrentCondition')
	SKIN:Bang('!ShowMeter MeterCurrentFeelsLike')
	SKIN:Bang('!ShowMeter MeterCurrentTemperatureMaxMin')
	SKIN:Bang('!ShowMeter MeterCurrentLocation')
	SKIN:Bang('!ShowMeter MeterCurrentSunrise')
	SKIN:Bang('!ShowMeter MeterCurrentSunset')
	SKIN:Bang('!ShowMeter MeterCurrentWindCardinal')
	SKIN:Bang('!ShowMeter MeterCurrentWindSpeed')
	SKIN:Bang('!ShowMeter MeterCurrentHumidity')
	SKIN:Bang('!ShowMeter MeterCurrentDewPoint')
	SKIN:Bang('!ShowMeter MeterCurrentPressure')
	SKIN:Bang('!ShowMeter MeterCurrentUVIndex')
	SKIN:Bang('!ShowMeter MeterCurrentVisibility')
	SKIN:Bang('!ShowMeter MeterCurrentMoonPhase')
	
	SKIN:Bang('!EnableMeasure MeasureCountry')
	SKIN:Bang('!EnableMeasure MeasureCity')
	SKIN:Bang('!EnableMeasure MeasureCurrentIcon')
	SKIN:Bang('!EnableMeasure MeasureCurrentPressure')
	SKIN:Bang('!EnableMeasure MeasureCurrentPressureMb')
	SKIN:Bang('!EnableMeasure MeasureCurrentPressureIn')
	SKIN:Bang('!EnableMeasure MeasureCurrentHumidity')
	SKIN:Bang('!EnableMeasure MeasureCurrentSunrise24H')
	SKIN:Bang('!EnableMeasure MeasureCurrentSunset24H')
	SKIN:Bang('!EnableMeasure MeasureCurrentSunrise12H')
	SKIN:Bang('!EnableMeasure MeasureCurrentSunset12H')
	SKIN:Bang('!EnableMeasure MeasureCurrentTemp')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempF')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempC')
	SKIN:Bang('!EnableMeasure MeasureCurrentDewPoint')
	SKIN:Bang('!EnableMeasure MeasureCurrentDewPointF')
	SKIN:Bang('!EnableMeasure MeasureCurrentDewPointC')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLike')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLikeF')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLikeC')
	SKIN:Bang('!EnableMeasure MeasureCurrentUVIndex')
--;	SKIN:Bang('!EnableMeasure MeasureCurrentValidTime24H')
--;	SKIN:Bang('!EnableMeasure MeasureCurrentValidTime12H')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisibility')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisibilityMi')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisibilityKm')
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
	SKIN:Bang('!EnableMeasure MeasureCurrentMoonPhase')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLikeText')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindMph')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindKmh')
	SKIN:Bang('!EnableMeasure MeasureCurrentPressMb')
	SKIN:Bang('!EnableMeasure MeasureCurrentPressIn')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisMi')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisKm')
	SKIN:Bang('!EnableMeasure MeasureCurrentUVExtreme')

	SKIN:Bang('!UpdateMeter *')

end

currentTime = {
	["12 Hours"] = {
		measSunrise = "MeasureCurrentSunrise12H",
		measSunset = "MeasureCurrentSunset12H",
--;		measValid = "MeasureCurrentValidTime12H",
		coreSMTime = "12H",
		varSMToggle = "0"
	},
	["24 Hours"] = {
		measSunrise = "MeasureCurrentSunrise24H",
		measSunset = "MeasureCurrentSunset24H",
--;		measValid = "MeasureCurrentValidTime24H",
		coreSMTime = "24H",
		varSMToggle = "1"
	}
}

function setCurrentSun(selectedTime)
	SKIN:Bang('!SetVariable CurrentSunTime "' .. currentTime[selectedTime]['coreSMTime'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables SunToggle "' .. currentTime[selectedTime]['varSMToggle'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!SetOption MeterCurrentSunrise MeasureName "' .. currentTime[selectedTime]['measSunrise'] .. '"')
	SKIN:Bang('!SetOption MeterCurrentSunset MeasureName "' .. currentTime[selectedTime]['measSunset'] .. '"')
--;	SKIN:Bang('!SetOption MeterCurrentSunset MeasureName "' .. currentTime[selectedTime]['measSunset'] .. '"')

	SKIN:Bang('!UpdateMeterGroup WeatherCurrentMeter')
	
end
