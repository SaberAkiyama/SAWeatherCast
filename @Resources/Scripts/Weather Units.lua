--; ==================================================
--; Lua Weather Units
--; ==================================================

unitCurrentSelect = {
	["Current Imperial"] = {
		curVar = "1",
		curPressUnit = "Mb",
		curTempUnit = "F",
		curTime = "12H",
		curVisUnit = "Mi",
		curWindUnit = "Mph"
	},
	["Current Metrics"] = {
		curVar = "0",
		curPressUnit = "In",
		curTempUnit = "C",
		curTime = "24H",
		curVisUnit = "Km",
		curWindUnit = "Kmh"
	}
}

unitCurrentSlimSelect = {
	["Current Slim Imperial"] = {
		curSlimVar = "1",
		curSlimTempUnit = "F",
		curSlimVisUnit = "Mi",
		curSlimWindUnit = "Mph"
	},
	["Current Slim Metrics"] = {
		curSlimVar = "0",
		curSlimTempUnit = "C",
		curSlimVisUnit = "Km",
		curSlimWindUnit = "Kmh"
	}
}

unitCurrentExtraSlimSelect = {
	["Current Extra Slim Imperial"] = {
		curExtraSlimVar = "1",
		curExtraSlimTempUnit = "F"
	},
	["Current Extra Slim Metrics"] = {
		curExtraSlimVar = "0",
		curExtraSlimTempUnit = "C"
	}
}

