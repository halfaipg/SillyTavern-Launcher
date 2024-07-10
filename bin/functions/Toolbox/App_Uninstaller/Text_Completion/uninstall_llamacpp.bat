@echo off

:uninstall_llamacpp
title STL [UNINSTALL LLAMACPP]
setlocal enabledelayedexpansion
chcp 65001 > nul

REM Confirm with the user before proceeding
echo.
echo %red_bg%╔════ DANGER ZONE ══════════════════════════════════════════════════════════════════════════════╗%reset%
echo %red_bg%║ WARNING: This will delete all data of llamacpp                                                ║%reset%
echo %red_bg%║ If you want to keep any data, make sure to create a backup before proceeding.                 ║%reset%
echo %red_bg%╚═══════════════════════════════════════════════════════════════════════════════════════════════╝%reset%
echo.
set /p "confirmation=Are you sure you want to proceed? [Y/N]: "
if /i "%confirmation%"=="Y" (

    REM Remove the folder
    echo %blue_bg%[%time%]%reset% %blue_fg_strong%[INFO]%reset% Removing the llamacpp directory...
    cd /d "%~dp0"
    rmdir /s /q "%llamacpp_install_path%"

    echo %blue_bg%[%time%]%reset% %blue_fg_strong%[INFO]%reset% %green_fg_strong%llamacpp has been uninstalled successfully.%reset%
    pause
    goto :app_uninstaller_text_completion
) else (
    echo %blue_bg%[%time%]%reset% %blue_fg_strong%[INFO]%reset% Uninstall canceled.
    pause
    goto :app_uninstaller_text_completion
)