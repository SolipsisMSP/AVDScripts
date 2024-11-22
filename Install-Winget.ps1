$folderPath = "C:\CustomImage"

# Check if the folder exists
if (-not (Test-Path -Path $folderPath)) {
    # Create the folder
    New-Item -ItemType Directory -Path $folderPath -Force
    Write-Host "Folder created at $folderPath"
} else {
    Write-Host "Folder already exists at $folderPath"
}

$url = "https://aka.ms/winget-cli-app-installer"
$folderPath = "C:\CustomImage\AppInstaller.msixbundle"
Invoke-WebRequest -Uri $url -OutFile $folderPath

Add-AppxPackage -Path $folderPath
