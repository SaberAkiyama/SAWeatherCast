--; ==================================================
--; Lua Weather Current
--; ==================================================

function updateCurrent()
	SKIN:Bang('!UpdateMeasure MeasureCurrent')

	SKIN:Bang('!Log "Retrieving Current..."')
	SKIN:Bang('!HideMeter MeterCurrentIcon')
	SKIN:Bang('!HideMeter MeterCurrentWindDirectionImage')
	SKIN:Bang('!HideMeter MeterHumidityImage')
	SKIN:Bang('!HideMeter MeterVisibilityImage')

	SKIN:Bang('!HideMeter MeterCurrentTemperature')
	SKIN:Bang('!HideMeter MeterCurrentCondition')
	SKIN:Bang('!HideMeter MeterCurrentFeelsLike')
	SKIN:Bang('!HideMeter MeterCurrentWindCardinalSpeed')
	SKIN:Bang('!HideMeter MeterCurrentHumidity')
	SKIN:Bang('!HideMeter MeterCurrentVisibility')

	SKIN:Bang('!DisableMeasure MeasureCurrentSlimUnits')
	SKIN:Bang('!DisableMeasure MeasureCountry')
	SKIN:Bang('!DisableMeasure MeasureCity')
	SKIN:Bang('!DisableMeasure MeasureCurrentIcon')
	SKIN:Bang('!DisableMeasure MeasureCurrentHumidity')
	SKIN:Bang('!DisableMeasure MeasureCurrentTemp')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempF')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempC')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLike')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLikeF')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLikeC')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisibility')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisibilityMi')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisibilityKm')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindCardinal')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindSpeed')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindSpeedMph')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindSpeedKmh')
	SKIN:Bang('!DisableMeasure MeasureCurrentCondition')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindMph')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindKmh')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisMi')
	SKIN:Bang('!DisableMeasure MeasureCurrentVisKm')
	SKIN:Bang('!DisableMeasure MeasureCurrentFeelsLikeText')
	
end

function finishCurrent()
	SKIN:Bang('!Log "Current Retrieved"')
	SKIN:Bang('!ShowMeter MeterCurrentIcon')
	SKIN:Bang('!ShowMeter MeterCurrentWindDirectionImage')
	SKIN:Bang('!ShowMeter MeterHumidityImage')
	SKIN:Bang('!ShowMeter MeterVisibilityImage')

	SKIN:Bang('!ShowMeter MeterCurrentTemperature')
	SKIN:Bang('!ShowMeter MeterCurrentCondition')
	SKIN:Bang('!ShowMeter MeterCurrentFeelsLike')
	SKIN:Bang('!ShowMeter MeterCurrentWindCardinalSpeed')
	SKIN:Bang('!ShowMeter MeterCurrentHumidity')
	SKIN:Bang('!ShowMeter MeterCurrentVisibility')

	SKIN:Bang('!EnableMeasure MeasureCurrentSlimUnits')
	SKIN:Bang('!EnableMeasure MeasureCountry')
	SKIN:Bang('!EnableMeasure MeasureCity')
	SKIN:Bang('!EnableMeasure MeasureCurrentIcon')
	SKIN:Bang('!EnableMeasure MeasureCurrentHumidity')
	SKIN:Bang('!EnableMeasure MeasureCurrentTemp')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempF')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempC')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLike')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLikeF')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLikeC')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisibility')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisibilityMi')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisibilityKm')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindCardinal')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindSpeed')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindSpeedMph')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindSpeedKmh')
	SKIN:Bang('!EnableMeasure MeasureCurrentCondition')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindMph')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindKmh')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisMi')
	SKIN:Bang('!EnableMeasure MeasureCurrentVisKm')
	SKIN:Bang('!EnableMeasure MeasureCurrentFeelsLikeText')

	SKIN:Bang('!UpdateMeter *')

end

function scaleUpCurrentSlim()
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimScale "(#CurrentSlimScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentSlimScale "(#CurrentSlimScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup CurrentSlimGroup')
	
end

function scaleDownCurrentSlim()
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimScale "(#CurrentSlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentSlimScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentSlimScale "(#CurrentSlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentSlimScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup CurrentGroup')

end
