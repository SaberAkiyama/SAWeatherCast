--; ==================================================
--; Lua Weather Units
--; ==================================================

unitCurrentSelect = {
	["Current Imperial"] = {
		curVar = "1",
		curPressUnit = "Mb",
		curTempUnit = "F",
		curVisUnit = "Mi",
		curWindUnit = "Mph"
	},
	["Current Metrics"] = {
		curVar = "0",
		curPressUnit = "In",
		curTempUnit = "C",
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
	SKIN:Bang('!SetVariable CurrentVis "' .. unitCurrentSelect[selectedUnits]['curVisUnit'] .. '"')
	SKIN:Bang('!SetVariable CurrentWind "' .. unitCurrentSelect[selectedUnits]['curWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables CurrentToggle "' .. unitCurrentSelect[selectedUnits]['curVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables CurrentPress "' .. unitCurrentSelect[selectedUnits]['curPressUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentTemp "' .. unitCurrentSelect[selectedUnits]['curTempUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentVis "' .. unitCurrentSelect[selectedUnits]['curVisUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentWind "' .. unitCurrentSelect[selectedUnits]['curWindUnit'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables CurrentPress "' .. unitCurrentSelect[selectedUnits]['curPressUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentTemp "' .. unitCurrentSelect[selectedUnits]['curTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentVis "' .. unitCurrentSelect[selectedUnits]['curVisUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentWind "' .. unitCurrentSelect[selectedUnits]['curWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherCurrentMeter')
	
end

function setCurrentSlim(selectedSUnits)
	SKIN:Bang('!SetVariable CurrentSlimTemp "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimTempUnit'] .. '"')
	SKIN:Bang('!SetVariable CurrentSlimVis "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimVisUnit'] .. '"')
	SKIN:Bang('!SetVariable CurrentSlimWind "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables CurrentSlimToggle "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables CurrentSlimTemp "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimTempUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimVis "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimVisUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimWind "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimWindUnit'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables CurrentSlimTemp "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimVis "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimVisUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables CurrentSlimWind "' .. unitCurrentSlimSelect[selectedSUnits]['curSlimWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherCurrentSlimMeter')

end

function setCurrentExtraSlim(selectedESUnits)
	SKIN:Bang('!SetVariable CurrentExtraSlimTemp "' .. unitCurrentExtraSlimSelect[selectedESUnits]['curExtraSlimTempUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimToggle "' .. unitCurrentExtraSlimSelect[selectedESUnits]['curExtraSlimVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimTemp "' .. unitCurrentExtraSlimSelect[selectedESUnits]['curExtraSlimTempUnit'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables CurrentExtraSlimTemp "' .. unitCurrentExtraSlimSelect[selectedESUnits]['curExtraSlimTempUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherCurrentExtraSlimMeter')

end

--; ====================================================================================================

unitOneHourSelect = {
	["One Hour Imperial"] = {
		oneHourVar = "1",
		oneHourTempUnit = "F",
		oneHourWindUnit = "Mph"
	},
	["One Hour Metrics"] = {
		oneHourVar = "0",
		oneHourTempUnit = "C",
		oneHourWindUnit = "Kmh"
	}
}

unitSixHourSelect = {
	["Six Hour Imperial"] = {
		sixHourVar = "1",
		sixHourTempUnit = "F",
		sixHourWindUnit = "Mph"
	},
	["Six Hour Metrics"] = {
		sixHourVar = "0",
		sixHourTempUnit = "C",
		sixHourWindUnit = "Kmh"
	}
}

function setOneHour(selectedOHUnits)
	SKIN:Bang('!SetVariable OneHourTemp "' .. unitOneHourSelect[selectedOHUnits]['oneHourTempUnit'] .. '"')
	SKIN:Bang('!SetVariable OneHourWind "' .. unitOneHourSelect[selectedOHUnits]['oneHourWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables OneHourToggle "' .. unitOneHourSelect[selectedOHUnits]['oneHourVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables OneHourTemp "' .. unitOneHourSelect[selectedOHUnits]['oneHourTempUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneHourWind "' .. unitOneHourSelect[selectedOHUnits]['oneHourWindUnit'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables OneHourTemp "' .. unitOneHourSelect[selectedOHUnits]['oneHourTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneHourWind "' .. unitOneHourSelect[selectedOHUnits]['oneHourWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneHourMeter')

end

function setSixHour(selectedSHUnits)
	SKIN:Bang('!SetVariable SixHourTemp "' .. unitSixHourSelect[selectedSHUnits]['sixHourTempUnit'] .. '"')
	SKIN:Bang('!SetVariable SixHourWind "' .. unitSixHourSelect[selectedSHUnits]['sixHourWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables SixHourToggle "' .. unitSixHourSelect[selectedSHUnits]['sixHourVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables SixHourTemp "' .. unitSixHourSelect[selectedSHUnits]['sixHourTempUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables SixHourWind "' .. unitSixHourSelect[selectedSHUnits]['sixHourWindUnit'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables SixHourTemp "' .. unitSixHourSelect[selectedSHUnits]['sixHourTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables SixHourWind "' .. unitSixHourSelect[selectedSHUnits]['sixHourWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherSixHourMeter')

end	

--; ====================================================================================================

unitOneDaySelect = {
	["One Day Imperial"] = {
		oneDayVar = "1",
		oneDayTempUnit = "F",
		oneDayWindUnit = "Mph"
	},
	["One Day Metrics"] = {
		oneDayVar = "0",
		oneDayTempUnit = "C",
		oneDayWindUnit = "Kmh"
	}
}

unitOneDaySlimSelect = {
	["One Day Slim Imperial"] = {
		oneDaySlimVar = "1",
		oneDaySlimTempUnit = "F",
		oneDaySlimWindUnit = "Mph"
	},
	["One Day Slim Metrics"] = {
		oneDaySlimVar = "0",
		oneDaySlimTempUnit = "C",
		oneDaySlimWindUnit = "Kmh"
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
	SKIN:Bang('!SetVariable OneDayTemp "' .. unitOneDaySelect[selectedODUnits]['oneDayTempUnit'] .. '"')
	SKIN:Bang('!SetVariable OneDayWind "' .. unitOneDaySelect[selectedODUnits]['oneDayWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables OneDayToggle "' .. unitOneDaySelect[selectedODUnits]['oneDayVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables OneDayTemp "' .. unitOneDaySelect[selectedODUnits]['oneDayTempUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneDayWind "' .. unitOneDaySelect[selectedODUnits]['oneDayWindUnit'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables OneDayTemp "' .. unitOneDaySelect[selectedODUnits]['oneDayTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneDayWind "' .. unitOneDaySelect[selectedODUnits]['oneDayWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDayMeter')

end

function setOneDaySlim(selectedODSUnits)
	SKIN:Bang('!SetVariable OneDaySlimTemp "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimTempUnit'] .. '"')
	SKIN:Bang('!SetVariable OneDaySlimWind "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables OneDaySlimToggle "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables OneDaySlimTemp "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimTempUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimWind "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimWindUnit'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables OneDaySlimTemp "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables OneDaySlimWind "' .. unitOneDaySlimSelect[selectedODSUnits]['oneDaySlimWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherOneDaySlimMeter')

end

function setSevenDay(selectedSDUnits)
	SKIN:Bang('!SetVariable SevenDayTemp "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayTempUnit'] .. '"')
	SKIN:Bang('!SetVariable SevenDayWind "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayWindUnit'] .. '"')

	SKIN:Bang('!WriteKeyValue Variables SevenDayToggle "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayVar'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!WriteKeyValue Variables SevenDayTemp "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayTempUnit'] .. '" "#CoreUnitFilePath#"')
	SKIN:Bang('!WriteKeyValue Variables SevenDayWind "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayWindUnit'] .. '" "#CoreUnitFilePath#"')

	SKIN:Bang('!WriteKeyValue Variables SevenDayTemp "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayTempUnit'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables SevenDayWind "' .. unitSevenDaySelect[selectedSDUnits]['sevenDayWindUnit'] .. '" "#@#Variables.inc"')

	SKIN:Bang('!UpdateMeterGroup WeatherSevenDayMeter')

end

--; ====================================================================================================
--; ====================================================================================================

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
