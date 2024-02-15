@echo off
:: STARTUP
title R.I.S.E
set R.I.S.Eserver=FINAL
set speech=start scripts\nircmd.exe speak text
VER | findstr /i "5.1." > nul
IF %ERRORLEVEL% EQU 0 set version=xp
VER | findstr /i "6.1." > nul
IF %ERRORLEVEL% EQU 0 set version=w7
IF %ERRORLEVEL% EQU 0 set version=w8
IF %ERRORLEVEL% EQU 0 set version=w8.1
IF %ERRORLEVEL% EQU 0 set version=w10
color A
setlocal
:: /STARTUP
:restart
echo                                                            ---------------------------------- 
echo                                                            Currently Logged in as: %username%
echo                                                            ----------------------------------
echo.
echo       11            11  111111111  11         1111111111  111111111  11        11  1111111111
echo        11          11   11         11         11          11     11  111      111  11
echo         11        11    111111     11         11          11     11  11 1    1 11  11111
echo          11  11  11     11         11         11          11     11  11  1  1  11  11
echo            11  11       111111111  111111111  1111111111  111111111  11   11   11  1111111111
echo.
echo.
echo                                 \===================================/
echo                                  \  DESIGNED BY DAVID TOWNSEND II  /
echo                                   \===============================/            
echo                                    \      Mobile_R.I.S.E         /
echo                                     \===========================/
echo.
echo.
echo.
:newvoice
echo.
:startonwake
echo Hello again
%speech% "Hello again"
:start
echo.
set /p C=Please type or say a command: 
echo.
if "%C%"=="hello" goto Rise
if "%C%"=="Rise" goto Rise
if "%C%"=="introduce yourself" goto introduce
if "%C%"=="mute" goto mute
if "%C%"=="unmute" goto unmute
if "%C%"=="shutdown" goto shutdown
if "%C%"=="end process" goto killtask
if "%C%"=="volume up" goto volume up
if "%C%"=="volume down" goto volD
if "%C%"=="help" goto help
if "%C%"=="self destruct" goto autodelete
if "%C%"=="cmd" goto cmd
if "%C%"=="time" goto time
if "%C%"=="date" goto ZDate
if "%C%"=="open program" goto program
if "%C%"=="tasklist" goto tasklist
if "%C%"=="alarm" goto alarm
if "%C%"=="music" goto openmusic
if "%C%"=="playlists" goto playlists
if "%C%"=="lock" goto lock
if "%C%"=="system stat" goto msnstat
if "%C%"=="close" goto close
if "%C%"=="off out" goto offout
if "%C%"=="im back" goto imback
if "%C%"=="stop wmplayer" goto killmos
if "%C%"=="thankyou" goto thankyou2
if "%C%"=="voice mode" goto voicemode
if "%C%"=="speak" goto speak
if "%C%"=="new" start scripts\R.I.S.E.bat && goto start
if "%C%"=="weather" goto weather
if "%C%"=="screen off" goto screenoff
if "%C%"=="screen saver" goto screensaver
if "%C%"=="dim" goto dim
if "%C%"=="dim stop" goto dimstop
if "%C%"=="news" goto news
if "%C%"=="restart rise" cls && call scripts\R.I.S.E.bat && goto start
if "%C%"=="restart system" goto RestartSys
if "%C%"=="system scan" goto sysscan
if "%C%"=="pokemon" goto pokemon
if "%C%"=="wifi passwords" goto wifi
if "%C%"=="system boost" goto sysboost
if "%C%"=="system bits" goto Sysbits
if "%C%"=="system version" goto windows version
if "%C%"=="system info" goto SysInfo
if "%C%"=="config ip" goto configIP
if "%C%"=="pause" goto playpause

::When adding a command to the list above, it must be written as: if "%C%"=="command" goto "result"
%C%
goto start

:Rise
echo Yes Boss?
%speech% "Yes Boss?"
goto start

