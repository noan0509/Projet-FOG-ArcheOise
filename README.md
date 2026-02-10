# 🚀 Projet de Masterisation - L'ARCHE OISE
### BTS CIEL 2026 - Revue n°1

![Interface de pilotage](Interface.png)

## 📋 Problématique & Objectif
Réduire le temps de préparation des postes de **1h30 à 15 minutes**. L'automatisation garantit un parc homogène et diminue les erreurs de configuration manuelle.

## ⚙️ Intelligence des Scripts (PowerShell)
Contrairement à une installation figée, mes scripts offrent une **flexibilité totale** au technicien lors du déploiement :

* **Nommage Dynamique** : Le script demande la saisie du nom (ex: FIXE-01 ou PORT-NOM), permettant une gestion d'inventaire précise dès l'installation.
* **Modularité Réseau** : Une interface interactive permet de choisir entre :
    1. **DHCP** : Configuration automatique (idéal pour les PC Portables/Wi-Fi).
    2. **IP Statique** : Configuration manuelle avec DNS pré-paramétrés (idéal pour les Fixes et la prise en main via **UltraVNC**).

### 🖥️ Spécificités des postes
- **PC FIXE** : Installation de Chrome, LibreOffice, ESET et **UltraVNC** (Maintenance).
- **PC PORTABLE** : Installation de Chrome, LibreOffice, ESET et **OpenVPN** (Télétravail sécurisé).

## 💻 Stack Technique & Compétences
* **Logiciels de déploiement** : FOG Project (PXE/iPXE).
* **Scripting** : PowerShell (Gestion des interfaces réseau et renommage système).
* **Versioning** : Git / GitHub pour le suivi du code.

---
*Développé par Noan Moerkerke - Projet BTS CIEL IR*