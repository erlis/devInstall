function Get-Webclient {
    $wc = New-Object Net.WebClient
    $wc.UseDefaultCredentials = $true
    $wc.Proxy.Credentials = $wc.Credentials
    $wc
}

$wc = Get-Webclient;
$wc.DownloadString('https://chocolatey.org/install.ps1') | out-string;

