@echo off  
title ip calculator
setlocal enabledelayedexpansion  
:: Part of code, which converts ip adress to binary and back is taken from stackoverflow. Note that this script was made in one day and code is messy so forgive me for that.
::set ip=26.115.143.24
if "%IP%"=="" set /p "IP=Ip address: "
set ipp=%ip%
set nmask=24
set nh=254
set nmsk=255.255.255.0
set wcard=0.0.0.255
set bcast1=255 & set bcast2=255 & set bcast3=255 & set bcast4=0
echo Netmask is automatically set to 24.
echo If you want to leave it as it is, press enter. If you want to change netmask number type a number from 1-32.
set /p nmask="Netmask: "

if %nmask% equ 1 (set nmask=1 & set nh=2147483646 & set nmsk=128.0.0.0 & set wcard=127.255.255.255 & set bcast1=128 & set bcast2=0 & set bcast3=0 & set bcast4=0 )
if %nmask% equ 2 (set nmask=2 & set nh=1073741822 & set nmsk=192.0.0.0 & set wcard=63.255.255.255 & set bcast1=192 & set bcast2=0 & set bcast3=0 & set bcast4=0  )
if %nmask% equ 3 (set nmask=3 & set nh=536870910 & set nmsk=224.0.0.0 & set wcard=31.255.255.255  & set bcast1=224 & set bcast2=0 & set bcast3=0 & set bcast4=0 )
if %nmask% equ 4 (set nmask=4 & set nh=268435454 & set nmsk=240.0.0.0 & set wcard=15.255.255.255 & set bcast1=240 & set bcast2=0 & set bcast3=0 & set bcast4=0  )
if %nmask% equ 5 (set nmask=5 & set nh=134217726 & set nmsk=248.0.0.0 & set wcard=7.255.255.255  & set bcast1=248 & set bcast2=0 & set bcast3=0 & set bcast4=0)
if %nmask% equ 6 (set nmask=6 & set nh=67108862 & set nmsk=252.0.0.0 & set wcard=3.255.255.255  & set bcast1=252 & set bcast2=0 & set bcast3=0 & set bcast4=0)
if %nmask% equ 7 (set nmask=7 & set nh=33554430 & set nmsk=254.0.0.0 & set wcard=1.255.255.255  & set bcast1=244 & set bcast2=0 & set bcast3=0 & set bcast4=0)
if %nmask% equ 8 (set nmask=8 & set nh=16777214 & set nmsk=255.0.0.0 & set wcard=0.255.255.255 & set bcast1=255 & set bcast2=0 & set bcast3=0 & set bcast4=0 )
if %nmask% equ 9 (set nmask=9 & set nh=8388606 & set nmsk=255.128.0.0 & set wcard=0.127.255.255  set bcast1=255 & set bcast2=128 & set bcast3=0 & set bcast4=0)
if %nmask% equ 10 (set nmask=10 & set nh=4194302 & set nmsk=255.192.0.0 & set wcard=0.63.255.255 set bcast1=255 & set bcast2=192 & set bcast3=0 & set bcast4=0 )
if %nmask% equ 11 (set nmask=11 & set nh=2097150 & set nmsk=255.224.0.0 & set wcard=0.31.255.255 set bcast1=255 & set bcast2=224 & set bcast3=0 & set bcast4=0)
if %nmask% equ 12 (set nmask=12 & set nh=1048574 & set nmsk=255.240.0.0 & set wcard=0.15.255.255 set bcast1=255 & set bcast2=240 & set bcast3=0 & set bcast4=0)
if %nmask% equ 13 (set nmask=13 & set nh=524286 & set nmsk=255.248.0.0 & set wcard=0.7.255.255  set bcast1=255 & set bcast2=248 & set bcast3=0 & set bcast4=0)
if %nmask% equ 14 (set nmask=14 & set nh=262142 & set nmsk=255.252.0.0 & set wcard=0.3.255.255  set bcast1=255 & set bcast2=252 & set bcast3=0 & set bcast4=0)
if %nmask% equ 15 (set nmask=15 & set nh=131070 & set nmsk=255.254.0.0 & set wcard=0.1.255.255 & set bcast1=255 & set bcast2=254 & set bcast3=0 & set bcast4=0)
if %nmask% equ 16 (set nmask=16 & set nh=65534 & set nmsk=255.255.0.0 & set wcard=0.0.255.255 & set bcast1=255 & set bcast2=255 & set bcast3=0 & set bcast4=0)
if %nmask% equ 17 (set nmask=17 & set nh=32766 & set nmsk=255.255.128.0 & set wcard=0.0.127.255 & set bcast1=255 & set bcast2=255 & set bcast3=128& set bcast4=0)
if %nmask% equ 18 (set nmask=18 & set nh=16382 & set nmsk=255.255.192.0 & set wcard=0.0.63.255 & set bcast1=255 & set bcast2=255 & set bcast3=192 & set bcast4=0)
if %nmask% equ 19 (set nmask=19 & set nh=8190 & set nmsk=255.255.224.0 & set wcard=0.0.31.255 & set bcast1=255 & set bcast2=255 & set bcast3=224 & set bcast4=0)
if %nmask% equ 20 (set nmask=20 & set nh=4094 & set nmsk=255.255.240.0 & set wcard=0.0.15.255 & set bcast1=255 & set bcast2=255 & set bcast3=240 & set bcast4=0 )
if %nmask% equ 21 (set nmask=21 & set nh=2046 & set nmsk=255.255.248.0 & set wcard=0.0.7.255& set bcast1=255 & set bcast2=255 & set bcast3=248 & set bcast4=0)
if %nmask% equ 22 (set nmask=22 & set nh=1022 & set nmsk=255.255.252.0 & set wcard=0.0.3.255 & set bcast1=255 & set bcast2=255 & set bcast3=252 & set bcast4=0)
if %nmask% equ 23 (set nmask=23 & set nh=510 & set nmsk=255.255.254.0 & set wcard=0.0.1.255 & set bcast1=255 & set bcast2=255 & set bcast3=254 & set bcast4=0)
if %nmask% equ 25 (set nmask=25 & set nh=126 & set nmsk=255.255.255.128 & set wcard=0.0.0.127 & set bcast1=255 & set bcast2=255 & set bcast3=255 & set bcast4=128)
if %nmask% equ 26 (set nmask=26 & set nh=62 & set nmsk=255.255.255.192 & set wcard=0.0.0.63 & set bcast1=255 & set bcast2=255 & set bcast3=255 & set bcast4=192)
if %nmask% equ 27 (set nmask=27 & set nh=30 & set nmsk=255.255.255.224 & set wcard=0.0.0.31 & set bcast1=255 & set bcast2=255 & set bcast3=255 & set bcast4=224)
if %nmask% equ 28 (set nmask=28 & set nh=14 & set nmsk=255.255.255.240 & set wcard=0.0.0.15 & set bcast1=255 & set bcast2=255 & set bcast3=255 & set bcast4=240)
if %nmask% equ 29 (set nmask=29 & set nh=6 & set nmsk=255.255.255.248 & set wcard=0.0.0.7 & set bcast1=255 & set bcast2=255 & set bcast3=255 & set bcast4=248)
if %nmask% equ 30 (set nmask=30 & set nh=2 & set nmsk=255.255.255.252 & set wcard=0.0.0.3 & set bcast1=255 & set bcast2=255 & set bcast3=255 & set bcast4=252)
if %nmask% equ 31 (set nmask=31 & set nh=0 & set nmsk=255.255.255.254 & set wcard=0.0.0.1 & set bcast1=255 & set bcast2=255 & set bcast3=255 & set bcast4=254)
if %nmask% equ 32 (set nmask=32 & set nh=1 & set nmsk=255.255.255.255 & set wcard=0.0.0.0 & set bcast1=255 & set bcast2=255 & set bcast3=255 & set bcast4=255)

