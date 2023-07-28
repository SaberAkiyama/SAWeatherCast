--; ============================================================
--; Lua Info
--; ============================================================

function setInfoUpdateOn()
	SKIN:Bang('!WriteKeyValue Variables TextUpdate "Update has disabled" "#@#Measures\\Parser Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables ToggleUpdate "Off" "#@#Measures\\Parser Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables DisableUpdate "1" "#@#Measures\\Parser Variables.inc"')
    SKIN:Bang('!WriteKeyValue Variables SetUpdateDivider "-1" "Settings.ini"')
	SKIN:Bang('!RefreshGroup WeatherSetting')

end

function setInfoUpdateOff()
	SKIN:Bang('!WriteKeyValue Variables TextUpdate "Updating..." "#@#Measures\\Parser Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables ToggleUpdate "On" "#@#Measures\\Parser Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables DisableUpdate "0" "#@#Measures\\Parser Variables.inc"')
    SKIN:Bang('!WriteKeyValue Variables SetUpdateDivider "1" "Settings.ini"')
	SKIN:Bang('!RefreshGroup WeatherSetting')

end

function errorConnect()
	SKIN:Bang('!PauseMeasure MeasureParserCore')
	SKIN:Bang('!DisableMeasure MeasureLatestVersion')
	SKIN:Bang('!HideMeter MeterUpdate')
	SKIN:Bang('!ShowMeter MeterUpdatePost1')
	SKIN:Bang('!HideMeter MeterUpdatePost2')
	SKIN:Bang('!HideMeter MeterUpdatePost3')
	SKIN:Bang('!UpdateMeter MeterUpdate')

end

function refreshConnect()
	SKIN:Bang('!UnpauseMeasure MeasureParserCore')
	SKIN:Bang('!UnpauseMeasure MeasureCurrentVersion')
	SKIN:Bang('!UnpauseMeasure MeasureLatestVersion')
	SKIN:Bang('!ShowMeter MeterUpdate')
	SKIN:Bang('!HideMeter MeterUpdatePost1')
	SKIN:Bang('!HideMeter MeterUpdatePost2')
	SKIN:Bang('!HideMeter MeterUpdatePost3')
	SKIN:Bang('!UpdateMeter MeterUpdate')
	SKIN:Bang('!UpdateMeasure MeasureParserCore')

end

function coreParser()
	SKIN:Bang('!PauseMeasure MeasureParserCore')
	SKIN:Bang('!PauseMeasure MeasureCurrentVersion')
	SKIN:Bang('!EnableMeasure MeasureLatestVersion')

end

function matchVersion()
	SKIN:Bang('!HideMeter MeterUpdate')
	SKIN:Bang('!ShowMeter MeterUpdatePost2')
	SKIN:Bang('!PauseMeasure MeasureLatestVersion')
	SKIN:Bang('!WriteKeyValue Variables LatestVersion [MeasureLatestVersion] "#@#Measures\\Parser Variables.inc"')
	SKIN:Bang('!UpdateMeter MeterUpdate')

end

function notMatchVersion()
	SKIN:Bang('!HideMeter MeterUpdate')
	SKIN:Bang('!ShowMeter MeterUpdatePost3')
	SKIN:Bang('!PauseMeasure MeasureLatestVersion')
	SKIN:Bang('!WriteKeyValue Variables LatestVersion [MeasureLatestVersion] "#@#Measures\\Parser Variables.inc"')
	SKIN:Bang('!UpdateMeter MeterUpdate')

end

--; ============================================================
--; ============================================================

infoSelect = {
	["DeviantArt"] = {
		infoLink = "https://deviantart.com/saberakiyama/"
	},
	["GitHub"] = {
		infoLink = "https://github.com/SaberAkiyama/"
	},
	["Update Avaiable"] = {
		infoLink = "https://github.com/SaberAkiyama/SAWeatherCast/releases/latest"
	},
	["Creative Commons"] = {
		infoLink = "https://creativecommons.org/licenses/by-nc-sa/4.0"
	},
	["Credit1"] = {
		infoLink = "https://fonts.google.com/specimen/Merienda"
	},
	["Credit2"] = {
		infoLink = "https://www.behance.net/gallery/37133365/TT-Squares-Condensed"
	},
	["Credit3"] = {
		infoLink = "https://fonts.google.com/specimen/Roboto"
	},
	["Credit4"] = {
		infoLink = "https://forum.rainmeter.net/viewtopic.php?f=18&t=23106"
	},
	["Credit5"] = {
		infoLink = "https://forum.rainmeter.net/viewtopic.php?f=141&t=25334"
	},
	["Credit6"] = {
		infoLink = "https://www.lua.org/"
	},
	["Credit7"] = {
		infoLink = "https://github.com/orgs/rainmeter/people"
	}
}

