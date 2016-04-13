@echo off
REM This is what happens when you don't have an audible ping switch.

echo  Waiting for connection...

:begin
	ping -l 1 -n 1 8.8.8.8 | find "Reply from 8.8.8.8"

if ERRORLEVEL 1 (
	goto begin
) else (
	echo Connected
	echo 
	pause
)
REM wifitest.bat : The Original. Kept for legacy reasons.