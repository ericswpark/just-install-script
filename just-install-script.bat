@echo off

:: Define your programs here:
set list=7zip arduino autohotkey bitwarden cpu-z crystaldisk-info crystaldisk-mark deluge discord eclipse-java etcher ffmpeg firefox foobar2000 git git-lfs gitkraken google-chrome gpg4win handbrake hashcheck irfanview jetbrains-toolbox krita mpc-hc notepad++ obs-studio potplayer python3 rufus steam tor-browser veracrypt virtualbox virtualbox-extpack visual-studio-code vlc winscp youtube-dl

:: Clear the screen
cls

:: Check admin
echo Administrative permissions required. Detecting permissions . . .
net session >nul 2>&1
if %errorLevel% == 0 (
  echo Success: Administrative permissions confirmed.
  pause
) else (
  echo Failure: You do not have admin rights. Please re-run this script with admin permissions.
  echo This script will now exit. 
  pause
  exit /B 1
)

:: Warn user
cls
echo This script will install the following programs and just-install to your computer:
for %%a in (%list%) do (
  echo|set /p="%%a "
)
echo/
echo This process is not reversible, short of uninstalling each program. Do you want to proceed?
echo/
echo Press Ctrl-C to stop execution . . .
pause

:: Start installation
cls
echo [Stage 1] Installing just-install
msiexec.exe /i https://just-install.github.io/stable/just-install.msi
echo/
echo [Stage 2] Installing programs
for %%a in (%list%) do (
  echo Installing %%a
  just-install %%a
  echo Finished installing %%a.
  echo/
)

:: Complete
cls
echo Installation complete!
