echo Installing Mongo service

sc stop MongoDB
rm -r "c:\mongodb\data\*"
sc delete MongoDB
timeout /t 3

set mongoDir=C:\mongodb
if not exist "%mongoDir%" mkdir "%mongoDir%"
copy mongodb.cfg "%mongoDir%\mongodb.cfg"

set dataDir=%mongoDir%\data
set logDir=%mongoDir%\logs

mkdir %dataDir%
mkdir %logDir%

set mongoDbBinDir=C:\Program Files\MongoDB\Server\3.2\bin
"%mongoDbBinDir%\mongod.exe" --config "%mongoDir%\mongodb.cfg" --dbpath "%dataDir%" --install

timeout /t 3

net start MongoDB