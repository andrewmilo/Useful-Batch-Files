@echo off &SETLOCAL

for /F "tokens=1,2,3 delims=," %%A in (apps.txt) do ( call set "strings=%%strings%%%%A" && echo %%A %%B )

choice /c %strings% /n

echo %errorlevel%
set /a level = "%errorlevel%-1"

set "skip=skip=%level%"
echo %skip%

if %level% LSS 1 ( set "skip=" & echo %skip% )

for /F "%skip% tokens=1,2,3 delims=," %%A in (apps.txt) do ( start %%C & exit >nul )

pause