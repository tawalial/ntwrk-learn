#requires -Version 5.1
$ErrorActionPreference = "Continue"

Write-Host "=== Cybersecurity Learning Toolkit: Windows setup ===" -ForegroundColor Cyan
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "WinGet tidak ditemukan. Perbarui App Installer dari Microsoft Store." -ForegroundColor Yellow
    exit 1
}

$packages = @(
    "Python.Python.3.12",
    "Git.Git",
    "Microsoft.VisualStudioCode",
    "Insecure.Nmap",
    "WiresharkFoundation.Wireshark"
)

foreach ($package in $packages) {
    Write-Host "`nMemasang $package ..." -ForegroundColor Green
    winget install --id $package --exact --source winget --accept-package-agreements --accept-source-agreements
    if ($LASTEXITCODE -ne 0) {
        Write-Warning "Paket gagal dipasang atau sudah tersedia: $package"
    }
}

Write-Host "`nSelesai. Buka ulang PowerShell, lalu cek python --version, git --version, nmap --version." -ForegroundColor Cyan
