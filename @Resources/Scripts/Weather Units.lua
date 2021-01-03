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

timeFullHourSelect = {
	["Full 12 Hours"] = {
		fullHourTimeVar = "1",
		fullHourTime = "12H"
	},
	["Full 24 Hours"] = {
		fullHourTimeVar = "0",
		fullHourTime = "24H"
	}
}

function setOneHourTime(selectedOHTime)
	SKIN:Bang('!SetVariable OneHourTime "' .. timeOneHourSelect[selectedOHTime]['oneHourTime'] .. '"')
	SKIN:Bang('!WriteKeyValue Variables OneHourTimeToggle "' .. timeOneHourSelect[selectedOHTime]['oneHourTimeVar'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneHourTime "' .. timeOneHourSelect[selectedOHTime]['oneHourTime'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneHourTime "' .. timeOneHourSelect[selectedOHTime]['oneHourTime'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneHourMeter')

end

function setFullHourTime(selectedFHTime)
	SKIN:Bang('!SetVariable FullHourTime "' .. timeFullHourSelect[selectedFHTime]['fullHourTime'] .. '"')
	SKIN:Bang('!WriteKeyValue Variables FullHourTimeToggle "' .. timeFullHourSelect[selectedFHTime]['fullHourTimeVar'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables FullHourTime "' .. timeFullHourSelect[selectedFHTime]['fullHourTime'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables FullHourTime "' .. timeFullHourSelect[selectedFHTime]['fullHourTime'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherFullHourMeter')

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
