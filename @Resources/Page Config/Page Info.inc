[Title]
Meter=String
MeterStyle=InfoTitle
Text=SA Weather Cast
X=300
Y=100

[Version]
Meter=String
MeterStyle=InfoVersion
Text=v#Version#
X=5R
Y=-10r

[Author]
Meter=String
MeterStyle=InfoAuthor
Text="Author by: Saber Akiyama"
X=300
Y=60r

[AuthorLinkActive]
Meter=String
MeterStyle=InfoActive
X=92r
Y=20r
Text="deviantart.com/akiyama4809"
LeftMouseUpAction=[!CommandMeasure LuaPage "setInfo('Author')"]
MouseOverAction=[!CommandMeasure LuaPage "setAuthor('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setAuthor('Leave')"]

;-------------------------------------------------------------
;-------------------------------------------------------------

[LicenseHeader]
Meter=String
MeterStyle=InfoHeader
Text=License
X=300
Y=50r

[LicenseImageActive]
Meter=Image
ImageName=#@#Images\Settings\Creative Commons.png
ImageTint=255,255,255
X=r
Y=20r
W=180
AntiAlias=1
LeftMouseUpAction=!CommandMeasure LuaPage "setInfo('Creative Commons')"
MouseOverAction=[!CommandMeasure LuaPage "setLicense('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setLicense('Leave')"]

[LicenseText]
Meter=String
MeterStyle=InfoLicense
Text="BY-NC-SA (Attribution-NonCommercial-ShareAlike)#CRLF#4.0 International Public License"
X=r
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
LeftMouseUpAction=!CommandMeasure LuaPage "setInfo('Credit1')"
MouseOverAction=[!CommandMeasure LuaPage "setCreditOne('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setCreditOne('Leave')"]

[Cred2Active]
Meter=String
MeterStyle=InfoActive
Text=Olexa Volochay - TT Squares Condensed fonts
X=r
Y=5R
LeftMouseUpAction=!CommandMeasure LuaPage "setInfo('Credit2')"
MouseOverAction=[!CommandMeasure LuaPage "setCreditTwo('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setCreditTwo('Leave')"]

[Cred3Active]
Meter=String
MeterStyle=InfoActive
X=r
Y=5R
Text=Christian Robertson - Roboto fonts
LeftMouseUpAction=!CommandMeasure "LuaPage" "setInfo('Credit3')"
MouseOverAction=[!CommandMeasure LuaPage "setCreditThree('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setCreditThree('Leave')"]

[Cred4Active]
Meter=String
MeterStyle=InfoActive
X=r
Y=5R
Text="Roberto Ierusalimschy - Programming Language (Lua)"
LeftMouseUpAction=!CommandMeasure LuaPage "setInfo('Credit4')"
MouseOverAction=[!CommandMeasure LuaPage "setCreditFour('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setCreditFour('Leave')"]

[Cred5Active]
Meter=String
MeterStyle=InfoActive
X=r
Y=5R
Text="Rainmeter Developer Team"
LeftMouseUpAction=!CommandMeasure LuaPage "setInfo('Credit5')"
MouseOverAction=[!CommandMeasure LuaPage "setCreditFive('Over')"]
MouseLeaveAction=[!CommandMeasure LuaPage "setCreditFive('Leave')"]
