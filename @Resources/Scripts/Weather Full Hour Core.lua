--; ==================================================
--; Lua Weather Core
--; ==================================================

function updateCore()
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')
	SKIN:Bang('!ShowMeter MeterWeatherRetrieve')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherFullHourMeasure')

end

--; ==================================================

function updateFullHour()
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')
	
	SKIN:Bang('!ShowMeter MeterWeatherRetrieve')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherFullHourMeasure')

end

--; ====================================================================================================

function finishFullHour()
	SKIN:Bang('!Log "#RetrievedCurrentText#"')

	SKIN:Bang('!HideMeter MeterWeatherRetrieve')
	SKIN:Bang('!ShowMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherFullHourMeasure')

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

function setFullHour1()
	SKIN:Bang('!ShowMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter2')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter3')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter4')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter5')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter6')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter7')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter8')

end

function setFullHour2()
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!ShowMeterGroup WeatherFullHourMeter2')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter3')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter4')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter5')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter6')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter7')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter8')

end

function setFullHour3()
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter2')
	SKIN:Bang('!ShowMeterGroup WeatherFullHourMeter3')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter4')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter5')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter6')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter7')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter8')

end

function setFullHour4()
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter2')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter3')
	SKIN:Bang('!ShowMeterGroup WeatherFullHourMeter4')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter5')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter6')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter7')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter8')

end

function setFullHour5()
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter2')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter3')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter4')
	SKIN:Bang('!ShowMeterGroup WeatherFullHourMeter5')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter6')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter7')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter8')

end

function setFullHour6()
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter2')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter3')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter4')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter5')
	SKIN:Bang('!ShowMeterGroup WeatherFullHourMeter6')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter7')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter8')

end

function setFullHour7()
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter2')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter3')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter4')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter5')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter6')
	SKIN:Bang('!ShowMeterGroup WeatherFullHourMeter7')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter8')

end

function setFullHour8()
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter2')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter3')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter4')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter5')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter6')
	SKIN:Bang('!HideMeterGroup WeatherFullHourMeter7')
	SKIN:Bang('!ShowMeterGroup WeatherFullHourMeter8')

end
