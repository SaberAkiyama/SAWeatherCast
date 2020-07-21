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
	SKIN:Bang('!HideMeter MeterCurrentTemperature')
	SKIN:Bang('!HideMeter MeterCurrentCondition')

	SKIN:Bang('!DisableMeasure MeasureCurrentIcon')
	SKIN:Bang('!DisableMeasure MeasureCurrentTemp')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempF')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempC')
	SKIN:Bang('!DisableMeasure MeasureCurrentCondition')
	
end

function finishCurrent()
	SKIN:Bang('!Log "Retrieved"')
	SKIN:Bang('!ShowMeter MeterCurrentIcon')
	SKIN:Bang('!ShowMeter MeterCurrentTemperature')
	SKIN:Bang('!ShowMeter MeterCurrentCondition')
	
	SKIN:Bang('!EnableMeasure MeasureCurrentIcon')
	SKIN:Bang('!EnableMeasure MeasureCurrentTemp')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempF')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempC')
	SKIN:Bang('!EnableMeasure MeasureCurrentCondition')

	SKIN:Bang('!UpdateMeter *')

end
