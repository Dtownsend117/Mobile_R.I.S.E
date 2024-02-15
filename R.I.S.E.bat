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
color 9
setlocal
:: /STARTUP
@echo off
color 0f
%speech% "Currently booting up"
echo.
echo Initalizing...           Please Wait
echo ---------------------------------------
echo [][][]                   T- 03 seconds]
echo ---------------------------------------
ping localhost -n 3 >nul
%speech% "Importing data for %username%"
cls
echo.
echo Scanning system..           Please Wait
echo ---------------------------------------
echo [][]                     T- 02 seconds]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo Finalizing.                 Please Wait
echo ---------------------------------------
echo []                       T- 01 seconds]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo                          Setup Complete
echo ---------------------------------------
echo                          T- 00 seconds]
echo ---------------------------------------
goto restart
:restart
echo.   
echo.                                                                                                                                                                          
echo                                                                                                                    Today is: %date%  
echo                                                                                                                    ===========================
echo                                                                                                                    The time is: %time%
echo                                                                                                                    =========================== 
echo.   
echo.    
echo.
echo.
echo                                                                                                                    ================================== 
echo                                                                                                                    Currently Logged in as: %username%
echo                                                                                                                    ==================================
echo.
echo   11            11  111111111  11         1111111111  111111111  11        11  1111111111       11      11  111111111  111111111  111111111
echo    11          11   11         11         11          11     11  111      111  11               11      11  111        11         11     11
echo     11        11    111111     11         11          11     11  11 1    1 11  11111            11      11     111     111111     1111111
echo      11  11  11     11         11         11          11     11  11  1  1  11  11               11      11        111  11         11     1
echo        11  11       111111111  111111111  1111111111  111111111  11   11   11  1111111111  111  1111111111  111111111  111111111  11     11
echo                                                                                              11 
echo                                                                                             11
echo. 
echo.
echo                                 \===================================/
echo                                  \  DESIGNED BY DAVID TOWNSEND II  /
echo                                   \===============================/            
echo                                    \          R.I.S.E            /
echo                                     \===========================/
echo.
echo.
echo.
:newvoice
echo.
:startonwake
echo Greetings %username%, I am online and ready, how may I be of assistance?
%speech% "Greetings %username%, I am online and ready, how may I be of assistance?"
:start
echo.
set /p C=Please say a command: 
echo.
if "%C%"=="hello" goto Rise
if "%C%"=="rise" goto Rise
if "%C%"=="introduce yourself" goto introduce
if "%C%"=="mute" goto mute
if "%C%"=="unmute" goto unmute
if "%C%"=="end process" goto killtask
if "%C%"=="volume up" goto volume up
if "%C%"=="volume down" goto volD
if "%C%"=="help" goto help
if "%C%"=="self destruct" goto autodelete
if "%C%"=="time" goto time
if "%C%"=="date" goto ZDate
if "%C%"=="open program" goto program
if "%C%"=="tasklist" goto tasklist
if "%C%"=="alarm" goto alarm
if "%C%"=="media player" goto openmusic
if "%C%"=="playlists" goto playlists
if "%C%"=="system stat" goto msnstat
if "%C%"=="close" goto close
if "%C%"=="stop player" goto killmos
if "%C%"=="thankyou" goto thankyou2
if "%C%"=="change voice" goto voicemode
if "%C%"=="speak" goto speak
if "%C%"=="new" start R.I.S.E && exit
if "%C%"=="weather" goto weather
if "%C%"=="screen off" goto screenoff
if "%C%"=="screen saver" goto screensaver
if "%C%"=="dim" goto dim
if "%C%"=="dim stop" goto dimstop
if "%C%"=="news" goto news
if "%C%"=="system scan" goto sysscan
if "%C%"=="pokemon" goto pokemon
if "%C%"=="wifi status" goto wifi
if "%C%"=="system boost" goto sysboost
if "%C%"=="system version" goto windows version
if "%C%"=="system info" goto SysInfo
if "%C%"=="config ip" goto configIP
if "%C%"=="ipconfig" goto ipconfig
if "%C%"=="contact us" goto website
if "%C%"=="devices and drivers" goto Devdrive
if "%C%"=="empty trash" goto trash
if "%C%"=="internet speed test" goto IntSpeed
if "%C%"=="search google" goto GSearch
if "%C%"=="health report" goto HealthReprt
if "%C%"=="open start" goto OpenStart
if "%C%"=="system options" goto SysOptions
if "%C%"=="program options" goto RiseOptions
if "%C%"== "network options" goto NetOptions
if "%C%"=="diagram" goto diagram
if "%C%"=="extras" goto Xtras
if "%C%"=="user" goto UserInfo

