@echo off 
call init-powershell.bat

powershell -File .\install-choco.ps1 

SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
chocolatey feature enable -n allowGlobalConfirmation
if not exist "C:\projects" mkdir c:\projects
