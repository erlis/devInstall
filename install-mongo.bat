cmd /c cinst mongodb -Version 3.2.6
pushd mongodb
call install-service.bat
popd