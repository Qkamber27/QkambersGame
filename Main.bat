@echo off
echo.
echo        -------------------------------------------------
echo			Welcome to the life game launcher!
echo			Do you want to launch the game?		(y/n)
echo		-------------------------------------------------
echo.
set /p Startgame=

cls
if %startgame% == n exit
if %startgame% == N exit
if %startgame% == y call Lifegame.bat
if %startgame% == Y call Lifegame.bat
exit