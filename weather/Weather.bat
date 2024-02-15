@echo off 

cd /d "%~dp0" && setlocal EnableDelayedExpansion

>nul chcp 437 && set /p "_city=Please, enter some location, city, an attraction: " 
for /f "delims= " %%d in ('forFiles /p "." /m "%~nx0" /c "cmd /c echo(0xF8"')do set "_o=%%~d"

for /f tokens^=* %%i in ('^<con: curl https://wttr.in/cincinatti ohio: =+%^?format^=%%l:+%%t\n -s
')do for /f %%T in ('^<con: cmd /u /c "echo\%%~i"^<nul^|find/v "%_o%"^|findstr /v ^,"
')do set "_dt=!_dt!%%~T"

set "_description_temperature=!_dt::=: !" && call echo\!_description_temperature:+=!!_o!C

timeout -1 & endlocal & goto :eof
