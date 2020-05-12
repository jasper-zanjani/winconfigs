function zgip {
  param ($VMName)
  Get-AzPublicIpAddress -Name "($VMName)-ip" | select -ExpandProperty IpAddress
}

function prompt {
  Write-Host -ForegroundColor DarkGray ('[PS] ') -NoNewLine
  Write-Host -ForegroundColor Yellow (Get-Item $pwd).BaseName -NoNewLine
  Write-Host '>' -NoNewLine
  return " "
}

New-Alias zicm Invoke-AzVMRunCommand
New-Alias gcr Get-Credential 
