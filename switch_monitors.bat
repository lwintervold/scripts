set ComputerName=%1

if "%ComputerName%" == "desktop" (
	set monitor_value=15
)
if "%ComputerName%" == "laptop" (
	set monitor_value=17
) else (
	set monitor_value=15
)


start ControlMyMonitor.exe /SetValue "\\.\DISPLAY2\Monitor0" 60 %monitor_value%
start ControlMyMonitor.exe /SetValue "\\.\DISPLAY1\Monitor0" 60 %monitor_value%