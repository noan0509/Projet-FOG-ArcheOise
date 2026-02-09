# ==============================================================================
# SCRIPT DE POST-INSTALLATION - PC FIXE - L'ARCHE OISE
# ==============================================================================

# 1. RENOMMAGE DU POSTE
$num = Read-Host "Entrez le numero du PC Fixe (ex: 01)"
$newName = "FIXE-$num"
Write-Host "Action : Renommage du PC en $newName..." -ForegroundColor Cyan
Rename-Computer -NewName $newName -Force

# 2. CONFIGURATION RÉSEAU (IP STATIQUE)
# On recupere la carte reseau active
$interface = Get-NetAdapter | Where-Object {$_.Status -eq "Up"} | Select-Object -First 1

Write-Host "Action : Configuration de l'IP statique (192.168.1.1$num)..." -ForegroundColor Yellow
$ipAddress = "192.168.1.1$num" 
$gateway = "192.168.1.254"
$dns = "192.168.1.10"

New-NetIPAddress -InterfaceAlias $interface.Name -IPAddress $ipAddress -PrefixLength 24 -DefaultGateway $gateway -ErrorAction SilentlyContinue
Set-DnsClientServerAddress -InterfaceAlias $interface.Name -ServerAddresses $dns

# 3. INSTALLATION DES LOGICIELS
Write-Host "Action : Installation Google Chrome, LibreOffice, UltraVNC, ESET..." -ForegroundColor Cyan

# Google Chrome
winget install --id Google.Chrome --silent --accept-package-agreements

# LibreOffice
winget install --id LibreOffice.LibreOffice --silent --accept-package-agreements

# UltraVNC
winget install --id uVNC.UltraVNC --silent --accept-package-agreements

# ESET
winget install --id ESET.EndpointSecurity --silent --accept-package-agreements

Write-Host "----------------------------------------------------"
Write-Host " TERMINE : Le PC FIXE est pret pour L'ARCHE OISE ! " -ForegroundColor Green
Write-Host "----------------------------------------------------"