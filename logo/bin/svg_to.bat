@echo off
setlocal

call %~dp0etc.cmd

set TMPBASENAME=%~n1
if exist "%2_%3x%4\%TMPBASENAME%.%2" goto skipped
goto export


:skipped
@echo Skipped %TMPBASENAME% to %2 (size %3x%4) : already exists!
goto end

:export
@echo Convert %TMPBASENAME% to %2 (size %3x%4)
if not exist %2_%3x%4 mkdir %2_%3x%4
%INKSCAPE_CMD% -z --g-fatal-warnings --export-%2="%2_%3x%4\%TMPBASENAME%.%2" --export-width=%3 --export-height=%4 "%TMPBASENAME%.svg" 
goto end

:end
endlocal
