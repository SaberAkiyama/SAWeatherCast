--; ============================================================
--; Lua Info
--; ============================================================

infoSelect = {
	["Author DA"] = {
		infoLink = "https://deviantart.com/akiyama4809"
	},
	["Author GH"] = {
		infoLink = "https://github.com/SaberAkiyama"
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
		infoLink = "https://www.lua.org/"
	},
	["Credit6"] = {
		infoLink = "https://github.com/orgs/rainmeter/people"
	}
}

function setInfo(selectedInfo)
	SKIN:Bang('' .. infoSelect[selectedInfo]['infoLink'] .. '')

end

--; ============================================================

hoverSelect = {
	["Over"] = {
		colorAuthor = "255,215,0",
		colorLicense = "255,215,0",
		colorCred1 = "255,215,0",
		colorCred2 = "255,215,0",
		colorCred3 = "255,215,0",
		colorCred4 = "255,215,0",
		colorCred5 = "255,215,0",
		colorCred6 = "255,215,0"
	},
	["Leave"] = {
		colorAuthor = "255,255,255",
		colorLicense = "255,255,255",
		colorCred1 = "255,255,255",
		colorCred2 = "255,255,255",
		colorCred3 = "255,255,255",
		colorCred4 = "255,255,255",
		colorCred5 = "255,255,255",
		colorCred6 = "255,255,255"
	}
}

function setInfoAuthorDA(selectedHover)
	SKIN:Bang('!SetOption AuthorDALinkActive FontColor "' .. hoverSelect[selectedHover]['colorAuthor'] .. '"')
	SKIN:Bang('!Update')

end

function setInfoAuthorGH(selectedHover)
	SKIN:Bang('!SetOption AuthorGHLinkActive FontColor "' .. hoverSelect[selectedHover]['colorAuthor'] .. '"')
	SKIN:Bang('!Update')

end

function setInfoLicense(selectedHover)
	SKIN:Bang('!SetOption LicenseImageActive ImageTint "' .. hoverSelect[selectedHover]['colorLicense'] .. '"')
	SKIN:Bang('!Update')

end

function setInfoCreditOne(selectedHover)
	SKIN:Bang('!SetOption Cred1Active FontColor "' .. hoverSelect[selectedHover]['colorCred1'] .. '"')
	SKIN:Bang('!Update')

end

function setInfoCreditTwo(selectedHover)
	SKIN:Bang('!SetOption Cred2Active FontColor "' .. hoverSelect[selectedHover]['colorCred2'] .. '"')
	SKIN:Bang('!Update')

end

function setInfoCreditThree(selectedHover)
	SKIN:Bang('!SetOption Cred3Active FontColor "' .. hoverSelect[selectedHover]['colorCred3'] .. '"')
	SKIN:Bang('!Update')

end

function setInfoCreditFour(selectedHover)
	SKIN:Bang('!SetOption Cred4Active FontColor "' .. hoverSelect[selectedHover]['colorCred4'] .. '"')
	SKIN:Bang('!Update')

end

function setInfoCreditFive(selectedHover)
	SKIN:Bang('!SetOption Cred5Active FontColor "' .. hoverSelect[selectedHover]['colorCred5'] .. '"')
	SKIN:Bang('!Update')

end

function setInfoCreditSix(selectedHover)
	SKIN:Bang('!SetOption Cred6Active FontColor "' .. hoverSelect[selectedHover]['colorCred6'] .. '"')
	SKIN:Bang('!Update')

end
