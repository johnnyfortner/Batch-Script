@echo off

REM init vars
set int=0
title=MineSwitcher
timeout /t 3 >null

REM main loop
:loop
if %int% == 0 ( 

set int=1
title=MineSwitcher-Ethereum
echo attempt to stop all miners
timeout /t 2 >null
tasklist | find /i "miner.exe" && taskkill /im "miner.exe" /F || echo task "miner.exe" not running.
timeout /t 2 >null
echo starting miner %int%
timeout /t 2 >null
start /b "Ethereum" "PhoenixMiner_5.8c_Windows\1aeth+zil.bat"

) else ( 

set int=0 
title=MineSwitcher-Raven
echo attempt to stop all miners
timeout /t 2 >null
tasklist | find /i "PhoenixMiner.exe" && taskkill /im "PhoenixMiner.exe" /F || echo task "PhoenixMiner.exe" not running.
timeout /t 2 >null
echo starting miner %int%
timeout /t 2 >null
start /b "Raven" "gminer_2_74_windows64\mine_ravencoin.bat"

)

REM run for 3600 seconds(1 hour) before switching
timeout /t 3600 >null
goto loop

REM stop after each line
pause
