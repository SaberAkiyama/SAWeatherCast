--; ==================================================
--; Lua Weather Seven Day Forecast
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Weekly Forecast..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherSevenDayMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherCore')
	SKIN:Bang('!HideMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')

end

function updateSevenDay()
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')
	SKIN:Bang('!HideMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherSevenDayMeasure')
	
end

function finishSevenDay()
	SKIN:Bang('!Log "Retrieved Weekly Forecast"')
	
	SKIN:Bang('!ShowMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherSevenDayMeasure')
	
	SKIN:Bang('!UpdateMeter *')

end

--; ====================================================================================================

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

--; ====================================================================================================

function setDayOneNightMatch()
	SKIN:Bang('!SetOption MeterIconDay1 ImageName "[MeasureIconNight1].png"')
	SKIN:Bang('!SetOption MeterTemperatureDay1 Text "--/%2°"')
	SKIN:Bang('!SetOption MeterPrecipitationDay1 MeasureName "MeasurePrecipitationNight1"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay1 MeasureName2 "MeasureWindSpeed#SevenDayWind#Night1"')
	SKIN:Bang('!SetOption MeterIconDay2 ToolTipText "[MeasureConditionNight1]"')
	SKIN:Bang('!SetOption MeterIconDay3 ToolTipText "[MeasureConditionNight2]"')
	SKIN:Bang('!SetOption MeterIconDay4 ToolTipText "[MeasureConditionNight3]"')
	SKIN:Bang('!SetOption MeterIconDay5 ToolTipText "[MeasureConditionNight4]"')
	SKIN:Bang('!SetOption MeterIconDay6 ToolTipText "[MeasureConditionNight5]"')
	SKIN:Bang('!SetOption MeterIconDay7 ToolTipText "[MeasureConditionNight6]"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay2 MeasureName "MeasureWindCardinalNight1"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay3 MeasureName "MeasureWindCardinalNight2"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay4 MeasureName "MeasureWindCardinalNight3"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay5 MeasureName "MeasureWindCardinalNight4"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay6 MeasureName "MeasureWindCardinalNight5"')
	SKIN:Bang('!SetOption MeterWindCardinalSpeedDay7 MeasureName "MeasureWindCardinalNight6"')

	SKIN:Bang('!UpdateMeterGroup WeatherSevenDayMeter')

end