:introduce
echo Greetings %username%, allow me to introduce myself, my name is Really Intelligent Software Enumerator, but you can call me Rise for short. It is an acronym in case you were wondering.
echo I am a program built by David Townsend. 
echo I am programmed to be similar to Jarvis from the Iron Man movies, which means that I can help you with a variety of tasks as best I can. 
echo I am a DLA, a Digital life Assistant. My main function is to assist you in any way possible to make ones daily life easier.
echo One more thing, if you need to know what commands are available for you to use, use the help command to display all available commands.
%speech% "Greetings %username%, allow me to introduce myself, my name is Really Intelligent Software Enumerator, but you can call me Rise for short. It is an acronym in case you were wondering. I am a program built by David Townsend. I am programmed to be similar to Jarvis from the Iron Man movies, meaning  that I can help you with a variety of tasks as best I can. I am a DLA, a digital life assistant. My main function is to assist you in any way possible to make your daily life easier. One more thing, if you need to know what commands are available to use, use the help command to display all available commands."
goto start

:mute
call scripts\nircmd.exe mutesysvolume 2
echo Volume has now been muted Boss.
%speech% "Volume has now been muted Boss."
goto start

:unmute
call scripts\nircmd.exe mutesysvolume 2
echo Volume has now been restored to its original state.
%speech% "Volume has now been restored to its original state."
goto start

:
echo See you next time Boss.
%speech% "See you next time Boss."
shutdown -s -t 20
echo.
pause
EXIT

:
echo Your system is now restarting
%speech% "Your system is now restarting"
shutdown /r
echo.
pause
EXIT

:killtask
echo Could you please specify the name of the proccess you wish to kill. (name.exe)
%speech% "Could you please specify the name of the proccess you wish to kill." (name.exe)
set /p procname=
taskkill /IM %procname%
echo Selected process has now been killed Boss.
goto start

:volume up
start scripts\nircmd.exe changesysvolume 13107
echo Volume has increased 20% Boss.
%speech% Volume has increased 20 percent Boss.
goto start

:volD
start scripts\nircmd.exe changesysvolume -13107
echo Volume has decreased by 20% Boss.
%speech% Volume has decreased by 20 percent Boss.
goto start

:sysscan
start perfmon /report
echo Your system is now undergoing a scan %username%
%speech% Your system is now undergoing a scan %username%
goto start
echo.

:playpause
start scripts\music\spplaypause.vbs
goto start
echo.

:pokemon
start scripts\Pokemon
echo Enjoy the world of pokemon
%speech% "Enjoy the world of pokemon"
goto start
echo.

:wifi passwords
start scripts\WiFi
%speech% "Here is a list of all wifi passwords that have been stored to the database"
goto start
echo.

:sysboost
start scripts\boost.bat
%speech% "I am currently deleting any unnecessary files from your system, the system will be unharmed"
goto start
echo.

:SysInfo
start scripts\SysInfo
%speech% "All of the information about your system just as you requested"
goto start
echo.

:configIP
start scripts\IPconfig
%speech% "Here is an IP address configuration tool for you %username%"
goto start
echo.

:Sysbits
%speech% "Finding whether or not your system is a 32 bit or 64 bit"
start
 cls
REM Identify OS.
ver | find /i "version 6.2." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 8
ver | find /i "version 6.1." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 7
ver | find /i "version 6.0." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows Vista
ver | find /i "version 5.1." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows XP
ver | find /i "version 5.2." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 2003
ver | find /i "Windows 2000" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 2000
ver | find /i "Windows NT" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows NT
ver | find /i ">Windows ME" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows ME
ver | find /i "Windows 98" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 98
ver | find /i "Windows 95" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 95

REM Identify bit
IF NOT EXIST "%SYSTEMDRIVE%\Program Files (x86)" set $VERSIONBIT=32 bit
IF EXIST "%SYSTEMDRIVE%\Program Files (x86)" set $VERSIONBIT=64 bit

REM Display result
echo %$VERSIONWINDOWS% %$VERSIONBIT%
%speech% "Your system is a %$VERSIONWINDOWS% %$VERSIONBIT%"
echo.
pause
goto start
echo.

:windows version
%speech% "checking the version of windows you are currently running"
start 
For /f "tokens=4,5,6 delims=[]. " %%G in ('ver') Do (set _major=%%G& set _minor=%%H& set _build=%%I) 

Echo Major version: Windows [%_major%]
Echo Minor Version: [%_minor%]
Echo Build: [%_build%]

GOTO sub%_major%-%_minor%

:sub6-0
Echo Windows Vista or Windows 2008
goto next

:sub6-1
Echo Windows 7 or Windows 2008 R2
goto next

