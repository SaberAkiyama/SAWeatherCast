[MeterLanguageText]
Meter=String
MeterStyle=LanguageText
X=515
Y=150
Text="Current Language"

[MeterLanguageCurrent]
Meter=String
MeterStyle=LanguageCurrent
X=0r
Y=20R
Text="#LangCurrent#"

[MeterLanguageInfo]
Meter=String
MeterStyle=LanguageInfo
X=0r
Y=75R
Text="Temp Unit: #TempUnit##CRLF#Wind Unit: #WindUnit##CRLF#Visibilty Unit: #VisibilityUnit##CRLF#Pressure Unit: #PressureUnit#"

; ============================================================
; ============================================================

[MeterApplyButton]
Meter=String
MeterStyle=LanguageActive
X=0r
Y=435
Text="Apply Changes"
ToolTipText="Once is done, click "Apply" button to refresh language skin."
LeftMouseUpAction=[!CommandMeasure LuaPage "setApply()"]
MouseOverAction=[!CommandMeasure LuaPage "setHoverApply('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setHoverApply('Leave')"]

; ============================================================
; ============================================================

[MeterLangEnglishUS]
Meter=String
MeterStyle=LanguageActive
X=772
Y=65
Text="English (US)"
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('English (US)')"]
MouseOverAction=[!CommandMeasure LuaPage "setEnglishUS('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setEnglishUS('Leave')"]

[MeterLangEnglishGB]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text="English (GB)"
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('English (GB)')"]
MouseOverAction=[!CommandMeasure LuaPage "setEnglishGB('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setEnglishGB('Leave')"]

[MeterLangEnglishWorld]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text="English (World)"
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('English (World)')"]
MouseOverAction=[!CommandMeasure LuaPage "setEnglishWorld('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setEnglishWorld('Leave')"]

[MeterLangBulgarian]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Bulgarian
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Bulgarian')"]
MouseOverAction=[!CommandMeasure LuaPage "setBulgarian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setBulgarian('Leave')"]

[MeterLangChinese]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Chinese
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Chinese')"]
MouseOverAction=[!CommandMeasure LuaPage "setChinese('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setChinese('Leave')"]

[MeterLangCroatian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Croatian
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Croatian')"]
MouseOverAction=[!CommandMeasure LuaPage "setCroatian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setCroatian('Leave')"]

[MeterLangCzech]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Czech
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Czech')"]
MouseOverAction=[!CommandMeasure LuaPage "setCzech('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setCzech('Leave')"]

[MeterLangDanish]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Danish
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Danish')"]
MouseOverAction=[!CommandMeasure LuaPage "setDanish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setDanish('Leave')"]

[MeterLangDutch]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Dutch
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Dutch')"]
MouseOverAction=[!CommandMeasure LuaPage "setDutch('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setDutch('Leave')"]

[MeterLangFinnish]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Finnish
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Finnish')"]
MouseOverAction=[!CommandMeasure LuaPage "setFinnish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setFinnish('Leave')"]

[MeterLangFrench]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=French
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('French')"]
MouseOverAction=[!CommandMeasure LuaPage "setFrench('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setFrench('Leave')"]

[MeterLangGerman]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=German
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('German')"]
MouseOverAction=[!CommandMeasure LuaPage "setGerman('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setGerman('Leave')"]

[MeterLangGreek]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Greek
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Greek')"]
MouseOverAction=[!CommandMeasure LuaPage "setGreek('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setGreek('Leave')"]

[MeterLangHindi]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Hindi
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Hindi')"]
MouseOverAction=[!CommandMeasure LuaPage "setHindi('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setHindi('Leave')"]

[MeterLangHungarian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Hungarian
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Hungarian')"]
MouseOverAction=[!CommandMeasure LuaPage "setHungarian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setHungarian('Leave')"]

[MeterLangIndonesian]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Indonesian
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Indonesian')"]
MouseOverAction=[!CommandMeasure LuaPage "setIndonesian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setIndonesian('Leave')"]

[MeterLangItalian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Italian
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Italian')"]
MouseOverAction=[!CommandMeasure LuaPage "setItalian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setItalian('Leave')"]

[MeterLangJapanese]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Japanese
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Japanese')"]
MouseOverAction=[!CommandMeasure LuaPage "setJapanese('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setJapanese('Leave')"]

[MeterLangKorean]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Korean
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Korean')"]
MouseOverAction=[!CommandMeasure LuaPage "setKorean('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setKorean('Leave')"]

[MeterLangMalay]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Malay
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Malay')"]
MouseOverAction=[!CommandMeasure LuaPage "setMalay('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setMalay('Leave')"]

[MeterLangNorwegian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Norwegian
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Norwegian')"]
MouseOverAction=[!CommandMeasure LuaPage "setNorwegian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setNorwegian('Leave')"]

[MeterLangPolish]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Polish
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Polish')"]
MouseOverAction=[!CommandMeasure LuaPage "setPolish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setPolish('Leave')"]

[MeterLangPortuguese]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Portuguese
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Portuguese')"]
MouseOverAction=[!CommandMeasure LuaPage "setPortuguese('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setPortuguese('Leave')"]

[MeterLangRomanian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Romanian
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Romanian')"]
MouseOverAction=[!CommandMeasure LuaPage "setRomanian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setRomanian('Leave')"]

[MeterLangRussian]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Russian
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Russian')"]
MouseOverAction=[!CommandMeasure LuaPage "setRussian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setRussian('Leave')"]

[MeterLangSlovak]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Slovak
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Slovak')"]
MouseOverAction=[!CommandMeasure LuaPage "setSlovak('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setSlovak('Leave')"]

[MeterLangSpanish]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Spanish
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Spanish')"]
MouseOverAction=[!CommandMeasure LuaPage "setSpanish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setSpanish('Leave')"]

[MeterLangSwedish]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Swedish
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Swedish')"]
MouseOverAction=[!CommandMeasure LuaPage "setSwedish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setSwedish('Leave')"]

[MeterLangTagalog]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Tagalog
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Tagalog')"]
MouseOverAction=[!CommandMeasure LuaPage "setTagalog('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setTagalog('Leave')"]

[MeterLangThai]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Thai
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Thai')"]
MouseOverAction=[!CommandMeasure LuaPage "setThai('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setThai('Leave')"]

[MeterLangTurkish]
Meter=String
MeterStyle=LanguageActive
X=772
Y=25R
Text=Turkish
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Turkish')"]
MouseOverAction=[!CommandMeasure LuaPage "setTurkish('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setTurkish('Leave')"]

[MeterLangUkrainian]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Ukrainian
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Ukrainian')"]
MouseOverAction=[!CommandMeasure LuaPage "setUkrainian('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setUkrainian('Leave')"]

[MeterLangVietnamese]
Meter=String
MeterStyle=LanguageActive
X=175r
Y=0r
Text=Vietnamese
LeftMouseUpAction=[!CommandMeasure LuaPage "setLanguage('Vietnamese')"]
MouseOverAction=[!CommandMeasure LuaPage "setVietnamese('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setVietnamese('Leave')"]
