#!/bin/bash

# Désinstaller virtualbox-dkms
apt-get purge virtualbox-dkms

# Désinstaller virtualbox
apt-get purge virtualbox

# Installer la dernière version de VirtualBox 
dpkg -i [Ubuntu 22.04]virtualbox-7.0Ubuntu~jammy_amd64.deb

# Mettre à jour les dépôts et installer les dépendances manquantes
apt install -y
apt --fix-broken install


# Ajouter l'utilisateur etudiant dans le groupe vboxusers
adduser etudiant vboxusers
# Redémarrez votre poste pour que les modifications soient prises en compte
reboot now
