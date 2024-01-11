vmware-installer --uninstall-product vmware-workstation
chmod +x ./[Ubuntu]VMware-Workstation-Full-17.0.2.bundle
./[Ubuntu]VMware-Workstation-Full-17.0.2.bundle
apt-get install gcc-12
git clone https://github.com/mkubecek/vmware-host-modules.git
cd vmware-host-modules
git checkout workstation-17.0.2
make
make install
/etc/init.d/vmware start
vmware
