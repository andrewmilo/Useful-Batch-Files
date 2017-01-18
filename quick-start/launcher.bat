@echo off &SETLOCAL

for /F "tokens=1,2,3 delims=," %%A in (apps.txt) do ( call set "strings=%%strings%%%%A" && echo %%A %%B )

choice /c %strings% /n

echo %errorlevel%
set /a level = "%errorlevel%-1"

for /F "skip= %level% tokens=1,2,3 delims=," %%A in (apps.txt) do ( start %%C & exit >nul )

pause