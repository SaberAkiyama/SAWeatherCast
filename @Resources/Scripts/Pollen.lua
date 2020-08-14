--; ==================================================
--; Lua Weather Pollen
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Pollen..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherPollenMeasure')
	SKIN:Bang('!UnpauseMeasure MeasurePollen')
	SKIN:Bang('!HideMeterGroup WeatherPollenMeter')
	SKIN:Bang('!UpdateMeasure MeasurePollen')

end

function updatePollen()
	SKIN:Bang('!UpdateMeasure MeasurePollen')
	SKIN:Bang('!HideMeterGroup WeatherPollenMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherPollenMeasure')

end

function finishPollen()
	SKIN:Bang('!Log "Pollen Retrieved"')

	SKIN:Bang('!ShowMeterGroup WeatherPollenMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherPollenMeasure')

	SKIN:Bang('!UpdateMeter *')

end

--; ====================================================================================================

qualityPollen = {
	["None"] = {
		colorQuality = "CECECE",
		colorVarQuality = "CECECE"
	},
	["Low"] = {
		colorQuality = "A5EB02",
		colorVarQuality = "A5EB02"
	},
	["Moderate"] = {
		colorQuality = "EBBB02",
		colorVarQuality = "EBBB02"
	},
	["High"] = {
		colorQuality = "F27200",
		colorVarQuality = "F27200"
	}
}

function setGrassIndexOne(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenGrassShape1 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenGrassColor1 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setGrassIndexTwo(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenGrassShape2 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenGrassColor2 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setGrassIndexThree(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenGrassShape3 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenGrassColor3 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setGrassIndexFour(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenGrassShape4 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenGrassColor4 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setGrassIndexFive(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenGrassShape5 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenGrassColor5 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

--; ====================================================================================================

function setTreeIndexOne(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenTreeShape1 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenTreeColor1 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setTreeIndexTwo(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenTreeShape2 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenTreeColor2 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setTreeIndexThree(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenTreeShape3 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenTreeColor3 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setTreeIndexFour(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenTreeShape4 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenTreeColor4 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setTreeIndexFive(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenTreeShape5 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenTreeColor5 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

--; ====================================================================================================

function setRagweedIndexOne(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenRagweedShape1 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenRagweedColor1 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setRagweedIndexTwo(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenRagweedShape2 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenRagweedColor2 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setRagweedIndexThree(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenRagweedShape3 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenRagweedColor3 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setRagweedIndexFour(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenRagweedShape4 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenRagweedColor4 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setRagweedIndexFive(selectedQuality)
	SKIN:Bang('!SetOption MeterPollenRagweedShape5 FillColorExchange "Fill Color ' .. qualityPollen[selectedQuality]['colorQuality'] ..'"')
	SKIN:Bang('!WriteKeyValue Variables PollenRagweedColor5 "' .. qualityPollen[selectedQuality]['colorVarQuality'] ..'" "#@#Variables.inc"')
	
	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

--; ====================================================================================================

function scaleUpPollen()
	SKIN:Bang('!WriteKeyValue Variables PollenScale "(#PollenScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable PollenScale "(#PollenScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup PollenGroup')
	
end

function scaleDownPollen()
	SKIN:Bang('!WriteKeyValue Variables PollenScale "(#PollenScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #PollenScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable PollenScale "(#PollenScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #PollenScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')
	SKIN:Bang('!UpdateMeterGroup PollenGroup')

end

--; ====================================================================================================

function setToday()
	SKIN:Bang('!HideMeterGroup WeatherPollenTomorrowMeter')

	SKIN:Bang('!ShowMeterGroup WeatherPollenTodayMeter')
	SKIN:Bang('!SetOption MeterPollenTreeShape3 Y "(100*#PollenScale#)"')
	SKIN:Bang('!SetOption MeterPollenTreeDayPart3 Y "(100*#PollenScale#)"')
	SKIN:Bang('!SetOption MeterPollenGrassShape3 Y "(100*#PollenScale#)"')
	SKIN:Bang('!SetOption MeterPollenGrassDayPart3 Y "(100*#PollenScale#)"')
	SKIN:Bang('!SetOption MeterPollenRagweedShape3 Y "(100*#PollenScale#)"')
	SKIN:Bang('!SetOption MeterPollenRagweedDayPart3 Y "(100*#PollenScale#)"')

	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end

function setTonight()
	SKIN:Bang('!HideMeterGroup WeatherPollenTodayMeter')

	SKIN:Bang('!ShowMeterGroup WeatherPollenTomorrowMeter')
	SKIN:Bang('!ShowMeterGroup WeatherPollenTonightMeter')

	SKIN:Bang('!UpdateMeterGroup WeatherPollenMeter')

end
