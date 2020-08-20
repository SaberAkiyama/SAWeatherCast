--; ============================================================
--; Lua Language
--; ============================================================

langSelect = {
	["Catalan"] = {
		langLocal = "Catalan"
	},
	["Croatian"] = {
		langLocal = "Croatian"
	},
	["Czech"] = {
		langLocal = "Czech"
	},
	["Danish"] = {
		langLocal = "Danish"
	},
	["Dutch"] = {
		langLocal = "Dutch"
	},
	["English"] = {
		langLocal = "English"
	},
	["French"] = {
		langLocal = "French"
	},
	["German"] = {
		langLocal = "German"
	},
	["Greek"] = {
		langLocal = "Greek"
	},
	["Hungarian"] = {
		langLocal = "Hungarian"
	},
	["Italian"] = {
		langLocal = "Italian"
	},
	["Latvian"] = {
		langLocal = "Latvian"
	},
	["Polish"] = {
		langLocal = "Polish"
	},
	["Portuguese"] = {
		langLocal = "Portuguese"
	},
	["Russian"] = {
		langLocal = "Russian"
	},
	["Serbian"] = {
		langLocal = "Serbian"
	},
	["Spanish"] = {
		langLocal = "Spanish"
	},
	["Swedish"] = {
		langLocal = "Swedish"
	},
	["Turkish"] = {
		langLocal = "Turkish"
	},
	["Ukrainian"] = {
		langLocal = "Ukrainian"
	}
}

function setLanguage(selectedLanguage)
	SKIN:Bang('!WriteKeyValue Variables Language "' .. langSelect[selectedLanguage]['langLocal'] .. '" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenLanguage "0" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenCustom "1" "#@#Variables.inc"')
	SKIN:Bang('!RefreshGroup Suite')
	
end

function openYourLanguage()
	SKIN:Bang('"#@#\\Language\\YourLanguage.inc"')
	SKIN:Bang('!WriteKeyValue Variables Language "YourLanguage" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenLanguage "1" "#@#Variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables HiddenCustom "0" "#@#Variables.inc"')
	SKIN:Bang('!RefreshGroup SettingSuite')

end

function setApply()
	SKIN:Bang('!RefreshGroup Suite')
	
end
