# ==========================================================
# Script de Post-Déploiement - L'ARCHE OISE [cite: 4]
# Objectif : Automatisation et homogénéité des postes [cite: 23]
# ==========================================================

Write-Host "--- Début de la configuration automatique ---" -ForegroundColor Cyan

# 1. Renommer le PC avec le numéro de série (Homogénéité) [cite: 19]
$serial = (Get-WmiObject Win32_Bios).SerialNumber
$newName = "ARCHE-$serial"
Write-Host "Nouveau nom du poste : $newName"
Rename-Computer -NewName $newName -Force

# 2. Installation de logiciels via Winget (Base logicielle à jour) [cite: 22]
Write-Host "Installation des outils métiers..."
winget install --id Google.Chrome --silent --accept-source-agreements

# 3. Nettoyage des applications inutiles
Write-Host "Optimisation du système..."

Write-Host "--- Configuration terminée. Redémarrage requis ---" -ForegroundColor Green
# Restart-Computer