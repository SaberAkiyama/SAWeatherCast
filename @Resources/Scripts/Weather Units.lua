--; ==================================================
--; Lua Weather Time
--; ==================================================

timeCurrentSelect = {
	["Current 12 Hours"] = {
		curTimeVar = "1",
		curTime = "12H"
	},
	["Current 24 Hours"] = {
		curTimeVar = "0",
		curTime = "24H"
	}
}

function setCurrentTime(selectedTime)
	SKIN:Bang('!SetVariable CurrentTime "' .. timeCurrentSelect[selectedTime]['curTime'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables CurrentTimeToggle "' .. timeCurrentSelect[selectedTime]['curTimeVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables CurrentTime "' .. timeCurrentSelect[selectedTime]['curTime'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables CurrentTime "' .. timeCurrentSelect[selectedTime]['curTime'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherCurrentMeter')
	SKIN:Bang('!UpdateMeter MeterCurrentValidTimeLocation')
	
end

--; ====================================================================================================

timeOneHourSelect = {
	["One Hour 12 Hours"] = {
		oneHourTimeVar = "1",
		oneHourTime = "12H"
	},
	["One Hour 24 Hours"] = {
		oneHourTimeVar = "0",
		oneHourTime = "24H"
	}
}

timeSixHourSelect = {
	["Six Hour 12 Hours"] = {
		sixHourTimeVar = "1",
		sixHourTime = "12H"
	},
	["Six Hour 24 Hours"] = {
		sixHourTimeVar = "0",
		sixHourTime = "24H"
	}
}

function setOneHourTime(selectedOHTime)
	SKIN:Bang('!SetVariable OneHourTime "' .. timeOneHourSelect[selectedOHTime]['oneHourTime'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables OneHourTimeToggle "' .. timeOneHourSelect[selectedOHTime]['oneHourTimeVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables OneHourTime "' .. timeOneHourSelect[selectedOHTime]['oneHourTime'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables OneHourTime "' .. timeOneHourSelect[selectedOHTime]['oneHourTime'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneHourMeter')

end

function setSixHourTime(selectedSHTime)
	SKIN:Bang('!SetVariable SixHourTime "' .. timeSixHourSelect[selectedSHTime]['sixHourTime'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables SixHourTimeToggle "' .. timeSixHourSelect[selectedSHTime]['sixHourTimeVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables SixHourTime "' .. timeSixHourSelect[selectedSHTime]['sixHourTime'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables SixHourTime "' .. timeSixHourSelect[selectedSHTime]['sixHourTime'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherSixHourMeter')

end

--; ====================================================================================================

timeOneDaySelect = {
	["One Day 12 Hours"] = {
		oneDayVar = "1",
		oneDayTime = "12H"
	},
	["One Day 24 Hours"] = {
		oneDayVar = "0",
		oneDayTime = "24H"
	}
}

timeOneDaySlimSelect = {
	["One Day Slim 12 Hours"] = {
		oneDaySlimVar = "1",
		oneDaySlimTime = "12H"
	},
	["One Day Slim 24 Hours"] = {
		oneDaySlimVar = "0",
		oneDaySlimTime = "24H"
	}
}

function setOneDayTime(selectedODTime)
	SKIN:Bang('!SetVariable OneDayTime "' .. timeOneDaySelect[selectedODTime]['oneDayTime'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables OneDayTimeToggle "' .. timeOneDaySelect[selectedODTime]['oneDayVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables OneDayTime "' .. timeOneDaySelect[selectedODTime]['oneDayTime'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables OneDayTime "' .. timeOneDaySelect[selectedODTime]['oneDayTime'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end

function setOneDaySlimTime(selectedODSTime)
	SKIN:Bang('!SetVariable OneDaySlimTime "' .. timeOneDaySlimSelect[selectedODSTime]['oneDaySlimTime'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables OneDaySlimTimeToggle "' .. timeOneDaySlimSelect[selectedODSTime]['oneDaySlimVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables OneDaySlimTime "' .. timeOneDaySlimSelect[selectedODSTime]['oneDaySlimTime'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables OneDaySlimTime "' .. timeOneDaySlimSelect[selectedODSTime]['oneDaySlimTime'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDaySlimMeter')

end