::When adding a command to the list above, it must be written as: if "%C%"=="input" goto "commandString"
%C%
goto start

:Rise
echo Yes %username%?
%speech% "Yes %username%?"
goto start

:introduce
echo Greetings %username%, allow me to introduce myself, my name is Really Intelligent Software Emulator, but you can call me Rise for short. It is an acronym in case you were wondering.
echo I am a program built by David Townsend. 
echo I am programmed to be similar to Jarvis from the Iron Man movies, which means that I can help you with a variety of tasks as best I can. 
echo I am a DLA, a Digital life Assistant. My main function is to assist you in any way possible to make ones daily life easier.
echo One more thing, if you need to know what commands are available for you to use, use the help command to display all available commands.
%speech% "Greetings %username%, allow me to introduce myself, my name is Really Intelligent Software Enumerator, but you can call me Rise for short. It is an acronym in case you were wondering. I am a program built by David Townsend. I am programmed to be similar to Jarvis from the Iron Man movies, meaning  that I can help you with a variety of tasks as best I can. I am a DLA, a digital life assistant. My main function is to assist you in any way possible to make your daily life easier. One more thing, if you need to know what commands are available to use, use the help command to display all available commands."
goto start

:mute
call scripts\nircmd.exe mutesysvolume 2
echo Volume has now been muted %username%.
%speech% "Volume has now been muted %username%."
goto start

:unmute
call scripts\nircmd.exe mutesysvolume 2
echo Volume has now been restored to its original state.
%speech% "Volume has now been restored to its original state."
goto start

:HealthReprt
start scripts\Batches\Health
%speech% "Generating a health report of the system, this may take a minute"
goto stast
echo.

:diagram
start Media\Diagram.jpg
%speech% "Here is a diagram of my commands"
echo. 
goto start

:UserInfo
%speech% "The current user is %username%
echo The current user is %username%
goto start 
echo.

:SysOptions
echo here are the commands that are specifically for the system:
%speech% "Here are the commands that are specifically for the system"
echo 1.) scan
echo 2.) boost
echo 3.) version
echo 4.) info
echo 5.) health report
echo 6.) end process
echo 7.) tasklist
echo 8.) empty trash
echo 9.) devices and drivers
echo 10.) explain
echo 11.) none
set /p program=Please type the command you wish to execute: 
if %program%==scan goto sysscan
if %program%==1 goto scan
if %program%==boost goto sysboost
if %program%==2 goto sysboost
if %program%==version goto windows version
if %program%==3 goto windows version
if %program%==info goto SysInfo
if %program%==4 goto SysInfo
if %program%==health report goto powercfg -energy && goto start
if %program%==5 goto powercfg -energy && goto start
if %program%==end process goto killtask
if %program%==6 goto killtask
if %program%==tasklist goto tasklist
if %program%==7 goto tasklist
if %program%==empty trash goto trash
if %program%==8 goto trash
if %program%==devices and drivers goto Devdrive
if %program%==9 goto Devdrive
if %program%==explain goto ExplainSysOp
if %program%==10 goto ExplainSysOp
if %program%==none goto start
if %program%==11 goto start
else Unknown program. Please try again.
goto program

:ExplainSysOp
echo.
echo Options one will open the buit in scanner of windows 10, it will scan the entire system for you.
echo.
echo Option two is a simple file that gives the system a small speed boost in performance.
echo.
echo Option three will check and see what version of windows the system is currently running.
echo.
echo Option four will gather all of the info of the system and display it in a new window (graphic cards, processors, storage, etc..).
echo.
echo Option five is a health report that will give you a detailed summary of the overall health of your system.
echo.
echo Option six allows the user to stop any running task.
echo.
echo Option seven displays a list of every running task, I recommend using this command to find out which task(s) you wish to stop.
echo.
echo Option eight will empty the recycling bin.
echo.
echo Option nine will display a list of every device and driver connected to the system.
echo.
pause
goto start

