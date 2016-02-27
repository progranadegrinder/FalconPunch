@echo off
color 4a
IF EXIST src\ip.txt goto settingip
echo This is your first time running this! 
echo Please put the IP of your console here.
set /p ip=
echo %ip%>>"src\ip.txt"
goto sending
:settingip
set /p ip=<"src\ip.txt"
:sending
java -jar src\sockfile.jar %ip% %1%
pause