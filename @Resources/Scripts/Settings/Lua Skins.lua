--; ============================================================
--; Lua Skins
--; ============================================================

skinTypeface = {
	["Typeface"] = {
		skinInsert = "ExecuteBatch 1"
	}
}

skinColorPreset = {
    ["Black"] = {
        skinPreset = "0,0,0"
    },
    ["White"] = {
        skinPreset = "255,255,255"
    }
}

function setColorPreset(selectedPreset)
    SKIN:Bang('!WriteKeyValue Variables ColorText "' .. selectedPreset .. '" "#@#Variables.inc"')
    SKIN:Bang('!WriteKeyValue Variables ColorCode "' .. skinColorPreset[selectedPreset]['skinPreset'] .. '" "#@#Variables.inc"')

    SKIN:Bang('!RefreshGroup WeatherSetting')
end

function setTypeface(selectedTypeface)
	SKIN:Bang('!CommandMeasure MeterSkinInputTypeface "' .. skinTypeface[selectedTypeface]['skinInsert'] .. '"')

end

function setColor(selectedColor)
	SKIN:Bang('!ActivateConfig "#ROOTCONFIG#\\Context" "Set Color Preset.ini"')

end

function setApply()
	SKIN:Bang('!RefreshGroup WeatherCast')

end

--; ============================================================

hoverSkinSelect = {
	["Over"] = {
		colorTypeface = "255,215,0",
		colorText = "255,215,0",
		colorApply = "255,215,0"
	},
	["Leave"] = {
		colorTypeface = "255,255,255",
		colorText = "255,255,255",
		colorApply = "255,255,255"
	}
}

function setSkinTypeFace(selectedHover)
	SKIN:Bang('!SetOption MeterTypeFaceActive FontColor "' .. hoverSkinSelect[selectedHover]['colorTypeface'] .. '"')
	SKIN:Bang('!Update')

end

function setSkinColorText(selectedHover)
	SKIN:Bang('!SetOption MeterColorTextActive FontColor "' .. hoverSkinSelect[selectedHover]['colorText'] .. '"')
	SKIN:Bang('!Update')

end

function setSkinApply(selectedHover)
	SKIN:Bang('!SetOption MeterApplyButton FontColor "' .. hoverSkinSelect[selectedHover]['colorApply'] .. '"')
	SKIN:Bang('!Update')

end
