Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted
Install-Script -Name Get-WindowsAutoPilotInfo
$PcName = $env:computername | Select-Object
$WorkDir = $PSScriptRoot
$OutputFile = $WorkDir + "\" + $PcName + ".csv"

Get-WindowsAutoPilotInfo -OutputFile $OutputFile
