# LouisScripts

Scripts IT N1/N2 – Automatisation Windows & Accessibilité RQTH
Scripts conçus pour améliorer l’accessibilité numérique et l’efficacité du support IT, dans une logique d’automatisation et d’inclusion
## 🎯 Objectif

Ce dépôt regroupe une série de scripts `.bat` et `.vbs` conçus pour :

- améliorer l'accessibilité numérique des utilisateurs RQTH ;
- automatiser certaines tâches Windows récurrentes en environnement professionnel (support IT niveau 1 ou 2) ;
- gagner en efficacité au démarrage des postes et dans la gestion quotidienne du support technique.

## 📁 Arborescence des scripts

```
scripts/
├── accessibilite/
│   └── messages_vocaux/
│       └── vocal_message.vbs
├── demarrage/
│   ├── applications/
│   │   └── launch_apps.bat
│   └── pages_web/
│       └── launch_webpages.bat
└── diagnostics/
    └── ip_hostname/
        └── get_info.bat
```

---

## 📌 Exemples de scripts

### 📁 scripts/demarrage/pages_web/launch_webpages.bat

```bat
@echo off
timeout /t 10 /nobreak >nul
start microsoft-edge:https://webmail.exemple.com
start microsoft-edge:https://teams.microsoft.com
start microsoft-edge:https://jira.exemple.com
exit
```

➡️ Lance automatiquement les pages web métier au démarrage.

---

### 📁 scripts/demarrage/applications/launch_apps.bat

```bat
@echo off
timeout /t 5 /nobreak >nul
start "" "C:\Program Files\iTunes\iTunes.exe"
start "" "C:\Users\%USERNAME%\AppData\Roaming\Spotify\Spotify.exe"
start "" "C:\Program Files\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
exit
```

➡️ Lance des applications spécifiques (VPN, musique, outils de travail) après un court délai.

---

### 📁 scripts/diagnostics/ip_hostname/get_info.bat

```bat
@echo off
setlocal enabledelayedexpansion
set filename=%USERPROFILE%\Desktop\infos_machine.txt
echo Nom de l'ordinateur : %COMPUTERNAME% > "!filename!"
echo Adresse IP locale : >> "!filename!"
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /c:"IPv4"') do echo %%A>>"!filename!"
exit
```

➡️ Récupère les infos réseau et les enregistre dans un fichier texte sur le bureau.

---

### 📁 scripts/accessibilite/messages_vocaux/vocal_message.vbs

```vbscript
Dim speaker
Set speaker = CreateObject("SAPI.SpVoice")
speaker.Speak "Bonjour, votre session est prête. Une mise à jour de sécurité aura lieu à 10 heures."
```

➡️ Utilise la synthèse vocale Windows (SAPI.SpVoice) pour lire un message d'accueil ou de notification.

---

## 🤝 Contexte d'utilisation

Projet personnel intégré dans une démarche **corporate et RQTH** :

- utilisé pour améliorer l’autonomie des utilisateurs en situation de handicap ;
- testé sur environnement professionnel et personnel ;
- sans dépendance externe, utilisable dès Windows 7+.

## 🔗 Auteur

**Louis Vandewynckel** – Technicien Helpdesk IT  
[CV en ligne](https://github.com/Louisckel/rqth-windows-tools)  
Spécialisation support N2 – Accessibilité & automatisation Windows.