:sub6-2
Echo Windows 8 or Windows Server 2012
goto next

:sub6-3
Echo Windows 8.1 or Windows Server 2012
goto next

:sub10-0
:sub10-1
Echo Windows 10 or Windows 2016

:next
Echo Architecture: [%PROCESSOR_ARCHITECTURE%]
%speech% "Your system is currently running on Windows [%_major%]"
pause
goto start
echo.

:help
echo here is a list of available commands:
%speech% "Here is a list of every available command:"
echo Rise
echo hello
echo introduce yourself
echo mute
echo unmute
echo killtask
echo volume up
echo volume down
echo help
echo self destrucT
echo cmd
echo time
echo date
echo open program
echo tasklist
echo alarm
echo playlists
echo lock
echo msnstat
echo close (also exit)
echo off out
echo im back
echo stop wmplayer
echo thankyou
echo voice
echo speak
echo new
echo news
echo weather
echo screen off
echo screen saver
echo dim
echo dim stop
echo contact us
echo restart Rise
echo restart system
echo system scan
echo Pokemon
echo wifi passwords
echo system boost
echo system bits
echo system version
echo system info
echo config ip
echo ipconfig
echo.
echo if you are wanting more information, please direct yourself to the Mobile R.I.S.E folder and open the readme file.
%speech% "if you are wanting more information, please direct yourself to the Mobile Rise folder and open the readme file."
goto start

:autodelete
echo Are you sure Boss? I don't particularly like the idea of erasing myself.
%speech% "Are you sure Boss? I don't particularly like the idea of erasing myself."
:killconfirm
echo.
set /p killpri=Enter your authorization code: 
if "%killpri%"=="yes" goto skull
if "%killpri%"=="no" goto thanks

echo.
echo Authorization code rejected.
goto start

:killsec
if "%killsec%"=="yes"  goto skull
if "%killpri%"=="no" goto thanks
echo.
echo Authorization code rejected.
goto start

:ZDate
@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
%speech% "%mydate%"
goto start
echo.

:weathers
start scripts\weather\parsetoday
echo Here is the weather report for you
goto start

:cmd
echo Command Prompt has now been opened in a new window.
%speech% "Command Prompt has now been opened in a new window for you."
start scripts\cmd.bat
goto start

:time
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2% %AM% %PM%
echo It is currently %timehour%:%timeminute% %AM% %PM%.
%speech% "It is currently %timehour% %timeminute% %AM% %PM%."
::echo The current time is %time% Boss | clip
::start scripts\nircmd.exe speak text ~$clipboard$
goto start

:Thedate

:w7date
set dateyear=%date:~-4%
if %date:~-7,-5%==01 set datemonth=January
if %date:~-7,-5%==02 set datemonth=February
if %date:~-7,-5%==03 set datemonth=March
if %date:~-7,-5%==04 set datemonth=April
if %date:~-7,-5%==05 set datemonth=May
if %date:~-7,-5%==06 set datemonth=June
if %date:~-7,-5%==07 set datemonth=July
if %date:~-7,-5%==08 set datemonth=August
if %date:~-7,-5%==09 set datemonth=September
if %date:~-7,-5%==10 set datemonth=October
if %date:~-7,-5%==11 set datemonth=November
if %date:~-7,-5%==12 set datemonth=December
set dateday=%date:~-10,-8%

echo It is %datemonth% %dateday% %dateyear%.
%speech% "It is %datemonth% %dateday% %dateyear%."
::echo The current date is %date% Boss | clip
::start scripts\nircmd.exe speak text ~$clipboard$
goto start

:xpdate
echo It is %date% Boss.
%speech% "It is %date% Boss."
goto start

:w7dat
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2%

set dateyear=%date:~-4%
if %date:~-7,-5%==01 set datemonth=January
if %date:~-7,-5%==02 set datemonth=February
if %date:~-7,-5%==03 set datemonth=March
if %date:~-7,-5%==04 set datemonth=April
if %date:~-7,-5%==05 set datemonth=May
if %date:~-7,-5%==06 set datemonth=June
if %date:~-7,-5%==07 set datemonth=July
if %date:~-7,-5%==08 set datemonth=August
if %date:~-7,-5%==09 set datemonth=September
if %date:~-7,-5%==10 set datemonth=October
if %date:~-7,-5%==11 set datemonth=November
if %date:~-7,-5%==12 set datemonth=December
set dateday=%date:~-10,-8%

