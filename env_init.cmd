@echo off

echo Initializing environment...

rem Initialize VS Environment Variables
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\Tools\VsDevCmd.bat"

set dircmd=/ogn /p

if NOT "%1" == "" (
  cd /d "%1"
)

echo Environment Created.  Welcome :D
