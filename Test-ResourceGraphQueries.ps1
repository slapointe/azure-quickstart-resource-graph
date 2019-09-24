[CmdletBinding()]
param(
    [string]
    $folderToTest = $PSScriptRoot
)
$ErrorActionPreference = 'Stop'

$settingsFilename = Join-Path $PSScriptRoot 'settings.json'

if(-not (Test-Path $settingsFilename)) {
    az account list --query [0] | ConvertFrom-Json | Select-Object @{Name="subscriptionId";"Expression"={$_.id}} | ConvertTo-Json -Depth 10 | Out-File $settingsFilename
}
$settings = Get-Content -Path $settingsFilename -Raw | ConvertFrom-Json

$queries = Get-ChildItem $folderToTest\query.txt -Recurse

$queries | ForEach-Object {
    $query = ((Get-Content -Path $_.FullName -Raw) -replace '\n\d|\n|\r', ' ') -replace '"', '\"'
    $queryName = $_.Directory.Name
    Write-Host "Processing: $queryName"
    Write-Verbose "$queryName : $query"
    az graph query -q "$query" --subscription $settings.subscriptionId --first 1 | Out-Null
    if (! $?) {
        throw "Error during execution of: $queryName\n\nQuery: $query"
    }
}