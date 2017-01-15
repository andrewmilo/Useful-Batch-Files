@echo off

set script=

if NOT "%~1"=="" ( set script="%~1" & goto :params )

echo "Enter the full script path, or just continue if there is only 1 local python script"

set /p script=":"

:params
echo "Enter input parameters, separated by spaces"

set /p params=":"

if "%script%"=="" (

    for %%s in (*.*) do (
        
        if "%%~xs"==".py" ( set script=%%~nxs & goto :end )
    )
)

:end
python %script% %params%

pause