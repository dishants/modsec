sudo apt-get update -y
sudo apt-get install apache2
sudo apt-get install php
systemctl start apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo apt-get install libapache2-modsecurity
mv /etc/modsecurity/modsecurity.conf-recommended /etc/modsecurity/modsecurity.conf
sudo systemctl restart apache2
cd /etc/modsecurity
wget https://raw.githubusercontent.com/dishants/modsec/master/evaluate.conf
cd
wget https://raw.githubusercontent.com/dishants/modsec/master/modsec.lua
chmod 777 modsec.lua
chown ubuntu:ubuntu modsec.lua
touch requests.txt
chmod 777 requests.txt
chown ubuntu:ubuntu requests.txt
