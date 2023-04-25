
$Debug = 0

$Folder = $env:APPDATA + '\JetBrains\'

If ($Debug) {
    Write-Host $Folder -ForegroundColor Yellow
    $Folder = '.\Test\'
    Write-Host $Folder -ForegroundColor Yellow
}

If (Test-Path $Folder) {
    $Folders = Get-ChildItem -Path ($Folder + "Rider20*.*") -Directory | Sort-Object  Name -Desc

    If ($Debug) {
        Write-Host "DEBUG" $Folders.Count
    }

    If ($Folders.Count -gt 1) {
        Write-Host "$($Folders.Count - 1) old folders found"
        Exit 1
    } Else {
        Write-Host "No old folders found"
        Exit 0
    }
}
