# Script de Post-Déploiement pour L'ARCHE OISE
# Objectif : Automatiser le renommage et préparer le poste

Write-Host "Début de la configuration post-déploiement..." -ForegroundColor Cyan

# 1. Renommer l'ordinateur en utilisant le numéro de série du BIOS
$SerialNumber = (Get-WmiObject Win32_Bios).SerialNumber
$NewName = "ARCHE-$SerialNumber"
Write-Host "Renommage du poste en : $NewName"
Rename-Computer -NewName $NewName -Force

# 2. Installation d'un navigateur (Exemple avec Winget)
Write-Host "Installation de Google Chrome..."
winget install --id Google.Chrome --silent --accept-package-agreements

# 3. Message de fin
Write-Host "Configuration terminée. Le PC va redémarrer."
# Restart-Computer -Force # Décommenter pour activer le redémarrage auto