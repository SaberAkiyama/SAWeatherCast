--; ============================================================
--; Lua Settings
--; ============================================================

function setAutoRefresh()
	SKIN:Bang('!FadeDuration "100"')
	SKIN:Bang('!Move "(#ScreenAreaWidth#/2)-640" "(#ScreenAreaHeight#/2)-320"')
	SKIN:Bang('!Draggable "0"')
	SKIN:Bang('!UpdateGroup WeatherSetting')

end

function setInfoPage()
	SKIN:Bang('!WriteKeyValue Variables Page "Info" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenLineInfo "0" "#@#Variables.inc"')

	SKIN:Bang('!RefreshGroup WeatherSetting')

end

function setSkinsPage()
	SKIN:Bang('!WriteKeyValue Variables Page "Skins" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenLineInfo "1" "#@#Variables.inc"')

	SKIN:Bang('!RefreshGroup WeatherSetting')

end

function setCoordinatesPage()
	SKIN:Bang('!WriteKeyValue Variables Page "Coordinates" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenLineInfo "1" "#@#Variables.inc"')

	SKIN:Bang('!RefreshGroup WeatherSetting')

end

function setLanguagePage()
	SKIN:Bang('!WriteKeyValue Variables Page "Language" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenLineInfo "1" "#@#Variables.inc"')
	SKIN:Bang('!RefreshGroup WeatherSetting')

end

--; ============================================================
--; Sliders
--; ============================================================

function setSliderRight()
    SKIN:Bang('!SetVariable W1 "(Clamp(#W1#-10,50,320))"')
    SKIN:Bang('!SetVariable TextAlpha "(Clamp(#TextAlpha#-10,0,255))"')
    SKIN:Bang('!SetVariable X1 "(Clamp(#X1#-10,0,135))"')

end

function setSliderLeft()
    SKIN:Bang('!SetVariable W1 "(Clamp(#W1#+10,50,320))"')
    SKIN:Bang('!SetVariable TextAlpha "(Clamp(#TextAlpha#+10,0,255))"')
    SKIN:Bang('!SetVariable X1 "(Clamp(#X1#+10,0,135))"')

end

function setSliderExpand()
    SKIN:Bang('!CommandMeasure MeasureSliders "Stop 1"')
    SKIN:Bang('!CommandMeasure MeasureSliders "Execute 2"')
    SKIN:Bang('!ShowMeter ShapeSliderCollapse')
    SKIN:Bang('!HideMeter ShapeSliderExpand')
    SKIN:Bang('!WriteKeyValue Variables TextAlpha "255" "#@#Measures\\Action Timer Settings.inc"')
    SKIN:Bang('!WriteKeyValue Variables W1 "320" "#@#Measures\\Action Timer Settings.inc"')
    SKIN:Bang('!WriteKeyValue Variables X1 "135" "#@#Measures\\Action Timer Settings.inc"')
    SKIN:Bang('!WriteKeyValue Variables StayExpand "1" "#@#Variables.inc"')
    SKIN:Bang('!WriteKeyValue Variables StayCollapse "0" "#@#Variables.inc"')

end

function setSliderCollapse()
    SKIN:Bang('!CommandMeasure MeasureSliders "Stop 2"')
    SKIN:Bang('!CommandMeasure MeasureSliders "Execute 1"')
    SKIN:Bang('!ShowMeter ShapeSliderExpand')
    SKIN:Bang('!HideMeter ShapeSliderCollapse')
    SKIN:Bang('!WriteKeyValue Variables TextAlpha "0" "#@#Measures\\Action Timer Settings.inc"')
    SKIN:Bang('!WriteKeyValue Variables W1 "50" "#@#Measures\\Action Timer Settings.inc"')
    SKIN:Bang('!WriteKeyValue Variables X1 "0" "#@#Measures\\Action Timer Settings.inc"')
    SKIN:Bang('!WriteKeyValue Variables StayExpand "0" "#@#Variables.inc"')
    SKIN:Bang('!WriteKeyValue Variables StayCollapse "1" "#@#Variables.inc"')

end

--; ============================================================

function closeSettings()
	SKIN:Bang('!DeactivateConfig "#ROOTCONFIG#" "Settings.ini"')
	SKIN:Bang('!WriteKeyValue Variables Page "Info" "#@#Variables.inc"')

end

--; ============================================================

hoverSelect = {
	["Over"] = {
		colorInfo = "0 | 0,0,0,1 ; 0.0 | 255,255,255,128 ; 1.0",
		colorSkins = "0 | 0,0,0,1 ; 0.0 | 255,255,255,128 ; 1.0",
		colorCoordinates = "0 | 0,0,0,1 ; 0.0 | 255,255,255,128 ; 1.0",
		ColorLanguage = "0 | 0,0,0,1 ; 0.0 | 255,255,255,128 ; 1.0",
		colorExit = "0 | 0,0,0,1 ; 0.0 | 255,0,0,128 ; 1.0"
	},
	["Leave"] = {
		colorInfo = "0 | 0,0,0,1 ; 0.0 | 0,0,0,1 ; 1.0",
		colorSkins = "0 | 0,0,0,1 ; 0.0 | 0,0,0,1 ; 1.0",
		colorCoordinates = "0 | 0,0,0,1 ; 0.0 | 0,0,0,1 ; 1.0",
		ColorLanguage = "0 | 0,0,0,1 ; 0.0 | 0,0,0,1 ; 1.0",
		colorExit = "0 | 0,0,0,1 ; 0.0 | 0,0,0,1 ; 1.0"
	}
}

function setSettingsInfo(selectedHover)
	SKIN:Bang('!SetOption ShapeInfo MyFillGradient "' .. hoverSelect[selectedHover]['colorInfo'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setSettingsSkins(selectedHover)
	SKIN:Bang('!SetOption ShapeSkin MyFillGradient "' .. hoverSelect[selectedHover]['colorSkins'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setSettingsCoordinates(selectedHover)
	SKIN:Bang('!SetOption ShapeCoordinates MyFillGradient "' .. hoverSelect[selectedHover]['colorCoordinates'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setSettingsLanguage(selectedHover)
	SKIN:Bang('!SetOption ShapeLanguage MyFillGradient "' .. hoverSelect[selectedHover]['ColorLanguage'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setSettingsExit(selectedHover)
	SKIN:Bang('!SetOption ShapeExit MyFillGradient "' .. hoverSelect[selectedHover]['colorExit'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end
