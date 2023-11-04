param(
    [Parameter(Mandatory, ValueFromPipeline)]
    [string[]]$ComputerName
)


if ( $ComputerName -eq "desktop") {
	$monitor_value = 15
}
elseif ($ComputerName -eq "laptop") {
	$monitor_value = 17
}
else {
	$monitor_value = 15
}


ControlMyMonitor.exe /SetValue "\\.\DISPLAY2\Monitor0" 60 $monitor_value
ControlMyMonitor.exe /SetValue "\\.\DISPLAY1\Monitor0" 60 $monitor_value
