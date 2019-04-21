@echo off
color 0F
title Shutdown Menu
:top
echo.
echo.
echo.
echo a. Cancel and quit the batch
echo b. Shutdown with the defined time
echo z. How much do I add...
echo.
echo     ---- ADD DAYS -------------- ADD HOURS ----
echo    ----                  -                  ----
echo    ---   c. Add 1 day    -   g. Add 1 hour   ---
echo    ---   d. Add 5 days   -   h. Add 8 hours  ---
echo    ---   e. Add 30 days  -   i. Add 16 hours ---
echo    ---   f. Add 365 days -                   ---
echo    ----                  -                  ----
echo    ----- ADD MINUTES --------- ADD SECONDS -----
echo    ----                  -                  ----
echo    --- j. Add 1 minute   -  n. Add 1 second  ---
echo    --- k. Add 5 minutes  -  o. Add 5 seconds ---
echo    --- l. Add 15 minutes -  p. Add 15 seconds --
echo    --- m. Add 30 minutes -  q. Add 30 seconds --
echo    ----                  -                  ----
echo     -------------------------------------------
echo.
echo r. Reboot
echo s. Logoff
echo t. Hibernate
echo x. Shutdown without delay
echo.
echo.
set /p opt=Add time or perform the shutdown : 
if not '%opt%'=='' set opt=%opt:~0,1%
if '%opt%'=='a' goto end
if '%opt%'=='b' goto b
if '%opt%'=='c' goto c
if '%opt%'=='d' goto d
if '%opt%'=='e' goto e
if '%opt%'=='f' goto f
if '%opt%'=='g' goto g
if '%opt%'=='h' goto h
if '%opt%'=='i' goto i
if '%opt%'=='j' goto j
if '%opt%'=='k' goto k
if '%opt%'=='l' goto l
if '%opt%'=='m' goto m
if '%opt%'=='n' goto n 
if '%opt%'=='o' goto o
if '%opt%'=='p' goto p
if '%opt%'=='q' goto q
if '%opt%'=='r' goto r
if '%opt%'=='s' goto s
if '%opt%'=='t' goto t
if '%opt%'=='x' goto x
if '%opt%'=='z' goto z
echo The option ' %opt% ' is not a valid one.
echo.
pause
goto top
:b
shutdown.exe /s /t %input%
goto end
:c
set /a input=%input%+86400
goto top
:d
set /a input=%input%+432000
goto top
:e
set /a input=%input%+2592000
goto top
:f
set /a input=%input%+31536000
goto top
:g
set /a input=%input%+3600
goto top
:h
set /a input=%input%+28800
goto top
:i
set /a input=%input%+57600
goto top
:j
set /a input=%input%+60
goto top
:k
set /a input=%input%+300
goto top
:l
set /a input=%input%+900
goto top
:m
set /a input=%input%+1800
goto top
:n
set /a input=%input%+1
goto top
:o
set /a input=%input%+5
goto top
:p
set /a input=%input%+15
goto top
:q
set /a input=%input%+30
goto top
:r
shutdown /r
goto end
:s
shutdown /l
goto end
:t
shutdown /h
goto end
:x
shutdown /p
goto end
:z
echo The total inputs are: %input% seconds.
pause
goto top
:end
