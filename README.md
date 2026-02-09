# [cite_start]Projet BTS CIEL 2026 : Déploiement FOG Project [cite: 1, 3]

## [cite_start]Contexte du projet [cite: 15]
[cite_start]L'entreprise **L'ARCHE OISE** prévoit le renouvellement de nombreux PC fixes en 2026[cite: 4, 16]. 
[cite_start]Actuellement, l'installation manuelle prend trop de temps (1h30/poste) et génère des erreurs[cite: 17, 18, 20].

## [cite_start]Solution proposée [cite: 23]
Déploiement d'une infrastructure **FOG Project** pour :
* [cite_start]La capture d'images système[cite: 24].
* [cite_start]Le déploiement automatisé via **PXE**[cite: 25].
* [cite_start]Le développement d'une **interface web simplifiée** (API FOG).

## [cite_start]Contraintes Techniques [cite: 35, 36]
* **Réseau** : Boot PXE (DHCP + TFTP) sans perturbation.
* **Sécurité** : Interface en HTTPS et OS durci.
* **Interopérabilité** : Intégration avec l'Active Directory existant.

## État d'avancement (Février 2026)
- [x] [cite_start]Analyse des besoins.
- [x] Conception de l'interface web (HTML/CSS).
- [x] Rédaction du script de post-déploiement (PowerShell).
- [ ] Installation de la VM Serveur FOG (Prochaine étape).

### État d'avancement - 9 Février 2026
- [x] Structure du projet créée.
- [x] Maquette de l'interface de pilotage validée (HTML/CSS).
- [x] Script de post-déploiement PowerShell rédigé.