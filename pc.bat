@echo off
color a
setlocal
:menu

echo Select an option:
echo 1. Wifi Password Show
echo 2. System Information
echo 3. PC IP Address
echo 4. Exit
echo 5. Ping

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    color a
    Netsh wlan show profiles
    set /p profilename=Enter the Wireless Profile Name: 
    Netsh wlan show profile name="%profilename%" key=clear
    echo %profilename% Just in front of the Key Content of the wifi password
    pause
    goto menu
) else if "%choice%"=="2" (
    echo You selected Option 2.
    systeminfo
    goto menu
) else if "%choice%"=="3" (
    echo You selected Option 3.
    ipconfig
    goto menu
) else if "%choice%"=="4" (
    echo Exiting...

) else if "%choice%"=="5" (
    echo Website Infomation Gatharing Commandes
    echo Example = Ping www.google.com
    set /p website=Enter the Website Name:
    ping "%website%"
    goto menu

)
 else (
    echo Invalid choice. Please select a valid option.
    goto menu
)

endlocal
