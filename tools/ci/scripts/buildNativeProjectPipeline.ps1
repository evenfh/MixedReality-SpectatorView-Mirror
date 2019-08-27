param(
    [string]$ProjectPath
)

. $PSScriptRoot\buildNativeProjectShared.ps1

$SetupResult = "False"
SetupVSProjects -ForceRebuild -Remote -Succeeded ([ref]$SetupResult)
Write-Host "Setup Suceeded: $SetupResult"
exit $SetupResult