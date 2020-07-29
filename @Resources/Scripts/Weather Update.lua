--; ==================================================
--; Lua Weather Update Connection
--; ==================================================

connSelect = {
	["No Internet"] = {
		connAction = "Connect to internet and try again."
	},
	["Internet"] = {
		connAction = "Try again in a couple seconds."
	}
}

function connInternet(selectedConnect)
	SKIN:Bang('!Log "' .. connSelect[selectedConnect]['connAction'] .. '" Error')

end

function errorNet()
	SKIN:Bang('!Log "No connection or timeout" Error')

end

function startWeather()
	SKIN:Bang('!Log "Awake!"')
	SKIN:Bang('!UpdateMeasure MeasureInternetConnectivity')
	
end
