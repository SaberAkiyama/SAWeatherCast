--; ==================================================
--; Lua Weather Update Connection
--; ==================================================

function netError()
	SKIN:Bang('!Log "#RetryText#" Warning')
	SKIN:Bang('!PauseMeasure MeasureUserAgent')

end

function netConnect()
	SKIN:Bang('!Log "#NoticeText1#" Notice')
	SKIN:Bang('!Log "#NoticeText2#" Notice')
	SKIN:Bang('!UnpauseMeasure MeasureUserAgent')
	SKIN:Bang('!UpdateMeasure MeasureUserAgent')

end

function errorNet()
	SKIN:Bang('!Log "#ErrorText#" Error')

end

function startWeather()
	SKIN:Bang('!Log "#AwakeText#"')
	SKIN:Bang('!UpdateMeasure MeasureInternetConnectivity')
	
end
