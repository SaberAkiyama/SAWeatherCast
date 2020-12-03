--; ==================================================
--; Lua Weather Core
--; ==================================================

function updateCurrent()
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')
	SKIN:Bang('!ShowMeter MeterWeatherRetrieve')
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
	SKIN:Bang('!ShowMeter MeterWeatherRetrieve')
	SKIN:Bang('!HideMeterGroup WeatherOneHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherSixHourMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherOneHourMeasure')
	SKIN:Bang('!DisableMeasureGroup WeatherSixHourMeasure')

end

--; ====================================================================================================

function finishCurrent()
	SKIN:Bang('!Log "#RetrievedCurrentText#"')

	SKIN:Bang('!HideMeter MeterWeatherRetrieve')
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
	SKIN:Bang('!HideMeter MeterWeatherRetrieve')
	SKIN:Bang('!ShowMeterGroup WeatherOneHourMeter')
	SKIN:Bang('!ShowMeterGroup WeatherSixHourMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherOneHourMeasure')
	SKIN:Bang('!EnableMeasureGroup WeatherSixHourMeasure')
	SKIN:Bang('!UpdateMeter *')

end

--; ====================================================================================================

function scaleUpWeather()
	SKIN:Bang('!WriteKeyValue Variables WeatherScale "(#WeatherScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable WeatherScale "(#WeatherScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup WeatherScaleGroup')
	
end

function scaleDownWeather()
	SKIN:Bang('!WriteKeyValue Variables WeatherScale "(#WeatherScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #WeatherScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable WeatherScale "(#WeatherScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #WeatherScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup WeatherScaleGroup')

end