:RiseOptions
echo Here are the commands that are specifically for this program: 
%speech% "Here are the commands that are specifically for this program"
echo 1.) new
echo 2.) restart
echo 3.) close
echo 4.) self destruct
echo 5.) contact us
echo 6.) give feedback
echo 7.) commands
echo 8.) explain
echo 9.) none
set /p program=Please type the command you wish to execute: 
if %program%==new goto NewWin
if %program%==1 goto NewWin
if %program%==restart goto Restrt
if %program%==2 goto Restrt
if %program%==close goto close
if %program%==3 goto close
if %program%==self destruct goto autodelete
if %program%==4 goto autodelete
if %program%==contact us goto website
if %program%==5 goto website
if %program%==give feedback goto website
if %program%==6 goto website
if %program%==commands goto help
if %program%==7 goto help
if %program%==explain goto ExplainRiseCom
if %program%==8 goto ExplainNetCom
if %program%==none goto start 
if %program%==9 goto start
else Unknown program. Please try again.
goto program

:NewWin
start R.I.S.E
exit

:Restrt
start scripts\Batches\R.I.S.E
exit

:ExplainRiseCom
echo.
echo Option one will open a new window of this program.
echo.
echo Option two will open a new window of this program without the countdown
echo.
echo Option three will close the program immediately
echo.
echo Option four will give the user the option to kill all instances of the program (doesn't delete the program from the system)
echo.
pause 
goto start

:NetOptions
echo Here are the commands that are specifically for the network: 
%speech% "Here are the commands that are specifically for the network"
echo 1.) wifi passwords
echo 2.) config ip
echo 3.) ipconfig
echo 4.) speed test
echo 5.) explain
echo 6.) none
set /p program=Please type the command you wish to execute:
if %program%==wifi info goto WifiPass
if %program%==1 goto WifiPass
if %program%==config ip goto ConfigIP
if %program%==2 goto ConfigIP
if %program%==ipconfig goto IPConfig 
if %program%==3 goto IPConfig
if %program%==speed test goto NetSpeed
if %program%==4 goto NetSpeed
if %program%==explain goto ExplainNetCom
if %program%==5 goto ExplainNetCom
if %program%==none goto start 
if %program%==6 goto start
else Unknown program. Please try again.
goto program

:WifiPass
start scripts\Batches\WifiInfo
echo.
goto start

:ConfigIP
start scripts\Batches\IPconfig
%speech% "Here is an IP configuration tool"
echo. 
goto start

:IPConfig
start scripts\Batches\IPconfig2
echo.
goto start

:NetSpeed
start scripts\Batches\speed
echo.
goto start

:ExplainNetCom
echo.
echo Option one will show all wifi passwords that have been saved to the system.
echo.
echo Option two will open a tool that allows the user to customize the IP Address and similar settings.
echo.
echo Option three will show the current IP Address status.
echo.
echo Option four will do a simple test of the network's speed.
echo.
pause
goto start

:Xtras
echo Here you will find commands for some easter eggs: 
%speech% "Here you will find commands for some easter eggs"
echo 1.) pokemon
echo 2.) search google
echo 3.) alarm
echo 4.) weather
echo 5.) news
echo 6.) command diagram
echo 6.) explain
echo 7.) none
set /p program=Please type the command you wish to execute: 
if %program%==pokemon goto pokemon
if %program%==1 goto pokemon
if %program%==search google goto GSearch
if %program%==2 goto GSearch
if %program%==alarm goto alarm
if %program%==3 goto alarm
if %program%==weather goto weather
if %program%==4 goto weather
if %program%==news goto news
if %program%==5 goto news
if %program%==command diagram goto diagram
if %program%==6 goto diagram
if %program%==explain goto ExplainXtraCom
if %program%==7 goto ExplainXtraCom
if %program%==none goto start
if %program%==8 goto start
else Unknown program. Please try again.
goto program

:ExplainXtraCom
echo.
echo Option one opens a new window for the user to play a partical pokemon game in command prompt.
echo.
echo Option two opens up a file to search google.
echo.
echo Option three allows the user to set an alarm with an optional message.
echo.
echo Option four opens up the current weather of the devices location in a new window.
echo.
echo Option five informs the user of the top news story.
echo.
echo Option six will open a diagram of the commands and what they do.
echo.
pause
goto start

:
echo See you next time %username%.
%speech% "See you next time %username%."
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

:Disable Screen saver
start nircmd.exe regsetval sz "HKCU\control panel\desktop" "ScreenSaveActive" 0
goto start
echo.

:RestartIIS
start nircmd.exe service restart w3svc
goto start
echo.

:Restart MySQL
start nircmd.exe service restart MySql
goto start
echo.

