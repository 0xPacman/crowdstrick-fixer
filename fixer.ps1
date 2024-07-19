$path = "C:\Windows\System32\drivers\CrowdStrike"
$filePattern = "C-00000291*.sys"
$files = Get-ChildItem -Path $path -Filter $filePattern
foreach ($file in $files) {
    Remove-Item -Path $file.FullName -Force
    Write-Host "Deleted file: $($file.FullName)"
}
Write-Host "Rebooting the system..."
Restart-Computer -Force
