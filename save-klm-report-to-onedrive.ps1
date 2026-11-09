# Copy KLM megacut HTML report to OneDrive KLM beach and open in default browser.
$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$source = Join-Path $repoRoot "KLM beach\klm-megacut-media-report.html"
$destDir = Join-Path $env:USERPROFILE "OneDrive - McKinsey & Company\KLM beach"
$dest = Join-Path $destDir "klm-megacut-media-report.html"

if (-not (Test-Path $source)) {
    Write-Error "Source not found: $source"
}

New-Item -ItemType Directory -Force -Path $destDir | Out-Null
Copy-Item -Path $source -Destination $dest -Force
Write-Host "Copied to: $dest"
Start-Process $dest