:Open Disk drive
start nircmd.exe cdrom open j:
goto start
echo.

:killtask
echo Could you please specify the name of the proccess you wish to kill. (name.exe)
%speech% "Could you please specify the name of the proccess you wish to kill." (name.exe)
set /p procname=
taskkill /IM %procname%
echo Selected process has now been killed %username%.
goto start

:volume up
start scripts\nircmd.exe changesysvolume 13107
echo Volume has increased 20% %username%.
%speech% Volume has increased 20 percent %username%.
goto start

:trash
start scripts\nircmd.exe emptybin
%speech% "The recycling bin has been cleared"
goto start

:Internet 
start 
goto start

:HealthReport
start powercfg -energy
goto start
echo.

:ShowNet
netsh wlan show networks bssid
pause
goto start 
echo.

:volD
start scripts\nircmd.exe changesysvolume -13107
echo Volume has decreased by 20% %username%.
%speech% Volume has decreased by 20 percent %username%.
goto start

:sysscan
start perfmon /report
echo Your system is now undergoing a scan %username%
%speech% Your system is now undergoing a scan %username%
goto start
echo.

:IntSpeed
start scripts\Batches\Speed.bat
goto start 
echo.

:GSearch
start scripts\Batches\Search
goto start
echo.

:
echo Type to Search.
set/p "keyw=Keyword is "
start https://www.google.com/search?q=%keyw%&sourceid=ie7&rls=com.microsoft:en-US:IE-Address&ie=&oe=
goto start
echo.

:screenshot
start scripts\nircmd.exe cmdwait 2000 savescreenshot "C:\Desktop"
goto start
echo.

:Devdrive
start scripts\Batches\DeviceDrives.bat
%speech% "Collecting a list of every connected device and driver on the system, %username%"
goto start 
echo.

:pokemon
start scripts\Batches\Pokemon
echo Enjoy the world of pokemon
%speech% "Enjoy the world of pokemon"
goto start
echo.

:wifi
start scripts\Batches\WiFiInfo
%speech% "Here are any saved wifi passwords and all available connections"
goto start
echo.

:sysboost
start scripts\Batches\boost.bat
%speech% "I am currently deleting any unnecessary files from your system, the system will be unharmed"
goto start
echo.

:SysInfo
start scripts\Batches\SysInfo
%speech% "All of the information about your system just as you requested"
goto start
echo.

:OpenStart
start scripts\Batches\OpenStart.exe
goto start
echo.

:website
goto start

:configIP
start scripts\Batches\IPconfig
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
if %errorlevel%==0 set $VERSIONWINDOWS=10
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
pause
goto start
echo.

:windows version
%speech% "checking the version of windows you are currently running"
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

:help
echo here is a list of available commands, they are case sensitive:
%speech% "Here is a list of every available command, they are case sensitive"
echo rise
echo hello
echo introduce yourself
echo mute
echo unmute
echo endprocess
echo volume up
echo volume down
echo help
echo self destruct
echo time
echo date
echo open program
echo tasklist
echo alarm
echo playlists
echo system stat
echo close (also exit)
echo music
echo stop wmplayer
echo thankyou
echo change voice
echo speak
echo new
echo news
echo weather
echo screen off
echo screen saver
echo dim
echo dim stop
echo contact us
echo system scan
echo Pokemon
echo wifi status
echo system boost
echo system version
echo system info
echo config ip
echo ipconfig
echo devices and drivers
echo empty trash
echo internet speeed test
echo search google
echo health report
echo open start
echo system options
echo program options
echo network options
echo diagram
echo extras
echo user
echo.
echo if you are wanting more information, please direct yourself to the original folder and open the readme file.
%speech% "if you are wanting more information, please direct yourself to the original folder and open the readme file."
goto start

:autodelete
echo Are you sure %username%? I don't particularly like the idea of erasing myself.
%speech% "Are you sure %username%? I don't particularly like the idea of erasing myself."
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
%speech% "Today is %mydate%"
echo %mydate%
goto start
echo.

:weathers
start scripts\weather\parsetoday
echo Here is the weather report for you
goto start

:cmd
echo Command Prompt has now been opened in a new window.
%speech% "Command Prompt has now been opened in a new window for you."
start scripts\Batches\cmd.bat
goto start

:time
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2% %AM% %PM%
echo It is currently %timehour%:%timeminute% %AM% %PM%.
%speech% "It is currently %timehour% %timeminute% %AM% %PM%"
::echo The current time is %time% %username% | clip
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
::echo The current date is %date% %username% | clip
::start scripts\nircmd.exe speak text ~$clipboard$
goto start