function setInfo(selectedInfo)
	SKIN:Bang('' .. infoSelect[selectedInfo]['infoLink'] .. '')

end

function setDiscord()
	SKIN:Bang('!WriteKeyValue Variables Page "Discord" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenLineInfo "1" "#@#Variables.inc"')
	SKIN:Bang('!RefreshGroup WeatherSetting')

end

function setDiscordLink()
	SKIN:Bang('"https://discord.gg/mQ2BTwK9jD"')
	SKIN:Bang('!WriteKeyValue Variables Page "Info" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenLineInfo "0" "#@#Variables.inc"')
	SKIN:Bang('!RefreshGroup WeatherSetting')

end

--; ============================================================

hoverInfoSelect = {
	["Over"] = {
		colorDeviantArt = "255,215,0",
		colorDiscord = "255,215,0",
		colorDiscordLink = "255,215,0",
		colorGitHub = "255,215,0",
		colorCC = "255,215,0",
		colorUpdate = "255,215,0",
		colorUpdateToggle = "255,215,0",
		colorCred1 = "255,215,0",
		colorCred2 = "255,215,0",
		colorCred3 = "255,215,0",
		colorCred4 = "255,215,0",
		colorCred5 = "255,215,0",
		colorCred6 = "255,215,0",
		colorCred7 = "255,215,0"
	},
	["Leave"] = {
		colorDeviantArt = "255,255,255",
		colorDiscord = "255,255,255",
		colorDiscordLink = "255,255,255",
		colorGitHub = "255,255,255",
		colorCC = "255,255,255",
		colorUpdate = "255,255,255",
		colorUpdateToggle = "255,255,255",
		colorCred1 = "255,255,255",
		colorCred2 = "255,255,255",
		colorCred3 = "255,255,255",
		colorCred4 = "255,255,255",
		colorCred5 = "255,255,255",
		colorCred6 = "255,255,255",
		colorCred7 = "255,255,255"
	}
}

function setInfoDeviantArt(selectedHover)
	SKIN:Bang('!SetOption ShapeDeviantArtActive MyFillColor "Fill Color ' .. hoverInfoSelect[selectedHover]['colorDeviantArt'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoDiscord(selectedHover)
	SKIN:Bang('!SetOption ShapeDiscordActive MyFillColor "Fill Color ' .. hoverInfoSelect[selectedHover]['colorDiscord'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoDiscordLink(selectedHover)
	SKIN:Bang('!SetOption ShapeDiscordLinkActive FontColor "' .. hoverInfoSelect[selectedHover]['colorDiscordLink'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoGitHub(selectedHover)
	SKIN:Bang('!SetOption ShapeGitHubActive MyFillColor "Fill Color ' .. hoverInfoSelect[selectedHover]['colorGitHub'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoCC(selectedHover)
	SKIN:Bang('!SetOption LicenseShapeActive MyFillColor "Fill Color ' .. hoverInfoSelect[selectedHover]['colorCC'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoUpdate(selectedHover)
	SKIN:Bang('!SetOption MeterUpdatePost3 FontColor "' .. hoverInfoSelect[selectedHover]['colorUpdate'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoUpdateToggle(selectedHover)
	SKIN:Bang('!SetOption MeterUpdateToggle FontColor "' .. hoverInfoSelect[selectedHover]['colorUpdateToggle'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoCredit1(selectedHover)
	SKIN:Bang('!SetOption Cred1Active FontColor "' .. hoverInfoSelect[selectedHover]['colorCred1'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoCredit2(selectedHover)
	SKIN:Bang('!SetOption Cred2Active FontColor "' .. hoverInfoSelect[selectedHover]['colorCred2'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoCredit3(selectedHover)
	SKIN:Bang('!SetOption Cred3Active FontColor "' .. hoverInfoSelect[selectedHover]['colorCred3'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoCredit4(selectedHover)
	SKIN:Bang('!SetOption Cred4Active FontColor "' .. hoverInfoSelect[selectedHover]['colorCred4'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoCredit5(selectedHover)
	SKIN:Bang('!SetOption Cred5Active FontColor "' .. hoverInfoSelect[selectedHover]['colorCred5'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoCredit6(selectedHover)
	SKIN:Bang('!SetOption Cred6Active FontColor "' .. hoverInfoSelect[selectedHover]['colorCred6'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end

function setInfoCredit7(selectedHover)
	SKIN:Bang('!SetOption Cred7Active FontColor "' .. hoverInfoSelect[selectedHover]['colorCred7'] .. '"')
	SKIN:Bang('!UpdateMeter *')
	SKIN:Bang('!Redraw')

end
