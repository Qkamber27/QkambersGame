@echo off
:menu
cls
color fc
echo.
echo         -------------------------------------------------
echo			  Welcome to the life game launcher!
echo		      Do you want to launch the game?
echo		  Press (y/n) to start the game or (r) for info
echo		-------------------------------------------------
echo.
set /p Startgame=

cls
if %startgame% == r goto Rules
if %startgame% == R goto Rules
if %startgame% == n exit
if %startgame% == N exit
if %startgame% == y call Lifegame.bat
if %startgame% == Y call Lifegame.bat
exit

:Rules
cls
echo These are the Rules/Info of the game
echo.
echo Info.
echo 1) Choose Expand Land to open a menu of how much
echo    you would like to expand your land by, each by
echo    the 1 piece of land for 50% chance ratio.
echo.
echo 2) Only 5 People can live in one house, and each
echo	building (houses and farms) takes up 1 piece
echo	of land.
echo.
echo 3) You can press enter to repeat the previous
echo    choice.





echo.
echo Press any key to go to the menu.
pause > nul
goto menu