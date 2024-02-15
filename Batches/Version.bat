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
exit