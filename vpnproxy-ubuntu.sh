apt-get update && apt-get upgrade -y
wget https://www.softether-download.com/files/softether/v4.43-9799-beta-2023.08.31-tree/Linux/SoftEther_VPN_Server/64bit_-_Intel_x64_or_AMD64/softether-vpnserver-v4.43-9799-beta-2023.08.31-linux-x64-64bit.tar.gz
tar xvf softether-vpnserver-*.tar.gz
sudo apt install gcc binutils gzip libreadline-dev libssl-dev libncurses5-dev libncursesw5-dev libpthread-stubs0-dev -y
sudo mv vpnserver /opt/softether
cd vpnserver/
make
cd
vpnserver start
vpnserver stop
sudo systemctl start softether-vpnserver
sudo systemctl enable softether-vpnserver
sudo journalctl -eu softether-vpnserver
git clone https://github.com/thewhiteh4t/seeker.git
apt-get install snap
snap install ngrok -y
ngrok config add-authtoken 2WMcHKmcL2pJFmtK1QB7VLJVMjZ_M7N4CzuwQaXYH5xH1eGg
git clone https://github.com/mauricionet/VPS-Manager-2.0.git
git clone https://github.com/mauricionet/OpenVPNSetup.git
apt-get install lamp-server^ -y
sudo apt install bind9 -y
sudo apt install certbot -y
sudo /opt/softether/vpncmd 127.0.0.1:5555
apt install pure-ftpd -y
systemctl enable pure-ftpd
systemctl start pure-ftpd
adduser egs
apt install openssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned.key -out /etc/ssl/certs/selfsigned.crt
echo"TLS=2
CertFile /etc/ssl/certs/selfsigned.crt
KeyFile /etc/ssl/private/selfsigned.key" >> /etc/pure-ftpd/pure-ftpd.conf
systemctl restart pure-ftpd


