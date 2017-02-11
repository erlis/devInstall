cmd /c cinst python2 
@powershell -NoProfile -ExecutionPolicy unrestricted -Command^
    ".\append_path.ps1 'C:\tools\python2;C:\tools\python2\Scripts'"
	
cmd /c cinst erlang -Version 17.4.0
cmd /c cinst rabbitmq -Version 3.6.5