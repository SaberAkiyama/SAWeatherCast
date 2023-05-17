--; ============================================================
--; Lua Skins
--; ============================================================

skinSelect = {
	["Typeface"] = {
		skinInsert = "ExecuteBatch 1"
	},
	["Color Code"] = {
		skinInsert = "ExecuteBatch 2"
	}
}

function setTypeface(selectedSkin)
	SKIN:Bang('!CommandMeasure MeterSkinInput "' .. skinSelect[selectedSkin]['skinInsert'] .. '"')

end

function setColorCode(selectedSkin)
	SKIN:Bang('!CommandMeasure MeterSkinInput "' .. skinSelect[selectedSkin]['skinInsert'] .. '"')

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
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setSkinColorText(selectedHover)
	SKIN:Bang('!SetOption MeterColorTextActive FontColor "' .. hoverSkinSelect[selectedHover]['colorText'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setSkinApply(selectedHover)
	SKIN:Bang('!SetOption MeterApplyButton FontColor "' .. hoverSkinSelect[selectedHover]['colorApply'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end