set idx=0
for %%a in (%IP:.= %) do (
    set /P "=%%a = "<NUL
    call :dec2bin bin[!idx!] %%a
    set /a idx += 1
)
set biin=%bin[0]%
Set Dec=0
set pot=1
for /L %%i in (7,-1,0) do (
  if "!Biin:~%%i,1!" == "1" set /a dec +=!pot!  
set /a pot*=2
)
set biiin=%bin[1]%
Set Dec1=0
set pot1=1
for /L %%i in (7,-1,0) do (
  if "!Biiin:~%%i,1!" == "1" set /a dec1 +=!pot1!  
set /a pot1*=2
)
set biiiin=%bin[2]%
Set Dec2=0
set pot2=1
for /L %%i in (7,-1,0) do (
  if "!Biiiin:~%%i,1!" == "1" set /a dec2 +=!pot2!  
set /a pot2*=2
)
set biiiiin=%bin[3]%
Set Dec3=0
set pot3=1
for /L %%i in (7,-1,0) do (
  if "!Biiiiin:~%%i,1!" == "1" set /a dec3 +=!pot3!  
set /a pot3*=2
)
if %bcast1% leq 254 (if %bcast1% geq 1 (goto calculate_broadcast1))
if %bcast1% equ 255 (set broadcast_1number=%dec% & set netw1=%dec%) else set broadcast_1number=255 & set netw1=0
:broadnumber2
if %bcast2% leq 254 (if %bcast2% geq 1 (goto calculate_broadcast2))
if %bcast2% equ 255 (set broadcast_2number=%dec1% & set netw2=%dec1%) else set broadcast_2number=255 & set netw2=0
:broadnumber3
if %bcast3% leq 254 (if %bcast3% geq 1 (goto calculate_broadcast3))
if %bcast3% equ 255 (set broadcast_3number=%dec2% & set netw3=%dec2%) else set broadcast_3number=255 & set netw3=0
:broadnumber4
if %bcast4% leq 254 (if %bcast4% geq 1 (goto calculate_broadcast4))
if %bcast4% equ 255 (set broadcast_4number=%dec3% & set netw4=%dec3%) else set broadcast_4number=255 & set netw4=0
goto main

