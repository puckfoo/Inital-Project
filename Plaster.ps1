$Path = "C:\Git\Inital-Project"

Clear-Host; Push-Location -Path $Path

$destinationPath = New-Item -Path $Path -ItemType Directory -Name InitialModule
$destinationPath

#$defaultTemplate = Get-PlasterTemplate | Where-Object -FilterScript { $_.Tags -contains 'Module' }

$defaultTemplate = Get-PlasterTemplate | Where-Object -FilterScript { $PSItem.Title -eq 'New PowerShell Manifest Module' }
$defaultTemplate.TemplatePath

#Invoke Plaster

Invoke-Plaster -TemplatePath $defaultTemplate.TemplatePath -DestinationPath $destinationPath

Remove-Module -Name Get-Files

Import-Module .\InitialModule\Get-Files.psd1
Get-Module -Name Get-Files
Get-Command -Module Get-Files

Import-Module -Name Pester
Invoke-Pester .\InitialModule #Invoke-Pester is run on the directory
