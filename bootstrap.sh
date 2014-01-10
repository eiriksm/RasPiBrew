# Exit if setup is already done (Vagrant 1.2.x backward compatibility).
if [ -e "/opt/vagrant-installed" ]; then
    exit 0
fi
mkdir /opt/vagrant-installed
apt-get vim install python-smbus vim python-setuptools -y
easy_install web.py pyserial

rm -rf /var/www

ln -s /vagrant /var/www
