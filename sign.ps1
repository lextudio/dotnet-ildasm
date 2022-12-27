Remove-Item -Path .\*.nupkg
$nuget = ".\nuget.exe"

if (!(Test-Path $nuget))
{
    Invoke-WebRequest https://dist.nuget.org/win-x86-commandline/latest/nuget.exe -OutFile nuget.exe
}

& $nuget update /self | Write-Debug

Write-Host "Sign NuGet packages."
& $nuget sign .\nupkg\*.nupkg -CertificateSubjectName "Yang Li" -Timestamper http://timestamp.digicert.com | Write-Debug
& $nuget verify -All .\nupkg\*.nupkg | Write-Debug
if ($LASTEXITCODE -ne 0)
{
    Write-Host "NuGet package is not signed. Exit."
    exit $LASTEXITCODE
}

Write-Host "Verification finished."
