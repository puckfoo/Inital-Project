Function Request-Files {
    [CmdletBinding()]
    param(
        [string]$FileName
    )
    Set-Location "C:\"
    Get-ChildItem -Name $file -File 
}
