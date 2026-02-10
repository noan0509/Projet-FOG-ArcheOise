# ==============================================================================
# SCRIPT DE POST-INSTALLATION - PC PORTABLE - L'ARCHE OISE
# ==============================================================================

# 1. RENOMMAGE DU POSTE
$nomPerso = Read-Host "Entrez le nom souhaite pour ce PC Portable (ex: PORT-NOM-01)"
Write-Host "Action : Renommage du PC en $nomPerso..." -ForegroundColor Cyan
Rename-Computer -NewName $nomPerso -Force

# 2. CONFIGURATION RÉSEAU (CHOIX DHCP OU STATIQUE)
$interface = Get-NetAdapter | Where-Object {$_.Status -eq "Up"} | Select-Object -First 1
Write-Host "--- CONFIGURATION RESEAU (MOBILITE) ---" -ForegroundColor Yellow
Write-Host "1. DHCP (Automatique - Recommande pour le Wi-Fi)"
Write-Host "2. IP Statique (Manuel)"
$choix = Read-Host "Choisissez l'option (1 ou 2)"

if ($choix -eq "1") {
    Write-Host "Action : Configuration en DHCP..." -ForegroundColor Green
    $interface | Set-NetIPInterface -DHCP Enabled
    $interface | Set-DnsClientServerAddress -ResetServerAddresses
} 
else {
    $ip = Read-Host "Entrez l'adresse IP souhaitee (ex: 192.168.1.50)"
    Write-Host "Action : Configuration de l'IP statique $ip..." -ForegroundColor Green
    $gateway = "192.168.1.254"
    $dns = "192.168.1.10"
    New-NetIPAddress -InterfaceAlias $interface.Name -IPAddress $ip -PrefixLength 24 -DefaultGateway $gateway -ErrorAction SilentlyContinue
    Set-DnsClientServerAddress -InterfaceAlias $interface.Name -ServerAddresses $dns
}

# 3. INSTALLATION DES LOGICIELS (L'ARCHE OISE - PORTABLE)
Write-Host "Action : Installation Google Chrome, LibreOffice, OpenVPN, ESET..." -ForegroundColor Cyan

# Google Chrome
winget install --id Google.Chrome --silent --accept-package-agreements

# LibreOffice
winget install --id LibreOffice.LibreOffice --silent --accept-package-agreements

# OpenVPN (Pour le travail distant)
Write-Host "-> Installation d'OpenVPN..."
winget install --id OpenVPNTechnologies.OpenVPN --silent --accept-package-agreements

# ESET Endpoint Security
winget install --id ESET.EndpointSecurity --silent --accept-package-agreements

Write-Host "-------------------------------------------------------"
Write-Host " TERMINE : Le PC PORTABLE est pret pour L'ARCHE OISE ! " -ForegroundColor Green
Write-Host "-------------------------------------------------------"