# Powershell profile configuration
$sourceFile = "$env:USERPROFILE\Documents\windows-configuration\powershell\default\powershell\Microsoft.PowerShell_profile.ps1"
$destinationDir = "$env:USERPROFILE\Documents\Powershell"
$destinationFile = "$env:USERPROFILE\Documents\Powershell\Microsoft.PowerShell_profile.ps1"
if (Test-Path $destinationFile) {
    Remove-Item $destinationFile
}
New-Item -ItemType Directory -Force -Path $destinationDir | Out-Null
New-Item -ItemType SymbolicLink -Path $destinationFile -Target $sourceFile

$sourceFile = "$env:USERPROFILE\Documents\windows-configuration\alacritty\default\alacritty\alacritty.yml"
$destinationDir = "$env:APPDATA\alacritty\default"
$destinationFile = "$env:APPDATA\alacritty\default\alacritty.yml"
if (Test-Path $destinationFile) {
    Remove-Item $destinationFile
}
New-Item -ItemType Directory -Force -Path $destinationDir | Out-Null
New-Item -ItemType SymbolicLink -Path $destinationFile -Target $sourceFile

# ideavimrc configuration
$sourceFile = "$env:USERPROFILE\Documents\windows-configuration\ideavimrc\file\ideavimrc\.ideavimrc"
$destinationDir = "$env:USERPROFILE\Documents"
$destinationFile = "$env:USERPROFILE\.ideavimrc"
if (Test-Path $destinationFile) {
    Remove-Item $destinationFile
}
New-Item -ItemType Directory -Force -Path $destinationDir | Out-Null
Copy-Item -Path $sourceFile -Destination $destinationFile -Force

# vimrc configuration
$sourceFile = "$env:USERPROFILE\Documents\windows-configuration\vimrc\file\vimrc\.vimrc"
$destinationDir = "$env:USERPROFILE\Documents"
$destinationFile = "$env:USERPROFILE\.vimrc"
if (Test-Path $destinationFile) {
    Remove-Item $destinationFile
}
New-Item -ItemType Directory -Force -Path $destinationDir | Out-Null
Copy-Item -Path $sourceFile -Destination $destinationFile -Force

# autohotkey autostart
$sourceFile = "$env:USERPROFILE\Documents\windows-configuration\auto-hotkey\windows\auto-hotkey\setup.ahk"
$destinationDir = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
$destinationFile = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\setup.lnk"
if (Test-Path $destinationFile) {
    Remove-Item $destinationFile
}
New-Item -ItemType Directory -Force -Path $destinationDir | Out-Null
$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($destinationFile)
$shortcut.TargetPath = $sourceFile
$shortcut.Save()
