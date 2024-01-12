#!/bin/bash

# Désinstaller virtualbox-dkms
apt-get purge virtualbox-dkms

# Si la commande précédente ne fonctionne pas, essayez :
dpkg -P virtualbox-dkms

# Désinstaller virtualbox
apt-get purge virtualbox

# Installer la dernière version de VirtualBox (vous devrez remplacer "[Nom du fichier].deb" par le nom réel du fichier .deb)
dpkg -i virtualbox-7.0_7.0.12-159484~Ubuntu~jammy_amd64.deb

# Mettre à jour les dépôts et installer les dépendances manquantes
apt update
apt -–fix-broken install
