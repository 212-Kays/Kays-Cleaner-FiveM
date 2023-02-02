@echo off
title FiveM Tools - Kays le plus beau
color c


echo "  _  __               "
echo " | |/ /               "
echo " | ' / __ _ _   _ ___ "
echo " |  < / _` | | | / __|"
echo " | . \ (_| | |_| \__ \"
echo " |_|\_\__,_|\__, |___/"
echo "             __/ |    "
echo "            |___/     "
echo Appuyez sur n'importe quelle touche pour optimiser FiveM et vider le cache
pause >nul
cls


echo Vide le cache FiveM...
TIMEOUT /T 1
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\nui-storage"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache-priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\logs"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\crashes"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\cache"

pushd "C:\Users\%USERNAME%\AppData\Local\Temp\" || exit /B 1
for /D %%D in ("*") do (
    if /I not "%%~nxD"=="game" rd /S /Q "%%~D"
)
for %%F in ("*") do (
    del "%%~F"
)

pushd "C:\Windows\Temp\" || exit /B 1
for /D %%D in ("*") do (
    if /I not "%%~nxD"=="game" rd /S /Q "%%~D"
)
for %%F in ("*") do (
    del "%%~F"
)

pushd "C:\Windows\Prefetch" || exit /B 1
for /D %%D in ("*") do (
    if /I not "%%~nxD"=="game" rd /S /Q "%%~D"
)
for %%F in ("*") do (
    del "%%~F"
)


echo Optimisation de votre ordinateur pour FiveM...
TIMEOUT /T 1
powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
taskkill /f /im GTAVLauncher.exe
wmic process where name="FiveM.exe" CALL setpriority 128
wmic process where name="FiveM_b2189_GTAProcess.exe" CALL setpriority 128
taskkill /f /im wmpnetwk.exe.exe
taskkill /f /im OneDrive.exe
taskkill /f /im speedfan.exe
taskkill /f /im TeamWiever_Service.exe
taskkill /f /im opera.exe
taskkill /f /im java.exe

TIMEOUT /T 1
color c
cls
echo "  _  __               "
echo " | |/ /               "
echo " | ' / __ _ _   _ ___ "
echo " |  < / _` | | | / __|"
echo " | . \ (_| | |_| \__ \"
echo " |_|\_\__,_|\__, |___/"
echo "             __/ |    "
echo "            |___/     "

echo Cache optimiser et effacer, ce petit script a etait creer par Kays#7166

pause
