Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
choco install chrome-remote-desktop-host > $null
choco upgrade chrome-remote-desktop-host > $null
powershell.exe -File 2.ps1 | Out-Null