echo It is currently %timeminute% minutes past %timehour% on %datemonth% %dateday% %dateyear% Boss.
%speech% "It is currently %timeminute% minutes past %timehour% on %dateday% %datemonth% %dateyear% Boss."
::echo The current time and date is %time% on the %date% Boss | clip
::start scripts\nircmd.exe speak text ~$clipboard$
goto start

:xpdat
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2%

echo It is currently %timeminute% minutes past %timehour% on %date% Boss.
%speech% "It is currently %timeminute% minutes past %timehour% on %date% Boss."
goto start

:program
echo Here is a list of the defaults:
echo chrome
echo wmplayer
echo notepad
echo If a program you want to open was not listed, please type "other" and then specify the program you want to open
set /p program=What program would you like to start?
if %program%==chrome goto openchrome
if %program%==steam goto opensteam
if %program%==wmplayer goto openmusic
if %program%==notepad goto opennotepad
if %program%==other goto openother
else Unknown program. Please try again.
goto program

:openchrome
start chrome.exe
echo Google chrome has now opened.
%speech% "Google Chrome has now been opened"
goto start

:opensteam
start steam.exe
echo Stean should now be opening
%speech% "Steam should now be opening"
goto start

:openmusic
start wmplayer.exe
echo Windows Media Player should now be open.
%speech% "Windows Media Player should now be open"
goto start

:opennotepad
start notepad.exe
echo Notepad should now have opened Boss.
goto start

:openother
echo.
echo Please type the directory of the program Boss.
set /p progdir=
start %progdir%
echo The program you requested should now have opened Boss.
goto start

:tasklist
echo Current running processes are now been displayed on my screen Boss.
tasklist
goto start

::ALARM

:alarm
echo What time will you be getting up tomorrow Boss? (H:MM)
%speech% "What time will you be getting up tomorrow Boss?"
set /p alarmtime=(Current time is %time:~0,-6%) : 
echo Anything else you wish me to add to your wakeup for motivational purposes Boss?
%speech% "Anything else you wish me to add to your wakeup for motivational purposes Boss?"
set /p extramsg=Extra message (if not, leave empty):
echo.
echo Options:
echo 'No resume' (no)
echo 'Turn screen off' (off)
echo 'Dim the screen' (dim)
echo 'Start screensaver' (screen) 
set /p alarmoption=Choose an option:  
%speech% "Alarm set Boss, goodnight.
echo.
echo Alarm set, Boss. Goodnight. && echo.
echo Sleeping in 3...
ping 123.45.67.89 -n 1 -w 1000 > nul
echo Sleeping in 2...
ping 123.45.67.89 -n 1 -w 1000 > nul
echo Sleeping in 1...
ping 123.45.67.89 -n 1 -w 1000 > nul
if "%alarmoption%"=="dim" start scripts\dimscreen.exe
if "%alarmoption%"=="off" start scripts\nircmd.exe monitor off
if "%alarmoption%"=="screen" start scripts\nircmd.exe screensaver
cls
echo                                           ---------------------------------- 
echo                                           Currently Logged in as: %username%
echo                                           ----------------------------------
echo.
echo                                         R.I.S.E
echo                                       -----------
echo                          Really_intelligent_Software_Enumerator
echo                          ------      %R.I.S.Eserver%      ------
echo                                    ----------------
echo                                     STABLE VERSION
echo                                    ----------------
echo.
echo.
echo.         ____     ___                                                  
echo.        /\  _`\  /\_ \                          __                     
echo.        \ \ \ \_\\//\ \      __     __   _____ /\_\    ___      __     
echo.         \/_\__ \  \ \ \   / __ \ / __ \/\  __ \/\ \ /  _  \  / _  \   
echo.           /\ \ \ \ \_\ \_/\  __//\  __/\ \ \ \ \ \ \/\ \/\ \/\ \ \ \  
echo.           \ `\____\/\____\ \____\ \____\\ \  __/\ \_\ \_\ \_\ \____ \ 
echo.            \/_____/\/____/\/____/\/____/ \ \ \/  \/_/\/_/\/_/\/____\ \...........
echo.                                           \ \_\                /\____/
echo.                                            \/_/                \_/__/ 
::if %alarmtime:~2,1% NEQ : (set alarmtime=0%alarmtime%)
:alarmcheck
if %time:~0,5%==%alarmtime% goto alarmplay
ping 123.45.67.89 -n 1 -w 60000 > nul
goto alarmcheck

