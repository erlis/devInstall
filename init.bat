@echo off 
call init-powershell.bat

powershell -File .\download-choco.ps1 | powershell -command -

SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
chocolatey feature enable -n allowGlobalConfirmation
if not exist "C:\projects" mkdir c:\projects
