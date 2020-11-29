--; ============================================================
--; Lua Settings
--; ============================================================

function setRefreshAction()
	SKIN:Bang('!FadeDuration "100"')
	SKIN:Bang('!Move (#ScreenAreaWidth#/2)-640 (#ScreenAreaHeight#/2)-320')
	SKIN:Bang('!Draggable "0"')

end

settingSelect = {
	["Info"] = {
		pageLine = "80"
	},
	["Skins"] = {
		pageLine = "130"
	},
	["Weather"] = {
		pageLine = "180"
	},
	["Language"] = {
		pageLine = "230"
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
		colorInfo = "255,215,0",
		colorSkins = "255,215,0",
		colorWeather = "255,215,0",
		colorApply = "255,215,0",
		colorClose = "225,65,105"
	},
	["Leave"] = {
		colorInfo = "255,255,255",
		colorSkins = "255,255,255",
		colorWeather = "255,255,255",
		colorApply = "255,255,255",
		colorClose = "255,255,255"
	}
}

function setSettingsInfo(selectedHover)
	SKIN:Bang('!SetOption Page1 FontColor "' .. hoverSelect[selectedHover]['colorInfo'] .. '"')
	SKIN:Bang('!Update')

end

function setSettingsSkins(selectedHover)
	SKIN:Bang('!SetOption Page2 FontColor "' .. hoverSelect[selectedHover]['colorSkins'] .. '"')
	SKIN:Bang('!Update')

end

function setSettingsWeather(selectedHover)
	SKIN:Bang('!SetOption Page3 FontColor "' .. hoverSelect[selectedHover]['colorWeather'] .. '"')
	SKIN:Bang('!Update')

end

function setSettingsLanguage(selectedHover)
	SKIN:Bang('!SetOption Page4 FontColor "' .. hoverSelect[selectedHover]['colorApply'] .. '"')
	SKIN:Bang('!Update')

end

function setSettingsClose(selectedHover)
	SKIN:Bang('!SetOption MeterCloseButton FontColor "' .. hoverSelect[selectedHover]['colorClose'] .. '"')
	SKIN:Bang('!Update')

end
