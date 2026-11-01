$ErrorActionPreference = "Continue"
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "WinGet tidak ditemukan. Perbarui App Installer dari Microsoft Store."
    exit 1
}
$packages = @("Python.Python.3.12", "Git.Git", "Microsoft.VisualStudioCode", "Insecure.Nmap", "WiresharkFoundation.Wireshark")
foreach ($package in $packages) {
    winget install --id $package --exact --source winget --accept-package-agreements --accept-source-agreements
}
Write-Host "Selesai. Buka ulang terminal."
