\# Lab SIEM \& Fail2ban — Détection d'Incidents SSH



\## Description

Lab de cybersécurité simulant une attaque brute force SSH,

centralisant les logs via rsyslog et bloquant automatiquement

les IP attaquantes avec Fail2ban et nftables.



\## Architecture

\- Kali Linux attaquant — 192.168.56.101

\- Kali Linux serveur de logs — 192.168.56.100

\- Metasploitable 2 cible — 192.168.56.102



\## Résultats

\- 14 248 tentatives SSH détectées et archivées

\- IP bannie automatiquement 4 fois

\- Alertes visuelles et fichier log horodaté



\## Outils utilisés

Kali Linux, Metasploit, Medusa, rsyslog, Fail2ban,

nftables, Wireshark, Nmap, Python, Bash



\## Compétences démontrées

SIEM, détection d'incidents, réponse aux incidents,

ISO 27001, NIST CSF

