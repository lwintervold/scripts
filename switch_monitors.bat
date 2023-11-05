set ComputerName=%1

if "%ComputerName%" == "desktop" (
	set monitor_value=15
	goto set_values
)
if "%ComputerName%" == "laptop" (
	set monitor_value=17
	goto set_values
)

:desktop_defaults
set monitor_1="M1LMQS120278"
set monitor_2="M1LMQS120281"
set monitor_value=15


:set_values
start ControlMyMonitor.exe /SetValue "M1LMQS120278" 60 %monitor_value%
start ControlMyMonitor.exe /SetValue "M1LMQS120281" 60 %monitor_value%