:alarmplay
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2%
echo Good morning Boss. It is currently %timeminute% minutes past %timehour%. If you wish to get a head start on the day, I would recommend getting out of bed now Boss. %extramsg%
%speech% "Good morning Boss. It is currently %timeminute% minutes past %timehour%. If you wish to get a head start on the day, I would recommend getting out of bed now. %extramsg%"
if "%alarmoption%"=="screen" start scripts\nircmd.exe monitor on
if "%alarmoption%"=="dim" taskkill /F /IM dimscreen.exe > nul
if "%alarmoption%"=="no" EXIT
set alarmoption=
cls
echo                                                            ==================================
echo                                                            Currently Logged in as: %username%
echo                                                            ==================================
echo.
echo       11            11  111111111  11         1111111111  111111111  11        11  1111111111
echo        11          11   11         11         11          11     11  111      111  11
echo         11        11    111111     11         11          11     11  11 1    1 11  11111
echo          11  11  11     11         11         11          11     11  11  1  1  11  11
echo            11  11       111111111  111111111  1111111111  111111111  11   11   11  1111111111
echo.
echo                                      Mobile_R.I.S.E 
echo                                     ===============
echo                           Really_intelligent_Software_Enumerator
echo                          =======================================
echo.                                      
echo.
echo.
echo.
goto startonwake

:: Music

:Playlists
start C:\Users\%username%\Music\Playlists
goto start

:: /Music

:voicemode
echo Available voice profiles:
echo Windows (Default) [type "windows"]
echo R.I.S.E [type "Rise"]
set /p voiceprofile=Please choose a voice profile:
if %voiceprofile%==windows set speech=scripts\nircmd.exe speak text
if %voiceprofile%==Rise set speech=scripts\speech\swift.exe -d scripts\speech\David -p speech/pitch/shift=0.8
echo Active Voice profile changed to %voiceprofile%.
%speech% "Active voice profile changed to %voiceprofile%"
goto newvoice

:
echo Locking my doors now.
%speech% "Locking my doors now."
set /a delay = %1 + 3
ping -n %delay% localhost > nul
rundll32.exe user32.dll, LockWorkStation
goto start

:msnstat
echo What would you like to set your system status to?
echo Choices are: 
echo shutdown
echo restart
echo lock
echo abort
echo.
set /p msnstatus=Set status to: 
if %msnstatus%==shutdown goto sysdown
if %msnstatus%==restart goto sysrestart
if %msnstatus%==lock goto syslock
if %msnstatus%==abort goto start
pause

:sysdown
echo are you sure? Type Yes or No
set /p sysdownstatus=Set status to:
if %sysdownstatus%==yes goto missiongo
if %sysdownstatus%==no goto missionabort
shutdown -s -t 20
echo.
pause

:missiongo
%speech% "See you next time"
shutdown -s -t 20
pause
EXIT

:missonabort
echo Operation aborted, canceling request
goto start

:sysrestart
echo are you sure? Type Yes or No
set /p syslockstatus=Set status to:
if %syslockstatus%==yes goto sysrestartyes
if %syslockstatus%==no goto sysrestartno
echo.
echo.
goto start

:sysrestartyes
:echo Your system is now restarting
%speech% "Your system is now restarting"
shutdown /r
echo.
pause
EXIT

:sysrestartno
echo Operation aborted, canceling request
goto start

:syslock
echo are you sure? Type Yes or No
set /p syslockstatus=Set status to:
if %syslockstatus%==yes goto Lockyes
if %syslockstatus%==no goto Lockno
echo.
echo.
goto start

:Lockyes
echo Locking my doors now.
%speech% "Locking my doors now."
set /a delay = %1 + 3
ping -n %delay% localhost > nul
rundll32.exe user32.dll, LockWorkStation
goto start

:Lockno
echo Operation aborted, canceling request
goto start

:badwifi
set netsh interface set interface "Wi-Fi" disabled
%speech% "All wireless connections have been disabled"
pause
goto start

