cmd /c cinst mongodb -Version 3.2.6

@powershell -NoProfile -ExecutionPolicy unrestricted -Command^
    ".\append_path.ps1 'c:\Program Files\MongoDB\Server\3.2\bin\'"

pushd mongodb
call install-service.bat
popd
