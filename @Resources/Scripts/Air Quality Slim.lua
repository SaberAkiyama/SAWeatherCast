--; ==================================================
--; Lua Weather Air Quality Slim
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Air Quality..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherAirQualitySlimMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureAirQuality')
	SKIN:Bang('!HideMeterGroup WeatherAirQualitySlimMeter')
	SKIN:Bang('!UpdateMeasure MeasureAirQuality')

end

function updateAirQuality()
	SKIN:Bang('!UpdateMeasure MeasureAirQuality')
	SKIN:Bang('!HideMeterGroup WeatherAirQualitySlimMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherAirQualitySlimMeasure')

end

function finishAirQuality()
	SKIN:Bang('!Log "Air Quality Retrieved"')

	SKIN:Bang('!ShowMeterGroup WeatherAirQualitySlimMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherAirQualitySlimMeasure')

	SKIN:Bang('!UpdateMeter *')

end

--; ====================================================================================================

qualityPollutant = {
	["Good"] = {
		angleQuality = "60",
		colorQuality = "00E83880",
		angleVarQuality = "60",
		colorVarQuality = "00E83880"
	},
	["Moderate"] = {
		angleQuality = "120",
		colorQuality = "FFFF2480",
		angleVarQuality = "120",
		colorVarQuality = "FFFF2480"
	},
	["Unhealthy for Sensitive Groups"] = {
		angleQuality = "180",
		colorQuality = "FF720080",
		angleVarQuality = "180",
		colorVarQuality = "FF720080"
	},
	["Unhealthy"] = {
		angleQuality = "240",
		colorQuality = "FF000080",
		angleVarQuality = "240",
		colorVarQuality = "FF000080"
	},
	["Very Unhealthy"] = {
		angleQuality = "300",
		colorQuality = "9D3D8C80",
		angleVarQuality = "300",
		colorVarQuality = "9D3D8C80"
	},
	["Hazardous"] = {
		angleQuality = "360",
		colorQuality = "8D002180",
		angleVarQuality = "360",
		colorVarQuality = "8D002180"
	}
}

function setPrimary(selectedQuality)
	SKIN:Bang('!SetOption MeterAirQualityPrimaryRound LineColor "' .. qualityPollutant[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!SetOption MeterAirQualityPrimaryRound RotationAngle "(Rad(' .. qualityPollutant[selectedQuality]['angleQuality'] ..'))"')
	SKIN:Bang('!WriteKeyValue Variables AQPrimaryColor "' .. qualityPollutant[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables AQPrimaryIndex "' .. qualityPollutant[selectedQuality]['angleVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherAirQualitySlimMeter')

end

--; ====================================================================================================

function scaleUpAirQuality()
	SKIN:Bang('!WriteKeyValue Variables AirQualityScale "(#AirQualityScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable AirQualityScale "(#AirQualityScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup AirQualitySlimGroup')
	
end

function scaleDownAirQuality()
	SKIN:Bang('!WriteKeyValue Variables AirQualityScale "(#AirQualityScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #AirQualityScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable AirQualityScale "(#AirQualityScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #AirQualityScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup AirQualitySlimGroup')

end