:goodwifi
start netsh interface set interface "Wi-Fi" enabled
%speech% "All wireless connections are back up"
pause
goto start

:
start "C:\program files\windows live\messenger\msnmsgr.exe"
echo Instant Messenger contacts browser has been opened.
goto start

:
echo Okay Boss. Have fun.
%speech% "Okay Boss. Have fun."
start scripts\dimscreen.exe
goto start

:imback
echo Hello again. I hope you are having a good time.
%speech% "Hello again. I hope you are having a good time."
taskkill /F /IM dimscreen.exe > nul
goto start

:killmos
taskkill /F /IM wmplayer.exe > nul
IF %ERRORLEVEL% EQU 0 echo Ministry of sound was successfully stopped.
echo.
goto start

:Pause1
set wmplayer 179
echo Windows Media Player has been paused
%speech% "Windows Media Playeer has been paused"
goto start

:thankyou2
echo.
echo My pleasure.
%speech% "My pleasure."
goto start

:close
exit

:speak
echo If you want to exit speak mode, type "quit" 
set /p speechinput=Type a phrase for me to speak:
if "%speechinput%"=="quit" goto start
echo %speechinput%
%speech% "%speechinput%"
goto speak

:screenoff
start scripts\nircmd.exe cmdwait 2000 monitor off
goto start

:screensaver
start scripts\nircmd.exe screensaver
goto start

:dim
start scripts\dimscreen.exe
%speech% "the screen has been dimmed"
goto start

:dimstop
taskkill /IM dimscreen.exe
goto start

:
set /p wlocation= <scripts\weather\location.txt
start scripts\xml\getxml.exe -N --directory-prefix=%temp% %wlocation%
:weathercheck
if NOT EXIST %temp%\Next3DaysRSS.xml (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto weathercheck
)
start scripts\weather\parsetoday.vbs
ping 123.45.67.89 -n 1 -w 500 > nul.
:weatherxmlparsecheck
if NOT EXIST %temp%\mintemp.txt (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto weatherxmlparsecheck
)
set /p maxtemp= <%temp%\maxtemp.txt
set /p mintemp= <%temp%\mintemp.txt
set /p condition= <%temp%\condition.txt
echo.
echo The forecast for today is %condition% with highs of %maxtemp:~10% and lows of %mintemp:~10% degrees.
%speech% "The forecast for today is %condition% with highs of %maxtemp:~10% and lows of %mintemp:~10% degrees."
del %temp%\Next3DaysRSS.xml
del %temp%\forecast.txt
del %temp%\today.txt
del %temp%\condition.txt
del %temp%\maxtemp.txt
del %temp%\mintemp.txt
goto start

:weather
set /p wlocation= <scripts\weather\location.txt
start https://weather.com/weather/tenday/l/USOH0967:1:US 
%speech% "Redirecting you to your local weather"
goto start 
:forecastcheck
if NOT EXIST %temp%\weather.xml (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto forecastcheck
)
start scripts\weather\parseforecast.vbs
ping 123.45.67.89 -n 1 -w 500 > nul.
:forecastxmlparsecheck
if NOT EXIST %temp%\mintemp2.txt (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto forecastxmlparsecheck
)
set /p maxtemp= <%temp%\maxtemp.txt
set /p mintemp= <%temp%\mintemp.txt
set /p condition= <%temp%\condition.txt
set /p maxtemp2= <%temp%\maxtemp2.txt
set /p mintemp2= <%temp%\mintemp2.txt
set /p condition2= <%temp%\condition2.txt
set /p forecastday= <%temp%\day.txt
recho.
echo The forecast for tomorrow is %condition% with highs of %maxtemp:~10% and lows of %mintemp:~10% degrees, and for %forecastday% the forecast is %condition2% with highs of %maxtemp2:~10% and lows of %mintemp2:~10% degrees.
%speech% "The forecast for tomorrow is %condition% with highs of %maxtemp:~10% and lows of %mintemp:~10% degrees, and for %forecastday% the forecast is %condition2% with highs of %maxtemp2:~10% and lows of %mintemp2:~10% degrees."
del %temp%\Next3DaysRSS.xml
del %temp%\forecast.txt
del %temp%\tomorrow.txt
del %temp%\condition.txt
del %temp%\maxtemp.txt
del %temp%\mintemp.txt
del %temp%\aftertomorrow.txt
del %temp%\day.txt
del %temp%\condition2.txt
del %temp%\maxtemp2.txt
del %temp%\mintemp2.txt
goto start

