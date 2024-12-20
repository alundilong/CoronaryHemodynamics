:
@echo off

%~d0
cd "%~dp0.."
set BLUECFDPATH=%CD%
cd "%~dp0"

rem hack in our own generic user-name
call :BLUECFDPATH "%BLUECFDPATH%"
goto :EOF

:BLUECFDPATH
IF NOT EXIST "home\ofuser\.blueCFDOrigin" goto :BLUECFDPATHCREATE

set /p CurrentPath=<home\ofuser\.blueCFDOrigin
IF "%~fs1" == "%CurrentPath%" goto :EOF

:BLUECFDPATHCREATE
echo %~fs1> home\ofuser\.blueCFDOrigin
goto :EOF

:EOF
