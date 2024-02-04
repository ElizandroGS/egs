wget https://www.webmin.com/download/rpm/webmin-current.rpm --no-check-certificate
rpm -U webmin-current.rpm
yum install -y wget && wget -O install.sh http://www.aapanel.com/script/install_6.0_en.sh && bash install.sh aapanel
wget https://www.softether-download.com/files/softether/v4.43-9799-beta-2023.08.31-tree/Linux/SoftEther_VPN_Server/64bit_-_Intel_x64_or_AMD64/softether-vpnserver-v4.43-9799-beta-2023.08.31-linux-x64-64bit.tar.gz --no-check-certificate
tar -xvzf *.tar.gz
cd vpnserver 
make
cd ..
mv vpnserver /usr/local/ 
cd /usr/local/vpnserver/
chmod 600 *
chmod 700 vpnserver
chmod 700 vpncmd
sudo yum install cronie