:news
start scripts\xml\getxml.exe -N --directory-prefix=%temp% http://feeds.bbci.co.uk/news/world/rss.xml
:newscheck
if NOT EXIST %temp%\rss.xml (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto newscheck
)
start scripts\news\parsebbcnews.vbs
ping 123.45.67.89 -n 1 -w 500 > nul.
:newsxmlparsecheck
if NOT EXIST %temp%\bbcnews.txt (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto newsxmlparsecheck
)
set /p headline= <%temp%\bbcnews.txt
echo %headline%
echo.
echo %headline 2%
%speech% "%headline%"
del %temp%\rss.xml
del %temp%\bbcnews.txt
goto start

:thanks
echo.
echo 11111111  11    11  11111111  111    11  11   11  11    11  11111111  11    11
echo    11     11    11  11    11  1111   11  11  11    11  11   11    11  11    11
echo    11     11    11  11    11  11 11  11  11 11      1111    11    11  11    11
echo    11     11111111  11111111  11  11 11  1111        11     11    11  11    11
echo    11     11    11  11    11  11   1111  11 11       11     11    11  11    11
echo    11     11    11  11    11  11    111  11  11      11     11111111  11111111
echo.
echo.
goto start

:skull
%speech% "It was nice knowing you %username%, see you on the other side"
echo.
echo.
echo                            .,od88888888888bo,.
echo                        .d88888888888888888888888b.
echo                      .d88888888888888888888888888888b.
echo                   .d888888888888888888888888888888888b.
echo                 .d8888888888888888888888888888888888888b.
echo                d88888888888888888888888888888888888888888b
echo               d8888888888888888888888888888888888888888888b
echo              d888888888888888888888888888888888888888888888
echo              8888888888888888888888888888888888888888888888
echo              8888888888888888888888888888888888888888888888
echo              8888888888888888888888888888888888888888888888
echo              Y88888888888888888888888888888888888888888888P
echo              "8888888888P'   "Y8888888888P"    "Y888888888"
echo               88888888P        Y88888888P        Y88888888
echo               Y8888888          ]888888P          8888888P
echo                Y888888          d888888b          888888P
echo                 Y88888b        d88888888b        d88888P
echo                  Y888888b.   .d88888888888b.   .d888888
echo                   Y8888888888888888P Y8888888888888888
echo                    888888888888888P   Y88888888888888
echo                    "8888888888888[     ]888888888888"
echo                       "Y888888888888888888888888P"
echo                            "Y88888888888888P"
echo                         888b  Y8888888888P  d888
echo                         "888b    \/\/\/    d888"
echo                          Y888bo.  /\/\   .od888P
echo                           Y888888888888888888P
echo                            "Y88888888888888P"
echo                              "Y8888888888P"
echo      d8888bo.                  "Y888888P"                  .od888b
echo     888888888bo.                  """"                  .od8888888
echo     "88888888888b.                                   .od888888888[
echo      d8888888888888bo.                              .od888888888888
echo   d88888888888888888888bo.                     .od8888888888888888b
echo    ]888888888888888888888888bo.            .od8888888888888888888888b=
echo    888888888P" "Y888888888888888bo.     .od88888888888888P" "Y888888P=
echo     Y8888P"           "Y888888888888bd888888888888P"            "Y8P
echo      ""                   "Y8888888888888888P"
echo                             .od8888888888bo.
echo                         .od888888888888888888bo.
echo                      .od8888888888P"  "Y8888888888bo.
echo                  .od8888888888P"        "Y8888888888bo.
echo              .od88888888888P"              "Y88888888888bo.
echo    .od888888888888888888P"                    "Y8888888888888888bo.
echo   Y8888888888888888888P"                         "Y8888888888888888b=
echo   888888888888888888P"                            "Y8888888888888888=
echo    "Y888888888888888                                 "Y88888888888888P=
echo         ""Y8888888P                                  "Y888888P"
echo            "Y8888P                                     Y888P"
echo               """                                       """   
echo.  
pause
