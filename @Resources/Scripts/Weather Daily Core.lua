--; ==================================================
--; Lua Weather Core
--; ==================================================

function updateCurrent()
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')
	SKIN:Bang('!HideMeterGroup WeatherCurrentMeter')
	SKIN:Bang('!HideMeterGroup WeatherCurrentSlimMeter')
	SKIN:Bang('!HideMeterGroup WeatherCurrentExtraSlimMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherCurrentMeasure')
	SKIN:Bang('!DisableMeasureGroup WeatherCurrentSlimMeasure')
	SKIN:Bang('!DisableMeasureGroup WeatherCurrentExtraSlimMeasure')

end

--; ==================================================

function updateHourly()
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')
	SKIN:Bang('!HideMeterGroup WeatherOneHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherSixHourMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherOneHourMeasure')
	SKIN:Bang('!DisableMeasureGroup WeatherSixHourMeasure')

end

--; ====================================================================================================

function finishCurrent()
	SKIN:Bang('!Log "Weather Daily Retrieved"')

	SKIN:Bang('!ShowMeterGroup WeatherCurrentMeter')
	SKIN:Bang('!ShowMeterGroup WeatherCurrentSlimMeter')
	SKIN:Bang('!ShowMeterGroup WeatherCurrentExtraSlimMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherCurrentMeasure')
	SKIN:Bang('!EnableMeasureGroup WeatherCurrentSlimMeasure')
	SKIN:Bang('!EnableMeasureGroup WeatherCurrentExtraSlimMeasure')
	SKIN:Bang('!UpdateMeter *')

end

--; ==================================================

function finishHourly()
	SKIN:Bang('!ShowMeterGroup WeatherOneHourMeter')
	SKIN:Bang('!ShowMeterGroup WeatherSixHourMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherOneHourMeasure')
	SKIN:Bang('!EnableMeasureGroup WeatherSixHourMeasure')
	SKIN:Bang('!UpdateMeter *')

end

--; ====================================================================================================

function scaleUpCurrent()
	SKIN:Bang('!WriteKeyValue Variables CurrentScale "(#CurrentScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentScale "(#CurrentScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup CurrentGroup')
	
end

function scaleDownCurrent()
	SKIN:Bang('!WriteKeyValue Variables CurrentScale "(#CurrentScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentScale "(#CurrentScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup CurrentGroup')

end

--; ==================================================

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

--; ==================================================

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

--; ==================================================

function scaleUpOneHour()
	SKIN:Bang('!WriteKeyValue Variables OneHourScale "(#OneHourScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneHourScale "(#OneHourScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup OneHourGroup')

end

function scaleDownOneHour()
	SKIN:Bang('!WriteKeyValue Variables OneHourScale "(#OneHourScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneHourScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneHourScale "(#OneHourScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneHourScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup OneHourGroup')

end

--; ==================================================

function scaleUpSixHour()
	SKIN:Bang('!WriteKeyValue Variables SixHourScale "(#SixHourScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable SixHourScale "(#SixHourScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup SixHourGroup')

end

function scaleDownSixHour()
	SKIN:Bang('!WriteKeyValue Variables SixHourScale "(#SixHourScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #SixHourScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable SixHourScale "(#SixHourScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #SixHourScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup SixHourGroup')

end
