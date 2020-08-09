--; ==================================================
--; Lua Weather Air Quality
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Air Quality..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherAirQualityMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureAirQuality')
	SKIN:Bang('!HideMeterGroup WeatherAirQualityMeter')
	SKIN:Bang('!UpdateMeasure MeasureAirQuality')

end

function updateAirQuality()
	SKIN:Bang('!UpdateMeasure MeasureAirQuality')
	SKIN:Bang('!HideMeterGroup WeatherAirQualityMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherAirQualityMeasure')

end

function finishAirQuality()
	SKIN:Bang('!Log "Air Quality Retrieved"')

	SKIN:Bang('!ShowMeterGroup WeatherAirQualityMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherAirQualityMeasure')

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
	
	SKIN:Bang('!UpdateMeterGroup WeatherAirQualityMeter')

end

function setNO2(selectedQuality)
	SKIN:Bang('!SetOption MeterAirQualityNO2Round LineColor "' .. qualityPollutant[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!SetOption MeterAirQualityNO2Round RotationAngle "(Rad(' .. qualityPollutant[selectedQuality]['angleQuality'] ..'))"')
	SKIN:Bang('!WriteKeyValue Variables AQNO2Color "' .. qualityPollutant[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables AQNO2Index "' .. qualityPollutant[selectedQuality]['angleVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherAirQualityMeter')

end

function setO3(selectedQuality)
	SKIN:Bang('!SetOption MeterAirQualityO3Round LineColor "' .. qualityPollutant[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!SetOption MeterAirQualityO3Round RotationAngle "(Rad(' .. qualityPollutant[selectedQuality]['angleQuality'] ..'))"')
	SKIN:Bang('!WriteKeyValue Variables AQO3Color "' .. qualityPollutant[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables AQO3Index "' .. qualityPollutant[selectedQuality]['angleVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherAirQualityMeter')

end

function setSO2(selectedQuality)
	SKIN:Bang('!SetOption MeterAirQualitySO2Round LineColor "' .. qualityPollutant[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!SetOption MeterAirQualitySO2Round RotationAngle "(Rad(' .. qualityPollutant[selectedQuality]['angleQuality'] ..'))"')
	SKIN:Bang('!WriteKeyValue Variables AQSO2Color "' .. qualityPollutant[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables AQSO2Index "' .. qualityPollutant[selectedQuality]['angleVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherAirQualityMeter')

end

function setPM25(selectedQuality)
	SKIN:Bang('!SetOption MeterAirQualityPM25Round LineColor "' .. qualityPollutant[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!SetOption MeterAirQualityPM25Round RotationAngle "(Rad(' .. qualityPollutant[selectedQuality]['angleQuality'] ..'))"')
	SKIN:Bang('!WriteKeyValue Variables AQPM25Color "' .. qualityPollutant[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables AQPM25Index "' .. qualityPollutant[selectedQuality]['angleVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherAirQualityMeter')

end

function setPM10(selectedQuality)
	SKIN:Bang('!SetOption MeterAirQualityPM10Round LineColor "' .. qualityPollutant[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!SetOption MeterAirQualityPM10Round RotationAngle "(Rad(' .. qualityPollutant[selectedQuality]['angleQuality'] ..'))"')
	SKIN:Bang('!WriteKeyValue Variables AQPM10Color "' .. qualityPollutant[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables AQPM10Index "' .. qualityPollutant[selectedQuality]['angleVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherAirQualityMeter')

end

function setCO(selectedQuality)
	SKIN:Bang('!SetOption MeterAirQualityCORound LineColor "' .. qualityPollutant[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!SetOption MeterAirQualityCORound RotationAngle "(Rad(' .. qualityPollutant[selectedQuality]['angleQuality'] ..'))"')
	SKIN:Bang('!WriteKeyValue Variables AQCOColor "' .. qualityPollutant[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables AQCOIndex "' .. qualityPollutant[selectedQuality]['angleVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherAirQualityMeter')

end

--; ====================================================================================================

function scaleUpAirQuality()
	SKIN:Bang('!WriteKeyValue Variables AirQualityScale "(#AirQualityScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable AirQualityScale "(#AirQualityScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup AirQualityGroup')
	
end

function scaleDownAirQuality()
	SKIN:Bang('!WriteKeyValue Variables AirQualityScale "(#AirQualityScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #AirQualityScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable AirQualityScale "(#AirQualityScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #AirQualityScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup AirQualityGroup')

end
