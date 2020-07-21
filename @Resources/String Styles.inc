[WeatherCurrentTempStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=62
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentCondStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=25
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentFeelsStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255,128
AntiAlias=1
DynamicVariables=1

[WeatherCurrentFeelsStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255,128
AntiAlias=1
DynamicVariables=1

[WeatherCurrentLocStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255,128
AntiAlias=1
DynamicVariables=1

[WeatherCurrentTempMaxMinStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSunStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentWindStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentHumidStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentDPStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentPressStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentUVStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentVisStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentMPStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=15
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherImageStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherImageWindDirectStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
TransformationMatrix=(Cos(Rad(#WindDirection#)));(Sin(Rad(#WindDirection#)));(-Sin(Rad(#WindDirection#)));(Cos(Rad(#WindDirection#)));(([MeterCurrentWindDirectionImage:X]+0.5*[MeterCurrentWindDirectionImage:H])-([MeterCurrentWindDirectionImage:X]+0.5*[MeterCurrentWindDirectionImage:H])*Cos(Rad(#WindDirection#))+([MeterCurrentWindDirectionImage:Y]+0.5*[MeterCurrentWindDirectionImage:H])*Sin(Rad(#WindDirection#)));(([MeterCurrentWindDirectionImage:Y]+0.5*[MeterCurrentWindDirectionImage:H])-([MeterCurrentWindDirectionImage:X]+0.5*[MeterCurrentWindDirectionImage:H])*Sin(Rad(#WindDirection#))-([MeterCurrentWindDirectionImage:Y]+0.5*[MeterCurrentWindDirectionImage:H])*Cos(Rad(#WindDirection#)))
AntiAlias=1
DynamicVariables=1