:xpdate
echo It is %date% %username%.
%speech% "It is %date% %username%."
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

echo It is currently %timeminute% minutes past %timehour% on %datemonth% %dateday% %dateyear% %username%.
%speech% "It is currently %timeminute% minutes past %timehour% on %dateday% %datemonth% %dateyear% %username%."
::echo The current time and date is %time% on the %date% %username% | clip
::start scripts\nircmd.exe speak text ~$clipboard$
goto start

:xpdat
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2%

echo It is currently %timeminute% minutes past %timehour% on %date% %username%.
%speech% "It is currently %timeminute% minutes past %timehour% on %date% %username%."
goto start

:program
echo Here is a list of the defaults:
echo chrome
echo wmplayer
echo notepad
echo Command Prompt (cmd)
echo other
echo none
set /p program=What program would you like to start?
if %program%==chrome goto openchrome
if %program%==steam goto opensteam
if %program%==wmplayer goto openmusic
if %program%==notepad goto opennotepad
if %program%==Command Prompt goto opencmd
if %program%==cmd goto opencmd
if %program%==other goto openother
if %program%==none goto start
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
echo Notepad should now have opened %username%.
goto start

:opencmd
start cmd
%speech% "The command prompt should now be open"
goto start

:openother
echo.
echo Please type the directory of the program %username%.
set /p progdir=
start %progdir%
echo The program you requested should now be open.
%speech% "The program you requested should now be open."
goto start

:tasklist
echo Every process is now displayed on screen.
%speech% "Every process is now displayed on screen"
tasklist
goto start

::ALARM

:alarm
echo What time will you be getting up tomorrow? (H:MM)
%speech% "What time will you be getting up tomorrow?"
set /p alarmtime=(Current time is %time:~0,-6%) : 
echo Anything else you wish for me to add to your wakeup for motivational purposes?
%speech% "Anything else you wish for me to add to your wakeup for motivational purposes?"
set /p extramsg=Extra message (if not, leave empty):
echo.
echo Options:
echo 'No resume' (no)
echo 'Turn screen off' (off)
echo 'Dim the screen' (dim)
echo 'Start screensaver' (screen) 
set /p alarmoption=Choose an option:  
%speech% "Alarm set, goodnight."
echo.
echo Alarm set. Goodnight. && echo.
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
echo                                     BETA VERSION I
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
echo Good morning %username%. It is currently %timeminute% minutes past %timehour%. If you wish to get a head start on the day, I would recommend getting out of bed now %username%. %extramsg%
%speech% "Good morning. It is currently %timeminute% minutes past %timehour%. If you wish to get a head start on the day, I would recommend getting out of bed now. %extramsg%"
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
echo R.I.S.E [type "rise"]
set /p voiceprofile=Please choose a voice profile:
if %voiceprofile%==windows set speech=scripts\nircmd.exe speak text
if %voiceprofile%==rise set speech=scripts\speech\swift.exe -d scripts\speech\David -p speech/pitch/shift=0.8
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
echo Your choices are: 
echo shutdown
echo restart
echo lock
echo logoff
echo abort
echo.
set /p msnstatus=Set status to: 
if %msnstatus%==shutdown goto sysdown
if %msnstatus%==restart goto sysrestart
if %msnstatus%==lock goto syslock
if %msnstatus%==logoff goto logoff
if %msnstatus%==abort %speech% "Status cancelled" && goto start
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

:logoff
echo are you sure? Type yes or no.
set /p Logoffstatus=Set status to:
if %Logoffstatus%==yes goto LogoffGo
if %Logoffstatus%==no goto LogoffNo
echo. 
echo.
goto start

:LogoffGo
%speech% "Logging off"
start nircmd.exe exitwin logoff
exit

:LogoffNo
%speech% "Operation aborted, cancelling request"
echo.
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
echo Okay %username%. Have fun.
%speech% "Okay %username%. Have fun."
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
start scripts\xml\getxml.exe -N --directory-prefix=%temp% http://feeds.bbci.co.uk/news/world/us_and_canada/rss.xml
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
%speech% "%headline%"
del %temp%\rss.xml
del %temp%\bbcnews.txt
goto start
echo.
%speech% "%headline%"
del %temp%\rss.xml
del %temp%\bbcnews.txt
goto start
echo.

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
