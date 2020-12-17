--; ==================================================
--; Lua Weather Tenday Core
--; ==================================================

function updateTenday()
	SKIN:Bang('!ShowMeter MeterWeatherRetrieveDaily')
	SKIN:Bang('!UpdateMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!HideMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!HideMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!DisableMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!HideMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherSevenDayMeasure')

end

--; ====================================================================================================

function finishOneDay()
	SKIN:Bang('!Log "#RetrievedTendayText#"')

	SKIN:Bang('!HideMeter MeterWeatherRetrieveDaily')
	SKIN:Bang('!ShowMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!ShowMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!EnableMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!UpdateMeter *')

end

--; ==================================================

function finishSevenDay()
	SKIN:Bang('!HideMeter MeterWeatherRetrieveDaily')
	SKIN:Bang('!ShowMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherSevenDayMeasure')
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

--; ====================================================================================================

function matchTonight()
	SKIN:Bang('!HideMeterGroup WeatherTodayMeter')
	SKIN:Bang('!HideMeterGroup WeatherTodaySlimMeter')
	SKIN:Bang('!SetOption MeterTonightIcon X "(10*#WeatherScale#)"')
	SKIN:Bang('!ShowMeterGroup WeatherTomorrowMeter')
	SKIN:Bang('!ShowMeterGroup WeatherTonightSlimMeter')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!UpdateMeterGroup WeatherOneDaySlimMeter')

end

--; ====================================================================================================

function setDayOneNightMatch()
	SKIN:Bang('!SetOption MeterIconDay1 ToolTipTitle "[MeasureConditionNight1]"')
	SKIN:Bang('!SetOption MeterIconDay1 ToolTipText "[MeasureDetailNight1]"')
	SKIN:Bang('!SetOption MeterTemperatureDay1 Text "---/%2°"')
	SKIN:Bang('!SetOption MeterPrecipitationDay1 MeasureName "MeasurePrecipitationNight1"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay1 MeasureName "MeasureWindCardinalNight1"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay1 MeasureName2 "MeasureWindSpeedNight1"')
	SKIN:Bang('!SetOption MeterIconDay2 ToolTipTitle "[MeasureConditionDay2]"')
	SKIN:Bang('!SetOption MeterIconDay3 ToolTipTitle "[MeasureConditionDay3]"')
	SKIN:Bang('!SetOption MeterIconDay4 ToolTipTitle "[MeasureConditionDay4]"')
	SKIN:Bang('!SetOption MeterIconDay5 ToolTipTitle "[MeasureConditionDay5]"')
	SKIN:Bang('!SetOption MeterIconDay6 ToolTipTitle "[MeasureConditionDay6]"')
	SKIN:Bang('!SetOption MeterIconDay7 ToolTipTitle "[MeasureConditionDay7]"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay2 MeasureName "MeasureWindCardinalDay2"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay3 MeasureName "MeasureWindCardinalDay3"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay4 MeasureName "MeasureWindCardinalDay4"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay5 MeasureName "MeasureWindCardinalDay5"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay6 MeasureName "MeasureWindCardinalDay6"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay7 MeasureName "MeasureWindCardinalDay7"')

	SKIN:Bang('!UpdateMeterGroup WeatherSevenDayMeter')

end
