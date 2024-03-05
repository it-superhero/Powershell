# Get all installed AppX package full names
$packages = Get-AppxPackage | Select-Object -ExpandProperty PackageFullName

# Loop through the list and remove each package
foreach ($package in $packages) {
    Remove-AppxPackage -Package $package
}
