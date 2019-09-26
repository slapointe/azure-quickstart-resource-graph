[CmdletBinding()]
param(
    [string]
    $FolderToTest = $PSScriptRoot
)
$ErrorActionPreference = 'Stop'

$settingsFilename = Join-Path $PSScriptRoot 'settings.json'

if(-not (Test-Path $settingsFilename)) {
    az account list --query [0] | ConvertFrom-Json | Select-Object @{Name="subscriptionId";"Expression"={$_.id}} | ConvertTo-Json -Depth 10 | Out-File $settingsFilename
}
$settings = Get-Content -Path $settingsFilename -Raw | ConvertFrom-Json

$queries = Get-ChildItem -Path $FolderToTest\query.txt -Recurse

$queries | ForEach-Object {
    $query = ((Get-Content -Path $_.FullName -Raw) -replace '\n\d|\n|\r', ' ') -replace '"', '\"'
    $queryName = $_.Directory.Name
    Write-Host -Message "Processing: $queryName"
    Write-Verbose -Message "'$queryName' query: $query"

    $resultSize = if($PSCmdlet.MyInvocation.BoundParameters["Verbose"].IsPresent) {
        100
    } else {
        1
    }

    $result = az graph query -q "$query" --subscription $settings.subscriptionId
    # do not put anything between the graph call and the if statement
    if (! $?) {
        throw "Error during execution of: $queryName\n\nQuery: $query"
    }
    Write-Verbose -Message ("'$queryName' output:{0}{1}" -f [Environment]::NewLine, ($result -join [Environment]::NewLine))
}