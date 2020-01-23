Function Request-Files {
    [CmdletBinding()]
    param(
        [string]$FileName,
        [string]$Path
    )
    Get-ChildItem -Path $Path -File -Force | where {$_.Name -like "*$FileName*"}
}




 #Get-WMIObject Win32_LogicalDisk -filter “DriveType = 3” | Select-Object DeviceID | ForEach-Object {Get-Childitem ($_.DeviceID + “\”) $FileName -recurse}