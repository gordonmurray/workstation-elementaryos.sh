
# Install some basics
cd ~
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y wget

# Install Google Chrome (Not Chromium)
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable

# Install Git
 sudo apt-get install -y git

# Install Dropbox
git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
bash /tmp/elementary-dropbox/install.sh

# Install Remmina (for RDP)
sudo apt-get install remmina

# Install Gparted (for disk management stuff)
sudo apt-get install gparted

# Install Composer globally
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === '781c98992e23d4a5ce559daf0170f8a9b3b91331ddc4a3fa9f7d42b6d981513cdc1411730112495fbf9d59cffbf20fb2') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); }"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

# Install Java (required for SmartGit)
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

# Install 'Darn Simple Elementary' (control panel for installing apps)
sudo apt-get install -y gjs
git clone https://github.com/KenHarkey/dse.git
