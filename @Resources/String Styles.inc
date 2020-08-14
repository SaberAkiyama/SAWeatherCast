; ==================================================
; WEATHER STRING STYLES
; ==================================================

; ===========================================================================
; 							CURRENT STYLES
; ===========================================================================

[WeatherCurrentImageStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentTempStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(62*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentCondStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(25*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentFeelsStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255,128
AntiAlias=1
DynamicVariables=1

[WeatherCurrentFeelsStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255,128
AntiAlias=1
DynamicVariables=1

[WeatherCurrentValidLocStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255,128
AntiAlias=1
DynamicVariables=1

[WeatherCurrentTempMaxMinStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSunStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentWindStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentHumidStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentDPStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentPressStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentUVStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentVisStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentMPStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentImageWindDirectStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
TransformationMatrix=(Cos(Rad(#WindDirection#)));(Sin(Rad(#WindDirection#)));(-Sin(Rad(#WindDirection#)));(Cos(Rad(#WindDirection#)));(([MeterCurrentWindDirectionImage:X]+0.5*[MeterCurrentWindDirectionImage:H])-([MeterCurrentWindDirectionImage:X]+0.5*[MeterCurrentWindDirectionImage:H])*Cos(Rad(#WindDirection#))+([MeterCurrentWindDirectionImage:Y]+0.5*[MeterCurrentWindDirectionImage:H])*Sin(Rad(#WindDirection#)));(([MeterCurrentWindDirectionImage:Y]+0.5*[MeterCurrentWindDirectionImage:H])-([MeterCurrentWindDirectionImage:X]+0.5*[MeterCurrentWindDirectionImage:H])*Sin(Rad(#WindDirection#))-([MeterCurrentWindDirectionImage:Y]+0.5*[MeterCurrentWindDirectionImage:H])*Cos(Rad(#WindDirection#)))
AntiAlias=1
DynamicVariables=1









; ===========================================================================
; 							CURRENT SLIM STYLES
; ===========================================================================

[WeatherCurrentSlimImageStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSlimTempStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(62*#CurrentSlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSlimCondStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(25*#CurrentSlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSlimFeelsStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentSlimScale#)
FontWeight=300
FontColor=255,255,255,128
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSlimFeelsStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentSlimScale#)
FontWeight=300
FontColor=255,255,255,128
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSlimWindStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentSlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSlimHumidStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentSlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSlimVisStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#CurrentSlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentSlimImageWindDirectStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
TransformationMatrix=(Cos(Rad(#WindDirection#)));(Sin(Rad(#WindDirection#)));(-Sin(Rad(#WindDirection#)));(Cos(Rad(#WindDirection#)));(([MeterCurrentWindDirectionImage:X]+0.5*[MeterCurrentWindDirectionImage:H])-([MeterCurrentWindDirectionImage:X]+0.5*[MeterCurrentWindDirectionImage:H])*Cos(Rad(#WindDirection#))+([MeterCurrentWindDirectionImage:Y]+0.5*[MeterCurrentWindDirectionImage:H])*Sin(Rad(#WindDirection#)));(([MeterCurrentWindDirectionImage:Y]+0.5*[MeterCurrentWindDirectionImage:H])-([MeterCurrentWindDirectionImage:X]+0.5*[MeterCurrentWindDirectionImage:H])*Sin(Rad(#WindDirection#))-([MeterCurrentWindDirectionImage:Y]+0.5*[MeterCurrentWindDirectionImage:H])*Cos(Rad(#WindDirection#)))
AntiAlias=1
DynamicVariables=1






; ===========================================================================
; 							CURRENT EXTRA SLIM STYLES
; ===========================================================================

[WeatherCurrentExtraSlimImageStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentExtraSlimTempStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(62*#CurrentExtraSlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherCurrentExtraSlimCondStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(25*#CurrentExtraSlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1








; ===========================================================================
; 							ONE HOUR STYLES
; ===========================================================================

[WeatherOneHourImageStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourValidStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourTempStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(47*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourCondStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(25*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourFeelsTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourFeelsStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourWindTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourWindStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourHumidTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourHumidStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourUVTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneHourUVStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1







; ===========================================================================
; 							SIX HOUR STYLES
; ===========================================================================

[WeatherSixHourImageStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherSixHourTempStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#SixHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherSixHourValidStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#SixHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherSixHourPrecipStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#SixHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherSixHourWindStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#SixHourScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1










; ===========================================================================
; 							ONE DAY STYLES
; ===========================================================================

[WeatherOneDayImageStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDayTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDayTempStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(47*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDayPrecipStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDayWindStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDayHumidTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDayHumidStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDayUVTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDayUVStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySunMoonTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySunMoonStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1






; ===========================================================================
; 							ONE DAY SLIM STYLES
; ===========================================================================

[WeatherOneDaySlimImageStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimTempStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(47*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimPrecipStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimWindStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimHumidTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimHumidStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimUVTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimUVStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimSunMoonTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherOneDaySlimSunMoonStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#OneDaySlimScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1






; ===========================================================================
; 							SEVEN DAY STYLES
; ===========================================================================

[WeatherSevenDayImageStyle]
ImagePath=#@#Images\
ImageTint=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherSevenDayTempStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#SevenDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherSevenDayTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#SevenDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherSevenDayPrecipStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#SevenDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherSevenDayWindStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#SevenDayScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1










; ===========================================================================
; 							AIR QUALITY STYLES
; ===========================================================================

[WeatherAQShape]
Shape=Rectangle 0,0,(100*#AirQualityScale#),(100*#AirQualityScale#),(50*#AirQualityScale#) | Fill Color 0,0,0,1 | StrokeWidth 5 | Extend FillColorExchange
FillColorExchange=Stroke Color FFFFFF40
AntiAlias=1
DynamicVariables=1

[WeatherAQPrimaryRound]
RotationAngle=(Rad(60))
StartAngle=(Rad(90))
LineStart=(53*#AirQualityScale#)
LineLength=(48*#AirQualityScale#)
LineColor=00E838
W=(110*#AirQualityScale#)
H=(110*#AirQualityScale#)
Solid=1
Antialias=1
DynamicVariables=1

[WeatherAQPrimeIndex]
StringAlign=CenterCenter
FontFace=Roboto
FontSize=(30*#AirQualityScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherAQPrimePollutant]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(10*#AirQualityScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherAQPrimeCategory]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#AirQualityScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherAQNO2Round]
RotationAngle=(Rad(60))
StartAngle=(Rad(90))
LineStart=(53*#AirQualityScale#)
LineLength=(48*#AirQualityScale#)
LineColor=00E838
W=(110*#AirQualityScale#)
H=(110*#AirQualityScale#)
Solid=1
Antialias=1
DynamicVariables=1

[WeatherAQO3Round]
RotationAngle=(Rad(60))
StartAngle=(Rad(90))
LineStart=(53*#AirQualityScale#)
LineLength=(48*#AirQualityScale#)
LineColor=00E838
W=(110*#AirQualityScale#)
H=(110*#AirQualityScale#)
Solid=1
Antialias=1
DynamicVariables=1

[WeatherAQSO2Round]
RotationAngle=(Rad(60))
StartAngle=(Rad(90))
LineStart=(53*#AirQualityScale#)
LineLength=(48*#AirQualityScale#)
LineColor=00E838
W=(110*#AirQualityScale#)
H=(110*#AirQualityScale#)
Solid=1
Antialias=1
DynamicVariables=1

[WeatherAQPM25Round]
RotationAngle=(Rad(60))
StartAngle=(Rad(90))
LineStart=(53*#AirQualityScale#)
LineLength=(48*#AirQualityScale#)
LineColor=00E838
W=(110*#AirQualityScale#)
H=(110*#AirQualityScale#)
Solid=1
Antialias=1
DynamicVariables=1

[WeatherAQPM10Round]
RotationAngle=(Rad(60))
StartAngle=(Rad(90))
LineStart=(53*#AirQualityScale#)
LineLength=(48*#AirQualityScale#)
LineColor=00E838
W=(110*#AirQualityScale#)
H=(110*#AirQualityScale#)
Solid=1
Antialias=1
DynamicVariables=1

[WeatherAQCORound]
RotationAngle=(Rad(60))
StartAngle=(Rad(90))
LineStart=(53*#AirQualityScale#)
LineLength=(48*#AirQualityScale#)
LineColor=00E838
W=(110*#AirQualityScale#)
H=(110*#AirQualityScale#)
Solid=1
Antialias=1
DynamicVariables=1

[WeatherAQIndex]
StringAlign=CenterCenter
FontFace=Roboto
FontSize=(15*#AirQualityScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherAQCategory]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#AirQualityScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherAQUnits]
StringAlign=CenterCenter
FontFace=Roboto
FontSize=(10*#AirQualityScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1








; ===========================================================================
; 							POLLEN STYLES
; ===========================================================================

[WeatherPollenTreeTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#PollenScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherPollenTreeDPStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#PollenScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherPollenTreeShape1]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenTreeShape2]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenTreeShape3]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenTreeShape4]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenTreeShape5]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenGrassTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#PollenScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherPollenGrassDPStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#PollenScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherPollenGrassShape1]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenGrassShape2]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenGrassShape3]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenGrassShape4]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenGrassShape5]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenRagweedTextStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(20*#PollenScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherPollenRagweedDPStyle]
StringAlign=LeftCenter
FontFace=Roboto
FontSize=(15*#PollenScale#)
FontWeight=300
FontColor=255,255,255
AntiAlias=1
DynamicVariables=1

[WeatherPollenRagweedShape1]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenRagweedShape2]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenRagweedShape3]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenRagweedShape4]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1

[WeatherPollenRagweedShape5]
Shape=Ellipse 0,0,(15*#PollenScale#),(15*#PollenScale#),(25*#PollenScale#) | StrokeWidth 0 | Extend FillColorExchange
FillColorExchange=Fill Color CECECE
AntiAlias=1
DynamicVariables=1
