--; ==================================================
--; Lua Weather Update Connection
--; ==================================================

function netErrorDaily()
	SKIN:Bang('!Log "#RetryText#" Warning')
	SKIN:Bang('!ShowMeter MeterWeatherRetrieve')
	SKIN:Bang('!HideMeterGroup WeatherCurrentMeter')
	SKIN:Bang('!HideMeterGroup WeatherCurrentSlimMeter')
	SKIN:Bang('!HideMeterGroup WeatherCurrentExtraSlimMeter')
	SKIN:Bang('!HideMeterGroup WeatherCurrentSuperSlimMeter')
	SKIN:Bang('!HideMeterGroup WeatherSeverityAlertMeter')
	SKIN:Bang('!HideMeterGroup WeatherOneHourMeter')
	SKIN:Bang('!HideMeterGroup WeatherSixHourMeter')

	SKIN:Bang('!PauseMeasure MeasureWeatherCore')
	SKIN:Bang('!DisableMeasure MeasureWeatherCore')
	SKIN:Bang('!PauseMeasure MeasureAirQualityCore')
	SKIN:Bang('!DisableMeasure MeasureAirQualityCore')
	SKIN:Bang('!PauseMeasure MeasureAQUnitsCore')
	SKIN:Bang('!DisableMeasure MeasureAQUnitsCore')
	SKIN:Bang('!PauseMeasure MeasureDetailsCore')
	SKIN:Bang('!DisableMeasure MeasureDetailsCore')

end

function netErrorTenDay()
	SKIN:Bang('!Log "#RetryText#" Warning')
	SKIN:Bang('!ShowMeter MeterWeatherRetrieveDaily')
	SKIN:Bang('!HideMeterGroup WeatherOneDayMeter')
	SKIN:Bang('!HideMeterGroup WeatherOneDaySlimMeter')
	SKIN:Bang('!HideMeterGroup WeatherSevenDayMeter')

	SKIN:Bang('!PauseMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!DisableMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!PauseMeasure MeasureDetailsCore')
	SKIN:Bang('!DisableMeasure MeasureDetailsCore')

end

function netConnectDaily()
	SKIN:Bang('!Log "#NoticeText#" Notice')
	SKIN:Bang('!Log "#RetrievingCurrentText#"')
	SKIN:Bang('!EnableMeasure MeasureWeatherCore')
	SKIN:Bang('!EnableMeasure MeasureAirQualityCore')
	SKIN:Bang('!EnableMeasure MeasureAQUnitsCore')
	SKIN:Bang('!EnableMeasure MeasureDetailsCore')

	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentSlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherCurrentExtraSlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherOneHourMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherSixHourMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherAirQualityMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherSeverityMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherCore')
	SKIN:Bang('!UnpauseMeasure MeasureAirQualityCore')
	SKIN:Bang('!UpdateMeasure MeasureAirQualityCore')
	SKIN:Bang('!UnpauseMeasure MeasureAQUnitsCore')
	SKIN:Bang('!UpdateMeasure MeasureAQUnitsCore')
	SKIN:Bang('!UnpauseMeasure MeasureDetailsCore')
	SKIN:Bang('!UpdateMeasure MeasureDetailsCore')

end

function netConnectTenDay()
	SKIN:Bang('!Log "#NoticeText#" Notice')
	SKIN:Bang('!Log "#RetrievingTendayText#"')
	SKIN:Bang('!EnableMeasure MeasureWeatherTendayCore')

	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDayMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherOneDaySlimMeasure')
	SKIN:Bang('!UnpauseMeasureGroup WeatherSevenDayMeasure')
	SKIN:Bang('!UnpauseMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!UpdateMeasure MeasureWeatherTendayCore')
	SKIN:Bang('!UnpauseMeasure MeasureDetailsCore')
	SKIN:Bang('!UpdateMeasure MeasureDetailsCore')

end

function errorNet()
	SKIN:Bang('!Log "#ErrorText#" Error')

end

function startWeather()
	SKIN:Bang('!Log "#AwakeText#"')
	SKIN:Bang('!UpdateMeasure MeasureInternetConnectivity')
	
end
