@echo off

REM Check if WSL is installed and run the shell script with bash if WSL is available
if exist "%SystemRoot%\System32\bash.exe" (
    bash fetch_urls.sh
) else (
    REM If WSL is not available, use Git Bash (assuming Git is installed)
    REM Uncomment the following line if you have Git Bash installed
    REM "C:\Program Files\Git\bin\bash.exe" fetch_urls.sh
)

pause
