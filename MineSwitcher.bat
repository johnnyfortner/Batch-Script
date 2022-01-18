REM To use MineSwitcher simply put it in a directory above your miners and change the config starting on line 7
@echo off
setlocal enabledelayedexpansion 
title=MineSwitcher
set length=-1

REM CONFIG
REM the amount of time each coin is mined in hours(no decimal places, must be whole numbers).
set Time=1
REM MinersList gives each miner an index, if you want three miners it would be "0 1 2" and so on
set MinersList=0 1
REM Miners are the name of the actual task process for the specified index
set Miners[0]="PhoenixMiner.exe"
set Miners[1]="miner.exe"
Rem Coins sets coin names to verify indices are correct
set Coins[0]=Ethereum
set Coins[1]=Raven
Rem Paths sets the location of your regular start files
set Paths[0]=PhoenixMiner_5.8c_Windows\mine_eth.bat
set Paths[1]=gminer_2_74_windows64\mine_ravencoin.bat
REM for ease of use do not edit below this line

REM ///////////////////////////////// Start Mine Switcher ////////////////////////////////////
echo Chosen to mine each coin for !Time! hour(s)
timeout /t 1 >null
set /a Timeout=60*60*!Time!
REM find how many miners specified and display them
(for %%i in (%MinersList%) do (set /a length+=1))
set /a len=!length!+1
echo Miners Specified: !len!
(for /l %%h in (0,1,!length!) do (echo !Coins[%%h]!))
timeout /t 1 >null

REM main loop
:loop
(for /l %%b in (0,1,!length!) do (
timeout /t 1 >null
echo MineSwitcher: !Coins[%%b]! 
echo attempt to stop all miners
timeout /t 1 >null
REM ///////////////////////////////// Kill Task Code////////////////////////////////////
(for /l %%a in (0,1,!length!) do (
echo chosen to kill !Miners[%%a]!
tasklist | find /i !Miners[%%a]! && taskkill /im !Miners[%%a]! /F || echo task !Miners[%%a]! not running.
timeout /t 1 >null
))
REM ////////////////////////////////////////////////////////////////////////////////////
timeout /t 1 >null
echo starting miner !Miners[%%b]!
title=MineSwitcher: !Coins[%%b]!
timeout /t 1 >null
start /b "!Coins[%%b]!" "!Paths[%%b]!"
echo waiting for !Time! hour(s)
timeout /t !Timeout! >null
))
goto loop

REM stop after each line
pause
