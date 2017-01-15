@echo off

echo "Enter the full script path, or just continue if there is only 1 local python script"

set /p script=":"

if [%script%]==[] (

    for %%s in (*.*) do (
        
        if "%%~xs"==".py" ( set script=%%~nxs & goto :end )
    )
)

:end
python %script% %*

pause