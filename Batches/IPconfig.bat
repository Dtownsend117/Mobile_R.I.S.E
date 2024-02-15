cls
@ECHO off
MODE CON: LINES=28 COLS=100

:again

ECHO                                 \===================================/
ECHO                                  \  DESIGNED BY DAVID TOWNSEND II  /
ECHO                                   \===============================/
ECHO.
ECHO                                       \=======================/
ECHO                                        \  IP Config. Script  /
ECHO                                         \===================/
REM *Enter Variables*
REM *Get NIC IP Info*
ECHO.
ECHO              __________________________________________________________________________
ECHO             [                                                                          ]
ECHO             [                                                                          ]
ECHO             [   [1] Change stack to static IP address, mask, and DNS Server(s)         ]
ECHO             [                                                                          ]   
ECHO             [   [2] Change stack to DHCP network configuration                         ]
ECHO             [                                                                          ] 
ECHO             [   [3] Change stack to SB200 IP configuration                             ]
ECHO             [                                                                          ] 
ECHO             [   [4] Change stack to SB600B IP configuration                            ]
ECHO             [                                                                          ] 
ECHO             [   [5] Change stack to T_U configuration                                  ]
ECHO             [                                                                          ] 
ECHO             [   [6] Change stack to T_P configuration                                  ]
ECHO             [                                                                          ] 
ECHO             [   [7] Quit                                                               ]
ECHO             [                                                                          ]
ECHO             [__________________________________________________________________________]  
ECHO.            
ECHO.
set /p choice=Please choose a configuration 1-7:  
ECHO.
if [%choice%]==[7] goto quit
if [%choice%]==[] goto again
if [%choice%]==[1] goto Static
if [%choice%]==[2] goto DHCP
if [%choice%]==[3] goto SB200
if [%choice%]==[4] goto SB600
if [%choice%]==[5] goto T_U
if [%choice%]==[6] goto T_P
CLS
ECHO.
ECHO INCORRECT CHOICE, CHOOSE AGAIN
goto again
ECHO.

:Static
REM *User input IP Address, Subnet Mask, and Gateway Addresses*
ECHO.
set /P Addy=IP Address:           
set /P Sub_Mask=Subnet Mask:          
set /P GW=Gateway IP Address:   

REM *Get DNS Servers*
set /P DNS_1=Primary DNS Server:   
set /P DNS_2=Secondary DNS Server: 

REM *Set IP, Subnet Mask, and Gateway Addresses* 
netsh interface ip set address "Local Area Connection" static %Addy% %Sub_Mask% %GW% 1

REM *Set DNS Server IP Addresses*
netsh interface ip delete dns "Local Area Connection" all
if not [%DNS_1%]==[] netsh interface ip set dns "Local Area Connection" static %DNS_1%
if not [%DNS_2%]==[] netsh interface ip add dns "Local Area Connection" %DNS_2% index=2
ECHO.
netsh interface ip show config
ECHO.
goto done

:DHCP
ECHO.
@ECHO Setting up Local Area Connection for DHCP Configuration
netsh interface ip set address "Local Area Connection" source=dhcp
netsh interface ip set dns "Local Area Connection" source=dhcp
ECHO.
ipconfig
ECHO.
goto done

:SB200
ECHO.
@ECHO 10.10.241.205
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip set address "Local Area Connection" static 10.10.241.205 255.255.255.0 10.10.241.201 1
netsh interface ip show config
ECHO.
goto done

:SB600
ECHO.
@ECHO 192.168.0.102
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip set address "Local Area Connection" static 192.168.0.102 255.255.255.0 192.168.0.1 1
netsh interface ip show config
ECHO.
goto done

:T_U
ECHO.
@ECHO 172.16.233.215
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip set address "Local Area Connection" static 172.16.233.215 255.255.255.0 172.16.233.214 1
netsh interface ip show config
ECHO.
goto done

:T_P
ECHO.
@ECHO 10.10.10.10
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip set address "Local Area Connection" static 10.10.10.10 255.255.255.0 10.10.10.1 1
netsh interface ip show config
ECHO.
goto done

:done
ECHO.
ECHO.
set /P Done=Hit enter key when finished: 
cls
:exit

:quit
cls
:exit