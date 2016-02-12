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
