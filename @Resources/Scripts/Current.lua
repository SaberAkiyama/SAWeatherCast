--; ==================================================
--; Lua Weather Current
--; ==================================================

function finishUserAgent()
	SKIN:Bang('!Log "Retrieving Current..."')

	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureCurrent')
	SKIN:Bang('!UnpauseMeasure MeasureCurrentWindDirection')
	SKIN:Bang('!HideMeterGroup WeatherCurrentMeter')
	SKIN:Bang('!UpdateMeasure MeasureCurrent')

end

function updateCurrent()
	SKIN:Bang('!UpdateMeasure MeasureCurrent')
	SKIN:Bang('!HideMeterGroup WeatherCurrentMeter')
	SKIN:Bang('!DisableMeasureGroup WeatherCurrentMeasure')
	SKIN:Bang('!EnableMeasure MeasureCurrentWindDirection')

end

function finishCurrent()
	SKIN:Bang('!Log "Current Retrieved"')

	SKIN:Bang('!ShowMeterGroup WeatherCurrentMeter')
	SKIN:Bang('!EnableMeasureGroup WeatherCurrentMeasure')

	SKIN:Bang('!UpdateMeter *')

end

function scaleUpCurrent()
	SKIN:Bang('!WriteKeyValue Variables CurrentScale "(#CurrentScale#+#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentScale "(#CurrentScale#+#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup CurrentGroup')
	
end

function scaleDownCurrent()
	SKIN:Bang('!WriteKeyValue Variables CurrentScale "(#CurrentScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentScale#-#ScrollMouseIncrement#)" "#@#Variables.inc"')
	SKIN:Bang('!SetVariable CurrentScale "(#CurrentScale#-#ScrollMouseIncrement# < 0.5 ? 0.5 : #CurrentScale#-#ScrollMouseIncrement#)" "#CoreScaleFilePath#"')

	SKIN:Bang('!UpdateMeterGroup CurrentGroup')

end

hoverSelect = {
	["Location"] = {
		measAction1 = "MeasureCity",
		measAction2 = "MeasureCountry",
		metText = "%1, %2"
	},
	["Valid"] = {
		measAction1 = "MeasureCurrentValidTime#CurrentTime#",
		measAction2 = "",
		metText = "Updated at %1"
	}
}	

function setHover(selectedText)
	SKIN:Bang('!SetOption MeterCurrentValidTimeLocation MeasureName "' .. hoverSelect[selectedText]['measAction1'] .. '"')
	SKIN:Bang('!SetOption MeterCurrentValidTimeLocation MeasureName2 "' .. hoverSelect[selectedText]['measAction2'] .. '"')
	SKIN:Bang('!SetOption MeterCurrentValidTimeLocation Text "' .. hoverSelect[selectedText]['metText'] .. '"')

	SKIN:Bang('!UpdateMeter MeterCurrentValidTimeLocation')
	
end
