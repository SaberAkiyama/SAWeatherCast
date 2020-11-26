--; ==================================================
--; Lua Weather Tenday Core
--; ==================================================

function updateOneDay()
	SKIN:Bang('!UpdateMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!HideMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!HideMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!DisableMeasureGroup WeatherOneDaySlimMeasure')

end

--; ==================================================

function updateSevenDay()
	SKIN:Bang('!UpdateMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!HideMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherSevenDayMeasure')

end

--; ====================================================================================================

function finishOneDay()
	SKIN:Bang('!Log "Retrieved Tenday Forecast"')

	SKIN:Bang('!ShowMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!ShowMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!EnableMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!UpdateMeter *')

end

--; ==================================================

function finishSevenDay()
	SKIN:Bang('!ShowMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherSevenDayMeasure')
	SKIN:Bang('!UpdateMeter *')

end

--; ====================================================================================================

function scaleUpOneDay()
	SKIN:Bang('!WriteKeyValue Variables OneDayScale "(#OneDayScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneDayScale "(#OneDayScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup OneDayGroup')

end

function scaleDownOneDay()
	SKIN:Bang('!WriteKeyValue Variables OneDayScale "(#OneDayScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneDayScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable OneDayScale "(#OneDayScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #OneDayScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup OneDayGroup')

end

--; ==================================================

function scaleUpSevenDay()
	SKIN:Bang('!WriteKeyValue Variables SevenDayScale "(#SevenDayScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable SevenDayScale "(#SevenDayScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateGroup SevenDayGroup')

end

function scaleDownSevenDay()
	SKIN:Bang('!WriteKeyValue Variables SevenDayScale "(#SevenDayScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #SevenDayScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable SevenDayScale "(#SevenDayScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #SevenDayScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateGroup SevenDayGroup')

end

function matchTonight()
	SKIN:Bang('!HideMeterGroup WeatherTodayMeter')
	SKIN:Bang('!HideMeterGroup WeatherTodaySlimMeter')
	SKIN:Bang('!SetOption MeterTonightIcon X "(10*#OneDayScale#)"')
	SKIN:Bang('!ShowMeterGroup WeatherTomorrowMeter')
	SKIN:Bang('!ShowMeterGroup WeatherTonightSlimMeter')
	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end

--; ====================================================================================================

function setDayOneNightMatch()
	SKIN:Bang('!SetOption MeterIconDay1 ToolTipText "[MeasureConditionNight1]"')
	SKIN:Bang('!SetOption MeterTemperatureDay1 Text "---/%2°"')
	SKIN:Bang('!SetOption MeterPrecipitationDay1 MeasureName "MeasurePrecipitationNight1"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay1 MeasureName "MeasureWindCardinalNight1"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay1 MeasureName2 "MeasureWindSpeedNight1"')
	SKIN:Bang('!SetOption MeterIconDay2 ToolTipText "[MeasureConditionDay2]"')
	SKIN:Bang('!SetOption MeterIconDay3 ToolTipText "[MeasureConditionDay3]"')
	SKIN:Bang('!SetOption MeterIconDay4 ToolTipText "[MeasureConditionDay4]"')
	SKIN:Bang('!SetOption MeterIconDay5 ToolTipText "[MeasureConditionDay5]"')
	SKIN:Bang('!SetOption MeterIconDay6 ToolTipText "[MeasureConditionDay6]"')
	SKIN:Bang('!SetOption MeterIconDay7 ToolTipText "[MeasureConditionDay7]"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay2 MeasureName "MeasureWindCardinalDay2"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay3 MeasureName "MeasureWindCardinalDay3"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay4 MeasureName "MeasureWindCardinalDay4"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay5 MeasureName "MeasureWindCardinalDay5"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay6 MeasureName "MeasureWindCardinalDay6"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay7 MeasureName "MeasureWindCardinalDay7"')

	SKIN:Bang('!UpdateMeterGroup WeatherSevenDayMeter')

end
