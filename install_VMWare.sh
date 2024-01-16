#!/bin/bash

# Désinstaller VMware Workstation 
vmware-installer --uninstall-product vmware-workstation

# Installer GCC 12
apt-get install gcc-12

# Rendre exécutable le fichier bundle
chmod +x ./[Ubuntu]VMware-Workstation-Full-17.0.2.bundle
#Lancer l'installation
./[Ubuntu]VMware-Workstation-Full-17.0.2.bundle

# Cloner le dépôt vmware-host-modules
git clone https://github.com/mkubecek/vmware-host-modules.git

# Naviguer dans le répertoire vmware-host-modules
cd vmware-host-modules

# Changer de branche vers workstation-17.0.2
git checkout workstation-17.0.2

# Exécuter les commandes make pour compiler
make

# Installer les modules compilés
make install

# Démarrer le service VMware
/etc/init.d/vmware start


