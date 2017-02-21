$mongoDbVersion = '3.2.4'

which mongo > $null 2>&1
$mongoInPath = $?
$mongoUpToDate = $False

if ($mongoInPath) {
    $installedVersion = (mongo --version)
    $mongoUpToDate = ($installedVersion -like "*$mongoDbVersion*")
}

if (-not ($mongoInPath -and $mongoUpToDate)) {
    if ($mongoInPath) {
        echo $installedVersion
        echo "MongoDb will be updated to $mongoDbVersion"
    } else {
        echo "MongoDb $mongoDbVersion will be installed"
    }

    echo "Downloading MongoDb installer"

    $mongoInstaller = "mongodb-win32-x86_64-2008plus-ssl-$($mongoDbVersion)-signed.msi"

    $mongoUrlBase = 'https://fastdl.mongodb.org/win32/'
    $mongoUrl = $mongoUrlBase + $mongoInstaller

    $installDir = 'C:\Tools\'
    $installedPath = $installDir + $mongoInstaller

    (New-Object Net.WebClient).DownloadFile($mongoUrl, $installedPath)

    echo "Running MongoDb installer"
    Invoke-Command -ScriptBlock { & cmd /c "msiexec /quiet /i $installedPath" }

    echo "Finished installing MongoDb"
} else {
    echo "MongoDb is already up to date"
}

$mongoDbBinDir = 'C:\Program Files\MongoDB\Server\3.2\bin'
Invoke-Expression "..\append_path.ps1 '$mongoDbBinDir'"
