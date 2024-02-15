@echo off
mkdir c:\speedtmp
copy "\\<SERVER>\<SHARE>\wget.exe" "C:\speedtmp" /y

C:\speedtmp\wget.exe -o c:\speedtmp\output.txt -O c:\speedtmp\test --ftp-user=<USERNAME> --ftp-password=<PASSWORD> ftp://ftp.<SITE>.com/test

find /i " KB/s)" c:\speedtmp\output.txt
if errorlevel 1 goto MB
find /i " MB/s)" c:\speedtmp\output.txt
if errorlevel 1 goto KB
goto error

:KB
set range=KB/s
for /f "tokens=3 delims= " %%a in ('find /i "KB/s)" c:\speedtmp\output.txt') do set speed=%%a
set speed=%speed:~1.4%
goto next

:MB
set range=MB/s
for /f "tokens=3 delims= " %%a in ('find /i "MB/s)" c:\speedtmp\output.txt') do set speed=%%a
set speed=%speed:~1.4%
goto next

:error
echo Your speed cannot be detected!
goto end

:next
cls
echo Your speed is: %speed% %range%
echo.
pause

:end
rmdir /s /q C:\speedtmp
exit