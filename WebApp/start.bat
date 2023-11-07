@echo off
call npm run build
if %ERRORLEVEL% neq 0 pause & exit

call npm run start -- -s -p 443 -k client-1.local.key -c client-1.local.crt
if %ERRORLEVEL% neq 0 pause & exit

cmd /k