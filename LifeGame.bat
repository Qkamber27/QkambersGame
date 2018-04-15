@echo off
title Survival Game
cls

:Welcome
color fc
echo ------------------------
echo  Welcome to the Life Game
echo   -------------------------
echo     Created by Caleb Chandler
echo       -------------------------
pause >nul

:Setup
set Turncount=0
set Landcount=5
set Farmcount=1
set Housecount=1
set Adultcount=2
set Childcount=2
set /a Peoplecount=%Adultcount%+%Childcount%
goto GameMain

:Fail
cls
echo That didnt work!
set /a Turncount=%Turncount%+1
echo Press a key to return to the game.
pause > nul

:GameMain
cls
echo.
echo The turn is: %Turncount%. You have %Landcount% piece(s) of land.
echo.
echo You have %Farmcount% Farm(s)
echo You have %housecount% House(s)
echo You have %Peoplecount% People	(%Adultcount% Adults and %Childcount% Children)
echo.
echo --------------------------------------------------------
echo.
echo What do you wish to do?
echo 1) Expand land			(50% chance)
echo 2) Build farm			(25% chance)
echo 3) Build house			(50% chance)
echo 4) 'Breed'				(10% chance)
echo.
set /p Gamewtd=


if %Gamewtd% == 1 goto Expandhm
if %Gamewtd% == 2 goto Buildfarm
if %gamewtd% == 3 goto Buildhouse
if %gamewtd% == 4 goto Breed
goto GameMain

:Expandhm
cls
echo How much do you want to expand by?
echo 1) 1  Piece			(50% chance)
echo 2) 2  Pieces			(25% chance)
echo 3) 5  Pieces			(10% chance)
echo 4) 10 Pieces			(5%  chance)
set /p Expandhm=

if %Expandhm% == 1 goto Expandb1
if %Expandhm% == 2 goto Expandb2
if %Expandhm% == 3 goto Expandb5
if %Expandhm% == 4 goto Expandb10
goto Expandhm

:Expandb1
set /a work=%random% %% 2 + 1
if %work% equ 1 goto Expandb1W
if %work% geq 2 goto Fail
:Expandb1W
set /a Landcount=%Landcount%+1
set /a Turncount=%Turncount%+1
goto GameMain
:Expandb2
set /a work=%random% %% 4 + 1
if %work% equ 1 goto Expandb2W
if %work% geq 2 goto Fail
:Expandb2W
set /a Landcount=%Landcount%+2
set /a Turncount=%Turncount%+1
goto GameMain
:Expandb5
set /a work=%random% %% 10 + 1
if %work% equ 1 goto Expandb5W
if %work% geq 2 goto Fail
:Expandb5W
set /a Landcount=%Landcount%+5
set /a Turncount=%Turncount%+1
goto GameMain
:Expandb10
set /a work=%random% %% 20 + 1
if %work% equ 1 goto Expandb10W
if %work% geq 2 goto Fail
:Expandb10W
set /a Landcount=%Landcount%+10
set /a Turncount=%Turncount%+1
goto GameMain



:Buildfarm
set /a work=%random% %% 20 + 1
if %work% equ 1 goto BuildFarmW
if %work% geq 2 goto Fail
:BuildFarmW
set /a Landcount=%Landcount%+10
set /a Turncount=%Turncount%+1
goto GameMain















