@echo off
set lookup=HostNames.txt
set OUTPUTFILE=Results.txt
FOR /F %%i in (%lookup%) do ( 
 FOR /F "skip=4 delims=: tokens=2" %%j in ('echo(^|nslookup %%i') do @echo%%j >> %OUTPUTFILE%
)
pause

::useage -> create a hostname(doamin) file and name it HostNames.txt tehn execute this batch file