function setCurrent(selectedUnits)
	SKIN:Bang('!SetVariable CurrentPress "' .. unitCurrentSelect[selectedUnits]['curPressUnit'] .. '"')
	SKIN:Bang('!SetVariable CurrentTemp "' .. unitCurrentSelect[selectedUnits]['curTempUnit'] .. '"')
	SKIN:Bang('!SetVariable CurrentTime "' .. unitCurrentSelect[selectedUnits]['curTime'] .. '"')
	SKIN:Bang('!SetVariable CurrentVis "' .. unitCurrentSelect[selectedUnits]['curVisUnit'] .. '"')
	SKIN:Bang('!SetVariable CurrentWind "' .. unitCurrentSelect[selectedUnits]['curWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables CurrentToggle "' .. unitCurrentSelect[selectedUnits]['curVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables CurrentPress "' .. unitCurrentSelect[selectedUnits]['curPressUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentTemp "' .. unitCurrentSelect[selectedUnits]['curTempUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentTime "' .. unitCurrentSelect[selectedUnits]['curTime'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentVis "' .. unitCurrentSelect[selectedUnits]['curVisUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentWind "' .. unitCurrentSelect[selectedUnits]['curWindUnit'] .. '" "#CoreFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables CurrentPress "' .. unitCurrentSelect[selectedUnits]['curPressUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentTemp "' .. unitCurrentSelect[selectedUnits]['curTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentTime "' .. unitCurrentSelect[selectedUnits]['curTime'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentVis "' .. unitCurrentSelect[selectedUnits]['curVisUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentWind "' .. unitCurrentSelect[selectedUnits]['curWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherCurrentMeter')
	
end

function setCurrentSlim(selectedSUnits)
	SKIN:Bang('!SetVariable CurrentSlimTemp "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimTempUnit'] .. '"')
	SKIN:Bang('!SetVariable CurrentSlimVis "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimVisUnit'] .. '"')
	SKIN:Bang('!SetVariable CurrentSlimWind "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables CurrentSlimToggle "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables CurrentSlimTemp "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimTempUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimVis "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimVisUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimWind "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimWindUnit'] .. '" "#CoreFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables CurrentSlimTemp "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimVis "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimVisUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimWind "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherCurrentSlimMeter')

end

function setCurrentExtraSlim(selectedESUnits)
	SKIN:Bang('!SetVariable CurrentExtraSlimTemp "' .. unitCurrentExtraSlimSelect[selectedESUnits]['curExtraSlimTempUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimToggle "' .. unitCurrentExtraSlimSelect[selectedESUnits]['curExtraSlimVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimTemp "' .. unitCurrentExtraSlimSelect[selectedESUnits]['curExtraSlimTempUnit'] .. '" "#CoreFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimTemp "' .. unitCurrentExtraSlimSelect[selectedESUnits]['curExtraSlimTempUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherCurrentExtraSlimMeter')

end

--; ====================================================================================================

unitOneHourSelect = {
	["One Hour Imperial"] = {
		oneHourVar = "1",
		oneHourTimeUnit = "12H",
		oneHourTempUnit = "F",
		oneHourWindUnit = "Mph"
	},
	["One Hour Metrics"] = {
		oneHourVar = "0",
		oneHourTimeUnit = "24H",
		oneHourTempUnit = "C",
		oneHourWindUnit = "Kmh"
	}
}

unitSixHourSelect = {
	["Six Hour Imperial"] = {
		sixHourVar = "1",
		sixHourTimeUnit = "12H",
		sixHourTempUnit = "F",
		sixHourWindUnit = "Mph"
	},
	["Six Hour Metrics"] = {
		sixHourVar = "0",
		sixHourTimeUnit = "24H",
		sixHourTempUnit = "C",
		sixHourWindUnit = "Kmh"
	}
}

function setOneHour(selectedOHUnits)
	SKIN:Bang('!SetVariable OneHourTime "' .. unitOneHourSelect[selectedOHUnits]['oneHourTimeUnit'] .. '"')
	SKIN:Bang('!SetVariable OneHourTemp "' .. unitOneHourSelect[selectedOHUnits]['oneHourTempUnit'] .. '"')
	SKIN:Bang('!SetVariable OneHourWind "' .. unitOneHourSelect[selectedOHUnits]['oneHourWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables OneHourTime "' .. unitOneHourSelect[selectedOHUnits]['oneHourTimeUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneHourTemp "' .. unitOneHourSelect[selectedOHUnits]['oneHourTempUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneHourWind "' .. unitOneHourSelect[selectedOHUnits]['oneHourWindUnit'] .. '" "#CoreFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables OneHourTime "' .. unitOneHourSelect[selectedOHUnits]['oneHourTimeUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneHourTemp "' .. unitOneHourSelect[selectedOHUnits]['oneHourTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneHourWind "' .. unitOneHourSelect[selectedOHUnits]['oneHourWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneHourMeter')

end

function setSixHour(selectedSHUnits)
	SKIN:Bang('!SetVariable SixHourTime "' .. unitSixHourSelect[selectedSHUnits]['sixHourTimeUnit'] .. '"')
	SKIN:Bang('!SetVariable SixHourTemp "' .. unitSixHourSelect[selectedSHUnits]['sixHourTempUnit'] .. '"')
	SKIN:Bang('!SetVariable SixHourWind "' .. unitSixHourSelect[selectedSHUnits]['sixHourWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables SixHourTime "' .. unitSixHourSelect[selectedSHUnits]['sixHourTimeUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables SixHourTemp "' .. unitSixHourSelect[selectedSHUnits]['sixHourTempUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables SixHourWind "' .. unitSixHourSelect[selectedSHUnits]['sixHourWindUnit'] .. '" "#CoreFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables SixHourTime "' .. unitSixHourSelect[selectedSHUnits]['sixHourTimeUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables SixHourTemp "' .. unitSixHourSelect[selectedSHUnits]['sixHourTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables SixHourWind "' .. unitSixHourSelect[selectedSHUnits]['sixHourWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherSixHourMeter')

end	

--; ====================================================================================================

unitOneDaySelect = {
	["One Day Imperial"] = {
		oneDayVar = "1",
		oneDayTempUnit = "F",
		oneDayWindUnit = "Mph",
		oneDayTime = "12H"
	},
	["One Day Metrics"] = {
		oneDayVar = "0",
		oneDayTempUnit = "C",
		oneDayWindUnit = "Kmh",
		oneDayTime = "24H"
	}
}

unitOneDaySlimSelect = {
	["One Day Slim Imperial"] = {
		oneDaySlimVar = "1",
		oneDaySlimTempUnit = "F",
		oneDaySlimWindUnit = "Mph",
		oneDaySlimTime = "12H"
	},
	["One Day Slim Metrics"] = {
		oneDaySlimVar = "0",
		oneDaySlimTempUnit = "C",
		oneDaySlimWindUnit = "Kmh",
		oneDaySlimTime = "24H"
	}
}

unitSevenDaySelect = {
	["Seven Day Imperial"] = {
		sevenDayVar = "1",
		sevenDayTempUnit = "F",
		sevenDayWindUnit = "Mph"
	},
	["Seven Day Metrics"] = {
		sevenDayVar = "0",
		sevenDayTempUnit = "C",
		sevenDayWindUnit = "Kmh"
	}
}

function setOneDay(selectedODUnits)
	SKIN:Bang('!SetVariable OneDayTime "' .. unitOneDaySelect[selectedODUnits]['oneDayTime'] .. '"')
	SKIN:Bang('!SetVariable OneDayTemp "' .. unitOneDaySelect[selectedODUnits]['oneDayTempUnit'] .. '"')
	SKIN:Bang('!SetVariable OneDayWind "' .. unitOneDaySelect[selectedODUnits]['oneDayWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables OneDayToggle "' .. unitOneDaySelect[selectedODUnits]['oneDayVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables OneDayTime "' .. unitOneDaySelect[selectedODUnits]['oneDayTime'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneDayTemp "' .. unitOneDaySelect[selectedODUnits]['oneDayTempUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneDayWind "' .. unitOneDaySelect[selectedODUnits]['oneDayWindUnit'] .. '" "#CoreFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables OneDayTime "' .. unitOneDaySelect[selectedODUnits]['oneDayTime'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneDayTemp "' .. unitOneDaySelect[selectedODUnits]['oneDayTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneDayWind "' .. unitOneDaySelect[selectedODUnits]['oneDayWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end

function setOneDaySlim(selectedODSUnits)
	SKIN:Bang('!SetVariable OneDaySlimTime "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimTime'] .. '"')
	SKIN:Bang('!SetVariable OneDaySlimTemp "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimTempUnit'] .. '"')
	SKIN:Bang('!SetVariable OneDaySlimWind "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables OneDaySlimToggle "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables OneDaySlimTime "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimTime'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimTemp "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimTempUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimWind "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimWindUnit'] .. '" "#CoreFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables OneDaySlimTime "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimTime'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimTemp "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimWind "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDaySlimMeter')

end

function setSevenDay(selectedSDUnits)
	SKIN:Bang('!SetVariable SevenDayTemp "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayTempUnit'] .. '"')
	SKIN:Bang('!SetVariable SevenDayWind "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables SevenDayToggle "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables SevenDayTemp "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayTempUnit'] .. '" "#CoreFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables SevenDayWind "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayWindUnit'] .. '" "#CoreFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables SevenDayTemp "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables SevenDayWind "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherSevenDayMeter')

end