:calculate_broadcast4
set broadcast_4number=0
set /a number2=256 - %bcast4%
set number1=%number2%
:racunaj_networkstevilko4
for %%u in (%number1%) do ( 
if %number1% gtr %dec3% (set /a netw4=%number1% - %number2% & goto racunaj_broadcaststevilko4)
set /a  number1=%number2% + %number1%
goto racunaj_networkstevilko4 )
:racunaj_broadcaststevilko4
for %%g in (%number2%) do (
if %broadcast_4number% gtr %dec3% goto odstej4_1
set /a broadcast_4number=%broadcast_4number% + %number2%
goto :racunaj_broadcaststevilko4 )
:odstej4_1
set /a broadcast_4number=%broadcast_4number% - 1
goto main

:calculate_broadcast3
set broadcast_3number=0
set /a number22=256 - %bcast3%
set number11=%number22%
:racunaj_networkstevilko3
for %%z in (%number11%) do (
if %number11% gtr %dec2% (set /a netw3=%number11% - %number22% & goto racunaj_broadcaststevilko3 )
set /a number11=%number22% + %number11%
goto racunaj_networkstevilko3 )

:racunaj_broadcaststevilko3
for %%b in (%number22%) do (
if %broadcast_3number% gtr %dec2% goto odstej3_1
set /a broadcast_3number=%broadcast_3number% + %number22%
goto racunaj_broadcaststevilko3 )
:odstej3_1
set /a broadcast_3number=%broadcast_3number% - 1
goto broadnumber4

:calculate_broadcast2
set broadcast_2number=0
set /a number222=256 - %bcast2%
set number111=%number222%
:racunaj_networkstevilko2
for %%u in (%number111%) do ( 
if %number111% gtr %dec1% (set /a netw2=%number111% - %number222% & goto racunaj_broadcaststevilko2)
set /a number111=%number222% + %number111%
goto racunaj_networkstevilko2 )

:racunaj_broadcaststevilko2
for %%c in (%number222%) do (
if %broadcast_2number% gtr %dec1% goto odstej2_1
set /a broadcast_2number=%broadcast_2number% + %number222%
goto racunaj_broadcaststevilko2 )
:odstej2_1
set /a broadcast_2number=%broadcast_2number% - 1
goto broadnumber3

:calculate_broadcast1
set broadcast_1number=0
set /a number2222=256 - %bcast1%
set number1111=%number2222%
:racunaj_networkstevilko1
for %%u in (%number1111%) do ( 
if %number1111% gtr %dec% (set /a netw1=%number1111% - %number2222% & goto racunaj_broadcaststevilko1)
set /a number1111=%number2222% + %number1111%
goto racunaj_networkstevilko1 )

:racunaj_broadcaststevilko1
for %%c in (%number2222%) do (
if %broadcast_1number% gtr %dec% goto odstej1_1
set /a broadcast_1number=%broadcast_1number% + %number2222%
goto racunaj_broadcaststevilko1 )
:odstej1_1
set /a broadcast_1number=%broadcast_1number%-1
goto broadnumber2

:main
set /a hostmin_number4=%netw4% + 1
set /a broadcast_4numberr=%broadcast_4number%-1
cls
echo Adress: %ipp% %bin[0]%.%bin[1]%.%bin[2]%.%bin[3]%
echo Netmask:%nmsk% = %nmask%
echo Wildcard:%wcard%
echo =^>
echo Network: %netw1%.%netw2%.%netw3%.%netw4%./%nmask%
echo Broadcast:%broadcast_1number%.%broadcast_2number%.%broadcast_3number%.%broadcast_4number%
echo HostMin: %netw1%.%netw2%.%netw3%.%hostmin_number4%
echo HostMax:%broadcast_1number%.%broadcast_2number%.%broadcast_3number%.%broadcast_4numberr%
echo Hosts/Net: %nh%
pause
goto fin

:dec2bin
setlocal enabledelayedexpansion
set numero=%~2
set bin=
for /L %%I in (1,1,8) do (
    set /a bit = numero %% 2, numero /= 2
    set bin=!bit!!bin!
)
endlocal & set "%~1=%bin%"
goto :EOF