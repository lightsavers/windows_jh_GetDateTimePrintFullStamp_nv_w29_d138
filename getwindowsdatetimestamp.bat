
REM author: lightsavers

@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"

REM Optional
echo datestamp: "%datestamp%"

REM Optional
echo timestamp: "%timestamp%"

REM Required
echo fullstamp: "%fullstamp%"

REM To run, open a Command Prompt (CMD) window
REM switch to directory that host bat file
REM type filaname and press enter
