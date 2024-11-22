# Check if Adobe Acrobat Reader is installed
$installedApp = winget list --id Adobe.Acrobat.Reader.64-bit

if ($installedApp -match "No installed package found matching input criteria.") {
    # Install Adobe Acrobat Reader if not installed
    Write-Output "Adobe Acrobat Reader is not installed. Installing now..."
    winget install --id=Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
} else {
    # Check for updates and update if necessary
    Write-Output "Adobe Acrobat Reader is installed. Checking for updates..."
    winget upgrade --id=Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
}
