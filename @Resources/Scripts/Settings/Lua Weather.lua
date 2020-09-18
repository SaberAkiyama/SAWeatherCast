--; ============================================================
--; Lua Weather
--; ============================================================

function setWeatherInput()
	SKIN:Bang('!CommandMeasure MeterSkinInputWeather "ExecuteBatch 1"')
	
end

function setWeatherApply()
	SKIN:Bang('!RefreshGroup WeatherCast')

end

function openLocation()
	SKIN:Bang('https://weather.codes')

end

--; ============================================================

hoverSelect = {
	["Over"] = {
		colorCode = "255,215,0",
		colorWeather = "255,215,0",
		colorApply = "255,215,0"
	},
	["Leave"] = {
		colorCode = "255,255,255",
		colorWeather = "255,255,255",
		colorApply = "255,255,255"
	}
}

function setWeatherCode(selectedHover)
	SKIN:Bang('!SetOption MeterWeatherActive FontColor "' .. hoverSelect[selectedHover]['colorCode'] .. '"')
	SKIN:Bang('!Update')

end

function setWeatherInsert(selectedHover)
	SKIN:Bang('!SetOption MeterLocationActive FontColor "' .. hoverSelect[selectedHover]['colorWeather'] .. '"')
	SKIN:Bang('!Update')

end

function setWeatherApply(selectedHover)
	SKIN:Bang('!SetOption MeterApplyButton FontColor "' .. hoverSelect[selectedHover]['colorApply'] .. '"')
	SKIN:Bang('!Update')

end
