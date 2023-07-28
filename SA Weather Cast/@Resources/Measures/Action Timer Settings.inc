[Variables]
U=[!UpdateMeasureGroup Sliders][!UpdateMeterGroup Sliders][!Redraw]
TextAlpha=0
W1=50
X1=0

[MeasureSliders]
Measure=Plugin
Plugin=ActionTimer
Group=Sliders
ActionList1=Repeat Right,1,30
Right=[!CommandMeasure LuaSettings "setSliderRight()"]#U#
ActionList2=Repeat Left,1,30
Left=[!CommandMeasure LuaSettings "setSliderLeft()"]#U#
DynamicVariables=1
