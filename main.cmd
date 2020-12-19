@echo off
:: ping to the IP address in the serverList.lst

:: your current dir
SET CURRENTDIR=%~dp0
:: Target Server List
SET LIST=%CURRENTDIR%serverList.lst

for /f "tokens=1" %%i in (%LIST%) do (
echo
echo %%i
start %CURRENTDIR%ping_check.cmd %%i
echo
echo -------------------------------

)

pause


