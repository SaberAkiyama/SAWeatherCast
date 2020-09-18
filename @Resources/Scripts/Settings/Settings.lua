--; ============================================================
--; Lua Settings
--; ============================================================

settingSelect = {
	["Info"] = {
		pageLine = "80"
	},
	["Weather"] = {
		pageLine = "130"
	},
	["Language"] = {
		pageLine = "180"
	}
}

function setSettings(selectedSettings)
	SKIN:Bang('!WriteKeyValue Variables Page "' .. selectedSettings .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables PageLine "' .. settingSelect[selectedSettings]['pageLine'] .. '" "#@#Variables.inc"')
	
	SKIN:Bang('!Refresh')
	
end

function closeSettings()
	SKIN:Bang('!DeactivateConfig "#ROOTCONFIG#" "Settings.ini"')
	SKIN:Bang('!WriteKeyValue Variables Page "Info" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables PageLine "80" "#@#Variables.inc"')
	
end

--; ============================================================

hoverSelect = {
	["Over"] = {
		colorCode = "255,215,0",
		colorWeather = "255,215,0",
		colorApply = "255,215,0",
		colorClose = "225,65,105"
	},
	["Leave"] = {
		colorCode = "255,255,255",
		colorWeather = "255,255,255",
		colorApply = "255,255,255",
		colorClose = "255,255,255"
	}
}

function setSettingsInfo(selectedHover)
	SKIN:Bang('!SetOption Page1 FontColor "' .. hoverSelect[selectedHover]['colorCode'] .. '"')
	SKIN:Bang('!Update')

end

function setSettingsWeather(selectedHover)
	SKIN:Bang('!SetOption Page2 FontColor "' .. hoverSelect[selectedHover]['colorWeather'] .. '"')
	SKIN:Bang('!Update')

end

function setSettingsLanguage(selectedHover)
	SKIN:Bang('!SetOption Page3 FontColor "' .. hoverSelect[selectedHover]['colorApply'] .. '"')
	SKIN:Bang('!Update')

end

function setSettingsClose(selectedHover)
	SKIN:Bang('!SetOption MeterCloseButton FontColor "' .. hoverSelect[selectedHover]['colorClose'] .. '"')
	SKIN:Bang('!Update')

end
