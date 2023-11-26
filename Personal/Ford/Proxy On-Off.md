
>[!warning] To do just once
>Create a new folder in a desired path (like executable in C:)
>Add this folder path in your $Path Windows Variable
>Copy the *proxy.bat* file to the prior created folder

Create a *proxy.bat* empty file, then copy and paste the below code to it.
```
@echo off
set status=
if "%1"=="" (
  echo "Using auto proxy setting. If manual setup is wanted, usage: %0 [ on | off ]"
  set http=
  for /f "delims=*" %%a in ('curl -s -o nul -w "%%{http_code}" browsers.ford.com') do (
  if /i "%%a" == "200" (
    set status=on
  ) else (
    set status=off
  )
  )
) else (
  set status=%1
)

if /i "%status%"=="on" (
  echo Proxy On for all inside Ford network and VPN usages
  setx http_proxy http://internet.ford.com:83 >nul
  setx https_proxy http://internet.ford.com:83 >nul
  setx no_proxy localhost,127.0.0.1,19.0.0.0/8,10.0.0.0/8,172.16.0.0/12,.ford.com >nul
  setx all_proxy http://internet.ford.com:83 >nul
  set http_proxy=http://internet.ford.com:83
  set https_proxy=http://internet.ford.com:83
  set no_proxy=localhost,127.0.0.1,19.0.0.0/8,10.0.0.0/8,172.16.0.0/12,.ford.com
  set all_proxy=http://internet.ford.com:83
  echo ON - Done!
) else if /i "%status%"=="off" (
  echo Proxy Off for all outside Ford network and VPN usages
  setx ALL_PROXY "" >nul
  setx HTTP_PROXY "" >nul
  setx HTTPS_PROXY "" >nul
  setx NO_PROXY "" >nul
  set  https_proxy=
  set  no_proxy=
  set  ALL_PROXY=
  set  HTTP_PROXY=
  echo OFF - Done!
) else (
  echo Error: Invalid argument
  echo "Usage: %0 [on|off] - received: %status%"
)

:end
```

In the Windows Prompt or PowerShell, execute
```
proxy
```
to call the script.

The terminal session MUST be restarted to take effect.






