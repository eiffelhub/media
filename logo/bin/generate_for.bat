@echo off
setlocal
set TMP_CWD=%cd%
chdir %1
FOR %%I IN (*.svg) DO call %~dp0svg_to.bat %%I %2 %3 %4

chdir %TMP_CWD%
endlocal
