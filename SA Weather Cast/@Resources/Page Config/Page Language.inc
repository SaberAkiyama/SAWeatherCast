; ============================================================
; Scripts Info
; ============================================================

[LuaLanguage]
Measure=Script
ScriptFile=#@#Scripts\Settings\Lua Language.lua
UpdateDivider=5

; ============================================================
; Language Page
; ============================================================

[MeterLanguageCurrentText]
Meter=String
MeterStyle=LanguageText
X=345
Y=160
Text="Current Language"

[MeterLanguageCurrent]
Meter=String
MeterStyle=LanguageCurrent
X=0r
Y=25R
Text="#LangCurrent#"

[MeterLanguageInfo]
Meter=String
MeterStyle=LanguageInfo
X=0r
Y=75R
Text="Unit Type: #TypeUnit##CRLF#Temp Unit: #TempUnit##CRLF#Wind Unit: #WindUnit##CRLF#Visibilty Unit: #VisibilityUnit##CRLF#Pressure Unit: #PressureUnit#"

; ============================================================
; ============================================================

[MeterApplyButton]
Meter=String
MeterStyle=LanguageActive
X=0r
Y=25R
Text="Apply Changes"
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setApply()"]
MouseOverAction=[!CommandMeasure LuaLanguage "setHoverApply('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setHoverApply('Leave')"]

; ============================================================
; ============================================================

[MeterLangEnglishUS]
Meter=String
MeterStyle=LanguageActive
X=785
Y=60
Text="English (US)"
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('English (US)')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setEnglishUS('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setEnglishUS('Leave')"]

[MeterLangEnglishGB]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text="English (GB)"
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('English (GB)')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setEnglishGB('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setEnglishGB('Leave')"]

[MeterLangEnglishWorld]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text="English (World)"
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('English (World)')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setEnglishWorld('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setEnglishWorld('Leave')"]

[MeterLangBulgarian]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Bulgarian
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Bulgarian')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setBulgarian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setBulgarian('Leave')"]

[MeterLangChinese]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Chinese
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Chinese')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setChinese('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setChinese('Leave')"]

[MeterLangCroatian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Croatian
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Croatian')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setCroatian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setCroatian('Leave')"]

[MeterLangCzech]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Czech
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Czech')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setCzech('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setCzech('Leave')"]

[MeterLangDanish]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Danish
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Danish')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setDanish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setDanish('Leave')"]

[MeterLangDutch]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Dutch
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Dutch')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setDutch('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setDutch('Leave')"]

[MeterLangFinnish]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Finnish
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Finnish')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setFinnish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setFinnish('Leave')"]

[MeterLangFrench]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=French
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('French')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setFrench('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setFrench('Leave')"]

[MeterLangGerman]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=German
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('German')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setGerman('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setGerman('Leave')"]

[MeterLangGreek]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Greek
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Greek')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setGreek('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setGreek('Leave')"]

[MeterLangHindi]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Hindi
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Hindi')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setHindi('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setHindi('Leave')"]

[MeterLangHungarian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Hungarian
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Hungarian')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setHungarian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setHungarian('Leave')"]

[MeterLangIndonesian]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Indonesian
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Indonesian')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setIndonesian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setIndonesian('Leave')"]

[MeterLangItalian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Italian
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Italian')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setItalian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setItalian('Leave')"]

[MeterLangJapanese]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Japanese
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Japanese')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setJapanese('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setJapanese('Leave')"]

[MeterLangKorean]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Korean
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Korean')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setKorean('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setKorean('Leave')"]

[MeterLangMalay]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Malay
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Malay')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setMalay('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setMalay('Leave')"]

[MeterLangNorwegian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Norwegian
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Norwegian')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setNorwegian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setNorwegian('Leave')"]

[MeterLangPolish]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Polish
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Polish')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setPolish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setPolish('Leave')"]

[MeterLangPortuguese]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Portuguese
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Portuguese')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setPortuguese('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setPortuguese('Leave')"]

[MeterLangRomanian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Romanian
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Romanian')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setRomanian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setRomanian('Leave')"]

[MeterLangRussian]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Russian
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Russian')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setRussian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setRussian('Leave')"]

[MeterLangSlovak]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Slovak
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Slovak')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setSlovak('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setSlovak('Leave')"]

[MeterLangSpanish]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Spanish
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Spanish')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setSpanish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setSpanish('Leave')"]

[MeterLangSwedish]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Swedish
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Swedish')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setSwedish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setSwedish('Leave')"]

[MeterLangTagalog]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Tagalog
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Tagalog')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setTagalog('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setTagalog('Leave')"]

[MeterLangThai]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Thai
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Thai')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setThai('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setThai('Leave')"]

[MeterLangTurkish]
Meter=String
MeterStyle=LanguageActive
X=785
Y=25R
Text=Turkish
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Turkish')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setTurkish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setTurkish('Leave')"]

[MeterLangUkrainian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Ukrainian
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Ukrainian')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setUkrainian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setUkrainian('Leave')"]

[MeterLangVietnamese]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Vietnamese
LeftMouseUpAction=[!CommandMeasure LuaLanguage "setLanguage('Vietnamese')"]
MouseOverAction=[!CommandMeasure LuaLanguage "setVietnamese('Over')"]
MouseLeaveAction=[!CommandMeasure LuaLanguage "setVietnamese('Leave')"]
