--; ==================================================
--; Lua Weather Update Connection
--; ==================================================

function netError()
	SKIN:Bang('!Log "Connect to internet and try again." Warning')
	SKIN:Bang('!PauseMeasure MeasureUserAgent')

end

function netConnect()
	SKIN:Bang('!Log "Connecting..." Notice')
	SKIN:Bang('!Log "Updating User Agent..." Notice')
	SKIN:Bang('!UnpauseMeasure MeasureUserAgent')
	SKIN:Bang('!UpdateMeasure MeasureUserAgent')

end

function errorNet()
	SKIN:Bang('!Log "No connection or timeout" Error')

end

function startWeather()
	SKIN:Bang('!Log "Awake!"')
	SKIN:Bang('!UpdateMeasure MeasureInternetConnectivity')
	
end
