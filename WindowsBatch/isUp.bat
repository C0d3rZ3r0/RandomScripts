@echo off
REM This is branched from the original wifitest.bat (now deprecated, courtesy: dnsTest.bat).
REM It simply replaces the hard coded DNS 8.8.8.8 with the first argument that is passed to the script.
REM TODO: Perform a check for no arguments given and default to 8.8.8.8

echo  Waiting for connection...

:begin
	ping -l 1 -n 1 %1 | find "Reply from %1"

if ERRORLEVEL 1 (
	goto begin
) else (
	echo Connected
	echo 
	pause
)