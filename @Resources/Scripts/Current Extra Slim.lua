--; ==================================================
--; Lua Weather Current Extra Slim
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Current..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentExtraSlimMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureCurrent')
	SKIN:Bang('!HideMeterGroup WeatherCurrentExtraSlimMeter')
	SKIN:Bang('!UpdateMeasure MeasureCurrent')

end

function updateCurrent()
	SKIN:Bang('!UpdateMeasure MeasureCurrent')
	SKIN:Bang('!HideMeterGroup WeatherCurrentExtraSlimMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherCurrentExtraSlimMeasure')

end

function finishCurrent()
	SKIN:Bang('!Log "Current Retrieved"')

	SKIN:Bang('!ShowMeterGroup WeatherCurrentExtraSlimMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherCurrentExtraSlimMeasure')

	SKIN:Bang('!UpdateMeter *')

end

function scaleUpCurrentExtraSlim()
	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimScale "(#CurrentExtraSlimScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentExtraSlimScale "(#CurrentExtraSlimScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup CurrentExtraSlimGroup')
	
end

function scaleDownCurrentExtraSlim()
	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimScale "(#CurrentExtraSlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentExtraSlimScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentExtraSlimScale "(#CurrentExtraSlimScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentExtraSlimScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup CurrentExtraSlimGroup')

end
