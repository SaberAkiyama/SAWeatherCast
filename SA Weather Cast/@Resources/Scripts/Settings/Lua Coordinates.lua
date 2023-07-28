--; ============================================================
--; Lua Weather
--; ============================================================

function setLatitudeCode()
	SKIN:Bang('!CommandMeasure MeterSkinInputCoordinate "ExecuteBatch 1"')

end

function setLongitudeCode()
	SKIN:Bang('!CommandMeasure MeterSkinInputCoordinate "ExecuteBatch 2"')

end

function setWeatherApply()
	SKIN:Bang('!RefreshGroup WeatherCast')

end

function setGoogleMapsLink()
	SKIN:Bang('https://www.google.com/maps')

end

function setGHWikiLink()
	SKIN:Bang('https://github.com/SaberAkiyama/SAWeatherCast/wiki/How-To:-Mark-your-location-with-Google-Maps')

end

--; ============================================================

hoverSelect = {
	["Over"] = {
		colorCode = "255,215,0",
		colorLatitude = "255,215,0",
		colorLongitude = "255,215,0",
		colorApply = "255,215,0",
		colorGHWiki = "255,215,0"
	},
	["Leave"] = {
		colorCode = "255,255,255",
		colorLatitude = "255,255,255",
		colorLongitude = "255,255,255",
		colorApply = "255,255,255",
		colorGHWiki = "255,255,255"
	}
}

function setWeatherCode(selectedHover)
	SKIN:Bang('!SetOption MeterCoordinatesActive FontColor "' .. hoverSelect[selectedHover]['colorCode'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setLatitudeInsert(selectedHover)
	SKIN:Bang('!SetOption MeterLatitudeActive FontColor "' .. hoverSelect[selectedHover]['colorLatitude'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setLongitudeInsert(selectedHover)
	SKIN:Bang('!SetOption MeterLongitudeActive FontColor "' .. hoverSelect[selectedHover]['colorLongitude'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setHoverWeatherApply(selectedHover)
	SKIN:Bang('!SetOption MeterApplyButton FontColor "' .. hoverSelect[selectedHover]['colorApply'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setHoverGHWiki(selectedHover)
	SKIN:Bang('!SetOption MeterGitHubWikiActive FontColor "' .. hoverSelect[selectedHover]['colorGHWiki'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end
