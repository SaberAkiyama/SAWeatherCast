--; ==================================================
--; Lua Weather Current Extra Slim
--; ==================================================

function updateCurrent()
	SKIN:Bang('!UpdateMeasure MeasureCurrent')

	SKIN:Bang('!Log "Retrieving Current..."')
	SKIN:Bang('!HideMeter MeterCurrentIcon')
	SKIN:Bang('!HideMeter MeterCurrentTemperature')
	SKIN:Bang('!HideMeter MeterCurrentCondition')

	SKIN:Bang('!DisableMeasure MeasureCurrentExtraSlimUnits')
	SKIN:Bang('!DisableMeasure MeasureCurrentIcon')
	SKIN:Bang('!DisableMeasure MeasureCurrentTemp')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempF')
	SKIN:Bang('!DisableMeasure MeasureCurrentTempC')
	SKIN:Bang('!DisableMeasure MeasureCurrentCondition')
	SKIN:Bang('!DisableMeasure MeasureCurrentWindDirection')
	
end

function finishCurrent()
	SKIN:Bang('!Log "Current Retrieved"')
	SKIN:Bang('!ShowMeter MeterCurrentIcon')
	SKIN:Bang('!ShowMeter MeterCurrentTemperature')
	SKIN:Bang('!ShowMeter MeterCurrentCondition')
	
	SKIN:Bang('!EnableMeasure MeasureCurrentExtraSlimUnits')
	SKIN:Bang('!EnableMeasure MeasureCurrentIcon')
	SKIN:Bang('!EnableMeasure MeasureCurrentTemp')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempF')
	SKIN:Bang('!EnableMeasure MeasureCurrentTempC')
	SKIN:Bang('!EnableMeasure MeasureCurrentCondition')

	SKIN:Bang('!UpdateMeter *')

end

function scaleUpCurrentExtraSlim()
	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimScale "(#CurrentExtraSlimScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentExtraSlimScale "(#CurrentExtraSlimScale#+#ScrollMouseIncrement#)" "#CoreFilePath#"')
	SKIN:Bang('!UpdateMeterGroup CurrentExtraSlimGroup')
	
end

function scaleDownCurrentExtraSlim()
	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimScale "(#CurrentExtraSlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentExtraSlimScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentExtraSlimScale "(#CurrentExtraSlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentExtraSlimScale#-#ScrollMouseIncrement#)" "#CoreFilePath#"')
	SKIN:Bang('!UpdateMeterGroup CurrentExtraSlimGroup')

end
