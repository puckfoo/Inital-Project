Function Search-Files {
    [CmdletBinding()]
    param(
        [string]$Path
    )
    $data = Set-Location -Path $Path
    Get-ChildItem -Path $data -Force
}