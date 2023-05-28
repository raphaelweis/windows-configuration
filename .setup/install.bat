@echo off

@REM Powershell Profile configuration
set "sourceFile=%USERPROFILE%\Documents\windows-configuration\powershell\default\powershell\Microsoft.PowerShell_profile.ps1"
set "destinationDir=%USERPROFILE%\Documents\Powershell"
set "destinationFile=%USERPROFILE%\Documents\Powershell\Microsoft.PowerShell_profile.ps1"
if exist "%destinationFile%" (
    del "%destinationFile%"
)
mkdir "%destinationDir%"
mklink "%destinationFile%" "%sourceFile%"

@REM ideavimrc configuration
set "sourceFile=%USERPROFILE%\windows-configuration\ideavimrc\default\ideavimrc\.ideavimrc"  
set "destinationDir=%USERPROFILE%"
set "destinationFile=%USERPROFILE%\.ideavimrc
if exist "%destinationFile%" (
    del "%destinationFile%"
)
mklink "%destinationFile%" "%sourceFile%"

@REM vimrc configuration
set "sourceFile=%USERPROFILE%\windows-configuration\vimrc\default\vimrc\.vimrc"  
set "destinationDir=%USERPROFILE%"
set "destinationFile=%USERPROFILE%\.vimrc
if exist "%destinationFile%" (
    del "%destinationFile%"
)
mklink "%destinationFile%" "%sourceFile%"

@REM autohotkey configuration
