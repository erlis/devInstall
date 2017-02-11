param (
    [string]$pathToInstall = $(throw "-pathToInstall is required."),
    [System.EnvironmentVariableTarget]$target = [System.EnvironmentVariableTarget]::Machine
)

# Make sure to restart the process to obtain the latest $env:Path value
$originalPath = [Environment]::GetEnvironmentVariable("Path",$target)
if (-not ($originalPath:Path -like "*$pathToInstall*")) {
    echo "Adding '$pathToInstall' to the path."
    $newPath = $originalPath + ';' + $pathToInstall
    [Environment]::SetEnvironmentVariable("Path", $newPath, $target)
} else {
    echo "'$pathToInstall' is already on the path."
}