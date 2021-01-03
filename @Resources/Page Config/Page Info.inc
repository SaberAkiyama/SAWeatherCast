[Title]
Meter=String
MeterStyle=InfoTitle
Text=SA Weather Cast
X=770
Y=100

[Version]
Meter=String
MeterStyle=InfoVersion
Text=">>> v#Version# <<<"
X=0r
Y=0R

[Author]
Meter=String
MeterStyle=InfoAuthor
Text="Author by: Saber Akiyama"
X=0r
Y=10R

[AuthorDALinkActive]
Meter=String
MeterStyle=InfoActive
X=-37r
Y=0R
Text="DeviantArt"
LeftMouseUpAction=[!CommandMeasure LuaPage "setInfo('Author DA')"]
MouseOverAction=[!CommandMeasure LuaPage "setInfoAuthorDA('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setInfoAuthorDA('Leave')"]

[AuthorGHLinkActive]
Meter=String
MeterStyle=InfoActive
X=10R
Y=0r
Text="GitHub"
LeftMouseUpAction=[!CommandMeasure LuaPage "setInfo('Author GH')"]
MouseOverAction=[!CommandMeasure LuaPage "setInfoAuthorGH('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setInfoAuthorGH('Leave')"]

;-------------------------------------------------------------
;-------------------------------------------------------------

[LicenseHeader]
Meter=String
MeterStyle=InfoHeader
Text=License
X=770
Y=50r

[LicenseImageActive]
Meter=Image
ImageName=#@#Images\Settings\Creative Commons.png
X=680
Y=20r
W=180
AntiAlias=1
LeftMouseUpAction=[!CommandMeasure LuaPage "setInfo('Creative Commons')"]
MouseOverAction=[!CommandMeasure LuaPage "setInfoLicense('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setInfoLicense('Leave')"]

[LicenseText]
Meter=String
MeterStyle=InfoLicense
Text="BY-NC-SA (Attribution-NonCommercial-ShareAlike)#CRLF#4.0 International Public License"
X=770
Y=70r

;-------------------------------------------------------------
;-------------------------------------------------------------

[CreditsHeader]
Meter=String
MeterStyle=InfoHeader
X=r
Y=25R
Text=Credits + Inspirations

[Cred1Active]
Meter=String
MeterStyle=InfoActive
Text=Eduardo Tunni - Merienda fonts
X=r
Y=30r
LeftMouseUpAction=[!CommandMeasure LuaPage "setInfo('Credit1')"]
MouseOverAction=[!CommandMeasure LuaPage "setInfoCreditOne('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setInfoCreditOne('Leave')"]

[Cred2Active]
Meter=String
MeterStyle=InfoActive
Text=Olexa Volochay - TT Squares Condensed fonts
X=r
Y=5R
LeftMouseUpAction=[!CommandMeasure LuaPage "setInfo('Credit2')"]
MouseOverAction=[!CommandMeasure LuaPage "setInfoCreditTwo('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setInfoCreditTwo('Leave')"]

[Cred3Active]
Meter=String
MeterStyle=InfoActive
X=r
Y=5R
Text=Christian Robertson - Roboto fonts
LeftMouseUpAction=[!CommandMeasure "LuaPage" "setInfo('Credit3')"]
MouseOverAction=[!CommandMeasure LuaPage "setInfoCreditThree('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setInfoCreditThree('Leave')"]

[Cred4Active]
Meter=String
MeterStyle=InfoActive
X=r
Y=5R
Text="theAzack9 - FrostedGlass (Plugin)"
LeftMouseUpAction=[!CommandMeasure LuaPage "setInfo('Credit4')"]
MouseOverAction=[!CommandMeasure LuaPage "setInfoCreditFour('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setInfoCreditFour('Leave')"]

[Cred5Active]
Meter=String
MeterStyle=InfoActive
X=r
Y=5R
Text="Roberto Ierusalimschy - Programming Language (Lua)"
LeftMouseUpAction=[!CommandMeasure LuaPage "setInfo('Credit5')"]
MouseOverAction=[!CommandMeasure LuaPage "setInfoCreditFive('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setInfoCreditFive('Leave')"]

[Cred6Active]
Meter=String
MeterStyle=InfoActive
X=r
Y=5R
Text="Rainmeter Developer Team"
LeftMouseUpAction=[!CommandMeasure LuaPage "setInfo('Credit6')"]
MouseOverAction=[!CommandMeasure LuaPage "setInfoCreditSix('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setInfoCreditSix('Leave')"]
