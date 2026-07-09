@echo off
setlocal enabledelayedexpansion

echo ==========================================
echo Starting Project Build Process...
echo ==========================================

REM Set SKIP_PAUSE to bypass intermediate pauses
set "SKIP_PAUSE=1"

REM Step 1: Create Virtual Environment
echo [1/3] Setting up Python virtual environment...
call "%~dp0build_venv.bat"
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Virtual environment setup failed.
    pause
    exit /b %errorlevel%
)

echo.
REM Step 2: Download Database
echo [2/3] Downloading database...
call "%~dp0download_db.bat"
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Database download failed.
    pause
    exit /b %errorlevel%
)

echo.
REM Step 3: Setup Git
echo [3/3] Setting up local Git details...
call "%~dp0setup_git.bat"
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Git setup failed.
    pause
    exit /b %errorlevel%
)

echo.
echo ==========================================
echo Project Build Completed Successfully!
echo ==========================================
pause
