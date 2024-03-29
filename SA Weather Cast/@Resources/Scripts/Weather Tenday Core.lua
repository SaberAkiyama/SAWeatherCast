--; ==================================================
--; Lua Weather Tenday Core
--; ==================================================

function updateTenday()
	SKIN:Bang('!ShowMeter MeterWeatherRetrieve')
	SKIN:Bang('!UpdateMeasure MeasureWeatherUnitsCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!HideMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!HideMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!HideMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!DisableMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!DisableMeasureGroup WeatherSevenDayMeasure')

end

--; ====================================================================================================

function finishOneDay()
	SKIN:Bang('!Log "#RetrievedTendayText#"')

	SKIN:Bang('!HideMeter MeterWeatherRetrieve')
	SKIN:Bang('!ShowMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!ShowMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!EnableMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!UpdateMeter *')

end

--; ==================================================

function finishSevenDay()
	SKIN:Bang('!HideMeter MeterWeatherRetrieve')
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

	SKIN:Bang('!SetOption MeterIconDay2 MeasureName "MeasureIconNight2"')
    SKIN:Bang('!SetOption MeterIconDay2 ToolTipTitle "[MeasureConditionNight2]"')
    SKIN:Bang('!SetOption MeterIconDay2 ToolTipText "[MeasureDetailNight2]"')
	SKIN:Bang('!SetOption MeterPrecipitationDay2 MeasureName "MeasurePrecipitationNight2"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay2 MeasureName "MeasureWindCardinalNight2"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay2 MeasureName2 "MeasureWindSpeedNight2"')

	SKIN:Bang('!SetOption MeterIconDay3 MeasureName "MeasureIconNight3"')
	SKIN:Bang('!SetOption MeterIconDay3 ToolTipTitle "[MeasureConditionNight3]"')
    SKIN:Bang('!SetOption MeterIconDay3 ToolTipText "[MeasureDetailNight3]"')
	SKIN:Bang('!SetOption MeterPrecipitationDay3 MeasureName "MeasurePrecipitationNight3"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay3 MeasureName "MeasureWindCardinalNight3"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay3 MeasureName2 "MeasureWindSpeedNight3"')

	SKIN:Bang('!SetOption MeterIconDay4 MeasureName "MeasureIconNight4"')
	SKIN:Bang('!SetOption MeterIconDay4 ToolTipTitle "[MeasureConditionNight4]"')
    SKIN:Bang('!SetOption MeterIconDay4 ToolTipText "[MeasureDetailNight4]"')
	SKIN:Bang('!SetOption MeterPrecipitationDay4 MeasureName "MeasurePrecipitationNight4"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay4 MeasureName "MeasureWindCardinalNight4"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay4 MeasureName2 "MeasureWindSpeedNight4"')

	SKIN:Bang('!SetOption MeterIconDay5 MeasureName "MeasureIconNight5"')
	SKIN:Bang('!SetOption MeterIconDay5 ToolTipTitle "[MeasureConditionNight5]"')
    SKIN:Bang('!SetOption MeterIconDay5 ToolTipText "[MeasureDetailNight5]"')
	SKIN:Bang('!SetOption MeterPrecipitationDay5 MeasureName "MeasurePrecipitationNight5"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay5 MeasureName "MeasureWindCardinalNight5"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay5 MeasureName2 "MeasureWindSpeedNight5"')

	SKIN:Bang('!SetOption MeterIconDay6 MeasureName "MeasureIconNight6"')
	SKIN:Bang('!SetOption MeterIconDay6 ToolTipTitle "[MeasureConditionNight6]"')
    SKIN:Bang('!SetOption MeterIconDay6 ToolTipText "[MeasureDetailNight6]"')
	SKIN:Bang('!SetOption MeterPrecipitationDay6 MeasureName "MeasurePrecipitationNight6"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay6 MeasureName "MeasureWindCardinalNight6"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay6 MeasureName2 "MeasureWindSpeedNight6"')

	SKIN:Bang('!SetOption MeterIconDay7 MeasureName "MeasureIconNight7"')
	SKIN:Bang('!SetOption MeterIconDay7 ToolTipTitle "[MeasureConditionNight7]"')
    SKIN:Bang('!SetOption MeterIconDay7 ToolTipText "[MeasureDetailNight7]"')
	SKIN:Bang('!SetOption MeterPrecipitationDay7 MeasureName "MeasurePrecipitationNight7"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay7 MeasureName "MeasureWindCardinalNight7"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay7 MeasureName2 "MeasureWindSpeedNight7"')

	SKIN:Bang('!SetOption MeterTemperatureDay1 InlinePattern "(.*)/.*"')
	SKIN:Bang('!SetOption MeterTemperatureDay2 InlinePattern "(.*)/.*"')
	SKIN:Bang('!SetOption MeterTemperatureDay3 InlinePattern "(.*)/.*"')
	SKIN:Bang('!SetOption MeterTemperatureDay4 InlinePattern "(.*)/.*"')
	SKIN:Bang('!SetOption MeterTemperatureDay5 InlinePattern "(.*)/.*"')
	SKIN:Bang('!SetOption MeterTemperatureDay6 InlinePattern "(.*)/.*"')
	SKIN:Bang('!SetOption MeterTemperatureDay7 InlinePattern "(.*)/.*"')

	SKIN:Bang('!UpdateMeterGroup WeatherSevenDayMeter')

end
