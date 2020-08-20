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
