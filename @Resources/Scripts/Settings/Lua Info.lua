--; ============================================================
--; Lua Info
--; ============================================================

infoSelect = {
	["Author"] = {
		infoLink = "https://deviantart.com/akiyama4809"
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
		infoLink = "https://www.lua.org/"
	},
	["Credit5"] = {
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
		colorCred5 = "255,215,0"
	},
	["Leave"] = {
		colorAuthor = "255,255,255",
		colorLicense = "255,255,255",
		colorCred1 = "255,255,255",
		colorCred2 = "255,255,255",
		colorCred3 = "255,255,255",
		colorCred4 = "255,255,255",
		colorCred5 = "255,255,255"
	}
}

function setAuthor(selectedHover)
	SKIN:Bang('!SetOption AuthorLinkActive FontColor "' .. hoverSelect[selectedHover]['colorAuthor'] .. '"')
	SKIN:Bang('!Update')

end

function setLicense(selectedHover)
	SKIN:Bang('!SetOption LicenseImageActive ImageTint "' .. hoverSelect[selectedHover]['colorLicense'] .. '"')
	SKIN:Bang('!Update')

end

function setCreditOne(selectedHover)
	SKIN:Bang('!SetOption Cred1Active FontColor "' .. hoverSelect[selectedHover]['colorCred1'] .. '"')
	SKIN:Bang('!Update')

end

function setCreditTwo(selectedHover)
	SKIN:Bang('!SetOption Cred2Active FontColor "' .. hoverSelect[selectedHover]['colorCred2'] .. '"')
	SKIN:Bang('!Update')

end

function setCreditThree(selectedHover)
	SKIN:Bang('!SetOption Cred3Active FontColor "' .. hoverSelect[selectedHover]['colorCred3'] .. '"')
	SKIN:Bang('!Update')

end

function setCreditFour(selectedHover)
	SKIN:Bang('!SetOption Cred4Active FontColor "' .. hoverSelect[selectedHover]['colorCred4'] .. '"')
	SKIN:Bang('!Update')

end

function setCreditFive(selectedHover)
	SKIN:Bang('!SetOption Cred5Active FontColor "' .. hoverSelect[selectedHover]['colorCred5'] .. '"')
	SKIN:Bang('!Update')

end
