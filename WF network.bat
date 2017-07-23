@echo off
TITLE Bienvenid %USERNAME%
color a
:inicio
SET ot=0
cls
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME% 
echo ------------------------------------------------------------------------------
echo ###       ###   ###    ##    ##   ###   ##  
echo ## ##   ## ##   ## ##  ##    ##  ## ##  ##   
echo ##  ## ##  ##   ##  ## ##    ## ##   ## ##  
echo ##   ###   ##   ##    ###    ###       ###
echo ------------------------------------------------------------------------------ 
echo  0    Inicio
echo  1    Create new network   
echo  2    Start network   
echo  3    Stop network   
echo  4    Exit 
echo ------------------------------------------------------------------------------                                
echo.
SET /p ot= ^> Select an option [0-4]: 

if "%ot%"=="0" goto inicio
if "%ot%"=="1" goto n1
if "%ot%"=="2" goto n2
if "%ot%"=="3" goto n3
if "%ot%"=="4" goto salir
echo. Error the number "%ot%" is invalid.
echo.
pause
echo.
goto:inicio

:n1
    echo.
    SET /P ssid=Name of the network:
    SET /P key=Password of the Network:
    netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%key%
    echo.
    pause
    goto:inicio

:n2
    echo.
    netsh wlan start hostednetwork
    echo.
    pause
    goto:inicio

:n3
    echo.
        netsh wlan stop hostednetwork
    echo.
    pause
    goto:inicio

:salir
    @cls&exit