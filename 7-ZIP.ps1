# Check if 7-Zip is installed
$installedApp = winget list --id 7zip.7zip

if ($installedApp -match "No installed package found matching input criteria.") {
    # Install 7-Zip if not installed
    Write-Output "7-Zip is not installed. Installing now..."
    winget install --id=7zip.7zip --accept-package-agreements --accept-source-agreements
} else {
    # Check for updates and update if necessary
    Write-Output "7-Zip is installed. Checking for updates..."
    winget upgrade --id=7zip.7zip --accept-package-agreements --accept-source-agreements
}
