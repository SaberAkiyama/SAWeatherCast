--; ==================================================
--; Lua Weather Current
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Current..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentSlimMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureCurrent')
	SKIN:Bang('!UnpauseMeasure MeasureCurrentWindDirection')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindDirection')
	SKIN:Bang('!HideMeterGroup WeatherCurrentSlimMeter')
	SKIN:Bang('!UpdateMeasure MeasureCurrent')

end

function updateCurrent()
	SKIN:Bang('!UpdateMeasure MeasureCurrent')
	SKIN:Bang('!HideMeterGroup WeatherCurrentSlimMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherCurrentSlimMeasure')
	
end

function finishCurrent()
	SKIN:Bang('!Log "Current Retrieved"')

	SKIN:Bang('!ShowMeterGroup WeatherCurrentSlimMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherCurrentSlimMeasure')

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
	SKIN:Bang('!UpdateMeterGroup CurrentSlimGroup')

end
