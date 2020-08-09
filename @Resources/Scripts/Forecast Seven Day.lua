--; ==================================================
--; Lua Weather Seven Day Forecast
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Weekly Forecast..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherSevenDayMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureSevenDayForecast')
	SKIN:Bang('!HideMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!UpdateMeasure MeasureSevenDayForecast')

end

function updateSevenDay()
	SKIN:Bang('!UpdateMeasure MeasureSevenDayForecast')
	SKIN:Bang('!HideMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherSevenDayMeasure')
	
end

function finishSevenDay()
	SKIN:Bang('!Log "Retrieved Weekly Forecast"')
	
	SKIN:Bang('!ShowMeterGroup WeatherSevenDayMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherSevenDayMeasure')
	
	SKIN:Bang('!UpdateMeter *')

end

function scaleUpSevenDay()
	SKIN:Bang('!WriteKeyValue Variables SevenDayScale "(#SevenDayScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable SevenDayScale "(#SevenDayScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup SevenDayGroup')
	
end

function scaleDownSevenDay()
	SKIN:Bang('!WriteKeyValue Variables SevenDayScale "(#SevenDayScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #SevenDayScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable SevenDayScale "(#SevenDayScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #SevenDayScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup SevenDayGroup')

end
