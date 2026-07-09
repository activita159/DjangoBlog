@echo off
:: =====================================================================
:: Configuration Parameters for Database Download
:: =====================================================================

:: Google Drive File ID for db.sqlite3
set "FILE_ID=1KuL3P3lR4pg6jF8hiVyR_174Uk_aYhvb"

:: Local path where the database will be saved
set "DB_PATH=%~dp0db.sqlite3"

:: Direct download link constructed from FILE_ID
set "DOWNLOAD_URL=https://drive.google.com/uc?export=download&id=%FILE_ID%"

set "GIT_USER_NAME=Allen"
set "GIT_USER_EMAIL=activita159@gmail.com"
