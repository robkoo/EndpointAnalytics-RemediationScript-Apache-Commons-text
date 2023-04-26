
$Debug = 0

$Folder = $env:APPDATA + '\JetBrains\'

If ($Debug) {
    Write-Host $Folder -ForegroundColor Yellow
    $Folder = '.\Test\'
    Write-Host $Folder -ForegroundColor Yellow
}

If (Test-Path $Folder) {
    $Folders = Get-ChildItem -Path ($Folder + "Rider20*.*") -Directory | Sort-Object  Name -Desc

    If ($Folder) {
        If ($Debug) {
            $Folders
        }
        $Highest = $Folders[0].Name
        If ($Debug) {
            Write-Host "DEBUG Highest" $Highest
        }
        $Folders | ForEach-Object {
            If ($_.Name -ne $Highest) {
                Write-Host "DEBUG Remove Folder" $_.FullName
                If (-Not $Debug) {
                    Remove-Item -LiteralPath $_.FullName -Force -Recurse
                }
            }
        }
        Exit 0
    }
}
